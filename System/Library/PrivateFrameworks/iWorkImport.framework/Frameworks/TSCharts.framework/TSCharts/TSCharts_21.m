uint64_t sub_276432E94(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_17;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 40));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
  }

  v4 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v27 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 48));
    v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_85;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v28 = TSD::LineEndArchive::ByteSizeLong(*(a1 + 56));
  v3 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_86;
  }

LABEL_85:
  v29 = TSD::LineEndArchive::ByteSizeLong(*(a1 + 64));
  v3 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_87;
  }

LABEL_86:
  v30 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 72));
  v3 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_15:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_87:
  v31 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 80));
  v3 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_16:
    v8 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 88));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_27;
  }

  if ((v2 & 0x100) != 0)
  {
    v32 = sub_276400CD4(*(a1 + 96));
    v3 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_20:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_91;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v33 = sub_276400CD4(*(a1 + 104));
  v3 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x400) == 0)
  {
LABEL_21:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_92;
  }

LABEL_91:
  v34 = sub_276400CD4(*(a1 + 112));
  v3 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x800) == 0)
  {
LABEL_22:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_93;
  }

LABEL_92:
  v35 = sub_276400CD4(*(a1 + 120));
  v3 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x1000) == 0)
  {
LABEL_23:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_94;
  }

LABEL_93:
  v36 = TSD::LineEndArchive::ByteSizeLong(*(a1 + 128));
  v3 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x2000) == 0)
  {
LABEL_24:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_95;
  }

LABEL_94:
  v37 = TSD::LineEndArchive::ByteSizeLong(*(a1 + 136));
  v3 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000) == 0)
  {
LABEL_25:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_95:
  v38 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 144));
  v3 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000) != 0)
  {
LABEL_26:
    v9 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 152));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_27:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_37;
  }

  if ((v2 & 0x10000) != 0)
  {
    v39 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 160));
    v3 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x20000) == 0)
    {
LABEL_30:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_99;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_30;
  }

  v40 = TSD::FillArchive::ByteSizeLong(*(a1 + 168));
  v3 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000) == 0)
  {
LABEL_31:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_100;
  }

LABEL_99:
  v41 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 176));
  v3 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80000) == 0)
  {
LABEL_32:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_101;
  }

LABEL_100:
  v42 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 184));
  v3 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x100000) == 0)
  {
LABEL_33:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_102;
  }

LABEL_101:
  v43 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 192));
  v3 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x200000) == 0)
  {
LABEL_34:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_103;
  }

LABEL_102:
  v44 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 200));
  v3 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400000) == 0)
  {
LABEL_35:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_103:
  v45 = TSD::FillArchive::ByteSizeLong(*(a1 + 208));
  v3 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800000) != 0)
  {
LABEL_36:
    v10 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 216));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_37:
  if (HIBYTE(v2))
  {
    if ((v2 & 0x1000000) != 0)
    {
      v11 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 224));
      v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v2 & 0x2000000) != 0)
    {
      v12 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 232));
      v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v13 = v3 + 5;
    if ((v2 & 0x4000000) == 0)
    {
      v13 = v3;
    }

    if ((v2 & 0x8000000) != 0)
    {
      v13 += 5;
    }

    if ((v2 & 0x10000000) != 0)
    {
      v14 = *(a1 + 248);
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v14 >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 11;
      }

      v13 += v16;
    }

    if ((v2 & 0x20000000) != 0)
    {
      v13 += 5;
    }

    if ((v2 & 0x40000000) != 0)
    {
      v13 += 6;
    }

    if (v2 >= 0)
    {
      v3 = v13;
    }

    else
    {
      v3 = v13 + 6;
    }
  }

  v17 = *(a1 + 20);
  if (v17)
  {
    v18 = v3 + 6;
    if ((v17 & 1) == 0)
    {
      v18 = v3;
    }

    if ((v17 & 2) != 0)
    {
      v46 = *(a1 + 268);
      v47 = ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v46 >= 0)
      {
        v48 = v47;
      }

      else
      {
        v48 = 12;
      }

      v18 += v48;
      if ((v17 & 4) == 0)
      {
LABEL_63:
        if ((v17 & 8) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_113;
      }
    }

    else if ((v17 & 4) == 0)
    {
      goto LABEL_63;
    }

    v49 = *(a1 + 272);
    v50 = ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v49 >= 0)
    {
      v51 = v50;
    }

    else
    {
      v51 = 12;
    }

    v18 += v51;
    if ((v17 & 8) == 0)
    {
LABEL_64:
      if ((v17 & 0x10) == 0)
      {
LABEL_69:
        if ((v17 & 0x20) != 0)
        {
          v18 += 6;
        }

        if ((v17 & 0x40) != 0)
        {
          v3 = v18 + 6;
        }

        else
        {
          v3 = v18;
        }

        if ((v17 & 0x80) != 0)
        {
          v22 = *(a1 + 292);
          v23 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
          if (v22 >= 0)
          {
            v24 = v23;
          }

          else
          {
            v24 = 12;
          }

          v3 += v24;
        }

        goto LABEL_79;
      }

LABEL_65:
      v19 = *(a1 + 280);
      v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v19 >= 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = 12;
      }

      v18 += v21;
      goto LABEL_69;
    }

LABEL_113:
    v52 = *(a1 + 276);
    v53 = ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v52 >= 0)
    {
      v54 = v53;
    }

    else
    {
      v54 = 12;
    }

    v18 += v54;
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_65;
  }

LABEL_79:
  if ((v17 & 0xFF00) == 0)
  {
    goto LABEL_139;
  }

  if ((v17 & 0x100) != 0)
  {
    v25 = *(a1 + 296);
    if (v25 < 0)
    {
      v26 = 12;
    }

    else
    {
      v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v26;
  }

  v55 = v3 + 6;
  if ((v17 & 0x200) == 0)
  {
    v55 = v3;
  }

  if ((v17 & 0x400) != 0)
  {
    v55 += 6;
  }

  if ((v17 & 0x800) != 0)
  {
    v64 = *(a1 + 308);
    v65 = ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v64 >= 0)
    {
      v66 = v65;
    }

    else
    {
      v66 = 12;
    }

    v55 += v66;
    if ((v17 & 0x1000) == 0)
    {
LABEL_126:
      if ((v17 & 0x2000) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_127;
    }
  }

  else if ((v17 & 0x1000) == 0)
  {
    goto LABEL_126;
  }

  v67 = *(a1 + 312);
  v68 = ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v67 >= 0)
  {
    v69 = v68;
  }

  else
  {
    v69 = 12;
  }

  v55 += v69;
  if ((v17 & 0x2000) != 0)
  {
LABEL_127:
    v56 = *(a1 + 316);
    v57 = ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v56 >= 0)
    {
      v58 = v57;
    }

    else
    {
      v58 = 12;
    }

    v55 += v58;
  }

LABEL_131:
  if ((v17 & 0x4000) != 0)
  {
    v3 = v55 + 6;
  }

  else
  {
    v3 = v55;
  }

  if ((v17 & 0x8000) != 0)
  {
    v59 = *(a1 + 324);
    v60 = ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v59 >= 0)
    {
      v61 = v60;
    }

    else
    {
      v61 = 12;
    }

    v3 += v61;
  }

LABEL_139:
  if ((v17 & 0xFF0000) != 0)
  {
    if ((v17 & 0x10000) != 0)
    {
      v62 = *(a1 + 328);
      if (v62 < 0)
      {
        v63 = 12;
      }

      else
      {
        v63 = ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v63;
    }

    v70 = v3 + 3;
    if ((v17 & 0x20000) == 0)
    {
      v70 = v3;
    }

    if ((v17 & 0x40000) != 0)
    {
      v70 += 3;
    }

    if ((v17 & 0x80000) != 0)
    {
      v70 += 3;
    }

    if ((v17 & 0x100000) != 0)
    {
      v70 += 3;
    }

    if ((v17 & 0x200000) != 0)
    {
      v70 += 3;
    }

    if ((v17 & 0x400000) != 0)
    {
      v70 += 3;
    }

    if ((v17 & 0x800000) != 0)
    {
      v3 = v70 + 3;
    }

    else
    {
      v3 = v70;
    }
  }

  if (HIBYTE(v17))
  {
    v71 = v3 + 3;
    if ((v17 & 0x1000000) == 0)
    {
      v71 = v3;
    }

    if ((v17 & 0x2000000) != 0)
    {
      v72 = *(a1 + 340);
      v73 = ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v72 >= 0)
      {
        v74 = v73;
      }

      else
      {
        v74 = 12;
      }

      v71 += v74;
    }

    if ((v17 & 0x4000000) != 0)
    {
      v71 += 3;
    }

    if ((v17 & 0x8000000) != 0)
    {
      v71 += 3;
    }

    if ((v17 & 0x10000000) != 0)
    {
      v71 += 3;
    }

    if ((v17 & 0x20000000) != 0)
    {
      v71 += 3;
    }

    if ((v17 & 0x40000000) != 0)
    {
      v3 = v71 + 6;
    }

    else
    {
      v3 = v71;
    }

    if ((v17 & 0x80000000) != 0)
    {
      v75 = *(a1 + 352);
      v76 = ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v75 >= 0)
      {
        v77 = v76;
      }

      else
      {
        v77 = 12;
      }

      v3 += v77;
    }
  }

  v78 = *(a1 + 24);
  if (v78)
  {
    v79 = v3 + 6;
    if ((v78 & 1) == 0)
    {
      v79 = v3;
    }

    if ((v78 & 2) != 0)
    {
      v79 += 6;
    }

    if ((v78 & 4) != 0)
    {
      v80 = *(a1 + 364);
      v81 = ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v80 >= 0)
      {
        v82 = v81;
      }

      else
      {
        v82 = 12;
      }

      v79 += v82;
    }

    if ((v78 & 8) != 0)
    {
      v83 = *(a1 + 368);
      v84 = ((9 * (__clz(v83 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v83 >= 0)
      {
        v85 = v84;
      }

      else
      {
        v85 = 12;
      }

      v79 += v85;
    }

    if ((v78 & 0x10) != 0)
    {
      v79 += 6;
    }

    if ((v78 & 0x20) != 0)
    {
      v79 += 3;
    }

    if ((v78 & 0x40) != 0)
    {
      v79 += 3;
    }

    if ((v78 & 0x80) != 0)
    {
      v3 = v79 + 3;
    }

    else
    {
      v3 = v79;
    }
  }

  if ((v78 & 0xFF00) != 0)
  {
    v86 = v3 + 3;
    if ((v78 & 0x100) == 0)
    {
      v86 = v3;
    }

    if ((v78 & 0x200) != 0)
    {
      v86 += 6;
    }

    if ((v78 & 0x400) != 0)
    {
      v87 = *(a1 + 384);
      v88 = ((9 * (__clz(v87 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v87 >= 0)
      {
        v89 = v88;
      }

      else
      {
        v89 = 12;
      }

      v86 += v89;
    }

    if ((v78 & 0x800) != 0)
    {
      v86 += 6;
    }

    if ((v78 & 0x1000) != 0)
    {
      v90 = *(a1 + 392);
      v91 = ((9 * (__clz(v90 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v90 >= 0)
      {
        v92 = v91;
      }

      else
      {
        v92 = 12;
      }

      v86 += v92;
    }

    if ((v78 & 0x2000) != 0)
    {
      v3 = v86 + 6;
    }

    else
    {
      v3 = v86;
    }

    if ((v78 & 0x4000) != 0)
    {
      v93 = *(a1 + 400);
      v94 = ((9 * (__clz(v93 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v93 >= 0)
      {
        v95 = v94;
      }

      else
      {
        v95 = 12;
      }

      v3 += v95;
    }

    if ((v78 & 0x8000) != 0)
    {
      v96 = *(a1 + 404);
      v97 = ((9 * (__clz(v96 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v96 >= 0)
      {
        v98 = v97;
      }

      else
      {
        v98 = 12;
      }

      v3 += v98;
    }
  }

  if ((v78 & 0xF0000) != 0)
  {
    if ((v78 & 0x10000) != 0)
    {
      v99 = *(a1 + 408);
      if (v99 < 0)
      {
        v100 = 12;
      }

      else
      {
        v100 = ((9 * (__clz(v99 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v100;
    }

    if ((v78 & 0x20000) != 0)
    {
      v101 = *(a1 + 412);
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

    if ((v78 & 0x40000) != 0)
    {
      v3 += 6;
    }

    if ((v78 & 0x80000) != 0)
    {
      v103 = *(a1 + 420);
      if (v103 < 0)
      {
        v104 = 12;
      }

      else
      {
        v104 = ((9 * (__clz(v103 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v104;
    }
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 28) = v3;
    return v3;
  }
}

uint64_t sub_276433B24(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288523958, 0);
  if (v4)
  {

    return sub_276433BCC(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276433BCC(uint64_t result, uint64_t a2)
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
    goto LABEL_70;
  }

  if (v5)
  {
    *(v3 + 16) |= 1u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
  }

  v6 = MEMORY[0x277D80740];
  if ((v5 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    v7 = *(v3 + 40);
    if (!v7)
    {
      v8 = *(v3 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x277C97B00](v8);
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

    result = TSK::FormatStructArchive::MergeFrom(v7, v9);
  }

  if ((v5 & 4) != 0)
  {
    *(v3 + 16) |= 4u;
    v10 = *(v3 + 48);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C97B00](v11);
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

    result = TSK::FormatStructArchive::MergeFrom(v10, v12);
  }

  v13 = MEMORY[0x277D804A8];
  if ((v5 & 8) != 0)
  {
    *(v3 + 16) |= 8u;
    v14 = *(v3 + 56);
    if (!v14)
    {
      v15 = *(v3 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C97AB0](v15);
      *(v3 + 56) = v14;
    }

    if (*(a2 + 56))
    {
      v16 = *(a2 + 56);
    }

    else
    {
      v16 = v13;
    }

    result = TSD::LineEndArchive::MergeFrom(v14, v16);
    if ((v5 & 0x10) == 0)
    {
LABEL_26:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_27;
      }

LABEL_46:
      *(v3 + 16) |= 0x20u;
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
        v22 = MEMORY[0x277D804A0];
      }

      result = TSD::StrokeArchive::MergeFrom(v20, v22);
      if ((v5 & 0x40) == 0)
      {
LABEL_28:
        if ((v5 & 0x80) == 0)
        {
          goto LABEL_70;
        }

        goto LABEL_62;
      }

      goto LABEL_54;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_26;
  }

  *(v3 + 16) |= 0x10u;
  v17 = *(v3 + 64);
  if (!v17)
  {
    v18 = *(v3 + 8);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = MEMORY[0x277C97AB0](v18);
    *(v3 + 64) = v17;
  }

  if (*(a2 + 64))
  {
    v19 = *(a2 + 64);
  }

  else
  {
    v19 = v13;
  }

  result = TSD::LineEndArchive::MergeFrom(v17, v19);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_46;
  }

LABEL_27:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_28;
  }

LABEL_54:
  *(v3 + 16) |= 0x40u;
  v23 = *(v3 + 80);
  if (!v23)
  {
    v24 = *(v3 + 8);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    v23 = MEMORY[0x277C97B00](v24);
    *(v3 + 80) = v23;
  }

  if (*(a2 + 80))
  {
    v25 = *(a2 + 80);
  }

  else
  {
    v25 = v6;
  }

  result = TSK::FormatStructArchive::MergeFrom(v23, v25);
  if ((v5 & 0x80) != 0)
  {
LABEL_62:
    *(v3 + 16) |= 0x80u;
    v26 = *(v3 + 88);
    if (!v26)
    {
      v27 = *(v3 + 8);
      if (v27)
      {
        v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
      }

      v26 = MEMORY[0x277C97B00](v27);
      *(v3 + 88) = v26;
    }

    if (*(a2 + 88))
    {
      v28 = *(a2 + 88);
    }

    else
    {
      v28 = v6;
    }

    result = TSK::FormatStructArchive::MergeFrom(v26, v28);
  }

LABEL_70:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_144;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v29 = *(v3 + 96);
    if (!v29)
    {
      v30 = *(v3 + 8);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = sub_276406A94(v30);
      *(v3 + 96) = v29;
    }

    if (*(a2 + 96))
    {
      v31 = *(a2 + 96);
    }

    else
    {
      v31 = &qword_2812F01D8;
    }

    result = sub_276400DA8(v29, v31);
    if ((v5 & 0x200) == 0)
    {
LABEL_73:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_96;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_73;
  }

  *(v3 + 16) |= 0x200u;
  v32 = *(v3 + 104);
  if (!v32)
  {
    v33 = *(v3 + 8);
    if (v33)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
    }

    v32 = sub_276406A94(v33);
    *(v3 + 104) = v32;
  }

  if (*(a2 + 104))
  {
    v34 = *(a2 + 104);
  }

  else
  {
    v34 = &qword_2812F01D8;
  }

  result = sub_276400DA8(v32, v34);
  if ((v5 & 0x400) == 0)
  {
LABEL_74:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_104;
  }

LABEL_96:
  *(v3 + 16) |= 0x400u;
  v35 = *(v3 + 112);
  if (!v35)
  {
    v36 = *(v3 + 8);
    if (v36)
    {
      v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
    }

    v35 = sub_276406A94(v36);
    *(v3 + 112) = v35;
  }

  if (*(a2 + 112))
  {
    v37 = *(a2 + 112);
  }

  else
  {
    v37 = &qword_2812F01D8;
  }

  result = sub_276400DA8(v35, v37);
  if ((v5 & 0x800) == 0)
  {
LABEL_75:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_112;
  }

LABEL_104:
  *(v3 + 16) |= 0x800u;
  v38 = *(v3 + 120);
  if (!v38)
  {
    v39 = *(v3 + 8);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v38 = sub_276406A94(v39);
    *(v3 + 120) = v38;
  }

  if (*(a2 + 120))
  {
    v40 = *(a2 + 120);
  }

  else
  {
    v40 = &qword_2812F01D8;
  }

  result = sub_276400DA8(v38, v40);
  if ((v5 & 0x1000) == 0)
  {
LABEL_76:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_120;
  }

LABEL_112:
  *(v3 + 16) |= 0x1000u;
  v41 = *(v3 + 128);
  if (!v41)
  {
    v42 = *(v3 + 8);
    if (v42)
    {
      v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    }

    v41 = MEMORY[0x277C97AB0](v42);
    *(v3 + 128) = v41;
  }

  if (*(a2 + 128))
  {
    v43 = *(a2 + 128);
  }

  else
  {
    v43 = MEMORY[0x277D804A8];
  }

  result = TSD::LineEndArchive::MergeFrom(v41, v43);
  if ((v5 & 0x2000) == 0)
  {
LABEL_77:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_128;
  }

LABEL_120:
  *(v3 + 16) |= 0x2000u;
  v44 = *(v3 + 136);
  if (!v44)
  {
    v45 = *(v3 + 8);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    v44 = MEMORY[0x277C97AB0](v45);
    *(v3 + 136) = v44;
  }

  if (*(a2 + 136))
  {
    v46 = *(a2 + 136);
  }

  else
  {
    v46 = MEMORY[0x277D804A8];
  }

  result = TSD::LineEndArchive::MergeFrom(v44, v46);
  if ((v5 & 0x4000) == 0)
  {
LABEL_78:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_136;
  }

LABEL_128:
  *(v3 + 16) |= 0x4000u;
  v47 = *(v3 + 144);
  if (!v47)
  {
    v48 = *(v3 + 8);
    if (v48)
    {
      v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
    }

    v47 = MEMORY[0x277C97A90](v48);
    *(v3 + 144) = v47;
  }

  if (*(a2 + 144))
  {
    v49 = *(a2 + 144);
  }

  else
  {
    v49 = MEMORY[0x277D80498];
  }

  result = TSD::ShadowArchive::MergeFrom(v47, v49);
  if ((v5 & 0x8000) != 0)
  {
LABEL_136:
    *(v3 + 16) |= 0x8000u;
    v50 = *(v3 + 152);
    if (!v50)
    {
      v51 = *(v3 + 8);
      if (v51)
      {
        v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
      }

      v50 = MEMORY[0x277C97AA0](v51);
      *(v3 + 152) = v50;
    }

    if (*(a2 + 152))
    {
      v52 = *(a2 + 152);
    }

    else
    {
      v52 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v50, v52);
  }

LABEL_144:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_218;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v53 = *(v3 + 160);
    if (!v53)
    {
      v54 = *(v3 + 8);
      if (v54)
      {
        v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
      }

      v53 = MEMORY[0x277C97AA0](v54);
      *(v3 + 160) = v53;
    }

    if (*(a2 + 160))
    {
      v55 = *(a2 + 160);
    }

    else
    {
      v55 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v53, v55);
  }

  v56 = MEMORY[0x277D80488];
  if ((v5 & 0x20000) != 0)
  {
    *(v3 + 16) |= 0x20000u;
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
      v59 = v56;
    }

    result = TSD::FillArchive::MergeFrom(v57, v59);
    if ((v5 & 0x40000) == 0)
    {
LABEL_156:
      if ((v5 & 0x80000) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_178;
    }
  }

  else if ((v5 & 0x40000) == 0)
  {
    goto LABEL_156;
  }

  *(v3 + 16) |= 0x40000u;
  v60 = *(v3 + 176);
  if (!v60)
  {
    v61 = *(v3 + 8);
    if (v61)
    {
      v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
    }

    v60 = MEMORY[0x277C97B00](v61);
    *(v3 + 176) = v60;
  }

  if (*(a2 + 176))
  {
    v62 = *(a2 + 176);
  }

  else
  {
    v62 = MEMORY[0x277D80740];
  }

  result = TSK::FormatStructArchive::MergeFrom(v60, v62);
  if ((v5 & 0x80000) == 0)
  {
LABEL_157:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_186;
  }

LABEL_178:
  *(v3 + 16) |= 0x80000u;
  v63 = *(v3 + 184);
  if (!v63)
  {
    v64 = *(v3 + 8);
    if (v64)
    {
      v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
    }

    v63 = MEMORY[0x277C97B00](v64);
    *(v3 + 184) = v63;
  }

  if (*(a2 + 184))
  {
    v65 = *(a2 + 184);
  }

  else
  {
    v65 = MEMORY[0x277D80740];
  }

  result = TSK::FormatStructArchive::MergeFrom(v63, v65);
  if ((v5 & 0x100000) == 0)
  {
LABEL_158:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_194;
  }

LABEL_186:
  *(v3 + 16) |= 0x100000u;
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
  if ((v5 & 0x200000) == 0)
  {
LABEL_159:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_202;
  }

LABEL_194:
  *(v3 + 16) |= 0x200000u;
  v69 = *(v3 + 200);
  if (!v69)
  {
    v70 = *(v3 + 8);
    if (v70)
    {
      v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
    }

    v69 = MEMORY[0x277C97AA0](v70);
    *(v3 + 200) = v69;
  }

  if (*(a2 + 200))
  {
    v71 = *(a2 + 200);
  }

  else
  {
    v71 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v69, v71);
  if ((v5 & 0x400000) == 0)
  {
LABEL_160:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_218;
    }

    goto LABEL_210;
  }

LABEL_202:
  *(v3 + 16) |= 0x400000u;
  v72 = *(v3 + 208);
  if (!v72)
  {
    v73 = *(v3 + 8);
    if (v73)
    {
      v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
    }

    v72 = MEMORY[0x277C97A80](v73);
    *(v3 + 208) = v72;
  }

  if (*(a2 + 208))
  {
    v74 = *(a2 + 208);
  }

  else
  {
    v74 = v56;
  }

  result = TSD::FillArchive::MergeFrom(v72, v74);
  if ((v5 & 0x800000) != 0)
  {
LABEL_210:
    *(v3 + 16) |= 0x800000u;
    v75 = *(v3 + 216);
    if (!v75)
    {
      v76 = *(v3 + 8);
      if (v76)
      {
        v76 = *(v76 & 0xFFFFFFFFFFFFFFFELL);
      }

      v75 = MEMORY[0x277C97AA0](v76);
      *(v3 + 216) = v75;
    }

    if (*(a2 + 216))
    {
      v77 = *(a2 + 216);
    }

    else
    {
      v77 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v75, v77);
  }

LABEL_218:
  if (!HIBYTE(v5))
  {
    goto LABEL_228;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 16) |= 0x1000000u;
    v80 = *(v3 + 224);
    if (!v80)
    {
      v81 = *(v3 + 8);
      if (v81)
      {
        v81 = *(v81 & 0xFFFFFFFFFFFFFFFELL);
      }

      v80 = MEMORY[0x277C97A90](v81);
      *(v3 + 224) = v80;
    }

    if (*(a2 + 224))
    {
      v82 = *(a2 + 224);
    }

    else
    {
      v82 = MEMORY[0x277D80498];
    }

    result = TSD::ShadowArchive::MergeFrom(v80, v82);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_221:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_222;
      }

      goto LABEL_361;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_221;
  }

  *(v3 + 16) |= 0x2000000u;
  v83 = *(v3 + 232);
  if (!v83)
  {
    v84 = *(v3 + 8);
    if (v84)
    {
      v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
    }

    v83 = MEMORY[0x277C97AA0](v84);
    *(v3 + 232) = v83;
  }

  if (*(a2 + 232))
  {
    v85 = *(a2 + 232);
  }

  else
  {
    v85 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v83, v85);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_222:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_223;
    }

    goto LABEL_362;
  }

LABEL_361:
  *(v3 + 240) = *(a2 + 240);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_223:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_224;
    }

    goto LABEL_363;
  }

LABEL_362:
  *(v3 + 244) = *(a2 + 244);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_224:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_225;
    }

    goto LABEL_364;
  }

LABEL_363:
  *(v3 + 248) = *(a2 + 248);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_225:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_226;
    }

LABEL_365:
    *(v3 + 256) = *(a2 + 256);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_227;
    }

LABEL_366:
    *(v3 + 260) = *(a2 + 260);
    goto LABEL_227;
  }

LABEL_364:
  *(v3 + 252) = *(a2 + 252);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_365;
  }

LABEL_226:
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_366;
  }

LABEL_227:
  *(v3 + 16) |= v5;
LABEL_228:
  v78 = *(a2 + 20);
  if (!v78)
  {
    goto LABEL_239;
  }

  if (v78)
  {
    *(v3 + 264) = *(a2 + 264);
    if ((v78 & 2) == 0)
    {
LABEL_231:
      if ((v78 & 4) == 0)
      {
        goto LABEL_232;
      }

      goto LABEL_303;
    }
  }

  else if ((v78 & 2) == 0)
  {
    goto LABEL_231;
  }

  *(v3 + 268) = *(a2 + 268);
  if ((v78 & 4) == 0)
  {
LABEL_232:
    if ((v78 & 8) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_304;
  }

LABEL_303:
  *(v3 + 272) = *(a2 + 272);
  if ((v78 & 8) == 0)
  {
LABEL_233:
    if ((v78 & 0x10) == 0)
    {
      goto LABEL_234;
    }

    goto LABEL_305;
  }

LABEL_304:
  *(v3 + 276) = *(a2 + 276);
  if ((v78 & 0x10) == 0)
  {
LABEL_234:
    if ((v78 & 0x20) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_306;
  }

LABEL_305:
  *(v3 + 280) = *(a2 + 280);
  if ((v78 & 0x20) == 0)
  {
LABEL_235:
    if ((v78 & 0x40) == 0)
    {
      goto LABEL_236;
    }

LABEL_307:
    *(v3 + 288) = *(a2 + 288);
    if ((v78 & 0x80) == 0)
    {
      goto LABEL_238;
    }

    goto LABEL_237;
  }

LABEL_306:
  *(v3 + 284) = *(a2 + 284);
  if ((v78 & 0x40) != 0)
  {
    goto LABEL_307;
  }

LABEL_236:
  if ((v78 & 0x80) != 0)
  {
LABEL_237:
    *(v3 + 292) = *(a2 + 292);
  }

LABEL_238:
  *(v3 + 20) |= v78;
LABEL_239:
  if ((v78 & 0xFF00) == 0)
  {
    goto LABEL_250;
  }

  if ((v78 & 0x100) != 0)
  {
    *(v3 + 296) = *(a2 + 296);
    if ((v78 & 0x200) == 0)
    {
LABEL_242:
      if ((v78 & 0x400) == 0)
      {
        goto LABEL_243;
      }

      goto LABEL_311;
    }
  }

  else if ((v78 & 0x200) == 0)
  {
    goto LABEL_242;
  }

  *(v3 + 300) = *(a2 + 300);
  if ((v78 & 0x400) == 0)
  {
LABEL_243:
    if ((v78 & 0x800) == 0)
    {
      goto LABEL_244;
    }

    goto LABEL_312;
  }

LABEL_311:
  *(v3 + 304) = *(a2 + 304);
  if ((v78 & 0x800) == 0)
  {
LABEL_244:
    if ((v78 & 0x1000) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_313;
  }

LABEL_312:
  *(v3 + 308) = *(a2 + 308);
  if ((v78 & 0x1000) == 0)
  {
LABEL_245:
    if ((v78 & 0x2000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_314;
  }

LABEL_313:
  *(v3 + 312) = *(a2 + 312);
  if ((v78 & 0x2000) == 0)
  {
LABEL_246:
    if ((v78 & 0x4000) == 0)
    {
      goto LABEL_247;
    }

LABEL_315:
    *(v3 + 320) = *(a2 + 320);
    if ((v78 & 0x8000) == 0)
    {
      goto LABEL_249;
    }

    goto LABEL_248;
  }

LABEL_314:
  *(v3 + 316) = *(a2 + 316);
  if ((v78 & 0x4000) != 0)
  {
    goto LABEL_315;
  }

LABEL_247:
  if ((v78 & 0x8000) != 0)
  {
LABEL_248:
    *(v3 + 324) = *(a2 + 324);
  }

LABEL_249:
  *(v3 + 20) |= v78;
LABEL_250:
  if ((v78 & 0xFF0000) == 0)
  {
    goto LABEL_261;
  }

  if ((v78 & 0x10000) != 0)
  {
    *(v3 + 328) = *(a2 + 328);
    if ((v78 & 0x20000) == 0)
    {
LABEL_253:
      if ((v78 & 0x40000) == 0)
      {
        goto LABEL_254;
      }

      goto LABEL_319;
    }
  }

  else if ((v78 & 0x20000) == 0)
  {
    goto LABEL_253;
  }

  *(v3 + 332) = *(a2 + 332);
  if ((v78 & 0x40000) == 0)
  {
LABEL_254:
    if ((v78 & 0x80000) == 0)
    {
      goto LABEL_255;
    }

    goto LABEL_320;
  }

LABEL_319:
  *(v3 + 333) = *(a2 + 333);
  if ((v78 & 0x80000) == 0)
  {
LABEL_255:
    if ((v78 & 0x100000) == 0)
    {
      goto LABEL_256;
    }

    goto LABEL_321;
  }

LABEL_320:
  *(v3 + 334) = *(a2 + 334);
  if ((v78 & 0x100000) == 0)
  {
LABEL_256:
    if ((v78 & 0x200000) == 0)
    {
      goto LABEL_257;
    }

    goto LABEL_322;
  }

LABEL_321:
  *(v3 + 335) = *(a2 + 335);
  if ((v78 & 0x200000) == 0)
  {
LABEL_257:
    if ((v78 & 0x400000) == 0)
    {
      goto LABEL_258;
    }

LABEL_323:
    *(v3 + 337) = *(a2 + 337);
    if ((v78 & 0x800000) == 0)
    {
      goto LABEL_260;
    }

    goto LABEL_259;
  }

LABEL_322:
  *(v3 + 336) = *(a2 + 336);
  if ((v78 & 0x400000) != 0)
  {
    goto LABEL_323;
  }

LABEL_258:
  if ((v78 & 0x800000) != 0)
  {
LABEL_259:
    *(v3 + 338) = *(a2 + 338);
  }

LABEL_260:
  *(v3 + 20) |= v78;
LABEL_261:
  if (!HIBYTE(v78))
  {
    goto LABEL_271;
  }

  if ((v78 & 0x1000000) != 0)
  {
    *(v3 + 339) = *(a2 + 339);
    if ((v78 & 0x2000000) == 0)
    {
LABEL_264:
      if ((v78 & 0x4000000) == 0)
      {
        goto LABEL_265;
      }

      goto LABEL_369;
    }
  }

  else if ((v78 & 0x2000000) == 0)
  {
    goto LABEL_264;
  }

  *(v3 + 340) = *(a2 + 340);
  if ((v78 & 0x4000000) == 0)
  {
LABEL_265:
    if ((v78 & 0x8000000) == 0)
    {
      goto LABEL_266;
    }

    goto LABEL_370;
  }

LABEL_369:
  *(v3 + 344) = *(a2 + 344);
  if ((v78 & 0x8000000) == 0)
  {
LABEL_266:
    if ((v78 & 0x10000000) == 0)
    {
      goto LABEL_267;
    }

    goto LABEL_371;
  }

LABEL_370:
  *(v3 + 345) = *(a2 + 345);
  if ((v78 & 0x10000000) == 0)
  {
LABEL_267:
    if ((v78 & 0x20000000) == 0)
    {
      goto LABEL_268;
    }

    goto LABEL_372;
  }

LABEL_371:
  *(v3 + 346) = *(a2 + 346);
  if ((v78 & 0x20000000) == 0)
  {
LABEL_268:
    if ((v78 & 0x40000000) == 0)
    {
      goto LABEL_269;
    }

LABEL_373:
    *(v3 + 348) = *(a2 + 348);
    if ((v78 & 0x80000000) == 0)
    {
      goto LABEL_270;
    }

LABEL_374:
    *(v3 + 352) = *(a2 + 352);
    goto LABEL_270;
  }

LABEL_372:
  *(v3 + 347) = *(a2 + 347);
  if ((v78 & 0x40000000) != 0)
  {
    goto LABEL_373;
  }

LABEL_269:
  if ((v78 & 0x80000000) != 0)
  {
    goto LABEL_374;
  }

LABEL_270:
  *(v3 + 20) |= v78;
LABEL_271:
  v79 = *(a2 + 24);
  if (!v79)
  {
    goto LABEL_282;
  }

  if (v79)
  {
    *(v3 + 356) = *(a2 + 356);
    if ((v79 & 2) == 0)
    {
LABEL_274:
      if ((v79 & 4) == 0)
      {
        goto LABEL_275;
      }

      goto LABEL_327;
    }
  }

  else if ((v79 & 2) == 0)
  {
    goto LABEL_274;
  }

  *(v3 + 360) = *(a2 + 360);
  if ((v79 & 4) == 0)
  {
LABEL_275:
    if ((v79 & 8) == 0)
    {
      goto LABEL_276;
    }

    goto LABEL_328;
  }

LABEL_327:
  *(v3 + 364) = *(a2 + 364);
  if ((v79 & 8) == 0)
  {
LABEL_276:
    if ((v79 & 0x10) == 0)
    {
      goto LABEL_277;
    }

    goto LABEL_329;
  }

LABEL_328:
  *(v3 + 368) = *(a2 + 368);
  if ((v79 & 0x10) == 0)
  {
LABEL_277:
    if ((v79 & 0x20) == 0)
    {
      goto LABEL_278;
    }

    goto LABEL_330;
  }

LABEL_329:
  *(v3 + 372) = *(a2 + 372);
  if ((v79 & 0x20) == 0)
  {
LABEL_278:
    if ((v79 & 0x40) == 0)
    {
      goto LABEL_279;
    }

LABEL_331:
    *(v3 + 377) = *(a2 + 377);
    if ((v79 & 0x80) == 0)
    {
      goto LABEL_281;
    }

    goto LABEL_280;
  }

LABEL_330:
  *(v3 + 376) = *(a2 + 376);
  if ((v79 & 0x40) != 0)
  {
    goto LABEL_331;
  }

LABEL_279:
  if ((v79 & 0x80) != 0)
  {
LABEL_280:
    *(v3 + 378) = *(a2 + 378);
  }

LABEL_281:
  *(v3 + 24) |= v79;
LABEL_282:
  if ((v79 & 0xFF00) == 0)
  {
    goto LABEL_293;
  }

  if ((v79 & 0x100) != 0)
  {
    *(v3 + 379) = *(a2 + 379);
    if ((v79 & 0x200) == 0)
    {
LABEL_285:
      if ((v79 & 0x400) == 0)
      {
        goto LABEL_286;
      }

      goto LABEL_335;
    }
  }

  else if ((v79 & 0x200) == 0)
  {
    goto LABEL_285;
  }

  *(v3 + 380) = *(a2 + 380);
  if ((v79 & 0x400) == 0)
  {
LABEL_286:
    if ((v79 & 0x800) == 0)
    {
      goto LABEL_287;
    }

    goto LABEL_336;
  }

LABEL_335:
  *(v3 + 384) = *(a2 + 384);
  if ((v79 & 0x800) == 0)
  {
LABEL_287:
    if ((v79 & 0x1000) == 0)
    {
      goto LABEL_288;
    }

    goto LABEL_337;
  }

LABEL_336:
  *(v3 + 388) = *(a2 + 388);
  if ((v79 & 0x1000) == 0)
  {
LABEL_288:
    if ((v79 & 0x2000) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_338;
  }

LABEL_337:
  *(v3 + 392) = *(a2 + 392);
  if ((v79 & 0x2000) == 0)
  {
LABEL_289:
    if ((v79 & 0x4000) == 0)
    {
      goto LABEL_290;
    }

LABEL_339:
    *(v3 + 400) = *(a2 + 400);
    if ((v79 & 0x8000) == 0)
    {
      goto LABEL_292;
    }

    goto LABEL_291;
  }

LABEL_338:
  *(v3 + 396) = *(a2 + 396);
  if ((v79 & 0x4000) != 0)
  {
    goto LABEL_339;
  }

LABEL_290:
  if ((v79 & 0x8000) != 0)
  {
LABEL_291:
    *(v3 + 404) = *(a2 + 404);
  }

LABEL_292:
  *(v3 + 24) |= v79;
LABEL_293:
  if ((v79 & 0xF0000) == 0)
  {
    return result;
  }

  if ((v79 & 0x10000) != 0)
  {
    *(v3 + 408) = *(a2 + 408);
    if ((v79 & 0x20000) == 0)
    {
LABEL_296:
      if ((v79 & 0x40000) == 0)
      {
        goto LABEL_297;
      }

LABEL_343:
      *(v3 + 416) = *(a2 + 416);
      if ((v79 & 0x80000) == 0)
      {
        goto LABEL_299;
      }

      goto LABEL_298;
    }
  }

  else if ((v79 & 0x20000) == 0)
  {
    goto LABEL_296;
  }

  *(v3 + 412) = *(a2 + 412);
  if ((v79 & 0x40000) != 0)
  {
    goto LABEL_343;
  }

LABEL_297:
  if ((v79 & 0x80000) != 0)
  {
LABEL_298:
    *(v3 + 420) = *(a2 + 420);
  }

LABEL_299:
  *(v3 + 24) |= v79;
  return result;
}

uint64_t *sub_276434834(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27642EA44(result);

    return sub_276433B24(v4, a2);
  }

  return result;
}

uint64_t sub_276434880(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = TSD::LineEndArchive::IsInitialized(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = TSD::LineEndArchive::IsInitialized(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000) != 0)
  {
    result = TSD::LineEndArchive::IsInitialized(*(a1 + 128));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000) != 0)
  {
    result = TSD::LineEndArchive::IsInitialized(*(a1 + 136));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x4000) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 144));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x8000) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 152));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10000) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 160));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20000) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 168));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40000) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 176));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80000) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 184));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100000) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 192));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200000) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 200));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400000) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 208));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800000) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 216));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000000) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 224));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000000) == 0)
  {
    return 1;
  }

  result = TSD::StrokeArchive::IsInitialized(*(a1 + 232));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_276434A80(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288523780;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812ED538, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 24) = MEMORY[0x277D80A90];
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_276434AFC(uint64_t a1)
{
  sub_276434B30(a1);
  sub_2763941F4((a1 + 8));
  return a1;
}

uint64_t sub_276434B30(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812F1058)
  {
    v3 = *(v1 + 32);
    if (v3)
    {
      v4 = sub_276400574(v3);
      MEMORY[0x277C98580](v4, 0x1081C404FE48876);
    }

    if (*(v1 + 40))
    {
      v5 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v5, 0x10A1C40C8B7F858);
    }

    result = *(v1 + 48);
    if (result)
    {
      MEMORY[0x277C97240]();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_276434C18(uint64_t a1)
{
  sub_276434AFC(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276434C58(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_19:
    result = sub_2764005FC(result[4]);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_20;
  }

  v5 = result[3] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_20:
  result = TSD::ShadowArchive::Clear(v1[5]);
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = TSD::StrokeArchive::Clear(v1[6]);
  }

LABEL_7:
  if ((v2 & 0xF0) != 0)
  {
    *(v1 + 59) = 0;
    *(v1 + 14) = 0;
  }

  if ((v2 & 0x300) != 0)
  {
    v1[8] = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_276434D30(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v54 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v54) & 1) == 0)
  {
    while (1)
    {
      v7 = (v54 + 1);
      v8 = *v54;
      if ((*v54 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v54, (v9 - 128));
      v54 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_98;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 5)
      {
        if (v8 >> 3 <= 7)
        {
          if (v10 == 6)
          {
            if (v8 != 48)
            {
              goto LABEL_75;
            }

            v5 |= 0x40u;
            v27 = (v7 + 1);
            v26 = *v7;
            if ((v26 & 0x8000000000000000) == 0)
            {
              goto LABEL_52;
            }

            v28 = *v27;
            v26 = (v28 << 7) + v26 - 128;
            if ((v28 & 0x80000000) == 0)
            {
              v27 = (v7 + 2);
LABEL_52:
              v54 = v27;
              *(a1 + 61) = v26 != 0;
              goto LABEL_83;
            }

            v44 = google::protobuf::internal::VarintParseSlow64(v7, v26);
            v54 = v44;
            *(a1 + 61) = v45 != 0;
            if (!v44)
            {
              goto LABEL_98;
            }
          }

          else
          {
            if (v10 != 7 || v8 != 56)
            {
              goto LABEL_75;
            }

            v5 |= 0x80u;
            v20 = (v7 + 1);
            v19 = *v7;
            if ((v19 & 0x8000000000000000) == 0)
            {
              goto LABEL_39;
            }

            v21 = *v20;
            v19 = (v21 << 7) + v19 - 128;
            if ((v21 & 0x80000000) == 0)
            {
              v20 = (v7 + 2);
LABEL_39:
              v54 = v20;
              *(a1 + 62) = v19 != 0;
              goto LABEL_83;
            }

            v42 = google::protobuf::internal::VarintParseSlow64(v7, v19);
            v54 = v42;
            *(a1 + 62) = v43 != 0;
            if (!v42)
            {
              goto LABEL_98;
            }
          }
        }

        else
        {
          if (v10 == 8)
          {
            if (v8 == 66)
            {
              *(a1 + 16) |= 8u;
              v32 = *(a1 + 48);
              if (!v32)
              {
                v33 = *(a1 + 8);
                if (v33)
                {
                  v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
                }

                v34 = MEMORY[0x277C97AA0](v33);
                LODWORD(v32) = v34;
                *(a1 + 48) = v34;
                v7 = v54;
              }

              v18 = sub_2764AC69C(a3, v32, v7);
              goto LABEL_82;
            }

LABEL_75:
            if (v8)
            {
              v41 = (v8 & 7) == 4;
            }

            else
            {
              v41 = 1;
            }

            if (v41)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_2763D4E10((a1 + 8));
            }

            v18 = google::protobuf::internal::UnknownFieldParse();
LABEL_82:
            v54 = v18;
            if (!v18)
            {
              goto LABEL_98;
            }

            goto LABEL_83;
          }

          if (v10 == 9)
          {
            if (v8 != 72)
            {
              goto LABEL_75;
            }

            v5 |= 0x100u;
            v39 = (v7 + 1);
            LODWORD(v38) = *v7;
            if ((v38 & 0x80) == 0)
            {
              goto LABEL_74;
            }

            v40 = *v39;
            v38 = (v38 + (v40 << 7) - 128);
            if ((v40 & 0x80000000) == 0)
            {
              v39 = (v7 + 2);
LABEL_74:
              v54 = v39;
              *(a1 + 64) = v38;
              goto LABEL_83;
            }

            v52 = google::protobuf::internal::VarintParseSlow64(v7, v38);
            v54 = v52;
            *(a1 + 64) = v53;
            if (!v52)
            {
LABEL_98:
              v54 = 0;
              goto LABEL_2;
            }
          }

          else
          {
            if (v10 != 10 || v8 != 80)
            {
              goto LABEL_75;
            }

            v5 |= 0x200u;
            v15 = (v7 + 1);
            LODWORD(v14) = *v7;
            if ((v14 & 0x80) == 0)
            {
              goto LABEL_25;
            }

            v16 = *v15;
            v14 = (v14 + (v16 << 7) - 128);
            if ((v16 & 0x80000000) == 0)
            {
              v15 = (v7 + 2);
LABEL_25:
              v54 = v15;
              *(a1 + 68) = v14;
              goto LABEL_83;
            }

            v50 = google::protobuf::internal::VarintParseSlow64(v7, v14);
            v54 = v50;
            *(a1 + 68) = v51;
            if (!v50)
            {
              goto LABEL_98;
            }
          }
        }
      }

      else
      {
        if (v8 >> 3 <= 2)
        {
          if (v10 == 1)
          {
            if (v8 == 10)
            {
              *(a1 + 16) |= 2u;
              v24 = *(a1 + 32);
              if (!v24)
              {
                v25 = *(a1 + 8);
                if (v25)
                {
                  v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
                }

                v24 = sub_276406A24(v25);
                *(a1 + 32) = v24;
                v7 = v54;
              }

              v18 = sub_2764A8C38(a3, v24, v7);
              goto LABEL_82;
            }
          }

          else if (v10 == 2 && v8 == 18)
          {
            *(a1 + 16) |= 1u;
            google::protobuf::internal::ArenaStringPtr::Mutable();
            v18 = google::protobuf::internal::InlineGreedyStringParser();
            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v10 == 3)
        {
          if (v8 != 24)
          {
            goto LABEL_75;
          }

          v5 |= 0x10u;
          v30 = (v7 + 1);
          LODWORD(v29) = *v7;
          if ((v29 & 0x80) == 0)
          {
            goto LABEL_57;
          }

          v31 = *v30;
          v29 = (v29 + (v31 << 7) - 128);
          if ((v31 & 0x80000000) == 0)
          {
            v30 = (v7 + 2);
LABEL_57:
            v54 = v30;
            *(a1 + 56) = v29;
            goto LABEL_83;
          }

          v46 = google::protobuf::internal::VarintParseSlow64(v7, v29);
          v54 = v46;
          *(a1 + 56) = v47;
          if (!v46)
          {
            goto LABEL_98;
          }
        }

        else
        {
          if (v10 == 4)
          {
            if (v8 == 34)
            {
              *(a1 + 16) |= 4u;
              v35 = *(a1 + 40);
              if (!v35)
              {
                v36 = *(a1 + 8);
                if (v36)
                {
                  v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
                }

                v37 = MEMORY[0x277C97A90](v36);
                LODWORD(v35) = v37;
                *(a1 + 40) = v37;
                v7 = v54;
              }

              v18 = sub_2764AC76C(a3, v35, v7);
              goto LABEL_82;
            }

            goto LABEL_75;
          }

          if (v10 != 5 || v8 != 40)
          {
            goto LABEL_75;
          }

          v5 |= 0x20u;
          v12 = (v7 + 1);
          v11 = *v7;
          if ((v11 & 0x8000000000000000) == 0)
          {
            goto LABEL_16;
          }

          v13 = *v12;
          v11 = (v13 << 7) + v11 - 128;
          if ((v13 & 0x80000000) == 0)
          {
            v12 = (v7 + 2);
LABEL_16:
            v54 = v12;
            *(a1 + 60) = v11 != 0;
            goto LABEL_83;
          }

          v48 = google::protobuf::internal::VarintParseSlow64(v7, v11);
          v54 = v48;
          *(a1 + 60) = v49 != 0;
          if (!v48)
          {
            goto LABEL_98;
          }
        }
      }

LABEL_83:
      if (sub_2763D4D98(a3, &v54))
      {
        goto LABEL_2;
      }
    }

    v7 = (v54 + 2);
LABEL_6:
    v54 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v54;
}

unsigned __int8 *sub_276435238(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*this <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v8 = *(a1 + 32);
    *v4 = 10;
    v9 = *(v8 + 20);
    if (v9 > 0x7F)
    {
      v4[1] = v9 | 0x80;
      v12 = v9 >> 7;
      if (v9 >> 14)
      {
        v10 = (v4 + 3);
        do
        {
          *(v10 - 1) = v12 | 0x80;
          v15 = v12 >> 7;
          ++v10;
          v16 = v12 >> 14;
          v12 >>= 7;
        }

        while (v16);
        *(v10 - 1) = v15;
      }

      else
      {
        v4[2] = v12;
        v10 = (v4 + 3);
      }
    }

    else
    {
      v4[1] = v9;
      v10 = (v4 + 2);
    }

    v4 = sub_27640074C(v8, v10, this);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

LABEL_31:
      if (*this <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
      }

      v17 = *(a1 + 56);
      *v4 = 24;
      if (v17 > 0x7F)
      {
        v4[1] = v17 | 0x80;
        v18 = v17 >> 7;
        if (v17 >> 14)
        {
          v4 += 3;
          do
          {
            *(v4 - 1) = v18 | 0x80;
            v19 = v18 >> 7;
            ++v4;
            v20 = v18 >> 14;
            v18 >>= 7;
          }

          while (v20);
          *(v4 - 1) = v19;
          if ((v6 & 4) != 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v4[2] = v18;
          v4 += 3;
          if ((v6 & 4) != 0)
          {
            goto LABEL_42;
          }
        }
      }

      else
      {
        v4[1] = v17;
        v4 += 2;
        if ((v6 & 4) != 0)
        {
          goto LABEL_42;
        }
      }

LABEL_5:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_52;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_2763DD938(this, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_31;
  }

LABEL_4:
  if ((v6 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_42:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v21 = *(a1 + 40);
  *v4 = 34;
  v22 = *(v21 + 5);
  if (v22 > 0x7F)
  {
    v4[1] = v22 | 0x80;
    v24 = v22 >> 7;
    if (v22 >> 14)
    {
      v23 = v4 + 3;
      do
      {
        *(v23 - 1) = v24 | 0x80;
        v25 = v24 >> 7;
        ++v23;
        v26 = v24 >> 14;
        v24 >>= 7;
      }

      while (v26);
      *(v23 - 1) = v25;
    }

    else
    {
      v4[2] = v24;
      v23 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v22;
    v23 = v4 + 2;
  }

  v4 = TSD::ShadowArchive::_InternalSerialize(v21, v23, this);
  if ((v6 & 0x20) == 0)
  {
LABEL_6:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_52:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v27 = *(a1 + 60);
  *v4 = 40;
  v4[1] = v27;
  v4 += 2;
  if ((v6 & 0x40) == 0)
  {
LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

LABEL_55:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v28 = *(a1 + 61);
  *v4 = 48;
  v4[1] = v28;
  v4 += 2;
  if ((v6 & 0x80) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_58:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v29 = *(a1 + 62);
  *v4 = 56;
  v4[1] = v29;
  v4 += 2;
  if ((v6 & 8) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_71;
  }

LABEL_61:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v30 = *(a1 + 48);
  *v4 = 66;
  v31 = *(v30 + 5);
  if (v31 > 0x7F)
  {
    v4[1] = v31 | 0x80;
    v33 = v31 >> 7;
    if (v31 >> 14)
    {
      v32 = v4 + 3;
      do
      {
        *(v32 - 1) = v33 | 0x80;
        v34 = v33 >> 7;
        ++v32;
        v35 = v33 >> 14;
        v33 >>= 7;
      }

      while (v35);
      *(v32 - 1) = v34;
    }

    else
    {
      v4[2] = v33;
      v32 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v31;
    v32 = v4 + 2;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v30, v32, this);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_11;
  }

LABEL_71:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v36 = *(a1 + 64);
  *v4 = 72;
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
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v4[2] = v37;
      v4 += 3;
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_82;
      }
    }
  }

  else
  {
    v4[1] = v36;
    v4 += 2;
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_82;
    }
  }

LABEL_11:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v7 = *(a1 + 68);
  *v4 = 80;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v11 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v11 | 0x80;
        v13 = v11 >> 7;
        ++v4;
        v14 = v11 >> 14;
        v11 >>= 7;
      }

      while (v14);
      *(v4 - 1) = v13;
    }

    else
    {
      v4[2] = v11;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_82:
  v40 = *(a1 + 8);
  if ((v40 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v40 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276435704(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_18;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v8 = sub_2764007DC(*(a1 + 32));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
  }

  v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    v15 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 48));
    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  v14 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 40));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  if ((v2 & 0x10) != 0)
  {
LABEL_13:
    v9 = *(a1 + 56);
    v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 11;
    }

    v3 += v11;
  }

LABEL_17:
  v4 = v3 + ((v2 >> 5) & 2) + ((v2 >> 4) & 2) + ((v2 >> 6) & 2);
LABEL_18:
  if ((v2 & 0x300) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v12 = *(a1 + 64);
      if (v12 < 0)
      {
        v13 = 11;
      }

      else
      {
        v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v4 += v13;
    }

    if ((v2 & 0x200) != 0)
    {
      v16 = *(a1 + 68);
      if (v16 < 0)
      {
        v17 = 11;
      }

      else
      {
        v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v4 += v17;
    }
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

void sub_276435928(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288523970, 0);
  if (v4)
  {

    sub_2764359D0(a1, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

void sub_2764359D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2763D4F88((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (v5)
    {
      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_30;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(a1 + 16) |= 2u;
    v6 = *(a1 + 32);
    if (!v6)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_276406A24(v7);
      *(a1 + 32) = v6;
    }

    if (*(a2 + 32))
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = &qword_2812F01B8;
    }

    sub_2764008B8(v6, v8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_38;
    }

LABEL_30:
    *(a1 + 16) |= 4u;
    v9 = *(a1 + 40);
    if (!v9)
    {
      v10 = *(a1 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277C97A90](v10);
      *(a1 + 40) = v9;
    }

    if (*(a2 + 40))
    {
      v11 = *(a2 + 40);
    }

    else
    {
      v11 = MEMORY[0x277D80498];
    }

    TSD::ShadowArchive::MergeFrom(v9, v11);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_46;
    }

LABEL_38:
    *(a1 + 16) |= 8u;
    v12 = *(a1 + 48);
    if (!v12)
    {
      v13 = *(a1 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277C97AA0](v13);
      *(a1 + 48) = v12;
    }

    if (*(a2 + 48))
    {
      v14 = *(a2 + 48);
    }

    else
    {
      v14 = MEMORY[0x277D804A0];
    }

    TSD::StrokeArchive::MergeFrom(v12, v14);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_47;
    }

LABEL_46:
    *(a1 + 56) = *(a2 + 56);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_48;
    }

LABEL_47:
    *(a1 + 60) = *(a2 + 60);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(a1 + 16) |= v5;
        goto LABEL_14;
      }

LABEL_12:
      *(a1 + 62) = *(a2 + 62);
      goto LABEL_13;
    }

LABEL_48:
    *(a1 + 61) = *(a2 + 61);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0x300) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      *(a1 + 64) = *(a2 + 64);
    }

    if ((v5 & 0x200) != 0)
    {
      *(a1 + 68) = *(a2 + 68);
    }

    *(a1 + 16) |= v5;
  }
}

void sub_276435BC0(uint64_t *a1, uint64_t *a2)
{
  if (a2 != a1)
  {
    sub_276434C58(a1);

    sub_276435928(a1, a2);
  }
}

uint64_t sub_276435C0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = TSD::StrokeArchive::IsInitialized(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_276435C94(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276436E34(a1);
}

uint64_t sub_276435D88(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276436F5C(a1, 1);
  sub_27640AD54(v2, a1);
  return v2;
}

uint64_t sub_276435E14(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276436FE8(a1);
}

uint64_t sub_276435EE8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2764370F0(a1, 1);
  *result = &unk_288522FF0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_276435F58(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276437198(a1);
}

uint64_t sub_276436040(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2764372B4(a1, 1);
  sub_2764122D4(v2, a1);
  return v2;
}

uint64_t sub_2764360CC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276437340(a1);
}

uint64_t sub_2764361A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27643744C(a1);
}

void *sub_2764362AC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276437588(a1);
}

void *sub_27643637C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27643768C(a1, 1);
  sub_276426134(v2, a1);
  return v2;
}

uint64_t sub_276436408(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276437718(a1, 1);
  sub_276426D08(v2, a1);
  return v2;
}

uint64_t sub_276436494(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2764377A4(a1);
}

uint64_t sub_276436568(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2764378AC(a1, 1);
  sub_27642AF80(v2, a1);
  return v2;
}

uint64_t sub_2764365F4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276437938(a1);
}

uint64_t sub_27643671C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276437A94(a1, 1);
  sub_276434A80(v2, a1);
  return v2;
}

uint64_t sub_27643690C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_276401C90();
  if (atomic_load_explicit(dword_2812ED480, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &qword_2812F04D0);
}

uint64_t sub_276436990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2764023B4();
  if (atomic_load_explicit(dword_2812ED3B0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &unk_2812F0580);
}

uint64_t sub_276436A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_276402A24();
  if (atomic_load_explicit(dword_2812ED508, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &qword_2812F0650);
}

uint64_t sub_276436A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_276403094();
  if (atomic_load_explicit(dword_2812ED4F0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &qword_2812F0688);
}

uint64_t sub_276436B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_276403704();
  if (atomic_load_explicit(dword_2812ED338, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &qword_2812F06A0);
}

uint64_t sub_276436BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_276403D74();
  if (atomic_load_explicit(dword_2812ED310, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &unk_2812F0770);
}

uint64_t sub_276436C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2764043E4();
  if (atomic_load_explicit(dword_2812ED448, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &qword_2812F07F8);
}

uint64_t sub_276436CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_276404A54();
  if (atomic_load_explicit(dword_2812ED420, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &qword_2812F0AD0);
}

uint64_t sub_276436D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_276405DA8();
  if (atomic_load_explicit(dword_2812ED588, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &qword_2812F0C48);
}

uint64_t sub_276436DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_276406418();
  if (atomic_load_explicit(dword_2812ED568, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, qword_2812F0C78);
}

uint64_t sub_276436E34(uint64_t a1)
{
  v2 = sub_276436ED0(a1, 1);
  *v2 = &unk_288522DE0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812ED480, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 168) = 0;
  *(v2 + 152) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276436ED0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764ACAE0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 176, sub_276436F58);
}

uint64_t sub_276436F5C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764ACB1C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 208, sub_276436FE4);
}

uint64_t sub_276436FE8(uint64_t a1)
{
  v2 = sub_276437064(a1, 1);
  *v2 = &unk_288522F40;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812ED508, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276437064(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764ACB4C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_2764370EC);
}

uint64_t sub_2764370F0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764ACB7C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_276437178);
}

uint64_t sub_276437198(uint64_t a1)
{
  v2 = sub_276437228(a1, 1);
  *v2 = &unk_2885230A0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  if (atomic_load_explicit(dword_2812ED338, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 32) = 0u;
  return v2;
}

uint64_t sub_276437228(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764ACBB8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 208, sub_2764372B0);
}

uint64_t sub_2764372B4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764ACBE8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 136, sub_27643733C);
}

uint64_t sub_276437340(uint64_t a1)
{
  v2 = sub_2764373C0(a1, 1);
  *v2 = &unk_288523200;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  if (atomic_load_explicit(dword_2812ED448, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  bzero((v2 + 40), 0x2B0uLL);
  return v2;
}

uint64_t sub_2764373C0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764ACC24(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 728, sub_276437448);
}

uint64_t sub_27643744C(uint64_t a1)
{
  v2 = sub_2764374FC(a1, 1);
  *v2 = &unk_2885232B0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  if (atomic_load_explicit(dword_2812ED420, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = MEMORY[0x277D80A90];
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 0u;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 352) = 0u;
  *(v2 + 368) = 0;
  return v2;
}

uint64_t sub_2764374FC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764ACC60(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 376, sub_276437584);
}

void *sub_276437588(uint64_t a1)
{
  v2 = sub_276437600(a1, 1);
  *v2 = &unk_288523360;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812ED588, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_276437600(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764ACC9C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_276437688);
}

uint64_t sub_27643768C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764ACCCC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_276437714);
}

uint64_t sub_276437718(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764ACCFC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 240, sub_2764377A0);
}

uint64_t sub_2764377A4(uint64_t a1)
{
  v2 = sub_276437820(a1, 1);
  *v2 = &unk_288523570;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812ED4C0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276437820(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764ACD38(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_2764378A8);
}

uint64_t sub_2764378AC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764ACD68(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 224, sub_276437934);
}

uint64_t sub_276437938(uint64_t a1)
{
  v2 = sub_276437A08(a1, 1);
  *v2 = &unk_2885236D0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  if (atomic_load_explicit(dword_2812ED3D8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = MEMORY[0x277D80A90];
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  *(v2 + 344) = 0u;
  *(v2 + 360) = 0u;
  *(v2 + 376) = 0u;
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0u;
  return v2;
}

uint64_t sub_276437A08(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764ACDA4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 424, sub_276437A90);
}

uint64_t sub_276437A94(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764ACDE0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, sub_276437B1C);
}

uint64_t sub_276437B30()
{
  google::protobuf::internal::AddDescriptors();
  if (atomic_load_explicit(dword_2812ED480, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812F10A0 = 10000;
  qword_2812F10A8 = &qword_2812F04D0;
  sub_27643690C(10000, 11, 0);
  if (atomic_load_explicit(dword_2812ED3B0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812F10B0 = 10000;
  qword_2812F10B8 = &unk_2812F0580;
  sub_276436990(10000, 11, 0);
  if (atomic_load_explicit(dword_2812ED508, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812F10C0 = 10000;
  qword_2812F10C8 = &qword_2812F0650;
  sub_276436A14(10000, 11, 0);
  if (atomic_load_explicit(dword_2812ED4F0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812F10D0 = 10000;
  qword_2812F10D8 = &qword_2812F0688;
  sub_276436A98(10000, 11, 0);
  if (atomic_load_explicit(dword_2812ED338, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812F10E0 = 10000;
  qword_2812F10E8 = &qword_2812F06A0;
  sub_276436B1C(10000, 11, 0);
  if (atomic_load_explicit(dword_2812ED310, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812F10F0 = 10000;
  qword_2812F10F8 = &unk_2812F0770;
  sub_276436BA0(10000, 11, 0);
  if (atomic_load_explicit(dword_2812ED448, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812F1100 = 10000;
  qword_2812F1108 = &qword_2812F07F8;
  sub_276436C24(10000, 11, 0);
  if (atomic_load_explicit(dword_2812ED420, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812F1110 = 10000;
  qword_2812F1118 = &qword_2812F0AD0;
  sub_276436CA8(10000, 11, 0);
  if (atomic_load_explicit(dword_2812ED588, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812F1120 = 10000;
  qword_2812F1128 = &qword_2812F0C48;
  sub_276436D2C(10000, 11, 0);
  if (atomic_load_explicit(dword_2812ED568, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812F1130 = 10000;
  qword_2812F1138 = qword_2812F0C78;

  return sub_276436DB0(10000, 11, 0);
}

uint64_t sub_27643949C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F1548 = v4;
  qword_2812F1540 = &unk_2885246A8;
  if (atomic_load_explicit(dword_2812ED628, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812F1560 = 0;
  qword_2812F1558 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F1540);
}

uint64_t sub_276439550(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  sub_276440688(qword_2812F1350, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, qword_2812F1350);
}

uint64_t sub_2764395C0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F11C8 = v4;
  qword_2812F11C0 = &unk_288523BA8;
  if (atomic_load_explicit(dword_2812ED670, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F11D8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F11C0);
}

uint64_t sub_276439670(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  sub_27643FCF8(qword_2812F1318, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, qword_2812F1318);
}

uint64_t sub_2764396E0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  sub_2764426F8(&unk_2812F1430, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &unk_2812F1430);
}

uint64_t sub_276439750(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  sub_27643A100(&unk_2812F1140, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &unk_2812F1140);
}

uint64_t sub_2764397C0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  sub_27643A854(qword_2812F1170, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, qword_2812F1170);
}

uint64_t sub_276439830(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F1490 = v4;
  qword_2812F1488 = &unk_2885243E8;
  if (atomic_load_explicit(dword_2812ED728, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F14A0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F1488);
}

uint64_t sub_2764398E0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F1570 = v4;
  qword_2812F1568 = &unk_288524758;
  if (atomic_load_explicit(dword_2812ED748, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812F159D = 0;
  unk_2812F1590 = 0u;
  unk_2812F1580 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F1568);
}

uint64_t sub_27643999C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  sub_27643CB04(&unk_2812F1210, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &unk_2812F1210);
}

uint64_t sub_276439A0C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F1280 = v4;
  qword_2812F1278 = &unk_288523DB8;
  if (atomic_load_explicit(dword_2812ED7A0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F1290 = 0;
  unk_2812F1298 = 0;
  qword_2812F12A0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F1278);
}

uint64_t sub_276439AC0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  sub_27643EAAC(qword_2812F12A8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, qword_2812F12A8);
}

uint64_t sub_276439B30(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  sub_276440EA4(qword_2812F1388, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, qword_2812F1388);
}

uint64_t sub_276439BA0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F14B0 = v4;
  qword_2812F14A8 = &unk_288524498;
  if (atomic_load_explicit(dword_2812ED818, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F14C0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F14A8);
}

uint64_t sub_276439C50(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F14D0 = v4;
  qword_2812F14C8 = &unk_288524548;
  if (atomic_load_explicit(dword_2812ED838, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F1500 = 0;
  *&algn_2812F14D0[32] = 0u;
  *&algn_2812F14D0[16] = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F14C8);
}

uint64_t sub_276439D0C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F11A8 = v4;
  qword_2812F11A0 = &unk_288523AF8;
  if (atomic_load_explicit(dword_2812ED878, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F11B8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F11A0);
}

uint64_t sub_276439DBC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  sub_276441EDC(qword_2812F13F8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, qword_2812F13F8);
}

uint64_t sub_276439E2C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  sub_2764416C0(qword_2812F13C0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, qword_2812F13C0);
}

uint64_t sub_276439E9C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F11E8 = v4;
  qword_2812F11E0 = &unk_288523C58;
  if (atomic_load_explicit(dword_2812ED8E8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F11F8 = 0;
  unk_2812F1200 = 0;
  qword_2812F1208 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F11E0);
}

uint64_t sub_276439F50(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F1510 = v4;
  qword_2812F1508 = &unk_2885245F8;
  if (atomic_load_explicit(dword_2812ED908, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *&algn_2812F1510[32] = 0u;
  *&algn_2812F1510[16] = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F1508);
}

uint64_t sub_27643A008(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  sub_27643F394(qword_2812F12E0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, qword_2812F12E0);
}

uint64_t sub_27643A078(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCH3DArchives.pb.cc", a4);
  qword_2812F15B0 = 0;
  unk_2812F15B8 = 0;
  qword_2812F15A8 = &unk_288524808;
  qword_2812F15C0 = 0;
  unk_2812F15C8 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &qword_2812F15A8);
}

uint64_t sub_27643A100(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288523998;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812ED6E8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return a1;
}

uint64_t sub_27643A188(uint64_t a1)
{
  sub_2763941F4((a1 + 8));
  sub_276448258((a1 + 16));
  return a1;
}

void sub_27643A1C8(uint64_t a1)
{
  sub_27643A188(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27643A208(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (result[4] + 8);
    do
    {
      v4 = *v3++;
      result = sub_276442864(v4);
      --v2;
    }

    while (v2);
    *(v1 + 6) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  if (v6)
  {

    return sub_2763D4FD4(v5);
  }

  return result;
}

google::protobuf::internal *sub_27643A284(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_2763D4D98(a3, &v20) & 1) == 0)
  {
    while (1)
    {
      v5 = (v20 + 1);
      v6 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v18;
LABEL_6:
      if (v6 == 10)
      {
        v9 = (v5 - 1);
        while (1)
        {
          v10 = (v9 + 1);
          v20 = (v9 + 1);
          v11 = *(a1 + 32);
          if (!v11)
          {
            goto LABEL_18;
          }

          v16 = *(a1 + 24);
          v12 = *v11;
          if (v16 < *v11)
          {
            *(a1 + 24) = v16 + 1;
            v13 = *&v11[2 * v16 + 2];
            goto LABEL_22;
          }

          if (v12 == *(a1 + 28))
          {
LABEL_18:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
            v11 = *(a1 + 32);
            v12 = *v11;
          }

          *v11 = v12 + 1;
          v13 = sub_276447A5C(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2764ACE1C(a3, v13, v10);
          v20 = v9;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 10)
          {
            goto LABEL_14;
          }
        }
      }

      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v20;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_2763D4D98(a3, &v20))
      {
        return v20;
      }
    }

    v5 = (v20 + 2);
LABEL_5:
    v20 = v5;
    goto LABEL_6;
  }

  return v20;
}

unsigned __int8 *sub_27643A454(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = *(a1 + 24);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v7 = *(*(a1 + 32) + 8 * i + 8);
      *a2 = 10;
      v8 = *(v7 + 20);
      if (v8 > 0x7F)
      {
        a2[1] = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = a2 + 3;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          a2[2] = v10;
          v9 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v8;
        v9 = a2 + 2;
      }

      a2 = sub_276442CB4(v7, v9, this);
    }
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27643A578(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_276442F58(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 40) = v2;
    return v2;
  }
}

uint64_t sub_27643A630(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885248A8, 0);
  if (v4)
  {

    return sub_27643A6D8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27643A6D8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(a2 + 32);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    result = sub_2764482DC(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return result;
}

uint64_t *sub_27643A778(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27643A208(result);

    return sub_27643A630(v4, a2);
  }

  return result;
}

BOOL sub_27643A7C4(uint64_t a1)
{
  v2 = *(a1 + 24);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_2764432FC(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

void *sub_27643A854(void *a1, uint64_t a2)
{
  *a1 = &unk_288523A48;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812ED708, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = v3;
  return a1;
}

void *sub_27643A8C8(void *a1)
{
  v2 = a1[3];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  if (a1 != qword_2812F1170)
  {
    v3 = a1[4];
    if (v3)
    {
      v4 = sub_27643E1D0(v3);
      MEMORY[0x277C98580](v4, 0x10A1C40CA074DDCLL);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_27643A968(void *a1)
{
  sub_27643A8C8(a1);

  JUMPOUT(0x277C98580);
}

void *sub_27643A9A8()
{
  if (atomic_load_explicit(dword_2812ED708, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812F1170;
}

uint64_t *sub_27643A9E8(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = result[3] & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      result = sub_27643AA88(result[4]);
    }
  }

LABEL_7:
  if ((v2 & 0xC) != 0)
  {
    v1[5] = 0;
  }

  v5 = *(v1 + 8);
  v4 = v1 + 1;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_2763D4FD4(v4);
  }

  return result;
}

uint64_t *sub_27643AA88(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = sub_27643E2AC(result[3]);
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = sub_27643E308(v1[4]);
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = sub_27643A208(v1[5]);
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_27643AB10(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v26) & 1) == 0)
  {
    while (1)
    {
      v7 = (v26 + 1);
      v8 = *v26;
      if ((*v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v9 - 128));
      v26 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_53;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_35;
          }

          *(a1 + 16) |= 2u;
          v16 = *(a1 + 32);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = sub_2764475B8(v17);
            *(a1 + 32) = v16;
            v7 = v26;
          }

          v12 = sub_2764AC0DC(a3, v16, v7);
        }

        else
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_35;
          }

          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v12 = google::protobuf::internal::InlineGreedyStringParser();
        }

        goto LABEL_42;
      }

      if (v10 == 3)
      {
        if (v8 == 24)
        {
          v19 = (v7 + 1);
          v18 = *v7;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_32;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if (v20 < 0)
          {
            v26 = google::protobuf::internal::VarintParseSlow64(v7, v18);
            if (!v26)
            {
LABEL_53:
              v26 = 0;
              goto LABEL_2;
            }
          }

          else
          {
            v19 = (v7 + 2);
LABEL_32:
            v26 = v19;
          }

          if (v18 > 5)
          {
            sub_2764ADE5C();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 40) = v18;
          }

          goto LABEL_43;
        }

LABEL_35:
        if (v8)
        {
          v21 = (v8 & 7) == 4;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_42:
        v26 = v12;
        if (!v12)
        {
          goto LABEL_53;
        }

        goto LABEL_43;
      }

      if (v10 != 4 || v8 != 32)
      {
        goto LABEL_35;
      }

      v5 |= 8u;
      v13 = (v7 + 1);
      LODWORD(v14) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      v15 = *v13;
      v14 = (v14 + (v15 << 7) - 128);
      if ((v15 & 0x80000000) == 0)
      {
        v13 = (v7 + 2);
LABEL_21:
        v26 = v13;
        *(a1 + 44) = v14;
        goto LABEL_43;
      }

      v24 = google::protobuf::internal::VarintParseSlow32(v7, v14);
      v26 = v24;
      *(a1 + 44) = v25;
      if (!v24)
      {
        goto LABEL_53;
      }

LABEL_43:
      if (sub_2763D4D98(a3, &v26))
      {
        goto LABEL_2;
      }
    }

    v7 = (v26 + 2);
LABEL_6:
    v26 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v26;
}

unsigned __int8 *sub_27643ADBC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*this <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v8 = *(a1 + 32);
    *v4 = 10;
    v9 = *(v8 + 20);
    if (v9 > 0x7F)
    {
      v4[1] = v9 | 0x80;
      v12 = v9 >> 7;
      if (v9 >> 14)
      {
        v10 = v4 + 3;
        do
        {
          *(v10 - 1) = v12 | 0x80;
          v15 = v12 >> 7;
          ++v10;
          v16 = v12 >> 14;
          v12 >>= 7;
        }

        while (v16);
        *(v10 - 1) = v15;
      }

      else
      {
        v4[2] = v12;
        v10 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v9;
      v10 = v4 + 2;
    }

    v4 = sub_27643E568(v8, v10, this);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_2763DD938(this, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_5;
  }

LABEL_25:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v17 = *(a1 + 40);
  *v4 = 24;
  if (v17 > 0x7F)
  {
    v4[1] = v17 | 0x80;
    v18 = v17 >> 7;
    if (v17 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v18 | 0x80;
        v19 = v18 >> 7;
        ++v4;
        v20 = v18 >> 14;
        v18 >>= 7;
      }

      while (v20);
      *(v4 - 1) = v19;
      if ((v6 & 8) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v4[2] = v18;
      v4 += 3;
      if ((v6 & 8) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    v4[1] = v17;
    v4 += 2;
    if ((v6 & 8) == 0)
    {
      goto LABEL_36;
    }
  }

LABEL_5:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v7 = *(a1 + 44);
  *v4 = 32;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v11 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v11 | 0x80;
        v13 = v11 >> 7;
        ++v4;
        v14 = v11 >> 14;
        v11 >>= 7;
      }

      while (v14);
      *(v4 - 1) = v13;
    }

    else
    {
      v4[2] = v11;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_36:
  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27643B008(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_27643E798(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
  }

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v9 = *(a1 + 40);
    if (v9 < 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v10;
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

  v3 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_13:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_27643B160(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885248C0, 0);
  if (v4)
  {

    return sub_27643B208(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27643B208(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0xF) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v6 = *(v3 + 32);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_2764475B8(v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 32))
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = &qword_2812F1278;
    }

    result = sub_27643B30C(v6, v8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_8:
      *(v3 + 44) = *(a2 + 44);
      goto LABEL_9;
    }

LABEL_20:
    *(v3 + 40) = *(a2 + 40);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t sub_27643B30C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = sub_276447BB4(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &qword_2812F14A8;
      }

      result = sub_27643E950(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_24;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v9 = *(v3 + 32);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = sub_276447AE8(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v11 = *(a2 + 32);
    }

    else
    {
      v11 = &qword_2812F1488;
    }

    result = sub_27643E950(v9, v11);
    if ((v5 & 4) != 0)
    {
LABEL_24:
      *(v3 + 16) |= 4u;
      v12 = *(v3 + 40);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = sub_2764471AC(v13);
        *(v3 + 40) = v12;
      }

      if (*(a2 + 40))
      {
        v14 = *(a2 + 40);
      }

      else
      {
        v14 = &unk_2812F1140;
      }

      return sub_27643A6D8(v12, v14);
    }
  }

  return result;
}

uint64_t *sub_27643B464(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27643A9E8(result);

    return sub_27643B160(v4, a2);
  }

  return result;
}

uint64_t sub_27643B4B0(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = sub_27643B4E0(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_27643B4E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_8;
  }

  v4 = *(a1 + 24);
  if ((*(v4 + 16) & 1) == 0 || !sub_276443AEC(*(v4 + 24)))
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
LABEL_8:
    v5 = *(a1 + 32);
    if ((*(v5 + 16) & 1) != 0 && sub_276443AEC(*(v5 + 24)))
    {
      if ((*(a1 + 16) & 4) == 0)
      {
        return 1;
      }

      goto LABEL_11;
    }

    return 0;
  }

LABEL_3:
  if ((v2 & 4) == 0)
  {
    return 1;
  }

LABEL_11:
  v6 = *(a1 + 40);
  v7 = *(v6 + 24);
  do
  {
    v3 = v7 < 1;
    if (v7 < 1)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = sub_2764432FC(*(*(v6 + 32) + 8 * v7));
    v7 = v8;
  }

  while ((v9 & 1) != 0);
  return v3;
}

uint64_t *sub_27643B5D0(uint64_t *a1)
{
  if (a1 != &qword_2812F11A0)
  {
    v2 = a1[3];
    if (v2)
    {
      sub_2763941F4((v2 + 8));
      MEMORY[0x277C98580](v2, 0x1081C40825B58B5);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_27643B640(uint64_t *a1)
{
  sub_27643B5D0(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27643B680(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = sub_27643B6DC(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

uint64_t *sub_27643B6DC(uint64_t a1)
{
  if ((*(a1 + 16) & 0xF) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_2763D4FD4(result);
  }

  return result;
}

google::protobuf::internal *sub_27643B700(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  while ((sub_2763D4D98(a3, &v15) & 1) == 0)
  {
    v5 = (v15 + 1);
    v6 = *v15;
    if ((*v15 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v15 + 2);
LABEL_6:
      v15 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v15, (v7 - 128));
    v15 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v13;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = sub_276447FD4(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_2764A8A98(a3, v10, v5);
    }

    else
    {
      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v15;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v15 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v15;
}

unsigned __int8 *sub_27643B848(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(a1 + 16))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = (a2 + 3);
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v6;
      v7 = (a2 + 2);
    }

    a2 = sub_276446ECC(v5, v7, this);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27643B938(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_276447014(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_27643B9C4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885248D8, 0);
  if (v4)
  {

    return sub_27643BA6C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27643BA6C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_276447FD4(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &qword_2812F15A8;
    }

    return sub_27643BB14(v6, v8);
  }

  return result;
}

uint64_t sub_27643BB14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0xF) != 0)
  {
    if (v5)
    {
      v3[6] = *(a2 + 24);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v3[7] = *(a2 + 28);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        v3[4] |= v5;
        return result;
      }

LABEL_8:
      v3[9] = *(a2 + 36);
      goto LABEL_9;
    }

LABEL_13:
    v3[8] = *(a2 + 32);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t *sub_27643BBA8(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27643B680(result);

    return sub_27643B9C4(v4, a2);
  }

  return result;
}

uint64_t *sub_27643BC68(uint64_t *a1)
{
  if (a1 != &qword_2812F11C0)
  {
    v2 = a1[3];
    if (v2)
    {
      sub_2763941F4((v2 + 8));
      MEMORY[0x277C98580](v2, 0x1081C40825B58B5);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_27643BCD8(uint64_t *a1)
{
  sub_27643BC68(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27643BD18(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = sub_27643B6DC(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_27643BD74(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  while ((sub_2763D4D98(a3, &v15) & 1) == 0)
  {
    v5 = (v15 + 1);
    v6 = *v15;
    if ((*v15 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v15 + 2);
LABEL_6:
      v15 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v15, (v7 - 128));
    v15 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v13;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = sub_276447FD4(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_2764A8A98(a3, v10, v5);
    }

    else
    {
      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v15;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v15 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v15;
}

unsigned __int8 *sub_27643BEBC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(a1 + 16))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = (a2 + 3);
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v6;
      v7 = (a2 + 2);
    }

    a2 = sub_276446ECC(v5, v7, this);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27643BFAC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_276447014(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_27643C038(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885248F0, 0);
  if (v4)
  {

    return sub_27643BA6C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_27643C0E0(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27643BD18(result);

    return sub_27643C038(v4, a2);
  }

  return result;
}

uint64_t *sub_27643C18C(uint64_t *a1)
{
  if (a1 != &qword_2812F11E0)
  {
    v2 = a1[3];
    if (v2)
    {
      sub_2763941F4((v2 + 8));
      MEMORY[0x277C98580](v2, 0x1081C40825B58B5);
    }

    v3 = a1[4];
    if (v3)
    {
      sub_2763941F4((v3 + 8));
      MEMORY[0x277C98580](v3, 0x1081C40825B58B5);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_27643C228(uint64_t *a1)
{
  sub_27643C18C(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27643C268(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_27643B6DC(result[3]);
    }

    if ((v2 & 2) != 0)
    {
      result = sub_27643B6DC(v1[4]);
    }
  }

  if ((v2 & 0xC) != 0)
  {
    v1[5] = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_27643C2E4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v22) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
LABEL_45:
        v22 = 0;
        goto LABEL_2;
      }

      v7 = TagFallback;
      v8 = v21;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 == 29)
          {
            v18 = *v7;
            v14 = (v7 + 4);
            v5 |= 4u;
            *(a1 + 40) = v18;
            goto LABEL_31;
          }
        }

        else if (v10 == 4 && v8 == 37)
        {
          v15 = *v7;
          v14 = (v7 + 4);
          v5 |= 8u;
          *(a1 + 44) = v15;
LABEL_31:
          v22 = v14;
          goto LABEL_40;
        }
      }

      else if (v10 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v12 = *(a1 + 24);
          if (!v12)
          {
            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v12 = sub_276447FD4(v16);
            *(a1 + 24) = v12;
LABEL_27:
            v7 = v22;
          }

LABEL_28:
          v17 = sub_2764A8A98(a3, v12, v7);
          goto LABEL_39;
        }
      }

      else if (v10 == 2 && v8 == 18)
      {
        *(a1 + 16) |= 2u;
        v12 = *(a1 + 32);
        if (!v12)
        {
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = sub_276447FD4(v13);
          *(a1 + 32) = v12;
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      if (v8)
      {
        v19 = (v8 & 7) == 4;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        *(a3 + 80) = v8 - 1;
        goto LABEL_2;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v17 = google::protobuf::internal::UnknownFieldParse();
LABEL_39:
      v22 = v17;
      if (!v17)
      {
        goto LABEL_45;
      }

LABEL_40:
      if (sub_2763D4D98(a3, &v22))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *sub_27643C4FC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 20);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = (a2 + 3);
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v7;
      v8 = (a2 + 2);
    }

    a2 = sub_276446ECC(v6, v8, this);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v12 = *(a1 + 32);
  *a2 = 18;
  v13 = *(v12 + 20);
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = (a2 + 3);
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      a2[2] = v15;
      v14 = (a2 + 3);
    }
  }

  else
  {
    a2[1] = v13;
    v14 = (a2 + 2);
  }

  a2 = sub_276446ECC(v12, v14, this);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

LABEL_26:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v18 = *(a1 + 40);
  *a2 = 29;
  *(a2 + 1) = v18;
  a2 += 5;
  if ((v5 & 8) != 0)
  {
LABEL_29:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v19 = *(a1 + 44);
    *a2 = 37;
    *(a2 + 1) = v19;
    a2 += 5;
  }

LABEL_32:
  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27643C704(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_276447014(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = sub_276447014(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

LABEL_6:
  v6 = v3 + 5;
  if ((v2 & 4) == 0)
  {
    v6 = v3;
  }

  if ((v2 & 8) != 0)
  {
    return v6 + 5;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_27643C7B0(uint64_t a1)
{
  if ((~*(a1 + 16) & 0xF) != 0)
  {
    v4 = sub_27643C704(a1);
  }

  else
  {
    v2 = sub_276447014(*(a1 + 24));
    v3 = sub_276447014(*(a1 + 32));
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 12;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

uint64_t sub_27643C884(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288524908, 0);
  if (v4)
  {

    return sub_27643C92C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27643C92C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0xF) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = sub_276447FD4(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &qword_2812F15A8;
      }

      result = sub_27643BB14(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_27;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v9 = *(v3 + 32);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = sub_276447FD4(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v11 = *(a2 + 32);
    }

    else
    {
      v11 = &qword_2812F15A8;
    }

    result = sub_27643BB14(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_8:
      *(v3 + 44) = *(a2 + 44);
      goto LABEL_9;
    }

LABEL_27:
    *(v3 + 40) = *(a2 + 40);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t *sub_27643CA40(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27643C268(result);

    return sub_27643C884(v4, a2);
  }

  return result;
}

uint64_t sub_27643CB04(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288523D08;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812ED768, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 24) = MEMORY[0x277D80A90];
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  return a1;
}

uint64_t *sub_27643CB84(uint64_t *a1)
{
  sub_27643CBB8(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_27643CBB8(uint64_t *result)
{
  v1 = result;
  v2 = result[3];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812F1210)
  {
    v3 = v1[4];
    if (v3)
    {
      sub_2763941F4((v3 + 8));
      MEMORY[0x277C98580](v3, 0x1081C40825B58B5);
    }

    v4 = v1[5];
    if (v4)
    {
      sub_2763941F4((v4 + 8));
      MEMORY[0x277C98580](v4, 0x1081C40825B58B5);
    }

    v5 = v1[6];
    if (v5)
    {
      sub_2763941F4((v5 + 8));
      MEMORY[0x277C98580](v5, 0x1081C40825B58B5);
    }

    v6 = v1[7];
    if (v6)
    {
      sub_2763941F4((v6 + 8));
      MEMORY[0x277C98580](v6, 0x1081C40825B58B5);
    }

    v7 = v1[8];
    if (v7)
    {
      v8 = sub_27643B5D0(v7);
      MEMORY[0x277C98580](v8, 0x10A1C40D4912B22);
    }

    v9 = v1[9];
    if (v9)
    {
      v10 = sub_27643BC68(v9);
      MEMORY[0x277C98580](v10, 0x10A1C40D4912B22);
    }

    result = v1[10];
    if (result)
    {
      sub_27643C18C(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27643CD34(uint64_t *a1)
{
  sub_27643CB84(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27643CD74(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    v5 = result[3] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_21:
  result = sub_27643B6DC(result[4]);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = sub_27643B6DC(v1[5]);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = sub_27643B6DC(v1[6]);
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_25:
    result = sub_27643B680(v1[8]);
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_24:
  result = sub_27643B6DC(v1[7]);
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_26:
  result = sub_27643BD18(v1[9]);
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = sub_27643C268(v1[10]);
  }

LABEL_11:
  if ((v2 & 0x700) != 0)
  {
    *(v1 + 96) = 0;
    v1[11] = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_27643CE80(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v37 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v37) & 1) == 0)
  {
    while (1)
    {
      v7 = (v37 + 1);
      v8 = *v37;
      if ((*v37 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v37, (v9 - 128));
      v37 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_95;
      }

      v7 = TagFallback;
      v8 = v21;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 5)
      {
        if (v8 >> 3 <= 2)
        {
          if (v10 == 1)
          {
            if (v8 == 10)
            {
              *(a1 + 16) |= 1u;
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v16 = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_74;
            }

            goto LABEL_83;
          }

          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_83;
          }

          *(a1 + 16) |= 2u;
          v18 = *(a1 + 32);
          if (v18)
          {
            goto LABEL_73;
          }

          v19 = *(a1 + 8);
          if (v19)
          {
            v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = sub_276447FD4(v19);
          *(a1 + 32) = v18;
        }

        else
        {
          if (v10 != 3)
          {
            if (v10 != 4)
            {
              if (v10 == 5 && v8 == 45)
              {
                v5 |= 0x100u;
                *(a1 + 88) = *v7;
                v37 = (v7 + 4);
                goto LABEL_75;
              }

              goto LABEL_83;
            }

            if (v8 == 34)
            {
              *(a1 + 16) |= 8u;
              v18 = *(a1 + 48);
              if (v18)
              {
                goto LABEL_73;
              }

              v22 = *(a1 + 8);
              if (v22)
              {
                v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
              }

              v18 = sub_276447FD4(v22);
              *(a1 + 48) = v18;
              goto LABEL_72;
            }

LABEL_83:
            if (v8)
            {
              v32 = (v8 & 7) == 4;
            }

            else
            {
              v32 = 1;
            }

            if (v32)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_2763D4E10((a1 + 8));
            }

            v16 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_74;
          }

          if (v8 != 26)
          {
            goto LABEL_83;
          }

          *(a1 + 16) |= 4u;
          v18 = *(a1 + 40);
          if (v18)
          {
            goto LABEL_73;
          }

          v28 = *(a1 + 8);
          if (v28)
          {
            v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = sub_276447FD4(v28);
          *(a1 + 40) = v18;
        }

LABEL_72:
        v7 = v37;
        goto LABEL_73;
      }

      if (v8 >> 3 > 8)
      {
        if (v10 == 9)
        {
          if (v8 == 74)
          {
            *(a1 + 16) |= 0x20u;
            v30 = *(a1 + 64);
            if (!v30)
            {
              v31 = *(a1 + 8);
              if (v31)
              {
                v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
              }

              v30 = sub_2764472C4(v31);
              *(a1 + 64) = v30;
              v7 = v37;
            }

            v16 = sub_2764ACEEC(a3, v30, v7);
            goto LABEL_74;
          }
        }

        else if (v10 == 10)
        {
          if (v8 == 82)
          {
            *(a1 + 16) |= 0x40u;
            v26 = *(a1 + 72);
            if (!v26)
            {
              v27 = *(a1 + 8);
              if (v27)
              {
                v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
              }

              v26 = sub_276447390(v27);
              *(a1 + 72) = v26;
              v7 = v37;
            }

            v16 = sub_2764ACFBC(a3, v26, v7);
            goto LABEL_74;
          }
        }

        else if (v10 == 11 && v8 == 90)
        {
          *(a1 + 16) |= 0x80u;
          v14 = *(a1 + 80);
          if (!v14)
          {
            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = sub_27644745C(v15);
            *(a1 + 80) = v14;
            v7 = v37;
          }

          v16 = sub_2764AD08C(a3, v14, v7);
          goto LABEL_74;
        }

        goto LABEL_83;
      }

      if (v10 == 6)
      {
        if (v8 == 50)
        {
          *(a1 + 16) |= 0x10u;
          v18 = *(a1 + 56);
          if (!v18)
          {
            v29 = *(a1 + 8);
            if (v29)
            {
              v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = sub_276447FD4(v29);
            *(a1 + 56) = v18;
            goto LABEL_72;
          }

LABEL_73:
          v16 = sub_2764A8A98(a3, v18, v7);
LABEL_74:
          v37 = v16;
          if (!v16)
          {
            goto LABEL_95;
          }

          goto LABEL_75;
        }

        goto LABEL_83;
      }

      if (v10 == 7)
      {
        if (v8 != 56)
        {
          goto LABEL_83;
        }

        v5 |= 0x200u;
        v23 = (v7 + 1);
        LODWORD(v24) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

        v25 = *v23;
        v24 = (v24 + (v25 << 7) - 128);
        if ((v25 & 0x80000000) == 0)
        {
          v23 = (v7 + 2);
LABEL_55:
          v37 = v23;
          *(a1 + 92) = v24;
          goto LABEL_75;
        }

        v33 = google::protobuf::internal::VarintParseSlow32(v7, v24);
        v37 = v33;
        *(a1 + 92) = v34;
        if (!v33)
        {
          goto LABEL_95;
        }
      }

      else
      {
        if (v10 != 8 || v8 != 64)
        {
          goto LABEL_83;
        }

        v5 |= 0x400u;
        v12 = (v7 + 1);
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_16:
          v37 = v12;
          *(a1 + 96) = v11 != 0;
          goto LABEL_75;
        }

        v35 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v37 = v35;
        *(a1 + 96) = v36 != 0;
        if (!v35)
        {
LABEL_95:
          v37 = 0;
          goto LABEL_2;
        }
      }

LABEL_75:
      if (sub_2763D4D98(a3, &v37))
      {
        goto LABEL_2;
      }
    }

    v7 = (v37 + 2);
LABEL_6:
    v37 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v37;
}

unsigned __int8 *sub_27643D348(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_2763DD938(this, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
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

  v7 = *(a1 + 32);
  *v4 = 18;
  v8 = *(v7 + 20);
  if (v8 > 0x7F)
  {
    v4[1] = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = (v4 + 3);
      do
      {
        *(v9 - 1) = v10 | 0x80;
        v11 = v10 >> 7;
        ++v9;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
      *(v9 - 1) = v11;
    }

    else
    {
      v4[2] = v10;
      v9 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v8;
    v9 = (v4 + 2);
  }

  v4 = sub_276446ECC(v7, v9, this);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_24:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v13 = *(a1 + 40);
  *v4 = 26;
  v14 = *(v13 + 20);
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = (v4 + 3);
      do
      {
        *(v15 - 1) = v16 | 0x80;
        v17 = v16 >> 7;
        ++v15;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
      *(v15 - 1) = v17;
    }

    else
    {
      v4[2] = v16;
      v15 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v14;
    v15 = (v4 + 2);
  }

  v4 = sub_276446ECC(v13, v15, this);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_34:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v19 = *(a1 + 48);
  *v4 = 34;
  v20 = *(v19 + 20);
  if (v20 > 0x7F)
  {
    v4[1] = v20 | 0x80;
    v22 = v20 >> 7;
    if (v20 >> 14)
    {
      v21 = (v4 + 3);
      do
      {
        *(v21 - 1) = v22 | 0x80;
        v23 = v22 >> 7;
        ++v21;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
      *(v21 - 1) = v23;
    }

    else
    {
      v4[2] = v22;
      v21 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v20;
    v21 = (v4 + 2);
  }

  v4 = sub_276446ECC(v19, v21, this);
  if ((v6 & 0x100) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v25 = *(a1 + 88);
  *v4 = 45;
  *(v4 + 1) = v25;
  v4 += 5;
  if ((v6 & 0x10) == 0)
  {
LABEL_7:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_8;
    }

LABEL_57:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v32 = *(a1 + 92);
    *v4 = 56;
    if (v32 > 0x7F)
    {
      v4[1] = v32 | 0x80;
      v33 = v32 >> 7;
      if (v32 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v33 | 0x80;
          v34 = v33 >> 7;
          ++v4;
          v35 = v33 >> 14;
          v33 >>= 7;
        }

        while (v35);
        *(v4 - 1) = v34;
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v4[2] = v33;
        v4 += 3;
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_68;
        }
      }
    }

    else
    {
      v4[1] = v32;
      v4 += 2;
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_68;
      }
    }

LABEL_9:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_71;
  }

LABEL_47:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v26 = *(a1 + 56);
  *v4 = 50;
  v27 = *(v26 + 20);
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

  v4 = sub_276446ECC(v26, v28, this);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_57;
  }

LABEL_8:
  if ((v6 & 0x400) == 0)
  {
    goto LABEL_9;
  }

LABEL_68:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v36 = *(a1 + 96);
  *v4 = 64;
  v4[1] = v36;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_10:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_81;
  }

LABEL_71:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v37 = *(a1 + 64);
  *v4 = 74;
  v38 = *(v37 + 20);
  if (v38 > 0x7F)
  {
    v4[1] = v38 | 0x80;
    v40 = v38 >> 7;
    if (v38 >> 14)
    {
      v39 = v4 + 3;
      do
      {
        *(v39 - 1) = v40 | 0x80;
        v41 = v40 >> 7;
        ++v39;
        v42 = v40 >> 14;
        v40 >>= 7;
      }

      while (v42);
      *(v39 - 1) = v41;
    }

    else
    {
      v4[2] = v40;
      v39 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v38;
    v39 = v4 + 2;
  }

  v4 = sub_27643B848(v37, v39, this);
  if ((v6 & 0x40) == 0)
  {
LABEL_11:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_91;
  }

LABEL_81:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v43 = *(a1 + 72);
  *v4 = 82;
  v44 = *(v43 + 20);
  if (v44 > 0x7F)
  {
    v4[1] = v44 | 0x80;
    v46 = v44 >> 7;
    if (v44 >> 14)
    {
      v45 = v4 + 3;
      do
      {
        *(v45 - 1) = v46 | 0x80;
        v47 = v46 >> 7;
        ++v45;
        v48 = v46 >> 14;
        v46 >>= 7;
      }

      while (v48);
      *(v45 - 1) = v47;
    }

    else
    {
      v4[2] = v46;
      v45 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v44;
    v45 = v4 + 2;
  }

  v4 = sub_27643BEBC(v43, v45, this);
  if ((v6 & 0x80) != 0)
  {
LABEL_91:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v49 = *(a1 + 80);
    *v4 = 90;
    v50 = *(v49 + 20);
    if (v50 > 0x7F)
    {
      v4[1] = v50 | 0x80;
      v52 = v50 >> 7;
      if (v50 >> 14)
      {
        v51 = v4 + 3;
        do
        {
          *(v51 - 1) = v52 | 0x80;
          v53 = v52 >> 7;
          ++v51;
          v54 = v52 >> 14;
          v52 >>= 7;
        }

        while (v54);
        *(v51 - 1) = v53;
      }

      else
      {
        v4[2] = v52;
        v51 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v50;
      v51 = v4 + 2;
    }

    v4 = sub_27643C4FC(v49, v51, this);
  }

LABEL_101:
  v55 = *(a1 + 8);
  if ((v55 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v55 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27643D928(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v7 = sub_276447014(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
    goto LABEL_8;
  }

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v11 = sub_276447014(*(a1 + 40));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v12 = sub_276447014(*(a1 + 48));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(a1 + 16);
  if ((v2 & 0x10) != 0)
  {
LABEL_11:
    v8 = sub_276447014(*(a1 + 56));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

LABEL_12:
  v9 = v3 + 5;
  if ((v2 & 0x100) == 0)
  {
    v9 = v3;
  }

  if ((v2 & 0x200) != 0)
  {
    v9 += ((9 * (__clz(*(a1 + 92) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v9 + ((v2 >> 9) & 2);
}

uint64_t sub_27643DAB4(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x71F) != 0)
  {
    v14 = sub_27643D928(a1);
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = sub_276447014(v2);
    v8 = sub_276447014(*(a1 + 40));
    v9 = sub_276447014(*(a1 + 48));
    v10.i32[0] = v6 | 1;
    v10.i32[1] = v7 | 1;
    v10.i32[2] = v8 | 1;
    v10.i32[3] = v9 | 1;
    v11.i64[0] = 0x1F0000001FLL;
    v11.i64[1] = 0x1F0000001FLL;
    v12.i64[0] = 0x4900000049;
    v12.i64[1] = 0x4900000049;
    v20 = vshrq_n_u32(vmlal_u16(v12, vmovn_s32(veorq_s8(vclzq_s32(v10), v11)), 0x9000900090009), 6uLL);
    v13 = sub_276447014(*(a1 + 56));
    v14 = v7 + v9 + v8 + v6 + vaddlvq_u32(v20) + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + v13 + ((9 * (__clz(*(a1 + 92) | 1) ^ 0x1F) + 73) >> 6) + 13;
  }

  v15 = *(a1 + 16);
  if ((v15 & 0xE0) != 0)
  {
    if ((v15 & 0x20) != 0)
    {
      v18 = sub_27643B938(*(a1 + 64));
      v14 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v15 & 0x40) == 0)
      {
LABEL_10:
        if ((v15 & 0x80) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if ((v15 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    v19 = sub_27643BFAC(*(a1 + 72));
    v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v15 & 0x80) != 0)
    {
LABEL_11:
      v16 = sub_27643C7B0(*(a1 + 80));
      v14 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_12:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v14;
    return v14;
  }
}

uint64_t sub_27643DCD4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288524920, 0);
  if (v4)
  {

    return sub_27643DD7C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27643DD7C(uint64_t result, uint64_t a2)
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
    goto LABEL_70;
  }

  if (v5)
  {
    *(v3 + 16) |= 1u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
  }

  if ((v5 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    v6 = *(v3 + 32);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_276447FD4(v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 32))
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = &qword_2812F15A8;
    }

    result = sub_27643BB14(v6, v8);
    if ((v5 & 4) == 0)
    {
LABEL_8:
      if ((v5 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_8;
  }

  *(v3 + 16) |= 4u;
  v9 = *(v3 + 40);
  if (!v9)
  {
    v10 = *(v3 + 8);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = sub_276447FD4(v10);
    *(v3 + 40) = v9;
  }

  if (*(a2 + 40))
  {
    v11 = *(a2 + 40);
  }

  else
  {
    v11 = &qword_2812F15A8;
  }

  result = sub_27643BB14(v9, v11);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_30:
  *(v3 + 16) |= 8u;
  v12 = *(v3 + 48);
  if (!v12)
  {
    v13 = *(v3 + 8);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = sub_276447FD4(v13);
    *(v3 + 48) = v12;
  }

  if (*(a2 + 48))
  {
    v14 = *(a2 + 48);
  }

  else
  {
    v14 = &qword_2812F15A8;
  }

  result = sub_27643BB14(v12, v14);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_46:
    *(v3 + 16) |= 0x20u;
    v18 = *(v3 + 64);
    if (!v18)
    {
      v19 = *(v3 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = sub_2764472C4(v19);
      *(v3 + 64) = v18;
    }

    if (*(a2 + 64))
    {
      v20 = *(a2 + 64);
    }

    else
    {
      v20 = &qword_2812F11A0;
    }

    result = sub_27643BA6C(v18, v20);
    if ((v5 & 0x40) == 0)
    {
LABEL_12:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_62;
    }

    goto LABEL_54;
  }

LABEL_38:
  *(v3 + 16) |= 0x10u;
  v15 = *(v3 + 56);
  if (!v15)
  {
    v16 = *(v3 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = sub_276447FD4(v16);
    *(v3 + 56) = v15;
  }

  if (*(a2 + 56))
  {
    v17 = *(a2 + 56);
  }

  else
  {
    v17 = &qword_2812F15A8;
  }

  result = sub_27643BB14(v15, v17);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_46;
  }

LABEL_11:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_54:
  *(v3 + 16) |= 0x40u;
  v21 = *(v3 + 72);
  if (!v21)
  {
    v22 = *(v3 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = sub_276447390(v22);
    *(v3 + 72) = v21;
  }

  if (*(a2 + 72))
  {
    v23 = *(a2 + 72);
  }

  else
  {
    v23 = &qword_2812F11C0;
  }

  result = sub_27643BA6C(v21, v23);
  if ((v5 & 0x80) != 0)
  {
LABEL_62:
    *(v3 + 16) |= 0x80u;
    v24 = *(v3 + 80);
    if (!v24)
    {
      v25 = *(v3 + 8);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = sub_27644745C(v25);
      *(v3 + 80) = v24;
    }

    if (*(a2 + 80))
    {
      v26 = *(a2 + 80);
    }

    else
    {
      v26 = &qword_2812F11E0;
    }

    result = sub_27643C92C(v24, v26);
  }

LABEL_70:
  if ((v5 & 0x700) == 0)
  {
    return result;
  }

  if ((v5 & 0x100) == 0)
  {
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_73;
    }

LABEL_78:
    *(v3 + 92) = *(a2 + 92);
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  *(v3 + 88) = *(a2 + 88);
  if ((v5 & 0x200) != 0)
  {
    goto LABEL_78;
  }

LABEL_73:
  if ((v5 & 0x400) != 0)
  {
LABEL_74:
    *(v3 + 96) = *(a2 + 96);
  }

LABEL_75:
  *(v3 + 16) |= v5;
  return result;
}

uint64_t *sub_27643E05C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27643CD74(result);

    return sub_27643DCD4(v4, a2);
  }

  return result;
}

BOOL sub_27643E0A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = 0;
  if ((~v1 & 0x71F) == 0 && (~*(*(a1 + 32) + 16) & 0xF) == 0 && (~*(*(a1 + 40) + 16) & 0xF) == 0 && (~*(*(a1 + 48) + 16) & 0xF) == 0 && (~*(*(a1 + 56) + 16) & 0xF) == 0)
  {
    if (v1 & 0x20) == 0 || (v3 = *(a1 + 64), (*(v3 + 16)) && (~*(*(v3 + 24) + 16) & 0xF) == 0)
    {
      if (v1 & 0x40) == 0 || (v4 = *(a1 + 72), (*(v4 + 16)) && (~*(*(v4 + 24) + 16) & 0xF) == 0)
      {
        if ((v1 & 0x80) == 0)
        {
          return 1;
        }

        v5 = *(a1 + 80);
        if ((~*(v5 + 16) & 0xF) == 0 && (~*(*(v5 + 24) + 16) & 0xF) == 0 && (~*(*(v5 + 32) + 16) & 0xF) == 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t *sub_27643E1D0(uint64_t *a1)
{
  if (a1 != &qword_2812F1278)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_276443BAC(v2);
      MEMORY[0x277C98580](v3, 0x10A1C40D4912B22);
    }

    v4 = a1[4];
    if (v4)
    {
      v5 = sub_2764433F0(v4);
      MEMORY[0x277C98580](v5, 0x10A1C40D4912B22);
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = sub_27643A188(v6);
      MEMORY[0x277C98580](v7, 0x10A1C40290C9B23);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_27643E26C(uint64_t *a1)
{
  sub_27643E1D0(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27643E2AC(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = sub_276443494(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

uint64_t *sub_27643E308(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = sub_276443494(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_27643E364(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  while ((sub_2763D4D98(a3, &v21) & 1) == 0)
  {
    v5 = (v21 + 1);
    v6 = *v21;
    if ((*v21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v21 + 2);
LABEL_6:
      v21 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v7 - 128));
    v21 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v19;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 4u;
      v14 = *(a1 + 40);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = sub_2764471AC(v15);
        *(a1 + 40) = v14;
        v5 = v21;
      }

      v11 = sub_2764AD2FC(a3, v14, v5);
    }

    else if (v8 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v12 = *(a1 + 32);
      if (!v12)
      {
        v13 = *(a1 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = sub_276447AE8(v13);
        *(a1 + 32) = v12;
        v5 = v21;
      }

      v11 = sub_2764AD22C(a3, v12, v5);
    }

    else
    {
      if (v8 != 1 || v6 != 10)
      {
LABEL_13:
        if (v6)
        {
          v10 = (v6 & 7) == 4;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          *(a3 + 80) = v6 - 1;
          return v21;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v11 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_37;
      }

      *(a1 + 16) |= 1u;
      v16 = *(a1 + 24);
      if (!v16)
      {
        v17 = *(a1 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = sub_276447BB4(v17);
        *(a1 + 24) = v16;
        v5 = v21;
      }

      v11 = sub_2764AD15C(a3, v16, v5);
    }

LABEL_37:
    v21 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v21;
}

unsigned __int8 *sub_27643E568(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 20);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = sub_276443D98(v6, v8, this);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v12 = *(a1 + 32);
  *a2 = 18;
  v13 = *(v12 + 20);
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = a2 + 3;
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      a2[2] = v15;
      v14 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v13;
    v14 = a2 + 2;
  }

  a2 = sub_276443684(v12, v14, this);
  if ((v5 & 4) != 0)
  {
LABEL_25:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v18 = *(a1 + 40);
    *a2 = 26;
    v19 = *(v18 + 40);
    if (v19 > 0x7F)
    {
      a2[1] = v19 | 0x80;
      v21 = v19 >> 7;
      if (v19 >> 14)
      {
        v20 = a2 + 3;
        do
        {
          *(v20 - 1) = v21 | 0x80;
          v22 = v21 >> 7;
          ++v20;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
        *(v20 - 1) = v22;
      }

      else
      {
        a2[2] = v21;
        v20 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v19;
      v20 = a2 + 2;
    }

    a2 = sub_27643A454(v18, v20, this);
  }

LABEL_35:
  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
}