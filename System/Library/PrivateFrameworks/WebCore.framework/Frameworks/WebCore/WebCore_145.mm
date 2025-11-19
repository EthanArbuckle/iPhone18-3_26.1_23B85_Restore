uint64_t vp9_svc_constrain_inter_layer_pred(uint64_t result)
{
  v1 = (result + 194512);
  v2 = (result + 172128);
  v3 = *(result + 754544);
  v4 = *(result + 926852);
  if (v4 == 1 || v4 == 2 && !*(result + 13936 * *(result + 754548) + 772756) && !*(result + 926994) || *(result + 4 * v3 + 926648))
  {
    v5 = result + 172048;
    v6 = *v1;
    if (*v1 != -1 && *(v5 + 4 * v6) != -1)
    {
      v7 = *(result + 739528);
      if ((v7 & 1) != 0 && *v2 != -1)
      {
        v8 = *(result + 172132);
        if (v8 != -1 && (*v2 != 0x4000 || v8 != 0x4000))
        {
          *(result + 739528) = v7 & 0xFFFFFFFE;
        }
      }
    }

    v9 = *(result + 194516);
    if (v9 != -1 && *(v5 + 4 * v9) != -1)
    {
      v10 = *(result + 739528);
      if ((v10 & 2) != 0)
      {
        v11 = *(result + 172304);
        if (v11 != -1)
        {
          v12 = *(result + 172308);
          if (v12 != -1 && (v11 != 0x4000 || v12 != 0x4000))
          {
            *(result + 739528) = v10 & 0xFFFFFFFD;
            if (!*(result + 927132))
            {
              *(result + 194516) = v6;
            }
          }
        }
      }
    }

    v13 = *(result + 194520);
    if (v13 != -1 && *(v5 + 4 * v13) != -1)
    {
      v14 = *(result + 739528);
      if ((v14 & 4) != 0)
      {
        v15 = *(result + 172480);
        if (v15 != -1)
        {
          v16 = *(result + 172484);
          if (v16 != -1 && (v15 != 0x4000 || v16 != 0x4000))
          {
            *(result + 739528) = v14 & 0xFFFFFFFB;
            if (!*(result + 927132))
            {
              *(result + 194520) = v6;
            }
          }
        }
      }
    }
  }

  if (v4 != 1 && *(result + 926168) != 1)
  {
    v18 = result + 926220;
    v19 = v3 - 1;
    v20 = result + 926864;
    v21 = result + 926268;
    v22 = result + 926316;
    if (*v2 != -1)
    {
      v23 = *(result + 172132);
      if (v23 != -1 && (*v2 != 0x4000 || v23 != 0x4000))
      {
        v24 = *v1;
        if ((*v1 & 0x80000000) == 0 && (v24 != *(v18 + 4 * v19) || ((*(v20 + 4 * v19) >> v24) & 1) == 0) && (v24 != *(v21 + 4 * v19) || ((*(v20 + 4 * v19) >> v24) & 1) == 0) && (v24 != *(v22 + 4 * v19) || ((*(v20 + 4 * v19) >> v24) & 1) == 0))
        {
          *(result + 739528) &= ~1u;
        }
      }
    }

    v25 = *(result + 172304);
    if (v25 != -1)
    {
      v26 = *(result + 172308);
      if (v26 != -1 && (v25 != 0x4000 || v26 != 0x4000))
      {
        v27 = *(result + 194516);
        if ((v27 & 0x80000000) == 0 && (v27 != *(v18 + 4 * v19) || ((*(v20 + 4 * v19) >> v27) & 1) == 0) && (v27 != *(v21 + 4 * v19) || ((*(v20 + 4 * v19) >> v27) & 1) == 0) && (v27 != *(v22 + 4 * v19) || ((*(v20 + 4 * v19) >> v27) & 1) == 0))
        {
          *(result + 739528) &= ~2u;
        }
      }
    }
  }

  return result;
}

uint64_t vp9_svc_update_ref_frame(uint64_t result)
{
  v1 = (result + 926168);
  v2 = (result + 754544);
  v3 = (result + 194512);
  v4 = (result + 172048);
  v5 = *(result + 189944);
  if (*(result + 926168) == 1 && *(result + 927004))
  {
    v6 = result + 926864;
    v7 = v5 + 24;
    v8 = *(result + 172972);
    if (!v8 && !*(result + 927132) || (v5 = *v2, (*(v6 + 4 * v5) & 1) != 0))
    {
      v9 = *(result + 172640);
      if ((*v4 & 0x80000000) == 0)
      {
        v10 = (v7 + 224 * *v4);
        if (*v10 >= 1)
        {
          --*v10;
        }
      }

      *v4 = v9;
      ++*(v7 + 224 * v9);
      LODWORD(v5) = *v2;
      v11 = *(result + 754548);
      *(result + 926936) = *v2;
      *(result + 926944) = v11;
    }

    if (!v8 && !*(result + 927132) || (*(v6 + 4 * v5) & 2) != 0)
    {
      v12 = *(result + 172640);
      v13 = *(result + 172052);
      if ((v13 & 0x80000000) == 0)
      {
        v14 = (v7 + 224 * v13);
        if (*v14 >= 1)
        {
          --*v14;
        }
      }

      *(result + 172052) = v12;
      ++*(v7 + 224 * v12);
      *(result + 926937) = v5;
      *(result + 926945) = *(result + 754548);
    }

    if (!v8 && !*(result + 927132) || (*(v6 + 4 * v5) & 4) != 0)
    {
      v15 = *(result + 172640);
      v16 = *(result + 172056);
      if ((v16 & 0x80000000) == 0)
      {
        v17 = (v7 + 224 * v16);
        if (*v17 >= 1)
        {
          --*v17;
        }
      }

      *(result + 172056) = v15;
      ++*(v7 + 224 * v15);
      *(result + 926938) = v5;
      *(result + 926946) = *(result + 754548);
    }

    if (!v8 && !*(result + 927132) || (*(v6 + 4 * v5) & 8) != 0)
    {
      v18 = *(result + 172640);
      v19 = *(result + 172060);
      if ((v19 & 0x80000000) == 0)
      {
        v20 = (v7 + 224 * v19);
        if (*v20 >= 1)
        {
          --*v20;
        }
      }

      *(result + 172060) = v18;
      ++*(v7 + 224 * v18);
      *(result + 926939) = v5;
      *(result + 926947) = *(result + 754548);
    }

    if (!v8 && !*(result + 927132) || (*(v6 + 4 * v5) & 0x10) != 0)
    {
      v21 = *(result + 172640);
      v22 = *(result + 172064);
      if ((v22 & 0x80000000) == 0)
      {
        v23 = (v7 + 224 * v22);
        if (*v23 >= 1)
        {
          --*v23;
        }
      }

      *(result + 172064) = v21;
      ++*(v7 + 224 * v21);
      *(result + 926940) = v5;
      *(result + 926948) = *(result + 754548);
    }

    if (!v8 && !*(result + 927132) || (*(v6 + 4 * v5) & 0x20) != 0)
    {
      v24 = *(result + 172640);
      v25 = *(result + 172068);
      if ((v25 & 0x80000000) == 0)
      {
        v26 = (v7 + 224 * v25);
        if (*v26 >= 1)
        {
          --*v26;
        }
      }

      *(result + 172068) = v24;
      ++*(v7 + 224 * v24);
      *(result + 926941) = v5;
      *(result + 926949) = *(result + 754548);
    }

    if (!v8 && !*(result + 927132) || (*(v6 + 4 * v5) & 0x40) != 0)
    {
      v27 = *(result + 172640);
      v28 = *(result + 172072);
      if ((v28 & 0x80000000) == 0)
      {
        v29 = (v7 + 224 * v28);
        if (*v29 >= 1)
        {
          --*v29;
        }
      }

      *(result + 172072) = v27;
      ++*(v7 + 224 * v27);
      *(result + 926942) = v5;
      *(result + 926950) = *(result + 754548);
    }

    if (!v8 && !*(result + 927132) || (*(v6 + 4 * v5) & 0x80) != 0)
    {
      v30 = *(result + 172640);
      v31 = *(result + 172076);
      if ((v31 & 0x80000000) == 0)
      {
        v32 = (v7 + 224 * v31);
        if (*v32 >= 1)
        {
          --*v32;
        }
      }

      *(result + 172076) = v30;
      ++*(v7 + 224 * v30);
      *(result + 926943) = v5;
      *(result + 926951) = *(result + 754548);
    }

    goto LABEL_67;
  }

  if (*(result + 172972) || *(result + 927132))
  {
    if (*(result + 194556))
    {
      *(result + *v3 + 926936) = *v2;
      *(result + *v3 + 926944) = *(result + 754548);
    }

    if (*(result + 194560))
    {
      *(result + *(result + 194516) + 926936) = *v2;
      *(result + *(result + 194516) + 926944) = *(result + 754548);
    }

    LODWORD(v5) = *v2;
    if (*(result + 194564))
    {
      *(result + *(result + 194520) + 926936) = v5;
      *(result + *(result + 194520) + 926944) = *(result + 754548);
      LODWORD(v5) = *v2;
    }

    goto LABEL_67;
  }

  v50 = v5 + 24;
  LODWORD(v5) = *v2;
  v51 = *(result + 754548);
  *(result + 926936) = *v2;
  *(result + 926944) = v51;
  v52 = *v3;
  if (*v3)
  {
    v53 = *(result + 194516);
    if (v53 && *(result + 194520))
    {
      v54 = *(result + 172640);
      if ((*v4 & 0x80000000) == 0)
      {
        v55 = (v50 + 224 * *v4);
        if (*v55 >= 1)
        {
          --*v55;
        }
      }

      *v4 = v54;
      ++*(v50 + 224 * v54);
    }

    *(result + 926937) = v5;
    *(result + 926945) = v51;
    if (v52 == 1)
    {
      *(result + 926938) = v5;
      *(result + 926946) = v51;
      goto LABEL_173;
    }
  }

  else
  {
    *(result + 926937) = v5;
    *(result + 926945) = v51;
    v53 = *(result + 194516);
  }

  if (v53 != 1 && *(result + 194520) != 1)
  {
    v56 = *(result + 172640);
    v57 = *(result + 172052);
    if ((v57 & 0x80000000) == 0)
    {
      v58 = (v50 + 224 * v57);
      if (*v58 >= 1)
      {
        --*v58;
      }
    }

    *(result + 172052) = v56;
    ++*(v50 + 224 * v56);
  }

  *(result + 926938) = v5;
  *(result + 926946) = v51;
  if (v52 == 2)
  {
    *(result + 926939) = v5;
    *(result + 926947) = v51;
    goto LABEL_181;
  }

LABEL_173:
  if (v53 != 2 && *(result + 194520) != 2)
  {
    v59 = *(result + 172640);
    v60 = *(result + 172056);
    if ((v60 & 0x80000000) == 0)
    {
      v61 = (v50 + 224 * v60);
      if (*v61 >= 1)
      {
        --*v61;
      }
    }

    *(result + 172056) = v59;
    ++*(v50 + 224 * v59);
  }

  *(result + 926939) = v5;
  *(result + 926947) = v51;
  if (v52 == 3)
  {
    *(result + 926940) = v5;
    *(result + 926948) = v51;
    goto LABEL_189;
  }

LABEL_181:
  if (v53 != 3 && *(result + 194520) != 3)
  {
    v62 = *(result + 172640);
    v63 = *(result + 172060);
    if ((v63 & 0x80000000) == 0)
    {
      v64 = (v50 + 224 * v63);
      if (*v64 >= 1)
      {
        --*v64;
      }
    }

    *(result + 172060) = v62;
    ++*(v50 + 224 * v62);
  }

  *(result + 926940) = v5;
  *(result + 926948) = v51;
  if (v52 == 4)
  {
    *(result + 926941) = v5;
    *(result + 926949) = v51;
    goto LABEL_197;
  }

LABEL_189:
  if (v53 != 4 && *(result + 194520) != 4)
  {
    v65 = *(result + 172640);
    v66 = *(result + 172064);
    if ((v66 & 0x80000000) == 0)
    {
      v67 = (v50 + 224 * v66);
      if (*v67 >= 1)
      {
        --*v67;
      }
    }

    *(result + 172064) = v65;
    ++*(v50 + 224 * v65);
  }

  *(result + 926941) = v5;
  *(result + 926949) = v51;
  if (v52 == 5)
  {
    *(result + 926942) = v5;
    *(result + 926950) = v51;
    goto LABEL_205;
  }

LABEL_197:
  if (v53 != 5 && *(result + 194520) != 5)
  {
    v68 = *(result + 172640);
    v69 = *(result + 172068);
    if ((v69 & 0x80000000) == 0)
    {
      v70 = (v50 + 224 * v69);
      if (*v70 >= 1)
      {
        --*v70;
      }
    }

    *(result + 172068) = v68;
    ++*(v50 + 224 * v68);
  }

  *(result + 926942) = v5;
  *(result + 926950) = v51;
  if (v52 == 6)
  {
    *(result + 926943) = v5;
    *(result + 926951) = v51;
LABEL_212:
    if (v53 != 7 && *(result + 194520) != 7)
    {
      v74 = *(result + 172640);
      v75 = *(result + 172076);
      if ((v75 & 0x80000000) == 0)
      {
        v76 = (v50 + 224 * v75);
        if (*v76 >= 1)
        {
          --*v76;
        }
      }

      *(result + 172076) = v74;
      ++*(v50 + 224 * v74);
    }

    goto LABEL_67;
  }

LABEL_205:
  if (v53 != 6 && *(result + 194520) != 6)
  {
    v71 = *(result + 172640);
    v72 = *(result + 172072);
    if ((v72 & 0x80000000) == 0)
    {
      v73 = (v50 + 224 * v72);
      if (*v73 >= 1)
      {
        --*v73;
      }
    }

    *(result + 172072) = v71;
    ++*(v50 + 224 * v71);
  }

  *(result + 926943) = v5;
  *(result + 926951) = v51;
  if (v52 != 7)
  {
    goto LABEL_212;
  }

LABEL_67:
  v33 = *v3;
  v34 = v5;
  v35 = (result + 4 * v5);
  v35[231555] = *v3;
  v36 = *(result + 194516);
  v35[231567] = v36;
  v37 = *(result + 194520);
  v35[231579] = v37;
  if (*v1 == 1)
  {
    goto LABEL_126;
  }

  v38 = result + 926864;
  v39 = *(result + 926864 + 4 * v34);
  v40 = v39 & 0xFFFFFFFE;
  *(result + 926864 + 4 * v34) = v39 & 0xFFFFFFFE;
  if (!v33 && *(result + 194556) || !v36 && *(result + 194560) || !v37 && *(result + 194564))
  {
    v40 = v39 | 1;
    v41 = v39 & 0xFFFFFFFC | 1;
    *(v38 + 4 * v34) = v41;
    if (v33 != 1)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v41 = v39 & 0xFFFFFFFC;
    *(v38 + 4 * v34) = v40 & 0xFFFFFFFD;
    if (v33 != 1)
    {
LABEL_79:
      if ((v36 != 1 || !*(result + 194560)) && (v37 != 1 || !*(result + 194564)))
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }
  }

  if (!*(result + 194556))
  {
    goto LABEL_79;
  }

LABEL_83:
  v41 = v40 | 2;
LABEL_84:
  v42 = v41 & 0xFFFFFFFB;
  *(v38 + 4 * v34) = v41 & 0xFFFFFFFB;
  if (v33 == 2 && *(result + 194556) || v36 == 2 && *(result + 194560) || v37 == 2 && *(result + 194564))
  {
    v42 = v41 | 4;
  }

  v43 = v42 & 0xFFFFFFF7;
  *(v38 + 4 * v34) = v42 & 0xFFFFFFF7;
  if (v33 == 3 && *(result + 194556) || v36 == 3 && *(result + 194560) || v37 == 3 && *(result + 194564))
  {
    v43 = v42 | 8;
  }

  v44 = v43 & 0xFFFFFFEF;
  *(v38 + 4 * v34) = v43 & 0xFFFFFFEF;
  if (v33 == 4 && *(result + 194556) || v36 == 4 && *(result + 194560) || v37 == 4 && *(result + 194564))
  {
    v44 = v43 | 0x10;
  }

  v45 = v44 & 0xFFFFFFDF;
  *(v38 + 4 * v34) = v44 & 0xFFFFFFDF;
  if (v33 == 5 && *(result + 194556) || v36 == 5 && *(result + 194560) || v37 == 5 && *(result + 194564))
  {
    v45 = v44 | 0x20;
  }

  v46 = v45 & 0xFFFFFFBF;
  *(v38 + 4 * v34) = v45 & 0xFFFFFFBF;
  if (v33 == 6 && *(result + 194556) || v36 == 6 && *(result + 194560) || v37 == 6 && *(result + 194564))
  {
    v46 = v45 | 0x40;
  }

  *(v38 + 4 * v34) = v46 & 0xFFFFFF7F;
  if (v33 == 7 && *(result + 194556) || v36 == 7 && *(result + 194560) || v37 == 7 && *(result + 194564))
  {
    *(v38 + 4 * v34) = v46 | 0x80;
  }

LABEL_126:
  v47 = (result + v34);
  v47[926899] = *(result + 194556);
  v47[926904] = *(result + 194560);
  v47[926909] = *(result + 194564);
  v47[926884] = *(result + 739528) & 1;
  v47[926889] = *(result + 739528) & 2;
  v47[926894] = *(result + 739528) & 4;
  if (*v2)
  {
    return result;
  }

  v48 = *(result + 739528);
  if ((v48 & 1) != 0 || *(result + 194556))
  {
    *(result + *v3 + 926995) = 1;
    v48 = *(result + 739528);
  }

  if ((v48 & 2) != 0 || *(result + 194560))
  {
    *(result + *(result + 194516) + 926995) = 1;
    v48 = *(result + 739528);
  }

  if ((v48 & 4) != 0 || *(result + 194564))
  {
    *(result + *(result + 194520) + 926995) = 1;
  }

  if (*v1 != 1)
  {
    return result;
  }

  v49 = *(result + 926864);
  if (v49)
  {
    *(result + 926995) = 1;
    if ((v49 & 2) == 0)
    {
LABEL_140:
      if ((v49 & 4) == 0)
      {
        goto LABEL_141;
      }

      goto LABEL_158;
    }
  }

  else if ((v49 & 2) == 0)
  {
    goto LABEL_140;
  }

  *(result + 926996) = 1;
  if ((v49 & 4) == 0)
  {
LABEL_141:
    if ((v49 & 8) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_159;
  }

LABEL_158:
  *(result + 926997) = 1;
  if ((v49 & 8) == 0)
  {
LABEL_142:
    if ((v49 & 0x10) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_160;
  }

LABEL_159:
  *(result + 926998) = 1;
  if ((v49 & 0x10) == 0)
  {
LABEL_143:
    if ((v49 & 0x20) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_161;
  }

LABEL_160:
  *(result + 926999) = 1;
  if ((v49 & 0x20) == 0)
  {
LABEL_144:
    if ((v49 & 0x40) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_162;
  }

LABEL_161:
  *(result + 927000) = 1;
  if ((v49 & 0x40) == 0)
  {
LABEL_145:
    if ((v49 & 0x80) != 0)
    {
      goto LABEL_163;
    }

    return result;
  }

LABEL_162:
  *(result + 927001) = 1;
  if ((v49 & 0x80) != 0)
  {
LABEL_163:
    *(result + 927002) = 1;
  }

  return result;
}

uint64_t vp9_svc_check_skip_enhancement_layer(uint64_t a1)
{
  if (!*(a1 + 754540))
  {
    return 0;
  }

  v1 = *(a1 + 754544);
  if (v1 < 1 || *(a1 + 190040))
  {
    return 0;
  }

  v3 = (a1 + 926392);
  v4 = *(a1 + 926848);
  if (v4 != 1 && (v4 != 3 || *(a1 + 4 * *(a1 + 754552) + 926792)))
  {
    if (*(a1 + 926652))
    {
      return 0;
    }
  }

  *(a1 + 926596) = 1;
  ++*(a1 + 189844);
  *(a1 + 738572) = vadd_s32(*(a1 + 738572), 0x1FFFFFFFFLL);
  *(a1 + 738772) = 0;
  *(a1 + 738768) = 0;
  *(a1 + 738784) = *(a1 + 738600);
  *(a1 + 738476) = *(a1 + 173028);
  if (v4 != 1)
  {
    v5 = *(a1 + 738752);
    if (*(a1 + 738648) > v5)
    {
      *(a1 + 738648) = v5;
      *(a1 + 738656) = v5;
    }
  }

  *(a1 + 942524) = *(a1 + 190072);
  *(a1 + 194568) = 0;
  *(a1 + 942089) = 1;
  v6 = a1 + 4 * v1;
  *(v6 + 926604) = 1;
  *(v6 + 926652) = 1;
  v7 = *(a1 + 754544);
  v8 = *(a1 + 754552);
  v9 = a1 + 13936 * *(a1 + 754556) * v7;
  result = 1;
  v9 += 758936;
  ++*(v9 + 13816);
  ++*(v9 + 13824);
  if (v7 == v8 - 1)
  {
    ++*v3;
  }

  return result;
}

void vp9_loop_filter_frame_mt(uint64_t a1, int *a2, const void *a3, int a4, uint64_t a5, int a6, void *a7, int a8, uint64_t a9)
{
  if (a4)
  {
    LODWORD(v9) = a8;
    v15 = a2[328];
    v16 = (v15 >> 1) & 0x3FFFFFF8;
    v17 = v15 >> 3;
    if (v15 <= 0x47)
    {
      v17 = 8;
    }

    if (v15 < 9)
    {
      v16 = 0;
      v17 = a2[328];
    }

    if (a6)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    if (a6)
    {
      v19 = v17;
    }

    else
    {
      v19 = a2[328];
    }

    vp9_loop_filter_frame_init(a2, a4);
    v20 = (a2[328] + 7) >> 3;
    v21 = 1 << a2[4558];
    if (v21 >= v20)
    {
      v21 = (a2[328] + 7) >> 3;
    }

    if (v21 >= v9)
    {
      v9 = v9;
    }

    else
    {
      v9 = v21;
    }

    if (!*(a9 + 24) || v20 != *(a9 + 28) || v9 > *(a9 + 40))
    {
      vp9_loop_filter_dealloc(a9);
      vp9_loop_filter_alloc(a9, a2, v20, a2[73], v9);
    }

    *(a9 + 44) = v9;
    memset(*(a9 + 16), 255, 4 * v20);
    if (v9 >= 1)
    {
      v22 = v19;
      v23 = 0;
      v30 = v22 + v18;
      v24 = a7;
      v29 = a2;
      v25 = a3;
      do
      {
        v26 = a5;
        v27 = *(a9 + 32) + v23;
        v24[3] = loop_filter_row_worker;
        v24[4] = a9;
        v24[5] = v27;
        *v27 = a1;
        *(v27 + 8) = v29;
        *(v27 + 424) = 0;
        *(v27 + 432) = 0;
        memcpy((v27 + 16), v25, 0x198uLL);
        *(v27 + 424) = v18;
        *(v27 + 428) = v30;
        *(v27 + 432) = v26;
        a5 = v26;
        v28 = 3;
        if (440 * (v9 - 1) == v23)
        {
          v28 = 4;
        }

        (g_worker_interface[v28])(v24);
        v23 += 440;
        v18 += 8;
        v24 += 7;
      }

      while (440 * v9 != v23);
      do
      {
        off_28100B630();
        a7 += 7;
        --v9;
      }

      while (v9);
    }
  }
}

double vp9_loop_filter_dealloc(int *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (a1[7] < 1)
    {
      goto LABEL_6;
    }

    v3 = 0;
    v4 = 0;
    do
    {
      pthread_mutex_destroy((*a1 + v3));
      ++v4;
      v3 += 64;
    }

    while (v4 < a1[7]);
    v2 = *a1;
    if (*a1)
    {
LABEL_6:
      free(*(v2 - 8));
    }
  }

  v5 = *(a1 + 1);
  if (v5)
  {
    if (a1[7] < 1)
    {
      goto LABEL_12;
    }

    v6 = 0;
    v7 = 0;
    do
    {
      pthread_cond_destroy((*(a1 + 1) + v6));
      ++v7;
      v6 += 48;
    }

    while (v7 < a1[7]);
    v5 = *(a1 + 1);
    if (v5)
    {
LABEL_12:
      free(*(v5 - 8));
    }
  }

  v8 = *(a1 + 7);
  if (v8)
  {
    if (a1[7] < 1)
    {
      goto LABEL_18;
    }

    v9 = 0;
    v10 = 0;
    do
    {
      pthread_mutex_destroy((*(a1 + 7) + v9));
      ++v10;
      v9 += 64;
    }

    while (v10 < a1[7]);
    v8 = *(a1 + 7);
    if (v8)
    {
LABEL_18:
      free(*(v8 - 8));
    }
  }

  v11 = *(a1 + 6);
  if (v11)
  {
    pthread_mutex_destroy(v11);
    v12 = *(a1 + 6);
    if (v12)
    {
      free(*(v12 - 8));
    }
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    if (a1[7] < 1)
    {
      goto LABEL_27;
    }

    v14 = 0;
    v15 = 0;
    do
    {
      pthread_cond_destroy((*(a1 + 8) + v14));
      ++v15;
      v14 += 48;
    }

    while (v15 < a1[7]);
    v13 = *(a1 + 8);
    if (v13)
    {
LABEL_27:
      free(*(v13 - 8));
    }
  }

  v16 = *(a1 + 4);
  if (v16)
  {
    free(*(v16 - 8));
  }

  v17 = *(a1 + 2);
  if (v17)
  {
    free(*(v17 - 8));
  }

  v18 = *(a1 + 9);
  if (v18)
  {
    free(*(v18 - 8));
  }

  *(a1 + 10) = 0;
  result = 0.0;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t vp9_loop_filter_alloc(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  *(a1 + 28) = a3;
  v10 = a3;
  v11 = (a3 << 6) | 0x17;
  if (v11 <= 0x10000000000 && (v12 = malloc_type_malloc((a3 << 6) | 0x17, 0xD93B561uLL)) != 0)
  {
    v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v13 - 8) = v12;
    *a1 = v13;
    if (v13)
    {
      if (a3 < 1)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else
  {
    *a1 = 0;
  }

  vpx_internal_error(a2, 2, "Failed to allocate lf_sync->mutex");
  if (a3 >= 1 && *a1)
  {
LABEL_9:
    v14 = 0;
    v15 = a3;
    do
    {
      pthread_mutex_init((*a1 + v14), 0);
      v14 += 64;
      --v15;
    }

    while (v15);
  }

LABEL_11:
  v16 = 48 * v10 + 23;
  v47 = a4;
  if (v16 <= 0x10000000000 && (v17 = malloc_type_malloc(48 * v10 + 23, 0xD93B561uLL)) != 0)
  {
    v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v18 - 8) = v17;
    *(a1 + 8) = v18;
    v19 = (a1 + 8);
    if (v18)
    {
      if (a3 < 1)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    *(a1 + 8) = 0;
    v19 = (a1 + 8);
  }

  vpx_internal_error(a2, 2, "Failed to allocate lf_sync->cond");
  if (a3 >= 1 && *v19)
  {
LABEL_19:
    v20 = 0;
    v21 = a3;
    do
    {
      pthread_cond_init((*v19 + v20), 0);
      v20 += 48;
      --v21;
    }

    while (v21);
  }

LABEL_21:
  v22 = malloc_type_malloc(0x57uLL, 0xD93B561uLL);
  if (v22)
  {
    v23 = v22;
    v24 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF0);
    *&v24[-1].__opaque[48] = v23;
    *(a1 + 48) = v24;
    v25 = (a1 + 48);
    if (v24)
    {
      pthread_mutex_init(v24, 0);
      if (v11 > 0x10000000000)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }
  }

  else
  {
    *(a1 + 48) = 0;
    v25 = (a1 + 48);
  }

  vpx_internal_error(a2, 2, "Failed to allocate lf_sync->lf_mutex");
  pthread_mutex_init(*v25, 0);
  if (v11 > 0x10000000000)
  {
LABEL_31:
    *(a1 + 56) = 0;
    v28 = (a1 + 56);
    goto LABEL_32;
  }

LABEL_27:
  v26 = malloc_type_malloc(v11, 0xD93B561uLL);
  if (!v26)
  {
    goto LABEL_31;
  }

  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v27 - 8) = v26;
  *(a1 + 56) = v27;
  v28 = (a1 + 56);
  if (v27)
  {
    if (a3 < 1)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

LABEL_32:
  vpx_internal_error(a2, 2, "Failed to allocate lf_sync->recon_done_mutex");
  if (a3 >= 1 && *v28)
  {
LABEL_34:
    v29 = 0;
    v30 = a3;
    do
    {
      pthread_mutex_init((*v28 + v29), 0);
      v29 += 64;
      --v30;
    }

    while (v30);
  }

LABEL_36:
  if (v16 <= 0x10000000000 && (v31 = malloc_type_malloc(48 * v10 + 23, 0xD93B561uLL)) != 0)
  {
    v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v32 - 8) = v31;
    *(a1 + 64) = v32;
    v33 = (a1 + 64);
    if (v32)
    {
      if (a3 < 1)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }
  }

  else
  {
    *(a1 + 64) = 0;
    v33 = (a1 + 64);
  }

  vpx_internal_error(a2, 2, "Failed to allocate lf_sync->recon_done_cond");
  if (a3 >= 1 && *v33)
  {
LABEL_44:
    v34 = 0;
    v35 = a3;
    do
    {
      pthread_cond_init((*v33 + v34), 0);
      v34 += 48;
      --v35;
    }

    while (v35);
  }

LABEL_46:
  v36 = 440 * a5 + 23;
  if (v36 <= 0x10000000000 && (v37 = malloc_type_malloc(v36, 0xD93B561uLL)) != 0)
  {
    v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v38 - 8) = v37;
    *(a1 + 32) = v38;
    v39 = v47;
    if (v38)
    {
      *(a1 + 40) = a5;
      *(a1 + 44) = a5;
      v40 = 4 * v10 + 23;
      if (v40 > 0x10000000000)
      {
        goto LABEL_56;
      }

      goto LABEL_53;
    }
  }

  else
  {
    *(a1 + 32) = 0;
    v39 = v47;
  }

  vpx_internal_error(a2, 2, "Failed to allocate lf_sync->lfdata");
  *(a1 + 40) = a5;
  *(a1 + 44) = a5;
  v40 = 4 * v10 + 23;
  if (v40 > 0x10000000000)
  {
LABEL_56:
    *(a1 + 16) = 0;
LABEL_57:
    vpx_internal_error(a2, 2, "Failed to allocate lf_sync->cur_sb_col");
    goto LABEL_58;
  }

LABEL_53:
  v41 = malloc_type_malloc(v40, 0xD93B561uLL);
  if (!v41)
  {
    goto LABEL_56;
  }

  v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v42 - 8) = v41;
  *(a1 + 16) = v42;
  if (!v42)
  {
    goto LABEL_57;
  }

LABEL_58:
  v43 = ((*(a2 + 1312) + 7) >> 1) & 0x1FFFFFFFFFFFFFFCLL;
  if (v43 > 0xFFFFFFFFE9 || (result = malloc_type_malloc(v43 + 23, 0xD93B561uLL)) == 0)
  {
    *(a1 + 72) = 0;
LABEL_64:
    result = vpx_internal_error(a2, 2, "Failed to allocate lf_sync->num_tiles_done");
    if (v39 < 640)
    {
      goto LABEL_62;
    }

    goto LABEL_65;
  }

  v45 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v45 - 8) = result;
  *(a1 + 72) = v45;
  if (!v45)
  {
    goto LABEL_64;
  }

  if (v39 < 640)
  {
LABEL_62:
    v46 = 1;
    goto LABEL_70;
  }

LABEL_65:
  if (v39 >= 0x501)
  {
    if (v39 > 0x1000)
    {
      v46 = 8;
    }

    else
    {
      v46 = 4;
    }
  }

  else
  {
    v46 = 2;
  }

LABEL_70:
  *(a1 + 24) = v46;
  return result;
}

uint64_t vp9_loopfilter_rows(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = v4[328];
  v6 = v4[4558];
  pthread_mutex_lock(*(a2 + 48));
  v7 = v4[4569];
  if (v7 >= v5)
  {
LABEL_14:
    v15 = *(a2 + 48);

    return pthread_mutex_unlock(v15);
  }

  else
  {
    while (1)
    {
      v8 = v7 + 8;
      v4[4569] = v7 + 8;
      result = pthread_mutex_unlock(*(a2 + 48));
      if (v7 == -1)
      {
        break;
      }

      v10 = 1 << v6;
      v11 = v8 < v5;
      v12 = v7 >> 3;
      if (v11)
      {
        v13 = v12 + 1;
      }

      else
      {
        v13 = v7 >> 3;
      }

      pthread_mutex_lock((*(a2 + 56) + (v13 << 6)));
      if (*(*(a2 + 72) + 4 * v13) < v10)
      {
        pthread_cond_wait((*(a2 + 64) + 48 * v13), (*(a2 + 56) + (v13 << 6)));
      }

      pthread_mutex_unlock((*(a2 + 56) + (v13 << 6)));
      pthread_mutex_lock(*(a2 + 48));
      if (*(a2 + 80))
      {
        pthread_mutex_lock((*a2 + (v12 << 6)));
        v14 = *(a2 + 8);
        *(*(a2 + 16) + 4 * v12) = 0x7FFFFFFF;
        pthread_cond_signal((v14 + 48 * v12));
        pthread_mutex_unlock((*a2 + (v12 << 6)));
        goto LABEL_14;
      }

      result = pthread_mutex_unlock(*(a2 + 48));
      if (v7 >= v4[328])
      {
        return result;
      }

      *(a1 + 424) = v7;
      *(a1 + 428) = v8;
      thread_loop_filter_rows(*a1, *(a1 + 8), a1 + 16, v7, v7 + 8, *(a1 + 432), a2);
      v5 = v4[328];
      v6 = v4[4558];
      pthread_mutex_lock(*(a2 + 48));
      v7 = v4[4569];
      if (v7 >= v5)
      {
        goto LABEL_14;
      }
    }
  }

  return result;
}

void thread_loop_filter_rows(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7)
{
  v8 = a4;
  if (!a6)
  {
    v12 = *(a3 + 148);
    if (v12)
    {
      if (v12 == 1 && *(a3 + 144) == 1)
      {
        v11 = 0;
        if (a4 >= a5)
        {
          return;
        }

        goto LABEL_11;
      }
    }

    else if (!*(a3 + 144))
    {
      goto LABEL_2;
    }

    v11 = 2;
    if (a4 >= a5)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_2:
  v11 = 1;
  if (a4 < a5)
  {
LABEL_11:
    v13 = *(a2 + 1320);
    if (v13 < 1)
    {
      return;
    }

    v72 = v11;
    v73 = (v13 + 7) >> 3;
    v69 = 8 * *(a7 + 44);
    while (v13 < 1)
    {
LABEL_13:
      v8 += v69;
      if (v8 >= a5)
      {
        return;
      }
    }

    v14 = 0;
    v71 = *(a2 + 1480) + 8 * *(a2 + 1324) * v8;
    v15 = (*(a2 + 4760) + 160 * *(a2 + 4768) * (v8 >> 3));
    v76 = v8;
    v77 = v8 >> 3;
    v16 = v77 - 1;
    v75 = 8 * v8;
    while (1)
    {
      v18 = v14 >> 3;
      if (v8 >= 8)
      {
        v19 = *(a7 + 24);
        if (((v19 + 0xFFFFFFF) & v18) == 0)
        {
          v20 = (*a7 + (v16 << 6));
          v21 = 4000;
          while (pthread_mutex_trylock(v20))
          {
            if (!--v21)
            {
              pthread_mutex_lock(v20);
              break;
            }
          }

          while (*(*(a7 + 16) + 4 * v16) - v19 < v18)
          {
            pthread_cond_wait((*(a7 + 8) + 48 * v16), v20);
          }

          pthread_mutex_unlock(v20);
          v8 = v76;
          v11 = v72;
        }
      }

      v22 = *(a1 + 64);
      v23 = *(a1 + 72);
      v24 = *(a1 + 16);
      v25 = *(a1 + 36);
      *(a3 + 16) = *(a1 + 56) + v24 * (v75 >> *(a3 + 12)) + ((8 * v14) >> *(a3 + 8));
      *(a3 + 24) = v24;
      *(a3 + 152) = v22 + v25 * (v75 >> *(a3 + 148)) + ((8 * v14) >> *(a3 + 144));
      *(a3 + 160) = v25;
      *(a3 + 288) = v23 + v25 * (v75 >> *(a3 + 284)) + ((8 * v14) >> *(a3 + 280));
      *(a3 + 296) = v25;
      vp9_adjust_mask(a2, v8, v14, v15);
      vp9_filter_block_plane_ss00(a2, a3, v8, v15, v26, v27, v28, v29, v30, v31, v32, v33);
      if (!a6)
      {
        if (v11)
        {
          if (v11 == 1)
          {
            vp9_filter_block_plane_ss00(a2, a3 + 136, v8, v15, v34, v35, v36, v37, v38, v39, v40, v41);
            vp9_filter_block_plane_ss00(a2, a3 + 272, v8, v15, v45, v46, v47, v48, v49, v50, v51, v52);
          }

          else
          {
            vp9_filter_block_plane_non420(a2, a3 + 136, v71 + 8 * v14, v76, v14, *v34.i64, v35, v36, v37, v38, v39, v40, v41);
            v8 = v76;
            vp9_filter_block_plane_non420(a2, a3 + 272, v71 + 8 * v14, v76, v14, v61, v62, v63, v64, v65, v66, v67, v68);
            v11 = v72;
          }
        }

        else
        {
          vp9_filter_block_plane_ss11(a2, a3 + 136, v8, v15, v34, v35, v36, v37, v38, v39, v40, v41);
          vp9_filter_block_plane_ss11(a2, a3 + 272, v8, v15, v53, v54, v55, v56, v57, v58, v59, v60);
        }
      }

      v42 = *(a7 + 24);
      if (v73 - 1 <= v18)
      {
        break;
      }

      if (!(v18 % v42))
      {
        goto LABEL_32;
      }

LABEL_17:
      v14 += 8;
      v15 += 20;
      v13 = *(a2 + 1320);
      if (v13 <= v14)
      {
        goto LABEL_13;
      }
    }

    LODWORD(v18) = v42 + v73;
LABEL_32:
    v43 = (*a7 + (v77 << 6));
    v44 = 4000;
    while (pthread_mutex_trylock(v43))
    {
      if (!--v44)
      {
        pthread_mutex_lock(v43);
        break;
      }
    }

    v17 = *(a7 + 8);
    *(*(a7 + 16) + 4 * v77) = v18;
    pthread_cond_signal((v17 + 48 * v77));
    pthread_mutex_unlock((*a7 + (v77 << 6)));
    v8 = v76;
    goto LABEL_17;
  }
}

uint64_t vp9_accumulate_frame_counts(int32x4_t *a1, int32x4_t *a2, int a3)
{
  v3 = a1 + 35;
  v4 = a1->i32[1];
  a1->i32[0] += a2->i32[0];
  a1->i32[1] = v4 + a2->i32[1];
  v5 = a1->i32[3];
  a1->i32[2] += a2->i32[2];
  a1->i32[3] = v5 + a2->i32[3];
  v6 = a1[1].i32[1];
  a1[1].i32[0] += a2[1].i32[0];
  a1[1].i32[1] = v6 + a2[1].i32[1];
  v7 = a1[1].i32[3];
  a1[1].i32[2] += a2[1].i32[2];
  a1[1].i32[3] = v7 + a2[1].i32[3];
  v8 = a1[2].i32[1];
  a1[2].i32[0] += a2[2].i32[0];
  a1[2].i32[1] = v8 + a2[2].i32[1];
  v9 = a1[2].i32[3];
  a1[2].i32[2] += a2[2].i32[2];
  a1[2].i32[3] = v9 + a2[2].i32[3];
  v10 = a1[3].i32[1];
  a1[3].i32[0] += a2[3].i32[0];
  a1[3].i32[1] = v10 + a2[3].i32[1];
  v11 = a1[3].i32[3];
  a1[3].i32[2] += a2[3].i32[2];
  a1[3].i32[3] = v11 + a2[3].i32[3];
  v12 = a1[4].i32[1];
  a1[4].i32[0] += a2[4].i32[0];
  a1[4].i32[1] = v12 + a2[4].i32[1];
  v13 = a1[4].i32[3];
  a1[4].i32[2] += a2[4].i32[2];
  a1[4].i32[3] = v13 + a2[4].i32[3];
  v14 = a1[5].i32[1];
  a1[5].i32[0] += a2[5].i32[0];
  a1[5].i32[1] = v14 + a2[5].i32[1];
  v15 = a1[5].i32[3];
  a1[5].i32[2] += a2[5].i32[2];
  a1[5].i32[3] = v15 + a2[5].i32[3];
  v16 = a1[6].i32[1];
  a1[6].i32[0] += a2[6].i32[0];
  a1[6].i32[1] = v16 + a2[6].i32[1];
  v17 = a1[6].i32[3];
  a1[6].i32[2] += a2[6].i32[2];
  a1[6].i32[3] = v17 + a2[6].i32[3];
  v18 = a1[7].i32[1];
  a1[7].i32[0] += a2[7].i32[0];
  a1[7].i32[1] = v18 + a2[7].i32[1];
  v19 = a1[7].i32[3];
  a1[7].i32[2] += a2[7].i32[2];
  a1[7].i32[3] = v19 + a2[7].i32[3];
  v20 = a1[8].i32[1];
  a1[8].i32[0] += a2[8].i32[0];
  a1[8].i32[1] = v20 + a2[8].i32[1];
  v21 = a1[8].i32[3];
  a1[8].i32[2] += a2[8].i32[2];
  a1[8].i32[3] = v21 + a2[8].i32[3];
  v22 = a1[9].i32[1];
  a1[9].i32[0] += a2[9].i32[0];
  a1[9].i32[1] = v22 + a2[9].i32[1];
  v23 = a1[9].i32[3];
  a1[9].i32[2] += a2[9].i32[2];
  a1[9].i32[3] = v23 + a2[9].i32[3];
  v24 = a1[10].i32[1];
  a1[10].i32[0] += a2[10].i32[0];
  a1[10].i32[1] = v24 + a2[10].i32[1];
  v25 = a1[10].i32[3];
  a1[10].i32[2] += a2[10].i32[2];
  a1[10].i32[3] = v25 + a2[10].i32[3];
  v26 = a1[11].i32[1];
  a1[11].i32[0] += a2[11].i32[0];
  a1[11].i32[1] = v26 + a2[11].i32[1];
  v27 = a1[11].i32[3];
  a1[11].i32[2] += a2[11].i32[2];
  a1[11].i32[3] = v27 + a2[11].i32[3];
  v28 = a1[12].i32[1];
  a1[12].i32[0] += a2[12].i32[0];
  a1[12].i32[1] = v28 + a2[12].i32[1];
  v29 = a1[12].i32[3];
  a1[12].i32[2] += a2[12].i32[2];
  a1[12].i32[3] = v29 + a2[12].i32[3];
  v30 = a1[13].i32[1];
  a1[13].i32[0] += a2[13].i32[0];
  a1[13].i32[1] = v30 + a2[13].i32[1];
  v31 = a1[13].i32[3];
  a1[13].i32[2] += a2[13].i32[2];
  a1[13].i32[3] = v31 + a2[13].i32[3];
  v32 = a1[14].i32[1];
  a1[14].i32[0] += a2[14].i32[0];
  a1[14].i32[1] = v32 + a2[14].i32[1];
  v33 = a1[14].i32[3];
  a1[14].i32[2] += a2[14].i32[2];
  a1[14].i32[3] = v33 + a2[14].i32[3];
  v34 = a1[15].i32[1];
  a1[15].i32[0] += a2[15].i32[0];
  a1[15].i32[1] = v34 + a2[15].i32[1];
  v35 = a1[15].i32[3];
  v36 = a2 + 35;
  a1[15].i32[2] += a2[15].i32[2];
  a1[15].i32[3] = v35 + a2[15].i32[3];
  a1[16].i32[0] += a2[16].i32[0];
  a1[16].i32[1] += a2[16].i32[1];
  a1[16].i32[2] += a2[16].i32[2];
  a1[16].i32[3] += a2[16].i32[3];
  a1[17].i32[0] += a2[17].i32[0];
  a1[17].i32[1] += a2[17].i32[1];
  a1[17].i32[2] += a2[17].i32[2];
  a1[17].i32[3] += a2[17].i32[3];
  a1[18].i32[0] += a2[18].i32[0];
  a1[18].i32[1] += a2[18].i32[1];
  a1[18].i32[2] += a2[18].i32[2];
  a1[18].i32[3] += a2[18].i32[3];
  a1[19].i32[0] += a2[19].i32[0];
  a1[19].i32[1] += a2[19].i32[1];
  a1[19].i32[2] += a2[19].i32[2];
  a1[19].i32[3] += a2[19].i32[3];
  a1[20].i32[0] += a2[20].i32[0];
  a1[20].i32[1] += a2[20].i32[1];
  a1[20].i32[2] += a2[20].i32[2];
  a1[20].i32[3] += a2[20].i32[3];
  a1[21].i32[0] += a2[21].i32[0];
  a1[21].i32[1] += a2[21].i32[1];
  a1[21].i32[2] += a2[21].i32[2];
  a1[21].i32[3] += a2[21].i32[3];
  a1[22].i32[0] += a2[22].i32[0];
  a1[22].i32[1] += a2[22].i32[1];
  a1[22].i32[2] += a2[22].i32[2];
  a1[22].i32[3] += a2[22].i32[3];
  a1[23].i32[0] += a2[23].i32[0];
  a1[23].i32[1] += a2[23].i32[1];
  a1[23].i32[2] += a2[23].i32[2];
  a1[23].i32[3] += a2[23].i32[3];
  a1[24].i32[0] += a2[24].i32[0];
  a1[24].i32[1] += a2[24].i32[1];
  a1[24].i32[2] += a2[24].i32[2];
  a1[24].i32[3] += a2[24].i32[3];
  a1[25].i32[0] += a2[25].i32[0];
  a1[25].i32[1] += a2[25].i32[1];
  a1[25].i32[2] += a2[25].i32[2];
  a1[25].i32[3] += a2[25].i32[3];
  a1[26].i32[0] += a2[26].i32[0];
  a1[26].i32[1] += a2[26].i32[1];
  a1[26].i32[2] += a2[26].i32[2];
  a1[26].i32[3] += a2[26].i32[3];
  a1[27].i32[0] += a2[27].i32[0];
  a1[27].i32[1] += a2[27].i32[1];
  a1[27].i32[2] += a2[27].i32[2];
  a1[27].i32[3] += a2[27].i32[3];
  a1[28].i32[0] += a2[28].i32[0];
  a1[28].i32[1] += a2[28].i32[1];
  a1[28].i32[2] += a2[28].i32[2];
  a1[28].i32[3] += a2[28].i32[3];
  a1[29].i32[0] += a2[29].i32[0];
  a1[29].i32[1] += a2[29].i32[1];
  a1[29].i32[2] += a2[29].i32[2];
  a1[29].i32[3] += a2[29].i32[3];
  a1[30].i32[0] += a2[30].i32[0];
  a1[30].i32[1] += a2[30].i32[1];
  a1[30].i32[2] += a2[30].i32[2];
  a1[30].i32[3] += a2[30].i32[3];
  a1[31].i32[0] += a2[31].i32[0];
  a1[31].i32[1] += a2[31].i32[1];
  a1[31].i32[2] += a2[31].i32[2];
  a1[31].i32[3] += a2[31].i32[3];
  a1[32].i32[0] += a2[32].i32[0];
  a1[32].i32[1] += a2[32].i32[1];
  a1[32].i32[2] += a2[32].i32[2];
  a1[32].i32[3] += a2[32].i32[3];
  a1[33].i32[0] += a2[33].i32[0];
  a1[33].i32[1] += a2[33].i32[1];
  a1[33].i32[2] += a2[33].i32[2];
  a1[33].i32[3] += a2[33].i32[3];
  a1[34].i32[0] += a2[34].i32[0];
  a1[34].i32[1] += a2[34].i32[1];
  a1[34].i32[2] += a2[34].i32[2];
  a1[34].i32[3] += a2[34].i32[3];
  if (&a1[35] >= &a2[51] || v36 >= &a1[51])
  {
    v71 = vaddq_s32(*v3, *v36);
    v72 = vaddq_s32(a1[36], a2[36]);
    v73 = vaddq_s32(a1[38], a2[38]);
    a1[37] = vaddq_s32(a1[37], a2[37]);
    a1[38] = v73;
    *v3 = v71;
    a1[36] = v72;
    v74 = vaddq_s32(a1[39], a2[39]);
    v75 = vaddq_s32(a1[40], a2[40]);
    v76 = vaddq_s32(a1[42], a2[42]);
    a1[41] = vaddq_s32(a1[41], a2[41]);
    a1[42] = v76;
    a1[39] = v74;
    a1[40] = v75;
    v77 = vaddq_s32(a1[43], a2[43]);
    v78 = vaddq_s32(a1[44], a2[44]);
    v79 = vaddq_s32(a1[46], a2[46]);
    a1[45] = vaddq_s32(a1[45], a2[45]);
    a1[46] = v79;
    a1[43] = v77;
    a1[44] = v78;
    v80 = vaddq_s32(a1[48], a2[48]);
    v81 = vaddq_s32(a1[47], a2[47]);
    v82 = vaddq_s32(a1[50], a2[50]);
    a1[49] = vaddq_s32(a1[49], a2[49]);
    a1[50] = v82;
    a1[47] = v81;
    a1[48] = v80;
    v43 = 0;
    if (a3)
    {
      goto LABEL_6;
    }

    do
    {
LABEL_16:
      v83 = 0;
      v84 = 1;
      i64 = a2[36 * v43 + 627].i64;
      do
      {
        v86 = 0;
        v87 = v84;
        v88 = 1;
        v89 = 288 * v83;
        do
        {
          v90 = v89 + 144 * v86;
          v91 = (i64 + v90);
          v92 = *(i64 + v90);
          v93 = (a1[36 * v43 + 627].i32 + v90);
          v94 = v93[1];
          *v93 += v92;
          v93[1] = v94 + v91[1];
          v95 = v93[3];
          v93[2] += v91[2];
          v93[3] = v95 + v91[3];
          v96 = v93[5];
          v93[4] += v91[4];
          v93[5] = v96 + v91[5];
          v97 = v93[7];
          v93[6] += v91[6];
          v93[7] = v97 + v91[7];
          v98 = v93[9];
          v93[8] += v91[8];
          v93[9] = v98 + v91[9];
          v99 = v93[11];
          v93[10] += v91[10];
          v93[11] = v99 + v91[11];
          v100 = v93[13];
          v93[12] += v91[12];
          v93[13] = v100 + v91[13];
          v101 = v93[15];
          v93[14] += v91[14];
          v93[15] = v101 + v91[15];
          v102 = v93[17];
          v93[16] += v91[16];
          v93[17] = v102 + v91[17];
          v103 = v93[19];
          v93[18] += v91[18];
          v93[19] = v103 + v91[19];
          v104 = v93[21];
          v93[20] += v91[20];
          v93[21] = v104 + v91[21];
          v105 = v93[23];
          v93[22] += v91[22];
          v93[23] = v105 + v91[23];
          v106 = v93[25];
          v93[24] += v91[24];
          v93[25] = v106 + v91[25];
          v107 = v93[27];
          v93[26] += v91[26];
          v93[27] = v107 + v91[27];
          v108 = v93[29];
          v93[28] += v91[28];
          v93[29] = v108 + v91[29];
          v109 = v93[31];
          v93[30] += v91[30];
          v93[31] = v109 + v91[31];
          v110 = v93[33];
          v93[32] += v91[32];
          v93[33] = v110 + v91[33];
          v111 = v93[35];
          v112 = v88;
          v93[34] += v91[34];
          v93[35] = v111 + v91[35];
          v86 = 1;
          v88 = 0;
        }

        while ((v112 & 1) != 0);
        v84 = 0;
        v83 = 1;
      }

      while ((v87 & 1) != 0);
      ++v43;
    }

    while (v43 != 4);
    goto LABEL_21;
  }

  v37 = &a1[35].i32[3];
  v38 = &a2[35].i32[3];
  v39 = 16;
  do
  {
    v40 = *(v37 - 2);
    *(v37 - 3) += *(v38 - 3);
    *(v37 - 2) = v40 + *(v38 - 2);
    v41 = *v37;
    *(v37 - 1) += *(v38 - 1);
    v42 = *v38;
    v38 += 4;
    *v37 = v41 + v42;
    v37 += 4;
    --v39;
  }

  while (v39);
  v43 = 0;
  if (!a3)
  {
    goto LABEL_16;
  }

LABEL_6:
  v44 = a2 + 51;
  v45 = &a2[627].i8[12];
  v46 = &a1[627].i8[12];
  v47 = a1;
  do
  {
    v48 = 0;
    v49 = 1;
    do
    {
      v50 = 0;
      v51 = v49;
      v52 = 9 * v48;
      v53 = 72 * v48;
      v54 = &v47[72 * v48];
      v55 = &v44[v53];
      v56 = 32 * v52;
      v57 = &v45[32 * v52];
      v58 = &v46[v56];
      v59 = 1;
      do
      {
        v60 = 0;
        v61 = v59;
        v62 = 9 * v50;
        v63 = 36 * v50;
        v64 = &v54[36 * v50];
        v65 = &v55[v63];
        v66 = 16 * v62;
        v67 = &v57[16 * v62];
        v68 = &v58[v66];
        do
        {
          v69 = &v68[v60];
          *(v69 - 3) = *&v68[v60 - 12] + *&v67[v60 - 12];
          v70 = &v64[v60 / 4];
          v70[51].i32[0] += v65->i32[0];
          v70[51].i32[1] += v65->i32[1];
          v70[51].i32[2] += v65->i32[2];
          v70[51].i32[3] += v65->i32[3];
          *(v69 - 2) = *&v68[v60 - 8] + *&v67[v60 - 8];
          v70[52].i32[0] += v65[1].i32[0];
          v70[52].i32[1] += v65[1].i32[1];
          v70[52].i32[2] += v65[1].i32[2];
          v70[52].i32[3] += v65[1].i32[3];
          *(v69 - 1) = *&v68[v60 - 4] + *&v67[v60 - 4];
          v70[53].i32[0] += v65[2].i32[0];
          v70[53].i32[1] += v65[2].i32[1];
          v70[53].i32[2] += v65[2].i32[2];
          v70[53].i32[3] += v65[2].i32[3];
          *v69 = *&v68[v60] + *&v67[v60];
          v70[54].i32[0] += v65[3].i32[0];
          v70[54].i32[1] += v65[3].i32[1];
          v70[54].i32[2] += v65[3].i32[2];
          v70[54].i32[3] += v65[3].i32[3];
          *(v69 + 1) = *&v68[v60 + 4] + *&v67[v60 + 4];
          v70[55].i32[0] += v65[4].i32[0];
          v70[55].i32[1] += v65[4].i32[1];
          v70[55].i32[2] += v65[4].i32[2];
          v70[55].i32[3] += v65[4].i32[3];
          *(v69 + 2) = *&v68[v60 + 8] + *&v67[v60 + 8];
          v70[56].i32[0] += v65[5].i32[0];
          v70[56].i32[1] += v65[5].i32[1];
          v70[56].i32[2] += v65[5].i32[2];
          v70[56].i32[3] += v65[5].i32[3];
          v60 += 24;
          v65 += 6;
        }

        while (v60 != 144);
        v59 = 0;
        v50 = 1;
      }

      while ((v61 & 1) != 0);
      v49 = 0;
      v48 = 1;
    }

    while ((v51 & 1) != 0);
    ++v43;
    v47 += 144;
    v44 += 144;
    v45 += 576;
    v46 += 576;
  }

  while (v43 != 4);
LABEL_21:
  v113 = 0;
  a1[771].i32[0] += a2[771].i32[0];
  a1[771].i32[1] += a2[771].i32[1];
  a1[771].i32[2] += a2[771].i32[2];
  a1[771].i32[3] += a2[771].i32[3];
  a1[772].i32[0] += a2[772].i32[0];
  a1[772].i32[1] += a2[772].i32[1];
  a1[772].i32[2] += a2[772].i32[2];
  a1[772].i32[3] += a2[772].i32[3];
  a1[773].i32[0] += a2[773].i32[0];
  a1[773].i32[1] += a2[773].i32[1];
  a1[773].i32[2] += a2[773].i32[2];
  a1[773].i32[3] += a2[773].i32[3];
  a1[774].i32[0] += a2[774].i32[0];
  a1[774].i32[1] += a2[774].i32[1];
  a1[774].i32[2] += a2[774].i32[2];
  a1[774].i32[3] += a2[774].i32[3];
  a1[775].i32[0] += a2[775].i32[0];
  a1[775].i32[1] += a2[775].i32[1];
  a1[775].i32[2] += a2[775].i32[2];
  a1[775].i32[3] += a2[775].i32[3];
  a1[776].i32[0] += a2[776].i32[0];
  a1[776].i32[1] += a2[776].i32[1];
  a1[776].i32[2] += a2[776].i32[2];
  a1[776].i32[3] += a2[776].i32[3];
  a1[777].i32[0] += a2[777].i32[0];
  a1[777].i32[1] += a2[777].i32[1];
  a1[777].i32[2] += a2[777].i32[2];
  a1[777].i32[3] += a2[777].i32[3];
  a1[778].i32[0] += a2[778].i32[0];
  a1[778].i32[1] += a2[778].i32[1];
  a1[778].i32[2] += a2[778].i32[2];
  a1[778].i32[3] += a2[778].i32[3];
  a1[779].i32[0] += a2[779].i32[0];
  a1[779].i32[1] += a2[779].i32[1];
  a1[779].i32[2] += a2[779].i32[2];
  a1[779].i32[3] += a2[779].i32[3];
  a1[780].i32[0] += a2[780].i32[0];
  a1[780].i32[1] += a2[780].i32[1];
  a1[780].i32[2] += a2[780].i32[2];
  a1[780].i32[3] += a2[780].i32[3];
  a1[781].i32[0] += a2[781].i32[0];
  a1[781].i32[1] += a2[781].i32[1];
  a1[781].i32[2] += a2[781].i32[2];
  a1[781].i32[3] += a2[781].i32[3];
  a1[782].i32[0] += a2[782].i32[0];
  a1[782].i32[1] += a2[782].i32[1];
  a1[782].i32[2] += a2[782].i32[2];
  a1[782].i32[3] += a2[782].i32[3];
  a1[783].i32[0] += a2[783].i32[0];
  a1[783].i32[1] += a2[783].i32[1];
  a1[783].i32[2] += a2[783].i32[2];
  a1[783].i32[3] += a2[783].i32[3];
  a1[784].i32[0] += a2[784].i32[0];
  a1[784].i32[1] += a2[784].i32[1];
  a1[784].i32[2] += a2[784].i32[2];
  a1[784].i32[3] += a2[784].i32[3];
  a1[785].i32[0] += a2[785].i32[0];
  a1[785].i32[1] += a2[785].i32[1];
  a1[785].i32[2] += a2[785].i32[2];
  a1[785].i32[3] += a2[785].i32[3];
  a1[786].i32[0] += a2[786].i32[0];
  a1[786].i32[1] += a2[786].i32[1];
  a1[786].i32[2] += a2[786].i32[2];
  a1[786].i32[3] += a2[786].i32[3];
  a1[787].i32[0] += a2[787].i32[0];
  a1[787].i32[1] += a2[787].i32[1];
  a1[787].i32[2] += a2[787].i32[2];
  a1[787].i32[3] += a2[787].i32[3];
  a1[788].i32[0] += a2[788].i32[0];
  a1[788].i32[1] += a2[788].i32[1];
  a1[788].i32[2] += a2[788].i32[2];
  a1[788].i32[3] += a2[788].i32[3];
  a1[789].i32[0] += a2[789].i32[0];
  a1[789].i32[1] += a2[789].i32[1];
  a1[789].i32[2] += a2[789].i32[2];
  a1[789].i32[3] += a2[789].i32[3];
  a1[790].i32[0] += a2[790].i32[0];
  a1[790].i32[1] += a2[790].i32[1];
  a1[790].i32[2] += a2[790].i32[2];
  a1[790].i32[3] += a2[790].i32[3];
  a1[791].i32[0] += a2[791].i32[0];
  a1[791].i32[1] += a2[791].i32[1];
  a1[791].i32[2] += a2[791].i32[2];
  a1[791].i32[3] += a2[791].i32[3];
  a1[792].i32[0] += a2[792].i32[0];
  a1[792].i32[1] += a2[792].i32[1];
  a1[792].i32[2] += a2[792].i32[2];
  a1[792].i32[3] += a2[792].i32[3];
  a1[793].i32[0] += a2[793].i32[0];
  a1[793].i32[1] += a2[793].i32[1];
  a1[793].i32[2] += a2[793].i32[2];
  a1[793].i32[3] += a2[793].i32[3];
  a1[795].i32[0] += a2[795].i32[0];
  a1[795].i32[1] += a2[795].i32[1];
  a1[795].i32[2] += a2[795].i32[2];
  a1[796].i32[2] += a2[796].i32[2];
  a1[796].i32[3] += a2[796].i32[3];
  a1[794].i32[0] += a2[794].i32[0];
  a1[794].i32[1] += a2[794].i32[1];
  a1[794].i32[2] += a2[794].i32[2];
  a1[794].i32[3] += a2[794].i32[3];
  a1[795].i32[3] += a2[795].i32[3];
  a1[796].i32[0] += a2[796].i32[0];
  a1[796].i32[1] += a2[796].i32[1];
  a1[797].i32[0] += a2[797].i32[0];
  a1[797].i32[1] += a2[797].i32[1];
  a1[797].i32[2] += a2[797].i32[2];
  a1[797].i32[3] += a2[797].i32[3];
  a1[798].i32[0] += a2[798].i32[0];
  a1[798].i32[1] += a2[798].i32[1];
  a1[798].i32[2] += a2[798].i32[2];
  a1[798].i32[3] += a2[798].i32[3];
  a1[799].i32[0] += a2[799].i32[0];
  a1[799].i32[1] += a2[799].i32[1];
  a1[799].i32[2] += a2[799].i32[2];
  a1[799].i32[3] += a2[799].i32[3];
  a1[800].i32[0] += a2[800].i32[0];
  a1[800].i32[1] += a2[800].i32[1];
  a1[800].i32[2] += a2[800].i32[2];
  a1[800].i32[3] += a2[800].i32[3];
  v114 = a1 + 801;
  v115 = a2 + 801;
  v116 = 1;
  do
  {
    v117 = 51 * v113;
    v118 = &v114->i32[51 * v113];
    v119 = &v115->i32[v117];
    v120 = v118[1];
    *v118 += *v119;
    v121 = v118[46];
    v118[47] += v119[47];
    v122 = v118[48];
    v118[49] += v119[49];
    v118[1] = v120 + v119[1];
    v118[48] = v122 + v119[48];
    v118[50] += v119[50];
    v123 = v118[3];
    v118[2] += v119[2];
    v118[3] = v123 + v119[3];
    v124 = v118[5];
    v118[4] += v119[4];
    v118[5] = v124 + v119[5];
    v125 = v118[7];
    v118[6] += v119[6];
    v118[7] = v125 + v119[7];
    v126 = v118[9];
    v118[8] += v119[8];
    v118[9] = v126 + v119[9];
    v127 = v118[11];
    v118[10] += v119[10];
    v118[11] = v127 + v119[11];
    v128 = v118[13];
    v118[12] += v119[12];
    v118[13] = v128 + v119[13];
    v129 = v118[34];
    v118[35] += v119[35];
    v130 = v118[37];
    v118[36] += v119[36];
    v118[37] = v130 + v119[37];
    v131 = v118[39];
    v118[38] += v119[38];
    v132 = v118[15];
    v118[14] += v119[14];
    v118[39] = v131 + v119[39];
    v133 = v118[41];
    v118[40] += v119[40];
    v118[41] = v133 + v119[41];
    v134 = v118[43];
    v118[42] += v119[42];
    v118[15] = v132 + v119[15];
    v135 = v118[17];
    v118[16] += v119[16];
    v118[17] = v135 + v119[17];
    v136 = v118[19];
    v118[18] += v119[18];
    v118[19] = v136 + v119[19];
    v137 = v118[21];
    v118[20] += v119[20];
    v118[21] = v137 + v119[21];
    v138 = v118[23];
    v118[22] += v119[22];
    v118[23] = v138 + v119[23];
    v139 = v118[25];
    v118[24] += v119[24];
    v118[25] = v139 + v119[25];
    v140 = v118[27];
    v118[26] += v119[26];
    v118[27] = v140 + v119[27];
    v141 = v118[29];
    v118[28] += v119[28];
    v118[29] = v141 + v119[29];
    v142 = v118[31];
    v118[30] += v119[30];
    v118[31] = v142 + v119[31];
    result = v118[32];
    v144 = v118[33];
    v118[32] = result + v119[32];
    v118[33] = v144 + v119[33];
    v118[34] = v129 + v119[34];
    v118[43] = v134 + v119[43];
    v145 = v118[45];
    v118[44] += v119[44];
    LOBYTE(v134) = v116;
    v118[45] = v145 + v119[45];
    v118[46] = v121 + v119[46];
    v113 = 1;
    v116 = 0;
  }

  while ((v134 & 1) != 0);
  return result;
}

void vp9_tokenize_sb(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6)
{
  v6 = **(a2 + 25360);
  v7 = *(a2 + 25368);
  v8 = *(a2 + 25376);
  if (v8)
  {
    v9 = *(v8 + 3);
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (v7)
  {
LABEL_3:
    LODWORD(v7) = *(v7 + 3);
  }

LABEL_4:
  v10 = v7 + v9;
  v22[0] = a1;
  v22[1] = a2;
  v22[2] = a3;
  if (*(v6 + 3))
  {
    v11 = (a2 + 24920);
    if (!(a5 | a4))
    {
      v12 = *(a2 + 114248) + 8 * v10;
      ++*(v12 + 12780);
    }

    v13 = &ss_size_lookup[4 * a6];
    v14 = v13[2 * *v11 + *(a2 + 24924)];
    bzero(*(a2 + 24976), num_4x4_blocks_wide_lookup[v14]);
    bzero(*(a2 + 24984), num_4x4_blocks_high_lookup[v14]);
    v16 = v13[2 * v11[34] + v11[35]];
    bzero(*(a2 + 25112), num_4x4_blocks_wide_lookup[v16]);
    bzero(*(a2 + 25120), num_4x4_blocks_high_lookup[v16]);
    v17 = v13[2 * v11[68] + v11[69]];
    bzero(*(a2 + 25248), num_4x4_blocks_wide_lookup[v17]);
    v18 = *(a2 + 25256);
    v19 = num_4x4_blocks_high_lookup[v17];

    bzero(v18, v19);
  }

  else
  {
    if (a4)
    {
      v20 = set_entropy_context_b;
    }

    else
    {
      v21 = *(a2 + 114248) + 8 * v10;
      ++*(v21 + 12776);
      v20 = tokenize_b;
    }

    vp9_foreach_transformed_block(a2 + 24912, a6, v20, v22);
  }
}

void tokenize_b(int a1, int a2, int a3, int a4, int a5, unsigned int a6, void *a7)
{
  v9 = 0;
  v61 = *MEMORY[0x277D85DE8];
  v10 = a7[1];
  v11 = a7[2];
  v12 = v10 + 8304 * a1;
  v56 = v10 + 24912;
  v13 = v10 + 24912 + 136 * a1;
  v14 = **(v10 + 25360);
  v15 = *(*(v12 + 8208) + 2 * a2);
  v16 = v14[8];
  v17 = v10 + 6912 * a6 + 3456 * (a1 > 0);
  v18 = *(*a7 + 176600) + 432 * a6 + 216 * (a1 > 0);
  v19 = *(v10 + 114248) + 576 * a6 + 288 * (a1 > 0);
  v20 = &vp9_coefband_trans_4x4;
  if (a6)
  {
    v20 = &vp9_coefband_trans_8x8plus;
  }

  v21 = *(v13 + 64);
  v22 = *(v13 + 72);
  v55 = v13;
  if (a6 > 1)
  {
    if (a6 != 2)
    {
      v23 = 0;
      if (a6 != 3)
      {
        goto LABEL_16;
      }

      v9 = *(v21 + a4) != 0;
      v25 = *(v22 + a3) == 0;
      goto LABEL_13;
    }

    v9 = *(v21 + a4) != 0;
    v24 = *(v22 + a3);
  }

  else if (a6)
  {
    v23 = 0;
    if (a6 != 1)
    {
      goto LABEL_16;
    }

    v9 = *(v21 + a4) != 0;
    v24 = *(v22 + a3);
  }

  else
  {
    v9 = *(v21 + a4) != 0;
    v24 = *(v22 + a3);
  }

  v25 = v24 == 0;
LABEL_13:
  v23 = !v25;
LABEL_16:
  v26 = a2;
  v27 = *v11;
  v28 = v23 + v9;
  if (a1 > 0 || v16 > 0 || *(v10 + 25540))
  {
    v29 = (&vp9_default_scan_orders + 3 * a6);
  }

  else
  {
    v52 = v14 + 1;
    v53 = *v14;
    v54 = &v14[12 * v26 + 20];
    if (v53 < 3)
    {
      v52 = v54;
    }

    v29 = (&vp9_scan_orders + 12 * a6 + 3 * intra_mode_to_tx_type_lookup[*v52]);
  }

  v30 = v17 + 1728 * (v16 > 0) + 86544;
  v31 = v18 + 108 * (v16 > 0) + 174;
  v32 = v19 + 144 * (v16 > 0) + 10032;
  if (v15)
  {
    v33 = 0;
    v34 = *(v12 + 0x2000) + (v26 << 6);
    v35 = *v29;
    v36 = v29[2];
    v37 = *v29 + 2;
    do
    {
      v43 = *(v34 + 4 * *(v35 + 2 * v33));
      v44 = v32 + 24 * v20[v33];
      ++*(v44 + 4 * v28);
      if (!v43)
      {
        v45 = &v36[4 * v33 + 6];
        v46 = &v20[v33];
        v47 = (v37 + 2 * v33);
        do
        {
          v48 = *v46++;
          *v27 = v31 + 18 * v48 + 3 * v28;
          *(v27 + 8) = 0;
          v27 += 16;
          ++*(v30 + 288 * v48 + 48 * v28);
          v60[*(v47 - 1)] = 0;
          v28 = (v60[*(v45 - 1)] + v60[*v45] + 1) >> 1;
          v43 = *(v34 + 4 * *v47);
          ++v33;
          v45 += 4;
          ++v47;
        }

        while (!v43);
      }

      if ((v43 - 67) > 0xFFFFFF7A)
      {
        v38 = vp9_dct_cat_lt_10_value_tokens + 8 * v43;
        v39 = *v38;
        v40 = *(v38 + 1);
      }

      else
      {
        v40 = -133 - 2 * v43;
        v39 = 10;
        if (v43 >= 67)
        {
          v40 = 2 * v43 - 134;
        }
      }

      v41 = v30 + 288 * v20[v33];
      *v27 = v31 + 18 * v20[v33] + 3 * v28;
      *(v27 + 8) = v39;
      *(v27 + 12) = v40;
      ++*(v41 + 48 * v28 + 4 * v39);
      v60[*(v35 + 2 * v33)] = vp9_pt_energy_class[v39];
      v42 = v33 + 1;
      v27 += 16;
      v28 = (v60[*&v36[4 * v42]] + v60[*&v36[2 * ((2 * v42) | 1)]] + 1) >> 1;
      ++v33;
    }

    while (v42 < v15);
  }

  else
  {
    LODWORD(v42) = 0;
  }

  if (v42 < 16 << (2 * a6))
  {
    v49 = v20[v42];
    v50 = v32 + 24 * v20[v42];
    ++*(v50 + 4 * v28);
    *v27 = v31 + 18 * v49 + 3 * v28;
    *(v27 + 8) = 11;
    v27 += 16;
    v51 = v30 + 288 * v49 + 48 * v28;
    ++*(v51 + 44);
  }

  *v11 = v27;

  vp9_set_contexts(v56, v55, a5, a6, v42 > 0, a4, a3);
}

double vp9_init_tpl_buffer(_DWORD *a1)
{
  v2 = a1 + 47710;
  v3 = a1 + 43252;
  v4 = (a1[43254] + 7) & 0xFFFFFFF8;
  v5 = (a1[43252] + 7) & 0xFFFFFFF8;
  v19 = a1 + 47710;
  if (v5 * v4 < 0)
  {
    v10 = 50;
    do
    {
      if (*(v2 - 3) < v4 || *(v2 - 2) < v5 || !*(v2 - 3))
      {
        v12 = *(v2 - 3);
        if (v12)
        {
          free(*(v12 - 8));
        }

        *(v2 - 3) = 0;
        vpx_internal_error((a1 + 42924), 2, "Failed to allocate cpi->tpl_stats[frame].tpl_stats_ptr");
        *(v2 - 32) = 0;
        *(v2 - 4) = v4;
        *(v2 - 3) = v4;
        v11 = *v3;
        *(v2 - 2) = v5;
        *(v2 - 1) = v11;
        *v2 = v3[2];
      }

      v2 += 10;
      --v10;
    }

    while (v10);
  }

  else
  {
    v6 = 48 * v5 * v4;
    if ((v6 | 0x17) <= 0x10000000000)
    {
      v13 = 50;
      do
      {
        if (*(v2 - 3) < v4 || *(v2 - 2) < v5 || !*(v2 - 3))
        {
          v15 = *(v2 - 3);
          if (v15)
          {
            free(*(v15 - 8));
          }

          v16 = malloc_type_malloc(v6 | 0x17, 0xD93B561uLL);
          if (v16 && (v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF0, *(v17 - 8) = v16, v17))
          {
            bzero(((v16 + 23) & 0xFFFFFFFFFFFFFFF0), v6);
            *(v2 - 3) = v17;
          }

          else
          {
            *(v2 - 3) = 0;
            vpx_internal_error((a1 + 42924), 2, "Failed to allocate cpi->tpl_stats[frame].tpl_stats_ptr");
          }

          *(v2 - 32) = 0;
          *(v2 - 4) = v4;
          *(v2 - 3) = v4;
          v14 = *v3;
          *(v2 - 2) = v5;
          *(v2 - 1) = v14;
          *v2 = v3[2];
        }

        v2 += 10;
        --v13;
      }

      while (v13);
    }

    else
    {
      v7 = 50;
      do
      {
        if (*(v2 - 3) < v4 || *(v2 - 2) < v5 || !*(v2 - 3))
        {
          v9 = *(v2 - 3);
          if (v9)
          {
            free(*(v9 - 8));
          }

          *(v2 - 3) = 0;
          vpx_internal_error((a1 + 42924), 2, "Failed to allocate cpi->tpl_stats[frame].tpl_stats_ptr");
          *(v2 - 32) = 0;
          *(v2 - 4) = v4;
          *(v2 - 3) = v4;
          v8 = *v3;
          *(v2 - 2) = v5;
          *(v2 - 1) = v8;
          *v2 = v3[2];
        }

        v2 += 10;
        --v7;
      }

      while (v7);
    }
  }

  *&result = 0x100000000;
  v19[256] = 0x100000000;
  v19[277] = 0x100000000;
  v19[298] = 0x100000000;
  v19[319] = 0x100000000;
  v19[340] = 0x100000000;
  v19[361] = 0x100000000;
  v19[382] = 0x100000000;
  v19[403] = 0x100000000;
  return result;
}

void vp9_estimate_tpl_qp_gop(uint64_t a1)
{
  v2 = a1 + 738460;
  v3 = a1 + 194556;
  v4 = (a1 + 171988);
  v49 = *(a1 + 748172);
  v46 = *(a1 + 176400);
  v5 = *(a1 + 742156);
  v7 = *(a1 + 171988);
  v6 = *(a1 + 171992);
  v8 = v6 + 63;
  v9 = v6 + 126;
  if (v8 >= 0)
  {
    v9 = v8;
  }

  v10 = v9 >> 6;
  v11 = v7 + 63;
  v12 = v7 + 126;
  if (v11 < 0)
  {
    v11 = v12;
  }

  v13 = v11 >> 6;
  v50 = ((v11 >> 6) * v10);
  v14 = 8 * v50 + 23;
  if (v14 <= 0x10000000000 && (v15 = malloc_type_malloc(v14, 0xD93B561uLL)) != 0)
  {
    *(((v15 + 23) & 0xFFFFFFFFFFFFFFF0) - 8) = v15;
    v54 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF0);
    if (v54)
    {
      v55 = 0;
      v52 = 0;
      v53 = 0;
      v47 = v5;
      if (v49 >= v5)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v54 = 0;
  }

  vpx_internal_error(a1 + 171696, 2, "Failed to allocate encode_frame_decision.sb_params_list");
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v47 = v5;
  if (v49 >= v5)
  {
LABEL_17:
    v22 = (a1 + 942328);
    v51 = a1 + 190808;
    v48 = 8 * v10 * v13;
    v23 = (v49 + 1);
    v24 = v47;
    while (1)
    {
      v27 = *(a1 + 744932 + 4 * v24);
      *(v2 + 3696) = v24;
      *v2 = v27;
      if (*(a1 + 190156) == 2)
      {
        v28 = *(v2 + 328);
        if (v28)
        {
          v17 = rate_thresh_mult[v28];
          v16 = v17 * v27;
          v27 = v16;
          *v2 = v16;
        }
      }

      v29 = (v27 << 12) / (v4[1] * *v4);
      if (v29 >= 0x7FFFFFFF)
      {
        LODWORD(v29) = 0x7FFFFFFF;
      }

      *(v2 + 8) = v29;
      *(v2 + 136) = 0;
      v4[249] = 0;
      *(v2 + 704) = 0;
      v30 = *(a1 + 743168 + 4 * v24);
      if (v30 <= 3)
      {
        break;
      }

      if (v30 == 4)
      {
        *v3 = 0x100000000;
        *(v3 + 8) = 0;
        *(v2 + 136) = 1;
        if (!*(v2 + 696))
        {
          goto LABEL_46;
        }

        *(v2 + 704) = 1;
        *(v3 + 4) = 0;
        goto LABEL_40;
      }

      if (v30 != 5)
      {
        if (v30 == 6)
        {
          *v3 = 0;
          *(v3 + 8) = 0;
          *(v2 + 136) = 1;
LABEL_40:
          v4[249] = 1;
          *(a1 + 176400) = 0;
          v31 = v51 + 40 * v24;
          if (!*v22)
          {
            goto LABEL_18;
          }

          goto LABEL_47;
        }

LABEL_42:
        *v3 = 0;
        goto LABEL_43;
      }

      *v3 = 1;
      *(v3 + 8) = 0;
      *(v2 + 136) = 1;
      v31 = v51 + 40 * v24;
      if (!*v22)
      {
        goto LABEL_18;
      }

LABEL_47:
      if ((*(a1 + 942344) & 1) != 0 && *(a1 + 942376))
      {
        if (v24 == v49)
        {
          goto LABEL_12;
        }

        bzero(v54, v48);
        if ((*(a1 + 942376))(*(a1 + 942336), *(v2 + 3696), &v52) == 1)
        {
          vpx_internal_error(a1 + 171696, 1, "vp9_extrc_get_encodeframe_decision() failed");
        }

        if (v50 < 1)
        {
          goto LABEL_62;
        }

        v32 = v54;
        v33 = SHIDWORD(v52) + 1;
        v34 = *(v3 + 68);
        if (v50 == 1)
        {
          v35 = 0;
        }

        else
        {
          v36 = (v54 + 12);
          v37 = (v34 + 8);
          v38 = v50 & 0x7FFFFFFE;
          do
          {
            v39 = (*v36 << 8) / v33;
            *(v37 - 1) = (*(v36 - 2) << 8) / v33;
            *v37 = v39;
            v36 += 4;
            v37 += 2;
            v38 -= 2;
          }

          while (v38);
          v35 = v50 & 0x7FFFFFFE;
          if (v35 == v50)
          {
            goto LABEL_62;
          }
        }

        v40 = v50 - v35;
        v41 = 8 * v35;
        v42 = (v34 + v41);
        v43 = &v32[v41 + 4];
        do
        {
          v44 = *v43;
          v43 += 8;
          *v42++ = (v44 << 8) / v33;
          --v40;
        }

        while (v40);
LABEL_62:
        *(v31 + 36) = v52;
        if (++v24 == v23)
        {
          goto LABEL_12;
        }
      }

      else
      {
LABEL_18:
        v25 = vp9_rc_pick_q_and_bounds_two_pass(a1, &v55 + 1, &v55, v24, v16, v17, v18, v19);
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        *(v31 + 36) = v26;
        if (++v24 == v23)
        {
          goto LABEL_12;
        }
      }
    }

    if (v30)
    {
      if (v30 == 1)
      {
        *v3 = 1;
        *(v3 + 8) = 0;
LABEL_46:
        v31 = v51 + 40 * v24;
        if (!*v22)
        {
          goto LABEL_18;
        }

        goto LABEL_47;
      }

      if (v30 == 2)
      {
        *v3 = 0x100000001;
        *(v3 + 8) = 0;
        v31 = v51 + 40 * v24;
        if (!*v22)
        {
          goto LABEL_18;
        }

        goto LABEL_47;
      }

      goto LABEL_42;
    }

    *v3 = 0x100000001;
LABEL_43:
    *(v3 + 8) = 1;
    v31 = v51 + 40 * v24;
    if (!*v22)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_12:
  *(v2 + 3696) = v47;
  *(a1 + 176400) = v46;
  *(v2 + 136) = 0;
  v4[249] = 0;
  *(v2 + 704) = 0;
  v20 = *(a1 + 4 * v47 + 743168);
  if (v20 <= 3)
  {
    switch(v20)
    {
      case 0:
        *v3 = 0x100000001;
        goto LABEL_74;
      case 1:
        v21 = 1;
        goto LABEL_77;
      case 2:
        v21 = 0x100000001;
LABEL_77:
        *v3 = v21;
        *(v3 + 8) = 0;
LABEL_78:
        v45 = v54;
        if (!v54)
        {
          return;
        }

        goto LABEL_79;
    }

LABEL_73:
    *v3 = 0;
LABEL_74:
    *(v3 + 8) = 1;
    v45 = v54;
    if (!v54)
    {
      return;
    }

    goto LABEL_79;
  }

  if (v20 == 4)
  {
    *v3 = 0x100000000;
    *(v3 + 8) = 0;
    *(v2 + 136) = 1;
    if (!*(v2 + 696))
    {
      goto LABEL_78;
    }

    *(v2 + 704) = 1;
    *(v3 + 4) = 0;
LABEL_71:
    v4[249] = 1;
    *(a1 + 176400) = 0;
    v45 = v54;
    if (!v54)
    {
      return;
    }

    goto LABEL_79;
  }

  if (v20 != 5)
  {
    if (v20 != 6)
    {
      goto LABEL_73;
    }

    *v3 = 0;
    *(v3 + 8) = 0;
    *(v2 + 136) = 1;
    goto LABEL_71;
  }

  *v3 = 1;
  *(v3 + 8) = 0;
  *(v2 + 136) = 1;
  v45 = v54;
  if (!v54)
  {
    return;
  }

LABEL_79:
  free(*(v45 - 1));
}

void vp9_setup_tpl_stats(uint64_t a1)
{
  v1 = a1;
  v226 = *MEMORY[0x277D85DE8];
  v2 = a1 + 942328;
  v202 = (a1 + 746948);
  v3 = a1 + 189936;
  v4 = (a1 + 171988);
  v196 = a1 + 742156;
  *(a1 + 190800) = 9;
  bzero(v209, 0x4F8uLL);
  v206 = v1;
  v208 = v3;
  v195 = v2;
  v204 = v4;
  if (!*v2 || (*(v2 + 16) & 2) == 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v193 = *(v3 + 988);
    v8 = *(v3 + 8);
    v225 = -1;
    v197 = v8 + 24;
    v223 = -1;
    v224 = -1;
    __src = -1;
    v222 = -1;
    while (1)
    {
      if (*(v8 + v5 + 24))
      {
        goto LABEL_4;
      }

      v9 = *(v3 + 8);
      v10 = v9 + v5;
      v11 = *(v9 + v5 + 32);
      if (!v11)
      {
        goto LABEL_10;
      }

      if (*(v10 + 40) < v4[255] || *(v9 + v5 + 44) < v4[257])
      {
        break;
      }

LABEL_16:
      if (vpx_realloc_frame_buffer(v8 + v5 + 88, *v4, v4[1], v4[6], v4[7], v4[8], 160, *v3, 0, 0, 0))
      {
        vpx_internal_error((v1 + 42924), 2, "Failed to allocate frame buffer");
      }

      *(&v224 + v7) = v6;
      if (v7 >= *(v3 + 368) + 2)
      {
LABEL_20:
        *(v3 + 2888) = v197 + 224 * v224 + 64;
        *(v3 + 2896) = v197 + 224 * SBYTE1(v224) + 64;
        *(v3 + 2904) = v197 + 224 * SBYTE2(v224) + 64;
        *(v3 + 2912) = v197 + 224 * SBYTE3(v224) + 64;
        v17 = v1[48629];
        if (v17 == -1)
        {
          v20 = 0;
          v19 = v196;
        }

        else
        {
          v18 = v1[v17 + 43012];
          v19 = v196;
          if (v18 == -1)
          {
            v20 = 0;
          }

          else
          {
            v20 = *(v3 + 8) + 224 * v18 + 88;
          }
        }

        v213 = v20;
        memset_pattern16(&v214, &unk_273BDA980, 0xCuLL);
        v216 = *(v19 + 1012);
        v44 = v1[48628];
        if (v44 == -1)
        {
          v46 = v202;
          v211 = 0;
          v47 = v1[48630];
          if (v47 != -1)
          {
            goto LABEL_61;
          }

LABEL_63:
          v49 = 0;
        }

        else
        {
          v45 = v1[v44 + 43012];
          v46 = v202;
          if (v45 == -1)
          {
            v211 = 0;
            v47 = v1[48630];
            if (v47 == -1)
            {
              goto LABEL_63;
            }
          }

          else
          {
            v211 = *(v3 + 8) + 224 * v45 + 88;
            v47 = v1[48630];
            if (v47 == -1)
            {
              goto LABEL_63;
            }
          }

LABEL_61:
          v48 = v1[v47 + 43012];
          if (v48 == -1)
          {
            goto LABEL_63;
          }

          v49 = *(v3 + 8) + 224 * v48 + 88;
        }

        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v54 = *(v3 + 504);
        v210 = v49;
        v217 = v54;
        v218 = 0xFFFFFFFF00000000;
        LODWORD(v54) = *(v19 + 1016);
        v219 = -2;
        v220[0] = v54;
        v55 = (v3 + 1028);
        v56 = v1 + 185794;
        v57 = v1 + 744682;
        v58 = *(v3 + 488);
        v59 = 1;
        v60 = -1;
        v199 = v1 + 744682;
        v201 = v1 + 185794;
        while (2)
        {
          v61 = v57[v50];
          if (v57[v50])
          {
            if (v58[1] < v61)
            {
              goto LABEL_95;
            }

            v62 = v61 - 1 + v58[2];
            v63 = *v58;
            if (v62 < *v58)
            {
              v63 = 0;
            }

            v64 = v62 - v63;
          }

          else
          {
            v65 = v58[2];
            v64 = v65 - 1;
            if (v65 <= 0)
            {
              v64 += *v58;
            }
          }

          v66 = *(v58 + 3);
          if (!v66)
          {
LABEL_95:
            v79 = v50 + 2;
            if ((v50 + 2) > 0x17)
            {
LABEL_108:
              v78 = 0;
              goto LABEL_112;
            }

LABEL_96:
            v78 = 0;
            v80 = &v220[v51 + 11];
            v81 = v50 + 3;
            if (v51 == 126)
            {
              v82 = 1;
            }

            else
            {
              v82 = 2;
            }

            v83 = v79;
            while (1)
            {
              v84 = v81;
              if (v58[1] <= v61 + v78)
              {
                v79 = v83;
                goto LABEL_112;
              }

              v85 = *(v58 + 3);
              if (!v85)
              {
                break;
              }

              v86 = v58[2];
              if (v61 + v78 + v86 >= *v58)
              {
                v87 = *v58;
              }

              else
              {
                v87 = 0;
              }

              *v55 = v193;
              v55 += 10;
              *(v80 - 2) = v85 + 192 * (v61 + v78 + v86 - v87);
              ++v83;
              ++v78;
              *(v80 - 2) = v53;
              *(v80 - 1) = v60;
              *v80 = 0x1FFFFFFFFLL;
              v80 += 3;
              v81 = v84 + 1;
              v60 = v84;
              if (v82 == v78)
              {
                v79 += v82;
                v78 = v82;
                goto LABEL_112;
              }
            }

            v79 += v78;
LABEL_112:
            v3 = v208;
            goto LABEL_113;
          }

          v67 = v50 + 2;
          v68 = v66 + 192 * v64;
          v69 = &v209[v51 * 4];
          *(v69 + 15) = v68;
          *(v69 + 32) = v53;
          *(v69 + 33) = v60;
          v70 = v56[v50];
          *(v69 + 34) = v59;
          *(v69 + 35) = v70;
          if (v70 <= 3)
          {
            if (v70 == 1)
            {
              v73 = v59;
              v60 = v50 + 2;
              if (v67 == v46[306])
              {
                goto LABEL_107;
              }
            }

            else
            {
              if (v70 == 3)
              {
                if (v52 >= 1)
                {
                  v194 = v53;
                  v71 = v1;
                  v72 = v52;
                  memmove(&__src + 4, &__src, 4 * v52);
                  v57 = v199;
                  v56 = v201;
                  v52 = v72;
                  v1 = v71;
                  v53 = v194;
                  v46 = v202;
                }

                LODWORD(__src) = v59;
                ++v52;
                v73 = v50 + 2;
                if (v67 == v46[306])
                {
                  goto LABEL_107;
                }

                goto LABEL_93;
              }

LABEL_86:
              v73 = v59;
              if (v67 == v46[306])
              {
                goto LABEL_107;
              }
            }

LABEL_93:
            v55 += 10;
            v51 += 6;
            ++v50;
            v59 = v73;
            if (v51 == 288)
            {
              v78 = 0;
              v79 = 50;
              goto LABEL_112;
            }

            continue;
          }

          break;
        }

        if (v70 == 4)
        {
          v73 = __src;
          v76 = __OFSUB__(v52--, 1);
          if (!((v52 < 0) ^ v76 | (v52 == 0)))
          {
            v77 = v52;
            memmove(&__src, &__src + 4, 4 * v52);
            v57 = v199;
            v56 = v201;
            v52 = v77;
            v46 = v202;
          }

          v53 = v50 + 2;
          if (v67 == v46[306])
          {
LABEL_107:
            v79 = v50 + 3;
            if ((v50 + 2) > 0x17)
            {
              goto LABEL_108;
            }

            goto LABEL_96;
          }

          goto LABEL_93;
        }

        if (v70 == 6)
        {
          v73 = __src;
          v74 = v52 - 1;
          if (v52 >= 2)
          {
            v75 = v53;
            memmove(&__src, &__src + 4, 4 * (v52 - 1));
            v57 = v199;
            v56 = v201;
            v53 = v75;
            v46 = v202;
          }

          v60 = v59;
          v52 = v74;
          v1 = v206;
          if (v67 == v46[306])
          {
            goto LABEL_107;
          }

          goto LABEL_93;
        }

        goto LABEL_86;
      }

      ++v7;
LABEL_4:
      ++v6;
      v5 += 224;
      if (v6 == 12)
      {
        goto LABEL_20;
      }
    }

    free(*(v11 - 8));
LABEL_10:
    v12 = v4[257] * v4[255];
    if ((v12 & 0x80000000) == 0 && (v13 = 12 * v12, (v14 = malloc_type_malloc(v13 + 23, 0xD93B561uLL)) != 0) && (v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF0, *(v15 - 8) = v14, v15))
    {
      bzero(((v14 + 23) & 0xFFFFFFFFFFFFFFF0), v13);
      *(v10 + 32) = v15;
    }

    else
    {
      *(v10 + 32) = 0;
      vpx_internal_error((v1 + 42924), 2, "Failed to allocate new_fb_ptr->mvs");
    }

    v4 = v204;
    v16 = v9 + v5;
    *(v16 + 40) = v204[255];
    *(v16 + 44) = v204[257];
    v3 = v208;
    goto LABEL_16;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v200 = *(v3 + 988);
  v24 = *(v3 + 8);
  v198 = v24 + 24;
  v225 = -1;
  v224 = -1;
  while (*(v24 + v21 + 24))
  {
LABEL_24:
    ++v22;
    v21 += 224;
    if (v22 == 12)
    {
      goto LABEL_40;
    }
  }

  v25 = *(v3 + 8);
  v26 = v25 + v21;
  v27 = *(v25 + v21 + 32);
  if (v27)
  {
    if (*(v26 + 40) >= v4[255] && *(v25 + v21 + 44) >= v4[257])
    {
      goto LABEL_36;
    }

    free(*(v27 - 8));
  }

  v28 = v4[257] * v4[255];
  if ((v28 & 0x80000000) == 0 && (v29 = 12 * v28, (v30 = malloc_type_malloc(v29 + 23, 0xD93B561uLL)) != 0) && (v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF0, *(v31 - 8) = v30, v31))
  {
    bzero(((v30 + 23) & 0xFFFFFFFFFFFFFFF0), v29);
    *(v26 + 32) = v31;
  }

  else
  {
    *(v26 + 32) = 0;
    vpx_internal_error((v1 + 42924), 2, "Failed to allocate new_fb_ptr->mvs");
  }

  v4 = v204;
  v32 = v25 + v21;
  *(v32 + 40) = v204[255];
  *(v32 + 44) = v204[257];
  v3 = v208;
LABEL_36:
  if (vpx_realloc_frame_buffer(v24 + v21 + 88, *v4, v4[1], v4[6], v4[7], v4[8], 160, *v3, 0, 0, 0))
  {
    vpx_internal_error((v1 + 42924), 2, "Failed to allocate frame buffer");
  }

  *(&v224 + v23) = v22;
  if (v23 < *(v3 + 368) + 2)
  {
    ++v23;
    goto LABEL_24;
  }

LABEL_40:
  *(v3 + 2888) = v198 + 224 * v224 + 64;
  *(v3 + 2896) = v198 + 224 * SBYTE1(v224) + 64;
  *(v3 + 2904) = v198 + 224 * SBYTE2(v224) + 64;
  *(v3 + 2912) = v198 + 224 * SBYTE3(v224) + 64;
  v33 = v196;
  if (*v196 == 1 && *(v196 + 1016) == 3)
  {
    v34 = v200;
    if (*(v196 + 1012))
    {
      v35 = v204[15];
      if (v35 == -1)
      {
        LODWORD(__src) = -3;
        v36 = v204[16];
        if (v36 == -1)
        {
          goto LABEL_186;
        }

LABEL_45:
        v211 = *(v3 + 8) + 224 * v36 + 88;
        HIDWORD(__src) = -1;
        v37 = v204[17];
        if (v37 != -1)
        {
          goto LABEL_46;
        }

LABEL_187:
        v38 = -3;
      }

      else
      {
        v213 = *(v3 + 8) + 224 * v35 + 88;
        LODWORD(__src) = 0;
        v36 = v204[16];
        if (v36 != -1)
        {
          goto LABEL_45;
        }

LABEL_186:
        HIDWORD(__src) = -3;
        v37 = v204[17];
        if (v37 == -1)
        {
          goto LABEL_187;
        }

LABEL_46:
        v210 = *(v3 + 8) + 224 * v37 + 88;
        v38 = -2;
      }

      LODWORD(v222) = v38;
      v214 = __src;
      v215 = v38;
    }

    else
    {
      memset_pattern16(&__src, &unk_273BDA980, 0xCuLL);
      v134 = *v202;
      v213 = *(v3 + 8) + 224 * v1[v134 + 43012] + 88;
      *(&__src + v134 * 4) = 0;
      v33 = v196;
      memset_pattern16(&v214, &unk_273BDA980, 0xCuLL);
      v216 = 0;
    }

    v217 = *(v3 + 504);
    v218 = __src;
    v219 = v222;
    v220[0] = 3;
    v88 = 1;
    v89 = 4796;
LABEL_190:
    v133 = *(v33 + v89);
    v130 = v202;
LABEL_191:
    *(&__src + v133) = v88;
    v131 = v88;
    v79 = v88 + 1;
    v132 = v130[306];
    if (v132 >= 2)
    {
      goto LABEL_192;
    }

LABEL_209:
    v135 = (v3 + 488);
    goto LABEL_210;
  }

  v39 = *(v196 + 1012);
  v34 = v200;
  if (!v39)
  {
    v213 = *(v3 + 504);
    memset_pattern16(&v214, &unk_273BDA980, 0xCuLL);
    v216 = 0;
    v33 = v196;
    memset_pattern16(&__src, &unk_273BDA980, 0xCuLL);
    v88 = 0;
    v89 = 4792;
    goto LABEL_190;
  }

  v40 = v204[15];
  if (v40 == -1)
  {
    LODWORD(__src) = -3;
    v41 = v204[16];
    if (v41 == -1)
    {
      goto LABEL_176;
    }

LABEL_51:
    v211 = *(v3 + 8) + 224 * v41 + 88;
    HIDWORD(__src) = -1;
    v42 = v204[17];
    if (v42 != -1)
    {
      goto LABEL_52;
    }

LABEL_177:
    v43 = -3;
  }

  else
  {
    v213 = *(v3 + 8) + 224 * v40 + 88;
    LODWORD(__src) = 0;
    v41 = v204[16];
    if (v41 != -1)
    {
      goto LABEL_51;
    }

LABEL_176:
    HIDWORD(__src) = -3;
    v42 = v204[17];
    if (v42 == -1)
    {
      goto LABEL_177;
    }

LABEL_52:
    v210 = *(v3 + 8) + 224 * v42 + 88;
    v43 = -2;
  }

  v130 = v202;
  LODWORD(v222) = v43;
  v214 = __src;
  v215 = v43;
  v216 = v39;
  if (v39 == 4)
  {
    v131 = 0;
    v79 = 1;
    v132 = v202[306];
    if (v132 >= 2)
    {
      goto LABEL_192;
    }

    goto LABEL_209;
  }

  v88 = 0;
  v131 = 0;
  v133 = *v202;
  if (*v202 != -1)
  {
    goto LABEL_191;
  }

  v79 = 1;
  v132 = v202[306];
  if (v132 < 2)
  {
    goto LABEL_209;
  }

LABEL_192:
  if (*(v33 + 1016) != 3)
  {
    goto LABEL_209;
  }

  v135 = (v3 + 488);
  if (v1[v132 + 185792] != 4)
  {
LABEL_210:
    if (v79 >= v132)
    {
LABEL_229:
      v78 = 0;
      goto LABEL_113;
    }

    v157 = 0;
    v158 = v131;
    v79 = v131 + 1;
    v159 = 48 - v131;
    v137 = *v135;
    v160 = ~v131 + v132;
    v161 = &v1[v131 + 185793];
    v162 = &v220[6 * v131];
    v163 = v1 + (v131 | 0xB5704) + 1509;
    v164 = v131 + 2 - v132;
    v165 = v131 - v132 + 1;
    do
    {
      v145 = *(v163 + v157);
      if (*(v163 + v157))
      {
        if (v137[1] < v145)
        {
          goto LABEL_229;
        }

        v166 = v145 - 1 + v137[2];
        v167 = *v137;
        if (v166 < *v137)
        {
          v167 = 0;
        }

        v168 = v166 - v167;
      }

      else
      {
        v169 = v137[2];
        v168 = v169 - 1;
        if (v169 <= 0)
        {
          v168 += *v137;
        }
      }

      v170 = *(v137 + 3);
      if (!v170)
      {
        break;
      }

      *(v162 - 5) = v170 + 192 * v168;
      *(v162 - 3) = __src;
      *(v162 - 1) = v222;
      v171 = *v161;
      if (*v161 != 4)
      {
        v172 = v161[945];
        if (v172 != -1)
        {
          *(&__src + v172) = v158 + v157 + 1;
        }
      }

      *v162 = v171;
      if (v160 == v157)
      {
        v174 = 0;
        v79 = v158 + v157 + 2;
        v138 = v132 + 1;
        goto LABEL_233;
      }

      if (!(v164 + v157) && v1[v132 + 185792] != 4)
      {
        v79 = v158 + v157 + 2;
        v78 = 0;
        goto LABEL_113;
      }

      if (v159 == v157)
      {
LABEL_208:
        v79 = 50;
        v78 = 0;
        goto LABEL_113;
      }

      ++v157;
      ++v161;
      v162 += 6;
      ++v79;
    }

    while (v165 + v157);
    v173 = 0;
    v79 = v158 + v157 + 1;
LABEL_261:
    v78 = v173;
    goto LABEL_113;
  }

  v136 = 0;
  v137 = *v135;
  v138 = v132 + 1;
  v139 = v132 + ~v131;
  v140 = 24 * (v131 ^ 0x31);
  v141 = &v209[24 * v131];
  v142 = &v1[v131 + 185793];
  v143 = v1 + (v131 | 0xB5704) + 1509;
  v144 = 24 * v139;
  while (1)
  {
    v146 = *v143++;
    v145 = v146;
    if (v146)
    {
      if (v137[1] < v145)
      {
        goto LABEL_231;
      }

      v147 = v145 - 1 + v137[2];
      v148 = *v137;
      if (v147 < *v137)
      {
        v148 = 0;
      }

      v149 = v147 - v148;
    }

    else
    {
      v150 = v137[2];
      v149 = v150 - 1;
      if (v150 <= 0)
      {
        v149 += *v137;
      }
    }

    v151 = *(v137 + 3);
    if (!v151)
    {
LABEL_231:
      v173 = 0;
      v174 = 1;
      v138 = v79;
      goto LABEL_234;
    }

    v152 = v151 + 192 * v149;
    v153 = &v141[v136];
    v154 = __src;
    *(v153 + 12) = v152;
    *(v153 + 13) = v154;
    *(v153 + 28) = v222;
    v155 = *v142;
    if (*v142 != 4)
    {
      v156 = v142[945];
      if (v156 != -1)
      {
        *(&__src + v156) = v79;
      }
    }

    *(v153 + 29) = v155;
    if (v144 == v136)
    {
      break;
    }

    ++v79;
    v136 += 24;
    ++v142;
    if (v140 == v136)
    {
      goto LABEL_208;
    }
  }

  v174 = 1;
  v79 = v138;
LABEL_233:
  ++v145;
  v173 = 1;
LABEL_234:
  if (!v174 || v138 > 24)
  {
    goto LABEL_261;
  }

  v175 = 0;
  v176 = v138 - 1;
  if (v138 == 24)
  {
    v177 = 1;
  }

  else
  {
    v177 = 2;
  }

  v178 = &v216 + 6 * v138;
  v179 = &v1[10 * v138 + 47711];
  v180 = v79;
  while (1)
  {
    if (v145 + v175)
    {
      if (v137[1] < v145 + v175)
      {
        v79 += v175;
        v78 = v175 + v173;
        goto LABEL_113;
      }

      v181 = v137[2];
      v182 = v145 + v175 + v181 - 1 >= *v137 ? *v137 : 0;
      v183 = v145 + v175 + v181 - v182 - 1;
    }

    else
    {
      v184 = v137[2];
      v183 = v184 - 1;
      if (v184 <= 0)
      {
        v183 += *v137;
      }
    }

    v185 = *(v137 + 3);
    if (!v185)
    {
      break;
    }

    v186 = v176 + v175;
    *v179 = v34;
    *(v178 - 5) = v185 + 192 * v183;
    v187 = &v213 + 3 * v176 + 3 * v175;
    v188 = *(v187 + 2);
    *(v178 - 3) = v188;
    v189 = *(v187 + 3);
    *(v178 - 2) = v189;
    v190 = *(v187 + 4);
    *(v178 - 1) = v190;
    if (v188 <= v189 || v188 <= v190)
    {
      if (v189 <= v188 || v189 <= v190)
      {
        *(v178 - 1) = v186;
      }

      else
      {
        *(v178 - 2) = v186;
      }
    }

    else
    {
      *(v178 - 3) = v186;
    }

    *v178 = 1;
    v178 += 6;
    ++v180;
    ++v175;
    v179 += 10;
    if (v177 == v175)
    {
      v79 += v177;
      v78 = v177 + v173;
      goto LABEL_113;
    }
  }

  v79 = v180;
  v78 = v175 + v173;
LABEL_113:
  v90 = (v3 + 896);
  v91 = 50;
  do
  {
    bzero(*(v90 - 2), 48 * *(v90 - 1) * *v90);
    *(v90 - 24) = 0;
    v90 += 5;
    --v91;
  }

  while (v91);
  v92 = (v3 + 2872);
  v93 = *v204;
  v94 = *(v3 + 2872);
  if (v94 >= 1)
  {
    v95 = 0;
    v96 = 16;
    do
    {
      v97 = *(*(v3 + 2880) + v96);
      if (v97)
      {
        free(*(v97 - 8));
        v94 = *v92;
      }

      ++v95;
      v96 += 24;
    }

    while (v95 < v94);
  }

  v98 = *(v3 + 2880);
  if (v98)
  {
    free(*(v98 - 8));
  }

  if ((v79 & 0x80000000) == 0 && (v99 = malloc_type_malloc(24 * v79 + 23, 0xD93B561uLL)) != 0 && (v100 = (v99 + 23) & 0xFFFFFFFFFFFFFFF0, *(v100 - 8) = v99, v100))
  {
    bzero(((v99 + 23) & 0xFFFFFFFFFFFFFFF0), 24 * v79);
    *(v208 + 2880) = v100;
    v101 = v208;
    *v92 = v79;
    if (v79 < 1)
    {
      goto LABEL_136;
    }

LABEL_128:
    v203 = v92;
    v205 = v79;
    v102 = 0;
    v103 = v79;
    v104 = 24 * v79;
    v105 = (v101 + 904);
    do
    {
      v108 = *v105 * *(v105 - 1);
      if ((v108 & 0x80000000) == 0 && (v109 = malloc_type_malloc(80 * v108 + 23, 0xD93B561uLL)) != 0 && (v110 = (v109 + 23) & 0xFFFFFFFFFFFFFFF0, *(v110 - 8) = v109, v110))
      {
        bzero(((v109 + 23) & 0xFFFFFFFFFFFFFFF0), 80 * v108);
        v101 = v208;
        v106 = *(v208 + 2880);
        *(v106 + v102 + 16) = v110;
      }

      else
      {
        v101 = v208;
        *(*(v208 + 2880) + v102 + 16) = 0;
        vpx_internal_error(v206 + 171696, 2, "Failed to allocate tpl_gop_stats->frame_stats_list[frame_idx].block_stats_list");
        v106 = *(v208 + 2880);
      }

      v105 += 10;
      v107 = v106 + v102;
      *(v107 + 8) = v108;
      *v107 = v93;
      v102 += 24;
    }

    while (v104 != v102);
    v1 = v206;
    v92 = v203;
    if (v205 != 1)
    {
      v112 = &v212[24 * v103];
      do
      {
        v113 = *v112;
        v112 -= 6;
        if (v113 != 6)
        {
          mc_flow_dispenser(v206, &v213, (v103 - 1));
        }

        --v103;
      }

      while ((v103 + 1) > 2);
    }
  }

  else
  {
    v101 = v208;
    *(v208 + 2880) = 0;
    vpx_internal_error((v1 + 42924), 2, "Failed to allocate tpl_gop_stats->frame_stats_list");
    *v92 = v79;
    if (v79 >= 1)
    {
      goto LABEL_128;
    }
  }

LABEL_136:
  if (*v195 && *(v195 + 40))
  {
    if (*(v196 + 1012) == 4)
    {
      v76 = __OFSUB__(*v92, v78);
      v111 = (*v92 - v78);
      if (!((v111 < 0) ^ v76 | (v111 == 0)))
      {
        goto LABEL_140;
      }

LABEL_148:
      vpx_internal_error((v1 + 42924), 1, "The number of frames in VpxTplGopStats is fewer than expected.");
      if ((v111 & 0x80000000) == 0)
      {
        goto LABEL_149;
      }

LABEL_153:
      vpx_internal_error((v1 + 42924), 2, "Failed to allocate new_frame_stats");
      v207 = 0;
      if (v111 >= 1)
      {
        goto LABEL_154;
      }
    }

    else
    {
      mc_flow_dispenser(v1, &v213, 0);
      v76 = __OFSUB__(*v92, v78);
      v111 = (*v92 - v78);
      if ((v111 < 0) ^ v76 | (v111 == 0))
      {
        goto LABEL_148;
      }

LABEL_140:
      if ((v111 & 0x80000000) != 0)
      {
        goto LABEL_153;
      }

LABEL_149:
      v114 = malloc_type_malloc(24 * v111 + 23, 0xD93B561uLL);
      if (!v114)
      {
        goto LABEL_153;
      }

      *(((v114 + 23) & 0xFFFFFFFFFFFFFFF0) - 8) = v114;
      if (((v114 + 23) & 0xFFFFFFFFFFFFFFF0) == 0)
      {
        goto LABEL_153;
      }

      v207 = ((v114 + 23) & 0xFFFFFFFFFFFFFFF0);
      bzero(v207, 24 * v111);
      if (v111 >= 1)
      {
LABEL_154:
        v115 = 0;
        v116 = v207 + 2;
        v117 = v111;
        do
        {
          v119 = *(v101 + 2880);
          v120 = *(v119 + v115 + 8);
          *(v116 - 2) = *(v119 + v115);
          *(v116 - 2) = v120;
          v121 = 80 * v120;
          if ((v120 & 0x80000000) == 0 && (v122 = malloc_type_malloc(v121 + 23, 0xD93B561uLL)) != 0 && (v123 = (v122 + 23) & 0xFFFFFFFFFFFFFFF0, *(v123 - 8) = v122, v123))
          {
            bzero(((v122 + 23) & 0xFFFFFFFFFFFFFFF0), v121);
            v118 = v123;
            *v116 = v123;
          }

          else
          {
            *v116 = 0;
            vpx_internal_error((v1 + 42924), 2, "Failed to allocate new_frame_stats[i].block_stats_list");
            v118 = *v116;
          }

          memcpy(v118, *(v119 + v115 + 16), v121);
          v116 += 3;
          v115 += 24;
          --v117;
          v101 = v208;
        }

        while (v117);
      }
    }

    v124 = *v92;
    if (*v92 >= 1)
    {
      v125 = 0;
      v126 = 16;
      do
      {
        v127 = *(*(v101 + 2880) + v126);
        if (v127)
        {
          free(*(v127 - 8));
          v124 = *v92;
        }

        ++v125;
        v126 += 24;
      }

      while (v125 < v124);
    }

    v128 = *(v101 + 2880);
    if (v128)
    {
      free(*(v128 - 8));
    }

    *(v101 + 2872) = v111;
    *(v101 + 2880) = v207;
    if (*v195)
    {
      v129 = *(v195 + 40);
      if (v129)
      {
        if (v129(*(v195 + 8), v92) == 1)
        {

          vpx_internal_error((v1 + 42924), 1, "vp9_extrc_send_tpl_stats() failed");
        }
      }
    }
  }
}

uint64_t mc_flow_dispenser(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v356 = *MEMORY[0x277D85DE8];
  v287 = (v3 + 189856);
  v4 = *(v3 + 192816);
  v281 = v6;
  v282 = v5;
  v7 = 24 * v6;
  v8 = (v5 + v7);
  v9 = *(v5 + v7);
  v352 = 0;
  v353 = 0;
  v354 = 0;
  v10 = (v3 + 171988);
  v323 = v3;
  v329 = v3 + 74144;
  memset(v333, 0, sizeof(v333));
  v322 = v11;
  v328 = max_txsize_lookup[v11];
  v12 = num_8x8_blocks_high_lookup[v11];
  memset(v332, 0, sizeof(v332));
  v279 = v11;
  v13 = num_8x8_blocks_wide_lookup[v11];
  memset(v331, 0, sizeof(v331));
  v286 = v4 + v7;
  *(v4 + v7) = *(v3 + 171988);
  vp9_setup_scale_factors_for_frame(v331, *(v9 + 8), *(v9 + 12), *(v9 + 8), *(v9 + 12), *(v3 + 172020));
  v14 = v8[2];
  if (v14 != -3)
  {
    v352 = *(v282 + 24 * v14);
  }

  v15 = *(v329 + 496);
  v16 = v8[3];
  if (v16 != -3)
  {
    v353 = *(v282 + 24 * v16);
  }

  v17 = *(v15 + 152);
  v18 = (&v351 >> 1);
  v19 = v8[4];
  if (v19 != -3)
  {
    v354 = *(v282 + 24 * v19);
  }

  v20 = v323 + 190808;
  v21 = v323 + 190808 + 40 * v281;
  if ((v17 & 8) == 0)
  {
    v18 = &v350;
  }

  v319 = v18;
  v22 = *(v10 + 297);
  *(v329 + 416) = v22;
  *v22 = *(v10 + 283);
  *(v329 + 496) = v9;
  v23 = vp9_compute_rd_mult_based_on_qindex(v323, *(v21 + 36));
  v24 = v23 >> 6;
  if (v23 < 0x40)
  {
    ++v24;
  }

  *(v329 + 676) = v24;
  v292 = v323 + 190808 + 40 * v281;
  v25 = *(v21 + 36);
  if (*v287 == 8)
  {
    v26 = &sad_per_bit4lut_8;
    v27 = &sad_per_bit16lut_8;
  }

  else if (*v287 == 10)
  {
    v26 = &sad_per_bit4lut_10;
    v27 = &sad_per_bit16lut_10;
  }

  else
  {
    v26 = &sad_per_bit4lut_12;
    v27 = &sad_per_bit16lut_12;
  }

  *(v329 + 680) = v27[v25];
  *(v329 + 684) = v26[v25];
  *v21 = 1;
  v10[260] = v25;
  result = vp9_init_plane_quantizers(v323, v323 + 49200);
  v29 = v329;
  v30 = v10[255];
  v31 = v328;
  if (v30 < 1)
  {
    return result;
  }

  v32 = v10[257];
  if (v32 < 1)
  {
    return result;
  }

  v293 = 0;
  v325 = 0;
  v320 = (v329 + 904);
  v301 = 2 * ((v279 - 9) > 3);
  v302 = &vp9_default_scan_orders + 3 * v328;
  v285 = v13 * v12;
  v284 = 48 * v13;
  v280 = 48 * v12;
  v283 = 8 * v13;
  v310 = v10;
  v315 = v13;
  v316 = v12;
  while (2)
  {
    if (v32 < 1)
    {
      goto LABEL_20;
    }

    v318 = 0;
    v299 = 0;
    v33 = 0;
    v314 = b_width_log2_lookup[v279];
    v34 = (4 << v314);
    v321 = 4 << b_height_log2_lookup[v279];
    v291 = ~v325;
    v35 = v337;
    if (!v325)
    {
      v35 = 0;
    }

    v288 = v35;
    v36 = *(v292 + 8);
    v300 = 2 * v34;
    v306 = &v348[v300];
    v307 = v325 << 7;
    v311 = 2 * v34;
    v317 = 8;
    v312 = *(v292 + 16);
    v298 = 46;
    v297 = 24;
    v296 = 40;
    v295 = 32;
    while (2)
    {
      v37 = 0;
      v330 = 0;
      v308 = 8 * v33;
      v326 = 8 * v33 + 8 * v325 * *(*(v29 + 496) + 16);
      v338 = 0;
      memset(v337, 0, sizeof(v337));
      v336 = 0;
      memset(v335, 0, sizeof(v335));
      *(v29 + 468) = (v10[255] + v291) << 6;
      *(v29 + 456) = -64 * v33;
      v289 = ~v33;
      *(v29 + 460) = (v32 + ~v33) << 6;
      v294 = v33;
      v38 = v335;
      if (!v33)
      {
        v38 = 0;
      }

      *(v29 + 424) = v38;
      *(v29 + 432) = v288;
      v324 = 0x7FFFFFFFFFFFFFFFLL;
      *(v29 + 464) = -64 * v325;
      do
      {
        v41 = *(v29 + 496);
        v42 = *(v41 + 56) + v326;
        v43 = *(v41 + 16);
        v44 = **(v29 + 416);
        *v44 = v322;
        v44[8] = 0;
        v45 = v29;
        vp9_predict_intra_block(v323 + 74112, v314, v31, v37, v42, v43, v319, v34, 0, 0, 0);
        if ((*(*(v45 + 496) + 152) & 8) != 0)
        {
          v46 = 2 * v42;
          if (v34 < 16)
          {
            v31 = v328;
            if (v34 < 8)
            {
              if (v34 >= 4)
              {
                v78 = v348;
                v79 = 2 * v319;
                v80 = v321;
                do
                {
                  v81 = 0;
                  for (i = 0; i < v34; i += 4)
                  {
                    *&v78->i8[v81] = vsub_s16(*(v46 + v81), *(v79 + v81));
                    v81 += 8;
                  }

                  v78 = (v78 + v311);
                  v79 += v311;
                  v46 += 2 * v43;
                  --v80;
                }

                while (v80);
              }
            }

            else
            {
              v54 = v348;
              v55 = 2 * v319;
              v56 = v321;
              do
              {
                v57 = 0;
                for (j = 0; j < v34; j += 8)
                {
                  v54[v57] = vsubq_s16(*(v46 + v57 * 16), *(v55 + v57 * 16));
                  ++v57;
                }

                v54 = (v54 + v311);
                v55 += v311;
                v46 += 2 * v43;
                --v56;
              }

              while (v56);
            }
          }

          else
          {
            v47 = v348;
            v48 = 2 * v319;
            v49 = v321;
            v31 = v328;
            do
            {
              v50 = 0;
              v51 = 16;
              do
              {
                v52 = vsubq_s16(*(v46 + v51), *(v48 + v51));
                v53 = &v47[v51 / 0x10];
                v53[-1] = vsubq_s16(*(v46 + v51 - 16), *(v48 + v51 - 16));
                *v53 = v52;
                v50 += 16;
                v51 += 32;
              }

              while (v50 < v34);
              v46 += 2 * v43;
              v48 += v311;
              v47 = (v47 + v311);
              --v49;
            }

            while (v49);
          }

          switch(v31)
          {
            case 3u:
              v83 = v344;
              vpx_highbd_hadamard_16x16_neon(v348, v34, v344);
              vpx_highbd_hadamard_16x16_neon(v349, v34, v345);
              vpx_highbd_hadamard_16x16_neon(v306, v34, v346);
              vpx_highbd_hadamard_16x16_neon(v306 + 2, v34, v347);
              v31 = v328;
              v84 = 64;
              do
              {
                v85 = v83[64];
                v86 = v83[128];
                v87 = v83[192];
                v88 = vaddq_s32(v85, *v83);
                v89 = vsubq_s32(*v83, v85);
                v90 = vshrq_n_s32(vaddq_s32(v87, v86), 2uLL);
                v91 = vshrq_n_s32(vsubq_s32(v86, v87), 2uLL);
                *v83 = vsraq_n_s32(v90, v88, 2uLL);
                v83[64] = vsraq_n_s32(v91, v89, 2uLL);
                v83[128] = vsubq_s32(vshrq_n_s32(v88, 2uLL), v90);
                v83[192] = vsubq_s32(vshrq_n_s32(v89, 2uLL), v91);
                ++v83;
                --v84;
              }

              while (v84);
              break;
            case 2u:
              vpx_highbd_hadamard_16x16_neon(v348, v34, v344);
              v31 = v328;
              break;
            case 1u:
              vpx_highbd_hadamard_8x8_neon(v348, v34, v344);
              v31 = v328;
              break;
          }

          v92 = v344;
          v93 = 0uLL;
          v94 = 0uLL;
          v95 = v321 * v34;
          v29 = v329;
          do
          {
            v96 = *v92;
            v97 = v92[1];
            v92 += 2;
            v93 = vpadalq_s32(v93, vabsq_s32(v96));
            v94 = vpadalq_s32(v94, vabsq_s32(v97));
            v95 -= 8;
          }

          while (v95);
          v77 = vaddvq_s64(vaddq_s64(v94, v93));
        }

        else
        {
          vpx_subtract_block_neon(v321, v34, v348, v34, v42, v43, v319, v34);
          switch(v31)
          {
            case 3u:
              v59 = v344;
              vpx_hadamard_16x16_neon(v348, v34, v344);
              vpx_hadamard_16x16_neon(v349, v34, v345);
              vpx_hadamard_16x16_neon(v306, v34, v346);
              vpx_hadamard_16x16_neon(&v349[v300], v34, v347);
              v31 = v328;
              v60 = -8;
              do
              {
                v61 = vuzp1q_s16(*v59, v59[1]);
                v62 = vuzp1q_s16(v59[64], v59[65]);
                v63 = vuzp1q_s16(v59[128], v59[129]);
                v64 = vuzp1q_s16(v59[192], v59[193]);
                v65 = vhaddq_s16(v61, v62);
                v66 = vhsubq_s16(v61, v62);
                v67 = vshrq_n_s16(vhaddq_s16(v63, v64), 1uLL);
                v68 = vshrq_n_s16(vhsubq_s16(v63, v64), 1uLL);
                v69 = vsubq_s16(vshrq_n_s16(v65, 1uLL), v67);
                v70 = vsraq_n_s16(v67, v65, 1uLL);
                v71 = vsubq_s16(vshrq_n_s16(v66, 1uLL), v68);
                *v59 = vmovl_s16(*v70.i8);
                v59[1] = vmovl_high_s16(v70);
                v72 = vsraq_n_s16(v68, v66, 1uLL);
                v59[64] = vmovl_s16(*v72.i8);
                v59[65] = vmovl_high_s16(v72);
                v59[128] = vmovl_s16(*v69.i8);
                v59[129] = vmovl_high_s16(v69);
                v59[192] = vmovl_s16(*v71.i8);
                v59[193] = vmovl_high_s16(v71);
                v59 += 2;
                v60 += 8;
              }

              while (v60 < 0xF8);
              break;
            case 2u:
              vpx_hadamard_16x16_neon(v348, v34, v344);
              v31 = v328;
              break;
            case 1u:
              vpx_hadamard_8x8_neon(v348, v34, v344);
              v31 = v328;
              break;
          }

          v73 = v344;
          v74 = 0uLL;
          v75 = 0uLL;
          v76 = v321 * v34;
          do
          {
            v74 = vpadalq_s16(v74, vabsq_s16(vuzp1q_s16(*v73, v73[1])));
            v75 = vpadalq_s16(v75, vabsq_s16(vuzp1q_s16(v73[2], v73[3])));
            v73 += 4;
            v76 -= 16;
          }

          while (v76);
          v77 = vaddvq_s32(vaddq_s32(v75, v74));
          v29 = v329;
        }

        v39 = v324;
        if (v324 >= v77)
        {
          v39 = v77;
        }

        v324 = v39;
        v40 = v37++;
      }

      while (v40 < 9);
      v305 = 0;
      v303 = 0;
      v98 = 0;
      v304 = 0;
      v290 = v312 * v325;
      *(v29 + 916) = 8 * (v310[255] + v291) + 9;
      *(v29 + 904) = -9 - v308;
      v99 = v310[257];
      *(v29 + 912) = -9 - 8 * v325;
      *(v29 + 908) = 8 * (v99 + v289) + 9;
      v309 = 16 * v308;
      v313 = 0x7FFFFFFFFFFFFFFFLL;
      v100 = 0xFFFFFFFFLL;
      v101 = (v323 + 739540);
      do
      {
        v334 = 0;
        v102 = *(&v352 + v98);
        if (!v102)
        {
          goto LABEL_73;
        }

        v103 = *(v29 + 496);
        v104 = *(v103 + 56) + v326;
        v105 = *(v102 + 56) + v326;
        LODWORD(v103) = *(v103 + 16);
        v106 = *(v29 + 680);
        v341 = 0;
        v340 = *v320;
        v339 = 0;
        *(v323 + 57416) = v104;
        *(v323 + 57424) = v103;
        *v29 = v105;
        *(v29 + 8) = v103;
        if (*v101 >= 9)
        {
          v107 = 9;
        }

        else
        {
          v107 = *v101;
        }

        if (*(v29 + 904) <= -1024)
        {
          *v320 = -1023;
          if (*(v29 + 908) < 1024)
          {
LABEL_80:
            if (*(v29 + 912) > -1024)
            {
              goto LABEL_81;
            }

            goto LABEL_96;
          }
        }

        else if (*(v29 + 908) < 1024)
        {
          goto LABEL_80;
        }

        *(v29 + 908) = 1023;
        if (*(v29 + 912) > -1024)
        {
LABEL_81:
          if (*(v29 + 916) < 1024)
          {
            goto LABEL_83;
          }

LABEL_82:
          *(v29 + 916) = 1023;
          goto LABEL_83;
        }

LABEL_96:
        *(v29 + 912) = -1023;
        if (*(v29 + 916) >= 1024)
        {
          goto LABEL_82;
        }

LABEL_83:
        if (v101[2])
        {
          v108 = v355;
        }

        else
        {
          v108 = 0;
        }

        vp9_full_pixel_search(v323, v323 + 49200, v322, &v339, v107, 1, v106, v108, &v339 + 2, &v334, 0, &v334 >> 96);
        *v320 = v340;
        if (v101[2])
        {
          v109 = v355;
        }

        else
        {
          v109 = 0;
        }

        (*(v323 + 740296))(v323 + 49200, &v334, &v339 + 4, v310[251], *(v329 + 676), v323 + (v279 << 6) + 740472, 0, v101[3], v109, 0, 0, &v341 + 4, &v341, 0, 0, 0);
        v110 = *(v102 + 56) + v326;
        if ((*(*(v329 + 496) + 152) & 8) != 0)
        {
          v114 = (((v307 * DWORD1(v331[0])) >> 14) & 0xF) + ((SDWORD1(v331[0]) * (2 * v334)) >> 14);
          v115 = (((v309 * LODWORD(v331[0])) >> 14) & 0xF) + ((SLODWORD(v331[0]) * (2 * HIWORD(v334))) >> 14);
          v116 = 2 * v319;
          (*&v333[2 * ((v115 & 0xF) != 0) + ((v114 & 0xF) != 0)])(2 * v110 + 2 * ((v114 >> 4) * *(v102 + 16) + (v115 >> 4)));
          v29 = v329;
          v117 = *(v329 + 496);
          v118 = *(v117 + 16);
          v119 = 2 * (*(v117 + 56) + v326);
          v20 = v323 + 190808;
          if (v34 < 16)
          {
            v113 = v328;
            if (v34 < 8)
            {
              if (v34 >= 4)
              {
                v151 = 2 * v118;
                v152 = v348;
                v153 = v321;
                do
                {
                  v154 = 0;
                  for (k = 0; k < v34; k += 4)
                  {
                    *&v152->i8[v154] = vsub_s16(*(v119 + v154), *(v116 + v154));
                    v154 += 8;
                  }

                  v152 = (v152 + v311);
                  v116 += v311;
                  v119 += v151;
                  --v153;
                }

                while (v153);
              }
            }

            else
            {
              v127 = 2 * v118;
              v128 = v348;
              v129 = v321;
              do
              {
                v130 = 0;
                for (m = 0; m < v34; m += 8)
                {
                  v128[v130] = vsubq_s16(*(v119 + v130 * 16), *(v116 + v130 * 16));
                  ++v130;
                }

                v128 = (v128 + v311);
                v116 += v311;
                v119 += v127;
                --v129;
              }

              while (v129);
            }
          }

          else
          {
            v120 = 2 * v118;
            v121 = v348;
            v122 = v321;
            v113 = v328;
            do
            {
              v123 = 0;
              v124 = 16;
              do
              {
                v125 = vsubq_s16(*(v119 + v124), *(v116 + v124));
                v126 = &v121[v124 / 0x10];
                v126[-1] = vsubq_s16(*(v119 + v124 - 16), *(v116 + v124 - 16));
                *v126 = v125;
                v123 += 16;
                v124 += 32;
              }

              while (v123 < v34);
              v119 += v120;
              v116 += v311;
              v121 = (v121 + v311);
              --v122;
            }

            while (v122);
          }

          switch(v113)
          {
            case 3:
              v156 = v344;
              vpx_highbd_hadamard_16x16_neon(v348, v34, v344);
              vpx_highbd_hadamard_16x16_neon(v349, v34, v345);
              vpx_highbd_hadamard_16x16_neon(v306, v34, v346);
              v101 = (v323 + 739540);
              vpx_highbd_hadamard_16x16_neon(v306 + 2, v34, v347);
              v113 = v328;
              v29 = v329;
              v157 = 64;
              do
              {
                v158 = v156[64];
                v159 = v156[128];
                v160 = v156[192];
                v161 = vaddq_s32(v158, *v156);
                v162 = vsubq_s32(*v156, v158);
                v163 = vshrq_n_s32(vaddq_s32(v160, v159), 2uLL);
                v164 = vshrq_n_s32(vsubq_s32(v159, v160), 2uLL);
                *v156 = vsraq_n_s32(v163, v161, 2uLL);
                v156[64] = vsraq_n_s32(v164, v162, 2uLL);
                v156[128] = vsubq_s32(vshrq_n_s32(v161, 2uLL), v163);
                v156[192] = vsubq_s32(vshrq_n_s32(v162, 2uLL), v164);
                ++v156;
                --v157;
              }

              while (v157);
              break;
            case 2:
              vpx_highbd_hadamard_16x16_neon(v348, v34, v344);
              goto LABEL_127;
            case 1:
              vpx_highbd_hadamard_8x8_neon(v348, v34, v344);
LABEL_127:
              v113 = v328;
              v29 = v329;
              break;
          }

          v165 = v344;
          v166 = 0uLL;
          v167 = 0uLL;
          v168 = v321 * v34;
          do
          {
            v169 = *v165;
            v170 = v165[1];
            v165 += 2;
            v166 = vpadalq_s32(v166, vabsq_s32(v169));
            v167 = vpadalq_s32(v167, vabsq_s32(v170));
            v168 -= 8;
          }

          while (v168);
          v150 = vaddvq_s64(vaddq_s64(v167, v166));
          if (v313 > v150)
          {
            goto LABEL_133;
          }

          goto LABEL_73;
        }

        v111 = (((v307 * DWORD1(v331[0])) >> 14) & 0xF) + ((SDWORD1(v331[0]) * (2 * v334)) >> 14);
        v112 = (((v309 * LODWORD(v331[0])) >> 14) & 0xF) + ((SLODWORD(v331[0]) * (2 * HIWORD(v334))) >> 14);
        (*&v332[2 * ((v112 & 0xF) != 0) + ((v111 & 0xF) != 0)])(v110 + (v111 >> 4) * *(v102 + 16) + (v112 >> 4));
        vpx_subtract_block_neon(v321, v34, v348, v34, (*(*(v329 + 496) + 56) + v326), *(*(v329 + 496) + 16), v319, v34);
        v113 = v328;
        v20 = v323 + 190808;
        if (v328 == 3)
        {
          v132 = v344;
          vpx_hadamard_16x16_neon(v348, v34, v344);
          vpx_hadamard_16x16_neon(v349, v34, v345);
          vpx_hadamard_16x16_neon(v306, v34, v346);
          vpx_hadamard_16x16_neon(&v349[v300], v34, v347);
          v113 = v328;
          v133 = -8;
          v101 = (v323 + 739540);
          do
          {
            v134 = vuzp1q_s16(*v132, v132[1]);
            v135 = vuzp1q_s16(v132[64], v132[65]);
            v136 = vuzp1q_s16(v132[128], v132[129]);
            v137 = vuzp1q_s16(v132[192], v132[193]);
            v138 = vhaddq_s16(v134, v135);
            v139 = vhsubq_s16(v134, v135);
            v140 = vshrq_n_s16(vhaddq_s16(v136, v137), 1uLL);
            v141 = vshrq_n_s16(vhsubq_s16(v136, v137), 1uLL);
            v142 = vsubq_s16(vshrq_n_s16(v138, 1uLL), v140);
            v143 = vsraq_n_s16(v140, v138, 1uLL);
            v144 = vsubq_s16(vshrq_n_s16(v139, 1uLL), v141);
            *v132 = vmovl_s16(*v143.i8);
            v132[1] = vmovl_high_s16(v143);
            v145 = vsraq_n_s16(v141, v139, 1uLL);
            v132[64] = vmovl_s16(*v145.i8);
            v132[65] = vmovl_high_s16(v145);
            v132[128] = vmovl_s16(*v142.i8);
            v132[129] = vmovl_high_s16(v142);
            v132[192] = vmovl_s16(*v144.i8);
            v132[193] = vmovl_high_s16(v144);
            v132 += 2;
            v133 += 8;
          }

          while (v133 < 0xF8);
        }

        else if (v328 == 2)
        {
          vpx_hadamard_16x16_neon(v348, v34, v344);
          v113 = v328;
          v101 = (v323 + 739540);
        }

        else
        {
          v101 = (v323 + 739540);
          if (v328 == 1)
          {
            vpx_hadamard_8x8_neon(v348, v34, v344);
            v113 = v328;
          }
        }

        v146 = v344;
        v147 = 0uLL;
        v148 = 0uLL;
        v149 = v321 * v34;
        v29 = v329;
        do
        {
          v147 = vpadalq_s16(v147, vabsq_s16(vuzp1q_s16(*v146, v146[1])));
          v148 = vpadalq_s16(v148, vabsq_s16(vuzp1q_s16(v146[2], v146[3])));
          v146 += 4;
          v149 -= 16;
        }

        while (v149);
        v150 = vaddvq_s32(vaddq_s32(v148, v147));
        if (v313 > v150)
        {
LABEL_133:
          v355[0] = 0;
          v304 = v334;
          v171 = 1 << num_pels_log2_lookup[txsize_to_bsize[v113]];
          v172 = *(v29 + 88);
          if ((*(*(v29 + 496) + 152) & 8) != 0)
          {
            vp9_highbd_quantize_fp_32x32_neon(v344, v171, v323 + 49200, v343, v342, v172, v355, v302);
          }

          else
          {
            vp9_quantize_fp_32x32_neon(v344, v171, v323 + 49200, v343, v342, v172, v355, v302);
          }

          v173 = vp9_block_error(v344, v342, v171, &v330) >> v301;
          if (v173 <= 1)
          {
            v173 = 1;
          }

          v305 = v173;
          v174 = v330 >> v301;
          if (v330 >> v301 <= 1)
          {
            v174 = 1;
          }

          v330 = v174;
          if (v355[0])
          {
            v175 = *(&vp9_scan_orders + 12 * v328);
            if (v355[0] == 1)
            {
              v176 = 0;
              v177 = 1;
              v29 = v329;
LABEL_146:
              v182 = v355[0] - v176;
              v183 = (v175 + 2 * v176);
              do
              {
                v184 = *v183++;
                v185 = v343[0].i32[v184];
                v186 = v185 == 0;
                if (v185 < 0)
                {
                  v185 = -v185;
                }

                v187 = __clz(v185 + 1);
                if (!v186)
                {
                  ++v177;
                }

                v177 = v177 - v187 + 32;
                --v182;
              }

              while (v182);
            }

            else
            {
              v176 = v355[0] & 0xFFFE;
              v178 = 1;
              v179 = (v175 + 2);
              v180 = v176;
              do
              {
                v181.i32[0] = v343[0].i32[*(v179 - 1)];
                v181.i32[1] = v343[0].i32[*v179];
                v178 = vadd_s32(vsub_s32(vsub_s32(v178, vtst_s32(v181, v181)), vclz_s32(vadd_s32(vabs_s32(v181), 0x100000001))), 0x2000000020);
                v179 += 2;
                v180 -= 2;
              }

              while (v180);
              v177 = vadd_s32(vdup_lane_s32(v178, 1), v178).u32[0];
              v29 = v329;
              if (v176 != v355[0])
              {
                goto LABEL_146;
              }
            }

            v303 = v177 << 9;
          }

          else
          {
            v303 = 512;
            v29 = v329;
          }

          v100 = v98;
          v313 = v150;
        }

LABEL_73:
        ++v98;
      }

      while (v98 != 3);
      v188 = v36 + 48 * (v290 + v294);
      v189 = v324;
      if (v324 <= 1)
      {
        v189 = 1;
      }

      v190 = v313;
      if (v189 < v313)
      {
        v190 = v189;
      }

      v191 = 16 * v190 / v285;
      if (v191 <= 1)
      {
        v191 = 1;
      }

      v192 = 16 * v189 / v285;
      if (v192 <= 1)
      {
        v192 = 1;
      }

      *v188 = v192;
      *(v188 + 8) = v191;
      if ((v100 & 0x80000000) == 0)
      {
        *(v188 + 40) = *(v282 + 24 * v281 + 4 * v100 + 8);
      }

      v193 = 0;
      *(v188 + 44) = v304;
      v194 = *(v292 + 8);
      v195 = *(v292 + 16);
      v196 = (v194 + 48 * (v294 + v195 * v325));
      v197 = v293 * v195;
      v198 = (v194 + v295 + v293 * v195);
      v199 = 48 * v195;
      v200 = (v194 + v299 + v197);
      v201 = v315;
      do
      {
        v202 = v200;
        v203 = v198;
        v204 = v315;
        do
        {
          v205 = *(v203 - 2);
          v206 = *v203;
          v207 = *v196;
          v208 = v196[2];
          v202[1] = v196[1];
          v202[2] = v208;
          *v202 = v207;
          *(v203 - 2) = v205;
          *v203 = v206;
          v209 = *v202;
          v202 += 3;
          *(v203 - 1) = v209 + v205;
          v203 += 6;
          --v204;
        }

        while (v204);
        ++v193;
        v198 = (v198 + v199);
        v200 = (v200 + v199);
      }

      while (v193 != v316);
      v210 = 0;
      v36 = *(v292 + 8);
      v312 = *(v292 + 16);
      v211 = *(v292 + 28);
      v212 = *(v292 + 32);
      v213 = (v36 + 48 * (v294 + v312 * v325));
      v214 = 16 * v330;
      v215 = *(v286 + 16) + 40;
      v216 = v294 + v325 * v212;
      do
      {
        if (v210 + v325 < v211)
        {
          v217 = v215 + 80 * v216;
          v218 = v294;
          v219 = v315;
          do
          {
            if (v218 < v212)
            {
              *(v217 - 40) = 8 * (v210 + v325);
              *(v217 - 38) = 8 * v218;
              v220 = v213[1];
              *(v217 - 24) = v220;
              v221 = *v213;
              *(v217 - 32) = *v213;
              *(v217 + 16) = v220;
              *(v217 + 24) = v221;
              *(v217 - 8) = 16 * v303;
              *v217 = 16 * v305;
              *(v217 + 8) = v214;
              v222 = *(v213 + 22);
              v223 = v222 < 0;
              if (v222 < 0)
              {
                v222 = -v222;
              }

              v224 = (v222 + 4);
              if (v223)
              {
                v224 = -v224;
              }

              *(v217 - 16) = v224 / 8;
              v225 = *(v213 + 23);
              v226 = v225 < 0;
              if (v225 < 0)
              {
                v225 = -v225;
              }

              v227 = (v225 + 4);
              if (v226)
              {
                v227 = -v227;
              }

              *(v217 - 14) = v227 / 8;
              *(v217 + 32) = v100;
            }

            v217 += 80;
            ++v218;
            --v219;
          }

          while (v219);
        }

        ++v210;
        v216 += v212;
      }

      while (v210 != v316);
      v228 = 0;
      v229 = v287[242];
      v230 = v296 + v293 * v229;
      v327 = 48 * v229;
      v231 = v297 + v293 * v229;
      v232 = v298 + v293 * v229;
      do
      {
        v233 = 8 * (v228 + v325);
        v234 = v232;
        v235 = v231;
        v236 = v230;
        v237 = v317;
        LODWORD(result) = v318;
        v238 = v201;
        do
        {
          v239 = *(v36 + v236);
          if ((v239 & 0x80000000) == 0)
          {
            v240 = (v36 + v235);
            v241 = v20 + 40 * v239;
            v242 = *(v241 + 8);
            v243 = *(v36 + v234 - 2) >> 3;
            v244 = *(v36 + v234) >> 3;
            v245 = v233 + v243;
            v246 = result + v244;
            v247 = (result + v244) & 0xFFFFFFF8;
            if (v233 + v243 < 0)
            {
              v256 = v247 + 8;
            }

            else
            {
              v248 = 8 - v245;
              v249 = v245 & 0xFFFFFFF8;
              if ((v245 & 0xFFFFFFF8) < 8 * *(v241 + 28) && (v246 & 0x80000000) == 0 && v247 < 8 * *(v241 + 32))
              {
                v251 = *(v240 - 3);
                v250 = *(v240 - 2);
                v252 = ((v237 - v244 + ((result + v244) & 0xFFFFFFF8)) * (v249 + v248));
                v253 = (v251 - v250) * v252;
                v254 = (*v240 - *v240 * v250 / v251) * v252;
                v255 = v242 + 48 * (v246 >> 3) + 48 * *(v241 + 16) * (v245 >> 3);
                *(v255 + 16) += v254 / 64;
                *(v255 + 32) += v253 / 64;
                v20 = v323 + 190808;
              }

              v256 = v247 + 8;
              v257 = v249 >= 8 * *(v241 + 28) || v247 < -8;
              if (!v257 && v256 < 8 * *(v241 + 32))
              {
                v258 = v249 + v248;
                v259 = *(v240 - 3);
                v260 = *(v240 - 2);
                v261 = ((v244 & 7) * v258);
                v262 = (v259 - v260) * v261;
                v263 = (*v240 - *v240 * v260 / v259) * v261;
                v264 = v242 + 48 * (v256 >> 3) + 48 * *(v241 + 16) * (v245 >> 3);
                *(v264 + 16) += v263 / 64;
                *(v264 + 32) += v262 / 64;
                v20 = v323 + 190808;
              }
            }

            v265 = v245 + 8;
            if ((v265 & 0x80000000) == 0)
            {
              if ((v265 & 0xFFFFFFF8) < 8 * *(v241 + 28) && (v246 & 0x80000000) == 0 && v247 < 8 * *(v241 + 32))
              {
                v266 = *(v240 - 3);
                v267 = *(v240 - 2);
                v268 = ((v237 - v244 + ((result + v244) & 0xFFFFFFF8)) * (v243 & 7));
                v269 = (v266 - v267) * v268;
                v270 = (*v240 - *v240 * v267 / v266) * v268;
                v271 = v242 + 48 * (v246 >> 3) + 48 * *(v241 + 16) * (v265 >> 3);
                *(v271 + 16) += v270 / 64;
                *(v271 + 32) += v269 / 64;
                v20 = v323 + 190808;
              }

              v272 = (v265 & 0xFFFFFFF8) >= 8 * *(v241 + 28) || v247 < -8;
              if (!v272 && v256 < 8 * *(v241 + 32))
              {
                v273 = v243 & 7;
                v274 = v244 & 7;
                v275 = *(v240 - 3);
                v276 = *(v240 - 2);
                v277 = (v274 * v273);
                v278 = v242 + 48 * (v256 >> 3) + 48 * *(v241 + 16) * (v265 >> 3);
                *(v278 + 16) += (*v240 - *v240 * v276 / v275) * v277 / 64;
                *(v278 + 32) += (v275 - v276) * v277 / 64;
              }
            }
          }

          result = (result + 8);
          v237 -= 8;
          v235 += 48;
          v234 += 48;
          v236 += 48;
          --v238;
        }

        while (v238);
        ++v228;
        v230 += v327;
        v231 += v327;
        v232 += v327;
        v201 = v315;
        v12 = v316;
      }

      while (v228 != v316);
      v33 = v294 + v315;
      v10 = v310;
      v32 = v310[257];
      v295 += v284;
      v299 += v284;
      v318 += v283;
      v317 -= v283;
      v296 += v284;
      v297 += v284;
      v298 += v284;
      v29 = v329;
      v31 = v328;
      if (v32 > v294 + v315)
      {
        continue;
      }

      break;
    }

    v30 = v310[255];
LABEL_20:
    v293 += v280;
    v325 += v12;
    if (v30 > v325)
    {
      continue;
    }

    return result;
  }
}

uint64_t tree2tok(uint64_t result, uint64_t a2, int a3, int a4, int a5)
{
  v6 = result;
  v7 = 2 * a4;
  v8 = a5 + 1;
  v9 = a3;
  do
  {
    while (1)
    {
      v10 = v7;
      v11 = *(a2 + v9);
      if (v11 <= 0)
      {
        break;
      }

      result = tree2tok(v6, a2);
      v7 = v10 + 1;
      ++v9;
      if (v10)
      {
        return result;
      }
    }

    v12 = (v6 + 8 * -v11);
    *v12 = v10;
    v12[1] = v8;
    v7 = v10 + 1;
    ++v9;
  }

  while ((v10 & 1) == 0);
  return result;
}

uint64_t convert_distribution(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + a1);
  if (v8 <= 0)
  {
    v9 = *(a4 + 4 * -v8);
    v10 = *(a2 + a1 + 1);
    if (v10 > 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = *(a4 + 4 * -v10);
    goto LABEL_6;
  }

  v9 = convert_distribution();
  v10 = *(a2 + a1 + 1);
  if (v10 <= 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = convert_distribution();
LABEL_6:
  v12 = (a3 + 8 * (a1 >> 1));
  *v12 = v9;
  v12[1] = v11;
  return (v11 + v9);
}

uint64_t vpx_codec_control_(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = 8;
  if (a1 && a2)
  {
    v10 = *(a1 + 8);
    if (v10)
    {
      if (*(a1 + 48) && (v11 = *(v10 + 40)) != 0)
      {
        if (*(v11 + 8))
        {
          v12 = v11 + 8;
          while (1)
          {
            v13 = *(v12 - 8);
            if (!v13 || v13 == a2)
            {
              break;
            }

            v15 = *(v12 + 16);
            v12 += 16;
            if (!v15)
            {
              v9 = 4;
              goto LABEL_14;
            }
          }

          result = (*v12)(*(a1 + 48), &a9);
          *(a1 + 16) = result;
        }

        else
        {
          *(a1 + 16) = 4;
          return 4;
        }
      }

      else
      {
        *(a1 + 16) = 1;
        return 1;
      }
    }

    else
    {
      *(a1 + 16) = 1;
      return 1;
    }
  }

  else
  {
LABEL_14:
    if (a1)
    {
      *(a1 + 16) = v9;
    }

    return v9;
  }

  return result;
}

uint64_t vpx_internal_error(uint64_t result, int a2, const char *a3, ...)
{
  va_start(va, a3);
  v3 = result;
  *result = a2;
  *(result + 4) = 0;
  if (a3)
  {
    *(result + 4) = 1;
    result = vsnprintf((result + 8), 0x4FuLL, a3, va);
    *(v3 + 87) = 0;
  }

  if (*(v3 + 88))
  {
    longjmp((v3 + 92), *v3);
  }

  return result;
}

uint64_t vpx_convolve8_c(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  result = MEMORY[0x28223BE20](a1, a2, a3);
  v39[1080] = *MEMORY[0x277D85DE8];
  v20 = (v18 + (a11 - 1) * a9) >> 4;
  if (a10 >= 1 && v20 >= -7)
  {
    v22 = 0;
    v23 = result - 3 * v12 - 3;
    v24 = v20 + 7;
    v25 = v39;
    do
    {
      v26 = 0;
      v27 = v16;
      do
      {
        v19.i64[0] = *(v23 + (v27 >> 4));
        v28 = *(v15 + 16 * (v27 & 0xF));
        v19 = vmlaq_s32(vmulq_s32(vmovl_high_s16(v28), vqtbl1q_s8(v19, xmmword_273B8E7C0)), vmovl_s16(*v28.i8), vqtbl1q_s8(v19, xmmword_273B8E7D0));
        v19.i32[0] = vaddvq_s32(v19);
        LODWORD(result) = ((v19.i32[0] + 64) >> 7) & ~((v19.i32[0] + 64) >> 31);
        if (result >= 255)
        {
          result = 255;
        }

        else
        {
          result = result;
        }

        *(v25 + v26) = result;
        v27 += v17;
        ++v26;
      }

      while (a10 != v26);
      v23 += v12;
      v25 += 8;
    }

    while (v22++ != v24);
  }

  if (a10 >= 1 && a11 >= 1)
  {
    v31 = 0;
    v32 = v39;
    do
    {
      v33 = v13;
      v34 = a11;
      v35 = v18;
      do
      {
        v36 = &v32[8 * (v35 >> 4)];
        v37 = (v15 + 16 * (v35 & 0xF));
        LODWORD(v36) = v37[1] * v36[64] + *v37 * *v36 + v37[2] * v36[128] + v37[3] * v36[192] + v37[4] * v36[256] + v37[5] * v36[320] + v37[6] * v36[384] + v37[7] * v36[448] + 64;
        result = (v36 >> 7);
        v38 = result & ~(v36 >> 31);
        if (v38 >= 255)
        {
          LOBYTE(v38) = -1;
        }

        *v33 = v38;
        v35 += a9;
        v33 += v14;
        --v34;
      }

      while (v34);
      v32 = (v32 + 1);
      ++v13;
      ++v31;
    }

    while (v31 != a10);
  }

  return result;
}

uint64_t vpx_scaled_horiz_c(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, double a8, double a9, int32x4_t a10, uint64_t a11, int a12, int a13, int a14)
{
  if (a13 >= 1 && a14 >= 1)
  {
    v15 = 0;
    v16 = result - 3;
    do
    {
      v17 = 0;
      v18 = a6;
      do
      {
        a10.i64[0] = *(v16 + (v18 >> 4));
        v19 = *(a5 + 16 * (v18 & 0xF));
        a10 = vmlaq_s32(vmulq_s32(vmovl_high_s16(v19), vqtbl1q_s8(a10, xmmword_273B8E7C0)), vmovl_s16(*v19.i8), vqtbl1q_s8(a10, xmmword_273B8E7D0));
        a10.i32[0] = vaddvq_s32(a10);
        v20 = ((a10.i32[0] + 64) >> 7) & ~((a10.i32[0] + 64) >> 31);
        if (v20 >= 255)
        {
          LOBYTE(v20) = -1;
        }

        *(a3 + v17) = v20;
        v18 += a7;
        ++v17;
      }

      while (a13 != v17);
      v16 += a2;
      a3 += a4;
      ++v15;
    }

    while (v15 != a14);
  }

  return result;
}

uint64_t vpx_scaled_vert_c(uint64_t result, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10, int a11)
{
  if (a10 >= 1 && a11 >= 1)
  {
    v12 = 0;
    v13 = result - 3 * a2;
    result = 7 * a2;
    do
    {
      v21 = v12;
      v14 = a3;
      v15 = a11;
      v16 = a8;
      do
      {
        v17 = (v13 + (v16 >> 4) * a2);
        v18 = (a5 + 16 * (v16 & 0xF));
        v19 = v18[1] * v17[a2] + *v18 * *v17 + v18[2] * v17[2 * a2] + v18[3] * v17[3 * a2] + v18[4] * v17[4 * a2] + v18[5] * v17[5 * a2] + v18[6] * v17[6 * a2] + v18[7] * v17[7 * a2] + 64;
        v20 = (v19 >> 7) & ~(v19 >> 31);
        if (v20 >= 255)
        {
          LOBYTE(v20) = -1;
        }

        *v14 = v20;
        v16 += a9;
        v14 += a4;
        --v15;
      }

      while (v15);
      ++v13;
      ++a3;
      ++v12;
    }

    while (v21 + 1 != a10);
  }

  return result;
}

uint64_t vpx_scaled_avg_horiz_c(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, double a8, double a9, int32x4_t a10, uint64_t a11, int a12, int a13, int a14)
{
  if (a13 >= 1 && a14 >= 1)
  {
    v15 = 0;
    v16 = result - 3;
    do
    {
      v17 = 0;
      v18 = a6;
      do
      {
        a10.i64[0] = *(v16 + (v18 >> 4));
        v19 = *(a5 + 16 * (v18 & 0xF));
        a10 = vmlaq_s32(vmulq_s32(vmovl_high_s16(v19), vqtbl1q_s8(a10, xmmword_273B8E7C0)), vmovl_s16(*v19.i8), vqtbl1q_s8(a10, xmmword_273B8E7D0));
        a10.i32[0] = vaddvq_s32(a10);
        v20 = ((a10.i32[0] + 64) >> 7) & ~((a10.i32[0] + 64) >> 31);
        if (v20 >= 255)
        {
          v20 = 255;
        }

        *(a3 + v17) = (*(a3 + v17) + v20 + 1) >> 1;
        v18 += a7;
        ++v17;
      }

      while (a13 != v17);
      v16 += a2;
      a3 += a4;
      ++v15;
    }

    while (v15 != a14);
  }

  return result;
}

uint64_t vpx_scaled_avg_vert_c(uint64_t result, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10, int a11)
{
  if (a10 >= 1 && a11 >= 1)
  {
    v12 = 0;
    v13 = result - 3 * a2;
    result = 7 * a2;
    do
    {
      v21 = v12;
      v14 = a3;
      v15 = a11;
      v16 = a8;
      do
      {
        v17 = (v13 + (v16 >> 4) * a2);
        v18 = (a5 + 16 * (v16 & 0xF));
        v19 = v18[1] * v17[a2] + *v18 * *v17 + v18[2] * v17[2 * a2] + v18[3] * v17[3 * a2] + v18[4] * v17[4 * a2] + v18[5] * v17[5 * a2] + v18[6] * v17[6 * a2] + v18[7] * v17[7 * a2];
        v20 = ((v19 + 64) >> 7) & ~((v19 + 64) >> 31);
        if (v20 >= 255)
        {
          v20 = 255;
        }

        *v14 = (*v14 + v20 + 1) >> 1;
        v16 += a9;
        v14 += a4;
        --v15;
      }

      while (v15);
      ++v13;
      ++a3;
      ++v12;
    }

    while (v21 + 1 != a10);
  }

  return result;
}

uint64_t vpx_scaled_avg_2d_c(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  v11 = MEMORY[0x28223BE20](a1, a2, a3);
  v13 = v12;
  v15 = v14;
  v33 = *MEMORY[0x277D85DE8];
  result = vpx_convolve8_c(v11, v16, v32, 64, v17, v18, v19, v20, a9, a10, a11);
  if (a10 >= 1 && a11 >= 1)
  {
    v23 = 0;
    v24 = a10 & 0x7FFFFFE0;
    v25 = a10 & 0x7FFFFFF8;
    v26 = v32;
    do
    {
      if (a10 >= 8)
      {
        if (a10 < 0x20)
        {
          v28 = 0;
          do
          {
LABEL_16:
            *(v15 + v28) = vrhadd_u8(*(v15 + v28), *&v26[v28]);
            v28 += 8;
          }

          while (v25 != v28);
          v27 = a10 & 0x7FFFFFF8;
          if (v25 == a10)
          {
            goto LABEL_7;
          }

          goto LABEL_18;
        }

        v29 = 0;
        do
        {
          v30 = (v15 + v29);
          v31 = vrhaddq_u8(*(v15 + v29 + 16), *&v26[v29 + 16]);
          *v30 = vrhaddq_u8(*(v15 + v29), *&v26[v29]);
          v30[1] = v31;
          v29 += 32;
        }

        while (v24 != v29);
        if (v24 == a10)
        {
          goto LABEL_7;
        }

        v28 = a10 & 0x7FFFFFE0;
        v27 = v28;
        if ((a10 & 0x18) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v27 = 0;
      }

      do
      {
LABEL_18:
        *(v15 + v27) = (*(v15 + v27) + v26[v27] + 1) >> 1;
        ++v27;
      }

      while (a10 != v27);
LABEL_7:
      v26 += 64;
      v15 += v13;
      ++v23;
    }

    while (v23 != a11);
  }

  return result;
}

uint64_t highbd_convolve_horiz(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, unsigned int a8, int a9, int a10)
{
  if (a8 >= 1 && a9 >= 1)
  {
    v10 = result - 6;
    if (a10 == 12)
    {
      for (i = 0; i != a9; ++i)
      {
        v20 = 0;
        v21 = a6;
        do
        {
          v22 = *(v10 + 2 * (v21 >> 4));
          v23 = *(a5 + 16 * (v21 & 0xF));
          v24 = (vaddvq_s32(vmlaq_s32(vmulq_s32(vmovl_high_s16(v23), vmovl_high_u16(v22)), vmovl_s16(*v23.i8), vmovl_u16(*v22.i8))) + 64) >> 7;
          if (v24 >= 0xFFF)
          {
            v25 = 4095;
          }

          else
          {
            v25 = v24;
          }

          if (v24 >= 0)
          {
            v26 = v25;
          }

          else
          {
            v26 = 0;
          }

          *(a3 + v20) = v26;
          v21 += a7;
          v20 += 2;
        }

        while (2 * a8 != v20);
        v10 += 2 * a2;
        a3 += 2 * a4;
      }
    }

    else if (a10 == 10)
    {
      for (j = 0; j != a9; ++j)
      {
        v12 = 0;
        v13 = a6;
        do
        {
          v14 = *(v10 + 2 * (v13 >> 4));
          v15 = *(a5 + 16 * (v13 & 0xF));
          v16 = (vaddvq_s32(vmlaq_s32(vmulq_s32(vmovl_high_s16(v15), vmovl_high_u16(v14)), vmovl_s16(*v15.i8), vmovl_u16(*v14.i8))) + 64) >> 7;
          if (v16 >= 0x3FF)
          {
            v17 = 1023;
          }

          else
          {
            v17 = v16;
          }

          if (v16 >= 0)
          {
            v18 = v17;
          }

          else
          {
            v18 = 0;
          }

          *(a3 + v12) = v18;
          v13 += a7;
          v12 += 2;
        }

        while (2 * a8 != v12);
        v10 += 2 * a2;
        a3 += 2 * a4;
      }
    }

    else
    {
      for (k = 0; k != a9; ++k)
      {
        v28 = 0;
        v29 = a6;
        do
        {
          v30 = *(v10 + 2 * (v29 >> 4));
          v31 = *(a5 + 16 * (v29 & 0xF));
          v32 = (vaddvq_s32(vmlaq_s32(vmulq_s32(vmovl_high_s16(v31), vmovl_high_u16(v30)), vmovl_s16(*v31.i8), vmovl_u16(*v30.i8))) + 64) >> 7;
          if (v32 >= 0xFF)
          {
            v33 = 255;
          }

          else
          {
            v33 = v32;
          }

          if (v32 >= 0)
          {
            v34 = v33;
          }

          else
          {
            v34 = 0;
          }

          *(a3 + v28) = v34;
          v29 += a7;
          v28 += 2;
        }

        while (2 * a8 != v28);
        v10 += 2 * a2;
        a3 += 2 * a4;
      }
    }
  }

  return result;
}

uint64_t vpx_highbd_convolve8_avg_horiz_c(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, int a9, unsigned int a10, int a11, int a12)
{
  if (a10 >= 1 && a11 >= 1)
  {
    v13 = result - 6;
    if (a12 == 12)
    {
      v21 = 0;
      do
      {
        v22 = 0;
        v23 = a6;
        do
        {
          v24 = *(v13 + 2 * (v23 >> 4));
          v25 = *(a5 + 16 * (v23 & 0xF));
          v26 = (vaddvq_s32(vmlaq_s32(vmulq_s32(vmovl_high_s16(v25), vmovl_high_u16(v24)), vmovl_s16(*v25.i8), vmovl_u16(*v24.i8))) + 64) >> 7;
          if (v26 >= 0xFFF)
          {
            result = 4095;
          }

          else
          {
            result = v26;
          }

          if (v26 >= 0)
          {
            v27 = result;
          }

          else
          {
            v27 = 0;
          }

          *(a3 + v22) = (*(a3 + v22) + v27 + 1) >> 1;
          v23 += a7;
          v22 += 2;
        }

        while (2 * a10 != v22);
        v13 += 2 * a2;
        ++v21;
        a3 += 2 * a4;
      }

      while (v21 != a11);
    }

    else if (a12 == 10)
    {
      v14 = 0;
      do
      {
        v15 = 0;
        v16 = a6;
        do
        {
          v17 = *(v13 + 2 * (v16 >> 4));
          v18 = *(a5 + 16 * (v16 & 0xF));
          v19 = (vaddvq_s32(vmlaq_s32(vmulq_s32(vmovl_high_s16(v18), vmovl_high_u16(v17)), vmovl_s16(*v18.i8), vmovl_u16(*v17.i8))) + 64) >> 7;
          if (v19 >= 0x3FF)
          {
            result = 1023;
          }

          else
          {
            result = v19;
          }

          if (v19 >= 0)
          {
            v20 = result;
          }

          else
          {
            v20 = 0;
          }

          *(a3 + v15) = (*(a3 + v15) + v20 + 1) >> 1;
          v16 += a7;
          v15 += 2;
        }

        while (2 * a10 != v15);
        v13 += 2 * a2;
        ++v14;
        a3 += 2 * a4;
      }

      while (v14 != a11);
    }

    else
    {
      v28 = 0;
      do
      {
        v29 = 0;
        v30 = a6;
        do
        {
          v31 = *(v13 + 2 * (v30 >> 4));
          v32 = *(a5 + 16 * (v30 & 0xF));
          v33 = (vaddvq_s32(vmlaq_s32(vmulq_s32(vmovl_high_s16(v32), vmovl_high_u16(v31)), vmovl_s16(*v32.i8), vmovl_u16(*v31.i8))) + 64) >> 7;
          if (v33 >= 0xFF)
          {
            result = 255;
          }

          else
          {
            result = v33;
          }

          if (v33 >= 0)
          {
            v34 = result;
          }

          else
          {
            v34 = 0;
          }

          *(a3 + v29) = (*(a3 + v29) + v34 + 1) >> 1;
          v30 += a7;
          v29 += 2;
        }

        while (2 * a10 != v29);
        v13 += 2 * a2;
        ++v28;
        a3 += 2 * a4;
      }

      while (v28 != a11);
    }
  }

  return result;
}

uint64_t highbd_convolve_vert(uint64_t result, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, unsigned int a9, int a10)
{
  if (a8 >= 1 && a9 >= 1)
  {
    v10 = result - 6 * a2;
    if (a10 == 12)
    {
      v21 = 0;
      v22 = 2 * a4;
      do
      {
        v42 = v21;
        v23 = a3;
        v24 = a9;
        v25 = a6;
        do
        {
          v26 = (v10 + 2 * (v25 >> 4) * a2);
          v27 = (a5 + 16 * (v25 & 0xF));
          result = 4095;
          v28 = (v27[1] * v26[a2] + *v27 * *v26 + v27[2] * v26[2 * a2] + v27[3] * v26[3 * a2] + v27[4] * v26[4 * a2] + v27[5] * v26[5 * a2] + v27[6] * v26[6 * a2] + v27[7] * v26[7 * a2] + 64) >> 7;
          if (v28 >= 0xFFF)
          {
            v29 = 4095;
          }

          else
          {
            v29 = (v27[1] * v26[a2] + *v27 * *v26 + v27[2] * v26[2 * a2] + v27[3] * v26[3 * a2] + v27[4] * v26[4 * a2] + v27[5] * v26[5 * a2] + v27[6] * v26[6 * a2] + v27[7] * v26[7 * a2] + 64) >> 7;
          }

          if (v28 >= 0)
          {
            v30 = v29;
          }

          else
          {
            v30 = 0;
          }

          *v23 = v30;
          v25 += a7;
          v23 = (v23 + v22);
          --v24;
        }

        while (v24);
        v10 += 2;
        ++a3;
        v21 = v42 + 1;
      }

      while (v42 + 1 != a8);
    }

    else if (a10 == 10)
    {
      v11 = 0;
      v12 = 2 * a4;
      do
      {
        v41 = v11;
        v44 = a3;
        v13 = a3;
        v14 = a9;
        v15 = a6;
        do
        {
          v16 = (v10 + 2 * (v15 >> 4) * a2);
          v17 = (a5 + 16 * (v15 & 0xF));
          result = 1023;
          v18 = (v17[1] * v16[a2] + *v17 * *v16 + v17[2] * v16[2 * a2] + v17[3] * v16[3 * a2] + v17[4] * v16[4 * a2] + v17[5] * v16[5 * a2] + v17[6] * v16[6 * a2] + v17[7] * v16[7 * a2] + 64) >> 7;
          if (v18 >= 0x3FF)
          {
            v19 = 1023;
          }

          else
          {
            v19 = v18;
          }

          if (v18 >= 0)
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }

          *v13 = v20;
          v15 += a7;
          v13 = (v13 + v12);
          --v14;
        }

        while (v14);
        v10 += 2;
        a3 = v44 + 1;
        v11 = v41 + 1;
      }

      while (v41 + 1 != a8);
    }

    else
    {
      v31 = 0;
      v32 = 2 * a4;
      do
      {
        v43 = v31;
        v45 = a3;
        v33 = a3;
        v34 = a9;
        v35 = a6;
        do
        {
          v36 = (v10 + 2 * (v35 >> 4) * a2);
          v37 = (a5 + 16 * (v35 & 0xF));
          result = 255;
          v38 = (v37[1] * v36[a2] + *v37 * *v36 + v37[2] * v36[2 * a2] + v37[3] * v36[3 * a2] + v37[4] * v36[4 * a2] + v37[5] * v36[5 * a2] + v37[6] * v36[6 * a2] + v37[7] * v36[7 * a2] + 64) >> 7;
          if (v38 >= 0xFF)
          {
            v39 = 255;
          }

          else
          {
            v39 = v38;
          }

          if (v38 >= 0)
          {
            v40 = v39;
          }

          else
          {
            v40 = 0;
          }

          *v33 = v40;
          v35 += a7;
          v33 = (v33 + v32);
          --v34;
        }

        while (v34);
        v10 += 2;
        a3 = v45 + 1;
        v31 = v43 + 1;
      }

      while (v43 + 1 != a8);
    }
  }

  return result;
}

uint64_t vpx_highbd_convolve8_avg_vert_c(uint64_t result, uint64_t a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10, int a11, int a12)
{
  if (a10 >= 1 && a11 >= 1)
  {
    v13 = 0;
    v14 = result - 6 * a2;
    result = 12 * a2;
    v15 = 2 * a4;
    do
    {
      v16 = a3;
      v17 = a11;
      v18 = a8;
      do
      {
        v19 = (v14 + 2 * (v18 >> 4) * a2);
        v20 = (a5 + 16 * (v18 & 0xF));
        v21 = (v20[1] * v19[a2] + *v20 * *v19 + v20[2] * v19[2 * a2] + v20[3] * v19[3 * a2] + v20[4] * v19[4 * a2] + v20[5] * v19[5 * a2] + v20[6] * v19[6 * a2] + v20[7] * v19[7 * a2] + 64) >> 7;
        if (v21 >= 0xFFF)
        {
          v22 = 4095;
        }

        else
        {
          v22 = v21;
        }

        if (v21 >= 0xFF)
        {
          v23 = 255;
        }

        else
        {
          v23 = v21;
        }

        if (v21 >= 0x3FF)
        {
          v24 = 1023;
        }

        else
        {
          v24 = v21;
        }

        if (a12 == 10)
        {
          v23 = v24;
        }

        if (a12 != 12)
        {
          v22 = v23;
        }

        if ((v21 & 0x80000000) != 0)
        {
          v22 = 0;
        }

        *v16 = (*v16 + v22 + 1) >> 1;
        v18 += a9;
        v16 = (v16 + v15);
        --v17;
      }

      while (v17);
      v14 += 2;
      ++a3;
      ++v13;
    }

    while (v13 != a10);
  }

  return result;
}

__int32 *vpx_convolve8_horiz_neon(__int32 *result, uint64_t a2, int8x8_t *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  v25 = a11;
  v26 = *(a5 + 16 * a6);
  if (v26.i16[7] | v26.i16[0])
  {
    v27 = 0;
  }

  else
  {
    v27 = (v26.i16[6] | WORD1(*(a5 + 16 * a6))) == 0;
  }

  if (v27)
  {
    v219 = vshrn_n_s16(vabsq_s16(v26), 1uLL);
    v220 = 2 * a2;
    v221 = 2 * a4;
    if (a10 == 4)
    {
      v222 = a11 + 2;
      v223 = vdup_lane_s8(v219, 3);
      v224 = vdup_lane_s8(v219, 4);
      v225 = vdup_lane_s8(v219, 2);
      v226 = vdup_lane_s8(v219, 5);
      do
      {
        v227.i32[0] = *(result - 1);
        v227.i32[1] = *(result + a2 - 1);
        v228.i32[0] = *result;
        v228.i32[1] = *(result + a2);
        v229.i32[0] = *(result + 1);
        v229.i32[1] = *(result + a2 + 1);
        v230.i32[0] = *(result + 2);
        v230.i32[1] = *(result + a2 + 2);
        v231 = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(v229, v224), v228, v223), v227, v225), v230, v226), 6uLL);
        a3->i32[0] = v231.i32[0];
        *(a3->i32 + a4) = v231.i32[1];
        a3 = (a3 + v221);
        v222 -= 2;
        result = (result + v220);
      }

      while (v222 > 2);
    }

    else
    {
      v232 = (result + 2);
      v233 = result + a2;
      v234 = vdup_lane_s8(v219, 3);
      v235 = vdup_lane_s8(v219, 4);
      v236 = vdup_lane_s8(v219, 2);
      v237 = vdup_lane_s8(v219, 5);
      do
      {
        v238 = v233;
        v239 = v232;
        v240 = a10;
        v241 = a3;
        do
        {
          v242 = *(v239 - 3);
          v243 = *(v239 - 2);
          v244 = *(v239 - 1);
          v245 = *v239++;
          v246 = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(v244, v235), v243, v234), v242, v236), v245, v237), 6uLL);
          v247 = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(*(v238 + 1), v235), *v238, v234), *(v238 - 1), v236), *(v238 + 2), v237), 6uLL);
          *v241 = v246;
          *(v241++ + a4) = v247;
          v238 += 8;
          v240 -= 8;
        }

        while (v240);
        a3 = (a3 + v221);
        v232 = (v232 + v220);
        v233 += v220;
        v218 = __OFSUB__(v25, 2);
        v25 -= 2;
      }

      while (!((v25 < 0) ^ v218 | (v25 == 0)));
    }
  }

  else
  {
    v28 = (result - 3);
    if (a11 == 4)
    {
      v29 = 0;
      v30 = *(result - 3);
      v31 = (v28 + a2);
      v32 = *v31;
      v33 = (v31 + a2);
      v34 = *(v33 + a2);
      v35 = vtrn1_s8(v30, v32);
      v36 = vtrn2_s8(v30, v32);
      v37 = vtrn1_s8(*v33, v34);
      v38 = vtrn2_s8(*v33, v34);
      v39 = vtrn1_s16(v35, v37);
      v40 = vtrn2_s16(v35, v37);
      v41 = vtrn1_s16(v36, v38);
      v42 = vtrn2_s16(v36, v38);
      v43 = vmovl_u8(v39);
      v44 = vmovl_u8(v41);
      v45 = vmovl_u8(v40);
      v46 = vmovl_u8(v42).u64[0];
      v47 = vextq_s8(v43, v43, 8uLL).u64[0];
      v48 = vextq_s8(v44, v44, 8uLL).u64[0];
      v49 = vextq_s8(v45, v45, 8uLL).u64[0];
      v50 = vdup_lane_s16(*v26.i8, 0);
      v51 = vdup_lane_s16(*v26.i8, 1);
      v52 = vdup_lane_s16(*v26.i8, 2);
      v53 = vdup_laneq_s16(v26, 5);
      v54 = vdup_laneq_s16(v26, 6);
      v55 = vdup_laneq_s16(v26, 7);
      v56 = vdup_lane_s16(*v26.i8, 3);
      v57 = vdup_laneq_s16(v26, 4);
      do
      {
        v58 = *&result[v29 / 4 + 1];
        v59 = *(result + a2 + v29 + 4);
        v60 = *(result + 2 * a2 + v29 + 4);
        v61 = vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmul_s16(v49, v54), v48, v53), *v45.i8, v52), *v44.i8, v51), *v43.i8, v50);
        *v43.i8 = v47;
        v62 = *(result + 3 * a2 + v29 + 4);
        v63 = vtrn1_s8(v58, v59);
        v64 = vtrn2_s8(v58, v59);
        v65 = vtrn1_s8(v60, v62);
        v66 = vtrn2_s8(v60, v62);
        v67 = vzip1_s16(v63, v65);
        v68 = vtrn2_s16(v63, v65);
        v69 = vzip1_s16(v64, v66);
        v70 = vtrn2_s16(v64, v66);
        v71 = vmla_s16(vmul_s16(v49, v53), v46, v52);
        v72 = vmla_s16(vmul_s16(*v43.i8, v52), v46, v51);
        v73 = vmla_s16(vmla_s16(vmul_s16(v48, v52), *v43.i8, v51), v46, v50);
        v74 = vmul_s16(v46, v56);
        v46 = vmovl_u8(v67).u64[0];
        *v75.i8 = vqadd_s16(vqadd_s16(vmla_s16(v61, v46, v55), v74), vmul_s16(*v43.i8, v57));
        v47 = vmovl_u8(v69).u64[0];
        v76 = vqadd_s16(vqadd_s16(vmla_s16(vmla_s16(vmla_s16(vmla_s16(v71, *v45.i8, v51), *v44.i8, v50), v46, v54), v47, v55), vmul_s16(*v43.i8, v56)), vmul_s16(v48, v57));
        v77 = vmla_s16(v72, *v45.i8, v50);
        v78 = vmul_s16(v48, v56);
        *v44.i8 = v48;
        v48 = vmovl_u8(v68).u64[0];
        *v79.i8 = vqadd_s16(vqadd_s16(vmla_s16(vmla_s16(vmla_s16(v77, v46, v53), v47, v54), v48, v55), v78), vmul_s16(v49, v57));
        v80 = vmul_s16(v49, v56);
        *v45.i8 = v49;
        v49 = vmovl_u8(v70).u64[0];
        v75.u64[1] = v76;
        v81 = vqrshrun_n_s16(v75, 7uLL);
        v79.u64[1] = vqadd_s16(vqadd_s16(vmla_s16(vmla_s16(vmla_s16(v73, v47, v53), v48, v54), v49, v55), v80), vmul_s16(v46, v57));
        v82 = vqrshrun_n_s16(v79, 7uLL);
        *v79.i8 = vtrn1_s16(v81, v82);
        v83 = vtrn2_s16(v81, v82);
        v84 = vzip1_s32(*v79.i8, v83);
        v85 = vzip2_s32(*v79.i8, v83);
        *v79.i8 = vtrn1_s8(v84, v85);
        a3->i32[v29 / 4] = v79.i32[0];
        v86 = vtrn2_s8(v84, v85);
        *(a3->i32 + 2 * a4 + v29) = v79.i32[1];
        *(a3->i32 + a4 + v29) = v86.i32[0];
        *(a3->i32 + 2 * a4 + a4 + v29) = v86.i32[1];
        v29 += 4;
      }

      while (a10 != v29);
    }

    else if (a10 == 4)
    {
      v87 = vdupq_lane_s16(*v26.i8, 0);
      v88 = vdupq_lane_s16(*v26.i8, 1);
      v89 = vdupq_lane_s16(*v26.i8, 2);
      v90 = vdupq_laneq_s16(v26, 5);
      v91 = vdupq_laneq_s16(v26, 6);
      v92 = a11 + 8;
      v93 = vdupq_laneq_s16(v26, 7);
      v94 = vdupq_lane_s16(*v26.i8, 3);
      v95 = vdupq_laneq_s16(v26, 4);
      v96 = (result + 1);
      do
      {
        *v26.i8 = *(v96 - 7);
        v97 = (&v96[-1] + a2 + 1);
        v11.i64[0] = *v97;
        result = (v97 + a2);
        v12.i64[0] = *(v97 + a2);
        v98 = v97 + a2 + a2;
        v13.i64[0] = *v98;
        v14.i64[0] = *&v98[a2];
        v99 = &v98[a2 + a2];
        v15.i64[0] = *v99;
        v16.i64[0] = *&v99[a2];
        v100 = &v99[a2 + a2];
        v17.i64[0] = *v100;
        v101 = vzip1q_s8(v26, v11);
        v102 = vzip1q_s8(v12, v13);
        v103 = vzip1q_s8(v14, v15);
        v104 = vzip1q_s8(v16, v17);
        v105 = vzip1q_s16(v101, v102);
        v106 = vzip2q_s16(v101, v102);
        v107 = vzip1q_s16(v103, v104);
        v108 = vzip2q_s16(v103, v104);
        v109 = vzip1q_s32(v105, v107);
        v110 = vzip2q_s32(v105, v107);
        v111 = vzip1q_s32(v106, v108);
        *v107.i8 = vzip1_s32(*&vextq_s8(v106, v106, 8uLL), *&vextq_s8(v108, v108, 8uLL));
        v112 = vmovl_u8(*v109.i8);
        v113 = vmovl_high_u8(v109);
        v26 = vmovl_high_u8(v110);
        v114 = vmovl_u8(*v111.i8);
        v115 = vmovl_u8(*v107.i8);
        *v109.i8 = vzip1_s32(*v96, *&v98[a2 + 7]);
        v116 = vzip1_s32(*(v96 + a2), *(v99 + 7));
        v117 = vmovl_u8(*v110.i8);
        *v110.i8 = vzip1_s32(*(v96 + a2 + a2), *&v99[a2 + 7]);
        v118 = vzip1_s32(*(v98 + 7), *(v100 + 7));
        v119 = vtrn1_s16(*v109.i8, *v110.i8);
        *v109.i8 = vtrn2_s16(*v109.i8, *v110.i8);
        v120 = vtrn1_s16(v116, v118);
        v14 = vmovl_high_u8(v111);
        *v111.i8 = vtrn2_s16(v116, v118);
        v121 = vtrn1_s8(v119, v120);
        v122 = vtrn2_s8(v119, v120);
        v123 = vtrn1_s8(*v109.i8, *v111.i8);
        *v111.i8 = vtrn2_s8(*v109.i8, *v111.i8);
        v13 = vmovl_u8(v121);
        v124 = vmovl_u8(v122);
        v125 = vmovl_u8(v123);
        v15 = vmovl_u8(*v111.i8);
        v16 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v91, v115), v88, v113), v87, v112), v89, v117), v90, v14), v93, v13), vmulq_s16(v94, v26)), vmulq_s16(v95, v114));
        v17 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v90, v115), v88, v117), v87, v113), v89, v26), v91, v13), v93, v124), vmulq_s16(v94, v114)), vmulq_s16(v95, v14));
        v126 = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v88, v26), v87, v117), v89, v114), v90, v13), v91, v124), v93, v125), vmulq_s16(v94, v14)), vmulq_s16(v95, v115)), 7uLL);
        *v16.i8 = vqrshrun_n_s16(v16, 7uLL);
        v127 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v88, v114), v87, v26), v89, v14), v90, v124), v91, v125), v93, v15);
        *v26.i8 = vqrshrun_n_s16(v17, 7uLL);
        v128 = vqaddq_s16(v127, vmulq_s16(v94, v115));
        v12 = vmulq_s16(v95, v13);
        v11 = vqaddq_s16(v128, v12);
        *v11.i8 = vqrshrun_n_s16(v11, 7uLL);
        *v12.i8 = vtrn1_s8(*v16.i8, *v26.i8);
        *v26.i8 = vtrn2_s8(*v16.i8, *v26.i8);
        *v13.i8 = vtrn1_s8(v126, *v11.i8);
        *v11.i8 = vtrn2_s8(v126, *v11.i8);
        *v14.i8 = vtrn1_s16(*v12.i8, *v13.i8);
        *v12.i8 = vtrn2_s16(*v12.i8, *v13.i8);
        *v13.i8 = vtrn1_s16(*v26.i8, *v11.i8);
        a3->i32[0] = v14.i32[0];
        a3->i32[a4] = v14.i32[1];
        *(a3->i32 + a4) = v13.i32[0];
        *v26.i8 = vtrn2_s16(*v26.i8, *v11.i8);
        *(a3->i32 + 5 * a4) = v13.i32[1];
        *(a3->i32 + 2 * a4) = v12.i32[0];
        *(a3->i32 + 6 * a4) = v12.i32[1];
        *(a3->i32 + 3 * a4) = v26.i32[0];
        *(a3->i32 + 7 * a4) = v26.i32[1];
        a3 += a4;
        v92 -= 8;
        v96 += a2;
      }

      while (v92 > 8);
    }

    else
    {
      v129 = 8 * a2;
      v130 = vdupq_lane_s16(*v26.i8, 0);
      v131 = vdupq_lane_s16(*v26.i8, 1);
      v132 = vdupq_lane_s16(*v26.i8, 2);
      v133 = vdupq_laneq_s16(v26, 5);
      v134 = vdupq_laneq_s16(v26, 6);
      v135 = vdupq_laneq_s16(v26, 7);
      v136 = vdupq_lane_s16(*v26.i8, 3);
      v137 = result + 1;
      v138 = vdupq_laneq_s16(v26, 4);
      do
      {
        v139 = 0;
        v26.i64[0] = *(v28 + a2);
        v140 = (v28 + a2 + a2);
        v11.i64[0] = *v140;
        v141 = (v140 + a2);
        v12.i64[0] = *v141;
        v142 = (v141 + a2);
        v13.i64[0] = *v142;
        v143 = (v142 + a2);
        v14.i64[0] = *v143;
        v144 = (v143 + a2);
        v15.i64[0] = *v144;
        v16.i64[0] = *(v144 + a2);
        v17.i64[0] = *v28;
        v145 = vzip1q_s8(v17, v26);
        v146 = vzip1q_s8(v11, v12);
        v147 = vzip1q_s8(v13, v14);
        v148 = vzip1q_s8(v15, v16);
        v149 = vzip1q_s16(v145, v146);
        v150 = vzip2q_s16(v145, v146);
        v151 = vzip1q_s16(v147, v148);
        v152 = vzip2q_s16(v147, v148);
        v153 = vzip1q_s32(v149, v151);
        v154 = vzip2q_s32(v149, v151);
        v155 = vzip1q_s32(v150, v152);
        v156 = vzip1_s32(*&vextq_s8(v150, v150, 8uLL), *&vextq_s8(v152, v152, 8uLL));
        v26 = vmovl_u8(*v153.i8);
        v11 = vmovl_high_u8(v153);
        v12 = vmovl_u8(*v154.i8);
        v14 = vmovl_high_u8(v154);
        v16 = vmovl_u8(*v155.i8);
        v15 = vmovl_high_u8(v155);
        v13 = vmovl_u8(v156);
        do
        {
          v157 = (&v137[v139 / 4] + a2);
          v17.i64[0] = *&v137[v139 / 4];
          v18.i64[0] = *v157;
          v19.i64[0] = *(v157 + a2);
          v158 = (v157 + a2 + a2);
          v20.i64[0] = *v158;
          v21.i64[0] = *(v158 + a2);
          v159 = (v158 + a2 + a2);
          v22.i64[0] = *(v159 + a2 + a2);
          v23.i64[0] = *v159;
          v24.i64[0] = *(v159 + a2);
          v160 = vzip1q_s8(v17, v18);
          v161 = vzip1q_s8(v19, v20);
          v162 = vzip1q_s8(v21, v23);
          v163 = vzip1q_s8(v24, v22);
          v164 = vzip1q_s16(v160, v161);
          v165 = vzip2q_s16(v160, v161);
          v166 = vzip1q_s16(v162, v163);
          v167 = vzip2q_s16(v162, v163);
          v168 = vzip1q_s32(v164, v166);
          v169 = vzip2q_s32(v164, v166);
          v170 = vzip1q_s32(v165, v167);
          v171 = vzip2q_s32(v165, v167);
          v172 = vmulq_s16(v26, v130);
          v26 = vmovl_high_u8(v168);
          v173 = vmlaq_s16(v172, v11, v131);
          v174 = vmulq_s16(v11, v130);
          v175 = vmovl_u8(*v168.i8);
          v11 = vmovl_u8(*v169.i8);
          v176 = vmlaq_s16(vmlaq_s16(v173, v12, v132), v15, v133);
          v177 = vmlaq_s16(v174, v12, v131);
          v178 = vmulq_s16(v12, v130);
          v12 = vmovl_high_u8(v169);
          v179 = vmulq_s16(v14, v136);
          v180 = vmlaq_s16(v177, v14, v132);
          v181 = vmlaq_s16(v178, v14, v131);
          v182 = vmulq_s16(v14, v130);
          v14 = vmovl_u8(*v170.i8);
          v183 = vmulq_s16(v16, v138);
          v184 = vmulq_s16(v16, v136);
          v185 = vmlaq_s16(v181, v16, v132);
          v186 = vmlaq_s16(v182, v16, v131);
          v187 = vmulq_s16(v16, v130);
          v16 = vmovl_high_u8(v170);
          v188 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(v176, v13, v134), v135, v175), v179), v183);
          v189 = vmulq_s16(v15, v138);
          v190 = vmulq_s16(v15, v136);
          v191 = vmlaq_s16(v186, v15, v132);
          v192 = vmlaq_s16(v187, v15, v131);
          v193 = vmulq_s16(v15, v130);
          v15 = vmovl_u8(*v171.i8);
          v194 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v180, v13, v133), v134, v175), v135, v26), v184), v189);
          v195 = vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v185, v133, v175), v134, v26), v135, v11), v190);
          v196 = vmulq_s16(v13, v136);
          v197 = vmlaq_s16(v192, v13, v132);
          v198 = vmlaq_s16(v193, v13, v131);
          v199 = vmulq_s16(v13, v130);
          v200 = vqaddq_s16(v195, vmulq_s16(v13, v138));
          v13 = vmovl_high_u8(v171);
          *v171.i8 = vqrshrun_n_s16(v188, 7uLL);
          *v188.i8 = vqrshrun_n_s16(v194, 7uLL);
          v201 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v191, v133, v26), v134, v11), v135, v12), v196), vmulq_s16(v138, v175));
          *v200.i8 = vqrshrun_n_s16(v200, 7uLL);
          v202 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v197, v133, v11), v134, v12), v135, v14), vmulq_s16(v136, v175)), vmulq_s16(v138, v26));
          *v201.i8 = vqrshrun_n_s16(v201, 7uLL);
          *v202.i8 = vqrshrun_n_s16(v202, 7uLL);
          v203 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v198, v132, v175), v133, v12), v134, v14), v135, v16), vmulq_s16(v136, v26)), vmulq_s16(v138, v11));
          *v203.i8 = vqrshrun_n_s16(v203, 7uLL);
          v204 = vmlaq_s16(vmulq_s16(v131, v26), v130, v175);
          v205 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v199, v131, v175), v132, v26), v133, v14), v134, v16), v135, v15), vmulq_s16(v136, v11)), vmulq_s16(v138, v12));
          v24 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v204, v132, v11), v133, v16), v134, v15), v135, v13), vmulq_s16(v136, v12)), vmulq_s16(v138, v14));
          *v205.i8 = vqrshrun_n_s16(v205, 7uLL);
          *v24.i8 = vqrshrun_n_s16(v24, 7uLL);
          v206 = vzip1q_s8(v171, v188);
          v207 = vzip1q_s8(v200, v201);
          v208 = vzip1q_s8(v202, v203);
          v209 = vzip1q_s8(v205, v24);
          v210 = vzip1q_s16(v206, v207);
          v211 = vzip2q_s16(v206, v207);
          v212 = vzip1q_s16(v208, v209);
          v213 = vzip2q_s16(v208, v209);
          v20 = vzip1q_s32(v210, v212);
          v19 = vzip2q_s32(v210, v212);
          v21 = vzip1q_s32(v211, v213);
          v17 = vzip2q_s32(v211, v213);
          v22 = vextq_s8(v19, v19, 8uLL);
          v23 = vextq_s8(v21, v21, 8uLL);
          a3[v139 / 8] = *v20.i8;
          v214 = (&a3[v139 / 8] + a4);
          *v214 = vextq_s8(v20, v20, 8uLL).u64[0];
          v215 = (v214 + a4);
          v216 = (v215 + a4 + a4);
          *v215 = *v19.i8;
          *(v215 + a4) = *v22.i8;
          v217 = (v216 + a4 + a4);
          v139 += 8;
          *v216 = *v21.i8;
          v18 = vextq_s8(v17, v17, 8uLL);
          *(v216 + a4) = *v23.i8;
          *v217 = *v17.i8;
          *(v217 + a4) = *v18.i8;
        }

        while (a10 != v139);
        v28 = (v28 + v129);
        a3 += a4;
        v137 = (v137 + v129);
        v218 = __OFSUB__(v25, 8);
        v25 -= 8;
      }

      while (!((v25 < 0) ^ v218 | (v25 == 0)));
    }
  }

  return result;
}

__int32 *vpx_convolve8_avg_horiz_neon(uint64_t a1, uint64_t a2, __int32 *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  v26 = a11;
  v27 = *(a5 + 16 * a6);
  v28 = (a1 - 3);
  if (a11 == 4)
  {
    v29 = 0;
    v30 = *(a1 - 3);
    v31 = (v28 + a2);
    v32 = *v31;
    v33 = (v31 + a2);
    v34 = *(v33 + a2);
    v35 = vtrn1_s8(v30, v32);
    v36 = vtrn2_s8(v30, v32);
    v37 = vtrn1_s8(*v33, v34);
    v38 = vtrn2_s8(*v33, v34);
    v39 = vmovl_u8(vtrn1_s16(v35, v37));
    v40 = vmovl_u8(vtrn1_s16(v36, v38));
    v41 = vmovl_u8(vtrn2_s16(v35, v37));
    v42 = vmovl_u8(vtrn2_s16(v36, v38)).u64[0];
    v43 = vextq_s8(v39, v39, 8uLL).u64[0];
    v44 = vextq_s8(v40, v40, 8uLL).u64[0];
    v45 = vextq_s8(v41, v41, 8uLL).u64[0];
    v46 = vdup_lane_s16(*v27.i8, 0);
    v47 = vdup_lane_s16(*v27.i8, 1);
    v48 = vdup_lane_s16(*v27.i8, 2);
    v49 = vdup_laneq_s16(v27, 5);
    v50 = vdup_laneq_s16(v27, 6);
    v51 = vdup_laneq_s16(v27, 7);
    v52 = vdup_lane_s16(*v27.i8, 3);
    v53 = vdup_laneq_s16(v27, 4);
    v54 = a3 + a4;
    v55 = a3 + 2 * a4 + a4;
    v56 = a3 + 2 * a4;
    v57 = a1 + 4;
    v58 = a1 + 4 + 3 * a2;
    v59 = a1 + 4 + 2 * a2;
    v60 = a1 + 4 + a2;
    do
    {
      v61 = *(v57 + v29);
      v62 = *(v60 + v29);
      v63 = vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmul_s16(v45, v50), v44, v49), *v41.i8, v48), *v40.i8, v47), *v39.i8, v46);
      *v39.i8 = v43;
      v64 = *(v59 + v29);
      v65 = *(v58 + v29);
      v66 = vtrn1_s8(v61, v62);
      v67 = vtrn2_s8(v61, v62);
      v68 = vtrn1_s8(v64, v65);
      v69 = vtrn2_s8(v64, v65);
      v70 = vzip1_s16(v66, v68);
      v71 = vtrn2_s16(v66, v68);
      v72 = vzip1_s16(v67, v69);
      v73 = vtrn2_s16(v67, v69);
      v74 = vmla_s16(vmul_s16(v45, v49), v42, v48);
      v75 = vmla_s16(vmul_s16(*v39.i8, v48), v42, v47);
      v76 = vmla_s16(vmla_s16(vmul_s16(v44, v48), *v39.i8, v47), v42, v46);
      v77 = vmul_s16(v42, v52);
      v42 = vmovl_u8(v70).u64[0];
      *v78.i8 = vqadd_s16(vqadd_s16(vmla_s16(v63, v42, v51), v77), vmul_s16(*v39.i8, v53));
      v43 = vmovl_u8(v72).u64[0];
      v79 = vqadd_s16(vqadd_s16(vmla_s16(vmla_s16(vmla_s16(vmla_s16(v74, *v41.i8, v47), *v40.i8, v46), v42, v50), v43, v51), vmul_s16(*v39.i8, v52)), vmul_s16(v44, v53));
      v80 = vmla_s16(v75, *v41.i8, v46);
      v81 = vmul_s16(v44, v52);
      *v40.i8 = v44;
      v44 = vmovl_u8(v71).u64[0];
      *v82.i8 = vqadd_s16(vqadd_s16(vmla_s16(vmla_s16(vmla_s16(v80, v42, v49), v43, v50), v44, v51), v81), vmul_s16(v45, v53));
      v83 = vmul_s16(v45, v52);
      *v41.i8 = v45;
      v45 = vmovl_u8(v73).u64[0];
      v84 = vqadd_s16(vqadd_s16(vmla_s16(vmla_s16(vmla_s16(v76, v43, v49), v44, v50), v45, v51), v83), vmul_s16(v42, v53));
      v78.u64[1] = v79;
      v85 = vqrshrun_n_s16(v78, 7uLL);
      v82.u64[1] = v84;
      v86 = vqrshrun_n_s16(v82, 7uLL);
      *v82.i8 = vtrn1_s16(v85, v86);
      v87 = vtrn2_s16(v85, v86);
      v88 = vzip1_s32(*v82.i8, v87);
      v89 = vzip2_s32(*v82.i8, v87);
      *v82.i8 = vtrn1_s8(v88, v89);
      v90 = vtrn2_s8(v88, v89);
      v88.i32[0] = a3[v29 / 4];
      v88.i32[1] = *&v56[v29];
      result = (v55 + v29);
      v76.i32[0] = *&v54[v29];
      v76.i32[1] = *(v55 + v29);
      *v82.i8 = vrhadd_u8(*v82.i8, v88);
      v92 = vrhadd_u8(v90, v76);
      a3[v29 / 4] = v82.i32[0];
      *&v56[v29] = v82.i32[1];
      *&v54[v29] = v92.i32[0];
      *(v55 + v29) = v92.i32[1];
      v29 += 4;
    }

    while (a10 != v29);
  }

  else
  {
    v93 = 2 * a4;
    if (a10 == 4)
    {
      v94 = vdupq_lane_s16(*v27.i8, 0);
      v95 = vdupq_lane_s16(*v27.i8, 1);
      v96 = vdupq_lane_s16(*v27.i8, 2);
      v97 = vdupq_laneq_s16(v27, 5);
      v98 = vdupq_laneq_s16(v27, 6);
      v99 = vdupq_laneq_s16(v27, 7);
      v100 = vdupq_lane_s16(*v27.i8, 3);
      v101 = (a1 + 4);
      v102 = vdupq_laneq_s16(v27, 4);
      do
      {
        *v11.i8 = *(v101 - 7);
        v103 = (&v101[-1] + a2 + 1);
        v12.i64[0] = *v103;
        v13.i64[0] = *(v103 + a2);
        v104 = v103 + a2 + a2;
        v14.i64[0] = *v104;
        v105 = &v104[a2 + a2];
        v15.i64[0] = *&v104[a2];
        v16.i64[0] = *v105;
        v17.i64[0] = *&v105[a2];
        v106 = &v105[a2 + a2];
        v18.i64[0] = *v106;
        v107 = vzip1q_s8(v11, v12);
        v108 = vzip1q_s8(v13, v14);
        v109 = vzip1q_s8(v15, v16);
        v110 = vzip1q_s8(v17, v18);
        v111 = vzip1q_s16(v107, v108);
        v112 = vzip2q_s16(v107, v108);
        v113 = vzip1q_s16(v109, v110);
        v114 = vzip2q_s16(v109, v110);
        v115 = vzip1q_s32(v111, v113);
        v116 = vzip2q_s32(v111, v113);
        v117 = vzip1q_s32(v112, v114);
        *v113.i8 = vzip1_s32(*&vextq_s8(v112, v112, 8uLL), *&vextq_s8(v114, v114, 8uLL));
        v118 = vmovl_u8(*v115.i8);
        v119 = vmovl_high_u8(v115);
        v11 = vmovl_high_u8(v116);
        v120 = vmovl_u8(*v117.i8);
        v121 = vmovl_u8(*v113.i8);
        *v115.i8 = vzip1_s32(*v101, *&v104[a2 + 7]);
        v122 = vzip1_s32(*(v101 + a2), *(v105 + 7));
        v123 = vzip1_s32(*(v101 + a2 + a2), *&v105[a2 + 7]);
        v124 = vmovl_u8(*v116.i8);
        *v116.i8 = vzip1_s32(*(v104 + 7), *(v106 + 7));
        v125 = vtrn1_s16(*v115.i8, v123);
        *v115.i8 = vtrn2_s16(*v115.i8, v123);
        v126 = vtrn1_s16(v122, *v116.i8);
        v127 = vtrn2_s16(v122, *v116.i8);
        v15 = vmovl_high_u8(v117);
        *v117.i8 = vtrn1_s8(v125, v126);
        v128 = vtrn2_s8(v125, v126);
        v129 = vtrn1_s8(*v115.i8, v127);
        v130 = vtrn2_s8(*v115.i8, v127);
        v14 = vmovl_u8(*v117.i8);
        v17 = vmovl_u8(v128);
        v131 = vmovl_u8(v129);
        v16 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v98, v121), v95, v119), v94, v118), v96, v124), v97, v15), v99, v14), vmulq_s16(v100, v11)), vmulq_s16(v102, v120));
        v18 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v97, v121), v95, v124), v94, v119), v96, v11), v98, v14), v99, v17), vmulq_s16(v100, v120)), vmulq_s16(v102, v15));
        v132 = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v95, v11), v94, v124), v96, v120), v97, v14), v98, v17), v99, v131), vmulq_s16(v100, v15)), vmulq_s16(v102, v121)), 7uLL);
        v133 = vmlaq_s16(vmulq_s16(v95, v120), v94, v11);
        *v11.i8 = vqrshrun_n_s16(v16, 7uLL);
        v134 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v133, v96, v15), v97, v17), v98, v131), v99, vmovl_u8(v130));
        *v15.i8 = vqrshrun_n_s16(v18, 7uLL);
        v135 = vqaddq_s16(v134, vmulq_s16(v100, v121));
        v13 = vmulq_s16(v102, v14);
        v12 = vqaddq_s16(v135, v13);
        *v12.i8 = vqrshrun_n_s16(v12, 7uLL);
        *v13.i8 = vtrn1_s8(v132, *v12.i8);
        *v14.i8 = vtrn1_s8(*v11.i8, *v15.i8);
        *v12.i8 = vtrn2_s8(v132, *v12.i8);
        v136 = &a3[a4];
        v16.i32[0] = *a3;
        v16.i32[1] = *v136;
        *v11.i8 = vtrn2_s8(*v11.i8, *v15.i8);
        v15.i32[0] = *(a3 + a4);
        v15.i32[1] = *(a3 + 5 * a4);
        *v17.i8 = vtrn1_s16(*v14.i8, *v13.i8);
        v18.i32[0] = *(a3 + 2 * a4);
        v18.i32[1] = *(a3 + 6 * a4);
        *v13.i8 = vtrn2_s16(*v14.i8, *v13.i8);
        result = (a3 + 7 * a4);
        v14.i32[0] = *(a3 + 3 * a4);
        v14.i32[1] = *result;
        v137 = vtrn1_s16(*v11.i8, *v12.i8);
        *v11.i8 = vtrn2_s16(*v11.i8, *v12.i8);
        *v12.i8 = vrhadd_u8(*v17.i8, *v16.i8);
        *v15.i8 = vrhadd_u8(v137, *v15.i8);
        *a3 = v12.i32[0];
        *v136 = v12.i32[1];
        *v12.i8 = vrhadd_u8(*v13.i8, *v18.i8);
        *v11.i8 = vrhadd_u8(*v11.i8, *v14.i8);
        *(a3 + a4) = v15.i32[0];
        *(a3 + 5 * a4) = v15.i32[1];
        *(a3 + 2 * a4) = v12.i32[0];
        *(a3 + 6 * a4) = v12.i32[1];
        *(a3 + 3 * a4) = v11.i32[0];
        *result = v11.i32[1];
        a3 += 2 * a4;
        v101 += a2;
        v26 -= 8;
      }

      while (v26);
    }

    else
    {
      v138 = 8 * a2;
      v139 = vdupq_lane_s16(*v27.i8, 0);
      v140 = vdupq_lane_s16(*v27.i8, 1);
      v141 = vdupq_lane_s16(*v27.i8, 2);
      v142 = vdupq_laneq_s16(v27, 5);
      v143 = 8 * a4;
      v144 = vdupq_laneq_s16(v27, 6);
      v145 = vdupq_laneq_s16(v27, 7);
      v146 = a3 + 7 * a4;
      v147 = vdupq_lane_s16(*v27.i8, 3);
      v148 = a3 + 6 * a4;
      v149 = a3 + a4;
      v150 = &a3[a4] + a4;
      v151 = vdupq_laneq_s16(v27, 4);
      v152 = &a3[a4];
      v153 = a3 + 3 * a4;
      v154 = a3 + v93;
      result = (a1 + 4);
      do
      {
        v155 = 0;
        v11.i64[0] = *(v28 + a2);
        v156 = (v28 + a2 + a2);
        v12.i64[0] = *v156;
        v157 = (v156 + a2);
        v13.i64[0] = *v157;
        v158 = (v157 + a2);
        v14.i64[0] = *v158;
        v159 = (v158 + a2);
        v15.i64[0] = *v159;
        v160 = (v159 + a2);
        v16.i64[0] = *v160;
        v17.i64[0] = *(v160 + a2);
        v18.i64[0] = *v28;
        v161 = vzip1q_s8(v18, v11);
        v162 = vzip1q_s8(v12, v13);
        v163 = vzip1q_s8(v14, v15);
        v164 = vzip1q_s8(v16, v17);
        v165 = vzip1q_s16(v161, v162);
        v166 = vzip2q_s16(v161, v162);
        v167 = vzip1q_s16(v163, v164);
        v168 = vzip2q_s16(v163, v164);
        v169 = vzip1q_s32(v165, v167);
        v170 = vzip2q_s32(v165, v167);
        v16 = vzip1q_s32(v166, v168);
        v171 = vzip1_s32(*&vextq_s8(v166, v166, 8uLL), *&vextq_s8(v168, v168, 8uLL));
        v11 = vmovl_u8(*v169.i8);
        v12 = vmovl_high_u8(v169);
        v13 = vmovl_u8(*v170.i8);
        v15 = vmovl_high_u8(v170);
        v18 = vmovl_u8(*v16.i8);
        v17 = vmovl_high_u8(v16);
        v14 = vmovl_u8(v171);
        do
        {
          v16.i64[0] = *&result[v155 / 4];
          v172 = (&result[v155 / 4] + a2);
          v19.i64[0] = *v172;
          v173 = (v172 + a2);
          v20.i64[0] = *v173;
          v174 = (v173 + a2);
          v21.i64[0] = *v174;
          v175 = (v174 + a2);
          v22.i64[0] = *v175;
          v176 = (v175 + a2);
          v23.i64[0] = *v176;
          v177 = (v176 + a2);
          v24.i64[0] = *(v177 + a2);
          v25.i64[0] = *v177;
          v178 = vzip1q_s8(v16, v19);
          v179 = vzip1q_s8(v20, v21);
          v180 = vzip1q_s8(v22, v23);
          v181 = vzip1q_s8(v25, v24);
          v182 = vzip1q_s16(v178, v179);
          v183 = vzip2q_s16(v178, v179);
          v184 = vzip1q_s16(v180, v181);
          v185 = vzip2q_s16(v180, v181);
          v186 = vzip1q_s32(v182, v184);
          v187 = vzip2q_s32(v182, v184);
          v188 = vzip1q_s32(v183, v185);
          v189 = vzip2q_s32(v183, v185);
          v190 = vmovl_u8(*v186.i8);
          v191 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v14, v144), v17, v142), v13, v141), v12, v140), v11, v139);
          v11 = vmovl_high_u8(v186);
          v192 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v14, v142), v15, v141), v13, v140), v12, v139);
          v12 = vmovl_u8(*v187.i8);
          v193 = vmlaq_s16(vmlaq_s16(vmulq_s16(v18, v141), v15, v140), v13, v139);
          v13 = vmovl_high_u8(v187);
          v194 = vmulq_s16(v15, v147);
          v195 = vmlaq_s16(vmlaq_s16(vmulq_s16(v17, v141), v18, v140), v15, v139);
          v15 = vmovl_u8(*v188.i8);
          v196 = vqaddq_s16(vmlaq_s16(v191, v145, v190), v194);
          v197 = vmulq_s16(v18, v151);
          v198 = vmlaq_s16(vmlaq_s16(vmulq_s16(v14, v141), v17, v140), v18, v139);
          v199 = vmulq_s16(v18, v147);
          v18 = vmovl_high_u8(v188);
          v200 = vqaddq_s16(v196, v197);
          v201 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(v192, v144, v190), v145, v11), v199), vmulq_s16(v17, v151));
          v202 = vmulq_s16(v17, v147);
          v203 = vmlaq_s16(vmulq_s16(v14, v140), v17, v139);
          v17 = vmovl_u8(*v189.i8);
          v204 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v193, v142, v190), v144, v11), v145, v12), v202), vmulq_s16(v14, v151));
          v205 = vmulq_s16(v14, v147);
          v206 = vmulq_s16(v14, v139);
          v14 = vmovl_high_u8(v189);
          *v189.i8 = vqrshrun_n_s16(v200, 7uLL);
          *v200.i8 = vqrshrun_n_s16(v201, 7uLL);
          *v204.i8 = vqrshrun_n_s16(v204, 7uLL);
          v207 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v195, v142, v11), v144, v12), v145, v13), v205), vmulq_s16(v151, v190));
          *v207.i8 = vqrshrun_n_s16(v207, 7uLL);
          v208 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v198, v142, v12), v144, v13), v145, v15), vmulq_s16(v147, v190)), vmulq_s16(v151, v11));
          *v208.i8 = vqrshrun_n_s16(v208, 7uLL);
          v209 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v203, v141, v190), v142, v13), v144, v15), v145, v18), vmulq_s16(v147, v11)), vmulq_s16(v151, v12));
          *v209.i8 = vqrshrun_n_s16(v209, 7uLL);
          v25 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v206, v140, v190), v141, v11), v142, v15), v144, v18), v145, v17), vmulq_s16(v147, v12)), vmulq_s16(v151, v13));
          *v25.i8 = vqrshrun_n_s16(v25, 7uLL);
          v210 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v140, v11), v139, v190), v141, v12), v142, v18), v144, v17), v145, v14), vmulq_s16(v147, v13)), vmulq_s16(v151, v15));
          *v210.i8 = vqrshrun_n_s16(v210, 7uLL);
          v211 = vzip1q_s8(v189, v200);
          v212 = vzip1q_s8(v204, v207);
          v213 = vzip1q_s8(v208, v209);
          v214 = vzip1q_s8(v25, v210);
          v215 = vzip1q_s16(v211, v212);
          v216 = vzip2q_s16(v211, v212);
          v217 = vzip1q_s16(v213, v214);
          v218 = vzip2q_s16(v213, v214);
          v21 = vzip1q_s32(v215, v217);
          v20 = vzip2q_s32(v215, v217);
          v22 = vzip1q_s32(v216, v218);
          v16 = vzip2q_s32(v216, v218);
          v19 = vextq_s8(v21, v21, 8uLL);
          v23 = vextq_s8(v20, v20, 8uLL);
          v24 = vextq_s8(v22, v22, 8uLL);
          *v19.i8 = vrhadd_u8(*v19.i8, *&v149[v155]);
          *v20.i8 = vrhadd_u8(*v20.i8, *&v154[v155]);
          *v23.i8 = vrhadd_u8(*v23.i8, *&v153[v155]);
          *v22.i8 = vrhadd_u8(*v22.i8, *&v152[v155 / 4]);
          *v24.i8 = vrhadd_u8(*v24.i8, *(v150 + v155));
          v203.i64[0] = vextq_s8(v16, v16, 8uLL).u64[0];
          *v16.i8 = vrhadd_u8(*v16.i8, *&v148[v155]);
          v25.i64[0] = *&v146[v155];
          *&a3[v155 / 4] = vrhadd_u8(*v21.i8, *&a3[v155 / 4]);
          *&v149[v155] = v19.i64[0];
          *&v154[v155] = v20.i64[0];
          *&v153[v155] = v23.i64[0];
          *&v152[v155 / 4] = v22.i64[0];
          *(v150 + v155) = v24.i64[0];
          *&v148[v155] = v16.i64[0];
          *&v146[v155] = vrhadd_u8(*v203.i8, *v25.i8);
          v155 += 8;
        }

        while (a10 != v155);
        v28 = (v28 + v138);
        a3 = (a3 + v143);
        v146 += v143;
        v148 += v143;
        v150 += v143;
        v152 = (v152 + v143);
        v153 += v143;
        v154 += v143;
        v149 += v143;
        result = (result + v138);
        v26 -= 8;
      }

      while (v26);
    }
  }

  return result;
}

__int32 *vpx_convolve8_vert_neon(__int32 *result, uint64_t a2, int8x8_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10, int a11)
{
  v12 = a10;
  v11 = a11;
  v13 = *(a5 + 16 * a8);
  if (v13.i16[7] | v13.i16[0])
  {
    v14 = 0;
  }

  else
  {
    v14 = (v13.i16[6] | WORD1(*(a5 + 16 * a8))) == 0;
  }

  if (v14)
  {
    v109 = (result - a2);
    v110 = vshrn_n_s16(vabsq_s16(v13), 1uLL);
    if (a10 == 4)
    {
      v111.i32[0] = *v109;
      v111.i32[1] = *result;
      v112.i32[0] = *result;
      v112.i32[1] = *(result + a2);
      v113 = (v109 + 2 * a2);
      v114 = vdup_lane_s8(v110, 3);
      v115 = vdup_lane_s8(v110, 4);
      v116 = vdup_lane_s8(v110, 2);
      v117 = vdup_lane_s8(v110, 5);
      do
      {
        v118.i32[0] = *v113;
        v118.i32[1] = *(v113 + a2);
        v119 = (v113 + a2 + a2);
        v120.i32[0] = v118.i32[1];
        v120.i32[1] = *v119;
        v121 = (v119 + a2);
        v122 = *v121;
        v123 = vmlsl_u8(vmlal_u8(vmull_u8(v118, v115), v112, v114), v111, v116);
        v111 = __PAIR64__(*v121, v120.u32[1]);
        v113 = (v121 + a2);
        v112.i32[0] = v122;
        v112.i32[1] = *v113;
        *v123.i8 = vqrshrun_n_s16(vmlsl_u8(v123, v120, v117), 6uLL);
        v124 = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(__PAIR64__(v122, v120.u32[1]), v115), v120, v114), v118, v116), v112, v117), 6uLL);
        a3->i32[0] = v123.i32[0];
        *(a3->i32 + a4) = v123.i32[1];
        v125 = (a3 + a4 + a4);
        v125->i32[0] = v124.i32[0];
        v126 = (v125 + a4);
        v126->i32[0] = v124.i32[1];
        a3 = (v126 + a4);
        v11 -= 4;
      }

      while (v11);
    }

    else
    {
      v127 = vdup_lane_s8(v110, 3);
      v128 = vdup_lane_s8(v110, 4);
      v129 = vdup_lane_s8(v110, 2);
      v130 = vdup_lane_s8(v110, 5);
      do
      {
        v131 = *v109;
        v132 = *(v109 + a2);
        v133 = *(v109 + a2 + a2);
        v134 = (v109 + 3 * a2);
        v135 = a3;
        v136 = a11;
        do
        {
          v137 = *v134;
          v138 = (v134 + a2);
          v139 = vmlsl_u8(vmlal_u8(vmull_u8(v133, v128), v132, v127), v131, v129);
          v131 = *v138;
          v140 = (v138 + a2);
          v141 = vmlsl_u8(vmlal_u8(vmull_u8(v137, v128), v133, v127), v132, v129);
          v132 = *v140;
          v142 = (v140 + a2);
          v143 = vmlsl_u8(vmlal_u8(vmull_u8(v131, v128), v137, v127), v133, v129);
          v133 = *v142;
          *v139.i8 = vqrshrun_n_s16(vmlsl_u8(v139, v137, v130), 6uLL);
          v144 = vqrshrun_n_s16(vmlsl_u8(vmlsl_u8(vmlal_u8(vmull_u8(v132, v128), v131, v127), v137, v129), *v142, v130), 6uLL);
          *v135 = *v139.i8;
          v145 = (v135 + a4);
          *v145 = vqrshrun_n_s16(vmlsl_u8(v141, v131, v130), 6uLL);
          v146 = (v145 + a4);
          *v146 = vqrshrun_n_s16(vmlsl_u8(v143, v132, v130), 6uLL);
          v147 = (v146 + a4);
          v134 = (v142 + a2);
          *v147 = v144;
          v135 = (v147 + a4);
          v136 -= 4;
        }

        while (v136);
        v109 += 2;
        ++a3;
        v12 -= 8;
      }

      while (v12);
    }
  }

  else
  {
    v15 = (result - 3 * a2);
    if (a10 == 4)
    {
      v16 = (v15 + a2 + a2);
      v17 = *v16;
      v18 = (v16 + a2);
      v19 = *v18;
      v20 = (v18 + a2);
      v21 = *v20;
      v22 = (v20 + a2);
      v23 = vmovl_u8(*v15).u64[0];
      v24 = vmovl_u8(*(v15 + a2)).u64[0];
      v25 = vmovl_u8(v17).u64[0];
      v26 = vmovl_u8(v19).u64[0];
      v27 = vmovl_u8(v21).u64[0];
      v28 = vmovl_u8(*v22).u64[0];
      v29 = vmovl_u8(*(v22 + a2)).u64[0];
      v30 = (&v15[a2] - a2);
      v31 = vdup_lane_s16(*v13.i8, 0);
      v32 = vdup_lane_s16(*v13.i8, 1);
      v33 = vdup_lane_s16(*v13.i8, 2);
      v34 = vdup_laneq_s16(v13, 5);
      v35 = vdup_laneq_s16(v13, 6);
      v36 = vdup_laneq_s16(v13, 7);
      v37 = vdup_lane_s16(*v13.i8, 3);
      v38 = vdup_laneq_s16(v13, 4);
      do
      {
        v39 = vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmul_s16(v29, v35), v28, v34), v25, v33), v24, v32), v23, v31);
        v23 = v27;
        v40 = *v30;
        v41 = (v30 + a2);
        v42 = *v41;
        v43 = (v41 + a2);
        v44 = vmla_s16(vmul_s16(v29, v34), v26, v33);
        v45 = vmla_s16(vmul_s16(v23, v33), v26, v32);
        v46 = vmla_s16(vmla_s16(vmul_s16(v28, v33), v23, v32), v26, v31);
        v47 = vmul_s16(v26, v37);
        v26 = vmovl_u8(v40).u64[0];
        *v48.i8 = vqadd_s16(vqadd_s16(vmla_s16(v39, v26, v36), v47), vmul_s16(v23, v38));
        v49 = *v43;
        v50 = (v43 + a2);
        v27 = vmovl_u8(v42).u64[0];
        v51 = vqadd_s16(vqadd_s16(vmla_s16(vmla_s16(vmla_s16(vmla_s16(v44, v25, v32), v24, v31), v26, v35), v27, v36), vmul_s16(v23, v37)), vmul_s16(v28, v38));
        v52 = vmla_s16(v45, v25, v31);
        v53 = vmul_s16(v28, v37);
        v24 = v28;
        v28 = vmovl_u8(v49).u64[0];
        *v54.i8 = vqadd_s16(vqadd_s16(vmla_s16(vmla_s16(vmla_s16(v52, v26, v34), v27, v35), v28, v36), v53), vmul_s16(v29, v38));
        v55 = vmul_s16(v29, v37);
        v25 = v29;
        v29 = vmovl_u8(*v50).u64[0];
        v48.u64[1] = v51;
        v56 = vqadd_s16(vqadd_s16(vmla_s16(vmla_s16(vmla_s16(v46, v27, v34), v28, v35), v29, v36), v55), vmul_s16(v26, v38));
        v57 = vqrshrun_n_s16(v48, 7uLL);
        v54.u64[1] = v56;
        v58 = vqrshrun_n_s16(v54, 7uLL);
        a3->i32[0] = v57.i32[0];
        *(a3->i32 + a4) = v57.i32[1];
        v59 = (a3 + a4 + a4);
        v59->i32[0] = v58.i32[0];
        v60 = (v59 + a4);
        v60->i32[0] = v58.i32[1];
        v30 = (v50 + a2);
        a3 = (v60 + a4);
        v11 -= 4;
      }

      while (v11);
    }

    else
    {
      v61 = vdupq_lane_s16(*v13.i8, 0);
      v62 = vdupq_lane_s16(*v13.i8, 1);
      v63 = vdupq_lane_s16(*v13.i8, 2);
      v64 = vdupq_laneq_s16(v13, 5);
      v65 = vdupq_laneq_s16(v13, 6);
      v66 = vdupq_laneq_s16(v13, 7);
      v67 = vdupq_lane_s16(*v13.i8, 3);
      v68 = vdupq_laneq_s16(v13, 4);
      do
      {
        v69 = (v15 + a2 + a2);
        v70 = *v69;
        v71 = (v69 + a2);
        v72 = *v71;
        v73 = (v71 + a2);
        v74 = *v73;
        v75 = (v73 + a2);
        v76 = vmovl_u8(*v15);
        v77 = vmovl_u8(*(v15 + a2));
        v78 = vmovl_u8(v70);
        v79 = vmovl_u8(v72);
        v80 = vmovl_u8(v74);
        v81 = vmovl_u8(*v75);
        v82 = vmovl_u8(*(v75 + a2));
        v83 = (v15 + 7 * a2);
        v84 = a3;
        v85 = a11;
        do
        {
          v86 = *v83;
          v87 = (v83 + a2);
          v88 = *v87;
          v89 = (v87 + a2);
          v90 = *v89;
          v91 = (v89 + a2);
          v92 = vmlaq_s16(vmlaq_s16(vmulq_s16(v76, v61), v77, v62), v78, v63);
          v93 = vmulq_s16(v79, v67);
          v94 = vmlaq_s16(vmlaq_s16(vmulq_s16(v77, v61), v78, v62), v79, v63);
          v95 = vmlaq_s16(vmulq_s16(v78, v61), v79, v62);
          v96 = vmulq_s16(v79, v61);
          v79 = vmovl_u8(v86);
          v97 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v92, v81, v64), v82, v65), v66, v79), v93), vmulq_s16(v80, v68));
          v98 = vmulq_s16(v80, v67);
          v99 = vmlaq_s16(v95, v80, v63);
          v100 = vmlaq_s16(v96, v80, v62);
          v76 = v80;
          v80 = vmovl_u8(v88);
          v101 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v94, v82, v64), v65, v79), v66, v80), v98), vmulq_s16(v81, v68));
          v102 = vmulq_s16(v81, v67);
          v103 = vmlaq_s16(v100, v81, v63);
          v77 = v81;
          v81 = vmovl_u8(v90);
          v104 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v99, v64, v79), v65, v80), v66, v81), v102), vmulq_s16(v82, v68));
          v105 = vmulq_s16(v82, v67);
          v78 = v82;
          v82 = vmovl_u8(*v91);
          *v84 = vqrshrun_n_s16(v97, 7uLL);
          v106 = (v84 + a4);
          *v106 = vqrshrun_n_s16(v101, 7uLL);
          v107 = (v106 + a4);
          *v107 = vqrshrun_n_s16(v104, 7uLL);
          v108 = (v107 + a4);
          *v108 = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v103, v64, v80), v65, v81), v66, v82), v105), vmulq_s16(v68, v79)), 7uLL);
          v83 = (v91 + a2);
          v84 = (v108 + a4);
          v85 -= 4;
        }

        while (v85);
        ++v15;
        ++a3;
        v12 -= 8;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t vpx_convolve8_avg_vert_neon(uint64_t result, uint64_t a2, uint8x8_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10, int a11)
{
  v12 = a10;
  v11 = a11;
  v13 = *(a5 + 16 * a8);
  v14 = (result - 3 * a2);
  if (a10 == 4)
  {
    v15 = (v14 + a2 + a2);
    v16 = *v15;
    v17 = (v15 + a2);
    v18 = *v17;
    v19 = (v17 + a2);
    v20 = *v19;
    v21 = (v19 + a2);
    v22 = vmovl_u8(*v14).u64[0];
    v23 = vmovl_u8(*(v14 + a2)).u64[0];
    v24 = vmovl_u8(v16).u64[0];
    v25 = vmovl_u8(v18).u64[0];
    v26 = vmovl_u8(v20).u64[0];
    v27 = vmovl_u8(*v21).u64[0];
    v28 = vmovl_u8(*(v21 + a2)).u64[0];
    v29 = vdup_lane_s16(*v13.i8, 0);
    v30 = vdup_lane_s16(*v13.i8, 1);
    v31 = vdup_lane_s16(*v13.i8, 2);
    v32 = vdup_laneq_s16(v13, 5);
    v33 = vdup_laneq_s16(v13, 6);
    v34 = vdup_laneq_s16(v13, 7);
    v35 = vdup_lane_s16(*v13.i8, 3);
    v36 = (&v14[a2] - a2);
    v37 = vdup_laneq_s16(v13, 4);
    do
    {
      v38 = vmla_s16(vmla_s16(vmla_s16(vmla_s16(vmul_s16(v28, v33), v27, v32), v24, v31), v23, v30), v22, v29);
      v22 = v26;
      v39 = *v36;
      v40 = (v36 + a2);
      v41 = *v40;
      v42 = (v40 + a2);
      v43 = vmla_s16(vmul_s16(v28, v32), v25, v31);
      v44 = vmla_s16(vmul_s16(v22, v31), v25, v30);
      v45 = vmla_s16(vmla_s16(vmul_s16(v27, v31), v22, v30), v25, v29);
      v46 = vmul_s16(v25, v35);
      v25 = vmovl_u8(v39).u64[0];
      *v47.i8 = vqadd_s16(vqadd_s16(vmla_s16(v38, v25, v34), v46), vmul_s16(v22, v37));
      v48 = *v42;
      v49 = (v42 + a2);
      v26 = vmovl_u8(v41).u64[0];
      v50 = vqadd_s16(vqadd_s16(vmla_s16(vmla_s16(vmla_s16(vmla_s16(v43, v24, v30), v23, v29), v25, v33), v26, v34), vmul_s16(v22, v35)), vmul_s16(v27, v37));
      v51 = vmla_s16(v44, v24, v29);
      v52 = vmul_s16(v27, v35);
      v23 = v27;
      v27 = vmovl_u8(v48).u64[0];
      *v53.i8 = vqadd_s16(vqadd_s16(vmla_s16(vmla_s16(vmla_s16(v51, v25, v32), v26, v33), v27, v34), v52), vmul_s16(v28, v37));
      v54 = vmul_s16(v28, v35);
      v24 = v28;
      v28 = vmovl_u8(*v49).u64[0];
      v47.u64[1] = v50;
      v53.u64[1] = vqadd_s16(vqadd_s16(vmla_s16(vmla_s16(vmla_s16(v45, v26, v32), v27, v33), v28, v34), v54), vmul_s16(v25, v37));
      v55 = vqrshrun_n_s16(v47, 7uLL);
      v45.i32[0] = a3->i32[0];
      v45.i32[1] = *(a3->i32 + a4);
      v47.i32[0] = *(a3->i32 + 2 * a4);
      v47.i32[1] = *(a3->i32 + 3 * a4);
      v56 = vrhadd_u8(v55, v45);
      *v53.i8 = vrhadd_u8(vqrshrun_n_s16(v53, 7uLL), *v47.i8);
      a3->i32[0] = v56.i32[0];
      *(a3->i32 + a4) = v56.i32[1];
      *(a3->i32 + 2 * a4) = v53.i32[0];
      *(a3->i32 + 3 * a4) = v53.i32[1];
      a3 = (a3 + 4 * a4);
      v36 = (v49 + a2);
      v11 -= 4;
    }

    while (v11);
  }

  else
  {
    v57 = vdupq_lane_s16(*v13.i8, 0);
    v58 = vdupq_lane_s16(*v13.i8, 1);
    v59 = vdupq_lane_s16(*v13.i8, 2);
    v60 = vdupq_laneq_s16(v13, 5);
    v61 = vdupq_laneq_s16(v13, 6);
    v62 = vdupq_laneq_s16(v13, 7);
    v63 = vdupq_lane_s16(*v13.i8, 3);
    v64 = vdupq_laneq_s16(v13, 4);
    do
    {
      v65 = (v14 + a2 + a2);
      v66 = *v65;
      v67 = (v65 + a2);
      v68 = *v67;
      v69 = (v67 + a2);
      v70 = *v69;
      v71 = (v69 + a2);
      v72 = vmovl_u8(*v14);
      v73 = vmovl_u8(*(v14 + a2));
      v74 = vmovl_u8(v66);
      v75 = vmovl_u8(v68);
      v76 = vmovl_u8(v70);
      v77 = vmovl_u8(*v71);
      v78 = vmovl_u8(*(v71 + a2));
      v79 = (v14 + 7 * a2);
      v80 = a3;
      v81 = a11;
      do
      {
        v82 = vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmulq_s16(v77, v60), v78, v61), v74, v59), v73, v58), v72, v57);
        v72 = v76;
        v83 = *v79;
        v84 = (v79 + a2);
        v85 = *v84;
        v86 = (v84 + a2);
        v87 = vmlaq_s16(vmulq_s16(v78, v60), v75, v59);
        v88 = vmlaq_s16(vmulq_s16(v72, v59), v75, v58);
        v89 = vmlaq_s16(vmlaq_s16(vmulq_s16(v72, v58), v77, v59), v75, v57);
        v90 = vmulq_s16(v75, v63);
        v75 = vmovl_u8(v83);
        v91 = *v86;
        v92 = (v86 + a2);
        v76 = vmovl_u8(v85);
        v93 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v87, v74, v58), v73, v57), v61, v75), v62, v76), vmulq_s16(v72, v63)), vmulq_s16(v77, v64));
        v94 = vmlaq_s16(v88, v74, v57);
        v95 = vmulq_s16(v77, v63);
        v73 = v77;
        v77 = vmovl_u8(v91);
        v96 = vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v94, v60, v75), v61, v76), v62, v77), v95), vmulq_s16(v78, v64));
        v97 = vmulq_s16(v78, v63);
        v74 = v78;
        v78 = vmovl_u8(*v92);
        *v93.i8 = vrhadd_u8(vqrshrun_n_s16(v93, 7uLL), *(v80 + a4));
        *v96.i8 = vrhadd_u8(vqrshrun_n_s16(v96, 7uLL), *(v80 + 2 * a4));
        *v89.i8 = vrhadd_u8(vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(vmlaq_s16(vmlaq_s16(v89, v60, v76), v61, v77), v62, v78), v97), vmulq_s16(v64, v75)), 7uLL), *(v80 + 3 * a4));
        *v80 = vrhadd_u8(vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_s16(v82, v62, v75), v90), vmulq_s16(v72, v64)), 7uLL), *v80);
        *(v80 + a4) = *v93.i8;
        *(v80 + 2 * a4) = *v96.i8;
        *(v80 + 3 * a4) = *v89.i8;
        v80 = (v80 + 4 * a4);
        v79 = (v92 + a2);
        v81 -= 4;
      }

      while (v81);
      ++v14;
      ++a3;
      v12 -= 8;
    }

    while (v12);
  }

  return result;
}

uint8x16_t vpx_convolve_avg_neon(uint8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  if (a10 > 7)
  {
    if (a10 == 8)
    {
      do
      {
        v16 = *a1->i8;
        v17 = *&a1->i8[a2];
        a1 = (a1 + a2 + a2);
        v18 = *(a3 + a4);
        *a3 = vrhadd_u8(v16, *a3);
        *result.i8 = vrhadd_u8(v17, v18);
        *(a3 + a4) = result.i64[0];
        a3 += a4 + a4;
        a11 -= 2;
      }

      while (a11);
    }

    else if (a10 > 0x1F)
    {
      if (a10 == 32)
      {
        do
        {
          v22 = (a3 + a4);
          result = vrhaddq_u8(*a1, *a3);
          v23 = vrhaddq_u8(a1[1], *(a3 + 16));
          v24 = vrhaddq_u8(*(a1 + a2), *(a3 + a4));
          v25 = vrhaddq_u8(*(&a1[1] + a2), *(a3 + a4 + 16));
          *a3 = result;
          *(a3 + 16) = v23;
          *v22 = v24;
          v22[1] = v25;
          a3 += a4 + a4;
          a1 = (a1 + a2 + a2);
          a11 -= 2;
        }

        while (a11);
      }

      else
      {
        v26 = a1 + 2;
        v27 = (a3 + 32);
        do
        {
          result = vrhaddq_u8(v26[-2], v27[-2]);
          v28 = vrhaddq_u8(v26[-1], v27[-1]);
          v29 = vrhaddq_u8(*v26, *v27);
          v30 = vrhaddq_u8(v26[1], v27[1]);
          v27[-2] = result;
          v27[-1] = v28;
          *v27 = v29;
          v27[1] = v30;
          v26 = (v26 + a2);
          v27 = (v27 + a4);
          --a11;
        }

        while (a11);
      }
    }

    else
    {
      do
      {
        v19 = *a1;
        v20 = *(a1 + a2);
        a1 = (a1 + a2 + a2);
        result = vrhaddq_u8(v19, *a3);
        v21 = vrhaddq_u8(v20, *(a3 + a4));
        *a3 = result;
        *(a3 + a4) = v21;
        a3 += a4 + a4;
        a11 -= 2;
      }

      while (a11);
    }
  }

  else
  {
    do
    {
      v12 = *a1->i8;
      v13 = *&a1->i8[a2];
      a1 = (a1 + a2 + a2);
      v14 = vzip1_s32(v12, v13);
      v13.i32[0] = *a3;
      v13.i32[1] = *(a3 + a4);
      *result.i8 = vrhadd_u8(v14, v13);
      *a3 = result.i32[0];
      *(a3 + a4) = result.i32[1];
      a3 += a4 + a4;
      a11 -= 2;
    }

    while (a11);
  }

  return result;
}

__n128 vpx_convolve_copy_neon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  if (a10 > 7)
  {
    if (a10 == 8)
    {
      do
      {
        result.n128_u64[0] = *a1;
        v13 = *(a1 + a2);
        a1 += a2 + a2;
        *a3 = result.n128_u64[0];
        *(a3 + a4) = v13;
        a3 += a4 + a4;
        a11 -= 2;
      }

      while (a11);
    }

    else if (a10 > 0x1F)
    {
      if (a10 == 32)
      {
        do
        {
          result = *a1;
          v15 = *(a1 + 16);
          v16 = *(a1 + a2);
          v17 = *(a1 + a2 + 16);
          *a3 = *a1;
          *(a3 + 16) = v15;
          v18 = (a3 + a4);
          *v18 = v16;
          v18[1] = v17;
          a3 += a4 + a4;
          a1 += a2 + a2;
          a11 -= 2;
        }

        while (a11);
      }

      else
      {
        v19 = (a1 + 32);
        v20 = (a3 + 32);
        do
        {
          result = v19[-2];
          v21 = v19[-1];
          v22 = *v19;
          v23 = v19[1];
          v20[-2] = result;
          v20[-1] = v21;
          *v20 = v22;
          v20[1] = v23;
          v19 = (v19 + a2);
          v20 = (v20 + a4);
          --a11;
        }

        while (a11);
      }
    }

    else
    {
      do
      {
        result = *a1;
        v14 = *(a1 + a2);
        a1 += a2 + a2;
        *a3 = result;
        *(a3 + a4) = v14;
        a3 += a4 + a4;
        a11 -= 2;
      }

      while (a11);
    }
  }

  else
  {
    do
    {
      *a3 = *a1;
      *(a3 + a4) = *(a1 + a2);
      a1 += a2 + a2;
      a3 += a4 + a4;
      a11 -= 2;
    }

    while (a11);
  }

  return result;
}

__int32 *vpx_convolve8_neon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  v11 = MEMORY[0x28223BE20](a1, a2, a3);
  v17 = v16;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v28 = v21;
  v23 = v22;
  STACK[0x1238] = *MEMORY[0x277D85DE8];
  v24 = (v13 + 16 * v16);
  if (v24[7] | *v24 || v24[6] | v24[1])
  {
    v25 = 8;
  }

  else
  {
    v25 = 4;
  }

  v26 = (v25 >> 1) - 1;
  vpx_convolve8_horiz_neon((v11 - v26 * v12), v12, &v29, 64, v13, v14, v15, v16, a9, a10, v25 + a11);
  return vpx_convolve8_vert_neon(&v29 + 16 * v26, 64, v23, v28, v20, v19, v18, v17, a9, a10, a11);
}

uint64_t vpx_convolve8_avg_neon(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  v20 = MEMORY[0x28223BE20](a1, a2, a3);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  STACK[0x1238] = *MEMORY[0x277D85DE8];
  vpx_convolve8_horiz_neon((v20 - 3 * v33), v33, &v35, 64, v27, v25, v23, v21, a4, a5, a6 + 8);
  return vpx_convolve8_avg_vert_neon(va, 64, v32, v30, v28, v26, v24, v22, a4, a5, a6);
}

uint64_t setup_rtcd_internal_1()
{
  result = arm_cpu_caps();
  vpx_convolve8 = vpx_convolve8_neon;
  vpx_convolve8_avg = vpx_convolve8_avg_neon;
  vpx_convolve8_avg_horiz = vpx_convolve8_avg_horiz_neon;
  vpx_convolve8_avg_vert = vpx_convolve8_avg_vert_neon;
  vpx_convolve8_horiz = vpx_convolve8_horiz_neon;
  vpx_convolve8_vert = vpx_convolve8_vert_neon;
  vpx_get16x16var = vpx_get16x16var_neon;
  vpx_get4x4sse_cs = vpx_get4x4sse_cs_neon;
  vpx_get8x8var = vpx_get8x8var_neon;
  vpx_mse16x16 = vpx_mse16x16_neon;
  vpx_sad16x16 = vpx_sad16x16_neon;
  vpx_sad16x16_avg = vpx_sad16x16_avg_neon;
  vpx_sad16x16x4d = vpx_sad16x16x4d_neon;
  vpx_sad16x32 = vpx_sad16x32_neon;
  vpx_sad16x32_avg = vpx_sad16x32_avg_neon;
  vpx_sad16x32x4d = vpx_sad16x32x4d_neon;
  vpx_sad16x8 = vpx_sad16x8_neon;
  vpx_sad16x8_avg = vpx_sad16x8_avg_neon;
  vpx_sad16x8x4d = vpx_sad16x8x4d_neon;
  vpx_sad32x16 = vpx_sad32x16_neon;
  vpx_sad32x16_avg = vpx_sad32x16_avg_neon;
  vpx_sad32x16x4d = vpx_sad32x16x4d_neon;
  vpx_sad32x32 = vpx_sad32x32_neon;
  vpx_sad32x32_avg = vpx_sad32x32_avg_neon;
  vpx_sad32x32x4d = vpx_sad32x32x4d_neon;
  vpx_sad32x64 = vpx_sad32x64_neon;
  vpx_sad32x64_avg = vpx_sad32x64_avg_neon;
  vpx_sad32x64x4d = vpx_sad32x64x4d_neon;
  vpx_sad64x32 = vpx_sad64x32_neon;
  vpx_sad64x32_avg = vpx_sad64x32_avg_neon;
  vpx_sad64x32x4d = vpx_sad64x32x4d_neon;
  vpx_sad64x64 = vpx_sad64x64_neon;
  vpx_sad64x64_avg = vpx_sad64x64_avg_neon;
  vpx_sad64x64x4d = vpx_sad64x64x4d_neon;
  vpx_sad_skip_16x16 = vpx_sad_skip_16x16_neon;
  vpx_sad_skip_16x16x4d = vpx_sad_skip_16x16x4d_neon;
  vpx_sad_skip_16x32 = vpx_sad_skip_16x32_neon;
  vpx_sad_skip_16x32x4d = vpx_sad_skip_16x32x4d_neon;
  vpx_sad_skip_16x8 = vpx_sad_skip_16x8_neon;
  vpx_sad_skip_16x8x4d = vpx_sad_skip_16x8x4d_neon;
  vpx_sad_skip_32x16 = vpx_sad_skip_32x16_neon;
  vpx_sad_skip_32x16x4d = vpx_sad_skip_32x16x4d_neon;
  vpx_sad_skip_32x32 = vpx_sad_skip_32x32_neon;
  vpx_sad_skip_32x32x4d = vpx_sad_skip_32x32x4d_neon;
  vpx_sad_skip_32x64 = vpx_sad_skip_32x64_neon;
  vpx_sad_skip_32x64x4d = vpx_sad_skip_32x64x4d_neon;
  vpx_sad_skip_64x32 = vpx_sad_skip_64x32_neon;
  vpx_sad_skip_64x32x4d = vpx_sad_skip_64x32x4d_neon;
  vpx_sad_skip_64x64 = vpx_sad_skip_64x64_neon;
  vpx_sad_skip_64x64x4d = vpx_sad_skip_64x64x4d_neon;
  vpx_sse = vpx_sse_neon;
  vpx_variance16x16 = vpx_variance16x16_neon;
  vpx_variance16x32 = vpx_variance16x32_neon;
  vpx_variance16x8 = vpx_variance16x8_neon;
  vpx_variance32x16 = vpx_variance32x16_neon;
  vpx_variance32x32 = vpx_variance32x32_neon;
  vpx_variance32x64 = vpx_variance32x64_neon;
  vpx_variance4x4 = vpx_variance4x4_neon;
  vpx_variance4x8 = vpx_variance4x8_neon;
  vpx_variance64x32 = vpx_variance64x32_neon;
  vpx_variance64x64 = vpx_variance64x64_neon;
  vpx_variance8x16 = vpx_variance8x16_neon;
  vpx_variance8x4 = vpx_variance8x4_neon;
  vpx_variance8x8 = vpx_variance8x8_neon;
  return result;
}

uint64_t vpx_codec_enc_init_multi_ver(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t *a6, int a7)
{
  if (a7 == 37)
  {
    result = 8;
    if (a1)
    {
      if (a2)
      {
        if (a3)
        {
          v9 = a4 - 1;
          if (a4 - 1 <= 0xF)
          {
            if (a6)
            {
              if (*(a2 + 8) != 5)
              {
                result = 3;
                goto LABEL_18;
              }

              v10 = *(a2 + 16);
              if ((v10 & 2) == 0 || (a5 & 0x10000) != 0 && (v10 & 0x10000) == 0 || (a5 & 0x20000) != 0 && (v10 & 0x20000) == 0)
              {
                result = 4;
LABEL_18:
                *(a1 + 4) = result;
                return result;
              }

              v44 = 0;
              v11 = *(a2 + 144);
              if (!v11)
              {
                return 4;
              }

              v16 = a1;
              result = v11(a3, &v44);
              if (result)
              {
                a1 = v16;
                goto LABEL_18;
              }

              v41 = 0;
              v42 = 0;
              v43 = 0;
              v18 = v16;
              if ((*a6 - 4097) >= 0xFFFFF000)
              {
                v19 = 0;
                v25 = *(a6 + 1);
                result = 8;
                v20 = 1;
                v21 = a2;
                if (v25 >= 1 && v25 <= *a6)
                {
                  v41 = __PAIR64__(v9, a4);
                  v42 = *a6;
                  v43 = v44;
                  *v16 = *a2;
                  v16[1] = a2;
                  v16[5] = a3;
                  v16[6] = 0;
                  v16[4] = a5;
                  result = (*(a2 + 24))(v16, &v41);
                  if (!result)
                  {
                    if (a4 == 1)
                    {
                      result = 0;
                      a1 = v16;
                      goto LABEL_18;
                    }

                    v33 = a4;
                    v34 = v16 + 13;
                    v35 = a3 + 504;
                    v36 = (a6 + 1);
                    v19 = 1;
                    v37 = -2;
                    v21 = a2;
                    v38 = a5;
                    while (1)
                    {
                      v18 = v34 - 6;
                      v41 = 0;
                      v42 = 0;
                      v43 = 0;
                      if ((*v36 - 4097) < 0xFFFFF000 || ((v39 = v36[1], v39 >= 1) ? (v40 = v39 <= *v36) : (v40 = 0), !v40))
                      {
                        result = 8;
                        goto LABEL_57;
                      }

                      LODWORD(v41) = v33;
                      HIDWORD(v41) = v33 + v37;
                      v42 = *v36;
                      v43 = v44;
                      *(v34 - 6) = *v21;
                      *(v34 - 5) = v21;
                      *(v34 - 1) = v35;
                      *v34 = 0;
                      *(v34 - 2) = v38;
                      result = (*(v21 + 24))(v34 - 6, &v41);
                      if (result)
                      {
                        break;
                      }

                      ++v19;
                      --v37;
                      v34 += 7;
                      v35 += 504;
                      v36 += 2;
                      v33 = a4;
                      v21 = a2;
                      v38 = a5;
                      if (a4 == v19)
                      {
                        result = 0;
                        a1 = v34 - 13;
                        goto LABEL_18;
                      }
                    }

                    v18 = v34 - 6;
                    v21 = a2;
LABEL_57:
                    v20 = 0;
                    v22 = v18[6];
                    v23 = result;
                    if (!v22)
                    {
                      goto LABEL_25;
                    }

                    goto LABEL_31;
                  }

                  v19 = 0;
                  v18 = v16;
                  v21 = a2;
                }

                v22 = v18[6];
                v23 = result;
                if (!v22)
                {
                  goto LABEL_25;
                }
              }

              else
              {
                v19 = 0;
                result = 8;
                v20 = 1;
                v21 = a2;
                v22 = v16[6];
                v23 = 8;
                if (!v22)
                {
LABEL_25:
                  v24 = 0;
                  v18[3] = 0;
                  goto LABEL_33;
                }
              }

LABEL_31:
              v24 = *v22;
              v18[3] = *v22;
              v26 = v18[1];
              if (v26)
              {
                v27 = v18;
                (*(v26 + 32))(v22);
                result = v23;
                v21 = a2;
                v18 = v27;
                v28 = 0;
                v27[6] = 0;
                *v27 = 0;
                v27[1] = 0;
LABEL_34:
                for (*(v18 + 4) = v28; v19; --v19)
                {
                  while (1)
                  {
                    v29 = v18;
                    v18 -= 7;
                    *(v29 - 4) = v24;
                    v30 = *(v29 - 6);
                    if (v30)
                    {
                      if (*(v29 - 1))
                      {
                        break;
                      }
                    }

                    *(v29 - 10) = 1;
                    if (!--v19)
                    {
                      goto LABEL_40;
                    }
                  }

                  v31 = v18;
                  (*(v30 + 32))(*(v29 - 1));
                  result = v23;
                  v21 = a2;
                  v18 = v31;
                  *(v29 - 1) = 0;
                  *v31 = 0;
                  v31[1] = 0;
                  *(v29 - 10) = 0;
                }

LABEL_40:
                if (v20)
                {
                  v32 = v18;
                  (*(v21 + 152))(v44);
                  result = v23;
                  v18 = v32;
                }

                *(v18 + 4) = result;
                return result;
              }

LABEL_33:
              v28 = 1;
              goto LABEL_34;
            }
          }
        }
      }
    }
  }

  else
  {
    result = 3;
  }

  if (a1)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t vpx_codec_get_cx_data(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (!a2)
    {
      result = 0;
      v4 = 8;
      goto LABEL_9;
    }

    v3 = *(result + 8);
    if (!v3 || !*(result + 48))
    {
      result = 0;
      v4 = 1;
      goto LABEL_9;
    }

    if ((*(v3 + 16) & 2) == 0)
    {
      result = 0;
      v4 = 4;
LABEL_9:
      *(v2 + 16) = v4;
      return result;
    }

    result = (*(v3 + 112))();
    if (result && !*result)
    {
      v5 = *(v2 + 48);
      v6 = *(v5 + 48);
      if (v6)
      {
        v7 = *(result + 8);
        if (v7 != v6)
        {
          v8 = *(result + 16);
          v9 = *(v5 + 64);
          if (v8 + v9 + *(v5 + 68) <= *(v5 + 56))
          {
            v10 = result;
            memcpy(&v6[v9], v7, v8);
            *(v5 + 72) = *v10;
            v11 = *(v10 + 16);
            v12 = *(v10 + 32);
            v13 = *(v10 + 48);
            *(v5 + 136) = *(v10 + 64);
            *(v5 + 120) = v13;
            *(v5 + 104) = v12;
            *(v5 + 88) = v11;
            v14 = *(v10 + 80);
            v15 = *(v10 + 96);
            v16 = *(v10 + 112);
            *(v5 + 200) = *(v10 + 128);
            *(v5 + 184) = v16;
            *(v5 + 168) = v15;
            *(v5 + 152) = v14;
            v17 = *(v5 + 88) + (*(v5 + 68) + *(v5 + 64));
            *(v5 + 80) = v6;
            *(v5 + 88) = v17;
            result = v5 + 72;
          }
        }
      }

      if (v6 == *(result + 8))
      {
        *(v5 + 48) = &v6[*(result + 16)];
        *(v5 + 56) -= *(result + 16);
      }
    }
  }

  return result;
}

void *img_alloc_helper(void *result, int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, uint64_t a7)
{
  if (result)
  {
    result[16] = 0;
    *(result + 6) = 0u;
    *(result + 7) = 0u;
    *(result + 4) = 0u;
    *(result + 5) = 0u;
    *(result + 2) = 0u;
    *(result + 3) = 0u;
    *result = 0u;
    *(result + 1) = 0u;
  }

  if (!a2 || a3 > 0x8000000 || a4 > 0x8000000 || a5 > 0x10000 || a6 > 0x10000 || (a5 <= 1 ? (v7 = 1) : (v7 = a5), (v7 & (v7 - 1)) != 0 || (a6 <= 1 ? (v8 = 1) : (v8 = a6), (v8 & (v8 - 1)) != 0)))
  {
    if (!result)
    {
      return result;
    }

    v11 = result[14];
    if (v11 && *(result + 30))
    {
      v12 = result;
      free(*(v11 - 8));
      result = v12;
    }

    goto LABEL_25;
  }

  v9 = 24;
  v10 = 12;
  if (a2 <= 768)
  {
    if (a2 <= 261)
    {
      if (a2 == 258)
      {
        goto LABEL_39;
      }

      goto LABEL_35;
    }

    if (a2 != 262)
    {
      if (a2 == 265)
      {
        goto LABEL_39;
      }

      goto LABEL_35;
    }

LABEL_47:
    v13 = 0;
    v10 = v9;
    goto LABEL_48;
  }

  if (a2 > 2308)
  {
    switch(a2)
    {
      case 2309:
        goto LABEL_33;
      case 2310:
        v9 = 48;
        goto LABEL_47;
      case 2311:
LABEL_33:
        v10 = 32;
        goto LABEL_39;
    }

LABEL_35:
    v10 = 16;
    goto LABEL_39;
  }

  if (a2 != 769)
  {
    if (a2 == 2306)
    {
      v13 = 1;
      v10 = 24;
      v14 = 1;
      goto LABEL_55;
    }

    goto LABEL_35;
  }

LABEL_39:
  v13 = 1;
  if (a2 <= 768)
  {
    if (a2 != 258)
    {
      v9 = v10;
      if (a2 != 261)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 != 769)
  {
    v9 = v10;
    if (a2 != 2309)
    {
      goto LABEL_47;
    }
  }

LABEL_48:
  v14 = 1;
  if (a2 > 768)
  {
    if (a2 != 769 && a2 != 2311)
    {
      goto LABEL_54;
    }
  }

  else if ((a2 - 258) > 7 || ((1 << (a2 - 2)) & 0xA1) == 0)
  {
LABEL_54:
    v14 = 0;
  }

LABEL_55:
  v15 = a4;
  v16 = a3;
  if (!a7)
  {
    v16 = (~(-1 << v13) + a3) & (-1 << v13);
    v15 = (~(-1 << v14) + a4) & (-1 << v14);
  }

  if ((a2 & 0x100) != 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = (v16 * v10) >> 3;
  }

  if (!result)
  {
    v34 = v14;
    v35 = v10;
    v18 = v13;
    v19 = a3;
    v20 = a4;
    v21 = a7;
    v22 = a2;
    result = malloc_type_calloc(1uLL, 0x88uLL, 0x109004025C8DFD4uLL);
    if (!result)
    {
      return result;
    }

    *(result + 31) = 1;
    a2 = v22;
    a7 = v21;
    a4 = v20;
    a3 = v19;
    v13 = v18;
    v14 = v34;
    v10 = v35;
  }

  v23 = (v8 + (v17 << ((a2 & 0x800) != 0)) - 1) & -v8;
  result[14] = a7;
  if (a7)
  {
    goto LABEL_64;
  }

  v25 = (v23 >> ((a2 & 0x800) != 0)) * v15;
  if ((a2 & 0x100) != 0)
  {
    v25 = (v25 * v10) >> 3;
  }

  v26 = v7 + v25 + 7;
  if (v26 > 0x10000000000 || (v36 = result, v27 = a2, v28 = a4, v29 = a3, v30 = malloc_type_malloc(v26, 0xD93B561uLL), result = v36, !v30))
  {
    result[14] = 0;
    *(result + 30) = 1;
LABEL_25:
    if (*(result + 31))
    {
      free(result);
    }

    return 0;
  }

  a3 = v29;
  a4 = v28;
  a2 = v27;
  *(v36 + 30) = 1;
  a7 = (v30 + v7 + 7) & -v7;
  *(a7 - 8) = v30;
  v36[14] = a7;
  if (!a7)
  {
    goto LABEL_25;
  }

LABEL_64:
  *result = a2;
  if ((a2 & 0x800) != 0)
  {
    v24 = 16;
  }

  else
  {
    v24 = 8;
  }

  *(result + 4) = v15;
  *(result + 5) = v24;
  *(result + 3) = v16;
  *(result + 10) = v13;
  *(result + 11) = v14;
  *(result + 23) = v23;
  *(result + 24) = v10;
  *(result + 21) = v23 >> v13;
  *(result + 22) = v23 >> v13;
  *(result + 20) = v23;
  if (v16 >= a3 && v15 >= a4)
  {
    *(result + 6) = a3;
    *(result + 7) = a4;
    if ((a2 & 0x100) == 0)
    {
      result[6] = a7;
      return result;
    }

    if ((a2 & 0x400) != 0)
    {
      result[9] = a7;
      v32 = v23 * v15;
      result[6] = a7 + v32;
      v31 = a7 + v32 + v32;
    }

    else
    {
      result[6] = a7;
      v31 = a7 + v23 * v15;
      if (a2 == 265)
      {
        result[7] = v31;
        result[8] = v31 + 1;
        return result;
      }
    }

    v33 = v31 + (v23 >> v13) * (v15 >> v14);
    if ((a2 & 0x200) != 0)
    {
      result[8] = v31;
      result[7] = v33;
    }

    else
    {
      result[7] = v31;
      result[8] = v33;
    }
  }

  return result;
}

unint64_t vpx_malloc(uint64_t a1)
{
  v1 = a1 + 23;
  if (v1 > 0x10000000000)
  {
    return 0;
  }

  result = malloc_type_malloc(v1, 0xD93B561uLL);
  if (result)
  {
    v3 = result;
    result = (result + 23) & 0xFFFFFFFFFFFFFFF0;
    *(result - 8) = v3;
  }

  return result;
}

unint64_t vpx_calloc(unint64_t a1, unint64_t a2)
{
  if (a1 && 0x10000000000 / a1 < a2)
  {
    return 0;
  }

  v2 = a2 * a1;
  v3 = a2 * a1 + 23;
  if (v3 > 0x10000000000)
  {
    return 0;
  }

  v4 = malloc_type_malloc(v3, 0xD93B561uLL);
  if (!v4)
  {
    return 0;
  }

  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v5 - 8) = v4;
  if (!v5)
  {
    return 0;
  }

  bzero(((v4 + 23) & 0xFFFFFFFFFFFFFFF0), v2);
  return v5;
}

void *vpx_scale_frame(uint64_t a1, int *a2, char *a3, unsigned __int8 a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9)
{
  v15 = *(a1 + 4);
  v16 = (a5 + *a1 * a6 - 1) / a5;
  v17 = (a7 + v15 * a8 - 1) / a7;
  v34 = a4;
  Scale2D(*(a1 + 56), *(a1 + 16), *a1, v15, *(a2 + 7), a2[4], v16, v17, a3, a4, a5, a6, a7, a8, a9);
  v18 = v17 - 1;
  if (v17 >= 1 && v16 < *a2)
  {
    v20 = 0;
    do
    {
      v21 = a2[4] * v20;
      memset((*(a2 + 7) + v21 + v16 - 1), *(*(a2 + 7) + v16 + v21 - 2), *a2 - v16 + 1);
      ++v20;
    }

    while (v20 < v17);
  }

  if (v17 < a2[1])
  {
    do
    {
      memcpy((*(a2 + 7) + a2[4] * v18++), (*(a2 + 7) + a2[4] * (v17 - 2)), *a2 + 1);
    }

    while (v18 < a2[1]);
  }

  v22 = (v16 / 2);
  v23 = v17 / 2;
  Scale2D(*(a1 + 64), *(a1 + 36), *(a1 + 20), *(a1 + 24), *(a2 + 8), a2[9], v22, v17 / 2, a3, v34, a5, a6, a7, a8, a9);
  v24 = a2[6];
  if (v22 < a2[5] && v24 >= 1)
  {
    for (i = 0; i < v24; ++i)
    {
      v26 = a2[9] * i;
      memset((*(a2 + 8) + v26 + v22 - 1), *(*(a2 + 8) + v22 + v26 - 2), a2[5] - v22 + 1);
      v24 = a2[6];
    }
  }

  if (v23 < v24 && v23 <= a2[1] / 2)
  {
    v27 = v23 - 1;
    do
    {
      memcpy((*(a2 + 8) + a2[9] * v27++), (*(a2 + 8) + a2[9] * (v23 - 2)), a2[5]);
    }

    while (v27 < a2[1] / 2);
  }

  result = Scale2D(*(a1 + 72), *(a1 + 36), *(a1 + 20), *(a1 + 24), *(a2 + 9), a2[9], v22, v23, a3, v34, a5, a6, a7, a8, a9);
  v29 = a2[6];
  if (v22 < a2[5] && v29 >= 1)
  {
    for (j = 0; j < v29; ++j)
    {
      v31 = a2[9] * j;
      result = memset((*(a2 + 9) + v31 + v22 - 1), *(*(a2 + 9) + v22 + v31 - 2), a2[5] - v22 + 1);
      v29 = a2[6];
    }
  }

  if (v23 < v29 && v23 <= a2[1] / 2)
  {
    v32 = v23 - 1;
    do
    {
      result = memcpy((*(a2 + 9) + a2[9] * v32++), (*(a2 + 9) + a2[9] * (v23 - 2)), a2[5]);
    }

    while (v32 < a2[1] / 2);
  }

  return result;
}

char *Scale2D(char *result, int a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, char *a9, unsigned __int8 a10, unsigned int a11, unsigned int a12, unsigned int a13, unsigned int a14, int a15)
{
  v16 = a4;
  v17 = result;
  v18 = a12;
  v19 = 10 * a12 / a11;
  switch(v19)
  {
    case 5u:
      v20 = 0;
      v21 = vp8_horizontal_line_2_1_scale_c;
      break;
    case 8u:
      v21 = vp8_horizontal_line_5_4_scale_c;
      v20 = 0;
      break;
    case 6u:
      v20 = 0;
      v21 = vp8_horizontal_line_5_3_scale_c;
      break;
    default:
      v21 = 0;
      v20 = 1;
      break;
  }

  v22 = 10 * a14 / a13;
  v87 = vp8_vertical_band_5_4_scale_c;
  v91 = a7;
  switch(v22)
  {
    case 5u:
      v86 = a15 != 0;
      v36 = vp8_vertical_band_2_1_scale_i_c;
      if (a15)
      {
        v36 = vp8_vertical_band_2_1_scale_c;
      }

      v87 = v36;
      v23 = 2;
      v24 = 1;
      v83 = 1;
      if ((v20 & 1) == 0)
      {
        goto LABEL_37;
      }

      break;
    case 8u:
      v83 = 0;
      v86 = 1;
      v23 = 5;
      v24 = 4;
      if ((v20 & 1) == 0)
      {
        goto LABEL_37;
      }

      break;
    case 6u:
      v83 = 0;
      v86 = 1;
      v87 = vp8_vertical_band_5_3_scale_c;
      v23 = 5;
      v24 = 3;
      if ((v20 & 1) == 0)
      {
LABEL_37:
        v37 = a5;
        if (a4 == a8)
        {
          if (a4 >= 1)
          {
            v38 = a2;
            do
            {
              result = (v21)(v17, a3, v37, v91);
              v17 += v38;
              v37 += a6;
              --v16;
            }

            while (v16);
          }
        }

        else
        {
          v39 = &result[((a4 - 1) * a2) & (a2 >> 31)];
          if (!v86)
          {
            if (v39 > result)
            {
              v17 = &result[((a4 - 1) * a2) & (a2 >> 31)];
            }

            v40 = a2;
            result = (v21)(v17, a3, a9, a7);
            a2 = v40;
          }

          v41 = (a8 + v24 - 1) / v24;
          v42 = a9;
          if (v41 >= 1)
          {
            v79 = v23 * a2;
            v81 = a2;
            v75 = 2 * a2;
            v74 = 3 * a2;
            v71 = 4 * a2;
            do
            {
              if (v17 >= v39)
              {
                v43 = v17;
              }

              else
              {
                v43 = v39;
              }

              (v21)(v43, a3, &v42[a6], v91);
              if (&v17[v81] >= v39)
              {
                v44 = &v17[v81];
              }

              else
              {
                v44 = v39;
              }

              (v21)(v44, a3, &v42[2 * a6], v91);
              if ((v83 & 1) == 0)
              {
                if (&v17[v75] >= v39)
                {
                  v45 = &v17[v75];
                }

                else
                {
                  v45 = v39;
                }

                (v21)(v45, a3, &v42[3 * a6], v91);
                if (&v17[v74] >= v39)
                {
                  v46 = &v17[v74];
                }

                else
                {
                  v46 = v39;
                }

                (v21)(v46, a3, &v42[4 * a6], v91);
                if (&v17[v71] >= v39)
                {
                  v47 = &v17[v71];
                }

                else
                {
                  v47 = v39;
                }

                (v21)(v47, a3, &v42[5 * a6], v91);
              }

              result = v87(&v42[a6], a6, v37, a6, v91);
              if (!v86)
              {
                result = memcpy(a9, &a9[v23 * a6], v91);
              }

              v17 += v79;
              v37 += v24 * a6;
              --v41;
              v42 = a9;
            }

            while (v41);
          }
        }

        return result;
      }

      break;
  }

  v25 = a12 == 1 && a11 == 2;
  v26 = scale1d_c;
  v27 = scale1d_2t1_ps;
  if (v25)
  {
    v28 = scale1d_2t1_ps;
  }

  else
  {
    v28 = scale1d_c;
  }

  if (!a15)
  {
    v27 = scale1d_2t1_i;
  }

  if (a14 == 1 && a13 == 2)
  {
    v26 = v27;
  }

  if (a4 == a8)
  {
    if (a4 >= 1)
    {
      v30 = a5;
      v31 = a2;
      do
      {
        result = (v28)(v17, 1, a11, a3 + 1, v30, 1, a12, v91);
        v17 += v31;
        v30 += a6;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v73 = v26;
    v32 = a10 - 1;
    v33 = a2;
    if (a8 <= a4)
    {
      v35 = v32 * a14 / a13;
    }

    else
    {
      v35 = a10 - 1;
      v32 = v32 * a4 / a8;
    }

    result = (v28)(result, 1);
    v76 = v35;
    v78 = (a8 + v35 - 1) / v35;
    if (v78 >= 1)
    {
      v48 = a5;
      __src = &a9[v32 * a6];
      v70 = v35 * a6;
      v72 = (v32 + 1);
      if (v32 < 1)
      {
        if (v91 <= 0)
        {
          v64 = 0;
          do
          {
            result = memcpy(a9, __src, a6);
            ++v64;
          }

          while (v64 < v78);
        }

        else
        {
          v61 = 0;
          v62 = v91;
          do
          {
            v89 = v48;
            v92 = v61;
            for (i = 0; i != v62; ++i)
            {
              v73(&a9[i], a6, a13, v72, v89 + i, a6, a14, v35);
            }

            result = memcpy(a9, __src, a6);
            v48 = v89 + v70;
            v61 = v92 + 1;
          }

          while (v92 + 1 < v78);
        }
      }

      else
      {
        v49 = 0;
        v68 = v32 * v33;
        v50 = v16;
        v51 = v33;
        v66 = v32;
        v65 = (v32 + 1) - 1;
        v52 = &v17[v33];
        v53 = 1;
        v54 = a9;
        v55 = v48;
        v69 = v28;
        v67 = v50;
        do
        {
          v84 = v49;
          v88 = v55;
          v80 = v53;
          v82 = v52;
          v56 = v53;
          v57 = v65;
          do
          {
            while (v56 >= v50)
            {
              memcpy(&v54[a6], v54, a6);
              v54 += a6;
              v52 += v51;
              ++v56;
              if (!--v57)
              {
                goto LABEL_77;
              }
            }

            (v28)(v52, 1, a11, a3 + 1, &v54[a6], 1, v18, v91);
            v54 += a6;
            v52 += v51;
            ++v56;
            --v57;
          }

          while (v57);
LABEL_77:
          v58 = a9;
          v59 = v88;
          v60 = v91;
          if (v91 >= 1)
          {
            do
            {
              v73(v58++, a6, a13, v72, v59++, a6, a14, v76);
              --v60;
            }

            while (v60);
          }

          v54 = a9;
          result = memcpy(a9, __src, a6);
          v55 = v88 + v70;
          v49 = v84 + 1;
          v28 = v69;
          v52 = &v82[v68];
          v51 = v33;
          v53 = v80 + v66;
          v18 = a12;
          v50 = v67;
        }

        while (v84 + 1 < v78);
      }
    }
  }

  return result;
}

unsigned __int8 *scale1d_c(unsigned __int8 *result, int a2, int a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, int a8)
{
  if (a8 * a6)
  {
    v8 = 0;
    v9 = 0;
    v10 = result[a2];
    v11 = *result;
    v12 = a7;
    do
    {
      *(a5 + v9) = ((a7 >> 1) + v8 * v10 + v12 * v11) / a7;
      v8 += a3;
      if (v8 > a7)
      {
        do
        {
          v8 -= a7;
          result += a2;
        }

        while (v8 > a7);
        v11 = *result;
        v10 = result[a2];
      }

      v12 = a7 - v8;
      v9 += a6;
    }

    while (v9 < a8 * a6);
  }

  return result;
}

uint64_t scale1d_2t1_ps(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  if (a8 * a6)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      *(a5 + v9) = *(result + v8);
      v9 += a6;
      v8 += 2 * a2;
    }

    while (v9 < a8 * a6);
  }

  return result;
}

_BYTE *scale1d_2t1_i(_BYTE *result, int a2, uint64_t a3, uint64_t a4, _BYTE *a5, unsigned int a6, uint64_t a7, int a8)
{
  *a5 = *result;
  if (a8 * a6 > a6)
  {
    v8 = 0;
    v9 = a6;
    do
    {
      v10 = a2 + v8;
      v11 = 3 * a2 + v8;
      v8 += 2 * a2;
      a5[v9] = (3 * (result[v11] + result[v10]) + 10 * result[v8] + 8) >> 4;
      v9 += a6;
    }

    while (v9 < a8 * a6);
  }

  return result;
}

unint64_t vpx_scaled_2d_neon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  v11 = MEMORY[0x28223BE20](a1, a2, a3);
  v26 = v13;
  v28 = v27;
  v30 = v29;
  v31 = a11;
  v125 = *MEMORY[0x277D85DE8];
  v32 = ((v16 + (a11 - 1) * a9) >> 4) + 8;
  v33 = v11 - 3 * v12 - 3;
  if (a10 == 4)
  {
    v34 = v116;
    do
    {
      v42 = 0;
      v43 = v14;
      do
      {
        while (1)
        {
          v48 = (v33 + (v43 >> 4));
          result = v43 & 0xF;
          if ((v43 & 0xF) != 0)
          {
            break;
          }

          v45 = v48->i8[3];
          v44 = v48 + 3;
          v46 = &v117 + v42 * 4;
          *v46 = v45;
          v46[1] = v44[v12];
          result = v44[2 * v12];
          v46[2] = result;
          v46[3] = v44[3 * v12];
          v43 += v15;
          if (++v42 == 4)
          {
            goto LABEL_3;
          }
        }

        v49 = *(v13 + 16 * (v43 & 0xF));
        v50 = *v48;
        v51 = (v48 + v12);
        v52 = *v51;
        v53 = (v51 + v12);
        v54 = *(v53 + v12);
        v55 = vtrn1_s8(v50, v52);
        v56 = vtrn2_s8(v50, v52);
        v57 = vtrn1_s8(*v53, v54);
        v58 = vtrn2_s8(*v53, v54);
        v59 = vtrn1_s16(v55, v57);
        v60 = vtrn2_s16(v55, v57);
        v61 = vtrn1_s16(v56, v58);
        v62 = vtrn2_s16(v56, v58);
        v63 = vmovl_u8(v59);
        v64 = vmovl_u8(v61);
        v65 = vmovl_u8(v60);
        v66 = vmovl_u8(v62);
        *v49.i8 = vqadd_s16(vqadd_s16(vmla_laneq_s16(vmla_laneq_s16(vmla_laneq_s16(vmla_lane_s16(vmla_lane_s16(vmul_lane_s16(*v64.i8, *v49.i8, 1), *v63.i8, *v49.i8, 0), *v65.i8, *v49.i8, 2), *&vextq_s8(v64, v64, 8uLL), v49, 5), *&vextq_s8(v65, v65, 8uLL), v49, 6), *&vextq_s8(v66, v66, 8uLL), v49, 7), vmul_lane_s16(*v66.i8, *v49.i8, 3)), vmul_laneq_s16(*&vextq_s8(v63, v63, 8uLL), v49, 4));
        v117.i32[v42] = vqrshrun_n_s16(v49, 7uLL).u32[0];
        v43 += v15;
        ++v42;
      }

      while (v42 != 4);
LABEL_3:
      v35 = vtrn1_s16(v117, v118);
      v36 = vtrn2_s16(v117, v118);
      v37 = vzip1_s32(v35, v36);
      v38 = vzip2_s32(v35, v36);
      v39 = vtrn1_s8(v37, v38);
      v40 = vtrn2_s8(v37, v38);
      *v34 = v39.i32[0];
      v34[16] = v40.i32[0];
      v34[32] = v39.i32[1];
      v34[48] = v40.i32[1];
      v33 += 4 * v12;
      v34 += 64;
      v41 = __OFSUB__(v32, 4);
      v32 -= 4;
    }

    while (!((v32 < 0) ^ v41 | (v32 == 0)));
  }

  else
  {
    v67 = v116;
    result = &v117;
    do
    {
      v68 = a10;
      v69 = v67;
      v70 = v14;
      do
      {
        for (i = 0; i != 64; i += 8)
        {
          while (1)
          {
            v84 = v33 + (v70 >> 4);
            if ((v70 & 0xF) != 0)
            {
              break;
            }

            v82 = *(v84 + 3);
            v81 = v84 + 3;
            v83 = &v117 + i;
            *v83 = v82;
            v83[1] = *(v81 + v12);
            v83[2] = *(v81 + 2 * v12);
            v83[3] = *(v81 + 3 * v12);
            v83[4] = *(v81 + 4 * v12);
            v83[5] = *(v81 + 5 * v12);
            v83[6] = *(v81 + 6 * v12);
            v83[7] = *(v81 + 7 * v12);
            v70 += v15;
            i += 8;
            if (i == 64)
            {
              goto LABEL_12;
            }
          }

          v85 = *(v26 + 16 * (v70 & 0xF));
          v18.i64[0] = *v84;
          v86 = (v84 + v12);
          v19.i64[0] = *v86;
          v87 = (v86 + v12);
          v20.i64[0] = *v87;
          v88 = (v87 + v12);
          v21.i64[0] = *v88;
          v89 = (v88 + v12);
          v22.i64[0] = *v89;
          v90 = (v89 + v12);
          v23.i64[0] = *v90;
          v91 = (v90 + v12);
          v24.i64[0] = *v91;
          v25.i64[0] = *(v91 + v12);
          v92 = vzip1q_s8(v18, v19);
          v93 = vzip1q_s8(v20, v21);
          v94 = vzip1q_s8(v22, v23);
          v95 = vzip1q_s8(v24, v25);
          v96 = vzip1q_s16(v92, v93);
          v97 = vzip2q_s16(v92, v93);
          v98 = vzip1q_s16(v94, v95);
          v99 = vzip2q_s16(v94, v95);
          v100 = vzip1q_s32(v96, v98);
          v101 = vzip2q_s32(v96, v98);
          v102 = vzip1q_s32(v97, v99);
          v103 = vzip2q_s32(v97, v99);
          v20 = vmovl_u8(*v100.i8);
          v23 = vmovl_u8(*v101.i8);
          v19 = vmovl_high_u8(v101);
          v24 = vmovl_u8(*v102.i8);
          v22 = vmovl_high_u8(v102);
          v25 = vmovl_u8(*v103.i8);
          v21 = vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_lane_s16(vmovl_high_u8(v100), *v85.i8, 1), v20, *v85.i8, 0), v23, *v85.i8, 2), v22, v85, 5), v25, v85, 6), vmovl_high_u8(v103), v85, 7);
          v18 = vqaddq_s16(v21, vmulq_lane_s16(v19, *v85.i8, 3));
          v17 = vqaddq_s16(v18, vmulq_laneq_s16(v24, v85, 4));
          *(&v117 + i) = vqrshrun_n_s16(v17, 7uLL);
          v70 += v15;
        }

LABEL_12:
        *v17.i8 = v117;
        *v18.i8 = v118;
        v19.i64[0] = v119;
        v20.i64[0] = v120;
        v21.i64[0] = v121;
        v22.i64[0] = v122;
        v23.i64[0] = v123;
        v24.i64[0] = v124;
        v71 = vzip1q_s8(v17, v18);
        v72 = vzip1q_s8(v19, v20);
        v73 = vzip1q_s8(v21, v22);
        v74 = vzip1q_s8(v23, v24);
        v75 = vzip1q_s16(v71, v72);
        v76 = vzip2q_s16(v71, v72);
        v77 = vzip1q_s16(v73, v74);
        v78 = vzip2q_s16(v73, v74);
        v79 = vzip1q_s32(v75, v77);
        v18 = vzip2q_s32(v75, v77);
        v21 = vzip1q_s32(v76, v78);
        v17 = vzip2q_s32(v76, v78);
        v78.i64[0] = vextq_s8(v79, v79, 8uLL).u64[0];
        *v69 = v79.i64[0];
        v20 = vextq_s8(v18, v18, 8uLL);
        v22 = vextq_s8(v21, v21, 8uLL);
        v69[8] = v78.i64[0];
        v19 = vextq_s8(v17, v17, 8uLL);
        v69[16] = v18.i64[0];
        v69[24] = v20.i64[0];
        v69[32] = v21.i64[0];
        v69[40] = v22.i64[0];
        v69[48] = v17.i64[0];
        v69[56] = v19.i64[0];
        ++v69;
        v68 -= 8;
      }

      while (v68);
      v33 += 8 * v12;
      v67 += 512;
      v41 = __OFSUB__(v32, 8);
      v32 -= 8;
    }

    while (!((v32 < 0) ^ v41 | (v32 == 0)));
  }

  if (a10 == 4)
  {
    do
    {
      while (1)
      {
        v106 = &v116[64 * (v16 >> 4)];
        if ((v16 & 0xF) != 0)
        {
          break;
        }

        v30->i32[0] = v106[24].i32[0];
        v16 += a9;
        v30 = (v30 + v28);
        if (!--v31)
        {
          return result;
        }
      }

      v107 = *(v26 + 16 * (v16 & 0xF));
      *v107.i8 = vqadd_s16(vqadd_s16(vmla_laneq_s16(vmla_laneq_s16(vmla_laneq_s16(vmla_lane_s16(vmla_lane_s16(vmul_n_s16(*&vmovl_u8(*v106), v107.i16[0]), *&vmovl_u8(v106[8]), *v107.i8, 1), *&vmovl_u8(v106[16]), *v107.i8, 2), *&vmovl_u8(v106[40]), v107, 5), *&vmovl_u8(v106[48]), v107, 6), *&vmovl_u8(v106[56]), v107, 7), vmul_lane_s16(*&vmovl_u8(v106[24]), *v107.i8, 3)), vmul_laneq_s16(*&vmovl_u8(v106[32]), v107, 4));
      v30->i32[0] = vqrshrun_n_s16(v107, 7uLL).u32[0];
      v16 += a9;
      v30 = (v30 + v28);
      --v31;
    }

    while (v31);
  }

  else if (a10 == 8)
  {
    do
    {
      while (1)
      {
        v104 = &v116[64 * (v16 >> 4)];
        if ((v16 & 0xF) != 0)
        {
          break;
        }

        *v30 = v104[24];
        v16 += a9;
        v30 = (v30 + v28);
        if (!--v31)
        {
          return result;
        }
      }

      v105 = *(v26 + 16 * (v16 & 0xF));
      *v30 = vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_n_s16(vmovl_u8(*v104), v105.i16[0]), vmovl_u8(v104[8]), *v105.i8, 1), vmovl_u8(v104[16]), *v105.i8, 2), vmovl_u8(v104[40]), v105, 5), vmovl_u8(v104[48]), v105, 6), vmovl_u8(v104[56]), v105, 7), vmulq_lane_s16(vmovl_u8(v104[24]), *v105.i8, 3)), vmulq_laneq_s16(vmovl_u8(v104[32]), v105, 4)), 7uLL);
      v16 += a9;
      v30 = (v30 + v28);
      --v31;
    }

    while (v31);
  }

  else
  {
    v108 = v16;
    do
    {
      v109 = &v116[64 * (v108 >> 4)];
      if ((v108 & 0xF) != 0)
      {
        v110 = 0;
        do
        {
          v111 = *(v26 + 16 * (v108 & 0xF));
          v112 = *&v109[v110 + 64];
          v113 = *&v109[v110 + 128];
          v114 = *&v109[v110 + 192];
          v115 = *&v109[v110 + 256];
          *v30[v110 / 8].i8 = vqrshrun_high_n_s16(vqrshrun_n_s16(vqaddq_s16(vqaddq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_n_s16(vmovl_u8(*&v109[v110]), v111.i16[0]), vmovl_u8(*v112.i8), *v111.i8, 1), vmovl_u8(*v113.i8), *v111.i8, 2), vmovl_u8(*&v109[v110 + 320]), v111, 5), vmovl_u8(*&v109[v110 + 384]), v111, 6), vmovl_u8(*&v109[v110 + 448]), v111, 7), vmulq_lane_s16(vmovl_u8(*v114.i8), *v111.i8, 3)), vmulq_laneq_s16(vmovl_u8(*v115.i8), v111, 4)), 7uLL), vqaddq_s16(vqaddq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_n_s16(vmovl_high_u8(*&v109[v110]), v111.i16[0]), vmovl_high_u8(v112), *v111.i8, 1), vmovl_high_u8(v113), *v111.i8, 2), vmovl_high_u8(*&v109[v110 + 320]), v111, 5), vmovl_high_u8(*&v109[v110 + 384]), v111, 6), vmovl_high_u8(*&v109[v110 + 448]), v111, 7), vmulq_lane_s16(vmovl_high_u8(v114), *v111.i8, 3)), vmulq_laneq_s16(vmovl_high_u8(v115), v111, 4)), 7uLL);
          v110 += 16;
        }

        while (a10 != v110);
      }

      else
      {
        result = memcpy(v30, v109 + 192, (a10 & 0xFFFFFFF0) - 16 + 16);
      }

      v108 += a9;
      v30 = (v30 + v28);
      --v31;
    }

    while (v31);
  }

  return result;
}

double init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 8) = 0;
  return result;
}

uint64_t reset(unsigned int *a1)
{
  a1[12] = 0;
  result = a1[2];
  if (result != 1)
  {
    if (!result)
    {
      v3 = malloc_type_malloc(0x8FuLL, 0xD93B561uLL);
      if (!v3)
      {
        goto LABEL_10;
      }

      v4 = v3;
      v5 = (v3 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v5 - 8) = v4;
      if (!v5)
      {
        goto LABEL_10;
      }

      *(v5 + 112) = 0;
      *(v5 + 80) = 0u;
      *(v5 + 96) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 16) = 0u;
      *(v5 + 32) = 0u;
      *v5 = 0u;
      *a1 = v5;
      if (!pthread_mutex_init(v5, 0))
      {
        v6 = pthread_cond_init((*a1 + 64), 0);
        v7 = *a1;
        if (!v6)
        {
          pthread_mutex_lock(v7);
          if (!pthread_create((*a1 + 112), 0, thread_loop, a1))
          {
            a1[2] = 1;
            pthread_mutex_unlock(*a1);
            return 1;
          }

          pthread_mutex_unlock(*a1);
          pthread_mutex_destroy(*a1);
          pthread_cond_destroy((*a1 + 64));
          v8 = *a1;
          if (!*a1)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        pthread_mutex_destroy(v7);
      }

      v8 = *a1;
      if (!*a1)
      {
LABEL_10:
        result = 0;
        *a1 = 0;
        return result;
      }

LABEL_9:
      free(*&v8[-1].__opaque[48]);
      goto LABEL_10;
    }

    if (*a1)
    {
      pthread_mutex_lock(*a1);
      if (a1[2] >= 2)
      {
        do
        {
          pthread_cond_wait((*a1 + 64), *a1);
        }

        while (a1[2] != 1);
      }

      pthread_mutex_unlock(*a1);
      return a1[12] == 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sync(void)
{
  v1 = v0;
  v2 = *v0;
  if (v2)
  {
    pthread_mutex_lock(v2);
    if (*(v1 + 2) >= 2u)
    {
      do
      {
        pthread_cond_wait(&(*v1)[1], *v1);
      }

      while (*(v1 + 2) != 1);
    }

    pthread_mutex_unlock(*v1);
  }
}

pthread_mutex_t *launch(_DWORD *a1)
{
  result = *a1;
  if (result)
  {
    pthread_mutex_lock(result);
    v3 = a1[2];
    if (v3)
    {
      if (v3 != 1)
      {
        do
        {
          pthread_cond_wait((*a1 + 64), *a1);
        }

        while (a1[2] != 1);
      }

      a1[2] = 2;
      pthread_cond_signal((*a1 + 64));
    }

    v4 = *a1;

    return pthread_mutex_unlock(v4);
  }

  return result;
}

void *execute(void *result)
{
  v1 = result[3];
  if (v1)
  {
    v2 = result;
    result = v1(result[4], result[5]);
    *(v2 + 12) |= result == 0;
  }

  return result;
}

std::__fs::filesystem::recursive_directory_iterator *__cdecl end(std::__fs::filesystem::recursive_directory_iterator *__return_ptr retstr, std::__fs::filesystem::recursive_directory_iterator *a2)
{
  result = a2->__imp_.__ptr_;
  if (result)
  {
    pthread_mutex_lock(result);
    cntrl = a2->__imp_.__cntrl_;
    if (cntrl)
    {
      if (cntrl != 1)
      {
        do
        {
          pthread_cond_wait((a2->__imp_.__ptr_ + 64), a2->__imp_.__ptr_);
        }

        while (LODWORD(a2->__imp_.__cntrl_) != 1);
      }

      LODWORD(a2->__imp_.__cntrl_) = 0;
      pthread_cond_signal((a2->__imp_.__ptr_ + 64));
    }

    pthread_mutex_unlock(a2->__imp_.__ptr_);
    pthread_join(*(a2->__imp_.__ptr_ + 14), 0);
    pthread_mutex_destroy(a2->__imp_.__ptr_);
    result = pthread_cond_destroy((a2->__imp_.__ptr_ + 64));
    if (a2->__imp_.__ptr_)
    {
      free(*(a2->__imp_.__ptr_ - 1));
    }

    a2->__imp_.__ptr_ = 0;
  }

  return result;
}

uint64_t thread_loop(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2)
  {
    strncpy(__dst, v2, 0x3FuLL);
    __dst[63] = 0;
    pthread_setname_np(__dst);
  }

  pthread_mutex_lock(*a1);
  v3 = *(a1 + 8);
  for (i = *a1; v3 == 2; i = *a1)
  {
LABEL_8:
    pthread_mutex_unlock(i);
    v5 = *(a1 + 24);
    if (v5)
    {
      *(a1 + 48) |= v5(*(a1 + 32), *(a1 + 40)) == 0;
    }

    pthread_mutex_lock(*a1);
    *(a1 + 8) = 1;
    pthread_cond_signal((*a1 + 64));
    v3 = *(a1 + 8);
  }

  while (v3 == 1)
  {
    pthread_cond_wait(&i[1], i);
    v3 = *(a1 + 8);
    i = *a1;
    if (v3 == 2)
    {
      goto LABEL_8;
    }
  }

  pthread_mutex_unlock(i);
  return 0;
}

uint64_t vp8_yv12_realloc_frame_buffer(uint64_t a1, int a2, int a3, int a4)
{
  if (!a1)
  {
    return 4294967294;
  }

  v5 = (a2 + 15) & 0xFFFFFFF0;
  v6 = (a3 + 15) & 0xFFFFFFF0;
  v7 = (v5 + 2 * a4 + 31) & 0xFFFFFFE0;
  v8 = v7 * (v6 + 2 * a4);
  v9 = (v7 >> 1) * ((v6 >> 1) + a4);
  v10 = v8 + 2 * v9;
  v11 = *(a1 + 88);
  if (v11)
  {
    if (*(a1 + 96) < v10)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_10;
  }

  if (v10 + 39 > 0x10000000000 || (v20 = a1, v19 = a2, v13 = a3, v14 = malloc_type_malloc(v10 + 39, 0xD93B561uLL), a2 = v19, v15 = v14, a1 = v20, !v15))
  {
    *(a1 + 88) = 0;
    v16 = (a1 + 96);
    goto LABEL_13;
  }

  v16 = (v20 + 96);
  v11 = (v15 + 39) & 0xFFFFFFFFFFFFFFE0;
  *(v11 - 8) = v15;
  *(v20 + 88) = v11;
  if (!v11)
  {
LABEL_13:
    *v16 = 0;
    return 0xFFFFFFFFLL;
  }

  a3 = v13;
  *v16 = v10;
LABEL_10:
  if ((a4 & 0x1F) != 0)
  {
    return 4294967293;
  }

  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *a1 = v5;
  *(a1 + 4) = v6;
  *(a1 + 16) = v7;
  *(a1 + 20) = v5 >> 1;
  *(a1 + 24) = v6 >> 1;
  *(a1 + 28) = (a2 + 1) / 2;
  *(a1 + 32) = (a3 + 1) / 2;
  *(a1 + 36) = v7 >> 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 104) = a4;
  *(a1 + 112) = v10;
  v17 = v11 + v7 * a4 + a4;
  v18 = v11 + v8 + (v7 >> 1) * (a4 >> 1) + (a4 >> 1);
  *(a1 + 56) = v17;
  *(a1 + 64) = v18;
  *(a1 + 72) = v18 + v9;
  *(a1 + 80) = 0;
  *(a1 + 148) = 0;
  return 0;
}