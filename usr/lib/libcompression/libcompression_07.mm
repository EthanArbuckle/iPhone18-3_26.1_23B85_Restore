uint64_t BrotliCompressFragmentTwoPassImpl11(uint64_t result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v85 = result;
  if (a3)
  {
    v9 = __dst;
    v94 = __src + 4;
    v11 = __src;
    while (1)
    {
      v12 = a3 >= 0x20000 ? 0x20000 : a3;
      v13 = &v11[v12];
      v14 = a4;
      v15 = v9;
      v16 = v11;
      v91 = a3;
      v17 = a3 - 16;
      v93 = &v11[v12];
      if (a3 >= 0x10)
      {
        break;
      }

LABEL_85:
      if (v16 < v13)
      {
        v76 = v13 - v16;
        if ((v13 - v16) >= 6)
        {
          v78 = (v76 << 8) - 1589738;
          if (v76 > 0x5841)
          {
            v78 = (v76 << 8) - 5784041;
          }

          if (v76 >> 1 <= 0xC20)
          {
            v77 = (v76 << 8) - 541163;
          }

          else
          {
            v77 = v78;
          }

          v79 = __clz(v76 - 66) ^ 0x1F;
          if (v76 <= 0x841)
          {
            v77 = (v79 | (((-1 << v79) + v76 - 66) << 8)) + 10;
          }

          v80 = (__clz(v76 - 2) ^ 0x1F) - 1;
          if (v76 <= 0x81)
          {
            v77 = (((v76 - 2) >> v80) + 2 * v80 + 2) | ((v76 - 2 - ((v76 - 2) >> v80 << v80)) << 8);
          }
        }

        else
        {
          v77 = v13 - v16;
        }

        *v14 = v77;
        v81 = v15;
        memcpy(v15, v16, v76);
        v15 = &v81[v76];
        v9 = __dst;
      }

      if (ShouldCompress_0(v11, v12, v15 - v9))
      {
        BrotliStoreMetaBlockHeader(v12, 0, a7, a8);
        v82 = *a7;
        *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
        *a7 = v82 + 13;
        result = StoreCommands();
        if (*(v85 + 24))
        {
          return result;
        }

        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }

      else
      {
        BrotliStoreMetaBlockHeader(v12, 1u, a7, a8);
        v83 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v83;
        result = memcpy((a8 + (v83 >> 3)), v11, v12);
        v84 = *a7 + 8 * v12;
        *a7 = v84;
        *(a8 + (v84 >> 3)) = 0;
        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }
    }

    v89 = v11;
    v90 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v95 = v13 - 4;
LABEL_10:
    v22 = v16 + 1;
    v21 = *(v16 + 1);
    for (i = 32; ; ++i)
    {
      v24 = v22 + (i >> 5);
      if (v24 > v18)
      {
LABEL_84:
        v9 = __dst;
        v11 = v89;
        v12 = v90;
        v13 = v93;
        goto LABEL_85;
      }

      v25 = (0x1E35A7BD00000000 * v21) >> 53;
      v21 = *v24;
      v26 = v22 - v20;
      if (*v22 != *v26 || v20 < 1)
      {
        v26 = &__src[*(a6 + 4 * v25)];
        *(a6 + 4 * v25) = v22 - __src;
        if (*v22 != *v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(a6 + 4 * v25) = v22 - __src;
      }

      v28 = v22 - v26;
      if (v22 - v26 <= 262128)
      {
        v29 = v26 + 4;
        v30 = (v22 + 1);
        v31 = v19 - v22;
        if ((v19 - v22) < 8)
        {
          v34 = 0;
LABEL_79:
          v74 = v31 & 7;
          if (v74)
          {
            v75 = v34 | v74;
            while (*(v29 + v34) == *v30)
            {
              ++v30;
              ++v34;
              if (!--v74)
              {
                v34 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 >> 3;
          v34 = v31 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v35 = *&v30[v32 * 4];
            v36 = *&v29[v32];
            if (v35 != v36)
            {
              break;
            }

            v32 += 2;
            if (!--v33)
            {
              v30 += v31 & 0xFFFFFFFFFFFFFFF8;
              goto LABEL_79;
            }
          }

          v34 = v32 * 4 + (__clz(__rbit64(v36 ^ v35)) >> 3);
        }

        v37 = v22 - v16;
        v96 = v34;
        if ((v22 - v16) >= 6)
        {
          if (v37 > 0x81)
          {
            if (v37 > 0x841)
            {
              if (v37 >> 1 > 0xC20)
              {
                if (v37 > 0x5841)
                {
                  v41 = -5784041;
                }

                else
                {
                  v41 = -1589738;
                }

                v38 = (v37 << 8) + v41;
              }

              else
              {
                v38 = (v37 << 8) - 541163;
              }
            }

            else
            {
              v40 = __clz(v37 - 66) ^ 0x1F;
              v38 = (v40 | (((-1 << v40) + v37 - 66) << 8)) + 10;
            }
          }

          else
          {
            v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
            v38 = (((v37 - 2) >> v39) + 2 * v39 + 2) | ((v37 - 2 - ((v37 - 2) >> v39 << v39)) << 8);
          }
        }

        else
        {
          v38 = v22 - v16;
        }

        *v14 = v38;
        v42 = v15;
        memcpy(v15, v16, v37);
        if (v20 == v28)
        {
          v43 = 64;
        }

        else
        {
          v44 = __clz(v28 + 3) ^ 0x1F;
          v43 = (((v28 + 3 - ((((v28 + 3) >> (v44 - 1)) & 1 | 2) << (v44 - 1))) << 8) | (2 * v44) | ((v28 + 3) >> (v44 - 1)) & 1) + 76;
          v20 = v28;
        }

        v45 = v96 + 4;
        v14[1] = v43;
        if (v96 + 4 <= 0xB)
        {
          v46 = v96 + 24;
          goto LABEL_45;
        }

        if (v45 > 0x47)
        {
          if (v45 > 0x87)
          {
            if (v45 > 0x847)
            {
              v49 = (v45 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v96 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v96 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v96 - 4) >> 5) + 54) | (((v96 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v48 = 16;
        }

        else
        {
          v47 = (__clz(v96 - 4) ^ 0x1F) - 1;
          v46 = (((v96 - 4) >> v47) + 2 * v47 + 28) | ((v96 - 4 - ((v96 - 4) >> v47 << v47)) << 8);
LABEL_45:
          v14[2] = v46;
          v48 = 12;
        }

        v16 = v22 + v45;
        v15 = &v42[v37];
        v14 = (v14 + v48);
        if (v22 + v45 >= v18)
        {
          goto LABEL_84;
        }

        v51 = *(v16 - 3);
        *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 51) & 0x1FFC)) = v16 - __src - 2;
        *(a6 + (((0x1E35A7BD00000000 * v51) >> 51) & 0x1FFC)) = v16 - __src - 1;
        v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 51) & 0x1FFC;
        v53 = *(a6 + v52);
        *(a6 + v52) = v16 - __src;
        v54 = v16 - &__src[v53];
        v19 = v95;
        if (v54 < 262129 && *v16 == *&__src[v53])
        {
          while (1)
          {
            v20 = v54;
            v55 = &v94[v53];
            v56 = (v16 + 4);
            v57 = v95 - v16;
            if ((v95 - v16) < 8)
            {
              v60 = 0;
LABEL_73:
              v72 = v57 & 7;
              if (v72)
              {
                v73 = v60 | v72;
                while (v55[v60] == *v56)
                {
                  ++v56;
                  ++v60;
                  if (!--v72)
                  {
                    v60 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
              v58 = 0;
              v59 = v57 >> 3;
              v60 = v57 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v61 = *&v56[v58];
                v62 = *&v55[v58];
                if (v61 != v62)
                {
                  break;
                }

                v58 += 8;
                if (!--v59)
                {
                  v56 += v57 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_73;
                }
              }

              v60 = v58 + (__clz(__rbit64(v62 ^ v61)) >> 3);
            }

            v63 = v60 + 4;
            if (v60 + 4 > 9)
            {
              if (v63 > 0x85)
              {
                if (v63 > 0x845)
                {
                  v64 = (v63 << 8) - 542145;
                }

                else
                {
                  v67 = v60 - 66;
                  v68 = __clz(v67) ^ 0x1F;
                  v64 = (v68 | (((-1 << v68) + v67) << 8)) + 52;
                }
              }

              else
              {
                v65 = v60 - 2;
                v66 = (__clz(v65) ^ 0x1F) - 1;
                v64 = ((v65 >> v66) + 2 * v66 + 44) | ((v65 - (v65 >> v66 << v66)) << 8);
              }
            }

            else
            {
              v64 = v60 + 42;
            }

            v16 += v63;
            v69 = __clz(v20 + 3);
            *v14 = v64;
            v14[1] = (((v20 + 3 - ((((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1 | 2) << ((v69 ^ 0x1F) - 1))) << 8) | (2 * (v69 ^ 0x1F)) | ((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1) + 76;
            v14 += 2;
            if (v16 >= v18)
            {
              goto LABEL_84;
            }

            v70 = *(v16 - 3);
            *(a6 + (((0x1E35A7BD00000000 * v70) >> 51) & 0x1FFC)) = v16 - __src - 3;
            *(a6 + (((506832829 * ((v70 << 24) & 0xFFFFFFFF00000000)) >> 51) & 0x1FFC)) = v16 - __src - 2;
            *(a6 + (((506832829 * ((v70 << 16) & 0xFFFFFFFF00000000)) >> 51) & 0x1FFC)) = v16 - __src - 1;
            v71 = ((506832829 * ((v70 << 8) & 0xFFFFFFFF00000000)) >> 51) & 0x1FFC;
            v53 = *(a6 + v71);
            *(a6 + v71) = v16 - __src;
            v54 = v16 - &__src[v53];
            if (v54 >= 262129 || *v16 != *&__src[v53])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

LABEL_19:
      v22 = v24;
    }
  }

  return result;
}

uint64_t BrotliCompressFragmentTwoPassImpl12(uint64_t result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v85 = result;
  if (a3)
  {
    v9 = __dst;
    v94 = __src + 4;
    v11 = __src;
    while (1)
    {
      v12 = a3 >= 0x20000 ? 0x20000 : a3;
      v13 = &v11[v12];
      v14 = a4;
      v15 = v9;
      v16 = v11;
      v91 = a3;
      v17 = a3 - 16;
      v93 = &v11[v12];
      if (a3 >= 0x10)
      {
        break;
      }

LABEL_85:
      if (v16 < v13)
      {
        v76 = v13 - v16;
        if ((v13 - v16) >= 6)
        {
          v78 = (v76 << 8) - 1589738;
          if (v76 > 0x5841)
          {
            v78 = (v76 << 8) - 5784041;
          }

          if (v76 >> 1 <= 0xC20)
          {
            v77 = (v76 << 8) - 541163;
          }

          else
          {
            v77 = v78;
          }

          v79 = __clz(v76 - 66) ^ 0x1F;
          if (v76 <= 0x841)
          {
            v77 = (v79 | (((-1 << v79) + v76 - 66) << 8)) + 10;
          }

          v80 = (__clz(v76 - 2) ^ 0x1F) - 1;
          if (v76 <= 0x81)
          {
            v77 = (((v76 - 2) >> v80) + 2 * v80 + 2) | ((v76 - 2 - ((v76 - 2) >> v80 << v80)) << 8);
          }
        }

        else
        {
          v77 = v13 - v16;
        }

        *v14 = v77;
        v81 = v15;
        memcpy(v15, v16, v76);
        v15 = &v81[v76];
        v9 = __dst;
      }

      if (ShouldCompress_0(v11, v12, v15 - v9))
      {
        BrotliStoreMetaBlockHeader(v12, 0, a7, a8);
        v82 = *a7;
        *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
        *a7 = v82 + 13;
        result = StoreCommands();
        if (*(v85 + 24))
        {
          return result;
        }

        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }

      else
      {
        BrotliStoreMetaBlockHeader(v12, 1u, a7, a8);
        v83 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v83;
        result = memcpy((a8 + (v83 >> 3)), v11, v12);
        v84 = *a7 + 8 * v12;
        *a7 = v84;
        *(a8 + (v84 >> 3)) = 0;
        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }
    }

    v89 = v11;
    v90 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v95 = v13 - 4;
LABEL_10:
    v22 = v16 + 1;
    v21 = *(v16 + 1);
    for (i = 32; ; ++i)
    {
      v24 = v22 + (i >> 5);
      if (v24 > v18)
      {
LABEL_84:
        v9 = __dst;
        v11 = v89;
        v12 = v90;
        v13 = v93;
        goto LABEL_85;
      }

      v25 = (0x1E35A7BD00000000 * v21) >> 52;
      v21 = *v24;
      v26 = v22 - v20;
      if (*v22 != *v26 || v20 < 1)
      {
        v26 = &__src[*(a6 + 4 * v25)];
        *(a6 + 4 * v25) = v22 - __src;
        if (*v22 != *v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(a6 + 4 * v25) = v22 - __src;
      }

      v28 = v22 - v26;
      if (v22 - v26 <= 262128)
      {
        v29 = v26 + 4;
        v30 = (v22 + 1);
        v31 = v19 - v22;
        if ((v19 - v22) < 8)
        {
          v34 = 0;
LABEL_79:
          v74 = v31 & 7;
          if (v74)
          {
            v75 = v34 | v74;
            while (*(v29 + v34) == *v30)
            {
              ++v30;
              ++v34;
              if (!--v74)
              {
                v34 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 >> 3;
          v34 = v31 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v35 = *&v30[v32 * 4];
            v36 = *&v29[v32];
            if (v35 != v36)
            {
              break;
            }

            v32 += 2;
            if (!--v33)
            {
              v30 += v31 & 0xFFFFFFFFFFFFFFF8;
              goto LABEL_79;
            }
          }

          v34 = v32 * 4 + (__clz(__rbit64(v36 ^ v35)) >> 3);
        }

        v37 = v22 - v16;
        v96 = v34;
        if ((v22 - v16) >= 6)
        {
          if (v37 > 0x81)
          {
            if (v37 > 0x841)
            {
              if (v37 >> 1 > 0xC20)
              {
                if (v37 > 0x5841)
                {
                  v41 = -5784041;
                }

                else
                {
                  v41 = -1589738;
                }

                v38 = (v37 << 8) + v41;
              }

              else
              {
                v38 = (v37 << 8) - 541163;
              }
            }

            else
            {
              v40 = __clz(v37 - 66) ^ 0x1F;
              v38 = (v40 | (((-1 << v40) + v37 - 66) << 8)) + 10;
            }
          }

          else
          {
            v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
            v38 = (((v37 - 2) >> v39) + 2 * v39 + 2) | ((v37 - 2 - ((v37 - 2) >> v39 << v39)) << 8);
          }
        }

        else
        {
          v38 = v22 - v16;
        }

        *v14 = v38;
        v42 = v15;
        memcpy(v15, v16, v37);
        if (v20 == v28)
        {
          v43 = 64;
        }

        else
        {
          v44 = __clz(v28 + 3) ^ 0x1F;
          v43 = (((v28 + 3 - ((((v28 + 3) >> (v44 - 1)) & 1 | 2) << (v44 - 1))) << 8) | (2 * v44) | ((v28 + 3) >> (v44 - 1)) & 1) + 76;
          v20 = v28;
        }

        v45 = v96 + 4;
        v14[1] = v43;
        if (v96 + 4 <= 0xB)
        {
          v46 = v96 + 24;
          goto LABEL_45;
        }

        if (v45 > 0x47)
        {
          if (v45 > 0x87)
          {
            if (v45 > 0x847)
            {
              v49 = (v45 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v96 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v96 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v96 - 4) >> 5) + 54) | (((v96 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v48 = 16;
        }

        else
        {
          v47 = (__clz(v96 - 4) ^ 0x1F) - 1;
          v46 = (((v96 - 4) >> v47) + 2 * v47 + 28) | ((v96 - 4 - ((v96 - 4) >> v47 << v47)) << 8);
LABEL_45:
          v14[2] = v46;
          v48 = 12;
        }

        v16 = v22 + v45;
        v15 = &v42[v37];
        v14 = (v14 + v48);
        if (v22 + v45 >= v18)
        {
          goto LABEL_84;
        }

        v51 = *(v16 - 3);
        *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 50) & 0x3FFC)) = v16 - __src - 2;
        *(a6 + (((0x1E35A7BD00000000 * v51) >> 50) & 0x3FFC)) = v16 - __src - 1;
        v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 50) & 0x3FFC;
        v53 = *(a6 + v52);
        *(a6 + v52) = v16 - __src;
        v54 = v16 - &__src[v53];
        v19 = v95;
        if (v54 < 262129 && *v16 == *&__src[v53])
        {
          while (1)
          {
            v20 = v54;
            v55 = &v94[v53];
            v56 = (v16 + 4);
            v57 = v95 - v16;
            if ((v95 - v16) < 8)
            {
              v60 = 0;
LABEL_73:
              v72 = v57 & 7;
              if (v72)
              {
                v73 = v60 | v72;
                while (v55[v60] == *v56)
                {
                  ++v56;
                  ++v60;
                  if (!--v72)
                  {
                    v60 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
              v58 = 0;
              v59 = v57 >> 3;
              v60 = v57 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v61 = *&v56[v58];
                v62 = *&v55[v58];
                if (v61 != v62)
                {
                  break;
                }

                v58 += 8;
                if (!--v59)
                {
                  v56 += v57 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_73;
                }
              }

              v60 = v58 + (__clz(__rbit64(v62 ^ v61)) >> 3);
            }

            v63 = v60 + 4;
            if (v60 + 4 > 9)
            {
              if (v63 > 0x85)
              {
                if (v63 > 0x845)
                {
                  v64 = (v63 << 8) - 542145;
                }

                else
                {
                  v67 = v60 - 66;
                  v68 = __clz(v67) ^ 0x1F;
                  v64 = (v68 | (((-1 << v68) + v67) << 8)) + 52;
                }
              }

              else
              {
                v65 = v60 - 2;
                v66 = (__clz(v65) ^ 0x1F) - 1;
                v64 = ((v65 >> v66) + 2 * v66 + 44) | ((v65 - (v65 >> v66 << v66)) << 8);
              }
            }

            else
            {
              v64 = v60 + 42;
            }

            v16 += v63;
            v69 = __clz(v20 + 3);
            *v14 = v64;
            v14[1] = (((v20 + 3 - ((((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1 | 2) << ((v69 ^ 0x1F) - 1))) << 8) | (2 * (v69 ^ 0x1F)) | ((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1) + 76;
            v14 += 2;
            if (v16 >= v18)
            {
              goto LABEL_84;
            }

            v70 = *(v16 - 3);
            *(a6 + (((0x1E35A7BD00000000 * v70) >> 50) & 0x3FFC)) = v16 - __src - 3;
            *(a6 + (((506832829 * ((v70 << 24) & 0xFFFFFFFF00000000)) >> 50) & 0x3FFC)) = v16 - __src - 2;
            *(a6 + (((506832829 * ((v70 << 16) & 0xFFFFFFFF00000000)) >> 50) & 0x3FFC)) = v16 - __src - 1;
            v71 = ((506832829 * ((v70 << 8) & 0xFFFFFFFF00000000)) >> 50) & 0x3FFC;
            v53 = *(a6 + v71);
            *(a6 + v71) = v16 - __src;
            v54 = v16 - &__src[v53];
            if (v54 >= 262129 || *v16 != *&__src[v53])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

LABEL_19:
      v22 = v24;
    }
  }

  return result;
}

uint64_t BrotliCompressFragmentTwoPassImpl13(uint64_t result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v85 = result;
  if (a3)
  {
    v9 = __dst;
    v94 = __src + 4;
    v11 = __src;
    while (1)
    {
      v12 = a3 >= 0x20000 ? 0x20000 : a3;
      v13 = &v11[v12];
      v14 = a4;
      v15 = v9;
      v16 = v11;
      v91 = a3;
      v17 = a3 - 16;
      v93 = &v11[v12];
      if (a3 >= 0x10)
      {
        break;
      }

LABEL_85:
      if (v16 < v13)
      {
        v76 = v13 - v16;
        if ((v13 - v16) >= 6)
        {
          v78 = (v76 << 8) - 1589738;
          if (v76 > 0x5841)
          {
            v78 = (v76 << 8) - 5784041;
          }

          if (v76 >> 1 <= 0xC20)
          {
            v77 = (v76 << 8) - 541163;
          }

          else
          {
            v77 = v78;
          }

          v79 = __clz(v76 - 66) ^ 0x1F;
          if (v76 <= 0x841)
          {
            v77 = (v79 | (((-1 << v79) + v76 - 66) << 8)) + 10;
          }

          v80 = (__clz(v76 - 2) ^ 0x1F) - 1;
          if (v76 <= 0x81)
          {
            v77 = (((v76 - 2) >> v80) + 2 * v80 + 2) | ((v76 - 2 - ((v76 - 2) >> v80 << v80)) << 8);
          }
        }

        else
        {
          v77 = v13 - v16;
        }

        *v14 = v77;
        v81 = v15;
        memcpy(v15, v16, v76);
        v15 = &v81[v76];
        v9 = __dst;
      }

      if (ShouldCompress_0(v11, v12, v15 - v9))
      {
        BrotliStoreMetaBlockHeader(v12, 0, a7, a8);
        v82 = *a7;
        *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
        *a7 = v82 + 13;
        result = StoreCommands();
        if (*(v85 + 24))
        {
          return result;
        }

        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }

      else
      {
        BrotliStoreMetaBlockHeader(v12, 1u, a7, a8);
        v83 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v83;
        result = memcpy((a8 + (v83 >> 3)), v11, v12);
        v84 = *a7 + 8 * v12;
        *a7 = v84;
        *(a8 + (v84 >> 3)) = 0;
        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }
    }

    v89 = v11;
    v90 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v95 = v13 - 4;
LABEL_10:
    v22 = v16 + 1;
    v21 = *(v16 + 1);
    for (i = 32; ; ++i)
    {
      v24 = v22 + (i >> 5);
      if (v24 > v18)
      {
LABEL_84:
        v9 = __dst;
        v11 = v89;
        v12 = v90;
        v13 = v93;
        goto LABEL_85;
      }

      v25 = (0x1E35A7BD00000000 * v21) >> 51;
      v21 = *v24;
      v26 = v22 - v20;
      if (*v22 != *v26 || v20 < 1)
      {
        v26 = &__src[*(a6 + 4 * v25)];
        *(a6 + 4 * v25) = v22 - __src;
        if (*v22 != *v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(a6 + 4 * v25) = v22 - __src;
      }

      v28 = v22 - v26;
      if (v22 - v26 <= 262128)
      {
        v29 = v26 + 4;
        v30 = (v22 + 1);
        v31 = v19 - v22;
        if ((v19 - v22) < 8)
        {
          v34 = 0;
LABEL_79:
          v74 = v31 & 7;
          if (v74)
          {
            v75 = v34 | v74;
            while (*(v29 + v34) == *v30)
            {
              ++v30;
              ++v34;
              if (!--v74)
              {
                v34 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 >> 3;
          v34 = v31 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v35 = *&v30[v32 * 4];
            v36 = *&v29[v32];
            if (v35 != v36)
            {
              break;
            }

            v32 += 2;
            if (!--v33)
            {
              v30 += v31 & 0xFFFFFFFFFFFFFFF8;
              goto LABEL_79;
            }
          }

          v34 = v32 * 4 + (__clz(__rbit64(v36 ^ v35)) >> 3);
        }

        v37 = v22 - v16;
        v96 = v34;
        if ((v22 - v16) >= 6)
        {
          if (v37 > 0x81)
          {
            if (v37 > 0x841)
            {
              if (v37 >> 1 > 0xC20)
              {
                if (v37 > 0x5841)
                {
                  v41 = -5784041;
                }

                else
                {
                  v41 = -1589738;
                }

                v38 = (v37 << 8) + v41;
              }

              else
              {
                v38 = (v37 << 8) - 541163;
              }
            }

            else
            {
              v40 = __clz(v37 - 66) ^ 0x1F;
              v38 = (v40 | (((-1 << v40) + v37 - 66) << 8)) + 10;
            }
          }

          else
          {
            v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
            v38 = (((v37 - 2) >> v39) + 2 * v39 + 2) | ((v37 - 2 - ((v37 - 2) >> v39 << v39)) << 8);
          }
        }

        else
        {
          v38 = v22 - v16;
        }

        *v14 = v38;
        v42 = v15;
        memcpy(v15, v16, v37);
        if (v20 == v28)
        {
          v43 = 64;
        }

        else
        {
          v44 = __clz(v28 + 3) ^ 0x1F;
          v43 = (((v28 + 3 - ((((v28 + 3) >> (v44 - 1)) & 1 | 2) << (v44 - 1))) << 8) | (2 * v44) | ((v28 + 3) >> (v44 - 1)) & 1) + 76;
          v20 = v28;
        }

        v45 = v96 + 4;
        v14[1] = v43;
        if (v96 + 4 <= 0xB)
        {
          v46 = v96 + 24;
          goto LABEL_45;
        }

        if (v45 > 0x47)
        {
          if (v45 > 0x87)
          {
            if (v45 > 0x847)
            {
              v49 = (v45 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v96 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v96 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v96 - 4) >> 5) + 54) | (((v96 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v48 = 16;
        }

        else
        {
          v47 = (__clz(v96 - 4) ^ 0x1F) - 1;
          v46 = (((v96 - 4) >> v47) + 2 * v47 + 28) | ((v96 - 4 - ((v96 - 4) >> v47 << v47)) << 8);
LABEL_45:
          v14[2] = v46;
          v48 = 12;
        }

        v16 = v22 + v45;
        v15 = &v42[v37];
        v14 = (v14 + v48);
        if (v22 + v45 >= v18)
        {
          goto LABEL_84;
        }

        v51 = *(v16 - 3);
        *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 49) & 0x7FFC)) = v16 - __src - 2;
        *(a6 + (((0x1E35A7BD00000000 * v51) >> 49) & 0x7FFC)) = v16 - __src - 1;
        v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 49) & 0x7FFC;
        v53 = *(a6 + v52);
        *(a6 + v52) = v16 - __src;
        v54 = v16 - &__src[v53];
        v19 = v95;
        if (v54 < 262129 && *v16 == *&__src[v53])
        {
          while (1)
          {
            v20 = v54;
            v55 = &v94[v53];
            v56 = (v16 + 4);
            v57 = v95 - v16;
            if ((v95 - v16) < 8)
            {
              v60 = 0;
LABEL_73:
              v72 = v57 & 7;
              if (v72)
              {
                v73 = v60 | v72;
                while (v55[v60] == *v56)
                {
                  ++v56;
                  ++v60;
                  if (!--v72)
                  {
                    v60 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
              v58 = 0;
              v59 = v57 >> 3;
              v60 = v57 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v61 = *&v56[v58];
                v62 = *&v55[v58];
                if (v61 != v62)
                {
                  break;
                }

                v58 += 8;
                if (!--v59)
                {
                  v56 += v57 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_73;
                }
              }

              v60 = v58 + (__clz(__rbit64(v62 ^ v61)) >> 3);
            }

            v63 = v60 + 4;
            if (v60 + 4 > 9)
            {
              if (v63 > 0x85)
              {
                if (v63 > 0x845)
                {
                  v64 = (v63 << 8) - 542145;
                }

                else
                {
                  v67 = v60 - 66;
                  v68 = __clz(v67) ^ 0x1F;
                  v64 = (v68 | (((-1 << v68) + v67) << 8)) + 52;
                }
              }

              else
              {
                v65 = v60 - 2;
                v66 = (__clz(v65) ^ 0x1F) - 1;
                v64 = ((v65 >> v66) + 2 * v66 + 44) | ((v65 - (v65 >> v66 << v66)) << 8);
              }
            }

            else
            {
              v64 = v60 + 42;
            }

            v16 += v63;
            v69 = __clz(v20 + 3);
            *v14 = v64;
            v14[1] = (((v20 + 3 - ((((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1 | 2) << ((v69 ^ 0x1F) - 1))) << 8) | (2 * (v69 ^ 0x1F)) | ((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1) + 76;
            v14 += 2;
            if (v16 >= v18)
            {
              goto LABEL_84;
            }

            v70 = *(v16 - 3);
            *(a6 + (((0x1E35A7BD00000000 * v70) >> 49) & 0x7FFC)) = v16 - __src - 3;
            *(a6 + (((506832829 * ((v70 << 24) & 0xFFFFFFFF00000000)) >> 49) & 0x7FFC)) = v16 - __src - 2;
            *(a6 + (((506832829 * ((v70 << 16) & 0xFFFFFFFF00000000)) >> 49) & 0x7FFC)) = v16 - __src - 1;
            v71 = ((506832829 * ((v70 << 8) & 0xFFFFFFFF00000000)) >> 49) & 0x7FFC;
            v53 = *(a6 + v71);
            *(a6 + v71) = v16 - __src;
            v54 = v16 - &__src[v53];
            if (v54 >= 262129 || *v16 != *&__src[v53])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

LABEL_19:
      v22 = v24;
    }
  }

  return result;
}

uint64_t BrotliCompressFragmentTwoPassImpl14(uint64_t result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v85 = result;
  if (a3)
  {
    v9 = __dst;
    v94 = __src + 4;
    v11 = __src;
    while (1)
    {
      v12 = a3 >= 0x20000 ? 0x20000 : a3;
      v13 = &v11[v12];
      v14 = a4;
      v15 = v9;
      v16 = v11;
      v91 = a3;
      v17 = a3 - 16;
      v93 = &v11[v12];
      if (a3 >= 0x10)
      {
        break;
      }

LABEL_85:
      if (v16 < v13)
      {
        v76 = v13 - v16;
        if ((v13 - v16) >= 6)
        {
          v78 = (v76 << 8) - 1589738;
          if (v76 > 0x5841)
          {
            v78 = (v76 << 8) - 5784041;
          }

          if (v76 >> 1 <= 0xC20)
          {
            v77 = (v76 << 8) - 541163;
          }

          else
          {
            v77 = v78;
          }

          v79 = __clz(v76 - 66) ^ 0x1F;
          if (v76 <= 0x841)
          {
            v77 = (v79 | (((-1 << v79) + v76 - 66) << 8)) + 10;
          }

          v80 = (__clz(v76 - 2) ^ 0x1F) - 1;
          if (v76 <= 0x81)
          {
            v77 = (((v76 - 2) >> v80) + 2 * v80 + 2) | ((v76 - 2 - ((v76 - 2) >> v80 << v80)) << 8);
          }
        }

        else
        {
          v77 = v13 - v16;
        }

        *v14 = v77;
        v81 = v15;
        memcpy(v15, v16, v76);
        v15 = &v81[v76];
        v9 = __dst;
      }

      if (ShouldCompress_0(v11, v12, v15 - v9))
      {
        BrotliStoreMetaBlockHeader(v12, 0, a7, a8);
        v82 = *a7;
        *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
        *a7 = v82 + 13;
        result = StoreCommands();
        if (*(v85 + 24))
        {
          return result;
        }

        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }

      else
      {
        BrotliStoreMetaBlockHeader(v12, 1u, a7, a8);
        v83 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v83;
        result = memcpy((a8 + (v83 >> 3)), v11, v12);
        v84 = *a7 + 8 * v12;
        *a7 = v84;
        *(a8 + (v84 >> 3)) = 0;
        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }
    }

    v89 = v11;
    v90 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v95 = v13 - 4;
LABEL_10:
    v22 = v16 + 1;
    v21 = *(v16 + 1);
    for (i = 32; ; ++i)
    {
      v24 = v22 + (i >> 5);
      if (v24 > v18)
      {
LABEL_84:
        v9 = __dst;
        v11 = v89;
        v12 = v90;
        v13 = v93;
        goto LABEL_85;
      }

      v25 = (0x1E35A7BD00000000 * v21) >> 50;
      v21 = *v24;
      v26 = v22 - v20;
      if (*v22 != *v26 || v20 < 1)
      {
        v26 = &__src[*(a6 + 4 * v25)];
        *(a6 + 4 * v25) = v22 - __src;
        if (*v22 != *v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(a6 + 4 * v25) = v22 - __src;
      }

      v28 = v22 - v26;
      if (v22 - v26 <= 262128)
      {
        v29 = v26 + 4;
        v30 = (v22 + 1);
        v31 = v19 - v22;
        if ((v19 - v22) < 8)
        {
          v34 = 0;
LABEL_79:
          v74 = v31 & 7;
          if (v74)
          {
            v75 = v34 | v74;
            while (*(v29 + v34) == *v30)
            {
              ++v30;
              ++v34;
              if (!--v74)
              {
                v34 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 >> 3;
          v34 = v31 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v35 = *&v30[v32 * 4];
            v36 = *&v29[v32];
            if (v35 != v36)
            {
              break;
            }

            v32 += 2;
            if (!--v33)
            {
              v30 += v31 & 0xFFFFFFFFFFFFFFF8;
              goto LABEL_79;
            }
          }

          v34 = v32 * 4 + (__clz(__rbit64(v36 ^ v35)) >> 3);
        }

        v37 = v22 - v16;
        v96 = v34;
        if ((v22 - v16) >= 6)
        {
          if (v37 > 0x81)
          {
            if (v37 > 0x841)
            {
              if (v37 >> 1 > 0xC20)
              {
                if (v37 > 0x5841)
                {
                  v41 = -5784041;
                }

                else
                {
                  v41 = -1589738;
                }

                v38 = (v37 << 8) + v41;
              }

              else
              {
                v38 = (v37 << 8) - 541163;
              }
            }

            else
            {
              v40 = __clz(v37 - 66) ^ 0x1F;
              v38 = (v40 | (((-1 << v40) + v37 - 66) << 8)) + 10;
            }
          }

          else
          {
            v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
            v38 = (((v37 - 2) >> v39) + 2 * v39 + 2) | ((v37 - 2 - ((v37 - 2) >> v39 << v39)) << 8);
          }
        }

        else
        {
          v38 = v22 - v16;
        }

        *v14 = v38;
        v42 = v15;
        memcpy(v15, v16, v37);
        if (v20 == v28)
        {
          v43 = 64;
        }

        else
        {
          v44 = __clz(v28 + 3) ^ 0x1F;
          v43 = (((v28 + 3 - ((((v28 + 3) >> (v44 - 1)) & 1 | 2) << (v44 - 1))) << 8) | (2 * v44) | ((v28 + 3) >> (v44 - 1)) & 1) + 76;
          v20 = v28;
        }

        v45 = v96 + 4;
        v14[1] = v43;
        if (v96 + 4 <= 0xB)
        {
          v46 = v96 + 24;
          goto LABEL_45;
        }

        if (v45 > 0x47)
        {
          if (v45 > 0x87)
          {
            if (v45 > 0x847)
            {
              v49 = (v45 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v96 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v96 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v96 - 4) >> 5) + 54) | (((v96 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v48 = 16;
        }

        else
        {
          v47 = (__clz(v96 - 4) ^ 0x1F) - 1;
          v46 = (((v96 - 4) >> v47) + 2 * v47 + 28) | ((v96 - 4 - ((v96 - 4) >> v47 << v47)) << 8);
LABEL_45:
          v14[2] = v46;
          v48 = 12;
        }

        v16 = v22 + v45;
        v15 = &v42[v37];
        v14 = (v14 + v48);
        if (v22 + v45 >= v18)
        {
          goto LABEL_84;
        }

        v51 = *(v16 - 3);
        *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 48) & 0xFFFC)) = v16 - __src - 2;
        *(a6 + (((0x1E35A7BD00000000 * v51) >> 48) & 0xFFFC)) = v16 - __src - 1;
        v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 48) & 0xFFFC;
        v53 = *(a6 + v52);
        *(a6 + v52) = v16 - __src;
        v54 = v16 - &__src[v53];
        v19 = v95;
        if (v54 < 262129 && *v16 == *&__src[v53])
        {
          while (1)
          {
            v20 = v54;
            v55 = &v94[v53];
            v56 = (v16 + 4);
            v57 = v95 - v16;
            if ((v95 - v16) < 8)
            {
              v60 = 0;
LABEL_73:
              v72 = v57 & 7;
              if (v72)
              {
                v73 = v60 | v72;
                while (v55[v60] == *v56)
                {
                  ++v56;
                  ++v60;
                  if (!--v72)
                  {
                    v60 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
              v58 = 0;
              v59 = v57 >> 3;
              v60 = v57 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v61 = *&v56[v58];
                v62 = *&v55[v58];
                if (v61 != v62)
                {
                  break;
                }

                v58 += 8;
                if (!--v59)
                {
                  v56 += v57 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_73;
                }
              }

              v60 = v58 + (__clz(__rbit64(v62 ^ v61)) >> 3);
            }

            v63 = v60 + 4;
            if (v60 + 4 > 9)
            {
              if (v63 > 0x85)
              {
                if (v63 > 0x845)
                {
                  v64 = (v63 << 8) - 542145;
                }

                else
                {
                  v67 = v60 - 66;
                  v68 = __clz(v67) ^ 0x1F;
                  v64 = (v68 | (((-1 << v68) + v67) << 8)) + 52;
                }
              }

              else
              {
                v65 = v60 - 2;
                v66 = (__clz(v65) ^ 0x1F) - 1;
                v64 = ((v65 >> v66) + 2 * v66 + 44) | ((v65 - (v65 >> v66 << v66)) << 8);
              }
            }

            else
            {
              v64 = v60 + 42;
            }

            v16 += v63;
            v69 = __clz(v20 + 3);
            *v14 = v64;
            v14[1] = (((v20 + 3 - ((((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1 | 2) << ((v69 ^ 0x1F) - 1))) << 8) | (2 * (v69 ^ 0x1F)) | ((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1) + 76;
            v14 += 2;
            if (v16 >= v18)
            {
              goto LABEL_84;
            }

            v70 = *(v16 - 3);
            *(a6 + (((0x1E35A7BD00000000 * v70) >> 48) & 0xFFFC)) = v16 - __src - 3;
            *(a6 + (((506832829 * ((v70 << 24) & 0xFFFFFFFF00000000)) >> 48) & 0xFFFC)) = v16 - __src - 2;
            *(a6 + (((506832829 * ((v70 << 16) & 0xFFFFFFFF00000000)) >> 48) & 0xFFFC)) = v16 - __src - 1;
            v71 = ((506832829 * ((v70 << 8) & 0xFFFFFFFF00000000)) >> 48) & 0xFFFC;
            v53 = *(a6 + v71);
            *(a6 + v71) = v16 - __src;
            v54 = v16 - &__src[v53];
            if (v54 >= 262129 || *v16 != *&__src[v53])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

LABEL_19:
      v22 = v24;
    }
  }

  return result;
}

uint64_t BrotliCompressFragmentTwoPassImpl15(uint64_t result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v85 = result;
  if (a3)
  {
    v9 = __dst;
    v94 = __src + 4;
    v11 = __src;
    while (1)
    {
      v12 = a3 >= 0x20000 ? 0x20000 : a3;
      v13 = &v11[v12];
      v14 = a4;
      v15 = v9;
      v16 = v11;
      v91 = a3;
      v17 = a3 - 16;
      v93 = &v11[v12];
      if (a3 >= 0x10)
      {
        break;
      }

LABEL_85:
      if (v16 < v13)
      {
        v76 = v13 - v16;
        if ((v13 - v16) >= 6)
        {
          v78 = (v76 << 8) - 1589738;
          if (v76 > 0x5841)
          {
            v78 = (v76 << 8) - 5784041;
          }

          if (v76 >> 1 <= 0xC20)
          {
            v77 = (v76 << 8) - 541163;
          }

          else
          {
            v77 = v78;
          }

          v79 = __clz(v76 - 66) ^ 0x1F;
          if (v76 <= 0x841)
          {
            v77 = (v79 | (((-1 << v79) + v76 - 66) << 8)) + 10;
          }

          v80 = (__clz(v76 - 2) ^ 0x1F) - 1;
          if (v76 <= 0x81)
          {
            v77 = (((v76 - 2) >> v80) + 2 * v80 + 2) | ((v76 - 2 - ((v76 - 2) >> v80 << v80)) << 8);
          }
        }

        else
        {
          v77 = v13 - v16;
        }

        *v14 = v77;
        v81 = v15;
        memcpy(v15, v16, v76);
        v15 = &v81[v76];
        v9 = __dst;
      }

      if (ShouldCompress_0(v11, v12, v15 - v9))
      {
        BrotliStoreMetaBlockHeader(v12, 0, a7, a8);
        v82 = *a7;
        *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
        *a7 = v82 + 13;
        result = StoreCommands();
        if (*(v85 + 24))
        {
          return result;
        }

        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }

      else
      {
        BrotliStoreMetaBlockHeader(v12, 1u, a7, a8);
        v83 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v83;
        result = memcpy((a8 + (v83 >> 3)), v11, v12);
        v84 = *a7 + 8 * v12;
        *a7 = v84;
        *(a8 + (v84 >> 3)) = 0;
        v11 = v93;
        a3 = v91 - v12;
        if (v91 == v12)
        {
          return result;
        }
      }
    }

    v89 = v11;
    v90 = v12;
    if (v12 - 4 < v17)
    {
      v17 = v12 - 4;
    }

    v18 = &v11[v17];
    v19 = v13 - 4;
    v20 = -1;
    v14 = a4;
    v15 = v9;
    v16 = v11;
    v95 = v13 - 4;
LABEL_10:
    v22 = v16 + 1;
    v21 = *(v16 + 1);
    for (i = 32; ; ++i)
    {
      v24 = v22 + (i >> 5);
      if (v24 > v18)
      {
LABEL_84:
        v9 = __dst;
        v11 = v89;
        v12 = v90;
        v13 = v93;
        goto LABEL_85;
      }

      v25 = (0x1E35A7BD00000000 * v21) >> 49;
      v21 = *v24;
      v26 = v22 - v20;
      if (*v22 != *v26 || v20 < 1)
      {
        v26 = &__src[*(a6 + 4 * v25)];
        *(a6 + 4 * v25) = v22 - __src;
        if (*v22 != *v26)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *(a6 + 4 * v25) = v22 - __src;
      }

      v28 = v22 - v26;
      if (v22 - v26 <= 262128)
      {
        v29 = v26 + 4;
        v30 = (v22 + 1);
        v31 = v19 - v22;
        if ((v19 - v22) < 8)
        {
          v34 = 0;
LABEL_79:
          v74 = v31 & 7;
          if (v74)
          {
            v75 = v34 | v74;
            while (*(v29 + v34) == *v30)
            {
              ++v30;
              ++v34;
              if (!--v74)
              {
                v34 = v75;
                break;
              }
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v31 >> 3;
          v34 = v31 & 0xFFFFFFFFFFFFFFF8;
          while (1)
          {
            v35 = *&v30[v32 * 4];
            v36 = *&v29[v32];
            if (v35 != v36)
            {
              break;
            }

            v32 += 2;
            if (!--v33)
            {
              v30 += v31 & 0xFFFFFFFFFFFFFFF8;
              goto LABEL_79;
            }
          }

          v34 = v32 * 4 + (__clz(__rbit64(v36 ^ v35)) >> 3);
        }

        v37 = v22 - v16;
        v96 = v34;
        if ((v22 - v16) >= 6)
        {
          if (v37 > 0x81)
          {
            if (v37 > 0x841)
            {
              if (v37 >> 1 > 0xC20)
              {
                if (v37 > 0x5841)
                {
                  v41 = -5784041;
                }

                else
                {
                  v41 = -1589738;
                }

                v38 = (v37 << 8) + v41;
              }

              else
              {
                v38 = (v37 << 8) - 541163;
              }
            }

            else
            {
              v40 = __clz(v37 - 66) ^ 0x1F;
              v38 = (v40 | (((-1 << v40) + v37 - 66) << 8)) + 10;
            }
          }

          else
          {
            v39 = (__clz(v37 - 2) ^ 0x1F) - 1;
            v38 = (((v37 - 2) >> v39) + 2 * v39 + 2) | ((v37 - 2 - ((v37 - 2) >> v39 << v39)) << 8);
          }
        }

        else
        {
          v38 = v22 - v16;
        }

        *v14 = v38;
        v42 = v15;
        memcpy(v15, v16, v37);
        if (v20 == v28)
        {
          v43 = 64;
        }

        else
        {
          v44 = __clz(v28 + 3) ^ 0x1F;
          v43 = (((v28 + 3 - ((((v28 + 3) >> (v44 - 1)) & 1 | 2) << (v44 - 1))) << 8) | (2 * v44) | ((v28 + 3) >> (v44 - 1)) & 1) + 76;
          v20 = v28;
        }

        v45 = v96 + 4;
        v14[1] = v43;
        if (v96 + 4 <= 0xB)
        {
          v46 = v96 + 24;
          goto LABEL_45;
        }

        if (v45 > 0x47)
        {
          if (v45 > 0x87)
          {
            if (v45 > 0x847)
            {
              v49 = (v45 << 8) - 542657;
            }

            else
            {
              v50 = __clz(v96 - 68) ^ 0x1F;
              v49 = (v50 | (((-1 << v50) + v96 - 68) << 8)) + 52;
            }
          }

          else
          {
            v49 = (((v96 - 4) >> 5) + 54) | (((v96 - 4) & 0x1F) << 8);
          }

          v14[2] = v49;
          v14[3] = 64;
          v48 = 16;
        }

        else
        {
          v47 = (__clz(v96 - 4) ^ 0x1F) - 1;
          v46 = (((v96 - 4) >> v47) + 2 * v47 + 28) | ((v96 - 4 - ((v96 - 4) >> v47 << v47)) << 8);
LABEL_45:
          v14[2] = v46;
          v48 = 12;
        }

        v16 = v22 + v45;
        v15 = &v42[v37];
        v14 = (v14 + v48);
        if (v22 + v45 >= v18)
        {
          goto LABEL_84;
        }

        v51 = *(v16 - 3);
        *(a6 + (((506832829 * ((v51 << 24) & 0xFFFFFFFF00000000)) >> 47) & 0x1FFFC)) = v16 - __src - 2;
        *(a6 + (((0x1E35A7BD00000000 * v51) >> 47) & 0x1FFFC)) = v16 - __src - 1;
        v52 = ((506832829 * ((v51 << 8) & 0xFFFFFFFF00000000)) >> 47) & 0x1FFFC;
        v53 = *(a6 + v52);
        *(a6 + v52) = v16 - __src;
        v54 = v16 - &__src[v53];
        v19 = v95;
        if (v54 < 262129 && *v16 == *&__src[v53])
        {
          while (1)
          {
            v20 = v54;
            v55 = &v94[v53];
            v56 = (v16 + 4);
            v57 = v95 - v16;
            if ((v95 - v16) < 8)
            {
              v60 = 0;
LABEL_73:
              v72 = v57 & 7;
              if (v72)
              {
                v73 = v60 | v72;
                while (v55[v60] == *v56)
                {
                  ++v56;
                  ++v60;
                  if (!--v72)
                  {
                    v60 = v73;
                    break;
                  }
                }
              }
            }

            else
            {
              v58 = 0;
              v59 = v57 >> 3;
              v60 = v57 & 0xFFFFFFFFFFFFFFF8;
              while (1)
              {
                v61 = *&v56[v58];
                v62 = *&v55[v58];
                if (v61 != v62)
                {
                  break;
                }

                v58 += 8;
                if (!--v59)
                {
                  v56 += v57 & 0xFFFFFFFFFFFFFFF8;
                  goto LABEL_73;
                }
              }

              v60 = v58 + (__clz(__rbit64(v62 ^ v61)) >> 3);
            }

            v63 = v60 + 4;
            if (v60 + 4 > 9)
            {
              if (v63 > 0x85)
              {
                if (v63 > 0x845)
                {
                  v64 = (v63 << 8) - 542145;
                }

                else
                {
                  v67 = v60 - 66;
                  v68 = __clz(v67) ^ 0x1F;
                  v64 = (v68 | (((-1 << v68) + v67) << 8)) + 52;
                }
              }

              else
              {
                v65 = v60 - 2;
                v66 = (__clz(v65) ^ 0x1F) - 1;
                v64 = ((v65 >> v66) + 2 * v66 + 44) | ((v65 - (v65 >> v66 << v66)) << 8);
              }
            }

            else
            {
              v64 = v60 + 42;
            }

            v16 += v63;
            v69 = __clz(v20 + 3);
            *v14 = v64;
            v14[1] = (((v20 + 3 - ((((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1 | 2) << ((v69 ^ 0x1F) - 1))) << 8) | (2 * (v69 ^ 0x1F)) | ((v20 + 3) >> ((v69 ^ 0x1F) - 1)) & 1) + 76;
            v14 += 2;
            if (v16 >= v18)
            {
              goto LABEL_84;
            }

            v70 = *(v16 - 3);
            *(a6 + (((0x1E35A7BD00000000 * v70) >> 47) & 0x1FFFC)) = v16 - __src - 3;
            *(a6 + (((506832829 * ((v70 << 24) & 0xFFFFFFFF00000000)) >> 47) & 0x1FFFC)) = v16 - __src - 2;
            *(a6 + (((506832829 * ((v70 << 16) & 0xFFFFFFFF00000000)) >> 47) & 0x1FFFC)) = v16 - __src - 1;
            v71 = ((506832829 * ((v70 << 8) & 0xFFFFFFFF00000000)) >> 47) & 0x1FFFC;
            v53 = *(a6 + v71);
            *(a6 + v71) = v16 - __src;
            v54 = v16 - &__src[v53];
            if (v54 >= 262129 || *v16 != *&__src[v53])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

LABEL_19:
      v22 = v24;
    }
  }

  return result;
}

uint64_t BrotliCompressFragmentTwoPassImpl16(uint64_t result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v91 = result;
  if (a3)
  {
    v9 = __dst;
    v11 = __src;
    do
    {
      while (1)
      {
        if (a3 >= 0x20000)
        {
          v12 = 0x20000;
        }

        else
        {
          v12 = a3;
        }

        v13 = &v11[v12];
        v14 = a4;
        v15 = v9;
        v16 = v11;
        v96 = a3;
        v17 = a3 - 16;
        v99 = &v11[v12];
        if (a3 >= 0x10)
        {
          v95 = v12;
          if (v12 - 6 < v17)
          {
            v17 = v12 - 6;
          }

          v18 = v9;
          v19 = &v11[v17];
          v20 = v13 - 6;
          v21 = -1;
          v14 = a4;
          v15 = v18;
          v98 = v11;
          v16 = v11;
          v100 = v13 - 6;
LABEL_10:
          v22 = v16 + 1;
          v23 = (0x1E35A7BD0000 * *(v16 + 1)) >> 48;
          v24 = 32;
          while (1)
          {
            v25 = &v22[v24 >> 5];
            if (v25 > v19)
            {
              break;
            }

            ++v24;
            while (1)
            {
              v26 = v22;
              v27 = v23;
              v22 = v25;
              v23 = (0x1E35A7BD0000 * *v25) >> 48;
              v28 = &v26[-v21];
              if (*v26 == *v28 && v26[4] == v28[4] && v26[5] == v28[5] && v21 >= 1)
              {
                break;
              }

              v28 = &__src[*(a6 + 4 * v27)];
              *(a6 + 4 * v27) = v26 - __src;
              if (*v26 == *v28 && v26[4] == v28[4] && v26[5] == v28[5])
              {
                goto LABEL_25;
              }

              v25 = &v22[v24++ >> 5];
              if (v25 > v19)
              {
                goto LABEL_94;
              }
            }

            *(a6 + 4 * v27) = v26 - __src;
LABEL_25:
            v30 = v26 - v28;
            if (v26 - v28 <= 262128)
            {
              v31 = v28 + 6;
              v32 = (v26 + 6);
              v33 = v20 - v26;
              if ((v20 - v26) < 8)
              {
                v36 = 0;
LABEL_89:
                v80 = v33 & 7;
                if (v80)
                {
                  v81 = v36 | v80;
                  while (v31[v36] == *v32)
                  {
                    ++v32;
                    ++v36;
                    if (!--v80)
                    {
                      v36 = v81;
                      break;
                    }
                  }
                }
              }

              else
              {
                v34 = 0;
                v35 = v33 >> 3;
                v36 = v33 & 0xFFFFFFFFFFFFFFF8;
                while (1)
                {
                  v37 = *&v32[v34];
                  v38 = *&v31[v34];
                  if (v37 != v38)
                  {
                    break;
                  }

                  v34 += 8;
                  if (!--v35)
                  {
                    v32 += v33 & 0xFFFFFFFFFFFFFFF8;
                    goto LABEL_89;
                  }
                }

                v36 = v34 + (__clz(__rbit64(v38 ^ v37)) >> 3);
              }

              v39 = v26 - v16;
              v101 = v36;
              if ((v26 - v16) >= 6)
              {
                if (v39 > 0x81)
                {
                  if (v39 > 0x841)
                  {
                    if (v39 >> 1 > 0xC20)
                    {
                      if (v39 > 0x5841)
                      {
                        v43 = -5784041;
                      }

                      else
                      {
                        v43 = -1589738;
                      }

                      v40 = (v39 << 8) + v43;
                    }

                    else
                    {
                      v40 = (v39 << 8) - 541163;
                    }
                  }

                  else
                  {
                    v42 = __clz(v39 - 66) ^ 0x1F;
                    v40 = (v42 | (((-1 << v42) + v39 - 66) << 8)) + 10;
                  }
                }

                else
                {
                  v41 = (__clz(v39 - 2) ^ 0x1F) - 1;
                  v40 = (((v39 - 2) >> v41) + 2 * v41 + 2) | ((v39 - 2 - ((v39 - 2) >> v41 << v41)) << 8);
                }
              }

              else
              {
                v40 = v26 - v16;
              }

              *v14 = v40;
              v44 = v15;
              memcpy(v15, v16, v39);
              if (v21 == v30)
              {
                v45 = 64;
              }

              else
              {
                v46 = __clz(v30 + 3) ^ 0x1F;
                v45 = (((v30 + 3 - ((((v30 + 3) >> (v46 - 1)) & 1 | 2) << (v46 - 1))) << 8) | (2 * v46) | ((v30 + 3) >> (v46 - 1)) & 1) + 76;
                v21 = v30;
              }

              v47 = v101 + 6;
              v14[1] = v45;
              if (v101 + 6 <= 0xB)
              {
                v48 = v101 + 26;
                goto LABEL_51;
              }

              if (v47 > 0x47)
              {
                if (v47 > 0x87)
                {
                  if (v47 > 0x847)
                  {
                    v51 = (v47 << 8) - 542657;
                  }

                  else
                  {
                    v52 = __clz(v101 - 66) ^ 0x1F;
                    v51 = (v52 | (((-1 << v52) + v101 - 66) << 8)) + 52;
                  }
                }

                else
                {
                  v51 = (((v101 - 2) >> 5) + 54) | (((v101 - 2) & 0x1F) << 8);
                }

                v14[2] = v51;
                v14[3] = 64;
                v50 = 16;
              }

              else
              {
                v49 = (__clz(v101 - 2) ^ 0x1F) - 1;
                v48 = (((v101 - 2) >> v49) + 2 * v49 + 28) | ((v101 - 2 - ((v101 - 2) >> v49 << v49)) << 8);
LABEL_51:
                v14[2] = v48;
                v50 = 12;
              }

              v16 = &v26[v47];
              v15 = &v44[v39];
              v14 = (v14 + v50);
              if (&v26[v47] >= v19)
              {
                break;
              }

              v53 = *(v16 - 5);
              *(a6 + (((0x1E35A7BD0000 * v53) >> 46) & 0x3FFFC)) = v16 - __src - 5;
              *(a6 + (((506832829 * ((v53 << 8) & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC)) = v16 - __src - 4;
              *(a6 + (((506832829 * (v53 & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC)) = v16 - __src - 3;
              v54 = *(v16 - 2);
              *(a6 + (((0x1E35A7BD0000 * v54) >> 46) & 0x3FFFC)) = v16 - __src - 2;
              *(a6 + (((506832829 * ((v54 << 8) & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC)) = v16 - __src - 1;
              v55 = ((506832829 * (v54 & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC;
              v56 = *(a6 + v55);
              *(a6 + v55) = v16 - __src;
              v57 = &__src[v56];
              LODWORD(v58) = v16 - v57;
              v20 = v100;
              if (v16 - v57 < 262129 && *v16 == *v57)
              {
                v11 = v98;
                while (1)
                {
                  v59 = v58;
                  if (v16[4] != v57[4] || v16[5] != v57[5])
                  {
                    break;
                  }

                  v60 = v57 + 6;
                  v61 = (v16 + 6);
                  v62 = v100 - v16;
                  if ((v100 - v16) < 8)
                  {
                    v65 = 0;
LABEL_82:
                    v78 = v62 & 7;
                    if (v78)
                    {
                      v79 = v65 | v78;
                      while (v60[v65] == *v61)
                      {
                        ++v61;
                        ++v65;
                        if (!--v78)
                        {
                          v65 = v79;
                          break;
                        }
                      }
                    }
                  }

                  else
                  {
                    v63 = 0;
                    v64 = v62 >> 3;
                    v65 = v62 & 0xFFFFFFFFFFFFFFF8;
                    while (1)
                    {
                      v66 = *&v61[v63];
                      v67 = *&v60[v63];
                      if (v66 != v67)
                      {
                        break;
                      }

                      v63 += 8;
                      if (!--v64)
                      {
                        v61 += v62 & 0xFFFFFFFFFFFFFFF8;
                        goto LABEL_82;
                      }
                    }

                    v65 = v63 + (__clz(__rbit64(v67 ^ v66)) >> 3);
                  }

                  v68 = v65 + 6;
                  if (v65 + 6 > 9)
                  {
                    if (v68 > 0x85)
                    {
                      if (v68 > 0x845)
                      {
                        v69 = (v68 << 8) - 542145;
                      }

                      else
                      {
                        v71 = v65 - 64;
                        v72 = __clz(v71) ^ 0x1F;
                        v69 = (v72 | (((-1 << v72) + v71) << 8)) + 52;
                      }
                    }

                    else
                    {
                      v70 = (__clz(v65) ^ 0x1F) - 1;
                      v69 = ((v65 >> v70) + 2 * v70 + 44) | ((v65 - (v65 >> v70 << v70)) << 8);
                    }
                  }

                  else
                  {
                    v69 = v65 + 44;
                  }

                  v16 += v68;
                  v73 = __clz(v59 + 3);
                  *v14 = v69;
                  v14[1] = (((v59 + 3 - ((((v59 + 3) >> ((v73 ^ 0x1F) - 1)) & 1 | 2) << ((v73 ^ 0x1F) - 1))) << 8) | (2 * (v73 ^ 0x1F)) | ((v59 + 3) >> ((v73 ^ 0x1F) - 1)) & 1) + 76;
                  v14 += 2;
                  if (v16 >= v19)
                  {
                    v9 = __dst;
                    v12 = v95;
                    v13 = v99;
                    goto LABEL_95;
                  }

                  v74 = *(v16 - 5);
                  *(a6 + (((0x1E35A7BD0000 * v74) >> 46) & 0x3FFFC)) = v16 - __src - 5;
                  *(a6 + (((506832829 * ((v74 << 8) & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC)) = v16 - __src - 4;
                  *(a6 + (((506832829 * (v74 & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC)) = v16 - __src - 3;
                  v75 = *(v16 - 2);
                  *(a6 + (((0x1E35A7BD0000 * v75) >> 46) & 0x3FFFC)) = v16 - __src - 2;
                  *(a6 + (((506832829 * ((v75 << 8) & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC)) = v16 - __src - 1;
                  v76 = ((506832829 * (v75 & 0xFFFFFFFFFFFF0000)) >> 46) & 0x3FFFC;
                  v77 = *(a6 + v76);
                  *(a6 + v76) = v16 - __src;
                  v57 = &__src[v77];
                  v58 = v16 - &__src[v77];
                  if (v58 < 262129)
                  {
                    v21 = v59;
                    if (*v16 == *v57)
                    {
                      continue;
                    }
                  }

                  v21 = v59;
                  goto LABEL_10;
                }
              }

              goto LABEL_10;
            }
          }

LABEL_94:
          v9 = __dst;
          v12 = v95;
          v11 = v98;
          v13 = v99;
        }

LABEL_95:
        if (v16 < v13)
        {
          v82 = v13 - v16;
          if ((v13 - v16) >= 6)
          {
            v84 = (v82 << 8) - 1589738;
            if (v82 > 0x5841)
            {
              v84 = (v82 << 8) - 5784041;
            }

            if (v82 >> 1 <= 0xC20)
            {
              v83 = (v82 << 8) - 541163;
            }

            else
            {
              v83 = v84;
            }

            v85 = __clz(v82 - 66) ^ 0x1F;
            if (v82 <= 0x841)
            {
              v83 = (v85 | (((-1 << v85) + v82 - 66) << 8)) + 10;
            }

            v86 = (__clz(v82 - 2) ^ 0x1F) - 1;
            if (v82 <= 0x81)
            {
              v83 = (((v82 - 2) >> v86) + 2 * v86 + 2) | ((v82 - 2 - ((v82 - 2) >> v86 << v86)) << 8);
            }
          }

          else
          {
            v83 = v13 - v16;
          }

          *v14 = v83;
          v87 = v15;
          memcpy(v15, v16, v82);
          v15 = &v87[v82];
        }

        if (ShouldCompress_0(v11, v12, v15 - v9))
        {
          break;
        }

        BrotliStoreMetaBlockHeader(v12, 1u, a7, a8);
        v89 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v89;
        result = memcpy((a8 + (v89 >> 3)), v11, v12);
        v90 = *a7 + 8 * v12;
        *a7 = v90;
        *(a8 + (v90 >> 3)) = 0;
        v11 = v99;
        a3 = v96 - v12;
        if (v96 == v12)
        {
          return result;
        }
      }

      BrotliStoreMetaBlockHeader(v12, 0, a7, a8);
      v88 = *a7;
      *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
      *a7 = v88 + 13;
      result = StoreCommands();
      if (*(v91 + 24))
      {
        break;
      }

      v11 = v99;
      a3 = v96 - v12;
    }

    while (v96 != v12);
  }

  return result;
}

uint64_t BrotliCompressFragmentTwoPassImpl17(uint64_t result, char *__src, unint64_t a3, unsigned int *a4, char *__dst, uint64_t a6, unint64_t *a7, uint64_t a8)
{
  v91 = result;
  if (a3)
  {
    v9 = __dst;
    v11 = __src;
    do
    {
      while (1)
      {
        if (a3 >= 0x20000)
        {
          v12 = 0x20000;
        }

        else
        {
          v12 = a3;
        }

        v13 = &v11[v12];
        v14 = a4;
        v15 = v9;
        v16 = v11;
        v96 = a3;
        v17 = a3 - 16;
        v99 = &v11[v12];
        if (a3 >= 0x10)
        {
          v95 = v12;
          if (v12 - 6 < v17)
          {
            v17 = v12 - 6;
          }

          v18 = v9;
          v19 = &v11[v17];
          v20 = v13 - 6;
          v21 = -1;
          v14 = a4;
          v15 = v18;
          v98 = v11;
          v16 = v11;
          v100 = v13 - 6;
LABEL_10:
          v22 = v16 + 1;
          v23 = (0x1E35A7BD0000 * *(v16 + 1)) >> 47;
          v24 = 32;
          while (1)
          {
            v25 = &v22[v24 >> 5];
            if (v25 > v19)
            {
              break;
            }

            ++v24;
            while (1)
            {
              v26 = v22;
              v27 = v23;
              v22 = v25;
              v23 = (0x1E35A7BD0000 * *v25) >> 47;
              v28 = &v26[-v21];
              if (*v26 == *v28 && v26[4] == v28[4] && v26[5] == v28[5] && v21 >= 1)
              {
                break;
              }

              v28 = &__src[*(a6 + 4 * v27)];
              *(a6 + 4 * v27) = v26 - __src;
              if (*v26 == *v28 && v26[4] == v28[4] && v26[5] == v28[5])
              {
                goto LABEL_25;
              }

              v25 = &v22[v24++ >> 5];
              if (v25 > v19)
              {
                goto LABEL_94;
              }
            }

            *(a6 + 4 * v27) = v26 - __src;
LABEL_25:
            v30 = v26 - v28;
            if (v26 - v28 <= 262128)
            {
              v31 = v28 + 6;
              v32 = (v26 + 6);
              v33 = v20 - v26;
              if ((v20 - v26) < 8)
              {
                v36 = 0;
LABEL_89:
                v80 = v33 & 7;
                if (v80)
                {
                  v81 = v36 | v80;
                  while (v31[v36] == *v32)
                  {
                    ++v32;
                    ++v36;
                    if (!--v80)
                    {
                      v36 = v81;
                      break;
                    }
                  }
                }
              }

              else
              {
                v34 = 0;
                v35 = v33 >> 3;
                v36 = v33 & 0xFFFFFFFFFFFFFFF8;
                while (1)
                {
                  v37 = *&v32[v34];
                  v38 = *&v31[v34];
                  if (v37 != v38)
                  {
                    break;
                  }

                  v34 += 8;
                  if (!--v35)
                  {
                    v32 += v33 & 0xFFFFFFFFFFFFFFF8;
                    goto LABEL_89;
                  }
                }

                v36 = v34 + (__clz(__rbit64(v38 ^ v37)) >> 3);
              }

              v39 = v26 - v16;
              v101 = v36;
              if ((v26 - v16) >= 6)
              {
                if (v39 > 0x81)
                {
                  if (v39 > 0x841)
                  {
                    if (v39 >> 1 > 0xC20)
                    {
                      if (v39 > 0x5841)
                      {
                        v43 = -5784041;
                      }

                      else
                      {
                        v43 = -1589738;
                      }

                      v40 = (v39 << 8) + v43;
                    }

                    else
                    {
                      v40 = (v39 << 8) - 541163;
                    }
                  }

                  else
                  {
                    v42 = __clz(v39 - 66) ^ 0x1F;
                    v40 = (v42 | (((-1 << v42) + v39 - 66) << 8)) + 10;
                  }
                }

                else
                {
                  v41 = (__clz(v39 - 2) ^ 0x1F) - 1;
                  v40 = (((v39 - 2) >> v41) + 2 * v41 + 2) | ((v39 - 2 - ((v39 - 2) >> v41 << v41)) << 8);
                }
              }

              else
              {
                v40 = v26 - v16;
              }

              *v14 = v40;
              v44 = v15;
              memcpy(v15, v16, v39);
              if (v21 == v30)
              {
                v45 = 64;
              }

              else
              {
                v46 = __clz(v30 + 3) ^ 0x1F;
                v45 = (((v30 + 3 - ((((v30 + 3) >> (v46 - 1)) & 1 | 2) << (v46 - 1))) << 8) | (2 * v46) | ((v30 + 3) >> (v46 - 1)) & 1) + 76;
                v21 = v30;
              }

              v47 = v101 + 6;
              v14[1] = v45;
              if (v101 + 6 <= 0xB)
              {
                v48 = v101 + 26;
                goto LABEL_51;
              }

              if (v47 > 0x47)
              {
                if (v47 > 0x87)
                {
                  if (v47 > 0x847)
                  {
                    v51 = (v47 << 8) - 542657;
                  }

                  else
                  {
                    v52 = __clz(v101 - 66) ^ 0x1F;
                    v51 = (v52 | (((-1 << v52) + v101 - 66) << 8)) + 52;
                  }
                }

                else
                {
                  v51 = (((v101 - 2) >> 5) + 54) | (((v101 - 2) & 0x1F) << 8);
                }

                v14[2] = v51;
                v14[3] = 64;
                v50 = 16;
              }

              else
              {
                v49 = (__clz(v101 - 2) ^ 0x1F) - 1;
                v48 = (((v101 - 2) >> v49) + 2 * v49 + 28) | ((v101 - 2 - ((v101 - 2) >> v49 << v49)) << 8);
LABEL_51:
                v14[2] = v48;
                v50 = 12;
              }

              v16 = &v26[v47];
              v15 = &v44[v39];
              v14 = (v14 + v50);
              if (&v26[v47] >= v19)
              {
                break;
              }

              v53 = *(v16 - 5);
              *(a6 + (((0x1E35A7BD0000 * v53) >> 45) & 0x7FFFC)) = v16 - __src - 5;
              *(a6 + (((506832829 * ((v53 << 8) & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC)) = v16 - __src - 4;
              *(a6 + (((506832829 * (v53 & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC)) = v16 - __src - 3;
              v54 = *(v16 - 2);
              *(a6 + (((0x1E35A7BD0000 * v54) >> 45) & 0x7FFFC)) = v16 - __src - 2;
              *(a6 + (((506832829 * ((v54 << 8) & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC)) = v16 - __src - 1;
              v55 = ((506832829 * (v54 & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC;
              v56 = *(a6 + v55);
              *(a6 + v55) = v16 - __src;
              v57 = &__src[v56];
              LODWORD(v58) = v16 - v57;
              v20 = v100;
              if (v16 - v57 < 262129 && *v16 == *v57)
              {
                v11 = v98;
                while (1)
                {
                  v59 = v58;
                  if (v16[4] != v57[4] || v16[5] != v57[5])
                  {
                    break;
                  }

                  v60 = v57 + 6;
                  v61 = (v16 + 6);
                  v62 = v100 - v16;
                  if ((v100 - v16) < 8)
                  {
                    v65 = 0;
LABEL_82:
                    v78 = v62 & 7;
                    if (v78)
                    {
                      v79 = v65 | v78;
                      while (v60[v65] == *v61)
                      {
                        ++v61;
                        ++v65;
                        if (!--v78)
                        {
                          v65 = v79;
                          break;
                        }
                      }
                    }
                  }

                  else
                  {
                    v63 = 0;
                    v64 = v62 >> 3;
                    v65 = v62 & 0xFFFFFFFFFFFFFFF8;
                    while (1)
                    {
                      v66 = *&v61[v63];
                      v67 = *&v60[v63];
                      if (v66 != v67)
                      {
                        break;
                      }

                      v63 += 8;
                      if (!--v64)
                      {
                        v61 += v62 & 0xFFFFFFFFFFFFFFF8;
                        goto LABEL_82;
                      }
                    }

                    v65 = v63 + (__clz(__rbit64(v67 ^ v66)) >> 3);
                  }

                  v68 = v65 + 6;
                  if (v65 + 6 > 9)
                  {
                    if (v68 > 0x85)
                    {
                      if (v68 > 0x845)
                      {
                        v69 = (v68 << 8) - 542145;
                      }

                      else
                      {
                        v71 = v65 - 64;
                        v72 = __clz(v71) ^ 0x1F;
                        v69 = (v72 | (((-1 << v72) + v71) << 8)) + 52;
                      }
                    }

                    else
                    {
                      v70 = (__clz(v65) ^ 0x1F) - 1;
                      v69 = ((v65 >> v70) + 2 * v70 + 44) | ((v65 - (v65 >> v70 << v70)) << 8);
                    }
                  }

                  else
                  {
                    v69 = v65 + 44;
                  }

                  v16 += v68;
                  v73 = __clz(v59 + 3);
                  *v14 = v69;
                  v14[1] = (((v59 + 3 - ((((v59 + 3) >> ((v73 ^ 0x1F) - 1)) & 1 | 2) << ((v73 ^ 0x1F) - 1))) << 8) | (2 * (v73 ^ 0x1F)) | ((v59 + 3) >> ((v73 ^ 0x1F) - 1)) & 1) + 76;
                  v14 += 2;
                  if (v16 >= v19)
                  {
                    v9 = __dst;
                    v12 = v95;
                    v13 = v99;
                    goto LABEL_95;
                  }

                  v74 = *(v16 - 5);
                  *(a6 + (((0x1E35A7BD0000 * v74) >> 45) & 0x7FFFC)) = v16 - __src - 5;
                  *(a6 + (((506832829 * ((v74 << 8) & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC)) = v16 - __src - 4;
                  *(a6 + (((506832829 * (v74 & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC)) = v16 - __src - 3;
                  v75 = *(v16 - 2);
                  *(a6 + (((0x1E35A7BD0000 * v75) >> 45) & 0x7FFFC)) = v16 - __src - 2;
                  *(a6 + (((506832829 * ((v75 << 8) & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC)) = v16 - __src - 1;
                  v76 = ((506832829 * (v75 & 0xFFFFFFFFFFFF0000)) >> 45) & 0x7FFFC;
                  v77 = *(a6 + v76);
                  *(a6 + v76) = v16 - __src;
                  v57 = &__src[v77];
                  v58 = v16 - &__src[v77];
                  if (v58 < 262129)
                  {
                    v21 = v59;
                    if (*v16 == *v57)
                    {
                      continue;
                    }
                  }

                  v21 = v59;
                  goto LABEL_10;
                }
              }

              goto LABEL_10;
            }
          }

LABEL_94:
          v9 = __dst;
          v12 = v95;
          v11 = v98;
          v13 = v99;
        }

LABEL_95:
        if (v16 < v13)
        {
          v82 = v13 - v16;
          if ((v13 - v16) >= 6)
          {
            v84 = (v82 << 8) - 1589738;
            if (v82 > 0x5841)
            {
              v84 = (v82 << 8) - 5784041;
            }

            if (v82 >> 1 <= 0xC20)
            {
              v83 = (v82 << 8) - 541163;
            }

            else
            {
              v83 = v84;
            }

            v85 = __clz(v82 - 66) ^ 0x1F;
            if (v82 <= 0x841)
            {
              v83 = (v85 | (((-1 << v85) + v82 - 66) << 8)) + 10;
            }

            v86 = (__clz(v82 - 2) ^ 0x1F) - 1;
            if (v82 <= 0x81)
            {
              v83 = (((v82 - 2) >> v86) + 2 * v86 + 2) | ((v82 - 2 - ((v82 - 2) >> v86 << v86)) << 8);
            }
          }

          else
          {
            v83 = v13 - v16;
          }

          *v14 = v83;
          v87 = v15;
          memcpy(v15, v16, v82);
          v15 = &v87[v82];
        }

        if (ShouldCompress_0(v11, v12, v15 - v9))
        {
          break;
        }

        BrotliStoreMetaBlockHeader(v12, 1u, a7, a8);
        v89 = (*a7 + 7) & 0xFFFFFFF8;
        *a7 = v89;
        result = memcpy((a8 + (v89 >> 3)), v11, v12);
        v90 = *a7 + 8 * v12;
        *a7 = v90;
        *(a8 + (v90 >> 3)) = 0;
        v11 = v99;
        a3 = v96 - v12;
        if (v96 == v12)
        {
          return result;
        }
      }

      BrotliStoreMetaBlockHeader(v12, 0, a7, a8);
      v88 = *a7;
      *(a8 + (*a7 >> 3)) = *(a8 + (*a7 >> 3));
      *a7 = v88 + 13;
      result = StoreCommands();
      if (*(v91 + 24))
      {
        break;
      }

      v11 = v99;
      a3 = v96 - v12;
    }

    while (v96 != v12);
  }

  return result;
}

BOOL ShouldCompress_0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = a2;
  if (a2 * 0.98 > a3)
  {
    return 1;
  }

  bzero(v20, 0x400uLL);
  if (a2)
  {
    v7 = 0;
    do
    {
      ++v20[*(a1 + v7)];
      v7 += 43;
    }

    while (v7 < a2);
  }

  v8 = 0;
  v9 = 0;
  v10 = 0.0;
  v11 = v3 * 8.0 * 0.98 / 43.0;
  do
  {
    v12 = v20[v8];
    if (v12 > 0xFF)
    {
      v14 = v12;
      v13 = log2(v12);
    }

    else
    {
      v13 = kBrotliLog2Table[v12];
      v14 = v12;
    }

    v15 = v20[v8 + 1];
    if (v15 > 0xFF)
    {
      v16 = log2(v15);
    }

    else
    {
      v16 = kBrotliLog2Table[v15];
    }

    v8 += 2;
    v9 += v12 + v15;
    v10 = v10 - v14 * v13 - v15 * v16;
  }

  while ((v8 * 4 - 8) < 0x3F8);
  v17 = v9;
  if (v9)
  {
    if (v9 > 0xFF)
    {
      v18 = log2(v9);
    }

    else
    {
      v18 = kBrotliLog2Table[v9];
    }

    v10 = v10 + v17 * v18;
  }

  if (v10 >= v17)
  {
    v19 = v10;
  }

  else
  {
    v19 = v9;
  }

  return v19 < v11;
}

unint64_t StoreCommands()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v0;
  v65 = *MEMORY[0x29EDCA608];
  bzero(v55, 0x400uLL);
  memset(v54, 0, sizeof(v54));
  v53 = 0u;
  v51 = 0u;
  memset(v52, 0, sizeof(v52));
  memset(v50, 0, sizeof(v50));
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  if (v10)
  {
    v14 = v12;
    v15 = v10;
    do
    {
      v16 = *v14++;
      ++v55[v16];
      --v15;
    }

    while (v15);
  }

  result = BrotliBuildAndStoreHuffmanTreeFast(v13, v55, v10, 8, v57, v56, v4, v2);
  if (!*(v13 + 24))
  {
    if (v6)
    {
      v18 = v8;
      v19 = v6;
      do
      {
        v20 = *v18;
        v18 += 4;
        ++*(v36 + v20);
        --v19;
      }

      while (v19);
      v21 = vadd_s32(*(v36 + 4), 0x100000001);
      v22 = LODWORD(v37[0]) + 1;
      v23 = v38 + 1;
    }

    else
    {
      v21 = 0x100000001;
      v23 = 1;
      v22 = 1;
    }

    *(v36 + 4) = v21;
    LODWORD(v37[0]) = v22;
    LODWORD(v38) = v23;
    bzero(v63, 0x280uLL);
    BrotliCreateHuffmanTree(v36, 64, 15, v64, &v51);
    BrotliCreateHuffmanTree(v37, 64, 14, v64, v54);
    *v59 = *(v52 + 8);
    *&v59[16] = *(&v52[1] + 1);
    *&v60 = v51;
    *(&v60 + 1) = v53;
    *&v61 = *(&v51 + 1);
    v24 = v52;
    *(&v61 + 1) = *(&v53 + 1);
    v62 = *&v52[0];
    BrotliConvertBitDepthsToSymbols(v59, 64, v58);
    v49[0] = v58[3];
    v49[1] = v58[5];
    v49[2] = v58[7];
    v49[3] = v58[0];
    v49[4] = v58[1];
    v49[5] = v58[2];
    v49[6] = v58[4];
    v49[7] = v58[6];
    BrotliConvertBitDepthsToSymbols(v54, 64, v50);
    v61 = 0u;
    v60 = 0u;
    *&v59[8] = 0u;
    v62 = 0;
    *v59 = *(&v52[0] + 1);
    v63[8] = *(&v52[1] + 1);
    v63[0] = *&v52[1];
    v63[40] = *(&v53 + 1);
    v63[16] = v53;
    for (i = 256; i != 320; i += 8)
    {
      v26 = &v59[i];
      *(v26 - 128) = *(v24 - 16);
      *v26 = *(v24 - 8);
      v27 = *v24++;
      v26[192] = v27;
    }

    BrotliStoreHuffmanTree(v59, 0x2C0uLL, v64, v4, v2);
    result = BrotliStoreHuffmanTree(v54, 0x40uLL, v64, v4, v2);
    if (v6)
    {
      v28 = 0;
      v29 = *v4;
      do
      {
        v30 = *&v8[4 * v28];
        v31 = *(&v52[-1] + v30);
        v32 = *&v8[4 * v28] >> 8;
        *(v2 + (v29 >> 3)) = (*(v49 + v30) << (v29 & 7)) | *(v2 + (v29 >> 3));
        v33 = v29 + v31;
        result = StoreCommands_kNumExtraBits[v30];
        *v4 = v33;
        *(v2 + (v33 >> 3)) = (v32 << (v33 & 7)) | *(v2 + (v33 >> 3));
        v29 = v33 + result;
        *v4 = v29;
        if (v30 <= 0x17)
        {
          for (j = StoreCommands_kInsertOffset[v30] + v32; j; --j)
          {
            v35 = *v12++;
            result = v57[v35];
            *(v2 + (v29 >> 3)) = (v56[v35] << (v29 & 7)) | *(v2 + (v29 >> 3));
            v29 += result;
            *v4 = v29;
          }
        }

        ++v28;
      }

      while (v28 != v6);
    }
  }

  return result;
}

uLong crc32(uLong crc, const Bytef *buf, uInt len)
{
  if (!buf)
  {
    return 0;
  }

  v3 = ~crc;
  if (len && (buf & 3) != 0)
  {
    v4 = buf + 1;
    do
    {
      v5 = *buf++;
      v3 = *(&crc_table + (v5 ^ v3)) ^ (v3 >> 8);
      if (!--len)
      {
        break;
      }
    }

    while ((v4++ & 3));
  }

  if (len >= 0x20)
  {
    v7 = &crc_table + 6144;
    do
    {
      v8 = *buf ^ v3;
      v9 = qword_298683990[BYTE1(v8) + 256] ^ *&v7[8 * (*buf ^ v3)];
      v10 = *(buf + 1) ^ v9 ^ qword_298683990[BYTE2(v8)] ^ *(&crc_table + HIBYTE(v8));
      v11 = *(buf + 2) ^ qword_298683990[BYTE1(v10) + 256] ^ *&v7[8 * (buf[4] ^ v9 ^ qword_298683990[BYTE2(v8)] ^ *(&crc_table + HIBYTE(v8)))] ^ qword_298683990[BYTE2(v10)] ^ *(&crc_table + HIBYTE(v10));
      v12 = *(buf + 3) ^ qword_298683990[BYTE1(v11) + 256] ^ *&v7[8 * v11] ^ qword_298683990[BYTE2(v11)] ^ *(&crc_table + HIBYTE(v11));
      v13 = *(buf + 4) ^ qword_298683990[BYTE1(v12) + 256] ^ *&v7[8 * v12] ^ qword_298683990[BYTE2(v12)] ^ *(&crc_table + HIBYTE(v12));
      v14 = *(buf + 5) ^ qword_298683990[BYTE1(v13) + 256] ^ *&v7[8 * v13] ^ qword_298683990[BYTE2(v13)] ^ *(&crc_table + HIBYTE(v13));
      v15 = *(buf + 6) ^ qword_298683990[BYTE1(v14) + 256] ^ *&v7[8 * v14] ^ qword_298683990[BYTE2(v14)] ^ *(&crc_table + HIBYTE(v14));
      v16 = qword_298683990[BYTE1(v15) + 256] ^ *&v7[8 * v15] ^ qword_298683990[BYTE2(v15)] ^ *(&crc_table + HIBYTE(v15));
      v17 = buf + 32;
      v18 = *(buf + 7) ^ v16;
      v3 = qword_298683990[BYTE1(v18) + 256] ^ *&v7[8 * v18] ^ qword_298683990[BYTE2(v18)] ^ *(&crc_table + HIBYTE(v18));
      len -= 32;
      buf += 32;
    }

    while (len > 0x1F);
    buf = v17;
  }

  if (len >= 4)
  {
    do
    {
      v19 = *buf;
      buf += 4;
      v3 = *(&crc_table + 2 * ((v19 ^ v3) >> 8) + 1024) ^ *(&crc_table + 2 * (v19 ^ v3) + 1536) ^ *(&crc_table + 2 * ((v19 ^ v3) >> 16) + 512) ^ *(&crc_table + ((v19 ^ v3) >> 24));
      len -= 4;
    }

    while (len > 3);
  }

  for (; len; --len)
  {
    v20 = *buf++;
    v3 = *(&crc_table + (v20 ^ v3)) ^ (v3 >> 8);
  }

  return ~v3;
}

uint64_t touchpadGetInfoWithCompressedBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  v6[0] = a3;
  v6[1] = a4;
  memset(&v6[2], 0, 24);
  if (a2 == 9)
  {
    if (codecReadHeader(v6, a1))
    {
      return 9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL codecReadHeader(uint64_t *a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  *a2 = 0;
  v2 = *(a1 + 9);
  if (v2 <= 15)
  {
    v4 = a1[1];
    v3 = a1[2];
    a1[2] = v3 + 1;
    if (v3 < v4)
    {
      v5 = *a1;
      v6 = a1[3];
      a1[3] = v6 + 1;
      LODWORD(v5) = (*(v5 + v6) << v2) | *(a1 + 8);
      v2 += 8;
      *(a1 + 8) = v5;
      *(a1 + 9) = v2;
    }

    a1[2] = v3 + 2;
    if (v3 + 1 < v4)
    {
      v7 = *a1;
      v8 = a1[3];
      a1[3] = v8 + 1;
      *(a1 + 8) |= *(v7 + v8) << v2;
      v2 += 8;
    }
  }

  v9 = a1[4] & 0x1F;
  v10 = *(a1 + 8) >> 5;
  v11 = v2 - 5;
  *(a1 + 8) = v10;
  *(a1 + 9) = v2 - 5;
  v12 = v9 - 16;
  if (v9 > 0x10)
  {
    if (v2 <= 20)
    {
      v24 = a1[1];
      v23 = a1[2];
      a1[2] = v23 + 1;
      if (v23 < v24)
      {
        v25 = *a1;
        v26 = a1[3];
        a1[3] = v26 + 1;
        v10 |= *(v25 + v26) << v11;
        v11 = v2 + 3;
        *(a1 + 8) = v10;
        *(a1 + 9) = v2 + 3;
      }

      a1[2] = v23 + 2;
      if (v23 + 1 < v24)
      {
        v27 = *a1;
        v28 = a1[3];
        a1[3] = v28 + 1;
        v10 |= *(v27 + v28) << v11;
        v11 += 8;
      }
    }

    v29 = HIWORD(v10);
    v30 = v11 - 16;
    *(a1 + 8) = HIWORD(v10);
    *(a1 + 9) = v11 - 16;
    if (v11 <= 31)
    {
      v32 = a1[1];
      v31 = a1[2];
      a1[2] = v31 + 1;
      if (v31 < v32)
      {
        v33 = *a1;
        v34 = a1[3];
        a1[3] = v34 + 1;
        v29 |= *(v33 + v34) << v30;
        v30 = v11 - 8;
        *(a1 + 8) = v29;
        *(a1 + 9) = v11 - 8;
      }

      a1[2] = v31 + 2;
      if (v31 + 1 < v32)
      {
        v35 = *a1;
        v36 = a1[3];
        a1[3] = v36 + 1;
        v29 |= *(v35 + v36) << v30;
        v30 += 8;
      }
    }

    v37 = v29 & ~(-1 << v12);
    v20 = v29 >> v12;
    v21 = v30 - v12;
    *(a1 + 8) = v20;
    *(a1 + 9) = v30 - v12;
    v22 = v10 | (v37 << 16);
    v19 = -1 << v9;
  }

  else
  {
    if (v2 <= 20)
    {
      v14 = a1[1];
      v13 = a1[2];
      a1[2] = v13 + 1;
      if (v13 < v14)
      {
        v15 = *a1;
        v16 = a1[3];
        a1[3] = v16 + 1;
        v10 |= *(v15 + v16) << v11;
        v11 = v2 + 3;
        *(a1 + 8) = v10;
        *(a1 + 9) = v2 + 3;
      }

      a1[2] = v13 + 2;
      if (v13 + 1 < v14)
      {
        v17 = *a1;
        v18 = a1[3];
        a1[3] = v18 + 1;
        v10 |= *(v17 + v18) << v11;
        v11 += 8;
      }
    }

    v19 = -1 << v9;
    v20 = v10 >> v9;
    v21 = v11 - v9;
    *(a1 + 8) = v10 >> v9;
    *(a1 + 9) = v21;
    v22 = v10 & ~(-1 << v9);
  }

  v38 = v22 + ~v19;
  *a2 = v38;
  if (v38)
  {
    if (v21 <= 15)
    {
      v40 = a1[1];
      v39 = a1[2];
      a1[2] = v39 + 1;
      if (v39 < v40)
      {
        v41 = *a1;
        v42 = a1[3];
        a1[3] = v42 + 1;
        v20 |= *(v41 + v42) << v21;
        v21 += 8;
        *(a1 + 8) = v20;
        *(a1 + 9) = v21;
      }

      a1[2] = v39 + 2;
      if (v39 + 1 < v40)
      {
        v43 = *a1;
        v44 = a1[3];
        a1[3] = v44 + 1;
        v20 |= *(v43 + v44) << v21;
        v21 += 8;
      }
    }

    v45 = v20 & 0xF;
    v46 = v20 >> 4;
    v47 = v21 - 4;
    *(a1 + 8) = v46;
    *(a1 + 9) = v21 - 4;
    v48 = v45 + 1;
    if (v21 <= 19)
    {
      v50 = a1[1];
      v49 = a1[2];
      a1[2] = v49 + 1;
      if (v49 < v50)
      {
        v51 = *a1;
        v52 = a1[3];
        a1[3] = v52 + 1;
        v46 |= *(v51 + v52) << v47;
        v47 = v21 + 4;
        *(a1 + 8) = v46;
        *(a1 + 9) = v21 + 4;
      }

      a1[2] = v49 + 2;
      if (v49 + 1 < v50)
      {
        v53 = *a1;
        v54 = a1[3];
        a1[3] = v54 + 1;
        v46 |= *(v53 + v54) << v47;
        v47 += 8;
      }
    }

    v55 = ~(-2 << v45);
    v56 = v46 & v55;
    v57 = v46 >> v48;
    v58 = v47 - v48;
    *(a1 + 8) = v57;
    *(a1 + 9) = v47 - v48;
    *(a2 + 4) = v56;
    if (v47 - v48 <= 15)
    {
      v60 = a1[1];
      v59 = a1[2];
      a1[2] = v59 + 1;
      if (v59 < v60)
      {
        v61 = *a1;
        v62 = a1[3];
        a1[3] = v62 + 1;
        v57 |= *(v61 + v62) << v58;
        v58 += 8;
        *(a1 + 8) = v57;
        *(a1 + 9) = v58;
      }

      a1[2] = v59 + 2;
      if (v59 + 1 < v60)
      {
        v63 = *a1;
        v64 = a1[3];
        a1[3] = v64 + 1;
        v57 |= *(v63 + v64) << v58;
        v58 += 8;
      }
    }

    v65 = v57 & v55;
    v66 = v57 >> v48;
    v67 = v58 - v48;
    *(a1 + 8) = v66;
    *(a1 + 9) = v67;
    *(a2 + 6) = v65;
    if (v67 <= 15)
    {
      v69 = a1[1];
      v68 = a1[2];
      a1[2] = v68 + 1;
      if (v68 < v69)
      {
        v70 = *a1;
        v71 = a1[3];
        a1[3] = v71 + 1;
        v66 |= *(v70 + v71) << v67;
        v67 += 8;
        *(a1 + 8) = v66;
        *(a1 + 9) = v67;
      }

      a1[2] = v68 + 2;
      if (v68 + 1 < v69)
      {
        v72 = *a1;
        v73 = a1[3];
        a1[3] = v73 + 1;
        v66 |= *(v72 + v73) << v67;
        v67 += 8;
      }
    }

    v74 = v66 & 0x1F;
    v75 = v66 >> 5;
    v21 = v67 - 5;
    *(a1 + 8) = v75;
    *(a1 + 9) = v67 - 5;
    *(a2 + 8) = v74 + 1;
  }

  return (v21 & 0x80000000) == 0 && a1[3] != v21 >> 3;
}

uint64_t *codecWriteHeader(uint64_t *result, int a2, int a3, __int16 a4, int a5)
{
  v5 = __clz(a5 + 1);
  v6 = 31 - v5;
  v7 = *(result + 9);
  v8 = *(result + 8) | ((31 - v5) << v7);
  v9 = v7 + 5;
  *(result + 8) = v8;
  *(result + 9) = v7 + 5;
  if (v7 >= 12)
  {
    v10 = result[1];
    v11 = result[2];
    v12 = v11 + 1;
    result[2] = v11 + 1;
    if (v11 < v10)
    {
      v13 = *result;
      v14 = result[3];
      result[3] = v14 + 1;
      *(v13 + v14) = v8;
      v8 = *(result + 8);
      v9 = *(result + 9);
      v10 = result[1];
      v12 = result[2];
    }

    v15 = v8 >> 8;
    v16 = v9 - 8;
    *(result + 8) = v15;
    *(result + 9) = v16;
    result[2] = v12 + 1;
    if (v12 < v10)
    {
      v17 = *result;
      v18 = result[3];
      result[3] = v18 + 1;
      *(v17 + v18) = v15;
      v15 = *(result + 8);
      v16 = *(result + 9);
    }

    v8 = v15 >> 8;
    v9 = v16 - 8;
  }

  v19 = v8 | ((a5 + 1 - (0x80000000 >> v5)) << v9);
  v20 = v9 + v6;
  *(result + 8) = v19;
  *(result + 9) = v9 + v6;
  if ((v9 + v6) >= 17)
  {
    v21 = result[1];
    v22 = result[2];
    v23 = v22 + 1;
    result[2] = v22 + 1;
    if (v22 < v21)
    {
      v24 = *result;
      v25 = result[3];
      result[3] = v25 + 1;
      *(v24 + v25) = v19;
      v19 = *(result + 8);
      v20 = *(result + 9);
      v21 = result[1];
      v23 = result[2];
    }

    v26 = v19 >> 8;
    v27 = v20 - 8;
    *(result + 8) = v26;
    *(result + 9) = v27;
    result[2] = v23 + 1;
    if (v23 < v21)
    {
      v28 = *result;
      v29 = result[3];
      result[3] = v29 + 1;
      *(v28 + v29) = v26;
      v26 = *(result + 8);
      v27 = *(result + 9);
    }

    v19 = v26 >> 8;
    v20 = v27 - 8;
    *(result + 8) = v19;
    *(result + 9) = v20;
  }

  if (a5)
  {
    v30 = __clz(a3 | a2);
    v31 = v19 | ((31 - v30) << v20);
    v32 = v20 + 4;
    *(result + 8) = v31;
    *(result + 9) = v20 + 4;
    if (v20 >= 13)
    {
      v33 = result[1];
      v34 = result[2];
      v35 = v34 + 1;
      result[2] = v34 + 1;
      if (v34 < v33)
      {
        v36 = *result;
        v37 = result[3];
        result[3] = v37 + 1;
        *(v36 + v37) = v31;
        v31 = *(result + 8);
        v32 = *(result + 9);
        v33 = result[1];
        v35 = result[2];
      }

      v38 = v31 >> 8;
      v39 = v32 - 8;
      *(result + 8) = v38;
      *(result + 9) = v39;
      result[2] = v35 + 1;
      if (v35 < v33)
      {
        v40 = *result;
        v41 = result[3];
        result[3] = v41 + 1;
        *(v40 + v41) = v38;
        v38 = *(result + 8);
        v39 = *(result + 9);
      }

      v31 = v38 >> 8;
      v32 = v39 - 8;
    }

    v42 = 32 - v30;
    v43 = v31 | (a2 << v32);
    v44 = v32 + v42;
    *(result + 8) = v43;
    *(result + 9) = v32 + v42;
    if ((v32 + v42) >= 17)
    {
      v45 = result[1];
      v46 = result[2];
      v47 = v46 + 1;
      result[2] = v46 + 1;
      if (v46 < v45)
      {
        v48 = *result;
        v49 = result[3];
        result[3] = v49 + 1;
        *(v48 + v49) = v43;
        v43 = *(result + 8);
        v44 = *(result + 9);
        v45 = result[1];
        v47 = result[2];
      }

      v50 = v43 >> 8;
      v51 = v44 - 8;
      *(result + 8) = v50;
      *(result + 9) = v51;
      result[2] = v47 + 1;
      if (v47 < v45)
      {
        v52 = *result;
        v53 = result[3];
        result[3] = v53 + 1;
        *(v52 + v53) = v50;
        v50 = *(result + 8);
        v51 = *(result + 9);
      }

      v43 = v50 >> 8;
      v44 = v51 - 8;
    }

    v54 = v43 | (a3 << v44);
    v55 = v44 + v42;
    *(result + 8) = v54;
    *(result + 9) = v55;
    if (v55 >= 17)
    {
      v56 = result[1];
      v57 = result[2];
      v58 = v57 + 1;
      result[2] = v57 + 1;
      if (v57 < v56)
      {
        v59 = *result;
        v60 = result[3];
        result[3] = v60 + 1;
        *(v59 + v60) = v54;
        v54 = *(result + 8);
        v55 = *(result + 9);
        v56 = result[1];
        v58 = result[2];
      }

      v61 = v54 >> 8;
      v62 = v55 - 8;
      *(result + 8) = v61;
      *(result + 9) = v62;
      result[2] = v58 + 1;
      if (v58 < v56)
      {
        v63 = *result;
        v64 = result[3];
        result[3] = v64 + 1;
        *(v63 + v64) = v61;
        v61 = *(result + 8);
        v62 = *(result + 9);
      }

      v54 = v61 >> 8;
      v55 = v62 - 8;
    }

    v65 = v54 | ((a4 - 1) << v55);
    v66 = v55 + 5;
    *(result + 8) = v65;
    *(result + 9) = v55 + 5;
    if (v55 >= 12)
    {
      v67 = result[1];
      v68 = result[2];
      v69 = v68 + 1;
      result[2] = v68 + 1;
      if (v68 < v67)
      {
        v70 = *result;
        v71 = result[3];
        result[3] = v71 + 1;
        *(v70 + v71) = v65;
        v65 = *(result + 8);
        v66 = *(result + 9);
        v67 = result[1];
        v69 = result[2];
      }

      v72 = v65 >> 8;
      v73 = v66 - 8;
      *(result + 8) = v72;
      *(result + 9) = v73;
      result[2] = v69 + 1;
      if (v69 < v67)
      {
        v74 = *result;
        v75 = result[3];
        result[3] = v75 + 1;
        *(v74 + v75) = v72;
        v72 = *(result + 8);
        v73 = *(result + 9);
      }

      *(result + 8) = v72 >> 8;
      *(result + 9) = v73 - 8;
    }
  }

  return result;
}

void *touchpadCodecCreate(int a1, int a2, int a3, int a4, uint64_t a5)
{
  v5 = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3 == 16 && !a4 && !a5)
      {
        v8 = calloc(1uLL, 0x2A8uLL);
        v5 = v8;
        if (v8)
        {
          v8[81] = (a2 * a1);
          v8[80] = 2 * (a2 * a1);
          v8[82] = 0;
          *(v8 + 166) = a1;
          *(v8 + 167) = a2;
          *(v8 + 672) = 16;
          v9 = malloc(2 * (a2 * a1));
          v5[79] = v9;
          if (v9)
          {
            bzero(v9, 2 * (a2 * a1));
            for (i = 0; i != 630; i += 10)
            {
              v11 = v5 + i;
              *v11 = 32;
              *(v11 + 4) = 261;
            }

            v5[82] = 0;
          }

          else
          {
            free(v5);
            return 0;
          }
        }
      }
    }
  }

  return v5;
}

void codecResetModel(uint64_t a1)
{
  bzero(*(a1 + 632), *(a1 + 640));
  v2 = a1 + 9;
  v3 = 63;
  do
  {
    *(v2 - 9) = 32;
    *(v2 - 1) = 261;
    v2 += 10;
    --v3;
  }

  while (v3);
  *(a1 + 656) = 0;
}

void touchpadCodecDestroy(void **a1)
{
  if (a1)
  {
    free(a1[79]);

    free(a1);
  }
}

uint64_t codecGetFooterID(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  do
  {
    v2 = *(a1 + v1) ^ __ROR4__(v2, 31);
    v1 += 10;
  }

  while (v1 != 630);
  return (-1640531535 * v2) >> 20;
}

double lzx_decoder_init(void *a1)
{
  bzero(a1 + 1, 0x807E8uLL);
  *(a1 + 2) = 1;
  *&result = 0x100000001;
  *a1 = 0x100000001;
  a1[16448] = 496;
  a1[32895] = 249;
  a1[49342] = 8;
  return result;
}

uint64_t brotli_decode_buffer(uint64_t a1, uint64_t a2)
{
  if (BrotliDecoderDecompress())
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

unint64_t brotli_encode_buffer(_BYTE *a1, unint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, int a6)
{
  v7 = a2;
  if (BrotliEncoderCompress(a6, 22, 0, a4, a3, &v7, a1))
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

unint64_t yzip_plane_encoder_allocate(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  format_convert_at_once = get_format_convert_at_once(a5);
  format_process_at_once = get_format_process_at_once(a5);
  v14 = a4 * a2 + 16;
  v15 = v14 * format_process_at_once;
  a1[8] = 0;
  v16 = v14 * format_convert_at_once;
  v17 = (((a6 + 15) | 0xE) + 2 * v16) & 0xFFFFFFFFFFFFFFF0;
  v18 = (v17 + 2 * v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  *a1 = v18;
  a1[1] = ((a6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v19 = (v18 + 2 * v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  a1[2] = v17 + 16;
  a1[3] = v19;
  v15 += 15;
  v20 = (v15 + v19) & 0xFFFFFFFFFFFFFFF0;
  v21 = (v15 + v20) & 0xFFFFFFFFFFFFFFF0;
  a1[4] = v20;
  a1[5] = v21;
  v22 = (v21 + 1039) & 0xFFFFFFFFFFFFFFF0;
  v23 = (v22 + 15999) & 0xFFFFFFFFFFFFFFF0;
  result = v23 + 4 * a4 * a2 * a3;
  a1[6] = v22;
  a1[7] = v23;
  return result;
}

unint64_t yzip_plane_decoder_allocate(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v7 = (((a5 + 15) | 0xE) + (2 * a3 * a2 + 32) * get_format_convert_at_once(a4)) & 0xFFFFFFFFFFFFFFF0;
  *a1 = ((a5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  a1[1] = v7;
  return v7 + 1024;
}

uint64_t yzip_plane_encoder_phase1(uint64_t a1)
{
  v119[0] = 0;
  v119[1] = 0;
  v2 = *(*(a1 + 24) + 16);
  v3 = *(*(a1 + 32) + 9);
  format_convert_at_once = get_format_convert_at_once(v2);
  format_process_at_once = get_format_process_at_once(v2);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(*(a1 + 32) + 8);
  v111 = is_format_msb_layout(v2);
  result = 0xFFFFFFFFLL;
  if (!v4 || !v5 || (v6 - 17) < 0xF7u)
  {
    return result;
  }

  get_conversion_set(v119, v2, v6, v3);
  if (!v119[0])
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 144) & 0xFFFFFFFFFFFFFFFCLL;
  if ((v8 - 10) < 5)
  {
    return 0xFFFFFFFFLL;
  }

  v105 = (v4 * v3 * format_process_at_once);
  v9 = (v105 + 2) + 15;
  v10 = *(a1 + 96);
  v98 = a1;
  v109 = *(a1 + 104);
  v110 = v9 & 0x1FFFFFFF0;
  v11 = v109 + v8;
  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v12 = v4 + (v5 << 16);
  *(v109 + v8 - 4) = v12;
  v103 = v6 - 1;
  v13 = v103 + HIDWORD(v12);
  v97 = v5;
  yzip_plane_encoder_allocate(&v120, v4, v5, v3, v2, v10);
  v14 = *(&v122 + 1);
  *&v15 = -1;
  *(&v15 + 1) = -1;
  **(&v122 + 1) = v15;
  v14[1] = v15;
  v14[2] = v15;
  v14[3] = v15;
  v14[4] = v15;
  v14[5] = v15;
  v14[6] = v15;
  v14[7] = v15;
  v14[8] = v15;
  v14[9] = v15;
  v14[10] = v15;
  v14[11] = v15;
  v14[12] = v15;
  v14[13] = v15;
  v14[14] = v15;
  v14[15] = v15;
  v14[16] = v15;
  v14[17] = v15;
  v14[18] = v15;
  v14[19] = v15;
  v14[20] = v15;
  v14[21] = v15;
  v14[22] = v15;
  v14[23] = v15;
  v14[24] = v15;
  v14[25] = v15;
  v14[26] = v15;
  v14[27] = v15;
  v14[28] = v15;
  v14[29] = v15;
  v14[30] = v15;
  v14[31] = v15;
  v102 = v14 + 32;
  *&v15 = 0x101010101010101;
  *(&v15 + 1) = 0x101010101010101;
  v14[62] = v15;
  v14[63] = v15;
  v14[60] = v15;
  v14[61] = v15;
  v14[58] = v15;
  v14[59] = v15;
  v14[56] = v15;
  v14[57] = v15;
  v14[54] = v15;
  v14[55] = v15;
  v14[52] = v15;
  v14[53] = v15;
  v14[50] = v15;
  v14[51] = v15;
  v14[48] = v15;
  v14[49] = v15;
  v14[46] = v15;
  v14[47] = v15;
  v14[44] = v15;
  v14[45] = v15;
  v14[42] = v15;
  v14[43] = v15;
  v14[40] = v15;
  v14[41] = v15;
  v14[38] = v15;
  v14[39] = v15;
  v14[36] = v15;
  v14[37] = v15;
  v14[34] = v15;
  v14[35] = v15;
  v16 = v14 + 477;
  v17 = -35;
  v14[32] = v15;
  v14[33] = v15;
  v18 = 71;
  do
  {
    *v16++ = quantize_slow(v17++);
    --v18;
  }

  while (v18);
  v104 = v123;
  bzero(v123, 0x3E70uLL);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0u;
  LODWORD(v124) = 0;
  v23 = (*(&v120 + 1) - 4);
  *(*(&v120 + 1) - 6) = 0;
  v96 = v11;
  v24 = (v11 - 8);
  v100 = 16 - v6;
  v108 = v6;
  v25 = 32 - v6;
  v107 = (2 * v9) & 0x3FFFFFFE0;
  v26 = 4;
  v27 = format_convert_at_once;
  v101 = v25;
  do
  {
    v99 = v21;
    v115 = *(&v120 + (v21 & 1) + 1);
    (v119[0])();
    v28 = v27;
    if (v27)
    {
      LODWORD(v29) = 0;
      v31 = *(&v121 + 1);
      v30 = v122;
      v32 = v120;
      v34 = v104;
      v33 = v105;
      v36 = v102;
      v35 = v103;
      v37 = v101;
      v38.i64[0] = 0x22002200220022;
      v38.i64[1] = 0x22002200220022;
      v39.i64[0] = 0x23002300230023;
      v39.i64[1] = 0x23002300230023;
      v40.i64[0] = 0xFFFF0000FFFFLL;
      v40.i64[1] = 0xFFFF0000FFFFLL;
      v41.i64[0] = 0x1000000010000;
      v41.i64[1] = 0x1000000010000;
      v42.i64[0] = 0x2200000022;
      v42.i64[1] = 0x2200000022;
      v43.i64[0] = 0x2300000023;
      v43.i64[1] = 0x2300000023;
      v44.i64[0] = 0x4700000047;
      v44.i64[1] = 0x4700000047;
      v117 = v120;
      v118 = v122;
      while (1)
      {
        if (v24 + -((v26 + 31) >> 3) - v109 - 3 < v33)
        {
          return 0xFFFFFFFFLL;
        }

        v114 = v29;
        v29 = v29;
        v45 = (v115 + 2 * v110 * v29);
        v116 = v45;
        if (v111)
        {
          v112 = v29;
          convert_row_to_lsb(v45, v33, v100);
          v29 = v112;
          v45 = v116;
          v32 = v117;
          v30 = v118;
          v44.i64[0] = 0x4700000047;
          v44.i64[1] = 0x4700000047;
          v43.i64[0] = 0x2300000023;
          v43.i64[1] = 0x2300000023;
          v42.i64[0] = 0x2200000022;
          v42.i64[1] = 0x2200000022;
          v41.i64[0] = 0x1000000010000;
          v41.i64[1] = 0x1000000010000;
          v40.i64[0] = 0xFFFF0000FFFFLL;
          v40.i64[1] = 0xFFFF0000FFFFLL;
          v39.i64[0] = 0x23002300230023;
          v39.i64[1] = 0x23002300230023;
          v38.i64[0] = 0x22002200220022;
          v38.i64[1] = 0x22002200220022;
          v37 = v101;
          v36 = v102;
          v35 = v103;
          v34 = v104;
          v33 = v105;
          v28 = format_convert_at_once;
        }

        v46 = (v115 + v107 * v29);
        v45[-1].i16[7] = *v23;
        v45->i16[v33] = v45->i16[(v105 - 1)];
        if (v108 >= 0xF)
        {
          v56 = 0;
          v57 = v32;
          do
          {
            v58 = *(v23 - 1);
            v59 = *v23;
            v23 += 8;
            v60 = v59;
            v61 = *(v46 - 2);
            v62 = *v46++;
            v63 = vsubl_u16(*v60.i8, *v58.i8);
            v64 = vsubl_high_u16(v60, v58);
            v65 = vaddw_high_u16(v64, v61);
            v66 = vaddw_u16(v63, *v61.i8);
            v67 = vuzp1q_s16(vorrq_s8(vcgtq_s32(v66, v40), vminq_u32(v66, v41)), vorrq_s8(vcgtq_s32(v65, v40), vminq_u32(v65, v41)));
            *&v31[v56] = vmovn_s16(vuzp1q_s16(vorrq_s8(vorrq_s8((*&vcgtq_s32(v42, v63) & __PAIR128__(0xFFFFFFDDFFFFFFDDLL, 0xFFFFFFDDFFFFFFDDLL)), vandq_s8(vcgtq_s32(v63, v43), v43)), vandq_s8(v63, vcgtq_u32(v44, vaddq_s32(v63, v43)))), vorrq_s8(vorrq_s8((*&vcgtq_s32(v42, v64) & __PAIR128__(0xFFFFFFDDFFFFFFDDLL, 0xFFFFFFDDFFFFFFDDLL)), vandq_s8(vcgtq_s32(v64, v43), v43)), vandq_s8(v64, vcgtq_u32(v44, vaddq_s32(v64, v43))))));
            v68 = vsubl_high_u16(v61, v58);
            v69 = vsubl_u16(*v61.i8, *v58.i8);
            *(v30 + v56) = vmovn_s16(vuzp1q_s16(vorrq_s8(vorrq_s8((*&vcgtq_s32(v42, v69) & __PAIR128__(0xFFFFFFDDFFFFFFDDLL, 0xFFFFFFDDFFFFFFDDLL)), vandq_s8(vcgtq_s32(v69, v43), v43)), vandq_s8(v69, vcgtq_u32(v44, vaddq_s32(v69, v43)))), vorrq_s8(vorrq_s8((*&vcgtq_s32(v42, v68) & __PAIR128__(0xFFFFFFDDFFFFFFDDLL, 0xFFFFFFDDFFFFFFDDLL)), vandq_s8(vcgtq_s32(v68, v43), v43)), vandq_s8(v68, vcgtq_u32(v44, vaddq_s32(v68, v43))))));
            *v57++ = vsubq_s16(vaddq_s16(vaddq_s16(vsubq_s16(v62, vaddq_s16(v61, v60)), vminq_u16(vminq_u16(v61, v60), v67)), vmaxq_u16(vmaxq_u16(v61, v60), v67)), v67);
            v56 += 8;
          }

          while (v56 <= v33);
        }

        else
        {
          v47 = 0;
          v48 = v32;
          do
          {
            v49 = *(v23 - 1);
            v50 = *v23;
            v23 += 8;
            v51 = v50;
            v52 = *(v46 - 2);
            v53 = *v46++;
            v54 = vsubq_s16(v51, v49);
            v55 = vaddq_s16(v54, v52);
            *&v31[v47] = vmovn_s16(vminq_s16(vmaxq_s16(v54, v38), v39));
            *(v30 + v47) = vmovn_s16(vminq_s16(vmaxq_s16(vsubq_s16(v52, v49), v38), v39));
            *v48++ = vaddq_s16(vsubq_s16(v53, vaddq_s16(vaddq_s16(v52, v51), v55)), vaddq_s16(vminq_s16(vminq_s16(v52, v51), v55), vmaxq_s16(vmaxq_s16(v52, v51), v55)));
            v47 += 8;
          }

          while (v47 <= v33);
        }

        if (v33)
        {
          break;
        }

LABEL_44:
        LODWORD(v29) = v114 + 1;
        v88 = v116;
        v23 = v116;
        if ((v114 + 1) * format_process_at_once >= v28)
        {
          goto LABEL_47;
        }
      }

      v70 = 0;
      v71 = *(v36 + *v31);
      v72 = *(&v123 + 1);
      while (1)
      {
        v73 = v70 + 1;
        v74 = *(v36 + v31[v70 + 1]);
        v75 = *(v36 + *(v30 + v70)) + 11 * (v74 + 11 * v71);
        v76 = v32->i16[v70];
        if (v75 >= 0)
        {
          v77 = v75;
        }

        else
        {
          v77 = -v75;
        }

        if (v75 < 0)
        {
          v76 = -v76;
        }

        if (!v20 && v75)
        {
          goto LABEL_39;
        }

        if (v76)
        {
          break;
        }

        ++v20;
LABEL_43:
        v70 = v73;
        v71 = v74;
        if (v73 == v33)
        {
          goto LABEL_44;
        }
      }

      v78 = lut_rle[v22];
      if (v20 >> v78)
      {
        v79 = &lut_rle[v22 + 1];
        do
        {
          *v24 = v13;
          v13 = (v13 >> (v26 & 0x20)) + (1 << (v26 & 0x1F));
          v80 = (v26 & 0x1F) + 1;
          v24 -= v26 >> 5;
          v20 += -1 << v78;
          v81 = *v79++;
          v78 = v81;
          ++v22;
          v26 = v80;
        }

        while (v20 >> v81);
      }

      else
      {
        v80 = v26;
      }

      v76 += (v76 >> v35) & 1;
      *v24 = v13;
      v13 = ((2 * v20) << (v80 & 0x1F)) + (v13 >> (v80 & 0x20));
      v19 = v124;
      v26 = (v80 & 0x1F) + v78 + 1;
      v24 -= v80 >> 5;
      v22 = v22 - 1 + ((v22 - 1) >> 31);
      v32 = v117;
      v30 = v118;
LABEL_39:
      v20 = 0;
      v82 = v76 << v37;
      *(v72 + 4 * v19) = v82 + v77;
      v83 = v34 + 24 * v77;
      v84 = v82 >> v37;
      if (v84 >= 0)
      {
        v85 = v84;
      }

      else
      {
        v85 = -v84;
      }

      v86 = *(v83 + 8);
      v87 = *v83 + v85;
      LODWORD(v124) = ++v19;
      *v83 = v87;
      *(v83 + 8) = v86 + v84;
      ++*(v83 + 16);
      goto LABEL_43;
    }

    v88 = v23;
LABEL_47:
    v21 = v99 + 1;
    v23 = v88;
    v27 = v28;
  }

  while ((v99 + 1) * v28 < v97);
  if (v20)
  {
    v89 = lut_rle[v22];
    v90 = v96;
    v91 = v104;
    v92 = v98;
    if (v20 >> v89)
    {
      v93 = &lut_rle[v22 + 1];
      do
      {
        *v24 = v13;
        v13 = (v13 >> (v26 & 0x20)) + (1 << (v26 & 0x1F));
        v94 = (v26 & 0x1F) + 1;
        v24 -= v26 >> 5;
        v20 += -1 << v89;
        v95 = *v93++;
        v89 = v95;
        v26 = v94;
      }

      while (v20 >> v95);
    }

    else
    {
      v94 = v26;
    }

    *v24 = v13;
    v13 = ((2 * v20) << (v94 & 0x1F)) + (v13 >> (v94 & 0x20));
    v26 = (v94 & 0x1F) + v89 + 1;
    v24 -= v94 >> 5;
    v19 = v124;
  }

  else
  {
    v90 = v96;
    v91 = v104;
    v92 = v98;
  }

  result = 0;
  *(v92 + 40) = 0;
  *(v92 + 48) = v13;
  *(v92 + 56) = 0;
  *(v92 + 60) = v26;
  *(v92 + 64) = v109;
  *(v92 + 72) = v90;
  *(v92 + 80) = v24;
  *(v92 + 88) = v109;
  *(v92 + 112) = v91;
  *(v92 + 128) = *(&v123 + 1);
  *(v92 + 136) = v19;
  return result;
}

uint64_t yzip_plane_encoder_phase2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 60);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v8 = *(a1 + 80);
  v7 = *(a1 + 88);
  v9 = *(a1 + 136);
  if (v9)
  {
    v10 = 0;
    v11 = 32 - *(*(a1 + 32) + 8);
    v12 = *(a1 + 120);
    v13 = *(a1 + 128);
    v14 = (v4 + 31) >> 3;
    while (1)
    {
      v15 = v8 - (v5 + v14 + ((v3 + 31) >> 3));
      if (v15 < 32)
      {
        return -1;
      }

      v16 = v10 + (v15 >> 2);
      if (v16 >= v9)
      {
        v16 = v9;
      }

      if (v10 + 8 <= v16)
      {
        do
        {
          v17 = *(v13 + 4 * v10);
          v18 = (v12 + 4 * v17);
          v19 = ((v17 >> v11) - *v18) << v11 >> v11;
          v20 = (2 * v19) ^ ~(~(2 * v19) >> 31);
          v21 = *(v18 + 2);
          v22 = v20 >> v21;
          v23 = v3 & 0x1F;
          if (v20 >> v21 > 0xF)
          {
            v24 = (v20 + (-16 << v21)) << 16;
            v25 = v23 + *(v18 + 3) + 16;
          }

          else
          {
            v24 = ((2 * (v20 & ~(-1 << v21))) | 1) << v22;
            v25 = v23 + v21 + v22 + 1;
          }

          *v5 = v1;
          v26 = *(v13 + 4 * (v10 + 1));
          v27 = (v12 + 4 * v26);
          v28 = ((v26 >> v11) - *v27) << v11 >> v11;
          v29 = (2 * v28) ^ ~(~(2 * v28) >> 31);
          v30 = *(v27 + 2);
          v31 = v29 >> v30;
          v32 = v25 & 0x1F;
          if (v29 >> v30 > 0xF)
          {
            v33 = (v29 + (-16 << v30)) << 16;
            v34 = v32 + *(v27 + 3) + 16;
          }

          else
          {
            v33 = ((2 * (v29 & ~(-1 << v30))) | 1) << v31;
            v34 = v32 + v30 + v31 + 1;
          }

          v35 = (v24 << v23) + (v1 >> (v3 & 0x20));
          v36 = &v5[v3 >> 5];
          *v36 = v35;
          v37 = *(v13 + 4 * (v10 + 2));
          v38 = (v12 + 4 * v37);
          v39 = ((v37 >> v11) - *v38) << v11 >> v11;
          v40 = (2 * v39) ^ ~(~(2 * v39) >> 31);
          v41 = *(v38 + 2);
          v42 = v40 >> v41;
          v43 = v34 & 0x1F;
          if (v40 >> v41 > 0xF)
          {
            v44 = (v40 + (-16 << v41)) << 16;
            v45 = v43 + *(v38 + 3) + 16;
          }

          else
          {
            v44 = ((2 * (v40 & ~(-1 << v41))) | 1) << v42;
            v45 = v43 + v41 + v42 + 1;
          }

          v46 = (v33 << v32) + (v35 >> (v25 & 0x20));
          v47 = &v36[v25 >> 5];
          *v47 = v46;
          v48 = *(v13 + 4 * (v10 + 3));
          v49 = (v12 + 4 * v48);
          v50 = ((v48 >> v11) - *v49) << v11 >> v11;
          v51 = (2 * v50) ^ ~(~(2 * v50) >> 31);
          v52 = *(v49 + 2);
          v53 = v51 >> v52;
          v54 = v45 & 0x1F;
          if (v51 >> v52 > 0xF)
          {
            v55 = (v51 + (-16 << v52)) << 16;
            v56 = v54 + *(v49 + 3) + 16;
          }

          else
          {
            v55 = ((2 * (v51 & ~(-1 << v52))) | 1) << v53;
            v56 = v54 + v52 + v53 + 1;
          }

          v57 = (v44 << v43) + (v46 >> (v34 & 0x20));
          v58 = &v47[v34 >> 5];
          *v58 = v57;
          v59 = *(v13 + 4 * (v10 + 4));
          v60 = (v12 + 4 * v59);
          v61 = ((v59 >> v11) - *v60) << v11 >> v11;
          v62 = (2 * v61) ^ ~(~(2 * v61) >> 31);
          v63 = *(v60 + 2);
          v64 = v62 >> v63;
          v65 = v56 & 0x1F;
          if (v62 >> v63 > 0xF)
          {
            v66 = (v62 + (-16 << v63)) << 16;
            v67 = v65 + *(v60 + 3) + 16;
          }

          else
          {
            v66 = ((2 * (v62 & ~(-1 << v63))) | 1) << v64;
            v67 = v65 + v63 + v64 + 1;
          }

          v68 = (v55 << v54) + (v57 >> (v45 & 0x20));
          v69 = &v58[v45 >> 5];
          *v69 = v68;
          v70 = *(v13 + 4 * (v10 + 5));
          v71 = (v12 + 4 * v70);
          v72 = ((v70 >> v11) - *v71) << v11 >> v11;
          v73 = (2 * v72) ^ ~(~(2 * v72) >> 31);
          v74 = *(v71 + 2);
          v75 = v73 >> v74;
          v76 = v67 & 0x1F;
          if (v73 >> v74 > 0xF)
          {
            v77 = (v73 + (-16 << v74)) << 16;
            v78 = v76 + *(v71 + 3) + 16;
          }

          else
          {
            v77 = ((2 * (v73 & ~(-1 << v74))) | 1) << v75;
            v78 = v76 + v74 + v75 + 1;
          }

          v79 = (v66 << v65) + (v68 >> (v56 & 0x20));
          v80 = &v69[v56 >> 5];
          *v80 = v79;
          v81 = *(v13 + 4 * (v10 + 6));
          v82 = (v12 + 4 * v81);
          v83 = ((v81 >> v11) - *v82) << v11 >> v11;
          v84 = (2 * v83) ^ ~(~(2 * v83) >> 31);
          v85 = *(v82 + 2);
          v86 = v84 >> v85;
          v87 = v78 & 0x1F;
          if (v84 >> v85 > 0xF)
          {
            v88 = (v84 + (-16 << v85)) << 16;
            v89 = v87 + *(v82 + 3) + 16;
          }

          else
          {
            v88 = ((2 * (v84 & ~(-1 << v85))) | 1) << v86;
            v89 = v87 + v85 + v86 + 1;
          }

          v90 = (v77 << v76) + (v79 >> (v67 & 0x20));
          v91 = &v80[v67 >> 5];
          *v91 = v90;
          v92 = *(v13 + 4 * (v10 + 7));
          v93 = (v12 + 4 * v92);
          v94 = ((v92 >> v11) - *v93) << v11 >> v11;
          v95 = (2 * v94) ^ ~(~(2 * v94) >> 31);
          v96 = *(v93 + 2);
          v97 = v95 >> v96;
          v98 = v89 & 0x1F;
          if (v95 >> v96 > 0xF)
          {
            v99 = (v95 + (-16 << v96)) << 16;
            v3 = v98 + *(v93 + 3) + 16;
          }

          else
          {
            v99 = ((2 * (v95 & ~(-1 << v96))) | 1) << v97;
            v3 = v98 + v96 + v97 + 1;
          }

          v100 = (v88 << v87) + (v90 >> (v78 & 0x20));
          v101 = &v91[v78 >> 5];
          v1 = (v99 << v98) + (v100 >> (v89 & 0x20));
          *v101 = v100;
          LODWORD(v100) = v89 >> 5;
          v102 = v10 + 16;
          v10 += 8;
          v5 = &v101[v100];
        }

        while (v102 <= v16);
      }

      if (v10 < v16)
      {
        v103 = v10;
        v104 = (v13 + 4 * v10);
        v105 = v103 - v16;
        do
        {
          v106 = *v104++;
          v107 = (v12 + 4 * v106);
          v108 = ((v106 >> v11) - *v107) << v11 >> v11;
          v109 = (2 * v108) ^ ~(~(2 * v108) >> 31);
          v110 = *(v107 + 2);
          v111 = v109 >> v110;
          v112 = v3 & 0x1F;
          if (v109 >> v110 > 0xF)
          {
            v113 = (v109 + (-16 << v110)) << 16;
            v114 = v112 + *(v107 + 3) + 16;
          }

          else
          {
            v113 = ((2 * (v109 & ~(-1 << v110))) | 1) << v111;
            v114 = v112 + v110 + v111 + 1;
          }

          v115 = (v113 << v112) + (v1 >> (v3 & 0x20));
          *v5 = v1;
          v5 += v3 >> 5;
          v3 = v114;
          v1 = v115;
        }

        while (!__CFADD__(v105++, 1));
        v1 = v115;
        v3 = v114;
        v10 = v16;
      }

      if (v10 >= v9)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    LODWORD(v14) = (v4 + 31) >> 3;
LABEL_43:
    *v5 = v1;
    *(v8 - 1) = HIDWORD(v2);
    *v8 = v2;
    v117 = (v3 + 7) >> 3;
    v118 = v5 + v117 - v7;
    v119 = v6 - v8 + (v14 & 0x1FFFFFFC) - 4;
    if (v119 >= 4 || (v118 & 3) == 0)
    {
      v121 = v5 + v117 - v7;
    }

    else
    {
      v121 = (v118 & 0xFFFFFFFFFFFFFFFCLL) + 4;
    }

    memmove((v7 + v121), (v6 - v119), v119);
    return v121 + v119;
  }
}

uint64_t yzip_plane_decoder(uint64_t a1)
{
  v108 = 0;
  v109 = 0;
  v93 = *(a1 + 120);
  v2 = *(*(a1 + 24) + 16);
  v3 = *(*(a1 + 32) + 9);
  format_convert_at_once = get_format_convert_at_once(v2);
  format_process_at_once = get_format_process_at_once(v2);
  v4 = *(a1 + 16);
  v94 = *(a1 + 20);
  v5 = *(*(a1 + 32) + 8);
  v6 = is_format_msb_layout(v2);
  get_conversion_set(&v108, v2, v5, v3);
  if (!v109)
  {
    return -1;
  }

  v7 = *(a1 + 104);
  v8 = *(a1 + 144);
  v9 = v8 + v7;
  if (v8 >= 4)
  {
    v11 = v9 - 4;
    v10 = *(v9 - 4);
  }

  else
  {
    v10 = 0;
    v11 = v8 + v7;
  }

  if (v4 != v10)
  {
    return -1;
  }

  v12 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v13 = v9 - v12;
  if (v11 <= v9 - v12)
  {
    v14 = 0;
  }

  else
  {
    v15 = *(v11 - 4);
    v11 -= 4;
    v14 = v15;
  }

  if (v94 != (v10 >> 16))
  {
    return -1;
  }

  if (v11 <= v13)
  {
    v17 = 0;
  }

  else
  {
    v16 = *(v11 - 4);
    v11 -= 4;
    v17 = v16 << 32;
  }

  if ((v14 & 0xF) != v5 - 1)
  {
    return -1;
  }

  v90 = v5;
  v92 = v4 * v3;
  v104 = v92 * format_process_at_once;
  v18 = *(a1 + 104);
  v103 = v7 + v12;
  v19 = (v17 | v14) >> 4;
  v99 = a1;
  v20 = *(a1 + 96);
  v21 = ((((v20 + 15) | 0xE) + (2 * v3 * v4 + 32) * get_format_convert_at_once(v2)) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = -1;
  *(&v22 + 1) = -1;
  *v21 = v22;
  v21[1] = v22;
  v21[2] = v22;
  v21[3] = v22;
  v23 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21[4] = v22;
  v21[5] = v22;
  v21[6] = v22;
  v21[7] = v22;
  v21[8] = v22;
  v21[9] = v22;
  v21[10] = v22;
  v21[11] = v22;
  v21[12] = v22;
  v21[13] = v22;
  v21[14] = v22;
  v21[15] = v22;
  v21[16] = v22;
  v21[17] = v22;
  v21[18] = v22;
  v21[19] = v22;
  v21[20] = v22;
  v21[21] = v22;
  v21[22] = v22;
  v21[23] = v22;
  v21[24] = v22;
  v21[25] = v22;
  v21[26] = v22;
  v21[27] = v22;
  v21[28] = v22;
  v21[29] = v22;
  v21[30] = v22;
  v21[31] = v22;
  *&v22 = 0x101010101010101;
  *(&v22 + 1) = 0x101010101010101;
  v21[62] = v22;
  v21[63] = v22;
  v21[60] = v22;
  v21[61] = v22;
  v21[58] = v22;
  v21[59] = v22;
  v21[56] = v22;
  v21[57] = v22;
  v21[54] = v22;
  v21[55] = v22;
  v21[52] = v22;
  v21[53] = v22;
  v21[50] = v22;
  v21[51] = v22;
  v21[48] = v22;
  v21[49] = v22;
  v21[46] = v22;
  v21[47] = v22;
  v21[44] = v22;
  v21[45] = v22;
  v21[42] = v22;
  v21[43] = v22;
  v21[40] = v22;
  v21[41] = v22;
  v21[38] = v22;
  v21[39] = v22;
  v21[36] = v22;
  v21[37] = v22;
  v21[34] = v22;
  v21[35] = v22;
  v24 = v21 + 477;
  v25 = -35;
  v26 = 71;
  v21[32] = v22;
  v21[33] = v22;
  v107 = v21;
  do
  {
    *v24++ = quantize_slow(v25++);
    --v26;
  }

  while (v26);
  *(((v20 + 15) & 0xFFFFFFFFFFFFFFF0) + 0xA) = 0;
  *(((v20 + 15) & 0xFFFFFFFFFFFFFFF0) + 0xE) = 0;
  v28 = v92;
  v27 = v93;
  v29 = format_convert_at_once;
  if (v94)
  {
    v30 = v18;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v106 = 0;
    v34 = 0;
    v101 = v23 + 16;
    v35 = (v23 + 12);
    if (v6)
    {
      v36 = format_convert_at_once == 0;
    }

    else
    {
      v36 = 1;
    }

    v37 = v36;
    v91 = v37;
    v38 = 60;
    v39 = -1;
    do
    {
      v97 = v31;
      v95 = v32;
      v105 = v34;
      if (v29)
      {
        v40 = 0;
        v41 = *(v35 - 1);
        v42 = v35;
        v43 = (v92 * format_process_at_once);
        do
        {
          v44 = *v42;
          v45 = v44 - v41 + 512;
          if (v45 > 0x3FF)
          {
            v46 = ((v44 - v41) >> 31) | 1;
          }

          else
          {
            v46 = *(v107 + v45);
          }

          v35 = (v101 + 2 * (((v104 + 2) + 15) & 0x1FFFFFFF0) * v40);
          if (v43)
          {
            v47 = 0;
            v48 = *v42;
            v49 = v48;
            do
            {
              v50 = v49;
              v51 = v47 + 1;
              v49 = v42[v47 + 1];
              v52 = v49 - v50 + 512;
              if (v52 > 0x3FF)
              {
                v53 = ((v49 - v50) >> 31) | 1;
              }

              else
              {
                v53 = *(v107 + v52);
              }

              v54 = v48 - v41;
              v55 = v48 - v41 + 512;
              if (v55 > 0x3FF)
              {
                v56 = (v54 >> 31) | 1;
              }

              else
              {
                v56 = *(v107 + v55);
              }

              v57 = v56 + 11 * (v53 + 11 * v46);
              v58 = v54 + v50;
              if (v54 + v50 <= v50)
              {
                v59 = v50;
              }

              else
              {
                v59 = v54 + v50;
              }

              if (v58 >= v50)
              {
                v58 = v50;
              }

              if (v59 < v48)
              {
                v48 = v59;
              }

              if (v58 > v48)
              {
                v48 = v58;
              }

              if (!v57 && v39 < 0)
              {
                v60 = 0;
                for (i = v33 - 1; ; ++i)
                {
                  if (v38 > 0x20)
                  {
                    v64 = v38;
                  }

                  else
                  {
                    if (v11 <= v13)
                    {
                      v62 = 0;
                    }

                    else
                    {
                      v63 = *(v11 - 4);
                      v11 -= 4;
                      v62 = v63;
                    }

                    v19 += v62 << v38;
                    v64 = v38 + 32;
                  }

                  v65 = v19;
                  v38 = v64 - 1;
                  v19 >>= 1;
                  v66 = lut_rle[v33 & 0x3F];
                  if ((v65 & 1) == 0)
                  {
                    break;
                  }

                  LOBYTE(v33) = v33 + 1;
                  v60 += 1 << v66;
                }

                if (v64 <= 0x21)
                {
                  if (v11 <= v13)
                  {
                    v67 = 0;
                  }

                  else
                  {
                    v68 = *(v11 - 4);
                    v11 -= 4;
                    v67 = v68;
                  }

                  v19 += v67 << v38;
                  v38 = v64 + 31;
                }

                v69 = v19 & ~(-1 << v66);
                v38 -= v66;
                v19 >>= v66;
                v39 = v69 + v60;
                v33 = i + (i >> 31);
              }

              if (v39 <= 0)
              {
                if (v57 >= 0)
                {
                  v70 = v57;
                }

                else
                {
                  v70 = -v57;
                }

                if (v106 > 0x20)
                {
                  v73 = v105;
                }

                else
                {
                  if (v30 >= v103)
                  {
                    v71 = 0;
                  }

                  else
                  {
                    v72 = *v30++;
                    v71 = v72;
                  }

                  v73 = (v71 << v106) + v105;
                  v106 += 32;
                }

                v74 = (v27 + 4 * v70);
                v75 = __clz(__rbit32(v73 | 0x10000));
                if (v75 > 0xF)
                {
                  v80 = *(v74 + 3);
                  v78 = (WORD1(v73) & ~(-1 << v80)) + (16 << *(v74 + 2));
                  v79 = v80 + 16;
                }

                else
                {
                  v76 = v75 + 1;
                  v77 = *(v74 + 2);
                  v43 = (v92 * format_process_at_once);
                  v78 = ((v73 >> (v75 + 1)) & ~(-1 << v77)) + (v75 << v77);
                  v79 = v76 + v77;
                }

                v106 -= v79;
                v105 = v73 >> v79;
                v81 = (((-(v78 & 1) ^ (v78 >> 1)) + *v74) << (32 - v90)) >> (32 - v90);
                if (v39)
                {
                  v82 = 0;
                }

                else
                {
                  v82 = v81 < 1;
                }

                v83 = v82;
                v84 = v81 - v83;
                if (v57 >= 0)
                {
                  v85 = v84;
                }

                else
                {
                  v85 = -v84;
                }

                v48 = (v85 + v48) & ~(-1 << v90);
              }

              --v39;
              v35[v47++] = v48;
              v46 = v53;
              v41 = v50;
            }

            while (v51 != v43);
          }

          v35[v43] = v35[v104 - 1];
          *(v35 - 1) = v44;
          ++v40;
          v41 = v44;
          v42 = v35;
        }

        while (v40 * format_process_at_once < format_convert_at_once);
      }

      v96 = v30;
      v98 = *v99 + v99[1] * v97;
      v109();
      v28 = v92;
      v86 = 16 - v90;
      if ((v91 & 1) == 0)
      {
        v87 = v99;
        v88 = 0;
        do
        {
          convert_row_to_msb((v98 + v87[1] * v88), v92, v86);
          v86 = 16 - v90;
          v87 = v99;
          ++v88;
        }

        while (format_convert_at_once != v88);
      }

      v32 = v95 + 1;
      v29 = format_convert_at_once;
      v31 = (v95 + 1) * format_convert_at_once;
      v27 = v93;
      v30 = v96;
      v34 = v105;
    }

    while (v31 < v94);
  }

  return (v28 * v94) << (v90 > 8);
}

uint64_t quantize_slow(unsigned int a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    return -quantize_slow(-a1);
  }

  if (a1)
  {
    v1 = 5;
  }

  else
  {
    v1 = 0;
  }

  if (a1 <= 1)
  {
    v2 = v1;
  }

  else
  {
    v2 = 4;
  }

  if (a1 <= 4)
  {
    v3 = v2;
  }

  else
  {
    v3 = 3;
  }

  if (a1 <= 0xB)
  {
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  if (a1 <= 0x22)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

uint64_t _tr_stored_block(uint64_t a1, char *a2, int a3, int a4)
{
  v7 = *(a1 + 5924);
  if (v7 < 14)
  {
    *(a1 + 5920) |= a4 << v7;
    v14 = v7 + 3;
  }

  else
  {
    v8 = *(a1 + 5920) | (a4 << v7);
    *(a1 + 5920) = v8;
    v9 = *(a1 + 16);
    v10 = *(a1 + 40);
    *(a1 + 40) = v10 + 1;
    *(v9 + v10) = v8;
    LOBYTE(v8) = *(a1 + 5921);
    v11 = *(a1 + 16);
    v12 = *(a1 + 40);
    *(a1 + 40) = v12 + 1;
    *(v11 + v12) = v8;
    v13 = *(a1 + 5924);
    *(a1 + 5920) = a4 >> (16 - v13);
    v14 = v13 - 13;
  }

  *(a1 + 5924) = v14;
  result = bi_windup(a1);
  *(a1 + 5916) = 8;
  v16 = *(a1 + 16);
  v17 = *(a1 + 40);
  *(a1 + 40) = v17 + 1;
  *(v16 + v17) = a3;
  v18 = *(a1 + 16);
  v19 = *(a1 + 40);
  *(a1 + 40) = v19 + 1;
  *(v18 + v19) = BYTE1(a3);
  v20 = *(a1 + 16);
  v21 = *(a1 + 40);
  *(a1 + 40) = v21 + 1;
  *(v20 + v21) = ~a3;
  v22 = *(a1 + 16);
  v23 = *(a1 + 40);
  *(a1 + 40) = v23 + 1;
  for (*(v22 + v23) = ~a3 >> 8; a3; --a3)
  {
    v24 = *a2++;
    v25 = *(a1 + 16);
    v26 = *(a1 + 40);
    *(a1 + 40) = v26 + 1;
    *(v25 + v26) = v24;
  }

  return result;
}

uint64_t _tr_align(uint64_t a1)
{
  v2 = *(a1 + 5924);
  v3 = *(a1 + 5920);
  v4 = v3 | (2 << v2);
  *(a1 + 5920) = v3 | (2 << v2);
  if (v2 < 14)
  {
    v10 = v2 + 3;
  }

  else
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 40);
    *(a1 + 40) = v6 + 1;
    *(v5 + v6) = v4;
    v7 = *(a1 + 5921);
    v8 = *(a1 + 16);
    v9 = *(a1 + 40);
    *(a1 + 40) = v9 + 1;
    *(v8 + v9) = v7;
    LODWORD(v8) = *(a1 + 5924);
    v4 = 2u >> (16 - v8);
    *(a1 + 5920) = v4;
    v10 = v8 - 13;
  }

  *(a1 + 5924) = v10;
  if (v10 < 10)
  {
    v16 = v10 + 7;
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = *(a1 + 40);
    *(a1 + 40) = v12 + 1;
    *(v11 + v12) = v4;
    v13 = *(a1 + 5921);
    v14 = *(a1 + 16);
    v15 = *(a1 + 40);
    *(a1 + 40) = v15 + 1;
    *(v14 + v15) = v13;
    *(a1 + 5920) = 0;
    v16 = *(a1 + 5924) - 9;
  }

  *(a1 + 5924) = v16;
  result = bi_flush(a1);
  v18 = *(a1 + 5924);
  if (*(a1 + 5916) - v18 + 11 <= 8)
  {
    v19 = *(a1 + 5920);
    v20 = v19 | (2 << v18);
    *(a1 + 5920) = v19 | (2 << v18);
    if (v18 < 14)
    {
      v26 = v18 + 3;
    }

    else
    {
      v21 = *(a1 + 16);
      v22 = *(a1 + 40);
      *(a1 + 40) = v22 + 1;
      *(v21 + v22) = v20;
      v23 = *(a1 + 5921);
      v24 = *(a1 + 16);
      v25 = *(a1 + 40);
      *(a1 + 40) = v25 + 1;
      *(v24 + v25) = v23;
      LODWORD(v24) = *(a1 + 5924);
      v20 = 2u >> (16 - v24);
      *(a1 + 5920) = v20;
      v26 = v24 - 13;
    }

    *(a1 + 5924) = v26;
    if (v26 < 10)
    {
      v32 = v26 + 7;
    }

    else
    {
      v27 = *(a1 + 16);
      v28 = *(a1 + 40);
      *(a1 + 40) = v28 + 1;
      *(v27 + v28) = v20;
      v29 = *(a1 + 5921);
      v30 = *(a1 + 16);
      v31 = *(a1 + 40);
      *(a1 + 40) = v31 + 1;
      *(v30 + v31) = v29;
      *(a1 + 5920) = 0;
      v32 = *(a1 + 5924) - 9;
    }

    *(a1 + 5924) = v32;
    result = bi_flush(a1);
  }

  *(a1 + 5916) = 7;
  return result;
}

uint64_t bi_flush(uint64_t result)
{
  v1 = *(result + 5924);
  if (v1 == 16)
  {
    v2 = 0;
    v3 = *(result + 5920);
    v4 = *(result + 40);
    *(result + 40) = v4 + 1;
    *(*(result + 16) + v4) = v3;
    v5 = *(result + 5921);
    v6 = *(result + 16);
    v7 = *(result + 40);
    *(result + 40) = v7 + 1;
    *(v6 + v7) = v5;
    *(result + 5920) = 0;
  }

  else
  {
    if (v1 < 8)
    {
      return result;
    }

    v8 = *(result + 5920);
    v9 = *(result + 16);
    v10 = *(result + 40);
    *(result + 40) = v10 + 1;
    *(v9 + v10) = v8;
    *(result + 5920) = *(result + 5921);
    v2 = *(result + 5924) - 8;
  }

  *(result + 5924) = v2;
  return result;
}

BOOL _tr_tally(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 5884);
  *(*(a1 + 5888) + 2 * v3) = a2;
  v4 = *(a1 + 5872);
  *(a1 + 5884) = v3 + 1;
  *(v4 + v3) = a3;
  if (a2)
  {
    ++*(a1 + 5912);
    v5 = a2 - 1;
    v6 = a1 + 4 * _length_code[a3];
    ++*(v6 + 1224);
    if (a2 >= 0x101)
    {
      v5 = ((a2 - 1) >> 7) + 256;
    }

    v7 = (a1 + 4 * _dist_code[v5] + 2488);
  }

  else
  {
    v7 = (a1 + 4 * a3 + 196);
  }

  ++*v7;
  return *(a1 + 5884) == *(a1 + 5880) - 1;
}

uint64_t BrotliInitDistanceParams(uint64_t result, int a2, unsigned int a3)
{
  *(result + 64) = a2;
  *(result + 68) = a3;
  v3 = a3 + 16;
  v4 = a2 + 1;
  if (*(result + 36))
  {
    if (a3 > 0x7FFFFFFB)
    {
      v13 = -2147483636;
      a3 = 2147483644;
    }

    else
    {
      v5 = -1;
      v6 = -1 << a2;
      v7 = -5;
      v8 = ((2147483644 - a3) >> a2) + 4;
      do
      {
        ++v5;
        v7 += 2;
        v9 = v8 > 3;
        v8 >>= 1;
      }

      while (v9);
      v10 = (((((2147483644 - a3) >> a2) + 4) >> v5) & 1) + v7;
      if (v10 == -1)
      {
        v13 = a3 + 16;
      }

      else
      {
        v11 = v10 >> 1;
        v12 = (v10 & 1) << ((v10 >> 1) + 1);
        v13 = a3 + ((v10 << a2) | ~v6) + 17;
        a3 = a3 - v6 + (((6 << v11) + v12 - 5) << a2);
      }
    }

    v14 = v3 + (62 << v4);
  }

  else
  {
    v14 = v3 + (24 << v4);
    a3 += (1 << (a2 + 26)) + (-1 << (a2 + 2));
    v13 = v14;
  }

  *(result + 72) = v14;
  *(result + 76) = v13;
  *(result + 80) = a3;
  return result;
}

void BrotliBuildMetaBlock(uint64_t a1, uint64_t a2, size_t a3, size_t a4, uint64_t a5, unsigned __int8 a6, unsigned __int8 a7, uint64_t a8, unint64_t a9, int a10, uint64_t a11)
{
  v12 = 0;
  v13 = 0;
  v14 = *(a5 + 96);
  v15 = *(a5 + 64);
  v102 = *(a5 + 80);
  v103 = v14;
  v16 = *(a5 + 96);
  v17 = *(a5 + 128);
  v104 = *(a5 + 112);
  v105 = v17;
  v18 = *(a5 + 32);
  v19 = *a5;
  v98 = *(a5 + 16);
  v99 = v18;
  v20 = *(a5 + 32);
  v21 = *(a5 + 64);
  v100 = *(a5 + 48);
  v101 = v21;
  v22 = *a5;
  v94 = v16;
  v95 = v104;
  v96 = *(a5 + 128);
  v97 = v22;
  v91[2] = v20;
  v91[3] = v100;
  v92 = v15;
  v93 = v102;
  v91[0] = v19;
  v91[1] = v98;
  v23 = 1;
  v24 = 1.0e99;
  v25 = v21;
  v26 = DWORD1(v21);
  do
  {
    if (v12 > 0xF)
    {
LABEL_12:
      v12 = (v12 - 1) >> 1;
    }

    else
    {
      while (1)
      {
        v90 = 0.0;
        BrotliInitDistanceParams(v91, v13, v12 << v13);
        if (v12 << v13 == v26 && v13 == v25)
        {
          v23 = 0;
        }

        if (!ComputeDistanceCost(a8, a9, &v101, &v92, &v90))
        {
          break;
        }

        v28 = v90;
        if (v90 > v24)
        {
          break;
        }

        *(a5 + 64) = v92;
        *(a5 + 80) = v93;
        ++v12;
        v24 = v28;
        if (v12 == 16)
        {
          v24 = v28;
          goto LABEL_12;
        }
      }

      if (v12)
      {
        v12 = (v12 - 1) >> 1;
      }

      else
      {
        v12 = 0;
      }
    }

    ++v13;
  }

  while (v13 != 4);
  if (v23)
  {
    v90 = 0.0;
    ComputeDistanceCost(a8, a9, &v101, &v101, &v90);
    if (v90 < v24)
    {
      *(a5 + 64) = v101;
      *(a5 + 80) = v102;
    }
  }

  if (v25 == *(a5 + 64))
  {
    v29 = a1;
    if (!a9 || v26 == *(a5 + 68))
    {
      goto LABEL_35;
    }
  }

  else
  {
    v29 = a1;
    if (!a9)
    {
      goto LABEL_35;
    }
  }

  v30 = v26 + 16;
  v31 = a8 + 8;
  v32 = a9;
  do
  {
    if ((*(v31 - 4) & 0x1FFFFFF) != 0 && *(v31 + 4) >= 0x80u)
    {
      v33 = *(v31 + 6);
      v34 = v33 & 0x3FF;
      if (v34 >= v30)
      {
        v34 = ((v34 - v26 - 16) & ~(-1 << v25)) + v30 + ((((((v34 - v26 - 16) >> v25) & 1 | 2) << (v33 >> 10)) + *v31 - 4) << v25);
      }

      v35 = v34;
      v36 = *(a5 + 68);
      v37 = v36 + 16;
      if (v36 + 16 <= v34)
      {
        v39 = *(a5 + 64);
        v40 = v35 - v36 + (4 << v39) - 16;
        v41 = (__clz(v40) ^ 0x1F) - 1;
        v42 = ((v40 >> v41) & 1 | 2) << v41;
        LODWORD(v35) = ((v40 & ~(-1 << v39)) + v37 + ((((v40 >> v41) & 1 | (2 * (v41 - v39))) + 65534) << v39)) | ((v41 - v39) << 10);
        v38 = (v40 - v42) >> v39;
      }

      else
      {
        LODWORD(v38) = 0;
      }

      *(v31 + 6) = v35;
      *v31 = v38;
    }

    v31 += 16;
    --v32;
  }

  while (v32);
LABEL_35:
  BrotliSplitBlock(v29, a8, a9, a2, a3, a4, a5, a11, a11 + 48, a11 + 96);
  if (*(v29 + 24))
  {
    return;
  }

  v43 = *a11;
  if (*(a5 + 32))
  {
    v85 = 0;
    v44 = 1;
  }

  else
  {
    if (v43)
    {
      v85 = BrotliAllocate(v29);
      if (*(v29 + 24))
      {
        return;
      }

      v43 = *a11;
      if (*a11)
      {
        v45 = (v43 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v46 = vdupq_n_s64(v43 - 1);
        v47 = xmmword_29862D9C0;
        v48 = xmmword_29862D9D0;
        v49 = (v85 + 8);
        v50 = vdupq_n_s64(4uLL);
        v44 = 64;
        do
        {
          v51 = vmovn_s64(vcgeq_u64(v46, v48));
          if (vuzp1_s16(v51, *v46.i8).u8[0])
          {
            *(v49 - 2) = a10;
          }

          if (vuzp1_s16(v51, *&v46).i8[2])
          {
            *(v49 - 1) = a10;
          }

          if (vuzp1_s16(*&v46, vmovn_s64(vcgeq_u64(v46, *&v47))).i32[1])
          {
            *v49 = a10;
            v49[1] = a10;
          }

          v47 = vaddq_s64(v47, v50);
          v48 = vaddq_s64(v48, v50);
          v49 += 4;
          v45 -= 4;
        }

        while (v45);
        goto LABEL_53;
      }
    }

    else
    {
      v85 = 0;
    }

    v44 = 64;
  }

LABEL_53:
  v52 = v43 * v44;
  if (v43 * v44)
  {
    v83 = BrotliAllocate(v29);
    if (*(v29 + 24))
    {
      return;
    }

    v53 = v52;
    v54 = v83;
    do
    {
      bzero(v54, 0x408uLL);
      v54[129] = 0x7FF0000000000000;
      v54 += 130;
      --v53;
    }

    while (v53);
  }

  else
  {
    if (*(v29 + 24))
    {
      return;
    }

    v83 = 0;
  }

  v55 = 4 * *(a11 + 96);
  if (v55)
  {
    v56 = BrotliAllocate(v29);
    if (*(v29 + 24))
    {
      return;
    }

    v57 = v56;
    v80 = v56;
    do
    {
      bzero(v57, 0x888uLL);
      v57[273] = 0x7FF0000000000000;
      v57 += 274;
      --v55;
    }

    while (v55);
    v58 = v80;
  }

  else
  {
    if (*(v29 + 24))
    {
      return;
    }

    v58 = 0;
  }

  v59 = *(a11 + 48);
  *(a11 + 200) = v59;
  if (v59)
  {
    v60 = BrotliAllocate(v29);
  }

  else
  {
    v60 = 0;
  }

  *(a11 + 192) = v60;
  if (!*(v29 + 24))
  {
    v61 = *(a11 + 200);
    if (v61)
    {
      do
      {
        bzero(v60, 0xB08uLL);
        v60[353] = 0x7FF0000000000000;
        v60 += 354;
        --v61;
      }

      while (v61);
      v60 = *(a11 + 192);
    }

    BrotliBuildHistogramsWithContext(a8, a9, a11, a11 + 48, a11 + 96, a2, a3, a4, a6, a7, v85, v83, v60, v58);
    BrotliFree(v29, v85);
    v62 = *a11 << 6;
    *(a11 + 152) = v62;
    v63 = v62 ? BrotliAllocate(v29) : 0;
    *(a11 + 144) = v63;
    if (!*(v29 + 24))
    {
      v64 = *(a11 + 152);
      *(a11 + 184) = v64;
      if (v64)
      {
        v65 = BrotliAllocate(v29);
        v66 = *(v29 + 24);
        *(a11 + 176) = v65;
        if (v66)
        {
          return;
        }

        v67 = v65;
      }

      else
      {
        v67 = 0;
        *(a11 + 176) = 0;
      }

      BrotliClusterHistogramsLiteral(v29, v83, v52, 0x100uLL, v67, (a11 + 184), *(a11 + 144));
      if (!*(v29 + 24))
      {
        BrotliFree(v29, v83);
        if (*(a5 + 32))
        {
          v68 = *a11;
          if (*a11)
          {
            v69 = *(a11 + 144);
            v70 = v69 + (v68 << 8);
            do
            {
              --v68;
              v71 = (v69 + 4 * v68);
              v72 = vld1q_dup_f32(v71);
              v73 = -256;
              do
              {
                *(v70 + v73) = v72;
                v73 += 16;
              }

              while (v73);
              v70 -= 256;
            }

            while (v68);
          }
        }

        v74 = *(a11 + 96);
        *(a11 + 168) = 4 * v74;
        v75 = 4 * v74 ? BrotliAllocate(v29) : 0;
        *(a11 + 160) = v75;
        if (!*(v29 + 24))
        {
          v76 = *(a11 + 168);
          *(a11 + 216) = v76;
          if (v76)
          {
            v77 = BrotliAllocate(v29);
            v78 = *(v29 + 24);
            *(a11 + 208) = v77;
            if (v78)
            {
              return;
            }

            v79 = v77;
          }

          else
          {
            v79 = 0;
            *(a11 + 208) = 0;
          }

          BrotliClusterHistogramsDistance(v29, v58, *(a11 + 168), 0x100uLL, v79, (a11 + 216), *(a11 + 160));
          if (!*(v29 + 24))
          {

            BrotliFree(v29, v58);
          }
        }
      }
    }
  }
}

uint64_t ComputeDistanceCost(uint64_t a1, uint64_t a2, int *a3, int *a4, double *a5)
{
  bzero(v25, 0x888uLL);
  v27 = 0x7FF0000000000000;
  v10 = *a3;
  v11 = *a4;
  v12 = *a3 != *a4 || a3[1] != a4[1];
  v13 = 0;
  if (a2)
  {
    v14 = a1 + 8;
    v15 = 0.0;
    while (1)
    {
      if ((*(v14 - 4) & 0x1FFFFFF) != 0 && *(v14 + 4) >= 0x80u)
      {
        v16 = *(v14 + 6);
        if (v12)
        {
          v17 = v16 & 0x3FF;
          v18 = a3[1];
          if (v17 >= v18 + 16)
          {
            v17 = v18 + 16 + ((v17 - v18 - 16) & ~(-1 << v10)) + ((((((v17 - v18 - 16) >> v10) & 1 | 2) << (v16 >> 10)) + *v14 - 4) << v10);
          }

          if (*(a4 + 2) < v17)
          {
            return 0;
          }

          v19 = a4[1];
          v20 = v19 + 16;
          if (v19 + 16 <= v17)
          {
            v21 = (4 << v11) - 16 + v17 - v19;
            v22 = __clz(v21);
            v16 = ((v21 & ~(-1 << v11)) + v20 + ((((v21 >> ((v22 ^ 0x1F) - 1)) & 1 | (2 * ((v22 ^ 0x1F) - 1 - v11))) + 65534) << v11)) | (((v22 ^ 0x1F) - 1 - v11) << 10);
          }

          else
          {
            LOWORD(v16) = v17;
          }
        }

        ++v25[v16 & 0x3FF];
        ++v13;
        v15 = v15 + (v16 >> 10);
      }

      v14 += 16;
      if (!--a2)
      {
        goto LABEL_19;
      }
    }
  }

  v15 = 0.0;
LABEL_19:
  v26 = v13;
  BrotliPopulationCostDistance(v25);
  *a5 = v15 + v23;
  return 1;
}

void BrotliBuildMetaBlockGreedy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7, unint64_t a8, uint64_t a9, unsigned int *a10, unint64_t a11, uint64_t a12)
{
  if (a8 == 1)
  {
    v85 = 0;
    v83 = 0u;
    memset(v84, 0, sizeof(v84));
    v81 = 0u;
    v82 = 0u;
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v65 = 0u;
    v16 = 0;
    if (a11)
    {
      v17 = a11;
      v18 = a10;
      do
      {
        v19 = *v18;
        v18 += 4;
        v16 += v19;
        --v17;
      }

      while (v17);
    }

    InitBlockSplitterLiteral(a1, &v81, v16, a12, (a12 + 176), (a12 + 184));
    if (!*(a1 + 24))
    {
      InitBlockSplitterCommand(a1, &v73, a11, a12 + 48, (a12 + 192), (a12 + 200));
      if (!*(a1 + 24))
      {
        InitBlockSplitterDistance(a1, &v65, a11, a12 + 96, (a12 + 208), (a12 + 216));
        if (!*(a1 + 24))
        {
          if (a11)
          {
            for (i = 0; i != a11; ++i)
            {
              v21 = &a10[4 * i];
              v23 = *v21;
              v22 = v21[1];
              v24 = *(v21 + 6);
              v25 = *(v21 + 7);
              BlockSplitterAddSymbolCommand(&v73, *(v21 + 6));
              if (v23)
              {
                do
                {
                  BlockSplitterAddSymbolLiteral(&v81, *(a2 + (a3++ & a4)));
                  --v23;
                }

                while (v23);
              }

              v26 = v22 & 0x1FFFFFF;
              if (v26)
              {
                if (v24 >= 0x80)
                {
                  BlockSplitterAddSymbolDistance(&v65, v25 & 0x3FF);
                }
              }

              a3 += v26;
            }
          }

          BlockSplitterFinishBlockLiteral(&v81, 1);
          BlockSplitterFinishBlockCommand();
          BlockSplitterFinishBlockDistance();
        }
      }
    }
  }

  else
  {
    memset(v84 + 8, 0, 264);
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v65 = 0u;
    if (a11)
    {
      v28 = 0;
      v29 = a11;
      v30 = a10;
      do
      {
        v31 = *v30;
        v30 += 4;
        v28 += v31;
        --v29;
      }

      while (v29);
      v32 = v28 >> 9;
    }

    else
    {
      v32 = 0;
    }

    *&v81 = 256;
    *(&v81 + 1) = a8;
    *&v82 = 0x100 / a8;
    *(&v82 + 1) = 512;
    v83 = 0x4079000000000000uLL;
    *&v84[0] = a12;
    *&v84[1] = a12 + 184;
    *(&v84[1] + 1) = 512;
    if (v32 + 1 >= 0x100 / a8 + 1)
    {
      v33 = 0x100 / a8 + 1;
    }

    else
    {
      v33 = v32 + 1;
    }

    v63 = v33;
    v85 = 0;
    v84[2] = 0uLL;
    v34 = *(a12 + 32);
    if (v34 <= v32)
    {
      if (!v34)
      {
        v34 = v32 + 1;
      }

      do
      {
        v35 = v34;
        v34 *= 2;
      }

      while (v35 <= v32);
      v36 = BrotliAllocate(a1);
      v37 = v36;
      if (!*(a1 + 24))
      {
        v38 = *(a12 + 32);
        if (v38)
        {
          memcpy(v36, *(a12 + 16), v38);
        }
      }

      BrotliFree(a1, *(a12 + 16));
      *(a12 + 16) = v37;
      *(a12 + 32) = v35;
    }

    v39 = *(a12 + 40);
    if (v39 <= v32)
    {
      if (!v39)
      {
        v39 = v32 + 1;
      }

      do
      {
        v40 = v39;
        v39 *= 2;
      }

      while (v40 <= v32);
      v41 = BrotliAllocate(a1);
      v42 = v41;
      if (!*(a1 + 24))
      {
        v43 = *(a12 + 40);
        if (v43)
        {
          memcpy(v41, *(a12 + 24), 4 * v43);
        }
      }

      BrotliFree(a1, *(a12 + 24));
      *(a12 + 24) = v42;
      *(a12 + 40) = v40;
    }

    if (!*(a1 + 24))
    {
      *(a12 + 8) = v32 + 1;
      *(a12 + 184) = v63 * a8;
      if (v63 * a8)
      {
        v44 = BrotliAllocate(a1);
        v45 = *(a1 + 24);
        *(a12 + 176) = v44;
        *(&v84[0] + 1) = v44;
        if (v45)
        {
          return;
        }

        v46 = v44;
      }

      else
      {
        v46 = 0;
        *(a12 + 176) = 0;
        *(&v84[0] + 1) = 0;
      }

      v47 = a5;
      v64 = a6;
      if (a8 <= 1)
      {
        v48 = 1;
      }

      else
      {
        v48 = a8;
      }

      do
      {
        bzero(v46, 0x408uLL);
        v46[129] = 0x7FF0000000000000;
        v46 += 130;
        --v48;
      }

      while (v48);
      v84[3] = 0uLL;
      if (!*(a1 + 24))
      {
        InitBlockSplitterCommand(a1, &v73, a11, a12 + 48, (a12 + 192), (a12 + 200));
        if (!*(a1 + 24))
        {
          InitBlockSplitterDistance(a1, &v65, a11, a12 + 96, (a12 + 208), (a12 + 216));
          if (!*(a1 + 24))
          {
            if (a11)
            {
              v49 = 0;
              while (1)
              {
                v60 = v49;
                v50 = &a10[4 * v49];
                v51 = *v50;
                v56 = *(v50 + 7);
                v57 = *(v50 + 6);
                v58 = v50[1];
                BlockSplitterAddSymbolCommand(&v73, v57);
                if (v51)
                {
                  break;
                }

LABEL_61:
                v55 = v58 & 0x1FFFFFF;
                a3 += v55;
                if (v55)
                {
                  v64 = *(a2 + ((a3 - 2) & a4));
                  v47 = *(a2 + ((a3 - 1) & a4));
                  if (v57 >= 0x80)
                  {
                    BlockSplitterAddSymbolDistance(&v65, v56 & 0x3FF);
                  }
                }

                v49 = v60 + 1;
                if (v60 + 1 == a11)
                {
                  goto LABEL_65;
                }
              }

              while (1)
              {
                v52 = *(a7 + 256 + v64);
                v53 = v47;
                v47 = *(a2 + (a3 & a4));
                v64 = v53;
                v54 = *(&v84[0] + 1) + 1040 * *(&v84[2] + 1) + 1040 * *(a9 + 4 * (v52 | *(a7 + v53)));
                ++*(v54 + 4 * v47);
                ++*(v54 + 1024);
                if (++*&v84[2] == *(&v84[1] + 1))
                {
                  ContextBlockSplitterFinishBlock(&v81, a1, 0);
                }

                if (*(a1 + 24))
                {
                  break;
                }

                ++a3;
                if (!--v51)
                {
                  goto LABEL_61;
                }
              }
            }

            else
            {
LABEL_65:
              ContextBlockSplitterFinishBlock(&v81, a1, 1);
              if (!*(a1 + 24))
              {
                BlockSplitterFinishBlockCommand();
                BlockSplitterFinishBlockDistance();
                MapStaticContexts(a1, a8, a9, a12);
              }
            }
          }
        }
      }
    }
  }
}

void BrotliOptimizeHistograms(unsigned int a1, void *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (a2[23])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      BrotliOptimizeHuffmanCountsForRle(0x100uLL, (a2[22] + v4), v10);
      ++v5;
      v4 += 1040;
    }

    while (v5 < a2[23]);
  }

  if (a2[25])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      BrotliOptimizeHuffmanCountsForRle(0x2C0uLL, (a2[24] + v6), v10);
      ++v7;
      v6 += 2832;
    }

    while (v7 < a2[25]);
  }

  if (a2[27])
  {
    v8 = 0;
    v9 = 0;
    do
    {
      BrotliOptimizeHuffmanCountsForRle(a1, (a2[26] + v8), v10);
      ++v9;
      v8 += 2192;
    }

    while (v9 < a2[27]);
  }
}

void InitBlockSplitterLiteral(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v11 = a3 >> 9;
  v12 = (a3 >> 9) + 1;
  if (v12 < 0x101)
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = 257;
  }

  *a2 = xmmword_29868AC30;
  *(a2 + 16) = 0x4079000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = a4;
  *(a2 + 48) = a6;
  *(a2 + 56) = 512;
  *(a2 + 112) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v14 = *(a4 + 32);
  if (v14 <= a3 >> 9)
  {
    if (!v14)
    {
      v14 = (a3 >> 9) + 1;
    }

    do
    {
      v15 = v14;
      v14 *= 2;
    }

    while (v15 <= v11);
    v16 = BrotliAllocate(a1);
    v17 = v16;
    if (!*(a1 + 24))
    {
      v18 = *(a4 + 32);
      if (v18)
      {
        memcpy(v16, *(a4 + 16), v18);
      }
    }

    BrotliFree(a1, *(a4 + 16));
    *(a4 + 16) = v17;
    *(a4 + 32) = v15;
  }

  v19 = *(a4 + 40);
  if (v19 <= v11)
  {
    if (!v19)
    {
      v19 = v12;
    }

    do
    {
      v20 = v19;
      v19 *= 2;
    }

    while (v20 <= v11);
    v21 = BrotliAllocate(a1);
    v22 = v21;
    if (!*(a1 + 24))
    {
      v23 = *(a4 + 40);
      if (v23)
      {
        memcpy(v21, *(a4 + 24), 4 * v23);
      }
    }

    BrotliFree(a1, *(a4 + 24));
    *(a4 + 24) = v22;
    *(a4 + 40) = v20;
  }

  if (!*(a1 + 24))
  {
    *(*(a2 + 32) + 8) = v12;
    *a6 = v13;
    v24 = BrotliAllocate(a1);
    *a5 = v24;
    *(a2 + 40) = v24;
    if (!*(a1 + 24))
    {
      v25 = v24;
      bzero(v24, 0x408uLL);
      v25[129] = 0x7FF0000000000000;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
    }
  }
}

void InitBlockSplitterCommand(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v11 = a3 >> 10;
  v12 = (a3 >> 10) + 1;
  if (v12 < 0x101)
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = 257;
  }

  *a2 = xmmword_29868AC40;
  *(a2 + 16) = 0x407F400000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = a4;
  *(a2 + 48) = a6;
  *(a2 + 56) = 1024;
  *(a2 + 112) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v14 = *(a4 + 32);
  if (v14 <= a3 >> 10)
  {
    if (!v14)
    {
      v14 = (a3 >> 10) + 1;
    }

    do
    {
      v15 = v14;
      v14 *= 2;
    }

    while (v15 <= v11);
    v16 = BrotliAllocate(a1);
    v17 = v16;
    if (!*(a1 + 24))
    {
      v18 = *(a4 + 32);
      if (v18)
      {
        memcpy(v16, *(a4 + 16), v18);
      }
    }

    BrotliFree(a1, *(a4 + 16));
    *(a4 + 16) = v17;
    *(a4 + 32) = v15;
  }

  v19 = *(a4 + 40);
  if (v19 <= v11)
  {
    if (!v19)
    {
      v19 = v12;
    }

    do
    {
      v20 = v19;
      v19 *= 2;
    }

    while (v20 <= v11);
    v21 = BrotliAllocate(a1);
    v22 = v21;
    if (!*(a1 + 24))
    {
      v23 = *(a4 + 40);
      if (v23)
      {
        memcpy(v21, *(a4 + 24), 4 * v23);
      }
    }

    BrotliFree(a1, *(a4 + 24));
    *(a4 + 24) = v22;
    *(a4 + 40) = v20;
  }

  if (!*(a1 + 24))
  {
    *(*(a2 + 32) + 8) = v12;
    *a6 = v13;
    v24 = BrotliAllocate(a1);
    *a5 = v24;
    *(a2 + 40) = v24;
    if (!*(a1 + 24))
    {
      v25 = v24;
      bzero(v24, 0xB08uLL);
      v25[353] = 0x7FF0000000000000;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
    }
  }
}

void InitBlockSplitterDistance(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v11 = a3 >> 9;
  v12 = (a3 >> 9) + 1;
  if (v12 < 0x101)
  {
    v13 = v11 + 1;
  }

  else
  {
    v13 = 257;
  }

  *a2 = xmmword_29868AC50;
  *(a2 + 16) = 0x4059000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = a4;
  *(a2 + 48) = a6;
  *(a2 + 56) = 512;
  *(a2 + 112) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v14 = *(a4 + 32);
  if (v14 <= a3 >> 9)
  {
    if (!v14)
    {
      v14 = (a3 >> 9) + 1;
    }

    do
    {
      v15 = v14;
      v14 *= 2;
    }

    while (v15 <= v11);
    v16 = BrotliAllocate(a1);
    v17 = v16;
    if (!*(a1 + 24))
    {
      v18 = *(a4 + 32);
      if (v18)
      {
        memcpy(v16, *(a4 + 16), v18);
      }
    }

    BrotliFree(a1, *(a4 + 16));
    *(a4 + 16) = v17;
    *(a4 + 32) = v15;
  }

  v19 = *(a4 + 40);
  if (v19 <= v11)
  {
    if (!v19)
    {
      v19 = v12;
    }

    do
    {
      v20 = v19;
      v19 *= 2;
    }

    while (v20 <= v11);
    v21 = BrotliAllocate(a1);
    v22 = v21;
    if (!*(a1 + 24))
    {
      v23 = *(a4 + 40);
      if (v23)
      {
        memcpy(v21, *(a4 + 24), 4 * v23);
      }
    }

    BrotliFree(a1, *(a4 + 24));
    *(a4 + 24) = v22;
    *(a4 + 40) = v20;
  }

  if (!*(a1 + 24))
  {
    *(*(a2 + 32) + 8) = v12;
    *a6 = v13;
    v24 = BrotliAllocate(a1);
    *a5 = v24;
    *(a2 + 40) = v24;
    if (!*(a1 + 24))
    {
      v25 = v24;
      bzero(v24, 0x888uLL);
      v25[273] = 0x7FF0000000000000;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
    }
  }
}

void BlockSplitterAddSymbolCommand(void *a1, uint64_t a2)
{
  v2 = a1[5] + 2832 * a1[9];
  ++*(v2 + 4 * a2);
  ++*(v2 + 2816);
  v3 = a1[7];
  v4 = a1[8] + 1;
  a1[8] = v4;
  if (v4 == v3)
  {
    BlockSplitterFinishBlockCommand();
  }
}

void BlockSplitterAddSymbolLiteral(void *a1, uint64_t a2)
{
  v2 = a1[5] + 1040 * a1[9];
  ++*(v2 + 4 * a2);
  ++*(v2 + 1024);
  v3 = a1[7];
  v4 = a1[8] + 1;
  a1[8] = v4;
  if (v4 == v3)
  {
    BlockSplitterFinishBlockLiteral(a1, 0);
  }
}

void BlockSplitterAddSymbolDistance(void *a1, uint64_t a2)
{
  v2 = a1[5] + 2192 * a1[9];
  ++*(v2 + 4 * a2);
  ++*(v2 + 2176);
  v3 = a1[7];
  v4 = a1[8] + 1;
  a1[8] = v4;
  if (v4 == v3)
  {
    BlockSplitterFinishBlockDistance();
  }
}

void BlockSplitterFinishBlockLiteral(void *a1, int a2)
{
  v3 = a1;
  v103 = *MEMORY[0x29EDCA608];
  v4 = a1[4];
  v5 = a1[5];
  if (a1[8] <= a1[1])
  {
    v6 = a1[1];
  }

  else
  {
    v6 = a1[8];
  }

  a1[8] = v6;
  if (!a1[3])
  {
    v13 = 0;
    v14 = 0;
    v15 = v4[2];
    *v4[3] = v6;
    *v15 = 0;
    v16 = &v5[*a1];
    v17 = 0.0;
    v18 = v5;
    if (*a1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      if (v18 >= v16)
      {
        v27 = v13;
        if (v13)
        {
          if (v13 > 0xFF)
          {
            v28 = log2(v13);
          }

          else
          {
            v28 = kBrotliLog2Table[v13];
          }

          v17 = v17 + v27 * v28;
        }

        if (v17 >= v27)
        {
          v29 = v17;
        }

        else
        {
          v29 = v13;
        }

        *(v3 + 12) = v29;
        *(v3 + 13) = v29;
        ++v3[3];
        ++*v4;
        v30 = v3[9] + 1;
        v3[9] = v30;
        if (v30 < *v3[6])
        {
          v31 = &v5[260 * v30];
          bzero(v31, 0x408uLL);
          *(v31 + 129) = 0x7FF0000000000000;
        }

        v3[8] = 0;
        goto LABEL_83;
      }

      v20 = *v18++;
      v19 = v20;
      v14 = v13 + v20;
      v21 = v20;
      if (v20 > 0xFF)
      {
        v22 = log2(v21);
      }

      else
      {
        v22 = kBrotliLog2Table[v19];
      }

      v17 = v17 - v21 * v22;
LABEL_14:
      v24 = *v18++;
      v23 = v24;
      v13 = v14 + v24;
      v25 = v24;
      if (v24 > 0xFF)
      {
        v26 = log2(v25);
      }

      else
      {
        v26 = kBrotliLog2Table[v23];
      }

      v17 = v17 - v25 * v26;
    }
  }

  if (!v6)
  {
    goto LABEL_83;
  }

  v88 = a1[3];
  v89 = v6;
  v7 = 0;
  v8 = 0;
  v95 = a1 + 12;
  v96 = v5;
  v9 = &v5[260 * a1[9]];
  v10 = *a1;
  v11 = &v9[*a1];
  v12 = 0.0;
  __src = v9;
  if ((*a1 & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v37 = *v9++;
    v36 = v37;
    v7 = v8 + v37;
    v38 = v37;
    v39 = v37 > 0xFF ? log2(v38) : kBrotliLog2Table[v36];
    v12 = v12 - v38 * v39;
LABEL_29:
    if (v9 >= v11)
    {
      break;
    }

    v33 = *v9++;
    v32 = v33;
    v8 = v7 + v33;
    v34 = v33;
    if (v33 > 0xFF)
    {
      v35 = log2(v34);
    }

    else
    {
      v35 = kBrotliLog2Table[v32];
    }

    v12 = v12 - v34 * v35;
  }

  v40 = v7;
  v91 = a2;
  v90 = v4;
  if (v7)
  {
    if (v7 > 0xFF)
    {
      v41 = log2(v7);
    }

    else
    {
      v41 = kBrotliLog2Table[v7];
    }

    v12 = v12 + v40 * v41;
  }

  v42 = 0;
  v92 = v3;
  v94 = v3 + 10;
  v43 = __dst;
  if (v12 < v40)
  {
    v12 = v40;
  }

  v44 = &v100;
  v45 = &v98;
  v46 = 1;
  do
  {
    v47 = v46;
    v48 = v94[v42];
    memcpy(v43, __src, 0x410uLL);
    v49 = 0;
    v50 = &v96[260 * v48];
    *(v43 + 128) += *(v50 + 128);
    do
    {
      v43[v49] += v50[v49];
      ++v49;
    }

    while (v49 != 256);
    v51 = 0;
    v52 = 0;
    v53 = &v43[v10];
    v54 = 0.0;
    if (v10)
    {
      goto LABEL_57;
    }

    while (v43 < v53)
    {
      v56 = *v43++;
      v55 = v56;
      v52 = v51 + v56;
      v57 = v56;
      if (v56 > 0xFF)
      {
        v58 = log2(v57);
      }

      else
      {
        v58 = kBrotliLog2Table[v55];
      }

      v54 = v54 - v57 * v58;
LABEL_57:
      v62 = *v43++;
      v61 = v62;
      v51 = v52 + v62;
      v63 = v62;
      if (v62 > 0xFF)
      {
        v64 = log2(v63);
      }

      else
      {
        v64 = kBrotliLog2Table[v61];
      }

      v54 = v54 - v63 * v64;
    }

    v59 = v51;
    if (v51)
    {
      if (v51 > 0xFF)
      {
        v60 = log2(v51);
      }

      else
      {
        v60 = kBrotliLog2Table[v51];
      }

      v54 = v54 + v59 * v60;
    }

    v46 = 0;
    if (v54 >= v59)
    {
      v65 = v54;
    }

    else
    {
      v65 = v51;
    }

    *v44 = v65;
    *v45 = v65 - v12 - *&v95[v42];
    v44 = &v99;
    v45 = &v97;
    v43 = v102;
    v42 = 1;
  }

  while ((v47 & 1) != 0);
  v4 = v90;
  v66 = *v90;
  a2 = v91;
  if (*v90 >= 0x100uLL)
  {
    v67 = v97;
    v68 = v98;
    v3 = v92;
    v71 = v96;
    v73 = v88;
    v72 = v89;
  }

  else
  {
    v67 = v97;
    v68 = v98;
    v3 = v92;
    v69 = *(v92 + 2);
    v70 = v98 <= v69 || v97 <= v69;
    v71 = v96;
    v73 = v88;
    v72 = v89;
    if (!v70)
    {
      v74 = v90[2];
      *(v90[3] + 4 * v88) = v89;
      *(v74 + v88) = v66;
      v75 = v92[9];
      v92[11] = v92[10];
      v76 = *v90;
      v77 = v92[12];
      *(v92 + 12) = v12;
      v92[13] = v77;
      ++v92[3];
      v92[10] = v76;
      ++*v90;
      v92[9] = v75 + 1;
      if ((v75 + 1) < *v92[6])
      {
        v78 = &v96[260 * v75 + 260];
        bzero(v78, 0x408uLL);
        *(v78 + 129) = 0x7FF0000000000000;
      }

      v92[14] = 0;
      v79 = v92[1];
      v92[8] = 0;
LABEL_82:
      v3[7] = v79;
      goto LABEL_83;
    }
  }

  v80 = (v90[3] + 4 * v73);
  if (v67 < v68 + -20.0)
  {
    *v80 = v72;
    *(v90[2] + v73) = *(v90[2] + v73 - 2);
    v81 = v3[10];
    v82 = v3[11];
    v3[10] = v82;
    v3[11] = v81;
    memcpy(&v71[260 * v82], v102, 0x410uLL);
    v83 = v3[12];
    v3[12] = v99;
    v3[13] = v83;
    ++v3[3];
    v3[8] = 0;
    v84 = &v71[260 * v3[9]];
    bzero(v84, 0x408uLL);
    *(v84 + 129) = 0x7FF0000000000000;
    v3[14] = 0;
    v79 = v3[1];
    goto LABEL_82;
  }

  *(v80 - 1) += v72;
  memcpy(&v71[260 * *v94], __dst, 0x410uLL);
  v85 = v100;
  *v95 = v100;
  if (*v90 == 1)
  {
    v3[13] = v85;
  }

  v3[8] = 0;
  v86 = &v71[260 * v3[9]];
  bzero(v86, 0x408uLL);
  *(v86 + 129) = 0x7FF0000000000000;
  v87 = v3[14] + 1;
  v3[14] = v87;
  if (v87 >= 2)
  {
    v79 = v3[7] + v3[1];
    goto LABEL_82;
  }

LABEL_83:
  if (a2)
  {
    *v3[6] = *v4;
    v4[1] = v3[3];
  }
}

void ContextBlockSplitterFinishBlock(void *a1, uint64_t a2, int a3)
{
  v3 = a3;
  v5 = a1;
  v126[13] = *MEMORY[0x29EDCA608];
  v6 = a1[1];
  v8 = a1[6];
  v7 = a1[7];
  v9 = a1[10];
  v10 = a1[3];
  if (v9 < v10)
  {
    a1[10] = v10;
    v9 = v10;
  }

  v11 = (a1 + 14);
  v122 = v6;
  if (!a1[5])
  {
    v12 = v8[2];
    v112 = v8;
    *v8[3] = v9;
    *v12 = 0;
    if (!v6)
    {
LABEL_29:
      ++v5[5];
      v8 = v112;
      ++*v112;
      v33 = v5[11] + v6;
      v5[11] = v33;
      if (v33 < *v5[8])
      {
        v34 = v5[1];
        if (v34)
        {
          v35 = (v5[7] + 1040 * v33);
          do
          {
            bzero(v35, 0x408uLL);
            v35[129] = 0x7FF0000000000000;
            v35 += 130;
            --v34;
          }

          while (v34);
        }
      }

      v5[10] = 0;
      v3 = a3;
LABEL_34:
      if (!v3)
      {
        return;
      }

LABEL_35:
      *v5[8] = *v8 * v6;
      v8[1] = v5[5];
      return;
    }

    v13 = *a1;
    v14 = *a1;
    v15 = v6;
    while (1)
    {
      v16 = v11;
      v17 = 0;
      v18 = 0;
      v19 = v7;
      v20 = 0.0;
      if (v13)
      {
        goto LABEL_18;
      }

      while (v19 < &v7[v14])
      {
        v22 = *v19++;
        v21 = v22;
        v18 = v17 + v22;
        v23 = v22;
        if (v22 > 0xFF)
        {
          v24 = log2(v23);
        }

        else
        {
          v24 = kBrotliLog2Table[v21];
        }

        v20 = v20 - v23 * v24;
LABEL_18:
        v29 = *v19++;
        v28 = v29;
        v17 = v18 + v29;
        v30 = v29;
        if (v29 > 0xFF)
        {
          v31 = log2(v30);
        }

        else
        {
          v31 = kBrotliLog2Table[v28];
        }

        v20 = v20 - v30 * v31;
      }

      v25 = v17;
      if (v17)
      {
        v6 = v122;
        v26 = v16;
        if (v17 > 0xFF)
        {
          v27 = log2(v17);
        }

        else
        {
          v27 = kBrotliLog2Table[v17];
        }

        v20 = v20 + v25 * v27;
      }

      else
      {
        v6 = v122;
        v26 = v16;
      }

      if (v20 >= v25)
      {
        v32 = v20;
      }

      else
      {
        v32 = v17;
      }

      *v26 = v32;
      v26[v6] = v32;
      v11 = v26 + 1;
      v7 += 260;
      if (!--v15)
      {
        goto LABEL_29;
      }
    }
  }

  if (!v9)
  {
    goto LABEL_34;
  }

  v111 = v8;
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v116 = BrotliAllocate(a2);
  }

  else
  {
    v116 = 0;
  }

  v123 = 0.0;
  v124 = 0.0;
  if (!*(a2 + 24))
  {
    v108 = a2;
    v113 = v7;
    v110 = v3;
    if (v6)
    {
      v36 = 0;
      v37 = *v5;
      v115 = v5 + 12;
      v114 = 1040 * v6;
      v120 = v7;
      v121 = v116;
      v119 = v5;
      do
      {
        v38 = 0;
        v39 = 0;
        v40 = &v113[260 * v5[11] + 260 * v36];
        v41 = &v40[v37];
        v42 = 0.0;
        __src = v40;
        if (v37)
        {
          goto LABEL_50;
        }

        while (v40 < v41)
        {
          v44 = *v40++;
          v43 = v44;
          v39 = v38 + v44;
          v45 = v44;
          if (v44 > 0xFF)
          {
            v46 = log2(v45);
          }

          else
          {
            v46 = kBrotliLog2Table[v43];
          }

          v42 = v42 - v45 * v46;
LABEL_50:
          v50 = *v40++;
          v49 = v50;
          v38 = v39 + v50;
          v51 = v50;
          if (v50 > 0xFF)
          {
            v52 = log2(v51);
          }

          else
          {
            v52 = kBrotliLog2Table[v49];
          }

          v42 = v42 - v51 * v52;
        }

        v47 = v38;
        if (v38)
        {
          if (v38 > 0xFF)
          {
            v48 = log2(v38);
          }

          else
          {
            v48 = kBrotliLog2Table[v38];
          }

          v53 = v113;
          v42 = v42 + v47 * v48;
        }

        else
        {
          v53 = v113;
        }

        v54 = 0;
        if (v42 < v47)
        {
          v42 = v38;
        }

        *&v126[v36] = v42;
        v55 = v36;
        v117 = &v53[260 * v36];
        v56 = &v124;
        v57 = 1;
        do
        {
          v58 = v11;
          v59 = v57;
          v60 = v55 + v54 * v6;
          v61 = v115[v54];
          v62 = (v116 + 1040 * v60);
          memcpy(v62, __src, 0x410uLL);
          v63 = 0;
          *(v62 + 128) += *&v117[260 * v61 + 256];
          do
          {
            *(v121 + v114 * v54 + v63 * 4) += v120[260 * v61 + v63];
            ++v63;
          }

          while (v63 != 256);
          v64 = 0;
          v65 = 0;
          v37 = *v119;
          v66 = &v62[4 * *v119];
          v67 = 0.0;
          if (*v119)
          {
            goto LABEL_71;
          }

          while (v62 < v66)
          {
            v69 = *v62;
            v62 += 4;
            v68 = v69;
            v65 = v64 + v69;
            v70 = v69;
            if (v69 > 0xFF)
            {
              v71 = log2(v70);
            }

            else
            {
              v71 = kBrotliLog2Table[v68];
            }

            v67 = v67 - v70 * v71;
LABEL_71:
            v75 = *v62;
            v62 += 4;
            v74 = v75;
            v64 = v65 + v75;
            v76 = v75;
            if (v75 > 0xFF)
            {
              v77 = log2(v76);
            }

            else
            {
              v77 = kBrotliLog2Table[v74];
            }

            v67 = v67 - v76 * v77;
          }

          v72 = v64;
          if (v64)
          {
            v6 = v122;
            v11 = v58;
            if (v64 > 0xFF)
            {
              v73 = log2(v64);
            }

            else
            {
              v73 = kBrotliLog2Table[v64];
            }

            v67 = v67 + v72 * v73;
          }

          else
          {
            v6 = v122;
            v11 = v58;
          }

          v57 = 0;
          if (v67 >= v72)
          {
            v78 = v67;
          }

          else
          {
            v78 = v64;
          }

          v125[v60] = v78;
          *v56 = *v56 + v78 - v42 - v11[v60];
          v56 = &v123;
          v54 = 1;
        }

        while ((v59 & 1) != 0);
        v36 = v55 + 1;
        v5 = v119;
        v120 += 260;
        v121 += 1040;
      }

      while (v36 != v6);
    }

    v8 = v111;
    v79 = *v111;
    if (*v111 >= v5[2])
    {
      v80 = v123;
      v81 = v124;
    }

    else
    {
      v80 = v123;
      v81 = v124;
      v82 = *(v5 + 4);
      if (v124 > v82 && v123 > v82)
      {
        v83 = v5[5];
        v84 = v111[2];
        *(v111[3] + 4 * v83) = v5[10];
        *(v84 + v83) = v79;
        v5[13] = v5[12];
        v5[12] = *v111 * v6;
        v85 = v108;
        if (v6)
        {
          v86 = v126;
          v87 = v6;
          do
          {
            v11[v6] = *v11;
            v88 = *v86++;
            *v11++ = v88;
            --v87;
          }

          while (v87);
        }

        ++v5[5];
        ++*v111;
        v89 = v5[11] + v6;
        v5[11] = v89;
        if (v89 < *v5[8])
        {
          v90 = v5[1];
          if (v90)
          {
            v91 = (v5[7] + 1040 * v89);
            do
            {
              bzero(v91, 0x408uLL);
              v91[129] = 0x7FF0000000000000;
              v91 += 130;
              --v90;
            }

            while (v90);
          }
        }

        v5[40] = 0;
        v92 = v5[3];
        v5[10] = 0;
        goto LABEL_107;
      }
    }

    v93 = *(v5 + 20);
    v94 = v5[5];
    v95 = (v111[3] + 4 * v94);
    if (v80 >= v81 + -20.0)
    {
      *(v95 - 1) += v93;
      if (v6)
      {
        v101 = v11;
        v102 = 0;
        v103 = v125;
        v104 = v6;
        do
        {
          memcpy(&v113[260 * v5[12] + v102], (v116 + v102 * 4), 0x410uLL);
          v105 = *v103;
          *v101 = *v103;
          if (*v111 == 1)
          {
            v101[v6] = v105;
          }

          v106 = &v113[260 * v5[11] + v102];
          bzero(v106, 0x408uLL);
          *(v106 + 129) = 0x7FF0000000000000;
          ++v101;
          ++v103;
          v102 += 260;
          --v104;
        }

        while (v104);
      }

      v5[10] = 0;
      v107 = v5[40] + 1;
      v5[40] = v107;
      v85 = v108;
      if (v107 >= 2)
      {
        v92 = v5[9] + v5[3];
LABEL_107:
        v5[9] = v92;
      }
    }

    else
    {
      *v95 = v93;
      *(v111[2] + v94) = *(v111[2] + v94 - 2);
      *(v5 + 6) = vextq_s8(*(v5 + 6), *(v5 + 6), 8uLL);
      v96 = v11;
      if (v6)
      {
        v97 = 0;
        v98 = v125;
        v99 = v6;
        do
        {
          memcpy(&v113[260 * v5[12] + v97], (v116 + 1040 * v6 + v97 * 4), 0x410uLL);
          v96[v6] = *v96;
          *v96++ = v98[v6];
          v100 = &v113[260 * v5[11] + v97];
          bzero(v100, 0x408uLL);
          *(v100 + 129) = 0x7FF0000000000000;
          ++v98;
          v97 += 260;
          --v99;
        }

        while (v99);
      }

      ++v5[5];
      v5[40] = 0;
      v5[9] = v5[3];
      v5[10] = 0;
      v85 = v108;
      v8 = v111;
    }

    BrotliFree(v85, v116);
    if (!v110)
    {
      return;
    }

    goto LABEL_35;
  }
}

void BlockSplitterFinishBlockCommand()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v3 = v0;
  v103 = *MEMORY[0x29EDCA608];
  v4 = v0[4];
  v5 = v0[5];
  if (v0[8] <= v0[1])
  {
    v6 = v0[1];
  }

  else
  {
    v6 = v0[8];
  }

  v0[8] = v6;
  if (!v0[3])
  {
    v13 = 0;
    v14 = 0;
    v15 = v4[2];
    *v4[3] = v6;
    *v15 = 0;
    v16 = &v5[*v0];
    v17 = 0.0;
    v18 = v5;
    if (*v0)
    {
      goto LABEL_14;
    }

    while (1)
    {
      if (v18 >= v16)
      {
        v27 = v13;
        if (v13)
        {
          if (v13 > 0xFF)
          {
            v28 = log2(v13);
          }

          else
          {
            v28 = kBrotliLog2Table[v13];
          }

          v17 = v17 + v27 * v28;
        }

        if (v17 >= v27)
        {
          v29 = v17;
        }

        else
        {
          v29 = v13;
        }

        *(v3 + 12) = v29;
        *(v3 + 13) = v29;
        ++v3[3];
        ++*v4;
        v30 = v3[9] + 1;
        v3[9] = v30;
        if (v30 < *v3[6])
        {
          v31 = &v5[708 * v30];
          bzero(v31, 0xB08uLL);
          *(v31 + 353) = 0x7FF0000000000000;
        }

        v3[8] = 0;
        goto LABEL_83;
      }

      v20 = *v18++;
      v19 = v20;
      v14 = v13 + v20;
      v21 = v20;
      if (v20 > 0xFF)
      {
        v22 = log2(v21);
      }

      else
      {
        v22 = kBrotliLog2Table[v19];
      }

      v17 = v17 - v21 * v22;
LABEL_14:
      v24 = *v18++;
      v23 = v24;
      v13 = v14 + v24;
      v25 = v24;
      if (v24 > 0xFF)
      {
        v26 = log2(v25);
      }

      else
      {
        v26 = kBrotliLog2Table[v23];
      }

      v17 = v17 - v25 * v26;
    }
  }

  if (!v6)
  {
    goto LABEL_83;
  }

  v88 = v0[3];
  v89 = v6;
  v7 = 0;
  v8 = 0;
  v95 = v0 + 12;
  v96 = v5;
  v9 = &v5[708 * v0[9]];
  v10 = *v0;
  v11 = &v9[*v0];
  v12 = 0.0;
  __src = v9;
  if ((*v0 & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v37 = *v9++;
    v36 = v37;
    v7 = v8 + v37;
    v38 = v37;
    v39 = v37 > 0xFF ? log2(v38) : kBrotliLog2Table[v36];
    v12 = v12 - v38 * v39;
LABEL_29:
    if (v9 >= v11)
    {
      break;
    }

    v33 = *v9++;
    v32 = v33;
    v8 = v7 + v33;
    v34 = v33;
    if (v33 > 0xFF)
    {
      v35 = log2(v34);
    }

    else
    {
      v35 = kBrotliLog2Table[v32];
    }

    v12 = v12 - v34 * v35;
  }

  v40 = v7;
  v91 = v2;
  v90 = v4;
  if (v7)
  {
    if (v7 > 0xFF)
    {
      v41 = log2(v7);
    }

    else
    {
      v41 = kBrotliLog2Table[v7];
    }

    v12 = v12 + v40 * v41;
  }

  v42 = 0;
  v92 = v3;
  v94 = v3 + 10;
  v43 = __dst;
  if (v12 < v40)
  {
    v12 = v40;
  }

  v44 = &v100;
  v45 = &v98;
  v46 = 1;
  do
  {
    v47 = v46;
    v48 = v94[v42];
    memcpy(v43, __src, 0xB10uLL);
    v49 = 0;
    v50 = &v96[708 * v48];
    *(v43 + 352) += *(v50 + 352);
    do
    {
      v43[v49] += v50[v49];
      ++v49;
    }

    while (v49 != 704);
    v51 = 0;
    v52 = 0;
    v53 = &v43[v10];
    v54 = 0.0;
    if (v10)
    {
      goto LABEL_57;
    }

    while (v43 < v53)
    {
      v56 = *v43++;
      v55 = v56;
      v52 = v51 + v56;
      v57 = v56;
      if (v56 > 0xFF)
      {
        v58 = log2(v57);
      }

      else
      {
        v58 = kBrotliLog2Table[v55];
      }

      v54 = v54 - v57 * v58;
LABEL_57:
      v62 = *v43++;
      v61 = v62;
      v51 = v52 + v62;
      v63 = v62;
      if (v62 > 0xFF)
      {
        v64 = log2(v63);
      }

      else
      {
        v64 = kBrotliLog2Table[v61];
      }

      v54 = v54 - v63 * v64;
    }

    v59 = v51;
    if (v51)
    {
      if (v51 > 0xFF)
      {
        v60 = log2(v51);
      }

      else
      {
        v60 = kBrotliLog2Table[v51];
      }

      v54 = v54 + v59 * v60;
    }

    v46 = 0;
    if (v54 >= v59)
    {
      v65 = v54;
    }

    else
    {
      v65 = v51;
    }

    *v44 = v65;
    *v45 = v65 - v12 - *&v95[v42];
    v44 = &v99;
    v45 = &v97;
    v43 = v102;
    v42 = 1;
  }

  while ((v47 & 1) != 0);
  v4 = v90;
  v66 = *v90;
  v2 = v91;
  if (*v90 >= 0x100uLL)
  {
    v67 = v97;
    v68 = v98;
    v3 = v92;
    v71 = v96;
    v73 = v88;
    v72 = v89;
  }

  else
  {
    v67 = v97;
    v68 = v98;
    v3 = v92;
    v69 = *(v92 + 2);
    v70 = v98 <= v69 || v97 <= v69;
    v71 = v96;
    v73 = v88;
    v72 = v89;
    if (!v70)
    {
      v74 = v90[2];
      *(v90[3] + 4 * v88) = v89;
      *(v74 + v88) = v66;
      v75 = v92[9];
      v92[11] = v92[10];
      v76 = *v90;
      v77 = v92[12];
      *(v92 + 12) = v12;
      v92[13] = v77;
      ++v92[3];
      v92[10] = v76;
      ++*v90;
      v92[9] = v75 + 1;
      if ((v75 + 1) < *v92[6])
      {
        v78 = &v96[708 * v75 + 708];
        bzero(v78, 0xB08uLL);
        *(v78 + 353) = 0x7FF0000000000000;
      }

      v92[14] = 0;
      v79 = v92[1];
      v92[8] = 0;
LABEL_82:
      v3[7] = v79;
      goto LABEL_83;
    }
  }

  v80 = (v90[3] + 4 * v73);
  if (v67 < v68 + -20.0)
  {
    *v80 = v72;
    *(v90[2] + v73) = *(v90[2] + v73 - 2);
    v81 = v3[10];
    v82 = v3[11];
    v3[10] = v82;
    v3[11] = v81;
    memcpy(&v71[708 * v82], v102, 0xB10uLL);
    v83 = v3[12];
    v3[12] = v99;
    v3[13] = v83;
    ++v3[3];
    v3[8] = 0;
    v84 = &v71[708 * v3[9]];
    bzero(v84, 0xB08uLL);
    *(v84 + 353) = 0x7FF0000000000000;
    v3[14] = 0;
    v79 = v3[1];
    goto LABEL_82;
  }

  *(v80 - 1) += v72;
  memcpy(&v71[708 * *v94], __dst, 0xB10uLL);
  v85 = v100;
  *v95 = v100;
  if (*v90 == 1)
  {
    v3[13] = v85;
  }

  v3[8] = 0;
  v86 = &v71[708 * v3[9]];
  bzero(v86, 0xB08uLL);
  *(v86 + 353) = 0x7FF0000000000000;
  v87 = v3[14] + 1;
  v3[14] = v87;
  if (v87 >= 2)
  {
    v79 = v3[7] + v3[1];
    goto LABEL_82;
  }

LABEL_83:
  if (v2)
  {
    *v3[6] = *v4;
    v4[1] = v3[3];
  }
}

void BlockSplitterFinishBlockDistance()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v3 = v0;
  v103 = *MEMORY[0x29EDCA608];
  v4 = v0[4];
  v5 = v0[5];
  if (v0[8] <= v0[1])
  {
    v6 = v0[1];
  }

  else
  {
    v6 = v0[8];
  }

  v0[8] = v6;
  if (!v0[3])
  {
    v13 = 0;
    v14 = 0;
    v15 = v4[2];
    *v4[3] = v6;
    *v15 = 0;
    v16 = &v5[*v0];
    v17 = 0.0;
    v18 = v5;
    if (*v0)
    {
      goto LABEL_14;
    }

    while (1)
    {
      if (v18 >= v16)
      {
        v27 = v13;
        if (v13)
        {
          if (v13 > 0xFF)
          {
            v28 = log2(v13);
          }

          else
          {
            v28 = kBrotliLog2Table[v13];
          }

          v17 = v17 + v27 * v28;
        }

        if (v17 >= v27)
        {
          v29 = v17;
        }

        else
        {
          v29 = v13;
        }

        *(v3 + 12) = v29;
        *(v3 + 13) = v29;
        ++v3[3];
        ++*v4;
        v30 = v3[9] + 1;
        v3[9] = v30;
        if (v30 < *v3[6])
        {
          v31 = &v5[548 * v30];
          bzero(v31, 0x888uLL);
          *(v31 + 273) = 0x7FF0000000000000;
        }

        v3[8] = 0;
        goto LABEL_83;
      }

      v20 = *v18++;
      v19 = v20;
      v14 = v13 + v20;
      v21 = v20;
      if (v20 > 0xFF)
      {
        v22 = log2(v21);
      }

      else
      {
        v22 = kBrotliLog2Table[v19];
      }

      v17 = v17 - v21 * v22;
LABEL_14:
      v24 = *v18++;
      v23 = v24;
      v13 = v14 + v24;
      v25 = v24;
      if (v24 > 0xFF)
      {
        v26 = log2(v25);
      }

      else
      {
        v26 = kBrotliLog2Table[v23];
      }

      v17 = v17 - v25 * v26;
    }
  }

  if (!v6)
  {
    goto LABEL_83;
  }

  v88 = v0[3];
  v89 = v6;
  v7 = 0;
  v8 = 0;
  v95 = v0 + 12;
  v96 = v5;
  v9 = &v5[548 * v0[9]];
  v10 = *v0;
  v11 = &v9[*v0];
  v12 = 0.0;
  __src = v9;
  if ((*v0 & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v37 = *v9++;
    v36 = v37;
    v7 = v8 + v37;
    v38 = v37;
    v39 = v37 > 0xFF ? log2(v38) : kBrotliLog2Table[v36];
    v12 = v12 - v38 * v39;
LABEL_29:
    if (v9 >= v11)
    {
      break;
    }

    v33 = *v9++;
    v32 = v33;
    v8 = v7 + v33;
    v34 = v33;
    if (v33 > 0xFF)
    {
      v35 = log2(v34);
    }

    else
    {
      v35 = kBrotliLog2Table[v32];
    }

    v12 = v12 - v34 * v35;
  }

  v40 = v7;
  v91 = v2;
  v90 = v4;
  if (v7)
  {
    if (v7 > 0xFF)
    {
      v41 = log2(v7);
    }

    else
    {
      v41 = kBrotliLog2Table[v7];
    }

    v12 = v12 + v40 * v41;
  }

  v42 = 0;
  v92 = v3;
  v94 = v3 + 10;
  v43 = __dst;
  if (v12 < v40)
  {
    v12 = v40;
  }

  v44 = &v100;
  v45 = &v98;
  v46 = 1;
  do
  {
    v47 = v46;
    v48 = v94[v42];
    memcpy(v43, __src, 0x890uLL);
    v49 = 0;
    v50 = &v96[548 * v48];
    *(v43 + 272) += *(v50 + 272);
    do
    {
      v43[v49] += v50[v49];
      ++v49;
    }

    while (v49 != 544);
    v51 = 0;
    v52 = 0;
    v53 = &v43[v10];
    v54 = 0.0;
    if (v10)
    {
      goto LABEL_57;
    }

    while (v43 < v53)
    {
      v56 = *v43++;
      v55 = v56;
      v52 = v51 + v56;
      v57 = v56;
      if (v56 > 0xFF)
      {
        v58 = log2(v57);
      }

      else
      {
        v58 = kBrotliLog2Table[v55];
      }

      v54 = v54 - v57 * v58;
LABEL_57:
      v62 = *v43++;
      v61 = v62;
      v51 = v52 + v62;
      v63 = v62;
      if (v62 > 0xFF)
      {
        v64 = log2(v63);
      }

      else
      {
        v64 = kBrotliLog2Table[v61];
      }

      v54 = v54 - v63 * v64;
    }

    v59 = v51;
    if (v51)
    {
      if (v51 > 0xFF)
      {
        v60 = log2(v51);
      }

      else
      {
        v60 = kBrotliLog2Table[v51];
      }

      v54 = v54 + v59 * v60;
    }

    v46 = 0;
    if (v54 >= v59)
    {
      v65 = v54;
    }

    else
    {
      v65 = v51;
    }

    *v44 = v65;
    *v45 = v65 - v12 - *&v95[v42];
    v44 = &v99;
    v45 = &v97;
    v43 = v102;
    v42 = 1;
  }

  while ((v47 & 1) != 0);
  v4 = v90;
  v66 = *v90;
  v2 = v91;
  if (*v90 >= 0x100uLL)
  {
    v67 = v97;
    v68 = v98;
    v3 = v92;
    v71 = v96;
    v73 = v88;
    v72 = v89;
  }

  else
  {
    v67 = v97;
    v68 = v98;
    v3 = v92;
    v69 = *(v92 + 2);
    v70 = v98 <= v69 || v97 <= v69;
    v71 = v96;
    v73 = v88;
    v72 = v89;
    if (!v70)
    {
      v74 = v90[2];
      *(v90[3] + 4 * v88) = v89;
      *(v74 + v88) = v66;
      v75 = v92[9];
      v92[11] = v92[10];
      v76 = *v90;
      v77 = v92[12];
      *(v92 + 12) = v12;
      v92[13] = v77;
      ++v92[3];
      v92[10] = v76;
      ++*v90;
      v92[9] = v75 + 1;
      if ((v75 + 1) < *v92[6])
      {
        v78 = &v96[548 * v75 + 548];
        bzero(v78, 0x888uLL);
        *(v78 + 273) = 0x7FF0000000000000;
      }

      v92[14] = 0;
      v79 = v92[1];
      v92[8] = 0;
LABEL_82:
      v3[7] = v79;
      goto LABEL_83;
    }
  }

  v80 = (v90[3] + 4 * v73);
  if (v67 < v68 + -20.0)
  {
    *v80 = v72;
    *(v90[2] + v73) = *(v90[2] + v73 - 2);
    v81 = v3[10];
    v82 = v3[11];
    v3[10] = v82;
    v3[11] = v81;
    memcpy(&v71[548 * v82], v102, 0x890uLL);
    v83 = v3[12];
    v3[12] = v99;
    v3[13] = v83;
    ++v3[3];
    v3[8] = 0;
    v84 = &v71[548 * v3[9]];
    bzero(v84, 0x888uLL);
    *(v84 + 273) = 0x7FF0000000000000;
    v3[14] = 0;
    v79 = v3[1];
    goto LABEL_82;
  }

  *(v80 - 1) += v72;
  memcpy(&v71[548 * *v94], __dst, 0x890uLL);
  v85 = v100;
  *v95 = v100;
  if (*v90 == 1)
  {
    v3[13] = v85;
  }

  v3[8] = 0;
  v86 = &v71[548 * v3[9]];
  bzero(v86, 0x888uLL);
  *(v86 + 273) = 0x7FF0000000000000;
  v87 = v3[14] + 1;
  v3[14] = v87;
  if (v87 >= 2)
  {
    v79 = v3[7] + v3[1];
    goto LABEL_82;
  }

LABEL_83:
  if (v2)
  {
    *v3[6] = *v4;
    v4[1] = v3[3];
  }
}

uint64_t MapStaticContexts(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4 << 6;
  a4[19] = v8;
  if (v8)
  {
    result = BrotliAllocate(a1);
  }

  else
  {
    result = 0;
  }

  a4[18] = result;
  if (!*(a1 + 24))
  {
    v10 = *a4;
    if (*a4)
    {
      v11 = 0;
      do
      {
        for (i = 0; i != 256; i += 4)
        {
          *(result + i) = *(a3 + i) + v11 * a2;
        }

        ++v11;
        result += 256;
      }

      while (v11 != v10);
    }
  }

  return result;
}

uint64_t lzfseEncodeTranslateState(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    *a1 += a2;
    v2 = vdupq_n_s64(a2);
    *(a1 + 24) = vsubq_s64(*(a1 + 24), v2);
    *(a1 + 8) = vsubq_s64(*(a1 + 8), v2);
    *(a1 + 80) = vsubq_s64(*(a1 + 80), v2);
    v3 = vdupq_n_s32(a2);
    v4 = *(a1 + 64);
    v5 = *(a1 + 112);
    v6 = 1;
    v7 = vdupq_n_s32(0xFFF00014);
    do
    {
      *(v5 + 32 * (v6 - 1)) = vmaxq_s32(vsubq_s32(*(v5 + 32 * (v6 - 1)), v3), v7);
    }

    while (!(v6++ >> v4));
  }

  return 0;
}

int deflateSetDictionary(z_streamp strm, const Bytef *dictionary, uInt dictLength)
{
  if (!strm)
  {
    return -2;
  }

  result = -2;
  if (dictionary)
  {
    state = strm->state;
    if (state)
    {
      LODWORD(v7) = dictLength;
      v8 = *(state + 11);
      if (v8)
      {
        if (v8 == 2 || v8 == 1 && *(state + 2) != 42)
        {
          return result;
        }

        strm->adler = adler32(strm->adler, dictionary, dictLength);
      }

      if (v7 >= 3)
      {
        v9 = *(state + 17);
        LODWORD(v10) = v7 - v9;
        if (v7 >= v9)
        {
          v10 = v10;
        }

        else
        {
          v10 = 0;
        }

        if (v9 >= v7)
        {
          v7 = v7;
        }

        else
        {
          v7 = v9;
        }

        memcpy(*(state + 10), &dictionary[v10], v7);
        v11 = 0;
        *(state + 39) = v7;
        *(state + 17) = v7;
        v12 = *(state + 10);
        v13 = *v12;
        *(state + 28) = v13;
        v15 = *(state + 31);
        v14 = *(state + 32);
        v16 = ((v13 << v14) ^ v12[1]) & v15;
        *(state + 28) = v16;
        v18 = *(state + 12);
        v17 = *(state + 13);
        v19 = *(state + 19);
        LODWORD(v20) = v7 - 2;
        if ((v7 - 2) <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v20;
        }

        do
        {
          v16 = ((v16 << v14) ^ v12[(v11 + 2)]) & v15;
          *(state + 28) = v16;
          *(v18 + 2 * (v19 & v11)) = *(v17 + 2 * v16);
          *(v17 + 2 * v16) = v11++;
        }

        while (v20 != v11);
      }

      return 0;
    }
  }

  return result;
}

int deflateSetHeader(z_streamp strm, gz_headerp head)
{
  if (!strm)
  {
    return -2;
  }

  state = strm->state;
  if (!state || *(state + 11) != 2)
  {
    return -2;
  }

  result = 0;
  *(state + 6) = head;
  return result;
}

int deflatePrime(z_streamp strm, int bits, int value)
{
  if (!strm)
  {
    return -2;
  }

  state = strm->state;
  if (!state)
  {
    return -2;
  }

  result = 0;
  *(state + 1481) = bits;
  *(state + 2960) = value & ~(-1 << bits);
  return result;
}

int deflateParams(z_streamp strm, int level, int strategy)
{
  if (!strm)
  {
    return -2;
  }

  state = strm->state;
  if (!state)
  {
    return -2;
  }

  if (level == -1)
  {
    v6 = 6;
  }

  else
  {
    v6 = level;
  }

  result = -2;
  if (strategy <= 4 && v6 <= 9)
  {
    if (*(state + 46) == strategy && configuration_table[2 * *(state + 45) + 1] == configuration_table[2 * v6 + 1] || !strm->total_in)
    {
      result = 0;
    }

    else
    {
      result = deflate(strm, 5);
    }

    if (*(state + 45) != v6)
    {
      *(state + 45) = v6;
      v8 = &configuration_table[2 * v6];
      v9 = v8[1];
      v10 = v8[2];
      *(state + 47) = *v8;
      *(state + 48) = v10;
      *(state + 43) = v8[3];
      *(state + 44) = v9;
    }

    *(state + 46) = strategy;
  }

  return result;
}

int deflateTune(z_streamp strm, int good_length, int max_lazy, int nice_length, int max_chain)
{
  if (!strm)
  {
    return -2;
  }

  state = strm->state;
  if (!state)
  {
    return -2;
  }

  result = 0;
  *(state + 47) = good_length;
  *(state + 48) = nice_length;
  *(state + 43) = max_chain;
  *(state + 44) = max_lazy;
  return result;
}

uLong deflateBound(z_streamp strm, uLong sourceLen)
{
  v2 = sourceLen + ((sourceLen + 7) >> 3) + ((sourceLen + 63) >> 6);
  if (!strm)
  {
    return v2 + 11;
  }

  state = strm->state;
  if (!state)
  {
    return v2 + 11;
  }

  v4 = *(state + 11);
  if (v4)
  {
    if (v4 == 2)
    {
      v6 = *(state + 6);
      if (v6)
      {
        if (*(v6 + 24))
        {
          v7 = (*(v6 + 32) + 2) + 18;
        }

        else
        {
          v7 = 18;
        }

        v8 = *(v6 + 40);
        if (v8)
        {
          do
          {
            ++v7;
          }

          while (*v8++);
        }

        v10 = *(v6 + 56);
        if (v10)
        {
          do
          {
            ++v7;
          }

          while (*v10++);
        }

        if (*(v6 + 68))
        {
          v4 = v7 + 2;
        }

        else
        {
          v4 = v7;
        }
      }

      else
      {
        v4 = 18;
      }
    }

    else if (v4 == 1)
    {
      v4 = 10;
      if (!*(state + 39))
      {
        v4 = 6;
      }
    }

    else
    {
      v4 = 6;
    }
  }

  if (*(state + 18) == 15 && *(state + 30) == 15)
  {
    v12 = sourceLen + 7 + (sourceLen >> 12) + (sourceLen >> 14) + (sourceLen >> 25);
  }

  else
  {
    v12 = v2 + 5;
  }

  return v12 + v4;
}

uint64_t deflate_huff(uint64_t a1, int a2)
{
  v4 = a1 + 196;
  while (1)
  {
    if (!*(a1 + 164))
    {
      fill_window(a1);
      if (!*(a1 + 164))
      {
        break;
      }
    }

    *(a1 + 144) = 0;
    v5 = *(*(a1 + 80) + *(a1 + 156));
    v6 = *(a1 + 5884);
    *(*(a1 + 5888) + 2 * v6) = 0;
    v7 = *(a1 + 5872);
    *(a1 + 5884) = v6 + 1;
    *(v7 + v6) = v5;
    ++*(v4 + 4 * v5);
    LODWORD(v7) = *(a1 + 5884);
    LODWORD(v6) = *(a1 + 5880) - 1;
    --*(a1 + 164);
    v8 = (*(a1 + 156) + 1);
    *(a1 + 156) = v8;
    if (v7 == v6)
    {
      v9 = *(a1 + 136);
      v10 = v9 < 0 ? 0 : (*(a1 + 80) + v9);
      _tr_flush_block(a1, v10, v8 - v9, 0);
      *(a1 + 136) = *(a1 + 156);
      flush_pending(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(a1 + 136);
  if (v11 < 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(a1 + 80) + v11);
  }

  _tr_flush_block(a1, v12, *(a1 + 156) - v11, a2 == 4);
  *(a1 + 136) = *(a1 + 156);
  flush_pending(*a1);
  if (!*(*a1 + 32))
  {
    return 2 * (a2 == 4);
  }

  if (a2 == 4)
  {
    return 3;
  }

  return 1;
}

uint64_t deflate_rle(uint64_t a1, int a2)
{
  v4 = a1 + 196;
  v5 = a1 + 2488;
  while (1)
  {
    v6 = *(a1 + 164);
    if (v6 >= 0x102)
    {
      *(a1 + 144) = 0;
      v7 = *(a1 + 156);
      if (!*(a1 + 156))
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    fill_window(a1);
    v6 = *(a1 + 164);
    if (!a2 && v6 < 0x102)
    {
      return 0;
    }

    if (!v6)
    {
      break;
    }

    *(a1 + 144) = 0;
    v7 = *(a1 + 156);
    if (v6 < 3 || !*(a1 + 156))
    {
LABEL_24:
      v18 = *(a1 + 5884);
LABEL_25:
      v19 = *(*(a1 + 80) + v7);
      *(*(a1 + 5888) + 2 * v18) = 0;
      v20 = *(a1 + 5872);
      *(a1 + 5884) = v18 + 1;
      *(v20 + v18) = v19;
      ++*(v4 + 4 * v19);
      v21 = *(a1 + 5884);
      v22 = *(a1 + 5880) - 1;
      --*(a1 + 164);
      v23 = *(a1 + 156) + 1;
      *(a1 + 156) = v23;
      goto LABEL_26;
    }

LABEL_10:
    v8 = (*(a1 + 80) + v7);
    v9 = *(v8 - 1);
    if (v9 != *v8 || v9 != v8[1] || v9 != v8[2])
    {
      goto LABEL_24;
    }

    v10 = 0;
    v11 = v8 + 258;
    while (1)
    {
      v12 = &v8[v10];
      if (v9 != v8[v10 + 3])
      {
        v17 = v12 + 3;
        goto LABEL_39;
      }

      if (v9 != v12[4])
      {
        v17 = v8 + v10 + 4;
        goto LABEL_39;
      }

      v13 = &v8[v10];
      if (v9 != v8[v10 + 5])
      {
        v17 = v13 + 5;
        goto LABEL_39;
      }

      if (v9 != v13[6])
      {
        v17 = v8 + v10 + 6;
        goto LABEL_39;
      }

      v14 = &v8[v10];
      if (v9 != v8[v10 + 7])
      {
        v17 = v14 + 7;
        goto LABEL_39;
      }

      if (v9 != v14[8])
      {
        v17 = v8 + v10 + 8;
        goto LABEL_39;
      }

      v15 = &v8[v10];
      if (v9 != v8[v10 + 9])
      {
        break;
      }

      v16 = v10 + 2;
      v10 += 8;
      if (v16 > 0xF9 || v9 != v15[10])
      {
        v17 = v8 + v10 + 2;
        goto LABEL_39;
      }
    }

    v17 = v15 + 9;
LABEL_39:
    v26 = v17 - v11 + 258;
    if (v26 >= v6)
    {
      v26 = v6;
    }

    *(a1 + 144) = v26;
    v18 = *(a1 + 5884);
    v27 = v26 >= 3;
    v28 = v26 - 3;
    if (!v27)
    {
      goto LABEL_25;
    }

    *(*(a1 + 5888) + 2 * v18) = 1;
    v29 = *(a1 + 5872);
    *(a1 + 5884) = v18 + 1;
    *(v29 + v18) = v28;
    v30 = v4 + 4 * _length_code[v28];
    ++*(v30 + 1028);
    ++*(v5 + 4 * _dist_code[0]);
    v21 = *(a1 + 5884);
    v22 = *(a1 + 5880) - 1;
    LODWORD(v30) = *(a1 + 144);
    *(a1 + 164) -= v30;
    v23 = *(a1 + 156) + v30;
    *(a1 + 156) = v23;
    *(a1 + 144) = 0;
LABEL_26:
    if (v21 == v22)
    {
      v24 = *(a1 + 136);
      v25 = v24 < 0 ? 0 : (*(a1 + 80) + v24);
      _tr_flush_block(a1, v25, v23 - v24, 0);
      *(a1 + 136) = *(a1 + 156);
      flush_pending(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }
  }

  v32 = *(a1 + 136);
  if (v32 < 0)
  {
    v33 = 0;
  }

  else
  {
    v33 = (*(a1 + 80) + v32);
  }

  _tr_flush_block(a1, v33, *(a1 + 156) - v32, a2 == 4);
  *(a1 + 136) = *(a1 + 156);
  flush_pending(*a1);
  if (!*(*a1 + 32))
  {
    return 2 * (a2 == 4);
  }

  if (a2 == 4)
  {
    return 3;
  }

  return 1;
}

int deflateCopy(z_streamp dest, z_streamp source)
{
  result = -2;
  if (dest)
  {
    if (source)
    {
      state = source->state;
      if (state)
      {
        v5 = *&source->opaque;
        v6 = *&source->adler;
        v7 = *&source->msg;
        *&dest->zalloc = *&source->zalloc;
        v8 = *&source->total_in;
        v9 = *&source->avail_out;
        *&dest->next_in = *&source->next_in;
        *&dest->total_in = v8;
        *&dest->opaque = v5;
        *&dest->adler = v6;
        *&dest->avail_out = v9;
        *&dest->msg = v7;
        zalloc = dest->zalloc;
        if (zalloc == zcalloc)
        {
          v11 = calloc(1uLL, 0x1730uLL);
        }

        else
        {
          v11 = (zalloc)(dest->opaque, 1, 5936);
        }

        v12 = v11;
        if (v11)
        {
          dest->state = v11;
          memcpy(v11, state, 0x1730uLL);
          *v12 = dest;
          v13 = dest->zalloc;
          if (v13 == zcalloc)
          {
            v14 = calloc(*(v12 + 17), 2uLL);
          }

          else
          {
            v14 = (v13)(dest->opaque, *(v12 + 17), 2);
          }

          *(v12 + 10) = v14;
          v15 = dest->zalloc;
          if (v15 == zcalloc)
          {
            v16 = calloc(*(v12 + 17), 2uLL);
          }

          else
          {
            v16 = (v15)(dest->opaque, *(v12 + 17), 2);
          }

          *(v12 + 12) = v16;
          v17 = dest->zalloc;
          if (v17 == zcalloc)
          {
            v18 = calloc(*(v12 + 29), 2uLL);
          }

          else
          {
            v18 = (v17)(dest->opaque, *(v12 + 29), 2);
          }

          *(v12 + 13) = v18;
          v19 = dest->zalloc;
          if (v19 == zcalloc)
          {
            v20 = calloc(*(v12 + 1470), 4uLL);
          }

          else
          {
            v20 = (v19)(dest->opaque, *(v12 + 1470), 4);
          }

          v21 = v20;
          *(v12 + 2) = v20;
          v22 = *(v12 + 10);
          if (v22 && *(v12 + 12) && *(v12 + 13) && v21)
          {
            memcpy(v22, *(state + 10), (2 * *(v12 + 17)));
            memcpy(*(v12 + 12), *(state + 12), 2 * *(v12 + 17));
            memcpy(*(v12 + 13), *(state + 13), 2 * *(v12 + 29));
            memcpy(*(v12 + 2), *(state + 2), *(v12 + 6));
            result = 0;
            v23 = *(v12 + 2);
            *(v12 + 4) = v23 + *(state + 4) - *(state + 2);
            v24 = *(v12 + 1470);
            *(v12 + 736) = &v21[v24 & 0xFFFFFFFE];
            *(v12 + 734) = v23 + 3 * v24;
            *(v12 + 361) = v12 + 196;
            *(v12 + 364) = v12 + 2488;
            *(v12 + 367) = v12 + 2732;
            return result;
          }

          deflateEnd(dest);
        }

        return -4;
      }
    }
  }

  return result;
}

uint64_t deflate_stored(uint64_t a1, int a2)
{
  if ((*(a1 + 24) - 5) >= 0xFFFF)
  {
    v4 = 0xFFFFLL;
  }

  else
  {
    v4 = *(a1 + 24) - 5;
  }

  while (1)
  {
    v5 = *(a1 + 164);
    if (v5 >= 2)
    {
      v6 = *(a1 + 136);
      goto LABEL_9;
    }

    fill_window(a1);
    v5 = *(a1 + 164);
    if (!(v5 | a2))
    {
      return 0;
    }

    v6 = *(a1 + 136);
    if (!v5)
    {
      break;
    }

LABEL_9:
    v7 = *(a1 + 156) + v5;
    *(a1 + 156) = v7;
    *(a1 + 164) = 0;
    v8 = v6 + v4;
    if (v7)
    {
      v9 = v8 > v7;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      *(a1 + 164) = v7 - v8;
      *(a1 + 156) = v8;
      if (v6 < 0)
      {
        v10 = 0;
      }

      else
      {
        v10 = (*(a1 + 80) + v6);
      }

      _tr_flush_block(a1, v10, v8 - v6, 0);
      *(a1 + 136) = *(a1 + 156);
      flush_pending(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }

      LODWORD(v7) = *(a1 + 156);
      v6 = *(a1 + 136);
    }

    if (v7 - v6 >= (*(a1 + 68) - 262))
    {
      v11 = v6 < 0 ? 0 : (*(a1 + 80) + v6);
      _tr_flush_block(a1, v11, v7 - v6, 0);
      *(a1 + 136) = *(a1 + 156);
      flush_pending(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }
  }

  if (v6 < 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = (*(a1 + 80) + v6);
  }

  _tr_flush_block(a1, v13, *(a1 + 156) - v6, a2 == 4);
  *(a1 + 136) = *(a1 + 156);
  flush_pending(*a1);
  if (!*(*a1 + 32))
  {
    return 2 * (a2 == 4);
  }

  if (a2 == 4)
  {
    return 3;
  }

  return 1;
}

uint64_t deflate_fast(uint64_t a1, int a2)
{
  v4 = a1 + 196;
  v5 = a1 + 2488;
  while (1)
  {
    if (*(a1 + 164) > 0x105u)
    {
      goto LABEL_7;
    }

    fill_window(a1);
    v6 = *(a1 + 164);
    if (!a2 && v6 < 0x106)
    {
      return 0;
    }

    if (!v6)
    {
      break;
    }

    if (v6 < 3)
    {
      goto LABEL_9;
    }

LABEL_7:
    v7 = *(a1 + 156);
    v8 = ((*(a1 + 112) << *(a1 + 128)) ^ *(*(a1 + 80) + v7 + 2)) & *(a1 + 124);
    *(a1 + 112) = v8;
    v9 = *(a1 + 104);
    v10 = *(v9 + 2 * v8);
    *(*(a1 + 96) + 2 * (*(a1 + 76) & v7)) = v10;
    *(v9 + 2 * v8) = v7;
    if (!v10 || v7 - v10 > *(a1 + 68) - 262)
    {
LABEL_9:
      v11 = *(a1 + 144);
      goto LABEL_11;
    }

    v11 = longest_match(a1, v10);
    *(a1 + 144) = v11;
LABEL_11:
    if (v11 < 3)
    {
      v32 = *(*(a1 + 80) + *(a1 + 156));
      v33 = *(a1 + 5884);
      *(*(a1 + 5888) + 2 * v33) = 0;
      v34 = *(a1 + 5872);
      *(a1 + 5884) = v33 + 1;
      *(v34 + v33) = v32;
      ++*(v4 + 4 * v32);
      v19 = *(a1 + 5884);
      v20 = *(a1 + 5880) - 1;
      --*(a1 + 164);
      v31 = *(a1 + 156) + 1;
LABEL_20:
      *(a1 + 156) = v31;
      goto LABEL_22;
    }

    v12 = *(a1 + 156) - *(a1 + 160);
    v13 = *(a1 + 5884);
    *(*(a1 + 5888) + 2 * v13) = v12;
    v14 = *(a1 + 5872);
    *(a1 + 5884) = v13 + 1;
    *(v14 + v13) = v11 - 3;
    v15 = v12 - 1;
    v16 = v4 + 4 * _length_code[(v11 - 3)];
    ++*(v16 + 1028);
    v17 = (v15 >> 7) + 256;
    if ((v15 & 0xFF00) == 0)
    {
      v17 = v15;
    }

    v18 = 4 * _dist_code[v17];
    ++*(v5 + v18);
    v19 = *(a1 + 5884);
    v20 = *(a1 + 5880) - 1;
    v21 = *(a1 + 144);
    v22 = *(a1 + 164) - v21;
    *(a1 + 164) = v22;
    if (v21 <= *(a1 + 176) && v22 >= 3)
    {
      *(a1 + 144) = v21 - 1;
      v23 = *(a1 + 80);
      v25 = *(a1 + 124);
      v24 = *(a1 + 128);
      v27 = *(a1 + 96);
      v26 = *(a1 + 104);
      v28 = *(a1 + 76);
      v29 = *(a1 + 112);
      v30 = v21 - 2;
      v31 = *(a1 + 156) + 1;
      do
      {
        *(a1 + 156) = v31;
        v29 = ((v29 << v24) ^ *(v23 + v31 + 2)) & v25;
        *(a1 + 112) = v29;
        *(v27 + 2 * (v28 & v31)) = *(v26 + 2 * v29);
        *(v26 + 2 * v29) = v31;
        *(a1 + 144) = v30--;
        ++v31;
      }

      while (v30 != -1);
      goto LABEL_20;
    }

    v31 = *(a1 + 156) + v21;
    *(a1 + 156) = v31;
    *(a1 + 144) = 0;
    v35 = *(a1 + 80);
    v36 = *(v35 + v31);
    *(a1 + 112) = v36;
    *(a1 + 112) = ((v36 << *(a1 + 128)) ^ *(v35 + v31 + 1)) & *(a1 + 124);
LABEL_22:
    if (v19 == v20)
    {
      v37 = *(a1 + 136);
      v38 = v37 < 0 ? 0 : (*(a1 + 80) + v37);
      _tr_flush_block(a1, v38, v31 - v37, 0);
      *(a1 + 136) = *(a1 + 156);
      flush_pending(*a1);
      if (!*(*a1 + 32))
      {
        return 0;
      }
    }
  }

  v40 = *(a1 + 136);
  if (v40 < 0)
  {
    v41 = 0;
  }

  else
  {
    v41 = (*(a1 + 80) + v40);
  }

  _tr_flush_block(a1, v41, *(a1 + 156) - v40, a2 == 4);
  *(a1 + 136) = *(a1 + 156);
  flush_pending(*a1);
  if (!*(*a1 + 32))
  {
    return 2 * (a2 == 4);
  }

  if (a2 == 4)
  {
    return 3;
  }

  return 1;
}

size_t lzma_xz_buffer_decode(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  result = 0;
  if (a4 >= 0xC && a5)
  {
    if (*a3 != 1484404733 || *(a3 + 4) != 90)
    {
      return 0;
    }

    v12 = *(a3 + 8);
    if (v12 != xz_simple_crc32((a3 + 6), 2))
    {
      return 0;
    }

    if (*(a3 + 6))
    {
      return 0;
    }

    v13 = *(a3 + 7);
    if (v13 > 0xF)
    {
      return 0;
    }

    result = 0;
    if (*(a3 + 7) > 3u)
    {
      if (v13 == 4)
      {
        v13 = 8;
      }

      else
      {
        if (v13 != 10)
        {
          return result;
        }

        v13 = 32;
      }
    }

    else if (*(a3 + 7))
    {
      if (v13 != 1)
      {
        return result;
      }

      v13 = 4;
    }

    if (a4 < 0xD)
    {
      return 0;
    }

    v14 = 0;
    v15 = 12;
    v32 = v13;
    while (1)
    {
      v16 = (a3 + v15);
      v17 = *(a3 + v15);
      v18 = v15 + 1;
      if (!*(a3 + v15))
      {
        break;
      }

      v33 = 4 * v17 + 4;
      v34 = v14;
      v19 = v33 + v18;
      if (v33 + v18 <= a4)
      {
        v20 = v15;
        v21 = *&v16[4 * v17];
        if (v21 == xz_simple_crc32(v16, 4 * v17))
        {
          v38 = v20 + 2;
          v22 = *(a3 + v18);
          if ((v22 & 0x3F) == 0 && ((*(a3 + v18) & 0x40) == 0 || (xz_read_multi_byte(a3, v19, &v38, &v37) & 0x80000000) == 0) && ((v22 & 0x80) == 0 || (xz_read_multi_byte(a3, v19, &v38, &v37) & 0x80000000) == 0))
          {
            v35 = 0;
            v36 = 0;
            if ((xz_read_multi_byte(a3, v19, &v38, &v36) & 0x80000000) == 0 && (xz_read_multi_byte(a3, v19, &v38, &v35) & 0x80000000) == 0 && v36 == 33 && v35 == 1 && v38 < v19 && *(a3 + v38) <= 0x28u)
            {
              v23 = v33 + v20;
              v38 = 0;
              v24 = lzma2_block_decode(a1 + v34, a2 - v34, a3 + v23, a4 - v23, &v38, a5);
              if (v24)
              {
                if (v38)
                {
                  v15 = v23 + v32 + ((v38 + 3) & 0xFFFFFFFFFFFFFFFCLL);
                  v14 = v24 + v34;
                  if (v15 < a4)
                  {
                    continue;
                  }
                }
              }
            }
          }
        }
      }

      return 0;
    }

    v37 = 0;
    v38 = v15 + 1;
    if ((xz_read_multi_byte(a3, a4, &v38, &v37) & 0x80000000) != 0)
    {
      return 0;
    }

    v25 = v37;
    if (v37)
    {
      while ((xz_read_multi_byte(a3, a4, &v38, &v36) & 0x80000000) == 0 && (xz_read_multi_byte(a3, a4, &v38, &v36) & 0x80000000) == 0)
      {
        if (!--v25)
        {
          goto LABEL_44;
        }
      }

      return 0;
    }

LABEL_44:
    v26 = (v38 - v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v27 = v26 + 4;
    if (&v16[v26 + 4] > a3 + a4)
    {
      return 0;
    }

    v28 = *&v16[v26];
    if (v28 != xz_simple_crc32((a3 + v15), v26))
    {
      return 0;
    }

    v29 = v27 + v15;
    if (v27 + v15 + 12 > a4)
    {
      return 0;
    }

    v30 = (a3 + v29);
    if (*(a3 + v29 + 8) != *(a3 + 6) || *(v30 + 5) != 23129)
    {
      return 0;
    }

    v31 = *v30;
    if (v31 == xz_simple_crc32(v30 + 4, 6))
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t xz_simple_crc32(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = -1;
  do
  {
    v3 = *a1++;
    v4 = crc32_lut4[(v2 ^ v3) & 0xF];
    v2 = (v4 >> 4) ^ (v2 >> 8) ^ crc32_lut4[(v4 ^ ((v2 ^ v3) >> 4)) & 0xF];
    --a2;
  }

  while (a2);
  return ~v2;
}

uint64_t xz_read_multi_byte(uint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v4 = *a3;
  if (*a3 < a2)
  {
    if (v4 + 9 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = v4 + 9;
    }

    v6 = *(a1 + v4);
    v7 = v6 & 0x7F;
    v8 = v4 + 1;
    if ((v6 & 0x80) == 0)
    {
LABEL_6:
      result = 0;
      *a3 = v8;
      *a4 = v7;
      return result;
    }

    v10 = 7;
    while (v5 != v8)
    {
      v11 = *(a1 + v8);
      if (!v11)
      {
        break;
      }

      v7 |= (v11 & 0x7F) << v10;
      v10 += 7;
      ++v8;
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

double lzma_stream_init(uint64_t a1, int a2)
{
  *(a1 + 32) = 0;
  v4 = malloc(0xA0uLL);
  if (v4)
  {
    v6 = v4;
    v4[8] = 0u;
    v4[9] = 0u;
    v4[6] = 0u;
    v4[7] = 0u;
    v4[4] = 0u;
    v4[5] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    *v4 = 0u;
    v4[1] = 0u;
    if (a2)
    {
      if (lzma_auto_decoder())
      {
LABEL_4:
        free(v6);
        return result;
      }
    }

    else if (lzma_easy_encoder())
    {
      goto LABEL_4;
    }

    *v6 = a2;
    result = -1.06069509e-97;
    *(v6 + 1) = 0xABCD000500000306;
    *(a1 + 32) = v6;
  }

  return result;
}

uint64_t lzma_stream_process(void *a1, char a2)
{
  v3 = a1[4];
  v4 = a1[3];
  *(v3 + 24) = a1[2];
  *(v3 + 32) = v4;
  v5 = a1[1];
  *(v3 + 48) = *a1;
  *(v3 + 56) = v5;
  *(v3 + 16) |= a2 & 1;
  result = lzma_code();
  v7 = *(v3 + 32);
  a1[2] += a1[3] - v7;
  a1[3] = v7;
  v8 = *(v3 + 56);
  *a1 += a1[1] - v8;
  a1[1] = v8;
  if (!result)
  {
    return 0;
  }

  if (result == 1)
  {
    return result;
  }

  if (result != 10)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t lzma_stream_end(uint64_t a1)
{
  lzma_end();
  free(*(a1 + 32));
  return 0;
}

uint64_t touchpadCodecEncodeImage(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4, unint64_t a5, unsigned int a6)
{
  v7 = *(a1 + 656) == 0;
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v8 = *(a1 + 664);
  if (a5 >= 2 * v8)
  {
    if (a6 > 1)
    {
      return 0;
    }

    v9 = v7 | a6;
    v10 = *(a1 + 668);
    *&v115 = a2;
    *(&v115 + 1) = a3;
    v117 = 0;
    v116 = 0uLL;
    v110 = v10;
    codecWriteHeader(&v115, v8, v10, *(a1 + 672), v9);
    v109 = v9;
    if (v9)
    {
      codecResetModel(a1);
    }

    if (!v110)
    {
LABEL_105:
      FooterID = codecGetFooterID(a1);
      v94 = HIDWORD(v117);
      v95 = v117 | (FooterID << SBYTE4(v117));
      v96 = HIDWORD(v117) + 12;
      LODWORD(v117) = v95;
      HIDWORD(v117) += 12;
      if (v94 >= 5)
      {
        v97 = *(&v115 + 1);
        v98 = v116;
        v99 = v116 + 1;
        *&v116 = v116 + 1;
        if (v98 < *(&v115 + 1))
        {
          v100 = (*(&v116 + 1))++;
          *(v115 + v100) = v95;
          v95 = v117;
          v96 = HIDWORD(v117);
          v97 = *(&v115 + 1);
          v99 = v116;
        }

        v101 = v95 >> 8;
        v102 = v96 - 8;
        v117 = __PAIR64__(v102, v101);
        *&v116 = v99 + 1;
        if (v99 < v97)
        {
          v103 = (*(&v116 + 1))++;
          *(v115 + v103) = v101;
          v101 = v117;
          v102 = HIDWORD(v117);
        }

        v95 = v101 >> 8;
        v96 = v102 - 8;
        v117 = __PAIR64__(v96, v95);
      }

      if (v96 >= 1)
      {
        do
        {
          v104 = v116;
          *&v116 = v116 + 1;
          if (v104 < *(&v115 + 1))
          {
            v105 = (*(&v116 + 1))++;
            *(v115 + v105) = v95;
            v95 = v117;
            v96 = HIDWORD(v117);
          }

          v95 >>= 8;
          v106 = __OFSUB__(v96, 8);
          v96 -= 8;
          v117 = __PAIR64__(v96, v95);
        }

        while (!((v96 < 0) ^ v106 | (v96 == 0)));
      }

      result = v116;
      if (v116)
      {
        v108 = v116 == *(&v116 + 1);
      }

      else
      {
        v108 = 0;
      }

      if (v108)
      {
        ++*(a1 + 656);
        return result;
      }

      goto LABEL_2;
    }

    v113 = 0;
    v11 = 0;
    while (1)
    {
      v112 = v11;
      v12 = (v109 & (v11 != 0)) != 0 ? -v8 : 0;
      if (v8)
      {
        break;
      }

LABEL_104:
      v11 = v112 + 1;
      v113 += v8;
      a4 = (a4 + a5);
      if (v112 + 1 == v110)
      {
        goto LABEL_105;
      }
    }

    v13 = a4;
    v14 = *(a1 + 632);
    v15 = *(v14 + 2 * (v8 * v11) + 2 * v12);
    v16 = (v14 + 2 * v113);
    v17 = 2 * v12 + 2;
    v18 = 1;
    v19 = v8;
    v20 = v15;
    v21 = v15;
    v22 = v15;
    while (1)
    {
      if (v18 < v8)
      {
        v22 = *(v16 + v17);
      }

      v23 = *v13;
      *v16 = *v13;
      v24 = v15 - v20;
      if (v15 - v20 <= -2)
      {
        v25 = -50;
      }

      else
      {
        v25 = 0;
      }

      if (v24 > 1)
      {
        v25 = 50;
      }

      if (v24 < -40)
      {
        v25 = -25;
      }

      if (v24 <= 40)
      {
        v26 = v25;
      }

      else
      {
        v26 = 25;
      }

      v27 = v20 - v21;
      if (v20 - v21 <= -2)
      {
        v28 = -10;
      }

      else
      {
        v28 = 0;
      }

      if (v27 > 1)
      {
        v28 = 10;
      }

      if (v27 < -40)
      {
        v28 = -5;
      }

      if (v27 <= 40)
      {
        v29 = v28;
      }

      else
      {
        v29 = 5;
      }

      v30 = v29 + v26;
      v31 = v21 - v22;
      if (v21 - v22 <= -2)
      {
        v32 = -2;
      }

      else
      {
        v32 = 0;
      }

      if (v31 > 1)
      {
        v32 = 2;
      }

      if (v31 < -40)
      {
        v32 = -1;
      }

      if (v31 <= 40)
      {
        v33 = v32;
      }

      else
      {
        v33 = 1;
      }

      v34 = v30 + v33;
      v35 = v21 - v20 + v15;
      if (v35 <= v15)
      {
        v36 = v15;
      }

      else
      {
        v36 = v21 - v20 + v15;
      }

      if (v35 < v15)
      {
        v15 += v21 - v20;
      }

      if (v36 >= v21)
      {
        v37 = v21;
      }

      else
      {
        v37 = v36;
      }

      if (v15 <= v37)
      {
        v15 = v37;
      }

      v38 = v23 - v15;
      v39 = v34 < 0;
      if (v34 < 0)
      {
        v34 = -v34;
      }

      if (v39)
      {
        v38 = -v38;
      }

      v40 = a1 + 10 * v34;
      v41 = *(v40 + 8);
      v42 = v38 - ((*(v40 + 4) + 8) >> 4);
      v43 = v42;
      v44 = ~(2 * v42);
      v45 = (2 * v42) ^ ~(v44 >> 31);
      v46 = ((2 * v42) ^ ~(v44 >> 31));
      v47 = v46 >> v41;
      if (v46 >> v41 > 0xF)
      {
        v65 = v117;
        v66 = HIDWORD(v117);
        v67 = HIDWORD(v117) + 16;
        HIDWORD(v117) += 16;
        if (v66 >= 1)
        {
          v68 = *(&v115 + 1);
          v69 = v116;
          v70 = v116 + 1;
          *&v116 = v116 + 1;
          if (v69 < *(&v115 + 1))
          {
            v71 = (*(&v116 + 1))++;
            *(v115 + v71) = v117;
            v65 = v117;
            v67 = HIDWORD(v117);
            v68 = *(&v115 + 1);
            v70 = v116;
          }

          v72 = v65 >> 8;
          v73 = v67 - 8;
          v117 = __PAIR64__(v73, v72);
          *&v116 = v70 + 1;
          if (v70 < v68)
          {
            v74 = (*(&v116 + 1))++;
            *(v115 + v74) = v72;
            v72 = v117;
            v73 = HIDWORD(v117);
          }

          v65 = v72 >> 8;
          v67 = v73 - 8;
        }

        v75 = v65 | (v46 << v67);
        v76 = v67 + 16;
        LODWORD(v117) = v75;
        HIDWORD(v117) = v67 + 16;
        if (v67 >= 1)
        {
          v78 = *(&v115 + 1);
          v77 = v116;
          v79 = v116 + 1;
          *&v116 = v116 + 1;
          if (v77 < *(&v115 + 1))
          {
            v80 = (*(&v116 + 1))++;
            *(v115 + v80) = v75;
            v75 = v117;
            v76 = HIDWORD(v117);
            v78 = *(&v115 + 1);
            v79 = v116;
          }

          v63 = v75 >> 8;
          v64 = v76 - 8;
          LODWORD(v117) = v63;
          HIDWORD(v117) = v76 - 8;
          *&v116 = v79 + 1;
          if (v79 < v78)
          {
LABEL_81:
            v81 = (*(&v116 + 1))++;
            *(v115 + v81) = v63;
            v63 = v117;
            v64 = HIDWORD(v117);
          }

LABEL_82:
          LODWORD(v117) = v63 >> 8;
          HIDWORD(v117) = v64 - 8;
        }
      }

      else
      {
        v48 = v117 | (1 << v47 << SBYTE4(v117));
        v49 = v47 + HIDWORD(v117) + 1;
        v117 = __PAIR64__(v49, v48);
        if (v49 >= 17)
        {
          v50 = *(&v115 + 1);
          v51 = v116;
          v52 = v116 + 1;
          *&v116 = v116 + 1;
          if (v51 < *(&v115 + 1))
          {
            v53 = (*(&v116 + 1))++;
            *(v115 + v53) = v48;
            v48 = v117;
            v49 = HIDWORD(v117);
            v50 = *(&v115 + 1);
            v52 = v116;
          }

          v54 = v48 >> 8;
          v55 = v49 - 8;
          v117 = __PAIR64__(v55, v54);
          *&v116 = v52 + 1;
          if (v52 < v50)
          {
            v56 = (*(&v116 + 1))++;
            *(v115 + v56) = v54;
            v54 = v117;
            v55 = HIDWORD(v117);
          }

          v48 = v54 >> 8;
          v49 = v55 - 8;
        }

        v57 = v48 | ((v45 - (v47 << v41)) << v49);
        v58 = v49 + v41;
        v117 = __PAIR64__(v58, v57);
        if (v58 >= 17)
        {
          v60 = *(&v115 + 1);
          v59 = v116;
          v61 = v116 + 1;
          *&v116 = v116 + 1;
          if (v59 < *(&v115 + 1))
          {
            v62 = (*(&v116 + 1))++;
            *(v115 + v62) = v57;
            v57 = v117;
            v58 = HIDWORD(v117);
            v60 = *(&v115 + 1);
            v61 = v116;
          }

          v63 = v57 >> 8;
          v64 = v58 - 8;
          LODWORD(v117) = v63;
          HIDWORD(v117) = v58 - 8;
          *&v116 = v61 + 1;
          if (v61 < v60)
          {
            goto LABEL_81;
          }

          goto LABEL_82;
        }
      }

      v82 = *v40;
      v83 = *(v40 + 9) + 1;
      *(v40 + 9) = v83;
      v84 = *(v40 + 8);
      if (v43 >= 0)
      {
        v85 = v43;
      }

      else
      {
        v85 = -v43;
      }

      if (v43 <= 0)
      {
        if ((v43 & 0x80000000) == 0)
        {
          goto LABEL_90;
        }

        v86 = -1;
      }

      else
      {
        v86 = 1;
      }

      *(v40 + 4) += v86;
LABEL_90:
      v87 = v82 + v85;
      v88 = v83 << v84;
      if (v84)
      {
        v89 = v88 < 2 * v87;
      }

      else
      {
        v89 = 1;
      }

      v90 = !v89;
      v91 = v90 << 31 >> 31;
      if (v88 >= v87)
      {
        v92 = v91;
      }

      else
      {
        v92 = 1;
      }

      *v40 = v87;
      *(v40 + 8) = v84 + v92;
      if (v83 == 64)
      {
        *(v40 + 9) = 32;
        *v40 = v87 - (v87 >> 1);
      }

      ++v13;
      ++v16;
      ++v18;
      v15 = v23;
      v20 = v21;
      v21 = v22;
      if (!--v19)
      {
        goto LABEL_104;
      }
    }
  }

LABEL_2:
  codecResetModel(a1);
  return 0;
}

size_t lzma2_block_decode(unint64_t a1, size_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v32 = 0u;
  v33 = 0u;
  if (!a4)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = v10 + 1;
    v12 = a3 + v10;
    v13 = *(a3 + v10);
    if ((*(a3 + v10) & 0x80000000) == 0)
    {
      break;
    }

    v19 = v10 + 5;
    if (v10 + 5 > a4)
    {
      return 0;
    }

    v20 = *(a3 + v11);
    v21 = *(v12 + 2);
    v22 = *(v12 + 3);
    v23 = (v13 >> 5) & 3;
    if ((v23 - 2) < 2)
    {
      if (v19 >= a4)
      {
        return 0;
      }

      v24 = *(a3 + v19);
      if (v24 > 0xE0)
      {
        return 0;
      }

      v25 = *(a3 + v19) / 9u;
      BYTE10(v33) = v24 - 9 * v25;
      BYTE8(v33) = (((v24 - ((109 * v24) >> 8)) >> 1) + ((109 * v24) >> 8)) >> 5;
      BYTE9(v33) = v25 - 5 * ((52 * v25) >> 8);
      BYTE11(v33) = ~(-1 << SBYTE9(v33));
      BYTE12(v33) = ~(-1 << SBYTE8(v33));
      if ((BYTE9(v33) + BYTE10(v33)) > 4u)
      {
        goto LABEL_31;
      }

      v19 = v10 + 6;
LABEL_21:
      lzma1_model_reset(&v32, a6);
      goto LABEL_22;
    }

    if (v23)
    {
      goto LABEL_21;
    }

LABEL_22:
    v26 = (((v21 | (v20 << 8)) & 0xFFE0FFFF | ((v13 & 0x1F) << 16)) + 1);
    v10 = __rev16(v22) + 1 + v19;
    v27 = v10 > a4 || v9 + v26 > a2;
    if (v27 || lzma1_chunk_decode(&v32, a1, (a1 + v9), v26 + a1 + v9, a1 + a2, (a3 + v19), a4 - v19) != v26)
    {
      return 0;
    }

    v9 += v26;
LABEL_28:
    if (v10 >= a4)
    {
      return 0;
    }
  }

  if (*(a3 + v10))
  {
    v14 = v10 + 3;
    if (v13 > 2 || v14 > a4)
    {
      return 0;
    }

    v16 = (*(v12 + 2) | (*(a3 + v11) << 8)) + 1;
    v10 = v16 + v14;
    v17 = v16 + v9;
    if (v16 + v14 > a4 || v17 > a2)
    {
      return 0;
    }

    memcpy((a1 + v9), (a3 + v14), v16);
    v9 = v17;
    goto LABEL_28;
  }

  *a5 = v11;
LABEL_31:
  if ((v13 & 0x80) != 0)
  {
    return 0;
  }

  return v9;
}

unint64_t cosl_model_update(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = (result + 0x80000);
  for (i = 1; ; i = 0)
  {
    v5 = i;
    if (a3)
    {
      break;
    }

LABEL_74:
    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 32;
  v12 = 32 - *(result + 524304);
  v13 = *v3;
  v14 = *(result + 0x80000) + *(result + 524296);
  while (1)
  {
    v15 = v13 + 8 * (v10 >> v12);
    if (v15 < v13)
    {
      break;
    }

    v16 = v13 + 8 * (v8 >> v12);
    if (v16 < v13)
    {
      break;
    }

    v17 = v13 + 8 * (v7 >> v12);
    if (v17 < v13)
    {
      break;
    }

    v18 = *(a2 + v6);
    v19 = v11 << 8;
    v20 = 1;
    for (j = 7; j != -1; --j)
    {
      v22 = (v18 >> j) & 1;
      v23 = v20;
      v24 = (result + 8 * v19 + 8 * v20);
      if (v5)
      {
        if (v24 && (v24 >= v3 || v24 < result))
        {
          goto LABEL_76;
        }

        v26 = *v24;
        v25 = v24[1];
        if (v25 >= 0xFFFF0000)
        {
          v25 -= v25 >> 1;
          v26 = v26 - (v26 >> 1) - (v26 - (v26 >> 1) == v25);
        }

        *v24 = v26 + v22;
        v24[1] = v25 + 1;
        v27 = (v15 + 8 * v23);
        if (v27)
        {
          if (v27 >= v14 || v27 < v15)
          {
            goto LABEL_76;
          }
        }

        v29 = *v27;
        v28 = v27[1];
        if (v28 >= 0xFFFF0000)
        {
          v28 -= v28 >> 1;
          v29 = v29 - (v29 >> 1) - (v29 - (v29 >> 1) == v28);
        }

        *v27 = v29 + v22;
        v27[1] = v28 + 1;
        v30 = (v16 + 8 * v23);
        if (v30)
        {
          if (v30 >= v14 || v30 < v16)
          {
            goto LABEL_76;
          }
        }

        v31 = v30[1];
        v32 = *v30 - (*v30 >> 1) - (*v30 - (*v30 >> 1) == v31 - (v31 >> 1));
        v33 = __CFADD__(v31, 0x10000);
        if (v31 >= 0xFFFF0000)
        {
          v31 -= v31 >> 1;
        }

        if (!v33)
        {
          v32 = *v30;
        }

        *v30 = v32 + v22;
        v30[1] = v31 + 1;
        v34 = (v17 + 8 * v23);
        if (v34)
        {
          if (v34 >= v14 || v34 < v17)
          {
            goto LABEL_76;
          }
        }

        v35 = v34[1];
        v36 = *v34 - (*v34 >> 1) - (*v34 - (*v34 >> 1) == v35 - (v35 >> 1));
        if (v35 >= 0xFFFF0000)
        {
          v37 = v35 - (v35 >> 1);
        }

        else
        {
          v36 = *v34;
          v37 = v34[1];
        }
      }

      else
      {
        if (v24 && (v24 >= v3 || v24 < result))
        {
          goto LABEL_76;
        }

        v38 = &counter_get_quantizer[(((*v24 << 16) + (v24[1] >> 1)) / v24[1]) >> 10];
        if (v38 >= "need dictionary" || v38 < counter_get_quantizer)
        {
          goto LABEL_76;
        }

        v40 = *v38;
        v41 = (v15 + 8 * v23);
        if (v41)
        {
          if (v41 >= v14 || v41 < v15)
          {
            goto LABEL_76;
          }
        }

        v42 = &counter_get_quantizer[(((*v41 << 16) + (v41[1] >> 1)) / v41[1]) >> 10];
        if (v42 >= "need dictionary" || v42 < counter_get_quantizer)
        {
          goto LABEL_76;
        }

        v44 = *v42;
        v45 = (v16 + 8 * v23);
        if (v45)
        {
          if (v45 >= v14 || v45 < v16)
          {
            goto LABEL_76;
          }
        }

        v46 = &counter_get_quantizer[(((*v45 << 16) + (v45[1] >> 1)) / v45[1]) >> 10];
        if (v46 >= "need dictionary")
        {
          goto LABEL_76;
        }

        if (v46 < counter_get_quantizer)
        {
          goto LABEL_76;
        }

        v47 = *v46;
        v48 = (v17 + 8 * v23);
        if (v48)
        {
          if (v48 >= v14 || v48 < v17)
          {
            goto LABEL_76;
          }
        }

        v49 = &counter_get_quantizer[(((*v48 << 16) + (v48[1] >> 1)) / v48[1]) >> 10];
        if (v49 >= "need dictionary")
        {
          goto LABEL_76;
        }

        if (v49 < counter_get_quantizer)
        {
          goto LABEL_76;
        }

        v50 = result + 524328 + (v40 << 15) + (v44 << 11) + (v47 << 7);
        v34 = (v50 + 8 * *v49);
        if (v34)
        {
          if (v34 >= v50 + 128 || v34 < v50)
          {
            goto LABEL_76;
          }
        }

        v36 = *v34;
        v37 = v34[1];
        if (v37 >= 0xFFFF0000)
        {
          v37 -= v37 >> 1;
          v36 = v36 - (v36 >> 1) - (v36 - (v36 >> 1) == v37);
        }
      }

      *v34 = v36 + v22;
      v34[1] = v37 + 1;
      v20 = v22 | (2 * v23);
    }

    if (v18 - 65 >= 0x1A)
    {
      v51 = v18;
    }

    else
    {
      v51 = v18 + 32;
    }

    v52 = ((v51 & 0xDF) - 91) >= 0xE6u || v51 <= -1;
    v53 = -1640531535 * (v7 + v51);
    if (v52)
    {
      v7 = v53;
    }

    else
    {
      v7 = 0;
    }

    v8 = -1640531535 * (v9 + v18);
    v9 = -1640531535 * (v10 + v18);
    v10 = -1640531535 * (v19 | v18);
    ++v6;
    v11 = v18;
    if (v6 == a3)
    {
      goto LABEL_74;
    }
  }

LABEL_76:
  __break(0x5519u);
  return result;
}

unint64_t cosl_codec_encode(unint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!a5)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v6;
    v6 = v7;
    v7 += v8;
    v5 = (v5 + 1);
  }

  while (a5 - v6 >= v7);
  v9 = 1 << v5;
  if (v5)
  {
    v10 = v5 - 1;
    v11 = a5;
    do
    {
      v12 = 1 << v10;
      if (v11 >= v7)
      {
        v13 = v7;
      }

      else
      {
        v13 = 0;
      }

      if (v11 < v7)
      {
        v12 = 0;
      }

      v11 -= v13;
      v9 |= v12;
      v14 = v7 - v6;
      --v10;
      v7 = v6;
      v6 = v14;
    }

    while (v10 != -1);
  }

  LODWORD(v15) = 0;
  v16 = 0;
  v136 = a5 + ((73 - __clz(v9)) >> 3);
  v17 = 1;
  do
  {
    v18 = v16;
    v16 = v17;
    v17 += v18;
    v15 = (v15 + 1);
  }

  while (a5 - v16 >= v17);
  v19 = 1 << v15;
  if (!v15)
  {
    goto LABEL_23;
  }

  v20 = v15 - 1;
  v21 = a5;
  do
  {
    v22 = 1 << v20;
    if (v21 >= v17)
    {
      v23 = v17;
    }

    else
    {
      v23 = 0;
    }

    if (v21 < v17)
    {
      v22 = 0;
    }

    v21 -= v23;
    v19 |= v22;
    v24 = v17 - v16;
    --v20;
    v17 = v16;
    v16 = v24;
  }

  while (v20 != -1);
  if (!v19)
  {
    v26 = 0;
    v25 = 0;
    v27 = -1;
LABEL_46:
    v34 = v25 + ((v27 - v25) >> 1);
    if ((v34 ^ v25) >> 24)
    {
      v39 = v25;
      v38 = v34;
LABEL_58:
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = a2 + a3;
      v47 = 32;
LABEL_59:
      v48 = v47 << 8;
      v47 = *(a4 + v41);
      v49 = -*(result + 24);
      v50 = v45 >> v49;
      v51 = v43 >> v49;
      v52 = v42 >> v49;
      v53 = 1;
      v54 = 7;
      while (1)
      {
        v55 = v54;
        v56 = (*result + ((v53 + v48) >> 1));
        v57 = v56 < *result || *result == 0;
        v58 = !v57 && *result + 0x8000 > v56;
        if (!v58)
        {
          break;
        }

        v59 = *(result + 8);
        v60 = (v53 + v50) >> 1;
        v61 = (v59 + v60);
        if (v59 + v60 < v59)
        {
          break;
        }

        v62 = v59 + *(result + 16);
        if (v61 >= v62)
        {
          break;
        }

        v63 = (v53 + v51) >> 1;
        v64 = (v59 + v63);
        if (v59 + v63 < v59)
        {
          break;
        }

        if (v64 >= v62)
        {
          break;
        }

        v65 = (v59 + ((v53 + v52) >> 1));
        if (v65 < v59 || v65 >= v62)
        {
          break;
        }

        v66 = (*v56 >> (4 * (v53 & 1))) & 0xF;
        v67 = (*v61 >> (4 * ((v53 + v50) & 1))) & 0xF;
        v68 = (*v65 >> (4 * ((v53 + v52) & 1))) & 0xF;
        v69 = *(result + 48) + (v66 << 12) + (v67 << 8) + 16 * ((*v64 >> (4 * ((v53 + v51) & 1))) & 0xF);
        v70 = (v69 + v68);
        if (v69 + v68)
        {
          if (v70 >= v69 + 16 || v70 < v69)
          {
            break;
          }
        }

        v72 = v39 + ((*v70 * (v38 - v39)) >> 8);
        if ((v47 >> v55))
        {
          v73 = v39;
        }

        else
        {
          v73 = v72 + 1;
        }

        if ((v47 >> v55))
        {
          v74 = v72;
        }

        else
        {
          v74 = v38;
        }

        if (!((v74 ^ v73) >> 24))
        {
          while (1)
          {
            v75 = v26 >= a3 ? 0 : v26;
            v76 = (a2 + v75);
            if (v76 >= v46 || v76 < a2)
            {
              goto LABEL_230;
            }

            v38 = (v74 << 8) | 0xFF;
            v39 = v73 << 8;
            *v76 = HIBYTE(v73);
            ++v26;
            v78 = ((v74 << 8) ^ (v73 << 8)) >> 24;
            v74 = v38;
            v73 <<= 8;
            if (v78)
            {
              goto LABEL_98;
            }
          }
        }

        v39 = v73;
        v38 = v74;
LABEL_98:
        v53 = (v47 >> v55) & 1 | (2 * v53);
        v54 = v55 - 1;
        if (!v55)
        {
          if (v47 - 65 >= 0x1A)
          {
            v79 = v47;
          }

          else
          {
            v79 = v47 + 32;
          }

          v80 = ((v79 & 0xDF) - 91) >= 0xE6u || v79 <= -1;
          v81 = -1640531535 * (v42 + v79);
          if (v80)
          {
            v42 = v81;
          }

          else
          {
            v42 = 0;
          }

          v43 = -1640531535 * (v44 + v47);
          v44 = -1640531535 * (v45 + v47);
          v45 = -1640531535 * (v48 | v47);
          if (++v41 != a5)
          {
            goto LABEL_59;
          }

LABEL_128:
          while (1)
          {
            v89 = HIBYTE(v39) + 1;
            if (v89 != HIBYTE(v38))
            {
              break;
            }

            v82 = (v39 | 0xFFFFFF) - v39;
            if ((v38 & 0xFFFFFF) <= v82)
            {
              v83 = v39;
            }

            else
            {
              v83 = v38 & 0xFF000000;
            }

            if ((v38 & 0xFFFFFF) <= v82)
            {
              v84 = v39 | 0xFFFFFF;
            }

            else
            {
              v84 = v38;
            }

            if (!((v84 ^ v83) >> 24))
            {
              while (1)
              {
                v85 = v26 >= a3 ? 0 : v26;
                v86 = (a2 + v85);
                if (v86 >= v46 || v86 < a2)
                {
                  goto LABEL_230;
                }

                v38 = (v84 << 8) | 0xFF;
                v39 = v83 << 8;
                *v86 = HIBYTE(v83);
                ++v26;
                v88 = ((v84 << 8) ^ (v83 << 8)) >> 24;
                v84 = v38;
                v83 <<= 8;
                if (v88)
                {
                  goto LABEL_128;
                }
              }
            }

            v39 = v83;
            v38 = v84;
          }

          if (v26 >= a3)
          {
            v90 = 0;
          }

          else
          {
            v90 = v26;
          }

          v91 = (a2 + v90);
          if (v91 < v46 && v91 >= a2)
          {
            *v91 = v89;
            result = v26 + 1;
            if (v26 + 1 <= a3 && v26 < v136)
            {
              return result;
            }

            LODWORD(v92) = 0;
            v93 = 0;
            v94 = 1;
            do
            {
              v95 = v93;
              v93 = v94;
              v94 += v95;
              v92 = (v92 + 1);
            }

            while (a5 - v93 >= v94);
            v96 = 1 << v92;
            if (!v92)
            {
              goto LABEL_147;
            }

            v97 = v92 - 1;
            v98 = a5;
            do
            {
              v99 = 1 << v97;
              if (v98 >= v94)
              {
                v100 = v94;
              }

              else
              {
                v100 = 0;
              }

              if (v98 < v94)
              {
                v99 = 0;
              }

              v98 -= v100;
              v96 |= v99;
              v101 = v94 - v93;
              --v97;
              v94 = v93;
              v93 = v101;
            }

            while (v97 != -1);
            if (!v96)
            {
              v103 = 0;
              v102 = 0;
              v104 = -1;
LABEL_168:
              v111 = v102 + ((v104 - v102) >> 1) + 1;
              if ((v104 ^ v111) >> 24)
              {
                v115 = v104;
                v116 = v102 + ((v104 - v102) >> 1) + 1;
LABEL_180:
                v118 = 0;
                while (2)
                {
                  v119 = *(a4 + v118) | 0x100;
                  do
                  {
                    v120 = v116 + ((v115 - v116) >> 1);
                    if ((v119 & 0x80) != 0)
                    {
                      v121 = v116;
                    }

                    else
                    {
                      v121 = v120 + 1;
                    }

                    if ((v119 & 0x80) == 0)
                    {
                      v120 = v115;
                    }

                    if (!((v120 ^ v121) >> 24))
                    {
                      while (1)
                      {
                        v122 = v103 >= a3 ? 0 : v103;
                        v123 = (a2 + v122);
                        if (a2 + v122 >= v46 || v123 < a2)
                        {
                          goto LABEL_230;
                        }

                        v115 = (v120 << 8) | 0xFF;
                        v116 = v121 << 8;
                        *v123 = HIBYTE(v121);
                        ++v103;
                        v125 = ((v120 << 8) ^ (v121 << 8)) >> 24;
                        v120 = v115;
                        v121 <<= 8;
                        if (v125)
                        {
                          goto LABEL_199;
                        }
                      }
                    }

                    v116 = v121;
                    v115 = v120;
LABEL_199:
                    v32 = v119 >= 0x8000;
                    v119 *= 2;
                  }

                  while (!v32);
                  if (++v118 != a5)
                  {
                    continue;
                  }

                  break;
                }

LABEL_220:
                while (1)
                {
                  v133 = HIBYTE(v116) + 1;
                  if (v133 != HIBYTE(v115))
                  {
                    break;
                  }

                  v126 = v116 | 0xFFFFFF;
                  v127 = (v116 | 0xFFFFFF) - v116;
                  if ((v115 & 0xFFFFFF) <= v127)
                  {
                    v128 = v116;
                  }

                  else
                  {
                    v128 = v115 & 0xFF000000;
                  }

                  if ((v115 & 0xFFFFFF) > v127)
                  {
                    v126 = v115;
                  }

                  if (!((v126 ^ v128) >> 24))
                  {
                    while (1)
                    {
                      v129 = v103 >= a3 ? 0 : v103;
                      v130 = (a2 + v129);
                      if (a2 + v129 >= v46 || v130 < a2)
                      {
                        goto LABEL_230;
                      }

                      v115 = (v126 << 8) | 0xFF;
                      v116 = v128 << 8;
                      *v130 = HIBYTE(v128);
                      ++v103;
                      v132 = ((v126 << 8) ^ (v128 << 8)) >> 24;
                      v126 = v115;
                      v128 <<= 8;
                      if (v132)
                      {
                        goto LABEL_220;
                      }
                    }
                  }

                  v116 = v128;
                  v115 = v126;
                }

                if (v103 >= a3)
                {
                  v134 = 0;
                }

                else
                {
                  v134 = v103;
                }

                v135 = (a2 + v134);
                if (v135 < v46 && v135 >= a2)
                {
                  *v135 = v133;
                  if (v103 + 1 <= a3)
                  {
                    return v103 + 1;
                  }

                  else
                  {
                    return 0;
                  }
                }
              }

              else
              {
                while (1)
                {
                  v112 = v103 >= a3 ? 0 : v103;
                  v113 = (a2 + v112);
                  if (a2 + v112 >= v46 || v113 < a2)
                  {
                    break;
                  }

                  v115 = (v104 << 8) | 0xFF;
                  v116 = v111 << 8;
                  *v113 = HIBYTE(v111);
                  ++v103;
                  v117 = ((v104 << 8) ^ (v111 << 8)) >> 24;
                  v104 = v115;
                  v111 <<= 8;
                  if (v117)
                  {
                    goto LABEL_180;
                  }
                }
              }
            }

            else
            {
LABEL_147:
              v102 = 0;
              v103 = 0;
              v104 = -1;
              while (1)
              {
                v105 = v102 + ((v104 - v102) >> 1);
                if (v96)
                {
                  v106 = v102;
                }

                else
                {
                  v106 = v105 + 1;
                }

                if ((v96 & 1) == 0)
                {
                  v105 = v104;
                }

                if (!((v105 ^ v106) >> 24))
                {
                  break;
                }

                v102 = v106;
                v104 = v105;
LABEL_165:
                v58 = v96 > 1;
                v96 >>= 1;
                if (!v58)
                {
                  goto LABEL_168;
                }
              }

              while (1)
              {
                v107 = v103 >= a3 ? 0 : v103;
                v108 = (a2 + v107);
                if (a2 + v107 >= v46 || v108 < a2)
                {
                  break;
                }

                v104 = (v105 << 8) | 0xFF;
                v102 = v106 << 8;
                *v108 = HIBYTE(v106);
                ++v103;
                v110 = ((v105 << 8) ^ (v106 << 8)) >> 24;
                v105 = v104;
                v106 <<= 8;
                if (v110)
                {
                  goto LABEL_165;
                }
              }
            }
          }

          break;
        }
      }
    }

    else
    {
      while (1)
      {
        v35 = v26 >= a3 ? 0 : v26;
        v36 = (a2 + v35);
        if (v36 >= a2 + a3 || v36 < a2)
        {
          break;
        }

        v38 = (v34 << 8) | 0xFF;
        v39 = v25 << 8;
        *v36 = HIBYTE(v25);
        ++v26;
        v40 = ((v34 << 8) ^ (v25 << 8)) >> 24;
        v34 = v38;
        v25 <<= 8;
        if (v40)
        {
          goto LABEL_58;
        }
      }
    }
  }

  else
  {
LABEL_23:
    v25 = 0;
    v26 = 0;
    v27 = -1;
    while (1)
    {
      v28 = (v19 & 1) != 0 ? v25 : v25 + ((v27 - v25) >> 1) + 1;
      v29 = (v19 & 1) != 0 ? v25 + ((v27 - v25) >> 1) : v27;
      if (!((v29 ^ v28) >> 24))
      {
        break;
      }

      v25 = v28;
      v27 = v29;
LABEL_42:
      v58 = v19 > 1;
      v19 >>= 1;
      if (!v58)
      {
        goto LABEL_46;
      }
    }

    while (1)
    {
      v30 = v26 >= a3 ? 0 : v26;
      v31 = (a2 + v30);
      v32 = v31 < a2 + a3 && v31 >= a2;
      if (!v32)
      {
        break;
      }

      v27 = (v29 << 8) | 0xFF;
      v25 = v28 << 8;
      *v31 = HIBYTE(v28);
      ++v26;
      v33 = ((v29 << 8) ^ (v28 << 8)) >> 24;
      v29 = v27;
      v28 <<= 8;
      if (v33)
      {
        goto LABEL_42;
      }
    }
  }

LABEL_230:
  __break(0x5519u);
  return result;
}

void cosl_codec_get_decoded_size(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  while ((v6 ^ v7) >> 24)
  {
    v13 = v7;
    v12 = v6;
LABEL_14:
    v15 = v13 + ((v12 - v13) >> 1);
    v4 |= (v5 <= v15) << v3;
    if ((2 * v4) >> v3 != 3)
    {
      v6 = v5 > v15 ? v12 : v13 + ((v12 - v13) >> 1);
      v7 = v5 > v15 ? v15 + 1 : v13;
      if (++v3 != 64)
      {
        continue;
      }
    }

    if (v4 >= 2)
    {
      v16 = 0;
      v17 = 1;
      v18 = 2;
      do
      {
        v19 = v18;
        v16 += ((v4 << 63) >> 63) & v17;
        v18 += v17;
        v17 = v19;
        v20 = v4 > 3;
        v4 >>= 1;
      }

      while (v20);
    }

    return;
  }

  while (1)
  {
    v9 = v8 >= a3 ? 0 : v8;
    v10 = (a2 + v9);
    if (a2 + v9 >= a2 + a3 || v10 < a2)
    {
      break;
    }

    v12 = (v6 << 8) | 0xFF;
    v13 = v7 << 8;
    v5 = *v10 | (v5 << 8);
    ++v8;
    v14 = ((v6 << 8) ^ (v7 << 8)) >> 24;
    v6 = v12;
    v7 <<= 8;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(0x5519u);
}

uint64_t cosl_codec_decode(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if (!a5)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = a2 + a3;
  v12 = a4 + a5;
  do
  {
    if (!((v8 ^ v9) >> 24))
    {
      while (1)
      {
        v13 = v10 >= a5 ? 0 : v10;
        v14 = (a4 + v13);
        v15 = v14 < v12 && v14 >= a4;
        if (!v15)
        {
          goto LABEL_126;
        }

        v16 = (v8 << 8) | 0xFF;
        v17 = v9 << 8;
        v7 = *v14 | (v7 << 8);
        ++v10;
        v18 = ((v8 << 8) ^ (v9 << 8)) >> 24;
        v8 = v16;
        v9 <<= 8;
        if (v18)
        {
          goto LABEL_15;
        }
      }
    }

    v17 = v9;
    v16 = v8;
LABEL_15:
    v19 = v17 + ((v16 - v17) >> 1);
    if (v7 > v19)
    {
      v9 = v19 + 1;
    }

    else
    {
      v9 = v17;
    }

    if (v7 > v19)
    {
      v8 = v16;
    }

    else
    {
      v8 = v17 + ((v16 - v17) >> 1);
    }

    v6 |= (v7 <= v19) << v5;
    if ((2 * v6) >> v5 == 3)
    {
      break;
    }

    ++v5;
  }

  while (v5 != 64);
  if (v6 < 2)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 1;
    v22 = 2;
    do
    {
      v23 = v22;
      v20 += ((v6 << 63) >> 63) & v21;
      v22 += v21;
      v21 = v23;
      v62 = v6 > 3;
      v6 >>= 1;
    }

    while (v62);
  }

  if (v20 >= a3)
  {
    v24 = a3;
  }

  else
  {
    v24 = v20;
  }

  if (!((v8 ^ v9) >> 24))
  {
    while (1)
    {
      v25 = v10 >= a5 ? 0 : v10;
      v26 = (a4 + v25);
      if (v26 >= v12 || v26 < a4)
      {
        break;
      }

      v28 = (v8 << 8) | 0xFF;
      v29 = v9 << 8;
      v7 = *v26 | (v7 << 8);
      ++v10;
      v30 = ((v8 << 8) ^ (v9 << 8)) >> 24;
      v8 = v28;
      v9 <<= 8;
      if (v30)
      {
        goto LABEL_44;
      }
    }

LABEL_126:
    __break(0x5519u);
    return result;
  }

  v29 = v9;
  v28 = v8;
LABEL_44:
  v31 = v29 + ((v28 - v29) >> 1);
  if (v7 <= v31)
  {
    if (!v24)
    {
      return v24;
    }

    v44 = 0;
    v89 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 32;
    v87 = v24;
LABEL_74:
    v88 = v46;
    v49 = *result;
    if (*result)
    {
      v50 = v11;
      v51 = a2;
      v52 = v48 << 8;
      v53 = -*(result + 24);
      v54 = v47 >> v53;
      v55 = v45 >> v53;
      v56 = v89 >> v53;
      v57 = 1;
      v58 = 7;
      while (1)
      {
        v59 = v58;
        v60 = (v57 + v52) >> 1;
        v61 = (v49 + v60);
        v62 = v49 + v60 >= v49 && v49 + 0x8000 > v61;
        if (!v62)
        {
          break;
        }

        v63 = *(result + 8);
        v64 = v63 + *(result + 16);
        v65 = (v57 + v54) >> 1;
        v66 = (v63 + v65);
        if (v63 + v65 < v63 || v66 >= v64)
        {
          break;
        }

        v68 = (v57 + v55) >> 1;
        v69 = (v63 + v68);
        if (v63 + v68 < v63)
        {
          break;
        }

        if (v69 >= v64)
        {
          break;
        }

        v70 = (v63 + ((v57 + v56) >> 1));
        if (v70 < v63 || v70 >= v64)
        {
          break;
        }

        v71 = *(result + 48) + (((*v61 >> (4 * (v57 & 1))) & 0xF) << 12) + (((*v66 >> (4 * ((v57 + v54) & 1))) & 0xF) << 8) + 16 * ((*v69 >> (4 * ((v57 + v55) & 1))) & 0xF);
        v72 = (v71 + ((*v70 >> (4 * ((v57 + v56) & 1))) & 0xF));
        if (v72)
        {
          if (v72 >= v71 + 16 || v72 < v71)
          {
            break;
          }
        }

        v74 = *v72;
        if (!((v31 ^ v29) >> 24))
        {
          while (1)
          {
            v75 = v10 >= a5 ? 0 : v10;
            v76 = (a4 + v75);
            if (v76 >= v12 || v76 < a4)
            {
              goto LABEL_126;
            }

            v78 = (v31 << 8) | 0xFF;
            v79 = v29 << 8;
            v7 = *v76 | (v7 << 8);
            ++v10;
            v80 = ((v31 << 8) ^ (v29 << 8)) >> 24;
            v31 = v78;
            v29 <<= 8;
            if (v80)
            {
              goto LABEL_107;
            }
          }
        }

        v79 = v29;
        v78 = v31;
LABEL_107:
        v81 = v79 + ((v74 * (v78 - v79)) >> 8);
        if (v7 > v81)
        {
          v29 = v81 + 1;
        }

        else
        {
          v29 = v79;
        }

        if (v7 > v81)
        {
          v31 = v78;
        }

        else
        {
          v31 = v79 + ((v74 * (v78 - v79)) >> 8);
        }

        v57 = (v7 <= v81) | (2 * v57);
        v58 = v59 - 1;
        if (!v59)
        {
          v82 = (v51 + v44);
          v24 = v87;
          if (v51 + v44 >= v50)
          {
            goto LABEL_126;
          }

          a2 = v51;
          if (v82 < v51)
          {
            goto LABEL_126;
          }

          v11 = v50;
          v48 = v57;
          v83 = v47 + v57;
          v47 = -1640531535 * (v57 | v52);
          v46 = -1640531535 * v83;
          v45 = -1640531535 * (v88 + v57);
          if ((v57 - 65) >= 0x1Au)
          {
            v84 = v57;
          }

          else
          {
            v84 = v57 + 32;
          }

          v85 = ((v84 & 0xDF) - 91) >= 0xE6u || v84 <= -1;
          v86 = -1640531535 * (v89 + v84);
          if (!v85)
          {
            v86 = 0;
          }

          v89 = v86;
          *v82 = v57;
          if (++v44 != v87)
          {
            goto LABEL_74;
          }

          return v24;
        }
      }
    }

    goto LABEL_126;
  }

  if (v24)
  {
    v32 = 0;
    v33 = v31 + 1;
    while (2)
    {
      v34 = 1;
      do
      {
        if (!((v28 ^ v33) >> 24))
        {
          while (1)
          {
            v35 = v10 >= a5 ? 0 : v10;
            v36 = (a4 + v35);
            if (v36 >= v12 || v36 < a4)
            {
              goto LABEL_126;
            }

            v38 = (v28 << 8) | 0xFF;
            result = (v33 << 8);
            v7 = *v36 | (v7 << 8);
            ++v10;
            v39 = ((v28 << 8) ^ (v33 << 8)) >> 24;
            v28 = v38;
            LODWORD(v33) = v33 << 8;
            if (v39)
            {
              goto LABEL_60;
            }
          }
        }

        result = v33;
        v38 = v28;
LABEL_60:
        v40 = result + ((v38 - result) >> 1);
        v41 = v7 <= v40;
        if (v7 > v40)
        {
          v33 = v40 + 1;
        }

        else
        {
          v33 = result;
        }

        if (v7 > v40)
        {
          v28 = v38;
        }

        else
        {
          v28 = result + ((v38 - result) >> 1);
        }

        v42 = v41 | (2 * v34);
        v15 = v34 >= 0x80;
        v34 = v41 | (2 * v34);
      }

      while (!v15);
      v43 = (a2 + v32);
      if (a2 + v32 >= v11 || v43 < a2)
      {
        goto LABEL_126;
      }

      *v43 = v42;
      if (++v32 != v24)
      {
        continue;
      }

      break;
    }
  }

  return v24;
}

void *cosl_model_create(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  result = calloc(1uLL, 0x100030uLL);
  v1 = result;
  if (!result)
  {
    cosl_model_destroy(0);
    return v1;
  }

  *(result + 1048616) = a1;
  if (result < result + 131078)
  {
    v4 = (0x40000 << a1) | 0x100u;
    v5 = 8 * v4;
    result = malloc(8 * v4);
    v6 = &result[v4];
    if (!result)
    {
      v6 = 0;
    }

    v7 = v6 >= result;
    v8 = v6 - result;
    if (v7 && v5 <= v8)
    {
      v10 = v1 + 0x10000;
      if (result)
      {
        *v10 = result;
        v1[65537] = v5;
        v1[65538] = a1 + 18;
        v1[65539] = v4;
        v1[65540] = 64;
      }

      else
      {
        result = *v10;
        v5 = v1[65537];
        v4 = v1[65539];
      }

      if (v4 <= v5 >> 3)
      {
        for (; v4; --v4)
        {
          *result++ = 0x200000001;
        }

        for (i = 0; i != 0x10000; i += 4)
        {
          v12 = &v1[i];
          *v12 = xmmword_2986A4300;
          v12[1] = xmmword_2986A4300;
        }

        for (j = 0; j != 0x10000; j += 4)
        {
          v14 = &v1[j + 65541];
          *v14 = xmmword_2986A4300;
          v14[1] = xmmword_2986A4300;
        }

        return v1;
      }
    }
  }

  __break(0x5519u);
  return result;
}

void cosl_model_destroy(void **a1)
{
  if (a1)
  {
    free(a1[0x10000]);

    free(a1);
  }
}

size_t cosl_model_save_codec(uint64_t a1, const char *a2, int a3)
{
  v3 = (a1 + 0x80000);
  __ptr = 0x100000000000;
  v4 = *(a1 + 524320) * *(a1 + 524312);
  if (v4 < 8)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v4 >> 3;
  v9 = malloc(v4 >> 3);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  v11 = fopen(a2, "wb");
  if (!v11)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v11;
  LODWORD(__ptr) = a3;
  HIWORD(__ptr) = *(a1 + 1048616);
  result = fwrite(&__ptr, 1uLL, 8uLL, v11);
  if (result != 8)
  {
    goto LABEL_53;
  }

  v14 = &v10[v8];
  v15 = *(v3 + 3);
  if (v15)
  {
    v16 = 0;
    v17 = *v3;
    v18 = *v3 + *(v3 + 1);
    v19 = (*v3 + 8);
    do
    {
      v20 = v19 - 2;
      if (v19 != 8 && (v20 >= v18 || v20 < v17))
      {
        goto LABEL_55;
      }

      v21 = &counter_get_quantizer[(((*(v19 - 2) << 16) + (*(v19 - 1) >> 1)) / *(v19 - 1)) >> 10];
      if (v21 >= "need dictionary" || v21 < counter_get_quantizer)
      {
        goto LABEL_55;
      }

      v23 = *v21;
      if (v19)
      {
        if (v19 >= v18 || v19 < v17)
        {
          goto LABEL_55;
        }
      }

      v24 = &counter_get_quantizer[(((*v19 << 16) + (v19[1] >> 1)) / v19[1]) >> 10];
      if (v24 >= "need dictionary")
      {
        goto LABEL_55;
      }

      if (v24 < counter_get_quantizer)
      {
        goto LABEL_55;
      }

      v25 = &v10[v16 >> 1];
      if (v25 >= v14 || v25 < v10)
      {
        goto LABEL_55;
      }

      *v25 = v23 + 16 * *v24;
      v16 += 2;
      v19 += 4;
    }

    while (v16 < v15);
  }

  result = fwrite(v10, 1uLL, v15 >> 1, v12);
  if (result != v15 >> 1)
  {
LABEL_53:
    v37 = 0xFFFFFFFFLL;
LABEL_54:
    free(v10);
    fclose(v12);
    return v37;
  }

  v26 = (a1 + 8);
  v27 = -2;
  v28 = v10;
  while (1)
  {
    v29 = &counter_get_quantizer[(((*(v26 - 2) << 16) + (*(v26 - 1) >> 1)) / *(v26 - 1)) >> 10];
    if (v29 >= "need dictionary" || v29 < counter_get_quantizer)
    {
      break;
    }

    if (v26 >= v3)
    {
      break;
    }

    v31 = &counter_get_quantizer[(((*v26 << 16) + (v26[1] >> 1)) / v26[1]) >> 10];
    if (v31 >= "need dictionary" || v31 < counter_get_quantizer || v28 >= v14 || v28 < v10)
    {
      break;
    }

    *v28++ = *v29 + 16 * *v31;
    v27 += 2;
    v26 += 4;
    if (v27 >= 0xFFFE)
    {
      result = fwrite(v10, 1uLL, 0x8000uLL, v12);
      if (result != 0x8000)
      {
        goto LABEL_53;
      }

      v32 = 0;
      v33 = v3 + 11;
      while (1)
      {
        v34 = &v10[v32];
        if (&v10[v32] >= v14 || v34 < v10)
        {
          goto LABEL_55;
        }

        v36 = ((*(v33 - 1) << 8) + (*v33 >> 1)) / *v33;
        if (v36 <= 1)
        {
          LODWORD(v36) = 1;
        }

        if (v36 >= 0xFF)
        {
          LOBYTE(v36) = -1;
        }

        *v34 = v36;
        ++v32;
        v33 += 2;
        if (v32 == 0x10000)
        {
          if (fwrite(v10, 1uLL, 0x10000uLL, v12) == 0x10000)
          {
            v37 = 0;
          }

          else
          {
            v37 = 0xFFFFFFFFLL;
          }

          goto LABEL_54;
        }
      }
    }
  }

LABEL_55:
  __break(0x5519u);
  return result;
}

unint64_t cosl_codec_map(const char *a1)
{
  memset(&v21, 0, sizeof(v21));
  v2 = calloc(1uLL, 0x58uLL);
  v3 = v2;
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = v2 + 88;
  *(v2 + 20) = -1;
  result = open(a1, 0, *&v21.st_dev, *&v21.st_uid, *&v21.st_atimespec, *&v21.st_mtimespec, *&v21.st_ctimespec, *&v21.st_birthtimespec);
  *(v3 + 20) = result;
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_4;
  }

  result = fstat(result, &v21);
  if (result)
  {
    goto LABEL_4;
  }

  st_size = v21.st_size;
  result = mmap(0, v21.st_size, 1, 2, *(v3 + 20), 0);
  if (result == -1)
  {
    goto LABEL_4;
  }

  v7 = result;
  v8 = result + st_size;
  if (result > result + st_size)
  {
    goto LABEL_36;
  }

  *(v3 + 8) = result;
  *(v3 + 9) = st_size;
  if (result)
  {
    if (result >= v8)
    {
      goto LABEL_36;
    }
  }

  *(v3 + 7) = result;
  v9 = (result + 8);
  if (result + 8 > v8)
  {
    goto LABEL_4;
  }

  if (*(result + 4) != 4096)
  {
    goto LABEL_4;
  }

  v10 = *(result + 6);
  if (v10 > 5)
  {
    goto LABEL_4;
  }

  if (v3 < v4 && result <= v9)
  {
    v11 = (0x40000 << v10) | 0x100;
    v12 = v11 >> 1;
    if (result == -8)
    {
      result = malloc(v11 >> 1);
      v14 = (result + v12);
      if (!result)
      {
        v14 = 0;
      }

      v15 = v14 >= result;
      v16 = &v14[-result];
      v17 = !v15 || v12 > v16;
      v13 = v11 >> 1;
      if (v17)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v13 = st_size - 8;
      result += 8;
    }

    v18 = 0;
    if (result && v13 >= v12)
    {
      *(v3 + 1) = result;
      *(v3 + 2) = v13;
      *(v3 + 3) = v10 + 18;
      *(v3 + 4) = v11;
      v18 = v11 >> 1;
      *(v3 + 5) = 4;
    }

    v19 = &v9[v18];
    if (&v9[v18] <= v8 && v7 <= v19 && (!v19 || (v8 - v19) >= 0x8000))
    {
      *v3 = v19;
      v20 = (v19 + 0x8000);
      if (v19 == -32768 || v20 < v8 && v20 >= v7)
      {
        *(v3 + 6) = v20;
        if (v19 + 98304 == v8)
        {
          return v3;
        }

LABEL_4:
        if (v3 < v4)
        {
LABEL_5:
          cosl_codec_unmap(v3);
          return 0;
        }
      }
    }
  }

LABEL_36:
  __break(0x5519u);
  return result;
}

void cosl_codec_unmap(void *a1)
{
  if (a1)
  {
    v2 = *(a1 + 20);
    if ((v2 & 0x80000000) == 0)
    {
      if (*(a1 + 8))
      {
        munmap(*(a1 + 8), *(a1 + 9));
        *(a1 + 8) = 0;
        *(a1 + 9) = 0;
        v2 = *(a1 + 20);
      }

      close(v2);
    }
  }

  free(a1);
}

unsigned __int16 *lzma1_chunk_decode(unsigned int *a1, unint64_t a2, _BYTE *a3, _BYTE *a4, unint64_t a5, unsigned __int8 *a6, uint64_t a7)
{
  v7 = *(a1 + 2);
  if (!v7)
  {
    return v7;
  }

  if (!a7)
  {
    return 0;
  }

  v8 = *(a1 + 29);
  if (a7 < 1)
  {
    v10 = 0;
    v9 = a6;
  }

  else
  {
    v9 = a6 + 1;
    v10 = *a6 != 0;
  }

  v11 = 0;
  v604 = *(a1 + 28);
  v601 = *(a1 + 27);
  v12 = &a6[a7];
  v13 = 4;
  v602 = *(a1 + 26);
  do
  {
    if (v9 >= v12)
    {
      v14 = 0;
    }

    else
    {
      v15 = *v9++;
      v14 = v15;
    }

    v11 = v14 | (v11 << 8);
    --v13;
  }

  while (v13);
  if (v11 == -1)
  {
    v10 = 1;
  }

  if (v10)
  {
    return 0;
  }

  v594 = a3;
  if (a3 >= a4)
  {
    v206 = a3;
    goto LABEL_837;
  }

  v600 = v7 + 1956;
  v599 = 8 - v602;
  v598 = v7 + 204;
  v595 = v7 + 420;
  v596 = v7 + 1220;
  v597 = v7 + 690;
  v17 = v7 + 1940;
  v18 = -1;
  while (1)
  {
    if (!HIBYTE(v18))
    {
      if (v9 >= v12)
      {
        v19 = 0;
      }

      else
      {
        v20 = *v9++;
        v19 = v20;
      }

      v18 <<= 8;
      v11 = v19 | (v11 << 8);
    }

    v21 = a3 - a2;
    v22 = v604 & (a3 - a2);
    v23 = &v7[16 * v8 + v22];
    v24 = *v23;
    v25 = (v18 >> 11) * v24;
    v26 = v11 - v25;
    if (v11 < v25)
    {
      break;
    }

    v53 = v18 - v25;
    v54 = v7 + 192;
LABEL_212:
    *v23 = v24 - (v24 >> 5);
    if (!HIBYTE(v53))
    {
      if (v9 >= v12)
      {
        v157 = 0;
      }

      else
      {
        v158 = *v9++;
        v157 = v158;
      }

      v53 <<= 8;
      v26 = v157 | (v26 << 8);
    }

    v159 = v54[v8];
    v160 = (v53 >> 11) * v159;
    v11 = v26 - v160;
    if (v26 >= v160)
    {
      v54[v8] -= v54[v8] >> 5;
      if (a3 == a2)
      {
        return 0;
      }

      v195 = v53 - v160;
      if (!((v53 - v160) >> 24))
      {
        if (v9 >= v12)
        {
          v196 = 0;
        }

        else
        {
          v197 = *v9++;
          v196 = v197;
        }

        v195 <<= 8;
        v11 = v196 | (v11 << 8);
      }

      v198 = v598[v8];
      v199 = (v195 >> 11) * v198;
      v200 = v11 - v199;
      if (v11 >= v199)
      {
        v239 = v195 - v199;
        v598[v8] -= v598[v8] >> 5;
        if (HIBYTE(v239))
        {
          v240 = v7 + 408;
        }

        else
        {
          v240 = v7 + 408;
          if (v9 >= v12)
          {
            v241 = 0;
          }

          else
          {
            v242 = *v9++;
            v241 = v242;
          }

          v239 <<= 8;
          v200 = v241 | (v200 << 8);
        }

        v284 = v240[v8];
        v283 = (v239 >> 11) * v284;
        v285 = v200 - v283;
        if (v200 >= v283)
        {
          v286 = v239 - v283;
          v240[v8] -= v240[v8] >> 5;
          if (HIBYTE(v286))
          {
            v200 -= v283;
          }

          else
          {
            if (v9 >= v12)
            {
              v287 = 0;
            }

            else
            {
              v288 = *v9++;
              v287 = v288;
            }

            v286 <<= 8;
            v200 = v287 | (v285 << 8);
          }

          v433 = v595[v8];
          v283 = (v286 >> 11) * v433;
          v434 = v200 - v283;
          if (v200 >= v283)
          {
            v283 = v286 - v283;
            v435 = v433 - (v433 >> 5);
            LODWORD(v203) = a1[3];
            a1[3] = a1[2];
            v200 = v434;
          }

          else
          {
            v435 = v433 + ((2048 - v433) >> 5);
            LODWORD(v203) = a1[2];
          }

          v595[v8] = v435;
          a1[2] = a1[1];
        }

        else
        {
          v240[v8] = v284 + ((2048 - v284) >> 5);
          LODWORD(v203) = a1[1];
        }

        v436 = *a1;
        *a1 = v203;
        a1[1] = v436;
      }

      else
      {
        v598[v8] = v198 + ((2048 - v198) >> 5);
        if (!HIBYTE(v199))
        {
          if (v9 >= v12)
          {
            v201 = 0;
          }

          else
          {
            v202 = *v9++;
            v201 = v202;
          }

          v199 <<= 8;
          v11 = v201 | (v11 << 8);
        }

        v203 = *a1;
        v204 = &v7[16 * v8 + 216];
        v205 = *(v204 + 2 * v22);
        v18 = (v199 >> 11) * v205;
        v200 = v11 - v18;
        if (v11 < v18)
        {
          *(v204 + 2 * v22) = v205 + ((2048 - v205) >> 5);
          *a3 = a3[-v203];
          v206 = a3 + 1;
          v8 = lzma_fsm_lut[v8 + 48];
          goto LABEL_779;
        }

        v283 = v199 - v18;
        *(v204 + 2 * v22) = v205 - (v205 >> 5);
      }

      v437 = v7[962];
      if (!HIBYTE(v283))
      {
        if (v9 >= v12)
        {
          v438 = 0;
        }

        else
        {
          v439 = *v9++;
          v438 = v439;
        }

        v283 <<= 8;
        v200 = v438 | (v200 << 8);
      }

      v440 = (v283 >> 11) * v437;
      v441 = v200 - v440;
      if (v200 >= v440)
      {
        v473 = v283 - v440;
        v7[962] -= v7[962] >> 5;
        if (!((v283 - v440) >> 24))
        {
          if (v9 >= v12)
          {
            v474 = 0;
          }

          else
          {
            v475 = *v9++;
            v474 = v475;
          }

          v473 <<= 8;
          v441 = v474 | (v441 << 8);
        }

        v476 = v7[963];
        v477 = (v473 >> 11) * v476;
        v478 = v441 - v477;
        if (v441 >= v477)
        {
          v508 = v473 - v477;
          v7[963] -= v7[963] >> 5;
          if (!((v473 - v477) >> 24))
          {
            if (v9 >= v12)
            {
              v509 = 0;
            }

            else
            {
              v510 = *v9++;
              v509 = v510;
            }

            v508 <<= 8;
            v478 = v509 | (v478 << 8);
          }

          v511 = v7[1221];
          v512 = (v508 >> 11) * v511;
          v513 = v511 + ((2048 - v511) >> 5);
          v514 = v508 - v512;
          v515 = v511 - (v511 >> 5);
          v516 = v478 >= v512;
          if (v478 >= v512)
          {
            v517 = 3;
          }

          else
          {
            v517 = 2;
          }

          if (v478 >= v512)
          {
            v518 = v478 - v512;
          }

          else
          {
            v514 = v512;
            v518 = v478;
          }

          if (!v516)
          {
            LOWORD(v515) = v513;
          }

          v7[1221] = v515;
          if (!HIBYTE(v514))
          {
            if (v9 >= v12)
            {
              v519 = 0;
            }

            else
            {
              v520 = *v9++;
              v519 = v520;
            }

            v514 <<= 8;
            v518 = v519 | (v518 << 8);
          }

          v521 = v596[v517];
          v522 = (v514 >> 11) * v521;
          v523 = v521 + ((2048 - v521) >> 5);
          LODWORD(v524) = (2 * v517) | 1;
          v525 = v514 - v522;
          v526 = v518 - v522;
          v527 = v521 - (v521 >> 5);
          v528 = v518 >= v522;
          if (v518 >= v522)
          {
            v524 = v524;
          }

          else
          {
            v524 = (2 * v517);
          }

          if (v518 >= v522)
          {
            v522 = v525;
          }

          if (v528)
          {
            v518 = v526;
          }

          if (!v528)
          {
            LOWORD(v527) = v523;
          }

          v596[v517] = v527;
          v529 = v596[v524];
          if (!HIBYTE(v522))
          {
            if (v9 >= v12)
            {
              v530 = 0;
            }

            else
            {
              v531 = *v9++;
              v530 = v531;
            }

            v522 <<= 8;
            v518 = v530 | (v518 << 8);
          }

          v532 = (v522 >> 11) * v529;
          LODWORD(v533) = 2 * v524;
          v534 = v529 + ((2048 - v529) >> 5);
          v535 = v522 - v532;
          v536 = v529 - (v529 >> 5);
          if (v518 >= v532)
          {
            v533 = (2 * v524) | 1u;
          }

          else
          {
            v533 = v533;
          }

          if (v518 >= v532)
          {
            v537 = v535;
          }

          else
          {
            v537 = v532;
          }

          if (v518 >= v532)
          {
            v538 = v518 - v532;
          }

          else
          {
            v538 = v518;
          }

          if (v518 >= v532)
          {
            v539 = v536;
          }

          else
          {
            v539 = v534;
          }

          v596[v524] = v539;
          v540 = v596[v533];
          if (!HIBYTE(v537))
          {
            if (v9 >= v12)
            {
              v541 = 0;
            }

            else
            {
              v542 = *v9++;
              v541 = v542;
            }

            v537 <<= 8;
            v538 = v541 | (v538 << 8);
          }

          v543 = (v537 >> 11) * v540;
          v544 = 2 * v533;
          v545 = v538 - v543;
          if (v538 >= v543)
          {
            v544 |= 1u;
            v543 = v537 - v543;
            v538 = v545;
            v546 = v540 - (v540 >> 5);
          }

          else
          {
            v546 = v540 + ((2048 - v540) >> 5);
          }

          v596[v533] = v546;
          v547 = v544 ^ 0x10u;
          v548 = &v7[16 * v547 + 1236];
          v549 = *(v548 + 2);
          if (!HIBYTE(v543))
          {
            if (v9 >= v12)
            {
              v550 = 0;
            }

            else
            {
              v551 = *v9++;
              v550 = v551;
            }

            v543 <<= 8;
            v538 = v550 | (v538 << 8);
          }

          v552 = (v543 >> 11) * v549;
          v553 = v549 + ((2048 - v549) >> 5);
          v554 = v543 - v552;
          v555 = v549 - (v549 >> 5);
          if (v538 >= v552)
          {
            v556 = 3;
          }

          else
          {
            v556 = 2;
          }

          if (v538 >= v552)
          {
            v557 = v538 - v552;
          }

          else
          {
            v554 = v552;
            v557 = v538;
          }

          if (v538 >= v552)
          {
            v558 = v555;
          }

          else
          {
            v558 = v553;
          }

          *(v548 + 2) = v558;
          v559 = *(v548 + 2 * v556);
          if (!HIBYTE(v554))
          {
            if (v9 >= v12)
            {
              v560 = 0;
            }

            else
            {
              v561 = *v9++;
              v560 = v561;
            }

            v554 <<= 8;
            v557 = v560 | (v557 << 8);
          }

          v562 = (v554 >> 11) * v559;
          v563 = v559 + ((2048 - v559) >> 5);
          v564 = v554 - v562;
          v565 = v559 - (v559 >> 5);
          v566 = v557 >= v562;
          if (v557 >= v562)
          {
            v567 = (2 * v556) | 1u;
          }

          else
          {
            v567 = (2 * v556);
          }

          if (v557 >= v562)
          {
            v557 -= v562;
          }

          else
          {
            v564 = v562;
          }

          if (v566)
          {
            v568 = v565;
          }

          else
          {
            v568 = v563;
          }

          *(v548 + 2 * v556) = v568;
          v569 = *(v548 + 2 * v567);
          if (!HIBYTE(v564))
          {
            if (v9 >= v12)
            {
              v570 = 0;
            }

            else
            {
              v571 = *v9++;
              v570 = v571;
            }

            v564 <<= 8;
            v557 = v570 | (v557 << 8);
          }

          v572 = (v564 >> 11) * v569;
          v573 = v569 + ((2048 - v569) >> 5);
          v574 = v564 - v572;
          v575 = v569 - (v569 >> 5);
          if (v557 >= v572)
          {
            v576 = (2 * v567) | 1u;
          }

          else
          {
            v576 = (2 * v567);
          }

          if (v557 >= v572)
          {
            v11 = v557 - v572;
          }

          else
          {
            v574 = v572;
            v11 = v557;
          }

          if (v557 >= v572)
          {
            v577 = v575;
          }

          else
          {
            v577 = v573;
          }

          *(v548 + 2 * v567) = v577;
          v578 = *(v548 + 2 * v576);
          if (!HIBYTE(v574))
          {
            if (v9 >= v12)
            {
              v579 = 0;
            }

            else
            {
              v580 = *v9++;
              v579 = v580;
            }

            v574 <<= 8;
            v11 = v579 | (v11 << 8);
          }

          v18 = (v574 >> 11) * v578;
          v581 = 2 * v576;
          v582 = v11 - v18;
          if (v11 >= v18)
          {
            v581 |= 1u;
            v18 = v574 - v18;
            v11 = v582;
            v583 = v578 - (v578 >> 5);
          }

          else
          {
            v583 = v578 + ((2048 - v578) >> 5);
          }

          *(v548 + 2 * v576) = v583;
          v243 = (v581 ^ 0x10) + 16 * v547 + 18;
        }

        else
        {
          v7[963] = v476 + ((2048 - v476) >> 5);
          if (!HIBYTE(v477))
          {
            if (v9 >= v12)
            {
              v479 = 0;
            }

            else
            {
              v480 = *v9++;
              v479 = v480;
            }

            v477 <<= 8;
            v441 = v479 | (v441 << 8);
          }

          v481 = &v7[8 * v22 + 1092];
          v482 = *(v481 + 2);
          v483 = (v477 >> 11) * v482;
          v484 = v482 + ((2048 - v482) >> 5);
          v485 = v477 - v483;
          v486 = v482 - (v482 >> 5);
          if (v441 >= v483)
          {
            v487 = 3;
          }

          else
          {
            v487 = 2;
          }

          if (v441 >= v483)
          {
            v488 = v485;
          }

          else
          {
            v488 = v483;
          }

          if (v441 >= v483)
          {
            v489 = v441 - v483;
          }

          else
          {
            v489 = v441;
          }

          if (v441 < v483)
          {
            LOWORD(v486) = v484;
          }

          *(v481 + 2) = v486;
          if (!HIBYTE(v488))
          {
            if (v9 >= v12)
            {
              v490 = 0;
            }

            else
            {
              v491 = *v9++;
              v490 = v491;
            }

            v488 <<= 8;
            v489 = v490 | (v489 << 8);
          }

          v492 = *(v481 + 2 * v487);
          v493 = (v488 >> 11) * v492;
          LODWORD(v494) = 2 * v487;
          v495 = v492 + ((2048 - v492) >> 5);
          v496 = v488 - v493;
          v497 = v492 - (v492 >> 5);
          v498 = v489 >= v493;
          if (v489 >= v493)
          {
            v494 = (2 * v487) | 1u;
          }

          else
          {
            v494 = v494;
          }

          if (v489 >= v493)
          {
            v489 -= v493;
          }

          else
          {
            v496 = v493;
          }

          if (!v498)
          {
            LOWORD(v497) = v495;
          }

          *(v481 + 2 * v487) = v497;
          v499 = *(v481 + 2 * v494);
          if (!HIBYTE(v496))
          {
            if (v9 >= v12)
            {
              v500 = 0;
            }

            else
            {
              v501 = *v9++;
              v500 = v501;
            }

            v496 <<= 8;
            v489 = v500 | (v489 << 8);
          }

          v502 = (v496 >> 11) * v499;
          v503 = 2 * v494;
          v504 = v499 + ((2048 - v499) >> 5);
          v505 = v496 - v502;
          v506 = v499 - (v499 >> 5);
          if (v489 < v502)
          {
            v18 = v502;
          }

          else
          {
            v503 = (2 * v494) | 1;
            v18 = v505;
          }

          if (v489 >= v502)
          {
            v11 = v489 - v502;
          }

          else
          {
            v11 = v489;
          }

          if (v489 >= v502)
          {
            v507 = v506;
          }

          else
          {
            v507 = v504;
          }

          *(v481 + 2 * v494) = v507;
          v243 = (v503 ^ 8) + 10;
        }
      }

      else
      {
        v7[962] = v437 + ((2048 - v437) >> 5);
        if (!HIBYTE(v440))
        {
          if (v9 >= v12)
          {
            v442 = 0;
          }

          else
          {
            v443 = *v9++;
            v442 = v443;
          }

          v440 <<= 8;
          v200 = v442 | (v200 << 8);
        }

        v444 = &v7[8 * v22 + 964];
        v445 = *(v444 + 2);
        v446 = (v440 >> 11) * v445;
        v447 = v445 + ((2048 - v445) >> 5);
        v448 = v440 - v446;
        v449 = v200 - v446;
        v450 = v445 - (v445 >> 5);
        v451 = v200 >= v446;
        if (v200 >= v446)
        {
          v452 = 3;
        }

        else
        {
          v452 = 2;
        }

        if (v200 >= v446)
        {
          v446 = v448;
        }

        if (v451)
        {
          v453 = v449;
        }

        else
        {
          v453 = v200;
        }

        if (!v451)
        {
          LOWORD(v450) = v447;
        }

        *(v444 + 2) = v450;
        if (!HIBYTE(v446))
        {
          if (v9 >= v12)
          {
            v454 = 0;
          }

          else
          {
            v455 = *v9++;
            v454 = v455;
          }

          v446 <<= 8;
          v453 = v454 | (v453 << 8);
        }

        v456 = *(v444 + 2 * v452);
        v457 = (v446 >> 11) * v456;
        v458 = v456 + ((2048 - v456) >> 5);
        v459 = v446 - v457;
        v460 = v456 - (v456 >> 5);
        v461 = v453 >= v457;
        if (v453 >= v457)
        {
          v462 = (2 * v452) | 1u;
        }

        else
        {
          v462 = (2 * v452);
        }

        if (v453 >= v457)
        {
          v463 = v459;
        }

        else
        {
          v463 = v457;
        }

        if (v453 >= v457)
        {
          v453 -= v457;
        }

        if (!v461)
        {
          LOWORD(v460) = v458;
        }

        *(v444 + 2 * v452) = v460;
        v464 = *(v444 + 2 * v462);
        if (!HIBYTE(v463))
        {
          if (v9 >= v12)
          {
            v465 = 0;
          }

          else
          {
            v466 = *v9++;
            v465 = v466;
          }

          v463 <<= 8;
          v453 = v465 | (v453 << 8);
        }

        v467 = (v463 >> 11) * v464;
        v468 = 2 * v462;
        v469 = v464 + ((2048 - v464) >> 5);
        v470 = v463 - v467;
        v471 = v464 - (v464 >> 5);
        if (v453 < v467)
        {
          v18 = v467;
        }

        else
        {
          v468 = (2 * v462) | 1;
          v18 = v470;
        }

        if (v453 >= v467)
        {
          v11 = v453 - v467;
        }

        else
        {
          v11 = v453;
        }

        if (v453 >= v467)
        {
          v472 = v471;
        }

        else
        {
          v472 = v469;
        }

        *(v444 + 2 * v462) = v472;
        v243 = (v468 ^ 8) + 2;
      }

      v8 = lzma_fsm_lut[v8 + 36];
    }

    else
    {
      v54[v8] = v159 + ((2048 - v159) >> 5);
      if (!HIBYTE(v160))
      {
        if (v9 >= v12)
        {
          v161 = 0;
        }

        else
        {
          v162 = *v9++;
          v161 = v162;
        }

        v160 <<= 8;
        v26 = v161 | (v26 << 8);
      }

      v163 = v7[432];
      v164 = (v160 >> 11) * v163;
      v165 = v26 - v164;
      if (v26 >= v164)
      {
        v207 = v160 - v164;
        v7[432] -= v7[432] >> 5;
        if (!((v160 - v164) >> 24))
        {
          if (v9 >= v12)
          {
            v208 = 0;
          }

          else
          {
            v209 = *v9++;
            v208 = v209;
          }

          v207 <<= 8;
          v165 = v208 | (v165 << 8);
        }

        v210 = v7[433];
        v211 = (v207 >> 11) * v210;
        v212 = v165 - v211;
        if (v165 >= v211)
        {
          v244 = v207 - v211;
          v7[433] -= v7[433] >> 5;
          if (!((v207 - v211) >> 24))
          {
            if (v9 >= v12)
            {
              v245 = 0;
            }

            else
            {
              v246 = *v9++;
              v245 = v246;
            }

            v244 <<= 8;
            v212 = v245 | (v212 << 8);
          }

          v247 = v7[691];
          v248 = (v244 >> 11) * v247;
          v249 = v247 + ((2048 - v247) >> 5);
          v250 = v244 - v248;
          v251 = v247 - (v247 >> 5);
          v252 = v212 >= v248;
          if (v212 >= v248)
          {
            v253 = 3;
          }

          else
          {
            v253 = 2;
          }

          if (v212 >= v248)
          {
            v254 = v212 - v248;
          }

          else
          {
            v250 = v248;
            v254 = v212;
          }

          if (!v252)
          {
            LOWORD(v251) = v249;
          }

          v7[691] = v251;
          if (!HIBYTE(v250))
          {
            if (v9 >= v12)
            {
              v255 = 0;
            }

            else
            {
              v256 = *v9++;
              v255 = v256;
            }

            v250 <<= 8;
            v254 = v255 | (v254 << 8);
          }

          v257 = v597[v253];
          v258 = (v250 >> 11) * v257;
          v259 = v257 + ((2048 - v257) >> 5);
          LODWORD(v260) = (2 * v253) | 1;
          v261 = v250 - v258;
          v262 = v254 - v258;
          v263 = v257 - (v257 >> 5);
          v264 = v254 >= v258;
          if (v254 >= v258)
          {
            v260 = v260;
          }

          else
          {
            v260 = (2 * v253);
          }

          if (v254 >= v258)
          {
            v258 = v261;
          }

          if (v264)
          {
            v254 = v262;
          }

          if (!v264)
          {
            LOWORD(v263) = v259;
          }

          v597[v253] = v263;
          v265 = v597[v260];
          if (!HIBYTE(v258))
          {
            if (v9 >= v12)
            {
              v266 = 0;
            }

            else
            {
              v267 = *v9++;
              v266 = v267;
            }

            v258 <<= 8;
            v254 = v266 | (v254 << 8);
          }

          v268 = (v258 >> 11) * v265;
          LODWORD(v269) = 2 * v260;
          v270 = v265 + ((2048 - v265) >> 5);
          v271 = v258 - v268;
          v272 = v265 - (v265 >> 5);
          if (v254 >= v268)
          {
            v269 = (2 * v260) | 1u;
          }

          else
          {
            v269 = v269;
          }

          if (v254 >= v268)
          {
            v273 = v271;
          }

          else
          {
            v273 = v268;
          }

          if (v254 >= v268)
          {
            v274 = v254 - v268;
          }

          else
          {
            v274 = v254;
          }

          if (v254 >= v268)
          {
            v275 = v272;
          }

          else
          {
            v275 = v270;
          }

          v597[v260] = v275;
          v276 = v597[v269];
          if (!HIBYTE(v273))
          {
            if (v9 >= v12)
            {
              v277 = 0;
            }

            else
            {
              v278 = *v9++;
              v277 = v278;
            }

            v273 <<= 8;
            v274 = v277 | (v274 << 8);
          }

          v279 = (v273 >> 11) * v276;
          v280 = 2 * v269;
          v281 = v274 - v279;
          if (v274 >= v279)
          {
            v280 |= 1u;
            v279 = v273 - v279;
            v274 = v281;
            v282 = v276 - (v276 >> 5);
          }

          else
          {
            v282 = v276 + ((2048 - v276) >> 5);
          }

          v597[v269] = v282;
          v289 = v280 ^ 0x10u;
          v290 = &v7[16 * v289 + 706];
          v291 = *(v290 + 2);
          if (!HIBYTE(v279))
          {
            if (v9 >= v12)
            {
              v292 = 0;
            }

            else
            {
              v293 = *v9++;
              v292 = v293;
            }

            v279 <<= 8;
            v274 = v292 | (v274 << 8);
          }

          v294 = (v279 >> 11) * v291;
          v295 = v291 + ((2048 - v291) >> 5);
          v296 = v279 - v294;
          v297 = v291 - (v291 >> 5);
          if (v274 >= v294)
          {
            v298 = 3;
          }

          else
          {
            v298 = 2;
          }

          if (v274 >= v294)
          {
            v299 = v274 - v294;
          }

          else
          {
            v296 = v294;
            v299 = v274;
          }

          if (v274 >= v294)
          {
            v300 = v297;
          }

          else
          {
            v300 = v295;
          }

          *(v290 + 2) = v300;
          v301 = *(v290 + 2 * v298);
          if (!HIBYTE(v296))
          {
            if (v9 >= v12)
            {
              v302 = 0;
            }

            else
            {
              v303 = *v9++;
              v302 = v303;
            }

            v296 <<= 8;
            v299 = v302 | (v299 << 8);
          }

          v304 = (v296 >> 11) * v301;
          v305 = v301 + ((2048 - v301) >> 5);
          v306 = v296 - v304;
          v307 = v301 - (v301 >> 5);
          v308 = v299 >= v304;
          if (v299 >= v304)
          {
            v309 = (2 * v298) | 1u;
          }

          else
          {
            v309 = (2 * v298);
          }

          if (v299 >= v304)
          {
            v299 -= v304;
          }

          else
          {
            v306 = v304;
          }

          if (v308)
          {
            v310 = v307;
          }

          else
          {
            v310 = v305;
          }

          *(v290 + 2 * v298) = v310;
          v311 = *(v290 + 2 * v309);
          if (!HIBYTE(v306))
          {
            if (v9 >= v12)
            {
              v312 = 0;
            }

            else
            {
              v313 = *v9++;
              v312 = v313;
            }

            v306 <<= 8;
            v299 = v312 | (v299 << 8);
          }

          v314 = (v306 >> 11) * v311;
          v315 = v311 + ((2048 - v311) >> 5);
          v316 = v306 - v314;
          v187 = v299 - v314;
          v317 = v311 - (v311 >> 5);
          if (v299 >= v314)
          {
            v318 = (2 * v309) | 1u;
          }

          else
          {
            v318 = (2 * v309);
          }

          if (v299 >= v314)
          {
            v319 = v316;
          }

          else
          {
            v319 = v314;
          }

          if (v299 >= v314)
          {
            v320 = v317;
          }

          else
          {
            v187 = v299;
            v320 = v315;
          }

          *(v290 + 2 * v309) = v320;
          v321 = *(v290 + 2 * v318);
          if (!HIBYTE(v319))
          {
            if (v9 >= v12)
            {
              v322 = 0;
            }

            else
            {
              v323 = *v9++;
              v322 = v323;
            }

            v319 <<= 8;
            v187 = v322 | (v187 << 8);
          }

          v191 = (v319 >> 11) * v321;
          v324 = 2 * v318;
          v325 = v187 - v191;
          if (v187 >= v191)
          {
            v324 |= 1u;
            v191 = v319 - v191;
            v187 = v325;
            v326 = v321 - (v321 >> 5);
          }

          else
          {
            v326 = v321 + ((2048 - v321) >> 5);
          }

          *(v290 + 2 * v318) = v326;
          v243 = (v324 ^ 0x10) + 16 * v289 + 18;
        }

        else
        {
          v7[433] = v210 + ((2048 - v210) >> 5);
          if (!HIBYTE(v211))
          {
            if (v9 >= v12)
            {
              v213 = 0;
            }

            else
            {
              v214 = *v9++;
              v213 = v214;
            }

            v211 <<= 8;
            v165 = v213 | (v165 << 8);
          }

          v215 = &v7[8 * v22 + 562];
          v216 = *(v215 + 2);
          v217 = (v211 >> 11) * v216;
          v218 = v216 + ((2048 - v216) >> 5);
          v219 = v211 - v217;
          v220 = v216 - (v216 >> 5);
          if (v165 >= v217)
          {
            v221 = 3;
          }

          else
          {
            v221 = 2;
          }

          if (v165 >= v217)
          {
            v222 = v219;
          }

          else
          {
            v222 = v217;
          }

          if (v165 >= v217)
          {
            v223 = v165 - v217;
          }

          else
          {
            v223 = v165;
          }

          if (v165 < v217)
          {
            LOWORD(v220) = v218;
          }

          *(v215 + 2) = v220;
          if (!HIBYTE(v222))
          {
            if (v9 >= v12)
            {
              v224 = 0;
            }

            else
            {
              v225 = *v9++;
              v224 = v225;
            }

            v222 <<= 8;
            v223 = v224 | (v223 << 8);
          }

          v226 = *(v215 + 2 * v221);
          v227 = (v222 >> 11) * v226;
          LODWORD(v228) = 2 * v221;
          v229 = v226 + ((2048 - v226) >> 5);
          v230 = v222 - v227;
          v187 = v223 - v227;
          v231 = v226 - (v226 >> 5);
          if (v223 >= v227)
          {
            v228 = (2 * v221) | 1u;
          }

          else
          {
            v228 = v228;
          }

          if (v223 >= v227)
          {
            v232 = v230;
          }

          else
          {
            v232 = v227;
          }

          if (v223 < v227)
          {
            v187 = v223;
            LOWORD(v231) = v229;
          }

          *(v215 + 2 * v221) = v231;
          v233 = *(v215 + 2 * v228);
          if (!HIBYTE(v232))
          {
            if (v9 >= v12)
            {
              v234 = 0;
            }

            else
            {
              v235 = *v9++;
              v234 = v235;
            }

            v232 <<= 8;
            v187 = v234 | (v187 << 8);
          }

          v191 = (v232 >> 11) * v233;
          v236 = 2 * v228;
          v237 = v187 - v191;
          if (v187 >= v191)
          {
            v236 |= 1u;
            v191 = v232 - v191;
            v187 = v237;
            v238 = v233 - (v233 >> 5);
          }

          else
          {
            v238 = v233 + ((2048 - v233) >> 5);
          }

          *(v215 + 2 * v228) = v238;
          v243 = (v236 ^ 8) + 10;
        }
      }

      else
      {
        v7[432] = v163 + ((2048 - v163) >> 5);
        if (!HIBYTE(v164))
        {
          if (v9 >= v12)
          {
            v166 = 0;
          }

          else
          {
            v167 = *v9++;
            v166 = v167;
          }

          v164 <<= 8;
          v26 = v166 | (v26 << 8);
        }

        v168 = &v7[8 * v22 + 434];
        v169 = *(v168 + 2);
        v170 = (v164 >> 11) * v169;
        v171 = v169 + ((2048 - v169) >> 5);
        v172 = v164 - v170;
        v173 = v26 - v170;
        v174 = v169 - (v169 >> 5);
        v175 = v26 >= v170;
        if (v26 >= v170)
        {
          v176 = 3;
        }

        else
        {
          v176 = 2;
        }

        if (v26 >= v170)
        {
          v170 = v172;
        }

        if (v175)
        {
          v177 = v173;
        }

        else
        {
          v177 = v26;
        }

        if (!v175)
        {
          LOWORD(v174) = v171;
        }

        *(v168 + 2) = v174;
        if (!HIBYTE(v170))
        {
          if (v9 >= v12)
          {
            v178 = 0;
          }

          else
          {
            v179 = *v9++;
            v178 = v179;
          }

          v170 <<= 8;
          v177 = v178 | (v177 << 8);
        }

        v180 = *(v168 + 2 * v176);
        v181 = (v170 >> 11) * v180;
        v182 = v180 + ((2048 - v180) >> 5);
        v183 = v170 - v181;
        v184 = v180 - (v180 >> 5);
        if (v177 >= v181)
        {
          v185 = (2 * v176) | 1u;
        }

        else
        {
          v185 = (2 * v176);
        }

        if (v177 >= v181)
        {
          v186 = v183;
        }

        else
        {
          v186 = v181;
        }

        if (v177 >= v181)
        {
          v187 = v177 - v181;
        }

        else
        {
          v187 = v177;
        }

        if (v177 < v181)
        {
          LOWORD(v184) = v182;
        }

        *(v168 + 2 * v176) = v184;
        v188 = *(v168 + 2 * v185);
        if (!HIBYTE(v186))
        {
          if (v9 >= v12)
          {
            v189 = 0;
          }

          else
          {
            v190 = *v9++;
            v189 = v190;
          }

          v186 <<= 8;
          v187 = v189 | (v187 << 8);
        }

        v191 = (v186 >> 11) * v188;
        v192 = 2 * v185;
        v193 = v187 - v191;
        if (v187 >= v191)
        {
          v192 |= 1u;
          v191 = v186 - v191;
          v187 = v193;
          v194 = v188 - (v188 >> 5);
        }

        else
        {
          v194 = v188 + ((2048 - v188) >> 5);
        }

        *(v168 + 2 * v185) = v194;
        v243 = (v192 ^ 8) + 2;
      }

      v327 = v243 - 2;
      if (v243 >= 6)
      {
        v327 = 3;
      }

      v328 = &v7[80 * v327 + 1492];
      v329 = *(v328 + 130);
      if (!HIBYTE(v191))
      {
        if (v9 >= v12)
        {
          v330 = 0;
        }

        else
        {
          v331 = *v9++;
          v330 = v331;
        }

        v191 <<= 8;
        v187 = v330 | (v187 << 8);
      }

      v332 = v328 + 128;
      v333 = (v191 >> 11) * v329;
      v334 = v329 + ((2048 - v329) >> 5);
      v335 = v329 - (v329 >> 5);
      if (v187 >= v333)
      {
        v336 = 3;
      }

      else
      {
        v336 = 2;
      }

      if (v187 >= v333)
      {
        v337 = v191 - v333;
      }

      else
      {
        v337 = v333;
      }

      if (v187 >= v333)
      {
        v338 = v187 - v333;
      }

      else
      {
        v338 = v187;
      }

      if (v187 >= v333)
      {
        v339 = v335;
      }

      else
      {
        v339 = v334;
      }

      *(v328 + 130) = v339;
      v340 = *(v332 + 2 * v336);
      if (!HIBYTE(v337))
      {
        if (v9 >= v12)
        {
          v341 = 0;
        }

        else
        {
          v342 = *v9++;
          v341 = v342;
        }

        v337 <<= 8;
        v338 = v341 | (v338 << 8);
      }

      v343 = (v337 >> 11) * v340;
      v344 = v340 + ((2048 - v340) >> 5);
      v345 = v337 - v343;
      v346 = v340 - (v340 >> 5);
      v347 = v338 >= v343;
      if (v338 >= v343)
      {
        v348 = (2 * v336) | 1u;
      }

      else
      {
        v348 = (2 * v336);
      }

      if (v338 >= v343)
      {
        v349 = v345;
      }

      else
      {
        v349 = v343;
      }

      if (v338 >= v343)
      {
        v338 -= v343;
      }

      if (v347)
      {
        v350 = v346;
      }

      else
      {
        v350 = v344;
      }

      *(v332 + 2 * v336) = v350;
      v351 = *(v332 + 2 * v348);
      if (!HIBYTE(v349))
      {
        if (v9 >= v12)
        {
          v352 = 0;
        }

        else
        {
          v353 = *v9++;
          v352 = v353;
        }

        v349 <<= 8;
        v338 = v352 | (v338 << 8);
      }

      v354 = (v349 >> 11) * v351;
      v355 = v351 + ((2048 - v351) >> 5);
      v356 = v349 - v354;
      v357 = v351 - (v351 >> 5);
      if (v338 >= v354)
      {
        v358 = (2 * v348) | 1u;
      }

      else
      {
        v358 = (2 * v348);
      }

      if (v338 >= v354)
      {
        v359 = v356;
      }

      else
      {
        v359 = v354;
      }

      if (v338 >= v354)
      {
        v360 = v338 - v354;
      }

      else
      {
        v360 = v338;
      }

      if (v338 >= v354)
      {
        v361 = v357;
      }

      else
      {
        v361 = v355;
      }

      *(v332 + 2 * v348) = v361;
      v362 = *(v332 + 2 * v358);
      if (!HIBYTE(v359))
      {
        if (v9 >= v12)
        {
          v363 = 0;
        }

        else
        {
          v364 = *v9++;
          v363 = v364;
        }

        v359 <<= 8;
        v360 = v363 | (v360 << 8);
      }

      v365 = (v359 >> 11) * v362;
      v366 = 2 * v358;
      v367 = v362 + ((2048 - v362) >> 5);
      v368 = v359 - v365;
      v369 = v360 - v365;
      v370 = v362 - (v362 >> 5);
      v371 = v360 >= v365;
      if (v360 < v365)
      {
        v368 = v365;
      }

      else
      {
        v366 = (2 * v358) | 1;
      }

      if (v360 >= v365)
      {
        v372 = v370;
      }

      else
      {
        v372 = v367;
      }

      *(v332 + 2 * v358) = v372;
      if (v371)
      {
        v373 = v369;
      }

      else
      {
        v373 = v360;
      }

      v374 = (4 * v366) ^ 0x40;
      v375 = v328 + 2 * v374;
      v376 = *(v375 + 2);
      if (!HIBYTE(v368))
      {
        if (v9 >= v12)
        {
          v377 = 0;
        }

        else
        {
          v378 = *v9++;
          v377 = v378;
        }

        v368 <<= 8;
        v373 = v377 | (v373 << 8);
      }

      v379 = (v368 >> 11) * v376;
      v380 = v376 + ((2048 - v376) >> 5);
      v381 = v368 - v379;
      v382 = v376 - (v376 >> 5);
      v383 = v373 >= v379;
      if (v373 >= v379)
      {
        v384 = 3;
      }

      else
      {
        v384 = 2;
      }

      if (v373 >= v379)
      {
        v385 = v381;
      }

      else
      {
        v385 = v379;
      }

      if (v373 >= v379)
      {
        v373 -= v379;
      }

      if (v383)
      {
        v386 = v382;
      }

      else
      {
        v386 = v380;
      }

      *(v375 + 2) = v386;
      v387 = *(v375 + 2 * v384);
      if (!HIBYTE(v385))
      {
        if (v9 >= v12)
        {
          v388 = 0;
        }

        else
        {
          v389 = *v9++;
          v388 = v389;
        }

        v385 <<= 8;
        v373 = v388 | (v373 << 8);
      }

      v390 = (v385 >> 11) * v387;
      v391 = v387 + ((2048 - v387) >> 5);
      v392 = v385 - v390;
      v393 = v387 - (v387 >> 5);
      if (v373 >= v390)
      {
        v394 = (2 * v384) | 1;
      }

      else
      {
        v394 = 2 * v384;
      }

      if (v373 >= v390)
      {
        v18 = v392;
      }

      else
      {
        v18 = v390;
      }

      if (v373 >= v390)
      {
        v11 = v373 - v390;
      }

      else
      {
        v11 = v373;
      }

      if (v373 >= v390)
      {
        v395 = v393;
      }

      else
      {
        v395 = v391;
      }

      *(v375 + 2 * v384) = v395;
      v396 = (v394 ^ 4) + v374;
      if (v366 != 16)
      {
        v397 = v396 >> 1;
        v398 = (v396 >> 1) - 1;
        v399 = (v394 & 1 | 2) << ((v396 >> 1) - 1);
        if (v396 > 0xD)
        {
          v414 = v397 - 5;
          if (v397 != 5)
          {
            v415 = 0;
            do
            {
              if (!HIBYTE(v18))
              {
                if (v9 >= v12)
                {
                  v416 = 0;
                }

                else
                {
                  v417 = *v9++;
                  v416 = v417;
                }

                v18 <<= 8;
                v11 = v416 | (v11 << 8);
              }

              v418 = v11 >= v18 >> 1;
              v18 >>= 1;
              v419 = v418;
              if (v418)
              {
                v420 = v18;
              }

              else
              {
                v420 = 0;
              }

              v11 -= v420;
              v415 = v419 | (2 * v415);
              --v414;
            }

            while (v414);
            v414 = 16 * v415;
          }

          v421 = 0;
          v422 = 0;
          v423 = 1;
          do
          {
            if (!HIBYTE(v18))
            {
              if (v9 >= v12)
              {
                v424 = 0;
              }

              else
              {
                v425 = *v9++;
                v424 = v425;
              }

              v18 <<= 8;
              v11 = v424 | (v11 << 8);
            }

            v426 = v423;
            v427 = v17[v423];
            v428 = v427 + ((2048 - v427) >> 5);
            v429 = (v18 >> 11) * v427;
            v423 *= 2;
            v430 = v427 - (v427 >> 5);
            v431 = v11 >= v429;
            if (v11 < v429)
            {
              v18 = v429;
            }

            else
            {
              v423 |= 1u;
              v18 -= v429;
            }

            if (v11 >= v429)
            {
              v11 -= v429;
            }

            if (v431)
            {
              v432 = 1;
            }

            else
            {
              LOWORD(v430) = v428;
              v432 = 0;
            }

            v17[v426] = v430;
            v422 += v432 << v421++;
          }

          while (v421 != 4);
          v401 = v422 + v414;
        }

        else if (v396 < 4)
        {
          v401 = 0;
        }

        else
        {
          v400 = 0;
          v401 = 0;
          v402 = &v7[v399 + 1812];
          if (v398 <= 1)
          {
            v403 = 1;
          }

          else
          {
            v403 = v398;
          }

          v404 = 1;
          do
          {
            if (!HIBYTE(v18))
            {
              if (v9 >= v12)
              {
                v405 = 0;
              }

              else
              {
                v406 = *v9++;
                v405 = v406;
              }

              v18 <<= 8;
              v11 = v405 | (v11 << 8);
            }

            v407 = v404;
            v408 = *(v402 + 2 * v404);
            v409 = v408 + ((2048 - v408) >> 5);
            v410 = (v18 >> 11) * v408;
            v404 *= 2;
            v411 = v408 - (v408 >> 5);
            v412 = v11 >= v410;
            if (v11 < v410)
            {
              v18 = v410;
            }

            else
            {
              v404 |= 1u;
              v18 -= v410;
            }

            if (v11 >= v410)
            {
              v11 -= v410;
            }

            if (v412)
            {
              v413 = 1;
            }

            else
            {
              LOWORD(v411) = v409;
              v413 = 0;
            }

            *(v402 + 2 * v407) = v411;
            v401 += v413 << v400++;
          }

          while (v403 != v400);
        }

        v396 = v401 + v399;
      }

      if (&a3[-a2] <= v396)
      {
        return 0;
      }

      v8 = lzma_fsm_lut[v8 + 24];
      a1[3] = a1[2];
      *(a1 + 1) = *a1;
      LODWORD(v203) = v396 + 1;
      *a1 = v396 + 1;
    }

    v206 = &a3[v243];
    if ((v206 + 47) > a5)
    {
      if (v206 > a4)
      {
        return 0;
      }

      do
      {
        *a3 = a3[-v203];
        ++a3;
      }

      while (a3 < v206);
    }

    else if (v203 > 0xF)
    {
      v590 = &a3[-v203];
      if (v203 >= v243 + 47)
      {
        v592 = v590[1];
        *a3 = *v590;
        *(a3 + 1) = v592;
        *(a3 + 2) = v590[2];
        if (v243 >= 0x31)
        {
          for (i = 48; i < v243; i += 16)
          {
            *&a3[i] = v590[i / 0x10];
          }
        }
      }

      else
      {
        *a3 = *v590;
        *(a3 + 1) = v590[1];
        *(a3 + 2) = v590[2];
        if (v243 >= 0x31)
        {
          for (j = 48; j < v243; j += 16)
          {
            *&a3[j] = v590[j / 0x10];
          }
        }
      }
    }

    else
    {
      v584 = &a3[-v203];
      v585 = vqtbl1q_s8(*v584, lzma_copy_with_pattern[(v203 - 1)]);
      v586 = lzma_copy_with_pattern[(v203 - 1)];
      v587 = &v584->i8[v586];
      *a3 = v585;
      *(a3 + 1) = *v587;
      *(a3 + 2) = *(v587 + 1);
      if (v243 >= 0x31)
      {
        v588 = v586 - v203 + 32;
        for (k = 48; k < v243; k += 16)
        {
          *&a3[k] = *&a3[v588];
          v588 += 16;
        }
      }
    }

LABEL_779:
    a3 = v206;
    if (v206 >= a4)
    {
      goto LABEL_837;
    }
  }

  *v23 = v24 + ((2048 - v24) >> 5);
  if (a3 <= a2)
  {
    v27 = 0;
  }

  else
  {
    v27 = *(a3 - 1);
  }

  v28 = &v600[816 * ((v27 >> v599) | ((v21 & v601) << v602))];
  if (!lzma_fsm_lut[v8])
  {
    v29 = 0;
    v30 = a3[-*a1];
    v31 = v28 + 768;
    v32 = v30 & 0xF0;
    v33 = 1;
    do
    {
      if (v29 > 3)
      {
        break;
      }

      v34 = 2 * v33;
      v35 = ((2 * v33) | (v32 >> 7) & 1) + 16;
      if (!HIBYTE(v25))
      {
        if (v9 >= v12)
        {
          v36 = 0;
        }

        else
        {
          v37 = *v9++;
          v36 = v37;
        }

        v25 <<= 8;
        v11 = v36 | (v11 << 8);
      }

      v38 = v31[v35];
      v39 = (v32 >> 7) & 1;
      v40 = (v25 >> 11) * v38;
      v41 = v38 + ((2048 - v38) >> 5);
      v25 -= v40;
      v42 = v38 - (v38 >> 5);
      v43 = v11 >= v40;
      v33 = v11 >= v40 ? v34 | 1 : v34;
      if (v11 >= v40)
      {
        v11 -= v40;
      }

      else
      {
        v25 = v40;
      }

      if (v43)
      {
        v44 = 1;
      }

      else
      {
        LOWORD(v42) = v41;
        v44 = 0;
      }

      v31[v35] = v42;
      if (v44 == v39)
      {
        ++v29;
      }

      else
      {
        if (v29 == 3)
        {
          break;
        }

        do
        {
          if (!HIBYTE(v25))
          {
            if (v9 >= v12)
            {
              v45 = 0;
            }

            else
            {
              v46 = *v9++;
              v45 = v46;
            }

            v25 <<= 8;
            v11 = v45 | (v11 << 8);
          }

          v47 = v33;
          v48 = v31[v33];
          v49 = (v25 >> 11) * v48;
          v33 *= 2;
          v50 = v48 + ((2048 - v48) >> 5);
          v25 -= v49;
          v51 = v48 - (v48 >> 5);
          v52 = v11 >= v49;
          if (v11 < v49)
          {
            v25 = v49;
          }

          else
          {
            v33 |= 1u;
          }

          if (v11 >= v49)
          {
            v11 -= v49;
          }

          if (!v52)
          {
            LOWORD(v51) = v50;
          }

          v31[v47] = v51;
          ++v29;
        }

        while (v29 < 3);
        v29 = 4;
      }

      v32 *= 2;
    }

    while (v44 == v39);
    v55 = 16 * (v33 ^ 0x10);
    if ((v30 ^ v55) <= 0xF)
    {
      v56 = 0;
      v57 = &v28[48 * (v33 ^ 0x10)];
      v58 = 16 * v30;
      v59 = 1;
      do
      {
        if (v56 > 3)
        {
          break;
        }

        v60 = 2 * v59;
        v61 = ((2 * v59) | (v58 >> 7) & 1) + 16;
        if (!HIBYTE(v25))
        {
          if (v9 >= v12)
          {
            v62 = 0;
          }

          else
          {
            v63 = *v9++;
            v62 = v63;
          }

          v25 <<= 8;
          v11 = v62 | (v11 << 8);
        }

        v64 = v57[v61];
        v65 = (v58 >> 7) & 1;
        v66 = (v25 >> 11) * v64;
        v67 = v64 + ((2048 - v64) >> 5);
        v59 = v60 | 1;
        v25 -= v66;
        v68 = v64 - (v64 >> 5);
        v69 = v11 >= v66;
        if (v11 >= v66)
        {
          v11 -= v66;
        }

        else
        {
          v59 = v60;
          v25 = v66;
        }

        if (v69)
        {
          v70 = 1;
        }

        else
        {
          LOWORD(v68) = v67;
          v70 = 0;
        }

        v57[v61] = v68;
        if (v70 == v65)
        {
          ++v56;
        }

        else
        {
          if (v56 == 3)
          {
            break;
          }

          do
          {
            if (!HIBYTE(v25))
            {
              if (v9 >= v12)
              {
                v71 = 0;
              }

              else
              {
                v72 = *v9++;
                v71 = v72;
              }

              v25 <<= 8;
              v11 = v71 | (v11 << 8);
            }

            v73 = v59;
            v74 = v57[v59];
            v75 = (v25 >> 11) * v74;
            v59 *= 2;
            v76 = v74 + ((2048 - v74) >> 5);
            v25 -= v75;
            v77 = v74 - (v74 >> 5);
            v78 = v11 >= v75;
            if (v11 < v75)
            {
              v25 = v75;
            }

            else
            {
              v59 |= 1u;
            }

            if (v11 >= v75)
            {
              v11 -= v75;
            }

            if (!v78)
            {
              LOWORD(v77) = v76;
            }

            v57[v73] = v77;
            ++v56;
          }

          while (v56 < 3);
          v56 = 4;
        }

        v58 *= 2;
      }

      while (v70 == v65);
      v79 = v59 ^ 0x10;
      goto LABEL_152;
    }

    goto LABEL_100;
  }

  while (1)
  {
    v120 = v28 + 768;
    v121 = v28[769];
    if (!HIBYTE(v25))
    {
      if (v9 >= v12)
      {
        v122 = 0;
      }

      else
      {
        v123 = *v9++;
        v122 = v123;
      }

      v25 <<= 8;
      v11 = v122 | (v11 << 8);
    }

    v124 = (v25 >> 11) * v121;
    v125 = v121 + ((2048 - v121) >> 5);
    v126 = v121 - (v121 >> 5);
    if (v11 >= v124)
    {
      v127 = 3;
    }

    else
    {
      v127 = 2;
    }

    if (v11 >= v124)
    {
      v128 = v25 - v124;
    }

    else
    {
      v128 = v124;
    }

    if (v11 >= v124)
    {
      v129 = v11 - v124;
    }

    else
    {
      v129 = v11;
    }

    if (v11 >= v124)
    {
      v130 = v126;
    }

    else
    {
      v130 = v125;
    }

    v28[769] = v130;
    v131 = v120[v127];
    if (!HIBYTE(v128))
    {
      if (v9 >= v12)
      {
        v132 = 0;
      }

      else
      {
        v133 = *v9++;
        v132 = v133;
      }

      v128 <<= 8;
      v129 = v132 | (v129 << 8);
    }

    v134 = (v128 >> 11) * v131;
    v135 = v131 + ((2048 - v131) >> 5);
    v136 = v128 - v134;
    v137 = v131 - (v131 >> 5);
    v138 = v129 >= v134;
    if (v129 >= v134)
    {
      v139 = (2 * v127) | 1u;
    }

    else
    {
      v139 = (2 * v127);
    }

    if (v129 >= v134)
    {
      v140 = v136;
    }

    else
    {
      v140 = v134;
    }

    if (v129 >= v134)
    {
      v129 -= v134;
    }

    if (v138)
    {
      v141 = v137;
    }

    else
    {
      v141 = v135;
    }

    v120[v127] = v141;
    v142 = v120[v139];
    if (!HIBYTE(v140))
    {
      if (v9 >= v12)
      {
        v143 = 0;
      }

      else
      {
        v144 = *v9++;
        v143 = v144;
      }

      v140 <<= 8;
      v129 = v143 | (v129 << 8);
    }

    v145 = (v140 >> 11) * v142;
    v146 = v142 + ((2048 - v142) >> 5);
    v147 = v140 - v145;
    v148 = v142 - (v142 >> 5);
    if (v129 >= v145)
    {
      v149 = (2 * v139) | 1u;
    }

    else
    {
      v149 = (2 * v139);
    }

    if (v129 >= v145)
    {
      v11 = v129 - v145;
    }

    else
    {
      v147 = v145;
      v11 = v129;
    }

    if (v129 >= v145)
    {
      v150 = v148;
    }

    else
    {
      v150 = v146;
    }

    v120[v139] = v150;
    v151 = v120[v149];
    if (!HIBYTE(v147))
    {
      if (v9 >= v12)
      {
        v152 = 0;
      }

      else
      {
        v153 = *v9++;
        v152 = v153;
      }

      v147 <<= 8;
      v11 = v152 | (v11 << 8);
    }

    v25 = (v147 >> 11) * v151;
    v154 = 2 * v149;
    v155 = v11 - v25;
    if (v11 >= v25)
    {
      v154 |= 1u;
      v25 = v147 - v25;
      v11 = v155;
      v156 = v151 - (v151 >> 5);
    }

    else
    {
      v156 = v151 + ((2048 - v151) >> 5);
    }

    v120[v149] = v156;
    v55 = (16 * v154) ^ 0x100;
LABEL_100:
    v80 = &v28[3 * v55];
    v81 = v80[1];
    if (!HIBYTE(v25))
    {
      if (v9 >= v12)
      {
        v82 = 0;
      }

      else
      {
        v83 = *v9++;
        v82 = v83;
      }

      v25 <<= 8;
      v11 = v82 | (v11 << 8);
    }

    v84 = (v25 >> 11) * v81;
    v85 = v81 + ((2048 - v81) >> 5);
    v86 = v81 - (v81 >> 5);
    if (v11 >= v84)
    {
      v87 = 3;
    }

    else
    {
      v87 = 2;
    }

    if (v11 >= v84)
    {
      v88 = v25 - v84;
    }

    else
    {
      v88 = v84;
    }

    if (v11 >= v84)
    {
      v89 = v11 - v84;
    }

    else
    {
      v89 = v11;
    }

    if (v11 >= v84)
    {
      v90 = v86;
    }

    else
    {
      v90 = v85;
    }

    v80[1] = v90;
    v91 = v80[v87];
    if (!HIBYTE(v88))
    {
      if (v9 >= v12)
      {
        v92 = 0;
      }

      else
      {
        v93 = *v9++;
        v92 = v93;
      }

      v88 <<= 8;
      v89 = v92 | (v89 << 8);
    }

    v94 = (v88 >> 11) * v91;
    v95 = v91 + ((2048 - v91) >> 5);
    v96 = v88 - v94;
    v97 = v91 - (v91 >> 5);
    v98 = v89 >= v94;
    if (v89 >= v94)
    {
      v99 = (2 * v87) | 1u;
    }

    else
    {
      v99 = (2 * v87);
    }

    if (v89 >= v94)
    {
      v100 = v96;
    }

    else
    {
      v100 = v94;
    }

    if (v89 >= v94)
    {
      v89 -= v94;
    }

    if (v98)
    {
      v101 = v97;
    }

    else
    {
      v101 = v95;
    }

    v80[v87] = v101;
    v102 = v80[v99];
    if (!HIBYTE(v100))
    {
      if (v9 >= v12)
      {
        v103 = 0;
      }

      else
      {
        v104 = *v9++;
        v103 = v104;
      }

      v100 <<= 8;
      v89 = v103 | (v89 << 8);
    }

    v105 = (v100 >> 11) * v102;
    v106 = v102 + ((2048 - v102) >> 5);
    v107 = v100 - v105;
    v108 = v102 - (v102 >> 5);
    if (v89 >= v105)
    {
      v109 = (2 * v99) | 1u;
    }

    else
    {
      v109 = (2 * v99);
    }

    if (v89 >= v105)
    {
      v11 = v89 - v105;
    }

    else
    {
      v107 = v105;
      v11 = v89;
    }

    if (v89 >= v105)
    {
      v110 = v108;
    }

    else
    {
      v110 = v106;
    }

    v80[v99] = v110;
    v111 = v80[v109];
    if (!HIBYTE(v107))
    {
      if (v9 >= v12)
      {
        v112 = 0;
      }

      else
      {
        v113 = *v9++;
        v112 = v113;
      }

      v107 <<= 8;
      v11 = v112 | (v11 << 8);
    }

    v25 = (v107 >> 11) * v111;
    v114 = 2 * v109;
    v115 = v11 - v25;
    if (v11 >= v25)
    {
      v114 |= 1u;
      v25 = v107 - v25;
      v11 = v115;
      v116 = v111 - (v111 >> 5);
    }

    else
    {
      v116 = v111 + ((2048 - v111) >> 5);
    }

    v80[v109] = v116;
    v79 = v114 ^ 0x10;
LABEL_152:
    v54 = v7 + 192;
    v8 = lzma_fsm_lut[v8 + 12];
    *a3++ = v79 + v55;
    if (a3 == a4)
    {
      break;
    }

    v22 = ++v21 & v604;
    v23 = &v7[16 * v8 + (v21 & v604)];
    v24 = *v23;
    if (!HIBYTE(v25))
    {
      if (v9 >= v12)
      {
        v117 = 0;
      }

      else
      {
        v118 = *v9++;
        v117 = v118;
      }

      v25 <<= 8;
      v11 = v117 | (v11 << 8);
    }

    v119 = (v25 >> 11) * v24;
    v26 = v11 - v119;
    if (v11 >= v119)
    {
      v53 = v25 - v119;
      goto LABEL_212;
    }

    *v23 = v24 + ((2048 - v24) >> 5);
    v28 = &v600[816 * (((v21 & v601) << v602) | ((v79 + v55) >> v599))];
    v25 = (v25 >> 11) * v24;
  }

  v206 = a4;
LABEL_837:
  v7 = 0;
  if (!v11 && v206 == a4)
  {
    *(a1 + 29) = v8;
    return (a4 - v594);
  }

  return v7;
}

BOOL BrotliFindAllStaticDictionaryMatches_cold_1(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v3 = a1 + 1;
  v4 = a2 - 1;
  v5 = (a2 - 1);
  if (v5 < 8)
  {
    v7 = 0;
LABEL_9:
    v11 = v4 & 7;
    if (v11)
    {
      v12 = v7 | v11;
      while (*(v3 + v7) == *a3)
      {
        ++a3;
        ++v7;
        if (!--v11)
        {
          v7 = v12;
          return v7 == v5;
        }
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = v4 & 0xFFFFFFF8;
    while (1)
    {
      v8 = *&a3[v6];
      v9 = *(v3 + v6);
      if (v8 != v9)
      {
        break;
      }

      v6 += 8;
      if ((v5 & 0xFFFFFFF8) == v6)
      {
        a3 += v4 & 0xFFFFFFF8;
        goto LABEL_9;
      }
    }

    v7 = v6 + (__clz(__rbit64(v9 ^ v8)) >> 3);
  }

  return v7 == v5;
}