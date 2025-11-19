uint64_t sub_276423D08(uint64_t a1)
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
    v7 = sub_276400CD4(*(a1 + 48));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
  }

  v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
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
    v24 = sub_276400CD4(*(a1 + 56));
    v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_74;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v25 = sub_276400CD4(*(a1 + 64));
  v3 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_75;
  }

LABEL_74:
  v26 = sub_276400CD4(*(a1 + 72));
  v3 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_76;
  }

LABEL_75:
  v27 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 80));
  v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40) == 0)
  {
LABEL_15:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_76:
  v28 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 88));
  v3 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80) != 0)
  {
LABEL_16:
    v8 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 96));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_17:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_31;
  }

  if ((v2 & 0x100) != 0)
  {
    v29 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 104));
    v3 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x200) == 0)
    {
LABEL_20:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_80;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v30 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 112));
  v3 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) == 0)
  {
LABEL_21:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_22;
    }

LABEL_81:
    v32 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 128));
    v3 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_80:
  v31 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 120));
  v3 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800) != 0)
  {
    goto LABEL_81;
  }

LABEL_22:
  if ((v2 & 0x1000) != 0)
  {
LABEL_23:
    v9 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 136));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_24:
  v10 = v3 + 5;
  if ((v2 & 0x2000) == 0)
  {
    v10 = v3;
  }

  if ((v2 & 0x4000) != 0)
  {
    v10 += 5;
  }

  if ((v2 & 0x8000) != 0)
  {
    v3 = v10 + 5;
  }

  else
  {
    v3 = v10;
  }

LABEL_31:
  if ((v2 & 0xFF0000) != 0)
  {
    v11 = v3 + 5;
    if ((v2 & 0x10000) == 0)
    {
      v11 = v3;
    }

    if ((v2 & 0x20000) != 0)
    {
      v11 += 5;
    }

    if ((v2 & 0x40000) != 0)
    {
      v12 = *(a1 + 164);
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v12 >= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 11;
      }

      v11 += v14;
    }

    if ((v2 & 0x80000) != 0)
    {
      v15 = *(a1 + 168);
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v15 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 11;
      }

      v11 += v17;
    }

    if ((v2 & 0x100000) != 0)
    {
      v11 += 5;
    }

    if ((v2 & 0x200000) != 0)
    {
      v3 = v11 + 5;
    }

    else
    {
      v3 = v11;
    }

    if ((v2 & 0x400000) != 0)
    {
      v18 = *(a1 + 180);
      v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v18 >= 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 11;
      }

      v3 += v20;
    }

    if ((v2 & 0x800000) != 0)
    {
      v21 = *(a1 + 184);
      v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v21 >= 0)
      {
        v23 = v22;
      }

      else
      {
        v23 = 11;
      }

      v3 += v23;
    }
  }

  if (!HIBYTE(v2))
  {
    goto LABEL_111;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v3 += 6;
  }

  if ((v2 & 0x2000000) != 0)
  {
    v33 = *(a1 + 192);
    if (v33 < 0)
    {
      v34 = 12;
    }

    else
    {
      v34 = ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v34;
    if ((v2 & 0x4000000) == 0)
    {
LABEL_66:
      if ((v2 & 0x8000000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_91;
    }
  }

  else if ((v2 & 0x4000000) == 0)
  {
    goto LABEL_66;
  }

  v35 = *(a1 + 196);
  if (v35 < 0)
  {
    v36 = 12;
  }

  else
  {
    v36 = ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v36;
  if ((v2 & 0x8000000) == 0)
  {
LABEL_67:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_95;
  }

LABEL_91:
  v37 = *(a1 + 200);
  if (v37 < 0)
  {
    v38 = 12;
  }

  else
  {
    v38 = ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v38;
  if ((v2 & 0x10000000) == 0)
  {
LABEL_68:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_69;
    }

LABEL_99:
    v41 = *(a1 + 208);
    if (v41 < 0)
    {
      v42 = 12;
    }

    else
    {
      v42 = ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v42;
    if ((v2 & 0x40000000) == 0)
    {
LABEL_70:
      if ((v2 & 0x80000000) == 0)
      {
        goto LABEL_111;
      }

      goto LABEL_107;
    }

    goto LABEL_103;
  }

LABEL_95:
  v39 = *(a1 + 204);
  if (v39 < 0)
  {
    v40 = 12;
  }

  else
  {
    v40 = ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v40;
  if ((v2 & 0x20000000) != 0)
  {
    goto LABEL_99;
  }

LABEL_69:
  if ((v2 & 0x40000000) == 0)
  {
    goto LABEL_70;
  }

LABEL_103:
  v43 = *(a1 + 212);
  if (v43 < 0)
  {
    v44 = 12;
  }

  else
  {
    v44 = ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 += v44;
  if ((v2 & 0x80000000) != 0)
  {
LABEL_107:
    v45 = *(a1 + 216);
    if (v45 < 0)
    {
      v46 = 12;
    }

    else
    {
      v46 = ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v46;
  }

LABEL_111:
  v47 = *(a1 + 20);
  if (v47)
  {
    v48 = v3 + 3;
    if ((v47 & 1) == 0)
    {
      v48 = v3;
    }

    if ((v47 & 2) != 0)
    {
      v48 += 3;
    }

    if ((v47 & 4) != 0)
    {
      v48 += 3;
    }

    if ((v47 & 8) != 0)
    {
      v48 += 3;
    }

    if ((v47 & 0x10) != 0)
    {
      v48 += 3;
    }

    if ((v47 & 0x20) != 0)
    {
      v48 += 3;
    }

    if ((v47 & 0x40) != 0)
    {
      v48 += 3;
    }

    if ((v47 & 0x80) != 0)
    {
      v3 = v48 + 3;
    }

    else
    {
      v3 = v48;
    }
  }

  if ((v47 & 0xFF00) == 0)
  {
    goto LABEL_147;
  }

  v49 = v3 + 3;
  if ((v47 & 0x100) == 0)
  {
    v49 = v3;
  }

  if ((v47 & 0x200) != 0)
  {
    v49 += 3;
  }

  if ((v47 & 0x400) != 0)
  {
    v49 += 3;
  }

  if ((v47 & 0x800) != 0)
  {
    v3 = v49 + 3;
  }

  else
  {
    v3 = v49;
  }

  if ((v47 & 0x1000) == 0)
  {
    if ((v47 & 0x2000) == 0)
    {
      goto LABEL_141;
    }

LABEL_155:
    v58 = *(a1 + 236);
    v59 = ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v58 >= 0)
    {
      v60 = v59;
    }

    else
    {
      v60 = 12;
    }

    v3 += v60;
    if ((v47 & 0x4000) == 0)
    {
LABEL_142:
      if ((v47 & 0x8000) == 0)
      {
        goto LABEL_147;
      }

      goto LABEL_143;
    }

    goto LABEL_159;
  }

  v55 = *(a1 + 232);
  v56 = ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v55 >= 0)
  {
    v57 = v56;
  }

  else
  {
    v57 = 12;
  }

  v3 += v57;
  if ((v47 & 0x2000) != 0)
  {
    goto LABEL_155;
  }

LABEL_141:
  if ((v47 & 0x4000) == 0)
  {
    goto LABEL_142;
  }

LABEL_159:
  v61 = *(a1 + 240);
  v62 = ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v61 >= 0)
  {
    v63 = v62;
  }

  else
  {
    v63 = 12;
  }

  v3 += v63;
  if ((v47 & 0x8000) != 0)
  {
LABEL_143:
    v50 = *(a1 + 244);
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

LABEL_147:
  if ((v47 & 0xFF0000) != 0)
  {
    if ((v47 & 0x10000) != 0)
    {
      v53 = *(a1 + 248);
      if (v53 < 0)
      {
        v54 = 12;
      }

      else
      {
        v54 = ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v54;
    }

    if ((v47 & 0x20000) != 0)
    {
      v64 = *(a1 + 252);
      if (v64 < 0)
      {
        v65 = 12;
      }

      else
      {
        v65 = ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v65;
    }

    v66 = v3 + 6;
    if ((v47 & 0x40000) == 0)
    {
      v66 = v3;
    }

    if ((v47 & 0x80000) != 0)
    {
      v66 += 6;
    }

    if ((v47 & 0x100000) != 0)
    {
      v67 = *(a1 + 264);
      v68 = ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v67 >= 0)
      {
        v69 = v68;
      }

      else
      {
        v69 = 12;
      }

      v66 += v69;
    }

    if ((v47 & 0x200000) != 0)
    {
      v70 = *(a1 + 268);
      v71 = ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v70 >= 0)
      {
        v72 = v71;
      }

      else
      {
        v72 = 12;
      }

      v66 += v72;
    }

    if ((v47 & 0x400000) != 0)
    {
      v66 += 6;
    }

    if ((v47 & 0x800000) != 0)
    {
      v3 = v66 + 6;
    }

    else
    {
      v3 = v66;
    }
  }

  if (HIBYTE(v47))
  {
    v73 = v3 + 3;
    if ((v47 & 0x1000000) == 0)
    {
      v73 = v3;
    }

    if ((v47 & 0x2000000) != 0)
    {
      v74 = *(a1 + 284);
      v75 = ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v74 >= 0)
      {
        v76 = v75;
      }

      else
      {
        v76 = 12;
      }

      v73 += v76;
    }

    if ((v47 & 0x4000000) != 0)
    {
      v73 += 6;
    }

    if ((v47 & 0x8000000) != 0)
    {
      v77 = *(a1 + 292);
      v78 = ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v77 >= 0)
      {
        v79 = v78;
      }

      else
      {
        v79 = 12;
      }

      v73 += v79;
    }

    if ((v47 & 0x10000000) != 0)
    {
      v73 += 3;
    }

    if ((v47 & 0x20000000) != 0)
    {
      v73 += 3;
    }

    if ((v47 & 0x40000000) != 0)
    {
      v73 += 3;
    }

    if (v47 >= 0)
    {
      v3 = v73;
    }

    else
    {
      v3 = v73 + 3;
    }
  }

  v80 = *(a1 + 24);
  if (v80)
  {
    if (v80)
    {
      v81 = *(a1 + 300);
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

    v83 = v3 + 3;
    if ((v80 & 2) == 0)
    {
      v83 = v3;
    }

    if ((v80 & 4) != 0)
    {
      v83 += 3;
    }

    if ((v80 & 8) != 0)
    {
      v83 += 3;
    }

    if ((v80 & 0x10) != 0)
    {
      v83 += 3;
    }

    if ((v80 & 0x20) != 0)
    {
      v84 = *(a1 + 308);
      v85 = ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v84 >= 0)
      {
        v86 = v85;
      }

      else
      {
        v86 = 12;
      }

      v83 += v86;
    }

    if ((v80 & 0x40) != 0)
    {
      v83 += 3;
    }

    if ((v80 & 0x80) != 0)
    {
      v3 = v83 + 3;
    }

    else
    {
      v3 = v83;
    }
  }

  if ((v80 & 0xFF00) != 0)
  {
    v87 = v3 + 3;
    if ((v80 & 0x100) == 0)
    {
      v87 = v3;
    }

    if ((v80 & 0x200) != 0)
    {
      v87 += 3;
    }

    if ((v80 & 0x400) != 0)
    {
      v88 = *(a1 + 316);
      v89 = ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v88 >= 0)
      {
        v90 = v89;
      }

      else
      {
        v90 = 12;
      }

      v87 += v90;
    }

    if ((v80 & 0x800) != 0)
    {
      v87 += 3;
    }

    if ((v80 & 0x1000) != 0)
    {
      v87 += 3;
    }

    if ((v80 & 0x2000) != 0)
    {
      v87 += 3;
    }

    if ((v80 & 0x4000) != 0)
    {
      v3 = v87 + 3;
    }

    else
    {
      v3 = v87;
    }

    if ((v80 & 0x8000) != 0)
    {
      v91 = *(a1 + 324);
      v92 = ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v91 >= 0)
      {
        v93 = v92;
      }

      else
      {
        v93 = 12;
      }

      v3 += v93;
    }
  }

  if ((v80 & 0xFF0000) != 0)
  {
    if ((v80 & 0x10000) != 0)
    {
      v94 = *(a1 + 328);
      if (v94 < 0)
      {
        v95 = 12;
      }

      else
      {
        v95 = ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v95;
      if ((v80 & 0x20000) == 0)
      {
LABEL_265:
        if ((v80 & 0x40000) == 0)
        {
          goto LABEL_266;
        }

        goto LABEL_279;
      }
    }

    else if ((v80 & 0x20000) == 0)
    {
      goto LABEL_265;
    }

    v96 = *(a1 + 332);
    if (v96 < 0)
    {
      v97 = 12;
    }

    else
    {
      v97 = ((9 * (__clz(v96 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v97;
    if ((v80 & 0x40000) == 0)
    {
LABEL_266:
      if ((v80 & 0x80000) == 0)
      {
        goto LABEL_267;
      }

      goto LABEL_283;
    }

LABEL_279:
    v98 = *(a1 + 336);
    if (v98 < 0)
    {
      v99 = 12;
    }

    else
    {
      v99 = ((9 * (__clz(v98 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v99;
    if ((v80 & 0x80000) == 0)
    {
LABEL_267:
      if ((v80 & 0x100000) == 0)
      {
        goto LABEL_268;
      }

      goto LABEL_287;
    }

LABEL_283:
    v100 = *(a1 + 340);
    if (v100 < 0)
    {
      v101 = 12;
    }

    else
    {
      v101 = ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v101;
    if ((v80 & 0x100000) == 0)
    {
LABEL_268:
      if ((v80 & 0x200000) == 0)
      {
        goto LABEL_269;
      }

      goto LABEL_291;
    }

LABEL_287:
    v102 = *(a1 + 344);
    if (v102 < 0)
    {
      v103 = 12;
    }

    else
    {
      v103 = ((9 * (__clz(v102 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v103;
    if ((v80 & 0x200000) == 0)
    {
LABEL_269:
      if ((v80 & 0x400000) == 0)
      {
        goto LABEL_299;
      }

      goto LABEL_295;
    }

LABEL_291:
    v104 = *(a1 + 348);
    if (v104 < 0)
    {
      v105 = 12;
    }

    else
    {
      v105 = ((9 * (__clz(v104 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v105;
    if ((v80 & 0x400000) == 0)
    {
LABEL_299:
      if ((v80 & 0x800000) != 0)
      {
        v3 += 3;
      }

      goto LABEL_301;
    }

LABEL_295:
    v106 = *(a1 + 352);
    if (v106 < 0)
    {
      v107 = 12;
    }

    else
    {
      v107 = ((9 * (__clz(v106 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v107;
    goto LABEL_299;
  }

LABEL_301:
  if (HIBYTE(v80))
  {
    v108 = v3 + 3;
    if ((v80 & 0x1000000) == 0)
    {
      v108 = v3;
    }

    if ((v80 & 0x2000000) != 0)
    {
      v108 += 3;
    }

    if ((v80 & 0x4000000) != 0)
    {
      v108 += 3;
    }

    if ((v80 & 0x8000000) != 0)
    {
      v108 += 3;
    }

    if ((v80 & 0x10000000) != 0)
    {
      v108 += 3;
    }

    if ((v80 & 0x20000000) != 0)
    {
      v108 += 3;
    }

    if ((v80 & 0x40000000) != 0)
    {
      v108 += 3;
    }

    if (v80 >= 0)
    {
      v3 = v108;
    }

    else
    {
      v3 = v108 + 6;
    }
  }

  v109 = *(a1 + 28);
  if ((v109 & 3) != 0)
  {
    if (v109)
    {
      v110 = *(a1 + 368);
      if (v110 < 0)
      {
        v111 = 12;
      }

      else
      {
        v111 = ((9 * (__clz(v110 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v111;
    }

    if ((v109 & 2) != 0)
    {
      v112 = *(a1 + 372);
      if (v112 < 0)
      {
        v113 = 12;
      }

      else
      {
        v113 = ((9 * (__clz(v112 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v113;
    }
  }

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

uint64_t sub_276424A38(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885238C8, 0);
  if (v4)
  {

    return sub_276424AE0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276424AE0(uint64_t result, uint64_t a2)
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
    goto LABEL_71;
  }

  if (v5)
  {
    *(v3 + 16) |= 1u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
  }

  if ((v5 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    v6 = *(v3 + 48);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_276406A94(v7);
      *(v3 + 48) = v6;
    }

    if (*(a2 + 48))
    {
      v8 = *(a2 + 48);
    }

    else
    {
      v8 = &qword_2812F01D8;
    }

    result = sub_276400DA8(v6, v8);
    if ((v5 & 4) == 0)
    {
LABEL_8:
      if ((v5 & 8) == 0)
      {
        goto LABEL_9;
      }

LABEL_27:
      *(v3 + 16) |= 8u;
      v12 = *(v3 + 64);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = sub_276406A94(v13);
        *(v3 + 64) = v12;
      }

      if (*(a2 + 64))
      {
        v14 = *(a2 + 64);
      }

      else
      {
        v14 = &qword_2812F01D8;
      }

      result = sub_276400DA8(v12, v14);
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_35;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_8;
  }

  *(v3 + 16) |= 4u;
  v9 = *(v3 + 56);
  if (!v9)
  {
    v10 = *(v3 + 8);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = sub_276406A94(v10);
    *(v3 + 56) = v9;
  }

  if (*(a2 + 56))
  {
    v11 = *(a2 + 56);
  }

  else
  {
    v11 = &qword_2812F01D8;
  }

  result = sub_276400DA8(v9, v11);
  if ((v5 & 8) != 0)
  {
    goto LABEL_27;
  }

LABEL_9:
  if ((v5 & 0x10) != 0)
  {
LABEL_35:
    *(v3 + 16) |= 0x10u;
    v15 = *(v3 + 72);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = sub_276406A94(v16);
      *(v3 + 72) = v15;
    }

    if (*(a2 + 72))
    {
      v17 = *(a2 + 72);
    }

    else
    {
      v17 = &qword_2812F01D8;
    }

    result = sub_276400DA8(v15, v17);
  }

LABEL_43:
  v18 = MEMORY[0x277D80740];
  if ((v5 & 0x20) != 0)
  {
    *(v3 + 16) |= 0x20u;
    v19 = *(v3 + 80);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x277C97B00](v20);
      *(v3 + 80) = v19;
    }

    if (*(a2 + 80))
    {
      v21 = *(a2 + 80);
    }

    else
    {
      v21 = v18;
    }

    result = TSK::FormatStructArchive::MergeFrom(v19, v21);
    if ((v5 & 0x40) == 0)
    {
LABEL_45:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_63;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_45;
  }

  *(v3 + 16) |= 0x40u;
  v22 = *(v3 + 88);
  if (!v22)
  {
    v23 = *(v3 + 8);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v22 = MEMORY[0x277C97B00](v23);
    *(v3 + 88) = v22;
  }

  if (*(a2 + 88))
  {
    v24 = *(a2 + 88);
  }

  else
  {
    v24 = v18;
  }

  result = TSK::FormatStructArchive::MergeFrom(v22, v24);
  if ((v5 & 0x80) != 0)
  {
LABEL_63:
    *(v3 + 16) |= 0x80u;
    v25 = *(v3 + 96);
    if (!v25)
    {
      v26 = *(v3 + 8);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = MEMORY[0x277C97B00](v26);
      *(v3 + 96) = v25;
    }

    if (*(a2 + 96))
    {
      v27 = *(a2 + 96);
    }

    else
    {
      v27 = v18;
    }

    result = TSK::FormatStructArchive::MergeFrom(v25, v27);
  }

LABEL_71:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_82;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v31 = *(v3 + 104);
    if (!v31)
    {
      v32 = *(v3 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = MEMORY[0x277C97B00](v32);
      *(v3 + 104) = v31;
    }

    if (*(a2 + 104))
    {
      v33 = *(a2 + 104);
    }

    else
    {
      v33 = MEMORY[0x277D80740];
    }

    result = TSK::FormatStructArchive::MergeFrom(v31, v33);
    if ((v5 & 0x200) == 0)
    {
LABEL_74:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_212;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_74;
  }

  *(v3 + 16) |= 0x200u;
  v34 = *(v3 + 112);
  if (!v34)
  {
    v35 = *(v3 + 8);
    if (v35)
    {
      v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
    }

    v34 = MEMORY[0x277C97B00](v35);
    *(v3 + 112) = v34;
  }

  if (*(a2 + 112))
  {
    v36 = *(a2 + 112);
  }

  else
  {
    v36 = MEMORY[0x277D80740];
  }

  result = TSK::FormatStructArchive::MergeFrom(v34, v36);
  if ((v5 & 0x400) == 0)
  {
LABEL_75:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_220;
  }

LABEL_212:
  *(v3 + 16) |= 0x400u;
  v37 = *(v3 + 120);
  if (!v37)
  {
    v38 = *(v3 + 8);
    if (v38)
    {
      v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
    }

    v37 = MEMORY[0x277C97B00](v38);
    *(v3 + 120) = v37;
  }

  if (*(a2 + 120))
  {
    v39 = *(a2 + 120);
  }

  else
  {
    v39 = MEMORY[0x277D80740];
  }

  result = TSK::FormatStructArchive::MergeFrom(v37, v39);
  if ((v5 & 0x800) == 0)
  {
LABEL_76:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_228;
  }

LABEL_220:
  *(v3 + 16) |= 0x800u;
  v40 = *(v3 + 128);
  if (!v40)
  {
    v41 = *(v3 + 8);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    v40 = MEMORY[0x277C97B00](v41);
    *(v3 + 128) = v40;
  }

  if (*(a2 + 128))
  {
    v42 = *(a2 + 128);
  }

  else
  {
    v42 = MEMORY[0x277D80740];
  }

  result = TSK::FormatStructArchive::MergeFrom(v40, v42);
  if ((v5 & 0x1000) == 0)
  {
LABEL_77:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_236;
  }

LABEL_228:
  *(v3 + 16) |= 0x1000u;
  v43 = *(v3 + 136);
  if (!v43)
  {
    v44 = *(v3 + 8);
    if (v44)
    {
      v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
    }

    v43 = MEMORY[0x277C97B00](v44);
    *(v3 + 136) = v43;
  }

  if (*(a2 + 136))
  {
    v45 = *(a2 + 136);
  }

  else
  {
    v45 = MEMORY[0x277D80740];
  }

  result = TSK::FormatStructArchive::MergeFrom(v43, v45);
  if ((v5 & 0x2000) == 0)
  {
LABEL_78:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_79;
    }

LABEL_237:
    *(v3 + 148) = *(a2 + 148);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

LABEL_236:
  *(v3 + 144) = *(a2 + 144);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_237;
  }

LABEL_79:
  if ((v5 & 0x8000) != 0)
  {
LABEL_80:
    *(v3 + 152) = *(a2 + 152);
  }

LABEL_81:
  *(v3 + 16) |= v5;
LABEL_82:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_93;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 156) = *(a2 + 156);
    if ((v5 & 0x20000) == 0)
    {
LABEL_85:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_241;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_85;
  }

  *(v3 + 160) = *(a2 + 160);
  if ((v5 & 0x40000) == 0)
  {
LABEL_86:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_242;
  }

LABEL_241:
  *(v3 + 164) = *(a2 + 164);
  if ((v5 & 0x80000) == 0)
  {
LABEL_87:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_243;
  }

LABEL_242:
  *(v3 + 168) = *(a2 + 168);
  if ((v5 & 0x100000) == 0)
  {
LABEL_88:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_244;
  }

LABEL_243:
  *(v3 + 172) = *(a2 + 172);
  if ((v5 & 0x200000) == 0)
  {
LABEL_89:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_90;
    }

LABEL_245:
    *(v3 + 180) = *(a2 + 180);
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

LABEL_244:
  *(v3 + 176) = *(a2 + 176);
  if ((v5 & 0x400000) != 0)
  {
    goto LABEL_245;
  }

LABEL_90:
  if ((v5 & 0x800000) != 0)
  {
LABEL_91:
    *(v3 + 184) = *(a2 + 184);
  }

LABEL_92:
  *(v3 + 16) |= v5;
LABEL_93:
  if (!HIBYTE(v5))
  {
    goto LABEL_103;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 188) = *(a2 + 188);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_96:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_297;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_96;
  }

  *(v3 + 192) = *(a2 + 192);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_97:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_298;
  }

LABEL_297:
  *(v3 + 196) = *(a2 + 196);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_98:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_299;
  }

LABEL_298:
  *(v3 + 200) = *(a2 + 200);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_99:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_300;
  }

LABEL_299:
  *(v3 + 204) = *(a2 + 204);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_100:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_101;
    }

LABEL_301:
    *(v3 + 212) = *(a2 + 212);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_102;
    }

LABEL_302:
    *(v3 + 216) = *(a2 + 216);
    goto LABEL_102;
  }

LABEL_300:
  *(v3 + 208) = *(a2 + 208);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_301;
  }

LABEL_101:
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_302;
  }

LABEL_102:
  *(v3 + 16) |= v5;
LABEL_103:
  v28 = *(a2 + 20);
  if (!v28)
  {
    goto LABEL_114;
  }

  if (v28)
  {
    *(v3 + 220) = *(a2 + 220);
    if ((v28 & 2) == 0)
    {
LABEL_106:
      if ((v28 & 4) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_249;
    }
  }

  else if ((v28 & 2) == 0)
  {
    goto LABEL_106;
  }

  *(v3 + 221) = *(a2 + 221);
  if ((v28 & 4) == 0)
  {
LABEL_107:
    if ((v28 & 8) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_250;
  }

LABEL_249:
  *(v3 + 222) = *(a2 + 222);
  if ((v28 & 8) == 0)
  {
LABEL_108:
    if ((v28 & 0x10) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_251;
  }

LABEL_250:
  *(v3 + 223) = *(a2 + 223);
  if ((v28 & 0x10) == 0)
  {
LABEL_109:
    if ((v28 & 0x20) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_252;
  }

LABEL_251:
  *(v3 + 224) = *(a2 + 224);
  if ((v28 & 0x20) == 0)
  {
LABEL_110:
    if ((v28 & 0x40) == 0)
    {
      goto LABEL_111;
    }

LABEL_253:
    *(v3 + 226) = *(a2 + 226);
    if ((v28 & 0x80) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

LABEL_252:
  *(v3 + 225) = *(a2 + 225);
  if ((v28 & 0x40) != 0)
  {
    goto LABEL_253;
  }

LABEL_111:
  if ((v28 & 0x80) != 0)
  {
LABEL_112:
    *(v3 + 227) = *(a2 + 227);
  }

LABEL_113:
  *(v3 + 20) |= v28;
LABEL_114:
  if ((v28 & 0xFF00) == 0)
  {
    goto LABEL_125;
  }

  if ((v28 & 0x100) != 0)
  {
    *(v3 + 228) = *(a2 + 228);
    if ((v28 & 0x200) == 0)
    {
LABEL_117:
      if ((v28 & 0x400) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_257;
    }
  }

  else if ((v28 & 0x200) == 0)
  {
    goto LABEL_117;
  }

  *(v3 + 229) = *(a2 + 229);
  if ((v28 & 0x400) == 0)
  {
LABEL_118:
    if ((v28 & 0x800) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_258;
  }

LABEL_257:
  *(v3 + 230) = *(a2 + 230);
  if ((v28 & 0x800) == 0)
  {
LABEL_119:
    if ((v28 & 0x1000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_259;
  }

LABEL_258:
  *(v3 + 231) = *(a2 + 231);
  if ((v28 & 0x1000) == 0)
  {
LABEL_120:
    if ((v28 & 0x2000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_260;
  }

LABEL_259:
  *(v3 + 232) = *(a2 + 232);
  if ((v28 & 0x2000) == 0)
  {
LABEL_121:
    if ((v28 & 0x4000) == 0)
    {
      goto LABEL_122;
    }

LABEL_261:
    *(v3 + 240) = *(a2 + 240);
    if ((v28 & 0x8000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_123;
  }

LABEL_260:
  *(v3 + 236) = *(a2 + 236);
  if ((v28 & 0x4000) != 0)
  {
    goto LABEL_261;
  }

LABEL_122:
  if ((v28 & 0x8000) != 0)
  {
LABEL_123:
    *(v3 + 244) = *(a2 + 244);
  }

LABEL_124:
  *(v3 + 20) |= v28;
LABEL_125:
  if ((v28 & 0xFF0000) == 0)
  {
    goto LABEL_136;
  }

  if ((v28 & 0x10000) != 0)
  {
    *(v3 + 248) = *(a2 + 248);
    if ((v28 & 0x20000) == 0)
    {
LABEL_128:
      if ((v28 & 0x40000) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_265;
    }
  }

  else if ((v28 & 0x20000) == 0)
  {
    goto LABEL_128;
  }

  *(v3 + 252) = *(a2 + 252);
  if ((v28 & 0x40000) == 0)
  {
LABEL_129:
    if ((v28 & 0x80000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_266;
  }

LABEL_265:
  *(v3 + 256) = *(a2 + 256);
  if ((v28 & 0x80000) == 0)
  {
LABEL_130:
    if ((v28 & 0x100000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_267;
  }

LABEL_266:
  *(v3 + 260) = *(a2 + 260);
  if ((v28 & 0x100000) == 0)
  {
LABEL_131:
    if ((v28 & 0x200000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_268;
  }

LABEL_267:
  *(v3 + 264) = *(a2 + 264);
  if ((v28 & 0x200000) == 0)
  {
LABEL_132:
    if ((v28 & 0x400000) == 0)
    {
      goto LABEL_133;
    }

LABEL_269:
    *(v3 + 272) = *(a2 + 272);
    if ((v28 & 0x800000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_134;
  }

LABEL_268:
  *(v3 + 268) = *(a2 + 268);
  if ((v28 & 0x400000) != 0)
  {
    goto LABEL_269;
  }

LABEL_133:
  if ((v28 & 0x800000) != 0)
  {
LABEL_134:
    *(v3 + 276) = *(a2 + 276);
  }

LABEL_135:
  *(v3 + 20) |= v28;
LABEL_136:
  if (!HIBYTE(v28))
  {
    goto LABEL_146;
  }

  if ((v28 & 0x1000000) != 0)
  {
    *(v3 + 280) = *(a2 + 280);
    if ((v28 & 0x2000000) == 0)
    {
LABEL_139:
      if ((v28 & 0x4000000) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_305;
    }
  }

  else if ((v28 & 0x2000000) == 0)
  {
    goto LABEL_139;
  }

  *(v3 + 284) = *(a2 + 284);
  if ((v28 & 0x4000000) == 0)
  {
LABEL_140:
    if ((v28 & 0x8000000) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_306;
  }

LABEL_305:
  *(v3 + 288) = *(a2 + 288);
  if ((v28 & 0x8000000) == 0)
  {
LABEL_141:
    if ((v28 & 0x10000000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_307;
  }

LABEL_306:
  *(v3 + 292) = *(a2 + 292);
  if ((v28 & 0x10000000) == 0)
  {
LABEL_142:
    if ((v28 & 0x20000000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_308;
  }

LABEL_307:
  *(v3 + 296) = *(a2 + 296);
  if ((v28 & 0x20000000) == 0)
  {
LABEL_143:
    if ((v28 & 0x40000000) == 0)
    {
      goto LABEL_144;
    }

LABEL_309:
    *(v3 + 298) = *(a2 + 298);
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_145;
    }

LABEL_310:
    *(v3 + 299) = *(a2 + 299);
    goto LABEL_145;
  }

LABEL_308:
  *(v3 + 297) = *(a2 + 297);
  if ((v28 & 0x40000000) != 0)
  {
    goto LABEL_309;
  }

LABEL_144:
  if ((v28 & 0x80000000) != 0)
  {
    goto LABEL_310;
  }

LABEL_145:
  *(v3 + 20) |= v28;
LABEL_146:
  v29 = *(a2 + 24);
  if (!v29)
  {
    goto LABEL_157;
  }

  if (v29)
  {
    *(v3 + 300) = *(a2 + 300);
    if ((v29 & 2) == 0)
    {
LABEL_149:
      if ((v29 & 4) == 0)
      {
        goto LABEL_150;
      }

      goto LABEL_273;
    }
  }

  else if ((v29 & 2) == 0)
  {
    goto LABEL_149;
  }

  *(v3 + 304) = *(a2 + 304);
  if ((v29 & 4) == 0)
  {
LABEL_150:
    if ((v29 & 8) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_274;
  }

LABEL_273:
  *(v3 + 305) = *(a2 + 305);
  if ((v29 & 8) == 0)
  {
LABEL_151:
    if ((v29 & 0x10) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_275;
  }

LABEL_274:
  *(v3 + 306) = *(a2 + 306);
  if ((v29 & 0x10) == 0)
  {
LABEL_152:
    if ((v29 & 0x20) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_276;
  }

LABEL_275:
  *(v3 + 307) = *(a2 + 307);
  if ((v29 & 0x20) == 0)
  {
LABEL_153:
    if ((v29 & 0x40) == 0)
    {
      goto LABEL_154;
    }

LABEL_277:
    *(v3 + 312) = *(a2 + 312);
    if ((v29 & 0x80) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_155;
  }

LABEL_276:
  *(v3 + 308) = *(a2 + 308);
  if ((v29 & 0x40) != 0)
  {
    goto LABEL_277;
  }

LABEL_154:
  if ((v29 & 0x80) != 0)
  {
LABEL_155:
    *(v3 + 313) = *(a2 + 313);
  }

LABEL_156:
  *(v3 + 24) |= v29;
LABEL_157:
  if ((v29 & 0xFF00) == 0)
  {
    goto LABEL_168;
  }

  if ((v29 & 0x100) != 0)
  {
    *(v3 + 314) = *(a2 + 314);
    if ((v29 & 0x200) == 0)
    {
LABEL_160:
      if ((v29 & 0x400) == 0)
      {
        goto LABEL_161;
      }

      goto LABEL_281;
    }
  }

  else if ((v29 & 0x200) == 0)
  {
    goto LABEL_160;
  }

  *(v3 + 315) = *(a2 + 315);
  if ((v29 & 0x400) == 0)
  {
LABEL_161:
    if ((v29 & 0x800) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_282;
  }

LABEL_281:
  *(v3 + 316) = *(a2 + 316);
  if ((v29 & 0x800) == 0)
  {
LABEL_162:
    if ((v29 & 0x1000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_283;
  }

LABEL_282:
  *(v3 + 320) = *(a2 + 320);
  if ((v29 & 0x1000) == 0)
  {
LABEL_163:
    if ((v29 & 0x2000) == 0)
    {
      goto LABEL_164;
    }

    goto LABEL_284;
  }

LABEL_283:
  *(v3 + 321) = *(a2 + 321);
  if ((v29 & 0x2000) == 0)
  {
LABEL_164:
    if ((v29 & 0x4000) == 0)
    {
      goto LABEL_165;
    }

LABEL_285:
    *(v3 + 323) = *(a2 + 323);
    if ((v29 & 0x8000) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_166;
  }

LABEL_284:
  *(v3 + 322) = *(a2 + 322);
  if ((v29 & 0x4000) != 0)
  {
    goto LABEL_285;
  }

LABEL_165:
  if ((v29 & 0x8000) != 0)
  {
LABEL_166:
    *(v3 + 324) = *(a2 + 324);
  }

LABEL_167:
  *(v3 + 24) |= v29;
LABEL_168:
  if ((v29 & 0xFF0000) == 0)
  {
    goto LABEL_179;
  }

  if ((v29 & 0x10000) != 0)
  {
    *(v3 + 328) = *(a2 + 328);
    if ((v29 & 0x20000) == 0)
    {
LABEL_171:
      if ((v29 & 0x40000) == 0)
      {
        goto LABEL_172;
      }

      goto LABEL_289;
    }
  }

  else if ((v29 & 0x20000) == 0)
  {
    goto LABEL_171;
  }

  *(v3 + 332) = *(a2 + 332);
  if ((v29 & 0x40000) == 0)
  {
LABEL_172:
    if ((v29 & 0x80000) == 0)
    {
      goto LABEL_173;
    }

    goto LABEL_290;
  }

LABEL_289:
  *(v3 + 336) = *(a2 + 336);
  if ((v29 & 0x80000) == 0)
  {
LABEL_173:
    if ((v29 & 0x100000) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_291;
  }

LABEL_290:
  *(v3 + 340) = *(a2 + 340);
  if ((v29 & 0x100000) == 0)
  {
LABEL_174:
    if ((v29 & 0x200000) == 0)
    {
      goto LABEL_175;
    }

    goto LABEL_292;
  }

LABEL_291:
  *(v3 + 344) = *(a2 + 344);
  if ((v29 & 0x200000) == 0)
  {
LABEL_175:
    if ((v29 & 0x400000) == 0)
    {
      goto LABEL_176;
    }

LABEL_293:
    *(v3 + 352) = *(a2 + 352);
    if ((v29 & 0x800000) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_177;
  }

LABEL_292:
  *(v3 + 348) = *(a2 + 348);
  if ((v29 & 0x400000) != 0)
  {
    goto LABEL_293;
  }

LABEL_176:
  if ((v29 & 0x800000) != 0)
  {
LABEL_177:
    *(v3 + 356) = *(a2 + 356);
  }

LABEL_178:
  *(v3 + 24) |= v29;
LABEL_179:
  if (!HIBYTE(v29))
  {
    goto LABEL_189;
  }

  if ((v29 & 0x1000000) != 0)
  {
    *(v3 + 357) = *(a2 + 357);
    if ((v29 & 0x2000000) == 0)
    {
LABEL_182:
      if ((v29 & 0x4000000) == 0)
      {
        goto LABEL_183;
      }

      goto LABEL_313;
    }
  }

  else if ((v29 & 0x2000000) == 0)
  {
    goto LABEL_182;
  }

  *(v3 + 358) = *(a2 + 358);
  if ((v29 & 0x4000000) == 0)
  {
LABEL_183:
    if ((v29 & 0x8000000) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_314;
  }

LABEL_313:
  *(v3 + 359) = *(a2 + 359);
  if ((v29 & 0x8000000) == 0)
  {
LABEL_184:
    if ((v29 & 0x10000000) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_315;
  }

LABEL_314:
  *(v3 + 360) = *(a2 + 360);
  if ((v29 & 0x10000000) == 0)
  {
LABEL_185:
    if ((v29 & 0x20000000) == 0)
    {
      goto LABEL_186;
    }

    goto LABEL_316;
  }

LABEL_315:
  *(v3 + 361) = *(a2 + 361);
  if ((v29 & 0x20000000) == 0)
  {
LABEL_186:
    if ((v29 & 0x40000000) == 0)
    {
      goto LABEL_187;
    }

LABEL_317:
    *(v3 + 363) = *(a2 + 363);
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_188;
    }

LABEL_318:
    *(v3 + 364) = *(a2 + 364);
    goto LABEL_188;
  }

LABEL_316:
  *(v3 + 362) = *(a2 + 362);
  if ((v29 & 0x40000000) != 0)
  {
    goto LABEL_317;
  }

LABEL_187:
  if ((v29 & 0x80000000) != 0)
  {
    goto LABEL_318;
  }

LABEL_188:
  *(v3 + 24) |= v29;
LABEL_189:
  v30 = *(a2 + 28);
  if ((v30 & 3) != 0)
  {
    if (v30)
    {
      *(v3 + 368) = *(a2 + 368);
    }

    if ((v30 & 2) != 0)
    {
      *(v3 + 372) = *(a2 + 372);
    }

    *(v3 + 28) |= v30;
  }

  return result;
}

uint64_t *sub_276425540(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27641EC24(result);

    return sub_276424A38(v4, a2);
  }

  return result;
}

uint64_t sub_27642558C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x20) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 120));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 128));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000) == 0)
  {
    return 1;
  }

  result = TSK::FormatStructArchive::IsInitialized(*(a1 + 136));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_276425688(uint64_t *a1)
{
  if (a1 != &qword_2812F0C48)
  {
    if (a1[3])
    {
      v2 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v2, 0x10A1C4078DB9C03);
    }

    if (a1[4])
    {
      v3 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v3, 0x10A1C40C8B7F858);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_27642570C(uint64_t *a1)
{
  sub_276425688(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27642574C()
{
  if (atomic_load_explicit(dword_2812ED588, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812F0C48;
}

uint64_t *sub_27642578C(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = TSD::StrokeArchive::Clear(result[3]);
    }

    if ((v2 & 2) != 0)
    {
      result = TSD::ShadowArchive::Clear(v1[4]);
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

google::protobuf::internal *sub_276425808(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v32 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v32) & 1) == 0)
  {
    while (1)
    {
      v7 = (v32 + 1);
      v8 = *v32;
      if ((*v32 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v32, (v9 - 128));
      v32 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_54;
      }

      v7 = TagFallback;
      v8 = v27;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_37;
          }

          *(a1 + 16) |= 1u;
          v19 = *(a1 + 24);
          if (!v19)
          {
            v20 = *(a1 + 8);
            if (v20)
            {
              v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
            }

            v21 = MEMORY[0x277C97AA0](v20);
            LODWORD(v19) = v21;
            *(a1 + 24) = v21;
            v7 = v32;
          }

          v15 = sub_2764AC69C(a3, v19, v7);
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

            v14 = MEMORY[0x277C97A90](v13);
            LODWORD(v12) = v14;
            *(a1 + 32) = v14;
            v7 = v32;
          }

          v15 = sub_2764AC76C(a3, v12, v7);
        }

        else
        {
LABEL_37:
          if (v8)
          {
            v25 = (v8 & 7) == 4;
          }

          else
          {
            v25 = 1;
          }

          if (v25)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v15 = google::protobuf::internal::UnknownFieldParse();
        }

        v32 = v15;
        if (!v15)
        {
          goto LABEL_54;
        }

        goto LABEL_45;
      }

      if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_37;
        }

        v5 |= 4u;
        v23 = (v7 + 1);
        LODWORD(v22) = *v7;
        if ((v22 & 0x80) == 0)
        {
          goto LABEL_36;
        }

        v24 = *v23;
        v22 = (v22 + (v24 << 7) - 128);
        if ((v24 & 0x80000000) == 0)
        {
          v23 = (v7 + 2);
LABEL_36:
          v32 = v23;
          *(a1 + 40) = v22;
          goto LABEL_45;
        }

        v30 = google::protobuf::internal::VarintParseSlow64(v7, v22);
        v32 = v30;
        *(a1 + 40) = v31;
        if (!v30)
        {
LABEL_54:
          v32 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 4 || v8 != 32)
        {
          goto LABEL_37;
        }

        v5 |= 8u;
        v17 = (v7 + 1);
        LODWORD(v16) = *v7;
        if ((v16 & 0x80) == 0)
        {
          goto LABEL_25;
        }

        v18 = *v17;
        v16 = (v16 + (v18 << 7) - 128);
        if ((v18 & 0x80000000) == 0)
        {
          v17 = (v7 + 2);
LABEL_25:
          v32 = v17;
          *(a1 + 44) = v16;
          goto LABEL_45;
        }

        v28 = google::protobuf::internal::VarintParseSlow64(v7, v16);
        v32 = v28;
        *(a1 + 44) = v29;
        if (!v28)
        {
          goto LABEL_54;
        }
      }

LABEL_45:
      if (sub_2763D4D98(a3, &v32))
      {
        goto LABEL_2;
      }
    }

    v7 = (v32 + 2);
LABEL_6:
    v32 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v32;
}

unsigned __int8 *sub_276425AA0(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 24);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v11 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v11 | 0x80;
          v14 = v11 >> 7;
          ++v9;
          v15 = v11 >> 14;
          v11 >>= 7;
        }

        while (v15);
        *(v9 - 1) = v14;
      }

      else
      {
        a2[2] = v11;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v7, v9, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(a1 + 32);
  *a2 = 18;
  v17 = *(v16 + 5);
  if (v17 > 0x7F)
  {
    a2[1] = v17 | 0x80;
    v19 = v17 >> 7;
    if (v17 >> 14)
    {
      v18 = a2 + 3;
      do
      {
        *(v18 - 1) = v19 | 0x80;
        v20 = v19 >> 7;
        ++v18;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
      *(v18 - 1) = v20;
    }

    else
    {
      a2[2] = v19;
      v18 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v17;
    v18 = a2 + 2;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v16, v18, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_5;
  }

LABEL_34:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(a1 + 40);
  *a2 = 24;
  if (v22 > 0x7F)
  {
    a2[1] = v22 | 0x80;
    v23 = v22 >> 7;
    if (v22 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v23 | 0x80;
        v24 = v23 >> 7;
        ++a2;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
      *(a2 - 1) = v24;
      if ((v5 & 8) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      a2[2] = v23;
      a2 += 3;
      if ((v5 & 8) == 0)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    a2[1] = v22;
    a2 += 2;
    if ((v5 & 8) == 0)
    {
      goto LABEL_45;
    }
  }

LABEL_5:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(a1 + 44);
  *a2 = 32;
  if (v6 > 0x7F)
  {
    a2[1] = v6 | 0x80;
    v10 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v10 | 0x80;
        v12 = v10 >> 7;
        ++a2;
        v13 = v10 >> 14;
        v10 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
    }

    else
    {
      a2[2] = v10;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
  }

LABEL_45:
  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v26 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276425D50(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if (v2)
  {
    v4 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 24));
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
    v5 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = *(a1 + 40);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v7;
    if ((v2 & 8) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if ((v2 & 8) != 0)
  {
LABEL_15:
    v8 = *(a1 + 44);
    if (v8 < 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v9;
  }

LABEL_19:
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

uint64_t sub_276425EA0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885238E0, 0);
  if (v4)
  {

    return sub_276425F48(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276425F48(uint64_t result, uint64_t a2)
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

        v6 = MEMORY[0x277C97AA0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D804A0];
      }

      result = TSD::StrokeArchive::MergeFrom(v6, v8);
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

      v9 = MEMORY[0x277C97A90](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v11 = *(a2 + 32);
    }

    else
    {
      v11 = MEMORY[0x277D80498];
    }

    result = TSD::ShadowArchive::MergeFrom(v9, v11);
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

uint64_t *sub_276426064(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27642578C(result);

    return sub_276425EA0(v4, a2);
  }

  return result;
}

uint64_t sub_2764260B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = TSD::ShadowArchive::IsInitialized(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_276426134(void *a1, uint64_t a2)
{
  *a1 = &unk_288523410;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812ED568, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[3] = MEMORY[0x277D80A90];
  a1[4] = 0;
  *(a1 + 39) = 0;
  return a1;
}

void *sub_2764261A8(void *a1)
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

  if (a1 != qword_2812F0C78)
  {
    v3 = a1[4];
    if (v3)
    {
      v4 = sub_276400574(v3);
      MEMORY[0x277C98580](v4, 0x1081C404FE48876);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276426248(void *a1)
{
  sub_2764261A8(a1);

  JUMPOUT(0x277C98580);
}

void *sub_276426288()
{
  if (atomic_load_explicit(dword_2812ED568, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812F0C78;
}

uint64_t *sub_2764262C8(uint64_t *result)
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
      result = sub_2764005FC(result[4]);
    }
  }

LABEL_7:
  if ((v2 & 0x3C) != 0)
  {
    *(v1 + 43) = 0;
    *(v1 + 10) = 0;
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

google::protobuf::internal *sub_27642636C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v38 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v38) & 1) == 0)
  {
    while (1)
    {
      v7 = (v38 + 1);
      v8 = *v38;
      if ((*v38 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v38, (v9 - 128));
      v38 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_66;
      }

      v7 = TagFallback;
      v8 = v29;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v10 != 4)
        {
          if (v10 == 5)
          {
            if (v8 == 42)
            {
              *(a1 + 16) |= 1u;
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v17 = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_52;
            }
          }

          else if (v10 == 6 && v8 == 50)
          {
            *(a1 + 16) |= 2u;
            v15 = *(a1 + 32);
            if (!v15)
            {
              v16 = *(a1 + 8);
              if (v16)
              {
                v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
              }

              v15 = sub_276406A24(v16);
              *(a1 + 32) = v15;
              v7 = v38;
            }

            v17 = sub_2764A8C38(a3, v15, v7);
            goto LABEL_52;
          }

LABEL_45:
          if (v8)
          {
            v27 = (v8 & 7) == 4;
          }

          else
          {
            v27 = 1;
          }

          if (v27)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v17 = google::protobuf::internal::UnknownFieldParse();
LABEL_52:
          v38 = v17;
          if (!v17)
          {
            goto LABEL_66;
          }

          goto LABEL_53;
        }

        if (v8 != 32)
        {
          goto LABEL_45;
        }

        v5 |= 0x20u;
        v22 = (v7 + 1);
        v21 = *v7;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_37;
        }

        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if ((v23 & 0x80000000) == 0)
        {
          v22 = (v7 + 2);
LABEL_37:
          v38 = v22;
          *(a1 + 46) = v21 != 0;
          goto LABEL_53;
        }

        v32 = google::protobuf::internal::VarintParseSlow64(v7, v21);
        v38 = v32;
        *(a1 + 46) = v33 != 0;
        if (!v32)
        {
          goto LABEL_66;
        }
      }

      else if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_45;
        }

        v5 |= 4u;
        v19 = (v7 + 1);
        LODWORD(v18) = *v7;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_32;
        }

        v20 = *v19;
        v18 = (v18 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_32:
          v38 = v19;
          *(a1 + 40) = v18;
          goto LABEL_53;
        }

        v30 = google::protobuf::internal::VarintParseSlow64(v7, v18);
        v38 = v30;
        *(a1 + 40) = v31;
        if (!v30)
        {
          goto LABEL_66;
        }
      }

      else if (v10 == 2)
      {
        if (v8 != 16)
        {
          goto LABEL_45;
        }

        v5 |= 0x10u;
        v25 = (v7 + 1);
        v24 = *v7;
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_42;
        }

        v26 = *v25;
        v24 = (v26 << 7) + v24 - 128;
        if ((v26 & 0x80000000) == 0)
        {
          v25 = (v7 + 2);
LABEL_42:
          v38 = v25;
          *(a1 + 45) = v24 != 0;
          goto LABEL_53;
        }

        v36 = google::protobuf::internal::VarintParseSlow64(v7, v24);
        v38 = v36;
        *(a1 + 45) = v37 != 0;
        if (!v36)
        {
LABEL_66:
          v38 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_45;
        }

        v5 |= 8u;
        v13 = (v7 + 1);
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_18:
          v38 = v13;
          *(a1 + 44) = v12 != 0;
          goto LABEL_53;
        }

        v34 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v38 = v34;
        *(a1 + 44) = v35 != 0;
        if (!v34)
        {
          goto LABEL_66;
        }
      }

LABEL_53:
      if (sub_2763D4D98(a3, &v38))
      {
        goto LABEL_2;
      }
    }

    v7 = (v38 + 2);
LABEL_6:
    v38 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v38;
}

unsigned __int8 *sub_2764266F4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*this <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v7 = *(a1 + 40);
    *v4 = 8;
    if (v7 > 0x7F)
    {
      v4[1] = v7 | 0x80;
      v8 = v7 >> 7;
      if (v7 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v4;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v4 - 1) = v9;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v4[2] = v8;
        v4 += 3;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v4[1] = v7;
      v4 += 2;
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_3:
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  if ((v6 & 0x10) == 0)
  {
    goto LABEL_3;
  }

LABEL_19:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v11 = *(a1 + 45);
  *v4 = 16;
  v4[1] = v11;
  v4 += 2;
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_22:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v12 = *(a1 + 44);
  *v4 = 24;
  v4[1] = v12;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_25:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v13 = *(a1 + 46);
  *v4 = 32;
  v4[1] = v13;
  v4 += 2;
  if ((v6 & 1) == 0)
  {
LABEL_6:
    if ((v6 & 2) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

LABEL_28:
  v4 = sub_2763DD938(this, 5, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
    goto LABEL_39;
  }

LABEL_29:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v14 = *(a1 + 32);
  *v4 = 50;
  v15 = *(v14 + 20);
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

  v4 = sub_27640074C(v14, v16, this);
LABEL_39:
  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276426968(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x3F) == 0)
  {
    v4 = 0;
    goto LABEL_16;
  }

  if (v2)
  {
    v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  v8 = sub_2764007DC(*(a1 + 32));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_10:
  if ((v2 & 4) != 0)
  {
    v9 = *(a1 + 40);
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

  v4 = v3 + ((v2 >> 3) & 2) + ((v2 >> 2) & 2) + ((v2 >> 4) & 2);
LABEL_16:
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

void sub_276426AB0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885238F8, 0);
  if (v4)
  {

    sub_276426B58(a1, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

void sub_276426B58(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2763D4F88((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0x3F) != 0)
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

        goto LABEL_22;
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

      goto LABEL_23;
    }

LABEL_22:
    *(a1 + 40) = *(a2 + 40);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }

LABEL_23:
    *(a1 + 44) = *(a2 + 44);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
LABEL_11:
        *(a1 + 16) |= v5;
        return;
      }

LABEL_10:
      *(a1 + 46) = *(a2 + 46);
      goto LABEL_11;
    }

LABEL_24:
    *(a1 + 45) = *(a2 + 45);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }
}

void sub_276426C7C(uint64_t *a1, uint64_t *a2)
{
  if (a2 != a1)
  {
    sub_2764262C8(a1);

    sub_276426AB0(a1, a2);
  }
}

uint64_t sub_276426D08(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885234C0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (atomic_load_explicit(dword_2812ED360, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 32) = MEMORY[0x277D80A90];
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  return a1;
}

uint64_t *sub_276426DB4(uint64_t *a1)
{
  sub_276426DE8(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

TSP::Color *sub_276426DE8(TSP::Color *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812F0CA8)
  {
    if (*(v1 + 5))
    {
      v3 = sub_27643EBB8();
      MEMORY[0x277C98580](v3, 0x10A1C4000E43543);
    }

    v4 = *(v1 + 6);
    if (v4)
    {
      v5 = sub_276446C88(v4);
      MEMORY[0x277C98580](v5, 0x1081C40825B58B5);
    }

    v6 = *(v1 + 7);
    if (v6)
    {
      v7 = sub_276446C88(v6);
      MEMORY[0x277C98580](v7, 0x1081C40825B58B5);
    }

    v8 = *(v1 + 8);
    if (v8)
    {
      v9 = sub_276446C88(v8);
      MEMORY[0x277C98580](v9, 0x1081C40825B58B5);
    }

    if (*(v1 + 9))
    {
      v10 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v10, 0x10A1C4042C41316);
    }

    if (*(v1 + 10))
    {
      v11 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v11, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 11))
    {
      v12 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v12, 0x10A1C40C8B7F858);
    }

    if (*(v1 + 12))
    {
      v13 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v13, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 13))
    {
      v14 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v14, 0x10A1C4042C41316);
    }

    if (*(v1 + 14))
    {
      v15 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v15, 0x10A1C4029F168B5);
    }

    if (*(v1 + 15))
    {
      v16 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v16, 0x10A1C4029F168B5);
    }

    if (*(v1 + 16))
    {
      v17 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v17, 0x10A1C4029F168B5);
    }

    result = *(v1 + 17);
    if (result)
    {
      TSP::Color::~Color(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_276426FE4(uint64_t *a1)
{
  sub_276426DB4(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276427024(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    v6 = result[4] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_43;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_43:
  result = sub_27643EBFC(result[5]);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = sub_27643B6DC(v1[6]);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = sub_27643B6DC(v1[7]);
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_47:
    result = TSD::FillArchive::Clear(v1[9]);
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_46:
  result = sub_27643B6DC(v1[8]);
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_47;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_48:
  result = TSD::StrokeArchive::Clear(v1[10]);
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = TSD::ShadowArchive::Clear(v1[11]);
  }

LABEL_11:
  if ((v2 & 0x3F00) == 0)
  {
    goto LABEL_19;
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSD::StrokeArchive::Clear(v1[12]);
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_38;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = TSD::FillArchive::Clear(v1[13]);
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = TSK::FormatStructArchive::Clear(v1[14]);
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = TSK::FormatStructArchive::Clear(v1[15]);
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_40:
  result = TSK::FormatStructArchive::Clear(v1[16]);
  if ((v2 & 0x2000) != 0)
  {
LABEL_18:
    result = TSP::Color::Clear(v1[17]);
  }

LABEL_19:
  if ((v2 & 0xC000) != 0)
  {
    v1[18] = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    v1[19] = 0;
    v1[20] = 0;
    *(v1 + 42) = 0;
  }

  if (HIBYTE(v2))
  {
    *(v1 + 188) = 0u;
    *(v1 + 172) = 0u;
  }

  v3 = *(v1 + 5);
  if (v3)
  {
    *(v1 + 210) = 0;
    *(v1 + 204) = 0;
  }

  if ((v3 & 0x7F00) != 0)
  {
    *(v1 + 226) = 0;
    *(v1 + 218) = 0;
    v1[29] = 0;
  }

  v5 = *(v1 + 8);
  v4 = v1 + 1;
  v4[1] = 0;
  if (v5)
  {

    return sub_2763D4FD4(v4);
  }

  return result;
}

google::protobuf::internal *sub_2764271E0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v160 = a2;
  if ((sub_2763D4D98(a3, &v160) & 1) == 0)
  {
    while (1)
    {
      v6 = (v160 + 1);
      v7 = *v160;
      if (*v160 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v160, (v8 - 128));
          v160 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          v7 = v13;
          goto LABEL_7;
        }

        v6 = (v160 + 2);
      }

      v160 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 8)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x4000u;
          v10 = (v6 + 1);
          LODWORD(v9) = *v6;
          if ((v9 & 0x80) == 0)
          {
            goto LABEL_12;
          }

          v11 = *v10;
          v9 = (v9 + (v11 << 7) - 128);
          if ((v11 & 0x80000000) == 0)
          {
            v10 = (v6 + 2);
LABEL_12:
            v160 = v10;
            *(a1 + 144) = v9;
            goto LABEL_226;
          }

          v132 = google::protobuf::internal::VarintParseSlow64(v6, v9);
          v160 = v132;
          *(a1 + 144) = v133;
          if (!v132)
          {
            return 0;
          }

          goto LABEL_226;
        case 2u:
          if (v7 != 16)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x20000u;
          v63 = (v6 + 1);
          v62 = *v6;
          if ((v62 & 0x8000000000000000) == 0)
          {
            goto LABEL_106;
          }

          v64 = *v63;
          v62 = (v64 << 7) + v62 - 128;
          if (v64 < 0)
          {
            v134 = google::protobuf::internal::VarintParseSlow64(v6, v62);
            v160 = v134;
            *(a1 + 156) = v135 != 0;
            if (!v134)
            {
              return 0;
            }
          }

          else
          {
            v63 = (v6 + 2);
LABEL_106:
            v160 = v63;
            *(a1 + 156) = v62 != 0;
          }

          goto LABEL_226;
        case 3u:
          if (v7 != 29)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x8000u;
          v55 = *v6;
          v25 = (v6 + 4);
          *(a1 + 148) = v55;
          goto LABEL_200;
        case 4u:
          if (v7 != 37)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x10000u;
          v59 = *v6;
          v25 = (v6 + 4);
          *(a1 + 152) = v59;
          goto LABEL_200;
        case 5u:
          if (v7 != 42)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 2u;
          v44 = *(a1 + 40);
          if (!v44)
          {
            v45 = *(a1 + 8);
            if (v45)
            {
              v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
            }

            v44 = sub_276447688(v45);
            *(a1 + 40) = v44;
            v6 = v160;
          }

          v36 = sub_2764A89C8(a3, v44, v6);
          goto LABEL_225;
        case 6u:
          if (v7 != 50)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 4u;
          v60 = *(a1 + 48);
          if (v60)
          {
            goto LABEL_144;
          }

          v73 = *(a1 + 8);
          if (v73)
          {
            v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
          }

          v60 = sub_276447FD4(v73);
          *(a1 + 48) = v60;
          goto LABEL_143;
        case 7u:
          if (v7 != 58)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 8u;
          v60 = *(a1 + 56);
          if (v60)
          {
            goto LABEL_144;
          }

          v79 = *(a1 + 8);
          if (v79)
          {
            v79 = *(v79 & 0xFFFFFFFFFFFFFFFELL);
          }

          v60 = sub_276447FD4(v79);
          *(a1 + 56) = v60;
          goto LABEL_143;
        case 8u:
          if (v7 != 66)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x10u;
          v60 = *(a1 + 64);
          if (v60)
          {
            goto LABEL_144;
          }

          v61 = *(a1 + 8);
          if (v61)
          {
            v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
          }

          v60 = sub_276447FD4(v61);
          *(a1 + 64) = v60;
LABEL_143:
          v6 = v160;
LABEL_144:
          v36 = sub_2764A8A98(a3, v60, v6);
          goto LABEL_225;
        case 9u:
          if (v7 != 72)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x40000u;
          v86 = (v6 + 1);
          v85 = *v6;
          if ((v85 & 0x8000000000000000) == 0)
          {
            goto LABEL_161;
          }

          v87 = *v86;
          v85 = (v87 << 7) + v85 - 128;
          if (v87 < 0)
          {
            v142 = google::protobuf::internal::VarintParseSlow64(v6, v85);
            v160 = v142;
            *(a1 + 157) = v143 != 0;
            if (!v142)
            {
              return 0;
            }
          }

          else
          {
            v86 = (v6 + 2);
LABEL_161:
            v160 = v86;
            *(a1 + 157) = v85 != 0;
          }

          goto LABEL_226;
        case 0xAu:
          if (v7 != 82)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x20u;
          v50 = *(a1 + 72);
          if (v50)
          {
            goto LABEL_132;
          }

          v51 = *(a1 + 8);
          if (v51)
          {
            v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
          }

          v52 = MEMORY[0x277C97A80](v51);
          LODWORD(v50) = v52;
          *(a1 + 72) = v52;
          goto LABEL_131;
        case 0xBu:
          if (v7 != 90)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x40u;
          v76 = *(a1 + 80);
          if (v76)
          {
            goto LABEL_156;
          }

          v83 = *(a1 + 8);
          if (v83)
          {
            v83 = *(v83 & 0xFFFFFFFFFFFFFFFELL);
          }

          v84 = MEMORY[0x277C97AA0](v83);
          LODWORD(v76) = v84;
          *(a1 + 80) = v84;
          goto LABEL_155;
        case 0xCu:
          if (v7 != 101)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x200000u;
          v43 = *v6;
          v25 = (v6 + 4);
          *(a1 + 160) = v43;
          goto LABEL_200;
        case 0xDu:
          if (v7 != 106)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x80u;
          v47 = *(a1 + 88);
          if (!v47)
          {
            v48 = *(a1 + 8);
            if (v48)
            {
              v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
            }

            v49 = MEMORY[0x277C97A90](v48);
            LODWORD(v47) = v49;
            *(a1 + 88) = v49;
            v6 = v160;
          }

          v36 = sub_2764AC76C(a3, v47, v6);
          goto LABEL_225;
        case 0xEu:
          if (v7 != 114)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x100u;
          v76 = *(a1 + 96);
          if (v76)
          {
            goto LABEL_156;
          }

          v77 = *(a1 + 8);
          if (v77)
          {
            v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
          }

          v78 = MEMORY[0x277C97AA0](v77);
          LODWORD(v76) = v78;
          *(a1 + 96) = v78;
LABEL_155:
          v6 = v160;
LABEL_156:
          v36 = sub_2764AC69C(a3, v76, v6);
          goto LABEL_225;
        case 0xFu:
          if (v7 != 120)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x400000u;
          v38 = (v6 + 1);
          LODWORD(v37) = *v6;
          if ((v37 & 0x80) == 0)
          {
            goto LABEL_57;
          }

          v39 = *v38;
          v37 = (v37 + (v39 << 7) - 128);
          if (v39 < 0)
          {
            v126 = google::protobuf::internal::VarintParseSlow64(v6, v37);
            v160 = v126;
            *(a1 + 164) = v127;
            if (!v126)
            {
              return 0;
            }
          }

          else
          {
            v38 = (v6 + 2);
LABEL_57:
            v160 = v38;
            *(a1 + 164) = v37;
          }

          goto LABEL_226;
        case 0x10u:
          if (v7 != 128)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x80000u;
          v57 = (v6 + 1);
          v56 = *v6;
          if ((v56 & 0x8000000000000000) == 0)
          {
            goto LABEL_94;
          }

          v58 = *v57;
          v56 = (v58 << 7) + v56 - 128;
          if (v58 < 0)
          {
            v130 = google::protobuf::internal::VarintParseSlow64(v6, v56);
            v160 = v130;
            *(a1 + 158) = v131 != 0;
            if (!v130)
            {
              return 0;
            }
          }

          else
          {
            v57 = (v6 + 2);
LABEL_94:
            v160 = v57;
            *(a1 + 158) = v56 != 0;
          }

          goto LABEL_226;
        case 0x11u:
          if (v7 != 136)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x100000u;
          v31 = (v6 + 1);
          v30 = *v6;
          if ((v30 & 0x8000000000000000) == 0)
          {
            goto LABEL_46;
          }

          v32 = *v31;
          v30 = (v32 << 7) + v30 - 128;
          if (v32 < 0)
          {
            v124 = google::protobuf::internal::VarintParseSlow64(v6, v30);
            v160 = v124;
            *(a1 + 159) = v125 != 0;
            if (!v124)
            {
              return 0;
            }
          }

          else
          {
            v31 = (v6 + 2);
LABEL_46:
            v160 = v31;
            *(a1 + 159) = v30 != 0;
          }

          goto LABEL_226;
        case 0x12u:
          if (v7 != 149)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x800000u;
          v66 = *v6;
          v25 = (v6 + 4);
          *(a1 + 168) = v66;
          goto LABEL_200;
        case 0x13u:
          if (v7 != 152)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x1000000u;
          v81 = (v6 + 1);
          LODWORD(v80) = *v6;
          if ((v80 & 0x80) == 0)
          {
            goto LABEL_149;
          }

          v82 = *v81;
          v80 = (v80 + (v82 << 7) - 128);
          if (v82 < 0)
          {
            v140 = google::protobuf::internal::VarintParseSlow64(v6, v80);
            v160 = v140;
            *(a1 + 172) = v141;
            if (!v140)
            {
              return 0;
            }
          }

          else
          {
            v81 = (v6 + 2);
LABEL_149:
            v160 = v81;
            *(a1 + 172) = v80;
          }

          goto LABEL_226;
        case 0x14u:
          if (v7 != 160)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x2000000u;
          v99 = (v6 + 1);
          LODWORD(v98) = *v6;
          if ((v98 & 0x80) == 0)
          {
            goto LABEL_185;
          }

          v100 = *v99;
          v98 = (v98 + (v100 << 7) - 128);
          if (v100 < 0)
          {
            v150 = google::protobuf::internal::VarintParseSlow64(v6, v98);
            v160 = v150;
            *(a1 + 176) = v151;
            if (!v150)
            {
              return 0;
            }
          }

          else
          {
            v99 = (v6 + 2);
LABEL_185:
            v160 = v99;
            *(a1 + 176) = v98;
          }

          goto LABEL_226;
        case 0x15u:
          if (v7 != 168)
          {
            goto LABEL_218;
          }

          *(a1 + 20) |= 1u;
          v71 = (v6 + 1);
          v70 = *v6;
          if ((v70 & 0x8000000000000000) == 0)
          {
            goto LABEL_120;
          }

          v72 = *v71;
          v70 = (v72 << 7) + v70 - 128;
          if (v72 < 0)
          {
            v138 = google::protobuf::internal::VarintParseSlow64(v6, v70);
            v160 = v138;
            *(a1 + 204) = v139 != 0;
            if (!v138)
            {
              return 0;
            }
          }

          else
          {
            v71 = (v6 + 2);
LABEL_120:
            v160 = v71;
            *(a1 + 204) = v70 != 0;
          }

          goto LABEL_226;
        case 0x16u:
          if (v7 != 178)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x200u;
          v50 = *(a1 + 104);
          if (v50)
          {
            goto LABEL_132;
          }

          v74 = *(a1 + 8);
          if (v74)
          {
            v74 = *(v74 & 0xFFFFFFFFFFFFFFFELL);
          }

          v75 = MEMORY[0x277C97A80](v74);
          LODWORD(v50) = v75;
          *(a1 + 104) = v75;
LABEL_131:
          v6 = v160;
LABEL_132:
          v36 = sub_2764AC00C(a3, v50, v6);
          goto LABEL_225;
        case 0x17u:
          if (v7 != 189)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x4000000u;
          v94 = *v6;
          v25 = (v6 + 4);
          *(a1 + 180) = v94;
          goto LABEL_200;
        case 0x18u:
          if (v7 != 197)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x8000000u;
          v104 = *v6;
          v25 = (v6 + 4);
          *(a1 + 184) = v104;
          goto LABEL_200;
        case 0x19u:
          if (v7 != 205)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x10000000u;
          v54 = *v6;
          v25 = (v6 + 4);
          *(a1 + 188) = v54;
          goto LABEL_200;
        case 0x1Au:
          if (v7 != 213)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x20000000u;
          v53 = *v6;
          v25 = (v6 + 4);
          *(a1 + 192) = v53;
          goto LABEL_200;
        case 0x1Bu:
          if (v7 != 216)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x40000000u;
          v112 = (v6 + 1);
          LODWORD(v111) = *v6;
          if ((v111 & 0x80) == 0)
          {
            goto LABEL_212;
          }

          v113 = *v112;
          v111 = (v111 + (v113 << 7) - 128);
          if (v113 < 0)
          {
            v156 = google::protobuf::internal::VarintParseSlow64(v6, v111);
            v160 = v156;
            *(a1 + 196) = v157;
            if (!v156)
            {
              return 0;
            }
          }

          else
          {
            v112 = (v6 + 2);
LABEL_212:
            v160 = v112;
            *(a1 + 196) = v111;
          }

          goto LABEL_226;
        case 0x1Cu:
          if (v7 != 229)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x80000000;
          v26 = *v6;
          v25 = (v6 + 4);
          *(a1 + 200) = v26;
          goto LABEL_200;
        case 0x1Du:
          if (v7 != 232)
          {
            goto LABEL_218;
          }

          *(a1 + 20) |= 2u;
          v106 = (v6 + 1);
          v105 = *v6;
          if ((v105 & 0x8000000000000000) == 0)
          {
            goto LABEL_197;
          }

          v107 = *v106;
          v105 = (v107 << 7) + v105 - 128;
          if (v107 < 0)
          {
            v154 = google::protobuf::internal::VarintParseSlow64(v6, v105);
            v160 = v154;
            *(a1 + 205) = v155 != 0;
            if (!v154)
            {
              return 0;
            }
          }

          else
          {
            v106 = (v6 + 2);
LABEL_197:
            v160 = v106;
            *(a1 + 205) = v105 != 0;
          }

          goto LABEL_226;
        case 0x1Eu:
          if (v7 != 245)
          {
            goto LABEL_218;
          }

          *(a1 + 20) |= 0x10u;
          v108 = *v6;
          v25 = (v6 + 4);
          *(a1 + 208) = v108;
          goto LABEL_200;
        case 0x1Fu:
          if (v7 != 248)
          {
            goto LABEL_218;
          }

          *(a1 + 20) |= 4u;
          v89 = (v6 + 1);
          v88 = *v6;
          if ((v88 & 0x8000000000000000) == 0)
          {
            goto LABEL_166;
          }

          v90 = *v89;
          v88 = (v90 << 7) + v88 - 128;
          if (v90 < 0)
          {
            v144 = google::protobuf::internal::VarintParseSlow64(v6, v88);
            v160 = v144;
            *(a1 + 206) = v145 != 0;
            if (!v144)
            {
              return 0;
            }
          }

          else
          {
            v89 = (v6 + 2);
LABEL_166:
            v160 = v89;
            *(a1 + 206) = v88 != 0;
          }

          goto LABEL_226;
        case 0x20u:
          if (v7 != 5)
          {
            goto LABEL_218;
          }

          *(a1 + 20) |= 0x20u;
          v65 = *v6;
          v25 = (v6 + 4);
          *(a1 + 212) = v65;
          goto LABEL_200;
        case 0x21u:
          if (v7 != 8)
          {
            goto LABEL_218;
          }

          *(a1 + 20) |= 8u;
          v92 = (v6 + 1);
          v91 = *v6;
          if ((v91 & 0x8000000000000000) == 0)
          {
            goto LABEL_171;
          }

          v93 = *v92;
          v91 = (v93 << 7) + v91 - 128;
          if (v93 < 0)
          {
            v146 = google::protobuf::internal::VarintParseSlow64(v6, v91);
            v160 = v146;
            *(a1 + 207) = v147 != 0;
            if (!v146)
            {
              return 0;
            }
          }

          else
          {
            v92 = (v6 + 2);
LABEL_171:
            v160 = v92;
            *(a1 + 207) = v91 != 0;
          }

          goto LABEL_226;
        case 0x22u:
          if (v7 != 16)
          {
            goto LABEL_218;
          }

          *(a1 + 20) |= 0x40u;
          v41 = (v6 + 1);
          v40 = *v6;
          if ((v40 & 0x8000000000000000) == 0)
          {
            goto LABEL_62;
          }

          v42 = *v41;
          v40 = (v42 << 7) + v40 - 128;
          if (v42 < 0)
          {
            v128 = google::protobuf::internal::VarintParseSlow64(v6, v40);
            v160 = v128;
            *(a1 + 216) = v129 != 0;
            if (!v128)
            {
              return 0;
            }
          }

          else
          {
            v41 = (v6 + 2);
LABEL_62:
            v160 = v41;
            *(a1 + 216) = v40 != 0;
          }

          goto LABEL_226;
        case 0x23u:
          if (v7 != 24)
          {
            goto LABEL_218;
          }

          *(a1 + 20) |= 0x80u;
          v28 = (v6 + 1);
          v27 = *v6;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_41;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v122 = google::protobuf::internal::VarintParseSlow64(v6, v27);
            v160 = v122;
            *(a1 + 217) = v123 != 0;
            if (!v122)
            {
              return 0;
            }
          }

          else
          {
            v28 = (v6 + 2);
LABEL_41:
            v160 = v28;
            *(a1 + 217) = v27 != 0;
          }

          goto LABEL_226;
        case 0x24u:
          if (v7 != 32)
          {
            goto LABEL_218;
          }

          *(a1 + 20) |= 0x100u;
          v21 = (v6 + 1);
          v20 = *v6;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_29;
          }

          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if (v22 < 0)
          {
            v120 = google::protobuf::internal::VarintParseSlow64(v6, v20);
            v160 = v120;
            *(a1 + 218) = v121 != 0;
            if (!v120)
            {
              return 0;
            }
          }

          else
          {
            v21 = (v6 + 2);
LABEL_29:
            v160 = v21;
            *(a1 + 218) = v20 != 0;
          }

          goto LABEL_226;
        case 0x25u:
          if (v7 != 42)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x400u;
          v17 = *(a1 + 112);
          if (v17)
          {
            goto LABEL_207;
          }

          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = MEMORY[0x277C97B00](v23);
          LODWORD(v17) = v24;
          *(a1 + 112) = v24;
          goto LABEL_206;
        case 0x26u:
          if (v7 != 50)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x800u;
          v17 = *(a1 + 120);
          if (v17)
          {
            goto LABEL_207;
          }

          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v19 = MEMORY[0x277C97B00](v18);
          LODWORD(v17) = v19;
          *(a1 + 120) = v19;
          goto LABEL_206;
        case 0x27u:
          if (v7 != 58)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x1000u;
          v17 = *(a1 + 128);
          if (v17)
          {
            goto LABEL_207;
          }

          v109 = *(a1 + 8);
          if (v109)
          {
            v109 = *(v109 & 0xFFFFFFFFFFFFFFFELL);
          }

          v110 = MEMORY[0x277C97B00](v109);
          LODWORD(v17) = v110;
          *(a1 + 128) = v110;
LABEL_206:
          v6 = v160;
LABEL_207:
          v36 = sub_2764A8D08(a3, v17, v6);
          goto LABEL_225;
        case 0x28u:
          if (v7 != 64)
          {
            goto LABEL_218;
          }

          *(a1 + 20) |= 0x400u;
          v96 = (v6 + 1);
          LODWORD(v95) = *v6;
          if ((v95 & 0x80) == 0)
          {
            goto LABEL_180;
          }

          v97 = *v96;
          v95 = (v95 + (v97 << 7) - 128);
          if (v97 < 0)
          {
            v148 = google::protobuf::internal::VarintParseSlow64(v6, v95);
            v160 = v148;
            *(a1 + 220) = v149;
            if (!v148)
            {
              return 0;
            }
          }

          else
          {
            v96 = (v6 + 2);
LABEL_180:
            v160 = v96;
            *(a1 + 220) = v95;
          }

          goto LABEL_226;
        case 0x29u:
          if (v7 != 77)
          {
            goto LABEL_218;
          }

          *(a1 + 20) |= 0x800u;
          v46 = *v6;
          v25 = (v6 + 4);
          *(a1 + 224) = v46;
LABEL_200:
          v160 = v25;
          goto LABEL_226;
        case 0x2Au:
          if (v7 != 80)
          {
            goto LABEL_218;
          }

          *(a1 + 20) |= 0x1000u;
          v68 = (v6 + 1);
          LODWORD(v67) = *v6;
          if ((v67 & 0x80) == 0)
          {
            goto LABEL_115;
          }

          v69 = *v68;
          v67 = (v67 + (v69 << 7) - 128);
          if (v69 < 0)
          {
            v136 = google::protobuf::internal::VarintParseSlow64(v6, v67);
            v160 = v136;
            *(a1 + 228) = v137;
            if (!v136)
            {
              return 0;
            }
          }

          else
          {
            v68 = (v6 + 2);
LABEL_115:
            v160 = v68;
            *(a1 + 228) = v67;
          }

          goto LABEL_226;
        case 0x2Bu:
          if (v7 != 88)
          {
            goto LABEL_218;
          }

          *(a1 + 20) |= 0x200u;
          v102 = (v6 + 1);
          v101 = *v6;
          if ((v101 & 0x8000000000000000) == 0)
          {
            goto LABEL_190;
          }

          v103 = *v102;
          v101 = (v103 << 7) + v101 - 128;
          if (v103 < 0)
          {
            v152 = google::protobuf::internal::VarintParseSlow64(v6, v101);
            v160 = v152;
            *(a1 + 219) = v153 != 0;
            if (!v152)
            {
              return 0;
            }
          }

          else
          {
            v102 = (v6 + 2);
LABEL_190:
            v160 = v102;
            *(a1 + 219) = v101 != 0;
          }

          goto LABEL_226;
        case 0x2Cu:
          if (v7 != 96)
          {
            goto LABEL_218;
          }

          *(a1 + 20) |= 0x2000u;
          v15 = (v6 + 1);
          LODWORD(v14) = *v6;
          if ((v14 & 0x80) == 0)
          {
            goto LABEL_19;
          }

          v16 = *v15;
          v14 = (v14 + (v16 << 7) - 128);
          if (v16 < 0)
          {
            v118 = google::protobuf::internal::VarintParseSlow64(v6, v14);
            v160 = v118;
            *(a1 + 232) = v119;
            if (!v118)
            {
              return 0;
            }
          }

          else
          {
            v15 = (v6 + 2);
LABEL_19:
            v160 = v15;
            *(a1 + 232) = v14;
          }

          goto LABEL_226;
        case 0x2Du:
          if (v7 != 106)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 0x2000u;
          v33 = *(a1 + 136);
          if (!v33)
          {
            v34 = *(a1 + 8);
            if (v34)
            {
              v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
            }

            v35 = MEMORY[0x277C97B50](v34);
            LODWORD(v33) = v35;
            *(a1 + 136) = v35;
            v6 = v160;
          }

          v36 = sub_2764AC83C(a3, v33, v6);
          goto LABEL_225;
        case 0x2Eu:
          if (v7 != 114)
          {
            goto LABEL_218;
          }

          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v36 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_225;
        case 0x2Fu:
          if (v7 != 120)
          {
            goto LABEL_218;
          }

          *(a1 + 20) |= 0x4000u;
          v115 = (v6 + 1);
          LODWORD(v114) = *v6;
          if ((v114 & 0x80) == 0)
          {
            goto LABEL_217;
          }

          v116 = *v115;
          v114 = (v114 + (v116 << 7) - 128);
          if (v116 < 0)
          {
            v158 = google::protobuf::internal::VarintParseSlow64(v6, v114);
            v160 = v158;
            *(a1 + 236) = v159;
            if (!v158)
            {
              return 0;
            }
          }

          else
          {
            v115 = (v6 + 2);
LABEL_217:
            v160 = v115;
            *(a1 + 236) = v114;
          }

          goto LABEL_226;
        default:
LABEL_218:
          if (v7)
          {
            v117 = (v7 & 7) == 4;
          }

          else
          {
            v117 = 1;
          }

          if (v117)
          {
            *(a3 + 80) = v7 - 1;
            return v160;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v36 = google::protobuf::internal::UnknownFieldParse();
LABEL_225:
          v160 = v36;
          if (!v36)
          {
            return 0;
          }

LABEL_226:
          if (sub_2763D4D98(a3, &v160))
          {
            return v160;
          }

          break;
      }
    }
  }

  return v160;
}

unsigned __int8 *sub_27642826C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 0x4000) != 0)
  {
    if (*this <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v8 = *(a1 + 144);
    *v4 = 8;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v10 | 0x80;
          v13 = v10 >> 7;
          ++v4;
          v14 = v10 >> 14;
          v10 >>= 7;
        }

        while (v14);
        *(v4 - 1) = v13;
        if ((v6 & 0x20000) != 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v4[2] = v10;
        v4 += 3;
        if ((v6 & 0x20000) != 0)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v4[1] = v8;
      v4 += 2;
      if ((v6 & 0x20000) != 0)
      {
        goto LABEL_41;
      }
    }

LABEL_3:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_44;
  }

  if ((v6 & 0x20000) == 0)
  {
    goto LABEL_3;
  }

LABEL_41:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v15 = *(a1 + 156);
  *v4 = 16;
  v4[1] = v15;
  v4 += 2;
  if ((v6 & 0x8000) == 0)
  {
LABEL_4:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v16 = *(a1 + 148);
  *v4 = 29;
  *(v4 + 1) = v16;
  v4 += 5;
  if ((v6 & 0x10000) == 0)
  {
LABEL_5:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_47:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v17 = *(a1 + 152);
  *v4 = 37;
  *(v4 + 1) = v17;
  v4 += 5;
  if ((v6 & 2) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

LABEL_50:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v18 = *(a1 + 40);
  *v4 = 42;
  v19 = *(v18 + 20);
  if (v19 > 0x7F)
  {
    v4[1] = v19 | 0x80;
    v21 = v19 >> 7;
    if (v19 >> 14)
    {
      v20 = v4 + 3;
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
      v4[2] = v21;
      v20 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v19;
    v20 = v4 + 2;
  }

  v4 = sub_27643EEC4(v18, v20, this);
  if ((v6 & 4) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_70;
  }

LABEL_60:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v24 = *(a1 + 48);
  *v4 = 50;
  v25 = *(v24 + 20);
  if (v25 > 0x7F)
  {
    v4[1] = v25 | 0x80;
    v27 = v25 >> 7;
    if (v25 >> 14)
    {
      v26 = (v4 + 3);
      do
      {
        *(v26 - 1) = v27 | 0x80;
        v28 = v27 >> 7;
        ++v26;
        v29 = v27 >> 14;
        v27 >>= 7;
      }

      while (v29);
      *(v26 - 1) = v28;
    }

    else
    {
      v4[2] = v27;
      v26 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v25;
    v26 = (v4 + 2);
  }

  v4 = sub_276446ECC(v24, v26, this);
  if ((v6 & 8) == 0)
  {
LABEL_8:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_80;
  }

LABEL_70:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v30 = *(a1 + 56);
  *v4 = 58;
  v31 = *(v30 + 20);
  if (v31 > 0x7F)
  {
    v4[1] = v31 | 0x80;
    v33 = v31 >> 7;
    if (v31 >> 14)
    {
      v32 = (v4 + 3);
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
      v32 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v31;
    v32 = (v4 + 2);
  }

  v4 = sub_276446ECC(v30, v32, this);
  if ((v6 & 0x10) == 0)
  {
LABEL_9:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_90;
  }

LABEL_80:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v36 = *(a1 + 64);
  *v4 = 66;
  v37 = *(v36 + 20);
  if (v37 > 0x7F)
  {
    v4[1] = v37 | 0x80;
    v39 = v37 >> 7;
    if (v37 >> 14)
    {
      v38 = (v4 + 3);
      do
      {
        *(v38 - 1) = v39 | 0x80;
        v40 = v39 >> 7;
        ++v38;
        v41 = v39 >> 14;
        v39 >>= 7;
      }

      while (v41);
      *(v38 - 1) = v40;
    }

    else
    {
      v4[2] = v39;
      v38 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v37;
    v38 = (v4 + 2);
  }

  v4 = sub_276446ECC(v36, v38, this);
  if ((v6 & 0x40000) == 0)
  {
LABEL_10:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_93;
  }

LABEL_90:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v42 = *(a1 + 157);
  *v4 = 72;
  v4[1] = v42;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_11:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_103;
  }

LABEL_93:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v43 = *(a1 + 72);
  *v4 = 82;
  v44 = *(v43 + 11);
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

  v4 = TSD::FillArchive::_InternalSerialize(v43, v45, this);
  if ((v6 & 0x40) == 0)
  {
LABEL_12:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_113;
  }

LABEL_103:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v49 = *(a1 + 80);
  *v4 = 90;
  v50 = *(v49 + 5);
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

  v4 = TSD::StrokeArchive::_InternalSerialize(v49, v51, this);
  if ((v6 & 0x200000) == 0)
  {
LABEL_13:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_116;
  }

LABEL_113:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v55 = *(a1 + 160);
  *v4 = 101;
  *(v4 + 1) = v55;
  v4 += 5;
  if ((v6 & 0x80) == 0)
  {
LABEL_14:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_126;
  }

LABEL_116:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v56 = *(a1 + 88);
  *v4 = 106;
  v57 = *(v56 + 5);
  if (v57 > 0x7F)
  {
    v4[1] = v57 | 0x80;
    v59 = v57 >> 7;
    if (v57 >> 14)
    {
      v58 = v4 + 3;
      do
      {
        *(v58 - 1) = v59 | 0x80;
        v60 = v59 >> 7;
        ++v58;
        v61 = v59 >> 14;
        v59 >>= 7;
      }

      while (v61);
      *(v58 - 1) = v60;
    }

    else
    {
      v4[2] = v59;
      v58 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v57;
    v58 = v4 + 2;
  }

  v4 = TSD::ShadowArchive::_InternalSerialize(v56, v58, this);
  if ((v6 & 0x100) == 0)
  {
LABEL_15:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_16;
    }

LABEL_136:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v68 = *(a1 + 164);
    *v4 = 120;
    if (v68 > 0x7F)
    {
      v4[1] = v68 | 0x80;
      v69 = v68 >> 7;
      if (v68 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v69 | 0x80;
          v70 = v69 >> 7;
          ++v4;
          v71 = v69 >> 14;
          v69 >>= 7;
        }

        while (v71);
        *(v4 - 1) = v70;
        if ((v6 & 0x80000) != 0)
        {
          goto LABEL_147;
        }
      }

      else
      {
        v4[2] = v69;
        v4 += 3;
        if ((v6 & 0x80000) != 0)
        {
          goto LABEL_147;
        }
      }
    }

    else
    {
      v4[1] = v68;
      v4 += 2;
      if ((v6 & 0x80000) != 0)
      {
        goto LABEL_147;
      }
    }

LABEL_17:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_150;
  }

LABEL_126:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v62 = *(a1 + 96);
  *v4 = 114;
  v63 = *(v62 + 5);
  if (v63 > 0x7F)
  {
    v4[1] = v63 | 0x80;
    v65 = v63 >> 7;
    if (v63 >> 14)
    {
      v64 = v4 + 3;
      do
      {
        *(v64 - 1) = v65 | 0x80;
        v66 = v65 >> 7;
        ++v64;
        v67 = v65 >> 14;
        v65 >>= 7;
      }

      while (v67);
      *(v64 - 1) = v66;
    }

    else
    {
      v4[2] = v65;
      v64 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v63;
    v64 = v4 + 2;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v62, v64, this);
  if ((v6 & 0x400000) != 0)
  {
    goto LABEL_136;
  }

LABEL_16:
  if ((v6 & 0x80000) == 0)
  {
    goto LABEL_17;
  }

LABEL_147:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v72 = *(a1 + 158);
  *v4 = 384;
  v4[2] = v72;
  v4 += 3;
  if ((v6 & 0x100000) == 0)
  {
LABEL_18:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_153;
  }

LABEL_150:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v73 = *(a1 + 159);
  *v4 = 392;
  v4[2] = v73;
  v4 += 3;
  if ((v6 & 0x800000) == 0)
  {
LABEL_19:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_156;
  }

LABEL_153:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v74 = *(a1 + 168);
  *v4 = 405;
  *(v4 + 2) = v74;
  v4 += 6;
  if ((v6 & 0x1000000) == 0)
  {
LABEL_20:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_21;
  }

LABEL_156:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v75 = *(a1 + 172);
  *v4 = 408;
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
        v77 = v76 >> 7;
        ++v4;
        v78 = v76 >> 14;
        v76 >>= 7;
      }

      while (v78);
      *(v4 - 1) = v77;
      if ((v6 & 0x2000000) == 0)
      {
        goto LABEL_167;
      }
    }

    else
    {
      v4[3] = v76;
      v4 += 4;
      if ((v6 & 0x2000000) == 0)
      {
        goto LABEL_167;
      }
    }
  }

  else
  {
    v4[2] = v75;
    v4 += 3;
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_167;
    }
  }

LABEL_21:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v7 = *(a1 + 176);
  *v4 = 416;
  if (v7 > 0x7F)
  {
    v4[2] = v7 | 0x80;
    v9 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v9 | 0x80;
        v11 = v9 >> 7;
        ++v4;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
      *(v4 - 1) = v11;
    }

    else
    {
      v4[3] = v9;
      v4 += 4;
    }
  }

  else
  {
    v4[2] = v7;
    v4 += 3;
  }

LABEL_167:
  if (*(a1 + 20))
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v79 = *(a1 + 204);
    *v4 = 424;
    v4[2] = v79;
    v4 += 3;
  }

  v80 = *(a1 + 16);
  if ((v80 & 0x200) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v82 = *(a1 + 104);
    *v4 = 434;
    v83 = *(v82 + 11);
    if (v83 > 0x7F)
    {
      v4[2] = v83 | 0x80;
      v85 = v83 >> 7;
      if (v83 >> 14)
      {
        v84 = v4 + 4;
        do
        {
          *(v84 - 1) = v85 | 0x80;
          v86 = v85 >> 7;
          ++v84;
          v87 = v85 >> 14;
          v85 >>= 7;
        }

        while (v87);
        *(v84 - 1) = v86;
      }

      else
      {
        v4[3] = v85;
        v84 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v83;
      v84 = v4 + 3;
    }

    v4 = TSD::FillArchive::_InternalSerialize(v82, v84, this);
    if ((v80 & 0x4000000) == 0)
    {
LABEL_173:
      if ((v80 & 0x8000000) == 0)
      {
        goto LABEL_174;
      }

      goto LABEL_194;
    }
  }

  else if ((v80 & 0x4000000) == 0)
  {
    goto LABEL_173;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v88 = *(a1 + 180);
  *v4 = 445;
  *(v4 + 2) = v88;
  v4 += 6;
  if ((v80 & 0x8000000) == 0)
  {
LABEL_174:
    if ((v80 & 0x10000000) == 0)
    {
      goto LABEL_175;
    }

    goto LABEL_197;
  }

LABEL_194:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v89 = *(a1 + 184);
  *v4 = 453;
  *(v4 + 2) = v89;
  v4 += 6;
  if ((v80 & 0x10000000) == 0)
  {
LABEL_175:
    if ((v80 & 0x20000000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_200;
  }

LABEL_197:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v90 = *(a1 + 188);
  *v4 = 461;
  *(v4 + 2) = v90;
  v4 += 6;
  if ((v80 & 0x20000000) == 0)
  {
LABEL_176:
    if ((v80 & 0x40000000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_203;
  }

LABEL_200:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v91 = *(a1 + 192);
  *v4 = 469;
  *(v4 + 2) = v91;
  v4 += 6;
  if ((v80 & 0x40000000) == 0)
  {
LABEL_177:
    if ((v80 & 0x80000000) == 0)
    {
      goto LABEL_214;
    }

    goto LABEL_178;
  }

LABEL_203:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v92 = *(a1 + 196);
  *v4 = 472;
  if (v92 > 0x7F)
  {
    v4[2] = v92 | 0x80;
    v93 = v92 >> 7;
    if (v92 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v93 | 0x80;
        v94 = v93 >> 7;
        ++v4;
        v95 = v93 >> 14;
        v93 >>= 7;
      }

      while (v95);
      *(v4 - 1) = v94;
      if ((v80 & 0x80000000) == 0)
      {
        goto LABEL_214;
      }
    }

    else
    {
      v4[3] = v93;
      v4 += 4;
      if ((v80 & 0x80000000) == 0)
      {
        goto LABEL_214;
      }
    }
  }

  else
  {
    v4[2] = v92;
    v4 += 3;
    if ((v80 & 0x80000000) == 0)
    {
      goto LABEL_214;
    }
  }

LABEL_178:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v81 = *(a1 + 200);
  *v4 = 485;
  *(v4 + 2) = v81;
  v4 += 6;
LABEL_214:
  v96 = *(a1 + 20);
  if ((v96 & 2) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v97 = *(a1 + 205);
    *v4 = 488;
    v4[2] = v97;
    v4 += 3;
    if ((v96 & 0x10) == 0)
    {
LABEL_216:
      if ((v96 & 4) == 0)
      {
        goto LABEL_217;
      }

      goto LABEL_229;
    }
  }

  else if ((v96 & 0x10) == 0)
  {
    goto LABEL_216;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v98 = *(a1 + 208);
  *v4 = 501;
  *(v4 + 2) = v98;
  v4 += 6;
  if ((v96 & 4) == 0)
  {
LABEL_217:
    if ((v96 & 0x20) == 0)
    {
      goto LABEL_218;
    }

    goto LABEL_232;
  }

LABEL_229:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v99 = *(a1 + 206);
  *v4 = 504;
  v4[2] = v99;
  v4 += 3;
  if ((v96 & 0x20) == 0)
  {
LABEL_218:
    if ((v96 & 8) == 0)
    {
      goto LABEL_219;
    }

    goto LABEL_235;
  }

LABEL_232:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v100 = *(a1 + 212);
  *v4 = 645;
  *(v4 + 2) = v100;
  v4 += 6;
  if ((v96 & 8) == 0)
  {
LABEL_219:
    if ((v96 & 0x40) == 0)
    {
      goto LABEL_220;
    }

    goto LABEL_238;
  }

LABEL_235:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v101 = *(a1 + 207);
  *v4 = 648;
  v4[2] = v101;
  v4 += 3;
  if ((v96 & 0x40) == 0)
  {
LABEL_220:
    if ((v96 & 0x80) == 0)
    {
      goto LABEL_221;
    }

    goto LABEL_241;
  }

LABEL_238:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v102 = *(a1 + 216);
  *v4 = 656;
  v4[2] = v102;
  v4 += 3;
  if ((v96 & 0x80) == 0)
  {
LABEL_221:
    if ((v96 & 0x100) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_244;
  }

LABEL_241:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v103 = *(a1 + 217);
  *v4 = 664;
  v4[2] = v103;
  v4 += 3;
  if ((v96 & 0x100) != 0)
  {
LABEL_244:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v104 = *(a1 + 218);
    *v4 = 672;
    v4[2] = v104;
    v4 += 3;
  }

LABEL_247:
  v105 = *(a1 + 16);
  if ((v105 & 0x400) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v106 = *(a1 + 112);
    *v4 = 682;
    v107 = *(v106 + 12);
    if (v107 > 0x7F)
    {
      v4[2] = v107 | 0x80;
      v109 = v107 >> 7;
      if (v107 >> 14)
      {
        v108 = v4 + 4;
        do
        {
          *(v108 - 1) = v109 | 0x80;
          v110 = v109 >> 7;
          ++v108;
          v111 = v109 >> 14;
          v109 >>= 7;
        }

        while (v111);
        *(v108 - 1) = v110;
      }

      else
      {
        v4[3] = v109;
        v108 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v107;
      v108 = v4 + 3;
    }

    v4 = TSK::FormatStructArchive::_InternalSerialize(v106, v108, this);
    if ((v105 & 0x800) == 0)
    {
LABEL_249:
      if ((v105 & 0x1000) == 0)
      {
        goto LABEL_281;
      }

      goto LABEL_271;
    }
  }

  else if ((v105 & 0x800) == 0)
  {
    goto LABEL_249;
  }

  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v112 = *(a1 + 120);
  *v4 = 690;
  v113 = *(v112 + 12);
  if (v113 > 0x7F)
  {
    v4[2] = v113 | 0x80;
    v115 = v113 >> 7;
    if (v113 >> 14)
    {
      v114 = v4 + 4;
      do
      {
        *(v114 - 1) = v115 | 0x80;
        v116 = v115 >> 7;
        ++v114;
        v117 = v115 >> 14;
        v115 >>= 7;
      }

      while (v117);
      *(v114 - 1) = v116;
    }

    else
    {
      v4[3] = v115;
      v114 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v113;
    v114 = v4 + 3;
  }

  v4 = TSK::FormatStructArchive::_InternalSerialize(v112, v114, this);
  if ((v105 & 0x1000) != 0)
  {
LABEL_271:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v118 = *(a1 + 128);
    *v4 = 698;
    v119 = *(v118 + 12);
    if (v119 > 0x7F)
    {
      v4[2] = v119 | 0x80;
      v121 = v119 >> 7;
      if (v119 >> 14)
      {
        v120 = v4 + 4;
        do
        {
          *(v120 - 1) = v121 | 0x80;
          v122 = v121 >> 7;
          ++v120;
          v123 = v121 >> 14;
          v121 >>= 7;
        }

        while (v123);
        *(v120 - 1) = v122;
      }

      else
      {
        v4[3] = v121;
        v120 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v119;
      v120 = v4 + 3;
    }

    v4 = TSK::FormatStructArchive::_InternalSerialize(v118, v120, this);
  }

LABEL_281:
  v124 = *(a1 + 20);
  if ((v124 & 0x400) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v125 = *(a1 + 220);
    *v4 = 704;
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
        if ((v124 & 0x800) != 0)
        {
          goto LABEL_298;
        }
      }

      else
      {
        v4[3] = v126;
        v4 += 4;
        if ((v124 & 0x800) != 0)
        {
          goto LABEL_298;
        }
      }
    }

    else
    {
      v4[2] = v125;
      v4 += 3;
      if ((v124 & 0x800) != 0)
      {
        goto LABEL_298;
      }
    }

LABEL_283:
    if ((v124 & 0x1000) == 0)
    {
      goto LABEL_284;
    }

LABEL_301:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v130 = *(a1 + 228);
    *v4 = 720;
    if (v130 > 0x7F)
    {
      v4[2] = v130 | 0x80;
      v131 = v130 >> 7;
      if (v130 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v131 | 0x80;
          v132 = v131 >> 7;
          ++v4;
          v133 = v131 >> 14;
          v131 >>= 7;
        }

        while (v133);
        *(v4 - 1) = v132;
        if ((v124 & 0x200) != 0)
        {
          goto LABEL_312;
        }
      }

      else
      {
        v4[3] = v131;
        v4 += 4;
        if ((v124 & 0x200) != 0)
        {
          goto LABEL_312;
        }
      }
    }

    else
    {
      v4[2] = v130;
      v4 += 3;
      if ((v124 & 0x200) != 0)
      {
        goto LABEL_312;
      }
    }

LABEL_285:
    if ((v124 & 0x2000) == 0)
    {
      goto LABEL_324;
    }

    goto LABEL_315;
  }

  if ((v124 & 0x800) == 0)
  {
    goto LABEL_283;
  }

LABEL_298:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v129 = *(a1 + 224);
  *v4 = 717;
  *(v4 + 2) = v129;
  v4 += 6;
  if ((v124 & 0x1000) != 0)
  {
    goto LABEL_301;
  }

LABEL_284:
  if ((v124 & 0x200) == 0)
  {
    goto LABEL_285;
  }

LABEL_312:
  if (*this <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
  }

  v134 = *(a1 + 219);
  *v4 = 728;
  v4[2] = v134;
  v4 += 3;
  if ((v124 & 0x2000) != 0)
  {
LABEL_315:
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v135 = *(a1 + 232);
    *v4 = 736;
    if (v135 > 0x7F)
    {
      v4[2] = v135 | 0x80;
      v136 = v135 >> 7;
      if (v135 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v136 | 0x80;
          v137 = v136 >> 7;
          ++v4;
          v138 = v136 >> 14;
          v136 >>= 7;
        }

        while (v138);
        *(v4 - 1) = v137;
      }

      else
      {
        v4[3] = v136;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v135;
      v4 += 3;
    }
  }

LABEL_324:
  v139 = *(a1 + 16);
  if ((v139 & 0x2000) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v140 = *(a1 + 136);
    *v4 = 746;
    v141 = *(v140 + 5);
    if (v141 > 0x7F)
    {
      v4[2] = v141 | 0x80;
      v143 = v141 >> 7;
      if (v141 >> 14)
      {
        v142 = v4 + 4;
        do
        {
          *(v142 - 1) = v143 | 0x80;
          v144 = v143 >> 7;
          ++v142;
          v145 = v143 >> 14;
          v143 >>= 7;
        }

        while (v145);
        *(v142 - 1) = v144;
      }

      else
      {
        v4[3] = v143;
        v142 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v141;
      v142 = v4 + 3;
    }

    v4 = TSP::Color::_InternalSerialize(v140, v142, this);
  }

  if (v139)
  {
    v4 = sub_2763DD938(this, 46, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  if ((*(a1 + 21) & 0x40) != 0)
  {
    if (*this <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
    }

    v146 = *(a1 + 236);
    *v4 = 760;
    if (v146 > 0x7F)
    {
      v4[2] = v146 | 0x80;
      v147 = v146 >> 7;
      if (v146 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v147 | 0x80;
          v148 = v147 >> 7;
          ++v4;
          v149 = v147 >> 14;
          v147 >>= 7;
        }

        while (v149);
        *(v4 - 1) = v148;
      }

      else
      {
        v4[3] = v147;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v146;
      v4 += 3;
    }
  }

  v150 = *(a1 + 8);
  if ((v150 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v150 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_2764295B0(uint64_t a1)
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
    v7 = sub_27643F014(*(a1 + 40));
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
    v9 = sub_276447014(*(a1 + 48));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_28;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v10 = sub_276447014(*(a1 + 56));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v11 = sub_276447014(*(a1 + 64));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  v12 = TSD::FillArchive::ByteSizeLong(*(a1 + 72));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_15:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_30:
  v13 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 80));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_16:
    v8 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 88));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_44;
  }

  if ((v2 & 0x100) != 0)
  {
    v14 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 96));
    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_20:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v15 = TSD::FillArchive::ByteSizeLong(*(a1 + 104));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) == 0)
  {
LABEL_21:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_35;
  }

LABEL_34:
  v16 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 112));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800) == 0)
  {
LABEL_22:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_36;
  }

LABEL_35:
  v17 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 120));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x1000) == 0)
  {
LABEL_23:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

LABEL_36:
  v18 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 128));
  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x2000) == 0)
  {
LABEL_24:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_37:
  v19 = TSP::Color::ByteSizeLong(*(a1 + 136));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000) == 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  v20 = *(a1 + 144);
  if (v20 < 0)
  {
    v21 = 11;
  }

  else
  {
    v21 = ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v21;
LABEL_42:
  if ((v2 & 0x8000) != 0)
  {
    v3 += 5;
  }

LABEL_44:
  if ((v2 & 0xFF0000) != 0)
  {
    v22 = v3 + 5;
    if ((v2 & 0x10000) == 0)
    {
      v22 = v3;
    }

    v23 = v22 + ((v2 >> 17) & 2) + (HIWORD(v2) & 2);
    if ((v2 & 0x80000) != 0)
    {
      v23 += 3;
    }

    if ((v2 & 0x100000) != 0)
    {
      v23 += 3;
    }

    if ((v2 & 0x200000) != 0)
    {
      v23 += 5;
    }

    if ((v2 & 0x400000) != 0)
    {
      v24 = *(a1 + 164);
      v25 = ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v24 >= 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 11;
      }

      v23 += v26;
    }

    if ((v2 & 0x800000) != 0)
    {
      v3 = v23 + 6;
    }

    else
    {
      v3 = v23;
    }
  }

  if (HIBYTE(v2))
  {
    if ((v2 & 0x1000000) != 0)
    {
      v27 = *(a1 + 172);
      if (v27 < 0)
      {
        v28 = 12;
      }

      else
      {
        v28 = ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v28;
    }

    if ((v2 & 0x2000000) != 0)
    {
      v29 = *(a1 + 176);
      if (v29 < 0)
      {
        v30 = 12;
      }

      else
      {
        v30 = ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
      }

      v3 += v30;
    }

    v31 = v3 + 6;
    if ((v2 & 0x4000000) == 0)
    {
      v31 = v3;
    }

    if ((v2 & 0x8000000) != 0)
    {
      v31 += 6;
    }

    if ((v2 & 0x10000000) != 0)
    {
      v31 += 6;
    }

    if ((v2 & 0x20000000) != 0)
    {
      v31 += 6;
    }

    if ((v2 & 0x40000000) != 0)
    {
      v32 = *(a1 + 196);
      v33 = ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v32 >= 0)
      {
        v34 = v33;
      }

      else
      {
        v34 = 12;
      }

      v31 += v34;
    }

    if ((v2 & 0x80000000) == 0)
    {
      v3 = v31;
    }

    else
    {
      v3 = v31 + 6;
    }
  }

  v35 = *(a1 + 20);
  if (v35)
  {
    v36 = v3 + 3;
    if ((v35 & 1) == 0)
    {
      v36 = v3;
    }

    if ((v35 & 2) != 0)
    {
      v36 += 3;
    }

    if ((v35 & 4) != 0)
    {
      v36 += 3;
    }

    if ((v35 & 8) != 0)
    {
      v36 += 3;
    }

    if ((v35 & 0x10) != 0)
    {
      v36 += 6;
    }

    if ((v35 & 0x20) != 0)
    {
      v36 += 6;
    }

    if ((v35 & 0x40) != 0)
    {
      v36 += 3;
    }

    if ((v35 & 0x80) != 0)
    {
      v3 = v36 + 3;
    }

    else
    {
      v3 = v36;
    }
  }

  if ((v35 & 0x7F00) == 0)
  {
    goto LABEL_126;
  }

  v37 = v3 + 3;
  if ((v35 & 0x100) == 0)
  {
    v37 = v3;
  }

  if ((v35 & 0x200) != 0)
  {
    v37 += 3;
  }

  if ((v35 & 0x400) != 0)
  {
    v38 = *(a1 + 220);
    v39 = ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v38 >= 0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 12;
    }

    v37 += v40;
  }

  if ((v35 & 0x800) != 0)
  {
    v3 = v37 + 6;
  }

  else
  {
    v3 = v37;
  }

  if ((v35 & 0x1000) == 0)
  {
    if ((v35 & 0x2000) == 0)
    {
      goto LABEL_121;
    }

LABEL_132:
    v48 = *(a1 + 232);
    v49 = ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v48 >= 0)
    {
      v50 = v49;
    }

    else
    {
      v50 = 12;
    }

    v3 += v50;
    if ((v35 & 0x4000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_122;
  }

  v45 = *(a1 + 228);
  v46 = ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v45 >= 0)
  {
    v47 = v46;
  }

  else
  {
    v47 = 12;
  }

  v3 += v47;
  if ((v35 & 0x2000) != 0)
  {
    goto LABEL_132;
  }

LABEL_121:
  if ((v35 & 0x4000) != 0)
  {
LABEL_122:
    v41 = *(a1 + 236);
    v42 = ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v41 >= 0)
    {
      v43 = v42;
    }

    else
    {
      v43 = 12;
    }

    v3 += v43;
  }

LABEL_126:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 24) = v3;
    return v3;
  }
}

uint64_t sub_276429C44(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288523910, 0);
  if (v4)
  {

    return sub_276429CEC(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276429CEC(uint64_t result, uint64_t a2)
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
    v6 = *(v3 + 40);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_276447688(v7);
      *(v3 + 40) = v6;
    }

    if (*(a2 + 40))
    {
      v8 = *(a2 + 40);
    }

    else
    {
      v8 = &unk_2812F12A8;
    }

    result = sub_27643F1BC(v6, v8);
  }

  if ((v5 & 4) != 0)
  {
    *(v3 + 16) |= 4u;
    v9 = *(v3 + 48);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = sub_276447FD4(v10);
      *(v3 + 48) = v9;
    }

    if (*(a2 + 48))
    {
      v11 = *(a2 + 48);
    }

    else
    {
      v11 = &qword_2812F15A8;
    }

    result = sub_27643BB14(v9, v11);
    if ((v5 & 8) == 0)
    {
LABEL_17:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_38;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_17;
  }

  *(v3 + 16) |= 8u;
  v12 = *(v3 + 56);
  if (!v12)
  {
    v13 = *(v3 + 8);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = sub_276447FD4(v13);
    *(v3 + 56) = v12;
  }

  if (*(a2 + 56))
  {
    v14 = *(a2 + 56);
  }

  else
  {
    v14 = &qword_2812F15A8;
  }

  result = sub_27643BB14(v12, v14);
  if ((v5 & 0x10) == 0)
  {
LABEL_18:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_19;
    }

LABEL_46:
    *(v3 + 16) |= 0x20u;
    v18 = *(v3 + 72);
    if (!v18)
    {
      v19 = *(v3 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = MEMORY[0x277C97A80](v19);
      *(v3 + 72) = v18;
    }

    if (*(a2 + 72))
    {
      v20 = *(a2 + 72);
    }

    else
    {
      v20 = MEMORY[0x277D80488];
    }

    result = TSD::FillArchive::MergeFrom(v18, v20);
    if ((v5 & 0x40) == 0)
    {
LABEL_20:
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
  v15 = *(v3 + 64);
  if (!v15)
  {
    v16 = *(v3 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = sub_276447FD4(v16);
    *(v3 + 64) = v15;
  }

  if (*(a2 + 64))
  {
    v17 = *(a2 + 64);
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

LABEL_19:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_54:
  *(v3 + 16) |= 0x40u;
  v21 = *(v3 + 80);
  if (!v21)
  {
    v22 = *(v3 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = MEMORY[0x277C97AA0](v22);
    *(v3 + 80) = v21;
  }

  if (*(a2 + 80))
  {
    v23 = *(a2 + 80);
  }

  else
  {
    v23 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v21, v23);
  if ((v5 & 0x80) != 0)
  {
LABEL_62:
    *(v3 + 16) |= 0x80u;
    v24 = *(v3 + 88);
    if (!v24)
    {
      v25 = *(v3 + 8);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = MEMORY[0x277C97A90](v25);
      *(v3 + 88) = v24;
    }

    if (*(a2 + 88))
    {
      v26 = *(a2 + 88);
    }

    else
    {
      v26 = MEMORY[0x277D80498];
    }

    result = TSD::ShadowArchive::MergeFrom(v24, v26);
  }

LABEL_70:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_97;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v27 = *(v3 + 96);
    if (!v27)
    {
      v28 = *(v3 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = MEMORY[0x277C97AA0](v28);
      *(v3 + 96) = v27;
    }

    if (*(a2 + 96))
    {
      v29 = *(a2 + 96);
    }

    else
    {
      v29 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v27, v29);
  }

  if ((v5 & 0x200) != 0)
  {
    *(v3 + 16) |= 0x200u;
    v30 = *(v3 + 104);
    if (!v30)
    {
      v31 = *(v3 + 8);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = MEMORY[0x277C97A80](v31);
      *(v3 + 104) = v30;
    }

    if (*(a2 + 104))
    {
      v32 = *(a2 + 104);
    }

    else
    {
      v32 = MEMORY[0x277D80488];
    }

    result = TSD::FillArchive::MergeFrom(v30, v32);
  }

  v33 = MEMORY[0x277D80740];
  if ((v5 & 0x400) != 0)
  {
    *(v3 + 16) |= 0x400u;
    v35 = *(v3 + 112);
    if (!v35)
    {
      v36 = *(v3 + 8);
      if (v36)
      {
        v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
      }

      v35 = MEMORY[0x277C97B00](v36);
      *(v3 + 112) = v35;
    }

    if (*(a2 + 112))
    {
      v37 = *(a2 + 112);
    }

    else
    {
      v37 = v33;
    }

    result = TSK::FormatStructArchive::MergeFrom(v35, v37);
    if ((v5 & 0x800) == 0)
    {
LABEL_91:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_156;
    }
  }

  else if ((v5 & 0x800) == 0)
  {
    goto LABEL_91;
  }

  *(v3 + 16) |= 0x800u;
  v38 = *(v3 + 120);
  if (!v38)
  {
    v39 = *(v3 + 8);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v38 = MEMORY[0x277C97B00](v39);
    *(v3 + 120) = v38;
  }

  if (*(a2 + 120))
  {
    v40 = *(a2 + 120);
  }

  else
  {
    v40 = v33;
  }

  result = TSK::FormatStructArchive::MergeFrom(v38, v40);
  if ((v5 & 0x1000) == 0)
  {
LABEL_92:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_164;
  }

LABEL_156:
  *(v3 + 16) |= 0x1000u;
  v41 = *(v3 + 128);
  if (!v41)
  {
    v42 = *(v3 + 8);
    if (v42)
    {
      v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    }

    v41 = MEMORY[0x277C97B00](v42);
    *(v3 + 128) = v41;
  }

  if (*(a2 + 128))
  {
    v43 = *(a2 + 128);
  }

  else
  {
    v43 = v33;
  }

  result = TSK::FormatStructArchive::MergeFrom(v41, v43);
  if ((v5 & 0x2000) == 0)
  {
LABEL_93:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_94;
    }

LABEL_172:
    *(v3 + 144) = *(a2 + 144);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

LABEL_164:
  *(v3 + 16) |= 0x2000u;
  v44 = *(v3 + 136);
  if (!v44)
  {
    v45 = *(v3 + 8);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    v44 = MEMORY[0x277C97B50](v45);
    *(v3 + 136) = v44;
  }

  if (*(a2 + 136))
  {
    v46 = *(a2 + 136);
  }

  else
  {
    v46 = MEMORY[0x277D809E8];
  }

  result = TSP::Color::MergeFrom(v44, v46);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_172;
  }

LABEL_94:
  if ((v5 & 0x8000) != 0)
  {
LABEL_95:
    *(v3 + 148) = *(a2 + 148);
  }

LABEL_96:
  *(v3 + 16) |= v5;
LABEL_97:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_108;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 152) = *(a2 + 152);
    if ((v5 & 0x20000) == 0)
    {
LABEL_100:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_101;
      }

      goto LABEL_176;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_100;
  }

  *(v3 + 156) = *(a2 + 156);
  if ((v5 & 0x40000) == 0)
  {
LABEL_101:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_177;
  }

LABEL_176:
  *(v3 + 157) = *(a2 + 157);
  if ((v5 & 0x80000) == 0)
  {
LABEL_102:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_178;
  }

LABEL_177:
  *(v3 + 158) = *(a2 + 158);
  if ((v5 & 0x100000) == 0)
  {
LABEL_103:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_179;
  }

LABEL_178:
  *(v3 + 159) = *(a2 + 159);
  if ((v5 & 0x200000) == 0)
  {
LABEL_104:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_105;
    }

LABEL_180:
    *(v3 + 164) = *(a2 + 164);
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_106;
  }

LABEL_179:
  *(v3 + 160) = *(a2 + 160);
  if ((v5 & 0x400000) != 0)
  {
    goto LABEL_180;
  }

LABEL_105:
  if ((v5 & 0x800000) != 0)
  {
LABEL_106:
    *(v3 + 168) = *(a2 + 168);
  }

LABEL_107:
  *(v3 + 16) |= v5;
LABEL_108:
  if (!HIBYTE(v5))
  {
    goto LABEL_118;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 172) = *(a2 + 172);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_111:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_199;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_111;
  }

  *(v3 + 176) = *(a2 + 176);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_112:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_200;
  }

LABEL_199:
  *(v3 + 180) = *(a2 + 180);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_113:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_201;
  }

LABEL_200:
  *(v3 + 184) = *(a2 + 184);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_114:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_202;
  }

LABEL_201:
  *(v3 + 188) = *(a2 + 188);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_115:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_116;
    }

LABEL_203:
    *(v3 + 196) = *(a2 + 196);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_117;
    }

LABEL_204:
    *(v3 + 200) = *(a2 + 200);
    goto LABEL_117;
  }

LABEL_202:
  *(v3 + 192) = *(a2 + 192);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_203;
  }

LABEL_116:
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_204;
  }

LABEL_117:
  *(v3 + 16) |= v5;
LABEL_118:
  v34 = *(a2 + 20);
  if (!v34)
  {
    goto LABEL_129;
  }

  if (v34)
  {
    *(v3 + 204) = *(a2 + 204);
    if ((v34 & 2) == 0)
    {
LABEL_121:
      if ((v34 & 4) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_184;
    }
  }

  else if ((v34 & 2) == 0)
  {
    goto LABEL_121;
  }

  *(v3 + 205) = *(a2 + 205);
  if ((v34 & 4) == 0)
  {
LABEL_122:
    if ((v34 & 8) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_185;
  }

LABEL_184:
  *(v3 + 206) = *(a2 + 206);
  if ((v34 & 8) == 0)
  {
LABEL_123:
    if ((v34 & 0x10) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_186;
  }

LABEL_185:
  *(v3 + 207) = *(a2 + 207);
  if ((v34 & 0x10) == 0)
  {
LABEL_124:
    if ((v34 & 0x20) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_187;
  }

LABEL_186:
  *(v3 + 208) = *(a2 + 208);
  if ((v34 & 0x20) == 0)
  {
LABEL_125:
    if ((v34 & 0x40) == 0)
    {
      goto LABEL_126;
    }

LABEL_188:
    *(v3 + 216) = *(a2 + 216);
    if ((v34 & 0x80) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_187:
  *(v3 + 212) = *(a2 + 212);
  if ((v34 & 0x40) != 0)
  {
    goto LABEL_188;
  }

LABEL_126:
  if ((v34 & 0x80) != 0)
  {
LABEL_127:
    *(v3 + 217) = *(a2 + 217);
  }

LABEL_128:
  *(v3 + 20) |= v34;
LABEL_129:
  if ((v34 & 0x7F00) == 0)
  {
    return result;
  }

  if ((v34 & 0x100) != 0)
  {
    *(v3 + 218) = *(a2 + 218);
    if ((v34 & 0x200) == 0)
    {
LABEL_132:
      if ((v34 & 0x400) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_192;
    }
  }

  else if ((v34 & 0x200) == 0)
  {
    goto LABEL_132;
  }

  *(v3 + 219) = *(a2 + 219);
  if ((v34 & 0x400) == 0)
  {
LABEL_133:
    if ((v34 & 0x800) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_193;
  }

LABEL_192:
  *(v3 + 220) = *(a2 + 220);
  if ((v34 & 0x800) == 0)
  {
LABEL_134:
    if ((v34 & 0x1000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_194;
  }

LABEL_193:
  *(v3 + 224) = *(a2 + 224);
  if ((v34 & 0x1000) == 0)
  {
LABEL_135:
    if ((v34 & 0x2000) == 0)
    {
      goto LABEL_136;
    }

LABEL_195:
    *(v3 + 232) = *(a2 + 232);
    if ((v34 & 0x4000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_137;
  }

LABEL_194:
  *(v3 + 228) = *(a2 + 228);
  if ((v34 & 0x2000) != 0)
  {
    goto LABEL_195;
  }

LABEL_136:
  if ((v34 & 0x4000) != 0)
  {
LABEL_137:
    *(v3 + 236) = *(a2 + 236);
  }

LABEL_138:
  *(v3 + 20) |= v34;
  return result;
}

uint64_t *sub_27642A3CC(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276427024(result);

    return sub_276429C44(v4, a2);
  }

  return result;
}

uint64_t sub_27642A418(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_27643F2FC(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_27643BC1C(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_27643BC1C(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_27643BC1C(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 120));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(a1 + 128));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000) == 0)
  {
    return 1;
  }

  result = TSP::Color::IsInitialized(*(a1 + 136));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_27642A578(uint64_t *a1)
{
  if (a1 != &qword_2812F0D98)
  {
    if (a1[3])
    {
      v2 = MEMORY[0x277C971C0]();
      MEMORY[0x277C98580](v2, 0x10A1C4042C41316);
    }

    if (a1[4])
    {
      v3 = MEMORY[0x277C97200]();
      MEMORY[0x277C98580](v3, 0x10A1C40C8B7F858);
    }

    if (a1[5])
    {
      v4 = MEMORY[0x277C97240]();
      MEMORY[0x277C98580](v4, 0x10A1C4078DB9C03);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_27642A61C(uint64_t *a1)
{
  sub_27642A578(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27642A65C(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = TSD::FillArchive::Clear(result[3]);
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

    result = TSD::ShadowArchive::Clear(v1[4]);
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = TSD::StrokeArchive::Clear(v1[5]);
    }
  }

LABEL_6:
  if ((v2 & 0x18) != 0)
  {
    v1[6] = 0;
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

google::protobuf::internal *sub_27642A6F0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v30) & 1) == 0)
  {
    while (1)
    {
      v7 = (v30 + 1);
      v8 = *v30;
      if ((*v30 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v9 - 128));
      v30 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_56;
      }

      v7 = TagFallback;
      v8 = v27;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 == 29)
          {
            v5 |= 0x10u;
            *(a1 + 52) = *v7;
            v30 = (v7 + 4);
            goto LABEL_49;
          }
        }

        else if (v10 == 4)
        {
          if (v8 == 34)
          {
            *(a1 + 16) |= 2u;
            v19 = *(a1 + 32);
            if (!v19)
            {
              v20 = *(a1 + 8);
              if (v20)
              {
                v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
              }

              v21 = MEMORY[0x277C97A90](v20);
              LODWORD(v19) = v21;
              *(a1 + 32) = v21;
              v7 = v30;
            }

            v14 = sub_2764AC76C(a3, v19, v7);
            goto LABEL_48;
          }
        }

        else if (v10 == 5 && v8 == 42)
        {
          *(a1 + 16) |= 4u;
          v11 = *(a1 + 40);
          if (!v11)
          {
            v12 = *(a1 + 8);
            if (v12)
            {
              v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
            }

            v13 = MEMORY[0x277C97AA0](v12);
            LODWORD(v11) = v13;
            *(a1 + 40) = v13;
            v7 = v30;
          }

          v14 = sub_2764AC69C(a3, v11, v7);
          goto LABEL_48;
        }

        goto LABEL_41;
      }

      if (v10 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v22 = *(a1 + 24);
          if (!v22)
          {
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = MEMORY[0x277C97A80](v23);
            LODWORD(v22) = v24;
            *(a1 + 24) = v24;
            v7 = v30;
          }

          v14 = sub_2764AC00C(a3, v22, v7);
          goto LABEL_48;
        }

LABEL_41:
        if (v8)
        {
          v25 = (v8 & 7) == 4;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v14 = google::protobuf::internal::UnknownFieldParse();
LABEL_48:
        v30 = v14;
        if (!v14)
        {
          goto LABEL_56;
        }

        goto LABEL_49;
      }

      if (v10 != 2 || v8 != 16)
      {
        goto LABEL_41;
      }

      v5 |= 8u;
      v17 = (v7 + 1);
      LODWORD(v16) = *v7;
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_26;
      }

      v18 = *v17;
      v16 = (v16 + (v18 << 7) - 128);
      if ((v18 & 0x80000000) == 0)
      {
        v17 = (v7 + 2);
LABEL_26:
        v30 = v17;
        *(a1 + 48) = v16;
        goto LABEL_49;
      }

      v28 = google::protobuf::internal::VarintParseSlow64(v7, v16);
      v30 = v28;
      *(a1 + 48) = v29;
      if (!v28)
      {
LABEL_56:
        v30 = 0;
        goto LABEL_2;
      }

LABEL_49:
      if (sub_2763D4D98(a3, &v30))
      {
        goto LABEL_2;
      }
    }

    v7 = (v30 + 2);
LABEL_6:
    v30 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

unsigned __int8 *sub_27642A9A8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 48);
    *a2 = 16;
    if (v12 > 0x7F)
    {
      a2[1] = v12 | 0x80;
      v13 = v12 >> 7;
      if (v12 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++a2;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(a2 - 1) = v14;
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_28;
      }
    }

LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(a1 + 24);
  *a2 = 10;
  v7 = *(v6 + 11);
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

  a2 = TSD::FillArchive::_InternalSerialize(v6, v8, a3);
  if ((v5 & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_4;
  }

LABEL_28:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(a1 + 52);
  *a2 = 29;
  *(a2 + 1) = v16;
  a2 += 5;
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_41;
  }

LABEL_31:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(a1 + 32);
  *a2 = 34;
  v18 = *(v17 + 5);
  if (v18 > 0x7F)
  {
    a2[1] = v18 | 0x80;
    v20 = v18 >> 7;
    if (v18 >> 14)
    {
      v19 = a2 + 3;
      do
      {
        *(v19 - 1) = v20 | 0x80;
        v21 = v20 >> 7;
        ++v19;
        v22 = v20 >> 14;
        v20 >>= 7;
      }

      while (v22);
      *(v19 - 1) = v21;
    }

    else
    {
      a2[2] = v20;
      v19 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v18;
    v19 = a2 + 2;
  }

  a2 = TSD::ShadowArchive::_InternalSerialize(v17, v19, a3);
  if ((v5 & 4) != 0)
  {
LABEL_41:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v23 = *(a1 + 40);
    *a2 = 42;
    v24 = *(v23 + 5);
    if (v24 > 0x7F)
    {
      a2[1] = v24 | 0x80;
      v26 = v24 >> 7;
      if (v24 >> 14)
      {
        v25 = a2 + 3;
        do
        {
          *(v25 - 1) = v26 | 0x80;
          v27 = v26 >> 7;
          ++v25;
          v28 = v26 >> 14;
          v26 >>= 7;
        }

        while (v28);
        *(v25 - 1) = v27;
      }

      else
      {
        a2[2] = v26;
        v25 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v24;
      v25 = a2 + 2;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v23, v25, a3);
  }

LABEL_51:
  v29 = *(a1 + 8);
  if ((v29 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v29 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27642ACA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    v4 = 0;
    goto LABEL_19;
  }

  if (v2)
  {
    v5 = TSD::FillArchive::ByteSizeLong(*(a1 + 24));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    v6 = TSD::ShadowArchive::ByteSizeLong(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 40));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }

LABEL_12:
    v8 = *(a1 + 48);
    if (v8 < 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v9;
    goto LABEL_16;
  }

  if ((v2 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  if ((v2 & 0x10) != 0)
  {
    v4 = v3 + 5;
  }

  else
  {
    v4 = v3;
  }

LABEL_19:
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