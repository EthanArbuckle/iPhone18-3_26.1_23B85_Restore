uint64_t HUDUIWindowAddLabelKeyValuePair(uint64_t a1, __int128 *a2, int a3, __int128 *a4, int a5, float32_t a6, float32_t a7, float a8, double a9)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  v12 = a3;
  v13 = HUDUIInvalidString;
  v14 = qword_784F8;
  v15 = a3;
  v16 = *a4;
  v17 = *(a4 + 2);
  v18 = a5;
  return HUDUIWindowAddSegmentedLabel(a1, &v10, 3u, a6, a7, a8, a9);
}

uint64_t HUDUIWindowAddLabelKeyValuePair2LA(uint64_t a1, __int128 *a2, int a3, __int128 *a4, int a5, __int128 *a6, int a7, float32_t a8, float32_t a9, float a10, double a11)
{
  v13 = *a2;
  v14 = *(a2 + 2);
  v15 = a3;
  v16 = *a4;
  v17 = *(a4 + 2);
  v18 = a5;
  v19 = HUDUIInvalidString;
  v20 = qword_784F8;
  v21 = a3;
  v11 = *a6;
  v23 = *(a6 + 2);
  v22 = v11;
  v24 = a7;
  return HUDUIWindowAddSegmentedLabel(a1, &v13, 4u, a8, a9, a10, a11);
}

double HUDUIWindowBeginRow(uint64_t a1, float a2)
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = *(a1 + 5852);
  v3 = *(a1 + 40);
  if (v2 == -1)
  {
    v5 = *(a1 + 32);
    if (v5 == v3)
    {
      return 0.0;
    }
  }

  else
  {
    v4 = *(a1 + 32);
    if (0xF0F0F0F0F0F0F0F1 * ((v3 - v4) >> 3) <= v2)
    {
      return 0.0;
    }

    v5 = v4 + 136 * v2;
  }

  if (v5)
  {
    v6 = *(*(v5 + 40) + 5848) * a2;
    v7 = *(v5 + 56) + *(v5 + 52);
    *(v5 + 52) = v7;
    *&result = *v5 + 6.0;
    v9 = (v7 + *(v5 + 4)) + 2.0;
    v10 = *(v5 + 8) + -12.0;
    *(v5 + 56) = 0;
    return result;
  }

  return 0.0;
}

uint64_t HUDUIOverlayGetFontHeight(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return (*(result + 5496) / *(result + 4 * a2 + 5520));
  }

  return result;
}

float HUDUIWindowEmptyRow(uint64_t a1, float result)
{
  if (a1)
  {
    v2 = *(a1 + 5852);
    v3 = *(a1 + 40);
    if (v2 == -1)
    {
      v5 = *(a1 + 32);
      if (v5 == v3)
      {
        return result;
      }
    }

    else
    {
      v4 = *(a1 + 32);
      if (0xF0F0F0F0F0F0F0F1 * ((v3 - v4) >> 3) <= v2)
      {
        return result;
      }

      v5 = v4 + 136 * v2;
    }

    if (v5)
    {
      result = *(v5 + 52) + (*(v5 + 56) + (*(*(v5 + 40) + 5848) * result));
      *(v5 + 52) = result;
      *(v5 + 56) = 0;
    }
  }

  return result;
}

uint64_t HUDUIWindowAddLineChart(uint64_t result, __int128 *a2, uint64_t a3, double a4, double a5, float32_t a6, float32_t a7, float a8, double a9, double a10, double a11, uint64_t a12, unint64_t a13)
{
  if (!result)
  {
    return result;
  }

  v13 = *&a9;
  v22 = result;
  v23 = *(result + 5852);
  v24 = *(result + 40);
  if (v23 == -1)
  {
    v26 = *(result + 32);
    if (v26 == v24)
    {
      return 0;
    }
  }

  else
  {
    v25 = *(result + 32);
    if (0xF0F0F0F0F0F0F0F1 * ((v24 - v25) >> 3) <= v23)
    {
      return 0;
    }

    v26 = v25 + 136 * v23;
  }

  if (!v26)
  {
    return 0;
  }

  v27 = *(v26 + 56);
  if (v27 < *&a9)
  {
    v27 = *&a9;
  }

  *(v26 + 56) = v27;
  if (*a2)
  {
    v39 = *a2;
    v40 = *(a2 + 2);
    v41 = 0;
    HUDUIWindowGetLabelSize(result, &v39, &v41 + 1, &v41);
    if (*&v41 <= v13)
    {
      v39 = *a2;
      v40 = *(a2 + 2);
      HUDUIWindowAddLabelAtPoint(v22, &v39, -1, a6, a7, v28, v29);
      a7 = a7 + *&v41;
      v13 = v13 - *&v41;
      goto LABEL_12;
    }

    return 0;
  }

LABEL_12:
  if (a4 == a5)
  {
    v30 = 0;
    a5 = 0.0;
    a4 = 99999.0;
    do
    {
      if (a3)
      {
        v31 = *(a3 + v30);
        if (v31)
        {
          v32 = (v31 + 972);
          if (a4 >= *v32)
          {
            a4 = *v32;
          }

          if (a5 < v32[1])
          {
            a5 = v32[1];
          }
        }
      }

      v30 += 40;
    }

    while (v30 != 320);
  }

  if (a5 < a4)
  {
    return 0;
  }

  v33 = 0;
  v34 = a3 + 12;
  do
  {
    if (a3)
    {
      v35 = *(v34 - 12);
      if (v35)
      {
        HUDUIWindowAddGraph(v22, v35, 0x78u, *(v35 + 960), *(v34 - 4), *(v34 + 12), v33 != 0, a4, a5, *v34, *(v34 + 4), *(v34 + 8), a9, a10, a11, a6, a7, a8, v13);
      }
    }

    ++v33;
    v34 += 40;
  }

  while (v33 != 8);
  if (a13)
  {
    v36 = a6 + 6.0;
    if (a13 == 1)
    {
      HUDUITemporaryStringWithFormat(v22, 0, "%llu%s", &v39, SLOBYTE(a5));
    }

    else
    {
      v38 = 1.0 / a13 * a5;
      HUDUITemporaryStringWithFormat(v22, 0, "%.2f%s", &v39, SLOBYTE(v38));
    }

    *&v37 = v13;
    HUDUIWindowAddLabelInRect(v22, &v39, -1, 0, 0, v36, a7, a8, v37);
  }

  return 1;
}

uint64_t HUDUIWindowAddTimeline(uint64_t result, unint64_t a2, unint64_t a3, void *a4, float a5, float a6, float a7, float a8)
{
  if (!result)
  {
    return result;
  }

  v9 = *(result + 5852);
  v10 = *(result + 40);
  if (v9 != -1)
  {
    v11 = *(result + 32);
    if (0xF0F0F0F0F0F0F0F1 * ((v10 - v11) >> 3) > v9)
    {
      v12 = v11 + 136 * v9;
      goto LABEL_6;
    }

    return 0;
  }

  v12 = *(result + 32);
  if (v12 == v10)
  {
    return 0;
  }

LABEL_6:
  if (!v12)
  {
    return 0;
  }

  result = HUDUIVertexBufferAddTimeline(**(v12 + 40), *(v12 + 96), a2, a3, a4, *(v12 + 40), a5, a6, a7, a8);
  if (result)
  {
    v13 = *(v12 + 56);
    if (v13 < a8)
    {
      v13 = a8;
    }

    *(v12 + 56) = v13;
    return 1;
  }

  return result;
}

uint64_t HUDUIVertexBufferAddTimeline(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5, uint64_t a6, float a7, float a8, float a9, float a10)
{
  v183 = a3;
  v184 = a4;
  v10 = a4 - a3;
  if (a4 == a3)
  {
    return 0;
  }

  v11 = a5;
  v13 = a2;
  v14 = a1;
  v15 = *&HUDUIVertexBufferAddTimeline(HUDUIOverlay *,HUDSimpleVertexBufferChunk *,HUDTimeRange,HUDUISimpleTimeline *,HUDUIRect,HUDUIFrame *)::graphPadding;
  v176 = a7 + *&HUDUIVertexBufferAddTimeline(HUDUIOverlay *,HUDSimpleVertexBufferChunk *,HUDTimeRange,HUDUISimpleTimeline *,HUDUIRect,HUDUIFrame *)::graphPadding;
  v180 = (a7 + a9) + (*&HUDUIVertexBufferAddTimeline(HUDUIOverlay *,HUDSimpleVertexBufferChunk *,HUDTimeRange,HUDUISimpleTimeline *,HUDUIRect,HUDUIFrame *)::graphPadding * -2.0);
  v16 = a8 + a10;
  v17 = *(a1 + 5500);
  v18 = *(a1 + 5504);
  v19 = a5[1];
  v166 = a4 - a3;
  if (v19)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0.0;
    v23 = 1;
    do
    {
      v24 = *v11 + 24 * v20;
      if (*(v24 + 16) && *(*(v24 + 8) + 8))
      {
        ++v21;
        v25 = *v24;
        v26 = strlen(*v24);
        _HUDUIAllocString(v14, 0, v25, v26, &v181, 0.0, 0.0);
        v27 = &v185[3 * v20];
        *v27 = v181;
        v27[2] = v182;
        v28 = v27[1];
        if (v22 < *(v28 + 48))
        {
          v22 = *(v28 + 48);
        }

        v19 = v11[1];
      }

      v20 = v23;
    }

    while (v19 > v23++);
    v10 = v184 - v183;
    v30 = v22 + 1.0;
    v31 = v19 == 0;
    v13 = a2;
  }

  else
  {
    v21 = 0;
    v30 = 1.0;
    v31 = 1;
  }

  v169 = a8 + v15;
  v168 = v16 - v15;
  v167 = v180 - v176;
  if (v21 <= 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = v21;
  }

  if (!v31)
  {
    v40 = 0;
    v41 = 0;
    v42 = ((v16 - v15) - v169) / v32;
    v43 = (v167 - v30) / v10;
    v44 = (v176 + v30);
    v45 = a8 + v15;
    v170 = v14;
    v171 = v11;
    do
    {
      v46 = *v11 + 24 * v40;
      v47 = *(v46 + 16);
      if (!v47)
      {
        goto LABEL_31;
      }

      v48 = 0;
      v49 = (*(v46 + 8) + 8);
      do
      {
        v50 = *v49;
        v49 += 4;
        v48 += v50;
        --v47;
      }

      while (v47);
      if (!v48)
      {
LABEL_31:
        v56 = v45;
        goto LABEL_32;
      }

      if (!*(v13 + 8) || !*v13)
      {
        return 0;
      }

      v51 = 6 * v48;
      v52 = 4 * v48;
      v53 = *(v13 + 16) + v52;
      v54 = *(v13 + 24);
      if (v53 >= v54)
      {
        LODWORD(v55) = *(v13 + 28);
      }

      else
      {
        v55 = *(v13 + 28);
        if (*(v13 + 20) + v51 < v55)
        {
          goto LABEL_36;
        }
      }

      HUDSimpleVertexBufferChunkRelocate(v14, v13, 2 * v54, 2 * v55);
      v54 = *(v13 + 24);
      v53 = *(v13 + 16) + v52;
LABEL_36:
      if (v53 >= v54 || *(v13 + 20) + v51 >= *(v13 + 28))
      {
        return 0;
      }

      v173 = v40;
      v57 = ([*v13 contents] + 24 * *(v13 + 16));
      v58 = [*(v13 + 8) contents];
      v60 = *(v13 + 20);
      if (v52)
      {
        bzero(v57, 24 * v52);
      }

      v175 = v41;
      if (v51)
      {
        bzero(v57, 2 * v51);
      }

      v61 = *(v13 + 16);
      v62 = v61 + v52;
      v63 = *(v13 + 20) + v51;
      *(v13 + 16) = v61 + v52;
      *(v13 + 20) = v63;
      v64 = *(v46 + 16);
      v65 = 0;
      if (v64)
      {
        v66 = 0;
        v67 = &v58[2 * v60];
        do
        {
          v68 = (*(v46 + 8) + 16 * v66);
          if (v68[1])
          {
            v69 = 0;
            v70 = 0;
            do
            {
              v71 = HUDTimeRangeIntersect((*v68 + v69), &v183);
              if (v72)
              {
                v73 = v72 >= v184;
              }

              else
              {
                v73 = 1;
              }

              if (!v73)
              {
                v74 = v44 + (v71 - v183) * v43;
                if (v180 > v74)
                {
                  v75 = __PAIR64__(v45 + 1.0, LODWORD(v74));
                  v76.f32[0] = fmax((v43 * (v72 - v71)), 2.0) + v74;
                  v76.f32[1] = (v42 + v45) + -1.0;
                  v77 = *(a6 + 5844);
                  v78 = vmul_n_f32(v75, v77);
                  *v57 = v78;
                  v57[1].i32[0] = v17;
                  v57[1].i32[1] = v18;
                  v79 = vmul_n_f32(v76, v77);
                  v59.i32[1] = v78.i32[1];
                  v57[2] = 4282997502;
                  v57[3] = __PAIR64__(v78.u32[1], v79.u32[0]);
                  v57[4].i32[0] = v17;
                  v57[4].i32[1] = v18;
                  v57[5] = 4282997502;
                  v57[6] = v79;
                  v57[7].i32[0] = v17;
                  v57[7].i32[1] = v18;
                  v78.i32[1] = v79.i32[1];
                  v57[8] = 4282997502;
                  v57[9] = v78;
                  v57[10].i32[0] = v17;
                  v57[10].i32[1] = v18;
                  v57[11] = 4282997502;
                  *v67 = v61;
                  *(v67 + 1) = v61 + 1;
                  *(v67 + 2) = v61 + 2;
                  *(v67 + 3) = v61;
                  *(v67 + 4) = v61 + 2;
                  *(v67 + 5) = v61 + 3;
                  v61 += 4;
                  v57 += 12;
                  v67 += 12;
                  ++v65;
                }
              }

              ++v70;
              v69 += 16;
            }

            while (v70 < v68[1]);
            v64 = *(v46 + 16);
          }

          ++v66;
        }

        while (v66 < v64);
        v13 = a2;
        v62 = *(a2 + 16);
        v63 = *(a2 + 20);
      }

      v80 = v65 - v48;
      if (v65 < v48)
      {
        v80 = 0;
      }

      *(v13 + 16) = v62 - 4 * v80;
      *(v13 + 20) = v63 - 6 * v80;
      v81 = &v185[3 * v173];
      *v59.i32 = v81[4] / *(a6 + 5848);
      v14 = v170;
      v11 = v171;
      HUDUIVertexBufferAddString(v170, v13, *(v81 + 1), -1, v176, v45, *(a6 + 5844), v59);
      v41 = v175;
      if (*(v13 + 8))
      {
        v56 = v42 + v45;
        if (*v13)
        {
          v178 = *(a6 + 5844);
          v82 = *(v13 + 16) + 4;
          v83 = *(v13 + 24);
          if (v82 >= v83)
          {
            LODWORD(v84) = *(v13 + 28);
          }

          else
          {
            v84 = *(v13 + 28);
            if (*(v13 + 20) + 6 < v84)
            {
              goto LABEL_66;
            }
          }

          HUDSimpleVertexBufferChunkRelocate(v170, v13, 2 * v83, 2 * v84);
          v56 = v42 + v45;
          v83 = *(v13 + 24);
          v82 = *(v13 + 16) + 4;
LABEL_66:
          if (v82 < v83 && *(v13 + 20) + 6 < *(v13 + 28))
          {
            v177 = __PAIR64__(LODWORD(v56), LODWORD(v176));
            v174 = __PAIR64__(LODWORD(v56), LODWORD(v180));
            v85 = [*v13 contents] + 24 * *(v13 + 16);
            v86 = [*(v13 + 8) contents];
            v56 = v42 + v45;
            v87 = &v86[2 * *(v13 + 20)];
            *(v85 + 4) = 0u;
            *(v85 + 5) = 0u;
            *(v85 + 2) = 0u;
            *(v85 + 3) = 0u;
            *v85 = 0u;
            *(v85 + 1) = 0u;
            v88 = *(v13 + 16);
            *(v13 + 16) = vadd_s32(v88, 0x600000004);
            v89 = *(v170 + 5500);
            v90 = vmul_n_f32(0x3F0000003F000000, v178);
            v91 = vmla_n_f32(v90, v177, v178);
            v92 = vmla_n_f32(v90, v174, v178);
            v93 = vsub_f32(v92, v91);
            v94 = vmul_f32(v93, v93);
            v95 = *(v170 + 5504);
            v94.i32[0] = vadd_f32(v94, vdup_lane_s32(v94, 1)).u32[0];
            v96 = vrsqrte_f32(v94.u32[0]);
            v97 = vmul_f32(v96, vrsqrts_f32(v94.u32[0], vmul_f32(v96, v96)));
            v98 = vmul_n_f32(v93, vmul_f32(v97, vrsqrts_f32(v94.u32[0], vmul_f32(v97, v97))).f32[0]);
            *v85 = v91.f32[0] + v98.f32[1];
            *(v85 + 1) = v91.f32[1] - v98.f32[0];
            *(v85 + 2) = v89;
            *(v85 + 3) = v95;
            *(v85 + 4) = -4144960;
            *(v85 + 6) = v92.f32[0] + v98.f32[1];
            *(v85 + 7) = v92.f32[1] - v98.f32[0];
            *(v85 + 8) = v89;
            *(v85 + 9) = v95;
            *(v85 + 10) = -4144960;
            *(v85 + 12) = v92.f32[0] - v98.f32[1];
            *(v85 + 13) = v92.f32[1] + v98.f32[0];
            *(v85 + 14) = v89;
            *(v85 + 15) = v95;
            *(v85 + 16) = -4144960;
            *(v85 + 18) = v91.f32[0] - v98.f32[1];
            *(v85 + 19) = v91.f32[1] + v98.f32[0];
            *(v85 + 20) = v89;
            *(v85 + 21) = v95;
            *(v85 + 22) = -4144960;
            *v87 = v88.i16[0];
            *(v87 + 1) = v88.i16[0] + 1;
            *(v87 + 2) = v88.i16[0] + 2;
            *(v87 + 3) = v88.i16[0];
            *(v87 + 4) = v88.i16[0] + 2;
            *(v87 + 5) = v88.i16[0] + 3;
          }
        }
      }

      else
      {
        v56 = v42 + v45;
      }

LABEL_32:
      v45 = v56;
      v40 = ++v41;
    }

    while (v11[1] > v41);
  }

  if (!*(v13 + 8) || !*v13)
  {
    return 0;
  }

  v33 = v11[2] + 4;
  v34 = 4 * v33;
  v35 = 3 * v33;
  v36 = 6 * v33;
  v37 = 4 * v33 + *(v13 + 16);
  v38 = *(v13 + 24);
  if (v37 >= v38)
  {
    LODWORD(v39) = *(v13 + 28);
  }

  else
  {
    v39 = *(v13 + 28);
    if (v36 + *(v13 + 20) < v39)
    {
      goto LABEL_71;
    }
  }

  HUDSimpleVertexBufferChunkRelocate(v14, v13, 2 * v38, 2 * v39);
  v38 = *(v13 + 24);
  v37 = v34 + *(v13 + 16);
LABEL_71:
  if (v37 >= v38 || v36 + *(v13 + 20) >= *(v13 + 28))
  {
    return 0;
  }

  v99 = ([*v13 contents] + 24 * *(v13 + 16));
  v100 = [*(v13 + 8) contents];
  v102 = *(v13 + 20);
  if (v34)
  {
    bzero(v99, 32 * v35);
  }

  v103 = LODWORD(v168);
  v104 = LODWORD(v169);
  v105 = __PAIR64__(LODWORD(v169), LODWORD(v176));
  v106 = __PAIR64__(LODWORD(v168), LODWORD(v180));
  v107 = &v100[2 * v102];
  if (v36)
  {
    bzero(v99, 4 * v35);
    v105 = __PAIR64__(LODWORD(v169), LODWORD(v176));
    v106 = __PAIR64__(LODWORD(v168), LODWORD(v180));
    v103 = LODWORD(v168);
    v104 = LODWORD(v169);
  }

  v108 = *(a2 + 16);
  v109 = *(a2 + 20) + v36;
  *(a2 + 16) = v108 + v34;
  *(a2 + 20) = v109;
  v110 = v11[2];
  if (v110)
  {
    v111 = v11[3];
    v112 = v183;
    v101.i32[0] = *(a6 + 5844);
    v113 = vdup_lane_s32(v101, 0);
    v114 = vmul_n_f32(0x3F0000003F000000, *v101.i32);
    do
    {
      v115 = *v111++;
      v116 = v115 > v112;
      v117 = (v115 - v112);
      v118 = v115 < v184;
      if (!v116 || !v118)
      {
        v117 = 0.0;
      }

      v119.f32[0] = v176 + v117 / v166 * v167;
      v119.i32[1] = v103;
      v120 = vmla_f32(v114, v113, __PAIR64__(v104, v119.u32[0]));
      v121 = vmla_f32(v114, v113, v119);
      v122 = vsub_f32(v121, v120);
      v123 = vmul_f32(v122, v122);
      v124 = vadd_f32(v123, vdup_lane_s32(v123, 1)).u32[0];
      v125 = vrsqrte_f32(v124);
      v126 = vmul_f32(v125, v125);
      if (v116 && v118)
      {
        v127 = -354547;
      }

      else
      {
        v127 = 0;
      }

      v128 = vmul_f32(v125, vrsqrts_f32(v124, v126));
      *(v99 + 2) = v17;
      *(v99 + 3) = v18;
      *(v99 + 4) = v127;
      v99[5] = 0.0;
      *(v99 + 8) = v17;
      *(v99 + 9) = v18;
      *(v99 + 10) = v127;
      v99[11] = 0.0;
      *(v99 + 14) = v17;
      *(v99 + 15) = v18;
      v129 = vmul_n_f32(v122, vmul_f32(v128, vrsqrts_f32(v124, vmul_f32(v128, v128))).f32[0]);
      *(v99 + 16) = v127;
      v99[17] = 0.0;
      *v99 = v120.f32[0] + v129.f32[1];
      v99[1] = v120.f32[1] - v129.f32[0];
      *(v99 + 20) = v17;
      *(v99 + 21) = v18;
      *(v99 + 22) = v127;
      v99[23] = 0.0;
      v99[6] = v121.f32[0] + v129.f32[1];
      v99[7] = v121.f32[1] - v129.f32[0];
      *v107 = v108;
      *(v107 + 1) = v108 + 1;
      v99[12] = v121.f32[0] - v129.f32[1];
      v99[13] = v121.f32[1] + v129.f32[0];
      *(v107 + 2) = v108 + 2;
      *(v107 + 3) = v108;
      v99[18] = v120.f32[0] - v129.f32[1];
      v99[19] = v120.f32[1] + v129.f32[0];
      *(v107 + 4) = v108 + 2;
      *(v107 + 5) = v108 + 3;
      v108 += 4;
      v99 += 24;
      v107 += 12;
      --v110;
    }

    while (v110);
  }

  v130 = *(a6 + 5844);
  v131 = vmul_n_f32(0x3F0000003F000000, v130);
  v132 = vmla_n_f32(v131, v105, v130);
  v133 = vmla_n_f32(v131, __PAIR64__(v103, LODWORD(v176)), v130);
  v134 = vsub_f32(v133, v132);
  v135 = vmul_f32(v134, v134);
  v135.i32[0] = vadd_f32(v135, vdup_lane_s32(v135, 1)).u32[0];
  v136 = vrsqrte_f32(v135.u32[0]);
  v137 = vmul_f32(v136, vrsqrts_f32(v135.u32[0], vmul_f32(v136, v136)));
  v138 = vmul_n_f32(v134, vmul_f32(v137, vrsqrts_f32(v135.u32[0], vmul_f32(v137, v137))).f32[0]);
  v134.i32[0] = v132.i32[1];
  *v99 = v132.f32[0] + v138.f32[1];
  v99[1] = v132.f32[1] - v138.f32[0];
  *(v99 + 2) = v17;
  *(v99 + 3) = v18;
  *(v99 + 2) = 0xFFFFFFFFLL;
  v99[6] = v133.f32[0] + v138.f32[1];
  v99[7] = v133.f32[1] - v138.f32[0];
  *(v99 + 8) = v17;
  *(v99 + 9) = v18;
  *(v99 + 5) = 0xFFFFFFFFLL;
  v99[12] = v133.f32[0] - v138.f32[1];
  v99[13] = v133.f32[1] + v138.f32[0];
  *(v99 + 14) = v17;
  *(v99 + 15) = v18;
  *(v99 + 8) = 0xFFFFFFFFLL;
  v99[18] = v132.f32[0] - v138.f32[1];
  v99[19] = v132.f32[1] + v138.f32[0];
  *(v99 + 20) = v17;
  *(v99 + 21) = v18;
  *(v99 + 11) = 0xFFFFFFFFLL;
  *v107 = v108;
  v138.f32[0] = v180 + -1.0;
  v139.f32[0] = v180 + -1.0;
  v139.i32[1] = v104;
  v138.i32[1] = v103;
  *(v107 + 1) = v108 + 1;
  v140 = vmla_n_f32(v131, v139, v130);
  v141 = vmla_n_f32(v131, v138, v130);
  v142 = vsub_f32(v141, v140);
  v143 = vmul_f32(v142, v142);
  v143.i32[0] = vadd_f32(v143, vdup_lane_s32(v143, 1)).u32[0];
  *(v107 + 3) = v108;
  v144 = vrsqrte_f32(v143.u32[0]);
  v145 = vmul_f32(v144, vrsqrts_f32(v143.u32[0], vmul_f32(v144, v144)));
  v146 = vmul_n_f32(v142, vmul_f32(v145, vrsqrts_f32(v143.u32[0], vmul_f32(v145, v145))).f32[0]);
  v99[24] = v140.f32[0] + v146.f32[1];
  v99[25] = v140.f32[1] - v146.f32[0];
  *(v99 + 26) = v17;
  *(v99 + 27) = v18;
  *(v99 + 14) = 0xFFFFFFFFLL;
  v99[30] = v141.f32[0] + v146.f32[1];
  v99[31] = v141.f32[1] - v146.f32[0];
  *(v99 + 32) = v17;
  *(v99 + 33) = v18;
  *(v99 + 17) = 0xFFFFFFFFLL;
  v99[36] = v141.f32[0] - v146.f32[1];
  v99[37] = v141.f32[1] + v146.f32[0];
  *(v99 + 38) = v17;
  *(v99 + 39) = v18;
  *(v99 + 20) = 0xFFFFFFFFLL;
  v99[42] = v140.f32[0] - v146.f32[1];
  v99[43] = v140.f32[1] + v146.f32[0];
  *(v99 + 44) = v17;
  *(v99 + 45) = v18;
  *(v99 + 23) = 0xFFFFFFFFLL;
  v147 = vdup_n_s16(v108);
  v148 = vadd_s16(v147, 0x5000400030002);
  *(v107 + 2) = v148.i16[0];
  *(v107 + 1) = v148;
  *(v107 + 9) = v148.i16[2];
  v149 = vmla_n_f32(v131, v106, v130);
  v150 = vsub_f32(v149, v133);
  v151 = vmul_f32(v150, v150);
  v151.i32[0] = vadd_f32(v151, vdup_lane_s32(v151, 1)).u32[0];
  v152 = vrsqrte_f32(v151.u32[0]);
  v153 = vmul_f32(v152, vrsqrts_f32(v151.u32[0], vmul_f32(v152, v152)));
  v154 = vmul_n_f32(v150, vmul_f32(v153, vrsqrts_f32(v151.u32[0], vmul_f32(v153, v153))).f32[0]);
  v99[48] = v133.f32[0] + v154.f32[1];
  v99[49] = v133.f32[1] - v154.f32[0];
  *(v99 + 50) = v17;
  *(v99 + 51) = v18;
  *(v99 + 26) = 0xFFFFFFFFLL;
  v99[54] = v149.f32[0] + v154.f32[1];
  v99[55] = v149.f32[1] - v154.f32[0];
  *(v99 + 56) = v17;
  *(v99 + 57) = v18;
  *(v99 + 29) = 0xFFFFFFFFLL;
  v99[60] = v149.f32[0] - v154.f32[1];
  v99[61] = v149.f32[1] + v154.f32[0];
  *(v99 + 62) = v17;
  *(v99 + 63) = v18;
  *(v99 + 32) = 0xFFFFFFFFLL;
  v99[66] = v133.f32[0] - v154.f32[1];
  v99[67] = v133.f32[1] + v154.f32[0];
  *(v99 + 68) = v17;
  *(v99 + 69) = v18;
  v155 = vadd_s16(v147, 0x9000800070006);
  *(v107 + 8) = v155.i16[0];
  *(v107 + 20) = v155;
  *(v107 + 15) = v155.i16[2];
  v156 = vmla_n_f32(v131, __PAIR64__(v104, LODWORD(v180)), v130);
  v157 = vsub_f32(v156, v132);
  v158 = vmul_f32(v157, v157);
  v158.i32[0] = vadd_f32(v158, vdup_lane_s32(v158, 1)).u32[0];
  v159 = vrsqrte_f32(v158.u32[0]);
  v160 = vmul_f32(v159, vrsqrts_f32(v158.u32[0], vmul_f32(v159, v159)));
  v161 = vmul_f32(vmul_n_f32(v157, vmul_f32(v160, vrsqrts_f32(v158.u32[0], vmul_f32(v160, v160))).f32[0]), 0x3F0000003F000000);
  v162 = vrev64_s32(v161);
  v158.i32[0] = vadd_f32(v132, v162).u32[0];
  v163 = vsub_f32(v132, v162);
  v158.i32[1] = v163.i32[1];
  *(v99 + 35) = 0xFFFFFFFFLL;
  *(v99 + 36) = v158;
  *(v99 + 74) = v17;
  *(v99 + 75) = v18;
  *(v99 + 38) = 0xFFFFFFFFLL;
  *(v99 + 78) = vadd_f32(v156, v162).u32[0];
  v99[79] = v156.f32[1] - *v161.i32;
  *(v99 + 80) = v17;
  *(v99 + 81) = v18;
  *(v99 + 41) = 0xFFFFFFFFLL;
  *(v99 + 84) = vsub_f32(v156, v162).u32[0];
  v99[85] = v156.f32[1] + *v161.i32;
  *(v99 + 86) = v17;
  *(v99 + 87) = v18;
  *(v99 + 44) = 0xFFFFFFFFLL;
  v99[90] = v163.f32[0];
  v99[91] = v134.f32[0] + *v161.i32;
  *(v99 + 92) = v17;
  *(v99 + 93) = v18;
  *(v99 + 47) = 0xFFFFFFFFLL;
  v164 = vadd_s16(v147, 0xD000C000B000ALL);
  *(v107 + 14) = v164.i16[0];
  *(v107 + 4) = v164;
  *(v107 + 20) = v108 + 14;
  *(v107 + 21) = v164.i16[2];
  *(v107 + 22) = v108 + 14;
  *(v107 + 23) = v108 + 15;
  return 1;
}

uint64_t HUDUIWindowAddHistogram(uint64_t result, float *a2, float a3, float32_t a4, __n128 a5, float a6, double a7, __n128 a8)
{
  if (!result)
  {
    return result;
  }

  v9 = *(result + 5852);
  v10 = *(result + 40);
  if (v9 != -1)
  {
    v11 = *(result + 32);
    if (0xF0F0F0F0F0F0F0F1 * ((v10 - v11) >> 3) > v9)
    {
      v12 = v11 + 136 * v9;
      goto LABEL_6;
    }

    return 0;
  }

  v12 = *(result + 32);
  if (v12 == v10)
  {
    return 0;
  }

LABEL_6:
  if (!v12)
  {
    return 0;
  }

  v13 = *(v12 + 40);
  LODWORD(a7) = *(v13 + 5844);
  result = HUDUIVertexBufferAddHistogram(result, *v13, *(v12 + 96), a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v14 = *(v12 + 56);
    if (v14 < a6)
    {
      v14 = a6;
    }

    *(v12 + 56) = v14;
    return 1;
  }

  return result;
}

uint64_t HUDUIVertexBufferAddHistogram(uint64_t *a1, uint64_t a2, uint64_t a3, float *a4, float a5, float32_t a6, __n128 a7, float a8, double a9, __n128 a10)
{
  if (!a4)
  {
    return 0;
  }

  v11 = *(a4 + 3);
  if (!v11)
  {
    return 0;
  }

  v13 = a7.n128_f32[0];
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *(a2 + 5496);
  v22 = *(a2 + 5520);
  v23 = v21 / v22;
  v24 = (v21 * 4.0) / v22;
  v25 = a7.n128_f32[0] - v24;
  a7.n128_f64[0] = a8 + v23 * -2.5 + -4.0;
  v26 = a7.n128_f64[0];
  v27 = *a4;
  do
  {
    v28 = *(v27 + 4 * v20);
    if (v18 <= v28)
    {
      v18 = *(v27 + 4 * v20);
    }

    v19 += v28;
    ++v20;
  }

  while (v11 != v20);
  v29 = 0;
  LODWORD(v30) = 0;
  v31 = v25 + -4.0;
  v32 = ((v25 + -4.0) + ((v11 - 1) * -2.0)) / v11;
  while (!*(v27 + 4 * v29))
  {
    LODWORD(v30) = v30 + 1;
    v29 = v30;
    if (v11 <= v30)
    {
      return 0;
    }
  }

  if (!*(a3 + 8) || !*a3)
  {
    return 0;
  }

  v34 = *(a2 + 5500);
  v35 = *(a2 + 5504);
  v36 = 4 * v11;
  v37 = 3 * v11;
  v38 = 6 * v11;
  v39 = 4 * v11 + *(a3 + 16);
  v40 = *(a3 + 24);
  a7.n128_f32[0] = (a6 + (v23 * 2.0)) + v26;
  v131 = a7;
  a10.n128_f32[0] = a5 + 2.0;
  v132 = a10;
  v129 = v26;
  v130 = v32;
  v125 = v37;
  if (v39 >= v40)
  {
    LODWORD(v41) = *(a3 + 28);
    goto LABEL_18;
  }

  v41 = *(a3 + 28);
  if (v38 + *(a3 + 20) >= v41)
  {
LABEL_18:
    HUDSimpleVertexBufferChunkRelocate(a2, a3, 2 * v40, 2 * v41);
    v40 = *(a3 + 24);
    v39 = v36 + *(a3 + 16);
  }

  if (v39 >= v40 || v38 + *(a3 + 20) >= *(a3 + 28))
  {
    return 0;
  }

  v121 = a1;
  v42 = ([*a3 contents] + 24 * *(a3 + 16));
  v43 = [*(a3 + 8) contents];
  v119 = *(a3 + 20);
  v120 = v43;
  if (v36)
  {
    bzero(v42, 32 * v125);
  }

  v44 = v38;
  if (v38)
  {
    bzero(v42, 4 * v125);
    v44 = v38;
  }

  v45 = *(a3 + 16);
  v46 = (v45 + v36);
  v47 = (*(a3 + 20) + v44);
  *(a3 + 16) = v46;
  *(a3 + 20) = v47;
  v48 = *(a4 + 3);
  if (v29 < v48)
  {
    v49 = &v120[2 * v119];
    v50 = v48 - v30;
    v51 = (*a4 + 4 * v30);
    v52 = v132.n128_f32[0];
    do
    {
      v53 = *v51++;
      v54.f32[0] = v52;
      v54.f32[1] = v131.n128_f32[0] + ((-v53 / v18) * v129);
      v55.f32[0] = v130 + v52;
      v55.i32[1] = v131.n128_u32[0];
      v42[1].i32[0] = v34;
      v42[1].i32[1] = v35;
      v56 = vmul_n_f32(v54, *&a9);
      v42[4].i32[0] = v34;
      v42[4].i32[1] = v35;
      v57 = vmul_n_f32(v55, *&a9);
      *v42 = v56;
      v42[5] = 4282997502;
      v42[6] = v57;
      v58 = __PAIR64__(v56.u32[1], v57.u32[0]);
      v42[7].i32[0] = v34;
      v42[7].i32[1] = v35;
      v56.i32[1] = v57.i32[1];
      v42[8] = 4282997502;
      v42[9] = v56;
      v42[2] = 4282997502;
      v42[3] = v58;
      v42[10].i32[0] = v34;
      v42[10].i32[1] = v35;
      v42[11] = 4282997502;
      *v49 = v45;
      *(v49 + 1) = v45 + 1;
      *(v49 + 2) = v45 + 2;
      *(v49 + 4) = v45 + 2;
      *(v49 + 3) = v45;
      *(v49 + 5) = v45 + 3;
      v45 += 4;
      v52 = (v130 + 2.0) + v52;
      v42 += 12;
      v49 += 12;
      --v50;
    }

    while (v50);
  }

  if (!*(a3 + 8) || !*a3)
  {
    return 0;
  }

  v59 = v46 + 8;
  v60 = *(a3 + 24);
  if (v59 >= v60)
  {
    LODWORD(v62) = *(a3 + 28);
  }

  else
  {
    v61 = v47 + 12;
    v62 = *(a3 + 28);
    if (v61 < v62)
    {
      goto LABEL_35;
    }
  }

  HUDSimpleVertexBufferChunkRelocate(a2, a3, 2 * v60, 2 * v62);
  v60 = *(a3 + 24);
  v59 = *(a3 + 16) + 8;
LABEL_35:
  if (v59 >= v60 || *(a3 + 20) + 12 >= *(a3 + 28))
  {
    return 0;
  }

  v63 = [*a3 contents] + 24 * *(a3 + 16);
  v64 = ([*(a3 + 8) contents] + 2 * *(a3 + 20));
  *(v63 + 10) = 0u;
  *(v63 + 11) = 0u;
  *(v63 + 8) = 0u;
  *(v63 + 9) = 0u;
  *(v63 + 6) = 0u;
  *(v63 + 7) = 0u;
  *(v63 + 4) = 0u;
  *(v63 + 5) = 0u;
  *(v63 + 2) = 0u;
  *(v63 + 3) = 0u;
  *v63 = 0u;
  *(v63 + 1) = 0u;
  v65 = *(a3 + 16);
  v66.i32[0] = v132.n128_u32[0];
  v126 = a6 + a8;
  v66.f32[1] = a6 + a8;
  v67 = vmul_n_f32(0x3F0000003F000000, *&a9);
  v68 = vmla_n_f32(v67, __PAIR64__(LODWORD(a6), v132.n128_u32[0]), *&a9);
  v69 = vmla_n_f32(v67, v66, *&a9);
  v70 = vsub_f32(v69, v68);
  v71 = vmul_f32(v70, v70);
  v71.i32[0] = vadd_f32(v71, vdup_lane_s32(v71, 1)).u32[0];
  *(a3 + 16) = vadd_s32(v65, 0xC00000008);
  v72 = vrsqrte_f32(v71.u32[0]);
  v73 = vmul_f32(v72, vrsqrts_f32(v71.u32[0], vmul_f32(v72, v72)));
  v74 = vmul_n_f32(v70, vmul_f32(v73, vrsqrts_f32(v71.u32[0], vmul_f32(v73, v73))).f32[0]);
  *v63 = v68.f32[0] + v74.f32[1];
  *(v63 + 1) = v68.f32[1] - v74.f32[0];
  *(v63 + 2) = v34;
  *(v63 + 3) = v35;
  *(v63 + 4) = -1;
  *(v63 + 6) = v69.f32[0] + v74.f32[1];
  *(v63 + 7) = v69.f32[1] - v74.f32[0];
  *(v63 + 8) = v34;
  *(v63 + 9) = v35;
  *(v63 + 10) = -1;
  *(v63 + 12) = v69.f32[0] - v74.f32[1];
  *(v63 + 13) = v69.f32[1] + v74.f32[0];
  *(v63 + 14) = v34;
  *(v63 + 15) = v35;
  *(v63 + 16) = -1;
  *(v63 + 18) = v68.f32[0] - v74.f32[1];
  *(v63 + 19) = v68.f32[1] + v74.f32[0];
  *(v63 + 20) = v34;
  *(v63 + 21) = v35;
  v75 = v65.i16[0];
  *(v63 + 22) = -1;
  v64->i16[0] = v65.i16[0];
  v64->i16[1] = v65.i16[0] + 1;
  v69.f32[0] = a5 + v13;
  v69.i32[1] = v131.n128_u32[0];
  v76 = vmla_n_f32(v67, __PAIR64__(v131.n128_u32[0], v132.n128_u32[0]), *&a9);
  v122 = v67;
  v77 = vmla_n_f32(v67, v69, *&a9);
  v78 = vsub_f32(v77, v76);
  v79 = vmul_f32(v78, v78);
  v64->i16[3] = v65.i16[0];
  v79.i32[0] = vadd_f32(v79, vdup_lane_s32(v79, 1)).u32[0];
  v80 = vrsqrte_f32(v79.u32[0]);
  v81 = vmul_f32(v80, vrsqrts_f32(v79.u32[0], vmul_f32(v80, v80)));
  v82 = vmul_n_f32(v78, vmul_f32(v81, vrsqrts_f32(v79.u32[0], vmul_f32(v81, v81))).f32[0]);
  *(v63 + 24) = v76.f32[0] + v82.f32[1];
  *(v63 + 25) = v76.f32[1] - v82.f32[0];
  *(v63 + 26) = v34;
  *(v63 + 27) = v35;
  *(v63 + 28) = -1;
  *(v63 + 30) = v77.f32[0] + v82.f32[1];
  *(v63 + 31) = v77.f32[1] - v82.f32[0];
  *(v63 + 32) = v34;
  *(v63 + 33) = v35;
  *(v63 + 34) = -1;
  *(v63 + 36) = v77.f32[0] - v82.f32[1];
  *(v63 + 37) = v77.f32[1] + v82.f32[0];
  *(v63 + 38) = v34;
  *(v63 + 39) = v35;
  *(v63 + 40) = -1;
  *(v63 + 42) = v76.f32[0] - v82.f32[1];
  *(v63 + 43) = v76.f32[1] + v82.f32[0];
  *(v63 + 44) = v34;
  *(v63 + 45) = v35;
  *(v63 + 46) = -1;
  v83 = vadd_s16(vdup_lane_s16(v65, 0), 0x5000400030002);
  v64->i16[2] = v83.i16[0];
  v64[1] = v83;
  v64[2].i16[1] = v83.i16[2];
  v64[2].i16[0] = v75 + 6;
  v64[2].i16[2] = v75 + 6;
  v64[2].i16[3] = v75 + 7;
  HUDUITemporaryStringWithFormat(v121, 0, "Total = %d", &v137, v19);
  *&v84 = a8;
  HUDUIWindowAddLabelInRect(v121, &v137, -1, 0, 0, v132.n128_f32[0], a6, v24 + -2.0, v84);
  v85 = v132;
  if (v132.n128_f32[0] < (v132.n128_f32[0] + v31))
  {
    v86 = vdup_lane_s32(*&a9, 0);
    v87 = v130;
    v88 = v130 + 2.0;
    v89 = v131;
    v89.n128_u32[0] = v132.n128_u32[0];
    while (!*(*a4 + 4 * v30))
    {
      v30 = (v30 + 1);
      v96 = *(a4 + 3);
      if (v96 <= v30)
      {
        goto LABEL_60;
      }

      v89.n128_f32[0] = v88 + v89.n128_f32[0];
LABEL_56:
      if (v89.n128_f32[0] >= (v132.n128_f32[0] + v31))
      {
        goto LABEL_60;
      }
    }

    v128 = v89;
    v137 = 0uLL;
    v138 = 0;
    LODWORD(v30) = v30 + 1;
    *(a4 + 1);
    v118 = (a4[8] + (a4[9] * v30));
    HUDUITemporaryStringWithFormat(v121, 0, "%.1f%s", &v137, SLOBYTE(v118));
    v136 = 0.0;
    v134 = v137;
    v135 = v138;
    HUDUIWindowGetLabelSize(v121, &v134, &v136, 0);
    v91 = v130 + 2.0;
    if (v88 < v136)
    {
      do
      {
        v91 = v88 + v91;
        LODWORD(v30) = v30 + 1;
      }

      while (v91 < v136);
    }

    v134 = v137;
    v135 = v138;
    *&v90 = v23;
    HUDUIWindowAddLabelInRect(v121, &v134, -1, 0, 1, v128.n128_f32[0], v131.n128_f32[0] + -2.0, v91, v90);
    v92 = v131.n128_u32[0];
    v85 = v132;
    v87 = v130;
    if (!*(a3 + 8) || !*a3)
    {
LABEL_54:
      v96 = *(a4 + 3);
      if (v96 <= v30)
      {
        goto LABEL_60;
      }

      v89 = v128;
      v89.n128_f32[0] = v128.n128_f32[0] + v91;
      goto LABEL_56;
    }

    v93 = *(a3 + 16) + 4;
    v94 = *(a3 + 24);
    if (v93 >= v94)
    {
      LODWORD(v95) = *(a3 + 28);
    }

    else
    {
      v95 = *(a3 + 28);
      if (*(a3 + 20) + 6 < v95)
      {
        goto LABEL_51;
      }
    }

    HUDSimpleVertexBufferChunkRelocate(a2, a3, 2 * v94, 2 * v95);
    v87 = v130;
    v92 = v131.n128_u32[0];
    v85 = v132;
    v94 = *(a3 + 24);
    v93 = *(a3 + 16) + 4;
LABEL_51:
    if (v93 < v94 && *(a3 + 20) + 6 < *(a3 + 28))
    {
      v124 = __PAIR64__(v92, v128.n128_u32[0]);
      v97 = [*a3 contents] + 24 * *(a3 + 16);
      v98 = [*(a3 + 8) contents] + 2 * *(a3 + 20);
      *(v97 + 2) = 0u;
      *(v97 + 3) = 0u;
      *v97 = 0u;
      *(v97 + 1) = 0u;
      *(v97 + 4) = 0u;
      *(v97 + 5) = 0u;
      v99 = *(a3 + 16);
      *(a3 + 16) = vadd_s32(v99, 0x600000004);
      v100 = *(a2 + 5500);
      v101 = *(a2 + 5504);
      v102 = vmla_f32(v122, v86, v124);
      v103 = vmla_f32(v122, v86, __PAIR64__(LODWORD(v126), v128.n128_u32[0]));
      v104 = vsub_f32(v103, v102);
      v105 = vmul_f32(v104, v104);
      v105.i32[0] = vadd_f32(v105, vdup_lane_s32(v105, 1)).u32[0];
      v106 = vrsqrte_f32(v105.u32[0]);
      v107 = vmul_f32(v106, vrsqrts_f32(v105.u32[0], vmul_f32(v106, v106)));
      v108 = vmul_f32(vmul_n_f32(v104, vmul_f32(v107, vrsqrts_f32(v105.u32[0], vmul_f32(v107, v107))).f32[0]), 0x3F0000003F000000);
      v109 = vrev64_s32(v108);
      v110 = vadd_f32(v102, v109);
      v111 = vsub_f32(v102, v109);
      *v97 = __PAIR64__(v111.u32[1], v110.u32[0]);
      *(v97 + 2) = v100;
      *(v97 + 3) = v101;
      *(v97 + 4) = -1;
      *(v97 + 6) = vadd_f32(v103, v109).u32[0];
      *(v97 + 7) = v103.f32[1] - *v108.i32;
      *(v97 + 8) = v100;
      *(v97 + 9) = v101;
      *(v97 + 10) = -1;
      v103.i32[0] = vsub_f32(v103, v109).u32[0];
      v87 = v130;
      *(v97 + 12) = v103.i32[0];
      *(v97 + 13) = v103.f32[1] + *v108.i32;
      v85 = v132;
      *(v97 + 14) = v100;
      *(v97 + 15) = v101;
      *(v97 + 16) = -1;
      v111.i32[1] = v110.i32[1];
      *(v97 + 9) = v111;
      *(v97 + 20) = v100;
      *(v97 + 21) = v101;
      *(v97 + 22) = -1;
      *v98 = v99.i16[0];
      v98[1] = v99.i16[0] + 1;
      v98[2] = v99.i16[0] + 2;
      v98[3] = v99.i16[0];
      v98[4] = v99.i16[0] + 2;
      v98[5] = v99.i16[0] + 3;
    }

    goto LABEL_54;
  }

  v96 = *(a4 + 3);
  v87 = v130;
LABEL_60:
  if (v29 >= v96)
  {
    return 1;
  }

  v112 = v87 + 2.0;
  do
  {
    v113 = *(*a4 + 4 * v29);
    if (v113)
    {
      v114 = v113;
      v115 = (v113 / v19) * 100.0;
      if (roundf(v115) > 0.0)
      {
        v116 = v115;
        v133 = v85;
        HUDUITemporaryStringWithFormat(v121, 0, "%.0f%%", &v137, SLOBYTE(v116));
        *&v117 = v23;
        HUDUIWindowAddLabelInRect(v121, &v137, -1, 1, 1, v133.n128_f32[0], ((v131.n128_f32[0] + ((-v114 / v18) * v129)) - v23) + -2.0, v130, v117);
        v85 = v133;
        v96 = *(a4 + 3);
      }
    }

    v85.n128_f32[0] = v112 + v85.n128_f32[0];
    ++v29;
    result = 1;
  }

  while (v29 < v96);
  return result;
}

uint64_t HUDUIWindowAddStackedBarGraph(uint64_t result, void *a2, uint64_t a3, _DWORD *a4, float32_t a5, float32_t a6, double a7, float a8, double a9)
{
  if (!result)
  {
    return result;
  }

  v9 = a8;
  v10 = LODWORD(a7);
  v16 = result;
  v17 = *(result + 5852);
  v18 = *(result + 40);
  if (v17 == -1)
  {
    v20 = *(result + 32);
    if (v20 == v18)
    {
      return 0;
    }
  }

  else
  {
    v19 = *(result + 32);
    if (0xF0F0F0F0F0F0F0F1 * ((v18 - v19) >> 3) <= v17)
    {
      return 0;
    }

    v20 = v19 + 136 * v17;
  }

  if (!v20)
  {
    return 0;
  }

  v21 = *(v20 + 56);
  if (v21 < a8)
  {
    v21 = a8;
  }

  *(v20 + 56) = v21;
  if (!*a2)
  {
    goto LABEL_12;
  }

  v26 = *a2;
  v27 = a2[2];
  v28 = 0;
  HUDUIWindowGetLabelSize(result, &v26, &v28 + 1, &v28);
  if (*&v28 > v9)
  {
    return 0;
  }

  v26 = *a2;
  v27 = a2[2];
  HUDUIWindowAddLabelAtPoint(v16, &v26, -1, a5, a6, v22, v23);
  a6 = a6 + *&v28;
  v9 = v9 - *&v28;
LABEL_12:
  v24 = *(v20 + 40);
  LODWORD(a9) = *(v24 + 5844);
  LODWORD(a7) = v10;
  result = HUDUIWindowAddStackedBarGraph(v16, *v24, *(v20 + 96), a5, a6, a7, v9, a9, a3, a4);
  if (result)
  {
    v25 = *(v20 + 56);
    if (v25 < v9)
    {
      v25 = v9;
    }

    *(v20 + 56) = v25;
    return 1;
  }

  return result;
}

uint64_t HUDUIWindowAddStackedBarGraph(uint64_t *a1, uint64_t a2, uint64_t a3, float a4, float a5, double a6, float a7, double a8, uint64_t a9, _DWORD *a10)
{
  if (!*a10)
  {
    return 0;
  }

  v11 = a5;
  v17 = 0;
  v18 = 0;
  v113 = *&a6;
  v19 = *&a6 + a4;
  v20 = 1;
  v21 = 0.0;
  v22 = a4;
  v23 = a5;
  do
  {
    v24 = *&a10[v17];
    if (v24)
    {
      v25 = v24 + 980;
      v26 = *v25 + v21;
      if (v26 > v21)
      {
        v21 = v26;
      }

      ++v18;
      v27 = *&a10[v17 + 8];
      if (v27)
      {
        v118 = 0uLL;
        v119 = 0;
        v107 = *(v25 + 8);
        HUDUITemporaryStringWithFormat(a1, 0, "%s %.1f%s", &v118, v27);
        v115 = v118;
        v116 = v119;
        v117 = 0;
        HUDUIWindowGetLabelSize(a1, &v115, &v117 + 1, &v117);
        LODWORD(v28) = v117;
        v29 = (v22 + *(&v117 + 1)) < v19;
        if ((v22 + *(&v117 + 1)) < v19)
        {
          v30 = v11;
        }

        else
        {
          v23 = v23 + *&v117;
          v22 = a4;
          v30 = v11 + *&v117;
        }

        if (v29)
        {
          v31 = a7;
        }

        else
        {
          v31 = a7 - *&v117;
        }

        if (v20)
        {
          v11 = v30 + *&v117;
        }

        else
        {
          v11 = v30;
        }

        if (v20)
        {
          a7 = v31 - *&v117;
        }

        else
        {
          a7 = v31;
        }

        v115 = v118;
        v116 = v119;
        HUDUIWindowAddLabelInRect(a1, &v115, a10[v17 + 2], 0, 0, v22, v23, *(&v117 + 1), v28);
        v20 = 0;
        v22 = v22 + (*(&v117 + 1) + 10.0);
      }
    }

    v17 += 10;
  }

  while (v17 != 80);
  if (!*(a3 + 8) || !*a3)
  {
    return 0;
  }

  v32 = *&HUDUIWindowAddStackedBarGraph(HUDUIFrame_t,HUDUIOverlay *,HUDSimpleVertexBufferChunk *,char const*,HUDUILineChart *,HUDUIRect,float)::graphPadding;
  v33 = *(*a10 + 960);
  v34 = (720 * v18);
  v35 = 480 * v18;
  v36 = *(a3 + 16) + v35;
  v37 = *(a3 + 24);
  if (v36 >= v37)
  {
    LODWORD(v38) = *(a3 + 28);
    goto LABEL_28;
  }

  v38 = *(a3 + 28);
  if (*(a3 + 20) + v34 >= v38)
  {
LABEL_28:
    HUDSimpleVertexBufferChunkRelocate(a2, a3, 2 * v37, 2 * v38);
    v37 = *(a3 + 24);
    v36 = *(a3 + 16) + v35;
  }

  if (v36 >= v37 || *(a3 + 20) + v34 >= *(a3 + 28))
  {
    return 0;
  }

  v108 = a2;
  *&a6 = a4 + v32;
  v40 = v19 + (v32 * -2.0);
  v109 = v11 + v32;
  v110 = (v11 + a7) - v32;
  v112 = a6;
  v41 = ([*a3 contents] + 24 * *(a3 + 16));
  v42 = [*(a3 + 8) contents];
  v43 = *(a3 + 20);
  if (v35)
  {
    bzero(v41, 24 * v35);
  }

  v44 = (v11 + a7) - v32;
  v111 = __PAIR64__(LODWORD(v109), a4 + v32);
  v45 = &v42[2 * v43];
  HIDWORD(v46) = HIDWORD(v112);
  if (v34)
  {
    bzero(v41, 2 * v34);
    v44 = (v11 + a7) - v32;
  }

  v47 = 0;
  v48 = *(a3 + 16);
  v49 = (v48 + v35);
  v50 = (*(a3 + 20) + v34);
  *(a3 + 16) = v49;
  *(a3 + 20) = v50;
  *&v46 = ((v40 - *&v112) + -2.0) / 120.0;
  v51 = *(v108 + 5500);
  v52 = *(v108 + 5504);
  v53 = (*&v112 + 1.0);
  v54 = v53 + *&v46 * 0.5;
  v55 = v53 + *&v46 * 1.5;
  v56 = ((v110 - v109) / v21);
  v57 = vdup_lane_s32(*&a8, 0);
  do
  {
    v58 = (v47 + v33 + 1) % 0x78;
    if (v58 == 119)
    {
      v59 = 0;
    }

    else
    {
      v59 = v58 + 1;
    }

    v60 = (*&v46 * v47);
    *&v61 = v54 + v60;
    *(&v61 + 1) = v44;
    *&v62 = v55 + v60;
    *(&v62 + 1) = v44;
    v63 = 8;
    v64 = a10 + 2;
    do
    {
      v65 = *(v64 - 1);
      if (v65)
      {
        v66 = *(v65 + 8 * v58);
        v67 = *(v65 + 8 * v59);
        v68 = v66 * v56;
        v69 = v67 * v56;
        v70 = *v64;
        v71 = vmul_n_f32(*&v61, *&a8);
        v72 = vmul_n_f32(*&v62, *&a8);
        v41->i32[0] = v71.i32[0];
        v41->f32[1] = v71.f32[1] - (v68 * *&a8);
        v41[1].i32[0] = v51;
        v41[1].i32[1] = v52;
        v41[2].i32[0] = v70;
        v41[2].i32[1] = 0;
        v41[3].i32[0] = v72.i32[0];
        v41[3].f32[1] = v72.f32[1] - (v69 * *&a8);
        v41[4].i32[0] = v51;
        v41[4].i32[1] = v52;
        v41[5].i32[0] = v70;
        v41[5].i32[1] = 0;
        v41[6] = v72;
        v41[7].i32[0] = v51;
        v41[7].i32[1] = v52;
        v41[8].i32[0] = v70;
        v41[8].i32[1] = 0;
        v41[9] = v71;
        v41[10].i32[0] = v51;
        v41[10].i32[1] = v52;
        v41[11].i32[0] = v70;
        v41[11].i32[1] = 0;
        *v45 = v48;
        *(v45 + 1) = v48 + 1;
        *(v45 + 2) = v48 + 2;
        *(v45 + 3) = v48;
        *(v45 + 4) = v48 + 2;
        *(v45 + 5) = v48 + 3;
        v48 += 4;
        v41 += 12;
        v45 += 12;
        *&v66 = *(&v61 + 1) - v66 * v56;
        HIDWORD(v61) = LODWORD(v66);
        *&v67 = *(&v62 + 1) - v67 * v56;
        HIDWORD(v62) = LODWORD(v67);
      }

      v64 += 10;
      --v63;
    }

    while (v63);
    ++v47;
  }

  while (v47 != 120);
  if (!*(a3 + 8) || !*a3)
  {
    return 0;
  }

  v73 = v49 + 12;
  v74 = *(a3 + 24);
  if (v73 >= v74)
  {
    LODWORD(v76) = *(a3 + 28);
  }

  else
  {
    v75 = v50 + 18;
    v76 = *(a3 + 28);
    if (v75 < v76)
    {
      goto LABEL_51;
    }
  }

  HUDSimpleVertexBufferChunkRelocate(v108, a3, 2 * v74, 2 * v76);
  v74 = *(a3 + 24);
  v73 = *(a3 + 16) + 12;
LABEL_51:
  if (v73 < v74 && *(a3 + 20) + 18 < *(a3 + 28))
  {
    v77 = [*a3 contents] + 24 * *(a3 + 16);
    v78 = [*(a3 + 8) contents] + 2 * *(a3 + 20);
    *(v77 + 16) = 0u;
    *(v77 + 17) = 0u;
    *(v77 + 14) = 0u;
    *(v77 + 15) = 0u;
    *(v77 + 12) = 0u;
    *(v77 + 13) = 0u;
    *(v77 + 10) = 0u;
    *(v77 + 11) = 0u;
    *(v77 + 8) = 0u;
    *(v77 + 9) = 0u;
    *(v77 + 6) = 0u;
    *(v77 + 7) = 0u;
    *(v77 + 4) = 0u;
    *(v77 + 5) = 0u;
    *(v77 + 2) = 0u;
    *(v77 + 3) = 0u;
    *v77 = 0u;
    *(v77 + 1) = 0u;
    v79 = *(a3 + 16);
    *(a3 + 16) = vadd_s32(v79, 0x120000000CLL);
    v80 = vmul_n_f32(0x3F0000003F000000, *&a8);
    v81 = vmla_f32(v80, v57, v111);
    v82 = vmla_f32(v80, v57, __PAIR64__(LODWORD(v110), LODWORD(v112)));
    v83 = vsub_f32(v82, v81);
    v84 = vmul_f32(v83, v83);
    v84.i32[0] = vadd_f32(v84, vdup_lane_s32(v84, 1)).u32[0];
    v85 = vrsqrte_f32(v84.u32[0]);
    v86 = vmul_f32(v85, vrsqrts_f32(v84.u32[0], vmul_f32(v85, v85)));
    v87 = vmul_n_f32(v83, vmul_f32(v86, vrsqrts_f32(v84.u32[0], vmul_f32(v86, v86))).f32[0]);
    *v77 = v81.f32[0] + v87.f32[1];
    *(v77 + 1) = v81.f32[1] - v87.f32[0];
    *(v77 + 2) = v51;
    *(v77 + 3) = v52;
    *(v77 + 4) = -1;
    *(v77 + 6) = v82.f32[0] + v87.f32[1];
    *(v77 + 7) = v82.f32[1] - v87.f32[0];
    *(v77 + 8) = v51;
    *(v77 + 9) = v52;
    *(v77 + 10) = -1;
    *(v77 + 12) = v82.f32[0] - v87.f32[1];
    *(v77 + 13) = v82.f32[1] + v87.f32[0];
    *(v77 + 14) = v51;
    *(v77 + 15) = v52;
    *(v77 + 16) = -1;
    *(v77 + 18) = v81.f32[0] - v87.f32[1];
    *(v77 + 19) = v81.f32[1] + v87.f32[0];
    *(v77 + 20) = v51;
    *(v77 + 21) = v52;
    *(v77 + 22) = -1;
    v88 = v79.i16[0];
    *v78 = v79.i16[0];
    *(v78 + 1) = v79.i16[0] + 1;
    *(v78 + 3) = v79.i16[0];
    v81.f32[0] = v40 + -1.0;
    v87.f32[0] = v40 + -1.0;
    v87.f32[1] = v109;
    v81.f32[1] = v110;
    v89 = vmla_f32(v80, v57, v87);
    v90 = vmla_f32(v80, v57, v81);
    v91 = vsub_f32(v90, v89);
    v92 = vmul_f32(v91, v91);
    v92.i32[0] = vadd_f32(v92, vdup_lane_s32(v92, 1)).u32[0];
    v93 = vrsqrte_f32(v92.u32[0]);
    v94 = vmul_f32(v93, vrsqrts_f32(v92.u32[0], vmul_f32(v93, v93)));
    v95 = vmul_n_f32(v91, vmul_f32(v94, vrsqrts_f32(v92.u32[0], vmul_f32(v94, v94))).f32[0]);
    *(v77 + 24) = v89.f32[0] + v95.f32[1];
    *(v77 + 25) = v89.f32[1] - v95.f32[0];
    *(v77 + 26) = v51;
    *(v77 + 27) = v52;
    *(v77 + 28) = -1;
    *(v77 + 30) = v90.f32[0] + v95.f32[1];
    *(v77 + 31) = v90.f32[1] - v95.f32[0];
    *(v77 + 32) = v51;
    *(v77 + 33) = v52;
    *(v77 + 34) = -1;
    *(v77 + 36) = v90.f32[0] - v95.f32[1];
    *(v77 + 37) = v90.f32[1] + v95.f32[0];
    *(v77 + 38) = v51;
    *(v77 + 39) = v52;
    *(v77 + 40) = -1;
    *(v77 + 42) = v89.f32[0] - v95.f32[1];
    *(v77 + 43) = v89.f32[1] + v95.f32[0];
    *(v77 + 44) = v51;
    *(v77 + 45) = v52;
    *(v77 + 46) = -1;
    v96 = vdup_lane_s16(v79, 0);
    v97 = vadd_s16(v96, 0x5000400030002);
    *(v78 + 2) = v97.i16[0];
    *(v78 + 1) = v97;
    *(v78 + 9) = v97.i16[2];
    v98 = vmla_f32(v80, v57, __PAIR64__(LODWORD(v110), LODWORD(v40)));
    v99 = vsub_f32(v98, v82);
    v100 = vmul_f32(v99, v99);
    v100.i32[0] = vadd_f32(v100, vdup_lane_s32(v100, 1)).u32[0];
    v101 = vrsqrte_f32(v100.u32[0]);
    v102 = vmul_f32(v101, vrsqrts_f32(v100.u32[0], vmul_f32(v101, v101)));
    v103 = vmul_n_f32(v99, vmul_f32(v102, vrsqrts_f32(v100.u32[0], vmul_f32(v102, v102))).f32[0]);
    *(v77 + 48) = v82.f32[0] + v103.f32[1];
    *(v77 + 49) = v82.f32[1] - v103.f32[0];
    *(v77 + 50) = v51;
    *(v77 + 51) = v52;
    *(v77 + 52) = -1;
    *(v77 + 54) = v98.f32[0] + v103.f32[1];
    *(v77 + 55) = v98.f32[1] - v103.f32[0];
    *(v77 + 56) = v51;
    *(v77 + 57) = v52;
    *(v77 + 58) = -1;
    *(v77 + 60) = v98.f32[0] - v103.f32[1];
    *(v77 + 61) = v98.f32[1] + v103.f32[0];
    *(v77 + 62) = v51;
    *(v77 + 63) = v52;
    *(v77 + 64) = -1;
    *(v77 + 66) = v82.f32[0] - v103.f32[1];
    *(v77 + 67) = v82.f32[1] + v103.f32[0];
    *(v77 + 68) = v51;
    *(v77 + 69) = v52;
    *(v77 + 70) = -1;
    v104 = vadd_s16(v96, 0x9000800070006);
    *(v78 + 8) = v104.i16[0];
    *(v78 + 20) = v104;
    *(v78 + 14) = v88 + 10;
    *(v78 + 15) = v104.i16[2];
    *(v78 + 16) = v88 + 10;
    *(v78 + 17) = v88 + 11;
    v106 = v21;
    HUDUITemporaryStringWithFormat(a1, 0, "%.2f%s", &v118, SLOBYTE(v106));
    *&v105 = a7;
    HUDUIWindowAddLabelInRect(a1, &v118, -1, 0, 0, a4 + 2.0, v11, v113, v105);
    return 1;
  }

  return 0;
}

uint64_t HUDUIWindowSetQRCode(uint64_t a1, void *a2, float a3, float a4, float a5, float a6)
{
  v10 = a2;
  if (!a1)
  {
    goto LABEL_19;
  }

  v11 = *(a1 + 5852);
  v12 = *(a1 + 40);
  if (v11 == -1)
  {
    v14 = *(a1 + 32);
    if (v14 != v12)
    {
      goto LABEL_6;
    }

LABEL_19:
    v35 = 0;
    goto LABEL_20;
  }

  v13 = *(a1 + 32);
  if (0xF0F0F0F0F0F0F0F1 * ((v12 - v13) >> 3) <= v11)
  {
    goto LABEL_19;
  }

  v14 = v13 + 136 * v11;
LABEL_6:
  if (!v14)
  {
    goto LABEL_19;
  }

  objc_storeStrong((v14 + 104), a2);
  *(v14 + 112) = a3;
  *(v14 + 116) = a4;
  *(v14 + 120) = a5;
  *(v14 + 124) = a6;
  v15 = *(v14 + 96);
  if (!*&v15[1] || !*v15)
  {
    goto LABEL_19;
  }

  v16 = v15[2].u32[0] + 4;
  v17 = v15[3].u32[0];
  if (v16 >= v17)
  {
    LODWORD(v18) = v15[3].i32[1];
  }

  else
  {
    v18 = v15[3].u32[1];
    if (v15[2].u32[1] + 6 < v18)
    {
      goto LABEL_14;
    }
  }

  HUDSimpleVertexBufferChunkRelocate(**(v14 + 40), *(v14 + 96), 2 * v17, 2 * v18);
  v17 = v15[3].u32[0];
  v16 = v15[2].u32[0] + 4;
LABEL_14:
  if (v16 >= v17 || v15[2].u32[1] + 6 >= v15[3].u32[1])
  {
    goto LABEL_19;
  }

  v19 = [*v15 contents];
  v20 = v15[2].i32[0];
  v21 = [*&v15[1] contents];
  v22 = &v19[24 * v20];
  v23 = &v21[2 * v15[2].u32[1]];
  *(v22 + 4) = 0u;
  *(v22 + 5) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 3) = 0u;
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v24 = v15[2];
  v25.f32[0] = a3 + a5;
  v25.f32[1] = a4 + a6;
  v15[2] = vadd_s32(v24, 0x600000004);
  v26 = *(*(v14 + 40) + 5844);
  v27 = vmul_n_f32(__PAIR64__(LODWORD(a4), LODWORD(a3)), v26);
  v28 = vmul_n_f32(v25, v26);
  *v22 = v27;
  *(v22 + 3) = 0;
  *(v22 + 2) = 0x2FFFFFFFFLL;
  *(v22 + 3) = __PAIR64__(v27.u32[1], v28.u32[0]);
  *(v22 + 8) = 1065353216;
  *(v22 + 5) = 0x2FFFFFFFFLL;
  *(v22 + 6) = v28;
  __asm { FMOV            V4.2S, #1.0 }

  *(v22 + 7) = _D4;
  *(v22 + 8) = 0x2FFFFFFFFLL;
  v27.i32[1] = v28.i32[1];
  *(v22 + 9) = v27;
  *(v22 + 21) = 1065353216;
  *(v22 + 11) = 0x2FFFFFFFFLL;
  *v23 = v24.i16[0];
  *(v23 + 1) = v24.i16[0] + 1;
  *(v23 + 2) = v24.i16[0] + 2;
  *(v23 + 3) = v24.i16[0];
  *(v23 + 4) = v24.i16[0] + 2;
  *(v23 + 5) = v24.i16[0] + 3;
  v34 = *(v14 + 56);
  if (v34 < a6)
  {
    v34 = a6;
  }

  *(v14 + 56) = v34;
  v35 = 1;
LABEL_20:

  return v35;
}

id *HUDUIOverlayGetCommandQueue(id *a1)
{
  if (a1)
  {
    a1 = a1[771];
    v1 = vars8;
  }

  return a1;
}

void std::vector<HUDUIVertex>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<HUDUIVertex>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void std::vector<unsigned short>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a1, a2 - v2);
  }
}

void std::vector<HUDUIVertex>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HUDUIVertex>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HUDUIVertex>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void HUDStringVertexBufferInternal::~HUDStringVertexBufferInternal(HUDStringVertexBufferInternal *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HUDUIOverlay::ReusableVertexBuffer>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<HUDUIWindow>::__emplace_back_slow_path<HUDUIWindow>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v6 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HUDUIWindow>>(a1, v6);
  }

  v7 = 136 * v2;
  v19 = 0;
  v20 = v7;
  *(&v21 + 1) = 0;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 32) = v9;
  *(v7 + 48) = v10;
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 72) = 0;
  *(v7 + 72) = *(a2 + 72);
  *(v7 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v11 = *(a2 + 96);
  *(a2 + 104) = 0;
  *(v7 + 96) = v11;
  v12 = *(a2 + 112);
  *(v7 + 127) = *(a2 + 127);
  *(v7 + 112) = v12;
  *&v21 = 136 * v2 + 136;
  v13 = a1[1];
  v14 = 136 * v2 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HUDUIWindow>,HUDUIWindow*>(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  std::__split_buffer<HUDUIWindow>::~__split_buffer(&v19);
  return v18;
}

void sub_26F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<HUDUIWindow>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HUDUIWindow>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HUDUIWindow>,HUDUIWindow*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v17 = a4;
  v14[0] = a1;
  v14[1] = &v16;
  v14[2] = &v17;
  if (a2 == a3)
  {
    v15 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 16);
      v9 = *(v7 + 48);
      v10 = *(v7 + 64);
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 48) = v9;
      *(a4 + 16) = v8;
      *(a4 + 64) = v10;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v7 + 72);
      *(a4 + 88) = *(v7 + 88);
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      v11 = *(v7 + 96);
      *(v7 + 104) = 0;
      *(a4 + 96) = v11;
      v12 = *(v7 + 112);
      *(a4 + 127) = *(v7 + 127);
      *(a4 + 112) = v12;
      v7 += 136;
      a4 += 136;
    }

    while (v7 != a3);
    v17 = a4;
    v15 = 1;
    while (v5 != a3)
    {
      std::allocator<HUDUIWindow>::destroy[abi:ne200100](a1, v5);
      v5 += 136;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HUDUIWindow>,HUDUIWindow*>>::~__exception_guard_exceptions[abi:ne200100](v14);
}

void std::allocator<HUDUIWindow>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    *(a2 + 80) = v3;

    operator delete(v3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HUDUIWindow>,HUDUIWindow*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<HUDUIWindow>,HUDUIWindow*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<HUDUIWindow>,HUDUIWindow*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 136;
      std::allocator<HUDUIWindow>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<HUDUIWindow>::~__split_buffer(void **a1)
{
  std::__split_buffer<HUDUIWindow>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<HUDUIWindow>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 136;
    std::allocator<HUDUIWindow>::destroy[abi:ne200100](v4, i - 136);
  }
}

void HUDUIWindow::~HUDUIWindow(id *this)
{
  v2 = this[9];
  if (v2)
  {
    this[10] = v2;
    operator delete(v2);
  }
}

void ___Z37_HUDUIVertexBufferAddRoundedRectangleP11HUDUIVertexPt9HUDUIRectjfffjf_block_invoke(id a1)
{
  for (i = 0; i != 96; ++i)
  {
    v2 = __sincospif_stret((i * 0.010417) + (i * 0.010417));
    _HUDUIVertexBufferAddRoundedRectangle(HUDUIVertex *,unsigned short *,HUDUIRect,unsigned int,float,float,float,unsigned int,float)::sCircle[i] = __PAIR64__(LODWORD(v2.__sinval), LODWORD(v2.__cosval));
  }
}

uint64_t std::vector<HUDUIVertex>::__init_with_size[abi:ne200100]<HUDUIVertex*,HUDUIVertex*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<HUDUIVertex>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_272EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<HUDUIVertex>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HUDUIVertex>>(a1, a2);
  }

  std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_273B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  }

  std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
}

void *std::vector<HUDUIVertex>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<HUDUIVertex>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_27488(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned short>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_27500(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL HUDSimpleVertexBufferChunkRelocate(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v8 = [*(a1 + 6160) newBufferWithLength:24 * a3 options:1];
  v9 = v8;
  if (v8)
  {
    [v8 setLabel:@"libMTLHUD_VertexBuffer"];
    v10 = [*(a1 + 6160) newBufferWithLength:2 * a4 options:1];
    v11 = v10;
    if (!v10)
    {
      goto LABEL_11;
    }

    [v10 setLabel:@"libMTLHUD_IndexBuffer"];
    *(a2 + 24) = a3;
    *(a2 + 28) = a4;
    if (*a2)
    {
      v12 = [*a2 contents];
      if (v12)
      {
        memcpy([v9 contents], v12, 24 * *(a2 + 16));
      }
    }

    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = [v13 contents];
      if (v14)
      {
        memcpy([v11 contents], v14, 2 * *(a2 + 20));
      }
    }

    objc_storeStrong(a2, v9);
    objc_storeStrong((a2 + 8), v11);
    if ([*(a2 + 8) length] == (2 * *(a2 + 28)))
    {
      v15 = [*a2 length] == (24 * *(a2 + 24));
    }

    else
    {
LABEL_11:
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void *std::__hash_table<std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,HUDUIStringInternal>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long,HUDUIStringInternal>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,HUDUIStringInternal>>>::__construct_node_hash<std::pair<unsigned long,HUDUIStringInternal>>();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_27D2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,HUDUIStringInternal>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,HUDUIStringInternal>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,HUDUIStringInternal>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,HUDUIStringInternal>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<unsigned long const,HUDUIStringInternal>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<unsigned long const,HUDUIStringInternal>,0>(void *a1)
{
  v2 = a1[69];
  if (v2)
  {
    a1[70] = v2;
    operator delete(v2);
  }

  v3 = a1[66];
  if (v3)
  {
    a1[67] = v3;

    operator delete(v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,HUDUIStringInternal>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,HUDUIStringInternal>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,HUDUIStringInternal>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<unsigned long const,HUDUIStringInternal>,0>(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::vector<HUDUIWindow>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 136;
        std::allocator<HUDUIWindow>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HUDUIWindow *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

unint64_t HUDTimeRangeIntersect(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > *a2 && v2 < a2[1])
  {
    v4 = a1[1];
    return fmax(v2, v3);
  }

  if (v3 > v2 && v3 < a1[1])
  {
    v5 = a2[1];
    return fmax(v2, v3);
  }

  return HUDInvalidTimeRange;
}

double HUDUILineChartInit(_OWORD *a1)
{
  result = 0.0;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t HUDUILineChartSet(uint64_t result, unint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, float a7, float a8, float a9)
{
  if (a2 <= 7)
  {
    v9 = result + 40 * a2;
    *v9 = a3;
    *(v9 + 8) = a4;
    *(v9 + 16) = a8;
    *(v9 + 20) = a9;
    *(v9 + 12) = a7;
    *(v9 + 24) = a5;
    *(v9 + 32) = a6;
  }

  return result;
}

void _HUDTopObjectTempLabel(void *a1)
{
  v7 = a1;
  if ([v7 length] < 0x11)
  {
    v1 = 0;
  }

  else
  {
    v1 = [v7 length] - 16;
  }

  v2 = [v7 length];
  if (v2 >= 0x10)
  {
    v3 = 16;
  }

  else
  {
    v3 = v2;
  }

  v4 = [v7 substringWithRange:{v1, v3}];
  strncpy(&_HUDTopObjectTempLabel_buf, [v4 UTF8String], 0x10uLL);

  v5 = [v7 length];
  if (v5 >= 0x10)
  {
    v6 = 16;
  }

  else
  {
    v6 = v5;
  }

  *(&_HUDTopObjectTempLabel_buf + v6) = 0;
  if ([v7 length] >= 0x11)
  {
    _HUDTopObjectTempLabel_buf = 11822;
    byte_76C22 = 46;
  }
}

void HUDValueHistoryRecordInit(uint64_t a1, double a2, double a3, double a4)
{
  v8 = a1 + 972;
  bzero(a1, 0x468uLL);
  *v8 = a3;
  *(v8 + 8) = a2;
  *(a1 + 1120) = a2;
  *(a1 + 1112) = a3;
  *(a1 + 964) = 0;
  *(v8 + 40) = a3;
  *(v8 + 48) = a2;
  *(v8 + 64) = a4;
  *(v8 + 32) = 0;
  *(a1 + 1096) = 1200;
}

double HUDValueHistoryReset(uint64_t a1)
{
  v2 = *(a1 + 1012);
  v3 = *(a1 + 1020);
  *(a1 + 972) = v2;
  *(a1 + 980) = v3;
  *(a1 + 968) = 0;
  *(a1 + 960) = 0;
  *(a1 + 1028) = 0;
  *(a1 + 1044) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1100) = 0;
  *(a1 + 996) = 0;
  *(a1 + 1004) = 0;
  *(a1 + 988) = 0;
  *(a1 + 1120) = v3;
  *(a1 + 1112) = v2;
  bzero(a1, 0x3C0uLL);
  result = 0.0;
  *(a1 + 1064) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1048) = 0u;
  return result;
}

double _HUDValueHistoryRecordAddValue(uint64_t a1, unsigned int a2, double a3)
{
  v3 = (a1 + 972);
  v5 = *(a1 + 1012);
  v4 = *(a1 + 1020);
  if (v4 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = *(a1 + 1020);
  }

  if (v5 >= a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(a1 + 1012);
  }

  *(a1 + 960) = a2 % 0x78;
  v8 = *(a1 + 996) + v7 - *(a1 + 8 * (a2 % 0x78));
  v9 = v7 + *(a1 + 1004);
  *(a1 + 996) = v8;
  *(a1 + 1004) = v9;
  *(a1 + 8 * (a2 % 0x78)) = v7;
  *(a1 + 1028) = v7;
  if (*v3 > v7)
  {
    *v3 = v7;
    *(a1 + 968) = a2;
  }

  if (*(a1 + 980) < v7)
  {
    *(a1 + 980) = v7;
    *(a1 + 964) = a2;
  }

  v10 = *(a1 + 1120);
  if (v10 < v7)
  {
    v10 = v7;
  }

  *(a1 + 1120) = v10;
  v11 = *(a1 + 1112);
  if (v11 > v7)
  {
    v11 = v7;
  }

  *(a1 + 1112) = v11;
  if (v7 > 0.0)
  {
    v12 = *(a1 + 1036);
    if (v12 > 0.0)
    {
      v13 = fmax(fmin(vcvtpd_s64_f64((a3 + v12 / -1000.0) / v12), 12.0), 1.0);
      v14 = -1.0;
      v15 = (v13 + -1.0);
      ++*(a1 + 4 * v15 + 1048);
      LODWORD(v14) = *(a1 + 1044);
      *(a1 + 1044) = fmax(v15, v14);
    }
  }

  v16 = *(a1 + 1100) + 1;
  *(a1 + 1100) = v16;
  *(a1 + 1104) = v9 / v16;
  result = fmin(v16, 120.0);
  *(a1 + 988) = v8 / result;
  v18 = *(a1 + 964);
  if (v18 && a2 - v18 > *(a1 + 1096) || (v19 = *(a1 + 968)) != 0 && a2 - v19 > *(a1 + 1096))
  {
    *v3 = v5;
    *(a1 + 980) = v4;
    v20 = 0.0;
    *(a1 + 996) = 0;
    if (result > 0.0)
    {
      v21 = *(a1 + 960);
      v22 = a1 + 8 * v21;
      v23 = 1;
      do
      {
        v24 = *(v22 - 960 * (v21 / 0x78));
        v25 = v24;
        if (v5 > v25)
        {
          *v3 = v25;
          *(a1 + 968) = a2;
          v5 = v25;
        }

        if (v4 < v25)
        {
          *(a1 + 964) = a2;
          v4 = v25;
        }

        v4 = fmax(v4, v25);
        v20 = v20 + v25;
        v26 = v23;
        v22 += 8;
        ++v21;
        ++v23;
      }

      while (result > v26);
      *(a1 + 980) = v4;
      *(a1 + 996) = v20;
    }

    result = v20 / 120.0;
    *(a1 + 988) = v20 / 120.0;
  }

  return result;
}

uint64_t HUDInterposeEnableCompilerStats(uint64_t a1)
{
  result = MTLHudIsVirtualDevice();
  if ((result & 1) == 0)
  {
    result = HUDGetGlobalConfig();
    if ((*(result + 26) & 1) == 0)
    {

      return __MTLSetCompileTimeStatisticsEnabled(a1);
    }
  }

  return result;
}

void nextDrawableCommon(CAMetalLayer *a1)
{
  object = a1;
  v1 = objc_getAssociatedObject(object, _HUDMTLLayerNextDrawableKey);
  v2 = v1;
  v3 = _HUDMTLLayerNextDrawableKey;
  if (v1)
  {
    v4 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v1 unsignedIntValue] + 1);
    objc_setAssociatedObject(object, v3, v4, &stru_2E8.segname[9]);
  }

  else
  {
    objc_setAssociatedObject(object, _HUDMTLLayerNextDrawableKey, &off_6F340, &stru_2E8.segname[9]);
  }

  v5 = *(HUDGetGlobalConfig() + 28);
  if ([v2 unsignedIntValue] >= 0x14)
  {
    [(CAMetalLayer *)object drawableSize];
    v6 = v5;
    if (v7 >= v6)
    {
      [(CAMetalLayer *)object drawableSize];
      if (v8 >= v6)
      {
        v9 = HUDMTLLayerTrackingForLayer(object);
        if (!v9)
        {
          v10 = [HUDMTLLayerOverlay alloc];
          v11 = [(CAMetalLayer *)object device];
          v12 = [(HUDMTLLayerOverlay *)v10 initWithDevice:v11];

          v9 = [[HUDMTLLayerTracking alloc] initWithLayer:object client:v12 frameNumber:0];
          if ((nextDrawableCommon(CAMetalLayer *)::firstLayer & 1) == 0)
          {
            v13 = *(HUDGetGlobalConfig() + 17);
            if (*(HUDGetGlobalConfig() + 37) || !v13 || (+[HUDAlternateWindow instance](HUDAlternateWindow, "instance"), v14 = objc_claimAutoreleasedReturnValue(), [v14 layer], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15 != object))
            {
              [(HUDMTLLayerTracking *)v9 setIsMainLayer:1];
              nextDrawableCommon(CAMetalLayer *)::firstLayer = 1;
              HUDInitInterposeMetal();
              HUDInsightsCreatePrototypes();
              GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
              HUDGPUTimeTrackerReset(GlobalInstance);
            }
          }

          _HUDHasMainLayer = 1;
          objc_setAssociatedObject(object, _HUDMTLLayerKey, v9, &stru_2E8.segname[9]);
        }

        [(HUDMTLLayerTracking *)v9 nextDrawable];
      }
    }
  }
}

void sub_2D050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

id HUDMTLLayerTrackingForLayer(void *a1)
{
  v1 = objc_getAssociatedObject(a1, _HUDMTLLayerKey);

  return v1;
}

void HUDInitInterposeMetal()
{
  if ((HUDInitInterposeMetal::interposed & 1) == 0)
  {
    HUDInitInterposeMetal::interposed = 1;
    v0 = +[MTLCaptureManager sharedCaptureManager];
    v1 = _sharedCaptureManager;
    _sharedCaptureManager = v0;

    v2 = MTLCreateSystemDefaultDevice();
    v3 = MTLHud_objc_unwrap(v2);

    v4 = [v3 newCommandQueue];
    v5 = [v4 commandBuffer];
    [v5 commit];
    v6 = objc_opt_class();
    replaceMethod<void>(v6, "commit", MTLCommandBuffer_commit);
    v7 = objc_opt_class();
    replaceMethod<objc_object * {__strong}>(v7, "commandBuffer", MTLCommandQueue_commandBuffer);
    v8 = objc_opt_class();
    v9 = v8;
    if (v8)
    {
      if ("commandBufferWithDescriptor:")
      {
        InstanceMethod = class_getInstanceMethod(v8, "commandBufferWithDescriptor:");
        v11 = InstanceMethod;
        if (InstanceMethod)
        {
          v73 = _NSConcreteStackBlock;
          v74 = 3221225472;
          v75 = ___ZL13replaceMethodIU8__strongP11objc_objectJU8__strongP26MTLCommandBufferDescriptorEEvP10objc_classP13objc_selectorPFT_PFvvES1_S9_DpT0_E_block_invoke;
          v76 = &__block_descriptor_56_e39__24__0_8__MTLCommandBufferDescriptor_16l;
          v77 = MTLCommandQueue_commandBufferWithDescriptor;
          Implementation = method_getImplementation(InstanceMethod);
          v79 = "commandBufferWithDescriptor:";
          v12 = objc_retainBlock(&v73);
          v13 = imp_implementationWithBlock(v12);

          TypeEncoding = method_getTypeEncoding(v11);
          class_replaceMethod(v9, "commandBufferWithDescriptor:", v13, TypeEncoding);
        }
      }
    }

    v15 = objc_opt_class();
    replaceMethod<objc_object * {__strong}>(v15, "commandBufferWithUnretainedReferences", MTLCommandQueue_commandBufferWithUnretainedReferences);
    v16 = objc_opt_class();
    replaceMethod<objc_object * {__strong}>(v16, "renderCommandEncoder", MTLCommandBuffer_renderCommandEncoder);
    v17 = objc_opt_class();
    v18 = v17;
    if (v17)
    {
      if ("renderCommandEncoderWithDescriptor:")
      {
        v19 = class_getInstanceMethod(v17, "renderCommandEncoderWithDescriptor:");
        v20 = v19;
        if (v19)
        {
          v21 = method_getImplementation(v19);
          v73 = _NSConcreteStackBlock;
          v74 = 3221225472;
          v75 = ___ZL13replaceMethodIU8__strongP11objc_objectJU8__strongP23MTLRenderPassDescriptorEEvP10objc_classP13objc_selectorPFT_PFvvES1_S9_DpT0_E_block_invoke;
          v76 = &__block_descriptor_56_e36__24__0_8__MTLRenderPassDescriptor_16l;
          v77 = MTLCommandBuffer_renderCommandEncoderWithDescriptor;
          Implementation = v21;
          v79 = "renderCommandEncoderWithDescriptor:";
          v22 = objc_retainBlock(&v73);
          v23 = imp_implementationWithBlock(v22);

          v24 = method_getTypeEncoding(v20);
          class_replaceMethod(v18, "renderCommandEncoderWithDescriptor:", v23, v24);
        }
      }
    }

    v25 = objc_opt_class();
    replaceMethod<objc_object * {__strong}>(v25, "computeCommandEncoder", MTLCommandBuffer_computeCommandEncoder);
    v26 = objc_opt_class();
    v27 = v26;
    if (v26)
    {
      if ("computeCommandEncoderWithDispatchType:")
      {
        v28 = class_getInstanceMethod(v26, "computeCommandEncoderWithDispatchType:");
        v29 = v28;
        if (v28)
        {
          v30 = method_getImplementation(v28);
          v73 = _NSConcreteStackBlock;
          v74 = 3221225472;
          v75 = ___ZL13replaceMethodIU8__strongP11objc_objectJ15MTLDispatchTypeEEvP10objc_classP13objc_selectorPFT_PFvvES1_S7_DpT0_E_block_invoke;
          v76 = &__block_descriptor_56_e11__24__0_8Q16l;
          v77 = MTLCommandBuffer_computeCommandEncoderWithDispatchType;
          Implementation = v30;
          v79 = "computeCommandEncoderWithDispatchType:";
          v31 = objc_retainBlock(&v73);
          v32 = imp_implementationWithBlock(v31);

          v33 = method_getTypeEncoding(v29);
          class_replaceMethod(v27, "computeCommandEncoderWithDispatchType:", v32, v33);
        }
      }
    }

    v34 = objc_opt_class();
    v35 = v34;
    if (v34)
    {
      if ("computeCommandEncoderWithDescriptor:")
      {
        v36 = class_getInstanceMethod(v34, "computeCommandEncoderWithDescriptor:");
        v37 = v36;
        if (v36)
        {
          v38 = method_getImplementation(v36);
          v73 = _NSConcreteStackBlock;
          v74 = 3221225472;
          v75 = ___ZL13replaceMethodIU8__strongP11objc_objectJU8__strongP24MTLComputePassDescriptorEEvP10objc_classP13objc_selectorPFT_PFvvES1_S9_DpT0_E_block_invoke;
          v76 = &__block_descriptor_56_e37__24__0_8__MTLComputePassDescriptor_16l;
          v77 = MTLCommandBuffer_computeCommandEncoderWithDescriptor;
          Implementation = v38;
          v79 = "computeCommandEncoderWithDescriptor:";
          v39 = objc_retainBlock(&v73);
          v40 = imp_implementationWithBlock(v39);

          v41 = method_getTypeEncoding(v37);
          class_replaceMethod(v35, "computeCommandEncoderWithDescriptor:", v40, v41);
        }
      }
    }

    v42 = objc_opt_class();
    replaceMethod<objc_object * {__strong}>(v42, "blitCommandEncoder", MTLCommandBuffer_blitCommandEncoder);
    v43 = objc_opt_class();
    v44 = v43;
    if (v43)
    {
      if ("blitCommandEncoderWithDescriptor:")
      {
        v45 = class_getInstanceMethod(v43, "blitCommandEncoderWithDescriptor:");
        v46 = v45;
        if (v45)
        {
          v47 = method_getImplementation(v45);
          v73 = _NSConcreteStackBlock;
          v74 = 3221225472;
          v75 = ___ZL13replaceMethodIU8__strongP11objc_objectJU8__strongP21MTLBlitPassDescriptorEEvP10objc_classP13objc_selectorPFT_PFvvES1_S9_DpT0_E_block_invoke;
          v76 = &__block_descriptor_56_e34__24__0_8__MTLBlitPassDescriptor_16l;
          v77 = MTLCommandBuffer_blitCommandEncoderWithDescriptor;
          Implementation = v47;
          v79 = "blitCommandEncoderWithDescriptor:";
          v48 = objc_retainBlock(&v73);
          v49 = imp_implementationWithBlock(v48);

          v50 = method_getTypeEncoding(v46);
          class_replaceMethod(v44, "blitCommandEncoderWithDescriptor:", v49, v50);
        }
      }
    }

    v51 = objc_opt_class();
    replaceMethod<objc_object * {__strong}>(v51, "resourceStateCommandEncoder", MTLCommandBuffer_resourceStateCommandEncoder);
    v52 = objc_opt_class();
    v53 = v52;
    if (v52)
    {
      if ("resourceStateCommandEncoderWithDescriptor:")
      {
        v54 = class_getInstanceMethod(v52, "resourceStateCommandEncoderWithDescriptor:");
        v55 = v54;
        if (v54)
        {
          v56 = method_getImplementation(v54);
          v73 = _NSConcreteStackBlock;
          v74 = 3221225472;
          v75 = ___ZL13replaceMethodIU8__strongP11objc_objectJU8__strongP30MTLResourceStatePassDescriptorEEvP10objc_classP13objc_selectorPFT_PFvvES1_S9_DpT0_E_block_invoke;
          v76 = &__block_descriptor_56_e43__24__0_8__MTLResourceStatePassDescriptor_16l;
          v77 = MTLCommandBuffer_resourceStateCommandEncoderWithDescriptor;
          Implementation = v56;
          v79 = "resourceStateCommandEncoderWithDescriptor:";
          v57 = objc_retainBlock(&v73);
          v58 = imp_implementationWithBlock(v57);

          v59 = method_getTypeEncoding(v55);
          class_replaceMethod(v53, "resourceStateCommandEncoderWithDescriptor:", v58, v59);
        }
      }
    }

    v60 = objc_opt_class();
    replaceMethod<objc_object * {__strong}>(v60, "accelerationStructureCommandEncoder", MTLCommandBuffer_accelerationStructureCommandEncoder);
    v61 = objc_opt_class();
    v62 = v61;
    if (v61)
    {
      if ("accelerationStructureCommandEncoderWithDescriptor:")
      {
        v63 = class_getInstanceMethod(v61, "accelerationStructureCommandEncoderWithDescriptor:");
        v64 = v63;
        if (v63)
        {
          v65 = method_getImplementation(v63);
          v73 = _NSConcreteStackBlock;
          v74 = 3221225472;
          v75 = ___ZL13replaceMethodIU8__strongP11objc_objectJU8__strongP38MTLAccelerationStructurePassDescriptorEEvP10objc_classP13objc_selectorPFT_PFvvES1_S9_DpT0_E_block_invoke;
          v76 = &__block_descriptor_56_e51__24__0_8__MTLAccelerationStructurePassDescriptor_16l;
          v77 = MTLCommandBuffer_accelerationStructureCommandEncoderWithDescriptor;
          Implementation = v65;
          v79 = "accelerationStructureCommandEncoderWithDescriptor:";
          v66 = objc_retainBlock(&v73);
          v67 = imp_implementationWithBlock(v66);

          v68 = method_getTypeEncoding(v64);
          class_replaceMethod(v62, "accelerationStructureCommandEncoderWithDescriptor:", v67, v68);
        }
      }
    }

    v69 = objc_opt_class();
    replaceMethod<void>(v69, "endEncoding", MTLCommandEncoder_EndEncoding);
    if ((*(HUDGetGlobalConfig() + 27) & 1) == 0)
    {
      HUDInitInterposeMTL4(v3);
    }

    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    if (HUDGPUTimeTrackerInitGPUTimeSampling(GlobalInstance, v3))
    {
      v71 = HUDGPUTimeTrackerGetGlobalInstance();
      v72 = HUDGetGlobalConfig();
      HUDGPUTimeTrackerEnableEncoderGPUTimeSampling(v71, *(v72 + 4));
    }

    HUDInternalPerfMetricsReset();
    HUDRegisterGlobalMetrics();
  }
}

void HUDInitInterposeCA()
{
  if ((MTLHudIsExcluded() & 1) == 0 && (HUDInitInterposeCA::interposed & 1) == 0)
  {
    HUDInitInterposeCA::interposed = 1;
    v0 = dispatch_time(0, 0);

    dispatch_after(v0, &_dispatch_main_q, &__block_literal_global_6);
  }
}

objc_class *replaceMethod<objc_object * {__strong}>(objc_class *result, SEL name, uint64_t a3)
{
  if (result && name)
  {
    v5 = result;
    result = class_getInstanceMethod(result, name);
    if (result)
    {
      v6 = result;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = ___ZL13replaceMethodIU8__strongP11objc_objectJEEvP10objc_classP13objc_selectorPFT_PFvvES1_S6_DpT0_E_block_invoke;
      v10[3] = &__block_descriptor_56_e8__16__0_8l;
      v10[4] = a3;
      v10[5] = method_getImplementation(result);
      v10[6] = name;
      v7 = objc_retainBlock(v10);
      v8 = imp_implementationWithBlock(v7);

      TypeEncoding = method_getTypeEncoding(v6);
      return class_replaceMethod(v5, name, v8, TypeEncoding);
    }
  }

  return result;
}

id CAMetalLayer_nextDrawable(void (*a1)(objc_object *, objc_selector *), objc_object *a2, objc_selector *a3)
{
  v5 = a2;
  nextDrawableCommon(v5);
  v6 = a1(v5, a3);

  return v6;
}

id CAMetalDisplayLinkUpdate_drawable(void (*a1)(objc_object *, objc_selector *), objc_object *a2, objc_selector *a3)
{
  v3 = a1(a2, a3);
  v4 = [v3 layer];
  nextDrawableCommon(v4);

  return v3;
}

id CAMetalLayer_shimDrawable(void (*a1)(CAMetalLayer *, uint64_t, id), void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  nextDrawableCommon(v7);
  v9 = a1(v7, a3, v8);

  return v9;
}

void CAMetalDrawable_present(void (*a1)(objc_object *, objc_selector *), objc_object *a2, objc_selector *a3)
{
  v5 = a2;
  CAMetalDrawablePresentCommon(v5);
  a1(v5, a3);
}

objc_class *replaceMethod<void,double>(const char *a1, uint64_t a2)
{
  result = objc_getClass("CAMetalDrawable");
  if (a1)
  {
    v5 = result;
    if (result)
    {
      result = class_getInstanceMethod(result, a1);
      if (result)
      {
        v6 = result;
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = ___ZL13replaceMethodIvJdEEvP10objc_classP13objc_selectorPFT_PFvvEP11objc_objectS3_DpT0_E_block_invoke;
        v10[3] = &__block_descriptor_56_e11_v24__0_8d16l;
        v10[4] = a2;
        v10[5] = method_getImplementation(result);
        v10[6] = a1;
        v7 = objc_retainBlock(v10);
        v8 = imp_implementationWithBlock(v7);

        TypeEncoding = method_getTypeEncoding(v6);
        return class_replaceMethod(v5, a1, v8, TypeEncoding);
      }
    }
  }

  return result;
}

void CAMetalDrawable_presentAtTime(void (*a1)(objc_object *, objc_selector *, double), objc_object *a2, objc_selector *a3, double a4)
{
  v7 = a2;
  CAMetalDrawablePresentCommon(v7);
  a1(v7, a3, a4);
}

void CAMetalDrawable_presentAfterMinimumDuration(void (*a1)(objc_object *, objc_selector *, double), objc_object *a2, objc_selector *a3, double a4)
{
  v7 = a2;
  CAMetalDrawablePresentCommon(v7);
  a1(v7, a3, a4);
}

objc_class *replaceMethod<void>(objc_class *result, SEL name, uint64_t a3)
{
  if (result && name)
  {
    v5 = result;
    result = class_getInstanceMethod(result, name);
    if (result)
    {
      v6 = result;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = ___ZL13replaceMethodIvJEEvP10objc_classP13objc_selectorPFT_PFvvEP11objc_objectS3_DpT0_E_block_invoke;
      v10[3] = &__block_descriptor_56_e8_v16__0_8l;
      v10[4] = a3;
      v10[5] = method_getImplementation(result);
      v10[6] = name;
      v7 = objc_retainBlock(v10);
      v8 = imp_implementationWithBlock(v7);

      TypeEncoding = method_getTypeEncoding(v6);
      return class_replaceMethod(v5, name, v8, TypeEncoding);
    }
  }

  return result;
}

void MTLCommandBuffer_commit(void (*a1)(objc_object *, objc_selector *), objc_object *a2, objc_selector *a3)
{
  v6 = a2;
  if (([_sharedCaptureManager isCapturing] & 1) == 0 && _HUDHasMainLayer == 1)
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    HUDGPUTimeTrackerCommandBufferCommit(GlobalInstance, v6);
  }

  a1(v6, a3);
  HUDGetGlobalConfig();
}

id MTLCommandQueue_commandBuffer(void (*a1)(objc_object *, objc_selector *), objc_object *a2, objc_selector *a3)
{
  v3 = a1(a2, a3);
  if (([_sharedCaptureManager isCapturing] & 1) == 0 && _HUDHasMainLayer == 1)
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    HUDGPUTimeTrackerCommandBufferCreate(GlobalInstance, v3);
  }

  return v3;
}

id MTLCommandQueue_commandBufferWithDescriptor(void (*a1)(objc_object *, objc_selector *, MTLCommandBufferDescriptor *), objc_object *a2, objc_selector *a3, MTLCommandBufferDescriptor *a4)
{
  v4 = a1(a2, a3, a4);
  if (([_sharedCaptureManager isCapturing] & 1) == 0 && _HUDHasMainLayer == 1)
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    HUDGPUTimeTrackerCommandBufferCreate(GlobalInstance, v4);
  }

  return v4;
}

id MTLCommandQueue_commandBufferWithUnretainedReferences(void (*a1)(objc_object *, objc_selector *), objc_object *a2, objc_selector *a3)
{
  v3 = a1(a2, a3);
  if (([_sharedCaptureManager isCapturing] & 1) == 0 && _HUDHasMainLayer == 1)
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    HUDGPUTimeTrackerCommandBufferCreate(GlobalInstance, v3);
  }

  return v3;
}

id MTLCommandBuffer_renderCommandEncoder(void (*a1)(objc_object *, objc_selector *), objc_object *a2, objc_selector *a3)
{
  v5 = a2;
  isCreatingRenderEncoder();
  if (*v6 == 1)
  {
    v7 = a1(v5, a3);
  }

  else
  {
    v8 = +[MTLRenderPassDescriptor renderPassDescriptor];
    v7 = [(objc_object *)v5 renderCommandEncoderWithDescriptor:v8];
  }

  return v7;
}

id MTLCommandBuffer_renderCommandEncoderWithDescriptor(void (*a1)(objc_object *, objc_selector *, MTLRenderPassDescriptor *), objc_object *a2, objc_selector *a3, MTLRenderPassDescriptor *a4)
{
  v7 = a2;
  v8 = a4;
  isCreatingRenderEncoder();
  v10 = v9;
  *v9 = 1;
  if (([_sharedCaptureManager isCapturing] & 1) != 0 || _HUDHasMainLayer != 1)
  {
    v12 = a1(v7, a3, v8);
  }

  else
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = ___ZL51MTLCommandBuffer_renderCommandEncoderWithDescriptorPFvvEP11objc_objectP13objc_selectorP23MTLRenderPassDescriptor_block_invoke;
    v14[3] = &unk_69320;
    v16 = a1;
    v15 = v7;
    v17 = a3;
    v12 = HUDGPUTimeTrackerCreateRenderEncder(GlobalInstance, v15, v8, v14);
  }

  *v10 = 0;

  return v12;
}

id MTLCommandBuffer_computeCommandEncoder(void (*a1)(objc_object *, objc_selector *), objc_object *a2, objc_selector *a3)
{
  v5 = a2;
  isCreatingComputeEncoderEncoder();
  if (*v6 == 1)
  {
    v7 = a1(v5, a3);
  }

  else
  {
    v8 = +[MTLComputePassDescriptor computePassDescriptor];
    v7 = [(objc_object *)v5 computeCommandEncoderWithDescriptor:v8];
  }

  return v7;
}

id MTLCommandBuffer_computeCommandEncoderWithDispatchType(void (*a1)(objc_object *, objc_selector *, MTLDispatchType), objc_object *a2, objc_selector *a3, MTLDispatchType a4)
{
  v7 = a2;
  isCreatingComputeEncoderEncoder();
  if (*v8 == 1)
  {
    v9 = a1(v7, a3, a4);
  }

  else
  {
    v10 = +[MTLComputePassDescriptor computePassDescriptor];
    [v10 setDispatchType:a4];
    v9 = [(objc_object *)v7 computeCommandEncoderWithDescriptor:v10];
  }

  return v9;
}

id MTLCommandBuffer_computeCommandEncoderWithDescriptor(void (*a1)(objc_object *, objc_selector *, MTLComputePassDescriptor *), objc_object *a2, objc_selector *a3, MTLComputePassDescriptor *a4)
{
  v7 = a2;
  v8 = a4;
  isCreatingComputeEncoderEncoder();
  v10 = v9;
  *v9 = 1;
  if (([_sharedCaptureManager isCapturing] & 1) != 0 || _HUDHasMainLayer != 1)
  {
    v12 = a1(v7, a3, v8);
  }

  else
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = ___ZL52MTLCommandBuffer_computeCommandEncoderWithDescriptorPFvvEP11objc_objectP13objc_selectorP24MTLComputePassDescriptor_block_invoke;
    v14[3] = &unk_69348;
    v16 = a1;
    v15 = v7;
    v17 = a3;
    v12 = HUDGPUTimeTrackerCreateComputeEncder(GlobalInstance, v15, v8, v14);
  }

  *v10 = 0;

  return v12;
}

id MTLCommandBuffer_blitCommandEncoder(void (*a1)(objc_object *, objc_selector *), objc_object *a2, objc_selector *a3)
{
  v5 = a2;
  isCreatingBlitEncoder();
  if (*v6 == 1)
  {
    v7 = a1(v5, a3);
  }

  else
  {
    v8 = +[MTLBlitPassDescriptor blitPassDescriptor];
    v7 = [(objc_object *)v5 blitCommandEncoderWithDescriptor:v8];
  }

  return v7;
}

id MTLCommandBuffer_blitCommandEncoderWithDescriptor(void (*a1)(objc_object *, objc_selector *, MTLBlitPassDescriptor *), objc_object *a2, objc_selector *a3, MTLBlitPassDescriptor *a4)
{
  v7 = a2;
  v8 = a4;
  isCreatingBlitEncoder();
  v10 = v9;
  *v9 = 1;
  if (([_sharedCaptureManager isCapturing] & 1) != 0 || _HUDHasMainLayer != 1)
  {
    v12 = a1(v7, a3, v8);
  }

  else
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = ___ZL49MTLCommandBuffer_blitCommandEncoderWithDescriptorPFvvEP11objc_objectP13objc_selectorP21MTLBlitPassDescriptor_block_invoke;
    v14[3] = &unk_69370;
    v16 = a1;
    v15 = v7;
    v17 = a3;
    v12 = HUDGPUTimeTrackerCreateBlitEncder(GlobalInstance, v15, v8, v14);
  }

  *v10 = 0;

  return v12;
}

id MTLCommandBuffer_resourceStateCommandEncoder(void (*a1)(objc_object *, objc_selector *), objc_object *a2, objc_selector *a3)
{
  v5 = a2;
  isCreatingResourceStateEncoder();
  if (*v6 == 1)
  {
    v7 = a1(v5, a3);
  }

  else
  {
    v8 = +[MTLResourceStatePassDescriptor resourceStatePassDescriptor];
    v7 = [(objc_object *)v5 resourceStateCommandEncoderWithDescriptor:v8];
  }

  return v7;
}

id MTLCommandBuffer_resourceStateCommandEncoderWithDescriptor(void (*a1)(objc_object *, objc_selector *, MTLResourceStatePassDescriptor *), objc_object *a2, objc_selector *a3, MTLResourceStatePassDescriptor *a4)
{
  v7 = a2;
  v8 = a4;
  isCreatingResourceStateEncoder();
  v10 = v9;
  *v9 = 1;
  if (([_sharedCaptureManager isCapturing] & 1) != 0 || _HUDHasMainLayer != 1)
  {
    v12 = a1(v7, a3, v8);
  }

  else
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = ___ZL58MTLCommandBuffer_resourceStateCommandEncoderWithDescriptorPFvvEP11objc_objectP13objc_selectorP30MTLResourceStatePassDescriptor_block_invoke;
    v14[3] = &unk_69398;
    v16 = a1;
    v15 = v7;
    v17 = a3;
    v12 = HUDGPUTimeTrackerCreateResourceStateEncder(GlobalInstance, v15, v8, v14);
  }

  *v10 = 0;

  return v12;
}

id MTLCommandBuffer_accelerationStructureCommandEncoder(void (*a1)(objc_object *, objc_selector *), objc_object *a2, objc_selector *a3)
{
  v5 = a2;
  isCreatingAccelerationStructureEncoder();
  if (*v6 == 1)
  {
    v7 = a1(v5, a3);
  }

  else
  {
    v8 = +[MTLAccelerationStructurePassDescriptor accelerationStructurePassDescriptor];
    v7 = [(objc_object *)v5 accelerationStructureCommandEncoderWithDescriptor:v8];
  }

  return v7;
}

id MTLCommandBuffer_accelerationStructureCommandEncoderWithDescriptor(void (*a1)(objc_object *, objc_selector *, MTLAccelerationStructurePassDescriptor *), objc_object *a2, objc_selector *a3, MTLAccelerationStructurePassDescriptor *a4)
{
  v7 = a2;
  v8 = a4;
  isCreatingAccelerationStructureEncoder();
  v10 = v9;
  *v9 = 1;
  if (([_sharedCaptureManager isCapturing] & 1) != 0 || _HUDHasMainLayer != 1)
  {
    v12 = a1(v7, a3, v8);
  }

  else
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = ___ZL66MTLCommandBuffer_accelerationStructureCommandEncoderWithDescriptorPFvvEP11objc_objectP13objc_selectorP38MTLAccelerationStructurePassDescriptor_block_invoke;
    v14[3] = &unk_693C0;
    v16 = a1;
    v15 = v7;
    v17 = a3;
    v12 = HUDGPUTimeTrackerCreateAccelerationStructureEncder(GlobalInstance, v15, v8, v14);
  }

  *v10 = 0;

  return v12;
}

void MTLCommandEncoder_EndEncoding(void (*a1)(objc_object *, objc_selector *), objc_object *a2, objc_selector *a3)
{
  v6 = a2;
  if (([_sharedCaptureManager isCapturing] & 1) == 0 && _HUDHasMainLayer == 1)
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    HUDGPUTimeTrackerEndEncoding(GlobalInstance, v6);
  }

  a1(v6, a3);
}

void HUDInitInterposeMTL4(void *a1)
{
  v1 = a1;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v1 supportsFamily:5002])
  {
    v2 = v1;
    v3 = [v2 newMTL4CommandQueue];
    if (v3)
    {
      v4 = [v2 newCommandBuffer];
      if (v4)
      {
        v71 = [v2 newCommandAllocator];
        [v4 beginCommandBufferWithAllocator:v71];
        v5 = objc_alloc_init(MTL4RenderPassDescriptor);
        [v5 setRenderTargetWidth:1];
        [v5 setRenderTargetHeight:1];
        [v5 setDefaultRasterSampleCount:1];
        v73 = [v4 renderCommandEncoderWithDescriptor:v5];
        [v73 endEncoding];
        v72 = [v4 computeCommandEncoder];
        [v72 endEncoding];
        name = "machineLearningCommandEncoder";
        if (objc_opt_respondsToSelector())
        {
          v6 = [v4 machineLearningCommandEncoder];
          [v6 endEncoding];
        }

        else
        {
          v6 = 0;
        }

        [v4 endCommandBuffer];
        v7 = objc_opt_class();
        replaceMethod<objc_object * {__strong}>(v7, "newCommandBuffer", MTL4Device_newCommandBuffer);
        v8 = objc_opt_class();
        v9 = v8;
        v74 = v6;
        if (v8)
        {
          if ("commit:count:")
          {
            InstanceMethod = class_getInstanceMethod(v8, "commit:count:");
            v11 = InstanceMethod;
            if (InstanceMethod)
            {
              v75 = _NSConcreteStackBlock;
              v76 = 3221225472;
              v77 = ___ZL13replaceMethodIvJPKPU28objcproto17MTL4CommandBuffer11objc_objectmEEvP10objc_classP13objc_selectorPFT_PFvvEP11objc_objectS7_DpT0_E_block_invoke;
              v78 = &__block_descriptor_56_e16_v32__0_8r__16Q24l;
              v79 = MTL4CommandQueue_commit_count;
              Implementation = method_getImplementation(InstanceMethod);
              v81 = "commit:count:";
              v12 = objc_retainBlock(&v75);
              v13 = imp_implementationWithBlock(v12);

              v6 = v74;
              TypeEncoding = method_getTypeEncoding(v11);
              class_replaceMethod(v9, "commit:count:", v13, TypeEncoding);
            }
          }
        }

        v15 = objc_opt_class();
        v16 = v15;
        if (v15)
        {
          if ("signalDrawable:")
          {
            v17 = class_getInstanceMethod(v15, "signalDrawable:");
            v18 = v17;
            if (v17)
            {
              v19 = method_getImplementation(v17);
              v75 = _NSConcreteStackBlock;
              v76 = 3221225472;
              v77 = ___ZL13replaceMethodIvJU8__strongPU22objcproto11MTLDrawable11objc_objectEEvP10objc_classP13objc_selectorPFT_PFvvEP11objc_objectS6_DpT0_E_block_invoke;
              v78 = &__block_descriptor_56_e26_v24__0_8___MTLDrawable__16l;
              v79 = MTL4CommandQueue_signalDrawable;
              Implementation = v19;
              v81 = "signalDrawable:";
              v20 = objc_retainBlock(&v75);
              v21 = imp_implementationWithBlock(v20);

              v6 = v74;
              v22 = method_getTypeEncoding(v18);
              class_replaceMethod(v16, "signalDrawable:", v21, v22);
            }
          }
        }

        v23 = objc_opt_class();
        v24 = v23;
        if (v23)
        {
          if ("commit:count:options:")
          {
            v25 = class_getInstanceMethod(v23, "commit:count:options:");
            v26 = v25;
            if (v25)
            {
              v27 = method_getImplementation(v25);
              v75 = _NSConcreteStackBlock;
              v76 = 3221225472;
              v77 = ___ZL13replaceMethodIvJPKPU28objcproto17MTL4CommandBuffer11objc_objectmU8__strongP17MTL4CommitOptionsEEvP10objc_classP13objc_selectorPFT_PFvvEP11objc_objectSA_DpT0_E_block_invoke;
              v78 = &__block_descriptor_56_e38_v40__0_8r__16Q24__MTL4CommitOptions_32l;
              v79 = MTL4CommandQueue_commit_count_options;
              Implementation = v27;
              v81 = "commit:count:options:";
              v28 = objc_retainBlock(&v75);
              v29 = imp_implementationWithBlock(v28);

              v6 = v74;
              v30 = method_getTypeEncoding(v26);
              class_replaceMethod(v24, "commit:count:options:", v29, v30);
            }
          }
        }

        v31 = objc_opt_class();
        v32 = v31;
        if (v31)
        {
          if ("beginCommandBufferWithAllocator:")
          {
            v33 = class_getInstanceMethod(v31, "beginCommandBufferWithAllocator:");
            v34 = v33;
            if (v33)
            {
              v35 = method_getImplementation(v33);
              v75 = _NSConcreteStackBlock;
              v76 = 3221225472;
              v77 = ___ZL13replaceMethodIvJU8__strongPU31objcproto20MTL4CommandAllocator11objc_objectEEvP10objc_classP13objc_selectorPFT_PFvvEP11objc_objectS6_DpT0_E_block_invoke;
              v78 = &__block_descriptor_56_e35_v24__0_8___MTL4CommandAllocator__16l;
              v79 = MTL4CommandBuffer_begin;
              Implementation = v35;
              v81 = "beginCommandBufferWithAllocator:";
              v36 = objc_retainBlock(&v75);
              v37 = imp_implementationWithBlock(v36);

              v6 = v74;
              v38 = method_getTypeEncoding(v34);
              class_replaceMethod(v32, "beginCommandBufferWithAllocator:", v37, v38);
            }
          }
        }

        v39 = objc_opt_class();
        v40 = v39;
        if (v39)
        {
          if ("beginCommandBufferWithAllocator:options:")
          {
            v41 = class_getInstanceMethod(v39, "beginCommandBufferWithAllocator:options:");
            v42 = v41;
            if (v41)
            {
              v43 = method_getImplementation(v41);
              v75 = _NSConcreteStackBlock;
              v76 = 3221225472;
              v77 = ___ZL13replaceMethodIvJU8__strongPU31objcproto20MTL4CommandAllocator11objc_objectU8__strongP24MTL4CommandBufferOptionsEEvP10objc_classP13objc_selectorPFT_PFvvEP11objc_objectS9_DpT0_E_block_invoke;
              v78 = &__block_descriptor_56_e64_v32__0_8___MTL4CommandAllocator__16__MTL4CommandBufferOptions_24l;
              v79 = MTL4CommandBuffer_begin_options;
              Implementation = v43;
              v81 = "beginCommandBufferWithAllocator:options:";
              v44 = objc_retainBlock(&v75);
              v45 = imp_implementationWithBlock(v44);

              v6 = v74;
              v46 = method_getTypeEncoding(v42);
              class_replaceMethod(v40, "beginCommandBufferWithAllocator:options:", v45, v46);
            }
          }
        }

        v47 = objc_opt_class();
        replaceMethod<void>(v47, "endCommandBuffer", MTL4CommandBuffer_end);
        v48 = objc_opt_class();
        v49 = v48;
        if (v48)
        {
          if ("renderCommandEncoderWithDescriptor:")
          {
            v50 = class_getInstanceMethod(v48, "renderCommandEncoderWithDescriptor:");
            v51 = v50;
            if (v50)
            {
              v52 = method_getImplementation(v50);
              v75 = _NSConcreteStackBlock;
              v76 = 3221225472;
              v77 = ___ZL13replaceMethodIU8__strongP11objc_objectJU8__strongP24MTL4RenderPassDescriptorEEvP10objc_classP13objc_selectorPFT_PFvvES1_S9_DpT0_E_block_invoke;
              v78 = &__block_descriptor_56_e37__24__0_8__MTL4RenderPassDescriptor_16l;
              v79 = MTL4CommandBuffer_renderCommandEncoderWithDescriptor;
              Implementation = v52;
              v81 = "renderCommandEncoderWithDescriptor:";
              v53 = objc_retainBlock(&v75);
              v54 = imp_implementationWithBlock(v53);

              v6 = v74;
              v55 = method_getTypeEncoding(v51);
              class_replaceMethod(v49, "renderCommandEncoderWithDescriptor:", v54, v55);
            }
          }
        }

        v56 = objc_opt_class();
        v57 = v56;
        if (v56)
        {
          if ("renderCommandEncoderWithDescriptor:options:")
          {
            v58 = class_getInstanceMethod(v56, "renderCommandEncoderWithDescriptor:options:");
            v59 = v58;
            if (v58)
            {
              v60 = method_getImplementation(v58);
              v75 = _NSConcreteStackBlock;
              v76 = 3221225472;
              v77 = ___ZL13replaceMethodIU8__strongP11objc_objectJU8__strongP24MTL4RenderPassDescriptormEEvP10objc_classP13objc_selectorPFT_PFvvES1_S9_DpT0_E_block_invoke;
              v78 = &__block_descriptor_56_e40__32__0_8__MTL4RenderPassDescriptor_16Q24l;
              v79 = MTL4CommandBuffer_renderCommandEncoderWithDescriptor_options;
              Implementation = v60;
              v81 = "renderCommandEncoderWithDescriptor:options:";
              v61 = objc_retainBlock(&v75);
              v62 = imp_implementationWithBlock(v61);

              v6 = v74;
              v63 = method_getTypeEncoding(v59);
              class_replaceMethod(v57, "renderCommandEncoderWithDescriptor:options:", v62, v63);
            }
          }
        }

        v64 = objc_opt_class();
        replaceMethod<objc_object * {__strong}>(v64, "computeCommandEncoder", MTL4CommandBuffer_computeCommandEncoder);
        v65 = objc_opt_class();
        replaceMethod<objc_object * {__strong}>(v65, namea, MTL4CommandBuffer_mlEncoder);
        v66 = objc_opt_class();
        replaceMethod<void>(v66, "endEncoding", MTL4RenderCommandEncoder_EndEncoding);
        v67 = objc_opt_class();
        replaceMethod<void>(v67, "endEncoding", MTL4ComputeCommandEncoder_EndEncoding);
        if (v6)
        {
          v68 = objc_opt_class();
          replaceMethod<void>(v68, "endEncoding", MTL4MLCommandEncoder_EndEncoding);
        }
      }
    }
  }
}

id MTL4Device_newCommandBuffer(void (*a1)(objc_object *, objc_selector *), objc_object *a2, objc_selector *a3)
{
  v3 = a1(a2, a3);
  if (([_sharedCaptureManager isCapturing] & 1) == 0 && _HUDHasMainLayer == 1)
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    HUDGPUTimeTrackerMTL4CommandBufferCreate(GlobalInstance, v3);
  }

  return v3;
}

void MTL4CommandQueue_commit_count(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  v7 = objc_opt_new();
  [v8 commit:a4 count:a5 options:v7];
}

void MTL4CommandQueue_signalDrawable(void (*a1)(id, uint64_t, id), void *a2, uint64_t a3, void *a4)
{
  v14 = a2;
  v7 = a4;
  v8 = [v7 layer];
  v9 = HUDMTLLayerTrackingForLayer(v8);

  v10 = [v9 frameEventValue];
  v11 = [v9 frameEvent];
  v12 = MTLHud_objc_unwrap(v11);

  if (v9)
  {
    v13 = [v9 frameEvent];

    if (v13)
    {
      [v14 signalEvent:v12 value:v10];
    }
  }

  if ([v9 metal4SignalDrawable:v7])
  {
    [v14 waitForEvent:v12 value:v10 + 1];
  }

  a1(v14, a3, v7);
}

void MTL4CommandQueue_commit_count_options(void (*a1)(id, uint64_t, id *, unint64_t, id), void *a2, uint64_t a3, id *a4, unint64_t a5, void *a6)
{
  v14 = a2;
  v11 = a6;
  if (([_sharedCaptureManager isCapturing] & 1) == 0 && _HUDHasMainLayer == 1)
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    v13 = HUDGPUTimeTrackerMTL4CommandBufferCommit(GlobalInstance, v14, a4, a5, v11);

    v11 = v13;
  }

  a1(v14, a3, a4, a5, v11);
}

void MTL4CommandBuffer_begin(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v5 = a4;
  {
    MTL4CommandBuffer_begin(void (*)(void),objc_object *,objc_selector *,objc_object  {objcproto20MTL4CommandAllocator}*)::options = objc_opt_new();
  }

  [v6 beginCommandBufferWithAllocator:v5 options:{MTL4CommandBuffer_begin(void (*)(void), objc_object *, objc_selector *, objc_object  {objcproto20MTL4CommandAllocator}*)::options}];
}

void sub_2FCC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{

  _Unwind_Resume(a1);
}

void MTL4CommandBuffer_begin_options(void (*a1)(id, uint64_t, id, id), void *a2, uint64_t a3, void *a4, void *a5)
{
  v12 = a2;
  v9 = a4;
  v10 = a5;
  a1(v12, a3, v9, v10);
  if (([_sharedCaptureManager isCapturing] & 1) == 0 && _HUDHasMainLayer == 1)
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    HUDGPUTimeTrackerMTL4CommandBufferBegin(GlobalInstance, v12, v9);
  }
}

void MTL4CommandBuffer_end(void (*a1)(void), objc_object *a2, objc_selector *a3)
{
  v5 = a2;
  a1();
  if (([_sharedCaptureManager isCapturing] & 1) == 0 && _HUDHasMainLayer == 1)
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    HUDGPUTimeTrackerMTL4CommandBufferEnd(GlobalInstance, v5);
  }
}

id MTL4CommandBuffer_renderCommandEncoderWithDescriptor(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = [a2 renderCommandEncoderWithDescriptor:a4 options:0];

  return v4;
}

id MTL4CommandBuffer_renderCommandEncoderWithDescriptor_options(void (*a1)(id, uint64_t, id, uint64_t), void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a4;
  if (([_sharedCaptureManager isCapturing] & 1) != 0 || _HUDHasMainLayer != 1)
  {
    v12 = a1(v9, a3, v10, a5);
  }

  else
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = ___ZL60MTL4CommandBuffer_renderCommandEncoderWithDescriptor_optionsPFvvEP11objc_objectP13objc_selectorP24MTL4RenderPassDescriptorm_block_invoke;
    v14[3] = &unk_693E8;
    v16 = a1;
    v15 = v9;
    v17 = a3;
    v18 = a5;
    v12 = HUDGPUTimeTrackerCreateMTL4RenderEncder(GlobalInstance, v15, v10, v14);
  }

  return v12;
}

id MTL4CommandBuffer_computeCommandEncoder(void (*a1)(objc_object *, objc_selector *), objc_object *a2, objc_selector *a3)
{
  v5 = a2;
  if (([_sharedCaptureManager isCapturing] & 1) != 0 || _HUDHasMainLayer != 1)
  {
    v7 = a1(v5, a3);
  }

  else
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = ___ZL39MTL4CommandBuffer_computeCommandEncoderPFvvEP11objc_objectP13objc_selector_block_invoke;
    v9[3] = &unk_69410;
    v11 = a1;
    v10 = v5;
    v12 = a3;
    v7 = HUDGPUTimeTrackerCreateMTL4ComputeEncoder(GlobalInstance, v10, v9);
  }

  return v7;
}

id MTL4CommandBuffer_mlEncoder(void (*a1)(objc_object *, objc_selector *), objc_object *a2, objc_selector *a3)
{
  v5 = a2;
  if (([_sharedCaptureManager isCapturing] & 1) != 0 || _HUDHasMainLayer != 1)
  {
    v7 = a1(v5, a3);
  }

  else
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = ___ZL27MTL4CommandBuffer_mlEncoderPFvvEP11objc_objectP13objc_selector_block_invoke;
    v9[3] = &unk_69410;
    v11 = a1;
    v10 = v5;
    v12 = a3;
    v7 = HUDGPUTimeTrackerCreateMTL4MLEncoder(GlobalInstance, v10, v9);
  }

  return v7;
}

void MTL4RenderCommandEncoder_EndEncoding(void (*a1)(objc_object *, objc_selector *), objc_object *a2, objc_selector *a3)
{
  v6 = a2;
  if (([_sharedCaptureManager isCapturing] & 1) == 0 && _HUDHasMainLayer == 1)
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    HUDGPOUTimeTrackerEndMTL4RenderEncoder(GlobalInstance, v6);
  }

  a1(v6, a3);
}

void MTL4ComputeCommandEncoder_EndEncoding(void (*a1)(objc_object *, objc_selector *), objc_object *a2, objc_selector *a3)
{
  v6 = a2;
  if (([_sharedCaptureManager isCapturing] & 1) == 0 && _HUDHasMainLayer == 1)
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    HUDGPOUTimeTrackerEndMTL4ComputeEncoder(GlobalInstance, v6);
  }

  a1(v6, a3);
}

void MTL4MLCommandEncoder_EndEncoding(void (*a1)(objc_object *, objc_selector *), objc_object *a2, objc_selector *a3)
{
  v6 = a2;
  if (([_sharedCaptureManager isCapturing] & 1) == 0 && _HUDHasMainLayer == 1)
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    HUDGPOUTimeTrackerEndMTL4MLEncoder(GlobalInstance, v6);
  }

  a1(v6, a3);
}

void CAMetalDrawablePresentCommon(void *a1)
{
  v4 = a1;
  v1 = [v4 layer];
  v2 = HUDMTLLayerTrackingForLayer(v1);
  v3 = v2;
  if (v2)
  {
    [v2 presentDrawable:v4];
  }
}

void sub_30458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id ___ZL51MTLCommandBuffer_renderCommandEncoderWithDescriptorPFvvEP11objc_objectP13objc_selectorP23MTLRenderPassDescriptor_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 40))(*(a1 + 32), *(a1 + 48), a2);

  return v2;
}

id ___ZL52MTLCommandBuffer_computeCommandEncoderWithDescriptorPFvvEP11objc_objectP13objc_selectorP24MTLComputePassDescriptor_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 40))(*(a1 + 32), *(a1 + 48), a2);

  return v2;
}

id ___ZL49MTLCommandBuffer_blitCommandEncoderWithDescriptorPFvvEP11objc_objectP13objc_selectorP21MTLBlitPassDescriptor_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 40))(*(a1 + 32), *(a1 + 48), a2);

  return v2;
}

id ___ZL58MTLCommandBuffer_resourceStateCommandEncoderWithDescriptorPFvvEP11objc_objectP13objc_selectorP30MTLResourceStatePassDescriptor_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 40))(*(a1 + 32), *(a1 + 48), a2);

  return v2;
}

id ___ZL66MTLCommandBuffer_accelerationStructureCommandEncoderWithDescriptorPFvvEP11objc_objectP13objc_selectorP38MTLAccelerationStructurePassDescriptor_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 40))(*(a1 + 32), *(a1 + 48), a2);

  return v2;
}

id ___ZL60MTL4CommandBuffer_renderCommandEncoderWithDescriptor_optionsPFvvEP11objc_objectP13objc_selectorP24MTL4RenderPassDescriptorm_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 40))(*(a1 + 32), *(a1 + 48), a2, *(a1 + 56));

  return v2;
}

id ___ZL13replaceMethodIU8__strongP11objc_objectJEEvP10objc_classP13objc_selectorPFT_PFvvES1_S6_DpT0_E_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 32))(*(a1 + 40), a2, *(a1 + 48));

  return v2;
}

id ___ZL13replaceMethodIU8__strongP11objc_objectJU8__strongPU26objcproto15CAMetalDrawable11objc_objectEEvP10objc_classP13objc_selectorPFT_PFvvES1_S9_DpT0_E_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 32))(*(a1 + 40), a2, *(a1 + 48), a3);

  return v3;
}

id ___ZL13replaceMethodIU8__strongP11objc_objectJU8__strongP26MTLCommandBufferDescriptorEEvP10objc_classP13objc_selectorPFT_PFvvES1_S9_DpT0_E_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 32))(*(a1 + 40), a2, *(a1 + 48), a3);

  return v3;
}

id ___ZL13replaceMethodIU8__strongP11objc_objectJU8__strongP23MTLRenderPassDescriptorEEvP10objc_classP13objc_selectorPFT_PFvvES1_S9_DpT0_E_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 32))(*(a1 + 40), a2, *(a1 + 48), a3);

  return v3;
}

id ___ZL13replaceMethodIU8__strongP11objc_objectJ15MTLDispatchTypeEEvP10objc_classP13objc_selectorPFT_PFvvES1_S7_DpT0_E_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 32))(*(a1 + 40), a2, *(a1 + 48), a3);

  return v3;
}

id ___ZL13replaceMethodIU8__strongP11objc_objectJU8__strongP24MTLComputePassDescriptorEEvP10objc_classP13objc_selectorPFT_PFvvES1_S9_DpT0_E_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 32))(*(a1 + 40), a2, *(a1 + 48), a3);

  return v3;
}

id ___ZL13replaceMethodIU8__strongP11objc_objectJU8__strongP21MTLBlitPassDescriptorEEvP10objc_classP13objc_selectorPFT_PFvvES1_S9_DpT0_E_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 32))(*(a1 + 40), a2, *(a1 + 48), a3);

  return v3;
}

id ___ZL13replaceMethodIU8__strongP11objc_objectJU8__strongP30MTLResourceStatePassDescriptorEEvP10objc_classP13objc_selectorPFT_PFvvES1_S9_DpT0_E_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 32))(*(a1 + 40), a2, *(a1 + 48), a3);

  return v3;
}

id ___ZL13replaceMethodIU8__strongP11objc_objectJU8__strongP38MTLAccelerationStructurePassDescriptorEEvP10objc_classP13objc_selectorPFT_PFvvES1_S9_DpT0_E_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 32))(*(a1 + 40), a2, *(a1 + 48), a3);

  return v3;
}

id ___ZL13replaceMethodIU8__strongP11objc_objectJU8__strongP24MTL4RenderPassDescriptorEEvP10objc_classP13objc_selectorPFT_PFvvES1_S9_DpT0_E_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 32))(*(a1 + 40), a2, *(a1 + 48), a3);

  return v3;
}

id ___ZL13replaceMethodIU8__strongP11objc_objectJU8__strongP24MTL4RenderPassDescriptormEEvP10objc_classP13objc_selectorPFT_PFvvES1_S9_DpT0_E_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (*(a1 + 32))(*(a1 + 40), a2, *(a1 + 48), a3, a4);

  return v4;
}

void sub_3156C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::locale a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a13);
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t _HUDIOReportSamplePointsAddDie(HUDIOReportSamplePoints *a1, unsigned int a2)
{
  v2 = a2;
  begin = a1->dies.__begin_;
  end = a1->dies.__end_;
  if (0x8E38E38E38E38E39 * ((end - a1->dies.__begin_) >> 3) <= a2)
  {
    do
    {
      v12 = 0;
      *__p = 0u;
      memset(v10, 0, sizeof(v10));
      if (end >= a1->dies.__cap_)
      {
        v6 = std::vector<HUDIOReportDie>::__emplace_back_slow_path<HUDIOReportDie>(a1, v10);
        v7 = __p[0];
        a1->dies.__end_ = v6;
        if (v7)
        {
          __p[1] = v7;
          operator delete(v7);
        }
      }

      else
      {
        *(end + 1) = 0uLL;
        *(end + 2) = 0uLL;
        *end = 0uLL;
        *(end + 24) = *(&v10[1] + 8);
        *(&v10[1] + 1) = 0;
        *&v10[2] = 0;
        *(end + 5) = *(&v10[2] + 1);
        *(end + 6) = 0;
        *(&v10[2] + 1) = 0;
        *(end + 7) = 0;
        *(end + 8) = 0;
        *(end + 3) = *__p;
        *(end + 8) = v12;
        __p[0] = 0;
        __p[1] = 0;
        v12 = 0;
        a1->dies.__end_ = (end + 72);
      }

      v13 = &v10[1] + 1;
      std::vector<HUDIOReportDie::Cluster>::__destroy_vector::operator()[abi:ne200100](&v13);
      begin = a1->dies.__begin_;
      end = a1->dies.__end_;
      *&v8 = 0xFFFFFFFFLL;
      *(&v8 + 1) = 0xFFFFFFFFLL;
      *(end - 72) = v8;
      *(end - 7) = 0xFFFFFFFFLL;
    }

    while (0x8E38E38E38E38E39 * ((end - begin) >> 3) <= v2);
  }

  return begin + 72 * v2;
}

void _HUDIOReportDieAddCPUCore(HUDIOReportDie *a1, unsigned int a2, unsigned int a3, int a4, unsigned int a5)
{
  v9 = *(a1 + 3);
  v8 = *(a1 + 4);
  v10 = (a1 + 24);
  for (i = a3; 0x6DB6DB6DB6DB6DB7 * ((v8 - v9) >> 3) <= i; v8 = *(a1 + 4))
  {
    v19 = 0;
    memset(__p, 0, sizeof(__p));
    *v17 = 0u;
    if (v8 >= *(a1 + 5))
    {
      v13 = std::vector<HUDIOReportDie::Cluster>::__emplace_back_slow_path<HUDIOReportDie::Cluster>(v10, v17);
      v14 = __p[1];
      *(a1 + 4) = v13;
      if (v14)
      {
        __p[2] = v14;
        operator delete(v14);
      }
    }

    else
    {
      v8[2] = 0;
      v8[3] = 0;
      *v8 = 0;
      v8[1] = 0;
      *v8 = *v17;
      v8[2] = __p[0];
      v17[0] = 0;
      v17[1] = 0;
      __p[0] = 0;
      v8[4] = 0;
      v8[5] = 0;
      *(v8 + 3) = *&__p[1];
      v8[5] = __p[3];
      memset(&__p[1], 0, 24);
      v8[6] = v19;
      *(a1 + 4) = v8 + 7;
    }

    if (v17[0])
    {
      v17[1] = v17[0];
      operator delete(v17[0]);
    }

    v9 = *(a1 + 3);
  }

  if (a4 == 80)
  {
    v15 = v9 + 56 * i;
  }

  else
  {
    v15 = v9 + 56 * i + 24;
  }

  for (j = *v15; a2 >= ((*(v15 + 8) - *v15) >> 3); j = *v15)
  {
    v17[0] = 0xFFFFFFFFLL;
    std::vector<unsigned long>::push_back[abi:ne200100](v15, v17);
  }

  j[a2] = a5;
}

void std::vector<unsigned long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

void sub_31E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::locale a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a18);
  if (a26)
  {
    a27 = a26;
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

void sub_3287C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  v29 = *(v27 - 80);
  if (v29)
  {
    *(v27 - 72) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t std::vector<HUDIOReportDie>::__emplace_back_slow_path<HUDIOReportDie>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HUDIOReportDie>>(a1, v6);
  }

  v7 = 72 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *&v17 = 72 * v2 + 72;
  v9 = a1[1];
  v10 = 72 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HUDIOReportDie>,HUDIOReportDie*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<HUDIOReportDie>::~__split_buffer(&v15);
  return v14;
}

void sub_32D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<HUDIOReportDie>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HUDIOReportDie>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HUDIOReportDie>,HUDIOReportDie*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 16);
      *a4 = *v7;
      *(a4 + 16) = v8;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      v7 += 72;
      a4 += 72;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator<HUDIOReportDie>::destroy[abi:ne200100](a1, v5);
      v5 += 72;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HUDIOReportDie>,HUDIOReportDie*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

void std::allocator<HUDIOReportDie>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3)
  {
    *(a2 + 56) = v3;
    operator delete(v3);
  }

  v4 = (a2 + 24);
  std::vector<HUDIOReportDie::Cluster>::__destroy_vector::operator()[abi:ne200100](&v4);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HUDIOReportDie>,HUDIOReportDie*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<HUDIOReportDie>,HUDIOReportDie*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<HUDIOReportDie>,HUDIOReportDie*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 72;
      std::allocator<HUDIOReportDie>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<HUDIOReportDie>::~__split_buffer(void **a1)
{
  std::__split_buffer<HUDIOReportDie>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<HUDIOReportDie>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 72;
    std::allocator<HUDIOReportDie>::destroy[abi:ne200100](v4, i - 72);
  }
}

void HUDIOReportDie::~HUDIOReportDie(HUDIOReportDie *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = (this + 24);
  std::vector<HUDIOReportDie::Cluster>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<HUDIOReportDie::Cluster>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 56;
        std::allocator<HUDIOReportDie::Cluster>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<HUDIOReportDie::Cluster>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;

    operator delete(v4);
  }
}

uint64_t std::vector<HUDIOReportDie::Cluster>::__emplace_back_slow_path<HUDIOReportDie::Cluster>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HUDIOReportDie::Cluster>>(a1, v6);
  }

  v7 = 56 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = *(a2 + 24);
  v8 = *(a2 + 48);
  *(v7 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(v7 + 48) = v8;
  *&v17 = 56 * v2 + 56;
  v9 = a1[1];
  v10 = (56 * v2 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HUDIOReportDie::Cluster>,HUDIOReportDie::Cluster*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<HUDIOReportDie::Cluster>::~__split_buffer(&v15);
  return v14;
}

void sub_332C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<HUDIOReportDie::Cluster>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HUDIOReportDie::Cluster>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HUDIOReportDie::Cluster>,HUDIOReportDie::Cluster*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v7;
      a4[2] = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v7 + 24);
      v8 = *(v7 + 48);
      a4[5] = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      a4[6] = v8;
      v7 += 56;
      a4 += 7;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator<HUDIOReportDie::Cluster>::destroy[abi:ne200100](a1, v5);
      v5 += 56;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HUDIOReportDie::Cluster>,HUDIOReportDie::Cluster*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HUDIOReportDie::Cluster>,HUDIOReportDie::Cluster*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<HUDIOReportDie::Cluster>,HUDIOReportDie::Cluster*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<HUDIOReportDie::Cluster>,HUDIOReportDie::Cluster*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      std::allocator<HUDIOReportDie::Cluster>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<HUDIOReportDie::Cluster>::~__split_buffer(void **a1)
{
  std::__split_buffer<HUDIOReportDie::Cluster>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<HUDIOReportDie::Cluster>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    std::allocator<HUDIOReportDie::Cluster>::destroy[abi:ne200100](v4, i - 56);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::vector<HUDIOReportDie>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 72;
        std::allocator<HUDIOReportDie>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](std::regex_traits<char> *a1, const char *a2, int a3)
{
  v5 = std::regex_traits<char>::regex_traits(a1);
  LODWORD(v5[1].__loc_.__locale_) = a3;
  *(&v5[1].__loc_.__locale_ + 4) = 0u;
  *(&v5[1].__col_ + 4) = 0u;
  HIDWORD(v5[2].__ct_) = 0;
  strlen(a2);
  std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>();
}

void sub_3368C(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = std::locale::locale(&this->__loc_);
  this->__ct_ = std::locale::use_facet(v2, &std::ctype<char>::id);
  this->__col_ = std::locale::use_facet(&this->__loc_, &std::collate<char>::id);
  return this;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_parse);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v7 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = ++v7;
      do
      {
        v11 = v7;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
      }

      while (v7 != v11);
      if (v11 == v10)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v11 != a3);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
      ++v3;
    }

    if (v3 != a3)
    {
      do
      {
        v6 = v3;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(this, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        ++v3;
      }
    }

    if (v3 != a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, (v8 + 1), a3);
    if (v10 == v8 + 1)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<char const*>(std::basic_regex<char> *a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, __s, v8);
  if (v8 != a3)
  {
    ++v8;
  }

  while (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = a1->__end_;
    if (v10 == v8)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(a1, v8, v10);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
    if (v10 == a3)
    {
      v8 = v10;
    }

    else
    {
      v8 = v10 + 1;
    }
  }

  return v8;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<char const*>(std::basic_regex<char> *a1, std::basic_regex<char> *__s, std::basic_regex<char> *a3)
{
  end = a1->__end_;
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    operator new();
  }

  std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, __s, v8);
  if (v8 != a3)
  {
    v8 = (v8 + 1);
  }

  while (v8 != a3)
  {
    v9 = memchr(v8, 10, a3 - v8);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = a3;
    }

    v11 = a1->__end_;
    if (v10 == v8)
    {
      operator new();
    }

    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(a1, v8, v10);
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v11);
    if (v10 == a3)
    {
      v8 = v10;
    }

    else
    {
      v8 = (&v10->__traits_.__loc_.__locale_ + 1);
    }
  }

  return v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_grammar);
}

void sub_34030(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<std::__empty_state<char>>::shared_ptr[abi:ne200100]<std::__empty_state<char>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *std::__empty_state<char>::~__empty_state(void *a1)
{
  *a1 = off_69860;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void std::__empty_state<char>::~__empty_state(void *a1)
{
  *a1 = off_69860;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  this->__vftable = off_69860;
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

{
  this->__vftable = off_69860;
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  operator delete();
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(a1, a2, a3);
  if (result == a2)
  {
    end = a1->__end_;
    marked_count = a1->__marked_count_;
    v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = a1->__marked_count_ + 1;

      return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(a1, v9, a3, end, marked_count + 1, v10);
    }
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x5B)
  {
    if (v6 != 36)
    {
      v8 = v6 == 40;
      v7 = a2 + 1;
      v8 = !v8 || v7 == a3;
      if (!v8)
      {
        v8 = *v7 == 63;
        v9 = a2 + 2;
        if (v8 && v9 != a3)
        {
          v11 = *v9;
          if (v11 == 33)
          {
            std::regex_traits<char>::regex_traits(&v18.__traits_);
            memset(&v18.__flags_, 0, 40);
            v18.__flags_ = this->__flags_;
            v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v18, v3 + 3, a3);
            marked_count = v18.__marked_count_;
            std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v18, 1, this->__marked_count_);
            this->__marked_count_ += marked_count;
            if (v12 == a3 || *v12 != 41)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
            }

            goto LABEL_31;
          }

          if (v11 == 61)
          {
            std::regex_traits<char>::regex_traits(&v18.__traits_);
            memset(&v18.__flags_, 0, 40);
            v18.__flags_ = this->__flags_;
            v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>(&v18, v3 + 3, a3);
            v13 = v18.__marked_count_;
            std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(this, &v18, 0, this->__marked_count_);
            this->__marked_count_ += v13;
            if (v12 == a3 || *v12 != 41)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
            }

LABEL_31:
            v3 = v12 + 1;
            std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v18.__traits_.__loc_);
            return v3;
          }
        }
      }

      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
    return ++v3;
  }

  if (v6 != 92)
  {
    if (v6 != 94)
    {
      return v3;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
    return ++v3;
  }

  if (a2 + 1 != a3)
  {
    v15 = a2[1];
    if (v15 == 66)
    {
      v16 = 1;
    }

    else
    {
      if (v15 != 98)
      {
        return v3;
      }

      v16 = 0;
    }

    std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(this, v16);
    v3 += 2;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x3E)
  {
    if (v6 != 40)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if (v6 - 42 >= 2)
      {
        goto LABEL_28;
      }

LABEL_34:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
      {
        p_open_count = &this->__open_count_;
        ++this->__open_count_;
        v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, a2 + 3, a3);
        if (v9 == a3)
        {
          goto LABEL_35;
        }

        v10 = v9;
        if (*v9 != 41)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
      marked_count = this->__marked_count_;
      p_open_count = &this->__open_count_;
      ++this->__open_count_;
      v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(this, v3 + 1, a3);
      if (v12 != a3)
      {
        v10 = v12;
        if (*v12 == 41)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, marked_count);
LABEL_25:
          --*p_open_count;
          return v10 + 1;
        }
      }
    }

LABEL_35:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if (*a2 <= 0x5Bu)
  {
    if (v6 == 91)
    {

      return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
    }

    if (v6 == 63)
    {
      goto LABEL_34;
    }

LABEL_28:

    return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(this, a2, a3);
  }

  if (v6 != 92)
  {
    if (v6 == 123)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<char const*>(this, a2, a3);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v13 = a2 + 1;
      if (v11)
      {
        v20 = 1;
      }

      else
      {
        v20 = v13 == a3;
      }

      if (!v20 && *v13 == 63)
      {
        v13 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a1, a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v13 = v16 + 1;
            if (!v11 && v13 != a3 && *v13 == 63)
            {
              v13 = v16 + 2;
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              v18 = __max;
LABEL_33:
              v21 = __s;
              v22 = 0;
LABEL_46:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v13;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            v18 = __max;
LABEL_45:
            v21 = __s;
            v22 = 1;
            goto LABEL_46;
          }

          goto LABEL_58;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_58;
        }

        if (*v23 == 125)
        {
          v13 = v16 + 2;
          if (!v11 && v13 != a3 && *v13 == 63)
          {
            v13 = v16 + 3;
            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
LABEL_36:
          v18 = -1;
          goto LABEL_45;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v10, v23, a3, &v27);
        if (v25 != v23 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v13 = v25 + 1;
            v22 = 1;
            if (!v11 && v13 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v13 = v25 + 2;
              }
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v21 = __s;
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_58:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v12 == 42)
  {
    v13 = a2 + 1;
    if (v11)
    {
      v19 = 1;
    }

    else
    {
      v19 = v13 == a3;
    }

    if (!v19 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v18 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_paren);
}

void *std::__l_anchor_multiline<char>::~__l_anchor_multiline(void *a1)
{
  *a1 = off_69860;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void *a1)
{
  *a1 = off_69860;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void *std::__r_anchor_multiline<char>::~__r_anchor_multiline(void *a1)
{
  *a1 = off_69860;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void *a1)
{
  *a1 = off_69860;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = off_69920;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_69860;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = off_69920;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_69860;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

uint64_t std::__lookahead<char,std::regex_traits<char>>::__lookahead[abi:ne200100](uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = off_69968;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 56);
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  return a1;
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = off_69968;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_69860;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = off_69968;
  locale = a1[8].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_69860;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete();
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  memset(&v23, 0, 17);
  v24 = 0;
  v25 = 0;
  memset(&__p, 0, sizeof(__p));
  v4 = (*(a1 + 44) + 1);
  v5 = *(a2 + 16);
  v19.first = *(a2 + 24);
  v19.second = v19.first;
  v19.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v4, &v19);
  v20 = v5;
  v21 = v5;
  v22 = 0;
  v23 = v19;
  v25 = v5;
  v24 = 1;
  v6 = *(a2 + 88) & 0xFFF;
  v7 = *(a2 + 16);
  if (v7 == *(a2 + 8))
  {
    v8 = *(a2 + 92);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v7, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v8))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  v14 = 1;
  do
  {
    v15 = &begin[v14];
    v16 = v12 + 24 * v11;
    *v16 = v15->std::pair<const char *, const char *>;
    *(v16 + 16) = v15->matched;
    v14 = v13;
    ++v11;
  }

  while (v10 > v13++);
LABEL_11:
  __p.__end_ = begin;
  operator delete(begin);
}

void sub_3572C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::match_results<char const*>::__init(std::match_results<const char *> *this, unsigned int __s, const char *__f, const char *__l, BOOL __no_update_pos)
{
  this->__unmatched_.first = __l;
  p_unmatched = &this->__unmatched_;
  this->__unmatched_.second = __l;
  this->__unmatched_.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&this->__matches_, __s, &this->__unmatched_);
  this->__prefix_.first = __f;
  this->__prefix_.second = __f;
  this->__prefix_.matched = 0;
  this->__suffix_ = *p_unmatched;
  if (!__no_update_pos)
  {
    this->__position_start_ = __f;
  }

  this->__ready_ = 1;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    *&v37 = *&v36[32];
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v42;
  *(v42 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v42 - 40), *(a1 + 32));
  v14 = v42;
  *(v42 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v42;
    ++v15;
    if (v41 == v42)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v42 - 96;
    std::allocator<std::__state<char>>::destroy[abi:ne200100](&v41, (v42 - 96));
    v42 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v41;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v24;
}

void sub_35B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= __n)
      {
        v8 = __n;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v9);
    }

    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(a1, a2);
  }

  std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::__state<char>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3);
  v4 = __sz >= v3;
  v5 = __sz - v3;
  if (v5 != 0 && v4)
  {
    std::vector<std::sub_match<char const*>>::__append(this, v5, __x);
  }

  else if (!v4)
  {
    this->__end_ = &this->__begin_[__sz];
  }
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append(this, __sz - v2);
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_complexity);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, __re_err_unknown);
}

uint64_t std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char>>>(a1, v6);
  }

  v7 = 96 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 80) = v9;
  *&v18 = 96 * v2 + 96;
  v10 = *(a1 + 8);
  v11 = 96 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__state<char>>,std::__state<char>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::__state<char>>::~__split_buffer(&v16);
  return v15;
}

void sub_360D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::__state<char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::__state<char>>,std::__state<char>*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 1);
      *a4 = *v7;
      *(a4 + 16) = v8;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v7 + 2);
      *(a4 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v7 + 7);
      *(a4 + 72) = v7[9];
      v7[7] = 0;
      v7[8] = 0;
      v7[9] = 0;
      v9 = v7[10];
      *(a4 + 85) = *(v7 + 85);
      *(a4 + 80) = v9;
      v7 += 12;
      a4 += 96;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      std::allocator<std::__state<char>>::destroy[abi:ne200100](a1, v5);
      v5 += 12;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::allocator<std::__state<char>>::destroy[abi:ne200100](uint64_t a1, void *a2)
{
  v3 = a2[7];
  if (v3)
  {
    a2[8] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;

    operator delete(v4);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 12;
      std::allocator<std::__state<char>>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<std::__state<char>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::__state<char>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::__state<char>>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 96;
    std::allocator<std::__state<char>>::destroy[abi:ne200100](v4, (i - 96));
  }
}

void std::vector<std::sub_match<char const*>>::__append(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v11 = &end[__n];
      v12 = 24 * __n;
      do
      {
        v13 = __x->std::pair<const char *, const char *>;
        *&end->matched = *&__x->matched;
        end->std::pair<const char *, const char *> = v13;
        ++end;
        v12 -= 24;
      }

      while (v12);
      end = v11;
    }

    this->__end_ = end;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v8 = v7 + __n;
    if (v7 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(this, v10);
    }

    v14 = 24 * __n;
    v15 = 24 * v7;
    do
    {
      v16 = __x->std::pair<const char *, const char *>;
      *(v15 + 16) = *&__x->matched;
      *v15 = v16;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
    begin = this->__begin_;
    v18 = this->__end_;
    v19 = (24 * v7 + this->__begin_ - v18);
    if (v18 != this->__begin_)
    {
      v20 = (24 * v7 + this->__begin_ - v18);
      do
      {
        v21 = begin->std::pair<const char *, const char *>;
        *(v20 + 2) = *&begin->matched;
        *v20 = v21;
        v20 += 24;
        ++begin;
      }

      while (begin != v18);
      begin = this->__begin_;
    }

    this->__begin_ = v19;
    this->__end_ = (24 * v7 + 24 * __n);
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__append(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 16 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = end - this->__begin_;
    v7 = __n + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - this->__begin_;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(this, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * __n);
    v11 = &v10[16 * __n];
    v12 = this->__end_ - this->__begin_;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], this->__begin_, v12);
    begin = this->__begin_;
    this->__begin_ = v13;
    this->__end_ = v11;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_366E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_36754(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(a1, a2);
  }

  std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 12;
        std::allocator<std::__state<char>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = a2 + 1;
    if (a2 + 1 == a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<char const*>(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<char const*>(a1, v3 + 1, a3), v7 == v5))
    {
      v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, v3 + 1, a3, 0);
      if (v9 != v5)
      {
        return v9;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_23;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_23;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++v5;
    }

    if (v5 == a3)
    {
      v8 = v5;
    }

    else
    {
      do
      {
        v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<char const*>(a1, v5, a3, v7);
        v9 = v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    if (v8 == a3)
    {
      goto LABEL_23;
    }

    if (*v8 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
      ++v8;
    }

    if (v8 == a3 || *v8 != 93)
    {
LABEL_23:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v8 + 1;
  }

  return a2;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_badrepeat);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x7800000080004F1) == 0;
    if (v5 && (v4 - 123) >= 3)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      ++v3;
    }
  }

  return v3;
}

void *std::__match_any_but_newline<char>::~__match_any_but_newline(void *a1)
{
  *a1 = off_69860;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void *a1)
{
  *a1 = off_69860;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_escape);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_decimal_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 0);
      ++v3;
    }

    else if ((v4 - 49) <= 8)
    {
      v5 = (v4 - 48);
      if (++v3 != a3)
      {
        while (1)
        {
          v6 = *v3;
          if ((v6 - 48) > 9)
          {
            break;
          }

          if (v5 >= 0x19999999)
          {
            goto LABEL_14;
          }

          v5 = v6 + 10 * v5 - 48;
          if (++v3 == a3)
          {
            v3 = a3;
            break;
          }
        }

        if (!v5)
        {
          goto LABEL_14;
        }
      }

      if (v5 > a1->__marked_count_)
      {
LABEL_14:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v5);
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = *a2;
  if (v4 > 0x63)
  {
    if (v4 == 119)
    {
      v5 = 0;
      goto LABEL_14;
    }

    if (v4 == 115)
    {
      v10 = 0;
      goto LABEL_17;
    }

    if (v4 != 100)
    {
      return v3;
    }

    v6 = 0;
LABEL_12:
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v6);
    v8 = started->__mask_ | 0x400;
LABEL_18:
    started->__mask_ = v8;
    goto LABEL_19;
  }

  switch(v4)
  {
    case 'D':
      v6 = 1;
      goto LABEL_12;
    case 'S':
      v10 = 1;
LABEL_17:
      started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v10);
      v8 = started->__mask_ | 0x4000;
      goto LABEL_18;
    case 'W':
      v5 = 1;
LABEL_14:
      v9 = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, v5);
      v9->__mask_ |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v9, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 > 0x71u)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (!this)
        {
          v10 = 13;
          goto LABEL_69;
        }

        v9 = this;
        v10 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_64;
        }

        if (!this)
        {
          v10 = 9;
          goto LABEL_69;
        }

        v9 = this;
        v10 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_72;
        }

        v11 = a2[1];
        if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38 && (v11 | 0x20u) - 97 >= 6)
        {
          goto LABEL_72;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_72;
        }

        v12 = *v4;
        v13 = -48;
        if ((v12 & 0xF8) != 0x30 && (v12 & 0xFE) != 0x38)
        {
          v12 |= 0x20u;
          if ((v12 - 97) >= 6)
          {
            goto LABEL_72;
          }

          v13 = -87;
        }

        v6 = 16 * (v13 + v12);
LABEL_39:
        if (v4 + 1 == a3)
        {
          goto LABEL_72;
        }

        v14 = v4[1];
        v15 = -48;
        if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
        {
          v14 |= 0x20u;
          if ((v14 - 97) >= 6)
          {
            goto LABEL_72;
          }

          v15 = -87;
        }

        if (v4 + 2 != a3)
        {
          v16 = v4[2];
          v17 = -48;
          if ((v16 & 0xF8) == 0x30 || (v16 & 0xFE) == 0x38)
          {
LABEL_49:
            v18 = v17 + v16 + 16 * (v15 + v6 + v14);
            if (this)
            {
              std::string::operator=(this, v18);
            }

            else
            {
              std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v18);
            }

            v4 += 3;
            return v4;
          }

          v16 |= 0x20u;
          if ((v16 - 97) < 6)
          {
            v17 = -87;
            goto LABEL_49;
          }
        }

LABEL_72:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_39;
        }

LABEL_64:
        if ((v5 & 0x80) == 0 && (a1->__traits_.__ct_->__tab_[v5] & 0x500) != 0)
        {
          goto LABEL_72;
        }

        v10 = *a2;
        if (this)
        {
          v9 = this;
          goto LABEL_68;
        }

LABEL_69:
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v10);
        return ++v4;
      }

      if (!this)
      {
        v10 = 11;
        goto LABEL_69;
      }

      v9 = this;
      v10 = 11;
    }

LABEL_68:
    std::string::operator=(v9, v10);
    return ++v4;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (!this)
      {
        v10 = 12;
        goto LABEL_69;
      }

      v9 = this;
      v10 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_64;
      }

      if (!this)
      {
        v10 = 10;
        goto LABEL_69;
      }

      v9 = this;
      v10 = 10;
    }

    goto LABEL_68;
  }

  if (v5 == 48)
  {
    if (!this)
    {
      v10 = 0;
      goto LABEL_69;
    }

    v9 = this;
    v10 = 0;
    goto LABEL_68;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_72;
    }

    goto LABEL_64;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_72;
  }

  v7 = a2[1];
  if (((v7 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_72;
  }

  v8 = v7 & 0x1F;
  if (this)
  {
    std::string::operator=(this, v8);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
  }

  v4 += 2;
  return v4;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_char(std::basic_regex<char> *this, std::basic_regex<char>::value_type __c)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  std::regex_error::regex_error(exception, error_backref);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if ((flags & 1) == 0)
  {
    if ((flags & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__match_char_icase[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_699F8;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  return a1;
}

void sub_374E4(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  v1->__locale_ = off_69860;
  locale = v1[1].__locale_;
  if (locale)
  {
    std::shared_ptr<std::__empty_state<char>>::shared_ptr[abi:ne200100]<std::__empty_state<char>,0>(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = off_699F8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_69860;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = off_699F8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_69860;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = off_69A40;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_69860;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = off_69A40;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_69860;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void *std::__match_char<char>::~__match_char(void *a1)
{
  *a1 = off_69860;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void std::__match_char<char>::~__match_char(void *a1)
{
  *a1 = off_69860;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = off_69AD0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_69860;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = off_69AD0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_69860;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      v8 = *(v3 + 8) != *v3;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v9 = 0;
      while (1)
      {
        v10 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v9));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v9));
        if (v10 != result)
        {
          break;
        }

        if (v4 == ++v9)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = off_69B18;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_69860;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = off_69B18;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_69860;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete();
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = *(a2 + 16);
      v8 = v4;
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v7++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v8)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void *std::__back_ref<char>::~__back_ref(void *a1)
{
  *a1 = off_69860;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void std::__back_ref<char>::~__back_ref(void *a1)
{
  *a1 = off_69860;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  operator delete();
}

unsigned int *std::__back_ref<char>::__exec(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:ne200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:ne200100](a1 + 40, &v7);
}

uint64_t std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = off_69BA8;
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_381EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v15 = v10[8].__locale_;
  if (v15)
  {
    v10[9].__locale_ = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    v10[6].__locale_ = v16;
    operator delete(v16);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v11;
  v17 = v10[1].__locale_;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  operator delete();
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v35 = 0;
    negate = this->__negate_;
    goto LABEL_80;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_57;
  }

  v111 = *current;
  v6 = current[1];
  v112 = current[1];
  if (this->__icase_)
  {
    v111 = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    v112 = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  std::regex_traits<char>::__lookup_collatename<char *>(&this->__traits_, &v111, &v113, &__p);
  if ((v110 & 0x80000000) == 0)
  {
    if (v110)
    {
      goto LABEL_8;
    }

LABEL_57:
    negate = 0;
    v35 = 1;
    goto LABEL_58;
  }

  v37 = v109;
  operator delete(__p);
  if (!v37)
  {
    goto LABEL_57;
  }

LABEL_8:
  begin = this->__digraphs_.__begin_;
  v8 = this->__digraphs_.__end_ - begin;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    p_second = &begin->second;
    while (v111 != *(p_second - 1) || v112 != *p_second)
    {
      p_second += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_215;
  }

LABEL_17:
  if (this->__collate_ && this->__ranges_.__begin_ != this->__ranges_.__end_)
  {
    p_p = &__p;
    std::regex_traits<char>::transform<char *>(&this->__traits_, &v111, &v113);
    v13 = this->__ranges_.__begin_;
    v14 = v110;
    v15 = this->__ranges_.__end_ - v13;
    if (v15)
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
      v105 = v110;
      if (v110 >= 0)
      {
        v17 = v110;
      }

      else
      {
        v17 = v109;
      }

      if (v110 < 0)
      {
        p_p = __p;
      }

      v18 = v16 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
      v19 = &v13->second.__r_.__value_.__r.__words[2] + 7;
      v20 = 1;
      v21 = 1;
      while (1)
      {
        v22 = *(v19 - 24);
        if (v22 >= 0)
        {
          v23 = *(v19 - 24);
        }

        else
        {
          v23 = *(v19 - 39);
        }

        if (v22 >= 0)
        {
          v24 = (v19 - 47);
        }

        else
        {
          v24 = *(v19 - 47);
        }

        if (v23 >= v17)
        {
          v25 = v17;
        }

        else
        {
          v25 = v23;
        }

        v26 = memcmp(p_p, v24, v25);
        v27 = v17 >= v23;
        if (v26)
        {
          v27 = v26 >= 0;
        }

        if (v27)
        {
          v28 = *v19;
          if (v28 >= 0)
          {
            v29 = *v19;
          }

          else
          {
            v29 = *(v19 - 15);
          }

          if (v28 >= 0)
          {
            v30 = (v19 - 23);
          }

          else
          {
            v30 = *(v19 - 23);
          }

          if (v17 >= v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = v17;
          }

          v32 = memcmp(v30, p_p, v31);
          v33 = v29 >= v17;
          if (v32)
          {
            v33 = v32 >= 0;
          }

          if (v33)
          {
            break;
          }
        }

        v21 = v20++ < v16;
        v19 += 48;
        if (!--v18)
        {
          v34 = 0;
          goto LABEL_164;
        }
      }

      v34 = 5;
LABEL_164:
      v14 = v105;
    }

    else
    {
      v21 = 0;
      v34 = 0;
    }

    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v21)
    {
      v85 = 1;
      goto LABEL_195;
    }
  }

  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    v85 = 0;
    goto LABEL_197;
  }

  std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v111, &v113, &__p);
  v86 = this->__equivalences_.__begin_;
  v87 = v110;
  v88 = this->__equivalences_.__end_ - v86;
  if (v88)
  {
    v89 = 0xAAAAAAAAAAAAAAABLL * (v88 >> 3);
    if (v110 >= 0)
    {
      v90 = v110;
    }

    else
    {
      v90 = v109;
    }

    if (v110 >= 0)
    {
      v91 = &__p;
    }

    else
    {
      v91 = __p;
    }

    if (v89 <= 1)
    {
      v92 = 1;
    }

    else
    {
      v92 = 0xAAAAAAAAAAAAAAABLL * (v88 >> 3);
    }

    v93 = 1;
    v94 = 1;
    while (1)
    {
      size = HIBYTE(v86->__r_.__value_.__r.__words[2]);
      v96 = size;
      if ((size & 0x80u) != 0)
      {
        size = v86->__r_.__value_.__l.__size_;
      }

      if (v90 == size)
      {
        v97 = v96 >= 0 ? v86 : v86->__r_.__value_.__r.__words[0];
        if (!memcmp(v91, v97, v90))
        {
          break;
        }
      }

      v94 = v93++ < v89;
      ++v86;
      if (!--v92)
      {
        goto LABEL_192;
      }
    }

    v85 = 1;
    v34 = 5;
    if (v87 < 0)
    {
LABEL_193:
      operator delete(__p);
    }
  }

  else
  {
    v94 = 0;
LABEL_192:
    v34 = 0;
    v85 = 0;
    if (v87 < 0)
    {
      goto LABEL_193;
    }
  }

  if (!v94)
  {
LABEL_197:
    if (v111 < 0)
    {
      neg_mask = this->__neg_mask_;
    }

    else
    {
      mask = this->__mask_;
      tab = this->__traits_.__ct_->__tab_;
      v100 = tab[v111];
      if (((v100 & mask) != 0 || v111 == 95 && (mask & 0x80) != 0) && (v112 & 0x8000000000000000) == 0 && ((tab[v112] & mask) != 0 || (mask & 0x80) != 0 && v112 == 95))
      {
        goto LABEL_215;
      }

      neg_mask = this->__neg_mask_;
      if ((v100 & neg_mask) != 0 || v111 == 95 && (neg_mask & 0x80) != 0)
      {
LABEL_214:
        negate = v85;
LABEL_216:
        v35 = 2;
        goto LABEL_80;
      }
    }

    if ((v112 & 0x8000000000000000) == 0)
    {
      if ((this->__traits_.__ct_->__tab_[v112] & neg_mask) == 0)
      {
        negate = 1;
        if (v112 != 95 || (neg_mask & 0x80) == 0)
        {
          goto LABEL_216;
        }
      }

      goto LABEL_214;
    }

LABEL_215:
    negate = 1;
    goto LABEL_216;
  }

LABEL_195:
  v35 = 2;
  negate = v85;
  if (v34)
  {
    goto LABEL_80;
  }

LABEL_58:
  v38 = *a2->__current_;
  v111 = *a2->__current_;
  if (this->__icase_)
  {
    LODWORD(v38) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v38);
    v111 = v38;
  }

  v39 = this->__chars_.__begin_;
  v40 = (this->__chars_.__end_ - v39);
  if (v40)
  {
    if (v40 <= 1)
    {
      v40 = (&dword_0 + 1);
    }

    do
    {
      v41 = *v39++;
      if (v41 == v38)
      {
        goto LABEL_79;
      }
    }

    while (--v40);
  }

  v42 = this->__neg_mask_;
  if (v42 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v38 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v38] & v42) == 0)
    {
      v43 = (v38 == 95) & (v42 >> 7);
    }

    else
    {
      LOBYTE(v43) = 1;
    }

    end = this->__neg_chars_.__end_;
    v45 = memchr(this->__neg_chars_.__begin_, v38, end - this->__neg_chars_.__begin_);
    v46 = !v45 || v45 == end;
    v47 = !v46;
    if ((v43 & 1) == 0 && !v47)
    {
LABEL_79:
      negate = 1;
      goto LABEL_80;
    }
  }

  v50 = this->__ranges_.__begin_;
  v51 = this->__ranges_.__end_;
  if (v50 != v51)
  {
    if (this->__collate_)
    {
      std::regex_traits<char>::transform<char *>(&this->__traits_, &v111, &v112);
      v50 = this->__ranges_.__begin_;
      v51 = this->__ranges_.__end_;
    }

    else
    {
      v110 = 1;
      LOWORD(__p) = v38;
    }

    v52 = v51 - v50;
    if (v52)
    {
      v103 = v110;
      v106 = v35;
      v102 = negate;
      v53 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 4);
      if (v110 >= 0)
      {
        v54 = v110;
      }

      else
      {
        v54 = v109;
      }

      if (v110 >= 0)
      {
        v55 = &__p;
      }

      else
      {
        v55 = __p;
      }

      if (v53 <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 4);
      }

      v57 = &v50->second.__r_.__value_.__r.__words[2] + 7;
      v58 = 1;
      v59 = 1;
      while (1)
      {
        v60 = *(v57 - 24);
        if (v60 >= 0)
        {
          v61 = *(v57 - 24);
        }

        else
        {
          v61 = *(v57 - 39);
        }

        if (v60 >= 0)
        {
          v62 = (v57 - 47);
        }

        else
        {
          v62 = *(v57 - 47);
        }

        if (v61 >= v54)
        {
          v63 = v54;
        }

        else
        {
          v63 = v61;
        }

        v64 = memcmp(v55, v62, v63);
        v65 = v54 >= v61;
        if (v64)
        {
          v65 = v64 >= 0;
        }

        if (v65)
        {
          v66 = *v57;
          if (v66 >= 0)
          {
            v67 = *v57;
          }

          else
          {
            v67 = *(v57 - 15);
          }

          if (v66 >= 0)
          {
            v68 = (v57 - 23);
          }

          else
          {
            v68 = *(v57 - 23);
          }

          if (v54 >= v67)
          {
            v69 = v67;
          }

          else
          {
            v69 = v54;
          }

          v70 = memcmp(v68, v55, v69);
          v71 = v67 >= v54;
          if (v70)
          {
            v71 = v70 >= 0;
          }

          if (v71)
          {
            break;
          }
        }

        v59 = v58++ < v53;
        v57 += 48;
        if (!--v56)
        {
          negate = v102;
          goto LABEL_128;
        }
      }

      negate = 1;
LABEL_128:
      v35 = v106;
      if ((v103 & 0x80) == 0)
      {
LABEL_130:
        if (v59)
        {
          goto LABEL_80;
        }

        goto LABEL_131;
      }
    }

    else
    {
      v59 = 0;
      if ((v110 & 0x80) == 0)
      {
        goto LABEL_130;
      }
    }

    operator delete(__p);
    goto LABEL_130;
  }

LABEL_131:
  if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
  {
    goto LABEL_157;
  }

  v72 = &__p;
  std::regex_traits<char>::__transform_primary<char *>(&this->__traits_, &v111, &v112, &__p);
  v73 = this->__equivalences_.__begin_;
  v74 = this->__equivalences_.__end_ - v73;
  if (!v74)
  {
    v79 = 0;
    if ((v110 & 0x80) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_155;
  }

  v104 = v110;
  v107 = v35;
  v75 = 0xAAAAAAAAAAAAAAABLL * (v74 >> 3);
  if (v110 >= 0)
  {
    v76 = v110;
  }

  else
  {
    v76 = v109;
  }

  if (v110 < 0)
  {
    v72 = __p;
  }

  if (v75 <= 1)
  {
    v77 = 1;
  }

  else
  {
    v77 = 0xAAAAAAAAAAAAAAABLL * (v74 >> 3);
  }

  v78 = 1;
  v79 = 1;
  while (1)
  {
    v80 = HIBYTE(v73->__r_.__value_.__r.__words[2]);
    v81 = v80;
    if ((v80 & 0x80u) != 0)
    {
      v80 = v73->__r_.__value_.__l.__size_;
    }

    if (v76 == v80)
    {
      v82 = v81 >= 0 ? v73 : v73->__r_.__value_.__r.__words[0];
      if (!memcmp(v72, v82, v76))
      {
        break;
      }
    }

    v79 = v78++ < v75;
    ++v73;
    if (!--v77)
    {
      goto LABEL_154;
    }
  }

  negate = 1;
LABEL_154:
  v35 = v107;
  if (v104 < 0)
  {
LABEL_155:
    operator delete(__p);
  }

LABEL_156:
  if (v79)
  {
    goto LABEL_80;
  }

LABEL_157:
  v83 = this->__mask_;
  if ((v111 & 0x8000000000000000) == 0 && (this->__traits_.__ct_->__tab_[v111] & v83) != 0)
  {
    goto LABEL_79;
  }

  v84 = (v83 >> 7) & 1;
  if (v111 != 95)
  {
    LOBYTE(v84) = 0;
  }

  negate |= v84;
LABEL_80:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v49 = -993;
  }

  else
  {
    a2->__current_ += v35;
    first = this->__first_;
    v49 = -995;
  }

  a2->__do_ = v49;
  a2->__node_ = first;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

std::locale *std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  a1->__locale_ = off_69BA8;
  v7 = a1 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = off_69860;
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void std::regex_traits<char>::transform<char *>(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, a2, a3, a3 - a2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_38E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::regex_traits<char>::__lookup_collatename<char *>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v11;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v9 = *(a4 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a4 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a4, &__s);
    goto LABEL_9;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_38FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}