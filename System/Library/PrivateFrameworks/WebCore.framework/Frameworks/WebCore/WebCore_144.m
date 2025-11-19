void vp9_init_intra_predictors_internal()
{
  qword_28100C188 = vpx_v_predictor_4x4_neon;
  qword_28100C190 = vpx_v_predictor_8x8_neon;
  qword_28100C198 = vpx_v_predictor_16x16_neon;
  qword_28100C1A0 = vpx_v_predictor_32x32_neon;
  qword_28100C1A8 = vpx_h_predictor_4x4_neon;
  qword_28100C1B0 = vpx_h_predictor_8x8_neon;
  qword_28100C1B8 = vpx_h_predictor_16x16_neon;
  qword_28100C1C0 = vpx_h_predictor_32x32_neon;
  qword_28100C248 = vpx_d207_predictor_4x4_neon;
  qword_28100C250 = vpx_d207_predictor_8x8_neon;
  qword_28100C258 = vpx_d207_predictor_16x16_neon;
  qword_28100C260 = vpx_d207_predictor_32x32_neon;
  qword_28100C1C8 = vpx_d45_predictor_4x4_neon;
  qword_28100C1D0 = vpx_d45_predictor_8x8_neon;
  qword_28100C1D8 = vpx_d45_predictor_16x16_neon;
  qword_28100C1E0 = vpx_d45_predictor_32x32_neon;
  qword_28100C268 = vpx_d63_predictor_4x4_neon;
  qword_28100C270 = vpx_d63_predictor_8x8_neon;
  qword_28100C278 = vpx_d63_predictor_16x16_neon;
  qword_28100C280 = vpx_d63_predictor_32x32_neon;
  qword_28100C208 = vpx_d117_predictor_4x4_neon;
  qword_28100C210 = vpx_d117_predictor_8x8_neon;
  qword_28100C218 = vpx_d117_predictor_16x16_neon;
  qword_28100C220 = vpx_d117_predictor_32x32_neon;
  qword_28100C1E8 = vpx_d135_predictor_4x4_neon;
  qword_28100C1F0 = vpx_d135_predictor_8x8_neon;
  qword_28100C1F8 = vpx_d135_predictor_16x16_neon;
  qword_28100C200 = vpx_d135_predictor_32x32_neon;
  qword_28100C228 = vpx_d153_predictor_4x4_neon;
  qword_28100C230 = vpx_d153_predictor_8x8_neon;
  qword_28100C238 = vpx_d153_predictor_16x16_neon;
  qword_28100C240 = vpx_d153_predictor_32x32_neon;
  qword_28100C288 = vpx_tm_predictor_4x4_neon;
  qword_28100C290 = vpx_tm_predictor_8x8_neon;
  qword_28100C298 = vpx_tm_predictor_16x16_neon;
  qword_28100C2A0 = vpx_tm_predictor_32x32_neon;
  qword_28100BFA8 = vpx_dc_128_predictor_4x4_neon;
  qword_28100BFB0 = vpx_dc_128_predictor_8x8_neon;
  qword_28100BFB8 = vpx_dc_128_predictor_16x16_neon;
  qword_28100BFC0 = vpx_dc_128_predictor_32x32_neon;
  qword_28100BFC8 = vpx_dc_top_predictor_4x4_neon;
  qword_28100BFD0 = vpx_dc_top_predictor_8x8_neon;
  qword_28100BFD8 = vpx_dc_top_predictor_16x16_neon;
  qword_28100BFE0 = vpx_dc_top_predictor_32x32_neon;
  qword_28100BFE8 = vpx_dc_left_predictor_4x4_neon;
  qword_28100BFF0 = vpx_dc_left_predictor_8x8_neon;
  qword_28100BFF8 = vpx_dc_left_predictor_16x16_neon;
  qword_28100C000 = vpx_dc_left_predictor_32x32_neon;
  qword_28100C008 = vpx_dc_predictor_4x4_neon;
  qword_28100C010 = vpx_dc_predictor_8x8_neon;
  qword_28100C018 = vpx_dc_predictor_16x16_neon;
  qword_28100C020 = vpx_dc_predictor_32x32_neon;
  qword_28100C048 = vpx_highbd_v_predictor_4x4_neon;
  qword_28100C050 = vpx_highbd_v_predictor_8x8_neon;
  qword_28100C058 = vpx_highbd_v_predictor_16x16_neon;
  qword_28100C060 = vpx_highbd_v_predictor_32x32_neon;
  qword_28100C068 = vpx_highbd_h_predictor_4x4_neon;
  qword_28100C070 = vpx_highbd_h_predictor_8x8_neon;
  qword_28100C078 = vpx_highbd_h_predictor_16x16_neon;
  qword_28100C080 = vpx_highbd_h_predictor_32x32_neon;
  qword_28100C108 = vpx_highbd_d207_predictor_4x4_neon;
  qword_28100C110 = vpx_highbd_d207_predictor_8x8_neon;
  qword_28100C118 = vpx_highbd_d207_predictor_16x16_neon;
  qword_28100C120 = vpx_highbd_d207_predictor_32x32_neon;
  qword_28100C088 = vpx_highbd_d45_predictor_4x4_neon;
  qword_28100C090 = vpx_highbd_d45_predictor_8x8_neon;
  qword_28100C098 = vpx_highbd_d45_predictor_16x16_neon;
  qword_28100C0A0 = vpx_highbd_d45_predictor_32x32_neon;
  qword_28100C128 = vpx_highbd_d63_predictor_4x4_neon;
  qword_28100C130 = vpx_highbd_d63_predictor_8x8_neon;
  qword_28100C138 = vpx_highbd_d63_predictor_16x16_neon;
  qword_28100C140 = vpx_highbd_d63_predictor_32x32_neon;
  qword_28100C0C8 = vpx_highbd_d117_predictor_4x4_neon;
  qword_28100C0D0 = vpx_highbd_d117_predictor_8x8_neon;
  qword_28100C0D8 = vpx_highbd_d117_predictor_16x16_neon;
  qword_28100C0E0 = vpx_highbd_d117_predictor_32x32_neon;
  qword_28100C0A8 = vpx_highbd_d135_predictor_4x4_neon;
  qword_28100C0B0 = vpx_highbd_d135_predictor_8x8_neon;
  qword_28100C0B8 = vpx_highbd_d135_predictor_16x16_neon;
  qword_28100C0C0 = vpx_highbd_d135_predictor_32x32_neon;
  qword_28100C0E8 = vpx_highbd_d153_predictor_4x4_neon;
  qword_28100C0F0 = vpx_highbd_d153_predictor_8x8_neon;
  qword_28100C0F8 = vpx_highbd_d153_predictor_16x16_neon;
  qword_28100C100 = vpx_highbd_d153_predictor_32x32_neon;
  qword_28100C148 = vpx_highbd_tm_predictor_4x4_neon;
  qword_28100C150 = vpx_highbd_tm_predictor_8x8_neon;
  qword_28100C158 = vpx_highbd_tm_predictor_16x16_neon;
  qword_28100C160 = vpx_highbd_tm_predictor_32x32_neon;
  _MergedGlobals_27 = vpx_highbd_dc_128_predictor_4x4_neon;
  qword_28100BF30 = vpx_highbd_dc_128_predictor_8x8_neon;
  qword_28100BF38 = vpx_highbd_dc_128_predictor_16x16_neon;
  qword_28100BF40 = vpx_highbd_dc_128_predictor_32x32_neon;
  qword_28100BF48 = vpx_highbd_dc_top_predictor_4x4_neon;
  qword_28100BF50 = vpx_highbd_dc_top_predictor_8x8_neon;
  qword_28100BF58 = vpx_highbd_dc_top_predictor_16x16_neon;
  qword_28100BF60 = vpx_highbd_dc_top_predictor_32x32_neon;
  qword_28100BF68 = vpx_highbd_dc_left_predictor_4x4_neon;
  qword_28100BF70 = vpx_highbd_dc_left_predictor_8x8_neon;
  qword_28100BF78 = vpx_highbd_dc_left_predictor_16x16_neon;
  qword_28100BF80 = vpx_highbd_dc_left_predictor_32x32_neon;
  qword_28100BF88 = vpx_highbd_dc_predictor_4x4_neon;
  qword_28100BF90 = vpx_highbd_dc_predictor_8x8_neon;
  qword_28100BF98 = vpx_highbd_dc_predictor_16x16_neon;
  qword_28100BFA0 = vpx_highbd_dc_predictor_32x32_neon;
}

void vp9_resize_plane(unsigned __int8 *a1, int a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  v8 = a7;
  LODWORD(v12) = a2;
  v14 = malloc_type_calloc(a7 * a2, 1uLL, 0x100004077774924uLL);
  if (a3 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = a3;
  }

  v16 = malloc_type_calloc(v15, 1uLL, 0x100004077774924uLL);
  v17 = malloc_type_calloc(v12, 1uLL, 0x100004077774924uLL);
  v18 = malloc_type_calloc(a6, 1uLL, 0x100004077774924uLL);
  if (v14)
  {
    v24 = v16 == 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = v24 || v17 == 0;
  __dst = v18;
  if (!v25 && v18 != 0)
  {
    if (v12 < 1)
    {
      if (v8 >= 1)
      {
        if (a6 <= 0)
        {
          do
          {
            resize_multistep(v17, v12, __dst, a6, v16, v19, v20, v21, v22, v23);
            --v8;
          }

          while (v8);
        }

        else
        {
          for (i = 0; i != v8; ++i)
          {
            v40 = __dst;
            resize_multistep(v17, v12, __dst, a6, v16, v19, v20, v21, v22, v23);
            v41 = (a5 + i);
            v42 = a6;
            do
            {
              v43 = *v40++;
              *v41 = v43;
              v41 += a8;
              --v42;
            }

            while (v42);
          }
        }
      }
    }

    else
    {
      v27 = a4;
      v28 = v12;
      v29 = v14;
      v30 = v27;
      v47 = v29;
      v12 = v12;
      do
      {
        resize_multistep(a1, a3, v29, v8, v16, v19, v20, v21, v22, v23);
        v29 += v8;
        a1 += v30;
        --v12;
      }

      while (v12);
      v14 = v47;
      if (v8 > 0)
      {
        v31 = v8;
        if (a6 <= 0)
        {
          for (j = 0; j != v31; ++j)
          {
            v45 = 0;
            v46 = &v47[j];
            do
            {
              v17[v45] = *v46;
              v46 += v31;
              ++v45;
            }

            while (v28 != v45);
            resize_multistep(v17, v28, __dst, a6, v16, v19, v20, v21, v22, v23);
          }
        }

        else
        {
          for (k = 0; k != v31; ++k)
          {
            v33 = 0;
            v34 = &v47[k];
            do
            {
              v17[v33] = *v34;
              v34 += v31;
              ++v33;
            }

            while (v28 != v33);
            v35 = __dst;
            resize_multistep(v17, v28, __dst, a6, v16, v19, v20, v21, v22, v23);
            v36 = (a5 + k);
            v37 = a6;
            do
            {
              v38 = *v35++;
              *v36 = v38;
              v36 += a8;
              --v37;
            }

            while (v37);
          }
        }
      }
    }
  }

  free(v14);
  free(v16);
  free(v17);

  free(__dst);
}

unsigned __int8 *resize_multistep(unsigned __int8 *__src, int a2, _BYTE *__dst, int a4, uint64_t a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  v11 = __src;
  if (a2 == a4)
  {

    return memcpy(__dst, __src, a2);
  }

  v12 = 0;
  v13 = a2;
  while (1)
  {
    v13 = (v13 + 1) >> 1;
    if (v13 < a4)
    {
      break;
    }

    ++v12;
    if (v13 == 1)
    {
      goto LABEL_10;
    }
  }

  if (v12)
  {
LABEL_10:
    __src = 0;
    v14 = 0;
    v15 = (a2 + 1) >> 1;
    while (1)
    {
      v16 = a2;
      a2 = (a2 + 1) >> 1;
      if (v14)
      {
        v17 = __src;
      }

      else
      {
        v17 = v11;
      }

      v18 = a2 == a4 && v14 == v12 - 1;
      __src = (a5 + ((v14 << 31 >> 31) & v15));
      if (v18)
      {
        __src = __dst;
      }

      if (v16)
      {
        if (v16 >= 7)
        {
          v85 = 35 * (v17[1] + *v17) + (*v17 << 6) - 3 * (v17[3] + *v17) + 64;
          v86 = (v85 >> 7) & ~(v85 >> 31);
          if (v86 >= 255)
          {
            LOBYTE(v86) = -1;
          }

          *__src = v86;
          v87 = 35 * (v17[3] + v17[1]) + (v17[2] << 6) - 3 * (v17[5] + *v17) + 64;
          v88 = (v87 >> 7) & ~(v87 >> 31);
          if (v88 >= 255)
          {
            v89 = -1;
          }

          else
          {
            v89 = v88;
          }

          v90 = __src + 2;
          __src[1] = v89;
          if (v16 == 7)
          {
            v91 = 4;
          }

          else
          {
            v92 = 0;
            do
            {
              v93 = 35 * (v17[v92 + 5] + v17[v92 + 3]) + (v17[v92 + 4] << 6) - 3 * (v17[v92 + 7] + v17[v92 + 1]) + 64;
              v94 = (v93 >> 7) & ~(v93 >> 31);
              if (v94 >= 255)
              {
                LOBYTE(v94) = -1;
              }

              *v90++ = v94;
              v95 = v92 + 6;
              v92 += 2;
            }

            while (v95 < v16 - 3);
            v91 = (v92 + 4);
            if (v91 >= v16)
            {
              goto LABEL_11;
            }
          }

          v96 = 0;
          v97 = &v17[v91];
          do
          {
            v98 = v91 + v96 + 1;
            if (v98 >= v16)
            {
              LODWORD(v98) = v16 - 1;
            }

            v99 = 35 * (v17[v98] + v97[v96 - 1]) + (v97[v96] << 6);
            v100 = v91 + v96 + 3;
            if (v100 >= v16)
            {
              LODWORD(v100) = v16 - 1;
            }

            v101 = v99 - 3 * (v17[v100] + v97[v96 - 3]) + 64;
            v102 = (v101 >> 7) & ~(v101 >> 31);
            if (v102 >= 255)
            {
              LOBYTE(v102) = -1;
            }

            *v90++ = v102;
            v96 += 2;
          }

          while (v16 > v91 + v96);
        }

        else
        {
          v54 = v16 - 1;
          if (v16 >= 1)
          {
            v55 = *v17;
            if (v16 == 1)
            {
              v56 = v17;
            }

            else
            {
              v56 = v17 + 1;
            }

            v57 = 35 * (*v56 + v55) + (v55 << 6);
            if (v16 <= 3)
            {
              v58 = v16 - 1;
            }

            else
            {
              v58 = 3;
            }

            v59 = v57 - 3 * (v17[v58] + v55) + 64;
            v60 = (v59 >> 7) & ~(v59 >> 31);
            if (v60 >= 255)
            {
              LOBYTE(v60) = -1;
            }

            *__src = v60;
            if (v16 >= 3)
            {
              v61 = 35 * (v17[v58] + v17[1]) + (v17[2] << 6);
              if (v16 <= 5)
              {
                v62 = v16 - 1;
              }

              else
              {
                v62 = 5;
              }

              v63 = v61 - 3 * (v17[v62] + *v17) + 64;
              v64 = (v63 >> 7) & ~(v63 >> 31);
              if (v64 >= 255)
              {
                LOBYTE(v64) = -1;
              }

              __src[1] = v64;
              if (v16 >= 5)
              {
                if (v16 == 5)
                {
                  v65 = 4;
                }

                else
                {
                  v65 = 5;
                }

                v66 = 35 * (v17[v65] + v17[3]) + (v17[4] << 6) - 3 * (v17[v54] + v17[1]) + 64;
                v67 = (v66 >> 7) & ~(v66 >> 31);
                if (v67 >= 255)
                {
                  LOBYTE(v67) = -1;
                }

                __src[2] = v67;
              }
            }
          }
        }
      }

      else if (v16 >= 8)
      {
        v68 = 56 * (v17[1] + *v17) - *v17 + 12 * (v17[2] + *v17) - v17[4] - 3 * (v17[3] + *v17) + 64;
        v69 = (v68 >> 7) & ~(v68 >> 31);
        if (v69 >= 255)
        {
          LOBYTE(v69) = -1;
        }

        *__src = v69;
        v70 = 12 * (v17[4] + v17[1]) + 56 * (v17[3] + v17[2]) - (*v17 + v17[6]) - 3 * (v17[5] + *v17) + 64;
        v71 = (v70 >> 7) & ~(v70 >> 31);
        if (v71 >= 255)
        {
          LOBYTE(v71) = -1;
        }

        v72 = __src + 2;
        __src[1] = v71;
        v73 = 4;
        if (v16 != 8)
        {
          do
          {
            v74 = 12 * (v17[v73 + 2] + v17[v73 - 1]) + 56 * (v17[v73 + 1] + v17[v73]) - 3 * (v17[v73 + 3] + v17[v73 - 2]) - (v17[v73 - 3] + v17[v73 + 4]) + 64;
            v75 = (v74 >> 7) & ~(v74 >> 31);
            if (v75 >= 255)
            {
              LOBYTE(v75) = -1;
            }

            *v72++ = v75;
            v73 += 2;
          }

          while (v73 < v16 - 4);
        }

        if (v73 < v16)
        {
          v76 = &v17[v73 - 1];
          do
          {
            v77 = v73 | 1;
            if ((v73 | 1) >= v16)
            {
              v77 = v16 - 1;
            }

            v78 = v73 + 3;
            v79 = v73 + 4;
            v80 = v73 + 2;
            if (v73 + 2 >= v16)
            {
              v81 = v16 - 1;
            }

            else
            {
              v81 = v73 + 2;
            }

            if (v78 >= v16)
            {
              v78 = v16 - 1;
            }

            v82 = -3 * (v17[v78] + *(v76 - 1));
            if (v79 >= v16)
            {
              v79 = v16 - 1;
            }

            v83 = 12 * (v17[v81] + *v76) + 56 * (v17[v77] + v76[1]) + v82 - (*(v76 - 2) + v17[v79]) + 64;
            v84 = (v83 >> 7) & ~(v83 >> 31);
            if (v84 >= 255)
            {
              LOBYTE(v84) = -1;
            }

            *v72++ = v84;
            v76 += 2;
            LODWORD(v73) = v80;
          }

          while (v16 > v80);
        }
      }

      else if (v16 >= 1)
      {
        v19 = *v17;
        if (v16 == 1)
        {
          v20 = v17;
        }

        else
        {
          v20 = v17 + 1;
        }

        v21 = *v20;
        if (v16 <= 2)
        {
          v22 = v16 - 1;
        }

        else
        {
          v22 = 2;
        }

        v23 = v21 + v19;
        v24 = v17[v22] + v19;
        if (v16 <= 3)
        {
          v25 = v16 - 1;
        }

        else
        {
          v25 = 3;
        }

        if (v16 <= 4)
        {
          v26 = v16 - 1;
        }

        else
        {
          v26 = 4;
        }

        v27 = 56 * v23 - v19 + 12 * v24 - v17[v26] - 3 * (v17[v25] + v19) + 64;
        v28 = (v27 >> 7) & ~(v27 >> 31);
        if (v28 >= 255)
        {
          LOBYTE(v28) = -1;
        }

        *__src = v28;
        if (v16 >= 3)
        {
          v29 = v17[v25] + v17[2];
          v30 = 12 * (v17[v26] + v17[1]);
          if (v16 <= 5)
          {
            v31 = v16 - 1;
          }

          else
          {
            v31 = 5;
          }

          v32 = *v17;
          v33 = v17[v31] + v32;
          if (v16 <= 6)
          {
            v34 = v16 - 1;
          }

          else
          {
            v34 = 6;
          }

          v35 = v30 + 56 * v29 - (v32 + v17[v34]) - 3 * v33 + 64;
          v36 = (v35 >> 7) & ~(v35 >> 31);
          if (v36 >= 255)
          {
            LOBYTE(v36) = -1;
          }

          __src[1] = v36;
          if (v16 >= 5)
          {
            v37 = __src + 2;
            v38 = v17 + 2;
            v39 = 4;
            do
            {
              v40 = v39 + 1;
              if (v39 + 1 >= v16)
              {
                v40 = v16 - 1;
              }

              v41 = v17[v40] + v17[v39];
              v42 = &v38[v39];
              v43 = v38[v39 - 3];
              v44 = v39 + 3;
              v45 = v39 + 4;
              v46 = v39 + 2;
              if (v39 + 2 >= v16)
              {
                v47 = v16 - 1;
              }

              else
              {
                v47 = v39 + 2;
              }

              v48 = 12 * (v17[v47] + v43);
              if (v44 >= v16)
              {
                LODWORD(v44) = v16 - 1;
              }

              v49 = -3 * (v17[v44] + *(v42 - 4));
              v50 = *(v42 - 5);
              if (v45 >= v16)
              {
                v51 = v16 - 1;
              }

              else
              {
                v51 = v45;
              }

              v52 = v48 + 56 * v41 + v49 - (v50 + v17[v51]) + 64;
              v53 = (v52 >> 7) & ~(v52 >> 31);
              if (v53 >= 255)
              {
                LOBYTE(v53) = -1;
              }

              *v37++ = v53;
              v39 = v46;
            }

            while (v46 < v16);
          }
        }
      }

LABEL_11:
      if (++v14 == v12)
      {
        if (a2 != a4)
        {

          return interpolate(__src, a2, __dst, a4, a6, a7, a8, a9, a10);
        }

        return __src;
      }
    }
  }

  return interpolate(__src, a2, __dst, a4, a6, a7, a8, a9, a10);
}

void vp9_highbd_resize_plane(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8, int a9)
{
  v9 = a7;
  v14 = 2 * a2;
  v51 = a7;
  v15 = malloc_type_malloc(v14 * a7, 0x1000040BDFB0063uLL);
  if (a3 <= a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = a3;
  }

  v17 = malloc_type_malloc(2 * v16, 0x1000040BDFB0063uLL);
  v18 = malloc_type_malloc(v14, 0x1000040BDFB0063uLL);
  v19 = malloc_type_malloc(2 * a6, 0x1000040BDFB0063uLL);
  v20 = v17;
  if (v15)
  {
    v21 = v17 == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = v21 || v18 == 0;
  v54 = v19;
  if (!v22 && v19 != 0)
  {
    __dst = v15;
    v48 = a2;
    v24 = a2;
    v55 = v17;
    if (a2 >= 1)
    {
      v25 = (2 * a1);
      v26 = a4;
      v27 = v15;
      v28 = v24;
      v29 = 2 * v26;
      do
      {
        highbd_resize_multistep(v25, a3, v27, v9, v55, a9);
        v20 = v55;
        v27 += v51;
        v25 = (v25 + v29);
        --v28;
      }

      while (v28);
    }

    v15 = __dst;
    if (v9 >= 1)
    {
      if (a6 < 1)
      {
        if (v48 <= 0)
        {
          do
          {
            highbd_resize_multistep(v18, v48, v54, a6, v55, a9);
            v20 = v55;
            --v9;
          }

          while (v9);
        }

        else
        {
          v38 = 0;
          v39 = __dst;
          do
          {
            v40 = 0;
            v41 = v39;
            do
            {
              v18[v40++] = *v41;
              v41 += v51;
            }

            while (v24 != v40);
            highbd_resize_multistep(v18, v24, v54, a6, v55, a9);
            v20 = v55;
            ++v38;
            ++v39;
          }

          while (v38 != v9);
        }
      }

      else if (v48 <= 0)
      {
        for (i = 0; i != v9; ++i)
        {
          v43 = v54;
          highbd_resize_multistep(v18, v48, v54, a6, v20, a9);
          v44 = (2 * (a5 + i));
          v45 = a6;
          do
          {
            v46 = *v43++;
            *v44 = v46;
            v44 += a8;
            --v45;
          }

          while (v45);
          v20 = v55;
        }
      }

      else
      {
        v30 = 0;
        v31 = __dst;
        do
        {
          v32 = 0;
          v33 = v31;
          do
          {
            v18[v32++] = *v33;
            v33 += v51;
          }

          while (v24 != v32);
          v34 = v54;
          highbd_resize_multistep(v18, v24, v54, a6, v20, a9);
          v35 = (2 * (a5 + v30));
          v36 = a6;
          do
          {
            v37 = *v34++;
            *v35 = v37;
            v35 += a8;
            --v36;
          }

          while (v36);
          ++v30;
          ++v31;
          v20 = v55;
        }

        while (v30 != v9);
      }
    }
  }

  v47 = v20;
  free(v15);
  free(v47);
  free(v18);

  free(v54);
}

unsigned __int16 *highbd_resize_multistep(unsigned __int16 *__src, int a2, _WORD *__dst, int a4, uint64_t a5, int a6)
{
  v7 = __src;
  if (a2 == a4)
  {

    return memcpy(__dst, __src, 2 * a2);
  }

  v8 = 0;
  v9 = a2;
  while (1)
  {
    v9 = (v9 + 1) >> 1;
    if (v9 < a4)
    {
      break;
    }

    ++v8;
    if (v9 == 1)
    {
      goto LABEL_10;
    }
  }

  if (v8)
  {
LABEL_10:
    v128 = v6;
    __src = 0;
    v10 = 0;
    v11 = (a2 + 1) >> 1;
    while (1)
    {
      v14 = a2;
      a2 = (a2 + 1) >> 1;
      if (v10)
      {
        v15 = __src;
      }

      else
      {
        v15 = v7;
      }

      v16 = a2 == a4 && v10 == v8 - 1;
      __src = (a5 + 2 * ((v10 << 31 >> 31) & v11));
      if (v16)
      {
        __src = __dst;
      }

      if (v14)
      {
        if (v14 < 7)
        {
          if (v14 < 1)
          {
            goto LABEL_18;
          }

          if (v14 <= 3)
          {
            v43 = v14 - 1;
          }

          else
          {
            v43 = 3;
          }

          v44 = (35 * (v15[v14 != 1] + *v15) + (*v15 << 6) - 3 * (v15[v43] + *v15) + 64) >> 7;
          if (v44 >= 0xFFF)
          {
            v45 = 4095;
          }

          else
          {
            v45 = (35 * (v15[v14 != 1] + *v15) + (*v15 << 6) - 3 * (v15[v43] + *v15) + 64) >> 7;
          }

          if (v44 >= 0xFF)
          {
            LOWORD(v46) = 255;
          }

          else
          {
            v46 = (35 * (v15[v14 != 1] + *v15) + (*v15 << 6) - 3 * (v15[v43] + *v15) + 64) >> 7;
          }

          if (v44 >= 0x3FF)
          {
            LOWORD(v47) = 1023;
          }

          else
          {
            v47 = (35 * (v15[v14 != 1] + *v15) + (*v15 << 6) - 3 * (v15[v43] + *v15) + 64) >> 7;
          }

          if (a6 == 10)
          {
            LOWORD(v46) = v47;
          }

          if (a6 != 12)
          {
            v45 = v46;
          }

          v48 = (v44 & 0x80000000) == 0 ? v45 : 0;
          *__src = v48;
          if (v14 < 3)
          {
            goto LABEL_18;
          }

          v49 = 35 * (v15[v43] + v15[1]) + (v15[2] << 6);
          if (v14 <= 5)
          {
            v50 = v14 - 1;
          }

          else
          {
            v50 = 5;
          }

          v51 = (v49 - 3 * (v15[v50] + *v15) + 64) >> 7;
          if (v51 >= 0xFFF)
          {
            v52 = 4095;
          }

          else
          {
            v52 = v51;
          }

          if (v51 >= 0xFF)
          {
            v53 = 255;
          }

          else
          {
            v53 = v51;
          }

          if (v51 >= 0x3FF)
          {
            v54 = 1023;
          }

          else
          {
            v54 = v51;
          }

          if (a6 == 10)
          {
            v53 = v54;
          }

          if (a6 != 12)
          {
            v52 = v53;
          }

          v55 = (v51 & 0x80000000) == 0 ? v52 : 0;
          __src[1] = v55;
          if (v14 < 5)
          {
            goto LABEL_18;
          }

          v56 = (__src + 2);
          if (v14 == 5)
          {
            v57 = 4;
          }

          else
          {
            v57 = 5;
          }

          v58 = (35 * (v15[v57] + v15[3]) + (v15[4] << 6) - 3 * (v15[v14 - 1] + v15[1]) + 64) >> 7;
          if (a6 == 10)
          {
            goto LABEL_11;
          }

LABEL_313:
          if (a6 == 12)
          {
            if (v58 >= 0xFFF)
            {
              v12 = 4095;
            }

            else
            {
              v12 = v58;
            }
          }

          else if (v58 >= 0xFF)
          {
            v12 = 255;
          }

          else
          {
            v12 = v58;
          }

LABEL_14:
          if ((v58 & 0x80000000) == 0)
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          *v56 = v13;
          goto LABEL_18;
        }

        v72 = (35 * (v15[1] + *v15) + (*v15 << 6) - 3 * (v15[3] + *v15) + 64) >> 7;
        if (v72 >= 0x3FF)
        {
          v73 = 1023;
        }

        else
        {
          v73 = (35 * (v15[1] + *v15) + (*v15 << 6) - 3 * (v15[3] + *v15) + 64) >> 7;
        }

        if (v72 >= 0xFFF)
        {
          LOWORD(v74) = 4095;
        }

        else
        {
          v74 = (35 * (v15[1] + *v15) + (*v15 << 6) - 3 * (v15[3] + *v15) + 64) >> 7;
        }

        if (v72 >= 0xFF)
        {
          LOWORD(v75) = 255;
        }

        else
        {
          v75 = (35 * (v15[1] + *v15) + (*v15 << 6) - 3 * (v15[3] + *v15) + 64) >> 7;
        }

        if (a6 != 12)
        {
          LOWORD(v74) = v75;
        }

        if (a6 != 10)
        {
          v73 = v74;
        }

        if ((v72 & 0x80000000) == 0)
        {
          v76 = v73;
        }

        else
        {
          v76 = 0;
        }

        *__src = v76;
        v77 = (35 * (v15[3] + v15[1]) + (v15[2] << 6) - 3 * (v15[5] + *v15) + 64) >> 7;
        if (v77 >= 0xFFF)
        {
          v78 = 4095;
        }

        else
        {
          v78 = (35 * (v15[3] + v15[1]) + (v15[2] << 6) - 3 * (v15[5] + *v15) + 64) >> 7;
        }

        if (v77 >= 0xFF)
        {
          LOWORD(v79) = 255;
        }

        else
        {
          v79 = (35 * (v15[3] + v15[1]) + (v15[2] << 6) - 3 * (v15[5] + *v15) + 64) >> 7;
        }

        if (v77 >= 0x3FF)
        {
          LOWORD(v80) = 1023;
        }

        else
        {
          v80 = (35 * (v15[3] + v15[1]) + (v15[2] << 6) - 3 * (v15[5] + *v15) + 64) >> 7;
        }

        if (a6 == 10)
        {
          LOWORD(v79) = v80;
        }

        if (a6 != 12)
        {
          v78 = v79;
        }

        if ((v77 & 0x80000000) == 0)
        {
          v81 = v78;
        }

        else
        {
          v81 = 0;
        }

        __src[1] = v81;
        if (v14 == 7)
        {
          v82 = (__src + 2);
          LODWORD(v83) = 4;
        }

        else
        {
          v108 = v15 + 4;
          v83 = 4;
          do
          {
            v109 = (35 * (v108[1] + *(v108 - 1)) + (*v108 << 6) - 3 * (v108[3] + *(v108 - 3)) + 64) >> 7;
            v108 += 2;
            if (v109 >= 0x3FF)
            {
              v110 = 1023;
            }

            else
            {
              v110 = v109;
            }

            if (v109 >= 0xFFF)
            {
              v111 = 4095;
            }

            else
            {
              v111 = v109;
            }

            if (v109 >= 0xFF)
            {
              v112 = 255;
            }

            else
            {
              v112 = v109;
            }

            if (a6 == 12)
            {
              v112 = v111;
            }

            if (a6 == 10)
            {
              v112 = v110;
            }

            if ((v109 & 0x80000000) != 0)
            {
              v112 = 0;
            }

            *(__src + v83) = v112;
            v83 += 2;
          }

          while (v83 < (v14 - 3));
          v82 = (__src + v83);
          if (v83 >= v14)
          {
            goto LABEL_18;
          }
        }

        v113 = v83 + 3;
        v114 = &v15[v83];
        do
        {
          if (v113 - 2 < v14)
          {
            v115 = v83 + 1;
          }

          else
          {
            v115 = v14 - 1;
          }

          v116 = v83 + 3;
          if (v113 >= v14)
          {
            v116 = v14 - 1;
          }

          v117 = (35 * (v15[v115] + *(v114 - 1)) + (*v114 << 6) - 3 * (v15[v116] + *(v114 - 3)) + 64) >> 7;
          v114 += 2;
          if (v117 >= 0x3FF)
          {
            v118 = 1023;
          }

          else
          {
            v118 = v117;
          }

          if (v117 >= 0xFFF)
          {
            v119 = 4095;
          }

          else
          {
            v119 = v117;
          }

          if (v117 >= 0xFF)
          {
            v120 = 255;
          }

          else
          {
            v120 = v117;
          }

          if (a6 == 12)
          {
            v120 = v119;
          }

          if (a6 == 10)
          {
            v120 = v118;
          }

          if ((v117 & 0x80000000) == 0)
          {
            v121 = v120;
          }

          else
          {
            v121 = 0;
          }

          *v82++ = v121;
          LODWORD(v83) = v83 + 2;
          v113 += 2;
        }

        while (v14 > v83);
      }

      else
      {
        if (v14 < 8)
        {
          v17 = v14 - 1;
          if (v14 < 1)
          {
            goto LABEL_18;
          }

          v18 = *v15;
          if (v14 <= 2)
          {
            v19 = v14 - 1;
          }

          else
          {
            v19 = 2;
          }

          v20 = v15[v19] + v18;
          if (v14 <= 3)
          {
            v21 = v14 - 1;
          }

          else
          {
            v21 = 3;
          }

          if (v14 <= 4)
          {
            v22 = v14 - 1;
          }

          else
          {
            v22 = 4;
          }

          v23 = (56 * (v15[v14 != 1] + v18) - v18 + 12 * v20 - v15[v22] - 3 * (v15[v21] + v18) + 64) >> 7;
          if (v23 >= 0xFFF)
          {
            v24 = 4095;
          }

          else
          {
            v24 = v23;
          }

          if (v23 >= 0xFF)
          {
            v25 = 255;
          }

          else
          {
            v25 = v23;
          }

          if (v23 >= 0x3FF)
          {
            v26 = 1023;
          }

          else
          {
            v26 = v23;
          }

          if (a6 == 10)
          {
            v25 = v26;
          }

          if (a6 != 12)
          {
            v24 = v25;
          }

          v27 = (v23 & 0x80000000) == 0 ? v24 : 0;
          *__src = v27;
          if (v14 < 3)
          {
            goto LABEL_18;
          }

          v28 = v15[v21] + v15[2];
          v29 = *v15;
          if (v14 <= 5)
          {
            v30 = v14 - 1;
          }

          else
          {
            v30 = 5;
          }

          v31 = -3 * (v15[v30] + v29);
          if (v14 <= 6)
          {
            v32 = v14 - 1;
          }

          else
          {
            v32 = 6;
          }

          v33 = (12 * (v15[v22] + v15[1]) + 56 * v28 - (v29 + v15[v32]) + v31 + 64) >> 7;
          if (v33 >= 0xFFF)
          {
            v34 = 4095;
          }

          else
          {
            v34 = v33;
          }

          if (v33 >= 0xFF)
          {
            v35 = 255;
          }

          else
          {
            v35 = v33;
          }

          if (v33 >= 0x3FF)
          {
            v36 = 1023;
          }

          else
          {
            v36 = v33;
          }

          if (a6 == 10)
          {
            v35 = v36;
          }

          if (a6 != 12)
          {
            v34 = v35;
          }

          v37 = (v33 & 0x80000000) == 0 ? v34 : 0;
          __src[1] = v37;
          if (v14 < 5)
          {
            goto LABEL_18;
          }

          v38 = 5;
          if (v14 == 5)
          {
            v38 = 4;
          }

          v39 = v15[v17];
          v40 = (12 * (v15[v32] + v15[3]) + 56 * (v15[v38] + v15[4]) - (v39 + v15[1]) - 3 * (v39 + v15[2]) + 64) >> 7;
          if (a6 == 12)
          {
            if (v40 >= 0xFFF)
            {
              v122 = 4095;
            }

            else
            {
              v122 = v40;
            }

            if (v40 >= 0)
            {
              v123 = v122;
            }

            else
            {
              v123 = 0;
            }

            __src[2] = v123;
            if (v14 < 7)
            {
              goto LABEL_18;
            }
          }

          else if (a6 == 10)
          {
            if (v40 >= 0x3FF)
            {
              v41 = 1023;
            }

            else
            {
              v41 = v40;
            }

            if (v40 >= 0)
            {
              v42 = v41;
            }

            else
            {
              v42 = 0;
            }

            __src[2] = v42;
            if (v14 < 7)
            {
              goto LABEL_18;
            }
          }

          else
          {
            if (v40 >= 0xFF)
            {
              v124 = 255;
            }

            else
            {
              v124 = v40;
            }

            if (v40 >= 0)
            {
              v125 = v124;
            }

            else
            {
              v125 = 0;
            }

            __src[2] = v125;
            if (v14 < 7)
            {
              goto LABEL_18;
            }
          }

          v56 = (__src + 3);
          v126 = v15[v17];
          v58 = (12 * (v126 + v15[5]) + 112 * v15[6] - (v126 + v15[3]) - 3 * (v126 + v15[4]) + 64) >> 7;
          if (a6 != 10)
          {
            goto LABEL_313;
          }

LABEL_11:
          if (v58 >= 0x3FF)
          {
            v12 = 1023;
          }

          else
          {
            v12 = v58;
          }

          goto LABEL_14;
        }

        v59 = (56 * (v15[1] + *v15) - *v15 + 12 * (v15[2] + *v15) - v15[4] - 3 * (v15[3] + *v15) + 64) >> 7;
        if (v59 >= 0x3FF)
        {
          LOWORD(v60) = 1023;
        }

        else
        {
          v60 = (56 * (v15[1] + *v15) - *v15 + 12 * (v15[2] + *v15) - v15[4] - 3 * (v15[3] + *v15) + 64) >> 7;
        }

        if (v59 >= 0xFFF)
        {
          LOWORD(v61) = 4095;
        }

        else
        {
          v61 = (56 * (v15[1] + *v15) - *v15 + 12 * (v15[2] + *v15) - v15[4] - 3 * (v15[3] + *v15) + 64) >> 7;
        }

        if (v59 >= 0xFF)
        {
          LOWORD(v62) = 255;
        }

        else
        {
          v62 = (56 * (v15[1] + *v15) - *v15 + 12 * (v15[2] + *v15) - v15[4] - 3 * (v15[3] + *v15) + 64) >> 7;
        }

        if (a6 != 12)
        {
          LOWORD(v61) = v62;
        }

        if (a6 == 10)
        {
          v63 = v60;
        }

        else
        {
          v63 = v61;
        }

        if ((v59 & 0x80000000) == 0)
        {
          v64 = v63;
        }

        else
        {
          v64 = 0;
        }

        *__src = v64;
        v65 = (12 * (v15[4] + v15[1]) + 56 * (v15[3] + v15[2]) - (*v15 + v15[6]) - 3 * (v15[5] + *v15) + 64) >> 7;
        if (v65 >= 0xFFF)
        {
          v66 = 4095;
        }

        else
        {
          v66 = (12 * (v15[4] + v15[1]) + 56 * (v15[3] + v15[2]) - (*v15 + v15[6]) - 3 * (v15[5] + *v15) + 64) >> 7;
        }

        if (v65 >= 0xFF)
        {
          LOWORD(v67) = 255;
        }

        else
        {
          v67 = (12 * (v15[4] + v15[1]) + 56 * (v15[3] + v15[2]) - (*v15 + v15[6]) - 3 * (v15[5] + *v15) + 64) >> 7;
        }

        if (v65 >= 0x3FF)
        {
          LOWORD(v68) = 1023;
        }

        else
        {
          v68 = (12 * (v15[4] + v15[1]) + 56 * (v15[3] + v15[2]) - (*v15 + v15[6]) - 3 * (v15[5] + *v15) + 64) >> 7;
        }

        if (a6 == 10)
        {
          LOWORD(v67) = v68;
        }

        if (a6 != 12)
        {
          v66 = v67;
        }

        if ((v65 & 0x80000000) == 0)
        {
          v69 = v66;
        }

        else
        {
          v69 = 0;
        }

        __src[1] = v69;
        if (v14 == 8)
        {
          v70 = (__src + 2);
          LODWORD(v71) = 4;
        }

        else
        {
          v84 = v15 + 8;
          v71 = 4;
          do
          {
            v85 = *(v84 - 3) + *(v84 - 4);
            v86 = 12 * (*(v84 - 2) + *(v84 - 5));
            v87 = -3 * (*(v84 - 1) + *(v84 - 6));
            v88 = *(v84 - 7);
            v89 = *v84;
            v84 += 2;
            v90 = (v86 + 56 * v85 + v87 - (v88 + v89) + 64) >> 7;
            if (v90 >= 0x3FF)
            {
              v91 = 1023;
            }

            else
            {
              v91 = v90;
            }

            if (v90 >= 0xFFF)
            {
              v92 = 4095;
            }

            else
            {
              v92 = v90;
            }

            if (v90 >= 0xFF)
            {
              v93 = 255;
            }

            else
            {
              v93 = v90;
            }

            if (a6 != 12)
            {
              v92 = v93;
            }

            if (a6 == 10)
            {
              v94 = v91;
            }

            else
            {
              v94 = v92;
            }

            if ((v90 & 0x80000000) == 0)
            {
              v95 = v94;
            }

            else
            {
              v95 = 0;
            }

            *(__src + v71) = v95;
            v71 += 2;
          }

          while (v71 < (v14 - 4));
          v70 = (__src + v71);
          if (v71 >= v14)
          {
            goto LABEL_18;
          }
        }

        v96 = &v15[v71 - 1];
        do
        {
          v97 = v71 | 1;
          if ((v71 | 1) >= v14)
          {
            v97 = v14 - 1;
          }

          v98 = v71 + 3;
          v99 = v71 + 4;
          v100 = v71 + 2;
          if (v71 + 2 >= v14)
          {
            v101 = v14 - 1;
          }

          else
          {
            v101 = v71 + 2;
          }

          if (v98 >= v14)
          {
            v98 = v14 - 1;
          }

          v102 = -3 * (v15[v98] + *(v96 - 1));
          if (v99 >= v14)
          {
            v99 = v14 - 1;
          }

          v103 = (12 * (v15[v101] + *v96) + 56 * (v15[v97] + v96[1]) + v102 - (*(v96 - 2) + v15[v99]) + 64) >> 7;
          v96 += 2;
          if (v103 >= 0x3FF)
          {
            v104 = 1023;
          }

          else
          {
            v104 = v103;
          }

          if (v103 >= 0xFFF)
          {
            v105 = 4095;
          }

          else
          {
            v105 = v103;
          }

          if (v103 >= 0xFF)
          {
            v106 = 255;
          }

          else
          {
            v106 = v103;
          }

          if (a6 != 12)
          {
            v105 = v106;
          }

          if (a6 != 10)
          {
            v104 = v105;
          }

          if ((v103 & 0x80000000) == 0)
          {
            v107 = v104;
          }

          else
          {
            v107 = 0;
          }

          *v70++ = v107;
          LODWORD(v71) = v71 + 2;
        }

        while (v14 > v100);
      }

LABEL_18:
      if (++v10 == v8)
      {
        if (a2 != a4)
        {
          v127 = a6;

          return highbd_interpolate(__src, a2, __dst, a4, v127);
        }

        return __src;
      }
    }
  }

  v127 = a6;

  return highbd_interpolate(__src, a2, __dst, a4, v127);
}

uint64_t interpolate(uint64_t result, int a2, _BYTE *a3, int a4, double a5, double a6, double a7, double a8, int8x16_t a9)
{
  v9 = (a4 + (a4 >> 31)) >> 1;
  v10 = (v9 + (a2 << 32)) / a4;
  v11 = v9 + ((a2 - a4) << 31);
  v12 = 16 * a4;
  v13 = &filteredinterp_filters625;
  if (16 * a4 < 9 * a2)
  {
    v13 = &filteredinterp_filters500;
  }

  if (v12 < 11 * a2)
  {
    v14 = v13;
  }

  else
  {
    v14 = &filteredinterp_filters750;
  }

  if (v12 < 13 * a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = &filteredinterp_filters875;
  }

  v16 = v9 + ((a4 - a2) << 31);
  if (a2 > a4)
  {
    v17 = v15;
  }

  else
  {
    v11 = -v16;
    v17 = &filteredinterp_filters1000;
  }

  v18 = v11 / a4;
  if (v18 > 0x2FFFFFFFFLL)
  {
    v25 = 0;
    goto LABEL_28;
  }

  v19 = v18 + v10;
  if ((v18 + v10) <= 0x300000000)
  {
    v20 = 0x300000000;
  }

  else
  {
    v20 = v18 + v10;
  }

  if ((v18 + v10) >= 0x300000000)
  {
    v21 = v18 + v10;
  }

  else
  {
    v21 = v19 + 1;
  }

  v22 = v19 < 0x300000000;
  v23 = (v20 - v21) / v10;
  if (v22)
  {
    ++v23;
  }

  v24 = v23 + 1;
  if (v23 + 1 < 8)
  {
    v25 = 0;
    v26 = v11 / a4;
    do
    {
LABEL_27:
      ++v25;
      v26 += v10;
    }

    while (v26 < 0x300000000);
    goto LABEL_28;
  }

  v26 = v18 + (v24 & 0xFFFFFFFFFFFFFFF8) * v10;
  v27 = 0uLL;
  v28.i64[0] = 0x100000001;
  v28.i64[1] = 0x100000001;
  v29 = v24 & 0xFFFFFFFFFFFFFFF8;
  v30 = 0uLL;
  do
  {
    v27 = vaddq_s32(v27, v28);
    v30 = vaddq_s32(v30, v28);
    v29 -= 8;
  }

  while (v29);
  v25 = vaddvq_s32(vpaddq_s32(v27, v30));
  if (v24 != (v24 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_27;
  }

LABEL_28:
  v31 = a4 - 1;
  for (i = v18 + v10 * (a4 - 1); a2 - 4 <= i >> 32; i -= v10)
  {
    --v31;
  }

  if (v25 <= v31)
  {
    if (v25)
    {
      v60 = v25;
      do
      {
        if (SHIDWORD(v18) <= 3)
        {
          v63 = 3;
        }

        else
        {
          v63 = HIDWORD(v18);
        }

        v64 = vdup_n_s32(HIDWORD(v18));
        v65 = vmax_s32(vadd_s32(v64, -2), 0);
        v66 = vmax_s32(vadd_s32(v64, 0x300000002), 0);
        i16 = v17[v18 >> 27].i16;
        v61 = HIDWORD(v18);
        LODWORD(v61) = *(result + v65.u32[0]) * i16[1] + *(result - 3 + v63) * *i16 + *(result + v65.u32[1]) * i16[2] + *(result + (v61 & ~(v18 >> 63))) * i16[3] + *(result + ((v61 + 1) & ~((v61 + 1) >> 31))) * i16[4] + *(result + v66.u32[0]) * i16[5] + *(result + v66.u32[1]) * i16[6] + *(result + ((v61 + 4) & ~((v61 + 4) >> 31))) * i16[7] + 64;
        v67 = (v61 >> 7) & ~(v61 >> 31);
        if (v67 >= 255)
        {
          LOBYTE(v67) = -1;
        }

        *a3++ = v67;
        v18 += v10;
        --v60;
      }

      while (v60);
    }

    v68 = v31 - v25 + 1;
    do
    {
      v69 = v17[v18 >> 27];
      a9.i64[0] = *(result + ((v18 - 0x300000000) >> 32));
      v70 = vqtbl1q_s8(a9, xmmword_273B8E7D0);
      a9 = vqtbl1q_s8(a9, xmmword_273B8E7C0);
      v69.i32[0] = vaddvq_s32(vmlaq_s32(vmulq_s32(a9, vmovl_high_s16(v69)), v70, vmovl_s16(*v69.i8)));
      v71 = ((v69.i32[0] + 64) >> 7) & ~((v69.i32[0] + 64) >> 31);
      if (v71 >= 255)
      {
        LOBYTE(v71) = -1;
      }

      *a3++ = v71;
      v18 += v10;
      --v68;
    }

    while (v68);
    if (v31 + 1 < a4)
    {
      v72 = 0;
      v73 = ~v31 + a4;
      do
      {
        v74 = HIDWORD(v18) - 3;
        v75 = v17[v18 >> 27].i16;
        v76 = HIDWORD(v18) - 3;
        if (HIDWORD(v18) - 3 >= a2)
        {
          v74 = a2 - 1;
        }

        v77 = *(result + v74);
        v78 = HIDWORD(v18) - 2;
        if (v76 + 1 >= a2)
        {
          v78 = a2 - 1;
        }

        v79 = *(result + v78) * v75[1];
        v80 = HIDWORD(v18) - 1;
        if (v76 + 2 >= a2)
        {
          v80 = a2 - 1;
        }

        v81 = *(result + v80);
        v82 = HIDWORD(v18);
        if (v76 + 3 >= a2)
        {
          v82 = a2 - 1;
        }

        v83 = *(result + v82);
        v84 = HIDWORD(v18) + 1;
        if (v76 + 4 >= a2)
        {
          v84 = a2 - 1;
        }

        v85 = *(result + v84);
        v86 = HIDWORD(v18) + 2;
        if (v76 + 5 >= a2)
        {
          v86 = a2 - 1;
        }

        v87 = *(result + v86);
        v88 = HIDWORD(v18) + 3;
        if (v76 + 6 >= a2)
        {
          v88 = a2 - 1;
        }

        v89 = *(result + v88);
        v90 = v76 + 7;
        if (v90 >= a2)
        {
          LODWORD(v90) = a2 - 1;
        }

        v91 = v79 + v77 * *v75 + v81 * v75[2] + v83 * v75[3] + v85 * v75[4] + v87 * v75[5] + v89 * v75[6] + *(result + v90) * v75[7] + 64;
        v92 = (v91 >> 7) & ~(v91 >> 31);
        if (v92 >= 255)
        {
          LOBYTE(v92) = -1;
        }

        a3[v72] = v92;
        v18 += v10;
        ++v72;
      }

      while (v73 != v72);
    }
  }

  else if (a4 >= 1)
  {
    do
    {
      if (HIDWORD(v18) - 3 >= a2)
      {
        v33 = a2 - 1;
      }

      else
      {
        v33 = HIDWORD(v18) - 3;
      }

      v34 = HIDWORD(v18) - 3;
      v35 = v17[v18 >> 27].i16;
      v36 = *v35;
      if (SHIDWORD(v18) < 3)
      {
        v33 = 0;
      }

      v37 = HIDWORD(v18) - 2;
      if (v34 + 1 >= a2)
      {
        v37 = a2 - 1;
      }

      if (SHIDWORD(v18) < 2)
      {
        v37 = 0;
      }

      v38 = *(result + v33);
      v39 = *(result + v37) * v35[1];
      v40 = HIDWORD(v18) - 1;
      if (v34 + 2 >= a2)
      {
        v40 = a2 - 1;
      }

      v41 = v35[2];
      if (SHIDWORD(v18) <= 0)
      {
        v40 = 0;
      }

      v42 = *(result + v40);
      LODWORD(v43) = HIDWORD(v18);
      v44 = v35[3];
      if (v34 + 3 >= a2)
      {
        LODWORD(v43) = a2 - 1;
      }

      v43 = v43;
      if (v18 < 0)
      {
        v43 = 0;
      }

      v45 = *(result + v43);
      v46 = HIDWORD(v18) + 1;
      v47 = v35[4];
      if (v34 + 4 >= a2)
      {
        v46 = a2 - 1;
      }

      if (SHIDWORD(v18) < -1)
      {
        v46 = 0;
      }

      v48 = *(result + v46);
      v49 = HIDWORD(v18) + 2;
      v50 = v35[5];
      if (v34 + 5 >= a2)
      {
        v49 = a2 - 1;
      }

      if (SHIDWORD(v18) < -2)
      {
        v49 = 0;
      }

      v51 = HIDWORD(v18) + 3;
      v52 = v35[6];
      v53 = *(result + v49);
      if (v34 + 6 >= a2)
      {
        v51 = a2 - 1;
      }

      if (SHIDWORD(v18) < -3)
      {
        v51 = 0;
      }

      v54 = *(result + v51);
      v55 = v34 + 7;
      v56 = v35[7];
      if (v55 >= a2)
      {
        LODWORD(v55) = a2 - 1;
      }

      if (SHIDWORD(v18) >= -4)
      {
        v57 = v55;
      }

      else
      {
        v57 = 0;
      }

      v58 = v39 + v38 * v36 + v42 * v41 + v45 * v44 + v48 * v47 + v53 * v50 + v54 * v52 + *(result + v57) * v56 + 64;
      v59 = (v58 >> 7) & ~(v58 >> 31);
      if (v59 >= 255)
      {
        LOBYTE(v59) = -1;
      }

      *a3++ = v59;
      v18 += v10;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t highbd_interpolate(uint64_t result, int a2, __int16 *a3, int a4, int a5)
{
  v5 = a2;
  v6 = (a4 + (a4 >> 31)) >> 1;
  v7 = (v6 + (a2 << 32)) / a4;
  v8 = v6 + ((a2 - a4) << 31);
  v9 = 16 * a4;
  v10 = &filteredinterp_filters625;
  if (16 * a4 < 9 * a2)
  {
    v10 = &filteredinterp_filters500;
  }

  if (v9 < 11 * a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = &filteredinterp_filters750;
  }

  if (v9 < 13 * a2)
  {
    v12 = v11;
  }

  else
  {
    v12 = &filteredinterp_filters875;
  }

  v13 = v6 + ((a4 - a2) << 31);
  if (a2 > a4)
  {
    v14 = v12;
  }

  else
  {
    v8 = -v13;
    v14 = &filteredinterp_filters1000;
  }

  v15 = v8 / a4;
  if (v15 > 0x2FFFFFFFFLL)
  {
    v22 = 0;
    goto LABEL_28;
  }

  v16 = v15 + v7;
  if ((v15 + v7) <= 0x300000000)
  {
    v17 = 0x300000000;
  }

  else
  {
    v17 = v15 + v7;
  }

  if ((v15 + v7) >= 0x300000000)
  {
    v18 = v15 + v7;
  }

  else
  {
    v18 = v16 + 1;
  }

  v19 = v16 < 0x300000000;
  v20 = (v17 - v18) / v7;
  if (v19)
  {
    ++v20;
  }

  v21 = v20 + 1;
  if (v20 + 1 < 8)
  {
    v22 = 0;
    v23 = v8 / a4;
    do
    {
LABEL_27:
      ++v22;
      v23 += v7;
    }

    while (v23 < 0x300000000);
    goto LABEL_28;
  }

  v23 = v15 + (v21 & 0xFFFFFFFFFFFFFFF8) * v7;
  v24 = 0uLL;
  v25.i64[0] = 0x100000001;
  v25.i64[1] = 0x100000001;
  v26 = v21 & 0xFFFFFFFFFFFFFFF8;
  v27 = 0uLL;
  do
  {
    v24 = vaddq_s32(v24, v25);
    v27 = vaddq_s32(v27, v25);
    v26 -= 8;
  }

  while (v26);
  v22 = vaddvq_s32(vpaddq_s32(v24, v27));
  if (v21 != (v21 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_27;
  }

LABEL_28:
  v28 = a4 - 1;
  for (i = v15 + v7 * (a4 - 1); a2 - 4 <= i >> 32; i -= v7)
  {
    --v28;
  }

  if (v22 <= v28)
  {
    if (v22)
    {
      v60 = v22;
      do
      {
        v61 = HIDWORD(v15);
        if (SHIDWORD(v15) <= 3)
        {
          v63 = 3;
        }

        else
        {
          v63 = HIDWORD(v15);
        }

        v64 = vdup_n_s32(HIDWORD(v15));
        v65 = vmax_s32(vadd_s32(v64, -2), 0);
        v66 = vmax_s32(vadd_s32(v64, 0x300000002), 0);
        v62 = &v14[16 * (v15 >> 27)];
        v67 = (*(result + 2 * v65.u32[0]) * v62[1] + *(result - 6 + 2 * v63) * *v62 + *(result + 2 * v65.u32[1]) * v62[2] + *(result + 2 * (v61 & ~(v15 >> 63))) * v62[3] + *(result + 2 * ((v61 + 1) & ~((v61 + 1) >> 31))) * v62[4] + *(result + 2 * v66.u32[0]) * v62[5] + *(result + 2 * v66.u32[1]) * v62[6] + *(result + 2 * ((v61 + 4) & ~((v61 + 4) >> 31))) * v62[7] + 64) >> 7;
        if (v67 >= 0x3FF)
        {
          v68 = 1023;
        }

        else
        {
          v68 = (*(result + 2 * v65.u32[0]) * v62[1] + *(result - 6 + 2 * v63) * *v62 + *(result + 2 * v65.u32[1]) * v62[2] + *(result + 2 * (v61 & ~(v15 >> 63))) * v62[3] + *(result + 2 * ((v61 + 1) & ~((v61 + 1) >> 31))) * v62[4] + *(result + 2 * v66.u32[0]) * v62[5] + *(result + 2 * v66.u32[1]) * v62[6] + *(result + 2 * ((v61 + 4) & ~((v61 + 4) >> 31))) * v62[7] + 64) >> 7;
        }

        if (v67 >= 0xFFF)
        {
          LOWORD(v69) = 4095;
        }

        else
        {
          v69 = (*(result + 2 * v65.u32[0]) * v62[1] + *(result - 6 + 2 * v63) * *v62 + *(result + 2 * v65.u32[1]) * v62[2] + *(result + 2 * (v61 & ~(v15 >> 63))) * v62[3] + *(result + 2 * ((v61 + 1) & ~((v61 + 1) >> 31))) * v62[4] + *(result + 2 * v66.u32[0]) * v62[5] + *(result + 2 * v66.u32[1]) * v62[6] + *(result + 2 * ((v61 + 4) & ~((v61 + 4) >> 31))) * v62[7] + 64) >> 7;
        }

        if (v67 >= 0xFF)
        {
          LOWORD(v70) = 255;
        }

        else
        {
          v70 = (*(result + 2 * v65.u32[0]) * v62[1] + *(result - 6 + 2 * v63) * *v62 + *(result + 2 * v65.u32[1]) * v62[2] + *(result + 2 * (v61 & ~(v15 >> 63))) * v62[3] + *(result + 2 * ((v61 + 1) & ~((v61 + 1) >> 31))) * v62[4] + *(result + 2 * v66.u32[0]) * v62[5] + *(result + 2 * v66.u32[1]) * v62[6] + *(result + 2 * ((v61 + 4) & ~((v61 + 4) >> 31))) * v62[7] + 64) >> 7;
        }

        if (a5 != 12)
        {
          LOWORD(v69) = v70;
        }

        if (a5 != 10)
        {
          v68 = v69;
        }

        if ((v67 & 0x80000000) == 0)
        {
          v71 = v68;
        }

        else
        {
          v71 = 0;
        }

        *a3++ = v71;
        v15 += v7;
        --v60;
      }

      while (v60);
    }

    v72 = v28 - v22 + 1;
    do
    {
      v73 = &v14[16 * (v15 >> 27)];
      v74 = (v15 - 0x300000000) >> 32;
      v75 = (*(result + 2 + 2 * v74) * v73[1] + *(result + 2 * v74) * *v73 + *(result + 4 + 2 * v74) * v73[2] + *(result + 6 + 2 * v74) * v73[3] + *(result + 8 + 2 * v74) * v73[4] + *(result + 10 + 2 * v74) * v73[5] + *(result + 12 + 2 * v74) * v73[6] + *(result + 14 + 2 * v74) * v73[7] + 64) >> 7;
      if (v75 >= 0x3FF)
      {
        v76 = 1023;
      }

      else
      {
        v76 = v75;
      }

      if (v75 >= 0xFFF)
      {
        v77 = 4095;
      }

      else
      {
        v77 = v75;
      }

      if (v75 >= 0xFF)
      {
        v78 = 255;
      }

      else
      {
        v78 = v75;
      }

      if (a5 != 12)
      {
        v77 = v78;
      }

      if (a5 != 10)
      {
        v76 = v77;
      }

      if ((v75 & 0x80000000) == 0)
      {
        v79 = v76;
      }

      else
      {
        v79 = 0;
      }

      *a3++ = v79;
      v15 += v7;
      --v72;
    }

    while (v72);
    if (v28 + 1 < a4)
    {
      v80 = 0;
      v81 = ~v28 + a4;
      do
      {
        v82 = &v14[16 * (v15 >> 27)];
        v83 = HIDWORD(v15) - 3;
        v84 = HIDWORD(v15) - 3;
        v85 = *v82;
        if (HIDWORD(v15) - 3 >= a2)
        {
          v83 = a2 - 1;
        }

        v86 = HIDWORD(v15) - 2;
        v87 = *(result + 2 * v83);
        if (v84 + 1 >= v5)
        {
          v86 = a2 - 1;
        }

        v88 = *(result + 2 * v86) * v82[1];
        v89 = HIDWORD(v15) - 1;
        v90 = v82[2];
        if (v84 + 2 >= v5)
        {
          v89 = a2 - 1;
        }

        v91 = *(result + 2 * v89);
        v92 = v82[3];
        v93 = HIDWORD(v15);
        if (v84 + 3 >= v5)
        {
          v93 = a2 - 1;
        }

        v94 = v82[4];
        v95 = HIDWORD(v15) + 1;
        v96 = *(result + 2 * v93);
        if (v84 + 4 >= v5)
        {
          v95 = a2 - 1;
        }

        v97 = v82[5];
        v98 = HIDWORD(v15) + 2;
        v99 = *(result + 2 * v95);
        if (v84 + 5 >= v5)
        {
          v98 = a2 - 1;
        }

        v100 = v82[6];
        v101 = HIDWORD(v15) + 3;
        v102 = *(result + 2 * v98);
        if (v84 + 6 >= v5)
        {
          v101 = a2 - 1;
        }

        v103 = v82[7];
        v104 = v84 + 7;
        v105 = *(result + 2 * v101);
        if (v104 >= v5)
        {
          LODWORD(v104) = a2 - 1;
        }

        v106 = (v88 + v87 * v85 + v91 * v90 + v96 * v92 + v99 * v94 + v102 * v97 + v105 * v100 + *(result + 2 * v104) * v103 + 64) >> 7;
        if (v106 >= 0x3FF)
        {
          v107 = 1023;
        }

        else
        {
          v107 = v106;
        }

        if (v106 >= 0xFFF)
        {
          v108 = 4095;
        }

        else
        {
          v108 = v106;
        }

        if (v106 >= 0xFF)
        {
          v109 = 255;
        }

        else
        {
          v109 = v106;
        }

        if (a5 != 12)
        {
          v108 = v109;
        }

        if (a5 != 10)
        {
          v107 = v108;
        }

        if ((v106 & 0x80000000) == 0)
        {
          v110 = v107;
        }

        else
        {
          v110 = 0;
        }

        a3[v80] = v110;
        v15 += v7;
        ++v80;
      }

      while (v81 != v80);
    }
  }

  else if (a4 >= 1)
  {
    do
    {
      if (HIDWORD(v15) - 3 >= a2)
      {
        v30 = a2 - 1;
      }

      else
      {
        v30 = HIDWORD(v15) - 3;
      }

      v31 = &v14[16 * (v15 >> 27)];
      v32 = HIDWORD(v15) - 3;
      v33 = *v31;
      v34 = v32 + 1;
      if (SHIDWORD(v15) < 3)
      {
        v30 = 0;
      }

      if (v34 >= a2)
      {
        LODWORD(v34) = a2 - 1;
      }

      v35 = *(result + 2 * v30);
      if (SHIDWORD(v15) < 2)
      {
        LODWORD(v34) = 0;
      }

      v36 = v31[2];
      v37 = *(result + 2 * v34) * v31[1];
      if (v32 + 2 >= a2)
      {
        v38 = a2 - 1;
      }

      else
      {
        v38 = HIDWORD(v15) - 1;
      }

      if (SHIDWORD(v15) <= 0)
      {
        v38 = 0;
      }

      v39 = *(result + 2 * v38);
      LODWORD(v40) = HIDWORD(v15);
      v41 = v31[3];
      if (v32 + 3 >= a2)
      {
        LODWORD(v40) = a2 - 1;
      }

      v40 = v40;
      if (v15 < 0)
      {
        v40 = 0;
      }

      v42 = HIDWORD(v15) + 1;
      v43 = v31[4];
      v44 = *(result + 2 * v40);
      if (v32 + 4 >= a2)
      {
        v42 = a2 - 1;
      }

      if (SHIDWORD(v15) < -1)
      {
        v42 = 0;
      }

      v45 = HIDWORD(v15) + 2;
      v46 = *(result + 2 * v42);
      if (v32 + 5 >= a2)
      {
        v45 = a2 - 1;
      }

      if (SHIDWORD(v15) < -2)
      {
        v45 = 0;
      }

      v47 = *(result + 2 * v45);
      v48 = v31[5];
      v49 = HIDWORD(v15) + 3;
      v50 = v31[6];
      if (v32 + 6 >= a2)
      {
        v49 = a2 - 1;
      }

      if (SHIDWORD(v15) < -3)
      {
        v49 = 0;
      }

      v51 = v32 + 7;
      v52 = v31[7];
      v53 = *(result + 2 * v49);
      if (v51 >= a2)
      {
        LODWORD(v51) = a2 - 1;
      }

      if (SHIDWORD(v15) >= -4)
      {
        v54 = v51;
      }

      else
      {
        v54 = 0;
      }

      v55 = (v37 + v35 * v33 + v39 * v36 + v44 * v41 + v46 * v43 + v47 * v48 + v53 * v50 + *(result + 2 * v54) * v52 + 64) >> 7;
      if (v55 >= 0x3FF)
      {
        v56 = 1023;
      }

      else
      {
        v56 = v55;
      }

      if (v55 >= 0xFFF)
      {
        v57 = 4095;
      }

      else
      {
        v57 = v55;
      }

      if (v55 >= 0xFF)
      {
        v58 = 255;
      }

      else
      {
        v58 = v55;
      }

      if (a5 != 12)
      {
        v57 = v58;
      }

      if (a5 != 10)
      {
        v56 = v57;
      }

      if ((v55 & 0x80000000) == 0)
      {
        v59 = v56;
      }

      else
      {
        v59 = 0;
      }

      *a3++ = v59;
      v15 += v7;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t setup_rtcd_internal_0()
{
  result = arm_cpu_caps();
  vp9_block_error = vp9_block_error_neon;
  vp9_block_error_fp = vp9_block_error_fp_neon;
  return result;
}

uint64_t vp9_setup_scale_factors_for_frame(uint64_t result, int a2, int a3, int a4, int a5, int a6)
{
  if (a2 > 2 * a4 || 2 * a5 < a3 || 16 * a2 < a4 || 16 * a3 < a5)
  {
    *result = -1;
    return result;
  }

  v6 = (a2 << 14) / a4;
  v7 = (a3 << 14) / a5;
  *result = v6;
  *(result + 4) = v7;
  v8 = v7 >> 10;
  *(result + 8) = v6 >> 10;
  *(result + 12) = v7 >> 10;
  if (v6 == -1 || v7 == -1 || (v9 = scaled_y, v10 = scaled_x, v6 == 0x4000) && v7 == 0x4000)
  {
    v10 = unscaled_value;
    v9 = unscaled_value;
  }

  *(result + 16) = v10;
  *(result + 24) = v9;
  if (v6 >> 10 == 16)
  {
    if (v8 == 16)
    {
      *(result + 32) = vpx_convolve_copy_neon;
      v11 = vpx_convolve8_vert;
      *(result + 40) = vpx_convolve_avg_neon;
      *(result + 48) = v11;
      v12 = vpx_convolve8_horiz;
      *(result + 56) = vpx_convolve8_avg_vert;
      *(result + 64) = v12;
      v13 = vpx_convolve8;
      *(result + 72) = vpx_convolve8_avg_horiz;
      *(result + 80) = v13;
      *(result + 88) = vpx_convolve8_avg;
      if (!a6)
      {
        return result;
      }

      *(result + 96) = vpx_highbd_convolve_copy_neon;
      *(result + 104) = vpx_highbd_convolve_avg_neon;
      *(result + 112) = vpx_highbd_convolve8_vert_neon;
      *(result + 120) = vpx_highbd_convolve8_avg_vert_neon;
      *(result + 128) = vpx_highbd_convolve8_horiz_neon;
      v14 = vpx_highbd_convolve8_avg_horiz_neon;
    }

    else
    {
      *(result + 32) = vpx_scaled_vert_c;
      *(result + 40) = vpx_scaled_avg_vert_c;
      *(result + 48) = vpx_scaled_vert_c;
      *(result + 56) = vpx_scaled_avg_vert_c;
      *(result + 64) = vpx_scaled_2d_neon;
      *(result + 72) = vpx_scaled_avg_2d_c;
      *(result + 80) = vpx_scaled_2d_neon;
      *(result + 88) = vpx_scaled_avg_2d_c;
      if (!a6)
      {
        return result;
      }

      *(result + 96) = vpx_highbd_convolve8_vert_neon;
      *(result + 104) = vpx_highbd_convolve8_avg_vert_neon;
      *(result + 112) = vpx_highbd_convolve8_vert_neon;
      *(result + 120) = vpx_highbd_convolve8_avg_vert_neon;
      *(result + 128) = vpx_highbd_convolve8_neon;
      v14 = vpx_highbd_convolve8_avg_neon;
    }

    goto LABEL_27;
  }

  if (v8 == 16)
  {
    v15 = vpx_scaled_horiz_c;
  }

  else
  {
    v15 = vpx_scaled_2d_neon;
  }

  if (v8 == 16)
  {
    v16 = vpx_scaled_avg_horiz_c;
  }

  else
  {
    v16 = vpx_scaled_avg_2d_c;
  }

  *(result + 32) = v15;
  *(result + 40) = v16;
  *(result + 48) = vpx_scaled_2d_neon;
  *(result + 56) = vpx_scaled_avg_2d_c;
  *(result + 64) = v15;
  *(result + 72) = v16;
  *(result + 80) = vpx_scaled_2d_neon;
  *(result + 88) = vpx_scaled_avg_2d_c;
  if (a6)
  {
    if (v8 == 16)
    {
      *(result + 96) = vpx_highbd_convolve8_horiz_neon;
      *(result + 104) = vpx_highbd_convolve8_avg_horiz_neon;
      *(result + 112) = vpx_highbd_convolve8_neon;
      *(result + 120) = vpx_highbd_convolve8_avg_neon;
      *(result + 128) = vpx_highbd_convolve8_horiz_neon;
      *(result + 136) = vpx_highbd_convolve8_avg_horiz_neon;
LABEL_28:
      *(result + 144) = vpx_highbd_convolve8_neon;
      *(result + 152) = vpx_highbd_convolve8_avg_neon;
      return result;
    }

    *(result + 96) = vpx_highbd_convolve8_neon;
    v14 = vpx_highbd_convolve8_avg_neon;
    *(result + 104) = vpx_highbd_convolve8_avg_neon;
    *(result + 112) = vpx_highbd_convolve8_neon;
    *(result + 120) = vpx_highbd_convolve8_avg_neon;
    *(result + 128) = vpx_highbd_convolve8_neon;
LABEL_27:
    *(result + 136) = v14;
    goto LABEL_28;
  }

  return result;
}

_DWORD *vp9_perceptual_aq_mode_setup(_DWORD *result, uint64_t a2, double a3, int16x4_t a4)
{
  v5 = result[48620];
  v6 = result[43257];
  v7 = result[47464];
  if (v7 == 8)
  {
    v10 = 0.25;
    v8 = ac_qlookup_0;
  }

  else
  {
    if (v7 == 12)
    {
      v8 = ac_qlookup_12;
      v9 = 0x3F90000000000000;
    }

    else
    {
      if (v7 != 10)
      {
        v12 = -0.015625;
        goto LABEL_15;
      }

      v8 = ac_qlookup_10;
      v9 = 0x3FB0000000000000;
    }

    v10 = *&v9;
  }

  if (v6 >= 0xFF)
  {
    v11 = 255;
  }

  else
  {
    v11 = result[43257];
  }

  if (v6 < 0)
  {
    v11 = 0;
  }

  a4.i16[0] = v8[v11];
  v12 = v10 * vmovl_s16(a4).i32[0];
LABEL_15:
  v13 = 0;
  v14 = result + 48580;
  v15 = (v5 / 2);
  v16 = *&result[2 * v15 + 48580];
  *a2 = 65793;
  *(a2 + 16) = 0u;
  v17 = a2 + 16;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0;
  *(a2 + 80) = 0u;
  v18 = a2 + 80;
  if (v5 >= 2)
  {
    v19 = 0;
    do
    {
      v21 = v12 / ((v16 - *&v14[2 * v19]) * 0.25 + 1.0);
      v22 = result[47464];
      if (v22 == 10)
      {
        v23 = 0.0625;
      }

      else
      {
        v23 = 0.015625;
      }

      switch(v22)
      {
        case 8:
          v20 = 0;
          while (1)
          {
            LOWORD(v4) = ac_qlookup_0[v20];
            v4 = 0.25 * vmovl_s16(*&v4).i32[0];
            if (v4 >= v21)
            {
              break;
            }

            if (++v20 == 256)
            {
              goto LABEL_17;
            }
          }

          break;
        case 10:
          v20 = 0;
          while (1)
          {
            LOWORD(v4) = ac_qlookup_10[v20];
            v4 = v23 * vmovl_s16(*&v4).i32[0];
            if (v4 >= v21)
            {
              break;
            }

            if (++v20 == 256)
            {
              goto LABEL_17;
            }
          }

          break;
        case 12:
          v20 = 0;
          while (1)
          {
            LOWORD(v4) = ac_qlookup_12[v20];
            v4 = v23 * vmovl_s16(*&v4).i32[0];
            if (v4 >= v21)
            {
              break;
            }

            if (++v20 == 256)
            {
              goto LABEL_17;
            }
          }

          break;
        default:
          if (v21 > -v23)
          {
LABEL_17:
            LOWORD(v20) = 255;
          }

          else
          {
            LOWORD(v20) = 0;
          }

          break;
      }

      *(v17 + 8 * v19) = v20 - v6;
      *(v18 + 4 * v19++) |= 1u;
    }

    while (v19 != v15);
    v13 = v5 / 2;
  }

  *(v17 + 8 * v13) = 0;
  *(v18 + 4 * v13) |= 1u;
  if (v13 < v5)
  {
    v24 = v13;
    do
    {
      v26 = v12 * ((*&v14[2 * v24] - v16) * 0.25 + 1.0);
      v27 = result[47464];
      if (v27 == 10)
      {
        v28 = 0.0625;
      }

      else
      {
        v28 = 0.015625;
      }

      switch(v27)
      {
        case 8:
          v25 = 0;
          while (1)
          {
            LOWORD(v4) = ac_qlookup_0[v25];
            v4 = 0.25 * vmovl_s16(*&v4).i32[0];
            if (v4 >= v26)
            {
              break;
            }

            if (++v25 == 256)
            {
              goto LABEL_43;
            }
          }

          break;
        case 10:
          v25 = 0;
          while (1)
          {
            LOWORD(v4) = ac_qlookup_10[v25];
            v4 = v28 * vmovl_s16(*&v4).i32[0];
            if (v4 >= v26)
            {
              break;
            }

            if (++v25 == 256)
            {
              goto LABEL_43;
            }
          }

          break;
        case 12:
          v25 = 0;
          while (1)
          {
            LOWORD(v4) = ac_qlookup_12[v25];
            v4 = v28 * vmovl_s16(*&v4).i32[0];
            if (v4 >= v26)
            {
              break;
            }

            if (++v25 == 256)
            {
              goto LABEL_43;
            }
          }

          break;
        default:
          if (v26 > -v28)
          {
LABEL_43:
            LOWORD(v25) = 255;
          }

          else
          {
            LOWORD(v25) = 0;
          }

          break;
      }

      *(v17 + 8 * v24) = v25 - v6;
      *(v18 + 4 * v24++) |= 1u;
    }

    while (v24 != v5);
  }

  return result;
}

uint64_t vp9_choose_segmap_coding_method(uint64_t a1, uint64_t a2, double a3, int32x4_t a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 18232);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  memset(v40, 0, sizeof(v40));
  memset(v39, 0, sizeof(v39));
  *(a1 + 4784) = -1;
  v32 = (a1 + 4781);
  v33 = (a1 + 4780);
  *(a1 + 4781) = -1;
  *(a1 + 4788) = -1;
  *(a1 + 4790) = -1;
  v6 = *(a1 + 18232);
  if (v6 != 31)
  {
    v13 = 0;
    v14 = *(a1 + 1312);
    v34 = (a1 + 18232);
    do
    {
      v15.i32[0] = 0;
      v15.i32[1] = 8 * ((v14 + 7) >> 3 >> v5[1]);
      *a4.i8 = vdup_n_s32(v14);
      v16 = COERCE_DOUBLE(vmin_s32(v15, *a4.i8));
      v35 = v16;
      v17 = *(a1 + 1320);
      v18 = (v17 + 7) >> 3;
      v19 = 8 * ((v18 * v13) >> v6);
      if (v19 >= v17)
      {
        v20 = *(a1 + 1320);
      }

      else
      {
        v20 = 8 * ((v18 * v13) >> v6);
      }

      ++v13;
      v21 = 8 * ((v18 * v13) >> v6);
      if (v21 >= v17)
      {
        v22 = *(a1 + 1320);
      }

      else
      {
        v22 = v21;
      }

      v36 = v20;
      v37 = v22;
      if (v14 >= 1 && v19 < v22)
      {
        v23 = 0;
        v24 = *(a1 + 1480) + 8 * v20;
        do
        {
          v25 = v24;
          v26 = v20;
          do
          {
            count_segs_sb(a1, a2, &v35, v25, v40, &v41, v39, v23, v16, a4, v26, 0xCu);
            v26 += 8;
            v25 += 8;
          }

          while (v26 < v22);
          v14 = *(a1 + 1312);
          v23 += 8;
          v24 += *(a1 + 1324) << 6;
        }

        while (v23 < v14);
        v5 = v34;
        v6 = *v34;
      }
    }

    while (v13 < 1 << v6);
  }

  calc_segtree_probs(v40, &v35);
  result = cost_segmap(v40, &v35);
  if (!*(a1 + 1276) || *(a1 + 1292) || ((v8 = result, calc_segtree_probs(v39, v38), v9 = cost_segmap(v39, v38), !(HIDWORD(v41) + v41)) ? (LOBYTE(v11) = 0x80) : (v10 = (((HIDWORD(v41) + v41) >> 1) + (v41 << 8)) / (HIDWORD(v41) + v41), v11 = (v10 == 0) | ((255 - v10) >> 23) | v10), !(HIDWORD(v42) + v42) ? (LOBYTE(v28) = 0x80) : (v27 = (((HIDWORD(v42) + v42) >> 1) + (v42 << 8)) / (HIDWORD(v42) + v42), v28 = (v27 == 0) | ((255 - v27) >> 23) | v27), (v29 = v9 + v41 * vp9_prob_cost[v11] + HIDWORD(v41) * vp9_prob_cost[256 - v11] + v42 * vp9_prob_cost[v28] + HIDWORD(v42) * vp9_prob_cost[256 - v28], !(HIDWORD(v43) + v43)) ? (LOBYTE(v31) = 0x80) : (v30 = (((HIDWORD(v43) + v43) >> 1) + (v43 << 8)) / (HIDWORD(v43) + v43), v31 = (v30 == 0) | ((255 - v30) >> 23) | v30), result = 256, (v29 + v43 * vp9_prob_cost[v31] + HIDWORD(v43) * vp9_prob_cost[256 - v31]) >= v8))
  {
    *v33 = 0;
    *v32 = LODWORD(v35);
    *(v32 + 3) = *(&v35 + 3);
  }

  else
  {
    *v33 = 1;
    *v32 = *v38;
    *(v32 + 3) = *&v38[3];
    v33[8] = v11;
    v33[9] = v28;
    v33[10] = v31;
  }

  return result;
}

uint64_t count_segs_sb(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 **a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double a9, int32x4_t a10, int a11, unsigned __int8 a12)
{
  if (*(result + 1312) > a8)
  {
    v13 = result;
    v44 = result;
    while (1)
    {
      if (*(v13 + 1320) <= a11)
      {
        return result;
      }

      v16 = a12;
      v17 = num_8x8_blocks_wide_lookup[a12];
      v18 = **a4;
      v19 = num_8x8_blocks_wide_lookup[v18];
      v20 = num_8x8_blocks_high_lookup[v18];
      if (v19 == v17 && v20 == v17)
      {
        break;
      }

      v22 = *(v13 + 1324);
      v23 = v17 >> 1;
      if (v19 == v17 && v20 < v17)
      {
        v46 = a8;
        count_segs(v13, a2, a3, a4, a5, a6, a7, v17, a9, a10, v23, a8, a11);
        v29 = &a4[v23 * v22];
        HIDWORD(v37) = v23 + v46;
        v38 = a11;
        LODWORD(v37) = v17 >> 1;
        v30 = v13;
        v31 = a2;
        v32 = a3;
        v33 = a5;
        v34 = a6;
        v35 = a7;
        goto LABEL_20;
      }

      if (v19 < v17 && v20 == v17)
      {
        v47 = a8;
        count_segs(v13, a2, a3, a4, a5, a6, a7, v17 >> 1, a9, a10, v17, a8, a11);
        v29 = &a4[v23];
        v38 = v23 + a11;
        v37 = __PAIR64__(v47, v17);
        v30 = v13;
        v31 = a2;
        v32 = a3;
        v33 = a5;
        v34 = a6;
        v35 = a7;
        v36 = v17 >> 1;
        return count_segs(v30, v31, v32, v29, v33, v34, v35, v36, a9, a10, v37, SHIDWORD(v37), v38);
      }

      a12 = subsize_lookup[v16 + 39];
      v26 = a4;
      v45 = a4;
      v27 = a8;
      count_segs_sb(v13, a2, a3, v26, a5, a6, a7);
      count_segs_sb(v44, a2, a3, &v45[v23], a5, a6, a7);
      v28 = v23 * v22;
      v13 = v44;
      result = count_segs_sb(v44, a2, a3, &v45[v28], a5, a6, a7);
      a8 = v23 + v27;
      a4 = &(&v45[v28])[v23];
      a11 += v23;
      if (*(v44 + 1312) <= a8)
      {
        return result;
      }
    }

    v38 = a11;
    v37 = __PAIR64__(a8, v17);
    v30 = v13;
    v35 = a7;
    v31 = a2;
    v32 = a3;
    v33 = a5;
    v29 = a4;
    v34 = a6;
LABEL_20:
    LODWORD(v36) = v17;
    return count_segs(v30, v31, v32, v29, v33, v34, v35, v36, a9, a10, v37, SHIDWORD(v37), v38);
  }

  return result;
}

unsigned int *calc_segtree_probs(unsigned int *result, _BYTE *a2)
{
  v2 = result[1] + *result;
  v3 = result[5] + result[4];
  v4 = v2 + result[2] + result[3];
  v5 = v3 + result[6] + result[7];
  if (v5 + v4)
  {
    v6 = (((v5 + v4) >> 1) + (v4 << 8)) / (v5 + v4);
    *a2 = (v6 == 0) | ((255 - v6) >> 23) | v6;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a2 = 0x80;
    if (v4)
    {
LABEL_3:
      v7 = ((v4 >> 1) + (v2 << 8)) / v4;
      a2[1] = (v7 == 0) | ((255 - v7) >> 23) | v7;
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  a2[1] = 0x80;
  if (v5)
  {
LABEL_4:
    v8 = ((v5 >> 1) + (v3 << 8)) / v5;
    a2[2] = (v8 == 0) | ((255 - v8) >> 23) | v8;
    v9 = *result;
    v10 = result[1] + v9;
    if (v10)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  a2[2] = 0x80;
  v9 = *result;
  v10 = result[1] + v9;
  if (v10)
  {
LABEL_5:
    v11 = ((v10 >> 1) + (v9 << 8)) / v10;
    a2[3] = (v11 == 0) | ((255 - v11) >> 23) | v11;
    v12 = result[2];
    v13 = result[3] + v12;
    if (v13)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  a2[3] = 0x80;
  v12 = result[2];
  v13 = result[3] + v12;
  if (v13)
  {
LABEL_6:
    v14 = ((v13 >> 1) + (v12 << 8)) / v13;
    a2[4] = (v14 == 0) | ((255 - v14) >> 23) | v14;
    v15 = result[4];
    v16 = result[5] + v15;
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_14:
    a2[5] = 0x80;
    v18 = result[6];
    v19 = result[7] + v18;
    if (v19)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  a2[4] = 0x80;
  v15 = result[4];
  v16 = result[5] + v15;
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_7:
  v17 = ((v16 >> 1) + (v15 << 8)) / v16;
  a2[5] = (v17 == 0) | ((255 - v17) >> 23) | v17;
  v18 = result[6];
  v19 = result[7] + v18;
  if (v19)
  {
LABEL_8:
    v20 = ((v19 >> 1) + (v18 << 8)) / v19;
    a2[6] = (v20 == 0) | ((255 - v20) >> 23) | v20;
    return result;
  }

LABEL_15:
  a2[6] = 0x80;
  return result;
}

uint64_t cost_segmap(int *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 + *a1;
  v5 = a1[2];
  v6 = a1[3];
  v7 = v6 + v5;
  v8 = a1[4];
  v9 = a1[5];
  v10 = v9 + v8;
  v11 = a1[6];
  v12 = a1[7];
  v13 = v12 + v11;
  v14 = v6 + v5 + v4;
  v15 = v12 + v11 + v9 + v8;
  result = v14 * vp9_prob_cost[*a2] + v15 * vp9_prob_cost[256 - *a2];
  if (v14 >= 1)
  {
    result = result + v4 * vp9_prob_cost[a2[1]] + v7 * vp9_prob_cost[256 - a2[1]];
    if (v4 >= 1)
    {
      result = result + v2 * vp9_prob_cost[a2[3]] + v3 * vp9_prob_cost[256 - a2[3]];
    }

    if (v7 >= 1)
    {
      result = result + v5 * vp9_prob_cost[a2[4]] + v6 * vp9_prob_cost[256 - a2[4]];
    }
  }

  if (v15 >= 1)
  {
    result = result + v10 * vp9_prob_cost[a2[2]] + v13 * vp9_prob_cost[256 - a2[2]];
    if (v10 >= 1)
    {
      result = result + v8 * vp9_prob_cost[a2[5]] + v9 * vp9_prob_cost[256 - a2[5]];
    }

    if (v13 >= 1)
    {
      return result + v11 * vp9_prob_cost[a2[6]] + v12 * vp9_prob_cost[256 - a2[6]];
    }
  }

  return result;
}

uint64_t count_segs(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 **a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double a9, int32x4_t a10, int a11, int a12, int a13)
{
  v13 = *(result + 1312);
  if (v13 > a12)
  {
    v14 = *(result + 1320);
    if (v14 > a13)
    {
      *(a2 + 448) = a4;
      v15 = (*a4)[4];
      *(a2 + 496) = -64 * a12;
      *(a2 + 500) = (v13 - (a12 + a11)) << 6;
      *(a2 + 488) = -64 * a13;
      *(a2 + 492) = (v14 - (a13 + a8)) << 6;
      if (a12)
      {
        v16 = a4[-*(a2 + 440)];
        *(a2 + 464) = v16;
        if (*(a3 + 8) < a13)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v16 = 0;
        *(a2 + 464) = 0;
        if (*(a3 + 8) < a13)
        {
LABEL_5:
          v17 = *(a4 - 1);
          *(a2 + 456) = v17;
          ++*(a5 + 4 * v15);
          if (!*(result + 1276))
          {
            return result;
          }

LABEL_9:
          v18 = *a4;
          v22 = **a4;
          v19 = *(result + 1320);
          v20 = num_8x8_blocks_wide_lookup[v22];
          v21 = num_8x8_blocks_high_lookup[v22];
          LODWORD(v22) = v19 - a13;
          if (v19 - a13 >= v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = v22;
          }

          v23 = *(result + 1312) - a12;
          if (v23 >= v21)
          {
            v23 = v21;
          }

          if (v23 >= 1 && v22 >= 1)
          {
            v27 = 0;
            result = *(result + 1536);
            v28 = v22 & 0x7FFFFFE0;
            v29 = 8;
            v30 = a13 + v19 * a12;
            while (v22 >= 4)
            {
              if (a13 + v19 * a12 + v19 * v27 + v22 - 1 < a13 + v19 * a12 + v19 * v27 || (v22 - 1) >> 32 != 0)
              {
                break;
              }

              if (v22 >= 0x20)
              {
                v36 = a13 + (v27 + a12) * v19;
                v37 = vdupq_n_s32(v29);
                v38 = result + v36;
                v39 = *(v38 + 16);
                v40 = vmovl_u8(*v38);
                v41 = vmovl_high_u8(*v38);
                v42 = vmovl_u8(*v39.i8);
                v43 = vmovl_u16(*v42.i8);
                v44 = vmovl_high_u16(v42);
                v45 = vmovl_high_u8(v39);
                v46 = vmovl_u16(*v45.i8);
                v47 = vmovl_high_u16(v45);
                v48 = vminq_s32(v37, vmovl_high_u16(v41));
                v49 = vminq_s32(v37, vmovl_u16(*v41.i8));
                v50 = vminq_s32(v37, vmovl_high_u16(v40));
                v51 = vminq_s32(v37, vmovl_u16(*v40.i8));
                v52 = vminq_s32(v37, v47);
                v53 = vminq_s32(v37, v46);
                v54 = vminq_s32(v37, v44);
                v55 = vminq_s32(v37, v43);
                if (v28 != 32)
                {
                  v56 = result + v36 + 32;
                  v57 = *(v56 + 16);
                  v58 = vmovl_u8(*v56);
                  v59 = vmovl_high_u8(*v56);
                  v60 = vmovl_u8(*v57.i8);
                  v61 = vmovl_high_u8(v57);
                  v48 = vminq_s32(v48, vmovl_high_u16(v59));
                  v49 = vminq_s32(v49, vmovl_u16(*v59.i8));
                  v50 = vminq_s32(v50, vmovl_high_u16(v58));
                  v51 = vminq_s32(v51, vmovl_u16(*v58.i8));
                  v52 = vminq_s32(v52, vmovl_high_u16(v61));
                  v53 = vminq_s32(v53, vmovl_u16(*v61.i8));
                  v54 = vminq_s32(v54, vmovl_high_u16(v60));
                  v55 = vminq_s32(v55, vmovl_u16(*v60.i8));
                  if (v28 != 64)
                  {
                    v62 = result + v36 + 64;
                    v63 = *(v62 + 16);
                    v64 = vmovl_u8(*v62);
                    v65 = vmovl_high_u8(*v62);
                    v66 = vmovl_u8(*v63.i8);
                    v67 = vmovl_high_u8(v63);
                    v48 = vminq_s32(v48, vmovl_high_u16(v65));
                    v49 = vminq_s32(v49, vmovl_u16(*v65.i8));
                    v50 = vminq_s32(v50, vmovl_high_u16(v64));
                    v51 = vminq_s32(v51, vmovl_u16(*v64.i8));
                    v52 = vminq_s32(v52, vmovl_high_u16(v67));
                    v53 = vminq_s32(v53, vmovl_u16(*v67.i8));
                    v54 = vminq_s32(v54, vmovl_high_u16(v66));
                    v55 = vminq_s32(v55, vmovl_u16(*v66.i8));
                    if (v28 != 96)
                    {
                      v68 = result + v36 + 96;
                      v69 = *(v68 + 16);
                      v70 = vmovl_u8(*v68);
                      v71 = vmovl_high_u8(*v68);
                      v72 = vmovl_u8(*v69.i8);
                      v73 = vmovl_high_u8(v69);
                      v48 = vminq_s32(v48, vmovl_high_u16(v71));
                      v49 = vminq_s32(v49, vmovl_u16(*v71.i8));
                      v50 = vminq_s32(v50, vmovl_high_u16(v70));
                      v51 = vminq_s32(v51, vmovl_u16(*v70.i8));
                      v52 = vminq_s32(v52, vmovl_high_u16(v73));
                      v53 = vminq_s32(v53, vmovl_u16(*v73.i8));
                      v54 = vminq_s32(v54, vmovl_high_u16(v72));
                      v55 = vminq_s32(v55, vmovl_u16(*v72.i8));
                      if (v28 != 128)
                      {
                        v74 = result + v36 + 128;
                        v75 = *(v74 + 16);
                        v76 = vmovl_u8(*v74);
                        v77 = vmovl_high_u8(*v74);
                        v78 = vmovl_u8(*v75.i8);
                        v79 = vmovl_high_u8(v75);
                        v48 = vminq_s32(v48, vmovl_high_u16(v77));
                        v49 = vminq_s32(v49, vmovl_u16(*v77.i8));
                        v50 = vminq_s32(v50, vmovl_high_u16(v76));
                        v51 = vminq_s32(v51, vmovl_u16(*v76.i8));
                        v52 = vminq_s32(v52, vmovl_high_u16(v79));
                        v53 = vminq_s32(v53, vmovl_u16(*v79.i8));
                        v54 = vminq_s32(v54, vmovl_high_u16(v78));
                        v55 = vminq_s32(v55, vmovl_u16(*v78.i8));
                        if (v28 != 160)
                        {
                          v80 = result + v36 + 160;
                          v81 = *(v80 + 16);
                          v82 = vmovl_u8(*v80);
                          v83 = vmovl_high_u8(*v80);
                          v84 = vmovl_u8(*v81.i8);
                          v85 = vmovl_high_u8(v81);
                          v48 = vminq_s32(v48, vmovl_high_u16(v83));
                          v49 = vminq_s32(v49, vmovl_u16(*v83.i8));
                          v50 = vminq_s32(v50, vmovl_high_u16(v82));
                          v51 = vminq_s32(v51, vmovl_u16(*v82.i8));
                          v52 = vminq_s32(v52, vmovl_high_u16(v85));
                          v53 = vminq_s32(v53, vmovl_u16(*v85.i8));
                          v54 = vminq_s32(v54, vmovl_high_u16(v84));
                          v55 = vminq_s32(v55, vmovl_u16(*v84.i8));
                          if (v28 != 192)
                          {
                            v86 = result + v36 + 192;
                            v87 = *(v86 + 16);
                            v88 = vmovl_u8(*v86);
                            v89 = vmovl_high_u8(*v86);
                            v90 = vmovl_u8(*v87.i8);
                            v91 = vmovl_high_u8(v87);
                            v48 = vminq_s32(v48, vmovl_high_u16(v89));
                            v49 = vminq_s32(v49, vmovl_u16(*v89.i8));
                            v50 = vminq_s32(v50, vmovl_high_u16(v88));
                            v51 = vminq_s32(v51, vmovl_u16(*v88.i8));
                            v52 = vminq_s32(v52, vmovl_high_u16(v91));
                            v53 = vminq_s32(v53, vmovl_u16(*v91.i8));
                            v54 = vminq_s32(v54, vmovl_high_u16(v90));
                            v55 = vminq_s32(v55, vmovl_u16(*v90.i8));
                          }
                        }
                      }
                    }
                  }
                }

                a10 = vminq_s32(vminq_s32(v50, v54), vminq_s32(v48, v52));
                v29 = vminvq_s32(vminq_s32(vminq_s32(vminq_s32(v51, v55), vminq_s32(v49, v53)), a10));
                if (v28 == v22)
                {
                  goto LABEL_23;
                }

                v35 = v22 & 0x7FFFFFE0;
                v32 = v35;
                if ((v22 & 0x1C) == 0)
                {
                  goto LABEL_30;
                }
              }

              else
              {
                v35 = 0;
              }

              v92 = vdupq_n_s32(v29);
              v93 = v35 - (v22 & 0x7FFFFFFC);
              v94 = v30 + v35;
              do
              {
                a10.i32[0] = *(result + v94);
                a10 = vmovl_u16(*&vmovl_u8(*a10.i8));
                v92 = vminq_s32(v92, a10);
                v94 += 4;
                v93 += 4;
              }

              while (v93);
              v29 = vminvq_s32(v92);
              v32 = v22 & 0x7FFFFFFC;
              if (v32 != v22)
              {
                goto LABEL_30;
              }

LABEL_23:
              ++v27;
              v30 += v19;
              if (v27 == v23)
              {
                goto LABEL_20;
              }
            }

            v32 = 0;
LABEL_30:
            v33 = v22 - v32;
            v34 = v30 + v32;
            do
            {
              if (v29 >= *(result + v34))
              {
                v29 = *(result + v34);
              }

              ++v34;
              --v33;
            }

            while (v33);
            goto LABEL_23;
          }

          v29 = 8;
LABEL_20:
          if (v16)
          {
            v25 = v16[5];
            if (v17)
            {
LABEL_22:
              v26 = *(v17 + 5);
              goto LABEL_52;
            }
          }

          else
          {
            v25 = 0;
            if (v17)
            {
              goto LABEL_22;
            }
          }

          v26 = 0;
LABEL_52:
          *(v18 + 5) = v29 == v15;
          ++*(a6 + 8 * (v26 + v25) + 4 * (v29 == v15));
          if (v29 != v15)
          {
            ++*(a7 + 4 * v15);
          }

          return result;
        }
      }

      v17 = 0;
      *(a2 + 456) = 0;
      ++*(a5 + 4 * v15);
      if (!*(result + 1276))
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  return result;
}

uint64_t vp9_compute_skin_sb(uint64_t result, unsigned int a2, uint64_t a3, int a4)
{
  v4 = (result + 173008);
  v5 = 4 << b_width_log2_lookup[a2];
  v96 = a2;
  if (a2 - 2 < 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

  v93 = v6;
  v7 = v5 + 7;
  if (v5 >= 0)
  {
    v7 = 4 << b_width_log2_lookup[a2];
  }

  v8 = *v4 - 2;
  if (a3 + 8 >= v8)
  {
    v9 = *v4 - 2;
  }

  else
  {
    v9 = a3 + 8;
  }

  v10 = *(result + 173016) - 2;
  if (a4 + 8 >= v10)
  {
    v11 = *(result + 173016) - 2;
  }

  else
  {
    v11 = a4 + 8;
  }

  if (v8 > a3 && v10 > a4)
  {
    v12 = result;
    v13 = *(result + 190440);
    v14 = *(v13 + 16);
    result = *(v13 + 36);
    v90 = v93 - 1;
    v15 = v7 >> 3;
    v16 = *(v13 + 56) + 8 * (a4 + v14 * a3);
    v17 = 4 * (a4 + result * a3);
    v18 = *(v13 + 64) + v17;
    v19 = *(v13 + 72) + v17;
    v20 = v5;
    v104 = v4;
    v105 = v5 >> 1;
    v92 = v9;
    v103 = v11;
    v91 = v15;
    v98 = *(v13 + 36);
    v99 = *(v13 + 16);
    v102 = v5;
    v88 = a3;
    v86 = 4 << b_width_log2_lookup[a2];
    if (a2 == 3)
    {
      v100 = 4 * v14 + 4;
      v94 = a4;
      v97 = 2 * result + 2;
      v21 = v15;
      v22 = a3;
      do
      {
        v26 = 0;
        if (v22)
        {
          v27 = v94;
          do
          {
            if (v27)
            {
              v28 = v4[2];
              v29 = *(*(v12 + 933872) + v28 * v22 + v27);
              if (v29 <= 0x3C)
              {
                result = vpx_skin_pixel(*(v16 + v100), *(v18 + v97), *(v19 + v97), v29 < 0x1A);
                v20 = v102;
                v11 = v103;
                v4 = v104;
              }

              else
              {
                result = 0;
              }

              *(*(v12 + 740232) + v22 * v28 + v27) = result;
              ++v26;
              v16 += v20;
              v18 += v105;
              v19 += v105;
            }

            v27 += v21;
          }

          while (v27 < v11);
        }

        v16 += (v99 - v26) << v93;
        v23 = (v98 - v26) << v90;
        v18 += v23;
        v19 += v23;
        v25 = v91;
        v24 = v92;
        v22 += v91;
      }

      while (v22 < v92);
    }

    else
    {
      v95 = v5 >> 2;
      v89 = a4;
      v30 = v15;
      v31 = a3 + 1;
      v32 = a3;
      do
      {
        v34 = 0;
        if (v32)
        {
          v35 = v89;
          do
          {
            if (v35)
            {
              v44 = v4[2];
              v45 = *(v12 + 933872);
              v46 = (v45 + v44 * v32 + v35);
              v47 = *v46;
              v48 = v46[1];
              v49 = (v45 + v35 + v31 * v44);
              v50 = *v49;
              v51 = v49[1];
              if (v50 < v51)
              {
                v51 = v50;
              }

              if (v48 < v51)
              {
                v51 = v48;
              }

              if (v51 >= v47)
              {
                v51 = v47;
              }

              if (v51 <= 0x3C)
              {
                v36 = 4 << b_height_log2_lookup[v96];
                v37 = *(v16 + v105 + (v36 >> 1) * v99);
                v38 = v95 + (v36 >> 2) * v98;
                v39 = *(v18 + v38);
                v40 = *(v19 + v38);
                v101 = v19;
                v41 = v18;
                v42 = v16;
                v43 = v32;
                result = vpx_skin_pixel(v37, v39, v40, v51 < 0x1A);
                v32 = v43;
                v16 = v42;
                v18 = v41;
                v19 = v101;
                v20 = v102;
                v11 = v103;
                v4 = v104;
              }

              else
              {
                result = 0;
              }

              *(*(v12 + 740232) + v32 * v44 + v35) = result;
              ++v34;
              v16 += v20;
              v18 += v105;
              v19 += v105;
            }

            v35 += v30;
          }

          while (v35 < v11);
        }

        v16 += (v99 - v34) << v93;
        v33 = (v98 - v34) << v90;
        v18 += v33;
        v19 += v33;
        v25 = v91;
        v24 = v92;
        v32 = (v32 + v91);
        v31 += v91;
      }

      while (v32 < v92);
    }

    v52 = v24 - v25;
    if (v86 > -8)
    {
      v61 = -v25;
      v62 = v25;
      v63 = v11;
      v64 = v88 - v25;
      v65 = a4 - v25;
      result = v11 - v25;
      v66 = -2 * v25;
      v67 = v88;
      do
      {
        v68 = v65;
        v69 = a4;
        do
        {
          v70 = v4[2];
          if ((v67 != v88 || v69 != a4 && v69 != result) && (v67 != v52 || v69 != a4 && v69 != result))
          {
            v71 = 0;
            v72 = v69 + v67 * v70;
            v74 = v67 == v52 || v69 == a4;
            v75 = v64 * v70;
            v76 = v62 * v70;
            v77 = v61;
            do
            {
              v78 = v77 + v67 >= v88 && v77 + v67 < v24;
              v79 = v68;
              v80 = v66;
              if (v78)
              {
                do
                {
                  if (v79 >= a4 && v79 < v63 && *(*(v12 + 740232) + v75 + v79))
                  {
                    ++v71;
                  }

                  v80 += v62;
                  v79 += v62;
                }

                while (v80 <= 0);
              }

              v75 += v76;
              v78 = v77 <= 0;
              v77 += v62;
            }

            while (v78);
            if (v67 == v88)
            {
              v74 = 1;
            }

            if (v69 == result)
            {
              v74 = 1;
            }

            if (v74)
            {
              v81 = 5;
            }

            else
            {
              v81 = 8;
            }

            v82 = *(v12 + 740232);
            v83 = *(v82 + v72);
            if (*(v82 + v72))
            {
              v84 = v71 < 2;
            }

            else
            {
              v84 = 0;
            }

            if (v84)
            {
              *(v82 + v72) = 0;
              v82 = *(v12 + 740232);
              v83 = *(v82 + v72);
            }

            if (v83)
            {
              v85 = 0;
            }

            else
            {
              v85 = v71 == v81;
            }

            if (v85)
            {
              *(v82 + v72) = 1;
            }
          }

          v69 += v62;
          v68 += v62;
        }

        while (v69 < v63);
        v67 += v62;
        v64 += v62;
      }

      while (v67 < v24);
    }

    else
    {
      v53 = v25 - v11 + a4;
      v54 = v88;
      do
      {
        if (v54 == v88)
        {
          v55 = 0;
          do
          {
            if (v55 && v53 + v55)
            {
              v56 = *(v12 + 740232) + v4[2] * v88 + a4;
              if (*(v56 + v55))
              {
                *(v56 + v55) = 0;
              }
            }

            v55 += v25;
          }

          while (a4 + v55 < v11);
        }

        else
        {
          v57 = a4;
          if (v54 == v52)
          {
            v58 = 0;
            do
            {
              if (v58)
              {
                if (v53 + v58)
                {
                  v60 = *(v12 + 740232) + v4[2] * v52 + a4;
                  if (*(v60 + v58))
                  {
                    *(v60 + v58) = 0;
                  }
                }
              }

              v58 += v25;
            }

            while (a4 + v58 < v11);
          }

          else
          {
            do
            {
              v59 = *(v12 + 740232) + v4[2] * v54;
              if (*(v59 + v57))
              {
                *(v59 + v57) = 0;
              }

              v57 += v25;
            }

            while (v57 < v11);
          }
        }

        v54 += v25;
      }

      while (v54 < v24);
    }
  }

  return result;
}

uint64_t vp9_set_speed_features_framesize_dependent(uint64_t result, unsigned int a2)
{
  *(result + 740040) = 0x80000;
  *(result + 740048) = 80;
  *(result + 740072) = 0;
  *(result + 740056) = 0;
  v2 = *(result + 190072);
  if (a2 >= 1 && v2 == 2)
  {
    v3 = *(result + 171988);
    if (v3 >= *(result + 171992))
    {
      v3 = *(result + 171992);
    }

    if (v3 < 720)
    {
      LOBYTE(v4) = 24;
      *(result + 739736) = 24;
      if (a2 == 1)
      {
        goto LABEL_16;
      }

      v4 = 30;
      *(result + 739736) = 30;
      if (a2 >= 5)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (*(result + 172976))
      {
        v4 = 63;
      }

      else
      {
        v4 = 31;
      }

      *(result + 739736) = v4;
      if (a2 != 1)
      {
        *(result + 739736) = v4;
        if (a2 >= 5)
        {
LABEL_40:
          *(result + 740048) = 200;
          v8 = 0x800000;
          if (v3 > 719)
          {
            v8 = 0x2000000;
          }

          *(result + 740040) = v8;
          if (a2 >= 7)
          {
            if (v3 <= 719)
            {
              v9 = 300;
            }

            else
            {
              v9 = 800;
            }

            *(result + 740020) = v9;
          }
        }
      }
    }
  }

  else
  {
    v4 = *(result + 739736);
  }

  if (v4 == 63)
  {
    *(result + 739788) = 0;
  }

LABEL_16:
  v5 = *(result + 740216);
  if (v2 == 2 && v5 != 0)
  {
    v7 = *(result + 740020);
    if (v7 > v5)
    {
      *(result + 740216) = v7;
    }
  }

  if (v4)
  {
    *(result + 199040) = 0x7FFFFFFF;
    if ((v4 & 2) == 0)
    {
LABEL_24:
      if ((v4 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_32;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_24;
  }

  *(result + 199044) = 0x7FFFFFFF;
  if ((v4 & 4) == 0)
  {
LABEL_25:
    if ((v4 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 199048) = 0x7FFFFFFF;
  if ((v4 & 8) == 0)
  {
LABEL_26:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(result + 199052) = 0x7FFFFFFF;
  if ((v4 & 0x10) == 0)
  {
LABEL_27:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_28;
    }

LABEL_35:
    *(result + 199060) = 0x7FFFFFFF;
    if (*(result + 739608))
    {
      return result;
    }

    goto LABEL_36;
  }

LABEL_34:
  *(result + 199056) = 0x7FFFFFFF;
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (*(result + 739608))
  {
    return result;
  }

LABEL_36:
  if (*(result + 942052))
  {
    if (*(result + 190352) >= 2)
    {
      *(result + 739604) = 0;
    }
  }

  return result;
}

void vp9_set_speed_features_framesize_independent(uint64_t a1, int a2)
{
  v99 = a1 + 942048;
  v4 = a1 + 738576;
  v5 = a1 + 189844;
  *(a1 + 739536) = 1;
  *(a1 + 739584) = 0x300000001;
  *(a1 + 739548) = 0x200000000;
  *(a1 + 739556) = 0;
  v6 = 1;
  if (!*(a1 + 190140))
  {
    v6 = *(a1 + 190136) != 0;
  }

  *(a1 + 739592) = v6;
  *(a1 + 739624) = 1;
  *(a1 + 739540) = 0;
  *(a1 + 739576) = 6;
  *(a1 + 739600) = 0;
  *(a1 + 739676) = 0;
  *(a1 + 739684) = 0;
  *(a1 + 739740) = 0x100000000;
  v7 = (a1 + 739692);
  *(a1 + 739692) = 0;
  *(a1 + 739704) = 0;
  *(a1 + 739820) = 0;
  *(a1 + 739788) = 0u;
  *(a1 + 739804) = 0u;
  *(a1 + 739712) = 13;
  *(a1 + 739720) = 0;
  *(a1 + 739724) = 0;
  *(a1 + 739726) = 12;
  *(a1 + 739728) = 0x400000000;
  *(a1 + 739736) = 0;
  *(a1 + 740032) = 0;
  *(a1 + 739656) = 0;
  *(a1 + 739824) = 0u;
  *(a1 + 739664) = 0x4058C00000000000;
  *(a1 + 739632) = v6;
  *(a1 + 739640) = 0x4058C00000000000;
  *(a1 + 739648) = 1;
  *(a1 + 739652) = *(a1 + 190344);
  *(a1 + 739716) = 0;
  *(a1 + 740172) = 7;
  *(a1 + 740192) = 0;
  memset_pattern16((a1 + 739840), &unk_273BD9450, 0x10uLL);
  memset_pattern16((a1 + 739856), &unk_273BD9450, 0x10uLL);
  *(v4 + 1036) = 0;
  *(v4 + 1044) = 0;
  *(v4 + 1420) = 0;
  *(v4 + 1348) = 0u;
  *(v4 + 1112) = 30;
  *(v4 + 1208) = 0;
  *(v4 + 1364) = 0;
  memset_pattern16((a1 + 739944), &unk_273BD9460, 0x34uLL);
  *(v4 + 1432) = 12;
  *(v4 + 1124) = 6;
  *(v4 + 1436) = 50;
  *(v4 + 1444) = 0;
  *(v4 + 1424) = 0x190000000CLL;
  *(v4 + 1448) = 4;
  *(v4 + 1520) = 0;
  *(v4 + 1536) = 0;
  *(v4 + 1528) = 0;
  *(a1 + 740080) = -1;
  *(a1 + 740088) = -1;
  *(v4 + 1500) = 0;
  *(v4 + 1592) = 2;
  *(v4 + 1028) = 1;
  *(v4 + 1452) = 1;
  *(v4 + 1104) = 2;
  v8 = *(v4 + 3480) == 1;
  if (*(v4 + 3480) == 1)
  {
    v9 = 0x100000;
  }

  else
  {
    v9 = 0x7FFFFFFF;
  }

  *(v4 + 1172) = v9;
  v10 = !v8;
  *(v4 + 1176) = 64;
  v11 = &best_quality_mesh_pattern + 32 * v10;
  *(v4 + 1180) = *(v11 + 1);
  *(v4 + 1184) = 28;
  *(v4 + 1188) = *(v11 + 3);
  *(v4 + 1192) = xmmword_273BD9400;
  if (*(v5 + 228) == 2)
  {
    v12 = a1 + 926372;
    v13 = (a1 + 171988);
    v14 = *(a1 + 172972);
    if (v14)
    {
      v15 = *v4 % 6 == 1;
    }

    else
    {
      v15 = 1;
    }

    v16 = *(v5 + 536);
    *(v4 + 1020) = 0;
    *(v4 + 1032) = 0;
    *(v4 + 1420) = 1;
    v17 = (v4 + 1564);
    *(v4 + 1072) = 0;
    *(v4 + 1168) = -NAN;
    *(v4 + 1544) = 0u;
    *(v4 + 1564) = 0u;
    *(v4 + 1580) = 0u;
    *(v4 + 1224) = 0;
    *(v4 + 1600) = xmmword_273BA3B70;
    *(v4 + 984) = 0;
    if (a2 < 1)
    {
      goto LABEL_50;
    }

    *(v4 + 1080) = 1;
    *(v4 + 1088) = 0;
    *(v4 + 1056) = 0;
    *(v4 + 1064) = 0;
    v18 = v14 && *(a1 + 172988) == 0;
    *(v4 + 1132) = v18;
    *(v4 + 1128) = 1;
    *(v4 + 1100) = v18;
    *(v4 + 1348) = 1;
    *(v4 + 1164) = 1;
    *(v4 + 1212) = 1;
    *(v4 + 968) = 1;
    *(v4 + 1028) = 2;
    *(v4 + 1276) = 7;
    *(v4 + 1288) = 0x700000007;
    if (a2 == 1)
    {
      goto LABEL_50;
    }

    if (v14)
    {
      v19 = 58;
    }

    else
    {
      v19 = 0;
    }

    *(v4 + 1256) = v19;
    *(v4 + 1212) = 2;
    v20 = *(a1 + 754552);
    v21 = v20 - 1;
    *(v4 + 1116) = v20 == 1;
    if (v20 == 1 && (*(a1 + 933800) == 1 || *(v5 + 312) == 2))
    {
      v22 = a1 + 172048;
      v23 = *(a1 + 194512);
      if (v23 != -1 && *(v22 + 4 * v23) != -1 && (*(v4 + 952) & 1) != 0)
      {
        v24 = *(a1 + 172128);
        if (v24 != -1)
        {
          v25 = *(a1 + 172132);
          if (v25 != -1 && (v24 != 0x4000 || v25 != 0x4000))
          {
            *v7 = 0;
          }
        }
      }

      v26 = *(a1 + 194516);
      if (v26 != -1 && *(v22 + 4 * v26) != -1 && (*(v4 + 952) & 2) != 0)
      {
        v27 = *(a1 + 172304);
        if (v27 != -1)
        {
          v28 = *(a1 + 172308);
          if (v28 != -1 && (v27 != 0x4000 || v28 != 0x4000))
          {
            *v7 = 0;
          }
        }
      }

      v29 = *(a1 + 194520);
      if (v29 != -1 && *(v22 + 4 * v29) != -1 && (*(v4 + 952) & 4) != 0)
      {
        v30 = *(a1 + 172480);
        if (v30 != -1)
        {
          v31 = *(a1 + 172484);
          if (v31 != -1 && (v30 != 0x4000 || v31 != 0x4000))
          {
            *v7 = 0;
          }
        }
      }
    }

    *(v4 + 1260) = 50;
    *(v4 + 1024) = 2;
    *(v4 + 1144) = 1;
    *(v4 + 1096) = 7;
    *(v4 + 1152) = 0x300000001;
    *(v4 + 1108) = 0xB00000001;
    *(v4 + 1272) = 7;
    if (a2 < 3)
    {
      goto LABEL_50;
    }

    *(v4 + 1132) = 1;
    *(v4 + 1260) = 100;
    *(v4 + 1036) = 1;
    *(v4 + 976) = 0;
    *(v4 + 1028) = 4;
    *(v4 + 1112) = 6;
    *(v4 + 1044) = 0;
    *(v4 + 1016) = 0;
    *(v4 + 1160) = 63;
    *(v4 + 1352) = 0x200000001;
    if (a2 == 3)
    {
      goto LABEL_50;
    }

    v95 = v15;
    v96 = v16;
    v93 = v21;
    v94 = *(v5 + 248);
    if (!v94 && *(v5 + 244) >= 1)
    {
      *v17 = 1;
    }

    *(v4 + 980) = 1;
    memset_pattern16((a1 + 739840), &unk_273BD9440, 0x10uLL);
    memset_pattern16((a1 + 739856), &unk_273BA37F0, 0x10uLL);
    *(v4 + 1276) = 1;
    v51 = v14 != 0;
    *(v4 + 1008) = 0;
    *(v4 + 960) = 5;
    *(v4 + 1044) = 0;
    *(v4 + 1432) = 9;
    *(v4 + 1420) = 0;
    *(v4 + 1244) = v51;
    v52 = (v4 + 1404);
    *&v53 = 0x340000003400;
    *(&v53 + 1) = 0x340000003400;
    *(v4 + 1404) = v53;
    *(v4 + 1028) = 2;
    *(v4 + 1360) = v51;
    *(v4 + 1256) = 16;
    if (v14)
    {
      v54 = 2;
    }

    else
    {
      v54 = 1;
    }

    *(v4 + 1100) = v54;
    *(v4 + 1120) = 3;
    if (a2 < 5)
    {
      v32 = v14;
      v12 = a1 + 926372;
      v33 = v99;
      goto LABEL_52;
    }

    v55 = (v4 + 1044);
    *(v4 + 1564) = 0;
    *(v4 + 1144) = v54;
    *(v4 + 1149) = 2307;
    if (v14)
    {
      v56 = 15;
    }

    else
    {
      v56 = 20;
    }

    *(v4 + 1248) = v95;
    *(v4 + 1252) = v56;
    *(v4 + 1120) = 2;
    v12 = a1 + 926372;
    if (v94)
    {
      *(v4 + 1364) = 1;
      v57 = (v4 + 1520);
      *v52 = v53;
      *(v4 + 1028) = 2;
      *(v4 + 1440) = 1;
      *v55 = 0x400000000;
      *(v4 + 1360) = v51;
      *(v4 + 1256) = 16;
      *(v4 + 1100) = v54;
      v58 = (a1 + 754540);
      v59 = (a1 + 933796);
      v60 = v96;
    }

    else
    {
      v58 = (a1 + 754540);
      v59 = (a1 + 933796);
      v60 = v96;
      if (*(v5 + 244) >= 1 && *(v4 + 20))
      {
        *(v4 + 1120) = 3;
      }

      *(v4 + 1364) = 1;
      *v52 = v53;
      *(v4 + 1028) = 2;
      *(v4 + 1440) = 1;
      *v55 = 0x400000000;
      *(v4 + 1360) = v51;
      *(v4 + 1256) = 16;
      *(v4 + 1100) = v54;
      *(v4 + 1520) = 1;
      v57 = (v4 + 960);
    }

    *v57 = 1;
    if (v14)
    {
      if (v60 == 1)
      {
        v61 = vdupq_n_s32(0x207u);
        *(v4 + 1296) = v61;
        *(v4 + 1312) = v61;
        *(v4 + 1328) = xmmword_273BD9420;
        *(v4 + 1344) = 7;
LABEL_146:
        v62 = 1;
        *(v4 + 1524) = 1;
        LOBYTE(v63) = v94 != 1;
        goto LABEL_154;
      }

      *&v64 = 0x700000007;
      *(&v64 + 1) = 0x700000007;
      *(v4 + 1296) = v64;
      *(v4 + 1312) = xmmword_273BD9410;
      *&v64 = 0x100000001;
      *(&v64 + 1) = 0x100000001;
      *(v4 + 1328) = v64;
      LOBYTE(v63) = 1;
      *(v4 + 1344) = 1;
      if (v94 != 1)
      {
        v62 = 0;
        goto LABEL_154;
      }
    }

    else
    {
      if (v60 == 1)
      {
        goto LABEL_146;
      }

      if (v94 != 1)
      {
        v62 = 0;
        LOBYTE(v63) = 1;
        goto LABEL_154;
      }
    }

    *(v4 + 1532) = 1;
    v63 = *v58;
    if (*v58)
    {
      LOBYTE(v63) = 0;
      v62 = 0;
    }

    else
    {
      v62 = 0;
      *(v4 + 1536) = 1;
    }

LABEL_154:
    v65 = *v58;
    if (*v58 && v58[1] >= 1)
    {
      *(v4 + 1572) = 1;
    }

    if (!v14)
    {
      goto LABEL_164;
    }

    if (*v59)
    {
      LOBYTE(v63) = 1;
    }

    if ((v63 & 1) == 0)
    {
      if (!*(v4 + 544))
      {
        if (v65 || *(a1 + 171992) * *(a1 + 171988) > 101376 || v60 == 1)
        {
          v66 = 1;
        }

        else
        {
          v66 = 2;
        }

        *(v4 + 1580) = v66;
      }
    }

    else
    {
LABEL_164:
      if (!v94 && *(v5 + 244) >= 1 && *v13 <= 1280 && *(a1 + 171992) <= 720)
      {
        *v17 = 0x100000001;
      }
    }

    v67 = *(a1 + 171992) * *(a1 + 171988);
    if (v67 <= 921600)
    {
      v68 = v59[1];
      if (!v68)
      {
LABEL_175:
        *(v4 + 1548) = 1;
        if (a2 != 5)
        {
          goto LABEL_179;
        }

        goto LABEL_50;
      }
    }

    else
    {
      *(v4 + 1224) = 2;
      v68 = v59[1];
      if (!v68)
      {
        goto LABEL_175;
      }
    }

    if (a2 != 5)
    {
LABEL_179:
      if (!v94 && *(v5 + 244) >= 1)
      {
        *v17 = 0x100000001;
      }

      *(v4 + 1120) = 3;
      *(v4 + 960) = 0x100000001;
      *(v4 + 1036) = 0;
      if (!v68)
      {
        *(v4 + 1556) = 1;
        v69 = v67 >= 230401 ? 60000 : 40000;
        *(v4 + 1560) = v69;
        if (!*(v99 + 48) && (!v65 || v58[1] == v93))
        {
          v70 = v62;
          v71 = vpx_calloc((*(a1 + 173020) >> 3) + (*(a1 + 173020) >> 3) * (*(a1 + 173008) >> 3), 1uLL);
          v62 = v70;
          v60 = v96;
          v58 = (a1 + 754540);
          v59 = (a1 + 933796);
          v12 = a1 + 926372;
          *(v99 + 48) = v71;
          if (!v71)
          {
            vpx_internal_error(a1 + 171696, 2, "Failed to allocate cpi->content_state_sb_fd");
            v62 = v70;
            v60 = v96;
            v58 = (a1 + 754540);
            v59 = (a1 + 933796);
            v12 = a1 + 926372;
          }
        }
      }

      v72 = *(v5 + 248);
      v73 = v60 != 1 && v72 == 1;
      v74 = v73;
      if (v73)
      {
        *(v4 + 1528) = 1;
      }

      v75 = v58[2];
      if (v75 >= 1)
      {
        *(v4 + 1028) = 4;
        *(v4 + 1532) = 0;
        *(v4 + 1540) = 1;
      }

      v32 = *(a1 + 172972);
      if (v32 && v72 == 1 && !*v59 && !*(v4 + 544))
      {
        *(v4 + 1580) = 1;
      }

      if (a2 < 7)
      {
        goto LABEL_51;
      }

      *(v4 + 1556) = 0;
      *(v4 + 1028) = 3;
      *(v4 + 960) = 6;
      *(v4 + 1000) = 10;
      v76 = v58[4];
      if (v75 || v76 < 3)
      {
        if (v75 > 0)
        {
          v78 = 0;
LABEL_217:
          *(v4 + 1552) = 1;
          if (*(v12 + 24))
          {
            *(a1 + 739548) = 3;
          }

LABEL_219:
          v79 = *v58;
          if (*v58 && *v99 && *(v5 + 508) >= 2)
          {
            *(v4 + 1032) = 1;
          }

          *(v99 + 40) = 0;
          if (!*(v99 + 41) && !*v59 && !v59[1])
          {
            if (v79)
            {
              v80 = v58[1];
              if (v80 != v58[3] - 1 || *(a1 + 4 * v80 + 926604))
              {
                goto LABEL_237;
              }
            }

            *(v4 + 1544) = 1;
            if (v75 != v76 - 1 || v76 <= 1)
            {
              v82 = 2;
            }

            else
            {
              v82 = -1;
            }

            *(v99 + 40) = v82;
          }

          if (!v79)
          {
            goto LABEL_247;
          }

LABEL_237:
          if (*(v12 + 32) && v58[3] == 3)
          {
            if (v78)
            {
              goto LABEL_247;
            }

            if (*(v5 + 152) * *(v5 + 148) > 307200)
            {
              *(v4 + 1576) = 1;
            }
          }

          if (*v12)
          {
            v83 = v78;
          }

          else
          {
            v83 = 1;
          }

          if ((v83 & 1) == 0)
          {
            *(v4 + 952) &= ~2u;
          }

LABEL_247:
          v85 = *v13;
          v84 = *(a1 + 171992);
          v86 = v84 * *v13;
          if (v86 > 307200)
          {
            *(v4 + 1224) = 2;
          }

          v33 = v99;
          if (a2 == 7)
          {
LABEL_52:
            if (v32 && *(a1 + 171992) * *(a1 + 171988) <= 76800 && *(v4 + 1120) == 3 && *(v4 + 52) >= 209 && *v5 >= 9u)
            {
              *(v4 + 1584) = 1;
            }

            if (*(v4 + 1600))
            {
              *(v4 + 1120) = 5;
            }

            if (!*v17)
            {
              goto LABEL_85;
            }

            if (v32 && *(v4 + 20))
            {
              *(v4 + 1120) = 1;
              *(v4 + 1124) = 12;
            }

            if (*(v33 + 80))
            {
LABEL_74:
              if (*(v33 + 88))
              {
LABEL_85:
                if (*(v12 + 621))
                {
                  *(v4 + 1120) = 1;
                  *(v4 + 1124) = 12;
                }

                if (*(v5 + 536) == 1 && *(v5 + 212) > 4 && (*(v12 + 488) || *(v12 + 232)))
                {
                  *(v4 + 960) = 1;
                  *(v4 + 1000) = 2;
                }

                if (a2 < 4 && *(v5 + 304) == 3)
                {
                  *(v5 + 304) = 0;
                }

                if (*(v5 + 228) != *(v33 + 476))
                {
                  *(v4 + 1572) = 1;
                }

                *(v4 + 1576) = 0;
                goto LABEL_98;
              }

              v39 = (*(a1 + 173020) >> 3) + (*(a1 + 173020) >> 3) * (*(a1 + 173008) >> 3);
              v40 = v39;
              v41 = v12;
              if (v39)
              {
                if (v39 < 0)
                {
                  goto LABEL_83;
                }

                if ((v39 + 23) > 0x10000000000)
                {
                  goto LABEL_83;
                }

                v42 = malloc_type_malloc(v39 + 23, 0xD93B561uLL);
                if (!v42)
                {
                  goto LABEL_83;
                }
              }

              else
              {
                v42 = malloc_type_malloc(0x17uLL, 0xD93B561uLL);
                if (!v42)
                {
                  goto LABEL_83;
                }
              }

              v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF0;
              *(v43 - 8) = v42;
              if (v43)
              {
                bzero(((v42 + 23) & 0xFFFFFFFFFFFFFFF0), v40);
                *(v33 + 88) = v43;
LABEL_84:
                v12 = v41;
                goto LABEL_85;
              }

LABEL_83:
              *(v33 + 88) = 0;
              vpx_internal_error(a1 + 171696, 2, "Failed to allocate cpi->count_lastgolden_frame_usage");
              goto LABEL_84;
            }

            v34 = (*(a1 + 173020) >> 3) + (*(a1 + 173020) >> 3) * (*(a1 + 173008) >> 3);
            v35 = v34;
            v36 = v12;
            if (v34)
            {
              if (v34 < 0)
              {
                goto LABEL_73;
              }

              if ((v34 + 23) > 0x10000000000)
              {
                goto LABEL_73;
              }

              v37 = malloc_type_malloc(v34 + 23, 0xD93B561uLL);
              if (!v37)
              {
                goto LABEL_73;
              }
            }

            else
            {
              v37 = malloc_type_malloc(0x17uLL, 0xD93B561uLL);
              if (!v37)
              {
LABEL_73:
                *(v33 + 80) = 0;
                vpx_internal_error(a1 + 171696, 2, "Failed to allocate cpi->count_arf_frame_usage");
                v12 = v36;
                goto LABEL_74;
              }
            }

            v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF0;
            *(v38 - 8) = v37;
            if (v38)
            {
              bzero(((v37 + 23) & 0xFFFFFFFFFFFFFFF0), v35);
              *(v33 + 80) = v38;
              v12 = v36;
              goto LABEL_74;
            }

            goto LABEL_73;
          }

          *(v4 + 1028) = 4;
          *(v4 + 1036) = 1;
          if (v58[3] < 2 || (v87 = *(v12 + 760)) != 0)
          {
            v87 = 1;
          }

          *(v4 + 1572) = v87;
          if (!v79)
          {
            *(v99 + 40) = 4;
          }

          if (*v99 && *(v5 + 508) >= 2)
          {
            *(v4 + 1032) = 1;
          }

          if (v32 && v86 < 101377 && !*(a1 + 172988))
          {
            *(v4 + 1600) = 1;
          }

          if ((*(*(v5 + 596) + 152) & 8) != 0)
          {
            *(v4 + 1600) = 0;
            if (v62)
            {
LABEL_264:
              *(v4 + 980) = 2;
              *(v4 + 1612) = 1;
              v88 = v74 ^ 1;
              if (v79)
              {
                v88 = 1;
              }

              if (v88)
              {
                goto LABEL_267;
              }

              goto LABEL_273;
            }
          }

          else if (v62)
          {
            goto LABEL_264;
          }

          *(v4 + 1612) = 1;
          v89 = v74 ^ 1;
          if (v79)
          {
            v89 = 1;
          }

          if (v89)
          {
LABEL_267:
            *(v4 + 1532) = 0;
            *(v4 + 1552) = 1;
            if (v86 <= 101376)
            {
              goto LABEL_283;
            }

            goto LABEL_281;
          }

LABEL_273:
          *(v4 + 1528) = 3;
          if (v84 >= 720 && v85 >= 1280)
          {
            if (v59[9])
            {
              v90 = v59[11];
              v91 = v59[12];
              if (v90 > v91 || v90 > 2 * v91)
              {
                *(v4 + 1528) = 2;
              }
            }
          }

          if (v86 <= 101376)
          {
            *(v4 + 1028) = 2;
            *(v4 + 1532) = 0;
            *(v4 + 1552) = 1;
LABEL_283:
            if (a2 < 9)
            {
              goto LABEL_52;
            }

            v98 = v84;
            if (v14)
            {
              v97 = v72;
              v92 = v85;
              memset_pattern16((a1 + 739872), &unk_273BA37F0, 0x34uLL);
              v85 = v92;
              v72 = v97;
              v12 = a1 + 926372;
            }

            *(v4 + 1224) = 2;
            *(v4 + 984) = xmmword_273BD9430;
            if (v32 && v85 >= 320 && v98 >= 240)
            {
              *(v4 + 1584) = 1;
            }

            v33 = v99;
            if (v72 == 1)
            {
              *(v4 + 1588) = 1;
              if (*(v4 + 504) > 69)
              {
                goto LABEL_292;
              }
            }

            else if (*(v4 + 504) > 69)
            {
LABEL_292:
              if (v86 <= 230399)
              {
                goto LABEL_52;
              }

LABEL_296:
              *(v4 + 1604) = 2;
              goto LABEL_52;
            }

            *(v4 + 1448) = 3;
            if (v86 <= 230399)
            {
              goto LABEL_52;
            }

            goto LABEL_296;
          }

          *(v4 + 1028) = 1;
          *(v4 + 1532) = 0;
          *(v4 + 1552) = 1;
LABEL_281:
          *(v4 + 1224) = 2;
          goto LABEL_283;
        }

        v77 = v58[1];
      }

      else
      {
        v77 = v58[1];
        if (!v77 || *(v5 + 152) * *(v5 + 148) < 230401)
        {
          *(v4 + 960) = 1;
          *(v4 + 1000) = 6;
        }
      }

      v78 = 1;
      if (v77 < 2)
      {
        goto LABEL_219;
      }

      goto LABEL_217;
    }

LABEL_50:
    v32 = v14;
LABEL_51:
    v33 = v99;
    goto LABEL_52;
  }

LABEL_98:
  *(v4 + 1888) = vp9_diamond_search_sad_neon;
  v44 = *(v5 + 232);
  if (v44 != 1)
  {
    if (v44)
    {
      goto LABEL_102;
    }

    *(v4 + 1012) = 0;
  }

  *(v4 + 1016) = 0;
LABEL_102:
  v45 = vp9_skip_sub_pixel_tree;
  if (*(v4 + 980) != 3)
  {
    v46 = *(a1 + 739548);
    if (v46 > 3)
    {
      goto LABEL_106;
    }

    v45 = *(&off_2882A7F48 + v46);
  }

  *(v4 + 1720) = v45;
LABEL_106:
  v47 = *(v5 + 568);
  v48 = vp9_return_max_sub_pixel_mv;
  if (v47 != 1)
  {
    if (v47 != 2)
    {
      goto LABEL_110;
    }

    v48 = vp9_return_min_sub_pixel_mv;
  }

  *(v4 + 1720) = v48;
LABEL_110:
  v50 = v44 != 1 && *(v4 + 1016) == 1;
  *(a1 + 131408) = v50;
  *(a1 + 74852) = *(v4 + 1149);
  if (*(v5 + 324))
  {
    if (*(v4 + 1032))
    {
      return;
    }
  }

  else
  {
    *(v4 + 1252) = 0;
    if (*(v4 + 1032))
    {
      return;
    }
  }

  if (*(v99 + 4))
  {
    if (*(v5 + 508) >= 2)
    {
      *(v4 + 1028) = 0;
    }
  }
}

uint64_t vp9_write_prob_diff_update(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a2 ^ 0xFF;
  v4 = 2 * ((a3 ^ 0xFF) - (a2 ^ 0xFF)) - 1;
  if (a3 >= a2)
  {
    v4 = 2 * ((a2 ^ 0xFF) - (a3 ^ 0xFF));
  }

  if (v3 <= 2 * (a3 ^ 0xFF))
  {
    v3 = v4;
  }

  v5 = a2 - 1;
  v6 = 2 * (a3 - a2) - 1;
  if (a2 >= a3)
  {
    v6 = 2 * (a2 - a3);
  }

  if (a2 < 2 * a3)
  {
    v5 = v6;
  }

  if (a3 <= 0x80)
  {
    v3 = v5;
  }

  v7 = remap_prob_map_table[v3 - 1];
  v8 = *(result + 4);
  v9 = *(result + 8);
  v10 = ((v8 << 7) - 128) >> 8;
  v11 = v8 - (v10 + 1);
  if (v7 < 0x10)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v11;
  }

  if (v7 >= 0x10)
  {
    v13 = v10 + 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13 + *result;
  v15 = vpx_norm[v12];
  v16 = v9 + v15;
  if (v9 + v15 < 0)
  {
    v19 = v9 + v15;
    LOBYTE(v16) = vpx_norm[v12];
    goto LABEL_31;
  }

  if (!*(result + 12))
  {
    v17 = *(result + 16);
    if (((v14 << ~v9) & 0x80000000) != 0)
    {
      v20 = v17 - 1;
      if (v17 >= 1)
      {
        while (1)
        {
          --v17;
          v21 = *(result + 24);
          if (*(v21 + v17) != 255)
          {
            break;
          }

          *(v21 + v17) = 0;
          if (v17 <= 0)
          {
            v20 = -1;
            goto LABEL_28;
          }
        }

        v20 = v17;
      }

LABEL_28:
      ++*(*(result + 24) + v20);
      v17 = *(result + 16);
      if (v17 < *(result + 20))
      {
        goto LABEL_21;
      }
    }

    else if (v17 < *(result + 20))
    {
LABEL_21:
      v18 = *(result + 24);
      *(result + 16) = v17 + 1;
      *(v18 + v17) = v14 >> (v9 + 24);
      goto LABEL_30;
    }

    *(result + 12) = 1;
  }

LABEL_30:
  v14 = (v14 << -v9) & 0xFFFFFF;
  v19 = v16 - 8;
LABEL_31:
  v22 = v12 << v15;
  *(result + 4) = v22;
  *(result + 8) = v19;
  v23 = v14 << v16;
  *result = v14 << v16;
  v24 = (v22 << 7) - 128;
  if (v7 <= 0xF)
  {
    v25 = v24 >> 8;
    v26 = v22 - (v25 + 1);
    if (v7 >= 8)
    {
      v27 = v25 + 1;
    }

    else
    {
      v26 = v25 + 1;
      v27 = 0;
    }

    v28 = v23 + v27;
    v29 = vpx_norm[v26];
    v30 = v19 + v29;
    if (v19 + v29 < 0)
    {
      v41 = v19 + v29;
      LOBYTE(v30) = vpx_norm[v26];
      goto LABEL_62;
    }

    if (*(result + 12))
    {
LABEL_61:
      v28 = (v28 << -v19) & 0xFFFFFF;
      v41 = v30 - 8;
LABEL_62:
      v47 = v26 << v29;
      v48 = v28 << v30;
      *(result + 4) = v47;
      *(result + 8) = v41;
      *result = v28 << v30;
      v49 = ((v47 << 7) - 128) >> 8;
      v50 = v47 - (v49 + 1);
      if ((v7 & 4) == 0)
      {
        v50 = v49 + 1;
      }

      v51 = v48 + ((v49 + 1) & ((v7 << 29) >> 31));
      v52 = vpx_norm[v50];
      v53 = v41 + v52;
      if (v41 + v52 < 0)
      {
        v56 = v41 + v52;
        LOBYTE(v53) = vpx_norm[v50];
        goto LABEL_159;
      }

      if (*(result + 12))
      {
LABEL_158:
        v51 = (v51 << -v41) & 0xFFFFFF;
        v56 = v53 - 8;
LABEL_159:
        v121 = v50 << v52;
        v122 = v51 << v53;
        *(result + 4) = v121;
        *(result + 8) = v56;
        *result = v122;
        v123 = ((v121 << 7) - 128) >> 8;
        v124 = v121 - (v123 + 1);
        if ((v7 & 2) == 0)
        {
          v124 = v123 + 1;
        }

        v125 = v122 + ((v123 + 1) & ((v7 << 30) >> 31));
        v126 = vpx_norm[v124];
        v127 = v56 + v126;
        if (v56 + v126 < 0)
        {
          v130 = v56 + v126;
          LOBYTE(v127) = vpx_norm[v124];
          goto LABEL_175;
        }

        if (*(result + 12))
        {
LABEL_174:
          v125 = (v125 << -v56) & 0xFFFFFF;
          v130 = v127 - 8;
LABEL_175:
          v133 = v124 << v126;
          v134 = v125 << v127;
          *(result + 4) = v133;
          *(result + 8) = v130;
          *result = v134;
          v135 = ((v133 << 7) - 128) >> 8;
          v136 = (v7 << 31) >> 31;
          v137 = v133 - (v135 + 1);
          if (v7)
          {
            v138 = v137;
          }

          else
          {
            v138 = v135 + 1;
          }

          v139 = v134 + (v136 & (v135 + 1));
          v140 = vpx_norm[v138];
          v141 = v130 + v140;
          if (v130 + v140 >= 0)
          {
            v142 = -v130;
            if (!*(result + 12))
            {
              v143 = *(result + 16);
              if (((v139 << ~v130) & 0x80000000) == 0)
              {
                goto LABEL_263;
              }

              v144 = v143 - 1;
              if (v143 < 1)
              {
                goto LABEL_262;
              }

              while (1)
              {
                --v143;
                v145 = *(result + 24);
                if (*(v145 + v143) != 255)
                {
                  goto LABEL_261;
                }

                *(v145 + v143) = 0;
                if (v143 <= 0)
                {
                  goto LABEL_259;
                }
              }
            }

            goto LABEL_266;
          }

          goto LABEL_260;
        }

        v128 = *(result + 16);
        if (((v125 << ~v56) & 0x80000000) != 0)
        {
          v131 = v128 - 1;
          if (v128 >= 1)
          {
            while (1)
            {
              --v128;
              v132 = *(result + 24);
              if (*(v132 + v128) != 255)
              {
                break;
              }

              *(v132 + v128) = 0;
              if (v128 <= 0)
              {
                v131 = -1;
                goto LABEL_172;
              }
            }

            v131 = v128;
          }

LABEL_172:
          ++*(*(result + 24) + v131);
          v128 = *(result + 16);
          if (v128 < *(result + 20))
          {
            goto LABEL_165;
          }
        }

        else if (v128 < *(result + 20))
        {
LABEL_165:
          v129 = *(result + 24);
          *(result + 16) = v128 + 1;
          *(v129 + v128) = v125 >> (v56 + 24);
          goto LABEL_174;
        }

        *(result + 12) = 1;
        goto LABEL_174;
      }

      v54 = *(result + 16);
      if (((v51 << ~v41) & 0x80000000) != 0)
      {
        v57 = v54 - 1;
        if (v54 >= 1)
        {
          while (1)
          {
            --v54;
            v58 = *(result + 24);
            if (*(v58 + v54) != 255)
            {
              break;
            }

            *(v58 + v54) = 0;
            if (v54 <= 0)
            {
              v57 = -1;
              goto LABEL_156;
            }
          }

          v57 = v54;
        }

LABEL_156:
        ++*(*(result + 24) + v57);
        v54 = *(result + 16);
        if (v54 < *(result + 20))
        {
          goto LABEL_68;
        }
      }

      else if (v54 < *(result + 20))
      {
LABEL_68:
        v55 = *(result + 24);
        *(result + 16) = v54 + 1;
        *(v55 + v54) = v51 >> (v41 + 24);
        goto LABEL_158;
      }

      *(result + 12) = 1;
      goto LABEL_158;
    }

    v31 = *(result + 16);
    if (((v28 << ~v19) & 0x80000000) != 0)
    {
      v43 = v31 - 1;
      if (v31 >= 1)
      {
        while (1)
        {
          --v31;
          v44 = *(result + 24);
          if (*(v44 + v31) != 255)
          {
            break;
          }

          *(v44 + v31) = 0;
          if (v31 <= 0)
          {
            v43 = -1;
            goto LABEL_59;
          }
        }

        v43 = v31;
      }

LABEL_59:
      ++*(*(result + 24) + v43);
      v31 = *(result + 16);
      if (v31 < *(result + 20))
      {
        goto LABEL_39;
      }
    }

    else if (v31 < *(result + 20))
    {
LABEL_39:
      v32 = *(result + 24);
      *(result + 16) = v31 + 1;
      *(v32 + v31) = v28 >> (v19 + 24);
      goto LABEL_61;
    }

    *(result + 12) = 1;
    goto LABEL_61;
  }

  v33 = v24 >> 8;
  v34 = v22 - ((v24 >> 8) + 1);
  if (v7 >= 0x20)
  {
    v35 = v33 + 1;
  }

  else
  {
    v34 = v33 + 1;
    v35 = 0;
  }

  v36 = v23 + v35;
  v37 = vpx_norm[v34];
  v38 = v19 + v37;
  if (v19 + v37 >= 0)
  {
    if (*(result + 12))
    {
LABEL_77:
      v36 = (v36 << -v19) & 0xFFFFFF;
      v42 = v38 - 8;
      goto LABEL_78;
    }

    v39 = *(result + 16);
    if (((v36 << ~v19) & 0x80000000) != 0)
    {
      v45 = v39 - 1;
      if (v39 >= 1)
      {
        while (1)
        {
          --v39;
          v46 = *(result + 24);
          if (*(v46 + v39) != 255)
          {
            break;
          }

          *(v46 + v39) = 0;
          if (v39 <= 0)
          {
            v45 = -1;
            goto LABEL_75;
          }
        }

        v45 = v39;
      }

LABEL_75:
      ++*(*(result + 24) + v45);
      v39 = *(result + 16);
      if (v39 < *(result + 20))
      {
        goto LABEL_47;
      }
    }

    else if (v39 < *(result + 20))
    {
LABEL_47:
      v40 = *(result + 24);
      *(result + 16) = v39 + 1;
      *(v40 + v39) = v36 >> (v19 + 24);
      goto LABEL_77;
    }

    *(result + 12) = 1;
    goto LABEL_77;
  }

  v42 = v19 + v37;
  LOBYTE(v38) = vpx_norm[v34];
LABEL_78:
  v59 = v34 << v37;
  *(result + 4) = v59;
  *(result + 8) = v42;
  v60 = v36 << v38;
  *result = v60;
  v61 = v59 << 7;
  if (v7 <= 0x1F)
  {
    v62 = (v61 - 128) >> 8;
    v63 = v62 + 1;
    v64 = v59 - (v62 + 1);
    if ((v7 & 8) != 0)
    {
      v65 = v64;
    }

    else
    {
      v65 = v62 + 1;
    }

    v66 = v60 + (v63 & ((v7 << 28) >> 31));
    v67 = vpx_norm[v65];
    v68 = v42 + v67;
    if (v42 + v67 < 0)
    {
      v82 = v42 + v67;
      LOBYTE(v68) = vpx_norm[v65];
    }

    else
    {
      if (!*(result + 12))
      {
        v69 = *(result + 16);
        if (((v66 << ~v42) & 0x80000000) != 0)
        {
          v70 = v69 - 1;
          if (v69 >= 1)
          {
            while (1)
            {
              --v69;
              v71 = *(result + 24);
              if (*(v71 + v69) != 255)
              {
                break;
              }

              *(v71 + v69) = 0;
              if (v69 <= 0)
              {
                v70 = -1;
                goto LABEL_186;
              }
            }

            v70 = v69;
          }

LABEL_186:
          ++*(*(result + 24) + v70);
          v69 = *(result + 16);
        }

        if (v69 >= *(result + 20))
        {
          *(result + 12) = 1;
        }

        else
        {
          v146 = *(result + 24);
          *(result + 16) = v69 + 1;
          *(v146 + v69) = v66 >> (v42 + 24);
        }
      }

      v66 = (v66 << -v42) & 0xFFFFFF;
      v82 = v68 - 8;
    }

    v147 = v65 << v67;
    v148 = v66 << v68;
    *(result + 4) = v147;
    *(result + 8) = v82;
    *result = v66 << v68;
    v149 = ((v147 << 7) - 128) >> 8;
    v150 = v147 - (v149 + 1);
    if ((v7 & 4) == 0)
    {
      v150 = v149 + 1;
    }

    v151 = v148 + ((v149 + 1) & ((v7 << 29) >> 31));
    v152 = vpx_norm[v150];
    v153 = v82 + v152;
    if (v82 + v152 < 0)
    {
      v157 = v82 + v152;
      LOBYTE(v153) = vpx_norm[v150];
    }

    else
    {
      if (!*(result + 12))
      {
        v154 = *(result + 16);
        if (((v151 << ~v82) & 0x80000000) != 0)
        {
          v155 = v154 - 1;
          if (v154 >= 1)
          {
            while (1)
            {
              --v154;
              v156 = *(result + 24);
              if (*(v156 + v154) != 255)
              {
                break;
              }

              *(v156 + v154) = 0;
              if (v154 <= 0)
              {
                v155 = -1;
                goto LABEL_229;
              }
            }

            v155 = v154;
          }

LABEL_229:
          ++*(*(result + 24) + v155);
          v154 = *(result + 16);
        }

        if (v154 >= *(result + 20))
        {
          *(result + 12) = 1;
        }

        else
        {
          v170 = *(result + 24);
          *(result + 16) = v154 + 1;
          *(v170 + v154) = v151 >> (v82 + 24);
        }
      }

      v151 = (v151 << -v82) & 0xFFFFFF;
      v157 = v153 - 8;
    }

    v171 = v150 << v152;
    v172 = v151 << v153;
    *(result + 4) = v171;
    *(result + 8) = v157;
    *result = v172;
    v173 = ((v171 << 7) - 128) >> 8;
    v174 = v171 - (v173 + 1);
    if ((v7 & 2) == 0)
    {
      v174 = v173 + 1;
    }

    v175 = v172 + ((v173 + 1) & ((v7 << 30) >> 31));
    v176 = vpx_norm[v174];
    v177 = v157 + v176;
    if (v157 + v176 < 0)
    {
      v130 = v157 + v176;
      LOBYTE(v177) = vpx_norm[v174];
    }

    else
    {
      if (!*(result + 12))
      {
        v178 = *(result + 16);
        if (((v175 << ~v157) & 0x80000000) != 0)
        {
          v179 = v178 - 1;
          if (v178 >= 1)
          {
            while (1)
            {
              --v178;
              v180 = *(result + 24);
              if (*(v180 + v178) != 255)
              {
                break;
              }

              *(v180 + v178) = 0;
              if (v178 <= 0)
              {
                v179 = -1;
                goto LABEL_245;
              }
            }

            v179 = v178;
          }

LABEL_245:
          ++*(*(result + 24) + v179);
          v178 = *(result + 16);
        }

        if (v178 >= *(result + 20))
        {
          *(result + 12) = 1;
        }

        else
        {
          v181 = *(result + 24);
          *(result + 16) = v178 + 1;
          *(v181 + v178) = v175 >> (v157 + 24);
        }
      }

      v175 = (v175 << -v157) & 0xFFFFFF;
      v130 = v177 - 8;
    }

    v182 = v174 << v176;
    v183 = v175 << v177;
    *(result + 4) = v182;
    *(result + 8) = v130;
    *result = v183;
    v184 = ((v182 << 7) - 128) >> 8;
    v185 = (v7 << 31) >> 31;
    v186 = v182 - (v184 + 1);
    if (v7)
    {
      v138 = v186;
    }

    else
    {
      v138 = v184 + 1;
    }

    v139 = v183 + (v185 & (v184 + 1));
    v140 = vpx_norm[v138];
    v141 = v130 + v140;
    if (v130 + v140 >= 0)
    {
      v142 = -v130;
      if (!*(result + 12))
      {
        v143 = *(result + 16);
        if (((v139 << ~v130) & 0x80000000) == 0)
        {
          goto LABEL_263;
        }

        v144 = v143 - 1;
        if (v143 < 1)
        {
LABEL_262:
          ++*(*(result + 24) + v144);
          v143 = *(result + 16);
LABEL_263:
          if (v143 >= *(result + 20))
          {
            *(result + 12) = 1;
          }

          else
          {
            v188 = *(result + 24);
            *(result + 16) = v143 + 1;
            *(v188 + v143) = v139 >> (v130 + 24);
          }

          goto LABEL_266;
        }

        while (1)
        {
          --v143;
          v187 = *(result + 24);
          if (*(v187 + v143) != 255)
          {
            break;
          }

          *(v187 + v143) = 0;
          if (v143 <= 0)
          {
LABEL_259:
            v144 = -1;
            goto LABEL_262;
          }
        }

LABEL_261:
        v144 = v143;
        goto LABEL_262;
      }

LABEL_266:
      v139 = (v139 << v142) & 0xFFFFFF;
      v120 = v141 - 8;
      goto LABEL_267;
    }

LABEL_260:
    v120 = v141;
    LOBYTE(v141) = v140;
LABEL_267:
    v189 = v138 << v140;
    v190 = v139 << v141;
    goto LABEL_268;
  }

  v72 = (v61 - 128) >> 8;
  v73 = v59 - (v72 + 1);
  if (v7 >= 0x40)
  {
    v74 = v72 + 1;
  }

  else
  {
    v73 = v72 + 1;
    v74 = 0;
  }

  v75 = v60 + v74;
  v76 = vpx_norm[v73];
  v77 = v42 + v76;
  if (v42 + v76 < 0)
  {
    v83 = v42 + v76;
    v84 = v73 << v76;
    *(result + 4) = v84;
    *(result + 8) = v77;
    v85 = v75 << v76;
    *result = v75 << v76;
    if (v7 <= 0x3F)
    {
LABEL_207:
      v159 = 5;
      while (1)
      {
        v161 = ((v84 << 7) - 128) >> 8;
        v162 = v84 - (v161 + 1);
        if (((1 << (v159 - 1)) & (v7 - 32)) != 0)
        {
          v163 = v161 + 1;
        }

        else
        {
          v162 = v161 + 1;
          v163 = 0;
        }

        v160 = v163 + v85;
        v164 = vpx_norm[v162];
        v165 = v83 + v164;
        if (v83 + v164 < 0)
        {
          v83 += v164;
          LOBYTE(v165) = vpx_norm[v162];
          goto LABEL_210;
        }

        if (!*(result + 12))
        {
          v166 = *(result + 16);
          if (((v160 << ~v83) & 0x80000000) != 0)
          {
            v167 = v166 - 1;
            if (v166 >= 1)
            {
              while (1)
              {
                --v166;
                v168 = *(result + 24);
                if (*(v168 + v166) != 255)
                {
                  break;
                }

                *(v168 + v166) = 0;
                if (v166 <= 0)
                {
                  v167 = -1;
                  goto LABEL_226;
                }
              }

              v167 = v166;
            }

LABEL_226:
            ++*(*(result + 24) + v167);
            v166 = *(result + 16);
            if (v166 < *(result + 20))
            {
LABEL_227:
              v169 = *(result + 24);
              *(result + 16) = v166 + 1;
              *(v169 + v166) = v160 >> (v83 + 24);
              goto LABEL_209;
            }
          }

          else if (v166 < *(result + 20))
          {
            goto LABEL_227;
          }

          *(result + 12) = 1;
        }

LABEL_209:
        v160 = (v160 << -v83) & 0xFFFFFF;
        v83 = v165 - 8;
LABEL_210:
        v84 = v162 << v164;
        *(result + 4) = v84;
        *(result + 8) = v83;
        v85 = v160 << v165;
        *result = v85;
        v88 = v159-- > 1;
        if (!v88)
        {
          return result;
        }
      }
    }
  }

  else
  {
    v78 = -v42;
    if (!*(result + 12))
    {
      v79 = *(result + 16);
      if (((v75 << ~v42) & 0x80000000) != 0)
      {
        v80 = v79 - 1;
        if (v79 >= 1)
        {
          while (1)
          {
            --v79;
            v81 = *(result + 24);
            if (*(v81 + v79) != 255)
            {
              break;
            }

            *(v81 + v79) = 0;
            if (v79 <= 0)
            {
              v80 = -1;
              goto LABEL_202;
            }
          }

          v80 = v79;
        }

LABEL_202:
        ++*(*(result + 24) + v80);
        v79 = *(result + 16);
      }

      if (v79 >= *(result + 20))
      {
        *(result + 12) = 1;
      }

      else
      {
        v158 = *(result + 24);
        *(result + 16) = v79 + 1;
        *(v158 + v79) = v75 >> (v42 + 24);
      }
    }

    v83 = v77 - 8;
    v84 = v73 << v76;
    *(result + 4) = v84;
    *(result + 8) = v77 - 8;
    v85 = ((v75 << v78) & 0xFFFFFF) << v77;
    *result = v85;
    if (v7 <= 0x3F)
    {
      goto LABEL_207;
    }
  }

  if (v7 <= 0x80)
  {
    v86 = 7;
    while (1)
    {
      v89 = ((v84 << 7) - 128) >> 8;
      v90 = v84 - (v89 + 1);
      if (((1 << (v86 - 1)) & (v7 - 64)) != 0)
      {
        v91 = v89 + 1;
      }

      else
      {
        v90 = v89 + 1;
        v91 = 0;
      }

      v87 = v91 + v85;
      v92 = vpx_norm[v90];
      v93 = v83 + v92;
      if (v83 + v92 < 0)
      {
        v83 += v92;
        LOBYTE(v93) = vpx_norm[v90];
        goto LABEL_105;
      }

      if (!*(result + 12))
      {
        v94 = *(result + 16);
        if (((v87 << ~v83) & 0x80000000) != 0)
        {
          v95 = v94 - 1;
          if (v94 >= 1)
          {
            while (1)
            {
              --v94;
              v96 = *(result + 24);
              if (*(v96 + v94) != 255)
              {
                break;
              }

              *(v96 + v94) = 0;
              if (v94 <= 0)
              {
                v95 = -1;
                goto LABEL_121;
              }
            }

            v95 = v94;
          }

LABEL_121:
          ++*(*(result + 24) + v95);
          v94 = *(result + 16);
          if (v94 < *(result + 20))
          {
LABEL_122:
            v97 = *(result + 24);
            *(result + 16) = v94 + 1;
            *(v97 + v94) = v87 >> (v83 + 24);
            goto LABEL_104;
          }
        }

        else if (v94 < *(result + 20))
        {
          goto LABEL_122;
        }

        *(result + 12) = 1;
      }

LABEL_104:
      v87 = (v87 << -v83) & 0xFFFFFF;
      v83 = v93 - 8;
LABEL_105:
      v84 = v90 << v92;
      *(result + 4) = v84;
      *(result + 8) = v83;
      v85 = v87 << v93;
      *result = v85;
      v88 = v86-- > 1;
      if (!v88)
      {
        return result;
      }
    }
  }

  v98 = v7 - 129;
  v99 = 7;
  do
  {
    v101 = ((v84 << 7) - 128) >> 8;
    v102 = v84 - (v101 + 1);
    if (((1 << (v99 - 1)) & ((v98 >> 1) + 65)) != 0)
    {
      v103 = v101 + 1;
    }

    else
    {
      v102 = v101 + 1;
      v103 = 0;
    }

    v100 = v103 + v85;
    v104 = vpx_norm[v102];
    v105 = v83 + v104;
    if (v83 + v104 >= 0)
    {
      if (!*(result + 12))
      {
        v106 = *(result + 16);
        if (((v100 << ~v83) & 0x80000000) != 0)
        {
          v107 = v106 - 1;
          if (v106 >= 1)
          {
            while (1)
            {
              --v106;
              v108 = *(result + 24);
              if (*(v108 + v106) != 255)
              {
                break;
              }

              *(v108 + v106) = 0;
              if (v106 <= 0)
              {
                v107 = -1;
                goto LABEL_142;
              }
            }

            v107 = v106;
          }

LABEL_142:
          ++*(*(result + 24) + v107);
          v106 = *(result + 16);
          if (v106 < *(result + 20))
          {
            goto LABEL_143;
          }
        }

        else if (v106 < *(result + 20))
        {
LABEL_143:
          v109 = *(result + 24);
          *(result + 16) = v106 + 1;
          *(v109 + v106) = v100 >> (v83 + 24);
          goto LABEL_125;
        }

        *(result + 12) = 1;
      }

LABEL_125:
      v100 = (v100 << -v83) & 0xFFFFFF;
      v83 = v105 - 8;
      goto LABEL_126;
    }

    v83 += v104;
    LOBYTE(v105) = vpx_norm[v102];
LABEL_126:
    v84 = v102 << v104;
    *(result + 4) = v84;
    *(result + 8) = v83;
    v85 = v100 << v105;
    *result = v85;
    v88 = v99-- > 1;
  }

  while (v88);
  v110 = (v98 << 31) >> 31;
  v111 = ((v84 << 7) - 128) >> 8;
  v112 = v84 - (v111 + 1);
  if (v98)
  {
    v113 = v112;
  }

  else
  {
    v113 = v111 + 1;
  }

  v114 = v85 + (v110 & (v111 + 1));
  v115 = vpx_norm[v113];
  v116 = v83 + v115;
  if (v83 + v115 < 0)
  {
    v120 = v83 + v115;
    LOBYTE(v116) = vpx_norm[v113];
  }

  else
  {
    if (!*(result + 12))
    {
      v117 = *(result + 16);
      if (((v114 << ~v83) & 0x80000000) != 0)
      {
        v118 = v117 - 1;
        if (v117 >= 1)
        {
          while (1)
          {
            --v117;
            v119 = *(result + 24);
            if (*(v119 + v117) != 255)
            {
              break;
            }

            *(v119 + v117) = 0;
            if (v117 <= 0)
            {
              v118 = -1;
              goto LABEL_270;
            }
          }

          v118 = v117;
        }

LABEL_270:
        ++*(*(result + 24) + v118);
        v117 = *(result + 16);
      }

      if (v117 >= *(result + 20))
      {
        *(result + 12) = 1;
      }

      else
      {
        v191 = *(result + 24);
        *(result + 16) = v117 + 1;
        *(v191 + v117) = v114 >> (v83 + 24);
      }
    }

    v114 = (v114 << -v83) & 0xFFFFFF;
    v120 = v116 - 8;
  }

  v189 = v113 << v115;
  v190 = v114 << v116;
LABEL_268:
  *(result + 4) = v189;
  *(result + 8) = v120;
  *result = v190;
  return result;
}

int64_t vp9_prob_diff_update_savings_search(unsigned int *a1, unsigned int a2, unsigned __int8 *a3, unsigned int a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = vp9_prob_cost[a2] * v4 + vp9_prob_cost[256 - a2] * v5;
  v7 = *a3;
  if (v7 > a2)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  v9 = vp9_prob_cost[256 - a4] - vp9_prob_cost[a4];
  if (v6 <= (v9 + 2560) || v7 == a2)
  {
    result = 0;
    *a3 = a2;
  }

  else
  {
    v11 = -v4;
    v12 = -v5;
    if (a2 >= 0x81)
    {
      result = 0;
      v17 = a2 ^ 0xFF;
      v14 = a2;
      do
      {
        v18 = ~v7;
        v19 = 2 * (v17 - v18) - 1;
        if (a2 >= v7)
        {
          v19 = 2 * (v18 - v17);
        }

        if (2 * (a2 ^ 0xFF) >= v18)
        {
          v18 = v19;
        }

        if ((v6 + vp9_prob_cost[v7] * v11 + vp9_prob_cost[256 - v7] * v12 - ((update_bits[remap_prob_map_table[v18 - 1]] << 9) + v9)) > result)
        {
          v14 = v7;
          result = v6 + vp9_prob_cost[v7] * v11 + vp9_prob_cost[256 - v7] * v12 - ((update_bits[remap_prob_map_table[v18 - 1]] << 9) + v9);
        }

        LOBYTE(v7) = v7 + v8;
      }

      while (a2 != v7);
    }

    else
    {
      result = 0;
      v13 = *a3;
      v14 = a2;
      do
      {
        v15 = v13 - 1;
        v16 = 2 * (a2 - v13) - 1;
        if (v13 >= a2)
        {
          v16 = 2 * (v13 - a2);
        }

        if (2 * a2 > v13)
        {
          v15 = v16;
        }

        if ((v6 + vp9_prob_cost[v13] * v11 + vp9_prob_cost[256 - v13] * v12 - ((update_bits[remap_prob_map_table[v15 - 1]] << 9) + v9)) > result)
        {
          v14 = v13;
          result = v6 + vp9_prob_cost[v13] * v11 + vp9_prob_cost[256 - v13] * v12 - ((update_bits[remap_prob_map_table[v15 - 1]] << 9) + v9);
        }

        v13 += v8;
      }

      while (a2 != v13);
    }

    *a3 = v14;
  }

  return result;
}

int64_t vp9_prob_diff_update_savings_search_model(_DWORD *a1, unsigned int a2, _BYTE *a3, unsigned int a4, int a5)
{
  v6 = *a3;
  v7 = vp9_prob_cost[256 - a4];
  v8 = vp9_prob_cost[a4];
  v9 = &vp9_pareto8_full + 8 * a2;
  v59 = a1[5];
  v60 = a1[4];
  v57 = a1[7];
  v58 = a1[6];
  v55 = a1[9];
  v56 = a1[8];
  v53 = a1[11];
  v54 = a1[10];
  v51 = a1[13];
  v52 = a1[12];
  v49 = a1[15];
  v50 = a1[14];
  v10 = vp9_prob_cost[a2] * v60 + vp9_prob_cost[256 - a2] * v59 + vp9_prob_cost[*(v9 - 8)] * v58 + vp9_prob_cost[256 - *(v9 - 8)] * v57 + vp9_prob_cost[*(v9 - 7)] * v56 + vp9_prob_cost[256 - *(v9 - 7)] * v55 + vp9_prob_cost[*(v9 - 6)] * v54 + vp9_prob_cost[256 - *(v9 - 6)] * v53 + vp9_prob_cost[*(v9 - 5)] * v52 + vp9_prob_cost[256 - *(v9 - 5)] * v51 + vp9_prob_cost[*(v9 - 4)] * v50 + vp9_prob_cost[256 - *(v9 - 4)] * v49;
  v47 = a1[17];
  v48 = a1[16];
  v45 = a1[19];
  v46 = a1[18];
  v43 = a1[21];
  v44 = a1[20];
  v11 = v10 + vp9_prob_cost[*(v9 - 3)] * v48 + vp9_prob_cost[256 - *(v9 - 3)] * v47 + vp9_prob_cost[*(v9 - 2)] * v46 + vp9_prob_cost[256 - *(v9 - 2)] * v45 + vp9_prob_cost[*(v9 - 1)] * v44 + vp9_prob_cost[256 - *(v9 - 1)] * v43;
  v12 = -1;
  if (v6 <= a2)
  {
    v12 = 1;
  }

  v42 = v7 - v8;
  if (v11 > v7 - v8 + 2560 && (v13 = v6 - a2, v13 * v12 < 0))
  {
    result = 0;
    v16 = v12 * a5;
    v41 = a2 ^ 0xFF;
    v17 = v12 * v13;
    v18 = v16 * v12;
    v19 = ~(2 * v6) + 2 * a2;
    v20 = a5 * v12;
    v21 = 2 * a5 * v12;
    v22 = &vp9_prob_cost[-v6 + 256];
    v23 = &vp9_prob_cost[v6];
    v24 = &vp9_pareto8_full + 8 * v6 - 4;
    v25 = v6;
    v15 = a2;
    do
    {
      if ((v6 - 256) >= 0xFFFFFFFFFFFFFF01)
      {
        v26 = *(v24 - 4);
        v27 = vp9_prob_cost[v26];
        v28 = vp9_prob_cost[256 - v26];
        v29 = *(v24 - 3);
        v30 = vp9_prob_cost[v29];
        v31 = vp9_prob_cost[256 - v29];
        v32 = v25 ^ 0xFF;
        v33 = 2 * (v41 - (v25 ^ 0xFF)) - 1;
        if (a2 >= v6)
        {
          v33 = 2 * ((v25 ^ 0xFF) - v41);
        }

        if (2 * (a2 ^ 0xFF) >= v32)
        {
          v32 = v33;
        }

        v34 = v6 - 1;
        v35 = 2 * (v6 - a2);
        if (a2 > v6)
        {
          v35 = v19;
        }

        if (2 * a2 > v25)
        {
          v34 = v35;
        }

        if (a2 <= 0x80)
        {
          v32 = v34;
        }

        v36 = *(v24 - 2);
        v37 = *v23 * v60 + *v22 * v59 + v27 * v58 + v28 * v57 + v30 * v56 + v31 * v55 + vp9_prob_cost[v36] * v54 + vp9_prob_cost[256 - v36] * v53 + vp9_prob_cost[*(v24 - 1)] * v52 + vp9_prob_cost[256 - *(v24 - 1)] * v51;
        v38 = v24[2];
        v39 = v11 - (v42 + v37 + vp9_prob_cost[*v24] * v50 + vp9_prob_cost[256 - *v24] * v49 + vp9_prob_cost[v24[1]] * v48 + vp9_prob_cost[256 - v24[1]] * v47 + vp9_prob_cost[v38] * v46 + vp9_prob_cost[256 - v38] * v45 + vp9_prob_cost[v24[3]] * v44 + vp9_prob_cost[256 - v24[3]] * v43 + (update_bits[remap_prob_map_table[v32 - 1]] << 9));
        if (v39 > result)
        {
          result = v39;
          v15 = v6;
        }
      }

      v6 += v16;
      v17 += v18;
      v19 -= v21;
      v25 += v20;
      v22 -= v16;
      v23 += v16;
      v24 += 8 * v16;
    }

    while (v17 < 0);
  }

  else
  {
    result = 0;
    v15 = a2;
  }

  *a3 = v15;
  return result;
}

int64_t vp9_cond_prob_diff_update(uint64_t a1, unsigned __int8 *a2, unsigned int *a3)
{
  v5 = *a3;
  v6 = a3[1] + v5;
  if (v6)
  {
    v7 = ((v6 >> 1) + (v5 << 8)) / v6;
    v8 = (v7 == 0) | ((255 - v7) >> 23) | v7;
  }

  else
  {
    LOBYTE(v8) = 0x80;
  }

  v33 = v8;
  result = vp9_prob_diff_update_savings_search(a3, *a2, &v33, 0xFCu);
  v11 = *(a1 + 4);
  v10 = *(a1 + 8);
  v12 = *a1;
  v13 = ((252 * v11 - 252) >> 8) + 1;
  if (result)
  {
    v14 = v11 - v13;
    v15 = v13 + v12;
    v16 = vpx_norm[v14];
    v17 = v10 + v16;
    if (v10 + v16 < 0)
    {
      v24 = v10 + v16;
      LOBYTE(v17) = vpx_norm[v14];
LABEL_29:
      *(a1 + 4) = v14 << v16;
      *(a1 + 8) = v24;
      *a1 = v15 << v17;
      v32 = v33;
      result = vp9_write_prob_diff_update(a1, v33, *a2);
      *a2 = v32;
      return result;
    }

    if (*(a1 + 12))
    {
LABEL_28:
      v15 = (v15 << -v10) & 0xFFFFFF;
      v24 = v17 - 8;
      goto LABEL_29;
    }

    if (((v15 << ~v10) & 0x80000000) != 0)
    {
      v26 = *(a1 + 16);
      v27 = v26 - 1;
      if (v26 >= 1)
      {
        while (1)
        {
          --v26;
          v28 = *(a1 + 24);
          if (*(v28 + v26) != 255)
          {
            break;
          }

          *(v28 + v26) = 0;
          if (v26 <= 0)
          {
            v27 = -1;
            goto LABEL_26;
          }
        }

        v27 = v26;
      }

LABEL_26:
      ++*(*(a1 + 24) + v27);
      v18 = *(a1 + 16);
      if (v18 < *(a1 + 20))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v18 = *(a1 + 16);
      if (v18 < *(a1 + 20))
      {
LABEL_9:
        v19 = *(a1 + 24);
        *(a1 + 16) = v18 + 1;
        *(v19 + v18) = v15 >> (v10 + 24);
        goto LABEL_28;
      }
    }

    *(a1 + 12) = 1;
    goto LABEL_28;
  }

  v20 = vpx_norm[v13];
  v21 = v10 + v20;
  if (v10 + v20 >= 0)
  {
    if (*(a1 + 12))
    {
LABEL_33:
      v12 = (v12 << -v10) & 0xFFFFFF;
      v25 = v21 - 8;
      goto LABEL_34;
    }

    if (((v12 << ~v10) & 0x80000000) != 0)
    {
      v29 = *(a1 + 16);
      v30 = v29 - 1;
      if (v29 >= 1)
      {
        while (1)
        {
          --v29;
          v31 = *(a1 + 24);
          if (*(v31 + v29) != 255)
          {
            break;
          }

          *(v31 + v29) = 0;
          if (v29 <= 0)
          {
            v30 = -1;
            goto LABEL_31;
          }
        }

        v30 = v29;
      }

LABEL_31:
      ++*(*(a1 + 24) + v30);
      v22 = *(a1 + 16);
      if (v22 < *(a1 + 20))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v22 = *(a1 + 16);
      if (v22 < *(a1 + 20))
      {
LABEL_14:
        v23 = *(a1 + 24);
        *(a1 + 16) = v22 + 1;
        *(v23 + v22) = v12 >> (v10 + 24);
        goto LABEL_33;
      }
    }

    *(a1 + 12) = 1;
    goto LABEL_33;
  }

  v25 = v10 + v20;
  LOBYTE(v21) = vpx_norm[v13];
LABEL_34:
  *(a1 + 4) = v13 << v20;
  *(a1 + 8) = v25;
  *a1 = v12 << v21;
  return result;
}

void vp9_init_layer_context(unint64_t a1)
{
  v2 = a1;
  v3 = (a1 + 172012);
  v4 = v3[249];
  v5 = v3[251];
  v300 = *(v2 + 754552);
  v282 = v2 + 754544;
  *(v2 + 754544) = 0;
  v6 = v2 + 189936;
  *(v2 + 926364) = 0x100000000;
  *(v2 + 926372) = 0;
  *(v2 + 758928) = 0;
  *(v2 + 926404) = 0;
  *(v2 + 926396) = 0;
  *(v2 + 926392) = 0;
  *(v2 + 926848) = 0;
  *(v2 + 926596) = 0;
  *(v2 + 926992) = 0;
  *(v2 + 926994) = 0;
  *(v2 + 927004) = 0;
  *(v2 + 927128) = 0u;
  *(v2 + 926936) = -1;
  *(v2 + 926944) = -1;
  *(v2 + 926995) = 0;
  v7 = *(v2 + 190188);
  v283 = v2 + 189936;
  if (v7 < 1)
  {
    goto LABEL_111;
  }

  v8 = *(v2 + 190128);
  if (v7 < 0x78)
  {
    v9 = 0;
    goto LABEL_109;
  }

  v315 = v3;
  v319 = v5;
  v321 = v4;
  v10 = (v2 + 926952);
  v11 = vaddq_s64(vdupq_n_s64(v2), xmmword_273BD95B0);
  v12 = v2 + 4 * v7;
  v13 = v12 + 926268;
  v14 = v12 + 926416;
  v15 = v12 + 926700;
  v16 = v12 + 926748;
  v295 = vdupq_n_s64(v2 + 926916);
  v17 = vdupq_n_s64(v2 + 926952);
  v18 = vdupq_n_s64(v2 + 926220);
  v19.i64[1] = v11.i64[1];
  v19.i64[0] = v2 + 926172;
  v1.i64[0] = v2 + 926172;
  v20 = vdupq_n_s64(v2 + 926268);
  v21 = vzip2q_s64(v11, v20);
  v22.i64[0] = v11.i64[0];
  v22.i64[1] = v2 + 926952;
  v23.i64[0] = v11.i64[0];
  v23.i64[1] = v2 + 926220;
  v24.i64[0] = v2 + 926172;
  v24.i64[1] = v2 + 926416;
  v25.i64[0] = v2 + 926172;
  v25.i64[1] = v2 + 926916;
  v26.i64[0] = v12 + 926796;
  v27.i64[0] = v12 + 926416;
  v28.i64[0] = v12 + 926416;
  v28.i64[1] = v12 + 926748;
  v304 = v28;
  v29.i64[0] = v12 + 926700;
  v30.i64[0] = v12 + 926700;
  v31.i64[0] = v12 + 926700;
  v32.i64[0] = v12 + 926748;
  v33.i64[0] = v12 + 926748;
  v34.i64[0] = v12 + 926268;
  v35.i64[0] = v12 + 926268;
  v36.i64[0] = v12 + 926268;
  v37.i64[0] = v12 + 926268;
  v38.i64[0] = v12 + 926700;
  v39.i64[0] = v12 + 926700;
  v40.i64[0] = v12 + 926700;
  v41.i64[0] = v12 + 926796;
  v41.i64[1] = v12 + 926172;
  v29.i64[1] = v12 + 926172;
  v42 = vcgtq_u64(v29, v25);
  v25.i64[0] = v2 + v7 + 926408;
  v43.i64[0] = v25.i64[0];
  v43.i64[1] = v12 + 926172;
  v44 = vuzp1q_s32(vcgtq_u64(v43, v24), v42);
  v42.i64[0] = v12 + 926268;
  v43.i64[0] = v12 + 926268;
  v34.i64[1] = v12 + 926172;
  v45 = vcgtq_u64(v34, v19);
  v46 = vcgtq_u64(v41, v23);
  v34.i64[0] = v12 + 926748;
  v41.i64[0] = v12 + 926748;
  v47.i64[0] = v12 + 926748;
  v48 = vuzp1q_s16(vuzp1q_s32(v46, v45), v44);
  v28.i64[0] = v12 + 926748;
  v32.i64[1] = v12 + 926652;
  v45.i64[0] = v11.i64[0];
  v45.i64[1] = v2 + 926916;
  v40.i64[1] = v12 + 926652;
  v46.i64[0] = v11.i64[0];
  v46.i64[1] = v2 + 926416;
  v49 = vuzp1q_s32(vcgtq_u64(v40, v45), vcgtq_u64(v32, v22));
  v45.i64[0] = v25.i64[0];
  v45.i64[1] = v12 + 926652;
  v44.i64[0] = v12 + 926416;
  v44.i64[1] = v12 + 926796;
  v30.i64[1] = v12 + 926748;
  v31.i64[1] = v12 + 926796;
  v34.i64[1] = v12 + 926796;
  v43.i64[1] = v12 + 926652;
  v50 = vuzp1q_s32(vcgtq_u64(v43, v11), vcgtq_u64(v45, v46));
  v51 = (v2 + 926408);
  v52 = vdupq_n_s64(v2 + 926416);
  v53 = vuzp1q_s16(v50, v49);
  v50.i64[0] = v2 + 926408;
  v310 = vuzp1q_s8(v53, v48);
  v48.i64[0] = v2 + 926408;
  v48.i64[1] = v2 + 926952;
  v28.i64[1] = v25.i64[0];
  v54 = vcgtq_u64(v28, v48);
  v48.i64[1] = v2 + 926916;
  v39.i64[1] = v25.i64[0];
  v55 = vzip2q_s64(v11, v52);
  v56 = v12 + 926316;
  v47.i64[1] = v12 + 926316;
  v57 = vuzp1q_s32(vcgtq_u64(v39, v48), v54);
  v48.i64[0] = v12 + 926796;
  v48.i64[1] = v25.i64[0];
  v40.i64[0] = v12 + 926220;
  v32.i64[0] = v12 + 926220;
  v32.i64[1] = v12 + 926748;
  v58 = vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v47, vzip2q_s64(v11, v17)), vcgtq_u64(v48, v55)), v57);
  v47.i64[0] = v25.i64[0];
  v47.i64[1] = v12 + 926316;
  v38.i64[1] = v12 + 926316;
  v39.i64[0] = v12 + 926220;
  v59.i64[0] = v12 + 926220;
  v307 = v12 + 926796;
  v40.i64[1] = v12 + 926796;
  v37.i64[1] = v12 + 926748;
  v42.i64[1] = v12 + 926796;
  v60 = vuzp1q_s32(vcgtq_u64(v47, v55), vcgtq_u64(v38, vzip2q_s64(v11, v295)));
  v47.i64[1] = v20.i64[1];
  v47.i64[0] = v2 + 926952;
  v48.i64[1] = v20.i64[1];
  v48.i64[0] = v2 + 926916;
  v61 = vcgtq_u64(v37, v48);
  size = v2 + 926172;
  v62 = vdupq_n_s64(v2 + 926172);
  v63 = vextq_s8(v20, v11, 8uLL);
  v64 = vuzp1q_s16(vuzp1q_s32(v61, vcgtq_u64(v42, v47)), v60);
  v65 = vdupq_n_s64(v2 + 926700);
  v298 = vuzp1q_s8(v64, v58);
  v58.i64[1] = v20.i64[1];
  v58.i64[0] = v2 + 926416;
  v36.i64[1] = v12 + 926700;
  v66 = vcgtq_u64(v36, v58);
  v67 = vdupq_n_s64(v2 + 926748);
  v35.i64[1] = v25.i64[0];
  v61.i64[1] = v18.i64[1];
  v61.i64[0] = v2 + 926952;
  v68 = vuzp1q_s32(vcgtq_u64(v35, v21), v66);
  v21.i64[0] = v2 + 926796;
  v69 = vcgtq_u64(v40, v61);
  v61.i64[1] = v18.i64[1];
  v61.i64[0] = v2 + 926916;
  v70 = vextq_s8(v20, v21, 8uLL);
  v71 = vuzp1q_s32(vcgtq_u64(v32, v61), v69);
  v61.i64[1] = v18.i64[1];
  v72 = v18;
  v61.i64[0] = v2 + 926416;
  v73 = vuzp1q_s16(v71, v68);
  v59.i64[1] = v12 + 926700;
  v74 = vcgtq_u64(v59, v61);
  v75 = vextq_s8(v20, v1, 8uLL);
  v76 = v12 + 926916;
  v61.i64[1] = v17.i64[1];
  v61.i64[0] = v2 + 926916;
  v39.i64[1] = v25.i64[0];
  v77 = vcgtq_u64(v39, vzip2q_s64(v11, v18));
  v39.i64[0] = v2 + 926172;
  v39.i64[1] = v2 + 926220;
  v78 = v12 + 926952;
  v79 = vuzp1q_s32(v77, v74);
  v77.i64[0] = v12 + 926796;
  v77.i64[1] = v12 + 926268;
  v80 = vcgtq_u64(v77, v39);
  v81 = vextq_s8(v65, v1, 8uLL);
  v1.i64[1] = v2 + 926952;
  v41.i64[1] = v12 + 926172;
  v82 = vuzp1q_s32(vcgtq_u64(v41, v1), v80);
  v80.i64[1] = v67.i64[1];
  v55.i64[1] = v67.i64[1];
  v55.i64[0] = v2 + 926916;
  v83 = vuzp1q_s16(v82, v79);
  v82.i64[0] = v2 + 926796;
  v82.i64[1] = v2 + 926952;
  v291 = vuzp1q_s8(v83, v73);
  v41.i64[0] = v12 + 926796;
  v33.i64[1] = v12 + 926916;
  v26.i64[1] = v12 + 926952;
  v84 = vcgtq_u64(v33, v61);
  v85 = vextq_s8(v65, v50, 8uLL);
  v61.i64[1] = v65.i64[1];
  v61.i64[0] = v2 + 926952;
  v86 = vcgtq_u64(v31, v61);
  v31.i64[1] = v62.i64[1];
  v62.i64[0] = v2 + 926796;
  v50.i64[1] = v2 + 926172;
  v87 = vuzp1q_s32(v86, v84);
  v86.i64[1] = v52.i64[1];
  v86.i64[0] = v2 + 926952;
  v88 = vuzp1q_s16(v87, vuzp1q_s32(vcgtq_u64(v26, v55), vcgtq_u64(v34, v82)));
  v60.i64[1] = v295.i64[1];
  v73.i64[0] = v295.i64[0];
  v73.i64[1] = v2 + 926700;
  v89 = vcgtq_u64(v30, v73);
  v90 = vcgtq_u64(v44, v86);
  v87.i64[0] = v12 + 926172;
  v86.i64[0] = v12 + 926172;
  v86.i64[1] = v12 + 926416;
  v91 = vuzp1q_s32(v90, v89);
  v89.i64[1] = v52.i64[1];
  v89.i64[0] = v2 + 926916;
  v44.i64[1] = v52.i64[1];
  v44.i64[0] = v2 + 926408;
  v41.i64[1] = v12 + 926700;
  v92 = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v41, v44), vcgtq_u64(v304, v89)), v91), v88);
  v44.i64[0] = v12 + 926172;
  v88.i64[0] = v12 + 926172;
  v91.i64[0] = v12 + 926652;
  v41.i64[0] = v12 + 926172;
  v87.i64[1] = v12 + 926916;
  v93 = vcgtq_u64(v87, v81);
  v81.i64[0] = v12 + 926652;
  v94 = vcgtq_u64(v86, v50);
  v50.i64[0] = v12 + 926652;
  v95 = vuzp1q_s32(v94, v93);
  v94.i64[0] = v12 + 926652;
  v41.i64[1] = v12 + 926316;
  v96 = vcgtq_u64(v41, v75);
  v41.i64[0] = v12 + 926652;
  v91.i64[1] = v12 + 926220;
  v55.i64[0] = v67.i64[0];
  v55.i64[1] = v11.i64[1];
  v97 = vuzp1q_s32(vcgtq_u64(v91, v62), v96);
  v98 = vdupq_n_s64(v2 + 926408);
  v99 = vuzp1q_s16(v97, v95);
  v95.i64[1] = v98.i64[1];
  v95.i64[0] = v2 + 926796;
  v41.i64[1] = v12 + 926952;
  v100 = vcgtq_u64(v41, vextq_s8(v67, v11, 8uLL));
  v59.i64[1] = v11.i64[1];
  v94.i64[1] = v12 + 926916;
  v101 = vdupq_lane_s64(v11.i64[0], 0);
  v50.i64[1] = v12 + 926416;
  v18.i64[1] = v98.i64[1];
  v101.i64[0] = v2 + 926408;
  v102 = vcgtq_u64(v50, v101);
  v32.i64[1] = v98.i64[1];
  v98.i64[0] = v2 + 926748;
  v81.i64[1] = v12 + 926316;
  v50.i64[0] = v25.i64[0];
  v103 = vuzp1q_s32(vcgtq_u64(v81, v63), v102);
  v63.i64[0] = v12 + 926316;
  v104 = vuzp1q_s16(v103, vuzp1q_s32(vcgtq_u64(v94, vzip1q_s64(v65, v11)), v100));
  v100.i64[0] = v12 + 926316;
  v105 = vuzp1q_s8(v104, v99);
  v99.i64[0] = v25.i64[0];
  v25.i64[1] = v12 + 926952;
  v106 = vcgtq_u64(v25, v98);
  v98.i64[0] = v12 + 926316;
  v99.i64[1] = v12 + 926916;
  v107 = vcgtq_u64(v99, v85);
  v85.i64[0] = v12 + 926316;
  v108 = vuzp1q_s32(v107, v106);
  v106.i64[0] = v12 + 926316;
  v63.i64[1] = v12 + 926416;
  v80.i64[0] = v2 + 926268;
  v59.i64[0] = v2 + 926408;
  v11.i64[0] = v2 + 926700;
  v106.i64[1] = v12 + 926952;
  v81.i64[0] = v12 + 926916;
  v109 = vuzp1q_s32(vcgtq_u64(v106, v55), vcgtq_u64(v63, v95));
  v106.i64[0] = v12 + 926916;
  v110 = vuzp1q_s16(v109, v108);
  v109.i64[0] = v12 + 926952;
  v85.i64[1] = v12 + 926916;
  v111 = vcgtq_u64(v85, v11);
  v85.i64[0] = v12 + 926952;
  v112 = vcgtq_u64(v63, v59);
  v59.i64[0] = v12 + 926952;
  v113 = vuzp1q_s32(v112, v111);
  v112.i64[0] = v12 + 926952;
  v109.i64[1] = v12 + 926268;
  v114 = vcgtq_u64(v109, v70);
  v70.i64[0] = v12 + 926916;
  v55.i64[0] = v12 + 926916;
  v94.i64[0] = v12 + 926916;
  v108.i64[0] = v12 + 926916;
  v81.i64[1] = v12 + 926268;
  v115 = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v81, v80), v114), v113), v110);
  v113.i64[1] = v65.i64[1];
  v113.i64[0] = v2 + 926268;
  v110.i64[0] = v12 + 926416;
  v27.i64[1] = v12 + 926268;
  v32.i64[0] = v2 + 926268;
  v98.i64[1] = v12 + 926268;
  v116 = vuzp1q_s32(vcgtq_u64(v98, v32), vcgtq_u64(v27, v113));
  v27.i64[1] = v67.i64[1];
  v117 = v12 + 926220;
  v108.i64[1] = v12 + 926220;
  v112.i64[1] = v12 + 926220;
  v118 = v2 + 926220;
  v27.i64[0] = v2 + 926220;
  v110.i64[1] = v12 + 926220;
  v119 = vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v108, v27), vcgtq_u64(v112, vextq_s8(v72, v21, 8uLL))), v116);
  v116.i64[1] = v65.i64[1];
  v116.i64[0] = v2 + 926220;
  v100.i64[1] = v12 + 926220;
  v18.i64[0] = v2 + 926220;
  v88.i64[1] = v12 + 926220;
  v120 = vuzp1q_s32(vcgtq_u64(v100, v18), vcgtq_u64(v110, v116));
  v110.i64[0] = v2 + 926796;
  v110.i64[1] = v2 + 926268;
  v31.i64[0] = v2 + 926748;
  v44.i64[1] = v12 + 926952;
  v121 = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v44, v31), vcgtq_u64(v88, v110)), v120), v119);
  v94.i64[1] = v12 + 926748;
  v60.i64[0] = v2 + 926748;
  v55.i64[1] = v12 + 926952;
  v110.i64[0] = v65.i64[0];
  v110.i64[1] = v2 + 926796;
  v59.i64[1] = v12 + 926700;
  v122 = vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v59, v110), vcgtq_u64(v55, v60)), vuzp1q_s32(vcgtq_u64(v94, v82), vcgtq_u64(v26, vextq_s8(v67, v21, 8uLL))));
  v65.i64[1] = v2 + 926748;
  v70.i64[1] = v12 + 926700;
  v110.i64[0] = v52.i64[0];
  v52.i64[1] = v2 + 926796;
  v85.i64[1] = v12 + 926416;
  v106.i64[1] = v12 + 926416;
  v110.i64[1] = v2 + 926748;
  v50.i64[1] = v12 + 926416;
  v21.i64[1] = v2 + 926700;
  v123 = vandq_s8(vcltzq_s8(vshlq_n_s8(vandq_s8(v92, vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_u64(v50, v21), vcgtq_u64(v106, v110)), vuzp1q_s32(vcgtq_u64(v85, v52), vcgtq_u64(v70, v65))), v122)), 7uLL)), xmmword_273BB9390);
  v124 = vaddvq_s16(vzip1q_s8(v123, vextq_s8(v123, v123, 8uLL)));
  v125 = vandq_s8(vcltzq_s8(vshlq_n_s8(vandq_s8(v291, v121), 7uLL)), xmmword_273BB9390);
  v126 = vzip1q_s8(v125, vextq_s8(v125, v125, 8uLL));
  v127 = v2 + 926604;
  v128 = v12 + 926604;
  v129 = v12 + 926652;
  v130 = v2 + 926652;
  v132 = v2 + 926604 < v12 + 926652 && v130 < v128;
  v296 = v132;
  v133 = v12 + 926172;
  v135 = v127 < v12 + 926172 && size < v128;
  v292 = v135;
  v136 = v12 + 926220;
  v138 = v127 < v117 && v118 < v128;
  v286 = v138;
  v139 = vaddvq_s16(v126);
  v140 = vandq_s8(vcltzq_s8(vshlq_n_s8(vandq_s8(v298, v115), 7uLL)), xmmword_273BB9390);
  v141 = vzip1q_s8(v140, vextq_s8(v140, v140, 8uLL));
  v143 = v127 < v13 && v2 + 926268 < v128;
  v144 = vaddvq_s16(v141);
  v145 = vandq_s8(vcltzq_s8(vshlq_n_s8(vandq_s8(v310, v105), 7uLL)), xmmword_273BB9390);
  v146 = vzip1q_s8(v145, vextq_s8(v145, v145, 8uLL));
  v148 = v127 < v56 && v2 + 926316 < v128;
  v150 = v127 < v2 + v7 + 926408 && v51 < v128;
  v151 = vaddvq_s16(v146);
  v153 = v127 < v14 && v2 + 926416 < v128;
  v155 = v127 < v15 && v2 + 926700 < v128;
  v157 = v127 < v76 && v2 + 926916 < v128;
  v159 = v127 < v16 && v2 + 926748 < v128;
  v161 = v127 < v78 && v10 < v128;
  v163 = v127 < v307 && v2 + 926796 < v128;
  v165 = v130 < v133 && size < v129;
  v166 = v130 >= v136 || v118 >= v129;
  v167 = v151 | v144 | v139 | v124;
  v168 = !v166;
  if (v167)
  {
    v6 = v2 + 189936;
LABEL_108:
    v5 = v319;
    v4 = v321;
    v9 = 0;
    v3 = v315;
LABEL_109:
    v182 = v7 - v9;
    v183 = (v2 + 4 * v9 + 926172);
    v184 = (v9 + v2 + 926408);
    do
    {
      v183[108] = 0;
      v183[120] = 0;
      *v183 = 0;
      v183[12] = 0;
      v183[24] = 1;
      v183[36] = 2;
      *v184++ = 3;
      v183[61] = 8;
      v183[132] = v8;
      v183[186] = -1;
      v183[144] = 0;
      v183[195] = 0;
      v183[156] = 0;
      ++v183;
      --v182;
    }

    while (v182);
    goto LABEL_111;
  }

  v6 = v2 + 189936;
  if (v296 || v292 || v286 || v143 || v148 || v150 || v153 || v155 || v157 || v159 || v161 || v163)
  {
    goto LABEL_108;
  }

  v5 = v319;
  v4 = v321;
  v9 = 0;
  v3 = v315;
  if (v165)
  {
    goto LABEL_109;
  }

  if (v168)
  {
    goto LABEL_109;
  }

  v169 = vdupq_n_s32(v8);
  v9 = v7 & 0x7FFFFFF8;
  *&v170 = 0x100000001;
  *(&v170 + 1) = 0x100000001;
  *&v171 = 0x200000002;
  *(&v171 + 1) = 0x200000002;
  *&v172 = 0x800000008;
  *(&v172 + 1) = 0x800000008;
  v173 = v9;
  *&v174 = -1;
  *(&v174 + 1) = -1;
  do
  {
    v175 = (v10 - 348);
    *v175 = 0uLL;
    v175[1] = 0uLL;
    v176 = (v10 - 300);
    *v176 = 0uLL;
    v176[1] = 0uLL;
    v177 = (v10 - 780);
    *v177 = 0uLL;
    v177[1] = 0uLL;
    v178 = (v10 - 732);
    *v178 = 0uLL;
    v178[1] = 0uLL;
    v179 = (v10 - 684);
    *v179 = v170;
    v179[1] = v170;
    v180 = (v10 - 636);
    *v180 = v171;
    v180[1] = v171;
    *v51++ = 0x303030303030303;
    v181 = (v10 - 536);
    *(v10 - 252) = v169;
    *(v10 - 236) = v169;
    *(v10 - 20) = v174;
    *(v10 - 36) = v174;
    *(v10 - 188) = 0uLL;
    *(v10 - 204) = 0uLL;
    *v10 = 0uLL;
    v10[1] = 0uLL;
    *(v10 - 140) = 0uLL;
    *(v10 - 156) = 0uLL;
    v10 += 2;
    *v181 = v172;
    v181[1] = v172;
    v173 -= 8;
  }

  while (v173);
  if (v9 != v7)
  {
    goto LABEL_109;
  }

LABEL_111:
  *(v2 + 926844) = 0x7FFFFFFF;
  *(v2 + 926376) = xmmword_273BB9B30;
  if (!*(v6 + 376) && *(v6 + 140) == 2)
  {
    if (vpx_realloc_frame_buffer(v2 + 754568, 32, 16, *v3, v3[1], v3[2], 160, *v6, 0, 0, 0))
    {
      vpx_internal_error(v2 + 171696, 2, "Failed to allocate empty frame for multiple frame contexts");
    }

    memset(*(v2 + 754656), 128, *(v2 + 754664));
    LODWORD(v7) = *(v6 + 252);
  }

  if (v7 >= 1)
  {
    v185 = *(v6 + 256);
    if (v185 >= 1)
    {
      v186 = 0;
      v287 = v2 + 190196;
      v288 = v2 + 758936;
      v297 = v2 + 190264;
      __len = v5 * v4;
      sizea = __len + 23;
      v294 = v2;
      while (1)
      {
        if (v185 < 1)
        {
          goto LABEL_121;
        }

        v187 = v185;
        v188 = v185 * v186;
        v189 = v288 + 13936 * v185 * v186;
        *(v189 + 13816) = 0;
        *(v189 + 13856) = 0;
        *(v189 + 13824) = 0x200000000;
        v190 = *(v6 + 200);
        v191 = *(v6 + 204);
        *(v189 + 156) = v190;
        *(v189 + 256) = 0;
        *(v189 + 272) = 0;
        *(v189 + 160) = 0;
        *(v189 + 224) = 0;
        *(v189 + 176) = 0;
        *(v189 + 184) = 0;
        *(v189 + 280) = v190;
        *(v189 + 284) = v191;
        memset_pattern16((v189 + 48), &unk_273BD42D0, 0x28uLL);
        v192 = *(v6 + 156);
        v193 = *(v287 + 4 * v188);
        *(v189 + 720) = v193;
        if (v192 == 1)
        {
          *(v189 + 20) = v190;
          *(v189 + 168) = v190;
          *(v189 + 172) = v190;
        }

        else
        {
          *(v189 + 16) = v191;
          *(v189 + 20) = v191;
          v194 = (v191 + v190) / 2;
          *(v189 + 168) = v194;
          *(v189 + 172) = v194;
          v195 = *(v297 + 4 * v186);
          v196 = v195 == 0;
          v197 = v300;
          if (v195)
          {
            v198 = v300;
          }

          else
          {
            v198 = -1;
          }

          if (!v196)
          {
            v197 = v300 + 1;
          }

          v300 = v197;
          *(v189 + 13840) = v198;
          *(v189 + 13844) = -1;
        }

        v199 = (*(v6 + 168) * v193 * 0x20C49BA5E353F7CFLL) >> 64;
        v200 = (v199 >> 7) + (v199 >> 63);
        *(v189 + 192) = v200;
        *(v189 + 200) = v200;
        v185 = v187;
        v2 = v294;
        if (v7 >= 2)
        {
          break;
        }

LABEL_149:
        if (v185 >= 2)
        {
          v211 = *(v6 + 200);
          v212 = *(v6 + 204);
          v213 = *(v6 + 156);
          v214 = *(v6 + 168);
          if (v185 <= 2)
          {
            v215 = 2;
          }

          else
          {
            v215 = v185;
          }

          v316 = v215;
          v216 = v186;
          v217 = v185 * v186 + 1;
          v218 = v288 + 13936 * v217;
          *(v218 + 13816) = 0;
          *(v218 + 13856) = 0;
          *(v218 + 13824) = 0x200000000;
          *(v218 + 156) = v211;
          *(v218 + 256) = 0;
          *(v218 + 272) = 0;
          *(v218 + 160) = 0;
          *(v218 + 224) = 0;
          *(v218 + 176) = 0;
          *(v218 + 184) = 0;
          *(v218 + 280) = v211;
          *(v218 + 284) = v212;
          v219 = v185;
          memset_pattern16((v218 + 48), &unk_273BD42D0, 0x28uLL);
          v320 = v214;
          v220 = *(v287 + 4 * v217);
          *(v218 + 720) = v220;
          v221 = v214 * v220;
          v322 = v211;
          if (v213 == 1)
          {
            v293 = v216;
            *(v218 + 20) = v211;
            *(v218 + 168) = v211;
            *(v218 + 172) = v211;
            v222 = v221 / 1000;
            *(v218 + 192) = v222;
            *(v218 + 200) = v222;
            v185 = v219;
            if (v219 < 3)
            {
              v186 = v216;
LABEL_163:
              v2 = v294;
              goto LABEL_120;
            }

            v229 = v316 - 2;
            v284 = v219;
            v230 = v219 * v216 + 2;
            v231 = 4 * v230 + 190196;
            v232 = 13936 * v230 + 758984;
            v233 = 13936 * v230 + 759136;
            v234 = 13936 * v230 + 759128;
            v235 = 13936 * v230 + 772760;
            v236 = 13936 * v230 + 772792;
            v2 = v294;
            v237 = 13936 * v230 + 758956;
            v238 = 13936 * v230 + 759192;
            v239 = 13936 * v230 + 759208;
            v240 = 13936 * v230 + 759160;
            v241 = 13936 * v230 + 759112;
            v242 = 13936 * v230 + 759096;
            v302 = v212;
            do
            {
              v305 = v239;
              v308 = v238;
              v311 = v237;
              v313 = v236;
              v317 = v235;
              v243 = (v294 + v237);
              v243[3449] = 0;
              *(v294 + v236) = 0;
              *(v294 + v235) = 0x200000000;
              *(v294 + v238) = 0;
              v243[34] = v211;
              *(v294 + v239) = 0;
              v244 = (v294 + v241);
              *(v294 + v242) = 0;
              *(v294 + v240) = 0;
              *v244 = 0;
              v244[1] = 0;
              v243[65] = v211;
              v243[66] = v302;
              v245 = v229;
              v246 = v231;
              memset_pattern16((v294 + v232), &unk_273BD42D0, 0x28uLL);
              v247 = v245;
              v211 = v322;
              v248 = *(v294 + v246);
              v249 = v320 * v248 / 1000;
              *(v294 + v234) = v249;
              *(v294 + v233) = v249;
              v231 = v246 + 4;
              v243[175] = v248;
              *v243 = v322;
              v233 += 13936;
              v234 += 13936;
              v236 = v313 + 13936;
              v237 = v311 + 13936;
              v243[37] = v322;
              v243[38] = v322;
              v235 = v317 + 13936;
              v232 += 13936;
              v238 = v308 + 13936;
              v239 = v305 + 13936;
              v240 += 13936;
              v241 += 13936;
              v242 += 13936;
              v229 = v247 - 1;
            }

            while (v229);
          }

          else
          {
            v223 = ((v212 + v211) / 2);
            *(v218 + 16) = v212;
            *(v218 + 20) = v212;
            *(v218 + 168) = v223;
            *(v218 + 172) = v223;
            v224 = *(v297 + 4 * v216);
            v225 = v224 == 0;
            v226 = v300;
            if (v224)
            {
              v227 = v300;
            }

            else
            {
              v227 = -1;
            }

            if (!v225)
            {
              v226 = v300 + 1;
            }

            *(v218 + 13840) = v227;
            *(v218 + 13844) = -1;
            v228 = v221 / 1000;
            *(v218 + 192) = v228;
            *(v218 + 200) = v228;
            v186 = v216;
            v185 = v219;
            if (v219 < 3)
            {
              v300 = v226;
              goto LABEL_163;
            }

            v250 = v316 - 2;
            v284 = v219;
            v251 = v219 * v216 + 2;
            v252 = 4 * v251 + 190196;
            v253 = 13936 * v251 + 758984;
            v254 = 13936 * v251 + 759136;
            v255 = 13936 * v251 + 759128;
            v256 = 13936 * v251 + 772760;
            v257 = 13936 * v251 + 772792;
            v258 = 13936 * v251 + 759192;
            v259 = 13936 * v251 + 759208;
            v260 = 13936 * v251 + 758952;
            v293 = v216;
            v261 = 13936 * v251 + 759096;
            v262 = 13936 * v251 + 759112;
            v263 = 13936 * v251 + 759160;
            do
            {
              v299 = v263;
              v301 = v262;
              v303 = v261;
              v306 = v260;
              v309 = v257;
              v312 = v258;
              v314 = v255;
              v318 = v254;
              v264 = (v294 + v260);
              v264[3450] = 0;
              *(v294 + v257) = 0;
              *(v294 + v256) = 0x200000000;
              *(v294 + v258) = 0;
              v264[35] = v211;
              *(v294 + v259) = 0;
              v265 = (v294 + v262);
              *(v294 + v261) = 0;
              *(v294 + v263) = 0;
              *v265 = 0;
              v265[1] = 0;
              v264[66] = v211;
              v264[67] = v212;
              v266 = v212;
              v267 = v223;
              v268 = v250;
              v269 = v253;
              v270 = v256;
              v271 = v259;
              memset_pattern16((v294 + v253), &unk_273BD42D0, 0x28uLL);
              v272 = v270;
              v273 = v269;
              v223 = v267;
              v212 = v266;
              v211 = v322;
              v274 = *(v294 + v252);
              v264[176] = v274;
              *v264 = v266;
              v264[1] = v266;
              v264[38] = v267;
              v264[39] = v267;
              v275 = (v320 * v274 * 0x20C49BA5E353F7CFLL) >> 64;
              v276 = (v275 >> 7) + (v275 >> 63);
              v277 = *(v297 + 4 * v293);
              v278 = v277 == 0;
              if (v277)
              {
                v279 = v226;
              }

              else
              {
                v279 = -1;
              }

              *(v294 + v314) = v276;
              if (!v278)
              {
                ++v226;
              }

              *(v294 + v318) = v276;
              v252 += 4;
              v254 = v318 + 13936;
              v255 = v314 + 13936;
              v257 = v309 + 13936;
              v256 = v272 + 13936;
              v264[3456] = v279;
              v258 = v312 + 13936;
              v259 = v271 + 13936;
              v260 = v306 + 13936;
              v261 = v303 + 13936;
              v264[3457] = -1;
              v253 = v273 + 13936;
              v262 = v301 + 13936;
              v263 = v299 + 13936;
              v250 = v268 - 1;
            }

            while (v268 != 1);
            v2 = v294;
            v300 = v226;
          }

          v6 = v283;
          v186 = v293;
          v185 = v284;
        }

LABEL_120:
        LODWORD(v7) = *(v6 + 252);
LABEL_121:
        if (++v186 >= v7)
        {
          goto LABEL_177;
        }
      }

      *(v189 + 13864) = 0;
      *(v189 + 13896) = 0;
      *(v189 + 13904) = 0;
      if (sizea <= 0x10000000000 && (v201 = malloc_type_malloc(sizea, 0xD93B561uLL)) != 0)
      {
        v202 = (v201 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v202 - 8) = v201;
        *(v189 + 13872) = v202;
        if (v202)
        {
          bzero(((v201 + 23) & 0xFFFFFFFFFFFFFFF0), __len);
LABEL_138:
          v204 = malloc_type_malloc(sizea, 0xD93B561uLL);
          if (v204)
          {
            v205 = (v204 + 23) & 0xFFFFFFFFFFFFFFF0;
            *(v205 - 8) = v204;
            *(v189 + 13880) = v205;
            if (v205)
            {
              memset(((v204 + 23) & 0xFFFFFFFFFFFFFFF0), 255, __len);
LABEL_143:
              v207 = malloc_type_malloc(sizea, 0xD93B561uLL);
              if (v207)
              {
                v208 = v207;
                v209 = ((v207 + 23) & 0xFFFFFFFFFFFFFFF0);
                *(v209 - 1) = v208;
                *(v189 + 13888) = v209;
                if (v209)
                {
LABEL_148:
                  bzero(v209, __len);
                  v185 = *(v6 + 256);
                  goto LABEL_149;
                }

                v210 = (v189 + 13888);
LABEL_147:
                vpx_internal_error(v294 + 171696, 2, "Failed to allocate lc->consec_zero_mv");
                v209 = *v210;
                goto LABEL_148;
              }

LABEL_146:
              v210 = (v189 + 13888);
              *(v189 + 13888) = 0;
              goto LABEL_147;
            }

            v206 = (v189 + 13880);
LABEL_142:
            vpx_internal_error(v294 + 171696, 2, "Failed to allocate lc->last_coded_q_map");
            memset(*v206, 255, __len);
            if (sizea > 0x10000000000)
            {
              goto LABEL_146;
            }

            goto LABEL_143;
          }

LABEL_141:
          v206 = (v189 + 13880);
          *(v189 + 13880) = 0;
          goto LABEL_142;
        }

        v203 = (v189 + 13872);
      }

      else
      {
        v203 = (v189 + 13872);
        *(v189 + 13872) = 0;
      }

      vpx_internal_error(v294 + 171696, 2, "Failed to allocate lc->map");
      bzero(*v203, __len);
      if (sizea > 0x10000000000)
      {
        goto LABEL_141;
      }

      goto LABEL_138;
    }
  }

LABEL_177:
  if (*(v282 + 12) <= 1)
  {
    v280 = v300;
    if (v300 > 7)
    {
      return;
    }

    goto LABEL_184;
  }

  v280 = v300;
  if (*(v6 + 156) != 1 && v300 < 8)
  {
LABEL_184:
    *(v2 + 772780) = v280;
  }
}

uint64_t vp9_update_layer_context_change_config(uint64_t result, int a2)
{
  v2 = (result + 738608);
  v3 = (result + 190092);
  v4 = *(result + 190404);
  *(result + 926168) = v4;
  if (v4)
  {
    v5 = *(result + 190188);
    if (v5 >= 1)
    {
      v6 = *(result + 190192);
      v7 = (result + 190196);
      if (v6 <= 0)
      {
        v62 = (result + 759656);
        v63 = 13936 * v6;
        v64 = 4 * v6;
        do
        {
          *v62 = *v7;
          v62 = (v62 + v63);
          v7 = (v7 + v64);
          --v5;
        }

        while (v5);
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = (v6 - 1);
        v11 = vcvt_f32_f64(vcvtq_f64_s64(*(result + 738744)));
        v12 = *(result + 738760);
        v13 = *(result + 739176);
        v14 = *v2;
        v15 = *(result + 738736);
        v16 = 1.0;
        __asm { FMOV            V7.2D, #0.5 }

        do
        {
          v21 = 13936 * v8 + 759080;
          v22 = 13936 * v8 + 759216;
          v23 = 13936 * v8 + 759224;
          v24 = 13936 * v8 + 759664;
          v25 = 13936 * v8 + 759128;
          v26 = 13936 * v8 + 759240;
          v27 = (result + 759656 + 13936 * v8);
          v28 = (result + 190196 + 4 * v8);
          v29 = v9 * v6;
          v30 = v6;
          do
          {
            v31 = *v28++;
            *v27 = v31;
            v27 += 3484;
            --v30;
          }

          while (v30);
          v32 = v7[v29 + v10];
          *(result + 758936 + 13936 * (v29 + v10) + 720) = v32;
          v33 = 190284;
          v34 = v6;
          do
          {
            v35 = (result + v21);
            v36 = *(result + v21 + 576);
            if (a2)
            {
              v16 = v36 / a2;
            }

            *(result + v23) = vcvtq_s64_f64(vaddq_f64(vcvtq_f64_f32(vmul_n_f32(v11, v16)), _Q7));
            v37 = (v16 * v12) + 0.5;
            *(result + v26) = v37;
            v35[145] = v32;
            v38 = vdupq_n_s64(v37);
            v39 = v13 / *(result + v33);
            v40 = *(result + v25);
            v41 = round(v36 / v39);
            if (v41 >= 2147483650.0)
            {
              v41 = 2147483650.0;
            }

            *(result + v24) = v39;
            *v35 = v41;
            v35[2] = v14;
            *(result + v22) = v15;
            v33 += 4;
            v22 += 13936;
            *(result + v25) = vbslq_s8(vcgtq_s64(v38, v40), v40, v38);
            v23 += 13936;
            v21 += 13936;
            v24 += 13936;
            v25 += 13936;
            v26 += 13936;
            --v34;
          }

          while (v34);
          ++v9;
          v8 += v6;
        }

        while (v9 != v5);
      }
    }
  }

  else
  {
    v42 = *(result + 754556);
    if (v42 > 1 && (LODWORD(v43) = *(result + 754556), *v3 == 1) || (LODWORD(v43) = *(result + 754552), v43 >= 1))
    {
      v44 = 759080;
      v45 = 190196;
      v46 = vcvt_f32_f64(vcvtq_f64_s64(*(result + 738744)));
      v47 = *(result + 738760);
      v48 = *v2;
      v43 = v43;
      v49 = 759128;
      v50 = *(result + 738736);
      v51 = 759216;
      v52 = 759224;
      v53 = 759240;
      v54 = 759664;
      v55 = 1.0;
      do
      {
        v59 = *(result + v45);
        *(result + v44 + 576) = v59;
        if (a2)
        {
          v55 = v59 / a2;
        }

        *(result + v52) = vcvtq_s64_f64(vcvtq_f64_f32(vmul_n_f32(v46, v55)));
        v60 = (v55 * v47);
        *(result + v53) = v60;
        v61 = vdupq_n_s64(v60);
        *(result + v49) = vbslq_s8(vcgtq_s64(v61, *(result + v49)), *(result + v49), v61);
        if (v42 <= 1)
        {
          v56 = *(result + 739176);
        }

        else
        {
          v56 = *(result + 739176);
          if (*v3 == 1)
          {
            v56 = v56 / *(result + v45 + 88);
          }
        }

        *(result + v54) = v56;
        v57 = round(v59 / v56);
        if (v57 >= 2147483650.0)
        {
          v57 = 2147483650.0;
        }

        v58 = (result + v44);
        *v58 = v57;
        v58[2] = v48;
        *(result + v51) = v50;
        v52 += 13936;
        v51 += 13936;
        v53 += 13936;
        v44 += 13936;
        v54 += 13936;
        v49 += 13936;
        v45 += 4;
        --v43;
      }

      while (v43);
    }
  }

  v65 = *(result + 190188);
  if (v65 < 1)
  {
    goto LABEL_44;
  }

  v66 = *(result + 190192);
  if (v65 >= 8 && v66 == 1)
  {
    v68 = v65 & 0x7FFFFFF8;
    v70 = (result + 190212);
    v71 = 0uLL;
    v72 = v68;
    v73 = 0uLL;
    do
    {
      v71 = vsubq_s32(v71, vcgtzq_s32(v70[-1]));
      v73 = vsubq_s32(v73, vcgtzq_s32(*v70));
      v70 += 2;
      v72 -= 8;
    }

    while (v72);
    v69 = vaddvq_s32(vaddq_s32(v73, v71));
    if (v68 == v65)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  v74 = v66;
  v75 = v65 - v68;
  v76 = (result + 4 * (v66 - 1 + v68 * v66) + 190196);
  do
  {
    if (*v76 > 0)
    {
      ++v69;
    }

    v76 += v74;
    --v75;
  }

  while (v75);
LABEL_43:
  if (v69 != 1)
  {
LABEL_44:
    v69 = 0;
  }

  *(result + 927136) = v69;
  return result;
}

void *vp9_restore_layer_context(uint64_t a1)
{
  v2 = a1 + 754540;
  v3 = (a1 + 738572);
  v4 = a1 + 190040;
  v5 = *(a1 + 754540);
  if (v5 && !*(a1 + 190076))
  {
    v6 = *(a1 + 754556);
    v7 = *(a1 + 754548) + v6 * *(a1 + 754544);
  }

  else
  {
    v6 = *(a1 + 754556);
    if (v6 >= 2 && *(a1 + 190092) == 1)
    {
      v7 = *(a1 + 754548);
    }

    else
    {
      v7 = *(a1 + 754544);
    }
  }

  v8 = a1 + 13936 * v7;
  v9 = *v3;
  v10 = *(a1 + 739116);
  memcpy((a1 + 738456), (v8 + 758936), 0x2D0uLL);
  result = memcpy((a1 + 741304), (v8 + 759704), 0x32E8uLL);
  *v4 = *(v8 + 759656);
  *(v4 + 392) = *(v8 + 772768);
  if (v5 && !*(v4 + 36) && *(v8 + 772856))
  {
    *(v4 + 16) = *(v8 + 772856);
  }

  *(a1 + 942320) = *(v8 + 772860);
  if (v6 > 1 || *(v2 + 12) >= 2)
  {
    *v3 = v9;
  }

  *(v3 + 136) = v10;
  if (*(v4 + 108) == 3 && *(v2 + 12) >= 2 && !*(v2 + 8))
  {
    v12 = *(v3 + 1700);
    v13 = *(v12 + 32);
    *(v12 + 32) = *(v8 + 772808);
    *(v8 + 772808) = v13;
    v14 = *(v12 + 40);
    *(v12 + 40) = *(v8 + 772816);
    *(v8 + 772816) = v14;
    v15 = *(a1 + 933872);
    *(a1 + 933872) = *(v8 + 772824);
    *(v8 + 772824) = v15;
    *(v12 + 8) = *(v8 + 772800);
    *(v12 + 20) = *(v8 + 772832);
    *(v12 + 124) = *(v8 + 772840);
  }

  return result;
}

double vp9_save_layer_context(uint64_t a1)
{
  v2 = a1 + 754540;
  v3 = a1 + 190040;
  v4 = (a1 + 173000);
  if (*(a1 + 754540) && !*(a1 + 190076))
  {
    v5 = *(a1 + 754548) + *(a1 + 754556) * *(a1 + 754544);
  }

  else if (*(a1 + 754556) >= 2 && *(a1 + 190092) == 1)
  {
    v5 = *(a1 + 754548);
  }

  else
  {
    v5 = *(a1 + 754544);
  }

  v6 = a1 + 13936 * v5;
  memcpy((v6 + 758936), (a1 + 738456), 0x2D0uLL);
  memcpy((v6 + 759704), (a1 + 741304), 0x32E8uLL);
  *(v6 + 759656) = *v3;
  *(v6 + 772768) = *(v3 + 392);
  *(v6 + 772864) = v4[7];
  *(v6 + 772868) = *v4;
  if (*(v3 + 108) == 3 && *(v2 + 12) >= 2 && !*(v2 + 8))
  {
    v8 = *(a1 + 740272);
    v9 = *(v6 + 772816);
    v10 = *(v6 + 772824);
    v11 = *(v8 + 32);
    *(v8 + 32) = *(v6 + 772808);
    *(v6 + 772808) = v11;
    *(v8 + 40) = v9;
    *(v6 + 772824) = *(a1 + 933872);
    *(a1 + 933872) = v10;
    *(v6 + 772800) = *(v8 + 8);
    result = *(v8 + 20);
    *(v6 + 772832) = result;
    *(v6 + 772840) = *(v8 + 124);
    *(v6 + 772844) = *(v8 + 96);
    *(v6 + 772848) = *(v8 + 100);
    *(v6 + 772852) = *(v8 + 104);
  }

  return result;
}

uint64_t vp9_one_pass_svc_start_layer(uint64_t a1)
{
  v2 = a1 + 926168;
  v3 = (a1 + 754544);
  v63 = a1 + 189992;
  *(a1 + 926596) = 0;
  v4 = *(a1 + 754552);
  if (*(a1 + 926852) == 1 && (v4 & 0xFFFFFFFE) == 2)
  {
    *(a1 + 927132) = *(a1 + 754556) < 4;
  }

  else
  {
    *(a1 + 927132) = 0;
    if (v4 < 2)
    {
      goto LABEL_9;
    }
  }

  *(a1 + 926400) = 0x100000001;
LABEL_9:
  v6 = (a1 + 738736);
  v7 = (a1 + 194512);
  *(a1 + 926364) = 1;
  if (*(a1 + 754560) == *(a1 + 927028))
  {
    if (v4 >= 1)
    {
      bzero((a1 + 926796), 4 * v4);
    }

    if (*(v2 + 680) == 3)
    {
      v8 = v4;
      while (v8 > *(v2 + 860))
      {
        --v8;
        v9 = (a1 + 758936 + 13936 * (v3[1] + v3[3] * v8));
        memcpy((a1 + 738456), v9, 0x2D0uLL);
        *(v63 + 48) = v9[180];
        if (vp9_test_drop(a1))
        {
          if (v8 + 1 > *(v2 + 860))
          {
            v10 = v8;
            do
            {
              *(a1 + 926796 + 4 * v10) = 1;
            }

            while (v10-- > *(v2 + 860));
          }

          break;
        }
      }
    }
  }

  v12 = *v2;
  if (*v2 <= 1)
  {
    if (v12)
    {
      if (v12 == 1 && *(v2 + 836))
      {
        v13 = v3[4];
        *v3 = v13;
        v14 = (a1 + 4 * v13);
        v3[1] = v14[231752];
        *(a1 + 194568) = 1;
        *v7 = v14[231555];
        *(a1 + 194516) = v14[231567];
        *(a1 + 194520) = v14[231579];
        *(a1 + 194572) = 0;
        *(a1 + 194576) = 0;
        *(a1 + 739528) = 0;
        v15 = (a1 + v13);
        v16 = v15[926884] != 0;
        *(a1 + 739528) = v16;
        if (v15[926889])
        {
          v16 |= 2u;
          *(a1 + 739528) = v16;
        }

        if (v15[926894])
        {
          *(a1 + 739528) = v16 | 4;
          v17 = *v7;
          v18 = *(v2 + 208);
          if (*v7 == v18)
          {
            goto LABEL_53;
          }

          goto LABEL_47;
        }
      }

LABEL_46:
      v17 = *v7;
      v18 = *(v2 + 208);
      if (*v7 == v18)
      {
        goto LABEL_53;
      }

      goto LABEL_47;
    }

    v19 = v3[4];
    *v3 = v19;
    *(a1 + 194568) = xmmword_273B92020;
    if (v19)
    {
      v20 = v19 - 1;
      if (*(a1 + 772756))
      {
        v21 = 0;
        *(a1 + 194572) = 0x100000000;
        v22 = v19 - 1;
        v23 = 1;
        *(a1 + 739528) = 1;
        *v7 = v20;
        *(a1 + 194516) = v19;
        if (!*(v2 + 964))
        {
          goto LABEL_51;
        }
      }

      else
      {
        v23 = 0;
        v21 = 1;
        v22 = v19;
        *(a1 + 739528) = 3;
        *v7 = v19;
        *(a1 + 194516) = v20;
        if (!*(v2 + 964))
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      v22 = 0;
      v21 = 1;
      v23 = 1;
      *(a1 + 739528) = 1;
      *v7 = 0;
      *(a1 + 194516) = 0;
      if (!*(v2 + 964))
      {
        goto LABEL_51;
      }
    }

    v24 = v3[1];
    if (v24 >= 1 && v24 == v3[3] - 1)
    {
      *(a1 + 194576) = 0;
      *(a1 + 194572) = 0;
      if (v23)
      {
        goto LABEL_52;
      }

      goto LABEL_45;
    }

LABEL_51:
    if (v21 & v23)
    {
LABEL_52:
      *(a1 + 194516) = v22;
      v17 = *v7;
      v18 = *(v2 + 208);
      if (*v7 == v18)
      {
        goto LABEL_53;
      }

      goto LABEL_47;
    }

LABEL_45:
    *(a1 + 194520) = v22;
    goto LABEL_46;
  }

  if (v12 == 2)
  {
    set_flags_and_fb_idx_for_temporal_mode2(a1);
    v17 = *v7;
    v18 = *(v2 + 208);
    if (*v7 == v18)
    {
      goto LABEL_53;
    }
  }

  else
  {
    if (v12 != 3)
    {
      goto LABEL_46;
    }

    set_flags_and_fb_idx_for_temporal_mode3(a1);
    v17 = *v7;
    v18 = *(v2 + 208);
    if (*v7 == v18)
    {
      goto LABEL_53;
    }
  }

LABEL_47:
  if (*(a1 + 194516) == v18 || *(a1 + 194520) == v18)
  {
LABEL_53:
    *(v2 + 212) = 1;
    v25 = *(v2 + 216);
    if (v17 != v25)
    {
      goto LABEL_54;
    }

LABEL_56:
    *(v2 + 220) = 1;
    goto LABEL_57;
  }

  v25 = *(v2 + 216);
  if (v17 == v25)
  {
    goto LABEL_56;
  }

LABEL_54:
  if (*(a1 + 194516) == v25 || *(a1 + 194520) == v25)
  {
    goto LABEL_56;
  }

LABEL_57:
  *(v2 + 204) = 0;
  if (!*(v2 + 200) || *(v2 + 212) || *(v2 + 220) || *v2 == 1 || !*(v2 + 684) || (v26 = v3[2], v26 > 3) || v3[3] > 3)
  {
    v27 = *v3;
  }

  else
  {
    v27 = *v3;
    if (*v3 >= v26 - 2)
    {
      *(v2 + 204) = 1;
    }
  }

  if (!v27)
  {
    *(v2 + 826) = 0;
    v30 = v3[2];
    if (v30 >= 1)
    {
      v31 = (v2 + 784);
      do
      {
        if (*v31++)
        {
          *(v2 + 826) = 1;
        }

        --v30;
      }

      while (v30);
    }
  }

  v28 = *(v2 + 860);
  if (v27 == v28)
  {
    *(a1 + 926668) = 0u;
    *(a1 + 926684) = 0u;
    *(a1 + 926652) = 0u;
    if (*v2 == 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = 0;
      *&v33 = -1;
      *(&v33 + 1) = -1;
      *(a1 + 926236) = v33;
      *(a1 + 926252) = v33;
      *(a1 + 926220) = v33;
      *(a1 + 926268) = v33;
      *(a1 + 926284) = v33;
      *(a1 + 926300) = v33;
      *(a1 + 926316) = v33;
      *(a1 + 926332) = v33;
      *(a1 + 926348) = v33;
      *(a1 + 926872) = 0;
      *(a1 + 926880) = 0;
      *(a1 + 926864) = 0;
      *(a1 + 926888) = 0;
      *(a1 + 926893) = 0;
      *(a1 + 926889) = 0;
      *(a1 + 926898) = 0;
      *(a1 + 926894) = 0;
      *(a1 + 926903) = 0;
      *(a1 + 926899) = 0;
      *(a1 + 926904) = 0;
      *(a1 + 926908) = 0;
      *(a1 + 926909) = 0;
      *(a1 + 926913) = 0;
    }
  }

  else
  {
    v29 = *v2 == 1;
  }

  v34 = a1 + 758936;
  v35 = (a1 + 758936 + 13936 * (v3[1] + v3[3] * v27));
  if (!v29 || *(v2 + 836))
  {
    v35[70] = quantizer_to_qindex[v35[185]];
    v35[71] = quantizer_to_qindex[v35[186]];
    if (*(a1 + 942520))
    {
      *(v35 + 35) = *v6;
    }
  }

  if (*(v63 + 164) == 2 && *(v2 + 968) == 1 && v27 == v28 && *(a1 + 933796))
  {
    v36 = 190;
    v37 = 189;
  }

  else
  {
    v36 = 188;
    v37 = 187;
  }

  v38 = v35[v37];
  v39 = v35[v36];
  v40 = *v63;
  v41 = *(v63 + 4);
  if (v38)
  {
    v42 = v39 == 0;
  }

  else
  {
    v42 = 1;
  }

  if (v42)
  {
    if (v41 * v40 <= 76800)
    {
      goto LABEL_102;
    }

LABEL_94:
    v43 = (a1 + 172972);
    if (v38 > (3 * v39) >> 2)
    {
      goto LABEL_103;
    }

LABEL_95:
    v44 = v3[2];
    if (v44 < 2)
    {
      goto LABEL_115;
    }

    goto LABEL_104;
  }

  v45 = v40 * v38 / v39;
  v46 = v41 * v38;
  v47 = v45 & 1;
  if (v45 < 0)
  {
    v47 = -v47;
  }

  v40 = v47 + v45;
  v48 = v46 / v39;
  v49 = (v46 / v39) & 1;
  if (v48 < 0)
  {
    v49 = -v49;
  }

  v41 = v49 + v48;
  if ((v49 + v48) * v40 > 76800)
  {
    goto LABEL_94;
  }

LABEL_102:
  *(a1 + v27 + 926408) = 1;
  v43 = (a1 + 172972);
  if (v38 <= (3 * v39) >> 2)
  {
    goto LABEL_95;
  }

LABEL_103:
  *(a1 + 4 * *v3 + 926416) = 0;
  v44 = v3[2];
  if (v44 < 2)
  {
    goto LABEL_115;
  }

LABEL_104:
  v50 = v3[3];
  v51 = v3[1];
  if (v44 != 3)
  {
    v55 = (v44 - 1);
    v56 = (a1 + 13936 * v51 + 759688);
    v57 = 13936 * v50;
    while (*(v56 - 1) == *v56 >> 1)
    {
      v56 = (v56 + v57);
      if (!--v55)
      {
        goto LABEL_112;
      }
    }

    goto LABEL_108;
  }

  v52 = v34 + 13936 * v51;
  v53 = *(v52 + 748);
  v54 = *(v52 + 752);
  if (v53 != v54 >> 1 && v53 != v54 >> 2 || *(v34 + 13936 * (v50 + v51) + 748) != *(v34 + 13936 * (v50 + v51) + 752) >> 1)
  {
LABEL_108:
    *(v2 + 232) = 0;
  }

LABEL_112:
  if (*v3 >= 1 && *(a1 + 4 * (*v3 - 1) + 926652))
  {
    *(v2 + 232) = 0;
  }

LABEL_115:
  *(v2 + 228) = 0;
  if (*v43 && !*(a1 + 194572) && !*(a1 + 194576) && !*(a1 + 194580))
  {
    *(v2 + 228) = 1;
  }

  v58 = *v2;
  v59 = *v3;
  v60 = a1 + 4 * v59;
  if (*v2 == 1 && *(v60 + 926864))
  {
    *(v2 + 228) = 0;
  }

  if (v59)
  {
    if (v58 == 1)
    {
      goto LABEL_130;
    }
  }

  else
  {
    *(v2 + 688) = 0;
    if (v58 == 1)
    {
      goto LABEL_130;
    }
  }

  if (*(v60 + 926604))
  {
    v61 = *(a1 + 4 * v59 + 926916);
    if (v61 != -1 && !*(v34 + 13936 * v3[1] + 13820))
    {
      *v7 = v61;
      result = vp9_set_size_literal(a1, v40, v41);
      if (result)
      {
        return 8;
      }

      goto LABEL_133;
    }
  }

LABEL_130:
  result = vp9_set_size_literal(a1, v40, v41);
  if (result)
  {
    return 8;
  }

LABEL_133:
  *(a1 + 4 * *v3 + 926448) = v43[12];
  *(a1 + 4 * *v3 + 926496) = v43[9];
  *(a1 + 4 * *v3 + 926544) = v43[11];
  return result;
}

uint64_t set_flags_and_fb_idx_for_temporal_mode3(uint64_t result)
{
  v1 = (result + 194512);
  v3 = *(result + 754556);
  v2 = *(result + 754560);
  v4 = *(result + 13936 * v3 * v2 + 772752);
  if (v4)
  {
    v5 = 2;
  }

  else
  {
    v5 = (v4 >> 1) & 1;
  }

  *(result + 754544) = v2;
  *(result + 754548) = v5;
  *(result + 194576) = 0;
  *(result + 194572) = 0;
  if (v5 == 1)
  {
    v9 = 0;
    v8 = 0;
    v6 = 1;
    *(result + 194568) = 1;
    *(result + 194580) = 1;
    if (v2)
    {
      v11 = 3;
    }

    else
    {
      v11 = 1;
    }

    *(result + 739528) = v11;
    *v1 = v2;
    v12 = *(result + 754552);
    goto LABEL_35;
  }

  if (!v5)
  {
    *(result + 194568) = 0x100000001;
    if (v2)
    {
      v6 = *(result + 772756);
      v7 = 0;
      if (v6)
      {
        v6 = 0;
        v8 = 0;
        *(result + 194572) = 0x100000000;
        v9 = 1;
        *(result + 739528) = 1;
        *v1 = v2 - 1;
        v10 = v2--;
      }

      else
      {
        v9 = 0;
        *(result + 739528) = 3;
        *v1 = v2;
        v8 = 1;
        v10 = v2 - 1;
      }
    }

    else
    {
      v10 = 0;
      v7 = 0;
      v6 = 0;
      v9 = 0;
      v8 = 1;
      *(result + 739528) = 1;
      *v1 = 0;
    }

    goto LABEL_36;
  }

  v13 = v4 & 3;
  v12 = *(result + 754552);
  v14 = v12 - 1;
  if (v13 == 1)
  {
    if (v2 == v14)
    {
      *(result + 194568) = 1;
      v6 = 0;
      if (!v2)
      {
        *(result + 739528) = 1;
LABEL_34:
        v9 = 0;
        v8 = 0;
        *v1 = v2;
LABEL_35:
        v7 = v12 + v2;
        v10 = v7 - 1;
        goto LABEL_36;
      }
    }

    else
    {
      if (!v2)
      {
        v6 = 1;
        *(result + 194568) = 1;
        *(result + 194580) = 1;
        *(result + 739528) = 1;
        goto LABEL_34;
      }

      if (v2 >= v14)
      {
        v6 = 0;
        goto LABEL_34;
      }

      v6 = 1;
      *(result + 194568) = 1;
      *(result + 194580) = 1;
    }

    *(result + 739528) = 3;
    goto LABEL_34;
  }

  if (v2 == v14)
  {
    v15 = 1;
    *(result + 194568) = 1;
    v6 = 0;
    if (v2)
    {
      v15 = 3;
    }

    *(result + 739528) = v15;
  }

  else
  {
    v6 = 1;
    *(result + 194568) = 1;
    if (v2)
    {
      *(result + 739528) = 3;
    }

    else
    {
      *(result + 739528) = 1;
    }

    *(result + 194580) = 1;
  }

  v9 = 0;
  v8 = 0;
  v7 = v12 + v2;
  *v1 = v7;
  v10 = v7 - 1;
  v2 = v7;
LABEL_36:
  *(result + 194516) = v10;
  *(result + 194520) = v7;
  if (*(result + 927132))
  {
    v16 = v3 - 1;
    if (v5)
    {
      v17 = v5 == v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      v6 = 0;
      v9 = 0;
      v8 = 0;
      *(result + 194576) = 0;
      *(result + 194572) = 0;
    }
  }

  v18 = *(result + 739528);
  if (v18)
  {
    v10 = v2;
    if (!(v18 & 2 | v9))
    {
      goto LABEL_50;
    }
  }

  else
  {
    if ((v18 & 2) == 0)
    {
      if ((v18 & 4) == 0)
      {
        return result;
      }

      if (v8)
      {
        v2 = v7;
        if (v9)
        {
          return result;
        }

LABEL_50:
        *(result + 194516) = v2;
        return result;
      }

      v10 = v7;
LABEL_55:
      *v1 = v10;
      return result;
    }

    if (!v8)
    {
      goto LABEL_55;
    }
  }

  if (!(v18 & 4 | v6))
  {
    *(result + 194520) = v10;
  }

  return result;
}

uint64_t set_flags_and_fb_idx_for_temporal_mode2(uint64_t result)
{
  v1 = (result + 194512);
  v3 = *(result + 754556);
  v2 = *(result + 754560);
  v4 = *(result + 13936 * (v3 * v2) + 772752) & 1;
  *(result + 754544) = v2;
  *(result + 754548) = v4;
  *(result + 194568) = xmmword_273B91FB0;
  v5 = v2 == 0;
  if (v4)
  {
    *(result + 194580) = 1;
    if (v2)
    {
      v10 = *(result + 754552);
      v6 = v2 == v10 - 1;
      if (v2 == v10 - 1)
      {
        *(result + 194580) = 0;
      }

      *(result + 739528) = 3;
    }

    else
    {
      v6 = 0;
      *(result + 739528) = 1;
      v10 = *(result + 754552);
    }

    *v1 = v2;
    v11 = v10 + v2;
    v8 = 1;
    *(result + 194516) = v11 - 1;
    *(result + 194520) = v11;
    if (!*(result + 927132))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v6 = 1;
    *(result + 194572) = 1;
    if (v2)
    {
      v7 = v2 - 1;
      if (*(result + 772756))
      {
        v8 = 0;
        *(result + 194572) = 0x100000000;
        v6 = 1;
        *(result + 739528) = 1;
        *v1 = v7;
        v9 = v2;
        v5 = 1;
        --v2;
        *(result + 194516) = v9;
        if (!*(result + 927132))
        {
          goto LABEL_18;
        }
      }

      else
      {
        v5 = 0;
        *(result + 739528) = 3;
        *v1 = v2;
        v6 = 1;
        v8 = 1;
        *(result + 194516) = v7;
        *(result + 194520) = 0;
        if (!*(result + 927132))
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      *(result + 739528) = 1;
      *v1 = 0;
      v8 = 1;
      v5 = 1;
      *(result + 194516) = 0;
      *(result + 194520) = 0;
      if (!*(result + 927132))
      {
        goto LABEL_18;
      }
    }
  }

  if (v4)
  {
    v12 = v4 == v3 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    *(result + 194576) = 0;
    *(result + 194572) = 0;
    if (!v5)
    {
      goto LABEL_23;
    }

LABEL_22:
    *(result + 194516) = v2;
    return result;
  }

LABEL_18:
  if (v8 & v5)
  {
    goto LABEL_22;
  }

  if (v6)
  {
LABEL_23:
    *(result + 194520) = v2;
  }

  return result;
}

void *vp9_svc_reset_temporal_layers(uint64_t a1, int a2)
{
  v2 = (a1 + 926168);
  v3 = (a1 + 754540);
  v4 = a1 + 738608;
  v5 = *(a1 + 754552);
  if (v5 >= 1)
  {
    v6 = *(a1 + 754556);
    if (v6 >= 1)
    {
      v7 = (a1 + 772752);
      v8 = v6 & 0x7FFFFFFE;
      v9 = 0;
      if (a2)
      {
        v10 = 0;
        while (1)
        {
          if (v6 == 1)
          {
            v11 = 0;
          }

          else
          {
            v12 = v7;
            v13 = v6 & 0x7FFFFFFE;
            do
            {
              *v12 = 0;
              v12[3484] = 0;
              v12[2] = 0;
              v12[3486] = 0;
              v12 += 6968;
              v13 -= 2;
            }

            while (v13);
            v11 = v6 & 0x7FFFFFFE;
            if (v8 == v6)
            {
              goto LABEL_5;
            }
          }

          v14 = v6 - v11;
          v15 = (a1 + 772760 + 13936 * (v11 + v9));
          do
          {
            *(v15 - 2) = 0;
            *v15 = 0;
            v15 += 3484;
            --v14;
          }

          while (v14);
LABEL_5:
          ++v10;
          v7 += 3484 * v6;
          v9 += v6;
          if (v10 == v5)
          {
            goto LABEL_24;
          }
        }
      }

      do
      {
        if (v6 == 1)
        {
          v16 = 0;
        }

        else
        {
          v17 = v6 & 0x7FFFFFFE;
          v18 = v7;
          do
          {
            *v18 = 0;
            v18[3484] = 0;
            v18 += 6968;
            v17 -= 2;
          }

          while (v17);
          v16 = v6 & 0x7FFFFFFE;
          if (v8 == v6)
          {
            goto LABEL_15;
          }
        }

        v19 = v6 - v16;
        v20 = 3484 * v16;
        do
        {
          v7[v20] = 0;
          v20 += 3484;
          --v19;
        }

        while (v19);
LABEL_15:
        ++v9;
        v7 += 3484 * v6;
      }

      while (v9 != v5);
    }
  }

LABEL_24:
  v21 = (a1 + 190076);
  v22 = *v2;
  if (!*v2)
  {
    v28 = (a1 + 194512);
    v29 = *(a1 + 754560);
    *(a1 + 754544) = v29;
    *(a1 + 194568) = xmmword_273B92020;
    if (v29)
    {
      if (*(a1 + 772756))
      {
        v30 = 0;
        *(a1 + 194572) = 0x100000000;
        v31 = v29 - 1;
        v32 = 1;
        *(a1 + 739528) = 1;
        *v28 = v29 - 1;
        *(a1 + 194516) = v29;
        if (!*(a1 + 927132))
        {
          goto LABEL_55;
        }
      }

      else
      {
        v32 = 0;
        v30 = 1;
        v31 = v29;
        *(a1 + 739528) = 3;
        *v28 = v29;
        *(a1 + 194516) = v29 - 1;
        if (!*(a1 + 927132))
        {
          goto LABEL_55;
        }
      }
    }

    else
    {
      v31 = 0;
      v30 = 1;
      v32 = 1;
      *(a1 + 739528) = 1;
      *v28 = 0;
      *(a1 + 194516) = 0;
      if (!*(a1 + 927132))
      {
        goto LABEL_55;
      }
    }

    v40 = *(a1 + 754548);
    if (v40 >= 1 && v40 == *(a1 + 754556) - 1)
    {
      *(a1 + 194576) = 0;
      *(a1 + 194572) = 0;
      if (v32)
      {
LABEL_56:
        *(a1 + 194516) = v31;
        goto LABEL_30;
      }

LABEL_54:
      *(a1 + 194520) = v31;
      goto LABEL_30;
    }

LABEL_55:
    if (v30 & v32)
    {
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (v22 == 2)
  {
    v23 = a1;
    set_flags_and_fb_idx_for_temporal_mode2(a1);
    goto LABEL_29;
  }

  if (v22 == 3)
  {
    v23 = a1;
    set_flags_and_fb_idx_for_temporal_mode3(a1);
LABEL_29:
    a1 = v23;
  }

LABEL_30:
  if (*v3 && !*v21)
  {
    v24 = v3[4];
    v25 = v3[1];
    v26 = v3[2];
    v27 = v26 + v24 * v25;
  }

  else
  {
    v24 = v3[4];
    if (v24 >= 2 && v21[4] == 1)
    {
      v25 = v3[1];
      v26 = v3[2];
      v27 = v26;
    }

    else
    {
      v25 = v3[1];
      v26 = v3[2];
      v27 = v25;
    }
  }

  v33 = a1 + 13936 * v27 + 758936;
  v34 = *(v4 + 568);
  v35 = v34 / *(a1 + 190284 + 4 * v26);
  v36 = *(v33 + 720);
  *(v33 + 728) = v35;
  v37 = round(v36 / v35);
  if (v37 >= 2147483650.0)
  {
    v37 = 2147483650.0;
  }

  v38 = v37;
  *(v33 + 144) = v37;
  *(v33 + 152) = *v4;
  if (v26)
  {
    v38 = llround((v36 - *(a1 + 4 * (v26 - 1 + v25 * v24) + 190196)) / (v35 - v34 / *(a1 + 190284 + 4 * (v26 - 1))));
  }

  *(v33 + 736) = v38;

  return vp9_restore_layer_context(a1);
}