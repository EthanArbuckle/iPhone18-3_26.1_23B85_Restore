uint64_t sub_27641B5B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = TSD::LineEndArchive::ByteSizeLong(*(a1 + 40));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = TSD::LineEndArchive::ByteSizeLong(*(a1 + 48));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v13 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 56));
    v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_86;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v14 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 64));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_87;
  }

LABEL_86:
  v15 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 72));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_88;
  }

LABEL_87:
  v16 = TSD::FillArchive::ByteSizeLong(*(a1 + 80));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_88:
  v17 = TSD::FillArchive::ByteSizeLong(*(a1 + 88));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_14:
    v6 = TSD::FillArchive::ByteSizeLong(*(a1 + 96));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = TSD::FillArchive::ByteSizeLong(*(a1 + 104));
    v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_18:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_92;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v19 = TSD::FillArchive::ByteSizeLong(*(a1 + 112));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x400) == 0)
  {
LABEL_19:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_93;
  }

LABEL_92:
  v20 = TSD::FillArchive::ByteSizeLong(*(a1 + 120));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x800) == 0)
  {
LABEL_20:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_94;
  }

LABEL_93:
  v21 = TSD::FillArchive::ByteSizeLong(*(a1 + 128));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x1000) == 0)
  {
LABEL_21:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_95;
  }

LABEL_94:
  v22 = TSD::FillArchive::ByteSizeLong(*(a1 + 136));
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x2000) == 0)
  {
LABEL_22:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_96;
  }

LABEL_95:
  v23 = TSD::FillArchive::ByteSizeLong(*(a1 + 144));
  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x4000) == 0)
  {
LABEL_23:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_96:
  v24 = TSD::FillArchive::ByteSizeLong(*(a1 + 152));
  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x8000) != 0)
  {
LABEL_24:
    v7 = TSD::FillArchive::ByteSizeLong(*(a1 + 160));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_25:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_35;
  }

  if ((v2 & 0x10000) != 0)
  {
    v25 = TSD::FillArchive::ByteSizeLong(*(a1 + 168));
    v3 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x20000) == 0)
    {
LABEL_28:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_100;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_28;
  }

  v26 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 176));
  v3 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000) == 0)
  {
LABEL_29:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_101;
  }

LABEL_100:
  v27 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 184));
  v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80000) == 0)
  {
LABEL_30:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_102;
  }

LABEL_101:
  v28 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 192));
  v3 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x100000) == 0)
  {
LABEL_31:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_103;
  }

LABEL_102:
  v29 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 200));
  v3 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x200000) == 0)
  {
LABEL_32:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_104;
  }

LABEL_103:
  v30 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 208));
  v3 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400000) == 0)
  {
LABEL_33:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_104:
  v31 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 216));
  v3 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800000) != 0)
  {
LABEL_34:
    v8 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 224));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_35:
  if (!HIBYTE(v2))
  {
    goto LABEL_44;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v53 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 232));
    v3 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x2000000) == 0)
    {
LABEL_38:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_132;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_38;
  }

  v54 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 240));
  v3 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000000) == 0)
  {
LABEL_39:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_133;
  }

LABEL_132:
  v55 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 248));
  v3 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000000) == 0)
  {
LABEL_40:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_134;
  }

LABEL_133:
  v56 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 256));
  v3 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x10000000) == 0)
  {
LABEL_41:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_135;
  }

LABEL_134:
  v57 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 264));
  v3 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x20000000) == 0)
  {
LABEL_42:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_136:
    v59 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 280));
    v3 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_137;
  }

LABEL_135:
  v58 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 272));
  v3 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000000) != 0)
  {
    goto LABEL_136;
  }

LABEL_43:
  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_137:
  v60 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 288));
  v3 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_44:
  v9 = *(a1 + 20);
  if (!v9)
  {
    goto LABEL_54;
  }

  if (v9)
  {
    v32 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 296));
    v3 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 2) == 0)
    {
LABEL_47:
      if ((v9 & 4) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_108;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_47;
  }

  v33 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 304));
  v3 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 4) == 0)
  {
LABEL_48:
    if ((v9 & 8) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_109;
  }

LABEL_108:
  v34 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 312));
  v3 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 8) == 0)
  {
LABEL_49:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_110;
  }

LABEL_109:
  v35 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 320));
  v3 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x10) == 0)
  {
LABEL_50:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_111;
  }

LABEL_110:
  v36 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 328));
  v3 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x20) == 0)
  {
LABEL_51:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_112;
  }

LABEL_111:
  v37 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 336));
  v3 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x40) == 0)
  {
LABEL_52:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_112:
  v38 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 344));
  v3 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x80) != 0)
  {
LABEL_53:
    v10 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 352));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_54:
  if ((v9 & 0xFF00) == 0)
  {
    goto LABEL_64;
  }

  if ((v9 & 0x100) != 0)
  {
    v39 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 360));
    v3 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x200) == 0)
    {
LABEL_57:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_116;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_57;
  }

  v40 = TSD::FillArchive::ByteSizeLong(*(a1 + 368));
  v3 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x400) == 0)
  {
LABEL_58:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_117;
  }

LABEL_116:
  v41 = TSD::FillArchive::ByteSizeLong(*(a1 + 376));
  v3 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x800) == 0)
  {
LABEL_59:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_118;
  }

LABEL_117:
  v42 = TSD::FillArchive::ByteSizeLong(*(a1 + 384));
  v3 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x1000) == 0)
  {
LABEL_60:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_119;
  }

LABEL_118:
  v43 = TSD::FillArchive::ByteSizeLong(*(a1 + 392));
  v3 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x2000) == 0)
  {
LABEL_61:
    if ((v9 & 0x4000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_120;
  }

LABEL_119:
  v44 = TSD::FillArchive::ByteSizeLong(*(a1 + 400));
  v3 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x4000) == 0)
  {
LABEL_62:
    if ((v9 & 0x8000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_120:
  v45 = TSD::FillArchive::ByteSizeLong(*(a1 + 408));
  v3 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x8000) != 0)
  {
LABEL_63:
    v11 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 416));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_64:
  if ((v9 & 0xFF0000) == 0)
  {
    goto LABEL_74;
  }

  if ((v9 & 0x10000) != 0)
  {
    v46 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 424));
    v3 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x20000) == 0)
    {
LABEL_67:
      if ((v9 & 0x40000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_124;
    }
  }

  else if ((v9 & 0x20000) == 0)
  {
    goto LABEL_67;
  }

  v47 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 432));
  v3 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x40000) == 0)
  {
LABEL_68:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_125;
  }

LABEL_124:
  v48 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 440));
  v3 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x80000) == 0)
  {
LABEL_69:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_126;
  }

LABEL_125:
  v49 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 448));
  v3 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x100000) == 0)
  {
LABEL_70:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_127;
  }

LABEL_126:
  v50 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 456));
  v3 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x200000) == 0)
  {
LABEL_71:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_128;
  }

LABEL_127:
  v51 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 464));
  v3 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x400000) == 0)
  {
LABEL_72:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

LABEL_128:
  v52 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 472));
  v3 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x800000) != 0)
  {
LABEL_73:
    v12 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 480));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_74:
  if (!HIBYTE(v9))
  {
    goto LABEL_149;
  }

  if ((v9 & 0x1000000) != 0)
  {
    v61 = TSD::LineEndArchive::ByteSizeLong(*(a1 + 488));
    v3 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x2000000) == 0)
    {
LABEL_77:
      if ((v9 & 0x4000000) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_140;
    }
  }

  else if ((v9 & 0x2000000) == 0)
  {
    goto LABEL_77;
  }

  v62 = TSD::LineEndArchive::ByteSizeLong(*(a1 + 496));
  v3 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x4000000) == 0)
  {
LABEL_78:
    if ((v9 & 0x8000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_141;
  }

LABEL_140:
  v63 = TSD::FillArchive::ByteSizeLong(*(a1 + 504));
  v3 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x8000000) == 0)
  {
LABEL_79:
    if ((v9 & 0x10000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_142;
  }

LABEL_141:
  v64 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 512));
  v3 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x10000000) == 0)
  {
LABEL_80:
    if ((v9 & 0x20000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_143;
  }

LABEL_142:
  v65 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 520));
  v3 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x20000000) == 0)
  {
LABEL_81:
    if ((v9 & 0x40000000) == 0)
    {
      goto LABEL_82;
    }

LABEL_144:
    v67 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 536));
    v3 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_145;
  }

LABEL_143:
  v66 = TSD::FillArchive::ByteSizeLong(*(a1 + 528));
  v3 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v9 & 0x40000000) != 0)
  {
    goto LABEL_144;
  }

LABEL_82:
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_149;
  }

LABEL_145:
  v68 = *(a1 + 544);
  if (v68 < 0)
  {
    v69 = 12;
  }

  else
  {
    v69 = ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v69;
LABEL_149:
  v70 = *(a1 + 24);
  if (!v70)
  {
    goto LABEL_188;
  }

  if (v70)
  {
    v71 = *(a1 + 548);
    if (v71 < 0)
    {
      v72 = 12;
    }

    else
    {
      v72 = ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v72;
    if ((v70 & 2) == 0)
    {
LABEL_152:
      if ((v70 & 4) == 0)
      {
        goto LABEL_153;
      }

      goto LABEL_164;
    }
  }

  else if ((v70 & 2) == 0)
  {
    goto LABEL_152;
  }

  v73 = *(a1 + 552);
  if (v73 < 0)
  {
    v74 = 12;
  }

  else
  {
    v74 = ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v74;
  if ((v70 & 4) == 0)
  {
LABEL_153:
    if ((v70 & 8) == 0)
    {
      goto LABEL_154;
    }

LABEL_168:
    v77 = *(a1 + 560);
    if (v77 < 0)
    {
      v78 = 12;
    }

    else
    {
      v78 = ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v78;
    if ((v70 & 0x10) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_172;
  }

LABEL_164:
  v75 = *(a1 + 556);
  if (v75 < 0)
  {
    v76 = 12;
  }

  else
  {
    v76 = ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v76;
  if ((v70 & 8) != 0)
  {
    goto LABEL_168;
  }

LABEL_154:
  if ((v70 & 0x10) != 0)
  {
LABEL_172:
    v79 = *(a1 + 564);
    if (v79 < 0)
    {
      v80 = 12;
    }

    else
    {
      v80 = ((9 * (__clz(v79 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v80;
  }

LABEL_176:
  if ((v70 & 0x20) != 0)
  {
    v3 += 6;
  }

  if ((v70 & 0x40) != 0)
  {
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

  if ((v70 & 0x80) != 0)
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
  }

LABEL_188:
  if ((v70 & 0xFF00) == 0)
  {
    goto LABEL_216;
  }

  if ((v70 & 0x100) == 0)
  {
    if ((v70 & 0x200) == 0)
    {
      goto LABEL_191;
    }

LABEL_197:
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
    if ((v70 & 0x400) == 0)
    {
      goto LABEL_205;
    }

    goto LABEL_201;
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
  if ((v70 & 0x200) != 0)
  {
    goto LABEL_197;
  }

LABEL_191:
  if ((v70 & 0x400) != 0)
  {
LABEL_201:
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
  }

LABEL_205:
  v91 = v3 + 3;
  if ((v70 & 0x800) == 0)
  {
    v91 = v3;
  }

  if ((v70 & 0x1000) != 0)
  {
    v91 += 6;
  }

  if ((v70 & 0x2000) != 0)
  {
    v91 += 6;
  }

  if ((v70 & 0x4000) != 0)
  {
    v91 += 6;
  }

  if ((v70 & 0x8000) != 0)
  {
    v3 = v91 + 6;
  }

  else
  {
    v3 = v91;
  }

LABEL_216:
  if ((v70 & 0xFF0000) == 0)
  {
    goto LABEL_250;
  }

  v92 = v3 + 6;
  if ((v70 & 0x10000) == 0)
  {
    v92 = v3;
  }

  if ((v70 & 0x20000) != 0)
  {
    v92 += 6;
  }

  if ((v70 & 0x40000) != 0)
  {
    v93 = *(a1 + 620);
    if (v93 < 0)
    {
      v94 = 12;
    }

    else
    {
      v94 = ((9 * (__clz(v93 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v92 += v94;
  }

  if ((v70 & 0x80000) != 0)
  {
    v3 = v92 + 6;
  }

  else
  {
    v3 = v92;
  }

  if ((v70 & 0x100000) != 0)
  {
    v95 = *(a1 + 628);
    if (v95 < 0)
    {
      v96 = 12;
    }

    else
    {
      v96 = ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v96;
    if ((v70 & 0x200000) == 0)
    {
LABEL_231:
      if ((v70 & 0x400000) == 0)
      {
        goto LABEL_232;
      }

      goto LABEL_242;
    }
  }

  else if ((v70 & 0x200000) == 0)
  {
    goto LABEL_231;
  }

  v97 = *(a1 + 632);
  if (v97 < 0)
  {
    v98 = 12;
  }

  else
  {
    v98 = ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v98;
  if ((v70 & 0x400000) == 0)
  {
LABEL_232:
    if ((v70 & 0x800000) == 0)
    {
      goto LABEL_250;
    }

    goto LABEL_246;
  }

LABEL_242:
  v99 = *(a1 + 636);
  if (v99 < 0)
  {
    v100 = 12;
  }

  else
  {
    v100 = ((9 * (__clz(v99 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v100;
  if ((v70 & 0x800000) != 0)
  {
LABEL_246:
    v101 = *(a1 + 640);
    if (v101 < 0)
    {
      v102 = 12;
    }

    else
    {
      v102 = ((9 * (__clz(v101 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v102;
  }

LABEL_250:
  if (!HIBYTE(v70))
  {
    goto LABEL_278;
  }

  if ((v70 & 0x1000000) == 0)
  {
    if ((v70 & 0x2000000) == 0)
    {
      goto LABEL_253;
    }

LABEL_259:
    v105 = *(a1 + 648);
    if (v105 < 0)
    {
      v106 = 12;
    }

    else
    {
      v106 = ((9 * (__clz(v105 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v106;
    if ((v70 & 0x4000000) == 0)
    {
      goto LABEL_267;
    }

    goto LABEL_263;
  }

  v103 = *(a1 + 644);
  if (v103 < 0)
  {
    v104 = 12;
  }

  else
  {
    v104 = ((9 * (__clz(v103 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v104;
  if ((v70 & 0x2000000) != 0)
  {
    goto LABEL_259;
  }

LABEL_253:
  if ((v70 & 0x4000000) != 0)
  {
LABEL_263:
    v107 = *(a1 + 652);
    if (v107 < 0)
    {
      v108 = 12;
    }

    else
    {
      v108 = ((9 * (__clz(v107 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v108;
  }

LABEL_267:
  v109 = v3 + 3;
  if ((v70 & 0x8000000) == 0)
  {
    v109 = v3;
  }

  if ((v70 & 0x10000000) != 0)
  {
    v109 += 3;
  }

  if ((v70 & 0x20000000) != 0)
  {
    v109 += 3;
  }

  if ((v70 & 0x40000000) != 0)
  {
    v109 += 3;
  }

  if (v70 >= 0)
  {
    v3 = v109;
  }

  else
  {
    v3 = v109 + 3;
  }

LABEL_278:
  v110 = *(a1 + 28);
  if (!v110)
  {
    goto LABEL_297;
  }

  v111 = v3 + 3;
  if ((v110 & 1) == 0)
  {
    v111 = v3;
  }

  if ((v110 & 2) != 0)
  {
    v111 += 3;
  }

  if ((v110 & 4) != 0)
  {
    v111 += 3;
  }

  if ((v110 & 8) == 0)
  {
    if ((v110 & 0x10) == 0)
    {
      goto LABEL_287;
    }

LABEL_314:
    v119 = *(a1 + 668);
    v120 = ((9 * (__clz(v119 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v119 >= 0)
    {
      v121 = v120;
    }

    else
    {
      v121 = 12;
    }

    v111 += v121;
    if ((v110 & 0x20) == 0)
    {
      goto LABEL_292;
    }

    goto LABEL_288;
  }

  v116 = *(a1 + 664);
  v117 = ((9 * (__clz(v116 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v116 >= 0)
  {
    v118 = v117;
  }

  else
  {
    v118 = 12;
  }

  v111 += v118;
  if ((v110 & 0x10) != 0)
  {
    goto LABEL_314;
  }

LABEL_287:
  if ((v110 & 0x20) != 0)
  {
LABEL_288:
    v112 = *(a1 + 672);
    v113 = ((9 * (__clz(v112 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v112 >= 0)
    {
      v114 = v113;
    }

    else
    {
      v114 = 12;
    }

    v111 += v114;
  }

LABEL_292:
  if ((v110 & 0x40) != 0)
  {
    v111 += 3;
  }

  if ((v110 & 0x80) != 0)
  {
    v3 = v111 + 3;
  }

  else
  {
    v3 = v111;
  }

LABEL_297:
  if ((v110 & 0xFF00) == 0)
  {
    goto LABEL_343;
  }

  v115 = v3 + 3;
  if ((v110 & 0x100) == 0)
  {
    v115 = v3;
  }

  if ((v110 & 0x200) != 0)
  {
    v3 = v115 + 3;
  }

  else
  {
    v3 = v115;
  }

  if ((v110 & 0x400) != 0)
  {
    v122 = *(a1 + 680);
    if (v122 < 0)
    {
      v123 = 12;
    }

    else
    {
      v123 = ((9 * (__clz(v122 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v123;
    if ((v110 & 0x800) == 0)
    {
LABEL_305:
      if ((v110 & 0x1000) == 0)
      {
        goto LABEL_306;
      }

      goto LABEL_327;
    }
  }

  else if ((v110 & 0x800) == 0)
  {
    goto LABEL_305;
  }

  v124 = *(a1 + 684);
  if (v124 < 0)
  {
    v125 = 12;
  }

  else
  {
    v125 = ((9 * (__clz(v124 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v125;
  if ((v110 & 0x1000) == 0)
  {
LABEL_306:
    if ((v110 & 0x2000) == 0)
    {
      goto LABEL_307;
    }

    goto LABEL_331;
  }

LABEL_327:
  v126 = *(a1 + 688);
  if (v126 < 0)
  {
    v127 = 12;
  }

  else
  {
    v127 = ((9 * (__clz(v126 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v127;
  if ((v110 & 0x2000) == 0)
  {
LABEL_307:
    if ((v110 & 0x4000) == 0)
    {
      goto LABEL_308;
    }

    goto LABEL_335;
  }

LABEL_331:
  v128 = *(a1 + 692);
  if (v128 < 0)
  {
    v129 = 12;
  }

  else
  {
    v129 = ((9 * (__clz(v128 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v129;
  if ((v110 & 0x4000) == 0)
  {
LABEL_308:
    if ((v110 & 0x8000) == 0)
    {
      goto LABEL_343;
    }

    goto LABEL_339;
  }

LABEL_335:
  v130 = *(a1 + 696);
  if (v130 < 0)
  {
    v131 = 12;
  }

  else
  {
    v131 = ((9 * (__clz(v130 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v131;
  if ((v110 & 0x8000) != 0)
  {
LABEL_339:
    v132 = *(a1 + 700);
    if (v132 < 0)
    {
      v133 = 12;
    }

    else
    {
      v133 = ((9 * (__clz(v132 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v133;
  }

LABEL_343:
  if ((v110 & 0x3F0000) == 0)
  {
    goto LABEL_370;
  }

  if ((v110 & 0x10000) == 0)
  {
    if ((v110 & 0x20000) == 0)
    {
      goto LABEL_346;
    }

LABEL_352:
    v136 = *(a1 + 708);
    if (v136 < 0)
    {
      v137 = 12;
    }

    else
    {
      v137 = ((9 * (__clz(v136 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v137;
    if ((v110 & 0x40000) == 0)
    {
      goto LABEL_360;
    }

    goto LABEL_356;
  }

  v134 = *(a1 + 704);
  if (v134 < 0)
  {
    v135 = 12;
  }

  else
  {
    v135 = ((9 * (__clz(v134 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v135;
  if ((v110 & 0x20000) != 0)
  {
    goto LABEL_352;
  }

LABEL_346:
  if ((v110 & 0x40000) != 0)
  {
LABEL_356:
    v138 = *(a1 + 712);
    if (v138 < 0)
    {
      v139 = 12;
    }

    else
    {
      v139 = ((9 * (__clz(v138 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v139;
  }

LABEL_360:
  v140 = v3 + 6;
  if ((v110 & 0x80000) == 0)
  {
    v140 = v3;
  }

  if ((v110 & 0x100000) != 0)
  {
    v141 = *(a1 + 720);
    if (v141 < 0)
    {
      v142 = 12;
    }

    else
    {
      v142 = ((9 * (__clz(v141 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v140 += v142;
  }

  if ((v110 & 0x200000) != 0)
  {
    v3 = v140 + 6;
  }

  else
  {
    v3 = v140;
  }

LABEL_370:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 32) = v3;
    return v3;
  }
}

uint64_t sub_27641CB78(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885238B0, 0);
  if (v4)
  {

    return sub_27641CC20(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27641CC20(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    goto LABEL_78;
  }

  v6 = MEMORY[0x277D804A8];
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    *(v3 + 16) |= 2u;
    v10 = *(v3 + 48);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C97AB0](v11);
      *(v3 + 48) = v10;
    }

    if (*(a2 + 48))
    {
      v12 = *(a2 + 48);
    }

    else
    {
      v12 = v6;
    }

    result = TSD::LineEndArchive::MergeFrom(v10, v12);
    if ((v5 & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  *(v3 + 16) |= 1u;
  v7 = *(v3 + 40);
  if (!v7)
  {
    v8 = *(v3 + 8);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x277C97AB0](v8);
    *(v3 + 40) = v7;
  }

  if (*(a2 + 40))
  {
    v9 = *(a2 + 40);
  }

  else
  {
    v9 = v6;
  }

  result = TSD::LineEndArchive::MergeFrom(v7, v9);
  if ((v5 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v5 & 4) != 0)
  {
LABEL_24:
    *(v3 + 16) |= 4u;
    v13 = *(v3 + 56);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277C97A90](v14);
      *(v3 + 56) = v13;
    }

    if (*(a2 + 56))
    {
      v15 = *(a2 + 56);
    }

    else
    {
      v15 = MEMORY[0x277D80498];
    }

    result = TSD::ShadowArchive::MergeFrom(v13, v15);
  }

LABEL_32:
  v16 = MEMORY[0x277D804A0];
  if ((v5 & 8) != 0)
  {
    *(v3 + 16) |= 8u;
    v17 = *(v3 + 64);
    if (!v17)
    {
      v18 = *(v3 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = MEMORY[0x277C97AA0](v18);
      *(v3 + 64) = v17;
    }

    if (*(a2 + 64))
    {
      v19 = *(a2 + 64);
    }

    else
    {
      v19 = v16;
    }

    result = TSD::StrokeArchive::MergeFrom(v17, v19);
  }

  if ((v5 & 0x10) != 0)
  {
    *(v3 + 16) |= 0x10u;
    v20 = *(v3 + 72);
    if (!v20)
    {
      v21 = *(v3 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x277C97AA0](v21);
      *(v3 + 72) = v20;
    }

    if (*(a2 + 72))
    {
      v22 = *(a2 + 72);
    }

    else
    {
      v22 = v16;
    }

    result = TSD::StrokeArchive::MergeFrom(v20, v22);
  }

  v23 = MEMORY[0x277D80488];
  if ((v5 & 0x20) != 0)
  {
    *(v3 + 16) |= 0x20u;
    v24 = *(v3 + 80);
    if (!v24)
    {
      v25 = *(v3 + 8);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = MEMORY[0x277C97A80](v25);
      *(v3 + 80) = v24;
    }

    if (*(a2 + 80))
    {
      v26 = *(a2 + 80);
    }

    else
    {
      v26 = v23;
    }

    result = TSD::FillArchive::MergeFrom(v24, v26);
    if ((v5 & 0x40) == 0)
    {
LABEL_52:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_70;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_52;
  }

  *(v3 + 16) |= 0x40u;
  v27 = *(v3 + 88);
  if (!v27)
  {
    v28 = *(v3 + 8);
    if (v28)
    {
      v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    }

    v27 = MEMORY[0x277C97A80](v28);
    *(v3 + 88) = v27;
  }

  if (*(a2 + 88))
  {
    v29 = *(a2 + 88);
  }

  else
  {
    v29 = v23;
  }

  result = TSD::FillArchive::MergeFrom(v27, v29);
  if ((v5 & 0x80) != 0)
  {
LABEL_70:
    *(v3 + 16) |= 0x80u;
    v30 = *(v3 + 96);
    if (!v30)
    {
      v31 = *(v3 + 8);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = MEMORY[0x277C97A80](v31);
      *(v3 + 96) = v30;
    }

    if (*(a2 + 96))
    {
      v32 = *(a2 + 96);
    }

    else
    {
      v32 = v23;
    }

    result = TSD::FillArchive::MergeFrom(v30, v32);
  }

LABEL_78:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_152;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v33 = *(v3 + 104);
    if (!v33)
    {
      v34 = *(v3 + 8);
      if (v34)
      {
        v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
      }

      v33 = MEMORY[0x277C97A80](v34);
      *(v3 + 104) = v33;
    }

    if (*(a2 + 104))
    {
      v35 = *(a2 + 104);
    }

    else
    {
      v35 = MEMORY[0x277D80488];
    }

    result = TSD::FillArchive::MergeFrom(v33, v35);
    if ((v5 & 0x200) == 0)
    {
LABEL_81:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_104;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_81;
  }

  *(v3 + 16) |= 0x200u;
  v36 = *(v3 + 112);
  if (!v36)
  {
    v37 = *(v3 + 8);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = MEMORY[0x277C97A80](v37);
    *(v3 + 112) = v36;
  }

  if (*(a2 + 112))
  {
    v38 = *(a2 + 112);
  }

  else
  {
    v38 = MEMORY[0x277D80488];
  }

  result = TSD::FillArchive::MergeFrom(v36, v38);
  if ((v5 & 0x400) == 0)
  {
LABEL_82:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_112;
  }

LABEL_104:
  *(v3 + 16) |= 0x400u;
  v39 = *(v3 + 120);
  if (!v39)
  {
    v40 = *(v3 + 8);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v39 = MEMORY[0x277C97A80](v40);
    *(v3 + 120) = v39;
  }

  if (*(a2 + 120))
  {
    v41 = *(a2 + 120);
  }

  else
  {
    v41 = MEMORY[0x277D80488];
  }

  result = TSD::FillArchive::MergeFrom(v39, v41);
  if ((v5 & 0x800) == 0)
  {
LABEL_83:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_120;
  }

LABEL_112:
  *(v3 + 16) |= 0x800u;
  v42 = *(v3 + 128);
  if (!v42)
  {
    v43 = *(v3 + 8);
    if (v43)
    {
      v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
    }

    v42 = MEMORY[0x277C97A80](v43);
    *(v3 + 128) = v42;
  }

  if (*(a2 + 128))
  {
    v44 = *(a2 + 128);
  }

  else
  {
    v44 = MEMORY[0x277D80488];
  }

  result = TSD::FillArchive::MergeFrom(v42, v44);
  if ((v5 & 0x1000) == 0)
  {
LABEL_84:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_128;
  }

LABEL_120:
  *(v3 + 16) |= 0x1000u;
  v45 = *(v3 + 136);
  if (!v45)
  {
    v46 = *(v3 + 8);
    if (v46)
    {
      v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
    }

    v45 = MEMORY[0x277C97A80](v46);
    *(v3 + 136) = v45;
  }

  if (*(a2 + 136))
  {
    v47 = *(a2 + 136);
  }

  else
  {
    v47 = MEMORY[0x277D80488];
  }

  result = TSD::FillArchive::MergeFrom(v45, v47);
  if ((v5 & 0x2000) == 0)
  {
LABEL_85:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_136;
  }

LABEL_128:
  *(v3 + 16) |= 0x2000u;
  v48 = *(v3 + 144);
  if (!v48)
  {
    v49 = *(v3 + 8);
    if (v49)
    {
      v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
    }

    v48 = MEMORY[0x277C97A80](v49);
    *(v3 + 144) = v48;
  }

  if (*(a2 + 144))
  {
    v50 = *(a2 + 144);
  }

  else
  {
    v50 = MEMORY[0x277D80488];
  }

  result = TSD::FillArchive::MergeFrom(v48, v50);
  if ((v5 & 0x4000) == 0)
  {
LABEL_86:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_144;
  }

LABEL_136:
  *(v3 + 16) |= 0x4000u;
  v51 = *(v3 + 152);
  if (!v51)
  {
    v52 = *(v3 + 8);
    if (v52)
    {
      v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
    }

    v51 = MEMORY[0x277C97A80](v52);
    *(v3 + 152) = v51;
  }

  if (*(a2 + 152))
  {
    v53 = *(a2 + 152);
  }

  else
  {
    v53 = MEMORY[0x277D80488];
  }

  result = TSD::FillArchive::MergeFrom(v51, v53);
  if ((v5 & 0x8000) != 0)
  {
LABEL_144:
    *(v3 + 16) |= 0x8000u;
    v54 = *(v3 + 160);
    if (!v54)
    {
      v55 = *(v3 + 8);
      if (v55)
      {
        v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
      }

      v54 = MEMORY[0x277C97A80](v55);
      *(v3 + 160) = v54;
    }

    if (*(a2 + 160))
    {
      v56 = *(a2 + 160);
    }

    else
    {
      v56 = MEMORY[0x277D80488];
    }

    result = TSD::FillArchive::MergeFrom(v54, v56);
  }

LABEL_152:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_226;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v57 = *(v3 + 168);
    if (!v57)
    {
      v58 = *(v3 + 8);
      if (v58)
      {
        v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
      }

      v57 = MEMORY[0x277C97A80](v58);
      *(v3 + 168) = v57;
    }

    if (*(a2 + 168))
    {
      v59 = *(a2 + 168);
    }

    else
    {
      v59 = MEMORY[0x277D80488];
    }

    result = TSD::FillArchive::MergeFrom(v57, v59);
    if ((v5 & 0x20000) == 0)
    {
LABEL_155:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_156;
      }

      goto LABEL_178;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_155;
  }

  *(v3 + 16) |= 0x20000u;
  v60 = *(v3 + 176);
  if (!v60)
  {
    v61 = *(v3 + 8);
    if (v61)
    {
      v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
    }

    v60 = MEMORY[0x277C97A90](v61);
    *(v3 + 176) = v60;
  }

  if (*(a2 + 176))
  {
    v62 = *(a2 + 176);
  }

  else
  {
    v62 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v60, v62);
  if ((v5 & 0x40000) == 0)
  {
LABEL_156:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_186;
  }

LABEL_178:
  *(v3 + 16) |= 0x40000u;
  v63 = *(v3 + 184);
  if (!v63)
  {
    v64 = *(v3 + 8);
    if (v64)
    {
      v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
    }

    v63 = MEMORY[0x277C97A90](v64);
    *(v3 + 184) = v63;
  }

  if (*(a2 + 184))
  {
    v65 = *(a2 + 184);
  }

  else
  {
    v65 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v63, v65);
  if ((v5 & 0x80000) == 0)
  {
LABEL_157:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_194;
  }

LABEL_186:
  *(v3 + 16) |= 0x80000u;
  v66 = *(v3 + 192);
  if (!v66)
  {
    v67 = *(v3 + 8);
    if (v67)
    {
      v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
    }

    v66 = MEMORY[0x277C97A90](v67);
    *(v3 + 192) = v66;
  }

  if (*(a2 + 192))
  {
    v68 = *(a2 + 192);
  }

  else
  {
    v68 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v66, v68);
  if ((v5 & 0x100000) == 0)
  {
LABEL_158:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_202;
  }

LABEL_194:
  *(v3 + 16) |= 0x100000u;
  v69 = *(v3 + 200);
  if (!v69)
  {
    v70 = *(v3 + 8);
    if (v70)
    {
      v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
    }

    v69 = MEMORY[0x277C97A90](v70);
    *(v3 + 200) = v69;
  }

  if (*(a2 + 200))
  {
    v71 = *(a2 + 200);
  }

  else
  {
    v71 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v69, v71);
  if ((v5 & 0x200000) == 0)
  {
LABEL_159:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_210;
  }

LABEL_202:
  *(v3 + 16) |= 0x200000u;
  v72 = *(v3 + 208);
  if (!v72)
  {
    v73 = *(v3 + 8);
    if (v73)
    {
      v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
    }

    v72 = MEMORY[0x277C97A90](v73);
    *(v3 + 208) = v72;
  }

  if (*(a2 + 208))
  {
    v74 = *(a2 + 208);
  }

  else
  {
    v74 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v72, v74);
  if ((v5 & 0x400000) == 0)
  {
LABEL_160:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_226;
    }

    goto LABEL_218;
  }

LABEL_210:
  *(v3 + 16) |= 0x400000u;
  v75 = *(v3 + 216);
  if (!v75)
  {
    v76 = *(v3 + 8);
    if (v76)
    {
      v76 = *(v76 & 0xFFFFFFFFFFFFFFFELL);
    }

    v75 = MEMORY[0x277C97A90](v76);
    *(v3 + 216) = v75;
  }

  if (*(a2 + 216))
  {
    v77 = *(a2 + 216);
  }

  else
  {
    v77 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v75, v77);
  if ((v5 & 0x800000) != 0)
  {
LABEL_218:
    *(v3 + 16) |= 0x800000u;
    v78 = *(v3 + 224);
    if (!v78)
    {
      v79 = *(v3 + 8);
      if (v79)
      {
        v79 = *(v79 & 0xFFFFFFFFFFFFFFFELL);
      }

      v78 = MEMORY[0x277C97A90](v79);
      *(v3 + 224) = v78;
    }

    if (*(a2 + 224))
    {
      v80 = *(a2 + 224);
    }

    else
    {
      v80 = MEMORY[0x277D80498];
    }

    result = TSD::ShadowArchive::MergeFrom(v78, v80);
  }

LABEL_226:
  if (!HIBYTE(v5))
  {
    goto LABEL_300;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 16) |= 0x1000000u;
    v81 = *(v3 + 232);
    if (!v81)
    {
      v82 = *(v3 + 8);
      if (v82)
      {
        v82 = *(v82 & 0xFFFFFFFFFFFFFFFELL);
      }

      v81 = MEMORY[0x277C97A90](v82);
      *(v3 + 232) = v81;
    }

    if (*(a2 + 232))
    {
      v83 = *(a2 + 232);
    }

    else
    {
      v83 = MEMORY[0x277D80498];
    }

    result = TSD::ShadowArchive::MergeFrom(v81, v83);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_229:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_230;
      }

      goto LABEL_252;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_229;
  }

  *(v3 + 16) |= 0x2000000u;
  v84 = *(v3 + 240);
  if (!v84)
  {
    v85 = *(v3 + 8);
    if (v85)
    {
      v85 = *(v85 & 0xFFFFFFFFFFFFFFFELL);
    }

    v84 = MEMORY[0x277C97A90](v85);
    *(v3 + 240) = v84;
  }

  if (*(a2 + 240))
  {
    v86 = *(a2 + 240);
  }

  else
  {
    v86 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v84, v86);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_230:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_231;
    }

    goto LABEL_260;
  }

LABEL_252:
  *(v3 + 16) |= 0x4000000u;
  v87 = *(v3 + 248);
  if (!v87)
  {
    v88 = *(v3 + 8);
    if (v88)
    {
      v88 = *(v88 & 0xFFFFFFFFFFFFFFFELL);
    }

    v87 = MEMORY[0x277C97A90](v88);
    *(v3 + 248) = v87;
  }

  if (*(a2 + 248))
  {
    v89 = *(a2 + 248);
  }

  else
  {
    v89 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v87, v89);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_231:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_268;
  }

LABEL_260:
  *(v3 + 16) |= 0x8000000u;
  v90 = *(v3 + 256);
  if (!v90)
  {
    v91 = *(v3 + 8);
    if (v91)
    {
      v91 = *(v91 & 0xFFFFFFFFFFFFFFFELL);
    }

    v90 = MEMORY[0x277C97A90](v91);
    *(v3 + 256) = v90;
  }

  if (*(a2 + 256))
  {
    v92 = *(a2 + 256);
  }

  else
  {
    v92 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v90, v92);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_232:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_276;
  }

LABEL_268:
  *(v3 + 16) |= 0x10000000u;
  v93 = *(v3 + 264);
  if (!v93)
  {
    v94 = *(v3 + 8);
    if (v94)
    {
      v94 = *(v94 & 0xFFFFFFFFFFFFFFFELL);
    }

    v93 = MEMORY[0x277C97A90](v94);
    *(v3 + 264) = v93;
  }

  if (*(a2 + 264))
  {
    v95 = *(a2 + 264);
  }

  else
  {
    v95 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v93, v95);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_233:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_234;
    }

    goto LABEL_284;
  }

LABEL_276:
  *(v3 + 16) |= 0x20000000u;
  v96 = *(v3 + 272);
  if (!v96)
  {
    v97 = *(v3 + 8);
    if (v97)
    {
      v97 = *(v97 & 0xFFFFFFFFFFFFFFFELL);
    }

    v96 = MEMORY[0x277C97A90](v97);
    *(v3 + 272) = v96;
  }

  if (*(a2 + 272))
  {
    v98 = *(a2 + 272);
  }

  else
  {
    v98 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v96, v98);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_234:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_300;
    }

    goto LABEL_292;
  }

LABEL_284:
  *(v3 + 16) |= 0x40000000u;
  v99 = *(v3 + 280);
  if (!v99)
  {
    v100 = *(v3 + 8);
    if (v100)
    {
      v100 = *(v100 & 0xFFFFFFFFFFFFFFFELL);
    }

    v99 = MEMORY[0x277C97A90](v100);
    *(v3 + 280) = v99;
  }

  if (*(a2 + 280))
  {
    v101 = *(a2 + 280);
  }

  else
  {
    v101 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v99, v101);
  if ((v5 & 0x80000000) != 0)
  {
LABEL_292:
    *(v3 + 16) |= 0x80000000;
    v102 = *(v3 + 288);
    if (!v102)
    {
      v103 = *(v3 + 8);
      if (v103)
      {
        v103 = *(v103 & 0xFFFFFFFFFFFFFFFELL);
      }

      v102 = MEMORY[0x277C97A90](v103);
      *(v3 + 288) = v102;
    }

    if (*(a2 + 288))
    {
      v104 = *(a2 + 288);
    }

    else
    {
      v104 = MEMORY[0x277D80498];
    }

    result = TSD::ShadowArchive::MergeFrom(v102, v104);
  }

LABEL_300:
  v105 = *(a2 + 20);
  if (!v105)
  {
    goto LABEL_374;
  }

  if (v105)
  {
    *(v3 + 20) |= 1u;
    v106 = *(v3 + 296);
    if (!v106)
    {
      v107 = *(v3 + 8);
      if (v107)
      {
        v107 = *(v107 & 0xFFFFFFFFFFFFFFFELL);
      }

      v106 = MEMORY[0x277C97AA0](v107);
      *(v3 + 296) = v106;
    }

    if (*(a2 + 296))
    {
      v108 = *(a2 + 296);
    }

    else
    {
      v108 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v106, v108);
    if ((v105 & 2) == 0)
    {
LABEL_303:
      if ((v105 & 4) == 0)
      {
        goto LABEL_304;
      }

      goto LABEL_326;
    }
  }

  else if ((v105 & 2) == 0)
  {
    goto LABEL_303;
  }

  *(v3 + 20) |= 2u;
  v109 = *(v3 + 304);
  if (!v109)
  {
    v110 = *(v3 + 8);
    if (v110)
    {
      v110 = *(v110 & 0xFFFFFFFFFFFFFFFELL);
    }

    v109 = MEMORY[0x277C97AA0](v110);
    *(v3 + 304) = v109;
  }

  if (*(a2 + 304))
  {
    v111 = *(a2 + 304);
  }

  else
  {
    v111 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v109, v111);
  if ((v105 & 4) == 0)
  {
LABEL_304:
    if ((v105 & 8) == 0)
    {
      goto LABEL_305;
    }

    goto LABEL_334;
  }

LABEL_326:
  *(v3 + 20) |= 4u;
  v112 = *(v3 + 312);
  if (!v112)
  {
    v113 = *(v3 + 8);
    if (v113)
    {
      v113 = *(v113 & 0xFFFFFFFFFFFFFFFELL);
    }

    v112 = MEMORY[0x277C97AA0](v113);
    *(v3 + 312) = v112;
  }

  if (*(a2 + 312))
  {
    v114 = *(a2 + 312);
  }

  else
  {
    v114 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v112, v114);
  if ((v105 & 8) == 0)
  {
LABEL_305:
    if ((v105 & 0x10) == 0)
    {
      goto LABEL_306;
    }

    goto LABEL_342;
  }

LABEL_334:
  *(v3 + 20) |= 8u;
  v115 = *(v3 + 320);
  if (!v115)
  {
    v116 = *(v3 + 8);
    if (v116)
    {
      v116 = *(v116 & 0xFFFFFFFFFFFFFFFELL);
    }

    v115 = MEMORY[0x277C97AA0](v116);
    *(v3 + 320) = v115;
  }

  if (*(a2 + 320))
  {
    v117 = *(a2 + 320);
  }

  else
  {
    v117 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v115, v117);
  if ((v105 & 0x10) == 0)
  {
LABEL_306:
    if ((v105 & 0x20) == 0)
    {
      goto LABEL_307;
    }

    goto LABEL_350;
  }

LABEL_342:
  *(v3 + 20) |= 0x10u;
  v118 = *(v3 + 328);
  if (!v118)
  {
    v119 = *(v3 + 8);
    if (v119)
    {
      v119 = *(v119 & 0xFFFFFFFFFFFFFFFELL);
    }

    v118 = MEMORY[0x277C97AA0](v119);
    *(v3 + 328) = v118;
  }

  if (*(a2 + 328))
  {
    v120 = *(a2 + 328);
  }

  else
  {
    v120 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v118, v120);
  if ((v105 & 0x20) == 0)
  {
LABEL_307:
    if ((v105 & 0x40) == 0)
    {
      goto LABEL_308;
    }

    goto LABEL_358;
  }

LABEL_350:
  *(v3 + 20) |= 0x20u;
  v121 = *(v3 + 336);
  if (!v121)
  {
    v122 = *(v3 + 8);
    if (v122)
    {
      v122 = *(v122 & 0xFFFFFFFFFFFFFFFELL);
    }

    v121 = MEMORY[0x277C97AA0](v122);
    *(v3 + 336) = v121;
  }

  if (*(a2 + 336))
  {
    v123 = *(a2 + 336);
  }

  else
  {
    v123 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v121, v123);
  if ((v105 & 0x40) == 0)
  {
LABEL_308:
    if ((v105 & 0x80) == 0)
    {
      goto LABEL_374;
    }

    goto LABEL_366;
  }

LABEL_358:
  *(v3 + 20) |= 0x40u;
  v124 = *(v3 + 344);
  if (!v124)
  {
    v125 = *(v3 + 8);
    if (v125)
    {
      v125 = *(v125 & 0xFFFFFFFFFFFFFFFELL);
    }

    v124 = MEMORY[0x277C97AA0](v125);
    *(v3 + 344) = v124;
  }

  if (*(a2 + 344))
  {
    v126 = *(a2 + 344);
  }

  else
  {
    v126 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v124, v126);
  if ((v105 & 0x80) != 0)
  {
LABEL_366:
    *(v3 + 20) |= 0x80u;
    v127 = *(v3 + 352);
    if (!v127)
    {
      v128 = *(v3 + 8);
      if (v128)
      {
        v128 = *(v128 & 0xFFFFFFFFFFFFFFFELL);
      }

      v127 = MEMORY[0x277C97AA0](v128);
      *(v3 + 352) = v127;
    }

    if (*(a2 + 352))
    {
      v129 = *(a2 + 352);
    }

    else
    {
      v129 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v127, v129);
  }

LABEL_374:
  if ((v105 & 0xFF00) == 0)
  {
    goto LABEL_448;
  }

  if ((v105 & 0x100) != 0)
  {
    *(v3 + 20) |= 0x100u;
    v130 = *(v3 + 360);
    if (!v130)
    {
      v131 = *(v3 + 8);
      if (v131)
      {
        v131 = *(v131 & 0xFFFFFFFFFFFFFFFELL);
      }

      v130 = MEMORY[0x277C97AA0](v131);
      *(v3 + 360) = v130;
    }

    if (*(a2 + 360))
    {
      v132 = *(a2 + 360);
    }

    else
    {
      v132 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v130, v132);
    if ((v105 & 0x200) == 0)
    {
LABEL_377:
      if ((v105 & 0x400) == 0)
      {
        goto LABEL_378;
      }

      goto LABEL_400;
    }
  }

  else if ((v105 & 0x200) == 0)
  {
    goto LABEL_377;
  }

  *(v3 + 20) |= 0x200u;
  v133 = *(v3 + 368);
  if (!v133)
  {
    v134 = *(v3 + 8);
    if (v134)
    {
      v134 = *(v134 & 0xFFFFFFFFFFFFFFFELL);
    }

    v133 = MEMORY[0x277C97A80](v134);
    *(v3 + 368) = v133;
  }

  if (*(a2 + 368))
  {
    v135 = *(a2 + 368);
  }

  else
  {
    v135 = MEMORY[0x277D80488];
  }

  result = TSD::FillArchive::MergeFrom(v133, v135);
  if ((v105 & 0x400) == 0)
  {
LABEL_378:
    if ((v105 & 0x800) == 0)
    {
      goto LABEL_379;
    }

    goto LABEL_408;
  }

LABEL_400:
  *(v3 + 20) |= 0x400u;
  v136 = *(v3 + 376);
  if (!v136)
  {
    v137 = *(v3 + 8);
    if (v137)
    {
      v137 = *(v137 & 0xFFFFFFFFFFFFFFFELL);
    }

    v136 = MEMORY[0x277C97A80](v137);
    *(v3 + 376) = v136;
  }

  if (*(a2 + 376))
  {
    v138 = *(a2 + 376);
  }

  else
  {
    v138 = MEMORY[0x277D80488];
  }

  result = TSD::FillArchive::MergeFrom(v136, v138);
  if ((v105 & 0x800) == 0)
  {
LABEL_379:
    if ((v105 & 0x1000) == 0)
    {
      goto LABEL_380;
    }

    goto LABEL_416;
  }

LABEL_408:
  *(v3 + 20) |= 0x800u;
  v139 = *(v3 + 384);
  if (!v139)
  {
    v140 = *(v3 + 8);
    if (v140)
    {
      v140 = *(v140 & 0xFFFFFFFFFFFFFFFELL);
    }

    v139 = MEMORY[0x277C97A80](v140);
    *(v3 + 384) = v139;
  }

  if (*(a2 + 384))
  {
    v141 = *(a2 + 384);
  }

  else
  {
    v141 = MEMORY[0x277D80488];
  }

  result = TSD::FillArchive::MergeFrom(v139, v141);
  if ((v105 & 0x1000) == 0)
  {
LABEL_380:
    if ((v105 & 0x2000) == 0)
    {
      goto LABEL_381;
    }

    goto LABEL_424;
  }

LABEL_416:
  *(v3 + 20) |= 0x1000u;
  v142 = *(v3 + 392);
  if (!v142)
  {
    v143 = *(v3 + 8);
    if (v143)
    {
      v143 = *(v143 & 0xFFFFFFFFFFFFFFFELL);
    }

    v142 = MEMORY[0x277C97A80](v143);
    *(v3 + 392) = v142;
  }

  if (*(a2 + 392))
  {
    v144 = *(a2 + 392);
  }

  else
  {
    v144 = MEMORY[0x277D80488];
  }

  result = TSD::FillArchive::MergeFrom(v142, v144);
  if ((v105 & 0x2000) == 0)
  {
LABEL_381:
    if ((v105 & 0x4000) == 0)
    {
      goto LABEL_382;
    }

    goto LABEL_432;
  }

LABEL_424:
  *(v3 + 20) |= 0x2000u;
  v145 = *(v3 + 400);
  if (!v145)
  {
    v146 = *(v3 + 8);
    if (v146)
    {
      v146 = *(v146 & 0xFFFFFFFFFFFFFFFELL);
    }

    v145 = MEMORY[0x277C97A80](v146);
    *(v3 + 400) = v145;
  }

  if (*(a2 + 400))
  {
    v147 = *(a2 + 400);
  }

  else
  {
    v147 = MEMORY[0x277D80488];
  }

  result = TSD::FillArchive::MergeFrom(v145, v147);
  if ((v105 & 0x4000) == 0)
  {
LABEL_382:
    if ((v105 & 0x8000) == 0)
    {
      goto LABEL_448;
    }

    goto LABEL_440;
  }

LABEL_432:
  *(v3 + 20) |= 0x4000u;
  v148 = *(v3 + 408);
  if (!v148)
  {
    v149 = *(v3 + 8);
    if (v149)
    {
      v149 = *(v149 & 0xFFFFFFFFFFFFFFFELL);
    }

    v148 = MEMORY[0x277C97A80](v149);
    *(v3 + 408) = v148;
  }

  if (*(a2 + 408))
  {
    v150 = *(a2 + 408);
  }

  else
  {
    v150 = MEMORY[0x277D80488];
  }

  result = TSD::FillArchive::MergeFrom(v148, v150);
  if ((v105 & 0x8000) != 0)
  {
LABEL_440:
    *(v3 + 20) |= 0x8000u;
    v151 = *(v3 + 416);
    if (!v151)
    {
      v152 = *(v3 + 8);
      if (v152)
      {
        v152 = *(v152 & 0xFFFFFFFFFFFFFFFELL);
      }

      v151 = MEMORY[0x277C97AA0](v152);
      *(v3 + 416) = v151;
    }

    if (*(a2 + 416))
    {
      v153 = *(a2 + 416);
    }

    else
    {
      v153 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v151, v153);
  }

LABEL_448:
  if ((v105 & 0xFF0000) == 0)
  {
    goto LABEL_522;
  }

  if ((v105 & 0x10000) != 0)
  {
    *(v3 + 20) |= 0x10000u;
    v154 = *(v3 + 424);
    if (!v154)
    {
      v155 = *(v3 + 8);
      if (v155)
      {
        v155 = *(v155 & 0xFFFFFFFFFFFFFFFELL);
      }

      v154 = MEMORY[0x277C97AA0](v155);
      *(v3 + 424) = v154;
    }

    if (*(a2 + 424))
    {
      v156 = *(a2 + 424);
    }

    else
    {
      v156 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v154, v156);
    if ((v105 & 0x20000) == 0)
    {
LABEL_451:
      if ((v105 & 0x40000) == 0)
      {
        goto LABEL_452;
      }

      goto LABEL_474;
    }
  }

  else if ((v105 & 0x20000) == 0)
  {
    goto LABEL_451;
  }

  *(v3 + 20) |= 0x20000u;
  v157 = *(v3 + 432);
  if (!v157)
  {
    v158 = *(v3 + 8);
    if (v158)
    {
      v158 = *(v158 & 0xFFFFFFFFFFFFFFFELL);
    }

    v157 = MEMORY[0x277C97AA0](v158);
    *(v3 + 432) = v157;
  }

  if (*(a2 + 432))
  {
    v159 = *(a2 + 432);
  }

  else
  {
    v159 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v157, v159);
  if ((v105 & 0x40000) == 0)
  {
LABEL_452:
    if ((v105 & 0x80000) == 0)
    {
      goto LABEL_453;
    }

    goto LABEL_482;
  }

LABEL_474:
  *(v3 + 20) |= 0x40000u;
  v160 = *(v3 + 440);
  if (!v160)
  {
    v161 = *(v3 + 8);
    if (v161)
    {
      v161 = *(v161 & 0xFFFFFFFFFFFFFFFELL);
    }

    v160 = MEMORY[0x277C97AA0](v161);
    *(v3 + 440) = v160;
  }

  if (*(a2 + 440))
  {
    v162 = *(a2 + 440);
  }

  else
  {
    v162 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v160, v162);
  if ((v105 & 0x80000) == 0)
  {
LABEL_453:
    if ((v105 & 0x100000) == 0)
    {
      goto LABEL_454;
    }

    goto LABEL_490;
  }

LABEL_482:
  *(v3 + 20) |= 0x80000u;
  v163 = *(v3 + 448);
  if (!v163)
  {
    v164 = *(v3 + 8);
    if (v164)
    {
      v164 = *(v164 & 0xFFFFFFFFFFFFFFFELL);
    }

    v163 = MEMORY[0x277C97AA0](v164);
    *(v3 + 448) = v163;
  }

  if (*(a2 + 448))
  {
    v165 = *(a2 + 448);
  }

  else
  {
    v165 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v163, v165);
  if ((v105 & 0x100000) == 0)
  {
LABEL_454:
    if ((v105 & 0x200000) == 0)
    {
      goto LABEL_455;
    }

    goto LABEL_498;
  }

LABEL_490:
  *(v3 + 20) |= 0x100000u;
  v166 = *(v3 + 456);
  if (!v166)
  {
    v167 = *(v3 + 8);
    if (v167)
    {
      v167 = *(v167 & 0xFFFFFFFFFFFFFFFELL);
    }

    v166 = MEMORY[0x277C97AA0](v167);
    *(v3 + 456) = v166;
  }

  if (*(a2 + 456))
  {
    v168 = *(a2 + 456);
  }

  else
  {
    v168 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v166, v168);
  if ((v105 & 0x200000) == 0)
  {
LABEL_455:
    if ((v105 & 0x400000) == 0)
    {
      goto LABEL_456;
    }

    goto LABEL_506;
  }

LABEL_498:
  *(v3 + 20) |= 0x200000u;
  v169 = *(v3 + 464);
  if (!v169)
  {
    v170 = *(v3 + 8);
    if (v170)
    {
      v170 = *(v170 & 0xFFFFFFFFFFFFFFFELL);
    }

    v169 = MEMORY[0x277C97A90](v170);
    *(v3 + 464) = v169;
  }

  if (*(a2 + 464))
  {
    v171 = *(a2 + 464);
  }

  else
  {
    v171 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v169, v171);
  if ((v105 & 0x400000) == 0)
  {
LABEL_456:
    if ((v105 & 0x800000) == 0)
    {
      goto LABEL_522;
    }

    goto LABEL_514;
  }

LABEL_506:
  *(v3 + 20) |= 0x400000u;
  v172 = *(v3 + 472);
  if (!v172)
  {
    v173 = *(v3 + 8);
    if (v173)
    {
      v173 = *(v173 & 0xFFFFFFFFFFFFFFFELL);
    }

    v172 = MEMORY[0x277C97AA0](v173);
    *(v3 + 472) = v172;
  }

  if (*(a2 + 472))
  {
    v174 = *(a2 + 472);
  }

  else
  {
    v174 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v172, v174);
  if ((v105 & 0x800000) != 0)
  {
LABEL_514:
    *(v3 + 20) |= 0x800000u;
    v175 = *(v3 + 480);
    if (!v175)
    {
      v176 = *(v3 + 8);
      if (v176)
      {
        v176 = *(v176 & 0xFFFFFFFFFFFFFFFELL);
      }

      v175 = MEMORY[0x277C97AA0](v176);
      *(v3 + 480) = v175;
    }

    if (*(a2 + 480))
    {
      v177 = *(a2 + 480);
    }

    else
    {
      v177 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v175, v177);
  }

LABEL_522:
  if (!HIBYTE(v105))
  {
    goto LABEL_532;
  }

  if ((v105 & 0x1000000) != 0)
  {
    *(v3 + 20) |= 0x1000000u;
    v180 = *(v3 + 488);
    if (!v180)
    {
      v181 = *(v3 + 8);
      if (v181)
      {
        v181 = *(v181 & 0xFFFFFFFFFFFFFFFELL);
      }

      v180 = MEMORY[0x277C97AB0](v181);
      *(v3 + 488) = v180;
    }

    if (*(a2 + 488))
    {
      v182 = *(a2 + 488);
    }

    else
    {
      v182 = MEMORY[0x277D804A8];
    }

    result = TSD::LineEndArchive::MergeFrom(v180, v182);
    if ((v105 & 0x2000000) == 0)
    {
LABEL_525:
      if ((v105 & 0x4000000) == 0)
      {
        goto LABEL_526;
      }

      goto LABEL_669;
    }
  }

  else if ((v105 & 0x2000000) == 0)
  {
    goto LABEL_525;
  }

  *(v3 + 20) |= 0x2000000u;
  v183 = *(v3 + 496);
  if (!v183)
  {
    v184 = *(v3 + 8);
    if (v184)
    {
      v184 = *(v184 & 0xFFFFFFFFFFFFFFFELL);
    }

    v183 = MEMORY[0x277C97AB0](v184);
    *(v3 + 496) = v183;
  }

  if (*(a2 + 496))
  {
    v185 = *(a2 + 496);
  }

  else
  {
    v185 = MEMORY[0x277D804A8];
  }

  result = TSD::LineEndArchive::MergeFrom(v183, v185);
  if ((v105 & 0x4000000) == 0)
  {
LABEL_526:
    if ((v105 & 0x8000000) == 0)
    {
      goto LABEL_527;
    }

    goto LABEL_677;
  }

LABEL_669:
  *(v3 + 20) |= 0x4000000u;
  v186 = *(v3 + 504);
  if (!v186)
  {
    v187 = *(v3 + 8);
    if (v187)
    {
      v187 = *(v187 & 0xFFFFFFFFFFFFFFFELL);
    }

    v186 = MEMORY[0x277C97A80](v187);
    *(v3 + 504) = v186;
  }

  if (*(a2 + 504))
  {
    v188 = *(a2 + 504);
  }

  else
  {
    v188 = MEMORY[0x277D80488];
  }

  result = TSD::FillArchive::MergeFrom(v186, v188);
  if ((v105 & 0x8000000) == 0)
  {
LABEL_527:
    if ((v105 & 0x10000000) == 0)
    {
      goto LABEL_528;
    }

    goto LABEL_685;
  }

LABEL_677:
  *(v3 + 20) |= 0x8000000u;
  v189 = *(v3 + 512);
  if (!v189)
  {
    v190 = *(v3 + 8);
    if (v190)
    {
      v190 = *(v190 & 0xFFFFFFFFFFFFFFFELL);
    }

    v189 = MEMORY[0x277C97A90](v190);
    *(v3 + 512) = v189;
  }

  if (*(a2 + 512))
  {
    v191 = *(a2 + 512);
  }

  else
  {
    v191 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v189, v191);
  if ((v105 & 0x10000000) == 0)
  {
LABEL_528:
    if ((v105 & 0x20000000) == 0)
    {
      goto LABEL_529;
    }

    goto LABEL_693;
  }

LABEL_685:
  *(v3 + 20) |= 0x10000000u;
  v192 = *(v3 + 520);
  if (!v192)
  {
    v193 = *(v3 + 8);
    if (v193)
    {
      v193 = *(v193 & 0xFFFFFFFFFFFFFFFELL);
    }

    v192 = MEMORY[0x277C97AA0](v193);
    *(v3 + 520) = v192;
  }

  if (*(a2 + 520))
  {
    v194 = *(a2 + 520);
  }

  else
  {
    v194 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v192, v194);
  if ((v105 & 0x20000000) == 0)
  {
LABEL_529:
    if ((v105 & 0x40000000) == 0)
    {
      goto LABEL_530;
    }

LABEL_701:
    *(v3 + 20) |= 0x40000000u;
    v198 = *(v3 + 536);
    if (!v198)
    {
      v199 = *(v3 + 8);
      if (v199)
      {
        v199 = *(v199 & 0xFFFFFFFFFFFFFFFELL);
      }

      v198 = MEMORY[0x277C97AA0](v199);
      *(v3 + 536) = v198;
    }

    if (*(a2 + 536))
    {
      v200 = *(a2 + 536);
    }

    else
    {
      v200 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v198, v200);
    if ((v105 & 0x80000000) == 0)
    {
      goto LABEL_531;
    }

    goto LABEL_709;
  }

LABEL_693:
  *(v3 + 20) |= 0x20000000u;
  v195 = *(v3 + 528);
  if (!v195)
  {
    v196 = *(v3 + 8);
    if (v196)
    {
      v196 = *(v196 & 0xFFFFFFFFFFFFFFFELL);
    }

    v195 = MEMORY[0x277C97A80](v196);
    *(v3 + 528) = v195;
  }

  if (*(a2 + 528))
  {
    v197 = *(a2 + 528);
  }

  else
  {
    v197 = MEMORY[0x277D80488];
  }

  result = TSD::FillArchive::MergeFrom(v195, v197);
  if ((v105 & 0x40000000) != 0)
  {
    goto LABEL_701;
  }

LABEL_530:
  if ((v105 & 0x80000000) != 0)
  {
LABEL_709:
    *(v3 + 544) = *(a2 + 544);
  }

LABEL_531:
  *(v3 + 20) |= v105;
LABEL_532:
  v178 = *(a2 + 24);
  if (!v178)
  {
    goto LABEL_543;
  }

  if (v178)
  {
    *(v3 + 548) = *(a2 + 548);
    if ((v178 & 2) == 0)
    {
LABEL_535:
      if ((v178 & 4) == 0)
      {
        goto LABEL_536;
      }

      goto LABEL_609;
    }
  }

  else if ((v178 & 2) == 0)
  {
    goto LABEL_535;
  }

  *(v3 + 552) = *(a2 + 552);
  if ((v178 & 4) == 0)
  {
LABEL_536:
    if ((v178 & 8) == 0)
    {
      goto LABEL_537;
    }

    goto LABEL_610;
  }

LABEL_609:
  *(v3 + 556) = *(a2 + 556);
  if ((v178 & 8) == 0)
  {
LABEL_537:
    if ((v178 & 0x10) == 0)
    {
      goto LABEL_538;
    }

    goto LABEL_611;
  }

LABEL_610:
  *(v3 + 560) = *(a2 + 560);
  if ((v178 & 0x10) == 0)
  {
LABEL_538:
    if ((v178 & 0x20) == 0)
    {
      goto LABEL_539;
    }

    goto LABEL_612;
  }

LABEL_611:
  *(v3 + 564) = *(a2 + 564);
  if ((v178 & 0x20) == 0)
  {
LABEL_539:
    if ((v178 & 0x40) == 0)
    {
      goto LABEL_540;
    }

LABEL_613:
    *(v3 + 572) = *(a2 + 572);
    if ((v178 & 0x80) == 0)
    {
      goto LABEL_542;
    }

    goto LABEL_541;
  }

LABEL_612:
  *(v3 + 568) = *(a2 + 568);
  if ((v178 & 0x40) != 0)
  {
    goto LABEL_613;
  }

LABEL_540:
  if ((v178 & 0x80) != 0)
  {
LABEL_541:
    *(v3 + 576) = *(a2 + 576);
  }

LABEL_542:
  *(v3 + 24) |= v178;
LABEL_543:
  if ((v178 & 0xFF00) == 0)
  {
    goto LABEL_554;
  }

  if ((v178 & 0x100) != 0)
  {
    *(v3 + 580) = *(a2 + 580);
    if ((v178 & 0x200) == 0)
    {
LABEL_546:
      if ((v178 & 0x400) == 0)
      {
        goto LABEL_547;
      }

      goto LABEL_617;
    }
  }

  else if ((v178 & 0x200) == 0)
  {
    goto LABEL_546;
  }

  *(v3 + 584) = *(a2 + 584);
  if ((v178 & 0x400) == 0)
  {
LABEL_547:
    if ((v178 & 0x800) == 0)
    {
      goto LABEL_548;
    }

    goto LABEL_618;
  }

LABEL_617:
  *(v3 + 588) = *(a2 + 588);
  if ((v178 & 0x800) == 0)
  {
LABEL_548:
    if ((v178 & 0x1000) == 0)
    {
      goto LABEL_549;
    }

    goto LABEL_619;
  }

LABEL_618:
  *(v3 + 592) = *(a2 + 592);
  if ((v178 & 0x1000) == 0)
  {
LABEL_549:
    if ((v178 & 0x2000) == 0)
    {
      goto LABEL_550;
    }

    goto LABEL_620;
  }

LABEL_619:
  *(v3 + 596) = *(a2 + 596);
  if ((v178 & 0x2000) == 0)
  {
LABEL_550:
    if ((v178 & 0x4000) == 0)
    {
      goto LABEL_551;
    }

LABEL_621:
    *(v3 + 604) = *(a2 + 604);
    if ((v178 & 0x8000) == 0)
    {
      goto LABEL_553;
    }

    goto LABEL_552;
  }

LABEL_620:
  *(v3 + 600) = *(a2 + 600);
  if ((v178 & 0x4000) != 0)
  {
    goto LABEL_621;
  }

LABEL_551:
  if ((v178 & 0x8000) != 0)
  {
LABEL_552:
    *(v3 + 608) = *(a2 + 608);
  }

LABEL_553:
  *(v3 + 24) |= v178;
LABEL_554:
  if ((v178 & 0xFF0000) == 0)
  {
    goto LABEL_565;
  }

  if ((v178 & 0x10000) != 0)
  {
    *(v3 + 612) = *(a2 + 612);
    if ((v178 & 0x20000) == 0)
    {
LABEL_557:
      if ((v178 & 0x40000) == 0)
      {
        goto LABEL_558;
      }

      goto LABEL_625;
    }
  }

  else if ((v178 & 0x20000) == 0)
  {
    goto LABEL_557;
  }

  *(v3 + 616) = *(a2 + 616);
  if ((v178 & 0x40000) == 0)
  {
LABEL_558:
    if ((v178 & 0x80000) == 0)
    {
      goto LABEL_559;
    }

    goto LABEL_626;
  }

LABEL_625:
  *(v3 + 620) = *(a2 + 620);
  if ((v178 & 0x80000) == 0)
  {
LABEL_559:
    if ((v178 & 0x100000) == 0)
    {
      goto LABEL_560;
    }

    goto LABEL_627;
  }

LABEL_626:
  *(v3 + 624) = *(a2 + 624);
  if ((v178 & 0x100000) == 0)
  {
LABEL_560:
    if ((v178 & 0x200000) == 0)
    {
      goto LABEL_561;
    }

    goto LABEL_628;
  }

LABEL_627:
  *(v3 + 628) = *(a2 + 628);
  if ((v178 & 0x200000) == 0)
  {
LABEL_561:
    if ((v178 & 0x400000) == 0)
    {
      goto LABEL_562;
    }

LABEL_629:
    *(v3 + 636) = *(a2 + 636);
    if ((v178 & 0x800000) == 0)
    {
      goto LABEL_564;
    }

    goto LABEL_563;
  }

LABEL_628:
  *(v3 + 632) = *(a2 + 632);
  if ((v178 & 0x400000) != 0)
  {
    goto LABEL_629;
  }

LABEL_562:
  if ((v178 & 0x800000) != 0)
  {
LABEL_563:
    *(v3 + 640) = *(a2 + 640);
  }

LABEL_564:
  *(v3 + 24) |= v178;
LABEL_565:
  if (!HIBYTE(v178))
  {
    goto LABEL_575;
  }

  if ((v178 & 0x1000000) != 0)
  {
    *(v3 + 644) = *(a2 + 644);
    if ((v178 & 0x2000000) == 0)
    {
LABEL_568:
      if ((v178 & 0x4000000) == 0)
      {
        goto LABEL_569;
      }

      goto LABEL_712;
    }
  }

  else if ((v178 & 0x2000000) == 0)
  {
    goto LABEL_568;
  }

  *(v3 + 648) = *(a2 + 648);
  if ((v178 & 0x4000000) == 0)
  {
LABEL_569:
    if ((v178 & 0x8000000) == 0)
    {
      goto LABEL_570;
    }

    goto LABEL_713;
  }

LABEL_712:
  *(v3 + 652) = *(a2 + 652);
  if ((v178 & 0x8000000) == 0)
  {
LABEL_570:
    if ((v178 & 0x10000000) == 0)
    {
      goto LABEL_571;
    }

    goto LABEL_714;
  }

LABEL_713:
  *(v3 + 656) = *(a2 + 656);
  if ((v178 & 0x10000000) == 0)
  {
LABEL_571:
    if ((v178 & 0x20000000) == 0)
    {
      goto LABEL_572;
    }

    goto LABEL_715;
  }

LABEL_714:
  *(v3 + 657) = *(a2 + 657);
  if ((v178 & 0x20000000) == 0)
  {
LABEL_572:
    if ((v178 & 0x40000000) == 0)
    {
      goto LABEL_573;
    }

LABEL_716:
    *(v3 + 659) = *(a2 + 659);
    if ((v178 & 0x80000000) == 0)
    {
      goto LABEL_574;
    }

LABEL_717:
    *(v3 + 660) = *(a2 + 660);
    goto LABEL_574;
  }

LABEL_715:
  *(v3 + 658) = *(a2 + 658);
  if ((v178 & 0x40000000) != 0)
  {
    goto LABEL_716;
  }

LABEL_573:
  if ((v178 & 0x80000000) != 0)
  {
    goto LABEL_717;
  }

LABEL_574:
  *(v3 + 24) |= v178;
LABEL_575:
  v179 = *(a2 + 28);
  if (!v179)
  {
    goto LABEL_586;
  }

  if (v179)
  {
    *(v3 + 661) = *(a2 + 661);
    if ((v179 & 2) == 0)
    {
LABEL_578:
      if ((v179 & 4) == 0)
      {
        goto LABEL_579;
      }

      goto LABEL_633;
    }
  }

  else if ((v179 & 2) == 0)
  {
    goto LABEL_578;
  }

  *(v3 + 662) = *(a2 + 662);
  if ((v179 & 4) == 0)
  {
LABEL_579:
    if ((v179 & 8) == 0)
    {
      goto LABEL_580;
    }

    goto LABEL_634;
  }

LABEL_633:
  *(v3 + 663) = *(a2 + 663);
  if ((v179 & 8) == 0)
  {
LABEL_580:
    if ((v179 & 0x10) == 0)
    {
      goto LABEL_581;
    }

    goto LABEL_635;
  }

LABEL_634:
  *(v3 + 664) = *(a2 + 664);
  if ((v179 & 0x10) == 0)
  {
LABEL_581:
    if ((v179 & 0x20) == 0)
    {
      goto LABEL_582;
    }

    goto LABEL_636;
  }

LABEL_635:
  *(v3 + 668) = *(a2 + 668);
  if ((v179 & 0x20) == 0)
  {
LABEL_582:
    if ((v179 & 0x40) == 0)
    {
      goto LABEL_583;
    }

LABEL_637:
    *(v3 + 676) = *(a2 + 676);
    if ((v179 & 0x80) == 0)
    {
      goto LABEL_585;
    }

    goto LABEL_584;
  }

LABEL_636:
  *(v3 + 672) = *(a2 + 672);
  if ((v179 & 0x40) != 0)
  {
    goto LABEL_637;
  }

LABEL_583:
  if ((v179 & 0x80) != 0)
  {
LABEL_584:
    *(v3 + 677) = *(a2 + 677);
  }

LABEL_585:
  *(v3 + 28) |= v179;
LABEL_586:
  if ((v179 & 0xFF00) == 0)
  {
    goto LABEL_597;
  }

  if ((v179 & 0x100) != 0)
  {
    *(v3 + 678) = *(a2 + 678);
    if ((v179 & 0x200) == 0)
    {
LABEL_589:
      if ((v179 & 0x400) == 0)
      {
        goto LABEL_590;
      }

      goto LABEL_641;
    }
  }

  else if ((v179 & 0x200) == 0)
  {
    goto LABEL_589;
  }

  *(v3 + 679) = *(a2 + 679);
  if ((v179 & 0x400) == 0)
  {
LABEL_590:
    if ((v179 & 0x800) == 0)
    {
      goto LABEL_591;
    }

    goto LABEL_642;
  }

LABEL_641:
  *(v3 + 680) = *(a2 + 680);
  if ((v179 & 0x800) == 0)
  {
LABEL_591:
    if ((v179 & 0x1000) == 0)
    {
      goto LABEL_592;
    }

    goto LABEL_643;
  }

LABEL_642:
  *(v3 + 684) = *(a2 + 684);
  if ((v179 & 0x1000) == 0)
  {
LABEL_592:
    if ((v179 & 0x2000) == 0)
    {
      goto LABEL_593;
    }

    goto LABEL_644;
  }

LABEL_643:
  *(v3 + 688) = *(a2 + 688);
  if ((v179 & 0x2000) == 0)
  {
LABEL_593:
    if ((v179 & 0x4000) == 0)
    {
      goto LABEL_594;
    }

LABEL_645:
    *(v3 + 696) = *(a2 + 696);
    if ((v179 & 0x8000) == 0)
    {
      goto LABEL_596;
    }

    goto LABEL_595;
  }

LABEL_644:
  *(v3 + 692) = *(a2 + 692);
  if ((v179 & 0x4000) != 0)
  {
    goto LABEL_645;
  }

LABEL_594:
  if ((v179 & 0x8000) != 0)
  {
LABEL_595:
    *(v3 + 700) = *(a2 + 700);
  }

LABEL_596:
  *(v3 + 28) |= v179;
LABEL_597:
  if ((v179 & 0x3F0000) == 0)
  {
    return result;
  }

  if ((v179 & 0x10000) != 0)
  {
    *(v3 + 704) = *(a2 + 704);
    if ((v179 & 0x20000) == 0)
    {
LABEL_600:
      if ((v179 & 0x40000) == 0)
      {
        goto LABEL_601;
      }

      goto LABEL_649;
    }
  }

  else if ((v179 & 0x20000) == 0)
  {
    goto LABEL_600;
  }

  *(v3 + 708) = *(a2 + 708);
  if ((v179 & 0x40000) == 0)
  {
LABEL_601:
    if ((v179 & 0x80000) == 0)
    {
      goto LABEL_602;
    }

    goto LABEL_650;
  }

LABEL_649:
  *(v3 + 712) = *(a2 + 712);
  if ((v179 & 0x80000) == 0)
  {
LABEL_602:
    if ((v179 & 0x100000) == 0)
    {
      goto LABEL_603;
    }

LABEL_651:
    *(v3 + 720) = *(a2 + 720);
    if ((v179 & 0x200000) == 0)
    {
      goto LABEL_605;
    }

    goto LABEL_604;
  }

LABEL_650:
  *(v3 + 716) = *(a2 + 716);
  if ((v179 & 0x100000) != 0)
  {
    goto LABEL_651;
  }

LABEL_603:
  if ((v179 & 0x200000) != 0)
  {
LABEL_604:
    *(v3 + 724) = *(a2 + 724);
  }

LABEL_605:
  *(v3 + 28) |= v179;
  return result;
}

uint64_t *sub_27641E444(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276414B5C(result);

    return sub_27641CB78(v4, a2);
  }

  return result;
}

uint64_t sub_27641E490(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSD::LineEndArchive::IsInitialized(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = TSD::LineEndArchive::IsInitialized(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 120));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 128));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 136));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 144));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x4000) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 152));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x8000) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 160));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10000) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 168));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20000) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 176));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40000) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 184));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80000) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 192));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100000) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 200));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200000) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 208));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400000) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 216));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800000) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 224));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000000) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 232));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000000) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 240));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x4000000) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 248));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x8000000) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 256));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10000000) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 264));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20000000) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 272));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40000000) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 280));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80000000) == 0 || (result = TSD::ShadowArchive::IsInitialized(*(a1 + 288)), result))
  {
    v4 = *(a1 + 20);
    if (v4)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 296));
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
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 328));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x20) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 336));
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
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 360));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x200) != 0)
    {
      result = TSD::FillArchive::IsInitialized(*(a1 + 368));
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
      result = TSD::FillArchive::IsInitialized(*(a1 + 384));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x1000) != 0)
    {
      result = TSD::FillArchive::IsInitialized(*(a1 + 392));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x2000) != 0)
    {
      result = TSD::FillArchive::IsInitialized(*(a1 + 400));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x4000) != 0)
    {
      result = TSD::FillArchive::IsInitialized(*(a1 + 408));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x8000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 416));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x10000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 424));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x20000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 432));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x40000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 440));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x80000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 448));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x100000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 456));
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
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 472));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x800000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 480));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x1000000) != 0)
    {
      result = TSD::LineEndArchive::IsInitialized(*(a1 + 488));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x2000000) != 0)
    {
      result = TSD::LineEndArchive::IsInitialized(*(a1 + 496));
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
      result = TSD::ShadowArchive::IsInitialized(*(a1 + 512));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x10000000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 520));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x20000000) != 0)
    {
      result = TSD::FillArchive::IsInitialized(*(a1 + 528));
      if (!result)
      {
        return result;
      }

      v4 = *(a1 + 20);
    }

    if ((v4 & 0x40000000) == 0)
    {
      return 1;
    }

    result = TSD::StrokeArchive::IsInitialized(*(a1 + 536));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_27641E9D8(uint64_t a1)
{
  sub_27641EA0C(a1);
  sub_2763941F4((a1 + 8));
  return a1;
}

uint64_t sub_27641EA0C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  if (v1 != &qword_2812F0AD0)
  {
    if (v1[6])
    {
      v3 = sub_2764009F8();
      MEMORY[0x277C98580](v3, 0x1081C4085BC40B3);
    }

    if (v1[7])
    {
      v4 = sub_2764009F8();
      MEMORY[0x277C98580](v4, 0x1081C4085BC40B3);
    }

    if (v1[8])
    {
      v5 = sub_2764009F8();
      MEMORY[0x277C98580](v5, 0x1081C4085BC40B3);
    }

    if (v1[9])
    {
      v6 = sub_2764009F8();
      MEMORY[0x277C98580](v6, 0x1081C4085BC40B3);
    }

    if (v1[10])
    {
      v7 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v7, 0x10A1C4029F168B5);
    }

    if (v1[11])
    {
      v8 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v8, 0x10A1C4029F168B5);
    }

    if (v1[12])
    {
      v9 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v9, 0x10A1C4029F168B5);
    }

    if (v1[13])
    {
      v10 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v10, 0x10A1C4029F168B5);
    }

    if (v1[14])
    {
      v11 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v11, 0x10A1C4029F168B5);
    }

    if (v1[15])
    {
      v12 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v12, 0x10A1C4029F168B5);
    }

    if (v1[16])
    {
      v13 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v13, 0x10A1C4029F168B5);
    }

    result = v1[17];
    if (result)
    {
      MEMORY[0x277C97400]();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27641EBA4(uint64_t a1)
{
  sub_27641E9D8(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27641EBE4()
{
  if (atomic_load_explicit(dword_2812ED420, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812F0AD0;
}

uint64_t *sub_27641EC24(uint64_t *result)
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
    v8 = result[5] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_55;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_55;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_55:
  result = sub_276400A3C(result[6]);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = sub_276400A3C(v1[7]);
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = sub_276400A3C(v1[8]);
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_59:
    result = TSK::FormatStructArchive::Clear(v1[10]);
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_60;
  }

LABEL_58:
  result = sub_276400A3C(v1[9]);
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_59;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_60:
  result = TSK::FormatStructArchive::Clear(v1[11]);
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = TSK::FormatStructArchive::Clear(v1[12]);
  }

LABEL_11:
  if ((v3 & 0x1F00) == 0)
  {
    goto LABEL_18;
  }

  if ((v3 & 0x100) != 0)
  {
    result = TSK::FormatStructArchive::Clear(v1[13]);
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_51;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = TSK::FormatStructArchive::Clear(v1[14]);
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = TSK::FormatStructArchive::Clear(v1[15]);
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_52:
  result = TSK::FormatStructArchive::Clear(v1[16]);
  if ((v3 & 0x1000) != 0)
  {
LABEL_17:
    result = TSK::FormatStructArchive::Clear(v1[17]);
  }

LABEL_18:
  if ((v3 & 0xE000) != 0)
  {
    *(v1 + 38) = 0;
    v1[18] = 0;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    *(v1 + 172) = 0u;
    *(v1 + 156) = 0u;
  }

  if (HIBYTE(v3))
  {
    *(v1 + 204) = 0u;
    *(v1 + 188) = 0u;
  }

  v4 = *(v1 + 5);
  if (v4)
  {
    *(v1 + 220) = 0;
  }

  if ((v4 & 0xFF00) != 0)
  {
    *(v1 + 236) = 0;
    *(v1 + 228) = 0;
    *(v1 + 61) = 0;
  }

  if ((v4 & 0xFF0000) != 0)
  {
    *(v1 + 31) = 0u;
    *(v1 + 33) = 0u;
  }

  if (HIBYTE(v4))
  {
    v1[35] = 0;
    v1[36] = 0;
    *(v1 + 74) = 0;
  }

  v5 = *(v1 + 6);
  if (v5)
  {
    *(v1 + 306) = 0;
    *(v1 + 300) = 0;
  }

  if ((v5 & 0xFF00) != 0)
  {
    v1[40] = 0;
    *(v1 + 314) = 0;
  }

  if ((v5 & 0xFF0000) != 0)
  {
    v1[41] = 0;
    v1[42] = 0;
    v1[43] = 0;
    *(v1 + 349) = 0;
  }

  if (HIBYTE(v5))
  {
    *(v1 + 91) = 0;
    *(v1 + 357) = 0;
  }

  if ((*(v1 + 28) & 3) != 0)
  {
    v1[46] = 0;
  }

  *v2 = 0;
  v2[1] = 0;
  v7 = *(v1 + 8);
  v6 = v1 + 1;
  if (v7)
  {

    return sub_2763D4FD4(v6);
  }

  return result;
}

google::protobuf::internal *sub_27641EE74(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v403 = a2;
  while (2)
  {
    if (sub_2763D4D98(a3, &v403))
    {
      return v403;
    }

    v5 = (v403 + 1);
    LODWORD(v6) = *v403;
    if (*v403 < 0)
    {
      v6 = (v6 + (*v5 << 7) - 128);
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v403, v6);
        v403 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        goto LABEL_7;
      }

      v5 = (v403 + 2);
    }

    v403 = v5;
LABEL_7:
    switch(v6 >> 3)
    {
      case 1u:
        if (v6 != 13)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x2000u;
        v8 = *v5;
        v7 = (v5 + 4);
        *(a1 + 144) = v8;
        goto LABEL_422;
      case 2u:
        if (v6 != 18)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 2u;
        v124 = *(a1 + 48);
        if (v124)
        {
          goto LABEL_286;
        }

        v141 = *(a1 + 8);
        if (v141)
        {
          v141 = *(v141 & 0xFFFFFFFFFFFFFFFELL);
        }

        v124 = sub_276406A94(v141);
        *(a1 + 48) = v124;
        goto LABEL_285;
      case 3u:
        if (v6 != 26)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 4u;
        v124 = *(a1 + 56);
        if (v124)
        {
          goto LABEL_286;
        }

        v125 = *(a1 + 8);
        if (v125)
        {
          v125 = *(v125 & 0xFFFFFFFFFFFFFFFELL);
        }

        v124 = sub_276406A94(v125);
        *(a1 + 56) = v124;
        goto LABEL_285;
      case 4u:
        if (v6 != 34)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 8u;
        v124 = *(a1 + 64);
        if (v124)
        {
          goto LABEL_286;
        }

        v157 = *(a1 + 8);
        if (v157)
        {
          v157 = *(v157 & 0xFFFFFFFFFFFFFFFELL);
        }

        v124 = sub_276406A94(v157);
        *(a1 + 64) = v124;
        goto LABEL_285;
      case 5u:
        if (v6 != 42)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x10u;
        v124 = *(a1 + 72);
        if (v124)
        {
          goto LABEL_286;
        }

        v161 = *(a1 + 8);
        if (v161)
        {
          v161 = *(v161 & 0xFFFFFFFFFFFFFFFELL);
        }

        v124 = sub_276406A94(v161);
        *(a1 + 72) = v124;
LABEL_285:
        v5 = v403;
LABEL_286:
        v57 = sub_2764A8B68(a3, v124, v5);
        goto LABEL_435;
      case 6u:
        if (v6 != 53)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x4000u;
        v132 = *v5;
        v7 = (v5 + 4);
        *(a1 + 148) = v132;
        goto LABEL_422;
      case 7u:
        if (v6 != 61)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x8000u;
        v142 = *v5;
        v7 = (v5 + 4);
        *(a1 + 152) = v142;
        goto LABEL_422;
      case 8u:
        if (v6 != 69)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x10000u;
        v143 = *v5;
        v7 = (v5 + 4);
        *(a1 + 156) = v143;
        goto LABEL_422;
      case 9u:
        if (v6 != 77)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x20000u;
        v177 = *v5;
        v7 = (v5 + 4);
        *(a1 + 160) = v177;
        goto LABEL_422;
      case 0xAu:
        if (v6 != 80)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x40000u;
        v166 = (v5 + 1);
        LODWORD(v165) = *v5;
        if ((v165 & 0x80) == 0)
        {
          goto LABEL_296;
        }

        v167 = *v166;
        v165 = (v165 + (v167 << 7) - 128);
        if (v167 < 0)
        {
          v348 = google::protobuf::internal::VarintParseSlow64(v5, v165);
          v403 = v348;
          *(a1 + 164) = v349;
          if (!v348)
          {
            return 0;
          }
        }

        else
        {
          v166 = (v5 + 2);
LABEL_296:
          v403 = v166;
          *(a1 + 164) = v165;
        }

        continue;
      case 0xBu:
        if (v6 != 88)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x80000u;
        v100 = (v5 + 1);
        LODWORD(v99) = *v5;
        if ((v99 & 0x80) == 0)
        {
          goto LABEL_167;
        }

        v101 = *v100;
        v99 = (v99 + (v101 << 7) - 128);
        if (v101 < 0)
        {
          v314 = google::protobuf::internal::VarintParseSlow64(v5, v99);
          v403 = v314;
          *(a1 + 168) = v315;
          if (!v314)
          {
            return 0;
          }
        }

        else
        {
          v100 = (v5 + 2);
LABEL_167:
          v403 = v100;
          *(a1 + 168) = v99;
        }

        continue;
      case 0xCu:
        if (v6 != 101)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x100000u;
        v133 = *v5;
        v7 = (v5 + 4);
        *(a1 + 172) = v133;
        goto LABEL_422;
      case 0xDu:
        if (v6 != 109)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x200000u;
        v120 = *v5;
        v7 = (v5 + 4);
        *(a1 + 176) = v120;
        goto LABEL_422;
      case 0xEu:
        if (v6 != 112)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x400000u;
        v88 = (v5 + 1);
        LODWORD(v87) = *v5;
        if ((v87 & 0x80) == 0)
        {
          goto LABEL_147;
        }

        v89 = *v88;
        v87 = (v87 + (v89 << 7) - 128);
        if (v89 < 0)
        {
          v306 = google::protobuf::internal::VarintParseSlow64(v5, v87);
          v403 = v306;
          *(a1 + 180) = v307;
          if (!v306)
          {
            return 0;
          }
        }

        else
        {
          v88 = (v5 + 2);
LABEL_147:
          v403 = v88;
          *(a1 + 180) = v87;
        }

        continue;
      case 0xFu:
        if (v6 != 120)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x800000u;
        v148 = (v5 + 1);
        LODWORD(v147) = *v5;
        if ((v147 & 0x80) == 0)
        {
          goto LABEL_257;
        }

        v149 = *v148;
        v147 = (v147 + (v149 << 7) - 128);
        if (v149 < 0)
        {
          v338 = google::protobuf::internal::VarintParseSlow64(v5, v147);
          v403 = v338;
          *(a1 + 184) = v339;
          if (!v338)
          {
            return 0;
          }
        }

        else
        {
          v148 = (v5 + 2);
LABEL_257:
          v403 = v148;
          *(a1 + 184) = v147;
        }

        continue;
      case 0x10u:
        if (v6 != 133)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x1000000u;
        v150 = *v5;
        v7 = (v5 + 4);
        *(a1 + 188) = v150;
        goto LABEL_422;
      case 0x11u:
        if (v6 != 136)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x2000000u;
        v185 = (v5 + 1);
        LODWORD(v184) = *v5;
        if ((v184 & 0x80) == 0)
        {
          goto LABEL_328;
        }

        v186 = *v185;
        v184 = (v184 + (v186 << 7) - 128);
        if (v186 < 0)
        {
          v360 = google::protobuf::internal::VarintParseSlow64(v5, v184);
          v403 = v360;
          *(a1 + 192) = v361;
          if (!v360)
          {
            return 0;
          }
        }

        else
        {
          v185 = (v5 + 2);
LABEL_328:
          v403 = v185;
          *(a1 + 192) = v184;
        }

        continue;
      case 0x12u:
        if (v6 != 144)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x4000000u;
        v179 = (v5 + 1);
        LODWORD(v178) = *v5;
        if ((v178 & 0x80) == 0)
        {
          goto LABEL_318;
        }

        v180 = *v179;
        v178 = (v178 + (v180 << 7) - 128);
        if (v180 < 0)
        {
          v356 = google::protobuf::internal::VarintParseSlow64(v5, v178);
          v403 = v356;
          *(a1 + 196) = v357;
          if (!v356)
          {
            return 0;
          }
        }

        else
        {
          v179 = (v5 + 2);
LABEL_318:
          v403 = v179;
          *(a1 + 196) = v178;
        }

        continue;
      case 0x13u:
        if (v6 != 152)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x8000000u;
        v83 = (v5 + 1);
        LODWORD(v82) = *v5;
        if ((v82 & 0x80) == 0)
        {
          goto LABEL_137;
        }

        v84 = *v83;
        v82 = (v82 + (v84 << 7) - 128);
        if (v84 < 0)
        {
          v304 = google::protobuf::internal::VarintParseSlow64(v5, v82);
          v403 = v304;
          *(a1 + 200) = v305;
          if (!v304)
          {
            return 0;
          }
        }

        else
        {
          v83 = (v5 + 2);
LABEL_137:
          v403 = v83;
          *(a1 + 200) = v82;
        }

        continue;
      case 0x14u:
        if (v6 != 160)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x10000000u;
        v122 = (v5 + 1);
        LODWORD(v121) = *v5;
        if ((v121 & 0x80) == 0)
        {
          goto LABEL_204;
        }

        v123 = *v122;
        v121 = (v121 + (v123 << 7) - 128);
        if (v123 < 0)
        {
          v328 = google::protobuf::internal::VarintParseSlow64(v5, v121);
          v403 = v328;
          *(a1 + 204) = v329;
          if (!v328)
          {
            return 0;
          }
        }

        else
        {
          v122 = (v5 + 2);
LABEL_204:
          v403 = v122;
          *(a1 + 204) = v121;
        }

        continue;
      case 0x15u:
        if (v6 != 170)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x20u;
        v38 = *(a1 + 80);
        if (v38)
        {
          goto LABEL_434;
        }

        v196 = *(a1 + 8);
        if (v196)
        {
          v196 = *(v196 & 0xFFFFFFFFFFFFFFFELL);
        }

        v197 = MEMORY[0x277C97B00](v196);
        LODWORD(v38) = v197;
        *(a1 + 80) = v197;
        goto LABEL_433;
      case 0x16u:
        if (v6 != 178)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x40u;
        v38 = *(a1 + 88);
        if (v38)
        {
          goto LABEL_434;
        }

        v85 = *(a1 + 8);
        if (v85)
        {
          v85 = *(v85 & 0xFFFFFFFFFFFFFFFELL);
        }

        v86 = MEMORY[0x277C97B00](v85);
        LODWORD(v38) = v86;
        *(a1 + 88) = v86;
        goto LABEL_433;
      case 0x17u:
        if (v6 != 184)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x20000000u;
        v118 = (v5 + 1);
        LODWORD(v117) = *v5;
        if ((v117 & 0x80) == 0)
        {
          goto LABEL_197;
        }

        v119 = *v118;
        v117 = (v117 + (v119 << 7) - 128);
        if (v119 < 0)
        {
          v326 = google::protobuf::internal::VarintParseSlow64(v5, v117);
          v403 = v326;
          *(a1 + 208) = v327;
          if (!v326)
          {
            return 0;
          }
        }

        else
        {
          v118 = (v5 + 2);
LABEL_197:
          v403 = v118;
          *(a1 + 208) = v117;
        }

        continue;
      case 0x18u:
        if (v6 != 192)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x40000000u;
        v97 = (v5 + 1);
        LODWORD(v96) = *v5;
        if ((v96 & 0x80) == 0)
        {
          goto LABEL_162;
        }

        v98 = *v97;
        v96 = (v96 + (v98 << 7) - 128);
        if (v98 < 0)
        {
          v312 = google::protobuf::internal::VarintParseSlow64(v5, v96);
          v403 = v312;
          *(a1 + 212) = v313;
          if (!v312)
          {
            return 0;
          }
        }

        else
        {
          v97 = (v5 + 2);
LABEL_162:
          v403 = v97;
          *(a1 + 212) = v96;
        }

        continue;
      case 0x19u:
        if (v6 != 202)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x80u;
        v38 = *(a1 + 96);
        if (v38)
        {
          goto LABEL_434;
        }

        v136 = *(a1 + 8);
        if (v136)
        {
          v136 = *(v136 & 0xFFFFFFFFFFFFFFFELL);
        }

        v137 = MEMORY[0x277C97B00](v136);
        LODWORD(v38) = v137;
        *(a1 + 96) = v137;
        goto LABEL_433;
      case 0x1Au:
        if (v6 != 208)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x80000000;
        v91 = (v5 + 1);
        LODWORD(v90) = *v5;
        if ((v90 & 0x80) == 0)
        {
          goto LABEL_152;
        }

        v92 = *v91;
        v90 = (v90 + (v92 << 7) - 128);
        if (v92 < 0)
        {
          v308 = google::protobuf::internal::VarintParseSlow64(v5, v90);
          v403 = v308;
          *(a1 + 216) = v309;
          if (!v308)
          {
            return 0;
          }
        }

        else
        {
          v91 = (v5 + 2);
LABEL_152:
          v403 = v91;
          *(a1 + 216) = v90;
        }

        continue;
      case 0x1Bu:
        if (v6 != 216)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x10000000u;
        v212 = (v5 + 1);
        v211 = *v5;
        if ((v211 & 0x8000000000000000) == 0)
        {
          goto LABEL_377;
        }

        v213 = *v212;
        v211 = (v213 << 7) + v211 - 128;
        if (v213 < 0)
        {
          v374 = google::protobuf::internal::VarintParseSlow64(v5, v211);
          v403 = v374;
          *(a1 + 296) = v375 != 0;
          if (!v374)
          {
            return 0;
          }
        }

        else
        {
          v212 = (v5 + 2);
LABEL_377:
          v403 = v212;
          *(a1 + 296) = v211 != 0;
        }

        continue;
      case 0x1Cu:
        if (v6 != 224)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x20000000u;
        v209 = (v5 + 1);
        v208 = *v5;
        if ((v208 & 0x8000000000000000) == 0)
        {
          goto LABEL_372;
        }

        v210 = *v209;
        v208 = (v210 << 7) + v208 - 128;
        if (v210 < 0)
        {
          v372 = google::protobuf::internal::VarintParseSlow64(v5, v208);
          v403 = v372;
          *(a1 + 297) = v373 != 0;
          if (!v372)
          {
            return 0;
          }
        }

        else
        {
          v209 = (v5 + 2);
LABEL_372:
          v403 = v209;
          *(a1 + 297) = v208 != 0;
        }

        continue;
      case 0x1Du:
        if (v6 != 232)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 1u;
        v112 = (v5 + 1);
        v111 = *v5;
        if ((v111 & 0x8000000000000000) == 0)
        {
          goto LABEL_187;
        }

        v113 = *v112;
        v111 = (v113 << 7) + v111 - 128;
        if (v113 < 0)
        {
          v322 = google::protobuf::internal::VarintParseSlow64(v5, v111);
          v403 = v322;
          *(a1 + 220) = v323 != 0;
          if (!v322)
          {
            return 0;
          }
        }

        else
        {
          v112 = (v5 + 2);
LABEL_187:
          v403 = v112;
          *(a1 + 220) = v111 != 0;
        }

        continue;
      case 0x1Eu:
        if (v6 != 240)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 2u;
        v127 = (v5 + 1);
        v126 = *v5;
        if ((v126 & 0x8000000000000000) == 0)
        {
          goto LABEL_214;
        }

        v128 = *v127;
        v126 = (v128 << 7) + v126 - 128;
        if (v128 < 0)
        {
          v330 = google::protobuf::internal::VarintParseSlow64(v5, v126);
          v403 = v330;
          *(a1 + 221) = v331 != 0;
          if (!v330)
          {
            return 0;
          }
        }

        else
        {
          v127 = (v5 + 2);
LABEL_214:
          v403 = v127;
          *(a1 + 221) = v126 != 0;
        }

        continue;
      case 0x1Fu:
        if (v6 != 248)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 8u;
        v155 = (v5 + 1);
        v154 = *v5;
        if ((v154 & 0x8000000000000000) == 0)
        {
          goto LABEL_269;
        }

        v156 = *v155;
        v154 = (v156 << 7) + v154 - 128;
        if (v156 < 0)
        {
          v342 = google::protobuf::internal::VarintParseSlow64(v5, v154);
          v403 = v342;
          *(a1 + 223) = v343 != 0;
          if (!v342)
          {
            return 0;
          }
        }

        else
        {
          v155 = (v5 + 2);
LABEL_269:
          v403 = v155;
          *(a1 + 223) = v154 != 0;
        }

        continue;
      case 0x20u:
        if (v6)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x200u;
        v130 = (v5 + 1);
        v129 = *v5;
        if ((v129 & 0x8000000000000000) == 0)
        {
          goto LABEL_219;
        }

        v131 = *v130;
        v129 = (v131 << 7) + v129 - 128;
        if (v131 < 0)
        {
          v332 = google::protobuf::internal::VarintParseSlow64(v5, v129);
          v403 = v332;
          *(a1 + 229) = v333 != 0;
          if (!v332)
          {
            return 0;
          }
        }

        else
        {
          v130 = (v5 + 2);
LABEL_219:
          v403 = v130;
          *(a1 + 229) = v129 != 0;
        }

        continue;
      case 0x21u:
        if (v6 != 8)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x400u;
        v222 = (v5 + 1);
        v221 = *v5;
        if ((v221 & 0x8000000000000000) == 0)
        {
          goto LABEL_394;
        }

        v223 = *v222;
        v221 = (v223 << 7) + v221 - 128;
        if (v223 < 0)
        {
          v380 = google::protobuf::internal::VarintParseSlow64(v5, v221);
          v403 = v380;
          *(a1 + 230) = v381 != 0;
          if (!v380)
          {
            return 0;
          }
        }

        else
        {
          v222 = (v5 + 2);
LABEL_394:
          v403 = v222;
          *(a1 + 230) = v221 != 0;
        }

        continue;
      case 0x22u:
        if (v6 != 16)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x800u;
        v103 = (v5 + 1);
        v102 = *v5;
        if ((v102 & 0x8000000000000000) == 0)
        {
          goto LABEL_172;
        }

        v104 = *v103;
        v102 = (v104 << 7) + v102 - 128;
        if (v104 < 0)
        {
          v316 = google::protobuf::internal::VarintParseSlow64(v5, v102);
          v403 = v316;
          *(a1 + 231) = v317 != 0;
          if (!v316)
          {
            return 0;
          }
        }

        else
        {
          v103 = (v5 + 2);
LABEL_172:
          v403 = v103;
          *(a1 + 231) = v102 != 0;
        }

        continue;
      case 0x23u:
        if (v6 != 24)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 2u;
        v182 = (v5 + 1);
        v181 = *v5;
        if ((v181 & 0x8000000000000000) == 0)
        {
          goto LABEL_323;
        }

        v183 = *v182;
        v181 = (v183 << 7) + v181 - 128;
        if (v183 < 0)
        {
          v358 = google::protobuf::internal::VarintParseSlow64(v5, v181);
          v403 = v358;
          *(a1 + 304) = v359 != 0;
          if (!v358)
          {
            return 0;
          }
        }

        else
        {
          v182 = (v5 + 2);
LABEL_323:
          v403 = v182;
          *(a1 + 304) = v181 != 0;
        }

        continue;
      case 0x24u:
        if (v6 != 32)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 8u;
        v219 = (v5 + 1);
        v218 = *v5;
        if ((v218 & 0x8000000000000000) == 0)
        {
          goto LABEL_389;
        }

        v220 = *v219;
        v218 = (v220 << 7) + v218 - 128;
        if (v220 < 0)
        {
          v378 = google::protobuf::internal::VarintParseSlow64(v5, v218);
          v403 = v378;
          *(a1 + 306) = v379 != 0;
          if (!v378)
          {
            return 0;
          }
        }

        else
        {
          v219 = (v5 + 2);
LABEL_389:
          v403 = v219;
          *(a1 + 306) = v218 != 0;
        }

        continue;
      case 0x25u:
        if (v6 != 40)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x10u;
        v74 = (v5 + 1);
        v73 = *v5;
        if ((v73 & 0x8000000000000000) == 0)
        {
          goto LABEL_122;
        }

        v75 = *v74;
        v73 = (v75 << 7) + v73 - 128;
        if (v75 < 0)
        {
          v298 = google::protobuf::internal::VarintParseSlow64(v5, v73);
          v403 = v298;
          *(a1 + 307) = v299 != 0;
          if (!v298)
          {
            return 0;
          }
        }

        else
        {
          v74 = (v5 + 2);
LABEL_122:
          v403 = v74;
          *(a1 + 307) = v73 != 0;
        }

        continue;
      case 0x26u:
        if (v6 != 48)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x10u;
        v163 = (v5 + 1);
        v162 = *v5;
        if ((v162 & 0x8000000000000000) == 0)
        {
          goto LABEL_291;
        }

        v164 = *v163;
        v162 = (v164 << 7) + v162 - 128;
        if (v164 < 0)
        {
          v346 = google::protobuf::internal::VarintParseSlow64(v5, v162);
          v403 = v346;
          *(a1 + 224) = v347 != 0;
          if (!v346)
          {
            return 0;
          }
        }

        else
        {
          v163 = (v5 + 2);
LABEL_291:
          v403 = v163;
          *(a1 + 224) = v162 != 0;
        }

        continue;
      case 0x27u:
        if (v6 != 56)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x20u;
        v71 = (v5 + 1);
        v70 = *v5;
        if ((v70 & 0x8000000000000000) == 0)
        {
          goto LABEL_117;
        }

        v72 = *v71;
        v70 = (v72 << 7) + v70 - 128;
        if (v72 < 0)
        {
          v296 = google::protobuf::internal::VarintParseSlow64(v5, v70);
          v403 = v296;
          *(a1 + 225) = v297 != 0;
          if (!v296)
          {
            return 0;
          }
        }

        else
        {
          v71 = (v5 + 2);
LABEL_117:
          v403 = v71;
          *(a1 + 225) = v70 != 0;
        }

        continue;
      case 0x28u:
        if (v6 != 64)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x40u;
        v65 = (v5 + 1);
        v64 = *v5;
        if ((v64 & 0x8000000000000000) == 0)
        {
          goto LABEL_107;
        }

        v66 = *v65;
        v64 = (v66 << 7) + v64 - 128;
        if (v66 < 0)
        {
          v292 = google::protobuf::internal::VarintParseSlow64(v5, v64);
          v403 = v292;
          *(a1 + 226) = v293 != 0;
          if (!v292)
          {
            return 0;
          }
        }

        else
        {
          v65 = (v5 + 2);
LABEL_107:
          v403 = v65;
          *(a1 + 226) = v64 != 0;
        }

        continue;
      case 0x29u:
        if (v6 != 72)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x80u;
        v115 = (v5 + 1);
        v114 = *v5;
        if ((v114 & 0x8000000000000000) == 0)
        {
          goto LABEL_192;
        }

        v116 = *v115;
        v114 = (v116 << 7) + v114 - 128;
        if (v116 < 0)
        {
          v324 = google::protobuf::internal::VarintParseSlow64(v5, v114);
          v403 = v324;
          *(a1 + 227) = v325 != 0;
          if (!v324)
          {
            return 0;
          }
        }

        else
        {
          v115 = (v5 + 2);
LABEL_192:
          v403 = v115;
          *(a1 + 227) = v114 != 0;
        }

        continue;
      case 0x2Au:
        if (v6 != 80)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x40u;
        v139 = (v5 + 1);
        v138 = *v5;
        if ((v138 & 0x8000000000000000) == 0)
        {
          goto LABEL_238;
        }

        v140 = *v139;
        v138 = (v140 << 7) + v138 - 128;
        if (v140 < 0)
        {
          v334 = google::protobuf::internal::VarintParseSlow64(v5, v138);
          v403 = v334;
          *(a1 + 312) = v335 != 0;
          if (!v334)
          {
            return 0;
          }
        }

        else
        {
          v139 = (v5 + 2);
LABEL_238:
          v403 = v139;
          *(a1 + 312) = v138 != 0;
        }

        continue;
      case 0x2Bu:
        if (v6 != 88)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x80u;
        v194 = (v5 + 1);
        v193 = *v5;
        if ((v193 & 0x8000000000000000) == 0)
        {
          goto LABEL_343;
        }

        v195 = *v194;
        v193 = (v195 << 7) + v193 - 128;
        if (v195 < 0)
        {
          v366 = google::protobuf::internal::VarintParseSlow64(v5, v193);
          v403 = v366;
          *(a1 + 313) = v367 != 0;
          if (!v366)
          {
            return 0;
          }
        }

        else
        {
          v194 = (v5 + 2);
LABEL_343:
          v403 = v194;
          *(a1 + 313) = v193 != 0;
        }

        continue;
      case 0x2Cu:
        if (v6 != 96)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x100u;
        v51 = (v5 + 1);
        v50 = *v5;
        if ((v50 & 0x8000000000000000) == 0)
        {
          goto LABEL_83;
        }

        v52 = *v51;
        v50 = (v52 << 7) + v50 - 128;
        if (v52 < 0)
        {
          v284 = google::protobuf::internal::VarintParseSlow64(v5, v50);
          v403 = v284;
          *(a1 + 314) = v285 != 0;
          if (!v284)
          {
            return 0;
          }
        }

        else
        {
          v51 = (v5 + 2);
LABEL_83:
          v403 = v51;
          *(a1 + 314) = v50 != 0;
        }

        continue;
      case 0x2Du:
        if (v6 != 104)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x800000u;
        v77 = (v5 + 1);
        v76 = *v5;
        if ((v76 & 0x8000000000000000) == 0)
        {
          goto LABEL_127;
        }

        v78 = *v77;
        v76 = (v78 << 7) + v76 - 128;
        if (v78 < 0)
        {
          v300 = google::protobuf::internal::VarintParseSlow64(v5, v76);
          v403 = v300;
          *(a1 + 356) = v301 != 0;
          if (!v300)
          {
            return 0;
          }
        }

        else
        {
          v77 = (v5 + 2);
LABEL_127:
          v403 = v77;
          *(a1 + 356) = v76 != 0;
        }

        continue;
      case 0x2Eu:
        if (v6 != 112)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x1000u;
        v145 = (v5 + 1);
        LODWORD(v144) = *v5;
        if ((v144 & 0x80) == 0)
        {
          goto LABEL_252;
        }

        v146 = *v145;
        v144 = (v144 + (v146 << 7) - 128);
        if (v146 < 0)
        {
          v336 = google::protobuf::internal::VarintParseSlow64(v5, v144);
          v403 = v336;
          *(a1 + 232) = v337;
          if (!v336)
          {
            return 0;
          }
        }

        else
        {
          v145 = (v5 + 2);
LABEL_252:
          v403 = v145;
          *(a1 + 232) = v144;
        }

        continue;
      case 0x2Fu:
        if (v6 != 120)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x2000u;
        v159 = (v5 + 1);
        LODWORD(v158) = *v5;
        if ((v158 & 0x80) == 0)
        {
          goto LABEL_279;
        }

        v160 = *v159;
        v158 = (v158 + (v160 << 7) - 128);
        if (v160 < 0)
        {
          v344 = google::protobuf::internal::VarintParseSlow64(v5, v158);
          v403 = v344;
          *(a1 + 236) = v345;
          if (!v344)
          {
            return 0;
          }
        }

        else
        {
          v159 = (v5 + 2);
LABEL_279:
          v403 = v159;
          *(a1 + 236) = v158;
        }

        continue;
      case 0x30u:
        if (v6 != 128)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x4000u;
        v225 = (v5 + 1);
        LODWORD(v224) = *v5;
        if ((v224 & 0x80) == 0)
        {
          goto LABEL_399;
        }

        v226 = *v225;
        v224 = (v224 + (v226 << 7) - 128);
        if (v226 < 0)
        {
          v382 = google::protobuf::internal::VarintParseSlow64(v5, v224);
          v403 = v382;
          *(a1 + 240) = v383;
          if (!v382)
          {
            return 0;
          }
        }

        else
        {
          v225 = (v5 + 2);
LABEL_399:
          v403 = v225;
          *(a1 + 240) = v224;
        }

        continue;
      case 0x31u:
        if (v6 != 136)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x8000u;
        v152 = (v5 + 1);
        LODWORD(v151) = *v5;
        if ((v151 & 0x80) == 0)
        {
          goto LABEL_264;
        }

        v153 = *v152;
        v151 = (v151 + (v153 << 7) - 128);
        if (v153 < 0)
        {
          v340 = google::protobuf::internal::VarintParseSlow64(v5, v151);
          v403 = v340;
          *(a1 + 244) = v341;
          if (!v340)
          {
            return 0;
          }
        }

        else
        {
          v152 = (v5 + 2);
LABEL_264:
          v403 = v152;
          *(a1 + 244) = v151;
        }

        continue;
      case 0x32u:
        if (v6 != 144)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x10000u;
        v59 = (v5 + 1);
        LODWORD(v58) = *v5;
        if ((v58 & 0x80) == 0)
        {
          goto LABEL_97;
        }

        v60 = *v59;
        v58 = (v58 + (v60 << 7) - 128);
        if (v60 < 0)
        {
          v288 = google::protobuf::internal::VarintParseSlow64(v5, v58);
          v403 = v288;
          *(a1 + 248) = v289;
          if (!v288)
          {
            return 0;
          }
        }

        else
        {
          v59 = (v5 + 2);
LABEL_97:
          v403 = v59;
          *(a1 + 248) = v58;
        }

        continue;
      case 0x33u:
        if (v6 != 152)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x20000u;
        v54 = (v5 + 1);
        LODWORD(v53) = *v5;
        if ((v53 & 0x80) == 0)
        {
          goto LABEL_88;
        }

        v55 = *v54;
        v53 = (v53 + (v55 << 7) - 128);
        if (v55 < 0)
        {
          v286 = google::protobuf::internal::VarintParseSlow64(v5, v53);
          v403 = v286;
          *(a1 + 252) = v287;
          if (!v286)
          {
            return 0;
          }
        }

        else
        {
          v54 = (v5 + 2);
LABEL_88:
          v403 = v54;
          *(a1 + 252) = v53;
        }

        continue;
      case 0x34u:
        if (v6 != 165)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x40000u;
        v238 = *v5;
        v7 = (v5 + 4);
        *(a1 + 256) = v238;
        goto LABEL_422;
      case 0x35u:
        if (v6 != 173)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x80000u;
        v217 = *v5;
        v7 = (v5 + 4);
        *(a1 + 260) = v217;
        goto LABEL_422;
      case 0x36u:
        if (v6 != 178)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 1u;
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v57 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_435;
      case 0x37u:
        if (v6 != 184)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x100000u;
        v169 = (v5 + 1);
        LODWORD(v168) = *v5;
        if ((v168 & 0x80) == 0)
        {
          goto LABEL_301;
        }

        v170 = *v169;
        v168 = (v168 + (v170 << 7) - 128);
        if (v170 < 0)
        {
          v350 = google::protobuf::internal::VarintParseSlow64(v5, v168);
          v403 = v350;
          *(a1 + 264) = v351;
          if (!v350)
          {
            return 0;
          }
        }

        else
        {
          v169 = (v5 + 2);
LABEL_301:
          v403 = v169;
          *(a1 + 264) = v168;
        }

        continue;
      case 0x38u:
        if (v6 != 192)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x200000u;
        v191 = (v5 + 1);
        LODWORD(v190) = *v5;
        if ((v190 & 0x80) == 0)
        {
          goto LABEL_338;
        }

        v192 = *v191;
        v190 = (v190 + (v192 << 7) - 128);
        if (v192 < 0)
        {
          v364 = google::protobuf::internal::VarintParseSlow64(v5, v190);
          v403 = v364;
          *(a1 + 268) = v365;
          if (!v364)
          {
            return 0;
          }
        }

        else
        {
          v191 = (v5 + 2);
LABEL_338:
          v403 = v191;
          *(a1 + 268) = v190;
        }

        continue;
      case 0x39u:
        if (v6 != 205)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x400000u;
        v56 = *v5;
        v7 = (v5 + 4);
        *(a1 + 272) = v56;
        goto LABEL_422;
      case 0x3Au:
        if (v6 != 213)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x800000u;
        v207 = *v5;
        v7 = (v5 + 4);
        *(a1 + 276) = v207;
        goto LABEL_422;
      case 0x3Bu:
        if (v6 != 216)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x2000u;
        v199 = (v5 + 1);
        v198 = *v5;
        if ((v198 & 0x8000000000000000) == 0)
        {
          goto LABEL_353;
        }

        v200 = *v199;
        v198 = (v200 << 7) + v198 - 128;
        if (v200 < 0)
        {
          v368 = google::protobuf::internal::VarintParseSlow64(v5, v198);
          v403 = v368;
          *(a1 + 322) = v369 != 0;
          if (!v368)
          {
            return 0;
          }
        }

        else
        {
          v199 = (v5 + 2);
LABEL_353:
          v403 = v199;
          *(a1 + 322) = v198 != 0;
        }

        continue;
      case 0x3Cu:
        if (v6 != 224)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x4000u;
        v248 = (v5 + 1);
        v247 = *v5;
        if ((v247 & 0x8000000000000000) == 0)
        {
          goto LABEL_446;
        }

        v249 = *v248;
        v247 = (v249 << 7) + v247 - 128;
        if (v249 < 0)
        {
          v394 = google::protobuf::internal::VarintParseSlow64(v5, v247);
          v403 = v394;
          *(a1 + 323) = v395 != 0;
          if (!v394)
          {
            return 0;
          }
        }

        else
        {
          v248 = (v5 + 2);
LABEL_446:
          v403 = v248;
          *(a1 + 323) = v247 != 0;
        }

        continue;
      case 0x3Du:
        if (v6 != 232)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x1000000u;
        v231 = (v5 + 1);
        v230 = *v5;
        if ((v230 & 0x8000000000000000) == 0)
        {
          goto LABEL_409;
        }

        v232 = *v231;
        v230 = (v232 << 7) + v230 - 128;
        if (v232 < 0)
        {
          v386 = google::protobuf::internal::VarintParseSlow64(v5, v230);
          v403 = v386;
          *(a1 + 280) = v387 != 0;
          if (!v386)
          {
            return 0;
          }
        }

        else
        {
          v231 = (v5 + 2);
LABEL_409:
          v403 = v231;
          *(a1 + 280) = v230 != 0;
        }

        continue;
      case 0x3Eu:
        if (v6 != 240)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x2000000u;
        v240 = (v5 + 1);
        LODWORD(v239) = *v5;
        if ((v239 & 0x80) == 0)
        {
          goto LABEL_427;
        }

        v241 = *v240;
        v239 = (v239 + (v241 << 7) - 128);
        if (v241 < 0)
        {
          v390 = google::protobuf::internal::VarintParseSlow64(v5, v239);
          v403 = v390;
          *(a1 + 284) = v391;
          if (!v390)
          {
            return 0;
          }
        }

        else
        {
          v240 = (v5 + 2);
LABEL_427:
          v403 = v240;
          *(a1 + 284) = v239;
        }

        continue;
      case 0x3Fu:
        if (v6 != 253)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x4000000u;
        v201 = *v5;
        v7 = (v5 + 4);
        *(a1 + 288) = v201;
        goto LABEL_422;
      case 0x40u:
        if (v6)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x8000000u;
        v203 = (v5 + 1);
        LODWORD(v202) = *v5;
        if ((v202 & 0x80) == 0)
        {
          goto LABEL_360;
        }

        v204 = *v203;
        v202 = (v202 + (v204 << 7) - 128);
        if (v204 < 0)
        {
          v370 = google::protobuf::internal::VarintParseSlow64(v5, v202);
          v403 = v370;
          *(a1 + 292) = v371;
          if (!v370)
          {
            return 0;
          }
        }

        else
        {
          v203 = (v5 + 2);
LABEL_360:
          v403 = v203;
          *(a1 + 292) = v202;
        }

        continue;
      case 0x41u:
        if (v6 != 8)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 4u;
        v94 = (v5 + 1);
        v93 = *v5;
        if ((v93 & 0x8000000000000000) == 0)
        {
          goto LABEL_157;
        }

        v95 = *v94;
        v93 = (v95 << 7) + v93 - 128;
        if (v95 < 0)
        {
          v310 = google::protobuf::internal::VarintParseSlow64(v5, v93);
          v403 = v310;
          *(a1 + 222) = v311 != 0;
          if (!v310)
          {
            return 0;
          }
        }

        else
        {
          v94 = (v5 + 2);
LABEL_157:
          v403 = v94;
          *(a1 + 222) = v93 != 0;
        }

        continue;
      case 0x42u:
        if (v6 != 16)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 1u;
        v215 = (v5 + 1);
        LODWORD(v214) = *v5;
        if ((v214 & 0x80) == 0)
        {
          goto LABEL_382;
        }

        v216 = *v215;
        v214 = (v214 + (v216 << 7) - 128);
        if (v216 < 0)
        {
          v376 = google::protobuf::internal::VarintParseSlow64(v5, v214);
          v403 = v376;
          *(a1 + 300) = v377;
          if (!v376)
          {
            return 0;
          }
        }

        else
        {
          v215 = (v5 + 2);
LABEL_382:
          v403 = v215;
          *(a1 + 300) = v214;
        }

        continue;
      case 0x43u:
        if (v6 != 24)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x100u;
        v33 = (v5 + 1);
        v32 = *v5;
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_53;
        }

        v34 = *v33;
        v32 = (v34 << 7) + v32 - 128;
        if (v34 < 0)
        {
          v274 = google::protobuf::internal::VarintParseSlow64(v5, v32);
          v403 = v274;
          *(a1 + 228) = v275 != 0;
          if (!v274)
          {
            return 0;
          }
        }

        else
        {
          v33 = (v5 + 2);
LABEL_53:
          v403 = v33;
          *(a1 + 228) = v32 != 0;
        }

        continue;
      case 0x44u:
        if (v6 != 32)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x20u;
        v228 = (v5 + 1);
        LODWORD(v227) = *v5;
        if ((v227 & 0x80) == 0)
        {
          goto LABEL_404;
        }

        v229 = *v228;
        v227 = (v227 + (v229 << 7) - 128);
        if (v229 < 0)
        {
          v384 = google::protobuf::internal::VarintParseSlow64(v5, v227);
          v403 = v384;
          *(a1 + 308) = v385;
          if (!v384)
          {
            return 0;
          }
        }

        else
        {
          v228 = (v5 + 2);
LABEL_404:
          v403 = v228;
          *(a1 + 308) = v227;
        }

        continue;
      case 0x45u:
        if (v6 != 42)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x100u;
        v38 = *(a1 + 104);
        if (v38)
        {
          goto LABEL_434;
        }

        v233 = *(a1 + 8);
        if (v233)
        {
          v233 = *(v233 & 0xFFFFFFFFFFFFFFFELL);
        }

        v234 = MEMORY[0x277C97B00](v233);
        LODWORD(v38) = v234;
        *(a1 + 104) = v234;
        goto LABEL_433;
      case 0x46u:
        if (v6 != 50)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x200u;
        v38 = *(a1 + 112);
        if (v38)
        {
          goto LABEL_434;
        }

        v134 = *(a1 + 8);
        if (v134)
        {
          v134 = *(v134 & 0xFFFFFFFFFFFFFFFELL);
        }

        v135 = MEMORY[0x277C97B00](v134);
        LODWORD(v38) = v135;
        *(a1 + 112) = v135;
        goto LABEL_433;
      case 0x47u:
        if (v6 != 58)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x400u;
        v38 = *(a1 + 120);
        if (v38)
        {
          goto LABEL_434;
        }

        v242 = *(a1 + 8);
        if (v242)
        {
          v242 = *(v242 & 0xFFFFFFFFFFFFFFFELL);
        }

        v243 = MEMORY[0x277C97B00](v242);
        LODWORD(v38) = v243;
        *(a1 + 120) = v243;
        goto LABEL_433;
      case 0x62u:
        if (v6 != 18)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x800u;
        v38 = *(a1 + 128);
        if (v38)
        {
          goto LABEL_434;
        }

        v205 = *(a1 + 8);
        if (v205)
        {
          v205 = *(v205 & 0xFFFFFFFFFFFFFFFELL);
        }

        v206 = MEMORY[0x277C97B00](v205);
        LODWORD(v38) = v206;
        *(a1 + 128) = v206;
        goto LABEL_433;
      case 0x63u:
        if (v6 != 26)
        {
          goto LABEL_462;
        }

        *(a1 + 16) |= 0x1000u;
        v38 = *(a1 + 136);
        if (v38)
        {
          goto LABEL_434;
        }

        v39 = *(a1 + 8);
        if (v39)
        {
          v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
        }

        v40 = MEMORY[0x277C97B00](v39);
        LODWORD(v38) = v40;
        *(a1 + 136) = v40;
LABEL_433:
        v5 = v403;
LABEL_434:
        v57 = sub_2764A8D08(a3, v38, v5);
        goto LABEL_435;
      case 0x64u:
        if (v6 != 32)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x80000000;
        v80 = (v5 + 1);
        v79 = *v5;
        if ((v79 & 0x8000000000000000) == 0)
        {
          goto LABEL_132;
        }

        v81 = *v80;
        v79 = (v81 << 7) + v79 - 128;
        if (v81 < 0)
        {
          v302 = google::protobuf::internal::VarintParseSlow64(v5, v79);
          v403 = v302;
          *(a1 + 299) = v303 != 0;
          if (!v302)
          {
            return 0;
          }
        }

        else
        {
          v80 = (v5 + 2);
LABEL_132:
          v403 = v80;
          *(a1 + 299) = v79 != 0;
        }

        continue;
      case 0x65u:
        if (v6 != 40)
        {
          goto LABEL_462;
        }

        *(a1 + 20) |= 0x40000000u;
        v172 = (v5 + 1);
        v171 = *v5;
        if ((v171 & 0x8000000000000000) == 0)
        {
          goto LABEL_306;
        }

        v173 = *v172;
        v171 = (v173 << 7) + v171 - 128;
        if (v173 < 0)
        {
          v352 = google::protobuf::internal::VarintParseSlow64(v5, v171);
          v403 = v352;
          *(a1 + 298) = v353 != 0;
          if (!v352)
          {
            return 0;
          }
        }

        else
        {
          v172 = (v5 + 2);
LABEL_306:
          v403 = v172;
          *(a1 + 298) = v171 != 0;
        }

        continue;
      case 0x66u:
        if (v6 != 48)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x400u;
        v45 = (v5 + 1);
        LODWORD(v44) = *v5;
        if ((v44 & 0x80) == 0)
        {
          goto LABEL_73;
        }

        v46 = *v45;
        v44 = (v44 + (v46 << 7) - 128);
        if (v46 < 0)
        {
          v280 = google::protobuf::internal::VarintParseSlow64(v5, v44);
          v403 = v280;
          *(a1 + 316) = v281;
          if (!v280)
          {
            return 0;
          }
        }

        else
        {
          v45 = (v5 + 2);
LABEL_73:
          v403 = v45;
          *(a1 + 316) = v44;
        }

        continue;
      case 0x67u:
        if (v6 != 56)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x8000u;
        v251 = (v5 + 1);
        LODWORD(v250) = *v5;
        if ((v250 & 0x80) == 0)
        {
          goto LABEL_451;
        }

        v252 = *v251;
        v250 = (v250 + (v252 << 7) - 128);
        if (v252 < 0)
        {
          v396 = google::protobuf::internal::VarintParseSlow64(v5, v250);
          v403 = v396;
          *(a1 + 324) = v397;
          if (!v396)
          {
            return 0;
          }
        }

        else
        {
          v251 = (v5 + 2);
LABEL_451:
          v403 = v251;
          *(a1 + 324) = v250;
        }

        continue;
      case 0x68u:
        if (v6 != 64)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x10000u;
        v30 = (v5 + 1);
        LODWORD(v29) = *v5;
        if ((v29 & 0x80) == 0)
        {
          goto LABEL_48;
        }

        v31 = *v30;
        v29 = (v29 + (v31 << 7) - 128);
        if (v31 < 0)
        {
          v272 = google::protobuf::internal::VarintParseSlow64(v5, v29);
          v403 = v272;
          *(a1 + 328) = v273;
          if (!v272)
          {
            return 0;
          }
        }

        else
        {
          v30 = (v5 + 2);
LABEL_48:
          v403 = v30;
          *(a1 + 328) = v29;
        }

        continue;
      case 0x69u:
        if (v6 != 72)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x20000u;
        v109 = (v5 + 1);
        LODWORD(v108) = *v5;
        if ((v108 & 0x80) == 0)
        {
          goto LABEL_182;
        }

        v110 = *v109;
        v108 = (v108 + (v110 << 7) - 128);
        if (v110 < 0)
        {
          v320 = google::protobuf::internal::VarintParseSlow64(v5, v108);
          v403 = v320;
          *(a1 + 332) = v321;
          if (!v320)
          {
            return 0;
          }
        }

        else
        {
          v109 = (v5 + 2);
LABEL_182:
          v403 = v109;
          *(a1 + 332) = v108;
        }

        continue;
      case 0x6Au:
        if (v6 != 80)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x40000u;
        v20 = (v5 + 1);
        LODWORD(v19) = *v5;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_31;
        }

        v21 = *v20;
        v19 = (v19 + (v21 << 7) - 128);
        if (v21 < 0)
        {
          v266 = google::protobuf::internal::VarintParseSlow64(v5, v19);
          v403 = v266;
          *(a1 + 336) = v267;
          if (!v266)
          {
            return 0;
          }
        }

        else
        {
          v20 = (v5 + 2);
LABEL_31:
          v403 = v20;
          *(a1 + 336) = v19;
        }

        continue;
      case 0x6Bu:
        if (v6 != 88)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x80000u;
        v26 = (v5 + 1);
        LODWORD(v25) = *v5;
        if ((v25 & 0x80) == 0)
        {
          goto LABEL_41;
        }

        v27 = *v26;
        v25 = (v25 + (v27 << 7) - 128);
        if (v27 < 0)
        {
          v270 = google::protobuf::internal::VarintParseSlow64(v5, v25);
          v403 = v270;
          *(a1 + 340) = v271;
          if (!v270)
          {
            return 0;
          }
        }

        else
        {
          v26 = (v5 + 2);
LABEL_41:
          v403 = v26;
          *(a1 + 340) = v25;
        }

        continue;
      case 0x6Cu:
        if (v6 != 96)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x100000u;
        v68 = (v5 + 1);
        LODWORD(v67) = *v5;
        if ((v67 & 0x80) == 0)
        {
          goto LABEL_112;
        }

        v69 = *v68;
        v67 = (v67 + (v69 << 7) - 128);
        if (v69 < 0)
        {
          v294 = google::protobuf::internal::VarintParseSlow64(v5, v67);
          v403 = v294;
          *(a1 + 344) = v295;
          if (!v294)
          {
            return 0;
          }
        }

        else
        {
          v68 = (v5 + 2);
LABEL_112:
          v403 = v68;
          *(a1 + 344) = v67;
        }

        continue;
      case 0x6Du:
        if (v6 != 104)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x200000u;
        v175 = (v5 + 1);
        LODWORD(v174) = *v5;
        if ((v174 & 0x80) == 0)
        {
          goto LABEL_311;
        }

        v176 = *v175;
        v174 = (v174 + (v176 << 7) - 128);
        if (v176 < 0)
        {
          v354 = google::protobuf::internal::VarintParseSlow64(v5, v174);
          v403 = v354;
          *(a1 + 348) = v355;
          if (!v354)
          {
            return 0;
          }
        }

        else
        {
          v175 = (v5 + 2);
LABEL_311:
          v403 = v175;
          *(a1 + 348) = v174;
        }

        continue;
      case 0x6Eu:
        if (v6 != 112)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x400000u;
        v36 = (v5 + 1);
        LODWORD(v35) = *v5;
        if ((v35 & 0x80) == 0)
        {
          goto LABEL_58;
        }

        v37 = *v36;
        v35 = (v35 + (v37 << 7) - 128);
        if (v37 < 0)
        {
          v276 = google::protobuf::internal::VarintParseSlow64(v5, v35);
          v403 = v276;
          *(a1 + 352) = v277;
          if (!v276)
          {
            return 0;
          }
        }

        else
        {
          v36 = (v5 + 2);
LABEL_58:
          v403 = v36;
          *(a1 + 352) = v35;
        }

        continue;
      case 0x8Au:
        if (v6 != 80)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x20000000u;
        v62 = (v5 + 1);
        v61 = *v5;
        if ((v61 & 0x8000000000000000) == 0)
        {
          goto LABEL_102;
        }

        v63 = *v62;
        v61 = (v63 << 7) + v61 - 128;
        if (v63 < 0)
        {
          v290 = google::protobuf::internal::VarintParseSlow64(v5, v61);
          v403 = v290;
          *(a1 + 362) = v291 != 0;
          if (!v290)
          {
            return 0;
          }
        }

        else
        {
          v62 = (v5 + 2);
LABEL_102:
          v403 = v62;
          *(a1 + 362) = v61 != 0;
        }

        continue;
      case 0x8Bu:
        if (v6 != 88)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x1000000u;
        v17 = (v5 + 1);
        v16 = *v5;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_26;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if (v18 < 0)
        {
          v264 = google::protobuf::internal::VarintParseSlow64(v5, v16);
          v403 = v264;
          *(a1 + 357) = v265 != 0;
          if (!v264)
          {
            return 0;
          }
        }

        else
        {
          v17 = (v5 + 2);
LABEL_26:
          v403 = v17;
          *(a1 + 357) = v16 != 0;
        }

        continue;
      case 0x8Cu:
        if (v6 != 96)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x2000000u;
        v236 = (v5 + 1);
        v235 = *v5;
        if ((v235 & 0x8000000000000000) == 0)
        {
          goto LABEL_419;
        }

        v237 = *v236;
        v235 = (v237 << 7) + v235 - 128;
        if (v237 < 0)
        {
          v388 = google::protobuf::internal::VarintParseSlow64(v5, v235);
          v403 = v388;
          *(a1 + 358) = v389 != 0;
          if (!v388)
          {
            return 0;
          }
        }

        else
        {
          v236 = (v5 + 2);
LABEL_419:
          v403 = v236;
          *(a1 + 358) = v235 != 0;
        }

        continue;
      case 0x8Du:
        if (v6 != 104)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x4000000u;
        v106 = (v5 + 1);
        v105 = *v5;
        if ((v105 & 0x8000000000000000) == 0)
        {
          goto LABEL_177;
        }

        v107 = *v106;
        v105 = (v107 << 7) + v105 - 128;
        if (v107 < 0)
        {
          v318 = google::protobuf::internal::VarintParseSlow64(v5, v105);
          v403 = v318;
          *(a1 + 359) = v319 != 0;
          if (!v318)
          {
            return 0;
          }
        }

        else
        {
          v106 = (v5 + 2);
LABEL_177:
          v403 = v106;
          *(a1 + 359) = v105 != 0;
        }

        continue;
      case 0x8Eu:
        if (v6 != 112)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x10000000u;
        v42 = (v5 + 1);
        v41 = *v5;
        if ((v41 & 0x8000000000000000) == 0)
        {
          goto LABEL_68;
        }

        v43 = *v42;
        v41 = (v43 << 7) + v41 - 128;
        if (v43 < 0)
        {
          v278 = google::protobuf::internal::VarintParseSlow64(v5, v41);
          v403 = v278;
          *(a1 + 361) = v279 != 0;
          if (!v278)
          {
            return 0;
          }
        }

        else
        {
          v42 = (v5 + 2);
LABEL_68:
          v403 = v42;
          *(a1 + 361) = v41 != 0;
        }

        continue;
      case 0x8Fu:
        if (v6 != 120)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x40000000u;
        v188 = (v5 + 1);
        v187 = *v5;
        if ((v187 & 0x8000000000000000) == 0)
        {
          goto LABEL_333;
        }

        v189 = *v188;
        v187 = (v189 << 7) + v187 - 128;
        if (v189 < 0)
        {
          v362 = google::protobuf::internal::VarintParseSlow64(v5, v187);
          v403 = v362;
          *(a1 + 363) = v363 != 0;
          if (!v362)
          {
            return 0;
          }
        }

        else
        {
          v188 = (v5 + 2);
LABEL_333:
          v403 = v188;
          *(a1 + 363) = v187 != 0;
        }

        continue;
      case 0x90u:
        if (v6 != 128)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x800u;
        v23 = (v5 + 1);
        v22 = *v5;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if (v24 < 0)
        {
          v268 = google::protobuf::internal::VarintParseSlow64(v5, v22);
          v403 = v268;
          *(a1 + 320) = v269 != 0;
          if (!v268)
          {
            return 0;
          }
        }

        else
        {
          v23 = (v5 + 2);
LABEL_36:
          v403 = v23;
          *(a1 + 320) = v22 != 0;
        }

        continue;
      case 0x91u:
        if (v6 != 136)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x1000u;
        v254 = (v5 + 1);
        v253 = *v5;
        if ((v253 & 0x8000000000000000) == 0)
        {
          goto LABEL_456;
        }

        v255 = *v254;
        v253 = (v255 << 7) + v253 - 128;
        if (v255 < 0)
        {
          v398 = google::protobuf::internal::VarintParseSlow64(v5, v253);
          v403 = v398;
          *(a1 + 321) = v399 != 0;
          if (!v398)
          {
            return 0;
          }
        }

        else
        {
          v254 = (v5 + 2);
LABEL_456:
          v403 = v254;
          *(a1 + 321) = v253 != 0;
        }

        continue;
      case 0x92u:
        if (v6 != 144)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x8000000u;
        v14 = (v5 + 1);
        v13 = *v5;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }

        v15 = *v14;
        v13 = (v15 << 7) + v13 - 128;
        if (v15 < 0)
        {
          v262 = google::protobuf::internal::VarintParseSlow64(v5, v13);
          v403 = v262;
          *(a1 + 360) = v263 != 0;
          if (!v262)
          {
            return 0;
          }
        }

        else
        {
          v14 = (v5 + 2);
LABEL_21:
          v403 = v14;
          *(a1 + 360) = v13 != 0;
        }

        continue;
      case 0x93u:
        if (v6 != 157)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x80000000;
        v28 = *v5;
        v7 = (v5 + 4);
        *(a1 + 364) = v28;
LABEL_422:
        v403 = v7;
        continue;
      case 0xA0u:
        if (v6)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 4u;
        v48 = (v5 + 1);
        v47 = *v5;
        if ((v47 & 0x8000000000000000) == 0)
        {
          goto LABEL_78;
        }

        v49 = *v48;
        v47 = (v49 << 7) + v47 - 128;
        if (v49 < 0)
        {
          v282 = google::protobuf::internal::VarintParseSlow64(v5, v47);
          v403 = v282;
          *(a1 + 305) = v283 != 0;
          if (!v282)
          {
            return 0;
          }
        }

        else
        {
          v48 = (v5 + 2);
LABEL_78:
          v403 = v48;
          *(a1 + 305) = v47 != 0;
        }

        continue;
      case 0xA2u:
        if (v6 != 16)
        {
          goto LABEL_462;
        }

        *(a1 + 24) |= 0x200u;
        v11 = (v5 + 1);
        v10 = *v5;
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

        v12 = *v11;
        v10 = (v12 << 7) + v10 - 128;
        if (v12 < 0)
        {
          v260 = google::protobuf::internal::VarintParseSlow64(v5, v10);
          v403 = v260;
          *(a1 + 315) = v261 != 0;
          if (!v260)
          {
            return 0;
          }
        }

        else
        {
          v11 = (v5 + 2);
LABEL_16:
          v403 = v11;
          *(a1 + 315) = v10 != 0;
        }

        continue;
      case 0xA3u:
        if (v6 != 24)
        {
          goto LABEL_462;
        }

        *(a1 + 28) |= 1u;
        v245 = (v5 + 1);
        LODWORD(v244) = *v5;
        if ((v244 & 0x80) == 0)
        {
          goto LABEL_441;
        }

        v246 = *v245;
        v244 = (v244 + (v246 << 7) - 128);
        if (v246 < 0)
        {
          v392 = google::protobuf::internal::VarintParseSlow64(v5, v244);
          v403 = v392;
          *(a1 + 368) = v393;
          if (!v392)
          {
            return 0;
          }
        }

        else
        {
          v245 = (v5 + 2);
LABEL_441:
          v403 = v245;
          *(a1 + 368) = v244;
        }

        continue;
      case 0xBDu:
        if (v6 != 232)
        {
          goto LABEL_462;
        }

        *(a1 + 28) |= 2u;
        v257 = (v5 + 1);
        LODWORD(v256) = *v5;
        if ((v256 & 0x80) == 0)
        {
          goto LABEL_461;
        }

        v258 = *v257;
        v256 = (v256 + (v258 << 7) - 128);
        if (v258 < 0)
        {
          v400 = google::protobuf::internal::VarintParseSlow64(v5, v256);
          v403 = v400;
          *(a1 + 372) = v401;
          if (!v400)
          {
            return 0;
          }
        }

        else
        {
          v257 = (v5 + 2);
LABEL_461:
          v403 = v257;
          *(a1 + 372) = v256;
        }

        continue;
      default:
LABEL_462:
        if (v6)
        {
          v259 = (v6 & 7) == 4;
        }

        else
        {
          v259 = 1;
        }

        if (v259)
        {
          *(a3 + 80) = v6 - 1;
          return v403;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v57 = google::protobuf::internal::UnknownFieldParse();
LABEL_435:
        v403 = v57;
        if (v57)
        {
          continue;
        }

        return 0;
    }
  }
}

unsigned __int8 *sub_27642158C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 0x2000) != 0)
  {
    if (*this <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v7 = *(a1 + 144);
    *v4 = 13;
    *(v4 + 1) = v7;
    v4 += 5;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v8 = *(a1 + 48);
  *v4 = 18;
  v9 = *(v8 + 32);
  if (v9 > 0x7F)
  {
    v4[1] = v9 | 0x80;
    v11 = v9 >> 7;
    if (v9 >> 14)
    {
      v10 = (v4 + 3);
      do
      {
        *(v10 - 1) = v11 | 0x80;
        v12 = v11 >> 7;
        ++v10;
        v13 = v11 >> 14;
        v11 >>= 7;
      }

      while (v13);
      *(v10 - 1) = v12;
    }

    else
    {
      v4[2] = v11;
      v10 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v9;
    v10 = (v4 + 2);
  }

  v4 = sub_276400C0C(v8, v10, this);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_51;
  }

LABEL_41:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v14 = *(a1 + 56);
  *v4 = 26;
  v15 = *(v14 + 32);
  if (v15 > 0x7F)
  {
    v4[1] = v15 | 0x80;
    v17 = v15 >> 7;
    if (v15 >> 14)
    {
      v16 = (v4 + 3);
      do
      {
        *(v16 - 1) = v17 | 0x80;
        v18 = v17 >> 7;
        ++v16;
        v19 = v17 >> 14;
        v17 >>= 7;
      }

      while (v19);
      *(v16 - 1) = v18;
    }

    else
    {
      v4[2] = v17;
      v16 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v15;
    v16 = (v4 + 2);
  }

  v4 = sub_276400C0C(v14, v16, this);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_61;
  }

LABEL_51:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v20 = *(a1 + 64);
  *v4 = 34;
  v21 = *(v20 + 32);
  if (v21 > 0x7F)
  {
    v4[1] = v21 | 0x80;
    v23 = v21 >> 7;
    if (v21 >> 14)
    {
      v22 = (v4 + 3);
      do
      {
        *(v22 - 1) = v23 | 0x80;
        v24 = v23 >> 7;
        ++v22;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
      *(v22 - 1) = v24;
    }

    else
    {
      v4[2] = v23;
      v22 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v21;
    v22 = (v4 + 2);
  }

  v4 = sub_276400C0C(v20, v22, this);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_71;
  }

LABEL_61:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v26 = *(a1 + 72);
  *v4 = 42;
  v27 = *(v26 + 32);
  if (v27 > 0x7F)
  {
    v4[1] = v27 | 0x80;
    v29 = v27 >> 7;
    if (v27 >> 14)
    {
      v28 = (v4 + 3);
      do
      {
        *(v28 - 1) = v29 | 0x80;
        v30 = v29 >> 7;
        ++v28;
        v31 = v29 >> 14;
        v29 >>= 7;
      }

      while (v31);
      *(v28 - 1) = v30;
    }

    else
    {
      v4[2] = v29;
      v28 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v27;
    v28 = (v4 + 2);
  }

  v4 = sub_276400C0C(v26, v28, this);
  if ((v6 & 0x4000) == 0)
  {
LABEL_7:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_74;
  }

LABEL_71:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v32 = *(a1 + 148);
  *v4 = 53;
  *(v4 + 1) = v32;
  v4 += 5;
  if ((v6 & 0x8000) == 0)
  {
LABEL_8:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_77;
  }

LABEL_74:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v33 = *(a1 + 152);
  *v4 = 61;
  *(v4 + 1) = v33;
  v4 += 5;
  if ((v6 & 0x10000) == 0)
  {
LABEL_9:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_80;
  }

LABEL_77:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v34 = *(a1 + 156);
  *v4 = 69;
  *(v4 + 1) = v34;
  v4 += 5;
  if ((v6 & 0x20000) == 0)
  {
LABEL_10:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_83;
  }

LABEL_80:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v35 = *(a1 + 160);
  *v4 = 77;
  *(v4 + 1) = v35;
  v4 += 5;
  if ((v6 & 0x40000) == 0)
  {
LABEL_11:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_12;
    }

LABEL_94:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v40 = *(a1 + 168);
    *v4 = 88;
    if (v40 > 0x7F)
    {
      v4[1] = v40 | 0x80;
      v41 = v40 >> 7;
      if (v40 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v41 | 0x80;
          v42 = v41 >> 7;
          ++v4;
          v43 = v41 >> 14;
          v41 >>= 7;
        }

        while (v43);
        *(v4 - 1) = v42;
        if ((v6 & 0x100000) != 0)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v4[2] = v41;
        v4 += 3;
        if ((v6 & 0x100000) != 0)
        {
          goto LABEL_105;
        }
      }
    }

    else
    {
      v4[1] = v40;
      v4 += 2;
      if ((v6 & 0x100000) != 0)
      {
        goto LABEL_105;
      }
    }

LABEL_13:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_108;
  }

LABEL_83:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v36 = *(a1 + 164);
  *v4 = 80;
  if (v36 > 0x7F)
  {
    v4[1] = v36 | 0x80;
    v37 = v36 >> 7;
    if (v36 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v37 | 0x80;
        v38 = v37 >> 7;
        ++v4;
        v39 = v37 >> 14;
        v37 >>= 7;
      }

      while (v39);
      *(v4 - 1) = v38;
      if ((v6 & 0x80000) != 0)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v4[2] = v37;
      v4 += 3;
      if ((v6 & 0x80000) != 0)
      {
        goto LABEL_94;
      }
    }
  }

  else
  {
    v4[1] = v36;
    v4 += 2;
    if ((v6 & 0x80000) != 0)
    {
      goto LABEL_94;
    }
  }

LABEL_12:
  if ((v6 & 0x100000) == 0)
  {
    goto LABEL_13;
  }

LABEL_105:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v44 = *(a1 + 172);
  *v4 = 101;
  *(v4 + 1) = v44;
  v4 += 5;
  if ((v6 & 0x200000) == 0)
  {
LABEL_14:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_111;
  }

LABEL_108:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v45 = *(a1 + 176);
  *v4 = 109;
  *(v4 + 1) = v45;
  v4 += 5;
  if ((v6 & 0x400000) == 0)
  {
LABEL_15:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_16;
    }

LABEL_122:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v50 = *(a1 + 184);
    *v4 = 120;
    if (v50 > 0x7F)
    {
      v4[1] = v50 | 0x80;
      v51 = v50 >> 7;
      if (v50 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v51 | 0x80;
          v52 = v51 >> 7;
          ++v4;
          v53 = v51 >> 14;
          v51 >>= 7;
        }

        while (v53);
        *(v4 - 1) = v52;
        if ((v6 & 0x1000000) != 0)
        {
          goto LABEL_133;
        }
      }

      else
      {
        v4[2] = v51;
        v4 += 3;
        if ((v6 & 0x1000000) != 0)
        {
          goto LABEL_133;
        }
      }
    }

    else
    {
      v4[1] = v50;
      v4 += 2;
      if ((v6 & 0x1000000) != 0)
      {
        goto LABEL_133;
      }
    }

LABEL_17:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_136;
  }

LABEL_111:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v46 = *(a1 + 180);
  *v4 = 112;
  if (v46 > 0x7F)
  {
    v4[1] = v46 | 0x80;
    v47 = v46 >> 7;
    if (v46 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v47 | 0x80;
        v48 = v47 >> 7;
        ++v4;
        v49 = v47 >> 14;
        v47 >>= 7;
      }

      while (v49);
      *(v4 - 1) = v48;
      if ((v6 & 0x800000) != 0)
      {
        goto LABEL_122;
      }
    }

    else
    {
      v4[2] = v47;
      v4 += 3;
      if ((v6 & 0x800000) != 0)
      {
        goto LABEL_122;
      }
    }
  }

  else
  {
    v4[1] = v46;
    v4 += 2;
    if ((v6 & 0x800000) != 0)
    {
      goto LABEL_122;
    }
  }

LABEL_16:
  if ((v6 & 0x1000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_133:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v54 = *(a1 + 188);
  *v4 = 389;
  *(v4 + 2) = v54;
  v4 += 6;
  if ((v6 & 0x2000000) == 0)
  {
LABEL_18:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_147:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v59 = *(a1 + 196);
    *v4 = 400;
    if (v59 > 0x7F)
    {
      v4[2] = v59 | 0x80;
      v60 = v59 >> 7;
      if (v59 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v60 | 0x80;
          v61 = v60 >> 7;
          ++v4;
          v62 = v60 >> 14;
          v60 >>= 7;
        }

        while (v62);
        *(v4 - 1) = v61;
        if ((v6 & 0x8000000) != 0)
        {
          goto LABEL_158;
        }
      }

      else
      {
        v4[3] = v60;
        v4 += 4;
        if ((v6 & 0x8000000) != 0)
        {
          goto LABEL_158;
        }
      }
    }

    else
    {
      v4[2] = v59;
      v4 += 3;
      if ((v6 & 0x8000000) != 0)
      {
        goto LABEL_158;
      }
    }

LABEL_20:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_169:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v67 = *(a1 + 204);
    *v4 = 416;
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
          v69 = v68 >> 7;
          ++v4;
          v70 = v68 >> 14;
          v68 >>= 7;
        }

        while (v70);
        *(v4 - 1) = v69;
        if ((v6 & 0x20) != 0)
        {
          goto LABEL_180;
        }
      }

      else
      {
        v4[3] = v68;
        v4 += 4;
        if ((v6 & 0x20) != 0)
        {
          goto LABEL_180;
        }
      }
    }

    else
    {
      v4[2] = v67;
      v4 += 3;
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_180;
      }
    }

LABEL_22:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_190;
  }

LABEL_136:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v55 = *(a1 + 192);
  *v4 = 392;
  if (v55 > 0x7F)
  {
    v4[2] = v55 | 0x80;
    v56 = v55 >> 7;
    if (v55 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v56 | 0x80;
        v57 = v56 >> 7;
        ++v4;
        v58 = v56 >> 14;
        v56 >>= 7;
      }

      while (v58);
      *(v4 - 1) = v57;
      if ((v6 & 0x4000000) != 0)
      {
        goto LABEL_147;
      }
    }

    else
    {
      v4[3] = v56;
      v4 += 4;
      if ((v6 & 0x4000000) != 0)
      {
        goto LABEL_147;
      }
    }
  }

  else
  {
    v4[2] = v55;
    v4 += 3;
    if ((v6 & 0x4000000) != 0)
    {
      goto LABEL_147;
    }
  }

LABEL_19:
  if ((v6 & 0x8000000) == 0)
  {
    goto LABEL_20;
  }

LABEL_158:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v63 = *(a1 + 200);
  *v4 = 408;
  if (v63 > 0x7F)
  {
    v4[2] = v63 | 0x80;
    v64 = v63 >> 7;
    if (v63 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v64 | 0x80;
        v65 = v64 >> 7;
        ++v4;
        v66 = v64 >> 14;
        v64 >>= 7;
      }

      while (v66);
      *(v4 - 1) = v65;
      if ((v6 & 0x10000000) != 0)
      {
        goto LABEL_169;
      }
    }

    else
    {
      v4[3] = v64;
      v4 += 4;
      if ((v6 & 0x10000000) != 0)
      {
        goto LABEL_169;
      }
    }
  }

  else
  {
    v4[2] = v63;
    v4 += 3;
    if ((v6 & 0x10000000) != 0)
    {
      goto LABEL_169;
    }
  }

LABEL_21:
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_22;
  }

LABEL_180:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v71 = *(a1 + 80);
  *v4 = 426;
  v72 = *(v71 + 12);
  if (v72 > 0x7F)
  {
    v4[2] = v72 | 0x80;
    v74 = v72 >> 7;
    if (v72 >> 14)
    {
      v73 = v4 + 4;
      do
      {
        *(v73 - 1) = v74 | 0x80;
        v75 = v74 >> 7;
        ++v73;
        v76 = v74 >> 14;
        v74 >>= 7;
      }

      while (v76);
      *(v73 - 1) = v75;
    }

    else
    {
      v4[3] = v74;
      v73 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v72;
    v73 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v71, v73, this);
  if ((v6 & 0x40) == 0)
  {
LABEL_23:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_200;
  }

LABEL_190:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v77 = *(a1 + 88);
  *v4 = 434;
  v78 = *(v77 + 12);
  if (v78 > 0x7F)
  {
    v4[2] = v78 | 0x80;
    v80 = v78 >> 7;
    if (v78 >> 14)
    {
      v79 = v4 + 4;
      do
      {
        *(v79 - 1) = v80 | 0x80;
        v81 = v80 >> 7;
        ++v79;
        v82 = v80 >> 14;
        v80 >>= 7;
      }

      while (v82);
      *(v79 - 1) = v81;
    }

    else
    {
      v4[3] = v80;
      v79 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v78;
    v79 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v77, v79, this);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_24:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_211:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v87 = *(a1 + 212);
    *v4 = 448;
    if (v87 > 0x7F)
    {
      v4[2] = v87 | 0x80;
      v88 = v87 >> 7;
      if (v87 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v88 | 0x80;
          v89 = v88 >> 7;
          ++v4;
          v90 = v88 >> 14;
          v88 >>= 7;
        }

        while (v90);
        *(v4 - 1) = v89;
        if ((v6 & 0x80) != 0)
        {
          goto LABEL_222;
        }
      }

      else
      {
        v4[3] = v88;
        v4 += 4;
        if ((v6 & 0x80) != 0)
        {
          goto LABEL_222;
        }
      }
    }

    else
    {
      v4[2] = v87;
      v4 += 3;
      if ((v6 & 0x80) != 0)
      {
        goto LABEL_222;
      }
    }

LABEL_26:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_232;
  }

LABEL_200:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v83 = *(a1 + 208);
  *v4 = 440;
  if (v83 > 0x7F)
  {
    v4[2] = v83 | 0x80;
    v84 = v83 >> 7;
    if (v83 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v84 | 0x80;
        v85 = v84 >> 7;
        ++v4;
        v86 = v84 >> 14;
        v84 >>= 7;
      }

      while (v86);
      *(v4 - 1) = v85;
      if ((v6 & 0x40000000) != 0)
      {
        goto LABEL_211;
      }
    }

    else
    {
      v4[3] = v84;
      v4 += 4;
      if ((v6 & 0x40000000) != 0)
      {
        goto LABEL_211;
      }
    }
  }

  else
  {
    v4[2] = v83;
    v4 += 3;
    if ((v6 & 0x40000000) != 0)
    {
      goto LABEL_211;
    }
  }

LABEL_25:
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_26;
  }

LABEL_222:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v91 = *(a1 + 96);
  *v4 = 458;
  v92 = *(v91 + 12);
  if (v92 > 0x7F)
  {
    v4[2] = v92 | 0x80;
    v94 = v92 >> 7;
    if (v92 >> 14)
    {
      v93 = v4 + 4;
      do
      {
        *(v93 - 1) = v94 | 0x80;
        v95 = v94 >> 7;
        ++v93;
        v96 = v94 >> 14;
        v94 >>= 7;
      }

      while (v96);
      *(v93 - 1) = v95;
    }

    else
    {
      v4[3] = v94;
      v93 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v92;
    v93 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v91, v93, this);
  if (v6 < 0)
  {
LABEL_232:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v97 = *(a1 + 216);
    *v4 = 464;
    if (v97 > 0x7F)
    {
      v4[2] = v97 | 0x80;
      v98 = v97 >> 7;
      if (v97 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v98 | 0x80;
          v99 = v98 >> 7;
          ++v4;
          v100 = v98 >> 14;
          v98 >>= 7;
        }

        while (v100);
        *(v4 - 1) = v99;
      }

      else
      {
        v4[3] = v98;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v97;
      v4 += 3;
    }
  }

LABEL_241:
  v101 = *(a1 + 20);
  if ((v101 & 0x10000000) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v102 = *(a1 + 296);
    *v4 = 472;
    v4[2] = v102;
    v4 += 3;
    if ((v101 & 0x20000000) == 0)
    {
LABEL_243:
      if ((v101 & 1) == 0)
      {
        goto LABEL_244;
      }

      goto LABEL_256;
    }
  }

  else if ((v101 & 0x20000000) == 0)
  {
    goto LABEL_243;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v103 = *(a1 + 297);
  *v4 = 480;
  v4[2] = v103;
  v4 += 3;
  if ((v101 & 1) == 0)
  {
LABEL_244:
    if ((v101 & 2) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_259;
  }

LABEL_256:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v104 = *(a1 + 220);
  *v4 = 488;
  v4[2] = v104;
  v4 += 3;
  if ((v101 & 2) == 0)
  {
LABEL_245:
    if ((v101 & 8) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_262;
  }

LABEL_259:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v105 = *(a1 + 221);
  *v4 = 496;
  v4[2] = v105;
  v4 += 3;
  if ((v101 & 8) == 0)
  {
LABEL_246:
    if ((v101 & 0x200) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_265;
  }

LABEL_262:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v106 = *(a1 + 223);
  *v4 = 504;
  v4[2] = v106;
  v4 += 3;
  if ((v101 & 0x200) == 0)
  {
LABEL_247:
    if ((v101 & 0x400) == 0)
    {
      goto LABEL_248;
    }

    goto LABEL_268;
  }

LABEL_265:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v107 = *(a1 + 229);
  *v4 = 640;
  v4[2] = v107;
  v4 += 3;
  if ((v101 & 0x400) == 0)
  {
LABEL_248:
    if ((v101 & 0x800) == 0)
    {
      goto LABEL_274;
    }

    goto LABEL_271;
  }

LABEL_268:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v108 = *(a1 + 230);
  *v4 = 648;
  v4[2] = v108;
  v4 += 3;
  if ((v101 & 0x800) != 0)
  {
LABEL_271:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v109 = *(a1 + 231);
    *v4 = 656;
    v4[2] = v109;
    v4 += 3;
  }

LABEL_274:
  v110 = *(a1 + 24);
  if ((v110 & 2) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v111 = *(a1 + 304);
    *v4 = 664;
    v4[2] = v111;
    v4 += 3;
    if ((v110 & 8) == 0)
    {
LABEL_276:
      if ((v110 & 0x10) == 0)
      {
        goto LABEL_287;
      }

      goto LABEL_284;
    }
  }

  else if ((v110 & 8) == 0)
  {
    goto LABEL_276;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v112 = *(a1 + 306);
  *v4 = 672;
  v4[2] = v112;
  v4 += 3;
  if ((v110 & 0x10) != 0)
  {
LABEL_284:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v113 = *(a1 + 307);
    *v4 = 680;
    v4[2] = v113;
    v4 += 3;
  }

LABEL_287:
  v114 = *(a1 + 20);
  if ((v114 & 0x10) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v115 = *(a1 + 224);
    *v4 = 688;
    v4[2] = v115;
    v4 += 3;
    if ((v114 & 0x20) == 0)
    {
LABEL_289:
      if ((v114 & 0x40) == 0)
      {
        goto LABEL_290;
      }

      goto LABEL_298;
    }
  }

  else if ((v114 & 0x20) == 0)
  {
    goto LABEL_289;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v116 = *(a1 + 225);
  *v4 = 696;
  v4[2] = v116;
  v4 += 3;
  if ((v114 & 0x40) == 0)
  {
LABEL_290:
    if ((v114 & 0x80) == 0)
    {
      goto LABEL_304;
    }

    goto LABEL_301;
  }

LABEL_298:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v117 = *(a1 + 226);
  *v4 = 704;
  v4[2] = v117;
  v4 += 3;
  if ((v114 & 0x80) != 0)
  {
LABEL_301:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v118 = *(a1 + 227);
    *v4 = 712;
    v4[2] = v118;
    v4 += 3;
  }

LABEL_304:
  v119 = *(a1 + 24);
  if ((v119 & 0x40) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v120 = *(a1 + 312);
    *v4 = 720;
    v4[2] = v120;
    v4 += 3;
    if ((v119 & 0x80) == 0)
    {
LABEL_306:
      if ((v119 & 0x100) == 0)
      {
        goto LABEL_307;
      }

      goto LABEL_315;
    }
  }

  else if ((v119 & 0x80) == 0)
  {
    goto LABEL_306;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v121 = *(a1 + 313);
  *v4 = 728;
  v4[2] = v121;
  v4 += 3;
  if ((v119 & 0x100) == 0)
  {
LABEL_307:
    if ((v119 & 0x800000) == 0)
    {
      goto LABEL_321;
    }

    goto LABEL_318;
  }

LABEL_315:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v122 = *(a1 + 314);
  *v4 = 736;
  v4[2] = v122;
  v4 += 3;
  if ((v119 & 0x800000) != 0)
  {
LABEL_318:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v123 = *(a1 + 356);
    *v4 = 744;
    v4[2] = v123;
    v4 += 3;
  }

LABEL_321:
  v124 = *(a1 + 20);
  if ((v124 & 0x1000) == 0)
  {
    if ((v124 & 0x2000) == 0)
    {
      goto LABEL_323;
    }

LABEL_341:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v129 = *(a1 + 236);
    *v4 = 760;
    if (v129 > 0x7F)
    {
      v4[2] = v129 | 0x80;
      v130 = v129 >> 7;
      if (v129 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v130 | 0x80;
          v131 = v130 >> 7;
          ++v4;
          v132 = v130 >> 14;
          v130 >>= 7;
        }

        while (v132);
        *(v4 - 1) = v131;
        if ((v124 & 0x4000) != 0)
        {
          goto LABEL_352;
        }
      }

      else
      {
        v4[3] = v130;
        v4 += 4;
        if ((v124 & 0x4000) != 0)
        {
          goto LABEL_352;
        }
      }
    }

    else
    {
      v4[2] = v129;
      v4 += 3;
      if ((v124 & 0x4000) != 0)
      {
        goto LABEL_352;
      }
    }

LABEL_324:
    if ((v124 & 0x8000) == 0)
    {
      goto LABEL_325;
    }

LABEL_363:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v137 = *(a1 + 244);
    *v4 = 904;
    if (v137 > 0x7F)
    {
      v4[2] = v137 | 0x80;
      v138 = v137 >> 7;
      if (v137 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v138 | 0x80;
          v139 = v138 >> 7;
          ++v4;
          v140 = v138 >> 14;
          v138 >>= 7;
        }

        while (v140);
        *(v4 - 1) = v139;
        if ((v124 & 0x10000) != 0)
        {
          goto LABEL_374;
        }
      }

      else
      {
        v4[3] = v138;
        v4 += 4;
        if ((v124 & 0x10000) != 0)
        {
          goto LABEL_374;
        }
      }
    }

    else
    {
      v4[2] = v137;
      v4 += 3;
      if ((v124 & 0x10000) != 0)
      {
        goto LABEL_374;
      }
    }

LABEL_326:
    if ((v124 & 0x20000) == 0)
    {
      goto LABEL_327;
    }

LABEL_385:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v145 = *(a1 + 252);
    *v4 = 920;
    if (v145 > 0x7F)
    {
      v4[2] = v145 | 0x80;
      v146 = v145 >> 7;
      if (v145 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v146 | 0x80;
          v147 = v146 >> 7;
          ++v4;
          v148 = v146 >> 14;
          v146 >>= 7;
        }

        while (v148);
        *(v4 - 1) = v147;
        if ((v124 & 0x40000) != 0)
        {
          goto LABEL_396;
        }
      }

      else
      {
        v4[3] = v146;
        v4 += 4;
        if ((v124 & 0x40000) != 0)
        {
          goto LABEL_396;
        }
      }
    }

    else
    {
      v4[2] = v145;
      v4 += 3;
      if ((v124 & 0x40000) != 0)
      {
        goto LABEL_396;
      }
    }

LABEL_328:
    if ((v124 & 0x80000) == 0)
    {
      goto LABEL_402;
    }

    goto LABEL_399;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v125 = *(a1 + 232);
  *v4 = 752;
  if (v125 > 0x7F)
  {
    v4[2] = v125 | 0x80;
    v126 = v125 >> 7;
    if (v125 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v126 | 0x80;
        v127 = v126 >> 7;
        ++v4;
        v128 = v126 >> 14;
        v126 >>= 7;
      }

      while (v128);
      *(v4 - 1) = v127;
      if ((v124 & 0x2000) != 0)
      {
        goto LABEL_341;
      }
    }

    else
    {
      v4[3] = v126;
      v4 += 4;
      if ((v124 & 0x2000) != 0)
      {
        goto LABEL_341;
      }
    }
  }

  else
  {
    v4[2] = v125;
    v4 += 3;
    if ((v124 & 0x2000) != 0)
    {
      goto LABEL_341;
    }
  }

LABEL_323:
  if ((v124 & 0x4000) == 0)
  {
    goto LABEL_324;
  }

LABEL_352:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v133 = *(a1 + 240);
  *v4 = 896;
  if (v133 > 0x7F)
  {
    v4[2] = v133 | 0x80;
    v134 = v133 >> 7;
    if (v133 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v134 | 0x80;
        v135 = v134 >> 7;
        ++v4;
        v136 = v134 >> 14;
        v134 >>= 7;
      }

      while (v136);
      *(v4 - 1) = v135;
      if ((v124 & 0x8000) != 0)
      {
        goto LABEL_363;
      }
    }

    else
    {
      v4[3] = v134;
      v4 += 4;
      if ((v124 & 0x8000) != 0)
      {
        goto LABEL_363;
      }
    }
  }

  else
  {
    v4[2] = v133;
    v4 += 3;
    if ((v124 & 0x8000) != 0)
    {
      goto LABEL_363;
    }
  }

LABEL_325:
  if ((v124 & 0x10000) == 0)
  {
    goto LABEL_326;
  }

LABEL_374:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v141 = *(a1 + 248);
  *v4 = 912;
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
        v143 = v142 >> 7;
        ++v4;
        v144 = v142 >> 14;
        v142 >>= 7;
      }

      while (v144);
      *(v4 - 1) = v143;
      if ((v124 & 0x20000) != 0)
      {
        goto LABEL_385;
      }
    }

    else
    {
      v4[3] = v142;
      v4 += 4;
      if ((v124 & 0x20000) != 0)
      {
        goto LABEL_385;
      }
    }
  }

  else
  {
    v4[2] = v141;
    v4 += 3;
    if ((v124 & 0x20000) != 0)
    {
      goto LABEL_385;
    }
  }

LABEL_327:
  if ((v124 & 0x40000) == 0)
  {
    goto LABEL_328;
  }

LABEL_396:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v149 = *(a1 + 256);
  *v4 = 933;
  *(v4 + 2) = v149;
  v4 += 6;
  if ((v124 & 0x80000) != 0)
  {
LABEL_399:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v150 = *(a1 + 260);
    *v4 = 941;
    *(v4 + 2) = v150;
    v4 += 6;
  }

LABEL_402:
  if (*(a1 + 16))
  {
    v4 = sub_2763DD938(this, 54, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v151 = *(a1 + 20);
  if ((v151 & 0x100000) == 0)
  {
    if ((v151 & 0x200000) == 0)
    {
      goto LABEL_406;
    }

LABEL_420:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v156 = *(a1 + 268);
    *v4 = 960;
    if (v156 > 0x7F)
    {
      v4[2] = v156 | 0x80;
      v157 = v156 >> 7;
      if (v156 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v157 | 0x80;
          v158 = v157 >> 7;
          ++v4;
          v159 = v157 >> 14;
          v157 >>= 7;
        }

        while (v159);
        *(v4 - 1) = v158;
        if ((v151 & 0x400000) != 0)
        {
          goto LABEL_431;
        }
      }

      else
      {
        v4[3] = v157;
        v4 += 4;
        if ((v151 & 0x400000) != 0)
        {
          goto LABEL_431;
        }
      }
    }

    else
    {
      v4[2] = v156;
      v4 += 3;
      if ((v151 & 0x400000) != 0)
      {
        goto LABEL_431;
      }
    }

LABEL_407:
    if ((v151 & 0x800000) == 0)
    {
      goto LABEL_437;
    }

    goto LABEL_434;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v152 = *(a1 + 264);
  *v4 = 952;
  if (v152 > 0x7F)
  {
    v4[2] = v152 | 0x80;
    v153 = v152 >> 7;
    if (v152 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v153 | 0x80;
        v154 = v153 >> 7;
        ++v4;
        v155 = v153 >> 14;
        v153 >>= 7;
      }

      while (v155);
      *(v4 - 1) = v154;
      if ((v151 & 0x200000) != 0)
      {
        goto LABEL_420;
      }
    }

    else
    {
      v4[3] = v153;
      v4 += 4;
      if ((v151 & 0x200000) != 0)
      {
        goto LABEL_420;
      }
    }
  }

  else
  {
    v4[2] = v152;
    v4 += 3;
    if ((v151 & 0x200000) != 0)
    {
      goto LABEL_420;
    }
  }

LABEL_406:
  if ((v151 & 0x400000) == 0)
  {
    goto LABEL_407;
  }

LABEL_431:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v160 = *(a1 + 272);
  *v4 = 973;
  *(v4 + 2) = v160;
  v4 += 6;
  if ((v151 & 0x800000) != 0)
  {
LABEL_434:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v161 = *(a1 + 276);
    *v4 = 981;
    *(v4 + 2) = v161;
    v4 += 6;
  }

LABEL_437:
  v162 = *(a1 + 24);
  if ((v162 & 0x2000) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v163 = *(a1 + 322);
    *v4 = 984;
    v4[2] = v163;
    v4 += 3;
  }

  if ((v162 & 0x4000) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v164 = *(a1 + 323);
    *v4 = 992;
    v4[2] = v164;
    v4 += 3;
  }

  v165 = *(a1 + 20);
  if ((v165 & 0x1000000) == 0)
  {
    if ((v165 & 0x2000000) == 0)
    {
      goto LABEL_447;
    }

LABEL_461:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v169 = *(a1 + 284);
    *v4 = 1008;
    if (v169 > 0x7F)
    {
      v4[2] = v169 | 0x80;
      v171 = v169 >> 7;
      if (v169 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v171 | 0x80;
          v177 = v171 >> 7;
          ++v4;
          v178 = v171 >> 14;
          v171 >>= 7;
        }

        while (v178);
        *(v4 - 1) = v177;
        if ((v165 & 0x4000000) != 0)
        {
          goto LABEL_488;
        }
      }

      else
      {
        v4[3] = v171;
        v4 += 4;
        if ((v165 & 0x4000000) != 0)
        {
          goto LABEL_488;
        }
      }
    }

    else
    {
      v4[2] = v169;
      v4 += 3;
      if ((v165 & 0x4000000) != 0)
      {
        goto LABEL_488;
      }
    }

LABEL_448:
    if ((v165 & 0x8000000) == 0)
    {
      goto LABEL_449;
    }

    goto LABEL_491;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v168 = *(a1 + 280);
  *v4 = 1000;
  v4[2] = v168;
  v4 += 3;
  if ((v165 & 0x2000000) != 0)
  {
    goto LABEL_461;
  }

LABEL_447:
  if ((v165 & 0x4000000) == 0)
  {
    goto LABEL_448;
  }

LABEL_488:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v179 = *(a1 + 288);
  *v4 = 1021;
  *(v4 + 2) = v179;
  v4 += 6;
  if ((v165 & 0x8000000) == 0)
  {
LABEL_449:
    if ((v165 & 4) == 0)
    {
      goto LABEL_453;
    }

    goto LABEL_450;
  }

LABEL_491:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v180 = *(a1 + 292);
  *v4 = 1152;
  if (v180 > 0x7F)
  {
    v4[2] = v180 | 0x80;
    v181 = v180 >> 7;
    if (v180 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v181 | 0x80;
        v189 = v181 >> 7;
        ++v4;
        v190 = v181 >> 14;
        v181 >>= 7;
      }

      while (v190);
      *(v4 - 1) = v189;
      if ((v165 & 4) == 0)
      {
        goto LABEL_453;
      }
    }

    else
    {
      v4[3] = v181;
      v4 += 4;
      if ((v165 & 4) == 0)
      {
        goto LABEL_453;
      }
    }
  }

  else
  {
    v4[2] = v180;
    v4 += 3;
    if ((v165 & 4) == 0)
    {
      goto LABEL_453;
    }
  }

LABEL_450:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v166 = *(a1 + 222);
  *v4 = 1160;
  v4[2] = v166;
  v4 += 3;
LABEL_453:
  if (*(a1 + 24))
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v167 = *(a1 + 300);
    *v4 = 1168;
    if (v167 > 0x7F)
    {
      v4[2] = v167 | 0x80;
      v170 = v167 >> 7;
      if (v167 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v170 | 0x80;
          v172 = v170 >> 7;
          ++v4;
          v173 = v170 >> 14;
          v170 >>= 7;
        }

        while (v173);
        *(v4 - 1) = v172;
      }

      else
      {
        v4[3] = v170;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v167;
      v4 += 3;
    }
  }

  if (*(a1 + 21))
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v174 = *(a1 + 228);
    *v4 = 1176;
    v4[2] = v174;
    v4 += 3;
  }

  if ((*(a1 + 24) & 0x20) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v175 = *(a1 + 308);
    *v4 = 1184;
    if (v175 > 0x7F)
    {
      v4[2] = v175 | 0x80;
      v176 = v175 >> 7;
      if (v175 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v176 | 0x80;
          v182 = v176 >> 7;
          ++v4;
          v183 = v176 >> 14;
          v176 >>= 7;
        }

        while (v183);
        *(v4 - 1) = v182;
      }

      else
      {
        v4[3] = v176;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v175;
      v4 += 3;
    }
  }

  v184 = *(a1 + 16);
  if ((v184 & 0x100) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v185 = *(a1 + 104);
    *v4 = 1194;
    v186 = *(v185 + 12);
    if (v186 > 0x7F)
    {
      v4[2] = v186 | 0x80;
      v188 = v186 >> 7;
      if (v186 >> 14)
      {
        v187 = v4 + 4;
        do
        {
          *(v187 - 1) = v188 | 0x80;
          v191 = v188 >> 7;
          ++v187;
          v192 = v188 >> 14;
          v188 >>= 7;
        }

        while (v192);
        *(v187 - 1) = v191;
      }

      else
      {
        v4[3] = v188;
        v187 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v186;
      v187 = v4 + 3;
    }

    v4 = TSK::FormatStructArchive::_InternalSerialize(v185, v187, this);
    if ((v184 & 0x200) == 0)
    {
LABEL_504:
      if ((v184 & 0x400) == 0)
      {
        goto LABEL_505;
      }

      goto LABEL_532;
    }
  }

  else if ((v184 & 0x200) == 0)
  {
    goto LABEL_504;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v193 = *(a1 + 112);
  *v4 = 1202;
  v194 = *(v193 + 12);
  if (v194 > 0x7F)
  {
    v4[2] = v194 | 0x80;
    v196 = v194 >> 7;
    if (v194 >> 14)
    {
      v195 = v4 + 4;
      do
      {
        *(v195 - 1) = v196 | 0x80;
        v197 = v196 >> 7;
        ++v195;
        v198 = v196 >> 14;
        v196 >>= 7;
      }

      while (v198);
      *(v195 - 1) = v197;
    }

    else
    {
      v4[3] = v196;
      v195 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v194;
    v195 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v193, v195, this);
  if ((v184 & 0x400) == 0)
  {
LABEL_505:
    if ((v184 & 0x800) == 0)
    {
      goto LABEL_506;
    }

    goto LABEL_542;
  }

LABEL_532:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v199 = *(a1 + 120);
  *v4 = 1210;
  v200 = *(v199 + 12);
  if (v200 > 0x7F)
  {
    v4[2] = v200 | 0x80;
    v202 = v200 >> 7;
    if (v200 >> 14)
    {
      v201 = v4 + 4;
      do
      {
        *(v201 - 1) = v202 | 0x80;
        v203 = v202 >> 7;
        ++v201;
        v204 = v202 >> 14;
        v202 >>= 7;
      }

      while (v204);
      *(v201 - 1) = v203;
    }

    else
    {
      v4[3] = v202;
      v201 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v200;
    v201 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v199, v201, this);
  if ((v184 & 0x800) == 0)
  {
LABEL_506:
    if ((v184 & 0x1000) == 0)
    {
      goto LABEL_562;
    }

    goto LABEL_552;
  }

LABEL_542:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v205 = *(a1 + 128);
  *v4 = 1682;
  v206 = *(v205 + 12);
  if (v206 > 0x7F)
  {
    v4[2] = v206 | 0x80;
    v208 = v206 >> 7;
    if (v206 >> 14)
    {
      v207 = v4 + 4;
      do
      {
        *(v207 - 1) = v208 | 0x80;
        v209 = v208 >> 7;
        ++v207;
        v210 = v208 >> 14;
        v208 >>= 7;
      }

      while (v210);
      *(v207 - 1) = v209;
    }

    else
    {
      v4[3] = v208;
      v207 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v206;
    v207 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v205, v207, this);
  if ((v184 & 0x1000) != 0)
  {
LABEL_552:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v211 = *(a1 + 136);
    *v4 = 1690;
    v212 = *(v211 + 12);
    if (v212 > 0x7F)
    {
      v4[2] = v212 | 0x80;
      v214 = v212 >> 7;
      if (v212 >> 14)
      {
        v213 = v4 + 4;
        do
        {
          *(v213 - 1) = v214 | 0x80;
          v215 = v214 >> 7;
          ++v213;
          v216 = v214 >> 14;
          v214 >>= 7;
        }

        while (v216);
        *(v213 - 1) = v215;
      }

      else
      {
        v4[3] = v214;
        v213 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v212;
      v213 = v4 + 3;
    }

    v4 = TSK::FormatStructArchive::_InternalSerialize(v211, v213, this);
  }

LABEL_562:
  v217 = *(a1 + 20);
  if ((v217 & 0x80000000) == 0)
  {
    if ((v217 & 0x40000000) == 0)
    {
      goto LABEL_571;
    }

    goto LABEL_568;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v218 = *(a1 + 299);
  *v4 = 1696;
  v4[2] = v218;
  v4 += 3;
  if ((v217 & 0x40000000) != 0)
  {
LABEL_568:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v219 = *(a1 + 298);
    *v4 = 1704;
    v4[2] = v219;
    v4 += 3;
  }

LABEL_571:
  v220 = *(a1 + 24);
  if ((v220 & 0x400) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v221 = *(a1 + 316);
    *v4 = 1712;
    if (v221 > 0x7F)
    {
      v4[2] = v221 | 0x80;
      v222 = v221 >> 7;
      if (v221 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v222 | 0x80;
          v223 = v222 >> 7;
          ++v4;
          v224 = v222 >> 14;
          v222 >>= 7;
        }

        while (v224);
        *(v4 - 1) = v223;
        if ((v220 & 0x8000) != 0)
        {
          goto LABEL_604;
        }
      }

      else
      {
        v4[3] = v222;
        v4 += 4;
        if ((v220 & 0x8000) != 0)
        {
          goto LABEL_604;
        }
      }
    }

    else
    {
      v4[2] = v221;
      v4 += 3;
      if ((v220 & 0x8000) != 0)
      {
        goto LABEL_604;
      }
    }

LABEL_573:
    if ((v220 & 0x10000) == 0)
    {
      goto LABEL_574;
    }

LABEL_615:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v229 = *(a1 + 328);
    *v4 = 1728;
    if (v229 > 0x7F)
    {
      v4[2] = v229 | 0x80;
      v230 = v229 >> 7;
      if (v229 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v230 | 0x80;
          v231 = v230 >> 7;
          ++v4;
          v232 = v230 >> 14;
          v230 >>= 7;
        }

        while (v232);
        *(v4 - 1) = v231;
        if ((v220 & 0x20000) != 0)
        {
          goto LABEL_626;
        }
      }

      else
      {
        v4[3] = v230;
        v4 += 4;
        if ((v220 & 0x20000) != 0)
        {
          goto LABEL_626;
        }
      }
    }

    else
    {
      v4[2] = v229;
      v4 += 3;
      if ((v220 & 0x20000) != 0)
      {
        goto LABEL_626;
      }
    }

LABEL_575:
    if ((v220 & 0x40000) == 0)
    {
      goto LABEL_576;
    }

LABEL_637:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v237 = *(a1 + 336);
    *v4 = 1744;
    if (v237 > 0x7F)
    {
      v4[2] = v237 | 0x80;
      v238 = v237 >> 7;
      if (v237 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v238 | 0x80;
          v239 = v238 >> 7;
          ++v4;
          v240 = v238 >> 14;
          v238 >>= 7;
        }

        while (v240);
        *(v4 - 1) = v239;
        if ((v220 & 0x80000) != 0)
        {
          goto LABEL_648;
        }
      }

      else
      {
        v4[3] = v238;
        v4 += 4;
        if ((v220 & 0x80000) != 0)
        {
          goto LABEL_648;
        }
      }
    }

    else
    {
      v4[2] = v237;
      v4 += 3;
      if ((v220 & 0x80000) != 0)
      {
        goto LABEL_648;
      }
    }

LABEL_577:
    if ((v220 & 0x100000) == 0)
    {
      goto LABEL_578;
    }

LABEL_659:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v245 = *(a1 + 344);
    *v4 = 1760;
    if (v245 > 0x7F)
    {
      v4[2] = v245 | 0x80;
      v246 = v245 >> 7;
      if (v245 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v246 | 0x80;
          v247 = v246 >> 7;
          ++v4;
          v248 = v246 >> 14;
          v246 >>= 7;
        }

        while (v248);
        *(v4 - 1) = v247;
        if ((v220 & 0x200000) != 0)
        {
          goto LABEL_670;
        }
      }

      else
      {
        v4[3] = v246;
        v4 += 4;
        if ((v220 & 0x200000) != 0)
        {
          goto LABEL_670;
        }
      }
    }

    else
    {
      v4[2] = v245;
      v4 += 3;
      if ((v220 & 0x200000) != 0)
      {
        goto LABEL_670;
      }
    }

LABEL_579:
    if ((v220 & 0x400000) == 0)
    {
      goto LABEL_580;
    }

LABEL_681:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v253 = *(a1 + 352);
    *v4 = 1776;
    if (v253 > 0x7F)
    {
      v4[2] = v253 | 0x80;
      v254 = v253 >> 7;
      if (v253 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v254 | 0x80;
          v255 = v254 >> 7;
          ++v4;
          v256 = v254 >> 14;
          v254 >>= 7;
        }

        while (v256);
        *(v4 - 1) = v255;
        if ((v220 & 0x20000000) != 0)
        {
          goto LABEL_692;
        }
      }

      else
      {
        v4[3] = v254;
        v4 += 4;
        if ((v220 & 0x20000000) != 0)
        {
          goto LABEL_692;
        }
      }
    }

    else
    {
      v4[2] = v253;
      v4 += 3;
      if ((v220 & 0x20000000) != 0)
      {
        goto LABEL_692;
      }
    }

LABEL_581:
    if ((v220 & 0x1000000) == 0)
    {
      goto LABEL_582;
    }

    goto LABEL_695;
  }

  if ((v220 & 0x8000) == 0)
  {
    goto LABEL_573;
  }

LABEL_604:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v225 = *(a1 + 324);
  *v4 = 1720;
  if (v225 > 0x7F)
  {
    v4[2] = v225 | 0x80;
    v226 = v225 >> 7;
    if (v225 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v226 | 0x80;
        v227 = v226 >> 7;
        ++v4;
        v228 = v226 >> 14;
        v226 >>= 7;
      }

      while (v228);
      *(v4 - 1) = v227;
      if ((v220 & 0x10000) != 0)
      {
        goto LABEL_615;
      }
    }

    else
    {
      v4[3] = v226;
      v4 += 4;
      if ((v220 & 0x10000) != 0)
      {
        goto LABEL_615;
      }
    }
  }

  else
  {
    v4[2] = v225;
    v4 += 3;
    if ((v220 & 0x10000) != 0)
    {
      goto LABEL_615;
    }
  }

LABEL_574:
  if ((v220 & 0x20000) == 0)
  {
    goto LABEL_575;
  }

LABEL_626:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v233 = *(a1 + 332);
  *v4 = 1736;
  if (v233 > 0x7F)
  {
    v4[2] = v233 | 0x80;
    v234 = v233 >> 7;
    if (v233 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v234 | 0x80;
        v235 = v234 >> 7;
        ++v4;
        v236 = v234 >> 14;
        v234 >>= 7;
      }

      while (v236);
      *(v4 - 1) = v235;
      if ((v220 & 0x40000) != 0)
      {
        goto LABEL_637;
      }
    }

    else
    {
      v4[3] = v234;
      v4 += 4;
      if ((v220 & 0x40000) != 0)
      {
        goto LABEL_637;
      }
    }
  }

  else
  {
    v4[2] = v233;
    v4 += 3;
    if ((v220 & 0x40000) != 0)
    {
      goto LABEL_637;
    }
  }

LABEL_576:
  if ((v220 & 0x80000) == 0)
  {
    goto LABEL_577;
  }

LABEL_648:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v241 = *(a1 + 340);
  *v4 = 1752;
  if (v241 > 0x7F)
  {
    v4[2] = v241 | 0x80;
    v242 = v241 >> 7;
    if (v241 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v242 | 0x80;
        v243 = v242 >> 7;
        ++v4;
        v244 = v242 >> 14;
        v242 >>= 7;
      }

      while (v244);
      *(v4 - 1) = v243;
      if ((v220 & 0x100000) != 0)
      {
        goto LABEL_659;
      }
    }

    else
    {
      v4[3] = v242;
      v4 += 4;
      if ((v220 & 0x100000) != 0)
      {
        goto LABEL_659;
      }
    }
  }

  else
  {
    v4[2] = v241;
    v4 += 3;
    if ((v220 & 0x100000) != 0)
    {
      goto LABEL_659;
    }
  }

LABEL_578:
  if ((v220 & 0x200000) == 0)
  {
    goto LABEL_579;
  }

LABEL_670:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v249 = *(a1 + 348);
  *v4 = 1768;
  if (v249 > 0x7F)
  {
    v4[2] = v249 | 0x80;
    v250 = v249 >> 7;
    if (v249 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v250 | 0x80;
        v251 = v250 >> 7;
        ++v4;
        v252 = v250 >> 14;
        v250 >>= 7;
      }

      while (v252);
      *(v4 - 1) = v251;
      if ((v220 & 0x400000) != 0)
      {
        goto LABEL_681;
      }
    }

    else
    {
      v4[3] = v250;
      v4 += 4;
      if ((v220 & 0x400000) != 0)
      {
        goto LABEL_681;
      }
    }
  }

  else
  {
    v4[2] = v249;
    v4 += 3;
    if ((v220 & 0x400000) != 0)
    {
      goto LABEL_681;
    }
  }

LABEL_580:
  if ((v220 & 0x20000000) == 0)
  {
    goto LABEL_581;
  }

LABEL_692:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v257 = *(a1 + 362);
  *v4 = 2256;
  v4[2] = v257;
  v4 += 3;
  if ((v220 & 0x1000000) == 0)
  {
LABEL_582:
    if ((v220 & 0x2000000) == 0)
    {
      goto LABEL_583;
    }

    goto LABEL_698;
  }

LABEL_695:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v258 = *(a1 + 357);
  *v4 = 2264;
  v4[2] = v258;
  v4 += 3;
  if ((v220 & 0x2000000) == 0)
  {
LABEL_583:
    if ((v220 & 0x4000000) == 0)
    {
      goto LABEL_584;
    }

    goto LABEL_701;
  }

LABEL_698:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v259 = *(a1 + 358);
  *v4 = 2272;
  v4[2] = v259;
  v4 += 3;
  if ((v220 & 0x4000000) == 0)
  {
LABEL_584:
    if ((v220 & 0x10000000) == 0)
    {
      goto LABEL_585;
    }

    goto LABEL_704;
  }

LABEL_701:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v260 = *(a1 + 359);
  *v4 = 2280;
  v4[2] = v260;
  v4 += 3;
  if ((v220 & 0x10000000) == 0)
  {
LABEL_585:
    if ((v220 & 0x40000000) == 0)
    {
      goto LABEL_586;
    }

    goto LABEL_707;
  }

LABEL_704:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v261 = *(a1 + 361);
  *v4 = 2288;
  v4[2] = v261;
  v4 += 3;
  if ((v220 & 0x40000000) == 0)
  {
LABEL_586:
    if ((v220 & 0x800) == 0)
    {
      goto LABEL_587;
    }

    goto LABEL_710;
  }

LABEL_707:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v262 = *(a1 + 363);
  *v4 = 2296;
  v4[2] = v262;
  v4 += 3;
  if ((v220 & 0x800) == 0)
  {
LABEL_587:
    if ((v220 & 0x1000) == 0)
    {
      goto LABEL_588;
    }

    goto LABEL_713;
  }

LABEL_710:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v263 = *(a1 + 320);
  *v4 = 2432;
  v4[2] = v263;
  v4 += 3;
  if ((v220 & 0x1000) == 0)
  {
LABEL_588:
    if ((v220 & 0x8000000) == 0)
    {
      goto LABEL_589;
    }

    goto LABEL_716;
  }

LABEL_713:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v264 = *(a1 + 321);
  *v4 = 2440;
  v4[2] = v264;
  v4 += 3;
  if ((v220 & 0x8000000) == 0)
  {
LABEL_589:
    if ((v220 & 0x80000000) == 0)
    {
      goto LABEL_590;
    }

    goto LABEL_719;
  }

LABEL_716:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v265 = *(a1 + 360);
  *v4 = 2448;
  v4[2] = v265;
  v4 += 3;
  if ((v220 & 0x80000000) == 0)
  {
LABEL_590:
    if ((v220 & 4) == 0)
    {
      goto LABEL_591;
    }

    goto LABEL_722;
  }

LABEL_719:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v266 = *(a1 + 364);
  *v4 = 2461;
  *(v4 + 2) = v266;
  v4 += 6;
  if ((v220 & 4) == 0)
  {
LABEL_591:
    if ((v220 & 0x200) == 0)
    {
      goto LABEL_728;
    }

    goto LABEL_725;
  }

LABEL_722:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v267 = *(a1 + 305);
  *v4 = 2688;
  v4[2] = v267;
  v4 += 3;
  if ((v220 & 0x200) != 0)
  {
LABEL_725:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v268 = *(a1 + 315);
    *v4 = 2704;
    v4[2] = v268;
    v4 += 3;
  }

LABEL_728:
  v269 = *(a1 + 28);
  if (v269)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v270 = *(a1 + 368);
    *v4 = 2712;
    if (v270 <= 0x7F)
    {
      v4[2] = v270;
      v4 += 3;
      if ((v269 & 2) == 0)
      {
        goto LABEL_750;
      }

      goto LABEL_737;
    }

    v4[2] = v270 | 0x80;
    v271 = v270 >> 7;
    if (v270 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v271 | 0x80;
        v274 = v271 >> 7;
        ++v4;
        v275 = v271 >> 14;
        v271 >>= 7;
      }

      while (v275);
      *(v4 - 1) = v274;
      if ((v269 & 2) == 0)
      {
        goto LABEL_750;
      }

      goto LABEL_737;
    }

    v4[3] = v271;
    v4 += 4;
  }

  if ((v269 & 2) == 0)
  {
    goto LABEL_750;
  }

LABEL_737:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v272 = *(a1 + 372);
  *v4 = 3048;
  if (v272 > 0x7F)
  {
    v4[2] = v272 | 0x80;
    v273 = v272 >> 7;
    if (v272 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v273 | 0x80;
        v276 = v273 >> 7;
        ++v4;
        v277 = v273 >> 14;
        v273 >>= 7;
      }

      while (v277);
      *(v4 - 1) = v276;
    }

    else
    {
      v4[3] = v273;
      v4 += 4;
    }
  }

  else
  {
    v4[2] = v272;
    v4 += 3;
  }

LABEL_750:
  v278 = *(a1 + 8);
  if ((v278 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v278 & 0xFFFFFFFFFFFFFFFELL) + 8);
}