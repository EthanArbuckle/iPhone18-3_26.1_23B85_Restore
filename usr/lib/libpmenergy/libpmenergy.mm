__n128 sub_2998247E8(uint64_t a1, unint64_t *a2, uint64_t a3, unsigned int a4, _BYTE *a5, int a6)
{
  if (a5)
  {
    *a5 = 0;
  }

  v6 = *(a1 + 148);
  if ((a4 & 0x80000000) == 0)
  {
    *(a3 + 148) = v6 + *(a2 + 148) * a4;
    *(a3 + 156) = *(a1 + 156) + *(a2 + 156) * a4;
    *(a3 + 164) = *(a1 + 164) + *(a2 + 164) * a4;
    *(a3 + 172) = *(a1 + 172) + *(a2 + 172) * a4;
    *(a3 + 140) = *(a1 + 140) + *(a2 + 140) * a4;
    *(a3 + 132) = *(a1 + 132) + *(a2 + 132) * a4;
    v7 = *(a1 + 200) + a2[25] * a4;
    *(a3 + 192) = *(a1 + 192) + a2[24] * a4;
    *(a3 + 200) = v7;
    v8 = *(a1 + 216) + a2[27] * a4;
    *(a3 + 208) = *(a1 + 208) + a2[26] * a4;
    *(a3 + 216) = v8;
    v9 = *(a1 + 232) + a2[29] * a4;
    *(a3 + 224) = *(a1 + 224) + a2[28] * a4;
    *(a3 + 232) = v9;
    v10 = *(a1 + 304);
    v11 = a2[38];
    v12 = *(a1 + 312) + a2[39] * a4;
    v13 = *(a1 + 328) + a2[41] * a4;
    *(a3 + 320) = *(a1 + 320) + a2[40] * a4;
    *(a3 + 328) = v13;
    v14 = *(a1 + 264) + a2[33] * a4;
    *(a3 + 256) = *(a1 + 256) + a2[32] * a4;
    *(a3 + 264) = v14;
    v15 = *(a1 + 280) + a2[35] * a4;
    *(a3 + 272) = *(a1 + 272) + a2[34] * a4;
    *(a3 + 280) = v15;
    v16 = *(a1 + 296) + a2[37] * a4;
    *(a3 + 288) = *(a1 + 288) + a2[36] * a4;
    *(a3 + 296) = v16;
    *(a3 + 304) = v10 + v11 * a4;
    *(a3 + 312) = v12;
    v17 = *(a1 + 344) + a2[43] * a4;
    *(a3 + 336) = *(a1 + 336) + a2[42] * a4;
    *(a3 + 344) = v17;
    v18 = *(a1 + 360) + a2[45] * a4;
    *(a3 + 352) = *(a1 + 352) + a2[44] * a4;
    *(a3 + 360) = v18;
    v19 = *(a1 + 376) + a2[47] * a4;
    *(a3 + 368) = *(a1 + 368) + a2[46] * a4;
    *(a3 + 376) = v19;
    *(a3 + 384) = *(a1 + 384) + a2[48] * a4;
    if (a6 > 1)
    {
      v20 = *(a1 + 416) + a2[52] * a4;
      *(a3 + 408) = *(a1 + 408) + a2[51] * a4;
      *(a3 + 416) = v20;
      v21 = *(a1 + 432) + a2[54] * a4;
      *(a3 + 424) = *(a1 + 424) + a2[53] * a4;
      *(a3 + 432) = v21;
      if (a6 != 2)
      {
        v22 = *(a1 + 448) + a2[56] * a4;
        *(a3 + 440) = *(a1 + 440) + a2[55] * a4;
        *(a3 + 448) = v22;
      }
    }

    v23 = *(a1 + 392) + a2[49] * a4;
    goto LABEL_137;
  }

  v24 = *(a2 + 148);
  v25 = v6 >= v24;
  v26 = v6 - v24;
  if (v25)
  {
    *(a3 + 148) = v26;
    v27 = (a1 + 156);
    v28 = *(a1 + 156);
    v29 = (a2 + 156);
    v30 = *(a2 + 156);
    if (v28 >= v30)
    {
      goto LABEL_15;
    }

    if (!a5)
    {
      sub_299825A94(a1 + 156, a2 + 156, a3);
    }

    goto LABEL_14;
  }

  if (!a5)
  {
    sub_299826D2C(a1 + 148, a2 + 148, a3);
  }

  *a5 = 1;
  *(a3 + 148) = 0;
  v27 = (a1 + 156);
  v28 = *(a1 + 156);
  v29 = (a2 + 156);
  v30 = *(a2 + 156);
  *(a3 + 148) = *(a1 + 148) - *(a2 + 148);
  if (v28 < v30)
  {
LABEL_14:
    *a5 = 1;
    *(a3 + 156) = 0;
    v28 = *v27;
    v30 = *v29;
  }

LABEL_15:
  *(a3 + 156) = v28 - v30;
  v31 = *(a1 + 164);
  v32 = *(a2 + 164);
  v25 = v31 >= v32;
  v33 = v31 - v32;
  if (v25)
  {
    *(a3 + 164) = v33;
    v34 = (a1 + 172);
    v35 = *(a1 + 172);
    v36 = (a2 + 172);
    v37 = *(a2 + 172);
    if (v35 >= v37)
    {
      goto LABEL_22;
    }

    if (!a5)
    {
      sub_299825B1C(a1 + 172, a2 + 172, a3);
    }

    goto LABEL_21;
  }

  if (!a5)
  {
    sub_299826CA4(a1 + 164, a2 + 164, a3);
  }

  *a5 = 1;
  *(a3 + 164) = 0;
  v34 = (a1 + 172);
  v35 = *(a1 + 172);
  v36 = (a2 + 172);
  v37 = *(a2 + 172);
  *(a3 + 164) = *(a1 + 164) - *(a2 + 164);
  if (v35 < v37)
  {
LABEL_21:
    *a5 = 1;
    *(a3 + 172) = 0;
    v35 = *v34;
    v37 = *v36;
  }

LABEL_22:
  v38 = (a1 + 132);
  *(a3 + 172) = v35 - v37;
  v39 = *(a1 + 140);
  v40 = *(a2 + 140);
  v25 = v39 >= v40;
  v41 = v39 - v40;
  if (v25)
  {
    *(a3 + 140) = v41;
    v42 = *v38;
    v43 = *(a2 + 132);
    if (*v38 >= v43)
    {
      goto LABEL_29;
    }

    if (!a5)
    {
      sub_299825BA4(a1 + 132, a2 + 132, a3);
    }

    goto LABEL_28;
  }

  if (!a5)
  {
    sub_299826C1C(a1 + 140, a2 + 140, a3);
  }

  *a5 = 1;
  *(a3 + 140) = 0;
  *(a3 + 140) = *(a1 + 140) - *(a2 + 140);
  v42 = *v38;
  v43 = *(a2 + 132);
  if (*v38 < v43)
  {
LABEL_28:
    *a5 = 1;
    *(a3 + 132) = 0;
    v42 = *v38;
    v43 = *(a2 + 132);
  }

LABEL_29:
  *(a3 + 132) = v42 - v43;
  v44 = *(a1 + 192);
  v45 = a2[24];
  v25 = v44 >= v45;
  v46 = v44 - v45;
  if (v25)
  {
    *(a3 + 192) = v46;
    v47 = (a1 + 200);
    v48 = *(a1 + 200);
    v49 = a2 + 25;
    v50 = a2[25];
    if (v48 >= v50)
    {
      goto LABEL_36;
    }

    if (!a5)
    {
      sub_299825C2C(a1 + 200, (a2 + 25), a3);
    }

    goto LABEL_35;
  }

  if (!a5)
  {
    sub_299826B94(a1 + 192, (a2 + 24), a3);
  }

  *a5 = 1;
  *(a3 + 192) = 0;
  v47 = (a1 + 200);
  v48 = *(a1 + 200);
  v49 = a2 + 25;
  v50 = a2[25];
  *(a3 + 192) = *(a1 + 192) - a2[24];
  if (v48 < v50)
  {
LABEL_35:
    *a5 = 1;
    *(a3 + 200) = 0;
    v48 = *v47;
    v50 = *v49;
  }

LABEL_36:
  *(a3 + 200) = v48 - v50;
  v51 = *(a1 + 208);
  v52 = a2[26];
  v25 = v51 >= v52;
  v53 = v51 - v52;
  if (v25)
  {
    *(a3 + 208) = v53;
    v54 = (a1 + 216);
    v55 = *(a1 + 216);
    v56 = a2 + 27;
    v57 = a2[27];
    if (v55 >= v57)
    {
      goto LABEL_43;
    }

    if (!a5)
    {
      sub_299825CB4(a1 + 216, (a2 + 27), a3);
    }

    goto LABEL_42;
  }

  if (!a5)
  {
    sub_299826B0C(a1 + 208, (a2 + 26), a3);
  }

  *a5 = 1;
  *(a3 + 208) = 0;
  v54 = (a1 + 216);
  v55 = *(a1 + 216);
  v56 = a2 + 27;
  v57 = a2[27];
  *(a3 + 208) = *(a1 + 208) - a2[26];
  if (v55 < v57)
  {
LABEL_42:
    *a5 = 1;
    *(a3 + 216) = 0;
    v55 = *v54;
    v57 = *v56;
  }

LABEL_43:
  *(a3 + 216) = v55 - v57;
  v58 = *(a1 + 224);
  v59 = a2[28];
  v25 = v58 >= v59;
  v60 = v58 - v59;
  if (v25)
  {
    *(a3 + 224) = v60;
    v61 = (a1 + 232);
    v62 = *(a1 + 232);
    v63 = a2 + 29;
    v64 = a2[29];
    if (v62 >= v64)
    {
      goto LABEL_50;
    }

    if (!a5)
    {
      sub_299825D3C(a1 + 232, (a2 + 29), a3);
    }

    goto LABEL_49;
  }

  if (!a5)
  {
    sub_299826A84(a1 + 224, (a2 + 28), a3);
  }

  *a5 = 1;
  *(a3 + 224) = 0;
  v61 = (a1 + 232);
  v62 = *(a1 + 232);
  v63 = a2 + 29;
  v64 = a2[29];
  *(a3 + 224) = *(a1 + 224) - a2[28];
  if (v62 < v64)
  {
LABEL_49:
    *a5 = 1;
    *(a3 + 232) = 0;
    v62 = *v61;
    v64 = *v63;
  }

LABEL_50:
  *(a3 + 232) = v62 - v64;
  v65 = *(a1 + 312);
  v66 = a2[39];
  v25 = v65 >= v66;
  v67 = v65 - v66;
  if (v25)
  {
    *(a3 + 312) = v67;
    v68 = *(a1 + 320);
    v69 = a2[40];
    if (v68 >= v69)
    {
      goto LABEL_57;
    }

    v70 = (a1 + 320);
    v71 = a2 + 40;
    if (!a5)
    {
      sub_299825DC4(a1 + 320, (a2 + 40), a3);
    }

    goto LABEL_56;
  }

  if (!a5)
  {
    sub_2998269FC(a1 + 312, (a2 + 39), a3);
  }

  *a5 = 1;
  *(a3 + 312) = 0;
  v68 = *(a1 + 320);
  v69 = a2[40];
  *(a3 + 312) = *(a1 + 312) - a2[39];
  if (v68 < v69)
  {
    v70 = (a1 + 320);
    v71 = a2 + 40;
LABEL_56:
    *a5 = 1;
    *(a3 + 320) = 0;
    v68 = *v70;
    v69 = *v71;
  }

LABEL_57:
  *(a3 + 320) = v68 - v69;
  v72 = *(a1 + 328);
  v73 = a2[41];
  v25 = v72 >= v73;
  v74 = v72 - v73;
  if (v25)
  {
    *(a3 + 328) = v74;
    v75 = *(a1 + 256);
    v76 = a2[32];
    if (v75 >= v76)
    {
      goto LABEL_64;
    }

    v77 = (a1 + 256);
    v78 = a2 + 32;
    if (!a5)
    {
      sub_299825E4C(a1 + 256, (a2 + 32), a3);
    }

    goto LABEL_63;
  }

  if (!a5)
  {
    sub_299826974(a1 + 328, (a2 + 41), a3);
  }

  *a5 = 1;
  *(a3 + 328) = 0;
  *(a3 + 328) = *(a1 + 328) - a2[41];
  v75 = *(a1 + 256);
  v76 = a2[32];
  if (v75 < v76)
  {
    v77 = (a1 + 256);
    v78 = a2 + 32;
LABEL_63:
    *a5 = 1;
    *(a3 + 256) = 0;
    v75 = *v77;
    v76 = *v78;
  }

LABEL_64:
  *(a3 + 256) = v75 - v76;
  v79 = *(a1 + 264);
  v80 = a2[33];
  v25 = v79 >= v80;
  v81 = v79 - v80;
  if (v25)
  {
    *(a3 + 264) = v81;
    v82 = *(a1 + 272);
    v83 = a2[34];
    if (v82 >= v83)
    {
      goto LABEL_71;
    }

    v84 = (a1 + 272);
    v85 = a2 + 34;
    if (!a5)
    {
      sub_299825ED4(a1 + 272, (a2 + 34), a3);
    }

    goto LABEL_70;
  }

  if (!a5)
  {
    sub_2998268EC(a1 + 264, (a2 + 33), a3);
  }

  *a5 = 1;
  *(a3 + 264) = 0;
  v82 = *(a1 + 272);
  v83 = a2[34];
  *(a3 + 264) = *(a1 + 264) - a2[33];
  if (v82 < v83)
  {
    v84 = (a1 + 272);
    v85 = a2 + 34;
LABEL_70:
    *a5 = 1;
    *(a3 + 272) = 0;
    v82 = *v84;
    v83 = *v85;
  }

LABEL_71:
  *(a3 + 272) = v82 - v83;
  v86 = *(a1 + 280);
  v87 = a2[35];
  v25 = v86 >= v87;
  v88 = v86 - v87;
  if (v25)
  {
    *(a3 + 280) = v88;
    v89 = *(a1 + 288);
    v90 = a2[36];
    if (v89 >= v90)
    {
      goto LABEL_78;
    }

    v91 = (a1 + 288);
    v92 = a2 + 36;
    if (!a5)
    {
      sub_299825F5C(a1 + 288, (a2 + 36), a3);
    }

    goto LABEL_77;
  }

  if (!a5)
  {
    sub_299826864(a1 + 280, (a2 + 35), a3);
  }

  *a5 = 1;
  *(a3 + 280) = 0;
  v89 = *(a1 + 288);
  v90 = a2[36];
  *(a3 + 280) = *(a1 + 280) - a2[35];
  if (v89 < v90)
  {
    v91 = (a1 + 288);
    v92 = a2 + 36;
LABEL_77:
    *a5 = 1;
    *(a3 + 288) = 0;
    v89 = *v91;
    v90 = *v92;
  }

LABEL_78:
  *(a3 + 288) = v89 - v90;
  v93 = *(a1 + 296);
  v94 = a2[37];
  v25 = v93 >= v94;
  v95 = v93 - v94;
  if (v25)
  {
    *(a3 + 296) = v95;
    v96 = *(a1 + 304);
    v97 = a2[38];
    if (v96 >= v97)
    {
      goto LABEL_85;
    }

    v98 = (a1 + 304);
    v99 = a2 + 38;
    if (!a5)
    {
      sub_299825FE4(a1 + 304, (a2 + 38), a3);
    }

    goto LABEL_84;
  }

  if (!a5)
  {
    sub_2998267DC(a1 + 296, (a2 + 37), a3);
  }

  *a5 = 1;
  *(a3 + 296) = 0;
  v96 = *(a1 + 304);
  v97 = a2[38];
  *(a3 + 296) = *(a1 + 296) - a2[37];
  if (v96 < v97)
  {
    v98 = (a1 + 304);
    v99 = a2 + 38;
LABEL_84:
    *a5 = 1;
    *(a3 + 304) = 0;
    v96 = *v98;
    v97 = *v99;
  }

LABEL_85:
  *(a3 + 304) = v96 - v97;
  v100 = *(a1 + 336);
  v101 = a2[42];
  v25 = v100 >= v101;
  v102 = v100 - v101;
  if (v25)
  {
    *(a3 + 336) = v102;
    v103 = *(a1 + 344);
    v104 = a2[43];
    if (v103 >= v104)
    {
      goto LABEL_92;
    }

    v105 = (a1 + 344);
    v106 = a2 + 43;
    if (!a5)
    {
      sub_29982606C(a1 + 344, (a2 + 43), a3);
    }

    goto LABEL_91;
  }

  if (!a5)
  {
    sub_299826754(a1 + 336, (a2 + 42), a3);
  }

  *a5 = 1;
  *(a3 + 336) = 0;
  v103 = *(a1 + 344);
  v104 = a2[43];
  *(a3 + 336) = *(a1 + 336) - a2[42];
  if (v103 < v104)
  {
    v105 = (a1 + 344);
    v106 = a2 + 43;
LABEL_91:
    *a5 = 1;
    *(a3 + 344) = 0;
    v103 = *v105;
    v104 = *v106;
  }

LABEL_92:
  *(a3 + 344) = v103 - v104;
  v107 = *(a1 + 352);
  v108 = a2[44];
  v25 = v107 >= v108;
  v109 = v107 - v108;
  if (v25)
  {
    *(a3 + 352) = v109;
    v110 = *(a1 + 360);
    v111 = a2[45];
    if (v110 >= v111)
    {
      goto LABEL_99;
    }

    v112 = (a1 + 360);
    v113 = a2 + 45;
    if (!a5)
    {
      sub_2998260F4(a1 + 360, (a2 + 45), a3);
    }

    goto LABEL_98;
  }

  if (!a5)
  {
    sub_2998266CC(a1 + 352, (a2 + 44), a3);
  }

  *a5 = 1;
  *(a3 + 352) = 0;
  v110 = *(a1 + 360);
  v111 = a2[45];
  *(a3 + 352) = *(a1 + 352) - a2[44];
  if (v110 < v111)
  {
    v112 = (a1 + 360);
    v113 = a2 + 45;
LABEL_98:
    *a5 = 1;
    *(a3 + 360) = 0;
    v110 = *v112;
    v111 = *v113;
  }

LABEL_99:
  *(a3 + 360) = v110 - v111;
  v114 = *(a1 + 368);
  v115 = a2[46];
  v25 = v114 >= v115;
  v116 = v114 - v115;
  if (v25)
  {
    *(a3 + 368) = v116;
    v117 = *(a1 + 376);
    v118 = a2[47];
    if (v117 >= v118)
    {
      goto LABEL_106;
    }

    v119 = (a1 + 376);
    v120 = a2 + 47;
    if (!a5)
    {
      sub_29982617C(a1 + 376, (a2 + 47), a3);
    }

    goto LABEL_105;
  }

  if (!a5)
  {
    sub_299826644(a1 + 368, (a2 + 46), a3);
  }

  *a5 = 1;
  *(a3 + 368) = 0;
  v117 = *(a1 + 376);
  v118 = a2[47];
  *(a3 + 368) = *(a1 + 368) - a2[46];
  if (v117 < v118)
  {
    v119 = (a1 + 376);
    v120 = a2 + 47;
LABEL_105:
    *a5 = 1;
    *(a3 + 376) = 0;
    v117 = *v119;
    v118 = *v120;
  }

LABEL_106:
  *(a3 + 376) = v117 - v118;
  v121 = *(a1 + 384);
  v122 = a2[48];
  if (v121 < v122)
  {
    if (!a5)
    {
      sub_2998265BC(a1 + 384, (a2 + 48), a3);
    }

    *a5 = 1;
    *(a3 + 384) = 0;
    v121 = *(a1 + 384);
    v122 = a2[48];
  }

  *(a3 + 384) = v121 - v122;
  if (a6 < 2)
  {
    goto LABEL_133;
  }

  v123 = *(a1 + 408);
  v124 = a2[51];
  v25 = v123 >= v124;
  v125 = v123 - v124;
  if (v25)
  {
    *(a3 + 408) = v125;
    v126 = *(a1 + 416);
    v127 = a2[52];
    if (v126 >= v127)
    {
      goto LABEL_117;
    }

    v128 = (a1 + 416);
    v129 = a2 + 52;
    if (!a5)
    {
      sub_299826204(a1 + 416, (a2 + 52), a3);
    }

    goto LABEL_116;
  }

  if (!a5)
  {
    sub_299826534(a1 + 408, (a2 + 51), a3);
  }

  *a5 = 1;
  *(a3 + 408) = 0;
  v126 = *(a1 + 416);
  v127 = a2[52];
  *(a3 + 408) = *(a1 + 408) - a2[51];
  if (v126 < v127)
  {
    v128 = (a1 + 416);
    v129 = a2 + 52;
LABEL_116:
    *a5 = 1;
    *(a3 + 416) = 0;
    v126 = *v128;
    v127 = *v129;
  }

LABEL_117:
  *(a3 + 416) = v126 - v127;
  v130 = *(a1 + 424);
  v131 = a2[53];
  v25 = v130 >= v131;
  v132 = v130 - v131;
  if (v25)
  {
    *(a3 + 424) = v132;
    v133 = *(a1 + 432);
    v134 = a2[54];
    if (v133 >= v134)
    {
      goto LABEL_124;
    }

    v135 = (a1 + 432);
    v136 = a2 + 54;
    if (!a5)
    {
      sub_29982628C(a1 + 432, (a2 + 54), a3);
    }

    goto LABEL_123;
  }

  if (!a5)
  {
    sub_2998264AC(a1 + 424, (a2 + 53), a3);
  }

  *a5 = 1;
  *(a3 + 424) = 0;
  v133 = *(a1 + 432);
  v134 = a2[54];
  *(a3 + 424) = *(a1 + 424) - a2[53];
  if (v133 < v134)
  {
    v135 = (a1 + 432);
    v136 = a2 + 54;
LABEL_123:
    *a5 = 1;
    *(a3 + 432) = 0;
    v133 = *v135;
    v134 = *v136;
  }

LABEL_124:
  *(a3 + 432) = v133 - v134;
  if (a6 != 2)
  {
    v137 = *(a1 + 440);
    v138 = a2[55];
    v25 = v137 >= v138;
    v139 = v137 - v138;
    if (v25)
    {
      *(a3 + 440) = v139;
      v140 = *(a1 + 448);
      v141 = a2[56];
      if (v140 >= v141)
      {
LABEL_132:
        *(a3 + 448) = v140 - v141;
        goto LABEL_133;
      }

      v142 = (a1 + 448);
      v143 = a2 + 56;
      if (!a5)
      {
        sub_299826314(a1 + 448, (a2 + 56), a3);
      }
    }

    else
    {
      if (!a5)
      {
        sub_29982639C(a1 + 440, (a2 + 55), a3);
      }

      *a5 = 1;
      *(a3 + 440) = 0;
      v140 = *(a1 + 448);
      v141 = a2[56];
      *(a3 + 440) = *(a1 + 440) - a2[55];
      if (v140 >= v141)
      {
        goto LABEL_132;
      }

      v142 = (a1 + 448);
      v143 = a2 + 56;
    }

    *a5 = 1;
    *(a3 + 448) = 0;
    v140 = *v142;
    v141 = *v143;
    goto LABEL_132;
  }

LABEL_133:
  v144 = *(a1 + 392);
  v145 = a2[49];
  if (v144 < v145)
  {
    if (!a5)
    {
      sub_299826424(a1 + 392, (a2 + 49), a3);
    }

    *a5 = 1;
    *(a3 + 392) = 0;
    v144 = *(a1 + 392);
    v145 = a2[49];
  }

  v23 = v144 - v145;
LABEL_137:
  *(a3 + 392) = v23;
  if (a3 != a1)
  {
    *a3 = *a1;
    v146 = *(a1 + 4);
    v147 = *(a1 + 20);
    v148 = *(a1 + 36);
    *(a3 + 52) = *(a1 + 52);
    *(a3 + 36) = v148;
    *(a3 + 20) = v147;
    *(a3 + 4) = v146;
    result = *(a1 + 68);
    v150 = *(a1 + 84);
    v151 = *(a1 + 100);
    *(a3 + 116) = *(a1 + 116);
    *(a3 + 100) = v151;
    *(a3 + 84) = v150;
    *(a3 + 68) = result;
  }

  return result;
}

double pm_mach_time_to_ns(unint64_t a1)
{
  if (qword_2A14BF400 != -1)
  {
    sub_299826DB4();
  }

  return *&qword_2A14BF408 * a1;
}

double sub_299825574()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1;
  qword_2A14BF408 = *&result;
  return result;
}

double pm_energy_impact_internal(unint64_t *a1, double a2)
{
  v2 = a1[46];
  if (v2)
  {
    return v2 / 1000000.0;
  }

  if (qword_2A197CD28 != -1)
  {
    sub_299826DC8();
  }

  v6 = *(a1 + 140) + *(a1 + 132);
  if (qword_2A14BF400 != -1)
  {
    sub_299826DB4();
  }

  return (*(a1 + 156) * a2 + *&qword_2A14BF408 * v6 * *&xmmword_2A14BF410 / 1000000000.0 + *&xmmword_2A14BF450 * a1[42] / 1000000000.0 + *&qword_2A14BF460 * a1[40] + *(&xmmword_2A14BF450 + 1) * (a1[39] + a1[41] * dword_2A14BF488) + *&xmmword_2A14BF470 * a1[25] + unk_2A14BF468 * a1[24]) * 100.0;
}

double pm_energy_impact(unint64_t *a1)
{
  if (qword_2A197CD28 != -1)
  {
    sub_299826DC8();
  }

  v2 = *(&xmmword_2A14BF410 + 1);

  return pm_energy_impact_internal(a1, v2);
}

void sub_29982573C()
{
  v15 = *MEMORY[0x29EDCA608];
  dword_2A14BF488 = getpagesize();
  if ((byte_2A14BF510 & 1) == 0)
  {
    v0 = IORegistryEntryFromPath(*MEMORY[0x29EDBB110], "IODeviceTree:/");
    if (v0)
    {
      v1 = v0;
      CFProperty = IORegistryEntryCreateCFProperty(v0, @"board-id", 0, 0);
      if (CFProperty)
      {
        v3 = CFProperty;
        v4 = CFGetTypeID(CFProperty);
        if (v4 == CFDataGetTypeID() && CFDataGetLength(v3) <= 0x80)
        {
          CFDataGetBytePtr(v3);
          __memcpy_chk();
        }

        CFRelease(v3);
      }

      IOObjectRelease(v1);
    }

    byte_2A14BF510 = 1;
  }

  snprintf(__str, 0xFFuLL, "%s/%s.plist", "/usr/share/pmenergy", byte_2A14BF490);
  v5 = open(__str, 0);
  if (v5 < 0)
  {
    snprintf(__str, 0xFFuLL, "%s/%s.plist", "/usr/share/pmenergy", "default");
    v5 = open(__str, 0);
    if (v5 < 0)
    {
      goto LABEL_27;
    }
  }

  v6 = v5;
  v7 = lseek(v5, 0, 2);
  lseek(v6, 0, 0);
  v8 = malloc_type_malloc(v7, 0x1FD15E5FuLL);
  if (!v8 || read(v6, v8, v7) != v7)
  {
    LOBYTE(v12) = 0;
    v10 = 0;
    goto LABEL_20;
  }

  v9 = xpc_create_from_plist();
  v10 = v9;
  if (!v9)
  {
    goto LABEL_17;
  }

  value = xpc_dictionary_get_value(v9, "energy_constants");
  v12 = value;
  if (!value)
  {
LABEL_20:
    if (!v6)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (MEMORY[0x29C2A0710](value) != MEMORY[0x29EDCAA00])
  {
LABEL_17:
    LOBYTE(v12) = 0;
    if (!v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    close(v6);
    goto LABEL_22;
  }

  xpc_dictionary_apply(v12, &unk_2A1F8D490);
  LOBYTE(v12) = 1;
  if (v6)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (v8)
  {
    free(v8);
  }

  if (v10)
  {
    xpc_release(v10);
  }

  if ((v12 & 1) == 0)
  {
LABEL_27:
    qword_2A14BF480 = 0;
    xmmword_2A14BF450 = xmmword_299827010;
    *&qword_2A14BF460 = unk_299827020;
    xmmword_2A14BF470 = xmmword_299827030;
    xmmword_2A14BF410 = xmmword_299826FD0;
    unk_2A14BF420 = unk_299826FE0;
    xmmword_2A14BF430 = xmmword_299826FF0;
    unk_2A14BF440 = unk_299827000;
  }

  v13 = *MEMORY[0x29EDCA608];
}

uint64_t sub_2998259DC(uint64_t a1, const char *a2, void *a3)
{
  if (MEMORY[0x29C2A0710](a3) == MEMORY[0x29EDCAA08])
  {
    v5 = 0;
    while (strcmp(a2, off_29EF6DA30[v5]))
    {
      if (++v5 == 15)
      {
        return 1;
      }
    }

    *(&xmmword_2A14BF410 + v5 * 8) = xpc_double_get_value(a3);
  }

  return 1;
}

uint64_t sub_299825A64()
{
  result = *v2;
  v4 = *v1;
  v5 = *v0;
  return result;
}

size_t sub_299825A7C(const void *a1, uint64_t a2, uint64_t a3, FILE *a4)
{

  return fwrite(a1, 0x13uLL, 1uLL, a4);
}

void sub_299825A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->task_platform_idle_wakeups", v4, "last->task_platform_idle_wakeups", v5, v6);
  __assert_rtn("power_info_arithmetic", "pmenergy.c", 113, "false");
}

void sub_299825B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->task_timer_wakeups_bin_2", v4, "last->task_timer_wakeups_bin_2", v5, v6);
  __assert_rtn("power_info_arithmetic", "pmenergy.c", 115, "false");
}

void sub_299825BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->total_user", v4, "last->total_user", v5, v6);
  __assert_rtn("power_info_arithmetic", "pmenergy.c", 117, "false");
}

void sub_299825C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->sent_packets", v4, "last->sent_packets", v5, v6);
  __assert_rtn("network_stats_arithmetic", "pmenergy.c", 123, "false");
}

void sub_299825CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->sent_bytes", v4, "last->sent_bytes", v5, v6);
  __assert_rtn("network_stats_arithmetic", "pmenergy.c", 125, "false");
}

void sub_299825D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->total_wait_sfi_state_time", v4, "last->total_wait_sfi_state_time", v5, v6);
  __assert_rtn("wait_info_arithmetic", "pmenergy.c", 131, "false");
}

void sub_299825DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->diskio_byteswritten", v4, "last->diskio_byteswritten", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 144, "false");
}

void sub_299825E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->qos_default", v4, "last->qos_default", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 147, "false");
}

void sub_299825ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->qos_background", v4, "last->qos_background", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 149, "false");
}

void sub_299825F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->qos_legacy", v4, "last->qos_legacy", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 151, "false");
}

void sub_299825FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->qos_user_interactive", v4, "last->qos_user_interactive", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 153, "false");
}

void sub_29982606C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->windowserver_gpu_ns", v4, "last->windowserver_gpu_ns", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 156, "false");
}

void sub_2998260F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->windowserver_total_work", v4, "last->windowserver_total_work", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 158, "false");
}

void sub_29982617C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->task_ptime", v4, "last->task_ptime", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 161, "false");
}

void sub_299826204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->cycles", v4, "last->cycles", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 165, "false");
}

void sub_29982628C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->pcycles", v4, "last->pcycles", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 167, "false");
}

void sub_299826314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->ane_energy_nj", v4, "last->ane_energy_nj", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 171, "false");
}

void sub_29982639C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->ane_mach_time", v4, "last->ane_mach_time", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 170, "false");
}

void sub_299826424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->interval", v4, "last->interval", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 175, "false");
}

void sub_2998264AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->pinstructions", v4, "last->pinstructions", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 166, "false");
}

void sub_299826534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->instructions", v4, "last->instructions", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 164, "false");
}

void sub_2998265BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->task_pset_switches", v4, "last->task_pset_switches", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 162, "false");
}

void sub_299826644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->task_energy", v4, "last->task_energy", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 160, "false");
}

void sub_2998266CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->windowserver_work", v4, "last->windowserver_work", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 157, "false");
}

void sub_299826754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->gpu_ns", v4, "last->gpu_ns", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 155, "false");
}

void sub_2998267DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->qos_user_initiated", v4, "last->qos_user_initiated", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 152, "false");
}

void sub_299826864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->qos_utility", v4, "last->qos_utility", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 150, "false");
}

void sub_2998268EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->qos_maintenance", v4, "last->qos_maintenance", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 148, "false");
}

void sub_299826974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->pageins", v4, "last->pageins", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 145, "false");
}

void sub_2998269FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->diskio_bytesread", v4, "last->diskio_bytesread", v5, v6);
  __assert_rtn("pm_task_arithmetic_version", "pmenergy.c", 143, "false");
}

void sub_299826A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->total_wait_state_time", v4, "last->total_wait_state_time", v5, v6);
  __assert_rtn("wait_info_arithmetic", "pmenergy.c", 130, "false");
}

void sub_299826B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->recv_bytes", v4, "last->recv_bytes", v5, v6);
  __assert_rtn("network_stats_arithmetic", "pmenergy.c", 124, "false");
}

void sub_299826B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->recv_packets", v4, "last->recv_packets", v5, v6);
  __assert_rtn("network_stats_arithmetic", "pmenergy.c", 122, "false");
}

void sub_299826C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->total_system", v4, "last->total_system", v5, v6);
  __assert_rtn("power_info_arithmetic", "pmenergy.c", 116, "false");
}

void sub_299826CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->task_timer_wakeups_bin_1", v4, "last->task_timer_wakeups_bin_1", v5, v6);
  __assert_rtn("power_info_arithmetic", "pmenergy.c", 114, "false");
}

void sub_299826D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_299825A7C("Underflow occured!\n", a2, a3, *MEMORY[0x29EDCA610]);
  v3 = sub_299825A64();
  fprintf(v3, "%s: %llu\n%s: %llu\nfactor: %d\n", "current->task_interrupt_wakeups", v4, "last->task_interrupt_wakeups", v5, v6);
  __assert_rtn("power_info_arithmetic", "pmenergy.c", 112, "false");
}