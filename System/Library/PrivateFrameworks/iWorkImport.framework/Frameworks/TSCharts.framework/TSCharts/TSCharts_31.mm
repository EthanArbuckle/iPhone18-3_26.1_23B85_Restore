uint64_t sub_276496034(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = TSS::StyleArchive::ByteSizeLong(*(a1 + 40));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xFE) == 0)
  {
    goto LABEL_13;
  }

  if ((v2 & 2) != 0)
  {
    v12 = TSD::FillArchive::ByteSizeLong(*(a1 + 48));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) == 0)
    {
LABEL_7:
      if ((v2 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_83;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_7;
  }

  v13 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 56));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) == 0)
  {
LABEL_8:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_84;
  }

LABEL_83:
  v14 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 64));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_85:
    v16 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 80));
    v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x40) == 0)
    {
LABEL_11:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_86;
  }

LABEL_84:
  v15 = TSD::FillArchive::ByteSizeLong(*(a1 + 72));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_85;
  }

LABEL_10:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_86:
  v17 = TSD::FillArchive::ByteSizeLong(*(a1 + 88));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80) != 0)
  {
LABEL_12:
    v5 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 96));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_13:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = TSD::FillArchive::ByteSizeLong(*(a1 + 104));
    v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x200) == 0)
    {
LABEL_16:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_90;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v19 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 112));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) == 0)
  {
LABEL_17:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_91;
  }

LABEL_90:
  v20 = TSD::FillArchive::ByteSizeLong(*(a1 + 120));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800) == 0)
  {
LABEL_18:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_92;
  }

LABEL_91:
  v21 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 128));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x1000) == 0)
  {
LABEL_19:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_93;
  }

LABEL_92:
  v22 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 136));
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x2000) == 0)
  {
LABEL_20:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_94;
  }

LABEL_93:
  v23 = TSD::FillArchive::ByteSizeLong(*(a1 + 144));
  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000) == 0)
  {
LABEL_21:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_94:
  v24 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 152));
  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000) != 0)
  {
LABEL_22:
    v6 = TSD::FillArchive::ByteSizeLong(*(a1 + 160));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_23:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_33;
  }

  if ((v2 & 0x10000) != 0)
  {
    v25 = TSD::FillArchive::ByteSizeLong(*(a1 + 168));
    v3 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x20000) == 0)
    {
LABEL_26:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_98;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v26 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 176));
  v3 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000) == 0)
  {
LABEL_27:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_99;
  }

LABEL_98:
  v27 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 184));
  v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80000) == 0)
  {
LABEL_28:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_100;
  }

LABEL_99:
  v28 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 192));
  v3 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x100000) == 0)
  {
LABEL_29:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_101;
  }

LABEL_100:
  v29 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 200));
  v3 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x200000) == 0)
  {
LABEL_30:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_102;
  }

LABEL_101:
  v30 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 208));
  v3 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400000) == 0)
  {
LABEL_31:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_102:
  v31 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 216));
  v3 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800000) != 0)
  {
LABEL_32:
    v7 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 224));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_33:
  if (!HIBYTE(v2))
  {
    goto LABEL_42;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v53 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 232));
    v3 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x2000000) == 0)
    {
LABEL_36:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_130;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_36;
  }

  v54 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 240));
  v3 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000000) == 0)
  {
LABEL_37:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_131;
  }

LABEL_130:
  v55 = TSD::FillArchive::ByteSizeLong(*(a1 + 248));
  v3 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000000) == 0)
  {
LABEL_38:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_132;
  }

LABEL_131:
  v56 = TSD::FillArchive::ByteSizeLong(*(a1 + 256));
  v3 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x10000000) == 0)
  {
LABEL_39:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_133;
  }

LABEL_132:
  v57 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 264));
  v3 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x20000000) == 0)
  {
LABEL_40:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_134:
    v59 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 280));
    v3 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_135;
  }

LABEL_133:
  v58 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 272));
  v3 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000000) != 0)
  {
    goto LABEL_134;
  }

LABEL_41:
  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

LABEL_135:
  v60 = TSD::FillArchive::ByteSizeLong(*(a1 + 288));
  v3 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_42:
  v8 = *(a1 + 20);
  if (!v8)
  {
    goto LABEL_52;
  }

  if (v8)
  {
    v32 = TSD::FillArchive::ByteSizeLong(*(a1 + 296));
    v3 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v8 & 2) == 0)
    {
LABEL_45:
      if ((v8 & 4) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_106;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_45;
  }

  v33 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 304));
  v3 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 4) == 0)
  {
LABEL_46:
    if ((v8 & 8) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_107;
  }

LABEL_106:
  v34 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 312));
  v3 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 8) == 0)
  {
LABEL_47:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_108;
  }

LABEL_107:
  v35 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 320));
  v3 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x10) == 0)
  {
LABEL_48:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_109;
  }

LABEL_108:
  v36 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 328));
  v3 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x20) == 0)
  {
LABEL_49:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_110;
  }

LABEL_109:
  v37 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 336));
  v3 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x40) == 0)
  {
LABEL_50:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_110:
  v38 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 344));
  v3 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x80) != 0)
  {
LABEL_51:
    v9 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 352));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_52:
  if ((v8 & 0xFF00) == 0)
  {
    goto LABEL_62;
  }

  if ((v8 & 0x100) != 0)
  {
    v39 = TSD::LineEndArchive::ByteSizeLong(*(a1 + 360));
    v3 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v8 & 0x200) == 0)
    {
LABEL_55:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_114;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_55;
  }

  v40 = TSD::LineEndArchive::ByteSizeLong(*(a1 + 368));
  v3 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x400) == 0)
  {
LABEL_56:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_115;
  }

LABEL_114:
  v41 = TSD::FillArchive::ByteSizeLong(*(a1 + 376));
  v3 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x800) == 0)
  {
LABEL_57:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_116;
  }

LABEL_115:
  v42 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 384));
  v3 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x1000) == 0)
  {
LABEL_58:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_117;
  }

LABEL_116:
  v43 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 392));
  v3 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x2000) == 0)
  {
LABEL_59:
    if ((v8 & 0x4000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_118;
  }

LABEL_117:
  v44 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 400));
  v3 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x4000) == 0)
  {
LABEL_60:
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_118:
  v45 = sub_276401708(*(a1 + 408));
  v3 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x8000) != 0)
  {
LABEL_61:
    v10 = sub_276401708(*(a1 + 416));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_62:
  if ((v8 & 0xFF0000) == 0)
  {
    goto LABEL_72;
  }

  if ((v8 & 0x10000) != 0)
  {
    v46 = sub_276401708(*(a1 + 424));
    v3 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v8 & 0x20000) == 0)
    {
LABEL_65:
      if ((v8 & 0x40000) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_122;
    }
  }

  else if ((v8 & 0x20000) == 0)
  {
    goto LABEL_65;
  }

  v47 = sub_276401708(*(a1 + 432));
  v3 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x40000) == 0)
  {
LABEL_66:
    if ((v8 & 0x80000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_123;
  }

LABEL_122:
  v48 = sub_276401708(*(a1 + 440));
  v3 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x80000) == 0)
  {
LABEL_67:
    if ((v8 & 0x100000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_124;
  }

LABEL_123:
  v49 = sub_276401708(*(a1 + 448));
  v3 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x100000) == 0)
  {
LABEL_68:
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_125;
  }

LABEL_124:
  v50 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 456));
  v3 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x200000) == 0)
  {
LABEL_69:
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_126;
  }

LABEL_125:
  v51 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 464));
  v3 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x400000) == 0)
  {
LABEL_70:
    if ((v8 & 0x800000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

LABEL_126:
  v52 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 472));
  v3 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x800000) != 0)
  {
LABEL_71:
    v11 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 480));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_72:
  if (!HIBYTE(v8))
  {
    goto LABEL_148;
  }

  if ((v8 & 0x1000000) != 0)
  {
    v61 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 488));
    v3 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v8 & 0x2000000) == 0)
    {
LABEL_75:
      if ((v8 & 0x4000000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_138;
    }
  }

  else if ((v8 & 0x2000000) == 0)
  {
    goto LABEL_75;
  }

  v62 = TSD::FillArchive::ByteSizeLong(*(a1 + 496));
  v3 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x4000000) == 0)
  {
LABEL_76:
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_139;
  }

LABEL_138:
  v63 = TSD::FillArchive::ByteSizeLong(*(a1 + 504));
  v3 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x8000000) == 0)
  {
LABEL_77:
    if ((v8 & 0x10000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_140;
  }

LABEL_139:
  v64 = TSD::FillArchive::ByteSizeLong(*(a1 + 512));
  v3 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x10000000) == 0)
  {
LABEL_78:
    if ((v8 & 0x20000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_141;
  }

LABEL_140:
  v65 = TSD::FillArchive::ByteSizeLong(*(a1 + 520));
  v3 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x20000000) == 0)
  {
LABEL_79:
    if ((v8 & 0x40000000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_142;
  }

LABEL_141:
  v66 = TSD::FillArchive::ByteSizeLong(*(a1 + 528));
  v3 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v8 & 0x40000000) == 0)
  {
    goto LABEL_146;
  }

LABEL_142:
  v67 = *(a1 + 536);
  if (v67 < 0)
  {
    v68 = 11;
  }

  else
  {
    v68 = ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v68;
LABEL_146:
  if (v8 < 0)
  {
    v3 += 6;
  }

LABEL_148:
  v69 = *(a1 + 24);
  if (!v69)
  {
    goto LABEL_185;
  }

  if (v69)
  {
    v70 = *(a1 + 544);
    if (v70 < 0)
    {
      v71 = 12;
    }

    else
    {
      v71 = ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v71;
  }

  if ((v69 & 2) != 0)
  {
    v72 = *(a1 + 548);
    if (v72 < 0)
    {
      v73 = 12;
    }

    else
    {
      v73 = ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v73;
  }

  v74 = v3 + 6;
  if ((v69 & 4) == 0)
  {
    v74 = v3;
  }

  if ((v69 & 8) != 0)
  {
    v3 = v74 + 6;
  }

  else
  {
    v3 = v74;
  }

  if ((v69 & 0x10) != 0)
  {
    v75 = *(a1 + 560);
    if (v75 < 0)
    {
      v76 = 12;
    }

    else
    {
      v76 = ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v76;
    if ((v69 & 0x20) == 0)
    {
LABEL_166:
      if ((v69 & 0x40) == 0)
      {
        goto LABEL_167;
      }

      goto LABEL_177;
    }
  }

  else if ((v69 & 0x20) == 0)
  {
    goto LABEL_166;
  }

  v77 = *(a1 + 564);
  if (v77 < 0)
  {
    v78 = 12;
  }

  else
  {
    v78 = ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v78;
  if ((v69 & 0x40) == 0)
  {
LABEL_167:
    if ((v69 & 0x80) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_181;
  }

LABEL_177:
  v79 = *(a1 + 568);
  if (v79 < 0)
  {
    v80 = 12;
  }

  else
  {
    v80 = ((9 * (__clz(v79 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v80;
  if ((v69 & 0x80) != 0)
  {
LABEL_181:
    v81 = *(a1 + 572);
    if (v81 < 0)
    {
      v82 = 12;
    }

    else
    {
      v82 = ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v82;
  }

LABEL_185:
  if ((v69 & 0xFF00) == 0)
  {
    goto LABEL_219;
  }

  if ((v69 & 0x100) != 0)
  {
    v83 = *(a1 + 576);
    if (v83 < 0)
    {
      v84 = 12;
    }

    else
    {
      v84 = ((9 * (__clz(v83 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v84;
    if ((v69 & 0x200) == 0)
    {
LABEL_188:
      if ((v69 & 0x400) == 0)
      {
        goto LABEL_189;
      }

      goto LABEL_200;
    }
  }

  else if ((v69 & 0x200) == 0)
  {
    goto LABEL_188;
  }

  v85 = *(a1 + 580);
  if (v85 < 0)
  {
    v86 = 12;
  }

  else
  {
    v86 = ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v86;
  if ((v69 & 0x400) == 0)
  {
LABEL_189:
    if ((v69 & 0x800) == 0)
    {
      goto LABEL_190;
    }

LABEL_204:
    v89 = *(a1 + 588);
    if (v89 < 0)
    {
      v90 = 12;
    }

    else
    {
      v90 = ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v90;
    if ((v69 & 0x1000) == 0)
    {
      goto LABEL_212;
    }

    goto LABEL_208;
  }

LABEL_200:
  v87 = *(a1 + 584);
  if (v87 < 0)
  {
    v88 = 12;
  }

  else
  {
    v88 = ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v88;
  if ((v69 & 0x800) != 0)
  {
    goto LABEL_204;
  }

LABEL_190:
  if ((v69 & 0x1000) != 0)
  {
LABEL_208:
    v91 = *(a1 + 592);
    if (v91 < 0)
    {
      v92 = 12;
    }

    else
    {
      v92 = ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v92;
  }

LABEL_212:
  v93 = v3 + 6;
  if ((v69 & 0x2000) == 0)
  {
    v93 = v3;
  }

  if ((v69 & 0x4000) != 0)
  {
    v93 += 3;
  }

  if ((v69 & 0x8000) != 0)
  {
    v3 = v93 + 3;
  }

  else
  {
    v3 = v93;
  }

LABEL_219:
  if ((v69 & 0xFF0000) != 0)
  {
    v94 = v3 + 3;
    if ((v69 & 0x10000) == 0)
    {
      v94 = v3;
    }

    if ((v69 & 0x20000) != 0)
    {
      v94 += 3;
    }

    if ((v69 & 0x40000) != 0)
    {
      v94 += 3;
    }

    if ((v69 & 0x80000) != 0)
    {
      v94 += 3;
    }

    if ((v69 & 0x100000) != 0)
    {
      v94 += 3;
    }

    if ((v69 & 0x200000) != 0)
    {
      v94 += 3;
    }

    if ((v69 & 0x400000) != 0)
    {
      v94 += 3;
    }

    if ((v69 & 0x800000) != 0)
    {
      v3 = v94 + 3;
    }

    else
    {
      v3 = v94;
    }
  }

  if (!HIBYTE(v69))
  {
    goto LABEL_271;
  }

  v95 = v3 + 3;
  if ((v69 & 0x1000000) == 0)
  {
    v95 = v3;
  }

  if ((v69 & 0x2000000) != 0)
  {
    v95 += 6;
  }

  if ((v69 & 0x4000000) != 0)
  {
    v3 = v95 + 6;
  }

  else
  {
    v3 = v95;
  }

  if ((v69 & 0x8000000) != 0)
  {
    v96 = *(a1 + 620);
    if (v96 < 0)
    {
      v97 = 12;
    }

    else
    {
      v97 = ((9 * (__clz(v96 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v97;
    if ((v69 & 0x10000000) == 0)
    {
LABEL_247:
      if ((v69 & 0x20000000) == 0)
      {
        goto LABEL_248;
      }

LABEL_259:
      v100 = *(a1 + 628);
      if (v100 < 0)
      {
        v101 = 12;
      }

      else
      {
        v101 = ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v101;
      if ((v69 & 0x40000000) == 0)
      {
LABEL_249:
        if ((v69 & 0x80000000) == 0)
        {
          goto LABEL_271;
        }

        goto LABEL_267;
      }

      goto LABEL_263;
    }
  }

  else if ((v69 & 0x10000000) == 0)
  {
    goto LABEL_247;
  }

  v98 = *(a1 + 624);
  if (v98 < 0)
  {
    v99 = 12;
  }

  else
  {
    v99 = ((9 * (__clz(v98 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v99;
  if ((v69 & 0x20000000) != 0)
  {
    goto LABEL_259;
  }

LABEL_248:
  if ((v69 & 0x40000000) == 0)
  {
    goto LABEL_249;
  }

LABEL_263:
  v102 = *(a1 + 632);
  if (v102 < 0)
  {
    v103 = 12;
  }

  else
  {
    v103 = ((9 * (__clz(v102 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v103;
  if ((v69 & 0x80000000) != 0)
  {
LABEL_267:
    v104 = *(a1 + 636);
    if (v104 < 0)
    {
      v105 = 12;
    }

    else
    {
      v105 = ((9 * (__clz(v104 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v105;
  }

LABEL_271:
  v106 = *(a1 + 28);
  if (!v106)
  {
    goto LABEL_310;
  }

  if (v106)
  {
    v107 = *(a1 + 640);
    if (v107 < 0)
    {
      v108 = 12;
    }

    else
    {
      v108 = ((9 * (__clz(v107 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v108;
    if ((v106 & 2) == 0)
    {
LABEL_274:
      if ((v106 & 4) == 0)
      {
        goto LABEL_275;
      }

      goto LABEL_288;
    }
  }

  else if ((v106 & 2) == 0)
  {
    goto LABEL_274;
  }

  v109 = *(a1 + 644);
  if (v109 < 0)
  {
    v110 = 12;
  }

  else
  {
    v110 = ((9 * (__clz(v109 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v110;
  if ((v106 & 4) == 0)
  {
LABEL_275:
    if ((v106 & 8) == 0)
    {
      goto LABEL_276;
    }

    goto LABEL_292;
  }

LABEL_288:
  v111 = *(a1 + 648);
  if (v111 < 0)
  {
    v112 = 12;
  }

  else
  {
    v112 = ((9 * (__clz(v111 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v112;
  if ((v106 & 8) == 0)
  {
LABEL_276:
    if ((v106 & 0x10) == 0)
    {
      goto LABEL_277;
    }

    goto LABEL_296;
  }

LABEL_292:
  v113 = *(a1 + 652);
  if (v113 < 0)
  {
    v114 = 12;
  }

  else
  {
    v114 = ((9 * (__clz(v113 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v114;
  if ((v106 & 0x10) == 0)
  {
LABEL_277:
    if ((v106 & 0x20) == 0)
    {
      goto LABEL_278;
    }

    goto LABEL_300;
  }

LABEL_296:
  v115 = *(a1 + 656);
  if (v115 < 0)
  {
    v116 = 12;
  }

  else
  {
    v116 = ((9 * (__clz(v115 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v116;
  if ((v106 & 0x20) == 0)
  {
LABEL_278:
    if ((v106 & 0x40) == 0)
    {
      goto LABEL_308;
    }

    goto LABEL_304;
  }

LABEL_300:
  v117 = *(a1 + 660);
  if (v117 < 0)
  {
    v118 = 12;
  }

  else
  {
    v118 = ((9 * (__clz(v117 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v118;
  if ((v106 & 0x40) != 0)
  {
LABEL_304:
    v119 = *(a1 + 664);
    if (v119 < 0)
    {
      v120 = 12;
    }

    else
    {
      v120 = ((9 * (__clz(v119 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v120;
  }

LABEL_308:
  if ((v106 & 0x80) != 0)
  {
    v3 += 6;
  }

LABEL_310:
  if ((v106 & 0x100) != 0)
  {
    v121 = v3 + 6;
  }

  else
  {
    v121 = v3;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 32) = v121;
    return v121;
  }
}

void sub_2764973C4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527FA8, 0);
  if (v4)
  {

    sub_27649746C(a1, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

float sub_27649746C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2763D4F88((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 16);
  if (!v6)
  {
    goto LABEL_77;
  }

  if (v6)
  {
    *(a1 + 16) |= 1u;
    v7 = *(a1 + 40);
    if (!v7)
    {
      v8 = *(a1 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x277C97BA0](v8);
      *(a1 + 40) = v7;
    }

    if (*(a2 + 40))
    {
      v9 = *(a2 + 40);
    }

    else
    {
      v9 = MEMORY[0x277D80BD0];
    }

    TSS::StyleArchive::MergeFrom(v7, v9);
  }

  v10 = MEMORY[0x277D80488];
  if ((v6 & 2) != 0)
  {
    *(a1 + 16) |= 2u;
    v11 = *(a1 + 48);
    if (!v11)
    {
      v12 = *(a1 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277C97A80](v12);
      *(a1 + 48) = v11;
    }

    if (*(a2 + 48))
    {
      v13 = *(a2 + 48);
    }

    else
    {
      v13 = v10;
    }

    TSD::FillArchive::MergeFrom(v11, v13);
  }

  v14 = MEMORY[0x277D804A0];
  if ((v6 & 4) != 0)
  {
    *(a1 + 16) |= 4u;
    v15 = *(a1 + 56);
    if (!v15)
    {
      v16 = *(a1 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x277C97AA0](v16);
      *(a1 + 56) = v15;
    }

    if (*(a2 + 56))
    {
      v17 = *(a2 + 56);
    }

    else
    {
      v17 = v14;
    }

    TSD::StrokeArchive::MergeFrom(v15, v17);
    if ((v6 & 8) == 0)
    {
LABEL_24:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_45;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_24;
  }

  *(a1 + 16) |= 8u;
  v18 = *(a1 + 64);
  if (!v18)
  {
    v19 = *(a1 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = MEMORY[0x277C97AA0](v19);
    *(a1 + 64) = v18;
  }

  if (*(a2 + 64))
  {
    v20 = *(a2 + 64);
  }

  else
  {
    v20 = v14;
  }

  TSD::StrokeArchive::MergeFrom(v18, v20);
  if ((v6 & 0x10) == 0)
  {
LABEL_25:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_26;
    }

LABEL_53:
    *(a1 + 16) |= 0x20u;
    v24 = *(a1 + 80);
    if (!v24)
    {
      v25 = *(a1 + 8);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = MEMORY[0x277C97AA0](v25);
      *(a1 + 80) = v24;
    }

    if (*(a2 + 80))
    {
      v26 = *(a2 + 80);
    }

    else
    {
      v26 = v14;
    }

    TSD::StrokeArchive::MergeFrom(v24, v26);
    if ((v6 & 0x40) == 0)
    {
LABEL_27:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_69;
    }

    goto LABEL_61;
  }

LABEL_45:
  *(a1 + 16) |= 0x10u;
  v21 = *(a1 + 72);
  if (!v21)
  {
    v22 = *(a1 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = MEMORY[0x277C97A80](v22);
    *(a1 + 72) = v21;
  }

  if (*(a2 + 72))
  {
    v23 = *(a2 + 72);
  }

  else
  {
    v23 = v10;
  }

  TSD::FillArchive::MergeFrom(v21, v23);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_26:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_61:
  *(a1 + 16) |= 0x40u;
  v27 = *(a1 + 88);
  if (!v27)
  {
    v28 = *(a1 + 8);
    if (v28)
    {
      v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    }

    v27 = MEMORY[0x277C97A80](v28);
    *(a1 + 88) = v27;
  }

  if (*(a2 + 88))
  {
    v29 = *(a2 + 88);
  }

  else
  {
    v29 = v10;
  }

  TSD::FillArchive::MergeFrom(v27, v29);
  if ((v6 & 0x80) != 0)
  {
LABEL_69:
    *(a1 + 16) |= 0x80u;
    v30 = *(a1 + 96);
    if (!v30)
    {
      v31 = *(a1 + 8);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = MEMORY[0x277C97AA0](v31);
      *(a1 + 96) = v30;
    }

    if (*(a2 + 96))
    {
      v32 = *(a2 + 96);
    }

    else
    {
      v32 = v14;
    }

    TSD::StrokeArchive::MergeFrom(v30, v32);
  }

LABEL_77:
  if ((v6 & 0xFF00) == 0)
  {
    goto LABEL_151;
  }

  if ((v6 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v33 = *(a1 + 104);
    if (!v33)
    {
      v34 = *(a1 + 8);
      if (v34)
      {
        v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
      }

      v33 = MEMORY[0x277C97A80](v34);
      *(a1 + 104) = v33;
    }

    if (*(a2 + 104))
    {
      v35 = *(a2 + 104);
    }

    else
    {
      v35 = MEMORY[0x277D80488];
    }

    TSD::FillArchive::MergeFrom(v33, v35);
    if ((v6 & 0x200) == 0)
    {
LABEL_80:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_103;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_80;
  }

  *(a1 + 16) |= 0x200u;
  v36 = *(a1 + 112);
  if (!v36)
  {
    v37 = *(a1 + 8);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = MEMORY[0x277C97AA0](v37);
    *(a1 + 112) = v36;
  }

  if (*(a2 + 112))
  {
    v38 = *(a2 + 112);
  }

  else
  {
    v38 = MEMORY[0x277D804A0];
  }

  TSD::StrokeArchive::MergeFrom(v36, v38);
  if ((v6 & 0x400) == 0)
  {
LABEL_81:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_111;
  }

LABEL_103:
  *(a1 + 16) |= 0x400u;
  v39 = *(a1 + 120);
  if (!v39)
  {
    v40 = *(a1 + 8);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v39 = MEMORY[0x277C97A80](v40);
    *(a1 + 120) = v39;
  }

  if (*(a2 + 120))
  {
    v41 = *(a2 + 120);
  }

  else
  {
    v41 = MEMORY[0x277D80488];
  }

  TSD::FillArchive::MergeFrom(v39, v41);
  if ((v6 & 0x800) == 0)
  {
LABEL_82:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_119;
  }

LABEL_111:
  *(a1 + 16) |= 0x800u;
  v42 = *(a1 + 128);
  if (!v42)
  {
    v43 = *(a1 + 8);
    if (v43)
    {
      v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
    }

    v42 = MEMORY[0x277C97AA0](v43);
    *(a1 + 128) = v42;
  }

  if (*(a2 + 128))
  {
    v44 = *(a2 + 128);
  }

  else
  {
    v44 = MEMORY[0x277D804A0];
  }

  TSD::StrokeArchive::MergeFrom(v42, v44);
  if ((v6 & 0x1000) == 0)
  {
LABEL_83:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_127;
  }

LABEL_119:
  *(a1 + 16) |= 0x1000u;
  v45 = *(a1 + 136);
  if (!v45)
  {
    v46 = *(a1 + 8);
    if (v46)
    {
      v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
    }

    v45 = MEMORY[0x277C97AA0](v46);
    *(a1 + 136) = v45;
  }

  if (*(a2 + 136))
  {
    v47 = *(a2 + 136);
  }

  else
  {
    v47 = MEMORY[0x277D804A0];
  }

  TSD::StrokeArchive::MergeFrom(v45, v47);
  if ((v6 & 0x2000) == 0)
  {
LABEL_84:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_135;
  }

LABEL_127:
  *(a1 + 16) |= 0x2000u;
  v48 = *(a1 + 144);
  if (!v48)
  {
    v49 = *(a1 + 8);
    if (v49)
    {
      v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
    }

    v48 = MEMORY[0x277C97A80](v49);
    *(a1 + 144) = v48;
  }

  if (*(a2 + 144))
  {
    v50 = *(a2 + 144);
  }

  else
  {
    v50 = MEMORY[0x277D80488];
  }

  TSD::FillArchive::MergeFrom(v48, v50);
  if ((v6 & 0x4000) == 0)
  {
LABEL_85:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_143;
  }

LABEL_135:
  *(a1 + 16) |= 0x4000u;
  v51 = *(a1 + 152);
  if (!v51)
  {
    v52 = *(a1 + 8);
    if (v52)
    {
      v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
    }

    v51 = MEMORY[0x277C97AA0](v52);
    *(a1 + 152) = v51;
  }

  if (*(a2 + 152))
  {
    v53 = *(a2 + 152);
  }

  else
  {
    v53 = MEMORY[0x277D804A0];
  }

  TSD::StrokeArchive::MergeFrom(v51, v53);
  if ((v6 & 0x8000) != 0)
  {
LABEL_143:
    *(a1 + 16) |= 0x8000u;
    v54 = *(a1 + 160);
    if (!v54)
    {
      v55 = *(a1 + 8);
      if (v55)
      {
        v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
      }

      v54 = MEMORY[0x277C97A80](v55);
      *(a1 + 160) = v54;
    }

    if (*(a2 + 160))
    {
      v56 = *(a2 + 160);
    }

    else
    {
      v56 = MEMORY[0x277D80488];
    }

    TSD::FillArchive::MergeFrom(v54, v56);
  }

LABEL_151:
  if ((v6 & 0xFF0000) == 0)
  {
    goto LABEL_225;
  }

  if ((v6 & 0x10000) != 0)
  {
    *(a1 + 16) |= 0x10000u;
    v57 = *(a1 + 168);
    if (!v57)
    {
      v58 = *(a1 + 8);
      if (v58)
      {
        v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
      }

      v57 = MEMORY[0x277C97A80](v58);
      *(a1 + 168) = v57;
    }

    if (*(a2 + 168))
    {
      v59 = *(a2 + 168);
    }

    else
    {
      v59 = MEMORY[0x277D80488];
    }

    TSD::FillArchive::MergeFrom(v57, v59);
  }

  v60 = MEMORY[0x277D80498];
  if ((v6 & 0x20000) != 0)
  {
    *(a1 + 16) |= 0x20000u;
    v61 = *(a1 + 176);
    if (!v61)
    {
      v62 = *(a1 + 8);
      if (v62)
      {
        v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
      }

      v61 = MEMORY[0x277C97A90](v62);
      *(a1 + 176) = v61;
    }

    if (*(a2 + 176))
    {
      v63 = *(a2 + 176);
    }

    else
    {
      v63 = v60;
    }

    TSD::ShadowArchive::MergeFrom(v61, v63);
    if ((v6 & 0x40000) == 0)
    {
LABEL_163:
      if ((v6 & 0x80000) == 0)
      {
        goto LABEL_164;
      }

      goto LABEL_185;
    }
  }

  else if ((v6 & 0x40000) == 0)
  {
    goto LABEL_163;
  }

  *(a1 + 16) |= 0x40000u;
  v64 = *(a1 + 184);
  if (!v64)
  {
    v65 = *(a1 + 8);
    if (v65)
    {
      v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
    }

    v64 = MEMORY[0x277C97A90](v65);
    *(a1 + 184) = v64;
  }

  if (*(a2 + 184))
  {
    v66 = *(a2 + 184);
  }

  else
  {
    v66 = v60;
  }

  TSD::ShadowArchive::MergeFrom(v64, v66);
  if ((v6 & 0x80000) == 0)
  {
LABEL_164:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_193;
  }

LABEL_185:
  *(a1 + 16) |= 0x80000u;
  v67 = *(a1 + 192);
  if (!v67)
  {
    v68 = *(a1 + 8);
    if (v68)
    {
      v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
    }

    v67 = MEMORY[0x277C97A90](v68);
    *(a1 + 192) = v67;
  }

  if (*(a2 + 192))
  {
    v69 = *(a2 + 192);
  }

  else
  {
    v69 = v60;
  }

  TSD::ShadowArchive::MergeFrom(v67, v69);
  if ((v6 & 0x100000) == 0)
  {
LABEL_165:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_201;
  }

LABEL_193:
  *(a1 + 16) |= 0x100000u;
  v70 = *(a1 + 200);
  if (!v70)
  {
    v71 = *(a1 + 8);
    if (v71)
    {
      v71 = *(v71 & 0xFFFFFFFFFFFFFFFELL);
    }

    v70 = MEMORY[0x277C97A90](v71);
    *(a1 + 200) = v70;
  }

  if (*(a2 + 200))
  {
    v72 = *(a2 + 200);
  }

  else
  {
    v72 = v60;
  }

  TSD::ShadowArchive::MergeFrom(v70, v72);
  if ((v6 & 0x200000) == 0)
  {
LABEL_166:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_209;
  }

LABEL_201:
  *(a1 + 16) |= 0x200000u;
  v73 = *(a1 + 208);
  if (!v73)
  {
    v74 = *(a1 + 8);
    if (v74)
    {
      v74 = *(v74 & 0xFFFFFFFFFFFFFFFELL);
    }

    v73 = MEMORY[0x277C97A90](v74);
    *(a1 + 208) = v73;
  }

  if (*(a2 + 208))
  {
    v75 = *(a2 + 208);
  }

  else
  {
    v75 = v60;
  }

  TSD::ShadowArchive::MergeFrom(v73, v75);
  if ((v6 & 0x400000) == 0)
  {
LABEL_167:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_225;
    }

    goto LABEL_217;
  }

LABEL_209:
  *(a1 + 16) |= 0x400000u;
  v76 = *(a1 + 216);
  if (!v76)
  {
    v77 = *(a1 + 8);
    if (v77)
    {
      v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
    }

    v76 = MEMORY[0x277C97A90](v77);
    *(a1 + 216) = v76;
  }

  if (*(a2 + 216))
  {
    v78 = *(a2 + 216);
  }

  else
  {
    v78 = v60;
  }

  TSD::ShadowArchive::MergeFrom(v76, v78);
  if ((v6 & 0x800000) != 0)
  {
LABEL_217:
    *(a1 + 16) |= 0x800000u;
    v79 = *(a1 + 224);
    if (!v79)
    {
      v80 = *(a1 + 8);
      if (v80)
      {
        v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
      }

      v79 = MEMORY[0x277C97A90](v80);
      *(a1 + 224) = v79;
    }

    if (*(a2 + 224))
    {
      v81 = *(a2 + 224);
    }

    else
    {
      v81 = v60;
    }

    TSD::ShadowArchive::MergeFrom(v79, v81);
  }

LABEL_225:
  if (!HIBYTE(v6))
  {
    goto LABEL_299;
  }

  if ((v6 & 0x1000000) != 0)
  {
    *(a1 + 16) |= 0x1000000u;
    v82 = *(a1 + 232);
    if (!v82)
    {
      v83 = *(a1 + 8);
      if (v83)
      {
        v83 = *(v83 & 0xFFFFFFFFFFFFFFFELL);
      }

      v82 = MEMORY[0x277C97A90](v83);
      *(a1 + 232) = v82;
    }

    if (*(a2 + 232))
    {
      v84 = *(a2 + 232);
    }

    else
    {
      v84 = MEMORY[0x277D80498];
    }

    TSD::ShadowArchive::MergeFrom(v82, v84);
    if ((v6 & 0x2000000) == 0)
    {
LABEL_228:
      if ((v6 & 0x4000000) == 0)
      {
        goto LABEL_229;
      }

      goto LABEL_251;
    }
  }

  else if ((v6 & 0x2000000) == 0)
  {
    goto LABEL_228;
  }

  *(a1 + 16) |= 0x2000000u;
  v85 = *(a1 + 240);
  if (!v85)
  {
    v86 = *(a1 + 8);
    if (v86)
    {
      v86 = *(v86 & 0xFFFFFFFFFFFFFFFELL);
    }

    v85 = MEMORY[0x277C97A90](v86);
    *(a1 + 240) = v85;
  }

  if (*(a2 + 240))
  {
    v87 = *(a2 + 240);
  }

  else
  {
    v87 = MEMORY[0x277D80498];
  }

  TSD::ShadowArchive::MergeFrom(v85, v87);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_229:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_230;
    }

    goto LABEL_259;
  }

LABEL_251:
  *(a1 + 16) |= 0x4000000u;
  v88 = *(a1 + 248);
  if (!v88)
  {
    v89 = *(a1 + 8);
    if (v89)
    {
      v89 = *(v89 & 0xFFFFFFFFFFFFFFFELL);
    }

    v88 = MEMORY[0x277C97A80](v89);
    *(a1 + 248) = v88;
  }

  if (*(a2 + 248))
  {
    v90 = *(a2 + 248);
  }

  else
  {
    v90 = MEMORY[0x277D80488];
  }

  TSD::FillArchive::MergeFrom(v88, v90);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_230:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_267;
  }

LABEL_259:
  *(a1 + 16) |= 0x8000000u;
  v91 = *(a1 + 256);
  if (!v91)
  {
    v92 = *(a1 + 8);
    if (v92)
    {
      v92 = *(v92 & 0xFFFFFFFFFFFFFFFELL);
    }

    v91 = MEMORY[0x277C97A80](v92);
    *(a1 + 256) = v91;
  }

  if (*(a2 + 256))
  {
    v93 = *(a2 + 256);
  }

  else
  {
    v93 = MEMORY[0x277D80488];
  }

  TSD::FillArchive::MergeFrom(v91, v93);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_231:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_275;
  }

LABEL_267:
  *(a1 + 16) |= 0x10000000u;
  v94 = *(a1 + 264);
  if (!v94)
  {
    v95 = *(a1 + 8);
    if (v95)
    {
      v95 = *(v95 & 0xFFFFFFFFFFFFFFFELL);
    }

    v94 = MEMORY[0x277C97AA0](v95);
    *(a1 + 264) = v94;
  }

  if (*(a2 + 264))
  {
    v96 = *(a2 + 264);
  }

  else
  {
    v96 = MEMORY[0x277D804A0];
  }

  TSD::StrokeArchive::MergeFrom(v94, v96);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_232:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_283;
  }

LABEL_275:
  *(a1 + 16) |= 0x20000000u;
  v97 = *(a1 + 272);
  if (!v97)
  {
    v98 = *(a1 + 8);
    if (v98)
    {
      v98 = *(v98 & 0xFFFFFFFFFFFFFFFELL);
    }

    v97 = MEMORY[0x277C97AA0](v98);
    *(a1 + 272) = v97;
  }

  if (*(a2 + 272))
  {
    v99 = *(a2 + 272);
  }

  else
  {
    v99 = MEMORY[0x277D804A0];
  }

  TSD::StrokeArchive::MergeFrom(v97, v99);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_233:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_299;
    }

    goto LABEL_291;
  }

LABEL_283:
  *(a1 + 16) |= 0x40000000u;
  v100 = *(a1 + 280);
  if (!v100)
  {
    v101 = *(a1 + 8);
    if (v101)
    {
      v101 = *(v101 & 0xFFFFFFFFFFFFFFFELL);
    }

    v100 = MEMORY[0x277C97AA0](v101);
    *(a1 + 280) = v100;
  }

  if (*(a2 + 280))
  {
    v102 = *(a2 + 280);
  }

  else
  {
    v102 = MEMORY[0x277D804A0];
  }

  TSD::StrokeArchive::MergeFrom(v100, v102);
  if ((v6 & 0x80000000) != 0)
  {
LABEL_291:
    *(a1 + 16) |= 0x80000000;
    v103 = *(a1 + 288);
    if (!v103)
    {
      v104 = *(a1 + 8);
      if (v104)
      {
        v104 = *(v104 & 0xFFFFFFFFFFFFFFFELL);
      }

      v103 = MEMORY[0x277C97A80](v104);
      *(a1 + 288) = v103;
    }

    if (*(a2 + 288))
    {
      v105 = *(a2 + 288);
    }

    else
    {
      v105 = MEMORY[0x277D80488];
    }

    TSD::FillArchive::MergeFrom(v103, v105);
  }

LABEL_299:
  v106 = *(a2 + 20);
  if (!v106)
  {
    goto LABEL_373;
  }

  if (v106)
  {
    *(a1 + 20) |= 1u;
    v107 = *(a1 + 296);
    if (!v107)
    {
      v108 = *(a1 + 8);
      if (v108)
      {
        v108 = *(v108 & 0xFFFFFFFFFFFFFFFELL);
      }

      v107 = MEMORY[0x277C97A80](v108);
      *(a1 + 296) = v107;
    }

    if (*(a2 + 296))
    {
      v109 = *(a2 + 296);
    }

    else
    {
      v109 = MEMORY[0x277D80488];
    }

    TSD::FillArchive::MergeFrom(v107, v109);
    if ((v106 & 2) == 0)
    {
LABEL_302:
      if ((v106 & 4) == 0)
      {
        goto LABEL_303;
      }

      goto LABEL_325;
    }
  }

  else if ((v106 & 2) == 0)
  {
    goto LABEL_302;
  }

  *(a1 + 20) |= 2u;
  v110 = *(a1 + 304);
  if (!v110)
  {
    v111 = *(a1 + 8);
    if (v111)
    {
      v111 = *(v111 & 0xFFFFFFFFFFFFFFFELL);
    }

    v110 = MEMORY[0x277C97AA0](v111);
    *(a1 + 304) = v110;
  }

  if (*(a2 + 304))
  {
    v112 = *(a2 + 304);
  }

  else
  {
    v112 = MEMORY[0x277D804A0];
  }

  TSD::StrokeArchive::MergeFrom(v110, v112);
  if ((v106 & 4) == 0)
  {
LABEL_303:
    if ((v106 & 8) == 0)
    {
      goto LABEL_304;
    }

    goto LABEL_333;
  }

LABEL_325:
  *(a1 + 20) |= 4u;
  v113 = *(a1 + 312);
  if (!v113)
  {
    v114 = *(a1 + 8);
    if (v114)
    {
      v114 = *(v114 & 0xFFFFFFFFFFFFFFFELL);
    }

    v113 = MEMORY[0x277C97AA0](v114);
    *(a1 + 312) = v113;
  }

  if (*(a2 + 312))
  {
    v115 = *(a2 + 312);
  }

  else
  {
    v115 = MEMORY[0x277D804A0];
  }

  TSD::StrokeArchive::MergeFrom(v113, v115);
  if ((v106 & 8) == 0)
  {
LABEL_304:
    if ((v106 & 0x10) == 0)
    {
      goto LABEL_305;
    }

    goto LABEL_341;
  }

LABEL_333:
  *(a1 + 20) |= 8u;
  v116 = *(a1 + 320);
  if (!v116)
  {
    v117 = *(a1 + 8);
    if (v117)
    {
      v117 = *(v117 & 0xFFFFFFFFFFFFFFFELL);
    }

    v116 = MEMORY[0x277C97AA0](v117);
    *(a1 + 320) = v116;
  }

  if (*(a2 + 320))
  {
    v118 = *(a2 + 320);
  }

  else
  {
    v118 = MEMORY[0x277D804A0];
  }

  TSD::StrokeArchive::MergeFrom(v116, v118);
  if ((v106 & 0x10) == 0)
  {
LABEL_305:
    if ((v106 & 0x20) == 0)
    {
      goto LABEL_306;
    }

    goto LABEL_349;
  }

LABEL_341:
  *(a1 + 20) |= 0x10u;
  v119 = *(a1 + 328);
  if (!v119)
  {
    v120 = *(a1 + 8);
    if (v120)
    {
      v120 = *(v120 & 0xFFFFFFFFFFFFFFFELL);
    }

    v119 = MEMORY[0x277C97A90](v120);
    *(a1 + 328) = v119;
  }

  if (*(a2 + 328))
  {
    v121 = *(a2 + 328);
  }

  else
  {
    v121 = MEMORY[0x277D80498];
  }

  TSD::ShadowArchive::MergeFrom(v119, v121);
  if ((v106 & 0x20) == 0)
  {
LABEL_306:
    if ((v106 & 0x40) == 0)
    {
      goto LABEL_307;
    }

    goto LABEL_357;
  }

LABEL_349:
  *(a1 + 20) |= 0x20u;
  v122 = *(a1 + 336);
  if (!v122)
  {
    v123 = *(a1 + 8);
    if (v123)
    {
      v123 = *(v123 & 0xFFFFFFFFFFFFFFFELL);
    }

    v122 = MEMORY[0x277C97A90](v123);
    *(a1 + 336) = v122;
  }

  if (*(a2 + 336))
  {
    v124 = *(a2 + 336);
  }

  else
  {
    v124 = MEMORY[0x277D80498];
  }

  TSD::ShadowArchive::MergeFrom(v122, v124);
  if ((v106 & 0x40) == 0)
  {
LABEL_307:
    if ((v106 & 0x80) == 0)
    {
      goto LABEL_373;
    }

    goto LABEL_365;
  }

LABEL_357:
  *(a1 + 20) |= 0x40u;
  v125 = *(a1 + 344);
  if (!v125)
  {
    v126 = *(a1 + 8);
    if (v126)
    {
      v126 = *(v126 & 0xFFFFFFFFFFFFFFFELL);
    }

    v125 = MEMORY[0x277C97AA0](v126);
    *(a1 + 344) = v125;
  }

  if (*(a2 + 344))
  {
    v127 = *(a2 + 344);
  }

  else
  {
    v127 = MEMORY[0x277D804A0];
  }

  TSD::StrokeArchive::MergeFrom(v125, v127);
  if ((v106 & 0x80) != 0)
  {
LABEL_365:
    *(a1 + 20) |= 0x80u;
    v128 = *(a1 + 352);
    if (!v128)
    {
      v129 = *(a1 + 8);
      if (v129)
      {
        v129 = *(v129 & 0xFFFFFFFFFFFFFFFELL);
      }

      v128 = MEMORY[0x277C97AA0](v129);
      *(a1 + 352) = v128;
    }

    if (*(a2 + 352))
    {
      v130 = *(a2 + 352);
    }

    else
    {
      v130 = MEMORY[0x277D804A0];
    }

    TSD::StrokeArchive::MergeFrom(v128, v130);
  }

LABEL_373:
  if ((v106 & 0xFF00) == 0)
  {
    goto LABEL_447;
  }

  v131 = MEMORY[0x277D804A8];
  if ((v106 & 0x100) != 0)
  {
    *(a1 + 20) |= 0x100u;
    v132 = *(a1 + 360);
    if (!v132)
    {
      v133 = *(a1 + 8);
      if (v133)
      {
        v133 = *(v133 & 0xFFFFFFFFFFFFFFFELL);
      }

      v132 = MEMORY[0x277C97AB0](v133);
      *(a1 + 360) = v132;
    }

    if (*(a2 + 360))
    {
      v134 = *(a2 + 360);
    }

    else
    {
      v134 = v131;
    }

    TSD::LineEndArchive::MergeFrom(v132, v134);
    if ((v106 & 0x200) == 0)
    {
LABEL_376:
      if ((v106 & 0x400) == 0)
      {
        goto LABEL_377;
      }

      goto LABEL_397;
    }
  }

  else if ((v106 & 0x200) == 0)
  {
    goto LABEL_376;
  }

  *(a1 + 20) |= 0x200u;
  v135 = *(a1 + 368);
  if (!v135)
  {
    v136 = *(a1 + 8);
    if (v136)
    {
      v136 = *(v136 & 0xFFFFFFFFFFFFFFFELL);
    }

    v135 = MEMORY[0x277C97AB0](v136);
    *(a1 + 368) = v135;
  }

  if (*(a2 + 368))
  {
    v137 = *(a2 + 368);
  }

  else
  {
    v137 = v131;
  }

  TSD::LineEndArchive::MergeFrom(v135, v137);
  if ((v106 & 0x400) == 0)
  {
LABEL_377:
    if ((v106 & 0x800) == 0)
    {
      goto LABEL_378;
    }

    goto LABEL_405;
  }

LABEL_397:
  *(a1 + 20) |= 0x400u;
  v138 = *(a1 + 376);
  if (!v138)
  {
    v139 = *(a1 + 8);
    if (v139)
    {
      v139 = *(v139 & 0xFFFFFFFFFFFFFFFELL);
    }

    v138 = MEMORY[0x277C97A80](v139);
    *(a1 + 376) = v138;
  }

  if (*(a2 + 376))
  {
    v140 = *(a2 + 376);
  }

  else
  {
    v140 = MEMORY[0x277D80488];
  }

  TSD::FillArchive::MergeFrom(v138, v140);
  if ((v106 & 0x800) == 0)
  {
LABEL_378:
    if ((v106 & 0x1000) == 0)
    {
      goto LABEL_379;
    }

LABEL_413:
    *(a1 + 20) |= 0x1000u;
    v144 = *(a1 + 392);
    if (!v144)
    {
      v145 = *(a1 + 8);
      if (v145)
      {
        v145 = *(v145 & 0xFFFFFFFFFFFFFFFELL);
      }

      v144 = MEMORY[0x277C97AA0](v145);
      *(a1 + 392) = v144;
    }

    if (*(a2 + 392))
    {
      v146 = *(a2 + 392);
    }

    else
    {
      v146 = MEMORY[0x277D804A0];
    }

    TSD::StrokeArchive::MergeFrom(v144, v146);
    if ((v106 & 0x2000) == 0)
    {
      goto LABEL_429;
    }

    goto LABEL_421;
  }

LABEL_405:
  *(a1 + 20) |= 0x800u;
  v141 = *(a1 + 384);
  if (!v141)
  {
    v142 = *(a1 + 8);
    if (v142)
    {
      v142 = *(v142 & 0xFFFFFFFFFFFFFFFELL);
    }

    v141 = MEMORY[0x277C97AA0](v142);
    *(a1 + 384) = v141;
  }

  if (*(a2 + 384))
  {
    v143 = *(a2 + 384);
  }

  else
  {
    v143 = MEMORY[0x277D804A0];
  }

  TSD::StrokeArchive::MergeFrom(v141, v143);
  if ((v106 & 0x1000) != 0)
  {
    goto LABEL_413;
  }

LABEL_379:
  if ((v106 & 0x2000) != 0)
  {
LABEL_421:
    *(a1 + 20) |= 0x2000u;
    v147 = *(a1 + 400);
    if (!v147)
    {
      v148 = *(a1 + 8);
      if (v148)
      {
        v148 = *(v148 & 0xFFFFFFFFFFFFFFFELL);
      }

      v147 = MEMORY[0x277C97A90](v148);
      *(a1 + 400) = v147;
    }

    if (*(a2 + 400))
    {
      v149 = *(a2 + 400);
    }

    else
    {
      v149 = MEMORY[0x277D80498];
    }

    TSD::ShadowArchive::MergeFrom(v147, v149);
  }

LABEL_429:
  if ((v106 & 0x4000) != 0)
  {
    *(a1 + 20) |= 0x4000u;
    v150 = *(a1 + 408);
    if (!v150)
    {
      v151 = *(a1 + 8);
      if (v151)
      {
        v151 = *(v151 & 0xFFFFFFFFFFFFFFFELL);
      }

      v150 = sub_276406B24(v151);
      *(a1 + 408) = v150;
    }

    if (*(a2 + 408))
    {
      v152 = *(a2 + 408);
    }

    else
    {
      v152 = qword_2812F0200;
    }

    sub_27640193C(v150, v152);
  }

  if ((v106 & 0x8000) != 0)
  {
    *(a1 + 20) |= 0x8000u;
    v153 = *(a1 + 416);
    if (!v153)
    {
      v154 = *(a1 + 8);
      if (v154)
      {
        v154 = *(v154 & 0xFFFFFFFFFFFFFFFELL);
      }

      v153 = sub_276406B24(v154);
      *(a1 + 416) = v153;
    }

    if (*(a2 + 416))
    {
      v155 = *(a2 + 416);
    }

    else
    {
      v155 = qword_2812F0200;
    }

    sub_27640193C(v153, v155);
  }

LABEL_447:
  if ((v106 & 0xFF0000) == 0)
  {
    goto LABEL_521;
  }

  if ((v106 & 0x10000) != 0)
  {
    *(a1 + 20) |= 0x10000u;
    v156 = *(a1 + 424);
    if (!v156)
    {
      v157 = *(a1 + 8);
      if (v157)
      {
        v157 = *(v157 & 0xFFFFFFFFFFFFFFFELL);
      }

      v156 = sub_276406B24(v157);
      *(a1 + 424) = v156;
    }

    if (*(a2 + 424))
    {
      v158 = *(a2 + 424);
    }

    else
    {
      v158 = qword_2812F0200;
    }

    sub_27640193C(v156, v158);
    if ((v106 & 0x20000) == 0)
    {
LABEL_450:
      if ((v106 & 0x40000) == 0)
      {
        goto LABEL_451;
      }

      goto LABEL_473;
    }
  }

  else if ((v106 & 0x20000) == 0)
  {
    goto LABEL_450;
  }

  *(a1 + 20) |= 0x20000u;
  v159 = *(a1 + 432);
  if (!v159)
  {
    v160 = *(a1 + 8);
    if (v160)
    {
      v160 = *(v160 & 0xFFFFFFFFFFFFFFFELL);
    }

    v159 = sub_276406B24(v160);
    *(a1 + 432) = v159;
  }

  if (*(a2 + 432))
  {
    v161 = *(a2 + 432);
  }

  else
  {
    v161 = qword_2812F0200;
  }

  sub_27640193C(v159, v161);
  if ((v106 & 0x40000) == 0)
  {
LABEL_451:
    if ((v106 & 0x80000) == 0)
    {
      goto LABEL_452;
    }

    goto LABEL_481;
  }

LABEL_473:
  *(a1 + 20) |= 0x40000u;
  v162 = *(a1 + 440);
  if (!v162)
  {
    v163 = *(a1 + 8);
    if (v163)
    {
      v163 = *(v163 & 0xFFFFFFFFFFFFFFFELL);
    }

    v162 = sub_276406B24(v163);
    *(a1 + 440) = v162;
  }

  if (*(a2 + 440))
  {
    v164 = *(a2 + 440);
  }

  else
  {
    v164 = qword_2812F0200;
  }

  sub_27640193C(v162, v164);
  if ((v106 & 0x80000) == 0)
  {
LABEL_452:
    if ((v106 & 0x100000) == 0)
    {
      goto LABEL_453;
    }

    goto LABEL_489;
  }

LABEL_481:
  *(a1 + 20) |= 0x80000u;
  v165 = *(a1 + 448);
  if (!v165)
  {
    v166 = *(a1 + 8);
    if (v166)
    {
      v166 = *(v166 & 0xFFFFFFFFFFFFFFFELL);
    }

    v165 = sub_276406B24(v166);
    *(a1 + 448) = v165;
  }

  if (*(a2 + 448))
  {
    v167 = *(a2 + 448);
  }

  else
  {
    v167 = qword_2812F0200;
  }

  sub_27640193C(v165, v167);
  if ((v106 & 0x100000) == 0)
  {
LABEL_453:
    if ((v106 & 0x200000) == 0)
    {
      goto LABEL_454;
    }

    goto LABEL_497;
  }

LABEL_489:
  *(a1 + 20) |= 0x100000u;
  v168 = *(a1 + 456);
  if (!v168)
  {
    v169 = *(a1 + 8);
    if (v169)
    {
      v169 = *(v169 & 0xFFFFFFFFFFFFFFFELL);
    }

    v168 = MEMORY[0x277C97A90](v169);
    *(a1 + 456) = v168;
  }

  if (*(a2 + 456))
  {
    v170 = *(a2 + 456);
  }

  else
  {
    v170 = MEMORY[0x277D80498];
  }

  TSD::ShadowArchive::MergeFrom(v168, v170);
  if ((v106 & 0x200000) == 0)
  {
LABEL_454:
    if ((v106 & 0x400000) == 0)
    {
      goto LABEL_455;
    }

    goto LABEL_505;
  }

LABEL_497:
  *(a1 + 20) |= 0x200000u;
  v171 = *(a1 + 464);
  if (!v171)
  {
    v172 = *(a1 + 8);
    if (v172)
    {
      v172 = *(v172 & 0xFFFFFFFFFFFFFFFELL);
    }

    v171 = MEMORY[0x277C97A90](v172);
    *(a1 + 464) = v171;
  }

  if (*(a2 + 464))
  {
    v173 = *(a2 + 464);
  }

  else
  {
    v173 = MEMORY[0x277D80498];
  }

  TSD::ShadowArchive::MergeFrom(v171, v173);
  if ((v106 & 0x400000) == 0)
  {
LABEL_455:
    if ((v106 & 0x800000) == 0)
    {
      goto LABEL_521;
    }

    goto LABEL_513;
  }

LABEL_505:
  *(a1 + 20) |= 0x400000u;
  v174 = *(a1 + 472);
  if (!v174)
  {
    v175 = *(a1 + 8);
    if (v175)
    {
      v175 = *(v175 & 0xFFFFFFFFFFFFFFFELL);
    }

    v174 = MEMORY[0x277C97A90](v175);
    *(a1 + 472) = v174;
  }

  if (*(a2 + 472))
  {
    v176 = *(a2 + 472);
  }

  else
  {
    v176 = MEMORY[0x277D80498];
  }

  TSD::ShadowArchive::MergeFrom(v174, v176);
  if ((v106 & 0x800000) != 0)
  {
LABEL_513:
    *(a1 + 20) |= 0x800000u;
    v177 = *(a1 + 480);
    if (!v177)
    {
      v178 = *(a1 + 8);
      if (v178)
      {
        v178 = *(v178 & 0xFFFFFFFFFFFFFFFELL);
      }

      v177 = MEMORY[0x277C97A90](v178);
      *(a1 + 480) = v177;
    }

    if (*(a2 + 480))
    {
      v179 = *(a2 + 480);
    }

    else
    {
      v179 = MEMORY[0x277D80498];
    }

    TSD::ShadowArchive::MergeFrom(v177, v179);
  }

LABEL_521:
  if (!HIBYTE(v106))
  {
    goto LABEL_531;
  }

  if ((v106 & 0x1000000) != 0)
  {
    *(a1 + 20) |= 0x1000000u;
    v182 = *(a1 + 488);
    if (!v182)
    {
      v183 = *(a1 + 8);
      if (v183)
      {
        v183 = *(v183 & 0xFFFFFFFFFFFFFFFELL);
      }

      v182 = MEMORY[0x277C97A90](v183);
      *(a1 + 488) = v182;
    }

    if (*(a2 + 488))
    {
      v184 = *(a2 + 488);
    }

    else
    {
      v184 = MEMORY[0x277D80498];
    }

    TSD::ShadowArchive::MergeFrom(v182, v184);
    if ((v106 & 0x2000000) == 0)
    {
LABEL_524:
      if ((v106 & 0x4000000) == 0)
      {
        goto LABEL_525;
      }

      goto LABEL_636;
    }
  }

  else if ((v106 & 0x2000000) == 0)
  {
    goto LABEL_524;
  }

  *(a1 + 20) |= 0x2000000u;
  v185 = *(a1 + 496);
  if (!v185)
  {
    v186 = *(a1 + 8);
    if (v186)
    {
      v186 = *(v186 & 0xFFFFFFFFFFFFFFFELL);
    }

    v185 = MEMORY[0x277C97A80](v186);
    *(a1 + 496) = v185;
  }

  if (*(a2 + 496))
  {
    v187 = *(a2 + 496);
  }

  else
  {
    v187 = MEMORY[0x277D80488];
  }

  TSD::FillArchive::MergeFrom(v185, v187);
  if ((v106 & 0x4000000) == 0)
  {
LABEL_525:
    if ((v106 & 0x8000000) == 0)
    {
      goto LABEL_526;
    }

    goto LABEL_644;
  }

LABEL_636:
  *(a1 + 20) |= 0x4000000u;
  v188 = *(a1 + 504);
  if (!v188)
  {
    v189 = *(a1 + 8);
    if (v189)
    {
      v189 = *(v189 & 0xFFFFFFFFFFFFFFFELL);
    }

    v188 = MEMORY[0x277C97A80](v189);
    *(a1 + 504) = v188;
  }

  if (*(a2 + 504))
  {
    v190 = *(a2 + 504);
  }

  else
  {
    v190 = MEMORY[0x277D80488];
  }

  TSD::FillArchive::MergeFrom(v188, v190);
  if ((v106 & 0x8000000) == 0)
  {
LABEL_526:
    if ((v106 & 0x10000000) == 0)
    {
      goto LABEL_527;
    }

    goto LABEL_652;
  }

LABEL_644:
  *(a1 + 20) |= 0x8000000u;
  v191 = *(a1 + 512);
  if (!v191)
  {
    v192 = *(a1 + 8);
    if (v192)
    {
      v192 = *(v192 & 0xFFFFFFFFFFFFFFFELL);
    }

    v191 = MEMORY[0x277C97A80](v192);
    *(a1 + 512) = v191;
  }

  if (*(a2 + 512))
  {
    v193 = *(a2 + 512);
  }

  else
  {
    v193 = MEMORY[0x277D80488];
  }

  TSD::FillArchive::MergeFrom(v191, v193);
  if ((v106 & 0x10000000) == 0)
  {
LABEL_527:
    if ((v106 & 0x20000000) == 0)
    {
      goto LABEL_528;
    }

    goto LABEL_660;
  }

LABEL_652:
  *(a1 + 20) |= 0x10000000u;
  v194 = *(a1 + 520);
  if (!v194)
  {
    v195 = *(a1 + 8);
    if (v195)
    {
      v195 = *(v195 & 0xFFFFFFFFFFFFFFFELL);
    }

    v194 = MEMORY[0x277C97A80](v195);
    *(a1 + 520) = v194;
  }

  if (*(a2 + 520))
  {
    v196 = *(a2 + 520);
  }

  else
  {
    v196 = MEMORY[0x277D80488];
  }

  TSD::FillArchive::MergeFrom(v194, v196);
  if ((v106 & 0x20000000) == 0)
  {
LABEL_528:
    if ((v106 & 0x40000000) == 0)
    {
      goto LABEL_529;
    }

LABEL_668:
    *(a1 + 536) = *(a2 + 536);
    if ((v106 & 0x80000000) == 0)
    {
      goto LABEL_530;
    }

LABEL_669:
    result = *(a2 + 540);
    *(a1 + 540) = result;
    goto LABEL_530;
  }

LABEL_660:
  *(a1 + 20) |= 0x20000000u;
  v197 = *(a1 + 528);
  if (!v197)
  {
    v198 = *(a1 + 8);
    if (v198)
    {
      v198 = *(v198 & 0xFFFFFFFFFFFFFFFELL);
    }

    v197 = MEMORY[0x277C97A80](v198);
    *(a1 + 528) = v197;
  }

  if (*(a2 + 528))
  {
    v199 = *(a2 + 528);
  }

  else
  {
    v199 = MEMORY[0x277D80488];
  }

  TSD::FillArchive::MergeFrom(v197, v199);
  if ((v106 & 0x40000000) != 0)
  {
    goto LABEL_668;
  }

LABEL_529:
  if ((v106 & 0x80000000) != 0)
  {
    goto LABEL_669;
  }

LABEL_530:
  *(a1 + 20) |= v106;
LABEL_531:
  v180 = *(a2 + 24);
  if (!v180)
  {
    goto LABEL_542;
  }

  if (v180)
  {
    *(a1 + 544) = *(a2 + 544);
    if ((v180 & 2) == 0)
    {
LABEL_534:
      if ((v180 & 4) == 0)
      {
        goto LABEL_535;
      }

      goto LABEL_590;
    }
  }

  else if ((v180 & 2) == 0)
  {
    goto LABEL_534;
  }

  *(a1 + 548) = *(a2 + 548);
  if ((v180 & 4) == 0)
  {
LABEL_535:
    if ((v180 & 8) == 0)
    {
      goto LABEL_536;
    }

    goto LABEL_591;
  }

LABEL_590:
  result = *(a2 + 552);
  *(a1 + 552) = result;
  if ((v180 & 8) == 0)
  {
LABEL_536:
    if ((v180 & 0x10) == 0)
    {
      goto LABEL_537;
    }

    goto LABEL_592;
  }

LABEL_591:
  result = *(a2 + 556);
  *(a1 + 556) = result;
  if ((v180 & 0x10) == 0)
  {
LABEL_537:
    if ((v180 & 0x20) == 0)
    {
      goto LABEL_538;
    }

    goto LABEL_593;
  }

LABEL_592:
  *(a1 + 560) = *(a2 + 560);
  if ((v180 & 0x20) == 0)
  {
LABEL_538:
    if ((v180 & 0x40) == 0)
    {
      goto LABEL_539;
    }

LABEL_594:
    *(a1 + 568) = *(a2 + 568);
    if ((v180 & 0x80) == 0)
    {
      goto LABEL_541;
    }

    goto LABEL_540;
  }

LABEL_593:
  *(a1 + 564) = *(a2 + 564);
  if ((v180 & 0x40) != 0)
  {
    goto LABEL_594;
  }

LABEL_539:
  if ((v180 & 0x80) != 0)
  {
LABEL_540:
    *(a1 + 572) = *(a2 + 572);
  }

LABEL_541:
  *(a1 + 24) |= v180;
LABEL_542:
  if ((v180 & 0xFF00) == 0)
  {
    goto LABEL_553;
  }

  if ((v180 & 0x100) != 0)
  {
    *(a1 + 576) = *(a2 + 576);
    if ((v180 & 0x200) == 0)
    {
LABEL_545:
      if ((v180 & 0x400) == 0)
      {
        goto LABEL_546;
      }

      goto LABEL_598;
    }
  }

  else if ((v180 & 0x200) == 0)
  {
    goto LABEL_545;
  }

  *(a1 + 580) = *(a2 + 580);
  if ((v180 & 0x400) == 0)
  {
LABEL_546:
    if ((v180 & 0x800) == 0)
    {
      goto LABEL_547;
    }

    goto LABEL_599;
  }

LABEL_598:
  *(a1 + 584) = *(a2 + 584);
  if ((v180 & 0x800) == 0)
  {
LABEL_547:
    if ((v180 & 0x1000) == 0)
    {
      goto LABEL_548;
    }

    goto LABEL_600;
  }

LABEL_599:
  *(a1 + 588) = *(a2 + 588);
  if ((v180 & 0x1000) == 0)
  {
LABEL_548:
    if ((v180 & 0x2000) == 0)
    {
      goto LABEL_549;
    }

    goto LABEL_601;
  }

LABEL_600:
  *(a1 + 592) = *(a2 + 592);
  if ((v180 & 0x2000) == 0)
  {
LABEL_549:
    if ((v180 & 0x4000) == 0)
    {
      goto LABEL_550;
    }

LABEL_602:
    *(a1 + 600) = *(a2 + 600);
    if ((v180 & 0x8000) == 0)
    {
      goto LABEL_552;
    }

    goto LABEL_551;
  }

LABEL_601:
  result = *(a2 + 596);
  *(a1 + 596) = result;
  if ((v180 & 0x4000) != 0)
  {
    goto LABEL_602;
  }

LABEL_550:
  if ((v180 & 0x8000) != 0)
  {
LABEL_551:
    *(a1 + 601) = *(a2 + 601);
  }

LABEL_552:
  *(a1 + 24) |= v180;
LABEL_553:
  if ((v180 & 0xFF0000) == 0)
  {
    goto LABEL_564;
  }

  if ((v180 & 0x10000) != 0)
  {
    *(a1 + 602) = *(a2 + 602);
    if ((v180 & 0x20000) == 0)
    {
LABEL_556:
      if ((v180 & 0x40000) == 0)
      {
        goto LABEL_557;
      }

      goto LABEL_606;
    }
  }

  else if ((v180 & 0x20000) == 0)
  {
    goto LABEL_556;
  }

  *(a1 + 603) = *(a2 + 603);
  if ((v180 & 0x40000) == 0)
  {
LABEL_557:
    if ((v180 & 0x80000) == 0)
    {
      goto LABEL_558;
    }

    goto LABEL_607;
  }

LABEL_606:
  *(a1 + 604) = *(a2 + 604);
  if ((v180 & 0x80000) == 0)
  {
LABEL_558:
    if ((v180 & 0x100000) == 0)
    {
      goto LABEL_559;
    }

    goto LABEL_608;
  }

LABEL_607:
  *(a1 + 605) = *(a2 + 605);
  if ((v180 & 0x100000) == 0)
  {
LABEL_559:
    if ((v180 & 0x200000) == 0)
    {
      goto LABEL_560;
    }

    goto LABEL_609;
  }

LABEL_608:
  *(a1 + 606) = *(a2 + 606);
  if ((v180 & 0x200000) == 0)
  {
LABEL_560:
    if ((v180 & 0x400000) == 0)
    {
      goto LABEL_561;
    }

LABEL_610:
    *(a1 + 608) = *(a2 + 608);
    if ((v180 & 0x800000) == 0)
    {
      goto LABEL_563;
    }

    goto LABEL_562;
  }

LABEL_609:
  *(a1 + 607) = *(a2 + 607);
  if ((v180 & 0x400000) != 0)
  {
    goto LABEL_610;
  }

LABEL_561:
  if ((v180 & 0x800000) != 0)
  {
LABEL_562:
    *(a1 + 609) = *(a2 + 609);
  }

LABEL_563:
  *(a1 + 24) |= v180;
LABEL_564:
  if (!HIBYTE(v180))
  {
    goto LABEL_574;
  }

  if ((v180 & 0x1000000) != 0)
  {
    *(a1 + 610) = *(a2 + 610);
    if ((v180 & 0x2000000) == 0)
    {
LABEL_567:
      if ((v180 & 0x4000000) == 0)
      {
        goto LABEL_568;
      }

      goto LABEL_672;
    }
  }

  else if ((v180 & 0x2000000) == 0)
  {
    goto LABEL_567;
  }

  result = *(a2 + 612);
  *(a1 + 612) = result;
  if ((v180 & 0x4000000) == 0)
  {
LABEL_568:
    if ((v180 & 0x8000000) == 0)
    {
      goto LABEL_569;
    }

    goto LABEL_673;
  }

LABEL_672:
  result = *(a2 + 616);
  *(a1 + 616) = result;
  if ((v180 & 0x8000000) == 0)
  {
LABEL_569:
    if ((v180 & 0x10000000) == 0)
    {
      goto LABEL_570;
    }

    goto LABEL_674;
  }

LABEL_673:
  *(a1 + 620) = *(a2 + 620);
  if ((v180 & 0x10000000) == 0)
  {
LABEL_570:
    if ((v180 & 0x20000000) == 0)
    {
      goto LABEL_571;
    }

    goto LABEL_675;
  }

LABEL_674:
  *(a1 + 624) = *(a2 + 624);
  if ((v180 & 0x20000000) == 0)
  {
LABEL_571:
    if ((v180 & 0x40000000) == 0)
    {
      goto LABEL_572;
    }

LABEL_676:
    *(a1 + 632) = *(a2 + 632);
    if ((v180 & 0x80000000) == 0)
    {
      goto LABEL_573;
    }

LABEL_677:
    *(a1 + 636) = *(a2 + 636);
    goto LABEL_573;
  }

LABEL_675:
  *(a1 + 628) = *(a2 + 628);
  if ((v180 & 0x40000000) != 0)
  {
    goto LABEL_676;
  }

LABEL_572:
  if ((v180 & 0x80000000) != 0)
  {
    goto LABEL_677;
  }

LABEL_573:
  *(a1 + 24) |= v180;
LABEL_574:
  v181 = *(a2 + 28);
  if (!v181)
  {
    goto LABEL_585;
  }

  if (v181)
  {
    *(a1 + 640) = *(a2 + 640);
    if ((v181 & 2) == 0)
    {
LABEL_577:
      if ((v181 & 4) == 0)
      {
        goto LABEL_578;
      }

      goto LABEL_614;
    }
  }

  else if ((v181 & 2) == 0)
  {
    goto LABEL_577;
  }

  *(a1 + 644) = *(a2 + 644);
  if ((v181 & 4) == 0)
  {
LABEL_578:
    if ((v181 & 8) == 0)
    {
      goto LABEL_579;
    }

    goto LABEL_615;
  }

LABEL_614:
  *(a1 + 648) = *(a2 + 648);
  if ((v181 & 8) == 0)
  {
LABEL_579:
    if ((v181 & 0x10) == 0)
    {
      goto LABEL_580;
    }

    goto LABEL_616;
  }

LABEL_615:
  *(a1 + 652) = *(a2 + 652);
  if ((v181 & 0x10) == 0)
  {
LABEL_580:
    if ((v181 & 0x20) == 0)
    {
      goto LABEL_581;
    }

    goto LABEL_617;
  }

LABEL_616:
  *(a1 + 656) = *(a2 + 656);
  if ((v181 & 0x20) == 0)
  {
LABEL_581:
    if ((v181 & 0x40) == 0)
    {
      goto LABEL_582;
    }

LABEL_618:
    *(a1 + 664) = *(a2 + 664);
    if ((v181 & 0x80) == 0)
    {
      goto LABEL_584;
    }

    goto LABEL_583;
  }

LABEL_617:
  *(a1 + 660) = *(a2 + 660);
  if ((v181 & 0x40) != 0)
  {
    goto LABEL_618;
  }

LABEL_582:
  if ((v181 & 0x80) != 0)
  {
LABEL_583:
    result = *(a2 + 668);
    *(a1 + 668) = result;
  }

LABEL_584:
  *(a1 + 28) |= v181;
LABEL_585:
  if ((v181 & 0x100) != 0)
  {
    result = *(a2 + 672);
    *(a1 + 28) |= 0x100u;
    *(a1 + 672) = result;
  }

  return result;
}

void sub_276498B14(uint64_t *a1, uint64_t *a2)
{
  if (a2 != a1)
  {
    sub_27648FF70(a1);

    sub_2764973C4(a1, a2);
  }
}

uint64_t sub_276498B60(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSS::StyleArchive::IsInitialized(*(a1 + 40));
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 2) != 0)
    {
      result = TSD::FillArchive::IsInitialized(*(a1 + 48));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 4) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 56));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 8) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 64));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x10) != 0)
    {
      result = TSD::FillArchive::IsInitialized(*(a1 + 72));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x20) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 80));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x40) != 0)
    {
      result = TSD::FillArchive::IsInitialized(*(a1 + 88));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x80) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 96));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x100) != 0)
    {
      result = TSD::FillArchive::IsInitialized(*(a1 + 104));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x200) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 112));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x400) != 0)
    {
      result = TSD::FillArchive::IsInitialized(*(a1 + 120));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x800) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 128));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x1000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 136));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x2000) != 0)
    {
      result = TSD::FillArchive::IsInitialized(*(a1 + 144));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x4000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 152));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x8000) != 0)
    {
      result = TSD::FillArchive::IsInitialized(*(a1 + 160));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x10000) != 0)
    {
      result = TSD::FillArchive::IsInitialized(*(a1 + 168));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x20000) != 0)
    {
      result = TSD::ShadowArchive::IsInitialized(*(a1 + 176));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x40000) != 0)
    {
      result = TSD::ShadowArchive::IsInitialized(*(a1 + 184));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x80000) != 0)
    {
      result = TSD::ShadowArchive::IsInitialized(*(a1 + 192));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x100000) != 0)
    {
      result = TSD::ShadowArchive::IsInitialized(*(a1 + 200));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x200000) != 0)
    {
      result = TSD::ShadowArchive::IsInitialized(*(a1 + 208));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x400000) != 0)
    {
      result = TSD::ShadowArchive::IsInitialized(*(a1 + 216));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x800000) != 0)
    {
      result = TSD::ShadowArchive::IsInitialized(*(a1 + 224));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x1000000) != 0)
    {
      result = TSD::ShadowArchive::IsInitialized(*(a1 + 232));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x2000000) != 0)
    {
      result = TSD::ShadowArchive::IsInitialized(*(a1 + 240));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x4000000) != 0)
    {
      result = TSD::FillArchive::IsInitialized(*(a1 + 248));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x8000000) != 0)
    {
      result = TSD::FillArchive::IsInitialized(*(a1 + 256));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x10000000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 264));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x20000000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 272));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x40000000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 280));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x80000000) == 0 || (result = TSD::FillArchive::IsInitialized(*(a1 + 288)), result))
    {
      v4 = *(a1 + 20);
      if (v4)
      {
        result = TSD::FillArchive::IsInitialized(*(a1 + 296));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 2) != 0)
      {
        result = TSD::StrokeArchive::IsInitialized(*(a1 + 304));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 4) != 0)
      {
        result = TSD::StrokeArchive::IsInitialized(*(a1 + 312));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 8) != 0)
      {
        result = TSD::StrokeArchive::IsInitialized(*(a1 + 320));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x10) != 0)
      {
        result = TSD::ShadowArchive::IsInitialized(*(a1 + 328));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x20) != 0)
      {
        result = TSD::ShadowArchive::IsInitialized(*(a1 + 336));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x40) != 0)
      {
        result = TSD::StrokeArchive::IsInitialized(*(a1 + 344));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x80) != 0)
      {
        result = TSD::StrokeArchive::IsInitialized(*(a1 + 352));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x100) != 0)
      {
        result = TSD::LineEndArchive::IsInitialized(*(a1 + 360));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x200) != 0)
      {
        result = TSD::LineEndArchive::IsInitialized(*(a1 + 368));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x400) != 0)
      {
        result = TSD::FillArchive::IsInitialized(*(a1 + 376));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x800) != 0)
      {
        result = TSD::StrokeArchive::IsInitialized(*(a1 + 384));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x1000) != 0)
      {
        result = TSD::StrokeArchive::IsInitialized(*(a1 + 392));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x2000) != 0)
      {
        result = TSD::ShadowArchive::IsInitialized(*(a1 + 400));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x4000) != 0)
      {
        result = sub_276401ADC(*(a1 + 408));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x8000) != 0)
      {
        result = sub_276401ADC(*(a1 + 416));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x10000) != 0)
      {
        result = sub_276401ADC(*(a1 + 424));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x20000) != 0)
      {
        result = sub_276401ADC(*(a1 + 432));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x40000) != 0)
      {
        result = sub_276401ADC(*(a1 + 440));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x80000) != 0)
      {
        result = sub_276401ADC(*(a1 + 448));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x100000) != 0)
      {
        result = TSD::ShadowArchive::IsInitialized(*(a1 + 456));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x200000) != 0)
      {
        result = TSD::ShadowArchive::IsInitialized(*(a1 + 464));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x400000) != 0)
      {
        result = TSD::ShadowArchive::IsInitialized(*(a1 + 472));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x800000) != 0)
      {
        result = TSD::ShadowArchive::IsInitialized(*(a1 + 480));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x1000000) != 0)
      {
        result = TSD::ShadowArchive::IsInitialized(*(a1 + 488));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x2000000) != 0)
      {
        result = TSD::FillArchive::IsInitialized(*(a1 + 496));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x4000000) != 0)
      {
        result = TSD::FillArchive::IsInitialized(*(a1 + 504));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x8000000) != 0)
      {
        result = TSD::FillArchive::IsInitialized(*(a1 + 512));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x10000000) != 0)
      {
        result = TSD::FillArchive::IsInitialized(*(a1 + 520));
        if (!result)
        {
          return result;
        }

        v4 = *(a1 + 20);
      }

      if ((v4 & 0x20000000) == 0)
      {
        return 1;
      }

      result = TSD::FillArchive::IsInitialized(*(a1 + 528));
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_2764990A0(uint64_t a1)
{
  sub_2764990D4(a1);
  sub_2763941F4((a1 + 8));
  return a1;
}

uint64_t sub_2764990D4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  if (v1 != &qword_2812F2DB8)
  {
    if (v1[5])
    {
      v3 = MEMORY[0x277C976F0]();
      MEMORY[0x277C98580](v3, 0x10A1C40AC828A93);
    }

    v4 = v1[6];
    if (v4)
    {
      v5 = sub_2764814C0(v4);
      MEMORY[0x277C98580](v5, 0x10A1C40834F8370);
    }

    v6 = v1[7];
    if (v6)
    {
      v7 = sub_2764814C0(v6);
      MEMORY[0x277C98580](v7, 0x10A1C40834F8370);
    }

    v8 = v1[8];
    if (v8)
    {
      v9 = sub_2764814C0(v8);
      MEMORY[0x277C98580](v9, 0x10A1C40834F8370);
    }

    if (v1[9])
    {
      v10 = sub_2764009F8();
      MEMORY[0x277C98580](v10, 0x1081C4085BC40B3);
    }

    if (v1[10])
    {
      v11 = sub_2764009F8();
      MEMORY[0x277C98580](v11, 0x1081C4085BC40B3);
    }

    if (v1[11])
    {
      v12 = sub_2764009F8();
      MEMORY[0x277C98580](v12, 0x1081C4085BC40B3);
    }

    result = v1[12];
    if (result)
    {
      sub_2764009F8();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_276499228(uint64_t a1)
{
  sub_2764990A0(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276499268()
{
  if (atomic_load_explicit(dword_2812EE418, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812F2DB8;
}

uint64_t *sub_2764992A8(uint64_t *result)
{
  v1 = result;
  v2 = result + 2;
  v3 = *(result + 4);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    v7 = result[4] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_35:
  result = TSS::StyleArchive::Clear(result[5]);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = sub_276481698(v1[6]);
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = sub_276481698(v1[7]);
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_39:
    result = sub_276400A3C(v1[9]);
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_38:
  result = sub_276481698(v1[8]);
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_39;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_40:
  result = sub_276400A3C(v1[10]);
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = sub_276400A3C(v1[11]);
  }

LABEL_11:
  if ((v3 & 0x100) != 0)
  {
    result = sub_276400A3C(v1[12]);
  }

  if ((v3 & 0xFE00) != 0)
  {
    v1[13] = 0;
    v1[14] = 0;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    v1[15] = 0;
    v1[16] = 0;
    *(v1 + 34) = 0;
  }

  if (HIBYTE(v3))
  {
    *(v1 + 148) = 0;
    *(v1 + 140) = 0;
    *(v1 + 39) = 0;
  }

  v4 = *(v1 + 5);
  if (v4)
  {
    v1[20] = 0;
    v1[21] = 0;
    *(v1 + 44) = 0;
  }

  if ((v4 & 0xFF00) != 0)
  {
    *(v1 + 196) = 0u;
    *(v1 + 180) = 0u;
  }

  if ((v4 & 0xFF0000) != 0)
  {
    *(v1 + 220) = 0;
    *(v1 + 212) = 0;
    *(v1 + 57) = 0;
  }

  if (HIBYTE(v4))
  {
    v1[29] = 0;
    v1[30] = 0;
    *(v1 + 128) = 0;
    v1[31] = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 63) = 0;
  *v2 = 0;
  *(v2 + 2) = 0;
  if (v6)
  {

    return sub_2763D4FD4(v5);
  }

  return result;
}

google::protobuf::internal *sub_276499448(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v253 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v253))
    {
      return v253;
    }

    v5 = (v253 + 1);
    LODWORD(v6) = *v253;
    if ((*v253 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v6 = (v6 + (*v5 << 7) - 128);
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v253 + 2);
LABEL_6:
      v253 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v253, v6);
    v253 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
LABEL_7:
    v7 = v6 >> 3;
    if (v6 >> 3 <= 0x9F)
    {
      break;
    }

    switch(v7)
    {
      case 0xA0u:
        if (v6)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x80u;
        v9 = (v5 + 1);
        LODWORD(v8) = *v5;
        if ((v8 & 0x80) == 0)
        {
          goto LABEL_13;
        }

        v10 = *v9;
        v8 = (v8 + (v10 << 7) - 128);
        if (v10 < 0)
        {
          v226 = google::protobuf::internal::VarintParseSlow64(v5, v8);
          v253 = v226;
          *(a1 + 176) = v227;
          if (!v226)
          {
            return 0;
          }
        }

        else
        {
          v9 = (v5 + 2);
LABEL_13:
          v253 = v9;
          *(a1 + 176) = v8;
        }

        continue;
      case 0xA1u:
        if (v6 != 8)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x100u;
        v123 = (v5 + 1);
        LODWORD(v122) = *v5;
        if ((v122 & 0x80) == 0)
        {
          goto LABEL_219;
        }

        v124 = *v123;
        v122 = (v122 + (v124 << 7) - 128);
        if (v124 < 0)
        {
          v228 = google::protobuf::internal::VarintParseSlow64(v5, v122);
          v253 = v228;
          *(a1 + 180) = v229;
          if (!v228)
          {
            return 0;
          }
        }

        else
        {
          v123 = (v5 + 2);
LABEL_219:
          v253 = v123;
          *(a1 + 180) = v122;
        }

        continue;
      case 0xA2u:
        if (v6 != 16)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x200u;
        v120 = (v5 + 1);
        LODWORD(v119) = *v5;
        if ((v119 & 0x80) == 0)
        {
          goto LABEL_214;
        }

        v121 = *v120;
        v119 = (v119 + (v121 << 7) - 128);
        if (v121 < 0)
        {
          v224 = google::protobuf::internal::VarintParseSlow64(v5, v119);
          v253 = v224;
          *(a1 + 184) = v225;
          if (!v224)
          {
            return 0;
          }
        }

        else
        {
          v120 = (v5 + 2);
LABEL_214:
          v253 = v120;
          *(a1 + 184) = v119;
        }

        continue;
      case 0xA3u:
        if (v6 != 24)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x10u;
        v140 = (v5 + 1);
        v139 = *v5;
        if ((v139 & 0x8000000000000000) == 0)
        {
          goto LABEL_250;
        }

        v141 = *v140;
        v139 = (v141 << 7) + v139 - 128;
        if (v141 < 0)
        {
          v238 = google::protobuf::internal::VarintParseSlow64(v5, v139);
          v253 = v238;
          *(a1 + 170) = v239 != 0;
          if (!v238)
          {
            return 0;
          }
        }

        else
        {
          v140 = (v5 + 2);
LABEL_250:
          v253 = v140;
          *(a1 + 170) = v139 != 0;
        }

        continue;
      case 0xA4u:
        if (v6 != 34)
        {
          goto LABEL_303;
        }

        *(a1 + 16) |= 1u;
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v14 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_310;
      case 0xA5u:
        if (v6 != 40)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x20u;
        v137 = (v5 + 1);
        v136 = *v5;
        if ((v136 & 0x8000000000000000) == 0)
        {
          goto LABEL_245;
        }

        v138 = *v137;
        v136 = (v138 << 7) + v136 - 128;
        if (v138 < 0)
        {
          v236 = google::protobuf::internal::VarintParseSlow64(v5, v136);
          v253 = v236;
          *(a1 + 171) = v237 != 0;
          if (!v236)
          {
            return 0;
          }
        }

        else
        {
          v137 = (v5 + 2);
LABEL_245:
          v253 = v137;
          *(a1 + 171) = v136 != 0;
        }

        continue;
      case 0xA6u:
        if (v6 != 48)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x100000u;
        v143 = (v5 + 1);
        v142 = *v5;
        if ((v142 & 0x8000000000000000) == 0)
        {
          goto LABEL_255;
        }

        v144 = *v143;
        v142 = (v144 << 7) + v142 - 128;
        if (v144 < 0)
        {
          v240 = google::protobuf::internal::VarintParseSlow64(v5, v142);
          v253 = v240;
          *(a1 + 228) = v241 != 0;
          if (!v240)
          {
            return 0;
          }
        }

        else
        {
          v143 = (v5 + 2);
LABEL_255:
          v253 = v143;
          *(a1 + 228) = v142 != 0;
        }

        continue;
      case 0xAAu:
        if (v6 != 80)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x400u;
        v152 = (v5 + 1);
        LODWORD(v151) = *v5;
        if ((v151 & 0x80) == 0)
        {
          goto LABEL_270;
        }

        v153 = *v152;
        v151 = (v151 + (v153 << 7) - 128);
        if (v153 < 0)
        {
          v246 = google::protobuf::internal::VarintParseSlow64(v5, v151);
          v253 = v246;
          *(a1 + 188) = v247;
          if (!v246)
          {
            return 0;
          }
        }

        else
        {
          v152 = (v5 + 2);
LABEL_270:
          v253 = v152;
          *(a1 + 188) = v151;
        }

        continue;
      case 0xABu:
        if (v6 != 88)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x800u;
        v112 = (v5 + 1);
        LODWORD(v111) = *v5;
        if ((v111 & 0x80) == 0)
        {
          goto LABEL_197;
        }

        v113 = *v112;
        v111 = (v111 + (v113 << 7) - 128);
        if (v113 < 0)
        {
          v220 = google::protobuf::internal::VarintParseSlow64(v5, v111);
          v253 = v220;
          *(a1 + 192) = v221;
          if (!v220)
          {
            return 0;
          }
        }

        else
        {
          v112 = (v5 + 2);
LABEL_197:
          v253 = v112;
          *(a1 + 192) = v111;
        }

        continue;
      case 0xACu:
        if (v6 != 96)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x1000u;
        v108 = (v5 + 1);
        LODWORD(v107) = *v5;
        if ((v107 & 0x80) == 0)
        {
          goto LABEL_190;
        }

        v109 = *v108;
        v107 = (v107 + (v109 << 7) - 128);
        if (v109 < 0)
        {
          v218 = google::protobuf::internal::VarintParseSlow64(v5, v107);
          v253 = v218;
          *(a1 + 196) = v219;
          if (!v218)
          {
            return 0;
          }
        }

        else
        {
          v108 = (v5 + 2);
LABEL_190:
          v253 = v108;
          *(a1 + 196) = v107;
        }

        continue;
      case 0xADu:
        if (v6 != 104)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x2000u;
        v158 = (v5 + 1);
        LODWORD(v157) = *v5;
        if ((v157 & 0x80) == 0)
        {
          goto LABEL_281;
        }

        v159 = *v158;
        v157 = (v157 + (v159 << 7) - 128);
        if (v159 < 0)
        {
          v248 = google::protobuf::internal::VarintParseSlow64(v5, v157);
          v253 = v248;
          *(a1 + 200) = v249;
          if (!v248)
          {
            return 0;
          }
        }

        else
        {
          v158 = (v5 + 2);
LABEL_281:
          v253 = v158;
          *(a1 + 200) = v157;
        }

        break;
      case 0xAEu:
        if (v6 != 117)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x4000u;
        v115 = *v5;
        v60 = (v5 + 4);
        *(a1 + 204) = v115;
        goto LABEL_295;
      case 0xAFu:
        if (v6 != 125)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x8000u;
        v162 = *v5;
        v60 = (v5 + 4);
        *(a1 + 208) = v162;
        goto LABEL_295;
      case 0xB0u:
        if (v6 != 133)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x10000u;
        v129 = *v5;
        v60 = (v5 + 4);
        *(a1 + 212) = v129;
        goto LABEL_295;
      case 0xB1u:
        if (v6 != 141)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x20000u;
        v154 = *v5;
        v60 = (v5 + 4);
        *(a1 + 216) = v154;
        goto LABEL_295;
      case 0xB2u:
        if (v6 != 149)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x40000u;
        v110 = *v5;
        v60 = (v5 + 4);
        *(a1 + 220) = v110;
        goto LABEL_295;
      case 0xB3u:
        if (v6 != 157)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x80000u;
        v125 = *v5;
        v60 = (v5 + 4);
        *(a1 + 224) = v125;
        goto LABEL_295;
      case 0xBEu:
        if (v6 != 242)
        {
          goto LABEL_303;
        }

        *(a1 + 16) |= 0x20u;
        v104 = *(a1 + 72);
        if (v104)
        {
          goto LABEL_288;
        }

        v105 = *(a1 + 8);
        if (v105)
        {
          v105 = *(v105 & 0xFFFFFFFFFFFFFFFELL);
        }

        v104 = sub_276406A94(v105);
        *(a1 + 72) = v104;
        goto LABEL_287;
      case 0xBFu:
        if (v6 != 250)
        {
          goto LABEL_303;
        }

        *(a1 + 16) |= 0x40u;
        v104 = *(a1 + 80);
        if (v104)
        {
          goto LABEL_288;
        }

        v114 = *(a1 + 8);
        if (v114)
        {
          v114 = *(v114 & 0xFFFFFFFFFFFFFFFELL);
        }

        v104 = sub_276406A94(v114);
        *(a1 + 80) = v104;
        goto LABEL_287;
      case 0xC0u:
        if (v6 != 2)
        {
          goto LABEL_303;
        }

        *(a1 + 16) |= 0x80u;
        v104 = *(a1 + 88);
        if (v104)
        {
          goto LABEL_288;
        }

        v106 = *(a1 + 8);
        if (v106)
        {
          v106 = *(v106 & 0xFFFFFFFFFFFFFFFELL);
        }

        v104 = sub_276406A94(v106);
        *(a1 + 88) = v104;
        goto LABEL_287;
      case 0xC1u:
        if (v6 != 10)
        {
          goto LABEL_303;
        }

        *(a1 + 16) |= 0x100u;
        v104 = *(a1 + 96);
        if (v104)
        {
          goto LABEL_288;
        }

        v160 = *(a1 + 8);
        if (v160)
        {
          v160 = *(v160 & 0xFFFFFFFFFFFFFFFELL);
        }

        v104 = sub_276406A94(v160);
        *(a1 + 96) = v104;
LABEL_287:
        v5 = v253;
LABEL_288:
        v14 = sub_2764A8B68(a3, v104, v5);
        goto LABEL_310;
      case 0xC2u:
        if (v6 != 21)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x1000000u;
        v163 = *v5;
        v60 = (v5 + 4);
        *(a1 + 232) = v163;
        goto LABEL_295;
      case 0xC3u:
        if (v6 != 29)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x2000000u;
        v156 = *v5;
        v60 = (v5 + 4);
        *(a1 + 236) = v156;
        goto LABEL_295;
      case 0xC4u:
        if (v6 != 37)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x4000000u;
        v161 = *v5;
        v60 = (v5 + 4);
        *(a1 + 240) = v161;
        goto LABEL_295;
      case 0xC5u:
        if (v6 != 45)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x8000000u;
        v155 = *v5;
        v60 = (v5 + 4);
        *(a1 + 244) = v155;
        goto LABEL_295;
      case 0xC6u:
        if (v6 != 48)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x200000u;
        v102 = (v5 + 1);
        v101 = *v5;
        if ((v101 & 0x8000000000000000) == 0)
        {
          goto LABEL_175;
        }

        v103 = *v102;
        v101 = (v103 << 7) + v101 - 128;
        if (v103 < 0)
        {
          v216 = google::protobuf::internal::VarintParseSlow64(v5, v101);
          v253 = v216;
          *(a1 + 229) = v217 != 0;
          if (!v216)
          {
            return 0;
          }
        }

        else
        {
          v102 = (v5 + 2);
LABEL_175:
          v253 = v102;
          *(a1 + 229) = v101 != 0;
        }

        continue;
      case 0xC7u:
        if (v6 != 56)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x400000u;
        v131 = (v5 + 1);
        v130 = *v5;
        if ((v130 & 0x8000000000000000) == 0)
        {
          goto LABEL_233;
        }

        v132 = *v131;
        v130 = (v132 << 7) + v130 - 128;
        if (v132 < 0)
        {
          v232 = google::protobuf::internal::VarintParseSlow64(v5, v130);
          v253 = v232;
          *(a1 + 230) = v233 != 0;
          if (!v232)
          {
            return 0;
          }
        }

        else
        {
          v131 = (v5 + 2);
LABEL_233:
          v253 = v131;
          *(a1 + 230) = v130 != 0;
        }

        continue;
      case 0xC8u:
        if (v6 != 64)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x800000u;
        v149 = (v5 + 1);
        v148 = *v5;
        if ((v148 & 0x8000000000000000) == 0)
        {
          goto LABEL_265;
        }

        v150 = *v149;
        v148 = (v150 << 7) + v148 - 128;
        if (v150 < 0)
        {
          v244 = google::protobuf::internal::VarintParseSlow64(v5, v148);
          v253 = v244;
          *(a1 + 231) = v245 != 0;
          if (!v244)
          {
            return 0;
          }
        }

        else
        {
          v149 = (v5 + 2);
LABEL_265:
          v253 = v149;
          *(a1 + 231) = v148 != 0;
        }

        continue;
      case 0xD0u:
        if (v6 != 128)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x10000000u;
        v134 = (v5 + 1);
        LODWORD(v133) = *v5;
        if ((v133 & 0x80) == 0)
        {
          goto LABEL_238;
        }

        v135 = *v134;
        v133 = (v133 + (v135 << 7) - 128);
        if (v135 < 0)
        {
          v234 = google::protobuf::internal::VarintParseSlow64(v5, v133);
          v253 = v234;
          *(a1 + 248) = v235;
          if (!v234)
          {
            return 0;
          }
        }

        else
        {
          v134 = (v5 + 2);
LABEL_238:
          v253 = v134;
          *(a1 + 248) = v133;
        }

        continue;
      case 0xD1u:
        if (v6 != 136)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x40000000u;
        v146 = (v5 + 1);
        v145 = *v5;
        if ((v145 & 0x8000000000000000) == 0)
        {
          goto LABEL_260;
        }

        v147 = *v146;
        v145 = (v147 << 7) + v145 - 128;
        if (v147 < 0)
        {
          v242 = google::protobuf::internal::VarintParseSlow64(v5, v145);
          v253 = v242;
          *(a1 + 256) = v243 != 0;
          if (!v242)
          {
            return 0;
          }
        }

        else
        {
          v146 = (v5 + 2);
LABEL_260:
          v253 = v146;
          *(a1 + 256) = v145 != 0;
        }

        continue;
      case 0xD2u:
        if (v6 != 144)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x20000000u;
        v127 = (v5 + 1);
        LODWORD(v126) = *v5;
        if ((v126 & 0x80) == 0)
        {
          goto LABEL_226;
        }

        v128 = *v127;
        v126 = (v126 + (v128 << 7) - 128);
        if (v128 < 0)
        {
          v230 = google::protobuf::internal::VarintParseSlow64(v5, v126);
          v253 = v230;
          *(a1 + 252) = v231;
          if (!v230)
          {
            return 0;
          }
        }

        else
        {
          v127 = (v5 + 2);
LABEL_226:
          v253 = v127;
          *(a1 + 252) = v126;
        }

        continue;
      case 0xD8u:
        if (v6 != 192)
        {
          goto LABEL_303;
        }

        *(a1 + 20) |= 0x80000000;
        v117 = (v5 + 1);
        v116 = *v5;
        if ((v116 & 0x8000000000000000) == 0)
        {
          goto LABEL_209;
        }

        v118 = *v117;
        v116 = (v118 << 7) + v116 - 128;
        if (v118 < 0)
        {
          v222 = google::protobuf::internal::VarintParseSlow64(v5, v116);
          v253 = v222;
          *(a1 + 257) = v223 != 0;
          if (!v222)
          {
            return 0;
          }
        }

        else
        {
          v117 = (v5 + 2);
LABEL_209:
          v253 = v117;
          *(a1 + 257) = v116 != 0;
        }

        continue;
      case 0xD9u:
        if (v6 != 205)
        {
          goto LABEL_303;
        }

        *(a1 + 24) |= 1u;
        v100 = *v5;
        v60 = (v5 + 4);
        *(a1 + 260) = v100;
        goto LABEL_295;
      default:
        goto LABEL_303;
    }
  }

  switch(v7)
  {
    case 1u:
      if (v6 != 10)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 2u;
      v11 = *(a1 + 40);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x277C97BA0](v12);
        LODWORD(v11) = v13;
        *(a1 + 40) = v13;
        v5 = v253;
      }

      v14 = sub_2764AC1AC(a3, v11, v5);
      goto LABEL_310;
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Cu:
    case 0x1Du:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Eu:
    case 0x2Fu:
    case 0x30u:
    case 0x31u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x40u:
    case 0x43u:
    case 0x44u:
      goto LABEL_303;
    case 0xAu:
      if (v6 != 82)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 4u;
      v40 = *(a1 + 48);
      if (v40)
      {
        goto LABEL_302;
      }

      v71 = *(a1 + 8);
      if (v71)
      {
        v71 = *(v71 & 0xFFFFFFFFFFFFFFFELL);
      }

      v40 = sub_27649DC64(v71);
      *(a1 + 48) = v40;
      goto LABEL_301;
    case 0xBu:
      if (v6 != 88)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x200u;
      v66 = (v5 + 1);
      LODWORD(v65) = *v5;
      if ((v65 & 0x80) == 0)
      {
        goto LABEL_111;
      }

      v67 = *v66;
      v65 = (v65 + (v67 << 7) - 128);
      if (v67 < 0)
      {
        v194 = google::protobuf::internal::VarintParseSlow64(v5, v65);
        v253 = v194;
        *(a1 + 104) = v195;
        if (!v194)
        {
          return 0;
        }
      }

      else
      {
        v66 = (v5 + 2);
LABEL_111:
        v253 = v66;
        *(a1 + 104) = v65;
      }

      goto LABEL_2;
    case 0xCu:
      if (v6 != 96)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x800u;
      v58 = (v5 + 1);
      v57 = *v5;
      if ((v57 & 0x8000000000000000) == 0)
      {
        goto LABEL_99;
      }

      v59 = *v58;
      v57 = (v59 << 7) + v57 - 128;
      if (v59 < 0)
      {
        v190 = google::protobuf::internal::VarintParseSlow64(v5, v57);
        v253 = v190;
        *(a1 + 112) = v191 != 0;
        if (!v190)
        {
          return 0;
        }
      }

      else
      {
        v58 = (v5 + 2);
LABEL_99:
        v253 = v58;
        *(a1 + 112) = v57 != 0;
      }

      goto LABEL_2;
    case 0x13u:
      if (v6 != 152)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x400u;
      v55 = (v5 + 1);
      LODWORD(v54) = *v5;
      if ((v54 & 0x80) == 0)
      {
        goto LABEL_94;
      }

      v56 = *v55;
      v54 = (v54 + (v56 << 7) - 128);
      if (v56 < 0)
      {
        v188 = google::protobuf::internal::VarintParseSlow64(v5, v54);
        v253 = v188;
        *(a1 + 108) = v189;
        if (!v188)
        {
          return 0;
        }
      }

      else
      {
        v55 = (v5 + 2);
LABEL_94:
        v253 = v55;
        *(a1 + 108) = v54;
      }

      goto LABEL_2;
    case 0x14u:
      if (v6 != 160)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x1000u;
      v63 = (v5 + 1);
      v62 = *v5;
      if ((v62 & 0x8000000000000000) == 0)
      {
        goto LABEL_106;
      }

      v64 = *v63;
      v62 = (v64 << 7) + v62 - 128;
      if (v64 < 0)
      {
        v192 = google::protobuf::internal::VarintParseSlow64(v5, v62);
        v253 = v192;
        *(a1 + 113) = v193 != 0;
        if (!v192)
        {
          return 0;
        }
      }

      else
      {
        v63 = (v5 + 2);
LABEL_106:
        v253 = v63;
        *(a1 + 113) = v62 != 0;
      }

      goto LABEL_2;
    case 0x15u:
      if (v6 != 168)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x2000u;
      v73 = (v5 + 1);
      v72 = *v5;
      if ((v72 & 0x8000000000000000) == 0)
      {
        goto LABEL_126;
      }

      v74 = *v73;
      v72 = (v74 << 7) + v72 - 128;
      if (v74 < 0)
      {
        v198 = google::protobuf::internal::VarintParseSlow64(v5, v72);
        v253 = v198;
        *(a1 + 114) = v199 != 0;
        if (!v198)
        {
          return 0;
        }
      }

      else
      {
        v73 = (v5 + 2);
LABEL_126:
        v253 = v73;
        *(a1 + 114) = v72 != 0;
      }

      goto LABEL_2;
    case 0x1Bu:
      if (v6 != 216)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x4000u;
      v52 = (v5 + 1);
      v51 = *v5;
      if ((v51 & 0x8000000000000000) == 0)
      {
        goto LABEL_89;
      }

      v53 = *v52;
      v51 = (v53 << 7) + v51 - 128;
      if (v53 < 0)
      {
        v186 = google::protobuf::internal::VarintParseSlow64(v5, v51);
        v253 = v186;
        *(a1 + 115) = v187 != 0;
        if (!v186)
        {
          return 0;
        }
      }

      else
      {
        v52 = (v5 + 2);
LABEL_89:
        v253 = v52;
        *(a1 + 115) = v51 != 0;
      }

      goto LABEL_2;
    case 0x1Eu:
      if (v6 != 240)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x8000u;
      v49 = (v5 + 1);
      LODWORD(v48) = *v5;
      if ((v48 & 0x80) == 0)
      {
        goto LABEL_84;
      }

      v50 = *v49;
      v48 = (v48 + (v50 << 7) - 128);
      if (v50 < 0)
      {
        v184 = google::protobuf::internal::VarintParseSlow64(v5, v48);
        v253 = v184;
        *(a1 + 116) = v185;
        if (!v184)
        {
          return 0;
        }
      }

      else
      {
        v49 = (v5 + 2);
LABEL_84:
        v253 = v49;
        *(a1 + 116) = v48;
      }

      goto LABEL_2;
    case 0x1Fu:
      if (v6 != 248)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x10000u;
      v82 = (v5 + 1);
      LODWORD(v81) = *v5;
      if ((v81 & 0x80) == 0)
      {
        goto LABEL_141;
      }

      v83 = *v82;
      v81 = (v81 + (v83 << 7) - 128);
      if (v83 < 0)
      {
        v204 = google::protobuf::internal::VarintParseSlow64(v5, v81);
        v253 = v204;
        *(a1 + 120) = v205;
        if (!v204)
        {
          return 0;
        }
      }

      else
      {
        v82 = (v5 + 2);
LABEL_141:
        v253 = v82;
        *(a1 + 120) = v81;
      }

      goto LABEL_2;
    case 0x20u:
      if (v6)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x20000u;
      v85 = (v5 + 1);
      v84 = *v5;
      if ((v84 & 0x8000000000000000) == 0)
      {
        goto LABEL_146;
      }

      v86 = *v85;
      v84 = (v86 << 7) + v84 - 128;
      if (v86 < 0)
      {
        v206 = google::protobuf::internal::VarintParseSlow64(v5, v84);
        v253 = v206;
        *(a1 + 124) = v207 != 0;
        if (!v206)
        {
          return 0;
        }
      }

      else
      {
        v85 = (v5 + 2);
LABEL_146:
        v253 = v85;
        *(a1 + 124) = v84 != 0;
      }

      goto LABEL_2;
    case 0x25u:
      if (v6 != 40)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x40000u;
      v79 = (v5 + 1);
      v78 = *v5;
      if ((v78 & 0x8000000000000000) == 0)
      {
        goto LABEL_136;
      }

      v80 = *v79;
      v78 = (v80 << 7) + v78 - 128;
      if (v80 < 0)
      {
        v202 = google::protobuf::internal::VarintParseSlow64(v5, v78);
        v253 = v202;
        *(a1 + 125) = v203 != 0;
        if (!v202)
        {
          return 0;
        }
      }

      else
      {
        v79 = (v5 + 2);
LABEL_136:
        v253 = v79;
        *(a1 + 125) = v78 != 0;
      }

      goto LABEL_2;
    case 0x2Du:
      if (v6 != 104)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x80000u;
      v46 = (v5 + 1);
      v45 = *v5;
      if ((v45 & 0x8000000000000000) == 0)
      {
        goto LABEL_79;
      }

      v47 = *v46;
      v45 = (v47 << 7) + v45 - 128;
      if (v47 < 0)
      {
        v182 = google::protobuf::internal::VarintParseSlow64(v5, v45);
        v253 = v182;
        *(a1 + 126) = v183 != 0;
        if (!v182)
        {
          return 0;
        }
      }

      else
      {
        v46 = (v5 + 2);
LABEL_79:
        v253 = v46;
        *(a1 + 126) = v45 != 0;
      }

      goto LABEL_2;
    case 0x32u:
      if (v6 != 149)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x200000u;
      v61 = *v5;
      v60 = (v5 + 4);
      *(a1 + 128) = v61;
      goto LABEL_295;
    case 0x33u:
      if (v6 != 152)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x100000u;
      v94 = (v5 + 1);
      v93 = *v5;
      if ((v93 & 0x8000000000000000) == 0)
      {
        goto LABEL_161;
      }

      v95 = *v94;
      v93 = (v95 << 7) + v93 - 128;
      if (v95 < 0)
      {
        v212 = google::protobuf::internal::VarintParseSlow64(v5, v93);
        v253 = v212;
        *(a1 + 127) = v213 != 0;
        if (!v212)
        {
          return 0;
        }
      }

      else
      {
        v94 = (v5 + 2);
LABEL_161:
        v253 = v94;
        *(a1 + 127) = v93 != 0;
      }

      goto LABEL_2;
    case 0x34u:
      if (v6 != 162)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 8u;
      v40 = *(a1 + 56);
      if (v40)
      {
        goto LABEL_302;
      }

      v41 = *(a1 + 8);
      if (v41)
      {
        v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
      }

      v40 = sub_27649DC64(v41);
      *(a1 + 56) = v40;
      goto LABEL_301;
    case 0x35u:
      if (v6 != 168)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x400000u;
      v91 = (v5 + 1);
      LODWORD(v90) = *v5;
      if ((v90 & 0x80) == 0)
      {
        goto LABEL_156;
      }

      v92 = *v91;
      v90 = (v90 + (v92 << 7) - 128);
      if (v92 < 0)
      {
        v210 = google::protobuf::internal::VarintParseSlow64(v5, v90);
        v253 = v210;
        *(a1 + 132) = v211;
        if (!v210)
        {
          return 0;
        }
      }

      else
      {
        v91 = (v5 + 2);
LABEL_156:
        v253 = v91;
        *(a1 + 132) = v90;
      }

      goto LABEL_2;
    case 0x36u:
      if (v6 != 181)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x800000u;
      v99 = *v5;
      v60 = (v5 + 4);
      *(a1 + 136) = v99;
LABEL_295:
      v253 = v60;
      goto LABEL_2;
    case 0x3Au:
      if (v6 != 208)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x4000000u;
      v88 = (v5 + 1);
      v87 = *v5;
      if ((v87 & 0x8000000000000000) == 0)
      {
        goto LABEL_151;
      }

      v89 = *v88;
      v87 = (v89 << 7) + v87 - 128;
      if (v89 < 0)
      {
        v208 = google::protobuf::internal::VarintParseSlow64(v5, v87);
        v253 = v208;
        *(a1 + 148) = v209 != 0;
        if (!v208)
        {
          return 0;
        }
      }

      else
      {
        v88 = (v5 + 2);
LABEL_151:
        v253 = v88;
        *(a1 + 148) = v87 != 0;
      }

      goto LABEL_2;
    case 0x3Bu:
      if (v6 != 216)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x8000000u;
      v38 = (v5 + 1);
      v37 = *v5;
      if ((v37 & 0x8000000000000000) == 0)
      {
        goto LABEL_64;
      }

      v39 = *v38;
      v37 = (v39 << 7) + v37 - 128;
      if (v39 < 0)
      {
        v178 = google::protobuf::internal::VarintParseSlow64(v5, v37);
        v253 = v178;
        *(a1 + 149) = v179 != 0;
        if (!v178)
        {
          return 0;
        }
      }

      else
      {
        v38 = (v5 + 2);
LABEL_64:
        v253 = v38;
        *(a1 + 149) = v37 != 0;
      }

      goto LABEL_2;
    case 0x3Cu:
      if (v6 != 224)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x1000000u;
      v97 = (v5 + 1);
      LODWORD(v96) = *v5;
      if ((v96 & 0x80) == 0)
      {
        goto LABEL_166;
      }

      v98 = *v97;
      v96 = (v96 + (v98 << 7) - 128);
      if (v98 < 0)
      {
        v214 = google::protobuf::internal::VarintParseSlow64(v5, v96);
        v253 = v214;
        *(a1 + 140) = v215;
        if (!v214)
        {
          return 0;
        }
      }

      else
      {
        v97 = (v5 + 2);
LABEL_166:
        v253 = v97;
        *(a1 + 140) = v96;
      }

      goto LABEL_2;
    case 0x3Du:
      if (v6 != 232)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x2000000u;
      v43 = (v5 + 1);
      LODWORD(v42) = *v5;
      if ((v42 & 0x80) == 0)
      {
        goto LABEL_74;
      }

      v44 = *v43;
      v42 = (v42 + (v44 << 7) - 128);
      if (v44 < 0)
      {
        v180 = google::protobuf::internal::VarintParseSlow64(v5, v42);
        v253 = v180;
        *(a1 + 144) = v181;
        if (!v180)
        {
          return 0;
        }
      }

      else
      {
        v43 = (v5 + 2);
LABEL_74:
        v253 = v43;
        *(a1 + 144) = v42;
      }

      goto LABEL_2;
    case 0x3Eu:
      if (v6 != 240)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x10000000u;
      v76 = (v5 + 1);
      v75 = *v5;
      if ((v75 & 0x8000000000000000) == 0)
      {
        goto LABEL_131;
      }

      v77 = *v76;
      v75 = (v77 << 7) + v75 - 128;
      if (v77 < 0)
      {
        v200 = google::protobuf::internal::VarintParseSlow64(v5, v75);
        v253 = v200;
        *(a1 + 150) = v201 != 0;
        if (!v200)
        {
          return 0;
        }
      }

      else
      {
        v76 = (v5 + 2);
LABEL_131:
        v253 = v76;
        *(a1 + 150) = v75 != 0;
      }

      goto LABEL_2;
    case 0x3Fu:
      if (v6 != 248)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x40000000u;
      v29 = (v5 + 1);
      LODWORD(v28) = *v5;
      if ((v28 & 0x80) == 0)
      {
        goto LABEL_49;
      }

      v30 = *v29;
      v28 = (v28 + (v30 << 7) - 128);
      if (v30 < 0)
      {
        v172 = google::protobuf::internal::VarintParseSlow64(v5, v28);
        v253 = v172;
        *(a1 + 152) = v173;
        if (!v172)
        {
          return 0;
        }
      }

      else
      {
        v29 = (v5 + 2);
LABEL_49:
        v253 = v29;
        *(a1 + 152) = v28;
      }

      goto LABEL_2;
    case 0x41u:
      if (v6 != 8)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x80000000;
      v26 = (v5 + 1);
      LODWORD(v25) = *v5;
      if ((v25 & 0x80) == 0)
      {
        goto LABEL_44;
      }

      v27 = *v26;
      v25 = (v25 + (v27 << 7) - 128);
      if (v27 < 0)
      {
        v170 = google::protobuf::internal::VarintParseSlow64(v5, v25);
        v253 = v170;
        *(a1 + 156) = v171;
        if (!v170)
        {
          return 0;
        }
      }

      else
      {
        v26 = (v5 + 2);
LABEL_44:
        v253 = v26;
        *(a1 + 156) = v25;
      }

      goto LABEL_2;
    case 0x42u:
      if (v6 != 16)
      {
        goto LABEL_303;
      }

      *(a1 + 16) |= 0x20000000u;
      v23 = (v5 + 1);
      v22 = *v5;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_39;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if (v24 < 0)
      {
        v168 = google::protobuf::internal::VarintParseSlow64(v5, v22);
        v253 = v168;
        *(a1 + 151) = v169 != 0;
        if (!v168)
        {
          return 0;
        }
      }

      else
      {
        v23 = (v5 + 2);
LABEL_39:
        v253 = v23;
        *(a1 + 151) = v22 != 0;
      }

      goto LABEL_2;
    case 0x45u:
      if (v6 != 40)
      {
        goto LABEL_303;
      }

      *(a1 + 20) |= 4u;
      v32 = (v5 + 1);
      v31 = *v5;
      if ((v31 & 0x8000000000000000) == 0)
      {
        goto LABEL_54;
      }

      v33 = *v32;
      v31 = (v33 << 7) + v31 - 128;
      if (v33 < 0)
      {
        v174 = google::protobuf::internal::VarintParseSlow64(v5, v31);
        v253 = v174;
        *(a1 + 168) = v175 != 0;
        if (!v174)
        {
          return 0;
        }
      }

      else
      {
        v32 = (v5 + 2);
LABEL_54:
        v253 = v32;
        *(a1 + 168) = v31 != 0;
      }

      goto LABEL_2;
    case 0x46u:
      if (v6 != 48)
      {
        goto LABEL_303;
      }

      *(a1 + 20) |= 1u;
      v35 = (v5 + 1);
      LODWORD(v34) = *v5;
      if ((v34 & 0x80) == 0)
      {
        goto LABEL_59;
      }

      v36 = *v35;
      v34 = (v34 + (v36 << 7) - 128);
      if (v36 < 0)
      {
        v176 = google::protobuf::internal::VarintParseSlow64(v5, v34);
        v253 = v176;
        *(a1 + 160) = v177;
        if (!v176)
        {
          return 0;
        }
      }

      else
      {
        v35 = (v5 + 2);
LABEL_59:
        v253 = v35;
        *(a1 + 160) = v34;
      }

      goto LABEL_2;
    case 0x47u:
      if (v6 != 56)
      {
        goto LABEL_303;
      }

      *(a1 + 20) |= 2u;
      v69 = (v5 + 1);
      LODWORD(v68) = *v5;
      if ((v68 & 0x80) == 0)
      {
        goto LABEL_116;
      }

      v70 = *v69;
      v68 = (v68 + (v70 << 7) - 128);
      if (v70 < 0)
      {
        v196 = google::protobuf::internal::VarintParseSlow64(v5, v68);
        v253 = v196;
        *(a1 + 164) = v197;
        if (!v196)
        {
          return 0;
        }
      }

      else
      {
        v69 = (v5 + 2);
LABEL_116:
        v253 = v69;
        *(a1 + 164) = v68;
      }

      goto LABEL_2;
    case 0x48u:
      if (v6 != 64)
      {
        goto LABEL_303;
      }

      *(a1 + 20) |= 8u;
      v20 = (v5 + 1);
      v19 = *v5;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_34;
      }

      v21 = *v20;
      v19 = (v21 << 7) + v19 - 128;
      if (v21 < 0)
      {
        v166 = google::protobuf::internal::VarintParseSlow64(v5, v19);
        v253 = v166;
        *(a1 + 169) = v167 != 0;
        if (!v166)
        {
          return 0;
        }
      }

      else
      {
        v20 = (v5 + 2);
LABEL_34:
        v253 = v20;
        *(a1 + 169) = v19 != 0;
      }

      goto LABEL_2;
    default:
      if (v7 == 90)
      {
        if (v6 == 210)
        {
          *(a1 + 16) |= 0x10u;
          v40 = *(a1 + 64);
          if (!v40)
          {
            v164 = *(a1 + 8);
            if (v164)
            {
              v164 = *(v164 & 0xFFFFFFFFFFFFFFFELL);
            }

            v40 = sub_27649DC64(v164);
            *(a1 + 64) = v40;
LABEL_301:
            v5 = v253;
          }

LABEL_302:
          v14 = sub_2764B0D24(a3, v40, v5);
          goto LABEL_310;
        }

LABEL_303:
        if (v6)
        {
          v165 = (v6 & 7) == 4;
        }

        else
        {
          v165 = 1;
        }

        if (v165)
        {
          *(a3 + 80) = v6 - 1;
          return v253;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v14 = google::protobuf::internal::UnknownFieldParse();
LABEL_310:
        v253 = v14;
        if (!v14)
        {
          return 0;
        }

        goto LABEL_2;
      }

      if (v7 != 126 || v6 != 240)
      {
        goto LABEL_303;
      }

      *(a1 + 20) |= 0x40u;
      v17 = (v5 + 1);
      LODWORD(v16) = *v5;
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_29;
      }

      v18 = *v17;
      v16 = (v16 + (v18 << 7) - 128);
      if ((v18 & 0x80000000) == 0)
      {
        v17 = (v5 + 2);
LABEL_29:
        v253 = v17;
        *(a1 + 172) = v16;
        goto LABEL_2;
      }

      v250 = google::protobuf::internal::VarintParseSlow64(v5, v16);
      v253 = v250;
      *(a1 + 172) = v251;
      if (v250)
      {
        goto LABEL_2;
      }

      return 0;
  }
}

unsigned __int8 *sub_27649ADE8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(a1 + 40);
    *v4 = 10;
    v14 = *(v13 + 5);
    if (v14 > 0x7F)
    {
      v4[1] = v14 | 0x80;
      v19 = v14 >> 7;
      if (v14 >> 14)
      {
        v15 = v4 + 3;
        do
        {
          *(v15 - 1) = v19 | 0x80;
          v32 = v19 >> 7;
          ++v15;
          v33 = v19 >> 14;
          v19 >>= 7;
        }

        while (v33);
        *(v15 - 1) = v32;
      }

      else
      {
        v4[2] = v19;
        v15 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v14;
      v15 = v4 + 2;
    }

    v4 = TSS::StyleArchive::_InternalSerialize(v13, v15, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_4;
      }

LABEL_157:
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v52 = *(a1 + 104);
      *v4 = 88;
      if (v52 > 0x7F)
      {
        v4[1] = v52 | 0x80;
        v53 = v52 >> 7;
        if (v52 >> 14)
        {
          v4 += 3;
          do
          {
            *(v4 - 1) = v53 | 0x80;
            v64 = v53 >> 7;
            ++v4;
            v65 = v53 >> 14;
            v53 >>= 7;
          }

          while (v65);
          *(v4 - 1) = v64;
          if ((v6 & 0x800) != 0)
          {
            goto LABEL_194;
          }
        }

        else
        {
          v4[2] = v53;
          v4 += 3;
          if ((v6 & 0x800) != 0)
          {
            goto LABEL_194;
          }
        }
      }

      else
      {
        v4[1] = v52;
        v4 += 2;
        if ((v6 & 0x800) != 0)
        {
          goto LABEL_194;
        }
      }

LABEL_5:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_6;
      }

LABEL_197:
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v67 = *(a1 + 108);
      *v4 = 408;
      if (v67 > 0x7F)
      {
        v4[2] = v67 | 0x80;
        v68 = v67 >> 7;
        if (v67 >> 14)
        {
          v4 += 4;
          do
          {
            *(v4 - 1) = v68 | 0x80;
            v77 = v68 >> 7;
            ++v4;
            v78 = v68 >> 14;
            v68 >>= 7;
          }

          while (v78);
          *(v4 - 1) = v77;
          if ((v6 & 0x1000) != 0)
          {
            goto LABEL_230;
          }
        }

        else
        {
          v4[3] = v68;
          v4 += 4;
          if ((v6 & 0x1000) != 0)
          {
            goto LABEL_230;
          }
        }
      }

      else
      {
        v4[2] = v67;
        v4 += 3;
        if ((v6 & 0x1000) != 0)
        {
          goto LABEL_230;
        }
      }

LABEL_7:
      if ((v6 & 0x2000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_233;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v34 = *(a1 + 48);
  *v4 = 82;
  v35 = *(v34 + 20);
  if (v35 > 0x7F)
  {
    v4[1] = v35 | 0x80;
    v37 = v35 >> 7;
    if (v35 >> 14)
    {
      v36 = v4 + 3;
      do
      {
        *(v36 - 1) = v37 | 0x80;
        v50 = v37 >> 7;
        ++v36;
        v51 = v37 >> 14;
        v37 >>= 7;
      }

      while (v51);
      *(v36 - 1) = v50;
    }

    else
    {
      v4[2] = v37;
      v36 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v35;
    v36 = v4 + 2;
  }

  v4 = sub_2764822BC(v34, v36, a3);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_157;
  }

LABEL_4:
  if ((v6 & 0x800) == 0)
  {
    goto LABEL_5;
  }

LABEL_194:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v66 = *(a1 + 112);
  *v4 = 96;
  v4[1] = v66;
  v4 += 2;
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_197;
  }

LABEL_6:
  if ((v6 & 0x1000) == 0)
  {
    goto LABEL_7;
  }

LABEL_230:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v79 = *(a1 + 113);
  *v4 = 416;
  v4[2] = v79;
  v4 += 3;
  if ((v6 & 0x2000) == 0)
  {
LABEL_8:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_236;
  }

LABEL_233:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v80 = *(a1 + 114);
  *v4 = 424;
  v4[2] = v80;
  v4 += 3;
  if ((v6 & 0x4000) == 0)
  {
LABEL_9:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_239;
  }

LABEL_236:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v81 = *(a1 + 115);
  *v4 = 472;
  v4[2] = v81;
  v4 += 3;
  if ((v6 & 0x8000) == 0)
  {
LABEL_10:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

LABEL_286:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v101 = *(a1 + 120);
    *v4 = 504;
    if (v101 > 0x7F)
    {
      v4[2] = v101 | 0x80;
      v102 = v101 >> 7;
      if (v101 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v102 | 0x80;
          v109 = v102 >> 7;
          ++v4;
          v110 = v102 >> 14;
          v102 >>= 7;
        }

        while (v110);
        *(v4 - 1) = v109;
        if ((v6 & 0x20000) != 0)
        {
          goto LABEL_307;
        }
      }

      else
      {
        v4[3] = v102;
        v4 += 4;
        if ((v6 & 0x20000) != 0)
        {
          goto LABEL_307;
        }
      }
    }

    else
    {
      v4[2] = v101;
      v4 += 3;
      if ((v6 & 0x20000) != 0)
      {
        goto LABEL_307;
      }
    }

LABEL_12:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_310;
  }

LABEL_239:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v82 = *(a1 + 116);
  *v4 = 496;
  if (v82 > 0x7F)
  {
    v4[2] = v82 | 0x80;
    v83 = v82 >> 7;
    if (v82 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v83 | 0x80;
        v99 = v83 >> 7;
        ++v4;
        v100 = v83 >> 14;
        v83 >>= 7;
      }

      while (v100);
      *(v4 - 1) = v99;
      if ((v6 & 0x10000) != 0)
      {
        goto LABEL_286;
      }
    }

    else
    {
      v4[3] = v83;
      v4 += 4;
      if ((v6 & 0x10000) != 0)
      {
        goto LABEL_286;
      }
    }
  }

  else
  {
    v4[2] = v82;
    v4 += 3;
    if ((v6 & 0x10000) != 0)
    {
      goto LABEL_286;
    }
  }

LABEL_11:
  if ((v6 & 0x20000) == 0)
  {
    goto LABEL_12;
  }

LABEL_307:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v111 = *(a1 + 124);
  *v4 = 640;
  v4[2] = v111;
  v4 += 3;
  if ((v6 & 0x40000) == 0)
  {
LABEL_13:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_313;
  }

LABEL_310:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v112 = *(a1 + 125);
  *v4 = 680;
  v4[2] = v112;
  v4 += 3;
  if ((v6 & 0x80000) == 0)
  {
LABEL_14:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_316;
  }

LABEL_313:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v113 = *(a1 + 126);
  *v4 = 744;
  v4[2] = v113;
  v4 += 3;
  if ((v6 & 0x200000) == 0)
  {
LABEL_15:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_319;
  }

LABEL_316:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v114 = *(a1 + 128);
  *v4 = 917;
  *(v4 + 2) = v114;
  v4 += 6;
  if ((v6 & 0x100000) == 0)
  {
LABEL_16:
    if ((v6 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_322;
  }

LABEL_319:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v115 = *(a1 + 127);
  *v4 = 920;
  v4[2] = v115;
  v4 += 3;
  if ((v6 & 8) == 0)
  {
LABEL_17:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_18;
    }

LABEL_342:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v128 = *(a1 + 132);
    *v4 = 936;
    if (v128 > 0x7F)
    {
      v4[2] = v128 | 0x80;
      v129 = v128 >> 7;
      if (v128 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v129 | 0x80;
          v136 = v129 >> 7;
          ++v4;
          v137 = v129 >> 14;
          v129 >>= 7;
        }

        while (v137);
        *(v4 - 1) = v136;
        if ((v6 & 0x800000) != 0)
        {
          goto LABEL_363;
        }
      }

      else
      {
        v4[3] = v129;
        v4 += 4;
        if ((v6 & 0x800000) != 0)
        {
          goto LABEL_363;
        }
      }
    }

    else
    {
      v4[2] = v128;
      v4 += 3;
      if ((v6 & 0x800000) != 0)
      {
        goto LABEL_363;
      }
    }

LABEL_19:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_366;
  }

LABEL_322:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v116 = *(a1 + 56);
  *v4 = 930;
  v117 = *(v116 + 20);
  if (v117 > 0x7F)
  {
    v4[2] = v117 | 0x80;
    v119 = v117 >> 7;
    if (v117 >> 14)
    {
      v118 = v4 + 4;
      do
      {
        *(v118 - 1) = v119 | 0x80;
        v126 = v119 >> 7;
        ++v118;
        v127 = v119 >> 14;
        v119 >>= 7;
      }

      while (v127);
      *(v118 - 1) = v126;
    }

    else
    {
      v4[3] = v119;
      v118 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v117;
    v118 = v4 + 3;
  }

  v4 = sub_2764822BC(v116, v118, a3);
  if ((v6 & 0x400000) != 0)
  {
    goto LABEL_342;
  }

LABEL_18:
  if ((v6 & 0x800000) == 0)
  {
    goto LABEL_19;
  }

LABEL_363:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v138 = *(a1 + 136);
  *v4 = 949;
  *(v4 + 2) = v138;
  v4 += 6;
  if ((v6 & 0x4000000) == 0)
  {
LABEL_20:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_369;
  }

LABEL_366:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v139 = *(a1 + 148);
  *v4 = 976;
  v4[2] = v139;
  v4 += 3;
  if ((v6 & 0x8000000) == 0)
  {
LABEL_21:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_372;
  }

LABEL_369:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v140 = *(a1 + 149);
  *v4 = 984;
  v4[2] = v140;
  v4 += 3;
  if ((v6 & 0x1000000) == 0)
  {
LABEL_22:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_430:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v158 = *(a1 + 144);
    *v4 = 1000;
    if (v158 > 0x7F)
    {
      v4[2] = v158 | 0x80;
      v159 = v158 >> 7;
      if (v158 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v159 | 0x80;
          v165 = v159 >> 7;
          ++v4;
          v166 = v159 >> 14;
          v159 >>= 7;
        }

        while (v166);
        *(v4 - 1) = v165;
        if ((v6 & 0x10000000) != 0)
        {
          goto LABEL_455;
        }
      }

      else
      {
        v4[3] = v159;
        v4 += 4;
        if ((v6 & 0x10000000) != 0)
        {
          goto LABEL_455;
        }
      }
    }

    else
    {
      v4[2] = v158;
      v4 += 3;
      if ((v6 & 0x10000000) != 0)
      {
        goto LABEL_455;
      }
    }

LABEL_24:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_458:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v168 = *(a1 + 152);
    *v4 = 1016;
    if (v168 > 0x7F)
    {
      v4[2] = v168 | 0x80;
      v169 = v168 >> 7;
      if (v168 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v169 | 0x80;
          v175 = v169 >> 7;
          ++v4;
          v176 = v169 >> 14;
          v169 >>= 7;
        }

        while (v176);
        *(v4 - 1) = v175;
        if (v6 < 0)
        {
          goto LABEL_478;
        }
      }

      else
      {
        v4[3] = v169;
        v4 += 4;
        if (v6 < 0)
        {
          goto LABEL_478;
        }
      }
    }

    else
    {
      v4[2] = v168;
      v4 += 3;
      if (v6 < 0)
      {
        goto LABEL_478;
      }
    }

LABEL_26:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

LABEL_372:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v141 = *(a1 + 140);
  *v4 = 992;
  if (v141 > 0x7F)
  {
    v4[2] = v141 | 0x80;
    v142 = v141 >> 7;
    if (v141 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v142 | 0x80;
        v156 = v142 >> 7;
        ++v4;
        v157 = v142 >> 14;
        v142 >>= 7;
      }

      while (v157);
      *(v4 - 1) = v156;
      if ((v6 & 0x2000000) != 0)
      {
        goto LABEL_430;
      }
    }

    else
    {
      v4[3] = v142;
      v4 += 4;
      if ((v6 & 0x2000000) != 0)
      {
        goto LABEL_430;
      }
    }
  }

  else
  {
    v4[2] = v141;
    v4 += 3;
    if ((v6 & 0x2000000) != 0)
    {
      goto LABEL_430;
    }
  }

LABEL_23:
  if ((v6 & 0x10000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_455:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v167 = *(a1 + 150);
  *v4 = 1008;
  v4[2] = v167;
  v4 += 3;
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_458;
  }

LABEL_25:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

LABEL_478:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v177 = *(a1 + 156);
  *v4 = 1160;
  if (v177 > 0x7F)
  {
    v4[2] = v177 | 0x80;
    v178 = v177 >> 7;
    if (v177 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v178 | 0x80;
        v179 = v178 >> 7;
        ++v4;
        v180 = v178 >> 14;
        v178 >>= 7;
      }

      while (v180);
      *(v4 - 1) = v179;
      if ((v6 & 0x20000000) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v4[3] = v178;
      v4 += 4;
      if ((v6 & 0x20000000) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    v4[2] = v177;
    v4 += 3;
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_30;
    }
  }

LABEL_27:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(a1 + 151);
  *v4 = 1168;
  v4[2] = v7;
  v4 += 3;
LABEL_30:
  v8 = *(a1 + 20);
  if ((v8 & 4) == 0)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_49:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v17 = *(a1 + 160);
    *v4 = 1200;
    if (v17 > 0x7F)
    {
      v4[2] = v17 | 0x80;
      v20 = v17 >> 7;
      if (v17 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v20 | 0x80;
          v38 = v20 >> 7;
          ++v4;
          v39 = v20 >> 14;
          v20 >>= 7;
        }

        while (v39);
        *(v4 - 1) = v38;
        if ((v8 & 2) != 0)
        {
          goto LABEL_123;
        }
      }

      else
      {
        v4[3] = v20;
        v4 += 4;
        if ((v8 & 2) != 0)
        {
          goto LABEL_123;
        }
      }
    }

    else
    {
      v4[2] = v17;
      v4 += 3;
      if ((v8 & 2) != 0)
      {
        goto LABEL_123;
      }
    }

LABEL_33:
    if ((v8 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v16 = *(a1 + 168);
  *v4 = 1192;
  v4[2] = v16;
  v4 += 3;
  if (v8)
  {
    goto LABEL_49;
  }

LABEL_32:
  if ((v8 & 2) == 0)
  {
    goto LABEL_33;
  }

LABEL_123:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v40 = *(a1 + 164);
  *v4 = 1208;
  if (v40 > 0x7F)
  {
    v4[2] = v40 | 0x80;
    v41 = v40 >> 7;
    if (v40 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v41 | 0x80;
        v54 = v41 >> 7;
        ++v4;
        v55 = v41 >> 14;
        v41 >>= 7;
      }

      while (v55);
      *(v4 - 1) = v54;
      if ((v8 & 8) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v4[3] = v41;
      v4 += 4;
      if ((v8 & 8) == 0)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    v4[2] = v40;
    v4 += 3;
    if ((v8 & 8) == 0)
    {
      goto LABEL_37;
    }
  }

LABEL_34:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v9 = *(a1 + 169);
  *v4 = 1216;
  v4[2] = v9;
  v4 += 3;
LABEL_37:
  if ((*(a1 + 16) & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v10 = *(a1 + 64);
    *v4 = 1490;
    v11 = *(v10 + 20);
    if (v11 > 0x7F)
    {
      v4[2] = v11 | 0x80;
      v18 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v4 + 4;
        do
        {
          *(v12 - 1) = v18 | 0x80;
          v21 = v18 >> 7;
          ++v12;
          v22 = v18 >> 14;
          v18 >>= 7;
        }

        while (v22);
        *(v12 - 1) = v21;
      }

      else
      {
        v4[3] = v18;
        v12 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v11;
      v12 = v4 + 3;
    }

    v4 = sub_2764822BC(v10, v12, a3);
  }

  v23 = *(a1 + 20);
  if ((v23 & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v26 = *(a1 + 172);
    *v4 = 2032;
    if (v26 > 0x7F)
    {
      v4[2] = v26 | 0x80;
      v30 = v26 >> 7;
      if (v26 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v30 | 0x80;
          v42 = v30 >> 7;
          ++v4;
          v43 = v30 >> 14;
          v30 >>= 7;
        }

        while (v43);
        *(v4 - 1) = v42;
        if ((v23 & 0x80) != 0)
        {
          goto LABEL_134;
        }
      }

      else
      {
        v4[3] = v30;
        v4 += 4;
        if ((v23 & 0x80) != 0)
        {
          goto LABEL_134;
        }
      }
    }

    else
    {
      v4[2] = v26;
      v4 += 3;
      if ((v23 & 0x80) != 0)
      {
        goto LABEL_134;
      }
    }

LABEL_67:
    if ((v23 & 0x100) == 0)
    {
      goto LABEL_68;
    }

LABEL_172:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v58 = *(a1 + 180);
    *v4 = 2696;
    if (v58 > 0x7F)
    {
      v4[2] = v58 | 0x80;
      v59 = v58 >> 7;
      if (v58 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v59 | 0x80;
          v69 = v59 >> 7;
          ++v4;
          v70 = v59 >> 14;
          v59 >>= 7;
        }

        while (v70);
        *(v4 - 1) = v69;
        if ((v23 & 0x200) != 0)
        {
          goto LABEL_208;
        }
      }

      else
      {
        v4[3] = v59;
        v4 += 4;
        if ((v23 & 0x200) != 0)
        {
          goto LABEL_208;
        }
      }
    }

    else
    {
      v4[2] = v58;
      v4 += 3;
      if ((v23 & 0x200) != 0)
      {
        goto LABEL_208;
      }
    }

LABEL_69:
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_70;
  }

  if ((v23 & 0x80) == 0)
  {
    goto LABEL_67;
  }

LABEL_134:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v44 = *(a1 + 176);
  *v4 = 2688;
  if (v44 > 0x7F)
  {
    v4[2] = v44 | 0x80;
    v45 = v44 >> 7;
    if (v44 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v45 | 0x80;
        v56 = v45 >> 7;
        ++v4;
        v57 = v45 >> 14;
        v45 >>= 7;
      }

      while (v57);
      *(v4 - 1) = v56;
      if ((v23 & 0x100) != 0)
      {
        goto LABEL_172;
      }
    }

    else
    {
      v4[3] = v45;
      v4 += 4;
      if ((v23 & 0x100) != 0)
      {
        goto LABEL_172;
      }
    }
  }

  else
  {
    v4[2] = v44;
    v4 += 3;
    if ((v23 & 0x100) != 0)
    {
      goto LABEL_172;
    }
  }

LABEL_68:
  if ((v23 & 0x200) == 0)
  {
    goto LABEL_69;
  }

LABEL_208:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v71 = *(a1 + 184);
  *v4 = 2704;
  if (v71 > 0x7F)
  {
    v4[2] = v71 | 0x80;
    v72 = v71 >> 7;
    if (v71 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v72 | 0x80;
        v84 = v72 >> 7;
        ++v4;
        v85 = v72 >> 14;
        v72 >>= 7;
      }

      while (v85);
      *(v4 - 1) = v84;
      if ((v23 & 0x10) == 0)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v4[3] = v72;
      v4 += 4;
      if ((v23 & 0x10) == 0)
      {
        goto LABEL_73;
      }
    }
  }

  else
  {
    v4[2] = v71;
    v4 += 3;
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_73;
    }
  }

LABEL_70:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v24 = *(a1 + 170);
  *v4 = 2712;
  v4[2] = v24;
  v4 += 3;
LABEL_73:
  if (*(a1 + 16))
  {
    v4 = sub_2763DD938(a3, 164, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v25 = *(a1 + 20);
  if ((v25 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v27 = *(a1 + 171);
    *v4 = 2728;
    v4[2] = v27;
    v4 += 3;
    if ((v25 & 0x100000) == 0)
    {
LABEL_77:
      if ((v25 & 0x400) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_99;
    }
  }

  else if ((v25 & 0x100000) == 0)
  {
    goto LABEL_77;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v28 = *(a1 + 228);
  *v4 = 2736;
  v4[2] = v28;
  v4 += 3;
  if ((v25 & 0x400) == 0)
  {
LABEL_78:
    if ((v25 & 0x800) == 0)
    {
      goto LABEL_79;
    }

LABEL_145:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v48 = *(a1 + 192);
    *v4 = 2776;
    if (v48 > 0x7F)
    {
      v4[2] = v48 | 0x80;
      v49 = v48 >> 7;
      if (v48 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v49 | 0x80;
          v60 = v49 >> 7;
          ++v4;
          v61 = v49 >> 14;
          v49 >>= 7;
        }

        while (v61);
        *(v4 - 1) = v60;
        if ((v25 & 0x1000) != 0)
        {
          goto LABEL_183;
        }
      }

      else
      {
        v4[3] = v49;
        v4 += 4;
        if ((v25 & 0x1000) != 0)
        {
          goto LABEL_183;
        }
      }
    }

    else
    {
      v4[2] = v48;
      v4 += 3;
      if ((v25 & 0x1000) != 0)
      {
        goto LABEL_183;
      }
    }

LABEL_80:
    if ((v25 & 0x2000) == 0)
    {
      goto LABEL_81;
    }

LABEL_219:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v75 = *(a1 + 200);
    *v4 = 2792;
    if (v75 > 0x7F)
    {
      v4[2] = v75 | 0x80;
      v76 = v75 >> 7;
      if (v75 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v76 | 0x80;
          v86 = v76 >> 7;
          ++v4;
          v87 = v76 >> 14;
          v76 >>= 7;
        }

        while (v87);
        *(v4 - 1) = v86;
        if ((v25 & 0x4000) != 0)
        {
          goto LABEL_254;
        }
      }

      else
      {
        v4[3] = v76;
        v4 += 4;
        if ((v25 & 0x4000) != 0)
        {
          goto LABEL_254;
        }
      }
    }

    else
    {
      v4[2] = v75;
      v4 += 3;
      if ((v25 & 0x4000) != 0)
      {
        goto LABEL_254;
      }
    }

LABEL_82:
    if ((v25 & 0x8000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_257;
  }

LABEL_99:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v29 = *(a1 + 188);
  *v4 = 2768;
  if (v29 > 0x7F)
  {
    v4[2] = v29 | 0x80;
    v31 = v29 >> 7;
    if (v29 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v31 | 0x80;
        v46 = v31 >> 7;
        ++v4;
        v47 = v31 >> 14;
        v31 >>= 7;
      }

      while (v47);
      *(v4 - 1) = v46;
      if ((v25 & 0x800) != 0)
      {
        goto LABEL_145;
      }
    }

    else
    {
      v4[3] = v31;
      v4 += 4;
      if ((v25 & 0x800) != 0)
      {
        goto LABEL_145;
      }
    }
  }

  else
  {
    v4[2] = v29;
    v4 += 3;
    if ((v25 & 0x800) != 0)
    {
      goto LABEL_145;
    }
  }

LABEL_79:
  if ((v25 & 0x1000) == 0)
  {
    goto LABEL_80;
  }

LABEL_183:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v62 = *(a1 + 196);
  *v4 = 2784;
  if (v62 > 0x7F)
  {
    v4[2] = v62 | 0x80;
    v63 = v62 >> 7;
    if (v62 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v63 | 0x80;
        v73 = v63 >> 7;
        ++v4;
        v74 = v63 >> 14;
        v63 >>= 7;
      }

      while (v74);
      *(v4 - 1) = v73;
      if ((v25 & 0x2000) != 0)
      {
        goto LABEL_219;
      }
    }

    else
    {
      v4[3] = v63;
      v4 += 4;
      if ((v25 & 0x2000) != 0)
      {
        goto LABEL_219;
      }
    }
  }

  else
  {
    v4[2] = v62;
    v4 += 3;
    if ((v25 & 0x2000) != 0)
    {
      goto LABEL_219;
    }
  }

LABEL_81:
  if ((v25 & 0x4000) == 0)
  {
    goto LABEL_82;
  }

LABEL_254:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v88 = *(a1 + 204);
  *v4 = 2805;
  *(v4 + 2) = v88;
  v4 += 6;
  if ((v25 & 0x8000) == 0)
  {
LABEL_83:
    if ((v25 & 0x10000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_260;
  }

LABEL_257:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v89 = *(a1 + 208);
  *v4 = 2813;
  *(v4 + 2) = v89;
  v4 += 6;
  if ((v25 & 0x10000) == 0)
  {
LABEL_84:
    if ((v25 & 0x20000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_263;
  }

LABEL_260:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v90 = *(a1 + 212);
  *v4 = 2949;
  *(v4 + 2) = v90;
  v4 += 6;
  if ((v25 & 0x20000) == 0)
  {
LABEL_85:
    if ((v25 & 0x40000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_266;
  }

LABEL_263:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v91 = *(a1 + 216);
  *v4 = 2957;
  *(v4 + 2) = v91;
  v4 += 6;
  if ((v25 & 0x40000) == 0)
  {
LABEL_86:
    if ((v25 & 0x80000) == 0)
    {
      goto LABEL_272;
    }

    goto LABEL_269;
  }

LABEL_266:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v92 = *(a1 + 220);
  *v4 = 2965;
  *(v4 + 2) = v92;
  v4 += 6;
  if ((v25 & 0x80000) != 0)
  {
LABEL_269:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v93 = *(a1 + 224);
    *v4 = 2973;
    *(v4 + 2) = v93;
    v4 += 6;
  }

LABEL_272:
  v94 = *(a1 + 16);
  if ((v94 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v95 = *(a1 + 72);
    *v4 = 3058;
    v96 = *(v95 + 32);
    if (v96 > 0x7F)
    {
      v4[2] = v96 | 0x80;
      v98 = v96 >> 7;
      if (v96 >> 14)
      {
        v97 = (v4 + 4);
        do
        {
          *(v97 - 1) = v98 | 0x80;
          v103 = v98 >> 7;
          ++v97;
          v104 = v98 >> 14;
          v98 >>= 7;
        }

        while (v104);
        *(v97 - 1) = v103;
      }

      else
      {
        v4[3] = v98;
        v97 = (v4 + 4);
      }
    }

    else
    {
      v4[2] = v96;
      v97 = (v4 + 3);
    }

    v4 = sub_276400C0C(v95, v97, a3);
    if ((v94 & 0x40) == 0)
    {
LABEL_274:
      if ((v94 & 0x80) == 0)
      {
        goto LABEL_275;
      }

      goto LABEL_332;
    }
  }

  else if ((v94 & 0x40) == 0)
  {
    goto LABEL_274;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v105 = *(a1 + 80);
  *v4 = 3066;
  v106 = *(v105 + 32);
  if (v106 > 0x7F)
  {
    v4[2] = v106 | 0x80;
    v108 = v106 >> 7;
    if (v106 >> 14)
    {
      v107 = (v4 + 4);
      do
      {
        *(v107 - 1) = v108 | 0x80;
        v120 = v108 >> 7;
        ++v107;
        v121 = v108 >> 14;
        v108 >>= 7;
      }

      while (v121);
      *(v107 - 1) = v120;
    }

    else
    {
      v4[3] = v108;
      v107 = (v4 + 4);
    }
  }

  else
  {
    v4[2] = v106;
    v107 = (v4 + 3);
  }

  v4 = sub_276400C0C(v105, v107, a3);
  if ((v94 & 0x80) == 0)
  {
LABEL_275:
    if ((v94 & 0x100) == 0)
    {
      goto LABEL_384;
    }

    goto LABEL_354;
  }

LABEL_332:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v122 = *(a1 + 88);
  *v4 = 3202;
  v123 = *(v122 + 32);
  if (v123 > 0x7F)
  {
    v4[2] = v123 | 0x80;
    v125 = v123 >> 7;
    if (v123 >> 14)
    {
      v124 = (v4 + 4);
      do
      {
        *(v124 - 1) = v125 | 0x80;
        v130 = v125 >> 7;
        ++v124;
        v131 = v125 >> 14;
        v125 >>= 7;
      }

      while (v131);
      *(v124 - 1) = v130;
    }

    else
    {
      v4[3] = v125;
      v124 = (v4 + 4);
    }
  }

  else
  {
    v4[2] = v123;
    v124 = (v4 + 3);
  }

  v4 = sub_276400C0C(v122, v124, a3);
  if ((v94 & 0x100) != 0)
  {
LABEL_354:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v132 = *(a1 + 96);
    *v4 = 3210;
    v133 = *(v132 + 32);
    if (v133 > 0x7F)
    {
      v4[2] = v133 | 0x80;
      v135 = v133 >> 7;
      if (v133 >> 14)
      {
        v134 = (v4 + 4);
        do
        {
          *(v134 - 1) = v135 | 0x80;
          v143 = v135 >> 7;
          ++v134;
          v144 = v135 >> 14;
          v135 >>= 7;
        }

        while (v144);
        *(v134 - 1) = v143;
      }

      else
      {
        v4[3] = v135;
        v134 = (v4 + 4);
      }
    }

    else
    {
      v4[2] = v133;
      v134 = (v4 + 3);
    }

    v4 = sub_276400C0C(v132, v134, a3);
  }

LABEL_384:
  v145 = *(a1 + 20);
  if ((v145 & 0x1000000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v147 = *(a1 + 232);
    *v4 = 3221;
    *(v4 + 2) = v147;
    v4 += 6;
    if ((v145 & 0x2000000) == 0)
    {
LABEL_386:
      if ((v145 & 0x4000000) == 0)
      {
        goto LABEL_387;
      }

      goto LABEL_404;
    }
  }

  else if ((v145 & 0x2000000) == 0)
  {
    goto LABEL_386;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v148 = *(a1 + 236);
  *v4 = 3229;
  *(v4 + 2) = v148;
  v4 += 6;
  if ((v145 & 0x4000000) == 0)
  {
LABEL_387:
    if ((v145 & 0x8000000) == 0)
    {
      goto LABEL_388;
    }

    goto LABEL_407;
  }

LABEL_404:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v149 = *(a1 + 240);
  *v4 = 3237;
  *(v4 + 2) = v149;
  v4 += 6;
  if ((v145 & 0x8000000) == 0)
  {
LABEL_388:
    if ((v145 & 0x200000) == 0)
    {
      goto LABEL_389;
    }

    goto LABEL_410;
  }

LABEL_407:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v150 = *(a1 + 244);
  *v4 = 3245;
  *(v4 + 2) = v150;
  v4 += 6;
  if ((v145 & 0x200000) == 0)
  {
LABEL_389:
    if ((v145 & 0x400000) == 0)
    {
      goto LABEL_390;
    }

    goto LABEL_413;
  }

LABEL_410:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v151 = *(a1 + 229);
  *v4 = 3248;
  v4[2] = v151;
  v4 += 3;
  if ((v145 & 0x400000) == 0)
  {
LABEL_390:
    if ((v145 & 0x800000) == 0)
    {
      goto LABEL_391;
    }

    goto LABEL_416;
  }

LABEL_413:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v152 = *(a1 + 230);
  *v4 = 3256;
  v4[2] = v152;
  v4 += 3;
  if ((v145 & 0x800000) == 0)
  {
LABEL_391:
    if ((v145 & 0x10000000) == 0)
    {
      goto LABEL_392;
    }

LABEL_419:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v154 = *(a1 + 248);
    *v4 = 3456;
    if (v154 > 0x7F)
    {
      v4[2] = v154 | 0x80;
      v155 = v154 >> 7;
      if (v154 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v155 | 0x80;
          v160 = v155 >> 7;
          ++v4;
          v161 = v155 >> 14;
          v155 >>= 7;
        }

        while (v161);
        *(v4 - 1) = v160;
        if ((v145 & 0x40000000) != 0)
        {
          goto LABEL_441;
        }
      }

      else
      {
        v4[3] = v155;
        v4 += 4;
        if ((v145 & 0x40000000) != 0)
        {
          goto LABEL_441;
        }
      }
    }

    else
    {
      v4[2] = v154;
      v4 += 3;
      if ((v145 & 0x40000000) != 0)
      {
        goto LABEL_441;
      }
    }

LABEL_393:
    if ((v145 & 0x20000000) == 0)
    {
      goto LABEL_394;
    }

    goto LABEL_444;
  }

LABEL_416:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v153 = *(a1 + 231);
  *v4 = 3264;
  v4[2] = v153;
  v4 += 3;
  if ((v145 & 0x10000000) != 0)
  {
    goto LABEL_419;
  }

LABEL_392:
  if ((v145 & 0x40000000) == 0)
  {
    goto LABEL_393;
  }

LABEL_441:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v162 = *(a1 + 256);
  *v4 = 3464;
  v4[2] = v162;
  v4 += 3;
  if ((v145 & 0x20000000) == 0)
  {
LABEL_394:
    if ((v145 & 0x80000000) == 0)
    {
      goto LABEL_469;
    }

    goto LABEL_395;
  }

LABEL_444:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v163 = *(a1 + 252);
  *v4 = 3472;
  if (v163 > 0x7F)
  {
    v4[2] = v163 | 0x80;
    v164 = v163 >> 7;
    if (v163 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v164 | 0x80;
        v170 = v164 >> 7;
        ++v4;
        v171 = v164 >> 14;
        v164 >>= 7;
      }

      while (v171);
      *(v4 - 1) = v170;
      if ((v145 & 0x80000000) == 0)
      {
        goto LABEL_469;
      }
    }

    else
    {
      v4[3] = v164;
      v4 += 4;
      if ((v145 & 0x80000000) == 0)
      {
        goto LABEL_469;
      }
    }
  }

  else
  {
    v4[2] = v163;
    v4 += 3;
    if ((v145 & 0x80000000) == 0)
    {
      goto LABEL_469;
    }
  }

LABEL_395:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v146 = *(a1 + 257);
  *v4 = 3520;
  v4[2] = v146;
  v4 += 3;
LABEL_469:
  if (*(a1 + 24))
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v172 = *(a1 + 260);
    *v4 = 3533;
    *(v4 + 2) = v172;
    v4 += 6;
  }

  v173 = *(a1 + 8);
  if ((v173 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v173 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27649C7C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    v4 = TSS::StyleArchive::ByteSizeLong(*(a1 + 40));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v5 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_8:
  if ((v2 & 0xFC) == 0)
  {
    goto LABEL_16;
  }

  if ((v2 & 4) != 0)
  {
    v18 = sub_276482F08(*(a1 + 48));
    v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_11:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_42;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_11;
  }

  v19 = sub_276482F08(*(a1 + 56));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x10) == 0)
  {
LABEL_12:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  v20 = sub_276482F08(*(a1 + 64));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x20) == 0)
  {
LABEL_13:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  v21 = sub_276400CD4(*(a1 + 72));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40) == 0)
  {
LABEL_14:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_44:
  v22 = sub_276400CD4(*(a1 + 80));
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80) != 0)
  {
LABEL_15:
    v8 = sub_276400CD4(*(a1 + 88));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_16:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_36;
  }

  if ((v2 & 0x100) == 0)
  {
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_19;
    }

LABEL_47:
    v24 = *(a1 + 104);
    if (v24 < 0)
    {
      v25 = 11;
    }

    else
    {
      v25 = ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v25;
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  v23 = sub_276400CD4(*(a1 + 96));
  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x200) != 0)
  {
    goto LABEL_47;
  }

LABEL_19:
  if ((v2 & 0x400) != 0)
  {
LABEL_20:
    v9 = *(a1 + 108);
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 12;
    }

    v3 += v11;
  }

LABEL_24:
  v12 = v3 + ((v2 >> 10) & 2);
  if ((v2 & 0x1000) != 0)
  {
    v12 += 3;
  }

  if ((v2 & 0x2000) != 0)
  {
    v12 += 3;
  }

  if ((v2 & 0x4000) != 0)
  {
    v3 = v12 + 3;
  }

  else
  {
    v3 = v12;
  }

  if ((v2 & 0x8000) != 0)
  {
    v13 = *(a1 + 116);
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v13 >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 12;
    }

    v3 += v15;
  }

LABEL_36:
  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v16 = *(a1 + 120);
      if (v16 < 0)
      {
        v17 = 12;
      }

      else
      {
        v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v17;
    }

    v26 = v3 + 3;
    if ((v2 & 0x20000) == 0)
    {
      v26 = v3;
    }

    if ((v2 & 0x40000) != 0)
    {
      v26 += 3;
    }

    if ((v2 & 0x80000) != 0)
    {
      v26 += 3;
    }

    if ((v2 & 0x100000) != 0)
    {
      v26 += 3;
    }

    if ((v2 & 0x200000) != 0)
    {
      v26 += 6;
    }

    if ((v2 & 0x400000) != 0)
    {
      v27 = *(a1 + 132);
      v28 = ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v27 >= 0)
      {
        v29 = v28;
      }

      else
      {
        v29 = 12;
      }

      v26 += v29;
    }

    if ((v2 & 0x800000) != 0)
    {
      v3 = v26 + 6;
    }

    else
    {
      v3 = v26;
    }
  }

  if (HIBYTE(v2))
  {
    if ((v2 & 0x1000000) != 0)
    {
      v30 = *(a1 + 140);
      if (v30 < 0)
      {
        v31 = 12;
      }

      else
      {
        v31 = ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v31;
    }

    if ((v2 & 0x2000000) != 0)
    {
      v32 = *(a1 + 144);
      if (v32 < 0)
      {
        v33 = 12;
      }

      else
      {
        v33 = ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v33;
    }

    v34 = v3 + 3;
    if ((v2 & 0x4000000) == 0)
    {
      v34 = v3;
    }

    if ((v2 & 0x8000000) != 0)
    {
      v34 += 3;
    }

    if ((v2 & 0x10000000) != 0)
    {
      v34 += 3;
    }

    if ((v2 & 0x20000000) != 0)
    {
      v3 = v34 + 3;
    }

    else
    {
      v3 = v34;
    }

    if ((v2 & 0x40000000) != 0)
    {
      v35 = *(a1 + 152);
      v36 = ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v35 >= 0)
      {
        v37 = v36;
      }

      else
      {
        v37 = 12;
      }

      v3 += v37;
    }

    if ((v2 & 0x80000000) != 0)
    {
      v38 = *(a1 + 156);
      v39 = ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v38 >= 0)
      {
        v40 = v39;
      }

      else
      {
        v40 = 12;
      }

      v3 += v40;
    }
  }

  v41 = *(a1 + 20);
  if (v41)
  {
    if (v41)
    {
      v42 = *(a1 + 160);
      if (v42 < 0)
      {
        v43 = 12;
      }

      else
      {
        v43 = ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v43;
    }

    if ((v41 & 2) != 0)
    {
      v44 = *(a1 + 164);
      if (v44 < 0)
      {
        v45 = 12;
      }

      else
      {
        v45 = ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v45;
    }

    v46 = v3 + 3;
    if ((v41 & 4) == 0)
    {
      v46 = v3;
    }

    if ((v41 & 8) != 0)
    {
      v46 += 3;
    }

    if ((v41 & 0x10) != 0)
    {
      v46 += 3;
    }

    if ((v41 & 0x20) != 0)
    {
      v3 = v46 + 3;
    }

    else
    {
      v3 = v46;
    }

    if ((v41 & 0x40) != 0)
    {
      v47 = *(a1 + 172);
      v48 = ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v47 >= 0)
      {
        v49 = v48;
      }

      else
      {
        v49 = 12;
      }

      v3 += v49;
    }

    if ((v41 & 0x80) != 0)
    {
      v50 = *(a1 + 176);
      v51 = ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v50 >= 0)
      {
        v52 = v51;
      }

      else
      {
        v52 = 12;
      }

      v3 += v52;
    }
  }

  if ((v41 & 0xFF00) != 0)
  {
    if ((v41 & 0x100) != 0)
    {
      v53 = *(a1 + 180);
      if (v53 < 0)
      {
        v54 = 12;
      }

      else
      {
        v54 = ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v54;
      if ((v41 & 0x200) == 0)
      {
LABEL_135:
        if ((v41 & 0x400) == 0)
        {
          goto LABEL_136;
        }

        goto LABEL_148;
      }
    }

    else if ((v41 & 0x200) == 0)
    {
      goto LABEL_135;
    }

    v55 = *(a1 + 184);
    if (v55 < 0)
    {
      v56 = 12;
    }

    else
    {
      v56 = ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v56;
    if ((v41 & 0x400) == 0)
    {
LABEL_136:
      if ((v41 & 0x800) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_152;
    }

LABEL_148:
    v57 = *(a1 + 188);
    if (v57 < 0)
    {
      v58 = 12;
    }

    else
    {
      v58 = ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v58;
    if ((v41 & 0x800) == 0)
    {
LABEL_137:
      if ((v41 & 0x1000) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_156;
    }

LABEL_152:
    v59 = *(a1 + 192);
    if (v59 < 0)
    {
      v60 = 12;
    }

    else
    {
      v60 = ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v60;
    if ((v41 & 0x1000) == 0)
    {
LABEL_138:
      if ((v41 & 0x2000) == 0)
      {
LABEL_164:
        v65 = v3 + 6;
        if ((v41 & 0x4000) == 0)
        {
          v65 = v3;
        }

        if ((v41 & 0x8000) != 0)
        {
          v3 = v65 + 6;
        }

        else
        {
          v3 = v65;
        }

        goto LABEL_169;
      }

LABEL_160:
      v63 = *(a1 + 200);
      if (v63 < 0)
      {
        v64 = 12;
      }

      else
      {
        v64 = ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v64;
      goto LABEL_164;
    }

LABEL_156:
    v61 = *(a1 + 196);
    if (v61 < 0)
    {
      v62 = 12;
    }

    else
    {
      v62 = ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v62;
    if ((v41 & 0x2000) == 0)
    {
      goto LABEL_164;
    }

    goto LABEL_160;
  }

LABEL_169:
  if ((v41 & 0xFF0000) != 0)
  {
    v66 = v3 + 6;
    if ((v41 & 0x10000) == 0)
    {
      v66 = v3;
    }

    if ((v41 & 0x20000) != 0)
    {
      v66 += 6;
    }

    if ((v41 & 0x40000) != 0)
    {
      v66 += 6;
    }

    if ((v41 & 0x80000) != 0)
    {
      v66 += 6;
    }

    if ((v41 & 0x100000) != 0)
    {
      v66 += 3;
    }

    if ((v41 & 0x200000) != 0)
    {
      v66 += 3;
    }

    if ((v41 & 0x400000) != 0)
    {
      v66 += 3;
    }

    if ((v41 & 0x800000) != 0)
    {
      v3 = v66 + 3;
    }

    else
    {
      v3 = v66;
    }
  }

  if (HIBYTE(v41))
  {
    v67 = v3 + 6;
    if ((v41 & 0x1000000) == 0)
    {
      v67 = v3;
    }

    if ((v41 & 0x2000000) != 0)
    {
      v67 += 6;
    }

    if ((v41 & 0x4000000) != 0)
    {
      v67 += 6;
    }

    if ((v41 & 0x8000000) != 0)
    {
      v67 += 6;
    }

    if ((v41 & 0x10000000) != 0)
    {
      v68 = *(a1 + 248);
      v69 = ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v68 >= 0)
      {
        v70 = v69;
      }

      else
      {
        v70 = 12;
      }

      v67 += v70;
    }

    if ((v41 & 0x20000000) != 0)
    {
      v71 = *(a1 + 252);
      v72 = ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v71 >= 0)
      {
        v73 = v72;
      }

      else
      {
        v73 = 12;
      }

      v67 += v73;
    }

    if ((v41 & 0x40000000) != 0)
    {
      v67 += 3;
    }

    if (v41 >= 0)
    {
      v3 = v67;
    }

    else
    {
      v3 = v67 + 3;
    }
  }

  if (*(a1 + 24))
  {
    v74 = v3 + 6;
  }

  else
  {
    v74 = v3;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 28) = v74;
    return v74;
  }
}