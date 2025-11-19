uint64_t decoder_get_si_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 224);
  *(a2 + 16) = *(a1 + 240);
  *a2 = v2;
  return 0;
}

uint64_t decoder_decode_0(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4)
{
  if (*(a1 + 25072))
  {
    v8 = *(a1 + 25360);
    pthread_mutex_lock(v8);
    v9 = **(*(a1 + 25072) + 32);
    v10 = *(v9 + 363864);
    if (v10)
    {
      for (i = 0; i < v10; ++i)
      {
        v12 = *(v9 + 363832 + 8 * i);
        if (v12)
        {
          if ((*v12)-- == 1)
          {
            if (*(v12 + 1224))
            {
              v14 = (v12 + 1224);
              (*(v8 + 80))(*(v8 + 64), v12 + 1224);
              v14[1] = 0;
              v14[2] = 0;
              *v14 = 0;
              v10 = *(v9 + 363864);
            }
          }
        }
      }
    }

    *(v9 + 363864) = 0;
    pthread_mutex_unlock(v8);
    if (*(a1 + 25344))
    {
      v15 = 0;
      v16 = (a1 + 25248);
      do
      {
        (*(v8 + 80))(*(v8 + 64), v16);
        ++v15;
        v16[1] = 0;
        v16[2] = 0;
        *v16 = 0;
        v16 += 3;
      }

      while (v15 < *(a1 + 25344));
    }

    *(a1 + 25344) = 0;
  }

  if (!a2 && !a3)
  {
    result = 0;
    *(a1 + 420) = 1;
    return result;
  }

  result = 8;
  if (a2 && a3)
  {
    v18 = (a1 + 25056);
    *(a1 + 420) = 0;
    if (*(a1 + 25072))
    {
      if (*v18)
      {
        goto LABEL_22;
      }

      goto LABEL_73;
    }

    *(a1 + 432) = 0;
    *(a1 + 25352) = 1;
    v23 = malloc_type_malloc(0x8FuLL, 0x5F484EBFuLL);
    if (v23)
    {
      v24 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF0);
      *(v24 - 1) = v23;
      if (v24)
      {
        *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x70) = 0;
        *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x50) = 0u;
        *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x60) = 0u;
        *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x30) = 0u;
        *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x40) = 0u;
        *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0u;
        *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x20) = 0u;
        *v24 = 0u;
        *(a1 + 25360) = v24;
        *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x60) = 16;
        v25 = malloc_type_malloc(0x58C97uLL, 0x5F484EBFuLL);
        if (v25)
        {
          v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v26 - 8) = v25;
          if (v26)
          {
            bzero(((v25 + 23) & 0xFFFFFFFFFFFFFFF0), 0x58C80uLL);
            v27 = *(a1 + 25360);
            *(v27 + 88) = v26;
            if (pthread_mutex_init(v27, 0))
            {
              v28 = *(a1 + 25360);
              v29 = *(v28 + 88);
              if (v29)
              {
                free(*(v29 - 8));
                v28 = *(a1 + 25360);
              }

              *(v28 + 88) = 0;
              *(v28 + 96) = 0;
              free(*(v28 - 8));
              *(a1 + 25360) = 0;
              v30 = "Failed to allocate buffer pool mutex";
              goto LABEL_58;
            }

            v34 = malloc_type_malloc(0x4FuLL, 0x5F484EBFuLL);
            if (v34)
            {
              v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF0;
              *(v35 - 8) = v34;
              *(a1 + 25072) = v35;
              if (v35)
              {
                g_worker_interface_0((v34 + 23) & 0xFFFFFFFFFFFFFFF0);
                *(v35 + 16) = "aom frameworker";
                v36 = malloc_type_malloc(0x5FuLL, 0x5F484EBFuLL);
                if (v36)
                {
                  v37 = ((v36 + 39) & 0xFFFFFFFFFFFFFFE0);
                  *(v37 - 1) = v36;
                  *(v35 + 32) = v37;
                  if (v37)
                  {
                    v38 = av1_decoder_create(*(a1 + 25360));
                    *v37 = v38;
                    if (v38)
                    {
                      v37[5] = 0;
                      v39 = *(a1 + 208);
                      *(v38 + 90969) = *(a1 + 220);
                      *(v38 + 90970) = v39;
                      *(v38 + 90971) = *(a1 + 424);
                      *(v38 + 10121) = *(a1 + 460);
                      *(v38 + 97215) = *v18;
                      *(v38 + 45488) = *(a1 + 452);
                      v40 = *(a1 + 25064);
                      *(v38 + 90980) = *(a1 + 25060);
                      *(v38 + 90956) = v40;
                      *(v38 + 45498) = *(a1 + 464);
                      *(v38 + 48612) = 0;
                      *(v35 + 24) = frame_worker_hook;
                      v41 = **(*(a1 + 25072) + 32);
                      v42 = *(v41 + 40496);
                      *(v41 + 15432) = 0;
                      *(v41 + 15712) = *(a1 + 440);
                      *(v41 + 388852) = *(a1 + 444);
                      v43 = *(a1 + 25376);
                      if (v43)
                      {
                        v44 = *(a1 + 25384);
                        if (v44)
                        {
                          *(v42 + 72) = v43;
                          *(v42 + 80) = v44;
                          v45 = *(a1 + 25368);
                          goto LABEL_72;
                        }
                      }

                      v46 = *(v42 + 104);
                      *(v42 + 72) = av1_get_frame_buffer;
                      *(v42 + 80) = av1_release_frame_buffer;
                      v67 = v42 + 104;
                      v47 = *(v42 + 112);
                      if (v46 < 1)
                      {
                        if (!v47)
                        {
                          goto LABEL_67;
                        }
                      }

                      else
                      {
                        v48 = 0;
                        for (j = 0; j < v46; ++j)
                        {
                          v50 = *(v47 + v48);
                          if (v50)
                          {
                            free(*(v50 - 8));
                            v47 = *(v42 + 112);
                            v46 = *(v42 + 104);
                          }

                          *(v47 + v48) = 0;
                          v48 += 24;
                        }
                      }

                      free(*(v47 - 8));
LABEL_67:
                      *(v42 + 112) = 0;
                      *(v42 + 104) = 16;
                      v51 = malloc_type_malloc(0x197uLL, 0x5F484EBFuLL);
                      if (v51 && (v52 = ((v51 + 23) & 0xFFFFFFFFFFFFFFF0), *(v52 - 1) = v51, v52))
                      {
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x160) = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x170) = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x140) = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x150) = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x120) = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x130) = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x100) = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x110) = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xE0) = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xF0) = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xC0) = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xD0) = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xA0) = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xB0) = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x80) = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x90) = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x60) = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x70) = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x40) = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x50) = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x20) = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x30) = 0u;
                        *v52 = 0u;
                        *(((v51 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0u;
                        *(v42 + 112) = v52;
                      }

                      else
                      {
                        *(v42 + 112) = 0;
                        *(v42 + 104) = 0;
                        aom_internal_error(v41 + 390868, 2, "Failed to initialize internal frame buffers", v67);
                      }

                      v45 = v67;
LABEL_72:
                      *(v42 + 64) = v45;
                      if (*v18)
                      {
LABEL_22:
                        v19 = 0;
                        v20 = 0;
                        v21 = 8;
                        if (a3 < 8)
                        {
                          v21 = a3;
                        }

                        ++a2;
                        for (k = a3 - 1; ; --k)
                        {
                          v20 |= (*(a2 - 1) & 0x7F) << v19;
                          if ((*(a2 - 1) & 0x80) == 0)
                          {
                            break;
                          }

                          ++a2;
                          v19 += 7;
                          if (!--v21)
                          {
                            return 7;
                          }
                        }

                        if (HIDWORD(v20))
                        {
                          v31 = 1;
                        }

                        else
                        {
                          v31 = v20 > k;
                        }

                        if (v31)
                        {
                          return 7;
                        }

                        v32 = &a2[v20];
                        if (a2 < &a2[v20])
                        {
                          goto LABEL_76;
                        }

                        return 0;
                      }

LABEL_73:
                      v32 = &a2[a3];
                      if (a2 < &a2[a3])
                      {
                        while (1)
                        {
LABEL_76:
                          v53 = *v18;
                          if (*v18)
                          {
                            if (!a2)
                            {
                              return 7;
                            }

                            v54 = v32 - a2;
                            if ((v32 - a2) >= 8)
                            {
                              v54 = 8;
                            }

                            if (v32 == a2)
                            {
                              return 7;
                            }

                            v55 = 0;
                            v56 = 0;
                            for (m = v32 - 1 - a2++; ; --m)
                            {
                              v56 |= (*(a2 - 1) & 0x7F) << v55;
                              if ((*(a2 - 1) & 0x80) == 0)
                              {
                                break;
                              }

                              ++a2;
                              v55 += 7;
                              if (!--v54)
                              {
                                return 7;
                              }
                            }

                            if (HIDWORD(v56) || v56 > m)
                            {
                              return 7;
                            }
                          }

                          else
                          {
                            v56 = v32 - a2;
                          }

                          if (!*(a1 + 228))
                          {
                            v68 = 0;
                            *(a1 + 244) = v53;
                            result = decoder_peek_si_internal_0(a2, v56, a1 + 224, &v68);
                            if (result)
                            {
                              return result;
                            }

                            if (!(*(a1 + 232) | v68))
                            {
                              return 1;
                            }
                          }

                          v59 = *(a1 + 25072);
                          v60 = *(v59 + 32);
                          v60[1] = a2;
                          v60[3] = v56;
                          v60[4] = a4;
                          *(v60 + 10) = 1;
                          v61 = *v60;
                          v62 = (*v60 + 363904);
                          *(v61 + 40484) = *(a1 + 460);
                          *v62 = *(a1 + 452);
                          v62[10] = *(a1 + 464);
                          memcpy((v61 + 363992), (a1 + 472), 0x6008uLL);
                          *(*v60 + 388860) = *v18;
                          *(v59 + 48) = 0;
                          off_28100B670(v59);
                          a2 = v60[2];
                          v63 = *v60;
                          if (*(v59 + 48))
                          {
                            result = *(v63 + 390868);
                            if (result)
                            {
                              v65 = *(v63 + 390872);
                              v66 = v63 + 390876;
                              if (!v65)
                              {
                                v66 = 0;
                              }

                              *a1 = v66;
                              return result;
                            }
                          }

                          else if (*(a1 + 25352) == 1 && !*(v63 + 363888) && (*(v63 + 15200) & 0xFD) == 0)
                          {
                            *(a1 + 25352) = 0;
                          }

                          if (a2 < v32)
                          {
                            v64 = v32 - a2;
                            while (!*a2)
                            {
                              ++a2;
                              if (!--v64)
                              {
                                a2 = v32;
                                break;
                              }
                            }
                          }

                          result = 0;
                          if (a2 >= v32)
                          {
                            return result;
                          }
                        }
                      }

                      return 0;
                    }

                    off_28100B678(off_28100B678, v35);
                    free(*(v37 - 1));
                    free(*(v35 - 8));
                    *(a1 + 25072) = 0;
                    v30 = "Failed to allocate frame_worker_data->pbi";
LABEL_58:
                    *a1 = v30;
                    return 2;
                  }
                }

                else
                {
                  *(v35 + 32) = 0;
                }

                off_28100B678(off_28100B678, v35);
                free(*(v35 - 8));
                *(a1 + 25072) = 0;
                v30 = "Failed to allocate frame_worker_data";
                goto LABEL_58;
              }
            }

            else
            {
              *(a1 + 25072) = 0;
            }

            v30 = "Failed to allocate frame_worker";
            goto LABEL_58;
          }
        }

        v33 = *(a1 + 25360);
        *(v33 + 88) = 0;
        *(v33 + 96) = 0;
        free(*(v33 - 8));
      }
    }

    *(a1 + 25360) = 0;
    return 2;
  }

  return result;
}

int *decoder_get_frame_0(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = *(a1 + 25072);
  if (result)
  {
    v5 = *(result + 4);
    v6 = *v5;
    *(*v5 + 390868) = 0;
    off_28100B660[0]();
    if (!v7)
    {
      result = 0;
      *(v5 + 10) = 0;
      *(a1 + 25352) = 1;
      return result;
    }

    v8 = *v5;
    v9 = *v5 + 363864;
    if (*(v5 + 10) == 1)
    {
      *(v5 + 10) = 0;
      if (*(a1 + 25352) == 1 && !*(v9 + 24) && (*(v8 + 15200) & 0xFD) == 0)
      {
        *(a1 + 25352) = 0;
      }
    }

    v10 = *a2;
    if (*v9 <= *a2)
    {
      return 0;
    }

    v11 = *(v8 + 8 * v10 + 363832);
    v12 = *(v6 + 8 * v10 + 363832);
    *(a1 + 432) = v12;
    if (*(a1 + 25352))
    {
      return 0;
    }

    v13 = (v6 + 388840);
    v14 = (v6 + 363904);
    v15 = a1 + 248;
    v16 = *(a1 + 400);
    v48 = (v6 + 388840);
    v49 = (a1 + 248);
    if (v16)
    {
      v17 = v16[1];
      if (v17)
      {
        v18 = *v16;
        if (*v16)
        {
          v19 = 0;
          do
          {
            v20 = *(v16[1] + 8 * v19);
            if (v20)
            {
              v21 = v20[1];
              if (v21)
              {
                free(v21);
              }

              free(v20);
              v18 = *v16;
            }

            ++v19;
          }

          while (v19 < v18);
          v17 = v16[1];
          v14 = (v6 + 363904);
          v13 = (v6 + 388840);
        }

        free(v17);
      }

      free(v16);
      *(a1 + 400) = 0;
      v15 = a1 + 248;
    }

    v22 = v6 + 39880;
    yuvconfig2image_0(v15, v11 + 1248, v5[4]);
    if (*v13)
    {
      *(a1 + 400) = *v13;
      *v13 = 0;
    }

    if (v14[20])
    {
      v23 = v14;
      v24 = *(*v22 + 77);
      v25 = *(*v22 + 77) == 0;
      if (*(v6 + 40488))
      {
        v26 = *v23;
        if ((*v23 & 0x80000000) == 0)
        {
          v50 = 0;
          if (!av1_get_uniform_tile_size(v6 + 15200, &v51, &v50))
          {
            return 0;
          }

          if (v26 >= *(v6 + 39908) - 1)
          {
            v27 = *(v6 + 39908) - 1;
          }

          else
          {
            v27 = v26;
          }

          v28 = v50;
          v29 = v27 * v50;
          v30 = *(a1 + 308);
          *(a1 + 312) += 4 * *(a1 + 336) * v29;
          if (v24)
          {
            v25 = 0;
            v31 = *(v6 + 15732) - v29;
            if (v28 >= v31)
            {
              v28 = v31;
            }

            *(a1 + 292) = 4 * v28;
          }

          else
          {
            v32 = v29 * (4u >> v30);
            v33 = *(a1 + 328);
            v34 = *(a1 + 344);
            *(a1 + 320) += *(a1 + 340) * v32;
            *(a1 + 328) = v33 + v34 * v32;
            v35 = *(v6 + 15732) - v29;
            if (v28 >= v35)
            {
              v28 = v35;
            }

            *(a1 + 292) = 4 * v28;
            v25 = 1;
          }
        }

        v36 = v23[1];
        if ((v36 & 0x80000000) == 0)
        {
          v37 = v25;
          v51 = 0;
          if (av1_get_uniform_tile_size(v6 + 15200, &v51, &v50))
          {
            if (v36 >= *(v6 + 39904) - 1)
            {
              v38 = *(v6 + 39904) - 1;
            }

            else
            {
              v38 = v36;
            }

            v39 = v51;
            v40 = v38 * v51;
            v41 = *(a1 + 304);
            v42 = ((*(a1 + 248) >> 11) & 1) + 1;
            *(a1 + 312) += 4 * v42 * v40;
            if (v37)
            {
              v43 = v40 * (4u >> v41);
              v44 = *(a1 + 320) + v42 * v43;
              v45 = *(a1 + 328) + v42 * v43;
              *(a1 + 320) = v44;
              *(a1 + 328) = v45;
            }

            v46 = *(v6 + 15736) - v40;
            if (v39 >= v46)
            {
              v39 = v46;
            }

            *(a1 + 288) = 4 * v39;
            goto LABEL_57;
          }

          return 0;
        }
      }

LABEL_57:
      v47 = (v11 + 572);
      *(a1 + 408) = *(v12 + 1240);
      *(a1 + 364) = *(v12 + 1440);
      if (*(v6 + 388856))
      {
        *v47 = 0;
      }

      result = add_grain_if_needed(a1, v49, (a1 + 25080), v47);
      if (result)
      {
        ++*a2;
      }

      else
      {
        *(v6 + 390868) = 0x100000007;
        strcpy((v6 + 390876), "Grain synthesis failed\n");
      }

      return result;
    }

    if (!*(v6 + 40484))
    {
      goto LABEL_57;
    }

    ++*a2;
    aom_img_remove_metadata(v49);
    yuvconfig2image_0(v49, v6 + 388576, 0);
    if (*v48)
    {
      *(a1 + 400) = *v48;
      *v48 = 0;
    }

    return (a1 + 248);
  }

  return result;
}

uint64_t decoder_set_fb_fn_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 8;
  if (a2 && a3)
  {
    if (a1[3134])
    {
      return 1;
    }

    else
    {
      result = 0;
      a1[3172] = a2;
      a1[3173] = a3;
      a1[3171] = a4;
    }
  }

  return result;
}

uint64_t ctrl_copy_reference_2(uint64_t a1, unsigned int **a2)
{
  v30 = a2 + 1;
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v29 = 0u;
  memset(v28, 0, sizeof(v28));
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  memset(v23, 0, sizeof(v23));
  v21 = 0u;
  v22 = 0u;
  v3 = *(*(a1 + 25072) + 32);
  v4 = *(v2 + 18);
  *(v23 + 8) = v4;
  v5 = *(v2 + 11);
  *(&v23[1] + 1) = v5;
  v6 = v2[12];
  v7 = v2[13];
  *(&v28[2] + 4) = *(v2 + 7);
  v8 = v2[10];
  v9 = v2[16];
  v10 = v2[17];
  LODWORD(v21) = v2[9];
  DWORD1(v21) = (v9 + v21) >> v9;
  DWORD2(v21) = v8;
  HIDWORD(v21) = (v10 + v8) >> v10;
  LODWORD(v22) = v6;
  DWORD1(v22) = (v9 + v6) >> v9;
  DWORD2(v22) = v7;
  HIDWORD(v22) = (v10 + v7) >> v10;
  v11 = *(v2 + 24);
  *&v23[0] = v11;
  *(v28 + 12) = *(v2 + 3);
  v12 = v2[6];
  DWORD1(v28[1]) = v2[5];
  BYTE8(v28[1]) = v12;
  *(&v28[1] + 12) = *(v2 + 7);
  if ((*(v2 + 9) & 8) != 0)
  {
    *(v23 + 8) = vshrq_n_u64(v4, 1uLL);
    *(&v23[1] + 1) = v5 >> 1;
    *&v23[0] = vshr_n_s32(v11, 1uLL);
    v14 = v23[0];
    v13 = 8;
  }

  else
  {
    v13 = 0;
    v14 = v11.i32[0];
  }

  v16 = v14 - ((v2[9] + 31) & 0xFFFFFFE0);
  LODWORD(v27) = (v16 / 2) & ~((v16 + (v16 >> 31)) >> 31);
  *&v28[0] = __PAIR64__(v10, v9);
  LODWORD(v29) = v13;
  *(&v29 + 1) = *(v2 + 20);
  v17 = *v3;
  v18 = *v2;
  if (*(*(*v3 + 39880) + 77))
  {
    v19 = 1;
  }

  else
  {
    v19 = 3;
  }

  if (v18 <= 7 && (v20 = *(v17 + 8 * v18 + 15616)) != 0)
  {
    if (*(v20 + 1256) == v8 && *(v20 + 1248) == v21 && *(v20 + 1260) == (v10 + v8) >> v10 && *(v20 + 1252) == (v9 + v21) >> v9)
    {
      aom_yv12_copy_frame_c((v20 + 1248), &v21, v19);
      return *(v17 + 390868);
    }

    else
    {
      aom_internal_error(v17 + 390868, 1, "Incorrect buffer dimensions", v21, v22, v23[0], v23[1], v24, v25, v26, v27, v28[0], v28[1], v28[2], v29);
      return *(v17 + 390868);
    }
  }

  else
  {
    aom_internal_error(v17 + 390868, 1, "No reference frame", v21, v22, v23[0], v23[1], v24, v25, v26, v27, v28[0], v28[1], v28[2], v29);
    return 1;
  }
}

uint64_t ctrl_set_reference_2(uint64_t a1, uint64_t *a2)
{
  v23 = a2 + 1;
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v22 = 0u;
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  memset(v19, 0, sizeof(v19));
  v17 = 0u;
  v18 = 0u;
  v3 = *(*(a1 + 25072) + 32);
  v4 = *(v2 + 72);
  *(v19 + 8) = v4;
  v5 = *(v2 + 88);
  *(&v19[1] + 1) = v5;
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  *(&v21[2] + 4) = *(v2 + 56);
  v8 = *(v2 + 40);
  v9 = *(v2 + 64);
  v10 = *(v2 + 68);
  LODWORD(v17) = *(v2 + 36);
  DWORD1(v17) = (v9 + v17) >> v9;
  DWORD2(v17) = v8;
  HIDWORD(v17) = (v10 + v8) >> v10;
  LODWORD(v18) = v6;
  DWORD1(v18) = (v9 + v6) >> v9;
  DWORD2(v18) = v7;
  HIDWORD(v18) = (v10 + v7) >> v10;
  v11 = *(v2 + 96);
  *&v19[0] = v11;
  *(v21 + 12) = *(v2 + 12);
  v12 = *(v2 + 24);
  DWORD1(v21[1]) = *(v2 + 20);
  BYTE8(v21[1]) = v12;
  *(&v21[1] + 12) = *(v2 + 28);
  if ((*(v2 + 9) & 8) != 0)
  {
    *(v19 + 8) = vshrq_n_u64(v4, 1uLL);
    *(&v19[1] + 1) = v5 >> 1;
    *&v19[0] = vshr_n_s32(v11, 1uLL);
    v14 = v19[0];
    v13 = 8;
  }

  else
  {
    v13 = 0;
    v14 = v11.i32[0];
  }

  v16 = v14 - ((*(v2 + 36) + 31) & 0xFFFFFFE0);
  LODWORD(v20) = (v16 / 2) & ~((v16 + (v16 >> 31)) >> 31);
  *&v21[0] = __PAIR64__(v10, v9);
  LODWORD(v22) = v13;
  *(&v22 + 1) = *(v2 + 160);
  return av1_set_reference_dec(*v3 + 15200, *v2, *(v2 + 4), &v17);
}

uint64_t ctrl_set_byte_alignment_0(uint64_t a1, __int32 *a2, int8x8_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    a3.i32[0] = *a2;
    v4 = vcnt_s8(a3);
    v4.i16[0] = vaddlv_u8(v4);
    if ((v3 - 32) > 0x3E0 || v4.i32[0] > 1u)
    {
      return 8;
    }
  }

  *(a1 + 440) = v3;
  v7 = *(a1 + 25072);
  result = 0;
  if (v7)
  {
    *(**(v7 + 32) + 15712) = v3;
  }

  return result;
}

uint64_t ctrl_set_skip_loop_filter_0(uint64_t a1, int *a2)
{
  v2 = *a2;
  *(a1 + 444) = *a2;
  v3 = *(a1 + 25072);
  if (v3)
  {
    *(**(v3 + 32) + 388852) = v2;
  }

  return 0;
}

uint64_t ctrl_set_ext_ref_ptr(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = *(v2 + 2);
  *(a1 + 25048) = v3;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a1;
    do
    {
      v9 = *v2;
      *v2 += 168;
      v10 = *(v9 + 64);
      *(v5 + 512) = v10;
      v11 = *(v9 + 72);
      *(v5 + 520) = v11;
      v12 = *(v9 + 80);
      *(v5 + 528) = v12;
      v13 = *(v9 + 40);
      *(v5 + 488) = v13;
      v14 = *(v9 + 44);
      *(v5 + 496) = v14;
      *(v5 + 636) = *(v9 + 48);
      v15 = *(v9 + 28);
      *(v5 + 472) = v15;
      v16 = *(v9 + 32);
      *(v5 + 480) = v16;
      *(v5 + 476) = (*(v9 + 56) + v15) >> *(v9 + 56);
      *(v5 + 484) = (*(v9 + 60) + v16) >> *(v9 + 60);
      *(v5 + 492) = (*(v9 + 56) + v13) >> *(v9 + 56);
      *(v5 + 500) = (*(v9 + 60) + v14) >> *(v9 + 60);
      v6 = *(v9 + 88);
      *(v5 + 504) = v6;
      v17 = *(v9 + 92);
      *(v5 + 508) = v17;
      *(v5 + 612) = *(v9 + 4);
      v18 = *(v9 + 16);
      *(v5 + 620) = *(v9 + 12);
      *(v5 + 624) = v18;
      *(v5 + 628) = *(v9 + 20);
      if ((*(v9 + 1) & 8) != 0)
      {
        *(v5 + 512) = v10 >> 1;
        *(v5 + 520) = v11 >> 1;
        *(v5 + 528) = v12 >> 1;
        v6 >>= 1;
        *(v5 + 504) = v6;
        *(v5 + 508) = v17 >> 1;
        v7 = 8;
      }

      else
      {
        v7 = 0;
      }

      *(v5 + 648) = v7;
      v8 = v6 - ((*(v9 + 28) + 31) & 0xFFFFFFE0);
      *(v5 + 584) = (v8 / 2) & ~((v8 + (v8 >> 31)) >> 31);
      *(v5 + 600) = *(v9 + 56);
      *(v5 + 656) = *(v9 + 152);
      ++v4;
      v5 += 192;
    }

    while (v4 < *(a1 + 25048));
  }

  return 0;
}

uint64_t ctrl_set_skip_film_grain(uint64_t a1, int *a2)
{
  v2 = *a2;
  *(a1 + 448) = *a2;
  v3 = *(a1 + 25072);
  if (v3)
  {
    *(**(v3 + 32) + 388856) = v2;
  }

  return 0;
}

uint64_t ctrl_get_frame_corrupted_0(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = *(a1 + 25072);
  if (!v2)
  {
    return 1;
  }

  v3 = **(v2 + 32) + 360448;
  if (*(v3 + 3480))
  {
    if (!*(v3 + 3416))
    {
      return 1;
    }
  }

  v4 = *(a1 + 432);
  result = 0;
  if (v4)
  {
    **a2 = *(v4 + 1420);
  }

  return result;
}

uint64_t ctrl_get_last_quantizer(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = *(a1 + 25072);
  if (!v2)
  {
    return 1;
  }

  result = 0;
  **a2 = *(**(v2 + 32) + 15816);
  return result;
}

uint64_t ctrl_get_last_ref_updates_0(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = *(a1 + 25072);
  if (!v2)
  {
    return 1;
  }

  result = 0;
  **a2 = *(**(v2 + 32) + 15236);
  return result;
}

uint64_t ctrl_get_bit_depth_0(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = *(a1 + 25072);
  if (!v2)
  {
    return 1;
  }

  result = 0;
  **a2 = *(*(**(v2 + 32) + 39880) + 72);
  return result;
}

uint64_t ctrl_get_img_format(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = *(a1 + 25072);
  if (!v2)
  {
    return 1;
  }

  result = 0;
  v4 = *(**(v2 + 32) + 39880);
  v5 = *(v4 + 96);
  v6 = *(v4 + 100);
  v7 = *(v4 + 76);
  v8 = v6 | v5;
  if (v6 == 1 && v5 == 1)
  {
    v10 = 258;
  }

  else
  {
    v10 = 0;
  }

  if (v5 == 1 && v6 == 0)
  {
    v12 = 261;
  }

  else
  {
    v12 = v10;
  }

  if (!v8)
  {
    v12 = 262;
  }

  if (v7)
  {
    v13 = v12 | 0x800;
  }

  else
  {
    v13 = v12;
  }

  **a2 = v13;
  return result;
}

uint64_t ctrl_get_tile_size(uint64_t a1, _DWORD **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = *(a1 + 25072);
  if (!v3)
  {
    return 1;
  }

  v4 = **(v3 + 32) + 36864;
  if (*(**(v3 + 32) + 39924))
  {
    v5 = *(**(v3 + 32) + 39936);
    v6 = *(v4 + 3076);
LABEL_5:
    result = 0;
    *v2 = (v5 << 18) + 4 * v6;
    return result;
  }

  v8 = *(**(v3 + 32) + 39904);
  if (v8 < 1)
  {
    v5 = 0;
  }

  else
  {
    v9 = *(**(v3 + 32) + 39968);
    v10 = *(*(**(v3 + 32) + 39880) + 32);
    v5 = v10 * (v9 - *(**(v3 + 32) + 39964));
    if (v8 != 1)
    {
      v11 = v8 - 1;
      v12 = (v4 + 3108);
      do
      {
        v14 = *v12++;
        v13 = v14;
        if ((v14 - v9) * v10 != v5)
        {
          return 7;
        }

        v9 = v13;
      }

      while (--v11);
    }
  }

  v15 = *(v4 + 3044);
  if (v15 < 1)
  {
    result = 0;
    *v2 = v5 << 18;
    return result;
  }

  v16 = *(v4 + 3364);
  v17 = *(*(v4 + 3016) + 32);
  v6 = v17 * (v16 - *(v4 + 3360));
  if (v15 == 1)
  {
    goto LABEL_5;
  }

  v18 = v15 - 1;
  v19 = (v4 + 3368);
  while (1)
  {
    v21 = *v19++;
    v20 = v21;
    if ((v21 - v16) * v17 != v6)
    {
      return 7;
    }

    v16 = v20;
    if (!--v18)
    {
      goto LABEL_5;
    }
  }
}

uint64_t ctrl_get_tile_count(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = *(a1 + 25072);
  if (!v2)
  {
    return 1;
  }

  result = 0;
  **a2 = *(**(v2 + 32) + 363976) + 1;
  return result;
}

uint64_t ctrl_get_render_size_0(uint64_t a1, _DWORD **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = *(a1 + 25072);
  if (!v3)
  {
    return 1;
  }

  result = 0;
  v5 = **(v3 + 32);
  *v2 = *(v5 + 15264);
  v2[1] = *(v5 + 15268);
  return result;
}

uint64_t ctrl_get_frame_size_0(uint64_t a1, _DWORD **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = *(a1 + 25072);
  if (!v3)
  {
    return 1;
  }

  result = 0;
  v5 = **(v3 + 32);
  *v2 = *(v5 + 15256);
  v2[1] = *(v5 + 15260);
  return result;
}

uint64_t ctrl_get_new_frame_image_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = **(*(a1 + 25072) + 32);
  v4 = *(v3 + 363864);
  if (!v4)
  {
    return 1;
  }

  v5 = *(v3 + 8 * v4 + 363824);
  v6 = *(v5 + 1248);
  v7 = *(v5 + 1256);
  v8 = (v5 + 1388);
  v9 = *(v5 + 1264);
  v10 = *(v5 + 1272);
  v11 = *(v5 + 1280);
  v12 = *(v5 + 1284);
  v13 = *(v5 + 1288);
  v14 = *(v5 + 1296);
  v15 = *(v5 + 1344);
  v16 = *(v5 + 1368);
  v17 = *(v5 + 1376);
  v18 = *(v5 + 1384);
  v19 = *(v5 + 1396);
  v20 = *(v5 + 1400);
  v21 = *(v5 + 1424);
  v22 = HIDWORD(v17);
  v23 = v8[2];
  *&v24 = v8[3];
  *(&v24 + 1) = v17;
  v25 = v17;
  if (v17)
  {
    v26 = 261;
  }

  else
  {
    v26 = 262;
  }

  if (v17)
  {
    v27 = 16;
  }

  else
  {
    v27 = 24;
  }

  if (HIDWORD(v17))
  {
    v28 = 258;
  }

  else
  {
    v28 = v26;
  }

  if (HIDWORD(v17))
  {
    v29 = 12;
  }

  else
  {
    v29 = v27;
  }

  v30 = *v8;
  *v2 = v28;
  *(v2 + 4) = v30;
  *(v2 + 12) = v19;
  *(v2 + 16) = v20;
  *(v2 + 20) = v23;
  *(v2 + 28) = v6;
  *(v2 + 32) = v7;
  *(v2 + 36) = 8;
  *(v2 + 40) = v9;
  *(v2 + 44) = v10;
  *(v2 + 48) = v24;
  *(v2 + 64) = v13;
  *(v2 + 72) = v14;
  *(v2 + 88) = v11;
  *(v2 + 92) = v12;
  *(v2 + 96) = v12;
  if ((v21 & 8) != 0)
  {
    if (v25)
    {
      v31 = 2309;
    }

    else
    {
      v31 = 2310;
    }

    if (v22)
    {
      v31 = 2306;
    }

    *v2 = v31;
    v29 *= 2;
    *(v2 + 36) = v18;
    *(v2 + 64) = 2 * v13;
    *(v2 + 72) = vaddq_s64(v14, v14);
    v32 = 2 * v12;
    *(v2 + 88) = 2 * v11;
    *(v2 + 92) = v32;
    *(v2 + 96) = v32;
  }

  result = 0;
  *(v2 + 112) = v29;
  *(v2 + 128) = 0;
  *(v2 + 136) = v15;
  *(v2 + 144) = 0u;
  *(v2 + 104) = v16;
  return result;
}

uint64_t ctrl_copy_new_frame_image_0(uint64_t a1, uint64_t *a2)
{
  v31 = a2 + 1;
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = *(*(a1 + 25072) + 32);
  v4 = *(*v3 + 363864);
  if (!v4)
  {
    return 1;
  }

  v5 = *(*v3 + 8 * v4 + 363824);
  v6 = v5[87];
  v30[8] = v5[86];
  v30[9] = v6;
  v7 = v5[89];
  v30[10] = v5[88];
  v30[11] = v7;
  v8 = v5[83];
  v30[4] = v5[82];
  v30[5] = v8;
  v9 = v5[85];
  v30[6] = v5[84];
  v30[7] = v9;
  v10 = v5[79];
  v30[0] = v5[78];
  v30[1] = v10;
  v11 = v5[81];
  v30[2] = v5[80];
  v30[3] = v11;
  v29 = 0u;
  memset(v28, 0, sizeof(v28));
  v27 = 0u;
  memset(v26, 0, sizeof(v26));
  v24 = 0u;
  v25 = 0u;
  v12 = *(v2 + 64);
  *(v26 + 8) = v12;
  v13 = *(v2 + 80);
  *(&v26[1] + 1) = v13;
  v14 = *(v2 + 40);
  v15 = *(v2 + 44);
  *(&v28[2] + 4) = *(v2 + 48);
  v16 = *(v2 + 32);
  v17 = *(v2 + 56);
  LODWORD(v24) = *(v2 + 28);
  DWORD1(v24) = (v17 + v24) >> v17;
  DWORD2(v24) = v16;
  HIDWORD(v24) = (HIDWORD(v17) + v16) >> SBYTE4(v17);
  LODWORD(v25) = v14;
  DWORD1(v25) = (v17 + v14) >> v17;
  DWORD2(v25) = v15;
  HIDWORD(v25) = (HIDWORD(v17) + v15) >> SBYTE4(v17);
  v18 = *(v2 + 88);
  *&v26[0] = v18;
  *(v28 + 12) = *(v2 + 4);
  v19 = *(v2 + 16);
  DWORD1(v28[1]) = *(v2 + 12);
  BYTE8(v28[1]) = v19;
  *(&v28[1] + 12) = *(v2 + 20);
  if ((*(v2 + 1) & 8) != 0)
  {
    *(v26 + 8) = vshrq_n_u64(v12, 1uLL);
    *(&v26[1] + 1) = v13 >> 1;
    *&v26[0] = vshr_n_s32(v18, 1uLL);
    v17 = *(v2 + 56);
    v21 = v26[0];
    v20 = 8;
  }

  else
  {
    v20 = 0;
    v21 = v18.i32[0];
  }

  LODWORD(v29) = v20;
  v23 = v21 - ((*(v2 + 28) + 31) & 0xFFFFFFE0);
  LODWORD(v27) = (v23 / 2) & ~((v23 + (v23 >> 31)) >> 31);
  *&v28[0] = v17;
  *(&v29 + 1) = *(v2 + 152);
  return av1_copy_new_frame_dec(*v3 + 15200, v30, &v24);
}

uint64_t ctrl_get_reference_2(uint64_t a1, unsigned int **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = *v2;
  if (v3 > 7)
  {
    return 1;
  }

  v4 = *(**(*(a1 + 25072) + 32) + 8 * v3 + 15616);
  if (!v4)
  {
    return 1;
  }

  yuvconfig2image_0((v2 + 2), v4 + 1248, 0);
  return 0;
}

uint64_t ctrl_get_frame_header_info(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = *(a1 + 25072);
  if (!v3)
  {
    return 1;
  }

  result = 0;
  v5 = (**(v3 + 32) + 360448);
  v6 = v5[438];
  *v2 = v5[439];
  v2[1] = v6;
  v2[2] = v5[437];
  return result;
}

uint64_t ctrl_get_tile_data(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = *(a1 + 25072);
  if (!v3)
  {
    return 1;
  }

  result = 0;
  v6 = (**(v3 + 32) + (*(**(v3 + 32) + 363904) << 10) + 16 * *(**(v3 + 32) + 363908) + 298256);
  v5 = *v6;
  *v2 = v6[1];
  v2[1] = v5;
  return result;
}

uint64_t ctrl_get_fwd_kf_value(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = *(a1 + 25072);
  if (!v2)
  {
    return 1;
  }

  result = 0;
  **a2 = *(**(v2 + 32) + 388896);
  return result;
}

uint64_t ctrl_get_altref_present(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = *(a1 + 25072);
  if (!v2)
  {
    return 1;
  }

  result = 0;
  **a2 = *(**(v2 + 32) + 388900);
  return result;
}

uint64_t ctrl_get_frame_flags(uint64_t a1, int **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = *(a1 + 25072);
  if (!v3)
  {
    return 1;
  }

  v4 = **(v3 + 32);
  v5 = v4 + 12288;
  *v2 = 0;
  v6 = *(v4 + 15200);
  if (v6 == 3)
  {
    *v2 = 32;
    v8 = 96;
    if (*(v5 + 3414) == 1)
    {
      goto LABEL_16;
    }
  }

  else if (v6 == 2)
  {
    *v2 = 16;
    v8 = 80;
    if (*(v5 + 3414) == 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!*(v4 + 15200))
    {
      *v2 = 17;
      if (*(v4 + 15680))
      {
        v7 = 17;
      }

      else
      {
        v7 = 145;
      }

      *v2 = v7;
      v8 = v7 | 0x40;
      if (*(v5 + 3414) != 1)
      {
        return 0;
      }

LABEL_16:
      result = 0;
      *v2 = v8;
      return result;
    }

    v8 = 64;
    if (*(v5 + 3414) == 1)
    {
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t ctrl_get_tile_info(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = *(a1 + 25072);
  if (!v3)
  {
    return 1;
  }

  v4 = **(v3 + 32);
  v5 = v4[4988];
  v6 = v5;
  if (v4[4990].i32[1])
  {
    v6 = vshl_u32(0x100000001, v4[4991]);
  }

  *v2 = v6;
  if (v5.i32[0] >= 1)
  {
    v7 = (v5.i32[0] + 1);
    if (v5.i32[0] <= 7u || (v2 + 8 < &v4[4995] + 4 * v7 + 4 ? (v8 = &v4[4995] + 4 >= v2 + 4 * v7 + 4) : (v8 = 1), !v8))
    {
      v9 = 1;
LABEL_19:
      v15 = v7 - v9;
      v16 = 4 * v9;
      v17 = (v16 + v2 + 4);
      v18 = (v4 + v16 + 39964);
      do
      {
        *v17++ = v18->i32[0] - v18[-1].i32[1];
        v18 = (v18 + 4);
        --v15;
      }

      while (v15);
      goto LABEL_21;
    }

    v9 = v5.i32[0] & 0x7FFFFFF8 | 1;
    v10 = (v2 + 24);
    v11 = &v4[4998];
    v12 = v5.i32[0] & 0x7FFFFFF8;
    do
    {
      v13 = vsubq_s32(*v11, *(v11 - 4));
      v10[-1] = vsubq_s32(v11[-1], *(v11 - 20));
      *v10 = v13;
      v10 += 2;
      v11 += 2;
      v12 -= 8;
    }

    while (v12);
    if ((v5.i32[0] & 0x7FFFFFF8) != v5.u32[0])
    {
      goto LABEL_19;
    }
  }

LABEL_21:
  if (v5.i32[1] >= 1)
  {
    v19 = (v5.i32[1] + 1);
    if (v5.i32[1] > 7u && (v2 + 264 < &v4[5028] + 4 * v19 ? (v20 = &v4[5028] >= v2 + 4 * v19 + 260) : (v20 = 1), v20))
    {
      v21 = v5.i32[1] & 0x7FFFFFF8 | 1;
      v22 = (v2 + 280);
      v23 = (&v4[5030] + 4);
      v24 = v5.i32[1] & 0x7FFFFFF8;
      do
      {
        v25 = vsubq_s32(*v23, *(v23 - 4));
        v22[-1] = vsubq_s32(v23[-1], *(v23 - 20));
        *v22 = v25;
        v22 += 2;
        v23 += 2;
        v24 -= 8;
      }

      while (v24);
      if ((v5.i32[1] & 0x7FFFFFF8) == v5.u32[1])
      {
        goto LABEL_35;
      }
    }

    else
    {
      v21 = 1;
    }

    v26 = v19 - v21;
    v27 = (4 * v21 + v2 + 260);
    v28 = &v4[5028] + v21;
    do
    {
      *v27++ = *v28 - *(v28 - 1);
      ++v28;
      --v26;
    }

    while (v26);
  }

LABEL_35:
  result = 0;
  *(v2 + 520) = v4[48613].i32[0];
  return result;
}

uint64_t ctrl_get_screen_content_tools_info(uint64_t a1, _DWORD **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = *(a1 + 25072);
  if (!v3)
  {
    return 1;
  }

  result = 0;
  v5 = (**(v3 + 32) + 12288);
  v6 = v5[3408];
  *v2 = v5[3407];
  v2[1] = v6;
  v2[2] = v5[3406];
  return result;
}

uint64_t ctrl_get_still_picture(uint64_t a1, _DWORD **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 8;
  }

  v3 = *(a1 + 25072);
  if (!v3)
  {
    return 1;
  }

  result = 0;
  v5 = **(v3 + 32) + 385024;
  v6 = *(v5 + 3953);
  LODWORD(v5) = *(v5 + 3954);
  *v2 = v6;
  v2[1] = v5;
  return result;
}

uint64_t ctrl_get_sb_size(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = *(a1 + 25072);
  if (!v2)
  {
    return 1;
  }

  result = 0;
  **a2 = *(**(v2 + 32) + 388948) == 15;
  return result;
}

uint64_t ctrl_get_show_existing_frame_flag(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = *(a1 + 25072);
  if (!v2)
  {
    return 1;
  }

  result = 0;
  **a2 = *(**(v2 + 32) + 15688);
  return result;
}

uint64_t ctrl_get_s_frame_info(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = *(a1 + 25072);
  if (!v2)
  {
    return 1;
  }

  result = 0;
  **a2 = *(**(v2 + 32) + 388908);
  return result;
}

uint64_t ctrl_get_show_frame_flag(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = *(a1 + 25072);
  if (!v2)
  {
    return 1;
  }

  result = 0;
  **a2 = *(**(v2 + 32) + 15680);
  return result;
}

uint64_t ctrl_get_base_q_idx(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = *(a1 + 25072);
  if (!v2)
  {
    return 1;
  }

  result = 0;
  **a2 = *(**(v2 + 32) + 15816);
  return result;
}

uint64_t ctrl_get_order_hint(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return 8;
  }

  v2 = *(a1 + 25072);
  if (!v2)
  {
    return 1;
  }

  result = 0;
  **a2 = *(**(v2 + 32) + 15204);
  return result;
}

uint64_t ctrl_get_mi_info(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v4 = *(a2 + 2);
  if (!v4)
  {
    return 8;
  }

  v5 = *(a1 + 25072);
  if (!v5)
  {
    return 1;
  }

  v6 = *(v5 + 32);
  if (!v6)
  {
    return 1;
  }

  if (v2 < 0)
  {
    return 8;
  }

  v7 = *v6;
  result = 8;
  if (v2 < *(v7 + 15732) && (v3 & 0x80000000) == 0 && v3 < *(v7 + 15736))
  {
    result = 0;
    v9 = *(*(v7 + 15768) + 8 * (v3 + *(v7 + 15780) * v2));
    v10 = v9[6];
    v12 = v9[3];
    v11 = v9[4];
    v4[5] = v9[5];
    v4[6] = v10;
    v4[3] = v12;
    v4[4] = v11;
    v13 = v9[10];
    v15 = v9[7];
    v14 = v9[8];
    v4[9] = v9[9];
    v4[10] = v13;
    v4[7] = v15;
    v4[8] = v14;
    v16 = *v9;
    v17 = v9[2];
    v4[1] = v9[1];
    v4[2] = v17;
    *v4 = v16;
  }

  return result;
}

double yuvconfig2image_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 132);
  if (v3)
  {
    *a1 = 258;
    v4 = *(a2 + 128);
    v5 = 12;
    v6 = 2306;
  }

  else
  {
    v4 = *(a2 + 128);
    if (v4)
    {
      *a1 = 261;
      v5 = 16;
      v6 = 2309;
    }

    else
    {
      *a1 = 262;
      v5 = 24;
      v6 = 2310;
    }
  }

  *(a1 + 4) = *(a2 + 140);
  v7 = *(a2 + 152);
  *(a1 + 12) = *(a2 + 148);
  *(a1 + 16) = v7;
  *(a1 + 20) = *(a2 + 156);
  *(a1 + 36) = 8;
  *(a1 + 28) = *a2;
  *(a1 + 32) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 16);
  *(a1 + 44) = *(a2 + 24);
  *(a1 + 48) = *(a2 + 164);
  *(a1 + 56) = v4;
  *(a1 + 60) = v3;
  *(a1 + 64) = *(a2 + 40);
  *(a1 + 72) = *(a2 + 48);
  *(a1 + 80) = *(a2 + 56);
  *(a1 + 88) = *(a2 + 32);
  v8 = *(a2 + 36);
  *(a1 + 92) = v8;
  *(a1 + 96) = v8;
  if ((*(a2 + 176) & 8) != 0)
  {
    v5 *= 2;
    *a1 = v6;
    *(a1 + 36) = *(a2 + 136);
    *(a1 + 64) = 2 * *(a2 + 40);
    *(a1 + 72) = 2 * *(a2 + 48);
    *(a1 + 80) = 2 * *(a2 + 56);
    *(a1 + 88) = 2 * *(a2 + 32);
    *(a1 + 92) = 2 * *(a2 + 36);
    *(a1 + 96) = 2 * *(a2 + 36);
  }

  result = 0.0;
  *(a1 + 112) = v5;
  v10 = *(a2 + 96);
  *(a1 + 128) = a3;
  *(a1 + 136) = v10;
  *(a1 + 144) = 0u;
  *(a1 + 104) = *(a2 + 120);
  return result;
}

uint64_t decoder_peek_si_internal_0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (a2 < 1)
  {
    return 8;
  }

  v266 = v7;
  v267 = v6;
  v268 = v4;
  v269 = v5;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  *a3 = 0;
  *(a3 + 8) = 0;
  memset(v265, 0, 32);
  v263 = 0;
  v264 = 0;
  result = aom_read_obu_header_and_size(a1, a2, *(a3 + 20), v265, &v264, &v263);
  if (result)
  {
    return result;
  }

  if (BYTE8(v265[0]) == 2)
  {
    v13 = v10 >= v264 + v263;
    v10 -= v264 + v263;
    if (!v13)
    {
      return 7;
    }

    v11 += v264 + v263;
    result = aom_read_obu_header_and_size(v11, v10, *(v9 + 20), v265, &v264, &v263);
    if (result)
    {
      return result;
    }
  }

  v238 = a4;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = v10 - v263;
    if (v10 - v263 < v264)
    {
      return 7;
    }

    v18 = &v11[v263];
    v19 = BYTE8(v265[0]) == 6 || BYTE8(v265[0]) == 3;
    if (v19)
    {
      break;
    }

    if (BYTE8(v265[0]) != 1)
    {
      goto LABEL_35;
    }

    if (v17 < 2)
    {
      return 7;
    }

    v23 = &v11[v10];
    v258 = &v11[v263];
    v259 = &v11[v10];
    v260 = 0;
    v261 = 0;
    v262 = 0;
    v24 = (v10 > v263) | (2 * (v10 > v263));
    if (v10 <= v263)
    {
      v256 = &v11[v263];
      v257 = v10 - v263;
      v29 = (v10 > v263) | (2 * (v10 > v263));
    }

    else
    {
      v25 = v24 ^ 7;
      v26 = *v18;
      v27 = v24 + 1;
      LODWORD(v260) = v27;
      v28 = ((v26 >> v25) & 1) == 0;
      v256 = &v11[v263];
      v257 = v10 - v263;
      v14 = (*v18 >> (v27 ^ 7)) & 1;
      v29 = v27 + 1;
      LODWORD(v260) = v27 + 1;
      if (v14 & v28)
      {
        return 5;
      }

      if (v14)
      {
        v50 = v27 + 2;
        if (&v18[v29 >> 3] < v23)
        {
          v29 = v50;
        }

        v51 = v29 + 2;
        LODWORD(v260) = v29 + 2;
        v52 = (v29 + 2) >> 3;
        if (&v18[v52] < v23)
        {
          v51 = v29 + 3;
          LODWORD(v260) = v29 + 3;
          v52 = (v29 + 3) >> 3;
        }

        if (&v18[v52] < v23)
        {
          v53 = v51 + 1;
          LODWORD(v260) = v53;
          *(v9 + 12) = 0x100000001;
          v54 = v258;
          v55 = v259;
          v56 = &v258[v53 >> 3];
          if (v56 < v259)
          {
            goto LABEL_571;
          }

          goto LABEL_580;
        }

        goto LABEL_579;
      }
    }

    if (v10 <= v263)
    {
      goto LABEL_71;
    }

    v33 = *v18;
    LODWORD(v260) = v29 + 1;
    if (((v33 >> (v29 ^ 7)) & 1) == 0)
    {
      goto LABEL_71;
    }

    v34 = 0;
    for (i = 33; i > 1; --i)
    {
      while (1)
      {
        v37 = &v258[v260 >> 3];
        if (v37 >= v259)
        {
          break;
        }

        v36 = (*v37 >> (~v260 & 7)) & 1;
        LODWORD(v260) = v260 + 1;
        v34 |= v36 << (i-- - 2);
        if (i <= 1)
        {
          goto LABEL_47;
        }
      }
    }

LABEL_47:
    v38 = 0;
    for (j = 33; j > 1; --j)
    {
      while (1)
      {
        v41 = &v258[v260 >> 3];
        if (v41 >= v259)
        {
          break;
        }

        v40 = (*v41 >> (~v260 & 7)) & 1;
        LODWORD(v260) = v260 + 1;
        v38 |= v40 << (j-- - 2);
        if (j <= 1)
        {
          goto LABEL_51;
        }
      }
    }

LABEL_51:
    if (!v34 || !v38)
    {
      return 5;
    }

    v42 = v260;
    v43 = &v258[v260 >> 3];
    if (v43 < v259)
    {
      v44 = *v43;
      LODWORD(v260) = v260 + 1;
      if ((v44 >> (~v42 & 7)))
      {
        v45 = 0;
        for (k = 1; ; ++k)
        {
          v48 = v260;
          v49 = &v258[v260 >> 3];
          if (v49 < v259)
          {
            v47 = *v49;
            LODWORD(v260) = v260 + 1;
            if ((v47 >> (~v48 & 7)))
            {
              break;
            }
          }

          if (++v45 == 32)
          {
            return 5;
          }
        }

        if (v45)
        {
          v113 = 0;
          v114 = -1 << v45;
          do
          {
            while (1)
            {
              v116 = &v258[v260 >> 3];
              if (v116 >= v259)
              {
                break;
              }

              v115 = (*v116 >> (~v260 & 7)) & 1;
              LODWORD(v260) = v260 + 1;
              v113 |= v115 << (k-- - 2);
              if (k <= 1)
              {
                goto LABEL_99;
              }
            }

            --k;
          }

          while (k > 1);
LABEL_99:
          if (v114 == v113)
          {
            return 5;
          }
        }
      }
    }

    v57 = v260;
    v58 = &v258[v260 >> 3];
    if (v58 < v259 && (v59 = *v58, v60 = v260 + 1, LODWORD(v260) = v260 + 1, ((v59 >> (~v57 & 7)) & 1) != 0))
    {
      v61 = &v258[v60 >> 3];
      if (v61 >= v259)
      {
        v63 = 0;
      }

      else
      {
        v62 = *v61 >> (~v60 & 7);
        v60 = v57 + 2;
        LODWORD(v260) = v57 + 2;
        v63 = 16 * (v62 & 1);
      }

      v117 = &v258[v60 >> 3];
      if (v117 >= v259)
      {
        v119 = 0;
      }

      else
      {
        v118 = *v117 >> (~v60++ & 7);
        LODWORD(v260) = v60;
        v119 = 8 * (v118 & 1);
      }

      v120 = &v258[v60 >> 3];
      if (v120 >= v259)
      {
        v122 = 0;
      }

      else
      {
        v121 = *v120 >> (~v60++ & 7);
        LODWORD(v260) = v60;
        v122 = 4 * (v121 & 1);
      }

      v123 = &v258[v60 >> 3];
      if (v123 >= v259)
      {
        v125 = 0;
      }

      else
      {
        v124 = *v123 >> (~v60++ & 7);
        LODWORD(v260) = v60;
        v125 = 2 * (v124 & 1);
      }

      v126 = &v258[v60 >> 3];
      if (v126 >= v259)
      {
        v127 = 0;
      }

      else
      {
        v127 = (*v126 >> (~v60 & 7)) & 1;
        LODWORD(v260) = v60 + 1;
      }

      v128 = v125 | v122 | v119 | v63;
      for (m = 33; m > 1; --m)
      {
        if (&v258[v260 >> 3] < v259)
        {
          LODWORD(v260) = v260 + 1;
        }
      }

      v130 = v260;
      if (&v258[v260 >> 3] < v259)
      {
        v130 = v260 + 1;
        LODWORD(v260) = v260 + 1;
      }

      if (&v258[v130 >> 3] < v259)
      {
        LODWORD(v260) = ++v130;
      }

      if (&v258[v130 >> 3] < v259)
      {
        LODWORD(v260) = ++v130;
      }

      if (&v258[v130 >> 3] < v259)
      {
        LODWORD(v260) = ++v130;
      }

      if (&v258[v130 >> 3] < v259)
      {
        LODWORD(v260) = ++v130;
      }

      if (&v258[v130 >> 3] < v259)
      {
        LODWORD(v260) = ++v130;
      }

      if (&v258[v130 >> 3] < v259)
      {
        LODWORD(v260) = ++v130;
      }

      if (&v258[v130 >> 3] < v259)
      {
        LODWORD(v260) = ++v130;
      }

      if (&v258[v130 >> 3] < v259)
      {
        LODWORD(v260) = ++v130;
      }

      if (&v258[v130 >> 3] < v259)
      {
        LODWORD(v260) = v130 + 1;
      }

      v239 = 0;
      v64 = (v127 | v128) + 1;
      v65 = v260;
      v66 = v258;
      v67 = v259;
      v68 = &v258[v260 >> 3];
      if (v68 < v259)
      {
LABEL_72:
        v69 = *v68 >> (~v65++ & 7);
        LODWORD(v260) = v65;
        v240 = (v69 & 1) == 0;
        v70 = &v66[v65 >> 3];
        if (v70 < v67)
        {
          goto LABEL_73;
        }

        goto LABEL_179;
      }
    }

    else
    {
LABEL_71:
      v64 = 1;
      v239 = 1;
      v65 = v260;
      v66 = v258;
      v67 = v259;
      v68 = &v258[v260 >> 3];
      if (v68 < v259)
      {
        goto LABEL_72;
      }
    }

    v240 = 1;
    v70 = &v66[v65 >> 3];
    if (v70 < v67)
    {
LABEL_73:
      v71 = *v70 >> (~v65++ & 7);
      LODWORD(v260) = v65;
      v72 = 16 * (v71 & 1);
      v73 = &v66[v65 >> 3];
      if (v73 < v67)
      {
        goto LABEL_74;
      }

      goto LABEL_180;
    }

LABEL_179:
    v72 = 0;
    v73 = &v66[v65 >> 3];
    if (v73 < v67)
    {
LABEL_74:
      v74 = *v73 >> (~v65++ & 7);
      LODWORD(v260) = v65;
      v75 = 8 * (v74 & 1);
      v76 = &v66[v65 >> 3];
      if (v76 < v67)
      {
        goto LABEL_75;
      }

      goto LABEL_181;
    }

LABEL_180:
    v75 = 0;
    v76 = &v66[v65 >> 3];
    if (v76 < v67)
    {
LABEL_75:
      v77 = *v76 >> (~v65++ & 7);
      LODWORD(v260) = v65;
      v78 = 4 * (v77 & 1);
      v79 = &v66[v65 >> 3];
      if (v79 < v67)
      {
        goto LABEL_76;
      }

      goto LABEL_182;
    }

LABEL_181:
    v78 = 0;
    v79 = &v66[v65 >> 3];
    if (v79 < v67)
    {
LABEL_76:
      v80 = *v79 >> (~v65++ & 7);
      LODWORD(v260) = v65;
      v81 = 2 * (v80 & 1);
      v82 = &v66[v65 >> 3];
      if (v82 < v67)
      {
        goto LABEL_77;
      }

      goto LABEL_183;
    }

LABEL_182:
    v81 = 0;
    v82 = &v66[v65 >> 3];
    if (v82 < v67)
    {
LABEL_77:
      v83 = (*v82 >> (~v65++ & 7)) & 1;
      LODWORD(v260) = v65;
      v84 = &v66[v65 >> 3];
      if (v84 < v67)
      {
        goto LABEL_78;
      }

      goto LABEL_184;
    }

LABEL_183:
    v83 = 0;
    v84 = &v66[v65 >> 3];
    if (v84 < v67)
    {
LABEL_78:
      v85 = *v84 >> (~v65++ & 7);
      LODWORD(v260) = v65;
      v254 = (v85 & 1) << 11;
      v86 = &v66[v65 >> 3];
      if (v86 < v67)
      {
        goto LABEL_79;
      }

      goto LABEL_185;
    }

LABEL_184:
    v254 = 0;
    v86 = &v66[v65 >> 3];
    if (v86 < v67)
    {
LABEL_79:
      v87 = *v86 >> (~v65++ & 7);
      LODWORD(v260) = v65;
      v252 = (v87 & 1) << 10;
      v88 = &v66[v65 >> 3];
      if (v88 < v67)
      {
        goto LABEL_80;
      }

      goto LABEL_186;
    }

LABEL_185:
    v252 = 0;
    v88 = &v66[v65 >> 3];
    if (v88 < v67)
    {
LABEL_80:
      v89 = *v88 >> (~v65++ & 7);
      LODWORD(v260) = v65;
      v250 = (v89 & 1) << 9;
      v90 = &v66[v65 >> 3];
      if (v90 < v67)
      {
        goto LABEL_81;
      }

      goto LABEL_187;
    }

LABEL_186:
    v250 = 0;
    v90 = &v66[v65 >> 3];
    if (v90 < v67)
    {
LABEL_81:
      v91 = *v90 >> (~v65++ & 7);
      LODWORD(v260) = v65;
      v249 = (v91 & 1) << 8;
      v92 = &v66[v65 >> 3];
      if (v92 < v67)
      {
        goto LABEL_82;
      }

      goto LABEL_188;
    }

LABEL_187:
    v249 = 0;
    v92 = &v66[v65 >> 3];
    if (v92 < v67)
    {
LABEL_82:
      v93 = *v92 >> (~v65++ & 7);
      LODWORD(v260) = v65;
      v248 = (v93 & 1) << 7;
      v94 = &v66[v65 >> 3];
      if (v94 < v67)
      {
        goto LABEL_83;
      }

      goto LABEL_189;
    }

LABEL_188:
    v248 = 0;
    v94 = &v66[v65 >> 3];
    if (v94 < v67)
    {
LABEL_83:
      v95 = *v94 >> (~v65++ & 7);
      LODWORD(v260) = v65;
      v247 = (v95 & 1) << 6;
      v96 = &v66[v65 >> 3];
      if (v96 < v67)
      {
        goto LABEL_84;
      }

      goto LABEL_190;
    }

LABEL_189:
    v247 = 0;
    v96 = &v66[v65 >> 3];
    if (v96 < v67)
    {
LABEL_84:
      v97 = *v96 >> (~v65++ & 7);
      LODWORD(v260) = v65;
      v246 = 32 * (v97 & 1);
      v98 = &v66[v65 >> 3];
      if (v98 < v67)
      {
        goto LABEL_85;
      }

      goto LABEL_191;
    }

LABEL_190:
    v246 = 0;
    v98 = &v66[v65 >> 3];
    if (v98 < v67)
    {
LABEL_85:
      v99 = *v98 >> (~v65++ & 7);
      LODWORD(v260) = v65;
      v245 = 16 * (v99 & 1);
      v100 = &v66[v65 >> 3];
      if (v100 < v67)
      {
        goto LABEL_86;
      }

      goto LABEL_192;
    }

LABEL_191:
    v245 = 0;
    v100 = &v66[v65 >> 3];
    if (v100 < v67)
    {
LABEL_86:
      v101 = *v100 >> (~v65++ & 7);
      LODWORD(v260) = v65;
      v244 = 8 * (v101 & 1);
      v102 = &v66[v65 >> 3];
      if (v102 < v67)
      {
        goto LABEL_87;
      }

      goto LABEL_193;
    }

LABEL_192:
    v244 = 0;
    v102 = &v66[v65 >> 3];
    if (v102 < v67)
    {
LABEL_87:
      v103 = *v102 >> (~v65++ & 7);
      LODWORD(v260) = v65;
      v243 = 4 * (v103 & 1);
      v104 = &v66[v65 >> 3];
      if (v104 < v67)
      {
        goto LABEL_88;
      }

      goto LABEL_194;
    }

LABEL_193:
    v243 = 0;
    v104 = &v66[v65 >> 3];
    if (v104 < v67)
    {
LABEL_88:
      v105 = *v104 >> (~v65++ & 7);
      LODWORD(v260) = v65;
      v242 = 2 * (v105 & 1);
      v106 = &v66[v65 >> 3];
      if (v106 < v67)
      {
        goto LABEL_89;
      }

      goto LABEL_195;
    }

LABEL_194:
    v242 = 0;
    v106 = &v66[v65 >> 3];
    if (v106 < v67)
    {
LABEL_89:
      v241 = (*v106 >> (~v65++ & 7)) & 1;
      LODWORD(v260) = v65;
      v107 = &v66[v65 >> 3];
      if (v107 < v67)
      {
        goto LABEL_90;
      }

      goto LABEL_196;
    }

LABEL_195:
    v241 = 0;
    v107 = &v66[v65 >> 3];
    if (v107 < v67)
    {
LABEL_90:
      v108 = *v107 >> (~v65++ & 7);
      LODWORD(v260) = v65;
      v109 = 16 * (v108 & 1);
      v110 = &v66[v65 >> 3];
      if (v110 < v67)
      {
        goto LABEL_91;
      }

      goto LABEL_197;
    }

LABEL_196:
    v109 = 0;
    v110 = &v66[v65 >> 3];
    if (v110 < v67)
    {
LABEL_91:
      v111 = *v110 >> (~v65++ & 7);
      LODWORD(v260) = v65;
      v112 = 8 * (v111 & 1);
      if (&v66[v65 >> 3] >= v67)
      {
        goto LABEL_159;
      }

LABEL_92:
      LODWORD(v260) = ++v65;
      goto LABEL_159;
    }

LABEL_197:
    v112 = 0;
    if (&v66[v65 >> 3] < v67)
    {
      goto LABEL_92;
    }

LABEL_159:
    if (&v66[v65 >> 3] < v67)
    {
      LODWORD(v260) = ++v65;
    }

    if (&v66[v65 >> 3] < v67)
    {
      LODWORD(v260) = v65 + 1;
    }

    v131 = v112 | v109;
    v132 = v83 | v81 | v78 | v75 | v72;
    if (!v239)
    {
      v133 = v260;
      if (v240)
      {
        if (v131 && &v258[v260 >> 3] < v259)
        {
          v133 = v260 + 1;
          LODWORD(v260) = v260 + 1;
        }

        v143 = &v258[v133 >> 3];
        if (v143 >= v259)
        {
          goto LABEL_247;
        }

        v144 = *v143;
        LODWORD(v260) = v133 + 1;
        if (((v144 >> (~v133 & 7)) & 1) == 0)
        {
          goto LABEL_249;
        }

        aom_rb_read_literal(&v258, v64);
        aom_rb_read_literal(&v258, v64);
        if (&v258[v260 >> 3] >= v259)
        {
LABEL_247:
          if (v262)
          {
            v262(v261);
          }
        }

        else
        {
          LODWORD(v260) = v260 + 1;
        }

LABEL_249:
        if (!v132)
        {
          goto LABEL_569;
        }

        v145 = v64 + 1;
        v146 = 1;
        while (2)
        {
          v147 = v260;
          v148 = v258;
          v149 = v259;
          if (&v258[v260 >> 3] >= v259)
          {
            if (v262)
            {
              v262(v261);
              v147 = v260;
              v148 = v258;
              v149 = v259;
            }
          }

          else
          {
            v147 = v260 + 1;
            LODWORD(v260) = v260 + 1;
          }

          if (&v148[v147 >> 3] >= v149)
          {
            if (v262)
            {
              v262(v261);
              v147 = v260;
              v148 = v258;
              v149 = v259;
            }
          }

          else
          {
            LODWORD(v260) = ++v147;
          }

          if (&v148[v147 >> 3] >= v149)
          {
            if (v262)
            {
              v262(v261);
              v147 = v260;
              v148 = v258;
              v149 = v259;
            }
          }

          else
          {
            LODWORD(v260) = ++v147;
          }

          if (&v148[v147 >> 3] >= v149)
          {
            if (v262)
            {
              v262(v261);
              v147 = v260;
              v148 = v258;
              v149 = v259;
            }
          }

          else
          {
            LODWORD(v260) = ++v147;
          }

          if (&v148[v147 >> 3] >= v149)
          {
            if (v262)
            {
              v262(v261);
              v147 = v260;
              v148 = v258;
              v149 = v259;
            }
          }

          else
          {
            LODWORD(v260) = ++v147;
          }

          if (&v148[v147 >> 3] >= v149)
          {
            if (v262)
            {
              v262(v261);
              v147 = v260;
              v148 = v258;
              v149 = v259;
            }
          }

          else
          {
            LODWORD(v260) = ++v147;
          }

          if (&v148[v147 >> 3] >= v149)
          {
            if (v262)
            {
              v262(v261);
              v147 = v260;
              v148 = v258;
              v149 = v259;
            }
          }

          else
          {
            LODWORD(v260) = ++v147;
          }

          if (&v148[v147 >> 3] >= v149)
          {
            if (v262)
            {
              v262(v261);
              v147 = v260;
              v148 = v258;
              v149 = v259;
            }
          }

          else
          {
            LODWORD(v260) = ++v147;
          }

          if (&v148[v147 >> 3] >= v149)
          {
            if (v262)
            {
              v262(v261);
              v147 = v260;
              v148 = v258;
              v149 = v259;
            }
          }

          else
          {
            LODWORD(v260) = ++v147;
          }

          if (&v148[v147 >> 3] >= v149)
          {
            if (v262)
            {
              v262(v261);
              v147 = v260;
              v148 = v258;
              v149 = v259;
            }
          }

          else
          {
            LODWORD(v260) = ++v147;
          }

          if (&v148[v147 >> 3] >= v149)
          {
            if (v262)
            {
              v262(v261);
              v147 = v260;
              v148 = v258;
              v149 = v259;
            }
          }

          else
          {
            LODWORD(v260) = ++v147;
          }

          if (&v148[v147 >> 3] >= v149)
          {
            if (v262)
            {
              v262(v261);
              v147 = v260;
              v148 = v258;
              v149 = v259;
            }
          }

          else
          {
            LODWORD(v260) = ++v147;
          }

          v150 = &v148[v147 >> 3];
          if (v150 >= v149)
          {
            if (v262)
            {
              v262(v261);
              v152 = 0;
              v147 = v260;
              v148 = v258;
              v149 = v259;
              v153 = &v258[v260 >> 3];
              if (v153 >= v259)
              {
                goto LABEL_307;
              }
            }

            else
            {
              v152 = 0;
              v153 = &v148[v147 >> 3];
              if (v153 >= v149)
              {
                goto LABEL_307;
              }
            }

LABEL_303:
            v154 = *v153 >> (~v147++ & 7);
            LODWORD(v260) = v147;
            v155 = 8 * (v154 & 1);
            if (&v148[v147 >> 3] < v149)
            {
              goto LABEL_304;
            }

LABEL_309:
            if (v262)
            {
              v262(v261);
              v147 = v260;
              v148 = v258;
              v149 = v259;
            }
          }

          else
          {
            v151 = *v150 >> (~v147++ & 7);
            LODWORD(v260) = v147;
            v152 = 16 * (v151 & 1);
            v153 = &v148[v147 >> 3];
            if (v153 < v149)
            {
              goto LABEL_303;
            }

LABEL_307:
            if (v262)
            {
              v262(v261);
              v155 = 0;
              v147 = v260;
              v148 = v258;
              v149 = v259;
              if (&v258[v260 >> 3] >= v259)
              {
                goto LABEL_309;
              }
            }

            else
            {
              v155 = 0;
              if (&v148[v147 >> 3] >= v149)
              {
                goto LABEL_309;
              }
            }

LABEL_304:
            LODWORD(v260) = ++v147;
          }

          if (&v148[v147 >> 3] >= v149)
          {
            if (v262)
            {
              v262(v261);
              v147 = v260;
              v148 = v258;
              v149 = v259;
            }
          }

          else
          {
            LODWORD(v260) = ++v147;
          }

          if (&v148[v147 >> 3] >= v149)
          {
            if (v262)
            {
              v262(v261);
              v147 = v260;
              v148 = v258;
              v149 = v259;
            }
          }

          else
          {
            LODWORD(v260) = ++v147;
          }

          if (v155 | v152)
          {
            if (&v148[v147 >> 3] >= v149)
            {
              if (v262)
              {
                v262(v261);
                v147 = v260;
                v148 = v258;
                v149 = v259;
              }
            }

            else
            {
              LODWORD(v260) = ++v147;
            }
          }

          v156 = &v148[v147 >> 3];
          if (v156 >= v149)
          {
LABEL_339:
            if (v262)
            {
              v262(v261);
            }
          }

          else
          {
            v157 = *v156;
            LODWORD(v260) = v147 + 1;
            if ((v157 >> (~v147 & 7)))
            {
              v158 = v145;
              do
              {
                if (&v258[v260 >> 3] < v259)
                {
                  LODWORD(v260) = v260 + 1;
                }

                else if (v262)
                {
                  v262(v261);
                }

                --v158;
              }

              while (v158 > 1);
              v159 = v145;
              do
              {
                if (&v258[v260 >> 3] < v259)
                {
                  LODWORD(v260) = v260 + 1;
                }

                else if (v262)
                {
                  v262(v261);
                }

                --v159;
              }

              while (v159 > 1);
              if (&v258[v260 >> 3] >= v259)
              {
                goto LABEL_339;
              }

              LODWORD(v260) = v260 + 1;
            }
          }

          v19 = v146++ == v132;
          if (v19)
          {
            goto LABEL_569;
          }

          continue;
        }
      }

      if (v131 && &v258[v260 >> 3] < v259)
      {
        v133 = v260 + 1;
        LODWORD(v260) = v260 + 1;
      }

      v175 = &v258[v133 >> 3];
      if (v175 >= v259)
      {
        goto LABEL_448;
      }

      v176 = *v175;
      LODWORD(v260) = v133 + 1;
      if (((v176 >> (~v133 & 7)) & 1) == 0)
      {
        goto LABEL_450;
      }

      aom_rb_read_literal(&v258, v64);
      aom_rb_read_literal(&v258, v64);
      if (&v258[v260 >> 3] >= v259)
      {
LABEL_448:
        if (v262)
        {
          v262(v261);
        }
      }

      else
      {
        LODWORD(v260) = v260 + 1;
      }

LABEL_450:
      v177 = v260;
      v178 = &v258[v260 >> 3];
      if (v178 >= v259)
      {
        if (v262)
        {
          v262(v261);
        }
      }

      else
      {
        v179 = *v178;
        LODWORD(v260) = v260 + 1;
        if ((v179 >> (~v177 & 7)))
        {
          aom_rb_read_literal(&v258, 4);
        }
      }

      if (!v132)
      {
        goto LABEL_569;
      }

      v180 = v64 + 1;
      v181 = 1;
      while (2)
      {
        v182 = v260;
        v183 = v258;
        v184 = v259;
        if (&v258[v260 >> 3] >= v259)
        {
          if (v262)
          {
            v262(v261);
            v182 = v260;
            v183 = v258;
            v184 = v259;
          }
        }

        else
        {
          v182 = v260 + 1;
          LODWORD(v260) = v260 + 1;
        }

        if (&v183[v182 >> 3] >= v184)
        {
          if (v262)
          {
            v262(v261);
            v182 = v260;
            v183 = v258;
            v184 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v182;
        }

        if (&v183[v182 >> 3] >= v184)
        {
          if (v262)
          {
            v262(v261);
            v182 = v260;
            v183 = v258;
            v184 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v182;
        }

        if (&v183[v182 >> 3] >= v184)
        {
          if (v262)
          {
            v262(v261);
            v182 = v260;
            v183 = v258;
            v184 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v182;
        }

        if (&v183[v182 >> 3] >= v184)
        {
          if (v262)
          {
            v262(v261);
            v182 = v260;
            v183 = v258;
            v184 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v182;
        }

        if (&v183[v182 >> 3] >= v184)
        {
          if (v262)
          {
            v262(v261);
            v182 = v260;
            v183 = v258;
            v184 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v182;
        }

        if (&v183[v182 >> 3] >= v184)
        {
          if (v262)
          {
            v262(v261);
            v182 = v260;
            v183 = v258;
            v184 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v182;
        }

        if (&v183[v182 >> 3] >= v184)
        {
          if (v262)
          {
            v262(v261);
            v182 = v260;
            v183 = v258;
            v184 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v182;
        }

        if (&v183[v182 >> 3] >= v184)
        {
          if (v262)
          {
            v262(v261);
            v182 = v260;
            v183 = v258;
            v184 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v182;
        }

        if (&v183[v182 >> 3] >= v184)
        {
          if (v262)
          {
            v262(v261);
            v182 = v260;
            v183 = v258;
            v184 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v182;
        }

        if (&v183[v182 >> 3] >= v184)
        {
          if (v262)
          {
            v262(v261);
            v182 = v260;
            v183 = v258;
            v184 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v182;
        }

        if (&v183[v182 >> 3] >= v184)
        {
          if (v262)
          {
            v262(v261);
            v182 = v260;
            v183 = v258;
            v184 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v182;
        }

        v185 = &v183[v182 >> 3];
        if (v185 >= v184)
        {
          if (v262)
          {
            v262(v261);
            v187 = 0;
            v182 = v260;
            v183 = v258;
            v184 = v259;
            v188 = &v258[v260 >> 3];
            if (v188 >= v259)
            {
              goto LABEL_513;
            }
          }

          else
          {
            v187 = 0;
            v188 = &v183[v182 >> 3];
            if (v188 >= v184)
            {
              goto LABEL_513;
            }
          }

LABEL_509:
          v189 = *v188 >> (~v182++ & 7);
          LODWORD(v260) = v182;
          v190 = 8 * (v189 & 1);
          if (&v183[v182 >> 3] < v184)
          {
            goto LABEL_510;
          }

LABEL_515:
          if (v262)
          {
            v262(v261);
            v182 = v260;
            v183 = v258;
            v184 = v259;
          }
        }

        else
        {
          v186 = *v185 >> (~v182++ & 7);
          LODWORD(v260) = v182;
          v187 = 16 * (v186 & 1);
          v188 = &v183[v182 >> 3];
          if (v188 < v184)
          {
            goto LABEL_509;
          }

LABEL_513:
          if (v262)
          {
            v262(v261);
            v190 = 0;
            v182 = v260;
            v183 = v258;
            v184 = v259;
            if (&v258[v260 >> 3] >= v259)
            {
              goto LABEL_515;
            }
          }

          else
          {
            v190 = 0;
            if (&v183[v182 >> 3] >= v184)
            {
              goto LABEL_515;
            }
          }

LABEL_510:
          LODWORD(v260) = ++v182;
        }

        if (&v183[v182 >> 3] >= v184)
        {
          if (v262)
          {
            v262(v261);
            v182 = v260;
            v183 = v258;
            v184 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v182;
        }

        if (&v183[v182 >> 3] >= v184)
        {
          if (v262)
          {
            v262(v261);
            v182 = v260;
            v183 = v258;
            v184 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v182;
        }

        if (v190 | v187)
        {
          if (&v183[v182 >> 3] >= v184)
          {
            if (v262)
            {
              v262(v261);
              v182 = v260;
              v183 = v258;
              v184 = v259;
            }
          }

          else
          {
            LODWORD(v260) = ++v182;
          }
        }

        v191 = &v183[v182 >> 3];
        if (v191 >= v184)
        {
          goto LABEL_546;
        }

        v192 = *v191;
        LODWORD(v260) = v182 + 1;
        if (((v192 >> (~v182 & 7)) & 1) == 0)
        {
          goto LABEL_548;
        }

        v193 = v180;
        do
        {
          if (&v258[v260 >> 3] < v259)
          {
            LODWORD(v260) = v260 + 1;
          }

          else if (v262)
          {
            v262(v261);
          }

          --v193;
        }

        while (v193 > 1);
        v194 = v180;
        do
        {
          if (&v258[v260 >> 3] < v259)
          {
            LODWORD(v260) = v260 + 1;
          }

          else if (v262)
          {
            v262(v261);
          }

          --v194;
        }

        while (v194 > 1);
        if (&v258[v260 >> 3] >= v259)
        {
LABEL_546:
          if (v262)
          {
            v262(v261);
          }
        }

        else
        {
          LODWORD(v260) = v260 + 1;
        }

LABEL_548:
        v195 = v260;
        v196 = v258;
        v197 = v259;
        v198 = &v258[v260 >> 3];
        if (v198 >= v259)
        {
LABEL_567:
          if (v262)
          {
            v262(v261);
          }
        }

        else
        {
          v199 = *v198;
          v200 = v260 + 1;
          LODWORD(v260) = v260 + 1;
          if ((v199 >> (~v195 & 7)))
          {
            if (&v258[v200 >> 3] >= v259)
            {
              if (v262)
              {
                v262(v261);
                v200 = v260;
                v196 = v258;
                v197 = v259;
              }
            }

            else
            {
              v200 = v195 + 2;
              LODWORD(v260) = v195 + 2;
            }

            if (&v196[v200 >> 3] >= v197)
            {
              if (v262)
              {
                v262(v261);
                v200 = v260;
                v196 = v258;
                v197 = v259;
              }
            }

            else
            {
              LODWORD(v260) = ++v200;
            }

            if (&v196[v200 >> 3] >= v197)
            {
              if (v262)
              {
                v262(v261);
                v200 = v260;
                v196 = v258;
                v197 = v259;
              }
            }

            else
            {
              LODWORD(v260) = ++v200;
            }

            if (&v196[v200 >> 3] >= v197)
            {
              goto LABEL_567;
            }

            LODWORD(v260) = v200 + 1;
          }
        }

        v19 = v181++ == v132;
        if (v19)
        {
          goto LABEL_569;
        }

        continue;
      }
    }

    if (!v240)
    {
      v134 = v260;
      if (v131 && &v258[v260 >> 3] < v259)
      {
        v134 = v260 + 1;
        LODWORD(v260) = v260 + 1;
      }

      v160 = &v258[v134 >> 3];
      if (v160 < v259)
      {
        v161 = *v160;
        LODWORD(v260) = v134 + 1;
        if ((v161 >> (~v134 & 7)))
        {
          aom_rb_read_literal(&v258, 4);
        }
      }

      if (!v132)
      {
        goto LABEL_569;
      }

      v162 = v75 + v72 + v78 + v81 + v83;
      while (2)
      {
        v163 = v260;
        v164 = v258;
        v165 = v259;
        if (&v258[v260 >> 3] >= v259)
        {
          if (v262)
          {
            v262(v261);
            v163 = v260;
            v164 = v258;
            v165 = v259;
          }
        }

        else
        {
          v163 = v260 + 1;
          LODWORD(v260) = v260 + 1;
        }

        if (&v164[v163 >> 3] >= v165)
        {
          if (v262)
          {
            v262(v261);
            v163 = v260;
            v164 = v258;
            v165 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v163;
        }

        if (&v164[v163 >> 3] >= v165)
        {
          if (v262)
          {
            v262(v261);
            v163 = v260;
            v164 = v258;
            v165 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v163;
        }

        if (&v164[v163 >> 3] >= v165)
        {
          if (v262)
          {
            v262(v261);
            v163 = v260;
            v164 = v258;
            v165 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v163;
        }

        if (&v164[v163 >> 3] >= v165)
        {
          if (v262)
          {
            v262(v261);
            v163 = v260;
            v164 = v258;
            v165 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v163;
        }

        if (&v164[v163 >> 3] >= v165)
        {
          if (v262)
          {
            v262(v261);
            v163 = v260;
            v164 = v258;
            v165 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v163;
        }

        if (&v164[v163 >> 3] >= v165)
        {
          if (v262)
          {
            v262(v261);
            v163 = v260;
            v164 = v258;
            v165 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v163;
        }

        if (&v164[v163 >> 3] >= v165)
        {
          if (v262)
          {
            v262(v261);
            v163 = v260;
            v164 = v258;
            v165 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v163;
        }

        if (&v164[v163 >> 3] >= v165)
        {
          if (v262)
          {
            v262(v261);
            v163 = v260;
            v164 = v258;
            v165 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v163;
        }

        if (&v164[v163 >> 3] >= v165)
        {
          if (v262)
          {
            v262(v261);
            v163 = v260;
            v164 = v258;
            v165 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v163;
        }

        if (&v164[v163 >> 3] >= v165)
        {
          if (v262)
          {
            v262(v261);
            v163 = v260;
            v164 = v258;
            v165 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v163;
        }

        if (&v164[v163 >> 3] >= v165)
        {
          if (v262)
          {
            v262(v261);
            v163 = v260;
            v164 = v258;
            v165 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v163;
        }

        v166 = &v164[v163 >> 3];
        if (v166 >= v165)
        {
          if (v262)
          {
            v262(v261);
            v168 = 0;
            v163 = v260;
            v164 = v258;
            v165 = v259;
            v169 = &v258[v260 >> 3];
            if (v169 >= v259)
            {
              goto LABEL_406;
            }
          }

          else
          {
            v168 = 0;
            v169 = &v164[v163 >> 3];
            if (v169 >= v165)
            {
              goto LABEL_406;
            }
          }

LABEL_402:
          v170 = *v169 >> (~v163++ & 7);
          LODWORD(v260) = v163;
          v171 = 8 * (v170 & 1);
          if (&v164[v163 >> 3] < v165)
          {
            goto LABEL_403;
          }

LABEL_408:
          if (v262)
          {
            v262(v261);
            v163 = v260;
            v164 = v258;
            v165 = v259;
          }
        }

        else
        {
          v167 = *v166 >> (~v163++ & 7);
          LODWORD(v260) = v163;
          v168 = 16 * (v167 & 1);
          v169 = &v164[v163 >> 3];
          if (v169 < v165)
          {
            goto LABEL_402;
          }

LABEL_406:
          if (v262)
          {
            v262(v261);
            v171 = 0;
            v163 = v260;
            v164 = v258;
            v165 = v259;
            if (&v258[v260 >> 3] >= v259)
            {
              goto LABEL_408;
            }
          }

          else
          {
            v171 = 0;
            if (&v164[v163 >> 3] >= v165)
            {
              goto LABEL_408;
            }
          }

LABEL_403:
          LODWORD(v260) = ++v163;
        }

        if (&v164[v163 >> 3] >= v165)
        {
          if (v262)
          {
            v262(v261);
            v163 = v260;
            v164 = v258;
            v165 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v163;
        }

        if (&v164[v163 >> 3] >= v165)
        {
          if (v262)
          {
            v262(v261);
            v163 = v260;
            v164 = v258;
            v165 = v259;
          }
        }

        else
        {
          LODWORD(v260) = ++v163;
        }

        if (v171 | v168)
        {
          if (&v164[v163 >> 3] >= v165)
          {
            if (v262)
            {
              v262(v261);
              v163 = v260;
              v164 = v258;
              v165 = v259;
            }
          }

          else
          {
            LODWORD(v260) = ++v163;
          }
        }

        v172 = &v164[v163 >> 3];
        if (v172 >= v165)
        {
LABEL_442:
          if (v262)
          {
            v262(v261);
          }
        }

        else
        {
          v173 = *v172;
          v174 = v163 + 1;
          LODWORD(v260) = v163 + 1;
          if ((v173 >> (~v163 & 7)))
          {
            if (&v164[v174 >> 3] >= v165)
            {
              if (v262)
              {
                v262(v261);
                v174 = v260;
                v164 = v258;
                v165 = v259;
              }
            }

            else
            {
              v174 = v163 + 2;
              LODWORD(v260) = v163 + 2;
            }

            if (&v164[v174 >> 3] >= v165)
            {
              if (v262)
              {
                v262(v261);
                v174 = v260;
                v164 = v258;
                v165 = v259;
              }
            }

            else
            {
              LODWORD(v260) = ++v174;
            }

            if (&v164[v174 >> 3] >= v165)
            {
              if (v262)
              {
                v262(v261);
                v174 = v260;
                v164 = v258;
                v165 = v259;
              }
            }

            else
            {
              LODWORD(v260) = ++v174;
            }

            if (&v164[v174 >> 3] >= v165)
            {
              goto LABEL_442;
            }

            LODWORD(v260) = v174 + 1;
          }
        }

        if (!--v162)
        {
          goto LABEL_569;
        }

        continue;
      }
    }

    if (v131 && &v258[v260 >> 3] < v259)
    {
      LODWORD(v260) = v260 + 1;
    }

    if (v132)
    {
      for (n = v75 + v72 + v78 + v81 + v83; n; --n)
      {
        v136 = v260;
        if (&v258[v260 >> 3] < v259)
        {
          v136 = v260 + 1;
          LODWORD(v260) = v260 + 1;
        }

        if (&v258[v136 >> 3] < v259)
        {
          LODWORD(v260) = ++v136;
        }

        if (&v258[v136 >> 3] < v259)
        {
          LODWORD(v260) = ++v136;
        }

        if (&v258[v136 >> 3] < v259)
        {
          LODWORD(v260) = ++v136;
        }

        if (&v258[v136 >> 3] < v259)
        {
          LODWORD(v260) = ++v136;
        }

        if (&v258[v136 >> 3] < v259)
        {
          LODWORD(v260) = ++v136;
        }

        if (&v258[v136 >> 3] < v259)
        {
          LODWORD(v260) = ++v136;
        }

        if (&v258[v136 >> 3] < v259)
        {
          LODWORD(v260) = ++v136;
        }

        if (&v258[v136 >> 3] < v259)
        {
          LODWORD(v260) = ++v136;
        }

        if (&v258[v136 >> 3] < v259)
        {
          LODWORD(v260) = ++v136;
        }

        if (&v258[v136 >> 3] < v259)
        {
          LODWORD(v260) = ++v136;
        }

        if (&v258[v136 >> 3] < v259)
        {
          LODWORD(v260) = ++v136;
        }

        v137 = &v258[v136 >> 3];
        if (v137 >= v259)
        {
          v139 = 0;
          v140 = &v258[v136 >> 3];
          if (v140 >= v259)
          {
LABEL_241:
            v142 = 0;
            if (&v258[v136 >> 3] >= v259)
            {
              goto LABEL_233;
            }

LABEL_230:
            LODWORD(v260) = ++v136;
            goto LABEL_233;
          }
        }

        else
        {
          v138 = *v137 >> (~v136++ & 7);
          LODWORD(v260) = v136;
          v139 = 16 * (v138 & 1);
          v140 = &v258[v136 >> 3];
          if (v140 >= v259)
          {
            goto LABEL_241;
          }
        }

        v141 = *v140 >> (~v136++ & 7);
        LODWORD(v260) = v136;
        v142 = 8 * (v141 & 1);
        if (&v258[v136 >> 3] < v259)
        {
          goto LABEL_230;
        }

LABEL_233:
        if (&v258[v136 >> 3] < v259)
        {
          LODWORD(v260) = ++v136;
        }

        if (&v258[v136 >> 3] < v259)
        {
          LODWORD(v260) = v136 + 1;
        }

        if (v142 | v139 && &v258[v260 >> 3] < v259)
        {
          LODWORD(v260) = v260 + 1;
        }
      }
    }

LABEL_569:
    v201 = v248 | v247 | v254 | v249 | v252 | v250;
    v202 = v246 | v245 | v201;
    v203 = v244 | v243 | v202;
    v14 = 0;
    v204 = v242 | v241 | v203;
    if (v204)
    {
      *(v9 + 12) = (v250 >> 9) + (v249 >> 8) + (v252 >> 10) + (v254 >> 11);
      *(v9 + 16) = ((v204 >> 1) & 1) + (v204 & 1) + ((v203 >> 2) & 1) + ((v203 >> 3) & 1) + ((v202 >> 4) & 1) + ((v202 >> 5) & 1) + ((v201 >> 6) & 1) + ((v201 >> 7) & 1);
      v53 = v260;
      v54 = v258;
      v55 = v259;
      v56 = &v258[v260 >> 3];
      if (v56 < v259)
      {
        goto LABEL_571;
      }

      goto LABEL_580;
    }

LABEL_579:
    *(v9 + 12) = 0x100000001;
    v53 = v260;
    v54 = v258;
    v55 = v259;
    v56 = &v258[v260 >> 3];
    if (v56 < v259)
    {
LABEL_571:
      v205 = *v56 >> (~v53++ & 7);
      LODWORD(v260) = v53;
      v255 = 8 * (v205 & 1);
      v206 = &v54[v53 >> 3];
      if (v206 < v55)
      {
        goto LABEL_572;
      }

      goto LABEL_582;
    }

LABEL_580:
    if (v262)
    {
      v262(v261);
      v255 = 0;
      v53 = v260;
      v54 = v258;
      v55 = v259;
      v206 = &v258[v260 >> 3];
      if (v206 < v259)
      {
        goto LABEL_572;
      }
    }

    else
    {
      v255 = 0;
      v206 = &v54[v53 >> 3];
      if (v206 < v55)
      {
LABEL_572:
        v207 = *v206 >> (~v53++ & 7);
        LODWORD(v260) = v53;
        v253 = 4 * (v207 & 1);
        v208 = &v54[v53 >> 3];
        if (v208 < v55)
        {
          goto LABEL_573;
        }

        goto LABEL_584;
      }
    }

LABEL_582:
    if (v262)
    {
      v262(v261);
      v253 = 0;
      v53 = v260;
      v54 = v258;
      v55 = v259;
      v208 = &v258[v260 >> 3];
      if (v208 < v259)
      {
        goto LABEL_573;
      }
    }

    else
    {
      v253 = 0;
      v208 = &v54[v53 >> 3];
      if (v208 < v55)
      {
LABEL_573:
        v209 = *v208 >> (~v53++ & 7);
        LODWORD(v260) = v53;
        v251 = 2 * (v209 & 1);
        v210 = &v54[v53 >> 3];
        if (v210 < v55)
        {
          goto LABEL_574;
        }

        goto LABEL_586;
      }
    }

LABEL_584:
    if (v262)
    {
      v262(v261);
      v251 = 0;
      v53 = v260;
      v54 = v258;
      v55 = v259;
      v210 = &v258[v260 >> 3];
      if (v210 < v259)
      {
        goto LABEL_574;
      }
    }

    else
    {
      v251 = 0;
      v210 = &v54[v53 >> 3];
      if (v210 < v55)
      {
LABEL_574:
        v211 = (*v210 >> (~v53++ & 7)) & 1;
        LODWORD(v260) = v53;
        v212 = &v54[v53 >> 3];
        if (v212 < v55)
        {
          goto LABEL_575;
        }

        goto LABEL_588;
      }
    }

LABEL_586:
    if (v262)
    {
      v262(v261);
      v211 = 0;
      v53 = v260;
      v54 = v258;
      v55 = v259;
      v212 = &v258[v260 >> 3];
      if (v212 < v259)
      {
        goto LABEL_575;
      }
    }

    else
    {
      v211 = 0;
      v212 = &v54[v53 >> 3];
      if (v212 < v55)
      {
LABEL_575:
        v213 = *v212 >> (~v53++ & 7);
        LODWORD(v260) = v53;
        v214 = 8 * (v213 & 1);
        v215 = v16;
        v216 = &v54[v53 >> 3];
        v217 = v9;
        if (v216 < v55)
        {
          goto LABEL_576;
        }

        goto LABEL_590;
      }
    }

LABEL_588:
    if (v262)
    {
      v262(v261);
      v214 = 0;
      v53 = v260;
      v54 = v258;
      v55 = v259;
      v215 = v16;
      v216 = &v258[v260 >> 3];
      v217 = v9;
      if (v216 < v259)
      {
        goto LABEL_576;
      }
    }

    else
    {
      v214 = 0;
      v215 = v16;
      v216 = &v54[v53 >> 3];
      v217 = v9;
      if (v216 < v55)
      {
LABEL_576:
        v218 = *v216 >> (~v53++ & 7);
        LODWORD(v260) = v53;
        v219 = 4 * (v218 & 1);
        v220 = &v54[v53 >> 3];
        if (v220 < v55)
        {
          goto LABEL_577;
        }

        goto LABEL_592;
      }
    }

LABEL_590:
    if (v262)
    {
      v262(v261);
      v219 = 0;
      v53 = v260;
      v54 = v258;
      v55 = v259;
      v220 = &v258[v260 >> 3];
      if (v220 < v259)
      {
        goto LABEL_577;
      }
    }

    else
    {
      v219 = 0;
      v220 = &v54[v53 >> 3];
      if (v220 < v55)
      {
LABEL_577:
        v221 = *v220 >> (~v53++ & 7);
        LODWORD(v260) = v53;
        v222 = 2 * (v221 & 1);
        v223 = &v54[v53 >> 3];
        if (v223 >= v55)
        {
          goto LABEL_594;
        }

        goto LABEL_578;
      }
    }

LABEL_592:
    if (v262)
    {
      v262(v261);
      v222 = 0;
      v53 = v260;
      v223 = &v258[v260 >> 3];
      if (v223 >= v259)
      {
        goto LABEL_594;
      }
    }

    else
    {
      v222 = 0;
      v223 = &v54[v53 >> 3];
      if (v223 >= v55)
      {
LABEL_594:
        if (v262)
        {
          v262(v261);
        }

        v224 = 0;
        goto LABEL_597;
      }
    }

LABEL_578:
    v224 = (*v223 >> (~v53 & 7)) & 1;
    LODWORD(v260) = v53 + 1;
LABEL_597:
    v225 = 0;
    v226 = v253 + v255 + v251 + v211;
    do
    {
      while (1)
      {
        v229 = &v258[v260 >> 3];
        if (v229 >= v259)
        {
          break;
        }

        v227 = (*v229 >> (~v260 & 7)) & 1;
        LODWORD(v260) = v260 + 1;
        v225 |= v227 << v226;
        v228 = v226-- + 1;
        if (v228 <= 1)
        {
          goto LABEL_603;
        }
      }

      if (v262)
      {
        v262(v261);
      }

      v230 = v226-- + 1;
    }

    while (v230 > 1);
LABEL_603:
    v231 = 0;
    v232 = v225 + 1;
    v233 = v219 + v214 + v222 + v224;
    v9 = v217;
    v16 = v215;
    v18 = v256;
    do
    {
      while (1)
      {
        v236 = &v258[v260 >> 3];
        if (v236 >= v259)
        {
          break;
        }

        v234 = (*v236 >> (~v260 & 7)) & 1;
        LODWORD(v260) = v260 + 1;
        v231 |= v234 << v233;
        v235 = v233-- + 1;
        if (v235 <= 1)
        {
          goto LABEL_609;
        }
      }

      if (v262)
      {
        v262(v261);
      }

      v237 = v233-- + 1;
    }

    while (v237 > 1);
LABEL_609:
    *v9 = v232;
    *(v9 + 4) = v231 + 1;
    v15 = 1;
    v32 = v264;
    v10 = v257 - v264;
    if (v257 == v264)
    {
      goto LABEL_628;
    }

LABEL_36:
    v11 = &v18[v32];
    result = aom_read_obu_header_and_size(&v18[v32], v10, *(v9 + 20), v265, &v264, &v263);
    if (result)
    {
      return result;
    }
  }

  if (v15 && v14)
  {
    goto LABEL_627;
  }

  if (v10 == v263)
  {
    return 7;
  }

  if (v10 > v263)
  {
    if ((*v18 & 0x80000000) == 0)
    {
      v20 = 1;
      if (v10 <= v263)
      {
        goto LABEL_21;
      }

      v20 = 2;
      v21 = 2 * ((*v18 >> 6) & 1);
      goto LABEL_29;
    }

LABEL_35:
    v32 = v264;
    v10 = v17 - v264;
    if (v17 == v264)
    {
      goto LABEL_628;
    }

    goto LABEL_36;
  }

  v20 = 0;
LABEL_21:
  v21 = 0;
  if (v10 > v263)
  {
LABEL_29:
    v22 = (*v18 >> (v20 ^ 7)) & 1;
  }

  else
  {
    v22 = 0;
  }

  v30 = v22 | v21;
  if ((v22 | v21) == 2)
  {
    v31 = 1;
  }

  else
  {
    v31 = v16;
  }

  if (v30)
  {
    v16 = v31;
    goto LABEL_35;
  }

  if (v15)
  {
LABEL_627:
    *(v9 + 8) = 1;
  }

LABEL_628:
  result = 0;
  if (v238)
  {
    *v238 = v16;
  }

  return result;
}

BOOL frame_worker_hook(uint64_t *a1)
{
  v2 = *a1;
  v6 = a1[1];
  v4 = av1_receive_compressed_data(v2, a1[3], &v6);
  a1[2] = v6;
  if (v4)
  {
    *(*a1 + 363888) = 1;
  }

  return v4 == 0;
}

int *add_grain_if_needed(uint64_t a1, int *a2, void *a3, _DWORD *a4)
{
  if (*a4)
  {
    v5 = a3;
    v7 = a2[10] + 1;
    v8 = a2[11] + 1;
    v9 = *(a1 + 25360);
    v10 = a1 + 24 * *(a1 + 25344) + 25248;
    v13[0] = v9;
    v13[1] = v10;
    v11 = a2;
    if (img_alloc_helper_0(a3, *a2, v7 & 0xFFFFFFFE, v8 & 0xFFFFFFFE, 0x10u, 0x10u, 1u, 0, 0, AllocWithGetFrameBufferCb, v13))
    {
      *(v5 + 128) = *(v11 + 128);
      *(v5 + 160) = *(v10 + 16);
      if (!av1_add_film_grain(a4, v11, v5))
      {
        ++*(a1 + 25344);
        return v5;
      }

      (*(v9 + 80))(*(v9 + 64), v10);
    }

    return 0;
  }

  return a2;
}

uint64_t AllocWithGetFrameBufferCb(void *a1, unint64_t a2)
{
  if (((*(*a1 + 72))(*(*a1 + 64), a2, a1[1]) & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = a1[1];
  if (!*v4)
  {
    return 0;
  }

  if (v4[1] >= a2)
  {
    return *v4;
  }

  return 0;
}

uint64_t av1_block_error_neon(int32x4_t *a1, int32x4_t *a2, uint64_t a3, void *a4)
{
  v4 = 0uLL;
  v5 = 0uLL;
  do
  {
    v6 = vmovn_s32(*a1);
    v7 = vmovn_s32(a1[1]);
    v8 = vmovn_s32(a1[2]);
    v9 = vmovn_s32(a1[3]);
    v10 = vabd_s16(v6, vmovn_s32(*a2));
    v11 = vabd_s16(v7, vmovn_s32(a2[1]));
    v12 = vmlal_u16(vmull_u16(v11, v11), v10, v10);
    v13 = vabd_s16(v8, vmovn_s32(a2[2]));
    v14 = vmlal_u16(v12, v13, v13);
    v15 = vabd_s16(v9, vmovn_s32(a2[3]));
    v5 = vpadalq_u32(v5, vmlal_u16(v14, v15, v15));
    v4 = vpadalq_s32(vpadalq_s32(v4, vmlal_s16(vmull_s16(v7, v7), v6, v6)), vmlal_s16(vmull_s16(v9, v9), v8, v8));
    a1 += 4;
    a2 += 4;
    a3 -= 16;
  }

  while (a3);
  *a4 = vaddvq_s64(v4);
  return vaddvq_s64(v5);
}

_DWORD *av1_fdct4(_DWORD *result, int *a2, int a3)
{
  v3 = result[3] + *result;
  *a2 = v3;
  v4 = result[2] + result[1];
  a2[1] = v4;
  v5 = result[1] - result[2];
  a2[2] = v5;
  v6 = *result - result[3];
  v7 = av1_cospi_arr_data[64 * a3 - 608];
  v8 = 1 << (a3 - 1);
  v9 = v8 + v7 * v3;
  v10 = (v9 + v7 * v4) >> a3;
  v11 = (v9 + -(v7 * v4)) >> a3;
  v12 = av1_cospi_arr_data[64 * a3 - 592];
  v13 = av1_cospi_arr_data[64 * a3 - 624];
  *a2 = v10;
  a2[1] = (v8 + v12 * v5 + v13 * v6) >> a3;
  a2[2] = v11;
  a2[3] = (v8 + v12 * v6 + -(v5 * v13)) >> a3;
  return result;
}

uint64_t av1_fdct8(_DWORD *a1, int *a2, int a3)
{
  v3 = a1[7] + *a1;
  *a2 = v3;
  v4 = a1[6] + a1[1];
  a2[1] = v4;
  v5 = a1[5] + a1[2];
  a2[2] = v5;
  v6 = a1[4] + a1[3];
  a2[3] = v6;
  v7 = a1[3] - a1[4];
  a2[4] = v7;
  v8 = a1[2] - a1[5];
  a2[5] = v8;
  v9 = a1[1] - a1[6];
  a2[6] = v9;
  v10 = 1 << (a3 - 1);
  v11 = av1_cospi_arr_data[64 * a3 - 608];
  v12 = v10 + v11 * v9;
  v13 = v12 + -(v11 * v8);
  v14 = v12 + v11 * v8;
  v15 = v10 + v11 * (v6 + v3);
  v16 = v5 + v4;
  v17 = v13 >> a3;
  v18 = v14 >> a3;
  v19 = (v15 + v11 * (v5 + v4)) >> a3;
  v20 = v4 - v5;
  v21 = (v15 + -(v11 * v16)) >> a3;
  LODWORD(v15) = av1_cospi_arr_data[64 * a3 - 592];
  v22 = *a1 - a1[7];
  v23 = v3 - v6;
  v24 = av1_cospi_arr_data[64 * a3 - 624];
  v25 = (v10 + v15 * v20 + v24 * v23) >> a3;
  v26 = (v10 + v15 * v23 + -(v20 * v24)) >> a3;
  v27 = v7 + v17;
  v28 = v7 - v17;
  v29 = v22 - v18;
  LODWORD(v18) = v22 + v18;
  LODWORD(v15) = av1_cospi_arr_data[64 * a3 - 584];
  result = av1_cospi_arr_data[64 * a3 - 632];
  v31 = av1_cospi_arr_data[64 * a3 - 616];
  v32 = av1_cospi_arr_data[64 * a3 - 600];
  *a2 = v19;
  a2[1] = (v10 + v15 * v27 + result * v18) >> a3;
  a2[2] = v25;
  a2[3] = (v10 + v31 * v29 + -(v28 * v32)) >> a3;
  a2[4] = v21;
  a2[5] = (v10 + v31 * v28 + v32 * v29) >> a3;
  a2[6] = v26;
  a2[7] = (v10 + v15 * v18 + -(v27 * result)) >> a3;
  return result;
}

uint64_t av1_fdct16(_DWORD *a1, int *a2, int a3)
{
  v3 = a1[15] + *a1;
  *a2 = v3;
  v4 = a1[14] + a1[1];
  a2[1] = v4;
  v5 = a1[13] + a1[2];
  a2[2] = v5;
  v6 = a1[12] + a1[3];
  a2[3] = v6;
  v7 = a1[11] + a1[4];
  a2[4] = v7;
  v8 = a1[10] + a1[5];
  a2[5] = v8;
  v9 = a1[9] + a1[6];
  a2[6] = v9;
  v10 = a1[8] + a1[7];
  a2[7] = v10;
  v11 = a1[7] - a1[8];
  a2[8] = v11;
  v12 = a1[6] - a1[9];
  a2[9] = v12;
  v13 = 1 << (a3 - 1);
  v14 = a1[5] - a1[10];
  a2[10] = v14;
  v15 = a1[4] - a1[11];
  a2[11] = v15;
  v16 = a1[3] - a1[12];
  a2[12] = v16;
  v17 = a1[2] - a1[13];
  a2[13] = v17;
  v18 = a1[1] - a1[14];
  a2[14] = v18;
  v19 = av1_cospi_arr_data[64 * a3 - 608];
  v20 = v13 + v19 * v17;
  v21 = v20 + -(v19 * v14);
  v22 = v13 + v19 * v16;
  v23 = v22 + -(v19 * v15);
  v24 = v22 + v19 * v15;
  v25 = v20 + v19 * v14;
  v26 = v13 + v19 * (v4 - v9);
  v27 = v26 + -(v19 * (v5 - v8));
  v28 = v26 + v19 * (v5 - v8);
  v29 = v13 + v19 * (v10 + v3 + v7 + v6);
  v30 = v9 + v4;
  v31 = v8 + v5;
  v32 = v29 + v19 * (v30 + v31);
  v76 = v29 + -(v19 * (v30 + v31));
  v33 = v30 - v31;
  v34 = av1_cospi_arr_data[64 * a3 - 592];
  v35 = v10 + v3 - (v7 + v6);
  v36 = av1_cospi_arr_data[64 * a3 - 624];
  v37 = v13 + v34 * v33 + v36 * v35;
  v75 = v13 + v34 * v35 + -(v36 * v33);
  v38 = v25 >> a3;
  v39 = v18 + v38;
  v40 = v21 >> a3;
  v41 = v12 + (v21 >> a3);
  v42 = v13 + v34 * (v18 + v38) + -(v36 * v41);
  v43 = v12 - v40;
  LODWORD(v38) = v18 - v38;
  v44 = v13 + -(v43 * v34) + -(v36 * v38);
  v45 = v13 + v34 * v38 + -(v36 * v43);
  v46 = v13 + v34 * v41 + v36 * v39;
  v47 = v27 >> a3;
  v48 = v6 - v7;
  LODWORD(v38) = v48 + v47;
  v49 = av1_cospi_arr_data[64 * a3 - 584];
  v50 = v28 >> a3;
  v51 = v3 - v10;
  v52 = v51 + v50;
  LODWORD(v29) = av1_cospi_arr_data[64 * a3 - 632];
  v53 = v13 + v49 * (v48 + v47) + v29 * (v51 + v50);
  v54 = v48 - v47;
  LODWORD(v47) = av1_cospi_arr_data[64 * a3 - 616];
  v55 = v51 - v50;
  LODWORD(v50) = av1_cospi_arr_data[64 * a3 - 600];
  v56 = v13 + v47 * v54 + v50 * v55;
  v57 = v13 + v47 * v55 + -(v54 * v50);
  v58 = v13 + v49 * v52 + -(v38 * v29);
  v59 = v23 >> a3;
  v60 = v42 >> a3;
  LODWORD(v38) = v11 + (v23 >> a3);
  LODWORD(v23) = v38 + v60;
  LODWORD(v50) = av1_cospi_arr_data[64 * a3 - 580];
  v61 = v24 >> a3;
  v62 = v46 >> a3;
  v63 = *a1 - a1[15];
  LODWORD(v29) = v63 + v61 + v62;
  LODWORD(v40) = av1_cospi_arr_data[64 * a3 - 636];
  v64 = v13 + v50 * (v38 + v60) + v40 * v29;
  LODWORD(v60) = v38 - v60;
  LODWORD(v38) = av1_cospi_arr_data[64 * a3 - 612];
  LODWORD(v62) = v63 + v61 - v62;
  v65 = av1_cospi_arr_data[64 * a3 - 604];
  result = v13 + v38 * v60 + v65 * v62;
  v67 = v44 >> a3;
  v68 = v11 - v59;
  v69 = av1_cospi_arr_data[64 * a3 - 596];
  v70 = v45 >> a3;
  LODWORD(v61) = v63 - v61;
  v71 = v61 - v70;
  v72 = av1_cospi_arr_data[64 * a3 - 620];
  v73 = v13 + v69 * (v68 - v67) + v72 * (v61 - v70);
  LODWORD(v70) = v61 + v70;
  LODWORD(v61) = av1_cospi_arr_data[64 * a3 - 628];
  v74 = av1_cospi_arr_data[64 * a3 - 588];
  *a2 = v32 >> a3;
  a2[1] = v64 >> a3;
  a2[2] = v53 >> a3;
  a2[3] = (v13 + v61 * v70 + -((v68 + v67) * v74)) >> a3;
  a2[4] = v37 >> a3;
  a2[5] = v73 >> a3;
  a2[6] = v57 >> a3;
  a2[7] = (v13 + v38 * v62 + -(v60 * v65)) >> a3;
  a2[8] = v76 >> a3;
  a2[9] = result >> a3;
  a2[10] = v56 >> a3;
  a2[11] = (v13 + v69 * v71 + -((v68 - v67) * v72)) >> a3;
  a2[12] = v75 >> a3;
  a2[13] = (v13 + v61 * (v68 + v67) + v74 * v70) >> a3;
  a2[14] = v58 >> a3;
  a2[15] = (v13 + v50 * v29 + -(v23 * v40)) >> a3;
  return result;
}

uint64_t av1_fdct32(_DWORD *a1, int *a2, int a3)
{
  v158 = a1[31] + *a1;
  *a2 = v158;
  v156 = a1[30] + a1[1];
  a2[1] = v156;
  v3 = a1[29] + a1[2];
  a2[2] = v3;
  v150 = a1[28] + a1[3];
  a2[3] = v150;
  v4 = a1[27] + a1[4];
  a2[4] = v4;
  v5 = v4;
  v140 = v4;
  v6 = a1[26] + a1[5];
  a2[5] = v6;
  v154 = a1[25] + a1[6];
  a2[6] = v154;
  v138 = a1[24] + a1[7];
  a2[7] = v138;
  v136 = a1[23] + a1[8];
  a2[8] = v136;
  v132 = a1[22] + a1[9];
  a2[9] = v132;
  v7 = a1[21] + a1[10];
  a2[10] = v7;
  v8 = a1[20] + a1[11];
  a2[11] = v8;
  v142 = v8;
  v9 = 1 << (a3 - 1);
  v10 = a1[19] + a1[12];
  a2[12] = v10;
  v148 = v10;
  v11 = a1[18] + a1[13];
  a2[13] = v11;
  v12 = a1[17] + a1[14];
  a2[14] = v12;
  v106 = v12;
  v114 = a1[16] + a1[15];
  a2[15] = v114;
  v152 = a1[15] - a1[16];
  a2[16] = v152;
  v134 = a1[14] - a1[17];
  a2[17] = v134;
  v13 = a1[13] - a1[18];
  a2[18] = v13;
  v14 = a1[12] - a1[19];
  a2[19] = v14;
  v15 = a1[11] - a1[20];
  a2[20] = v15;
  v16 = a1[10] - a1[21];
  a2[21] = v16;
  v17 = a1[9] - a1[22];
  a2[22] = v17;
  v18 = a1[8] - a1[23];
  a2[23] = v18;
  v19 = a1[7] - a1[24];
  a2[24] = v19;
  v20 = a1[6] - a1[25];
  a2[25] = v20;
  v21 = a1[5] - a1[26];
  a2[26] = v21;
  v22 = a1[4] - a1[27];
  a2[27] = v22;
  v23 = a1[3] - a1[28];
  a2[28] = v23;
  v24 = a1[2] - a1[29];
  a2[29] = v24;
  v125 = a1[1] - a1[30];
  a2[30] = v125;
  v25 = av1_cospi_arr_data[64 * a3 - 608];
  v26 = v9 + v25 * v19;
  v144 = v26 + -(v25 * v18);
  v146 = v26 + v25 * v18;
  v27 = v9 + v25 * v20;
  v120 = v27 + -(v25 * v17);
  v116 = v27 + v25 * v17;
  v28 = v9 + v25 * v21;
  v29 = v28 + -(v25 * v16);
  v30 = v28 + v25 * v16;
  v31 = v9 + v25 * v22;
  v32 = v31 + -(v25 * v15);
  v33 = v31 + v25 * v15;
  v34 = v9 + v25 * (v150 - v10);
  v127 = v34 + v25 * (v5 - v8);
  v128 = v34 + -(v25 * (v5 - v8));
  v35 = v9 + v25 * (v3 - v11);
  v108 = v35 + -(v25 * (v6 - v7));
  v110 = v35 + v25 * (v6 - v7);
  v36 = v11 + v3;
  v37 = v7 + v6;
  v38 = v12 + v156;
  v39 = v9 + v25 * (v12 + v156 - (v132 + v154));
  v40 = v11 + v3 - v37;
  v41 = v39 + -(v25 * v40);
  v130 = v39 + v25 * v40;
  v42 = v29 >> a3;
  v43 = v13 + (v29 >> a3);
  LODWORD(v29) = av1_cospi_arr_data[64 * a3 - 624];
  v44 = v30 >> a3;
  LODWORD(v35) = v24 + (v30 >> a3);
  LODWORD(v30) = av1_cospi_arr_data[64 * a3 - 592];
  v112 = v9 + -(v29 * v43) + v30 * v35;
  v45 = v14 + (v32 >> a3);
  v46 = v33 >> a3;
  v47 = v23 + v46;
  v123 = v9 + -(v29 * v45) + v30 * (v23 + v46);
  v48 = v14 - (v32 >> a3);
  LODWORD(v46) = v23 - v46;
  v122 = v9 + -(v29 * v46) + -(v30 * v48);
  LODWORD(v44) = v24 - v44;
  v49 = v9 + -(v29 * v44) + -(v30 * (v13 - v42));
  v50 = v9 + -(v29 * (v13 - v42)) + v30 * v44;
  v118 = v9 + -(v29 * v48) + v30 * v46;
  v119 = v9 + v29 * v47 + v30 * v45;
  v51 = v9 + v29 * v35 + v30 * v43;
  LODWORD(v44) = v148 + v150;
  v52 = v142 + v140;
  LODWORD(v35) = v38 + v132 + v154;
  LODWORD(v31) = v36 + v37;
  v53 = v114 + v158 + v136 + v138;
  v54 = v148 + v150 + v142 + v140;
  v55 = v25 * (v35 + v31);
  v56 = v9 + v25 * (v53 + v54);
  v141 = v56 + v55;
  v149 = v56 + -v55;
  LODWORD(v35) = v35 - v31;
  v143 = v9 + v29 * (v53 - v54) + v30 * v35;
  v151 = v9 + -(v29 * v35) + v30 * (v53 - v54);
  LODWORD(v56) = v154 - v132 + (v108 >> a3);
  LODWORD(v46) = v156 - v106 + (v110 >> a3);
  v57 = v9 + -(v29 * v56) + v30 * v46;
  LODWORD(v35) = v154 - v132 - (v108 >> a3);
  v58 = v156 - v106 - (v110 >> a3);
  v111 = v9 + -(v29 * v58) + -(v30 * v35);
  v109 = v9 + -(v29 * v35) + v30 * v58;
  v59 = v9 + v29 * v46 + v30 * v56;
  LODWORD(v44) = v44 - v52;
  v60 = v114 + v158 - (v136 + v138);
  v61 = v41 >> a3;
  v62 = v44 + (v41 >> a3);
  v63 = av1_cospi_arr_data[64 * a3 - 584];
  v64 = v130 >> a3;
  LODWORD(v41) = v60 + (v130 >> a3);
  LODWORD(v29) = av1_cospi_arr_data[64 * a3 - 632];
  v131 = v9 + v63 * v62 + v29 * v41;
  LODWORD(v44) = v44 - v61;
  v65 = v60 - v64;
  LODWORD(v64) = av1_cospi_arr_data[64 * a3 - 616];
  v66 = av1_cospi_arr_data[64 * a3 - 600];
  v155 = v9 + v64 * v44 + v66 * v65;
  v133 = v9 + v64 * v65 + -(v66 * v44);
  v157 = v9 + v63 * v41 + -(v29 * v62);
  v67 = v116 >> a3;
  LODWORD(v61) = v125 + (v116 >> a3);
  v68 = v61 + (v51 >> a3);
  v69 = v134 + (v120 >> a3);
  v70 = v69 + (v112 >> a3);
  v117 = v9 + v63 * v68 + -(v29 * v70);
  v71 = v69 - (v112 >> a3);
  LODWORD(v51) = v61 - (v51 >> a3);
  v72 = v9 + -(v71 * v63) + -(v29 * v51);
  LODWORD(v61) = v134 - (v120 >> a3);
  LODWORD(v67) = v125 - v67;
  v73 = v50 >> a3;
  LODWORD(v50) = v67 - (v50 >> a3);
  v74 = v49 >> a3;
  LODWORD(v30) = v61 - v74;
  v75 = v9 + v64 * v50 + -(v66 * (v61 - v74));
  LODWORD(v61) = v61 + v74;
  LODWORD(v67) = v67 + v73;
  v76 = v9 + -(v61 * v64) + -(v66 * v67);
  v126 = v9 + v64 * v67 + -(v66 * v61);
  v121 = v9 + v64 * v30 + v66 * v50;
  v113 = v9 + v63 * v51 + -(v29 * v71);
  v77 = v9 + v63 * v70 + v29 * v68;
  v78 = v138 - v136;
  v79 = v158 - v114;
  v80 = v57 >> a3;
  v81 = v59 >> a3;
  LODWORD(v41) = v138 - v136 + (v128 >> a3);
  LODWORD(v44) = v41 + (v57 >> a3);
  LODWORD(v57) = av1_cospi_arr_data[64 * a3 - 580];
  LODWORD(v30) = v158 - v114 + (v127 >> a3);
  v82 = v30 + (v59 >> a3);
  LODWORD(v59) = av1_cospi_arr_data[64 * a3 - 636];
  v137 = v9 + v57 * v44 + v59 * v82;
  LODWORD(v80) = v41 - v80;
  LODWORD(v81) = v30 - v81;
  LODWORD(v41) = av1_cospi_arr_data[64 * a3 - 612];
  v83 = av1_cospi_arr_data[64 * a3 - 604];
  v159 = v9 + v41 * v80 + v83 * v81;
  LODWORD(v30) = v78 - (v128 >> a3);
  v84 = v79 - (v127 >> a3);
  LODWORD(v42) = v30 - (v111 >> a3);
  LODWORD(v51) = av1_cospi_arr_data[64 * a3 - 596];
  v85 = v84 - (v109 >> a3);
  LODWORD(v29) = av1_cospi_arr_data[64 * a3 - 620];
  v135 = v9 + v51 * v42 + v29 * v85;
  LODWORD(v30) = v30 + (v111 >> a3);
  v86 = v84 + (v109 >> a3);
  LODWORD(v61) = av1_cospi_arr_data[64 * a3 - 628];
  v87 = av1_cospi_arr_data[64 * a3 - 588];
  v139 = v9 + v61 * v30 + v87 * v86;
  v88 = *a1 - a1[31];
  v89 = v152 + (v144 >> a3);
  v90 = v152 - (v144 >> a3);
  v129 = v9 + v61 * v86 + -(v30 * v87);
  v91 = v88 - (v146 >> a3);
  LODWORD(v30) = v88 + (v146 >> a3);
  v92 = v89 + (v123 >> a3);
  v93 = v89 - (v123 >> a3);
  v147 = v9 + v51 * v85 + -(v42 * v29);
  v94 = v90 - (v122 >> a3);
  LODWORD(v29) = v90 + (v122 >> a3);
  LODWORD(v61) = v91 + (v118 >> a3);
  v95 = v91 - (v118 >> a3);
  v145 = v9 + v41 * v81 + -(v80 * v83);
  LODWORD(v42) = v30 - (v119 >> a3);
  LODWORD(v30) = v30 + (v119 >> a3);
  v153 = v9 + v57 * v82 + -(v44 * v59);
  LODWORD(v122) = v92 + (v117 >> a3);
  LODWORD(v111) = v92 - (v117 >> a3);
  v105 = v93 - (v72 >> a3);
  LODWORD(v51) = v93 + (v72 >> a3);
  LODWORD(v72) = v94 + (v75 >> a3);
  v96 = v94 - (v75 >> a3);
  LODWORD(v119) = av1_cospi_arr_data[64 * a3 - 578];
  v115 = v30 + (v77 >> a3);
  LODWORD(v117) = av1_cospi_arr_data[64 * a3 - 638];
  v97 = v29 - (v76 >> a3);
  LODWORD(v41) = v29 + (v76 >> a3);
  v107 = v30 - (v77 >> a3);
  LODWORD(v109) = av1_cospi_arr_data[64 * a3 - 610];
  LODWORD(v32) = av1_cospi_arr_data[64 * a3 - 606];
  LODWORD(v73) = v61 + (v126 >> a3);
  LODWORD(v59) = v61 - (v126 >> a3);
  LODWORD(v80) = v95 - (v121 >> a3);
  LODWORD(v76) = v95 + (v121 >> a3);
  LODWORD(v75) = av1_cospi_arr_data[64 * a3 - 594];
  v98 = v42 - (v113 >> a3);
  LODWORD(v81) = av1_cospi_arr_data[64 * a3 - 622];
  result = v42 + (v113 >> a3);
  v100 = av1_cospi_arr_data[64 * a3 - 626];
  LODWORD(v61) = av1_cospi_arr_data[64 * a3 - 590];
  LODWORD(v77) = av1_cospi_arr_data[64 * a3 - 586];
  v101 = av1_cospi_arr_data[64 * a3 - 630];
  LODWORD(v44) = av1_cospi_arr_data[64 * a3 - 618];
  LODWORD(v57) = v96;
  LODWORD(v29) = av1_cospi_arr_data[64 * a3 - 598];
  v124 = v9 + v44 * v96 + v29 * v80;
  v102 = av1_cospi_arr_data[64 * a3 - 602];
  LODWORD(v30) = av1_cospi_arr_data[64 * a3 - 614];
  v103 = av1_cospi_arr_data[64 * a3 - 634];
  v104 = av1_cospi_arr_data[64 * a3 - 582];
  *a2 = v141 >> a3;
  a2[1] = (v9 + v119 * v122 + v117 * v115) >> a3;
  a2[2] = v137 >> a3;
  a2[3] = (v9 + v103 * v73 + -(v41 * v104)) >> a3;
  a2[4] = v131 >> a3;
  a2[5] = (v9 + v77 * v72 + v101 * v76) >> a3;
  a2[6] = v129 >> a3;
  a2[7] = (v9 + v100 * result + -(v51 * v61)) >> a3;
  a2[8] = v143 >> a3;
  a2[9] = (v9 + v75 * v105 + v81 * v98) >> a3;
  a2[10] = v135 >> a3;
  a2[11] = (v9 + v44 * v80 + -(v57 * v29)) >> a3;
  a2[12] = v133 >> a3;
  a2[13] = (v9 + v102 * v97 + v30 * v59) >> a3;
  a2[14] = v145 >> a3;
  a2[15] = (v9 + v109 * v107 + -(v111 * v32)) >> a3;
  a2[16] = v149 >> a3;
  a2[17] = (v9 + v109 * v111 + v32 * v107) >> a3;
  a2[18] = v159 >> a3;
  a2[19] = (v9 + v102 * v59 + -(v97 * v30)) >> a3;
  a2[20] = v155 >> a3;
  a2[21] = v124 >> a3;
  a2[22] = v147 >> a3;
  a2[23] = (v9 + v75 * v98 + -(v105 * v81)) >> a3;
  a2[24] = v151 >> a3;
  a2[25] = (v9 + v100 * v51 + v61 * result) >> a3;
  a2[26] = v139 >> a3;
  a2[27] = (v9 + v77 * v76 + -(v72 * v101)) >> a3;
  a2[28] = v157 >> a3;
  a2[29] = (v9 + v103 * v41 + v104 * v73) >> a3;
  a2[30] = v153 >> a3;
  a2[31] = (v9 + v119 * v115 + -(v122 * v117)) >> a3;
  return result;
}

int *av1_fadst4(int *result, _DWORD *a2, int a3)
{
  v4 = *result;
  v3 = result[1];
  v6 = result[2];
  v5 = result[3];
  if (v3 | *result | v6 | v5)
  {
    v7 = &av1_sinpi_arr_data + 20 * a3;
    v8 = *(v7 - 49);
    v9 = *(v7 - 48);
    v10 = v8 * v4;
    v12 = v7 - 188;
    LODWORD(v7) = *(v7 - 47);
    v11 = *(v12 + 1);
    v13 = v11 * v4;
    v14 = v7 * v6;
    v15 = v7 * (v3 + v4 - v5);
    LODWORD(v7) = v13 - v8 * v3;
    v16 = v10 + v11 * v5 + v9 * v3;
    v17 = 1 << (a3 - 1);
    v18 = v7 + v9 * v5;
    *a2 = (v17 + v16 + v14) >> a3;
    a2[1] = (v17 + v15) >> a3;
    a2[2] = (v17 + v18 - v14) >> a3;
    a2[3] = (v17 + v14 + v18 - v16) >> a3;
  }

  else
  {
    *a2 = 0;
    *(a2 + 1) = 0;
  }

  return result;
}

uint64_t av1_fadst8(int *a1, int *a2, int a3)
{
  v3 = *a1;
  *a2 = *a1;
  v4 = a1[7];
  v5 = -v4;
  a2[1] = -v4;
  v6 = a1[3];
  a2[2] = -v6;
  v7 = a1[4];
  a2[3] = v7;
  v8 = a1[1];
  v9 = -v8;
  a2[4] = -v8;
  v10 = a1[6];
  a2[5] = v10;
  v11 = 1 << (a3 - 1);
  v12 = a1[2];
  a2[6] = v12;
  v13 = av1_cospi_arr_data[64 * a3 - 608];
  v14 = v11 - v6 * v13;
  v15 = v14 + v13 * v7;
  v16 = v14 + -(v13 * v7);
  v17 = v11 + v13 * v12;
  v18 = a1[5];
  v19 = v17 + -(v18 * v13);
  v20 = v17 + v18 * v13;
  v21 = v19 >> a3;
  v22 = (v19 >> a3) - v8;
  LODWORD(v19) = av1_cospi_arr_data[64 * a3 - 624];
  v23 = v20 >> a3;
  v24 = av1_cospi_arr_data[64 * a3 - 592];
  v25 = v15 >> a3;
  v26 = v3 + v25;
  v27 = v3 - v25;
  v28 = v16 >> a3;
  v29 = (v11 + v19 * v22 + v24 * (v10 + v23)) >> a3;
  v30 = v28 - v4;
  v31 = (v11 + -((v10 + v23) * v19) + v24 * v22) >> a3;
  v32 = v10 - v23;
  v33 = v9 - v21;
  LODWORD(v28) = v5 - v28;
  v34 = (v11 + v19 * v32 + -(v33 * v24)) >> a3;
  v35 = (v11 + v19 * v33 + v24 * v32) >> a3;
  v36 = v26 + v29;
  LODWORD(v21) = v30 + v31;
  LODWORD(v19) = v27 + v34;
  LODWORD(v29) = v26 - v29;
  LODWORD(v25) = av1_cospi_arr_data[64 * a3 - 636];
  v37 = v30 - v31;
  LODWORD(v31) = av1_cospi_arr_data[64 * a3 - 580];
  v38 = v28 + v35;
  v39 = (v11 + v25 * v36 + v31 * v21) >> a3;
  v40 = v27 - v34;
  LODWORD(v35) = v28 - v35;
  v41 = (v11 + -(v21 * v25) + v31 * v36) >> a3;
  LODWORD(v28) = av1_cospi_arr_data[64 * a3 - 620];
  LODWORD(v34) = av1_cospi_arr_data[64 * a3 - 596];
  v42 = (v11 + v28 * v19 + v34 * v38) >> a3;
  v43 = (v11 + -(v38 * v28) + v34 * v19) >> a3;
  LODWORD(v34) = av1_cospi_arr_data[64 * a3 - 604];
  LODWORD(v21) = av1_cospi_arr_data[64 * a3 - 612];
  v44 = (v11 + v34 * v29 + v21 * v37) >> a3;
  v45 = (v11 + -(v37 * v34) + v21 * v29) >> a3;
  LODWORD(v34) = av1_cospi_arr_data[64 * a3 - 588];
  v46 = av1_cospi_arr_data[64 * a3 - 628];
  result = (v11 + v34 * v40 + v46 * v35) >> a3;
  *a2 = v41;
  a2[1] = result;
  a2[2] = v43;
  a2[3] = v44;
  a2[4] = v45;
  a2[5] = v42;
  a2[6] = (v11 + -(v35 * v34) + v46 * v40) >> a3;
  a2[7] = v39;
  return result;
}

uint64_t av1_fadst16(int *a1, int *a2, int a3)
{
  v3 = *a1;
  *a2 = *a1;
  v92 = a1[15];
  a2[1] = -v92;
  v4 = a1[7];
  a2[2] = -v4;
  v5 = a1[8];
  a2[3] = v5;
  v6 = a1[3];
  v91 = -v6;
  a2[4] = -v6;
  v7 = a1[12];
  v8 = 1 << (a3 - 1);
  a2[5] = v7;
  v9 = a1[4];
  a2[6] = v9;
  v10 = a1[11];
  a2[7] = -v10;
  v11 = a1[1];
  v12 = -v11;
  a2[8] = -v11;
  v13 = a1[14];
  a2[9] = v13;
  v14 = a1[6];
  a2[10] = v14;
  v15 = a1[9];
  a2[11] = -v15;
  v16 = a1[2];
  a2[12] = v16;
  v17 = a1[13];
  a2[13] = -v17;
  v18 = a1[5];
  a2[14] = -v18;
  v19 = av1_cospi_arr_data[64 * a3 - 608];
  v20 = v8 - v4 * v19;
  v21 = v20 + v19 * v5;
  v22 = v20 + -(v19 * v5);
  v23 = v8 + v19 * v9;
  v24 = v23 + -(v10 * v19);
  v25 = v23 + v19 * v10;
  v26 = v8 + v19 * v14;
  v27 = v26 + -(v15 * v19);
  v28 = v26 + v19 * v15;
  v29 = a1[10];
  v30 = v8 - v18 * v19;
  v31 = v30 + v19 * v29;
  v32 = v30 + -(v19 * v29);
  v33 = v24 >> a3;
  v34 = (v24 >> a3) - v6;
  LODWORD(v24) = av1_cospi_arr_data[64 * a3 - 624];
  v35 = v25 >> a3;
  v36 = v7 + (v25 >> a3);
  LODWORD(v30) = av1_cospi_arr_data[64 * a3 - 592];
  v37 = v21 >> a3;
  LODWORD(v21) = v3 + (v21 >> a3);
  LODWORD(v37) = v3 - v37;
  v38 = v22 >> a3;
  v39 = v27 >> a3;
  v40 = v28 >> a3;
  v41 = v31 >> a3;
  v42 = v32 >> a3;
  v43 = (v8 + v24 * v34 + v30 * v36) >> a3;
  LODWORD(v22) = (v22 >> a3) - v92;
  LODWORD(v28) = -v92 - v38;
  LODWORD(v33) = v91 - v33;
  v44 = (v8 + -(v24 * v36) + v30 * v34) >> a3;
  LODWORD(v38) = v7 - v35;
  v45 = v39 - v11;
  v46 = v13 + v40;
  v47 = (v8 + v24 * (v7 - v35) + -(v30 * v33)) >> a3;
  LODWORD(v32) = v12 - v39;
  v48 = v13 - v40;
  LODWORD(v40) = v16 + v41;
  v49 = (v8 + v24 * v33 + v30 * v38) >> a3;
  LODWORD(v39) = v42 - v17;
  v50 = v16 - v41;
  v51 = v8 + v24 * (v16 + v41) + v30 * (v42 - v17);
  LODWORD(v42) = -v17 - v42;
  v52 = v51 >> a3;
  v53 = (v8 + -(v24 * v39) + v30 * v40) >> a3;
  v54 = (v8 + v24 * v42 + -(v30 * v50)) >> a3;
  v55 = (v8 + v24 * v50 + v30 * v42) >> a3;
  LODWORD(v39) = v21 + v43;
  LODWORD(v40) = v22 + v44;
  LODWORD(v42) = v37 + v47;
  LODWORD(v51) = v28 + v49;
  v93 = v21 - v43;
  v56 = v22 - v44;
  v57 = v37 - v47;
  LODWORD(v49) = v28 - v49;
  LODWORD(v37) = v45 + v52;
  LODWORD(v22) = av1_cospi_arr_data[64 * a3 - 632];
  LODWORD(v30) = v32 + v54;
  LODWORD(v43) = av1_cospi_arr_data[64 * a3 - 584];
  LODWORD(v28) = v48 + v55;
  v58 = (v8 + v22 * (v45 + v52) + v43 * (v46 + v53)) >> a3;
  v59 = v45 - v52;
  v60 = v8 + -((v46 + v53) * v22);
  v61 = v46 - v53;
  LODWORD(v32) = v32 - v54;
  v62 = (v60 + v43 * v37) >> a3;
  v63 = v48 - v55;
  LODWORD(v37) = av1_cospi_arr_data[64 * a3 - 600];
  LODWORD(v55) = av1_cospi_arr_data[64 * a3 - 616];
  v64 = (v8 + v37 * v30 + v55 * v28) >> a3;
  v65 = (v8 + -(v28 * v37) + v55 * v30) >> a3;
  v66 = (v8 + v22 * v61 + -(v59 * v43)) >> a3;
  v67 = (v8 + v22 * v59 + v43 * v61) >> a3;
  v68 = (v8 + v37 * v63 + -(v32 * v55)) >> a3;
  v69 = (v8 + v37 * v32 + v55 * v63) >> a3;
  LODWORD(v32) = v39;
  LODWORD(v43) = v39 + v58;
  v70 = v40;
  LODWORD(v53) = v40 + v62;
  LODWORD(v44) = v42 + v64;
  LODWORD(v39) = v51 + v65;
  LODWORD(v54) = v93 + v66;
  LODWORD(v40) = v56 + v67;
  LODWORD(v37) = v57 + v68;
  v71 = v49 + v69;
  LODWORD(v32) = v32 - v58;
  LODWORD(v55) = v70 - v62;
  v72 = v42 - v64;
  LODWORD(v51) = v51 - v65;
  LODWORD(v47) = v93 - v66;
  LODWORD(v67) = v56 - v67;
  LODWORD(v64) = v57 - v68;
  LODWORD(v66) = v49 - v69;
  LODWORD(v58) = av1_cospi_arr_data[64 * a3 - 638];
  v73 = av1_cospi_arr_data[64 * a3 - 578];
  v74 = (v8 + v58 * v43 + v73 * v53) >> a3;
  v75 = (v8 + -(v53 * v58) + v73 * v43) >> a3;
  LODWORD(v58) = av1_cospi_arr_data[64 * a3 - 630];
  v76 = av1_cospi_arr_data[64 * a3 - 586];
  v77 = (v8 + v58 * v44 + v76 * v39) >> a3;
  v78 = (v8 + -(v39 * v58) + v76 * v44) >> a3;
  LODWORD(v49) = av1_cospi_arr_data[64 * a3 - 622];
  LODWORD(v68) = av1_cospi_arr_data[64 * a3 - 594];
  v79 = (v8 + v49 * v54 + v68 * v40) >> a3;
  v80 = (v8 + -(v40 * v49) + v68 * v54) >> a3;
  LODWORD(v39) = av1_cospi_arr_data[64 * a3 - 614];
  LODWORD(v62) = av1_cospi_arr_data[64 * a3 - 602];
  v81 = (v8 + v39 * v37 + v62 * v71) >> a3;
  v82 = (v8 + -(v71 * v39) + v62 * v37) >> a3;
  LODWORD(v39) = av1_cospi_arr_data[64 * a3 - 606];
  LODWORD(v40) = av1_cospi_arr_data[64 * a3 - 610];
  v83 = (v8 + v39 * v32 + v40 * v55) >> a3;
  v84 = (v8 + -(v55 * v39) + v40 * v32) >> a3;
  LODWORD(v40) = av1_cospi_arr_data[64 * a3 - 598];
  LODWORD(v37) = av1_cospi_arr_data[64 * a3 - 618];
  v85 = (v8 + v40 * v72 + v37 * v51) >> a3;
  v86 = (v8 + -(v51 * v40) + v37 * v72) >> a3;
  v87 = av1_cospi_arr_data[64 * a3 - 590];
  v88 = av1_cospi_arr_data[64 * a3 - 626];
  v89 = (v8 + v87 * v47 + v88 * v67) >> a3;
  result = (v8 + -(v67 * v87) + v88 * v47) >> a3;
  LODWORD(v67) = av1_cospi_arr_data[64 * a3 - 582];
  LODWORD(v47) = av1_cospi_arr_data[64 * a3 - 634];
  *a2 = v75;
  a2[1] = (v8 + v67 * v64 + v47 * v66) >> a3;
  a2[2] = v78;
  a2[3] = v89;
  a2[4] = v80;
  a2[5] = v85;
  a2[6] = v82;
  a2[7] = v83;
  a2[8] = v84;
  a2[9] = v81;
  a2[10] = v86;
  a2[11] = v79;
  a2[12] = result;
  a2[13] = v77;
  a2[14] = (v8 + -(v66 * v67) + v47 * v64) >> a3;
  a2[15] = v74;
  return result;
}

int *av1_fidentity4_c(int *result, _DWORD *a2)
{
  *a2 = (5793 * *result + 2048) >> 12;
  a2[1] = (5793 * result[1] + 2048) >> 12;
  a2[2] = (5793 * result[2] + 2048) >> 12;
  a2[3] = (5793 * result[3] + 2048) >> 12;
  return result;
}

_DWORD *av1_fidentity8_c(_DWORD *result, _DWORD *a2)
{
  *a2 = 2 * *result;
  a2[1] = 2 * result[1];
  a2[2] = 2 * result[2];
  a2[3] = 2 * result[3];
  a2[4] = 2 * result[4];
  a2[5] = 2 * result[5];
  a2[6] = 2 * result[6];
  a2[7] = 2 * result[7];
  return result;
}

int *av1_fidentity16_c(int *result, _DWORD *a2)
{
  *a2 = (11586 * *result + 2048) >> 12;
  a2[1] = (11586 * result[1] + 2048) >> 12;
  a2[2] = (11586 * result[2] + 2048) >> 12;
  a2[3] = (11586 * result[3] + 2048) >> 12;
  a2[4] = (11586 * result[4] + 2048) >> 12;
  a2[5] = (11586 * result[5] + 2048) >> 12;
  a2[6] = (11586 * result[6] + 2048) >> 12;
  a2[7] = (11586 * result[7] + 2048) >> 12;
  a2[8] = (11586 * result[8] + 2048) >> 12;
  a2[9] = (11586 * result[9] + 2048) >> 12;
  a2[10] = (11586 * result[10] + 2048) >> 12;
  a2[11] = (11586 * result[11] + 2048) >> 12;
  a2[12] = (11586 * result[12] + 2048) >> 12;
  a2[13] = (11586 * result[13] + 2048) >> 12;
  a2[14] = (11586 * result[14] + 2048) >> 12;
  a2[15] = (11586 * result[15] + 2048) >> 12;
  return result;
}

_DWORD *av1_fidentity32_c(_DWORD *result, _DWORD *a2)
{
  *a2 = 4 * *result;
  a2[1] = 4 * result[1];
  a2[2] = 4 * result[2];
  a2[3] = 4 * result[3];
  a2[4] = 4 * result[4];
  a2[5] = 4 * result[5];
  a2[6] = 4 * result[6];
  a2[7] = 4 * result[7];
  a2[8] = 4 * result[8];
  a2[9] = 4 * result[9];
  a2[10] = 4 * result[10];
  a2[11] = 4 * result[11];
  a2[12] = 4 * result[12];
  a2[13] = 4 * result[13];
  a2[14] = 4 * result[14];
  a2[15] = 4 * result[15];
  a2[16] = 4 * result[16];
  a2[17] = 4 * result[17];
  a2[18] = 4 * result[18];
  a2[19] = 4 * result[19];
  a2[20] = 4 * result[20];
  a2[21] = 4 * result[21];
  a2[22] = 4 * result[22];
  a2[23] = 4 * result[23];
  a2[24] = 4 * result[24];
  a2[25] = 4 * result[25];
  a2[26] = 4 * result[26];
  a2[27] = 4 * result[27];
  a2[28] = 4 * result[28];
  a2[29] = 4 * result[29];
  a2[30] = 4 * result[30];
  a2[31] = 4 * result[31];
  return result;
}

uint64_t av1_fdct64(_DWORD *a1, int *a2, int a3)
{
  v3 = a3;
  v355 = a1[63] + *a1;
  *a2 = v355;
  v353 = a1[62] + a1[1];
  a2[1] = v353;
  v339 = a1[61] + a1[2];
  a2[2] = v339;
  v337 = a1[60] + a1[3];
  a2[3] = v337;
  v4 = a1[59] + a1[4];
  a2[4] = v4;
  v5 = a1[58] + a1[5];
  a2[5] = v5;
  v334 = a1[57] + a1[6];
  a2[6] = v334;
  v6 = &av1_cospi_arr_data[64 * a3];
  v7 = 1 << (a3 - 1);
  v322 = a1[56] + a1[7];
  a2[7] = v322;
  v320 = a1[55] + a1[8];
  a2[8] = v320;
  v330 = a1[54] + a1[9];
  a2[9] = v330;
  v307 = a1[53] + a1[10];
  a2[10] = v307;
  v309 = a1[52] + a1[11];
  a2[11] = v309;
  v332 = a1[51] + a1[12];
  a2[12] = v332;
  v328 = a1[50] + a1[13];
  a2[13] = v328;
  v347 = a1[49] + a1[14];
  a2[14] = v347;
  v351 = a1[48] + a1[15];
  a2[15] = v351;
  v349 = a1[47] + a1[16];
  a2[16] = v349;
  v345 = a1[46] + a1[17];
  a2[17] = v345;
  v324 = a1[45] + a1[18];
  a2[18] = v324;
  v326 = a1[44] + a1[19];
  a2[19] = v326;
  v8 = a1[43] + a1[20];
  a2[20] = v8;
  v283 = a1[42] + a1[21];
  a2[21] = v283;
  v312 = a1[41] + a1[22];
  a2[22] = v312;
  v9 = a1[40] + a1[23];
  a2[23] = v9;
  v10 = a1[39] + a1[24];
  a2[24] = v10;
  v221 = v10;
  v315 = a1[38] + a1[25];
  a2[25] = v315;
  v274 = a1[37] + a1[26];
  a2[26] = v274;
  v11 = a1[36] + a1[27];
  a2[27] = v11;
  v12 = a1[35] + a1[28];
  a2[28] = v12;
  v186 = v12;
  v318 = a1[34] + a1[29];
  a2[29] = v318;
  v341 = a1[33] + a1[30];
  a2[30] = v341;
  v343 = a1[32] + a1[31];
  a2[31] = v343;
  v304 = a1[31] - a1[32];
  a2[32] = v304;
  v301 = a1[30] - a1[33];
  a2[33] = v301;
  v295 = a1[29] - a1[34];
  a2[34] = v295;
  v297 = a1[28] - a1[35];
  a2[35] = v297;
  v277 = a1[27] - a1[36];
  a2[36] = v277;
  v280 = a1[26] - a1[37];
  a2[37] = v280;
  v285 = a1[25] - a1[38];
  a2[38] = v285;
  v288 = a1[24] - a1[39];
  a2[39] = v288;
  v13 = a1[23] - a1[40];
  a2[40] = v13;
  v14 = a1[22] - a1[41];
  a2[41] = v14;
  v15 = a1[21] - a1[42];
  a2[42] = v15;
  v16 = a1[20] - a1[43];
  a2[43] = v16;
  v17 = a1[19] - a1[44];
  a2[44] = v17;
  v18 = a1[18] - a1[45];
  a2[45] = v18;
  v19 = a1[17] - a1[46];
  a2[46] = v19;
  v20 = a1[16] - a1[47];
  a2[47] = v20;
  v255 = a1[15] - a1[48];
  a2[48] = v255;
  v258 = a1[14] - a1[49];
  a2[49] = v258;
  v260 = a1[13] - a1[50];
  a2[50] = v260;
  v21 = a1[12] - a1[51];
  a2[51] = v21;
  v22 = a1[11] - a1[52];
  a2[52] = v22;
  v23 = a1[10] - a1[53];
  a2[53] = v23;
  v24 = a1[9] - a1[54];
  a2[54] = v24;
  v25 = a1[8] - a1[55];
  a2[55] = v25;
  v270 = a1[7] - a1[56];
  a2[56] = v270;
  v267 = a1[6] - a1[57];
  a2[57] = v267;
  v265 = a1[5] - a1[58];
  a2[58] = v265;
  v263 = a1[4] - a1[59];
  a2[59] = v263;
  v293 = a1[3] - a1[60];
  a2[60] = v293;
  v291 = a1[2] - a1[61];
  a2[61] = v291;
  v299 = a1[1] - a1[62];
  a2[62] = v299;
  v26 = v6 - 640;
  v27 = *(v6 - 608);
  v311 = *(v6 - 609);
  v28 = v7 + v27 * v255;
  v254 = v28 + -(v27 * v20);
  v256 = v28 + v27 * v20;
  v29 = v7 + v27 * v258;
  v252 = v29 + -(v27 * v19);
  v253 = v29 + v27 * v19;
  v30 = v7 + v27 * v260;
  v233 = v30 + -(v27 * v18);
  v236 = v30 + v27 * v18;
  v31 = v7 + v27 * v21;
  v238 = v31 + -(v27 * v17);
  v240 = v31 + v27 * v17;
  v32 = v7 + v27 * v22;
  v33 = v7 + v27 * v23;
  v34 = v33 + -(v27 * v15);
  v35 = v33 + v27 * v15;
  v36 = v7 + v27 * v24;
  v37 = v36 + -(v27 * v14);
  v38 = v36 + v27 * v14;
  v39 = v7 + v27 * v25;
  v40 = v39 + -(v27 * v13);
  v41 = v39 + v27 * v13;
  v42 = v7 + v27 * (v322 - v10);
  v259 = v42 + -(v27 * (v320 - v9));
  v261 = v42 + v27 * (v320 - v9);
  v43 = v7 + v27 * (v334 - v315);
  v243 = v43 + -(v27 * (v330 - v312));
  v246 = v43 + v27 * (v330 - v312);
  v44 = v7 + v27 * (v5 - v274);
  v193 = v44 + -(v27 * (v307 - v283));
  v198 = v44 + v27 * (v307 - v283);
  v45 = v7 + v27 * (v4 - v11);
  v195 = v45 + -(v27 * (v309 - v8));
  v197 = v45 + v27 * (v309 - v8);
  v188 = v11 + v4;
  v191 = v8 + v309;
  v208 = v12 + v337;
  v200 = v326 + v332;
  v46 = v7 + v27 * (v12 + v337 - (v326 + v332));
  v47 = v11 + v4 - (v8 + v309);
  v250 = v46 + -(v27 * v47);
  v249 = v46 + v27 * v47;
  v174 = v274 + v5;
  v178 = v283 + v307;
  v48 = v7 + v27 * (v318 + v339 - (v324 + v328));
  v49 = v274 + v5 - (v283 + v307);
  v211 = v48 + -(v27 * v49);
  v214 = v48 + v27 * v49;
  v50 = (v32 + -(v27 * v16)) >> v3;
  v170 = v277 + v50;
  LODWORD(v30) = v26[16];
  v310 = v26[15];
  v51 = (v32 + v27 * v16) >> v3;
  v306 = v26;
  LODWORD(v32) = v26[48];
  v308 = v26[47];
  v231 = v7 + -(v30 * (v277 + v50)) + v32 * (v263 + v51);
  LOBYTE(v12) = v3;
  v52 = v34 >> v3;
  v166 = v280 + (v34 >> v3);
  v53 = v35 >> v3;
  LODWORD(v35) = v265 + (v35 >> v3);
  v205 = v7 + -(v30 * v166) + v32 * v35;
  v54 = v37 >> v3;
  v55 = v285 + (v37 >> v3);
  v56 = v38 >> v3;
  v275 = v7 + -(v30 * v55) + v32 * (v267 + v56);
  v57 = v40 >> v3;
  LODWORD(v34) = v288 + (v40 >> v3);
  v58 = v41 >> v3;
  v59 = v270 + (v41 >> v3);
  v251 = v7 + -(v30 * v34) + v32 * v59;
  LODWORD(v57) = v288 - v57;
  LODWORD(v58) = v270 - v58;
  v284 = v7 + -(v30 * v58) + -(v32 * v57);
  v289 = v7 + -(v30 * (v267 - v56)) + -(v32 * (v285 - v54));
  v229 = v7 + -(v30 * (v263 - v51)) + -(v32 * (v277 - v50));
  v224 = v7 + -(v30 * (v265 - v53)) + -(v32 * (v280 - v52));
  v227 = v7 + -(v30 * (v277 - v50)) + v32 * (v263 - v51);
  v216 = v7 + -(v30 * (v280 - v52)) + v32 * (v265 - v53);
  v271 = v7 + -(v30 * (v285 - v54)) + v32 * (v267 - v56);
  v278 = v7 + -(v30 * v57) + v32 * v58;
  v203 = v7 + v30 * v59 + v32 * v34;
  v268 = v7 + v30 * (v267 + v56) + v32 * v55;
  v167 = v7 + v30 * v35 + v32 * v166;
  v168 = v7 + v30 * (v263 + v51) + v32 * v170;
  v335 = v315 + v334;
  LODWORD(v35) = v312 + v330;
  v60 = v318 + v339 + v324 + v328;
  v61 = v174 + v178;
  v62 = v341 + v353 + v345 + v347;
  LODWORD(v51) = v335 + v312 + v330;
  v63 = v7 + v27 * (v62 - v51);
  v64 = v60 - (v174 + v178);
  v316 = v63 + -(v27 * v64);
  v313 = v63 + v27 * v64;
  LODWORD(v63) = v328 - v324;
  v65 = v328 - v324 + (v193 >> v12);
  v66 = v198 >> v12;
  LODWORD(v58) = v339 - v318 + (v198 >> v12);
  v199 = v7 + -(v30 * v65) + v32 * v58;
  LODWORD(v50) = v332 - v326;
  LODWORD(v34) = v332 - v326 + (v195 >> v12);
  LODWORD(v48) = v337 - v186 + (v197 >> v12);
  v327 = v7 + -(v30 * v34) + v32 * v48;
  LODWORD(v50) = v50 - (v195 >> v12);
  v67 = v337 - v186 - (v197 >> v12);
  v329 = v7 + -(v30 * v67) + -(v32 * v50);
  LODWORD(v63) = v63 - (v193 >> v12);
  v68 = v339 - v318 - v66;
  v194 = v7 + -(v30 * v63) + v32 * v68;
  v196 = v7 + -(v30 * v68) + -(v32 * v63);
  v266 = v7 + -(v30 * v50) + v32 * v67;
  v331 = v7 + v30 * v48 + v32 * v34;
  v185 = v7 + v30 * v58 + v32 * v65;
  v163 = v221 + v322;
  LODWORD(v197) = v9 + v320;
  v171 = v208 + v200;
  v175 = v188 + v191;
  LODWORD(v48) = v62 + v51;
  v69 = v60 + v61;
  v286 = v349 + v351;
  v179 = v343 + v355 + v349 + v351;
  v182 = v221 + v322 + v9 + v320;
  v70 = v208 + v200 + v188 + v191;
  LODWORD(v50) = v27 * (v48 + v69);
  v71 = v7 + v27 * (v179 + v182 + v70);
  v319 = v71 + v50;
  v323 = v71 + -v50;
  LODWORD(v48) = v48 - v69;
  v72 = v179 + v182 - v70;
  v321 = v7 + v30 * v72 + v32 * v48;
  v325 = v7 + -(v30 * v48) + v32 * v72;
  v73 = v341 + v353 - (v345 + v347);
  v74 = v335 - v35 + (v211 >> v12);
  v75 = v73 + (v214 >> v12);
  v192 = v7 + -(v30 * v74) + v32 * v75;
  v76 = v335 - v35 - (v211 >> v12);
  v77 = v73 - (v214 >> v12);
  v281 = v7 + -(v30 * v77) + -(v32 * v76);
  v209 = v7 + -(v30 * v76) + v32 * v77;
  v187 = v7 + v30 * v75 + v32 * v74;
  LODWORD(v50) = v295 + (v233 >> v12);
  v189 = v50 + (v205 >> v12);
  v78 = v26;
  LODWORD(v58) = v26[8];
  v340 = v26[7];
  LODWORD(v54) = v291 + (v236 >> v12);
  LODWORD(v52) = v54 + (v167 >> v12);
  v79 = v26[56];
  v338 = v26[55];
  v219 = v7 + -(v58 * v189) + v79 * v52;
  v80 = v238 >> v12;
  v81 = v297 + (v238 >> v12);
  LODWORD(v71) = v81 + (v231 >> v12);
  v82 = v240 >> v12;
  LODWORD(v32) = v293 + (v240 >> v12);
  v83 = v32 + (v168 >> v12);
  v84 = v81 - (v231 >> v12);
  v85 = v32 - (v168 >> v12);
  v239 = v7 + -(v58 * v71) + v79 * v83;
  v241 = v7 + -(v58 * v85) + -(v79 * v84);
  v86 = v50 - (v205 >> v12);
  LODWORD(v51) = v54 - (v167 >> v12);
  v212 = v7 + -(v58 * v51) + -(v79 * v86);
  LODWORD(v63) = v295 - (v233 >> v12);
  v87 = v291 - (v236 >> v12);
  LODWORD(v35) = v63 - (v224 >> v12);
  LODWORD(v53) = v26[40];
  v336 = v26[39];
  v88 = v87 - (v216 >> v12);
  LODWORD(v56) = v26[24];
  v333 = v26[23];
  v222 = v7 + -(v53 * v35) + v56 * v88;
  LODWORD(v80) = v297 - v80;
  LODWORD(v82) = v293 - v82;
  LODWORD(v26) = v80 - (v229 >> v12);
  LODWORD(v30) = v82 - (v227 >> v12);
  v234 = v7 + -(v53 * v26) + v56 * v30;
  LODWORD(v80) = v80 + (v229 >> v12);
  LODWORD(v32) = v82 + (v227 >> v12);
  v237 = v7 + -(v53 * v32) + -(v56 * v80);
  LODWORD(v82) = v63 + (v224 >> v12);
  LODWORD(v63) = v87 + (v216 >> v12);
  v215 = v7 + -(v53 * v82) + v56 * v63;
  v217 = v7 + -(v53 * v63) + -(v56 * v82);
  v230 = v7 + -(v53 * v80) + v56 * v32;
  v232 = v7 + v53 * v30 + v56 * v26;
  v206 = v7 + v53 * v88 + v56 * v35;
  v201 = v7 + -(v58 * v86) + v79 * v51;
  v225 = v7 + -(v58 * v84) + v79 * v85;
  v228 = v7 + v58 * v83 + v79 * v71;
  v190 = v7 + v58 * v52 + v79 * v189;
  LODWORD(v80) = v179 - v182 + (v313 >> v12);
  v89 = v171 - v175 + (v316 >> v12);
  v296 = v7 + v58 * v80 + v79 * v89;
  LODWORD(v32) = v171 - v175 - (v316 >> v12);
  LODWORD(v30) = v179 - v182 - (v313 >> v12);
  v314 = v7 + v53 * v30 + v56 * v32;
  v298 = v7 + -(v53 * v32) + v56 * v30;
  v317 = v7 + -(v58 * v89) + v79 * v80;
  LODWORD(v32) = v347 - v345;
  LODWORD(v63) = v347 - v345 + (v243 >> v12);
  v90 = v63 + (v199 >> v12);
  v91 = v353 - v341 + (v246 >> v12);
  v92 = v91 + (v185 >> v12);
  v346 = v7 + -(v58 * v90) + v79 * v92;
  LODWORD(v80) = v63 - (v199 >> v12);
  LODWORD(v63) = v91 - (v185 >> v12);
  v348 = v7 + -(v58 * v63) + -(v79 * v80);
  LODWORD(v32) = v32 - (v243 >> v12);
  LODWORD(v30) = v353 - v341 - (v246 >> v12);
  v93 = v32 - (v196 >> v12);
  v94 = v30 - (v194 >> v12);
  LODWORD(v32) = v32 + (v196 >> v12);
  LODWORD(v30) = v30 + (v194 >> v12);
  v342 = v7 + -(v53 * v30) + -(v56 * v32);
  v244 = v7 + -(v53 * v32) + v56 * v30;
  v247 = v7 + -(v53 * v93) + v56 * v94;
  LODWORD(v66) = *a1 - a1[63];
  v95 = v351 - v349;
  v352 = v7 + v53 * v94 + v56 * v93;
  LODWORD(v34) = v355 - v343;
  LODWORD(v51) = v163 - v197;
  v350 = v7 + -(v58 * v80) + v79 * v63;
  LODWORD(v50) = v343 + v355 - v286;
  v96 = v301 + (v252 >> v12);
  LODWORD(v197) = v301 - (v252 >> v12);
  v344 = v7 + v58 * v92 + v79 * v90;
  v97 = v304 + (v254 >> v12);
  LODWORD(v196) = v304 - (v254 >> v12);
  v302 = v299 - (v253 >> v12);
  LODWORD(v199) = v299 + (v253 >> v12);
  LODWORD(v82) = v51 + (v250 >> v12);
  LODWORD(v194) = v82 + (v192 >> v12);
  LODWORD(v52) = v78[60];
  v356 = v78[59];
  v98 = v50 + (v249 >> v12);
  LODWORD(v58) = v98 + (v187 >> v12);
  v99 = v78[4];
  v264 = v78[3];
  v287 = v7 + v52 * v194 + v99 * v58;
  LODWORD(v53) = v82 - (v192 >> v12);
  LODWORD(v56) = v98 - (v187 >> v12);
  LODWORD(v82) = v78[28];
  v354 = v78[27];
  LODWORD(v71) = v78[36];
  LODWORD(v254) = v78[35];
  v300 = v7 + v82 * v53 + v71 * v56;
  LODWORD(v80) = v51 - (v250 >> v12);
  v100 = v50 - (v249 >> v12);
  LODWORD(v26) = v80 - (v281 >> v12);
  v101 = v78[44];
  LODWORD(v252) = v78[43];
  LODWORD(v32) = v100 - (v209 >> v12);
  LODWORD(v63) = v78[20];
  LODWORD(v253) = v78[19];
  v292 = v7 + v101 * v26 + v63 * v32;
  LODWORD(v51) = v80 + (v281 >> v12);
  v102 = v100 + (v209 >> v12);
  LODWORD(v50) = v78[12];
  LODWORD(v250) = v78[11];
  LODWORD(v35) = v78[52];
  LODWORD(v249) = v78[51];
  v305 = v7 + v50 * v51 + v35 * v102;
  v103 = v66 - (v256 >> v12);
  LODWORD(v41) = v66 + (v256 >> v12);
  LODWORD(v80) = v95 + (v259 >> v12);
  LODWORD(v66) = v95 - (v259 >> v12);
  v282 = v7 + v50 * v102 + -(v35 * v51);
  LODWORD(v54) = v34 - (v261 >> v12);
  LODWORD(v187) = v34 + (v261 >> v12);
  LODWORD(v30) = v96 + (v275 >> v12);
  v104 = v96 - (v275 >> v12);
  v294 = v7 + v101 * v32 + -(v63 * v26);
  v105 = v97 + (v251 >> v12);
  LODWORD(v261) = v97 - (v251 >> v12);
  v106 = v197 - (v289 >> v12);
  LODWORD(v185) = v197 + (v289 >> v12);
  v290 = v7 + v82 * v56 + -(v71 * v53);
  LODWORD(v192) = v196 - (v284 >> v12);
  LODWORD(v259) = v196 + (v284 >> v12);
  LODWORD(v34) = v302 + (v271 >> v12);
  v107 = v302 - (v271 >> v12);
  v176 = v52;
  v158 = v99;
  v303 = v7 + v52 * v58 + -(v99 * v194);
  LODWORD(v194) = v103 + (v278 >> v12);
  LODWORD(v256) = v103 - (v278 >> v12);
  LODWORD(v53) = v199 - (v268 >> v12);
  LODWORD(v32) = v199 + (v268 >> v12);
  v108 = v219 >> v12;
  LODWORD(v284) = v32 + (v190 >> v12);
  LODWORD(v278) = v30 + (v219 >> v12);
  v220 = v7 + v52 * v284 + -(v99 * v278);
  LODWORD(v275) = v30 - v108;
  LODWORD(v271) = v32 - (v190 >> v12);
  v210 = v7 + -((v30 - v108) * v52) + -(v99 * v271);
  LODWORD(v51) = v41 - (v203 >> v12);
  v109 = v41 + (v203 >> v12);
  LODWORD(v58) = v80 + (v327 >> v12);
  LODWORD(v251) = v80 - (v327 >> v12);
  v110 = v212 >> v12;
  LODWORD(v327) = v53 - (v201 >> v12);
  v154 = v82;
  LODWORD(v268) = v104 - (v212 >> v12);
  v213 = v7 + v82 * v327 + -(v71 * v268);
  LODWORD(v199) = v104 + v110;
  LODWORD(v41) = v53 + (v201 >> v12);
  v204 = v7 + -((v104 + v110) * v82) + -(v71 * v41);
  v111 = v66 - (v329 >> v12);
  LODWORD(v53) = v66 + (v329 >> v12);
  v112 = v266 >> v12;
  LODWORD(v266) = v54 + (v266 >> v12);
  LODWORD(v329) = v54 - v112;
  v113 = v222 >> v12;
  v114 = v107 + (v206 >> v12);
  LODWORD(v80) = v106 + (v222 >> v12);
  v223 = v7 + v101 * v114 + -(v63 * v80);
  LODWORD(v82) = v106 - v113;
  LODWORD(v108) = v107 - (v206 >> v12);
  v207 = v7 + -((v106 - v113) * v101) + -(v63 * v108);
  v115 = v187 - (v331 >> v12);
  v116 = v187 + (v331 >> v12);
  LODWORD(v196) = v105 + (v239 >> v12);
  LODWORD(v197) = v105 - (v239 >> v12);
  v117 = v217 >> v12;
  LODWORD(v113) = v34 - (v215 >> v12);
  LODWORD(v112) = v185 - (v217 >> v12);
  v218 = v7 + v50 * v113 + -(v35 * v112);
  LODWORD(v117) = v185 + v117;
  LODWORD(v66) = v34 + (v215 >> v12);
  v202 = v7 + -(v117 * v50) + -(v35 * v66);
  v161 = v261 - (v241 >> v12);
  LODWORD(v167) = v261 + (v241 >> v12);
  v172 = v192 + (v234 >> v12);
  LODWORD(v187) = v192 - (v234 >> v12);
  v235 = v7 + v50 * v66 + -(v35 * v117);
  v164 = v259 - (v237 >> v12);
  v183 = v259 + (v237 >> v12);
  LODWORD(v185) = v194 + (v230 >> v12);
  LODWORD(v194) = v194 - (v230 >> v12);
  v169 = v7 + v50 * v112 + v35 * v113;
  v180 = v256 - (v232 >> v12);
  LODWORD(v190) = v256 + (v232 >> v12);
  LODWORD(v192) = v51 + (v225 >> v12);
  LODWORD(v237) = v51 - (v225 >> v12);
  v160 = v7 + v101 * v108 + -(v63 * v82);
  v118 = v228 >> v12;
  LODWORD(v228) = v109 - (v228 >> v12);
  LODWORD(v232) = v109 + v118;
  v148 = v58 + (v346 >> v12);
  v157 = v7 + v101 * v80 + v63 * v114;
  v140 = v251 - (v348 >> v12);
  v142 = v58 - (v346 >> v12);
  LODWORD(v230) = v251 + (v348 >> v12);
  LODWORD(v58) = v111 + (v247 >> v12);
  LODWORD(v239) = v111 - (v247 >> v12);
  v156 = v7 + v154 * v41 + -(v71 * v199);
  LODWORD(v259) = v53 - (v342 >> v12);
  LODWORD(v261) = v53 + (v342 >> v12);
  LODWORD(v34) = v266 + (v244 >> v12);
  LODWORD(v52) = v266 - (v244 >> v12);
  v153 = v7 + v154 * v268 + v71 * v327;
  LODWORD(v41) = v329 - (v352 >> v12);
  LODWORD(v268) = v329 + (v352 >> v12);
  LODWORD(v35) = v115 + (v350 >> v12);
  v138 = v115 - (v350 >> v12);
  v152 = v7 + v176 * v271 + -(v158 * v275);
  LODWORD(v244) = v116 - (v344 >> v12);
  v150 = v7 + v176 * v278 + v158 * v284;
  LODWORD(v275) = v78[62];
  LODWORD(v215) = v78[61];
  LODWORD(v112) = v78[2];
  v144 = v116 + (v344 >> v12);
  LODWORD(v352) = v78[1];
  v248 = v7 + v275 * v148 + v112 * v144;
  v119 = v78[30];
  LODWORD(v199) = v78[29];
  v120 = v78[34];
  LODWORD(v350) = v78[33];
  v272 = v7 + v119 * v142 + v120 * v244;
  LODWORD(v66) = v78[46];
  v177 = v78[45];
  LODWORD(v51) = v78[18];
  LODWORD(v348) = v78[17];
  v257 = v7 + v66 * v140 + v51 * v138;
  LODWORD(v71) = v78[14];
  v159 = v78[13];
  LODWORD(v113) = v78[50];
  LODWORD(v346) = v78[49];
  LODWORD(v54) = v78[54];
  v155 = v78[53];
  v121 = v58;
  v122 = v78[10];
  LODWORD(v344) = v78[9];
  v242 = v7 + v54 * v58 + v122 * v268;
  LODWORD(v58) = v78[22];
  v151 = v78[21];
  LODWORD(v53) = v78[42];
  LODWORD(v342) = v78[41];
  v123 = v78[38];
  v147 = v78[37];
  LODWORD(v82) = v78[26];
  LODWORD(v329) = v78[25];
  LODWORD(v80) = v78[6];
  LODWORD(v331) = v78[5];
  LODWORD(v118) = v78[58];
  LODWORD(v327) = v78[57];
  v279 = v7 + v80 * v261 + v118 * v34;
  v226 = v7 + v80 * v34 + -(v261 * v118);
  v269 = v7 + v54 * v268 + -(v121 * v122);
  v262 = v7 + v66 * v138 + -(v140 * v51);
  v245 = v7 + v119 * v244 + -(v142 * v120);
  v276 = v7 + v275 * v144 + -(v148 * v112);
  v149 = v196 + (v220 >> v12);
  v145 = v197 - (v210 >> v12);
  v146 = v196 - (v220 >> v12);
  v141 = v161 + (v213 >> v12);
  v143 = v197 + (v210 >> v12);
  v162 = v161 - (v213 >> v12);
  v139 = v167 - (v204 >> v12);
  v128 = v172 + (v223 >> v12);
  LODWORD(v54) = v172 - (v223 >> v12);
  v131 = v187 - (v207 >> v12);
  v132 = v187 + (v207 >> v12);
  v133 = v167 + (v204 >> v12);
  v134 = v164 + (v218 >> v12);
  v136 = v164 - (v218 >> v12);
  v137 = v183 - (v202 >> v12);
  v165 = v183 + (v202 >> v12);
  LODWORD(v167) = v185 + (v235 >> v12);
  v135 = v185 - (v235 >> v12);
  v129 = v194 + (v169 >> v12);
  v130 = v194 - (v169 >> v12);
  v126 = v180 - (v160 >> v12);
  v127 = v180 + (v160 >> v12);
  v125 = v190 - (v157 >> v12);
  LODWORD(v157) = v190 + (v157 >> v12);
  LODWORD(v160) = v192 + (v156 >> v12);
  LODWORD(v169) = v192 - (v156 >> v12);
  v173 = v237 - (v153 >> v12);
  v181 = v237 + (v153 >> v12);
  v184 = v228 + (v152 >> v12);
  LODWORD(v185) = v228 - (v152 >> v12);
  LODWORD(v190) = v232 - (v150 >> v12);
  LODWORD(v194) = v232 + (v150 >> v12);
  LODWORD(v196) = v306[63];
  result = v7 + v338 * v181 + -(v141 * v344);
  *a2 = v319 >> v12;
  a2[1] = (v7 + v196 * v149 + v352 * v194) >> v12;
  a2[2] = v248 >> v12;
  a2[3] = (v7 + v264 * v167 + -(v165 * v215)) >> v12;
  a2[4] = v287 >> v12;
  a2[5] = (v7 + v356 * v128 + v331 * v157) >> v12;
  a2[6] = v226 >> v12;
  a2[7] = (v7 + v340 * v160 + -(v133 * v327)) >> v12;
  a2[8] = v296 >> v12;
  a2[9] = (v7 + v338 * v141 + v344 * v181) >> v12;
  a2[10] = v242 >> v12;
  a2[11] = (v7 + v250 * v127 + -(v132 * v155)) >> v12;
  a2[12] = v282 >> v12;
  a2[13] = (v7 + v249 * v134 + v159 * v129) >> v12;
  a2[14] = (v7 + v71 * v35 + -(v230 * v113)) >> v12;
  a2[15] = (v7 + v310 * v184 + -(v143 * v346)) >> v12;
  a2[16] = v321 >> v12;
  a2[17] = (v7 + v308 * v145 + v348 * v185) >> v12;
  a2[18] = v257 >> v12;
  a2[19] = (v7 + v253 * v130 + -(v136 * v177)) >> v12;
  a2[20] = v292 >> v12;
  a2[21] = (v7 + v252 * v131 + v151 * v126) >> v12;
  a2[22] = (v7 + v58 * v41 + -(v239 * v53)) >> v12;
  a2[23] = (v7 + v333 * v173 + -(v162 * v342)) >> v12;
  a2[24] = v298 >> v12;
  a2[25] = (v7 + v336 * v139 + v329 * v169) >> v12;
  a2[26] = (v7 + v123 * v259 + v82 * v52) >> v12;
  a2[27] = (v7 + v354 * v125 + -(v54 * v147)) >> v12;
  a2[28] = v290 >> v12;
  a2[29] = (v7 + v254 * v137 + v199 * v135) >> v12;
  a2[30] = v245 >> v12;
  a2[31] = (v7 + v311 * v190 + -(v146 * v350)) >> v12;
  a2[32] = v323 >> v12;
  a2[33] = (v7 + v311 * v146 + v350 * v190) >> v12;
  a2[34] = v272 >> v12;
  a2[35] = (v7 + v254 * v135 + -(v137 * v199)) >> v12;
  a2[36] = v300 >> v12;
  a2[37] = (v7 + v354 * v54 + v147 * v125) >> v12;
  a2[38] = (v7 + v123 * v52 + -(v259 * v82)) >> v12;
  a2[39] = (v7 + v336 * v169 + -(v139 * v329)) >> v12;
  a2[40] = v314 >> v12;
  a2[41] = (v7 + v333 * v162 + v342 * v173) >> v12;
  a2[42] = (v7 + v58 * v239 + v53 * v41) >> v12;
  a2[43] = (v7 + v252 * v126 + -(v131 * v151)) >> v12;
  a2[44] = v294 >> v12;
  a2[45] = (v7 + v253 * v136 + v177 * v130) >> v12;
  a2[46] = v262 >> v12;
  a2[47] = (v7 + v308 * v185 + -(v145 * v348)) >> v12;
  a2[48] = v325 >> v12;
  a2[49] = (v7 + v310 * v143 + v346 * v184) >> v12;
  a2[50] = (v7 + v71 * v230 + v113 * v35) >> v12;
  a2[51] = (v7 + v249 * v129 + -(v134 * v159)) >> v12;
  a2[52] = v305 >> v12;
  a2[53] = (v7 + v250 * v132 + v155 * v127) >> v12;
  a2[54] = v269 >> v12;
  a2[55] = result >> v12;
  a2[56] = v317 >> v12;
  a2[57] = (v7 + v340 * v133 + v327 * v160) >> v12;
  a2[58] = v279 >> v12;
  a2[59] = (v7 + v356 * v157 + -(v128 * v331)) >> v12;
  a2[60] = v303 >> v12;
  a2[61] = (v7 + v264 * v165 + v215 * v167) >> v12;
  a2[62] = v276 >> v12;
  a2[63] = (v7 + v196 * v194 + -(v149 * v352)) >> v12;
  return result;
}

uint64_t av1_get_fwd_txfm_cfg(uint64_t result, unsigned int a2, uint64_t a3)
{
  *a3 = a2;
  if ((result - 4) > 0xB)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = dword_273BDB8A4[(result - 4)];
    v4 = dword_273BDB8D4[(result - 4)];
  }

  *(a3 + 26) = 0;
  v5 = (a3 + 26);
  *(a3 + 4) = v3;
  *(a3 + 8) = v4;
  v6 = vtx_tab[result];
  v7 = htx_tab[result];
  v8 = tx_size_wide_log2[a2] - 2;
  v9 = tx_size_high_log2[a2] - 2;
  *(a3 + 16) = *(&av1_fwd_txfm_shift_ls + a2);
  v10 = 4 * v8;
  v8 *= 5;
  *(a3 + 24) = av1_fwd_cos_bit_col[v8 + v9];
  *(a3 + 25) = av1_fwd_cos_bit_row[v8 + v9];
  v11 = av1_txfm_type_ls[4 * v9 + v6];
  *(a3 + 50) = v11;
  v12 = av1_txfm_type_ls[v10 + v7];
  *(a3 + 51) = v12;
  v13 = av1_txfm_stage_num_list[v11];
  *(a3 + 52) = v13;
  *(a3 + 56) = av1_txfm_stage_num_list[v12];
  *(a3 + 38) = 0;
  v14 = (a3 + 38);
  *(a3 + 34) = 0;
  *(a3 + 46) = 0;
  v15 = *(&fwd_txfm_range_mult2_list + v11);
  v16 = v13 - 1;
  if ((v13 - 1) >= 0xB)
  {
    v16 = 11;
  }

  v17 = (v16 + 1);
  v18 = *(&fwd_txfm_range_mult2_list + v11);
  do
  {
    v19 = *v18++;
    *v5++ = (v19 + 1) >> 1;
    --v17;
  }

  while (v17);
  v20 = *(a3 + 56);
  v21 = v20 - 1;
  if (v20 >= 1)
  {
    v22 = *(&fwd_txfm_range_mult2_list + *(a3 + 51));
    v23 = v15 - 1;
    if (v21 >= 0xB)
    {
      v24 = 11;
    }

    else
    {
      v24 = v21;
    }

    v25 = (v24 + 1);
    do
    {
      v26 = *v22++;
      *v14++ = (*(v23 + v13) + v26 + 1) >> 1;
      --v25;
    }

    while (v25);
  }

  return result;
}

int32x4_t *fwd_txfm2d_c(int16x4_t *a1, int32x4_t *a2, int a3, unsigned __int8 *a4, __int32 *a5, char a6)
{
  v125 = *MEMORY[0x277D85DE8];
  v7 = *a4;
  v8 = tx_size_wide_0[v7];
  v9 = tx_size_high[v7];
  v119 = *(a4 + 2);
  if (v8 != v9)
  {
    if (v8 <= v9)
    {
      result = a2;
      if (v9 == 2 * v8)
      {
        v99 = -1;
        goto LABEL_3;
      }

      if (v9 == 4 * v8)
      {
        v99 = -2;
        goto LABEL_3;
      }
    }

    else
    {
      result = a2;
      if (v8 == 2 * v9)
      {
        v99 = 1;
        goto LABEL_3;
      }

      if (v8 == 4 * v9)
      {
        v99 = 2;
        goto LABEL_3;
      }
    }

    v99 = 0;
    goto LABEL_3;
  }

  v99 = 0;
  result = a2;
LABEL_3:
  v11 = *(a4 + 13);
  if (v11 >= 1)
  {
    v12 = (a4 + 26);
    v13 = v11 - 1;
    v14 = 11;
    if (v13 < 0xB)
    {
      v14 = v13;
    }

    v15 = a6 + *v119 + 1;
    v16 = v14 + 1;
    v17 = &v124;
    do
    {
      v18 = *v12++;
      *v17++ = v15 + v18;
      --v16;
    }

    while (v16);
  }

  v19 = *(a4 + 14);
  if (v19 >= 1)
  {
    v20 = (a4 + 38);
    v21 = v19 - 1;
    v22 = 11;
    if (v21 < 0xB)
    {
      v22 = v21;
    }

    v23 = a6 + *v119 + v119[1] + 1;
    v24 = v22 + 1;
    v25 = v123;
    do
    {
      v26 = *v20++;
      *v25++ = v23 + v26;
      --v24;
    }

    while (v24);
  }

  v27 = a4[50];
  if (v27 > 0xB)
  {
    v110 = 0;
  }

  else
  {
    v110 = off_2882ABC20[v27];
  }

  v112 = a4[25];
  v28 = a4[51];
  if (v28 > 0xB)
  {
    v111 = 0;
  }

  else
  {
    v111 = off_2882ABC20[v28];
  }

  v29 = 0;
  v30 = (result + 4 * v9);
  if (v9 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = v9;
  }

  v32 = v8 - 1;
  if (v8 <= 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = v8;
  }

  v113 = v33;
  v34 = (v9 - 1) * a3;
  v35 = (v31 - 1) >> 32 != 0;
  if (a3 >= 0)
  {
    v36 = a3;
  }

  else
  {
    v36 = -a3;
  }

  v37 = (v31 - 1) * v36;
  if (!a3)
  {
    v35 = 0;
  }

  v106 = (v9 - 1) * a3;
  if (a3 <= 0)
  {
    v38 = v34 + v37 < v34;
  }

  else
  {
    v38 = v34 - v37 > v34;
  }

  v39 = (v37 & 0xFFFFFFFF00000000) != 0 || v38;
  v107 = v39 | v35;
  v40 = v31 & 0x7FFFFFFE;
  v103 = 0x14163uLL >> v7;
  v104 = v31 & 0x7FFFFFF0;
  v120 = v31;
  v105 = &result->i32[1];
  v41 = 2 * a3;
  v42 = a1;
  v43 = a1 + 2;
  v100 = v31 & 0xC;
  v101 = result + 2;
  v102 = v31 & 0x7FFFFFFC;
  v44 = 2 * a3;
  v45 = 4 * v8;
  v46 = a5;
  v109 = a4;
  do
  {
    v115 = v46;
    v116 = v43;
    if (*(a4 + 1))
    {
      v47 = a1 + 2 * v29;
      if (v107)
      {
        v48 = 0;
LABEL_54:
        v60 = v120 - v48;
        v61 = &result->i32[v48];
        v62 = a3 * (v9 - 1 - v48);
        do
        {
          *v61++ = *&v47[2 * v62];
          v62 -= a3;
          --v60;
        }

        while (v60);
        goto LABEL_64;
      }

      v56 = 0;
      v57 = v106;
      v58 = v105;
      do
      {
        v59 = *&v47[2 * ((v9 + (v56 ^ 0xFFFFFFFE)) * a3)];
        *(v58 - 1) = *&v47[2 * v57];
        *v58 = v59;
        v56 += 2;
        v58 += 2;
        v57 -= v41;
      }

      while (v40 != v56);
      v48 = v40;
      if (v40 != v120)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (a3 != 1)
      {
        v54 = 0;
LABEL_62:
        v67 = v120 - v54;
        v68 = &result->i32[v54];
        v69 = v44 * v54;
        do
        {
          *v68++ = *(v42->i16 + v69);
          v69 += v44;
          --v67;
        }

        while (v67);
        goto LABEL_64;
      }

      if (v103)
      {
        v55 = 0;
      }

      else
      {
        v49 = v104;
        v50 = v101;
        do
        {
          v51 = *v43[-2].i8;
          v52 = vmovl_s16(*v43);
          v53 = vmovl_high_s16(*v43->i8);
          v50[-2] = vmovl_s16(*v51.i8);
          v50[-1] = vmovl_high_s16(v51);
          *v50 = v52;
          v50[1] = v53;
          v50 += 4;
          v43 += 4;
          v49 -= 16;
        }

        while (v49);
        if (v104 == v120)
        {
          goto LABEL_64;
        }

        v54 = v104;
        v55 = v104;
        if (!v100)
        {
          goto LABEL_62;
        }
      }

      v63 = (v42 + 2 * v55);
      v64 = v55 - v102;
      v65 = (result + 4 * v55);
      do
      {
        v66 = *v63++;
        *v65++ = vmovl_s16(v66);
        v64 += 4;
      }

      while (v64);
      v54 = v102;
      if (v102 != v120)
      {
        goto LABEL_62;
      }
    }

LABEL_64:
    v117 = v32;
    v118 = v29;
    if (*v119)
    {
      v70 = 0;
      v71 = vdupq_n_s32(*v119);
      v72 = result;
      do
      {
        *v72 = vrshlq_s32(*v72, v71);
        ++v72;
        v70 += 4;
      }

      while (v70 < v9);
    }

    v73 = result;
    v110();
    if (v119[1])
    {
      v74 = 0;
      v75 = vdupq_n_s32(v119[1]);
      v76 = v30;
      do
      {
        *v76 = vrshlq_s32(*v76, v75);
        ++v76;
        v74 += 4;
      }

      while (v74 < v9);
    }

    a4 = v109;
    if (*(v109 + 2))
    {
      v77 = &a5[v117];
      v78 = v30;
      v79 = v120;
      result = v73;
      do
      {
        v80 = v78->i32[0];
        v78 = (v78 + 4);
        *v77 = v80;
        v77 = (v77 + v45);
        --v79;
      }

      while (v79);
    }

    else
    {
      v81 = v30;
      v82 = v115;
      v83 = v120;
      result = v73;
      do
      {
        v84 = v81->i32[0];
        v81 = (v81 + 4);
        *v82 = v84;
        v82 = (v82 + v45);
        --v83;
      }

      while (v83);
    }

    v29 = v118 + 1;
    v43 = (v116 + 2);
    v42 = (v42 + 2);
    v32 = v117 - 1;
    v46 = v115 + 1;
  }

  while (v118 + 1 != v113);
  v85 = 0;
  if (v99 >= 0)
  {
    v86 = v99;
  }

  else
  {
    v86 = -v99;
  }

  v87 = 4 * v9;
  do
  {
    v88 = result;
    (v111)(&a5[v85 * v8], v121, v112, v123);
    if (v119[2])
    {
      v89 = 0;
      v90 = vdupq_n_s32(v119[2]);
      v91 = v121;
      do
      {
        *v91 = vrshlq_s32(*v91, v90);
        ++v91;
        v89 += 4;
      }

      while (v89 < v8);
    }

    if (v86 == 1)
    {
      v92 = v113 & 0x7FFFFFFE;
      v93 = &v122;
      do
      {
        v94 = (5793 * *v93 + 2048) >> 12;
        *(v93 - 1) = (5793 * *(v93 - 1) + 2048) >> 12;
        *v93 = v94;
        v93 += 2;
        v92 -= 2;
      }

      while (v92);
      if (v113 != (v113 & 0x7FFFFFFE))
      {
        v95 = &v121[(4 * v113) & 0x3FFFFFFF8];
        v96 = v113 & 0xFFFFFFFF80000001;
        do
        {
          *v95 = (5793 * *v95 + 2048) >> 12;
          ++v95;
          --v96;
        }

        while (v96);
      }
    }

    v97 = 0;
    v98 = v88;
    do
    {
      v98->i32[0] = *&v121[v97];
      v97 += 4;
      v98 = (v98 + v87);
    }

    while (4 * v113 != v97);
    ++v85;
    result = (v88->i64 + 4);
  }

  while (v85 != v120);
  return result;
}

int32x4_t lowbd_fwd_txfm2d_4x4_neon(int16x4_t *a1, int32x4_t *a2, int a3, int a4, int32x4_t result)
{
  v5 = (((a4 - 4) >> 1) | ((a4 - 4) << 7));
  v6 = v5 >= 5;
  v8 = v5 == 5;
  v7 = (1 << v5) & 0x27;
  v8 = !v8 && v6 || v7 == 0;
  if (v8)
  {
    v9 = a1;
  }

  else
  {
    v9 = (a1 + 6 * a3);
  }

  if (v8)
  {
    v10 = a3;
  }

  else
  {
    v10 = -a3;
  }

  switch(a4)
  {
    case 0:
      v192 = *v9;
      v193 = 2 * v10;
      v194 = (v9 + v193);
      v195 = *v194;
      v196 = (v194 + v193);
      v197 = vshl_n_s16(v192, 2uLL);
      v198 = vshl_n_s16(v195, 2uLL);
      v199 = vshl_n_s16(*v196, 2uLL);
      v200 = vshl_n_s16(*(v196 + v193), 2uLL);
      v201 = vadd_s16(v199, v198);
      v202 = vsub_s16(v198, v199);
      v203 = vadd_s16(v200, v197);
      v204 = vsub_s16(v197, v200);
      v205 = vdup_n_s16(0x16A1u);
      v206 = vmull_s16(v203, v205);
      v207 = vmlal_s16(v206, v201, v205);
      v208 = vdup_n_s16(0xC3Fu);
      v209 = vmlsl_s16(v206, v201, v205);
      v210 = vdup_n_s16(0x1D90u);
      v211 = vmlal_s16(vmull_s16(v204, v210), v202, v208);
      v212 = vmlsl_s16(vmull_s16(v204, v208), v202, v210);
      v213 = vrshrn_n_s32(v207, 0xDuLL);
      *v207.i8 = vrshrn_n_s32(v211, 0xDuLL);
      *v209.i8 = vrshrn_n_s32(v209, 0xDuLL);
      *v212.i8 = vrshrn_n_s32(v212, 0xDuLL);
      *v211.i8 = vtrn1_s16(v213, *v207.i8);
      v214 = vtrn2_s16(v213, *v207.i8);
      *v207.i8 = vtrn1_s16(*v209.i8, *v212.i8);
      *v212.i8 = vtrn2_s16(*v209.i8, *v212.i8);
      *v209.i8 = vzip1_s32(*v211.i8, *v207.i8);
      *v207.i8 = vzip2_s32(*v211.i8, *v207.i8);
      *v211.i8 = vzip1_s32(v214, *v212.i8);
      *v212.i8 = vzip2_s32(v214, *v212.i8);
      v215 = vadd_s16(*v207.i8, *v211.i8);
      *v207.i8 = vsub_s16(*v211.i8, *v207.i8);
      *v211.i8 = vadd_s16(*v209.i8, *v212.i8);
      *v212.i8 = vsub_s16(*v209.i8, *v212.i8);
      v216 = vmull_s16(*v211.i8, v205);
      v217 = vmlal_s16(v216, v215, v205);
      v170 = vmlsl_s16(v216, v215, v205);
      v218 = vmlal_s16(vmull_s16(*v212.i8, v210), *v207.i8, v208);
      v173 = vmlsl_s16(vmull_s16(*v212.i8, v208), *v207.i8, v210);
      v42 = vrshrn_n_s32(v217, 0xDuLL);
      v43 = vrshrn_n_s32(v218, 0xDuLL);
      goto LABEL_20;
    case 1:
    case 4:
      v11 = *v9;
      v12 = 2 * v10;
      v13 = (v9 + v12);
      v14 = *v13;
      v15 = (v13 + v12);
      v16 = vshl_n_s16(v11, 2uLL);
      v17 = vshl_n_s16(v14, 2uLL);
      v18 = vshl_n_s16(*v15, 2uLL);
      v19 = vshl_n_s16(*(v15 + v12), 2uLL);
      v20 = vdup_n_s16(0x1A21u);
      v21 = vdup_n_s16(0x1364u);
      v22 = vdup_n_s16(0xA52u);
      v23 = vdup_n_s16(0x1DB6u);
      v24 = vmull_s16(vqadd_s16(v16, v17), v20);
      v25 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v17, v21), v18, v20), v16, v22), v19, v23);
      v26 = vaddq_s32(vmlsl_s16(vmull_s16(v19, v21), v18, v20), vmlsl_s16(vmull_s16(v16, v23), v17, v22));
      v27.i64[0] = 0x300000003;
      v27.i64[1] = 0x300000003;
      v28 = vaddq_s32(vsubq_s32(vmulq_s32(vmull_s16(v18, v20), v27), v25), v26);
      v29 = vrshrn_n_s32(v25, 0xDuLL);
      v30 = vrshrn_n_s32(vmlsl_s16(v24, v19, v20), 0xDuLL);
      *v26.i8 = vrshrn_n_s32(v26, 0xDuLL);
      *v28.i8 = vrshrn_n_s32(v28, 0xDuLL);
      *v24.i8 = vtrn1_s16(v29, v30);
      v31 = vtrn2_s16(v29, v30);
      v32 = vtrn1_s16(*v26.i8, *v28.i8);
      *v26.i8 = vtrn2_s16(*v26.i8, *v28.i8);
      *v28.i8 = vzip1_s32(*v24.i8, v32);
      v33 = vzip2_s32(*v24.i8, v32);
      *v24.i8 = vzip1_s32(v31, *v26.i8);
      *v26.i8 = vzip2_s32(v31, *v26.i8);
      v34 = vadd_s16(v33, *v24.i8);
      v35 = vsub_s16(*v24.i8, v33);
      *v24.i8 = vadd_s16(*v26.i8, *v28.i8);
      *v26.i8 = vsub_s16(*v28.i8, *v26.i8);
      *v28.i8 = vdup_n_s16(0x16A1u);
      v36 = vmull_s16(*v24.i8, *v28.i8);
      v37 = vmlal_s16(v36, v34, *v28.i8);
      v38 = vdup_n_s16(0xC3Fu);
      v39 = vmlsl_s16(v36, v34, *v28.i8);
      *v28.i8 = vdup_n_s16(0x1D90u);
      v40 = vmlal_s16(vmull_s16(*v26.i8, *v28.i8), v35, v38);
      v41 = vmlsl_s16(vmull_s16(*v26.i8, v38), v35, *v28.i8);
      v42 = vrshrn_n_s32(v37, 0xDuLL);
      v43 = vrshrn_n_s32(v40, 0xDuLL);
      v44 = vrshrn_n_s32(v39, 0xDuLL);
      v45 = vrshrn_n_s32(v41, 0xDuLL);
      goto LABEL_25;
    case 2:
      v241 = *v9;
      v242 = 2 * v10;
      v243 = (v9 + v242);
      v244 = *v243;
      v245 = (v243 + v242);
      v246 = vshl_n_s16(v241, 2uLL);
      v247 = vshl_n_s16(v244, 2uLL);
      v248 = vshl_n_s16(*v245, 2uLL);
      v249 = vshl_n_s16(*(v245 + v242), 2uLL);
      v250 = vadd_s16(v248, v247);
      v251 = vsub_s16(v247, v248);
      v252 = vadd_s16(v249, v246);
      v253 = vdup_n_s16(0x16A1u);
      v254 = vsub_s16(v246, v249);
      v255 = vmull_s16(v252, v253);
      v256 = vmlal_s16(v255, v250, v253);
      v257 = vmlsl_s16(v255, v250, v253);
      v258 = vdup_n_s16(0xC3Fu);
      v259 = vdup_n_s16(0x1D90u);
      v260 = vmlal_s16(vmull_s16(v254, v259), v251, v258);
      v261 = vmlsl_s16(vmull_s16(v254, v258), v251, v259);
      v262 = vrshrn_n_s32(v256, 0xDuLL);
      *v256.i8 = vrshrn_n_s32(v260, 0xDuLL);
      *v257.i8 = vrshrn_n_s32(v257, 0xDuLL);
      *v261.i8 = vrshrn_n_s32(v261, 0xDuLL);
      v263 = vtrn1_s16(v262, *v256.i8);
      v264 = vtrn2_s16(v262, *v256.i8);
      *v256.i8 = vtrn1_s16(*v257.i8, *v261.i8);
      *v261.i8 = vtrn2_s16(*v257.i8, *v261.i8);
      *v257.i8 = vzip1_s32(v263, *v256.i8);
      *v256.i8 = vzip2_s32(v263, *v256.i8);
      v265 = vzip1_s32(v264, *v261.i8);
      *v261.i8 = vzip2_s32(v264, *v261.i8);
      v266 = vdup_n_s16(0x1A21u);
      v138 = vmull_s16(*v256.i8, v266);
      v267 = vdup_n_s16(0x1364u);
      v268 = vdup_n_s16(0xA52u);
      v269 = vdup_n_s16(0x1DB6u);
      v142 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v265, v267), *v256.i8, v266), *v257.i8, v268), *v261.i8, v269);
      v143 = vmlsl_s16(vmull_s16(vqadd_s16(*v257.i8, v265), v266), *v261.i8, v266);
      v144 = vaddq_s32(vmlsl_s16(vmull_s16(*v261.i8, v267), *v256.i8, v266), vmlsl_s16(vmull_s16(*v257.i8, v269), v265, v268));
      goto LABEL_24;
    case 3:
    case 8:
      v46 = *v9;
      v47 = 2 * v10;
      v48 = (v9 + v47);
      v49 = *v48;
      v50 = (v48 + v47);
      v51 = vshl_n_s16(v46, 2uLL);
      v52 = vshl_n_s16(v49, 2uLL);
      v53 = vshl_n_s16(*v50, 2uLL);
      v54 = vshl_n_s16(*(v50 + v47), 2uLL);
      v55 = vdup_n_s16(0x1A21u);
      v56 = vdup_n_s16(0x1364u);
      v57 = vdup_n_s16(0xA52u);
      v58 = vdup_n_s16(0x1DB6u);
      v59 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v52, v56), v53, v55), v51, v57), v54, v58);
      v60 = vmlsl_s16(vmull_s16(vqadd_s16(v51, v52), v55), v54, v55);
      v61 = vaddq_s32(vmlsl_s16(vmull_s16(v54, v56), v53, v55), vmlsl_s16(vmull_s16(v51, v58), v52, v57));
      v62.i64[0] = 0x300000003;
      v62.i64[1] = 0x300000003;
      v63 = vaddq_s32(vsubq_s32(vmulq_s32(vmull_s16(v53, v55), v62), v59), v61);
      v64 = vrshrn_n_s32(v59, 0xDuLL);
      *v60.i8 = vrshrn_n_s32(v60, 0xDuLL);
      *v61.i8 = vrshrn_n_s32(v61, 0xDuLL);
      *v63.i8 = vrshrn_n_s32(v63, 0xDuLL);
      v65 = vtrn1_s16(v64, *v60.i8);
      v66 = vtrn2_s16(v64, *v60.i8);
      *v60.i8 = vtrn1_s16(*v61.i8, *v63.i8);
      *v61.i8 = vtrn2_s16(*v61.i8, *v63.i8);
      *v63.i8 = vzip1_s32(v65, *v60.i8);
      *v60.i8 = vzip2_s32(v65, *v60.i8);
      v67 = vzip1_s32(v66, *v61.i8);
      *v61.i8 = vzip2_s32(v66, *v61.i8);
      v68 = vmull_s16(*v60.i8, v55);
      v69 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v67, v56), *v60.i8, v55), *v63.i8, v57), *v61.i8, v58);
      v70 = vmlsl_s16(vmull_s16(vqadd_s16(*v63.i8, v67), v55), *v61.i8, v55);
      v71 = vaddq_s32(vmlsl_s16(vmull_s16(*v61.i8, v56), *v60.i8, v55), vmlsl_s16(vmull_s16(*v63.i8, v58), v67, v57));
      goto LABEL_15;
    case 5:
      v270 = *v9;
      v271 = 2 * v10;
      v272 = (v9 + v271);
      v273 = *v272;
      v274 = (v272 + v271);
      v275 = vshl_n_s16(v270, 2uLL);
      v276 = vshl_n_s16(v273, 2uLL);
      v277 = vshl_n_s16(*v274, 2uLL);
      v278 = vshl_n_s16(*(v274 + v271), 2uLL);
      v279 = vadd_s16(v277, v276);
      v280 = vsub_s16(v276, v277);
      v281 = vadd_s16(v278, v275);
      v282 = vdup_n_s16(0x16A1u);
      v283 = vsub_s16(v275, v278);
      v284 = vmull_s16(v281, v282);
      v285 = vmlal_s16(v284, v279, v282);
      v286 = vmlsl_s16(v284, v279, v282);
      v287 = vdup_n_s16(0xC3Fu);
      v288 = vdup_n_s16(0x1D90u);
      v289 = vmlal_s16(vmull_s16(v283, v288), v280, v287);
      v290 = vmlsl_s16(vmull_s16(v283, v287), v280, v288);
      v291 = vrshrn_n_s32(v285, 0xDuLL);
      *v285.i8 = vrshrn_n_s32(v289, 0xDuLL);
      *v286.i8 = vrshrn_n_s32(v286, 0xDuLL);
      *v290.i8 = vrshrn_n_s32(v290, 0xDuLL);
      v292 = vtrn1_s16(v291, *v285.i8);
      v293 = vtrn2_s16(v291, *v285.i8);
      *v285.i8 = vtrn1_s16(*v286.i8, *v290.i8);
      *v290.i8 = vtrn2_s16(*v286.i8, *v290.i8);
      *v286.i8 = vzip1_s32(v292, *v285.i8);
      *v285.i8 = vzip2_s32(v292, *v285.i8);
      v294 = vzip1_s32(v293, *v290.i8);
      *v290.i8 = vzip2_s32(v293, *v290.i8);
      v295 = vdup_n_s16(0x1A21u);
      v138 = vmull_s16(v294, v295);
      v296 = vdup_n_s16(0x1364u);
      v297 = vdup_n_s16(0xA52u);
      v298 = vdup_n_s16(0x1DB6u);
      v142 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(*v285.i8, v296), v294, v295), *v290.i8, v297), *v286.i8, v298);
      v143 = vmlsl_s16(vmull_s16(vqadd_s16(*v290.i8, *v285.i8), v295), *v286.i8, v295);
      v144 = vaddq_s32(vmlsl_s16(vmull_s16(*v286.i8, v296), v294, v295), vmlsl_s16(vmull_s16(*v290.i8, v298), *v285.i8, v297));
      goto LABEL_24;
    case 6:
    case 7:
      v97 = *v9;
      v98 = 2 * v10;
      v99 = (v9 + v98);
      v100 = *v99;
      v101 = (v99 + v98);
      v102 = vshl_n_s16(v97, 2uLL);
      v103 = vshl_n_s16(v100, 2uLL);
      v104 = vshl_n_s16(*v101, 2uLL);
      v105 = vshl_n_s16(*(v101 + v98), 2uLL);
      v106 = vdup_n_s16(0x1A21u);
      v107 = vdup_n_s16(0x1364u);
      v108 = vdup_n_s16(0xA52u);
      v109 = vdup_n_s16(0x1DB6u);
      v110 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v103, v107), v104, v106), v102, v108), v105, v109);
      v111 = vmlsl_s16(vmull_s16(vqadd_s16(v102, v103), v106), v105, v106);
      v112 = vaddq_s32(vmlsl_s16(vmull_s16(v105, v107), v104, v106), vmlsl_s16(vmull_s16(v102, v109), v103, v108));
      v62.i64[0] = 0x300000003;
      v62.i64[1] = 0x300000003;
      v113 = vaddq_s32(vsubq_s32(vmulq_s32(vmull_s16(v104, v106), v62), v110), v112);
      v114 = vrshrn_n_s32(v110, 0xDuLL);
      *v111.i8 = vrshrn_n_s32(v111, 0xDuLL);
      *v112.i8 = vrshrn_n_s32(v112, 0xDuLL);
      *v113.i8 = vrshrn_n_s32(v113, 0xDuLL);
      v115 = vtrn1_s16(v114, *v111.i8);
      v116 = vtrn2_s16(v114, *v111.i8);
      *v111.i8 = vtrn1_s16(*v112.i8, *v113.i8);
      *v112.i8 = vtrn2_s16(*v112.i8, *v113.i8);
      *v113.i8 = vzip1_s32(v115, *v111.i8);
      *v111.i8 = vzip2_s32(v115, *v111.i8);
      v117 = vzip1_s32(v116, *v112.i8);
      *v112.i8 = vzip2_s32(v116, *v112.i8);
      v68 = vmull_s16(v117, v106);
      v69 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(*v111.i8, v107), v117, v106), *v112.i8, v108), *v113.i8, v109);
      v70 = vmlsl_s16(vmull_s16(vqadd_s16(*v112.i8, *v111.i8), v106), *v113.i8, v106);
      v71 = vaddq_s32(vmlsl_s16(vmull_s16(*v113.i8, v107), v117, v106), vmlsl_s16(vmull_s16(*v112.i8, v109), *v111.i8, v108));
LABEL_15:
      v118 = vaddq_s32(vsubq_s32(vmulq_s32(v68, v62), v69), v71);
      v42 = vrshrn_n_s32(v69, 0xDuLL);
      v43 = vrshrn_n_s32(v70, 0xDuLL);
      v44 = vrshrn_n_s32(v71, 0xDuLL);
      v45 = vrshrn_n_s32(v118, 0xDuLL);
      goto LABEL_25;
    case 9:
      v174 = *v9;
      v175 = 2 * v10;
      v176 = (v9 + v175);
      v177 = *v176;
      v178 = (v176 + v175);
      v179 = vdup_n_s16(0x16A1u);
      v180 = vqrshrn_n_s32(vmull_s16(vshl_n_s16(v174, 2uLL), v179), 0xCuLL);
      v181 = vqrshrn_n_s32(vmull_s16(vshl_n_s16(v177, 2uLL), v179), 0xCuLL);
      v182 = vqrshrn_n_s32(vmull_s16(vshl_n_s16(*v178, 2uLL), v179), 0xCuLL);
      v183 = vqrshrn_n_s32(vmull_s16(vshl_n_s16(*(v178 + v175), 2uLL), v179), 0xCuLL);
      v184 = vtrn1_s16(v180, v181);
      v185 = vtrn2_s16(v180, v181);
      v186 = vtrn1_s16(v182, v183);
      v187 = vtrn2_s16(v182, v183);
      v188 = vzip1_s32(v184, v186);
      v189 = vzip2_s32(v184, v186);
      v190 = vzip1_s32(v185, v187);
      v191 = vzip2_s32(v185, v187);
      v42 = vqrshrn_n_s32(vmull_s16(v188, v179), 0xCuLL);
      v43 = vqrshrn_n_s32(vmull_s16(v190, v179), 0xCuLL);
      v44 = vqrshrn_n_s32(vmull_s16(v189, v179), 0xCuLL);
      v45 = vqrshrn_n_s32(vmull_s16(v191, v179), 0xCuLL);
      goto LABEL_25;
    case 10:
      v301 = *v9;
      v302 = 2 * v10;
      v303 = (v9 + v302);
      v304 = *v303;
      v305 = (v303 + v302);
      v306 = vshl_n_s16(v301, 2uLL);
      v307 = vshl_n_s16(v304, 2uLL);
      v308 = vshl_n_s16(*v305, 2uLL);
      v309 = vshl_n_s16(*(v305 + v302), 2uLL);
      v310 = vadd_s16(v308, v307);
      v311 = vsub_s16(v307, v308);
      v312 = vadd_s16(v309, v306);
      v313 = vsub_s16(v306, v309);
      v314 = vdup_n_s16(0x16A1u);
      v315 = vmull_s16(v312, v314);
      v316 = vmlal_s16(v315, v310, v314);
      v317 = vmlsl_s16(v315, v310, v314);
      v318 = vdup_n_s16(0xC3Fu);
      v319 = vdup_n_s16(0x1D90u);
      v320 = vmlal_s16(vmull_s16(v313, v319), v311, v318);
      v321 = vmlsl_s16(vmull_s16(v313, v318), v311, v319);
      v322 = vrshrn_n_s32(v316, 0xDuLL);
      v323 = vrshrn_n_s32(v320, 0xDuLL);
      *v317.i8 = vrshrn_n_s32(v317, 0xDuLL);
      *v321.i8 = vrshrn_n_s32(v321, 0xDuLL);
      *v316.i8 = vtrn1_s16(v322, v323);
      v324 = vtrn2_s16(v322, v323);
      v325 = vtrn1_s16(*v317.i8, *v321.i8);
      *v321.i8 = vtrn2_s16(*v317.i8, *v321.i8);
      *v317.i8 = vzip1_s32(*v316.i8, v325);
      v326 = vzip2_s32(*v316.i8, v325);
      *v316.i8 = vzip1_s32(v324, *v321.i8);
      v327 = vzip2_s32(v324, *v321.i8);
      v42 = vqrshrn_n_s32(vmull_s16(*v317.i8, v314), 0xCuLL);
      v43 = vqrshrn_n_s32(vmull_s16(*v316.i8, v314), 0xCuLL);
      v44 = vqrshrn_n_s32(vmull_s16(v326, v314), 0xCuLL);
      v45 = vqrshrn_n_s32(vmull_s16(v327, v314), 0xCuLL);
      goto LABEL_25;
    case 11:
      v145 = *v9;
      v146 = 2 * v10;
      v147 = (v9 + v146);
      v148 = *v147;
      v149 = (v147 + v146);
      v150 = vdup_n_s16(0x16A1u);
      v151 = vqrshrn_n_s32(vmull_s16(vshl_n_s16(v145, 2uLL), v150), 0xCuLL);
      v152 = vqrshrn_n_s32(vmull_s16(vshl_n_s16(v148, 2uLL), v150), 0xCuLL);
      v153 = vqrshrn_n_s32(vmull_s16(vshl_n_s16(*v149, 2uLL), v150), 0xCuLL);
      v154 = vqrshrn_n_s32(vmull_s16(vshl_n_s16(*(v149 + v146), 2uLL), v150), 0xCuLL);
      v155 = vtrn1_s16(v151, v152);
      v156 = vtrn2_s16(v151, v152);
      v157 = vtrn1_s16(v153, v154);
      v158 = vtrn2_s16(v153, v154);
      v159 = vzip1_s32(v155, v157);
      v160 = vzip2_s32(v155, v157);
      v161 = vzip1_s32(v156, v158);
      v162 = vzip2_s32(v156, v158);
      v163 = vadd_s16(v160, v161);
      v164 = vsub_s16(v161, v160);
      v165 = vadd_s16(v162, v159);
      v166 = vsub_s16(v159, v162);
      v167 = vmull_s16(v165, v150);
      v168 = vmlal_s16(v167, v163, v150);
      v169 = vdup_n_s16(0xC3Fu);
      v170 = vmlsl_s16(v167, v163, v150);
      v171 = vdup_n_s16(0x1D90u);
      v172 = vmlal_s16(vmull_s16(v166, v171), v164, v169);
      v173 = vmlsl_s16(vmull_s16(v166, v169), v164, v171);
      v42 = vrshrn_n_s32(v168, 0xDuLL);
      v43 = vrshrn_n_s32(v172, 0xDuLL);
LABEL_20:
      v44 = vrshrn_n_s32(v170, 0xDuLL);
      v45 = vrshrn_n_s32(v173, 0xDuLL);
      goto LABEL_25;
    case 12:
    case 14:
      v72 = *v9;
      v73 = 2 * v10;
      v74 = (v9 + v73);
      v75 = *v74;
      v76 = (v74 + v73);
      v77 = vshl_n_s16(v72, 2uLL);
      v78 = vshl_n_s16(v75, 2uLL);
      v79 = vshl_n_s16(*v76, 2uLL);
      v80 = vshl_n_s16(*(v76 + v73), 2uLL);
      v81 = vdup_n_s16(0x1A21u);
      v82 = vdup_n_s16(0x1364u);
      v83 = vdup_n_s16(0xA52u);
      v84 = vdup_n_s16(0x1DB6u);
      v85 = vmull_s16(vqadd_s16(v77, v78), v81);
      v86 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v78, v82), v79, v81), v77, v83), v80, v84);
      v87 = vaddq_s32(vmlsl_s16(vmull_s16(v80, v82), v79, v81), vmlsl_s16(vmull_s16(v77, v84), v78, v83));
      v88.i64[0] = 0x300000003;
      v88.i64[1] = 0x300000003;
      v89 = vaddq_s32(vsubq_s32(vmulq_s32(vmull_s16(v79, v81), v88), v86), v87);
      v90 = vrshrn_n_s32(v86, 0xDuLL);
      v91 = vrshrn_n_s32(vmlsl_s16(v85, v80, v81), 0xDuLL);
      *v87.i8 = vrshrn_n_s32(v87, 0xDuLL);
      *v89.i8 = vrshrn_n_s32(v89, 0xDuLL);
      *v85.i8 = vtrn1_s16(v90, v91);
      v92 = vtrn2_s16(v90, v91);
      v93 = vtrn1_s16(*v87.i8, *v89.i8);
      *v87.i8 = vtrn2_s16(*v87.i8, *v89.i8);
      *v89.i8 = vzip1_s32(*v85.i8, v93);
      v94 = vzip2_s32(*v85.i8, v93);
      *v85.i8 = vzip1_s32(v92, *v87.i8);
      v95 = vzip2_s32(v92, *v87.i8);
      v96 = vdup_n_s16(0x16A1u);
      v42 = vqrshrn_n_s32(vmull_s16(*v89.i8, v96), 0xCuLL);
      v43 = vqrshrn_n_s32(vmull_s16(*v85.i8, v96), 0xCuLL);
      v44 = vqrshrn_n_s32(vmull_s16(v94, v96), 0xCuLL);
      v45 = vqrshrn_n_s32(vmull_s16(v95, v96), 0xCuLL);
      goto LABEL_25;
    case 13:
      v119 = *v9;
      v120 = 2 * v10;
      v121 = (v9 + v120);
      v122 = *v121;
      v123 = (v121 + v120);
      v124 = vdup_n_s16(0x16A1u);
      v125 = vqrshrn_n_s32(vmull_s16(vshl_n_s16(v119, 2uLL), v124), 0xCuLL);
      v126 = vqrshrn_n_s32(vmull_s16(vshl_n_s16(v122, 2uLL), v124), 0xCuLL);
      v127 = vqrshrn_n_s32(vmull_s16(vshl_n_s16(*v123, 2uLL), v124), 0xCuLL);
      v128 = vqrshrn_n_s32(vmull_s16(vshl_n_s16(*(v123 + v120), 2uLL), v124), 0xCuLL);
      v129 = vtrn1_s16(v125, v126);
      v130 = vtrn2_s16(v125, v126);
      v131 = vtrn1_s16(v127, v128);
      v132 = vtrn2_s16(v127, v128);
      v133 = vzip1_s32(v129, v131);
      v134 = vzip2_s32(v129, v131);
      v135 = vzip1_s32(v130, v132);
      v136 = vzip2_s32(v130, v132);
      v137 = vdup_n_s16(0x1A21u);
      v138 = vmull_s16(v134, v137);
      v139 = vdup_n_s16(0x1364u);
      v140 = vdup_n_s16(0xA52u);
      v141 = vdup_n_s16(0x1DB6u);
      v142 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v135, v139), v134, v137), v133, v140), v136, v141);
      v143 = vmlsl_s16(vmull_s16(vqadd_s16(v133, v135), v137), v136, v137);
      v144 = vaddq_s32(vmlsl_s16(vmull_s16(v136, v139), v134, v137), vmlsl_s16(vmull_s16(v133, v141), v135, v140));
      goto LABEL_24;
    case 15:
      v219 = *v9;
      v220 = 2 * v10;
      v221 = (v9 + v220);
      v222 = *v221;
      v223 = (v221 + v220);
      v224 = vdup_n_s16(0x16A1u);
      v225 = vqrshrn_n_s32(vmull_s16(vshl_n_s16(v219, 2uLL), v224), 0xCuLL);
      v226 = vqrshrn_n_s32(vmull_s16(vshl_n_s16(v222, 2uLL), v224), 0xCuLL);
      v227 = vqrshrn_n_s32(vmull_s16(vshl_n_s16(*v223, 2uLL), v224), 0xCuLL);
      v228 = vqrshrn_n_s32(vmull_s16(vshl_n_s16(*(v223 + v220), 2uLL), v224), 0xCuLL);
      v229 = vtrn1_s16(v225, v226);
      v230 = vtrn2_s16(v225, v226);
      v231 = vtrn1_s16(v227, v228);
      v232 = vtrn2_s16(v227, v228);
      v233 = vzip1_s32(v229, v231);
      v234 = vzip2_s32(v229, v231);
      v235 = vzip1_s32(v230, v232);
      v236 = vzip2_s32(v230, v232);
      v237 = vdup_n_s16(0x1A21u);
      v138 = vmull_s16(v235, v237);
      v238 = vdup_n_s16(0x1364u);
      v239 = vdup_n_s16(0xA52u);
      v240 = vdup_n_s16(0x1DB6u);
      v142 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v234, v238), v235, v237), v236, v239), v233, v240);
      v143 = vmlsl_s16(vmull_s16(vqadd_s16(v236, v234), v237), v233, v237);
      v144 = vaddq_s32(vmlsl_s16(vmull_s16(v233, v238), v235, v237), vmlsl_s16(vmull_s16(v236, v240), v234, v239));
LABEL_24:
      v299.i64[0] = 0x300000003;
      v299.i64[1] = 0x300000003;
      v300 = vaddq_s32(vsubq_s32(vmulq_s32(v138, v299), v142), v144);
      v42 = vrshrn_n_s32(v142, 0xDuLL);
      v43 = vrshrn_n_s32(v143, 0xDuLL);
      v44 = vrshrn_n_s32(v144, 0xDuLL);
      v45 = vrshrn_n_s32(v300, 0xDuLL);
LABEL_25:
      *a2 = vmovl_s16(v42);
      a2[1] = vmovl_s16(v43);
      result = vmovl_s16(v44);
      a2[2] = result;
      a2[3] = vmovl_s16(v45);
      break;
    default:
      return result;
  }

  return result;
}

int32x4_t lowbd_fwd_txfm2d_8x8_neon(int16x8_t *a1, int32x4_t *a2, int a3, int a4, int32x4_t result)
{
  v717 = *MEMORY[0x277D85DE8];
  v5 = (((a4 - 4) >> 1) | ((a4 - 4) << 7));
  v6 = v5 > 5;
  v7 = (1 << v5) & 0x27;
  if (!v6 && v7 != 0)
  {
    a1 = (a1 + 14 * a3);
    a3 = -a3;
  }

  switch(a4)
  {
    case 0:
      v318 = vshlq_n_s16(*a1, 2uLL);
      v319 = vshlq_n_s16(*(a1 + 2 * a3), 2uLL);
      v320 = vshlq_n_s16(*(a1 + 4 * a3), 2uLL);
      v321 = vshlq_n_s16(*(a1 + 6 * a3), 2uLL);
      v322 = vshlq_n_s16(*(a1 + 8 * a3), 2uLL);
      v323 = vshlq_n_s16(*(a1 + 10 * a3), 2uLL);
      v324 = vshlq_n_s16(*(a1 + 12 * a3), 2uLL);
      v325 = vshlq_n_s16(*(a1 + 14 * a3), 2uLL);
      v326 = vqaddq_s16(v318, v325);
      v327 = vqaddq_s16(v319, v324);
      v328 = vqaddq_s16(v320, v323);
      v329 = vqaddq_s16(v321, v322);
      v330 = vqsubq_s16(v321, v322);
      v331 = vqsubq_s16(v320, v323);
      v332 = vqsubq_s16(v319, v324);
      v333 = vqsubq_s16(v318, v325);
      v334 = vqaddq_s16(v326, v329);
      v335 = vqaddq_s16(v327, v328);
      v336 = vqsubq_s16(v327, v328);
      v337 = vqsubq_s16(v326, v329);
      v338 = vdupq_n_s16(0x16A1u);
      v339 = vdupq_n_s16(0xE95Fu);
      v340 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v331.i8, *v338.i8), *v332.i8, *v338.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v331, v338), v332, v338), 0xDuLL);
      v341 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v331.i8, *v339.i8), *v332.i8, *v338.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v331, v339), v332, v338), 0xDuLL);
      v342 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v335.i8, *v338.i8), *v334.i8, *v338.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v335, v338), v334, v338), 0xDuLL);
      v343 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v335.i8, *v339.i8), *v334.i8, *v338.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v335, v339), v334, v338), 0xDuLL);
      v344 = vdupq_n_s16(0x1D90u);
      v345 = vdupq_n_s16(0xC3Fu);
      v346 = vdupq_n_s16(0xE270u);
      v347 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v336.i8, *v345.i8), *v337.i8, *v344.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v336, v345), v337, v344), 0xDuLL);
      v348 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v336.i8, *v346.i8), *v337.i8, *v345.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v336, v346), v337, v345), 0xDuLL);
      v349 = vqaddq_s16(v330, v341);
      v350 = vqsubq_s16(v330, v341);
      v351 = vqsubq_s16(v333, v340);
      v352 = vdupq_n_s16(0x1F63u);
      v353 = vdupq_n_s16(0x63Eu);
      v354 = vqaddq_s16(v333, v340);
      v355 = vdupq_n_s16(0xE09Du);
      v356 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v349.i8, *v353.i8), *v354.i8, *v352.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v349, v353), v354, v352), 0xDuLL);
      v357 = vdupq_n_s16(0x11C7u);
      v358 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v349.i8, *v355.i8), *v354.i8, *v353.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v349, v355), v354, v353), 0xDuLL);
      v359 = vdupq_n_s16(0x1A9Bu);
      v360 = vmlal_s16(vmull_s16(*v350.i8, *v359.i8), *v351.i8, *v357.i8);
      v361 = vmlal_high_s16(vmull_high_s16(v350, v359), v351, v357);
      v362 = vdupq_n_s16(0xEE39u);
      v363 = vmlal_s16(vmull_s16(*v350.i8, *v362.i8), *v351.i8, *v359.i8);
      v364 = vmlal_high_s16(vmull_high_s16(v350, v362), v351, v359);
      *v351.i8 = vrshrn_n_s32(v360, 0xDuLL);
      v365 = vrhaddq_s16(v342, 0);
      v366 = vrhaddq_s16(v356, 0);
      v367 = vrhaddq_s16(v347, 0);
      v368 = vrhaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v363, 0xDuLL), v364, 0xDuLL), 0);
      v369 = vrhaddq_s16(v343, 0);
      v370 = vrhaddq_s16(vrshrn_high_n_s32(*v351.i8, v361, 0xDuLL), 0);
      v371 = vrhaddq_s16(v348, 0);
      v372 = vrhaddq_s16(v358, 0);
      v373 = vtrn1q_s16(v365, v366);
      v374 = vtrn2q_s16(v365, v366);
      v375 = vtrn1q_s16(v367, v368);
      v376 = vtrn2q_s16(v367, v368);
      v377 = vtrn1q_s16(v369, v370);
      v378 = vtrn2q_s16(v369, v370);
      v379 = vtrn1q_s16(v371, v372);
      v380 = vtrn2q_s16(v371, v372);
      v381 = vtrn1q_s32(v373, v375);
      v382 = vtrn2q_s32(v373, v375);
      v383 = vtrn1q_s32(v374, v376);
      v384 = vtrn2q_s32(v374, v376);
      v385 = vtrn1q_s32(v377, v379);
      v386 = vtrn2q_s32(v377, v379);
      v387 = vtrn1q_s32(v378, v380);
      v388 = vtrn2q_s32(v378, v380);
      v389 = vzip2q_s64(v381, v385);
      v381.i64[1] = v385.i64[0];
      v390 = vzip2q_s64(v383, v387);
      v383.i64[1] = v387.i64[0];
      v391 = vzip2q_s64(v382, v386);
      v382.i64[1] = v386.i64[0];
      v392 = vzip2q_s64(v384, v388);
      v384.i64[1] = v388.i64[0];
      v393 = vqaddq_s16(v381, v392);
      v394 = vqaddq_s16(v383, v391);
      v395 = vqaddq_s16(v382, v390);
      v396 = vqaddq_s16(v384, v389);
      v397 = vqsubq_s16(v384, v389);
      v398 = vqsubq_s16(v382, v390);
      v399 = vqsubq_s16(v383, v391);
      v400 = vqsubq_s16(v381, v392);
      v401 = vqaddq_s16(v393, v396);
      v402 = vqaddq_s16(v394, v395);
      v403 = vqsubq_s16(v394, v395);
      v404 = vqsubq_s16(v393, v396);
      v405 = vmlal_s16(vmull_s16(*v398.i8, *v338.i8), *v399.i8, *v338.i8);
      v406 = vmlal_high_s16(vmull_high_s16(v398, v338), v399, v338);
      v407 = vmlal_s16(vmull_s16(*v398.i8, *v339.i8), *v399.i8, *v338.i8);
      v408 = vmlal_high_s16(vmull_high_s16(v398, v339), v399, v338);
      v409 = vrshrn_high_n_s32(vrshrn_n_s32(v405, 0xDuLL), v406, 0xDuLL);
      v410 = vrshrn_high_n_s32(vrshrn_n_s32(v407, 0xDuLL), v408, 0xDuLL);
      v411 = vmlal_s16(vmull_s16(*v402.i8, *v338.i8), *v401.i8, *v338.i8);
      v412 = vmlal_high_s16(vmull_high_s16(v402, v338), v401, v338);
      v413 = vmlal_s16(vmull_s16(*v402.i8, *v339.i8), *v401.i8, *v338.i8);
      v414 = vmlal_high_s16(vmull_high_s16(v402, v339), v401, v338);
      *v401.i8 = vrshrn_n_s32(v412, 0xDuLL);
      *v338.i8 = vrshrn_n_s32(v414, 0xDuLL);
      v415 = vmlal_s16(vmull_s16(*v403.i8, *v345.i8), *v404.i8, *v344.i8);
      v416 = vmlal_high_s16(vmull_high_s16(v403, v345), v404, v344);
      v417 = vmlal_s16(vmull_s16(*v403.i8, *v346.i8), *v404.i8, *v345.i8);
      *v345.i8 = vrshrn_n_s32(vmlal_high_s16(vmull_high_s16(v403, v346), v404, v345), 0xDuLL);
      v418 = vqaddq_s16(v397, v410);
      v419 = vqsubq_s16(v397, v410);
      v420 = vqsubq_s16(v400, v409);
      v421 = vqaddq_s16(v400, v409);
      *a2 = vmovl_s16(vrshrn_n_s32(v411, 0xDuLL));
      a2[1] = vmovl_s16(*v401.i8);
      a2[2] = vmovl_s16(vrshrn_n_s32(vmlal_s16(vmull_s16(*v418.i8, *v353.i8), *v421.i8, *v352.i8), 0xDuLL));
      a2[3] = vmovl_s16(vrshrn_n_s32(vmlal_high_s16(vmull_high_s16(v418, v353), v421, v352), 0xDuLL));
      a2[4] = vmovl_s16(vrshrn_n_s32(v415, 0xDuLL));
      a2[5] = vmovl_s16(vrshrn_n_s32(v416, 0xDuLL));
      a2[6] = vmovl_s16(vrshrn_n_s32(vmlal_s16(vmull_s16(*v419.i8, *v362.i8), *v420.i8, *v359.i8), 0xDuLL));
      a2[7] = vmovl_s16(vrshrn_n_s32(vmlal_high_s16(vmull_high_s16(v419, v362), v420, v359), 0xDuLL));
      a2[8] = vmovl_s16(vrshrn_n_s32(v413, 0xDuLL));
      a2[9] = vmovl_s16(*v338.i8);
      a2[10] = vmovl_s16(vrshrn_n_s32(vmlal_s16(vmull_s16(*v419.i8, *v359.i8), *v420.i8, *v357.i8), 0xDuLL));
      a2[11] = vmovl_s16(vrshrn_n_s32(vmlal_high_s16(vmull_high_s16(v419, v359), v420, v357), 0xDuLL));
      a2[12] = vmovl_s16(vrshrn_n_s32(v417, 0xDuLL));
      a2[13] = vmovl_s16(*v345.i8);
      result = vmovl_s16(vrshrn_n_s32(vmlal_s16(vmull_s16(*v418.i8, *v355.i8), *v421.i8, *v353.i8), 0xDuLL));
      v279 = vmovl_s16(vrshrn_n_s32(vmlal_high_s16(vmull_high_s16(v418, v355), v421, v353), 0xDuLL));
      goto LABEL_15;
    case 1:
    case 4:
      v9 = a2;
      fadst8x8_col_neon(a1, &v709, a3, 13);
      v10 = vrhaddq_s16(v709, 0);
      v11 = vrhaddq_s16(v710, 0);
      v12 = vrhaddq_s16(v711, 0);
      v13 = vrhaddq_s16(v712, 0);
      v14 = vrhaddq_s16(v713, 0);
      v15 = vrhaddq_s16(v714, 0);
      v16 = vrhaddq_s16(v715, 0);
      v17 = vrhaddq_s16(v716, 0);
      v18 = vtrn1q_s16(v10, v11);
      v19 = vtrn2q_s16(v10, v11);
      v20 = vtrn1q_s16(v12, v13);
      v21 = vtrn2q_s16(v12, v13);
      v22 = vtrn1q_s16(v14, v15);
      v23 = vtrn2q_s16(v14, v15);
      v24 = vtrn1q_s16(v16, v17);
      v25 = vtrn2q_s16(v16, v17);
      v26 = vtrn1q_s32(v18, v20);
      v27 = vtrn2q_s32(v18, v20);
      v28 = vtrn1q_s32(v19, v21);
      v29 = vtrn2q_s32(v19, v21);
      v30 = vtrn1q_s32(v22, v24);
      v31 = vtrn2q_s32(v22, v24);
      v32 = vtrn1q_s32(v23, v25);
      v33 = vzip2q_s64(v26, v30);
      v34.i64[0] = v26.i64[0];
      v34.i64[1] = v30.i64[0];
      v35 = vzip2q_s64(v28, v32);
      v28.i64[1] = v32.i64[0];
      v36 = vtrn2q_s32(v23, v25);
      v37 = vzip2q_s64(v27, v31);
      v27.i64[1] = v31.i64[0];
      v38 = vzip2q_s64(v29, v36);
      v29.i64[1] = v36.i64[0];
      v39 = vqaddq_s16(v34, v38);
      v40 = vqaddq_s16(v28, v37);
      v41 = vqaddq_s16(v27, v35);
      v42 = vqaddq_s16(v29, v33);
      v43 = vqsubq_s16(v29, v33);
      v44 = vqsubq_s16(v27, v35);
      v45 = vqsubq_s16(v28, v37);
      v46 = vqsubq_s16(v34, v38);
      v47 = vqaddq_s16(v39, v42);
      v48 = vqaddq_s16(v40, v41);
      v49 = vqsubq_s16(v40, v41);
      v50 = vqsubq_s16(v39, v42);
      v51 = vdupq_n_s16(0x16A1u);
      v52 = vdupq_n_s16(0xE95Fu);
      v53 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v44.i8, *v51.i8), *v45.i8, *v51.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v44, v51), v45, v51), 0xDuLL);
      v54 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v44.i8, *v52.i8), *v45.i8, *v51.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v44, v52), v45, v51), 0xDuLL);
      v55 = vmlal_s16(vmull_s16(*v48.i8, *v51.i8), *v47.i8, *v51.i8);
      v56 = vmlal_high_s16(vmull_high_s16(v48, v51), v47, v51);
      v57 = vmlal_s16(vmull_s16(*v48.i8, *v52.i8), *v47.i8, *v51.i8);
      v58 = vmlal_high_s16(vmull_high_s16(v48, v52), v47, v51);
      *v45.i8 = vrshrn_n_s32(v55, 0xDuLL);
      *v47.i8 = vrshrn_n_s32(v56, 0xDuLL);
      *v55.i8 = vrshrn_n_s32(v57, 0xDuLL);
      *v51.i8 = vrshrn_n_s32(v58, 0xDuLL);
      v59 = vdupq_n_s16(0x1D90u);
      v60 = vdupq_n_s16(0xC3Fu);
      v61 = vmlal_s16(vmull_s16(*v49.i8, *v60.i8), *v50.i8, *v59.i8);
      v62 = vmlal_high_s16(vmull_high_s16(v49, v60), v50, v59);
      v63 = vdupq_n_s16(0xE270u);
      v64 = vmlal_s16(vmull_s16(*v49.i8, *v63.i8), *v50.i8, *v60.i8);
      v65 = vmlal_high_s16(vmull_high_s16(v49, v63), v50, v60);
      *v60.i8 = vrshrn_n_s32(v61, 0xDuLL);
      *v63.i8 = vrshrn_n_s32(v62, 0xDuLL);
      *v49.i8 = vrshrn_n_s32(v64, 0xDuLL);
      *v50.i8 = vrshrn_n_s32(v65, 0xDuLL);
      v66 = vqaddq_s16(v43, v54);
      v67 = vqsubq_s16(v43, v54);
      v68 = vqsubq_s16(v46, v53);
      v69 = vdupq_n_s16(0x1F63u);
      v70 = vqaddq_s16(v46, v53);
      v71 = vdupq_n_s16(0x63Eu);
      v72 = vmlal_s16(vmull_s16(*v66.i8, *v71.i8), *v70.i8, *v69.i8);
      v73 = vmlal_high_s16(vmull_high_s16(v66, v71), v70, v69);
      v74 = vdupq_n_s16(0xE09Du);
      v75 = vmlal_s16(vmull_s16(*v66.i8, *v74.i8), *v70.i8, *v71.i8);
      v76 = vmlal_high_s16(vmull_high_s16(v66, v74), v70, v71);
      *v74.i8 = vrshrn_n_s32(v72, 0xDuLL);
      *v71.i8 = vrshrn_n_s32(v73, 0xDuLL);
      *v70.i8 = vrshrn_n_s32(v75, 0xDuLL);
      v77 = vdupq_n_s16(0x11C7u);
      v78 = vdupq_n_s16(0x1A9Bu);
      v79 = vmlal_s16(vmull_s16(*v67.i8, *v78.i8), *v68.i8, *v77.i8);
      v80 = vmlal_high_s16(vmull_high_s16(v67, v78), v68, v77);
      v81 = vdupq_n_s16(0xEE39u);
      *v9 = vmovl_s16(*v45.i8);
      v9[1] = vmovl_s16(*v47.i8);
      v9[2] = vmovl_s16(*v74.i8);
      v9[3] = vmovl_s16(*v71.i8);
      v9[4] = vmovl_s16(*v60.i8);
      v9[5] = vmovl_s16(*v63.i8);
      v9[6] = vmovl_s16(vrshrn_n_s32(vmlal_s16(vmull_s16(*v67.i8, *v81.i8), *v68.i8, *v78.i8), 0xDuLL));
      v9[7] = vmovl_s16(vrshrn_n_s32(vmlal_high_s16(vmull_high_s16(v67, v81), v68, v78), 0xDuLL));
      v9[8] = vmovl_s16(*v55.i8);
      v9[9] = vmovl_s16(*v51.i8);
      v9[10] = vmovl_s16(vrshrn_n_s32(v79, 0xDuLL));
      v9[11] = vmovl_s16(vrshrn_n_s32(v80, 0xDuLL));
      v9[12] = vmovl_s16(*v49.i8);
      v9[13] = vmovl_s16(*v50.i8);
      result = vmovl_s16(*v70.i8);
      v9[14] = result;
      v9[15] = vmovl_s16(vrshrn_n_s32(v76, 0xDuLL));
      return result;
    case 2:
      v450 = vshlq_n_s16(*a1, 2uLL);
      v451 = vshlq_n_s16(*(a1 + 2 * a3), 2uLL);
      v452 = vshlq_n_s16(*(a1 + 4 * a3), 2uLL);
      v453 = vshlq_n_s16(*(a1 + 6 * a3), 2uLL);
      v454 = vshlq_n_s16(*(a1 + 8 * a3), 2uLL);
      v455 = vshlq_n_s16(*(a1 + 10 * a3), 2uLL);
      v456 = vshlq_n_s16(*(a1 + 12 * a3), 2uLL);
      v457 = vshlq_n_s16(*(a1 + 14 * a3), 2uLL);
      v458 = vqaddq_s16(v450, v457);
      v459 = vqaddq_s16(v451, v456);
      v460 = vqaddq_s16(v452, v455);
      v461 = vqaddq_s16(v453, v454);
      v462 = vqsubq_s16(v453, v454);
      v463 = vqsubq_s16(v452, v455);
      v464 = vqsubq_s16(v451, v456);
      v465 = vqsubq_s16(v450, v457);
      v466 = vqaddq_s16(v458, v461);
      v467 = vqaddq_s16(v459, v460);
      v468 = vqsubq_s16(v459, v460);
      v469 = vdupq_n_s16(0x16A1u);
      v470 = vqsubq_s16(v458, v461);
      v471 = vdupq_n_s16(0xE95Fu);
      v472 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v463.i8, *v469.i8), *v464.i8, *v469.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v463, v469), v464, v469), 0xDuLL);
      v473 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v463.i8, *v471.i8), *v464.i8, *v469.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v463, v471), v464, v469), 0xDuLL);
      v474 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v467.i8, *v469.i8), *v466.i8, *v469.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v467, v469), v466, v469), 0xDuLL);
      v475 = vdupq_n_s16(0x1D90u);
      v476 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v467.i8, *v471.i8), *v466.i8, *v469.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v467, v471), v466, v469), 0xDuLL);
      v477 = vdupq_n_s16(0xC3Fu);
      v478 = vmlal_s16(vmull_s16(*v468.i8, *v477.i8), *v470.i8, *v475.i8);
      v479 = vmlal_high_s16(vmull_high_s16(v468, v477), v470, v475);
      v480 = vdupq_n_s16(0xE270u);
      v481 = vmlal_s16(vmull_s16(*v468.i8, *v480.i8), *v470.i8, *v477.i8);
      v482 = vmlal_high_s16(vmull_high_s16(v468, v480), v470, v477);
      v483 = vrshrn_high_n_s32(vrshrn_n_s32(v478, 0xDuLL), v479, 0xDuLL);
      v484 = vrshrn_high_n_s32(vrshrn_n_s32(v481, 0xDuLL), v482, 0xDuLL);
      v485 = vqaddq_s16(v462, v473);
      v486 = vqsubq_s16(v462, v473);
      v487 = vqsubq_s16(v465, v472);
      v488 = vqaddq_s16(v465, v472);
      v489 = vdupq_n_s16(0x1F63u);
      v490 = vdupq_n_s16(0x63Eu);
      v491 = vmlal_s16(vmull_s16(*v485.i8, *v490.i8), *v488.i8, *v489.i8);
      v492 = vmlal_high_s16(vmull_high_s16(v485, v490), v488, v489);
      v493 = vdupq_n_s16(0xE09Du);
      v494 = vmlal_s16(vmull_s16(*v485.i8, *v493.i8), *v488.i8, *v490.i8);
      v495 = vmlal_high_s16(vmull_high_s16(v485, v493), v488, v490);
      v496 = vrshrn_high_n_s32(vrshrn_n_s32(v491, 0xDuLL), v492, 0xDuLL);
      v497 = vrshrn_high_n_s32(vrshrn_n_s32(v494, 0xDuLL), v495, 0xDuLL);
      v498 = vdupq_n_s16(0x11C7u);
      v499 = vdupq_n_s16(0x1A9Bu);
      v500 = vmlal_s16(vmull_s16(*v486.i8, *v499.i8), *v487.i8, *v498.i8);
      v501 = vmlal_high_s16(vmull_high_s16(v486, v499), v487, v498);
      v502 = vdupq_n_s16(0xEE39u);
      v503 = vrhaddq_s16(v474, 0);
      v504 = vrhaddq_s16(v496, 0);
      v505 = vrhaddq_s16(v483, 0);
      v506 = vrhaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v486.i8, *v502.i8), *v487.i8, *v499.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v486, v502), v487, v499), 0xDuLL), 0);
      v507 = vrhaddq_s16(v476, 0);
      v508 = vrhaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v500, 0xDuLL), v501, 0xDuLL), 0);
      v509 = vrhaddq_s16(v484, 0);
      v510 = vrhaddq_s16(v497, 0);
      v511 = vtrn1q_s16(v503, v504);
      v512 = vtrn2q_s16(v503, v504);
      v513 = vtrn1q_s16(v505, v506);
      v514 = vtrn2q_s16(v505, v506);
      v515 = vtrn1q_s16(v507, v508);
      v516 = vtrn2q_s16(v507, v508);
      v517 = vtrn1q_s16(v509, v510);
      v518 = vtrn2q_s16(v509, v510);
      v519 = vtrn1q_s32(v511, v513);
      v520 = vtrn2q_s32(v511, v513);
      v521 = vtrn1q_s32(v512, v514);
      v522 = vtrn2q_s32(v512, v514);
      v523 = vtrn1q_s32(v515, v517);
      v524 = vtrn2q_s32(v515, v517);
      v525 = vtrn1q_s32(v516, v518);
      v526 = vtrn2q_s32(v516, v518);
      v527 = vzip2q_s64(v519, v523);
      v519.i64[1] = v523.i64[0];
      v528 = vzip2q_s64(v521, v525);
      v521.i64[1] = v525.i64[0];
      v529 = vzip2q_s64(v520, v524);
      v520.i64[1] = v524.i64[0];
      v530 = vzip2q_s64(v522, v526);
      v522.i64[1] = v526.i64[0];
      v701 = v519;
      v702 = v521;
      v703 = v520;
      v704 = v522;
      v705 = v527;
      v706 = v528;
      v707 = v529;
      v708 = v530;
      v111 = &v701;
      goto LABEL_20;
    case 3:
    case 8:
      v82 = a2;
      fadst8x8_col_neon(a1, &v709, a3, 13);
      v83 = vrhaddq_s16(v709, 0);
      v84 = vrhaddq_s16(v710, 0);
      v85 = vrhaddq_s16(v711, 0);
      v86 = vrhaddq_s16(v712, 0);
      v87 = vrhaddq_s16(v713, 0);
      v88 = vrhaddq_s16(v714, 0);
      v89 = vrhaddq_s16(v715, 0);
      v90 = vrhaddq_s16(v716, 0);
      v91 = vtrn1q_s16(v83, v84);
      v92 = vtrn2q_s16(v83, v84);
      v93 = vtrn1q_s16(v85, v86);
      v94 = vtrn2q_s16(v85, v86);
      v95 = vtrn1q_s16(v87, v88);
      v96 = vtrn2q_s16(v87, v88);
      v97 = vtrn1q_s16(v89, v90);
      v98 = vtrn2q_s16(v89, v90);
      v99 = vtrn1q_s32(v91, v93);
      v100 = vtrn2q_s32(v91, v93);
      v101 = vtrn1q_s32(v92, v94);
      v102 = vtrn2q_s32(v92, v94);
      v103 = vtrn1q_s32(v95, v97);
      v104 = vtrn2q_s32(v95, v97);
      v105 = vtrn1q_s32(v96, v98);
      v106 = vtrn2q_s32(v96, v98);
      v107 = vzip2q_s64(v99, v103);
      v99.i64[1] = v103.i64[0];
      v108 = vzip2q_s64(v101, v105);
      v101.i64[1] = v105.i64[0];
      v109 = vzip2q_s64(v100, v104);
      v100.i64[1] = v104.i64[0];
      v110 = vzip2q_s64(v102, v106);
      v102.i64[1] = v106.i64[0];
      v701 = v99;
      v702 = v101;
      v703 = v100;
      v704 = v102;
      v705 = v107;
      v706 = v108;
      v707 = v109;
      v708 = v110;
      v111 = &v701;
      a2 = v82;
      goto LABEL_20;
    case 5:
      v531 = vshlq_n_s16(*a1, 2uLL);
      v532 = vshlq_n_s16(*(a1 + 2 * a3), 2uLL);
      v533 = vshlq_n_s16(*(a1 + 4 * a3), 2uLL);
      v534 = vshlq_n_s16(*(a1 + 6 * a3), 2uLL);
      v535 = vshlq_n_s16(*(a1 + 8 * a3), 2uLL);
      v536 = vshlq_n_s16(*(a1 + 10 * a3), 2uLL);
      v537 = vshlq_n_s16(*(a1 + 12 * a3), 2uLL);
      v538 = vshlq_n_s16(*(a1 + 14 * a3), 2uLL);
      v539 = vqaddq_s16(v531, v538);
      v540 = vqaddq_s16(v532, v537);
      v541 = vqaddq_s16(v533, v536);
      v542 = vqaddq_s16(v534, v535);
      v543 = vqsubq_s16(v534, v535);
      v544 = vqsubq_s16(v533, v536);
      v545 = vqsubq_s16(v532, v537);
      v546 = vqsubq_s16(v531, v538);
      v547 = vqaddq_s16(v539, v542);
      v548 = vqaddq_s16(v540, v541);
      v549 = vqsubq_s16(v540, v541);
      v550 = vdupq_n_s16(0x16A1u);
      v551 = vqsubq_s16(v539, v542);
      v552 = vdupq_n_s16(0xE95Fu);
      v553 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v544.i8, *v550.i8), *v545.i8, *v550.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v544, v550), v545, v550), 0xDuLL);
      v554 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v544.i8, *v552.i8), *v545.i8, *v550.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v544, v552), v545, v550), 0xDuLL);
      v555 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v548.i8, *v550.i8), *v547.i8, *v550.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v548, v550), v547, v550), 0xDuLL);
      v556 = vdupq_n_s16(0x1D90u);
      v557 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v548.i8, *v552.i8), *v547.i8, *v550.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v548, v552), v547, v550), 0xDuLL);
      v558 = vdupq_n_s16(0xC3Fu);
      v559 = vmlal_s16(vmull_s16(*v549.i8, *v558.i8), *v551.i8, *v556.i8);
      v560 = vmlal_high_s16(vmull_high_s16(v549, v558), v551, v556);
      v561 = vdupq_n_s16(0xE270u);
      v562 = vmlal_s16(vmull_s16(*v549.i8, *v561.i8), *v551.i8, *v558.i8);
      v563 = vmlal_high_s16(vmull_high_s16(v549, v561), v551, v558);
      v564 = vrshrn_high_n_s32(vrshrn_n_s32(v559, 0xDuLL), v560, 0xDuLL);
      v565 = vrshrn_high_n_s32(vrshrn_n_s32(v562, 0xDuLL), v563, 0xDuLL);
      v566 = vqaddq_s16(v543, v554);
      v567 = vqsubq_s16(v543, v554);
      v568 = vqsubq_s16(v546, v553);
      v569 = vqaddq_s16(v546, v553);
      v570 = vdupq_n_s16(0x1F63u);
      v571 = vdupq_n_s16(0x63Eu);
      v572 = vmlal_s16(vmull_s16(*v566.i8, *v571.i8), *v569.i8, *v570.i8);
      v573 = vmlal_high_s16(vmull_high_s16(v566, v571), v569, v570);
      v574 = vdupq_n_s16(0xE09Du);
      v575 = vmlal_s16(vmull_s16(*v566.i8, *v574.i8), *v569.i8, *v571.i8);
      v576 = vmlal_high_s16(vmull_high_s16(v566, v574), v569, v571);
      v577 = vrshrn_high_n_s32(vrshrn_n_s32(v572, 0xDuLL), v573, 0xDuLL);
      v578 = vrshrn_high_n_s32(vrshrn_n_s32(v575, 0xDuLL), v576, 0xDuLL);
      v579 = vdupq_n_s16(0x11C7u);
      v580 = vdupq_n_s16(0x1A9Bu);
      v581 = vmlal_s16(vmull_s16(*v567.i8, *v580.i8), *v568.i8, *v579.i8);
      v582 = vmlal_high_s16(vmull_high_s16(v567, v580), v568, v579);
      v583 = vdupq_n_s16(0xEE39u);
      v584 = vrhaddq_s16(v555, 0);
      v585 = vrhaddq_s16(v577, 0);
      v586 = vrhaddq_s16(v564, 0);
      v587 = vrhaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v567.i8, *v583.i8), *v568.i8, *v580.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v567, v583), v568, v580), 0xDuLL), 0);
      v588 = vrhaddq_s16(v557, 0);
      v589 = vrhaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v581, 0xDuLL), v582, 0xDuLL), 0);
      v590 = vrhaddq_s16(v565, 0);
      v591 = vrhaddq_s16(v578, 0);
      v592 = vtrn1q_s16(v584, v585);
      v593 = vtrn2q_s16(v584, v585);
      v594 = vtrn1q_s16(v586, v587);
      v595 = vtrn2q_s16(v586, v587);
      v596 = vtrn1q_s16(v588, v589);
      v597 = vtrn2q_s16(v588, v589);
      v598 = vtrn1q_s16(v590, v591);
      v599 = vtrn2q_s16(v590, v591);
      v600 = vtrn1q_s32(v592, v594);
      v601 = vtrn2q_s32(v592, v594);
      v602 = vtrn1q_s32(v593, v595);
      v603 = vtrn2q_s32(v593, v595);
      v604 = vtrn1q_s32(v596, v598);
      v605 = vtrn2q_s32(v596, v598);
      v606 = vtrn1q_s32(v597, v599);
      v607 = vtrn2q_s32(v597, v599);
      v608 = vzip2q_s64(v600, v604);
      v600.i64[1] = v604.i64[0];
      v609 = vzip2q_s64(v602, v606);
      v602.i64[1] = v606.i64[0];
      v610 = vzip2q_s64(v601, v605);
      v601.i64[1] = v605.i64[0];
      v611 = vzip2q_s64(v603, v607);
      v603.i64[1] = v607.i64[0];
      v715 = v602;
      v716 = v600;
      v713 = v603;
      v714 = v601;
      v711 = v609;
      v712 = v608;
      v709 = v611;
      v710 = v610;
      goto LABEL_19;
    case 6:
    case 7:
      v150 = a2;
      fadst8x8_col_neon(a1, &v709, a3, 13);
      v151 = vrhaddq_s16(v709, 0);
      v152 = vrhaddq_s16(v710, 0);
      v153 = vrhaddq_s16(v711, 0);
      v154 = vrhaddq_s16(v712, 0);
      v155 = vrhaddq_s16(v713, 0);
      v156 = vrhaddq_s16(v714, 0);
      v157 = vrhaddq_s16(v715, 0);
      v158 = vrhaddq_s16(v716, 0);
      v159 = vtrn1q_s16(v151, v152);
      v160 = vtrn2q_s16(v151, v152);
      v161 = vtrn1q_s16(v153, v154);
      v162 = vtrn2q_s16(v153, v154);
      v163 = vtrn1q_s16(v155, v156);
      v164 = vtrn2q_s16(v155, v156);
      v165 = vtrn1q_s16(v157, v158);
      v166 = vtrn2q_s16(v157, v158);
      v167 = vtrn1q_s32(v159, v161);
      v168 = vtrn2q_s32(v159, v161);
      v169 = vtrn1q_s32(v160, v162);
      v170 = vtrn2q_s32(v160, v162);
      v171 = vtrn1q_s32(v163, v165);
      v172 = vtrn2q_s32(v163, v165);
      v173 = vtrn1q_s32(v164, v166);
      v174 = vtrn2q_s32(v164, v166);
      v175 = vzip2q_s64(v167, v171);
      v167.i64[1] = v171.i64[0];
      v176 = vzip2q_s64(v169, v173);
      v169.i64[1] = v173.i64[0];
      v177 = vzip2q_s64(v168, v172);
      v168.i64[1] = v172.i64[0];
      v178 = vzip2q_s64(v170, v174);
      v170.i64[1] = v174.i64[0];
      v715 = v169;
      v716 = v167;
      v713 = v170;
      v714 = v168;
      v711 = v176;
      v712 = v175;
      v709 = v178;
      v710 = v177;
      v111 = &v709;
      a2 = v150;
      goto LABEL_20;
    case 9:
      v280 = vrhaddq_s16(vshlq_n_s16(*a1, 3uLL), 0);
      v281 = vrhaddq_s16(vshlq_n_s16(*(a1 + 2 * a3), 3uLL), 0);
      v282 = vrhaddq_s16(vshlq_n_s16(*(a1 + 4 * a3), 3uLL), 0);
      v283 = vrhaddq_s16(vshlq_n_s16(*(a1 + 6 * a3), 3uLL), 0);
      v284 = vrhaddq_s16(vshlq_n_s16(*(a1 + 8 * a3), 3uLL), 0);
      v285 = vrhaddq_s16(vshlq_n_s16(*(a1 + 10 * a3), 3uLL), 0);
      v286 = vrhaddq_s16(vshlq_n_s16(*(a1 + 12 * a3), 3uLL), 0);
      v287 = vrhaddq_s16(vshlq_n_s16(*(a1 + 14 * a3), 3uLL), 0);
      v288 = vtrn1q_s16(v280, v281);
      v289 = vtrn2q_s16(v280, v281);
      v290 = vtrn1q_s16(v282, v283);
      v291 = vtrn2q_s16(v282, v283);
      v292 = vtrn1q_s16(v284, v285);
      v293 = vtrn2q_s16(v284, v285);
      v294 = vtrn1q_s16(v286, v287);
      v295 = vtrn2q_s16(v286, v287);
      v296 = vtrn1q_s32(v288, v290);
      v297 = vtrn2q_s32(v288, v290);
      v298 = vtrn1q_s32(v289, v291);
      v299 = vtrn2q_s32(v289, v291);
      v300 = vtrn1q_s32(v292, v294);
      v301 = vtrn2q_s32(v292, v294);
      v302 = vtrn1q_s32(v293, v295);
      v303 = vtrn2q_s32(v293, v295);
      v304 = vzip2q_s64(v296, v300);
      v296.i64[1] = v300.i64[0];
      v305 = vzip2q_s64(v298, v302);
      v298.i64[1] = v302.i64[0];
      v306 = vzip2q_s64(v297, v301);
      v297.i64[1] = v301.i64[0];
      v307 = vzip2q_s64(v299, v303);
      v299.i64[1] = v303.i64[0];
      v308 = vaddq_s16(v296, v296);
      *a2 = vmovl_s16(*v308.i8);
      a2[1] = vmovl_high_s16(v308);
      v309 = vaddq_s16(v298, v298);
      a2[2] = vmovl_s16(*v309.i8);
      a2[3] = vmovl_high_s16(v309);
      v310 = vaddq_s16(v297, v297);
      a2[4] = vmovl_s16(*v310.i8);
      a2[5] = vmovl_high_s16(v310);
      v311 = vaddq_s16(v299, v299);
      v312 = vaddq_s16(v304, v304);
      v313 = vaddq_s16(v305, v305);
      v314 = vaddq_s16(v306, v306);
      a2[6] = vmovl_s16(*v311.i8);
      a2[7] = vmovl_high_s16(v311);
      a2[8] = vmovl_s16(*v312.i8);
      a2[9] = vmovl_high_s16(v312);
      v315 = vaddq_s16(v307, v307);
      a2[10] = vmovl_s16(*v313.i8);
      a2[11] = vmovl_high_s16(v313);
      v316 = vmovl_s16(*v314.i8);
      v317 = vmovl_high_s16(v314);
      goto LABEL_23;
    case 10:
      v612 = vshlq_n_s16(*a1, 2uLL);
      v613 = vshlq_n_s16(*(a1 + 2 * a3), 2uLL);
      v614 = vshlq_n_s16(*(a1 + 4 * a3), 2uLL);
      v615 = vshlq_n_s16(*(a1 + 6 * a3), 2uLL);
      v616 = vshlq_n_s16(*(a1 + 8 * a3), 2uLL);
      v617 = vshlq_n_s16(*(a1 + 10 * a3), 2uLL);
      v618 = vshlq_n_s16(*(a1 + 12 * a3), 2uLL);
      v619 = vshlq_n_s16(*(a1 + 14 * a3), 2uLL);
      v620 = vqaddq_s16(v612, v619);
      v621 = vqaddq_s16(v613, v618);
      v622 = vqaddq_s16(v614, v617);
      v623 = vqaddq_s16(v615, v616);
      v624 = vqsubq_s16(v615, v616);
      v625 = vqsubq_s16(v614, v617);
      v626 = vqsubq_s16(v613, v618);
      v627 = vqsubq_s16(v612, v619);
      v628 = vqaddq_s16(v620, v623);
      v629 = vqaddq_s16(v621, v622);
      v630 = vqsubq_s16(v621, v622);
      v631 = vqsubq_s16(v620, v623);
      v632 = vdupq_n_s16(0x16A1u);
      v633 = vdupq_n_s16(0xE95Fu);
      v634 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v625.i8, *v632.i8), *v626.i8, *v632.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v625, v632), v626, v632), 0xDuLL);
      v635 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v625.i8, *v633.i8), *v626.i8, *v632.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v625, v633), v626, v632), 0xDuLL);
      v636 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v629.i8, *v632.i8), *v628.i8, *v632.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v629, v632), v628, v632), 0xDuLL);
      v637 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v629.i8, *v633.i8), *v628.i8, *v632.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v629, v633), v628, v632), 0xDuLL);
      v638 = vdupq_n_s16(0x1D90u);
      v639 = vdupq_n_s16(0xC3Fu);
      v640 = vmlal_s16(vmull_s16(*v630.i8, *v639.i8), *v631.i8, *v638.i8);
      v641 = vmlal_high_s16(vmull_high_s16(v630, v639), v631, v638);
      v642 = vdupq_n_s16(0xE270u);
      v643 = vmlal_s16(vmull_s16(*v630.i8, *v642.i8), *v631.i8, *v639.i8);
      v644 = vmlal_high_s16(vmull_high_s16(v630, v642), v631, v639);
      v645 = vrshrn_high_n_s32(vrshrn_n_s32(v640, 0xDuLL), v641, 0xDuLL);
      v646 = vrshrn_high_n_s32(vrshrn_n_s32(v643, 0xDuLL), v644, 0xDuLL);
      v647 = vqaddq_s16(v624, v635);
      v648 = vqsubq_s16(v624, v635);
      v649 = vqsubq_s16(v627, v634);
      v650 = vqaddq_s16(v627, v634);
      v651 = vdupq_n_s16(0x1F63u);
      v652 = vdupq_n_s16(0x63Eu);
      v653 = vmlal_s16(vmull_s16(*v647.i8, *v652.i8), *v650.i8, *v651.i8);
      v654 = vmlal_high_s16(vmull_high_s16(v647, v652), v650, v651);
      v655 = vdupq_n_s16(0xE09Du);
      v656 = vmlal_s16(vmull_s16(*v647.i8, *v655.i8), *v650.i8, *v652.i8);
      v657 = vmlal_high_s16(vmull_high_s16(v647, v655), v650, v652);
      v658 = vrshrn_high_n_s32(vrshrn_n_s32(v653, 0xDuLL), v654, 0xDuLL);
      v659 = vrshrn_high_n_s32(vrshrn_n_s32(v656, 0xDuLL), v657, 0xDuLL);
      v660 = vdupq_n_s16(0x11C7u);
      v661 = vdupq_n_s16(0x1A9Bu);
      v662 = vmlal_s16(vmull_s16(*v648.i8, *v661.i8), *v649.i8, *v660.i8);
      v663 = vdupq_n_s16(0xEE39u);
      v664 = vmlal_high_s16(vmull_high_s16(v648, v661), v649, v660);
      v665 = vrhaddq_s16(v636, 0);
      v666 = vrhaddq_s16(v658, 0);
      v667 = vrhaddq_s16(v645, 0);
      v668 = vrhaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v648.i8, *v663.i8), *v649.i8, *v661.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v648, v663), v649, v661), 0xDuLL), 0);
      v669 = vrhaddq_s16(v637, 0);
      v670 = vrhaddq_s16(vrshrn_high_n_s32(vrshrn_n_s32(v662, 0xDuLL), v664, 0xDuLL), 0);
      v671 = vrhaddq_s16(v646, 0);
      v672 = vrhaddq_s16(v659, 0);
      v673 = vtrn1q_s16(v665, v666);
      v674 = vtrn2q_s16(v665, v666);
      v675 = vtrn1q_s16(v667, v668);
      v676 = vtrn2q_s16(v667, v668);
      v677 = vtrn1q_s16(v669, v670);
      v678 = vtrn2q_s16(v669, v670);
      v679 = vtrn1q_s16(v671, v672);
      v680 = vtrn2q_s16(v671, v672);
      v681 = vtrn1q_s32(v673, v675);
      v682 = vtrn2q_s32(v673, v675);
      v683 = vtrn1q_s32(v674, v676);
      v684 = vtrn2q_s32(v674, v676);
      v685 = vtrn1q_s32(v677, v679);
      v686 = vtrn2q_s32(v677, v679);
      v687 = vtrn1q_s32(v678, v680);
      v688 = vtrn2q_s32(v678, v680);
      v689 = vzip2q_s64(v681, v685);
      v681.i64[1] = v685.i64[0];
      v690 = vzip2q_s64(v683, v687);
      v683.i64[1] = v687.i64[0];
      v691 = vzip2q_s64(v682, v686);
      v682.i64[1] = v686.i64[0];
      v692 = vzip2q_s64(v684, v688);
      v684.i64[1] = v688.i64[0];
      v693 = vaddq_s16(v681, v681);
      *a2 = vmovl_s16(*v693.i8);
      a2[1] = vmovl_high_s16(v693);
      v694 = vaddq_s16(v683, v683);
      a2[2] = vmovl_s16(*v694.i8);
      a2[3] = vmovl_high_s16(v694);
      v695 = vaddq_s16(v682, v682);
      a2[4] = vmovl_s16(*v695.i8);
      a2[5] = vmovl_high_s16(v695);
      v696 = vaddq_s16(v684, v684);
      v697 = vaddq_s16(v689, v689);
      v698 = vaddq_s16(v690, v690);
      v699 = vaddq_s16(v691, v691);
      a2[6] = vmovl_s16(*v696.i8);
      a2[7] = vmovl_high_s16(v696);
      a2[8] = vmovl_s16(*v697.i8);
      a2[9] = vmovl_high_s16(v697);
      v315 = vaddq_s16(v692, v692);
      a2[10] = vmovl_s16(*v698.i8);
      a2[11] = vmovl_high_s16(v698);
      v316 = vmovl_s16(*v699.i8);
      v317 = vmovl_high_s16(v699);
LABEL_23:
      a2[12] = v316;
      a2[13] = v317;
      v700 = vmovl_s16(*v315.i8);
      result = vmovl_high_s16(v315);
      a2[14] = v700;
      a2[15] = result;
      return result;
    case 11:
      v207 = vrhaddq_s16(vshlq_n_s16(*a1, 3uLL), 0);
      v208 = vrhaddq_s16(vshlq_n_s16(*(a1 + 2 * a3), 3uLL), 0);
      v209 = vrhaddq_s16(vshlq_n_s16(*(a1 + 4 * a3), 3uLL), 0);
      v210 = vrhaddq_s16(vshlq_n_s16(*(a1 + 6 * a3), 3uLL), 0);
      v211 = vrhaddq_s16(vshlq_n_s16(*(a1 + 8 * a3), 3uLL), 0);
      v212 = vrhaddq_s16(vshlq_n_s16(*(a1 + 10 * a3), 3uLL), 0);
      v213 = vrhaddq_s16(vshlq_n_s16(*(a1 + 12 * a3), 3uLL), 0);
      v214 = vrhaddq_s16(vshlq_n_s16(*(a1 + 14 * a3), 3uLL), 0);
      v215 = vtrn1q_s16(v207, v208);
      v216 = vtrn2q_s16(v207, v208);
      v217 = vtrn1q_s16(v209, v210);
      v218 = vtrn2q_s16(v209, v210);
      v219 = vtrn1q_s16(v211, v212);
      v220 = vtrn2q_s16(v211, v212);
      v221 = vtrn1q_s16(v213, v214);
      v222 = vtrn2q_s16(v213, v214);
      v223 = vtrn1q_s32(v215, v217);
      v224 = vtrn2q_s32(v215, v217);
      v225 = vtrn1q_s32(v216, v218);
      v226 = vtrn2q_s32(v216, v218);
      v227 = vtrn1q_s32(v219, v221);
      v228 = vtrn2q_s32(v219, v221);
      v229 = vtrn1q_s32(v220, v222);
      v230 = vzip2q_s64(v223, v227);
      v231.i64[0] = v223.i64[0];
      v231.i64[1] = v227.i64[0];
      v232 = vzip2q_s64(v225, v229);
      v225.i64[1] = v229.i64[0];
      v233 = vtrn2q_s32(v220, v222);
      v234 = vzip2q_s64(v224, v228);
      v224.i64[1] = v228.i64[0];
      v235 = vzip2q_s64(v226, v233);
      v226.i64[1] = v233.i64[0];
      v236 = vqaddq_s16(v231, v235);
      v237 = vqaddq_s16(v225, v234);
      v238 = vqaddq_s16(v224, v232);
      v239 = vqaddq_s16(v226, v230);
      v240 = vqsubq_s16(v226, v230);
      v241 = vqsubq_s16(v224, v232);
      v242 = vqsubq_s16(v225, v234);
      v243 = vqsubq_s16(v231, v235);
      v244 = vqaddq_s16(v236, v239);
      v245 = vqaddq_s16(v237, v238);
      v246 = vqsubq_s16(v237, v238);
      v247 = vqsubq_s16(v236, v239);
      v248 = vdupq_n_s16(0x16A1u);
      v249 = vdupq_n_s16(0xE95Fu);
      v250 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v241.i8, *v248.i8), *v242.i8, *v248.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v241, v248), v242, v248), 0xDuLL);
      v251 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v241.i8, *v249.i8), *v242.i8, *v248.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v241, v249), v242, v248), 0xDuLL);
      v252 = vmlal_s16(vmull_s16(*v245.i8, *v248.i8), *v244.i8, *v248.i8);
      v253 = vmlal_high_s16(vmull_high_s16(v245, v248), v244, v248);
      v254 = vmlal_s16(vmull_s16(*v245.i8, *v249.i8), *v244.i8, *v248.i8);
      v255 = vmlal_high_s16(vmull_high_s16(v245, v249), v244, v248);
      *v244.i8 = vrshrn_n_s32(v252, 0xDuLL);
      *v248.i8 = vrshrn_n_s32(v253, 0xDuLL);
      *v253.i8 = vrshrn_n_s32(v254, 0xDuLL);
      *v252.i8 = vrshrn_n_s32(v255, 0xDuLL);
      v256 = vdupq_n_s16(0x1D90u);
      v257 = vdupq_n_s16(0xC3Fu);
      v258 = vmlal_s16(vmull_s16(*v246.i8, *v257.i8), *v247.i8, *v256.i8);
      v259 = vmlal_high_s16(vmull_high_s16(v246, v257), v247, v256);
      v260 = vdupq_n_s16(0xE270u);
      v261 = vmlal_s16(vmull_s16(*v246.i8, *v260.i8), *v247.i8, *v257.i8);
      v262 = vmlal_high_s16(vmull_high_s16(v246, v260), v247, v257);
      *v257.i8 = vrshrn_n_s32(v258, 0xDuLL);
      *v260.i8 = vrshrn_n_s32(v259, 0xDuLL);
      *v246.i8 = vrshrn_n_s32(v261, 0xDuLL);
      *v247.i8 = vrshrn_n_s32(v262, 0xDuLL);
      v263 = vqaddq_s16(v240, v251);
      v264 = vqsubq_s16(v240, v251);
      v265 = vqsubq_s16(v243, v250);
      v266 = vdupq_n_s16(0x1F63u);
      v267 = vqaddq_s16(v243, v250);
      v268 = vdupq_n_s16(0x63Eu);
      v269 = vmlal_s16(vmull_s16(*v263.i8, *v268.i8), *v267.i8, *v266.i8);
      v270 = vmlal_high_s16(vmull_high_s16(v263, v268), v267, v266);
      v271 = vdupq_n_s16(0xE09Du);
      v272 = vmlal_s16(vmull_s16(*v263.i8, *v271.i8), *v267.i8, *v268.i8);
      v273 = vmlal_high_s16(vmull_high_s16(v263, v271), v267, v268);
      *v271.i8 = vrshrn_n_s32(v269, 0xDuLL);
      *v268.i8 = vrshrn_n_s32(v270, 0xDuLL);
      *v267.i8 = vrshrn_n_s32(v272, 0xDuLL);
      v274 = vdupq_n_s16(0x11C7u);
      v275 = vdupq_n_s16(0x1A9Bu);
      v276 = vmlal_s16(vmull_s16(*v264.i8, *v275.i8), *v265.i8, *v274.i8);
      v277 = vmlal_high_s16(vmull_high_s16(v264, v275), v265, v274);
      v278 = vdupq_n_s16(0xEE39u);
      *a2 = vmovl_s16(*v244.i8);
      a2[1] = vmovl_s16(*v248.i8);
      a2[2] = vmovl_s16(*v271.i8);
      a2[3] = vmovl_s16(*v268.i8);
      a2[4] = vmovl_s16(*v257.i8);
      a2[5] = vmovl_s16(*v260.i8);
      a2[6] = vmovl_s16(vrshrn_n_s32(vmlal_s16(vmull_s16(*v264.i8, *v278.i8), *v265.i8, *v275.i8), 0xDuLL));
      a2[7] = vmovl_s16(vrshrn_n_s32(vmlal_high_s16(vmull_high_s16(v264, v278), v265, v275), 0xDuLL));
      a2[8] = vmovl_s16(*v253.i8);
      a2[9] = vmovl_s16(*v252.i8);
      a2[10] = vmovl_s16(vrshrn_n_s32(v276, 0xDuLL));
      a2[11] = vmovl_s16(vrshrn_n_s32(v277, 0xDuLL));
      a2[12] = vmovl_s16(*v246.i8);
      a2[13] = vmovl_s16(*v247.i8);
      result = vmovl_s16(*v267.i8);
      v279 = vmovl_s16(vrshrn_n_s32(v273, 0xDuLL));
LABEL_15:
      a2[14] = result;
      a2[15] = v279;
      return result;
    case 12:
    case 14:
      v112 = a2;
      fadst8x8_col_neon(a1, &v709, a3, 13);
      v113 = vrhaddq_s16(v709, 0);
      v114 = vrhaddq_s16(v710, 0);
      v115 = vrhaddq_s16(v711, 0);
      v116 = vrhaddq_s16(v712, 0);
      v117 = vrhaddq_s16(v713, 0);
      v118 = vrhaddq_s16(v714, 0);
      v119 = vrhaddq_s16(v715, 0);
      v120 = vrhaddq_s16(v716, 0);
      v121 = vtrn1q_s16(v113, v114);
      v122 = vtrn2q_s16(v113, v114);
      v123 = vtrn1q_s16(v115, v116);
      v124 = vtrn2q_s16(v115, v116);
      v125 = vtrn1q_s16(v117, v118);
      v126 = vtrn2q_s16(v117, v118);
      v127 = vtrn1q_s16(v119, v120);
      v128 = vtrn2q_s16(v119, v120);
      v129 = vtrn1q_s32(v121, v123);
      v130 = vtrn2q_s32(v121, v123);
      v131 = vtrn1q_s32(v122, v124);
      v132 = vtrn2q_s32(v122, v124);
      v133 = vtrn1q_s32(v125, v127);
      v134 = vtrn2q_s32(v125, v127);
      v135 = vtrn1q_s32(v126, v128);
      v136 = vtrn2q_s32(v126, v128);
      v137 = vzip2q_s64(v129, v133);
      v129.i64[1] = v133.i64[0];
      v138 = vzip2q_s64(v131, v135);
      v131.i64[1] = v135.i64[0];
      v139 = vzip2q_s64(v130, v134);
      v130.i64[1] = v134.i64[0];
      v140 = vzip2q_s64(v132, v136);
      v132.i64[1] = v136.i64[0];
      v141 = vaddq_s16(v129, v129);
      *v112 = vmovl_s16(*v141.i8);
      v112[1] = vmovl_high_s16(v141);
      v142 = vaddq_s16(v131, v131);
      v112[2] = vmovl_s16(*v142.i8);
      v112[3] = vmovl_high_s16(v142);
      v143 = vaddq_s16(v130, v130);
      v112[4] = vmovl_s16(*v143.i8);
      v112[5] = vmovl_high_s16(v143);
      v144 = vaddq_s16(v132, v132);
      v145 = vaddq_s16(v137, v137);
      v146 = vaddq_s16(v138, v138);
      v147 = vaddq_s16(v139, v139);
      v112[6] = vmovl_s16(*v144.i8);
      v112[7] = vmovl_high_s16(v144);
      v112[8] = vmovl_s16(*v145.i8);
      v112[9] = vmovl_high_s16(v145);
      v148 = vaddq_s16(v140, v140);
      v112[10] = vmovl_s16(*v146.i8);
      v112[11] = vmovl_high_s16(v146);
      v112[12] = vmovl_s16(*v147.i8);
      v112[13] = vmovl_high_s16(v147);
      v149 = vmovl_s16(*v148.i8);
      result = vmovl_high_s16(v148);
      v112[14] = v149;
      v112[15] = result;
      return result;
    case 13:
      v179 = vrhaddq_s16(vshlq_n_s16(*a1, 3uLL), 0);
      v180 = vrhaddq_s16(vshlq_n_s16(*(a1 + 2 * a3), 3uLL), 0);
      v181 = vrhaddq_s16(vshlq_n_s16(*(a1 + 4 * a3), 3uLL), 0);
      v182 = vrhaddq_s16(vshlq_n_s16(*(a1 + 6 * a3), 3uLL), 0);
      v183 = vrhaddq_s16(vshlq_n_s16(*(a1 + 8 * a3), 3uLL), 0);
      v184 = vrhaddq_s16(vshlq_n_s16(*(a1 + 10 * a3), 3uLL), 0);
      v185 = vrhaddq_s16(vshlq_n_s16(*(a1 + 12 * a3), 3uLL), 0);
      v186 = vrhaddq_s16(vshlq_n_s16(*(a1 + 14 * a3), 3uLL), 0);
      v187 = vtrn1q_s16(v179, v180);
      v188 = vtrn2q_s16(v179, v180);
      v189 = vtrn1q_s16(v181, v182);
      v190 = vtrn2q_s16(v181, v182);
      v191 = vtrn1q_s16(v183, v184);
      v192 = vtrn2q_s16(v183, v184);
      v193 = vtrn1q_s16(v185, v186);
      v194 = vtrn2q_s16(v185, v186);
      v195 = vtrn1q_s32(v187, v189);
      v196 = vtrn2q_s32(v187, v189);
      v197 = vtrn1q_s32(v188, v190);
      v198 = vtrn2q_s32(v188, v190);
      v199 = vtrn1q_s32(v191, v193);
      v200 = vtrn2q_s32(v191, v193);
      v201 = vtrn1q_s32(v192, v194);
      v202 = vtrn2q_s32(v192, v194);
      v203 = vzip2q_s64(v195, v199);
      v195.i64[1] = v199.i64[0];
      v204 = vzip2q_s64(v197, v201);
      v197.i64[1] = v201.i64[0];
      v205 = vzip2q_s64(v196, v200);
      v196.i64[1] = v200.i64[0];
      v206 = vzip2q_s64(v198, v202);
      v198.i64[1] = v202.i64[0];
      v701 = v195;
      v702 = v197;
      v703 = v196;
      v704 = v198;
      v705 = v203;
      v706 = v204;
      v707 = v205;
      v708 = v206;
      v111 = &v701;
      goto LABEL_20;
    case 15:
      v422 = vrhaddq_s16(vshlq_n_s16(*a1, 3uLL), 0);
      v423 = vrhaddq_s16(vshlq_n_s16(*(a1 + 2 * a3), 3uLL), 0);
      v424 = vrhaddq_s16(vshlq_n_s16(*(a1 + 4 * a3), 3uLL), 0);
      v425 = vrhaddq_s16(vshlq_n_s16(*(a1 + 6 * a3), 3uLL), 0);
      v426 = vrhaddq_s16(vshlq_n_s16(*(a1 + 8 * a3), 3uLL), 0);
      v427 = vrhaddq_s16(vshlq_n_s16(*(a1 + 10 * a3), 3uLL), 0);
      v428 = vrhaddq_s16(vshlq_n_s16(*(a1 + 12 * a3), 3uLL), 0);
      v429 = vrhaddq_s16(vshlq_n_s16(*(a1 + 14 * a3), 3uLL), 0);
      v430 = vtrn1q_s16(v422, v423);
      v431 = vtrn2q_s16(v422, v423);
      v432 = vtrn1q_s16(v424, v425);
      v433 = vtrn2q_s16(v424, v425);
      v434 = vtrn1q_s16(v426, v427);
      v435 = vtrn2q_s16(v426, v427);
      v436 = vtrn1q_s16(v428, v429);
      v437 = vtrn2q_s16(v428, v429);
      v438 = vtrn1q_s32(v430, v432);
      v439 = vtrn2q_s32(v430, v432);
      v440 = vtrn1q_s32(v431, v433);
      v441 = vtrn2q_s32(v431, v433);
      v442 = vtrn1q_s32(v434, v436);
      v443 = vtrn2q_s32(v434, v436);
      v444 = vtrn1q_s32(v435, v437);
      v445 = vtrn2q_s32(v435, v437);
      v446 = vzip2q_s64(v438, v442);
      v438.i64[1] = v442.i64[0];
      v447 = vzip2q_s64(v440, v444);
      v440.i64[1] = v444.i64[0];
      v448 = vzip2q_s64(v439, v443);
      v439.i64[1] = v443.i64[0];
      v449 = vzip2q_s64(v441, v445);
      v441.i64[1] = v445.i64[0];
      v715 = v440;
      v716 = v438;
      v713 = v441;
      v714 = v439;
      v711 = v447;
      v712 = v446;
      v709 = v449;
      v710 = v448;
LABEL_19:
      v111 = &v709;
LABEL_20:
      result.i64[0] = fadst8x8_row_neon(v111, a2, 8, 13).u64[0];
      break;
    default:
      return result;
  }

  return result;
}

uint64_t lowbd_fwd_txfm2d_16x16_neon(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = a3;
  v6 = a1;
  v144 = *MEMORY[0x277D85DE8];
  v7 = col_txfm8x16_arr[a4];
  v8 = row_txfm8x16_arr[a4];
  v9 = 1;
  if (a4 > 0xF)
  {
    goto LABEL_8;
  }

  if (((1 << a4) & 0x4110) != 0)
  {
    goto LABEL_7;
  }

  if (((1 << a4) & 0x80A0) != 0)
  {
    v9 = 0;
    goto LABEL_8;
  }

  if (a4 == 6)
  {
    v9 = 0;
LABEL_7:
    v6 = a1 + 30 * a3;
    v4 = -a3;
  }

LABEL_8:
  (v7)(v6, &v128, v4, 13);
  v128 = vrshrq_n_s16(v128, 2uLL);
  v129 = vrshrq_n_s16(v129, 2uLL);
  v130 = vrshrq_n_s16(v130, 2uLL);
  v131 = vrshrq_n_s16(v131, 2uLL);
  v132 = vrshrq_n_s16(v132, 2uLL);
  v133 = vrshrq_n_s16(v133, 2uLL);
  v134 = vrshrq_n_s16(v134, 2uLL);
  v135 = vrshrq_n_s16(v135, 2uLL);
  v10 = vtrn1q_s16(v128, v129);
  v11 = vtrn2q_s16(v128, v129);
  v136 = vrshrq_n_s16(v136, 2uLL);
  v137 = vrshrq_n_s16(v137, 2uLL);
  v12 = vtrn1q_s16(v130, v131);
  v13 = vtrn2q_s16(v130, v131);
  v14 = vtrn1q_s16(v132, v133);
  v138 = vrshrq_n_s16(v138, 2uLL);
  v139 = vrshrq_n_s16(v139, 2uLL);
  v15 = vtrn2q_s16(v132, v133);
  v16 = vtrn1q_s16(v134, v135);
  v17 = vtrn2q_s16(v134, v135);
  v18 = vtrn1q_s32(v10, v12);
  v140 = vrshrq_n_s16(v140, 2uLL);
  v141 = vrshrq_n_s16(v141, 2uLL);
  v142 = vrshrq_n_s16(v142, 2uLL);
  v143 = vrshrq_n_s16(v143, 2uLL);
  v19 = vtrn2q_s32(v10, v12);
  v20 = vtrn1q_s32(v11, v13);
  v21 = vtrn2q_s32(v11, v13);
  v22 = vtrn1q_s32(v14, v16);
  v23 = vtrn2q_s32(v14, v16);
  v24 = vtrn1q_s32(v15, v17);
  v25 = vtrn2q_s32(v15, v17);
  v26 = vzip2q_s64(v18, v22);
  v18.i64[1] = v22.i64[0];
  v27 = vzip2q_s64(v20, v24);
  v20.i64[1] = v24.i64[0];
  v28 = vzip2q_s64(v19, v23);
  v19.i64[1] = v23.i64[0];
  v29 = vzip2q_s64(v21, v25);
  v21.i64[1] = v25.i64[0];
  v96 = v18;
  v97 = v20;
  v98 = v19;
  v99 = v21;
  v30 = vtrn1q_s16(v136, v137);
  v31 = vtrn2q_s16(v136, v137);
  v100 = v26;
  v101 = v27;
  v32 = vtrn1q_s16(v138, v139);
  v33 = vtrn2q_s16(v138, v139);
  v34 = vtrn1q_s16(v140, v141);
  v102 = v28;
  v103 = v29;
  v35 = vtrn2q_s16(v140, v141);
  v36 = vtrn1q_s16(v142, v143);
  v37 = vtrn2q_s16(v142, v143);
  v38 = vtrn1q_s32(v30, v32);
  v39 = vtrn2q_s32(v30, v32);
  v40 = vtrn1q_s32(v31, v33);
  v41 = vtrn2q_s32(v31, v33);
  v42 = vtrn1q_s32(v34, v36);
  v43 = vtrn2q_s32(v34, v36);
  v44 = vtrn1q_s32(v35, v37);
  v45 = vtrn2q_s32(v35, v37);
  v46 = vzip2q_s64(v38, v42);
  v38.i64[1] = v42.i64[0];
  v47 = vzip2q_s64(v40, v44);
  v40.i64[1] = v44.i64[0];
  v48 = vzip2q_s64(v39, v43);
  v39.i64[1] = v43.i64[0];
  v49 = vzip2q_s64(v41, v45);
  v41.i64[1] = v45.i64[0];
  v112 = v38;
  v113 = v40;
  v114 = v39;
  v115 = v41;
  v116 = v46;
  v117 = v47;
  v118 = v48;
  v119 = v49;
  (v7)(v6 + 16, &v128, v4, 13);
  v128 = vrshrq_n_s16(v128, 2uLL);
  v129 = vrshrq_n_s16(v129, 2uLL);
  v130 = vrshrq_n_s16(v130, 2uLL);
  v131 = vrshrq_n_s16(v131, 2uLL);
  v132 = vrshrq_n_s16(v132, 2uLL);
  v133 = vrshrq_n_s16(v133, 2uLL);
  v134 = vrshrq_n_s16(v134, 2uLL);
  v135 = vrshrq_n_s16(v135, 2uLL);
  v50 = vtrn1q_s16(v128, v129);
  v51 = vtrn2q_s16(v128, v129);
  v136 = vrshrq_n_s16(v136, 2uLL);
  v137 = vrshrq_n_s16(v137, 2uLL);
  v52 = vtrn1q_s16(v130, v131);
  v53 = vtrn2q_s16(v130, v131);
  v54 = vtrn1q_s16(v132, v133);
  v138 = vrshrq_n_s16(v138, 2uLL);
  v139 = vrshrq_n_s16(v139, 2uLL);
  v55 = vtrn2q_s16(v132, v133);
  v56 = vtrn1q_s16(v134, v135);
  v57 = vtrn2q_s16(v134, v135);
  v58 = vtrn1q_s32(v50, v52);
  v140 = vrshrq_n_s16(v140, 2uLL);
  v141 = vrshrq_n_s16(v141, 2uLL);
  v142 = vrshrq_n_s16(v142, 2uLL);
  v143 = vrshrq_n_s16(v143, 2uLL);
  v59 = vtrn2q_s32(v50, v52);
  v60 = vtrn1q_s32(v51, v53);
  v61 = vtrn2q_s32(v51, v53);
  v62 = vtrn1q_s32(v54, v56);
  v63 = vtrn2q_s32(v54, v56);
  v64 = vtrn1q_s32(v55, v57);
  v65 = vtrn2q_s32(v55, v57);
  v66 = vzip2q_s64(v58, v62);
  v67.i64[0] = v58.i64[0];
  v67.i64[1] = v62.i64[0];
  v68 = vzip2q_s64(v60, v64);
  v69.i64[0] = v60.i64[0];
  v69.i64[1] = v64.i64[0];
  v70 = vzip2q_s64(v59, v63);
  v71.i64[0] = v59.i64[0];
  v71.i64[1] = v63.i64[0];
  v72 = vzip2q_s64(v61, v65);
  v73.i64[0] = v61.i64[0];
  v73.i64[1] = v65.i64[0];
  v104 = v67;
  v105 = v69;
  v106 = v71;
  v107 = v73;
  v74 = vtrn1q_s16(v136, v137);
  v75 = vtrn2q_s16(v136, v137);
  v108 = v66;
  v109 = v68;
  v76 = vtrn1q_s16(v138, v139);
  v77 = vtrn2q_s16(v138, v139);
  v78 = vtrn1q_s16(v140, v141);
  v110 = v70;
  v111 = v72;
  v79 = vtrn2q_s16(v140, v141);
  v80 = vtrn1q_s16(v142, v143);
  v81 = vtrn2q_s16(v142, v143);
  v82 = vtrn1q_s32(v74, v76);
  v83 = vtrn2q_s32(v74, v76);
  v84 = vtrn1q_s32(v75, v77);
  v85 = vtrn2q_s32(v75, v77);
  v86 = vtrn1q_s32(v78, v80);
  v87 = vtrn2q_s32(v78, v80);
  v88 = vtrn1q_s32(v79, v81);
  v89 = vtrn2q_s32(v79, v81);
  v90 = vzip2q_s64(v82, v86);
  v82.i64[1] = v86.i64[0];
  v91 = vzip2q_s64(v84, v88);
  v84.i64[1] = v88.i64[0];
  v92 = vzip2q_s64(v83, v87);
  v83.i64[1] = v87.i64[0];
  v93 = vzip2q_s64(v85, v89);
  v85.i64[1] = v89.i64[0];
  v120 = v82;
  v121 = v84;
  v122 = v83;
  v123 = v85;
  v124 = v90;
  v125 = v91;
  v126 = v92;
  v127 = v93;
  if (v9)
  {
    v94 = &v112;
    (v8)(&v96, a2, 16, 12);
  }

  else
  {
    v142 = v97;
    v143 = v96;
    v140 = v99;
    v141 = v98;
    v138 = v101;
    v139 = v100;
    v136 = v103;
    v137 = v102;
    v134 = v69;
    v135 = v67;
    v132 = v73;
    v133 = v71;
    v130 = v68;
    v131 = v66;
    v128 = v72;
    v129 = v70;
    v94 = &v128;
    (v8)(&v128, a2, 16, 12);
    v142 = v113;
    v143 = v112;
    v140 = v115;
    v141 = v114;
    v138 = v117;
    v139 = v116;
    v136 = v119;
    v137 = v118;
    v134 = v121;
    v135 = v120;
    v132 = v123;
    v133 = v122;
    v130 = v125;
    v131 = v124;
    v128 = v127;
    v129 = v126;
  }

  return (v8)(v94, a2 + 32, 16, 12);
}

int32x4_t *lowbd_fwd_txfm2d_32x32_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v7 = v4;
  v9 = v8;
  v10 = v3;
  v159 = *MEMORY[0x277D85DE8];
  if ((0xF1FEuLL >> v5))
  {
    v14 = v6;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    av1_get_fwd_txfm_cfg(v5, 3u, &v123);
    return fwd_txfm2d_c(v10, v9, v7, &v123, v155, v14);
  }

  v11 = col_txfm8x32_arr[v5];
  v12 = row_txfm8x32_arr[v5];
  v13 = 1;
  if (v5 <= 0xF)
  {
    if (((1 << v5) & 0x4110) != 0)
    {
LABEL_9:
      v10 = (v3 + 62 * v4);
      v7 = -v4;
      goto LABEL_10;
    }

    if (((1 << v5) & 0x80A0) != 0)
    {
      v13 = 0;
      goto LABEL_10;
    }

    if (v5 == 6)
    {
      v13 = 0;
      goto LABEL_9;
    }
  }

LABEL_10:
  for (i = 0; i != 32; i += 8)
  {
    (v11)(v10, &v123, v7, 12);
    v123 = vrshrq_n_s16(v123, 4uLL);
    v124 = vrshrq_n_s16(v124, 4uLL);
    v125 = vrshrq_n_s16(v125, 4uLL);
    v126 = vrshrq_n_s16(v126, 4uLL);
    v127 = vrshrq_n_s16(v127, 4uLL);
    v128 = vrshrq_n_s16(v128, 4uLL);
    v129 = vrshrq_n_s16(v129, 4uLL);
    v130 = vrshrq_n_s16(v130, 4uLL);
    v17 = vtrn1q_s16(v123, v124);
    v18 = vtrn2q_s16(v123, v124);
    v19 = vtrn1q_s16(v125, v126);
    v20 = vtrn2q_s16(v125, v126);
    v21 = vtrn1q_s16(v127, v128);
    v22 = vtrn2q_s16(v127, v128);
    v23 = vtrn1q_s16(v129, v130);
    v24 = vtrn2q_s16(v129, v130);
    v25 = vtrn1q_s32(v17, v19);
    v26 = vtrn2q_s32(v17, v19);
    v27 = vtrn1q_s32(v18, v20);
    v28 = vtrn1q_s32(v21, v23);
    v29 = vtrn2q_s32(v21, v23);
    v30 = vtrn1q_s32(v22, v24);
    v31 = vzip2q_s64(v25, v28);
    v25.i64[1] = v28.i64[0];
    v32 = vzip2q_s64(v27, v30);
    v27.i64[1] = v30.i64[0];
    v33 = vzip2q_s64(v26, v29);
    v26.i64[1] = v29.i64[0];
    v34 = vtrn2q_s32(v18, v20);
    v35 = vtrn2q_s32(v22, v24);
    v36 = vzip2q_s64(v34, v35);
    v34.i64[1] = v35.i64[0];
    v37 = vrshrq_n_s16(v131, 4uLL);
    v38 = vrshrq_n_s16(v132, 4uLL);
    v131 = v37;
    v132 = v38;
    v39 = &v155[i];
    *v39 = v25;
    v39[1] = v27;
    v40 = vrshrq_n_s16(v133, 4uLL);
    v41 = vrshrq_n_s16(v134, 4uLL);
    v133 = v40;
    v134 = v41;
    v39[2] = v26;
    v39[3] = v34;
    v42 = vrshrq_n_s16(v135, 4uLL);
    v43 = vrshrq_n_s16(v136, 4uLL);
    v135 = v42;
    v136 = v43;
    v39[4] = v31;
    v39[5] = v32;
    v44 = vrshrq_n_s16(v137, 4uLL);
    v45 = vrshrq_n_s16(v138, 4uLL);
    v137 = v44;
    v138 = v45;
    v39[6] = v33;
    v39[7] = v36;
    v46 = vtrn1q_s16(v37, v38);
    v47 = vtrn2q_s16(v37, v38);
    v48 = vtrn1q_s16(v40, v41);
    v49 = vtrn2q_s16(v40, v41);
    v50 = vtrn1q_s16(v42, v43);
    v51 = vtrn2q_s16(v42, v43);
    v52 = vtrn1q_s16(v44, v45);
    v53 = vtrn2q_s16(v44, v45);
    v54 = vtrn1q_s32(v46, v48);
    v55 = vtrn2q_s32(v46, v48);
    v56 = vtrn1q_s32(v47, v49);
    v57 = vtrn2q_s32(v47, v49);
    v58 = vtrn1q_s32(v50, v52);
    v59 = vtrn2q_s32(v50, v52);
    v60 = vtrn1q_s32(v51, v53);
    v61 = vzip2q_s64(v54, v58);
    v54.i64[1] = v58.i64[0];
    v62 = vzip2q_s64(v56, v60);
    v56.i64[1] = v60.i64[0];
    v63 = vzip2q_s64(v55, v59);
    v55.i64[1] = v59.i64[0];
    v64 = vtrn2q_s32(v51, v53);
    v65 = vzip2q_s64(v57, v64);
    v57.i64[1] = v64.i64[0];
    v66 = vrshrq_n_s16(v139, 4uLL);
    v67 = vrshrq_n_s16(v140, 4uLL);
    v139 = v66;
    v140 = v67;
    v39[32] = v54;
    v39[33] = v56;
    v68 = vrshrq_n_s16(v141, 4uLL);
    v69 = vrshrq_n_s16(v142, 4uLL);
    v141 = v68;
    v142 = v69;
    v39[34] = v55;
    v39[35] = v57;
    v70 = vrshrq_n_s16(v143, 4uLL);
    v71 = vrshrq_n_s16(v144, 4uLL);
    v143 = v70;
    v144 = v71;
    v39[36] = v61;
    v39[37] = v62;
    v72 = vrshrq_n_s16(v145, 4uLL);
    v73 = vrshrq_n_s16(v146, 4uLL);
    v145 = v72;
    v146 = v73;
    v39[38] = v63;
    v39[39] = v65;
    v74 = vtrn1q_s16(v66, v67);
    v75 = vtrn2q_s16(v66, v67);
    v76 = vtrn1q_s16(v68, v69);
    v77 = vtrn2q_s16(v68, v69);
    v78 = vtrn1q_s16(v70, v71);
    v79 = vtrn2q_s16(v70, v71);
    v80 = vtrn1q_s16(v72, v73);
    v81 = vtrn2q_s16(v72, v73);
    v82 = vtrn1q_s32(v74, v76);
    v83 = vtrn2q_s32(v74, v76);
    v84 = vtrn1q_s32(v75, v77);
    v85 = vtrn2q_s32(v75, v77);
    v86 = vtrn1q_s32(v78, v80);
    v87 = vtrn2q_s32(v78, v80);
    v88 = vtrn1q_s32(v79, v81);
    v89 = vzip2q_s64(v82, v86);
    v82.i64[1] = v86.i64[0];
    v90 = vzip2q_s64(v84, v88);
    v84.i64[1] = v88.i64[0];
    v91 = vtrn2q_s32(v79, v81);
    v92 = vzip2q_s64(v83, v87);
    v83.i64[1] = v87.i64[0];
    v93 = vzip2q_s64(v85, v91);
    v85.i64[1] = v91.i64[0];
    v94 = vrshrq_n_s16(v147, 4uLL);
    v95 = vrshrq_n_s16(v148, 4uLL);
    v147 = v94;
    v148 = v95;
    v39[64] = v82;
    v39[65] = v84;
    v96 = vrshrq_n_s16(v149, 4uLL);
    v97 = vrshrq_n_s16(v150, 4uLL);
    v149 = v96;
    v150 = v97;
    v39[66] = v83;
    v39[67] = v85;
    v98 = vrshrq_n_s16(v151, 4uLL);
    v99 = vrshrq_n_s16(v152, 4uLL);
    v151 = v98;
    v152 = v99;
    v39[68] = v89;
    v39[69] = v90;
    v100 = vtrn1q_s16(v94, v95);
    v101 = vtrn2q_s16(v94, v95);
    v102 = vtrn1q_s16(v96, v97);
    v103 = vtrn2q_s16(v96, v97);
    v104 = vrshrq_n_s16(v153, 4uLL);
    v105 = vrshrq_n_s16(v154, 4uLL);
    v153 = v104;
    v154 = v105;
    v39[70] = v92;
    v106 = vtrn1q_s16(v98, v99);
    v107 = vtrn2q_s16(v98, v99);
    v108 = vtrn1q_s16(v104, v105);
    v109 = vtrn2q_s16(v104, v105);
    v110 = vtrn1q_s32(v100, v102);
    v111 = vtrn2q_s32(v100, v102);
    v112 = vtrn1q_s32(v101, v103);
    v113 = vtrn2q_s32(v101, v103);
    v114 = vtrn1q_s32(v106, v108);
    v115 = vtrn2q_s32(v106, v108);
    v116 = vtrn1q_s32(v107, v109);
    v117 = vtrn2q_s32(v107, v109);
    v118 = vzip2q_s64(v110, v114);
    v110.i64[1] = v114.i64[0];
    v119 = vzip2q_s64(v112, v116);
    v112.i64[1] = v116.i64[0];
    v120 = vzip2q_s64(v111, v115);
    v111.i64[1] = v115.i64[0];
    v121 = vzip2q_s64(v113, v117);
    v113.i64[1] = v117.i64[0];
    v39[71] = v93;
    v39[96] = v110;
    v39[97] = v112;
    v39[98] = v111;
    v39[99] = v113;
    v39[100] = v118;
    v39[101] = v119;
    v39[102] = v120;
    v39[103] = v121;
    v10 += 2;
  }

  if (v13)
  {
    (v12)(v155, v9, 32, 12);
    (v12)(v156, &v9[2], 32, 12);
    (v12)(v157, &v9[4], 32, 12);
    v122 = v158;
  }

  else
  {
    v153 = v155[1];
    v154 = v155[0];
    v151 = v155[3];
    v152 = v155[2];
    v149 = v155[5];
    v150 = v155[4];
    v147 = v155[7];
    v148 = v155[6];
    v145 = v155[9];
    v146 = v155[8];
    v143 = v155[11];
    v144 = v155[10];
    v141 = v155[13];
    v142 = v155[12];
    v139 = v155[15];
    v140 = v155[14];
    v137 = v155[17];
    v138 = v155[16];
    v135 = v155[19];
    v136 = v155[18];
    v133 = v155[21];
    v134 = v155[20];
    v131 = v155[23];
    v132 = v155[22];
    v129 = v155[25];
    v130 = v155[24];
    v127 = v155[27];
    v128 = v155[26];
    v125 = v155[29];
    v126 = v155[28];
    v123 = v155[31];
    v124 = v155[30];
    (v12)(&v123, v9, 32, 12);
    v153 = v156[1];
    v154 = v156[0];
    v151 = v156[3];
    v152 = v156[2];
    v149 = v156[5];
    v150 = v156[4];
    v147 = v156[7];
    v148 = v156[6];
    v145 = v156[9];
    v146 = v156[8];
    v143 = v156[11];
    v144 = v156[10];
    v141 = v156[13];
    v142 = v156[12];
    v139 = v156[15];
    v140 = v156[14];
    v137 = v156[17];
    v138 = v156[16];
    v135 = v156[19];
    v136 = v156[18];
    v133 = v156[21];
    v134 = v156[20];
    v131 = v156[23];
    v132 = v156[22];
    v129 = v156[25];
    v130 = v156[24];
    v127 = v156[27];
    v128 = v156[26];
    v125 = v156[29];
    v126 = v156[28];
    v123 = v156[31];
    v124 = v156[30];
    (v12)(&v123, &v9[2], 32, 12);
    v153 = v157[1];
    v154 = v157[0];
    v151 = v157[3];
    v152 = v157[2];
    v149 = v157[5];
    v150 = v157[4];
    v147 = v157[7];
    v148 = v157[6];
    v145 = v157[9];
    v146 = v157[8];
    v143 = v157[11];
    v144 = v157[10];
    v141 = v157[13];
    v142 = v157[12];
    v139 = v157[15];
    v140 = v157[14];
    v137 = v157[17];
    v138 = v157[16];
    v135 = v157[19];
    v136 = v157[18];
    v133 = v157[21];
    v134 = v157[20];
    v131 = v157[23];
    v132 = v157[22];
    v129 = v157[25];
    v130 = v157[24];
    v127 = v157[27];
    v128 = v157[26];
    v125 = v157[29];
    v126 = v157[28];
    v123 = v157[31];
    v124 = v157[30];
    (v12)(&v123, &v9[4], 32, 12);
    v153 = v158[1];
    v154 = v158[0];
    v151 = v158[3];
    v152 = v158[2];
    v149 = v158[5];
    v150 = v158[4];
    v147 = v158[7];
    v148 = v158[6];
    v145 = v158[9];
    v146 = v158[8];
    v143 = v158[11];
    v144 = v158[10];
    v141 = v158[13];
    v142 = v158[12];
    v139 = v158[15];
    v140 = v158[14];
    v137 = v158[17];
    v138 = v158[16];
    v135 = v158[19];
    v136 = v158[18];
    v133 = v158[21];
    v134 = v158[20];
    v131 = v158[23];
    v132 = v158[22];
    v129 = v158[25];
    v130 = v158[24];
    v127 = v158[27];
    v128 = v158[26];
    v125 = v158[29];
    v126 = v158[28];
    v123 = v158[31];
    v124 = v158[30];
    v122 = &v123;
  }

  return (v12)(v122, &v9[6], 32, 12);
}

void lowbd_fwd_txfm2d_64x64_neon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v6 = v5;
  v7 = v3;
  v8 = 0;
  v1022 = *MEMORY[0x277D85DE8];
  v851 = vdupq_n_s16(0x16A1u);
  v892 = vdupq_n_s16(0xE95Fu);
  v891 = vdupq_n_s16(0x1D90u);
  v850 = vdupq_n_s16(0xC3Fu);
  v889 = vdupq_n_s16(0xE270u);
  v888 = vdupq_n_s16(0xF3C1u);
  v887 = vdupq_n_s16(0x1F63u);
  v890 = vdupq_n_s16(0x63Eu);
  v849 = vdupq_n_s16(0xE09Du);
  v886 = vdupq_n_s16(0xF9C2u);
  v885 = vdupq_n_s16(0x11C7u);
  v884 = vdupq_n_s16(0x1A9Bu);
  v883 = vdupq_n_s16(0xEE39u);
  v848 = vdupq_n_s16(0x1FD9u);
  v659 = vdupq_n_s16(0x323u);
  v882 = vneg_f16(0x6565656565656565);
  v657 = vneg_f16(0x7777777777777777);
  v658 = vneg_f16(0x6161616161616161);
  do
  {
    v9 = 0;
    v10 = v7;
    do
    {
      *(&v958 + v9) = *v10;
      v9 += 16;
      v10 = (v10 + 2 * v4);
    }

    while (v9 != 1024);
    v869 = vqaddq_s16(v972, v1007);
    v867 = vqaddq_s16(v975, v1004);
    v786 = vqaddq_s16(v976, v1003);
    v865 = vqaddq_s16(v980, v999);
    v863 = vqaddq_s16(v983, v996);
    v11 = vqaddq_s16(v987, v992);
    v861 = vqaddq_s16(v988, v991);
    v734 = vqsubq_s16(v987, v992);
    v795 = vqaddq_s16(v984, v995);
    v773 = vqsubq_s16(v988, v991);
    v775 = vqsubq_s16(v984, v995);
    v707 = vqsubq_s16(v983, v996);
    v12 = vqsubq_s16(v980, v999);
    v791 = vqaddq_s16(v979, v1000);
    v13 = vqsubq_s16(v979, v1000);
    v14 = vqsubq_s16(v976, v1003);
    v15 = vqsubq_s16(v975, v1004);
    v16 = vqsubq_s16(v972, v1007);
    v789 = vqaddq_s16(v968, v1011);
    v17 = vqsubq_s16(v968, v1011);
    v859 = vqaddq_s16(v967, v1012);
    v18 = vqsubq_s16(v967, v1012);
    v857 = vqaddq_s16(v964, v1015);
    v852 = vqsubq_s16(v964, v1015);
    v793 = vqaddq_s16(v963, v1016);
    v19 = vqsubq_s16(v963, v1016);
    v797 = vqaddq_s16(v960, v1019);
    v731 = vqsubq_s16(v960, v1019);
    v854 = vqaddq_s16(v959, v1020);
    v781 = vqsubq_s16(v959, v1020);
    v20 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v12.i8, *v892.i8), *v18.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v12, v892), v18, v851), 0xDuLL);
    v739 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v12.i8, *v851.i8), *v18.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v12, v851), v18, v851), 0xDuLL);
    v21 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v13.i8, *v851.i8), *v17.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v13, v851), v17, v851), 0xDuLL);
    v777 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v13.i8, *v892.i8), *v17.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v13, v892), v17, v851), 0xDuLL);
    v22 = vqsubq_s16(v971, v1008);
    v713 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v14.i8, *v851.i8), *v22.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v14, v851), v22, v851), 0xDuLL);
    v710 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v14.i8, *v892.i8), *v22.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v14, v892), v22, v851), 0xDuLL);
    v771 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v15.i8, *v851.i8), *v16.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v15, v851), v16, v851), 0xDuLL);
    v716 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v15.i8, *v892.i8), *v16.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v15, v892), v16, v851), 0xDuLL);
    v783 = vqaddq_s16(v971, v1008);
    v841 = vqaddq_s16(v797, v11);
    v845 = vqaddq_s16(v793, v795);
    v846 = vqaddq_s16(v789, v791);
    v843 = vqaddq_s16(v783, v786);
    v23 = vqsubq_s16(v845, v846);
    v24 = vqsubq_s16(v841, v843);
    v719 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v23.i8, *v851.i8), *v24.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v23, v851), v24, v851), 0xDuLL);
    v725 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v23.i8, *v892.i8), *v24.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v23, v892), v24, v851), 0xDuLL);
    v746 = vqaddq_s16(v977, v1002);
    v748 = vqaddq_s16(v970, v1009);
    v751 = vqaddq_s16(v978, v1001);
    v753 = vqaddq_s16(v969, v1010);
    v755 = vqaddq_s16(v985, v994);
    v757 = vqaddq_s16(v962, v1017);
    v759 = vqaddq_s16(v986, v993);
    v761 = vqaddq_s16(v961, v1018);
    v835 = vqaddq_s16(v761, v759);
    v839 = vqaddq_s16(v757, v755);
    v840 = vqaddq_s16(v753, v751);
    v837 = vqaddq_s16(v748, v746);
    v25 = vqsubq_s16(v839, v840);
    v26 = vqsubq_s16(v835, v837);
    v27 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v25.i8, *v851.i8), *v26.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v25, v851), v26, v851), 0xDuLL);
    v28 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v25.i8, *v892.i8), *v26.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v25, v892), v26, v851), 0xDuLL);
    v29 = vqaddq_s16(v775, v777);
    v30 = vqaddq_s16(v19, v21);
    v765 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v29.i8, *v850.i8), *v30.i8, *v891.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v29, v850), v30, v891), 0xDuLL);
    v763 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v29.i8, *v889.i8), *v30.i8, *v850.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v29, v889), v30, v850), 0xDuLL);
    v31 = vqaddq_s16(v707, v20);
    v32 = vqaddq_s16(v852, v739);
    v681 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v31.i8, *v850.i8), *v32.i8, *v891.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v31, v850), v32, v891), 0xDuLL);
    v742 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v31.i8, *v889.i8), *v32.i8, *v850.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v31, v889), v32, v850), 0xDuLL);
    v828 = vqaddq_s16(v854, v861);
    v831 = vqaddq_s16(v857, v863);
    v833 = vqaddq_s16(v859, v865);
    v829 = vqaddq_s16(v869, v867);
    v728 = vqsubq_s16(v831, v833);
    v722 = vqsubq_s16(v828, v829);
    v33 = vqaddq_s16(v728, v725);
    v34 = vqaddq_s16(v722, v719);
    v814 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v33.i8, *v850.i8), *v34.i8, *v891.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v33, v850), v34, v891), 0xDuLL);
    v811 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v33.i8, *v889.i8), *v34.i8, *v850.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v33, v889), v34, v850), 0xDuLL);
    v767 = vqaddq_s16(v731, v713);
    v769 = vqaddq_s16(v734, v710);
    v35 = vqsubq_s16(v769, v763);
    v36 = vqsubq_s16(v767, v765);
    v37 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v35.i8, *v849.i8), *v36.i8, *v890.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v35, v849), v36, v890), 0xDuLL);
    v38 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v35.i8, *v886.i8), *v36.i8, *v849.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v35, v886), v36, v849), 0xDuLL);
    v744 = vqaddq_s16(v773, v716);
    v39 = vqsubq_s16(v744, v742);
    v40 = vqsubq_s16(v39, v38);
    v41 = vqaddq_s16(v39, v38);
    v682 = vqaddq_s16(v781, v771);
    v42 = vqsubq_s16(v682, v681);
    v43 = vqaddq_s16(v42, v37);
    v44 = vqsubq_s16(v42, v37);
    v673 = vqaddq_s16(v966, v1013);
    v675 = vqaddq_s16(v965, v1014);
    v45 = vqaddq_s16(v973, v1006);
    v46 = vqaddq_s16(v974, v1005);
    v47 = vqaddq_s16(v981, v998);
    v48 = vqaddq_s16(v982, v997);
    v677 = vqaddq_s16(v989, v990);
    v679 = vqaddq_s16(v958, v1021);
    v800 = vqaddq_s16(v679, v677);
    v802 = vqaddq_s16(v675, v48);
    v803 = vqaddq_s16(v673, v47);
    v801 = vqaddq_s16(v45, v46);
    v49 = vqsubq_s16(v802, v803);
    v50 = vqsubq_s16(v800, v801);
    v51 = v28;
    v812 = vqaddq_s16(v49, v28);
    v52 = v27;
    v810 = vqaddq_s16(v50, v27);
    v53 = vqsubq_s16(v812, v811);
    v54 = vqsubq_s16(v810, v814);
    v55 = vdupq_n_s16(0x144Du);
    v56 = vdupq_n_s16(0x18BDu);
    v807 = vmlal_s16(vmull_s16(*v53.i8, *v56.i8), *v54.i8, *v55.i8);
    v806 = vmlal_high_s16(vmull_high_s16(v53, v56), v54, v55);
    v57 = vdupq_n_s16(0xEBB3u);
    v805 = vmlal_s16(vmull_s16(*v53.i8, *v57.i8), *v54.i8, *v56.i8);
    v804 = vmlal_high_s16(vmull_high_s16(v53, v57), v54, v56);
    v689 = vmlal_s16(vmull_s16(*v40.i8, *v56.i8), *v44.i8, *v55.i8);
    v685 = vmlal_s16(vmull_s16(*v40.i8, *v57.i8), *v44.i8, *v56.i8);
    v687 = vmlal_high_s16(vmull_high_s16(v40, v56), v44, v55);
    v683 = vmlal_high_s16(vmull_high_s16(v40, v57), v44, v56);
    v699 = vmlal_s16(vmull_s16(*v41.i8, *v57.i8), *v43.i8, *v56.i8);
    v695 = vmlal_high_s16(vmull_high_s16(v41, v57), v43, v56);
    v58 = vdupq_n_s16(0xE743u);
    v691 = vmlal_high_s16(vmull_high_s16(v41, v58), v43, v57);
    v693 = vmlal_s16(vmull_s16(*v41.i8, *v58.i8), *v43.i8, *v57.i8);
    v59 = vqsubq_s16(v707, v20);
    v60 = vqsubq_s16(v775, v777);
    v61 = vqsubq_s16(v734, v710);
    v62 = vqsubq_s16(v773, v716);
    v63 = vqsubq_s16(v781, v771);
    v64 = vqsubq_s16(v731, v713);
    v65 = vqsubq_s16(v19, v21);
    v66 = vqsubq_s16(v852, v739);
    v67 = vmlal_s16(vmull_s16(*v59.i8, *v889.i8), *v66.i8, *v850.i8);
    v68 = vmlal_high_s16(vmull_high_s16(v59, v889), v66, v850);
    v69 = vmlal_s16(vmull_s16(*v59.i8, *v888.i8), *v66.i8, *v889.i8);
    v70 = vmlal_high_s16(vmull_high_s16(v59, v888), v66, v889);
    v71 = vrshrn_high_n_s32(vrshrn_n_s32(v67, 0xDuLL), v68, 0xDuLL);
    v72 = vrshrn_high_n_s32(vrshrn_n_s32(v69, 0xDuLL), v70, 0xDuLL);
    v73 = vmlal_s16(vmull_s16(*v60.i8, *v889.i8), *v65.i8, *v850.i8);
    v74 = vmlal_high_s16(vmull_high_s16(v60, v889), v65, v850);
    v75 = vmlal_s16(vmull_s16(*v60.i8, *v888.i8), *v65.i8, *v889.i8);
    v76 = vmlal_high_s16(vmull_high_s16(v60, v888), v65, v889);
    v77 = vrshrn_high_n_s32(vrshrn_n_s32(v73, 0xDuLL), v74, 0xDuLL);
    v78 = vrshrn_high_n_s32(vrshrn_n_s32(v75, 0xDuLL), v76, 0xDuLL);
    v79 = vqsubq_s16(v728, v725);
    v80 = vqsubq_s16(v49, v51);
    v81 = vqsubq_s16(v50, v52);
    v82 = vqsubq_s16(v722, v719);
    v83 = vmlal_s16(vmull_s16(*v79.i8, *v888.i8), *v82.i8, *v889.i8);
    v84 = vmlal_high_s16(vmull_high_s16(v79, v888), v82, v889);
    v85 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v79.i8, *v889.i8), *v82.i8, *v850.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v79, v889), v82, v850), 0xDuLL);
    v86 = vrshrn_high_n_s32(vrshrn_n_s32(v83, 0xDuLL), v84, 0xDuLL);
    v87 = vqsubq_s16(v61, v78);
    v88 = vqsubq_s16(v64, v77);
    v89 = vmlal_s16(vmull_s16(*v87.i8, *v884.i8), *v88.i8, *v885.i8);
    v90 = vmlal_high_s16(vmull_high_s16(v87, v884), v88, v885);
    v91 = vmlal_s16(vmull_s16(*v87.i8, *v883.i8), *v88.i8, *v884.i8);
    v92 = vmlal_high_s16(vmull_high_s16(v87, v883), v88, v884);
    v93 = vrshrn_high_n_s32(vrshrn_n_s32(v89, 0xDuLL), v90, 0xDuLL);
    v94 = vrshrn_high_n_s32(vrshrn_n_s32(v91, 0xDuLL), v92, 0xDuLL);
    v95 = vqsubq_s16(v62, v72);
    v96 = vqaddq_s16(v95, v94);
    v97 = vqsubq_s16(v95, v94);
    v98 = vqsubq_s16(v63, v71);
    v99 = vqsubq_s16(v98, v93);
    v100 = vqaddq_s16(v98, v93);
    v101 = vqsubq_s16(v80, v86);
    v102 = vqsubq_s16(v81, v85);
    v103 = vdupq_n_s16(0x1C39u);
    v104 = vdupq_n_s16(0xF16u);
    v853 = vmlal_s16(vmull_s16(*v101.i8, *v104.i8), *v102.i8, *v103.i8);
    v782 = vmlal_high_s16(vmull_high_s16(v101, v104), v102, v103);
    v105 = vdupq_n_s16(0xE3C7u);
    v780 = vmlal_s16(vmull_s16(*v101.i8, *v105.i8), *v102.i8, *v104.i8);
    v779 = vmlal_high_s16(vmull_high_s16(v101, v105), v102, v104);
    v705 = vmlal_s16(vmull_s16(*v96.i8, *v104.i8), *v100.i8, *v103.i8);
    v703 = vmlal_high_s16(vmull_high_s16(v96, v104), v100, v103);
    v701 = vmlal_s16(vmull_s16(*v96.i8, *v105.i8), *v100.i8, *v104.i8);
    v697 = vmlal_high_s16(vmull_high_s16(v96, v105), v100, v104);
    v717 = vmlal_s16(vmull_s16(*v97.i8, *v105.i8), *v99.i8, *v104.i8);
    v714 = vmlal_high_s16(vmull_high_s16(v97, v105), v99, v104);
    v106 = vdupq_n_s16(0xF0EAu);
    v708 = vmlal_high_s16(vmull_high_s16(v97, v106), v99, v105);
    v711 = vmlal_s16(vmull_s16(*v97.i8, *v106.i8), *v99.i8, *v105.i8);
    v107 = vqaddq_s16(v61, v78);
    v108 = vqaddq_s16(v62, v72);
    v109 = vqaddq_s16(v63, v71);
    v110 = vqaddq_s16(v64, v77);
    v111 = vmlal_s16(vmull_s16(*v107.i8, *v883.i8), *v110.i8, *v884.i8);
    v112 = vmlal_high_s16(vmull_high_s16(v107, v883), v110, v884);
    v77.i64[0] = vextq_s8(v107, v107, 8uLL).u64[0];
    v113 = vmlal_s16(vmull_s16(*v107.i8, v882), *v110.i8, *v883.i8);
    v114 = vmlal_high_s16(vmull_s16(*v77.i8, v882), v110, v883);
    v115 = vrshrn_high_n_s32(vrshrn_n_s32(v111, 0xDuLL), v112, 0xDuLL);
    v116 = vrshrn_high_n_s32(vrshrn_n_s32(v113, 0xDuLL), v114, 0xDuLL);
    v117 = vqaddq_s16(v80, v86);
    v118 = vqaddq_s16(v81, v85);
    v119 = vqsubq_s16(v108, v116);
    v120 = vqaddq_s16(v108, v116);
    v121 = vqaddq_s16(v109, v115);
    v122 = vqsubq_s16(v109, v115);
    v123 = vdupq_n_s16(0x94Au);
    v124 = vdupq_n_s16(0x1E9Fu);
    v778 = vmlal_s16(vmull_s16(*v117.i8, *v124.i8), *v118.i8, *v123.i8);
    v776 = vmlal_high_s16(vmull_high_s16(v117, v124), v118, v123);
    v125 = vdupq_n_s16(0xF6B6u);
    v772 = vmlal_high_s16(vmull_high_s16(v117, v125), v118, v124);
    v774 = vmlal_s16(vmull_s16(*v117.i8, *v125.i8), *v118.i8, *v124.i8);
    v729 = vmlal_s16(vmull_s16(*v119.i8, *v124.i8), *v122.i8, *v123.i8);
    v726 = vmlal_high_s16(vmull_high_s16(v119, v124), v122, v123);
    v723 = vmlal_s16(vmull_s16(*v119.i8, *v125.i8), *v122.i8, *v124.i8);
    v720 = vmlal_high_s16(vmull_high_s16(v119, v125), v122, v124);
    v740 = vmlal_s16(vmull_s16(*v120.i8, *v125.i8), *v121.i8, *v124.i8);
    v737 = vmlal_high_s16(vmull_high_s16(v120, v125), v121, v124);
    v735 = vmlal_s16(vmull_s16(*v120.i8, v658), *v121.i8, *v125.i8);
    v732 = vmlal_high_s16(vmull_s16(*&vextq_s8(v120, v120, 8uLL), v658), v121, v125);
    v126 = vqsubq_s16(v45, v46);
    v127 = vqsubq_s16(v869, v867);
    v787 = vqsubq_s16(v783, v786);
    v749 = vqsubq_s16(v748, v746);
    v128 = vqsubq_s16(v753, v751);
    v129 = vqsubq_s16(v789, v791);
    v130 = vqsubq_s16(v859, v865);
    v131 = vqsubq_s16(v673, v47);
    v132 = vqsubq_s16(v675, v48);
    v133 = vqsubq_s16(v857, v863);
    v134 = vqsubq_s16(v793, v795);
    v135 = vqsubq_s16(v757, v755);
    v784 = vqsubq_s16(v761, v759);
    v136 = vqsubq_s16(v797, v11);
    v137 = vqsubq_s16(v854, v861);
    v138 = vqsubq_s16(v679, v677);
    v139 = vmlal_s16(vmull_s16(*v128.i8, *v851.i8), *v135.i8, *v851.i8);
    v140 = vmlal_high_s16(vmull_high_s16(v128, v851), v135, v851);
    v141 = vmlal_s16(vmull_s16(*v128.i8, *v892.i8), *v135.i8, *v851.i8);
    v142 = vmlal_high_s16(vmull_high_s16(v128, v892), v135, v851);
    v143 = vrshrn_high_n_s32(vrshrn_n_s32(v139, 0xDuLL), v140, 0xDuLL);
    v144 = vrshrn_high_n_s32(vrshrn_n_s32(v141, 0xDuLL), v142, 0xDuLL);
    v145 = vmlal_s16(vmull_s16(*v129.i8, *v892.i8), *v134.i8, *v851.i8);
    v146 = vmlal_high_s16(vmull_high_s16(v129, v892), v134, v851);
    v147 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v129.i8, *v851.i8), *v134.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v129, v851), v134, v851), 0xDuLL);
    v148 = vrshrn_high_n_s32(vrshrn_n_s32(v145, 0xDuLL), v146, 0xDuLL);
    v149 = vmlal_s16(vmull_s16(*v130.i8, *v892.i8), *v133.i8, *v851.i8);
    v150 = vmlal_high_s16(vmull_high_s16(v130, v892), v133, v851);
    v151 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v130.i8, *v851.i8), *v133.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v130, v851), v133, v851), 0xDuLL);
    v152 = vrshrn_high_n_s32(vrshrn_n_s32(v149, 0xDuLL), v150, 0xDuLL);
    v153 = vmlal_s16(vmull_s16(*v131.i8, *v892.i8), *v132.i8, *v851.i8);
    v154 = vmlal_high_s16(vmull_high_s16(v131, v892), v132, v851);
    v155 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v131.i8, *v851.i8), *v132.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v131, v851), v132, v851), 0xDuLL);
    v156 = vrshrn_high_n_s32(vrshrn_n_s32(v153, 0xDuLL), v154, 0xDuLL);
    v157 = vqaddq_s16(v787, v148);
    v158 = vqaddq_s16(v136, v147);
    v159 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v157.i8, *v850.i8), *v158.i8, *v891.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v157, v850), v158, v891), 0xDuLL);
    v160 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v157.i8, *v889.i8), *v158.i8, *v850.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v157, v889), v158, v850), 0xDuLL);
    v161 = vqaddq_s16(v749, v144);
    v162 = vqaddq_s16(v784, v143);
    v163 = vmlal_s16(vmull_s16(*v161.i8, *v889.i8), *v162.i8, *v850.i8);
    v164 = vmlal_high_s16(vmull_high_s16(v161, v889), v162, v850);
    v165 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v161.i8, *v850.i8), *v162.i8, *v891.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v161, v850), v162, v891), 0xDuLL);
    v166 = vrshrn_high_n_s32(vrshrn_n_s32(v163, 0xDuLL), v164, 0xDuLL);
    v167 = vqaddq_s16(v127, v152);
    v168 = vqaddq_s16(v137, v151);
    v169 = vqaddq_s16(v167, v160);
    v170 = vqaddq_s16(v168, v159);
    v171 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v169.i8, *v890.i8), *v170.i8, *v887.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v169, v890), v170, v887), 0xDuLL);
    v172 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v169.i8, *v849.i8), *v170.i8, *v890.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v169, v849), v170, v890), 0xDuLL);
    v173 = vqaddq_s16(v126, v156);
    v174 = v126;
    v175 = vqaddq_s16(v138, v155);
    v176 = vqaddq_s16(v173, v166);
    v177 = vqaddq_s16(v175, v165);
    v178 = vqaddq_s16(v176, v172);
    v179 = vdupq_n_s16(0x1FF6u);
    v180 = vdupq_n_s16(0x192u);
    v181 = vqaddq_s16(v177, v171);
    v870 = vmlal_s16(vmull_s16(*v178.i8, *v180.i8), *v181.i8, *v179.i8);
    v182 = vdupq_n_s16(0xE00Au);
    v868 = vmlal_high_s16(vmull_high_s16(v178, v180), v181, v179);
    v866 = vmlal_s16(vmull_s16(*v178.i8, *v182.i8), *v181.i8, *v180.i8);
    v864 = vmlal_high_s16(vmull_high_s16(v178, v182), v181, v180);
    v183 = vqsubq_s16(v176, v172);
    v184 = vqsubq_s16(v177, v171);
    v185 = vdupq_n_s16(0x157Du);
    v186 = vdupq_n_s16(0x17B6u);
    v862 = vmlal_s16(vmull_s16(*v183.i8, *v186.i8), *v184.i8, *v185.i8);
    v860 = vmlal_high_s16(vmull_high_s16(v183, v186), v184, v185);
    v187 = vdupq_n_s16(0xEA83u);
    v858 = vmlal_s16(vmull_s16(*v183.i8, *v187.i8), *v184.i8, *v186.i8);
    v855 = vmlal_high_s16(vmull_high_s16(v183, v187), v184, v186);
    v188 = vqsubq_s16(v167, v160);
    v189 = vqsubq_s16(v173, v166);
    v190 = vqsubq_s16(v175, v165);
    v191 = vqsubq_s16(v168, v159);
    v192 = vmlal_s16(vmull_s16(*v188.i8, *v849.i8), *v191.i8, *v890.i8);
    v193 = vmlal_high_s16(vmull_high_s16(v188, v849), v191, v890);
    v194 = vmlal_s16(vmull_s16(*v188.i8, *v886.i8), *v191.i8, *v849.i8);
    v195 = vmlal_high_s16(vmull_high_s16(v188, v886), v191, v849);
    v196 = vrshrn_high_n_s32(vrshrn_n_s32(v192, 0xDuLL), v193, 0xDuLL);
    v197 = vrshrn_high_n_s32(vrshrn_n_s32(v194, 0xDuLL), v195, 0xDuLL);
    v198 = vqsubq_s16(v189, v197);
    v199 = vdupq_n_s16(0x1CEDu);
    v200 = vdupq_n_s16(0xDAFu);
    v201 = vqsubq_s16(v190, v196);
    v799 = vmlal_s16(vmull_s16(*v198.i8, *v200.i8), *v201.i8, *v199.i8);
    v202 = vdupq_n_s16(0xE313u);
    v798 = vmlal_high_s16(vmull_high_s16(v198, v200), v201, v199);
    v796 = vmlal_s16(vmull_s16(*v198.i8, *v202.i8), *v201.i8, *v200.i8);
    v794 = vmlal_high_s16(vmull_high_s16(v198, v202), v201, v200);
    v203 = vqaddq_s16(v189, v197);
    v204 = vqaddq_s16(v190, v196);
    v205 = vdupq_n_s16(0x1E21u);
    v206 = vdupq_n_s16(0xF538u);
    v792 = vmlal_s16(vmull_s16(*v203.i8, *v206.i8), *v204.i8, *v205.i8);
    v790 = vmlal_high_s16(vmull_high_s16(v203, v206), v204, v205);
    v207 = vqsubq_s16(v749, v144);
    v208 = vqsubq_s16(v787, v148);
    v209 = vqsubq_s16(v127, v152);
    v210 = vqsubq_s16(v174, v156);
    v211 = vqsubq_s16(v138, v155);
    v212 = vqsubq_s16(v137, v151);
    v213 = vqsubq_s16(v136, v147);
    v214 = vqsubq_s16(v784, v143);
    v215 = vmlal_s16(vmull_s16(*v207.i8, *v888.i8), *v214.i8, *v889.i8);
    v216 = vmlal_high_s16(vmull_high_s16(v207, v888), v214, v889);
    v217 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v207.i8, *v889.i8), *v214.i8, *v850.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v207, v889), v214, v850), 0xDuLL);
    v218 = vrshrn_high_n_s32(vrshrn_n_s32(v215, 0xDuLL), v216, 0xDuLL);
    v219 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v208.i8, *v889.i8), *v213.i8, *v850.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v208, v889), v213, v850), 0xDuLL);
    v220 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v208.i8, *v888.i8), *v213.i8, *v889.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v208, v888), v213, v889), 0xDuLL);
    v221 = vqsubq_s16(v209, v220);
    v222 = vqsubq_s16(v212, v219);
    v223 = vmlal_s16(vmull_s16(*v221.i8, *v884.i8), *v222.i8, *v885.i8);
    v224 = vmlal_high_s16(vmull_high_s16(v221, v884), v222, v885);
    v225 = vmlal_s16(vmull_s16(*v221.i8, *v883.i8), *v222.i8, *v884.i8);
    v226 = vmlal_high_s16(vmull_high_s16(v221, v883), v222, v884);
    v227 = vrshrn_high_n_s32(vrshrn_n_s32(v223, 0xDuLL), v224, 0xDuLL);
    v228 = vrshrn_high_n_s32(vrshrn_n_s32(v225, 0xDuLL), v226, 0xDuLL);
    v229 = vqsubq_s16(v210, v218);
    v230 = vqsubq_s16(v211, v217);
    v231 = vqaddq_s16(v229, v228);
    v232 = vdupq_n_s16(0x1F0Au);
    v233 = vqaddq_s16(v230, v227);
    v234 = vdupq_n_s16(0x7C6u);
    v788 = vmlal_s16(vmull_s16(*v231.i8, *v234.i8), *v233.i8, *v232.i8);
    v785 = vmlal_high_s16(vmull_high_s16(v231, v234), v233, v232);
    v235 = vdupq_n_s16(0xE0F6u);
    v760 = vmlal_high_s16(vmull_high_s16(v231, v235), v233, v234);
    v762 = vmlal_s16(vmull_s16(*v231.i8, *v235.i8), *v233.i8, *v234.i8);
    v236 = vqsubq_s16(v229, v228);
    v237 = vdupq_n_s16(0x1074u);
    v238 = vdupq_n_s16(0x1B73u);
    v239 = vqsubq_s16(v230, v227);
    v758 = vmlal_s16(vmull_s16(*v236.i8, *v238.i8), *v239.i8, *v237.i8);
    v240 = vdupq_n_s16(0xEF8Cu);
    v754 = vmlal_s16(vmull_s16(*v236.i8, *v240.i8), *v239.i8, *v238.i8);
    v756 = vmlal_high_s16(vmull_high_s16(v236, v238), v239, v237);
    v752 = vmlal_high_s16(vmull_high_s16(v236, v240), v239, v238);
    v241 = vqaddq_s16(v209, v220);
    v242 = vqaddq_s16(v210, v218);
    v243 = vqaddq_s16(v211, v217);
    v244 = vqaddq_s16(v212, v219);
    v245 = vmlal_s16(vmull_s16(*v241.i8, *v883.i8), *v244.i8, *v884.i8);
    v246 = vmlal_high_s16(vmull_high_s16(v241, v883), v244, v884);
    v219.i64[0] = vextq_s8(v241, v241, 8uLL).u64[0];
    v247 = vmlal_s16(vmull_s16(*v241.i8, v882), *v244.i8, *v883.i8);
    v248 = vmlal_high_s16(vmull_s16(*v219.i8, v882), v244, v883);
    v249 = vrshrn_high_n_s32(vrshrn_n_s32(v245, 0xDuLL), v246, 0xDuLL);
    v250 = vrshrn_high_n_s32(vrshrn_n_s32(v247, 0xDuLL), v248, 0xDuLL);
    v251 = vqsubq_s16(v242, v250);
    v252 = vqsubq_s16(v243, v249);
    v253 = vdupq_n_s16(0x19B4u);
    v254 = vdupq_n_s16(0x1310u);
    v750 = vmlal_s16(vmull_s16(*v251.i8, *v254.i8), *v252.i8, *v253.i8);
    v747 = vmlal_high_s16(vmull_high_s16(v251, v254), v252, v253);
    v255 = vdupq_n_s16(0xE64Cu);
    v678 = vmlal_high_s16(vmull_high_s16(v251, v255), v252, v254);
    v680 = vmlal_s16(vmull_s16(*v251.i8, *v255.i8), *v252.i8, *v254.i8);
    v256 = vqaddq_s16(v242, v250);
    v257 = vqaddq_s16(v243, v249);
    v258 = vdupq_n_s16(0x4B2u);
    v259 = vdupq_n_s16(0x1FA7u);
    v676 = vmlal_s16(vmull_s16(*v256.i8, *v259.i8), *v257.i8, *v258.i8);
    v674 = vmlal_high_s16(vmull_high_s16(v256, v259), v257, v258);
    v260 = vdupq_n_s16(0xFB4Eu);
    v671 = vmlal_high_s16(vmull_high_s16(v256, v260), v257, v259);
    v672 = vmlal_s16(vmull_s16(*v256.i8, *v260.i8), *v257.i8, *v259.i8);
    v660 = vqsubq_s16(v989, v990);
    v661 = vqsubq_s16(v986, v993);
    v662 = vqsubq_s16(v985, v994);
    v664 = vqsubq_s16(v982, v997);
    v261 = vqsubq_s16(v981, v998);
    v262 = vqsubq_s16(v978, v1001);
    v263 = vqsubq_s16(v977, v1002);
    v264 = vqsubq_s16(v974, v1005);
    v265 = vqsubq_s16(v973, v1006);
    v266 = vqsubq_s16(v970, v1009);
    v267 = vqsubq_s16(v969, v1010);
    v268 = vqsubq_s16(v966, v1013);
    v667 = vqsubq_s16(v965, v1014);
    v668 = vqsubq_s16(v962, v1017);
    v663 = vqsubq_s16(v958, v1021);
    v665 = vqsubq_s16(v961, v1018);
    v666 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v261.i8, *v892.i8), *v268.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v261, v892), v268, v851), 0xDuLL);
    v669 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v261.i8, *v851.i8), *v268.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v261, v851), v268, v851), 0xDuLL);
    v670 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v262.i8, *v851.i8), *v267.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v262, v851), v267, v851), 0xDuLL);
    v269 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v262.i8, *v892.i8), *v267.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v262, v892), v267, v851), 0xDuLL);
    v270 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v263.i8, *v851.i8), *v266.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v263, v851), v266, v851), 0xDuLL);
    v271 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v263.i8, *v892.i8), *v266.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v263, v892), v266, v851), 0xDuLL);
    v272 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v264.i8, *v851.i8), *v265.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v264, v851), v265, v851), 0xDuLL);
    v273 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v264.i8, *v892.i8), *v265.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v264, v892), v265, v851), 0xDuLL);
    v274 = vqaddq_s16(v662, v269);
    v275 = vqaddq_s16(v668, v670);
    v276 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v274.i8, *v850.i8), *v275.i8, *v891.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v274, v850), v275, v891), 0xDuLL);
    v277 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v274.i8, *v889.i8), *v275.i8, *v850.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v274, v889), v275, v850), 0xDuLL);
    v278 = vqaddq_s16(v664, v666);
    v279 = vqaddq_s16(v667, v669);
    v280 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v278.i8, *v850.i8), *v279.i8, *v891.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v278, v850), v279, v891), 0xDuLL);
    v281 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v278.i8, *v889.i8), *v279.i8, *v850.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v278, v889), v279, v850), 0xDuLL);
    v282 = vqaddq_s16(v744, v742);
    v283 = vqaddq_s16(v769, v763);
    v284 = vqaddq_s16(v767, v765);
    v285 = vqaddq_s16(v682, v681);
    v286 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v283.i8, *v890.i8), *v284.i8, *v887.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v283, v890), v284, v887), 0xDuLL);
    v287 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v283.i8, *v849.i8), *v284.i8, *v890.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v283, v849), v284, v890), 0xDuLL);
    v288 = vqaddq_s16(v661, v271);
    v289 = vqaddq_s16(v665, v270);
    v290 = vqaddq_s16(v288, v277);
    v291 = vqaddq_s16(v289, v276);
    v292 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v290.i8, *v890.i8), *v291.i8, *v887.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v290, v890), v291, v887), 0xDuLL);
    v293 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v290.i8, *v849.i8), *v291.i8, *v890.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v290, v849), v291, v890), 0xDuLL);
    v294 = vqaddq_s16(v282, v287);
    v295 = vqaddq_s16(v285, v286);
    v296 = vdupq_n_s16(0xE027u);
    v878 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v294.i8, *v659.i8), *v295.i8, *v848.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v294, v659), v295, v848), 0xDuLL);
    v879 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v294.i8, *v296.i8), *v295.i8, *v659.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v294, v296), v295, v659), 0xDuLL);
    v297 = vqaddq_s16(v660, v273);
    v298 = vqaddq_s16(v663, v272);
    v299 = vqaddq_s16(v297, v281);
    v300 = vqaddq_s16(v298, v280);
    v880 = vqaddq_s16(v299, v293);
    v877 = vqaddq_s16(v300, v292);
    v301 = vqsubq_s16(v880, v879);
    v302 = vqsubq_s16(v877, v878);
    v303 = vdupq_n_s16(0x1611u);
    v304 = vdupq_n_s16(0x172Du);
    v876 = vmlal_s16(vmull_s16(*v301.i8, *v304.i8), *v302.i8, *v303.i8);
    v875 = vmlal_high_s16(vmull_high_s16(v301, v304), v302, v303);
    v305 = vdupq_n_s16(0xE9EFu);
    v874 = vmlal_s16(vmull_s16(*v301.i8, *v305.i8), *v302.i8, *v304.i8);
    v873 = vmlal_high_s16(vmull_high_s16(v301, v305), v302, v304);
    v306 = vqsubq_s16(v282, v287);
    v307 = vqsubq_s16(v299, v293);
    v308 = vqsubq_s16(v300, v292);
    v309 = vqsubq_s16(v285, v286);
    v310 = v296;
    v311 = vdupq_n_s16(0xFCDDu);
    v312 = vmlal_s16(vmull_s16(*v306.i8, *v311.i8), *v309.i8, *v296.i8);
    v313 = vmlal_high_s16(vmull_high_s16(v306, v311), v309, v296);
    v314 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v306.i8, *v296.i8), *v309.i8, *v659.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v306, v296), v309, v659), 0xDuLL);
    v315 = vrshrn_high_n_s32(vrshrn_n_s32(v312, 0xDuLL), v313, 0xDuLL);
    v316 = vqsubq_s16(v307, v315);
    v317 = vqsubq_s16(v308, v314);
    v318 = vdupq_n_s16(0x1D41u);
    v319 = vdupq_n_s16(0xCF8u);
    v872 = vmlal_s16(vmull_s16(*v316.i8, *v319.i8), *v317.i8, *v318.i8);
    v827 = vmlal_high_s16(vmull_high_s16(v316, v319), v317, v318);
    v320 = vdupq_n_s16(0xE2BFu);
    v826 = vmlal_s16(vmull_s16(*v316.i8, *v320.i8), *v317.i8, *v319.i8);
    v825 = vmlal_high_s16(vmull_high_s16(v316, v320), v317, v319);
    v321 = vqaddq_s16(v307, v315);
    v322 = vqaddq_s16(v308, v314);
    v323 = vdupq_n_s16(0xB84u);
    v324 = vdupq_n_s16(0x1DDBu);
    v824 = vmlal_s16(vmull_s16(*v321.i8, *v324.i8), *v322.i8, *v323.i8);
    v823 = vmlal_high_s16(vmull_high_s16(v321, v324), v322, v323);
    v325 = vdupq_n_s16(0xF47Cu);
    v822 = vmlal_s16(vmull_s16(*v321.i8, *v325.i8), *v322.i8, *v324.i8);
    v821 = vmlal_high_s16(vmull_high_s16(v321, v325), v322, v324);
    v326 = vqsubq_s16(v288, v277);
    v327 = vqsubq_s16(v297, v281);
    v328 = vqsubq_s16(v298, v280);
    v329 = vqsubq_s16(v289, v276);
    v330 = vmlal_s16(vmull_s16(*v326.i8, *v886.i8), *v329.i8, *v849.i8);
    v331 = vmlal_high_s16(vmull_high_s16(v326, v886), v329, v849);
    v332 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v326.i8, *v849.i8), *v329.i8, *v890.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v326, v849), v329, v890), 0xDuLL);
    v333 = vrshrn_high_n_s32(vrshrn_n_s32(v330, 0xDuLL), v331, 0xDuLL);
    v334 = vrshrn_high_n_s32(vrshrn_n_s32(v689, 0xDuLL), v687, 0xDuLL);
    v335 = vrshrn_high_n_s32(vrshrn_n_s32(v685, 0xDuLL), v683, 0xDuLL);
    v336 = vqsubq_s16(v327, v333);
    v337 = vqsubq_s16(v328, v332);
    v338 = vqaddq_s16(v336, v335);
    v339 = vqaddq_s16(v337, v334);
    v340 = vdupq_n_s16(0x1F39u);
    v341 = vdupq_n_s16(0x703u);
    v820 = vmlal_s16(vmull_s16(*v338.i8, *v341.i8), *v339.i8, *v340.i8);
    v819 = vmlal_high_s16(vmull_high_s16(v338, v341), v339, v340);
    v342 = vdupq_n_s16(0xE0C7u);
    v818 = vmlal_s16(vmull_s16(*v338.i8, *v342.i8), *v339.i8, *v341.i8);
    v817 = vmlal_high_s16(vmull_high_s16(v338, v342), v339, v341);
    v343 = vqsubq_s16(v336, v335);
    v344 = vqsubq_s16(v337, v334);
    v345 = vdupq_n_s16(0x111Fu);
    v346 = vdupq_n_s16(0x1B09u);
    v816 = vmlal_s16(vmull_s16(*v343.i8, *v346.i8), *v344.i8, *v345.i8);
    v815 = vmlal_high_s16(vmull_high_s16(v343, v346), v344, v345);
    v347 = vdupq_n_s16(0xEEE1u);
    v809 = vmlal_s16(vmull_s16(*v343.i8, *v347.i8), *v344.i8, *v346.i8);
    v808 = vmlal_high_s16(vmull_high_s16(v343, v347), v344, v346);
    v348 = vqaddq_s16(v327, v333);
    v349 = vqaddq_s16(v328, v332);
    v350 = vrshrn_high_n_s32(vrshrn_n_s32(v699, 0xDuLL), v695, 0xDuLL);
    v351 = vrshrn_high_n_s32(vrshrn_n_s32(v693, 0xDuLL), v691, 0xDuLL);
    v352 = vqsubq_s16(v348, v351);
    v353 = vqsubq_s16(v349, v350);
    v354 = vdupq_n_s16(0x1A2Au);
    v355 = vdupq_n_s16(0x126Du);
    v770 = vmlal_s16(vmull_s16(*v352.i8, *v355.i8), *v353.i8, *v354.i8);
    v768 = vmlal_high_s16(vmull_high_s16(v352, v355), v353, v354);
    v356 = vdupq_n_s16(0xE5D6u);
    v764 = vmlal_high_s16(vmull_high_s16(v352, v356), v353, v355);
    v766 = vmlal_s16(vmull_s16(*v352.i8, *v356.i8), *v353.i8, *v355.i8);
    v357 = vqaddq_s16(v348, v351);
    v358 = vqaddq_s16(v349, v350);
    v359 = vdupq_n_s16(0x579u);
    v360 = vdupq_n_s16(0x1F87u);
    v745 = vmlal_s16(vmull_s16(*v357.i8, *v360.i8), *v358.i8, *v359.i8);
    v743 = vmlal_high_s16(vmull_high_s16(v357, v360), v358, v359);
    v361 = vdupq_n_s16(0xFA87u);
    v700 = vmlal_s16(vmull_s16(*v357.i8, *v361.i8), *v358.i8, *v360.i8);
    v696 = vmlal_high_s16(vmull_high_s16(v357, v361), v358, v360);
    v362 = vqsubq_s16(v664, v666);
    v363 = vqsubq_s16(v662, v269);
    v364 = vqsubq_s16(v661, v271);
    v365 = vqsubq_s16(v660, v273);
    v366 = vqsubq_s16(v663, v272);
    v367 = vqsubq_s16(v665, v270);
    v368 = vqsubq_s16(v668, v670);
    v369 = vqsubq_s16(v667, v669);
    v370 = vmlal_s16(vmull_s16(*v362.i8, *v889.i8), *v369.i8, *v850.i8);
    v371 = vmlal_high_s16(vmull_high_s16(v362, v889), v369, v850);
    v372 = vmlal_s16(vmull_s16(*v362.i8, *v888.i8), *v369.i8, *v889.i8);
    v373 = vmlal_high_s16(vmull_high_s16(v362, v888), v369, v889);
    v374 = vrshrn_high_n_s32(vrshrn_n_s32(v370, 0xDuLL), v371, 0xDuLL);
    v375 = vrshrn_high_n_s32(vrshrn_n_s32(v372, 0xDuLL), v373, 0xDuLL);
    v376 = vmlal_s16(vmull_s16(*v363.i8, *v888.i8), *v368.i8, *v889.i8);
    v377 = vmlal_high_s16(vmull_high_s16(v363, v888), v368, v889);
    v378 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v363.i8, *v889.i8), *v368.i8, *v850.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v363, v889), v368, v850), 0xDuLL);
    v379 = vrshrn_high_n_s32(vrshrn_n_s32(v376, 0xDuLL), v377, 0xDuLL);
    v380 = vqsubq_s16(v364, v379);
    v381 = vqsubq_s16(v367, v378);
    v382 = vmlal_s16(vmull_s16(*v380.i8, *v883.i8), *v381.i8, *v884.i8);
    v383 = vmlal_high_s16(vmull_high_s16(v380, v883), v381, v884);
    v384 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v380.i8, *v884.i8), *v381.i8, *v885.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v380, v884), v381, v885), 0xDuLL);
    v385 = vrshrn_high_n_s32(vrshrn_n_s32(v382, 0xDuLL), v383, 0xDuLL);
    v386 = vrshrn_high_n_s32(vrshrn_n_s32(v705, 0xDuLL), v703, 0xDuLL);
    v387 = vrshrn_high_n_s32(vrshrn_n_s32(v701, 0xDuLL), v697, 0xDuLL);
    v388 = vqsubq_s16(v365, v375);
    v389 = vqsubq_s16(v366, v374);
    v390 = vqaddq_s16(v388, v385);
    v391 = vqaddq_s16(v389, v384);
    v392 = vqaddq_s16(v390, v387);
    v393 = vqaddq_s16(v391, v386);
    v394 = vdupq_n_s16(0x1FC2u);
    v395 = vdupq_n_s16(0x3EBu);
    v706 = vmlal_s16(vmull_s16(*v392.i8, *v395.i8), *v393.i8, *v394.i8);
    v704 = vmlal_high_s16(vmull_high_s16(v392, v395), v393, v394);
    v396 = vdupq_n_s16(0xE03Eu);
    v702 = vmlal_s16(vmull_s16(*v392.i8, *v396.i8), *v393.i8, *v395.i8);
    v698 = vmlal_high_s16(vmull_high_s16(v392, v396), v393, v395);
    v397 = vqsubq_s16(v390, v387);
    v398 = vqsubq_s16(v391, v386);
    v399 = vdupq_n_s16(0x13B0u);
    v400 = vdupq_n_s16(0x193Au);
    v694 = vmlal_s16(vmull_s16(*v397.i8, *v400.i8), *v398.i8, *v399.i8);
    v692 = vmlal_high_s16(vmull_high_s16(v397, v400), v398, v399);
    v401 = vdupq_n_s16(0xEC50u);
    v688 = vmlal_high_s16(vmull_high_s16(v397, v401), v398, v400);
    v690 = vmlal_s16(vmull_s16(*v397.i8, *v401.i8), *v398.i8, *v400.i8);
    v402 = vqsubq_s16(v388, v385);
    v403 = vqsubq_s16(v389, v384);
    v404 = vrshrn_high_n_s32(vrshrn_n_s32(v717, 0xDuLL), v714, 0xDuLL);
    v405 = vrshrn_high_n_s32(vrshrn_n_s32(v711, 0xDuLL), v708, 0xDuLL);
    v406 = vqsubq_s16(v402, v405);
    v407 = vqsubq_s16(v403, v404);
    v408 = vdupq_n_s16(0x1BD8u);
    v409 = vdupq_n_s16(0xFC6u);
    v718 = vmlal_s16(vmull_s16(*v406.i8, *v409.i8), *v407.i8, *v408.i8);
    v715 = vmlal_high_s16(vmull_high_s16(v406, v409), v407, v408);
    v410 = vdupq_n_s16(0xE428u);
    v709 = vmlal_high_s16(vmull_high_s16(v406, v410), v407, v409);
    v712 = vmlal_s16(vmull_s16(*v406.i8, *v410.i8), *v407.i8, *v409.i8);
    v411 = vqaddq_s16(v402, v405);
    v412 = vqaddq_s16(v403, v404);
    v413 = vdupq_n_s16(0x889u);
    v414 = vdupq_n_s16(0x1ED7u);
    v686 = vmlal_s16(vmull_s16(*v411.i8, *v414.i8), *v412.i8, *v413.i8);
    v684 = vmlal_high_s16(vmull_high_s16(v411, v414), v412, v413);
    v415 = vmlal_s16(vmull_s16(*v411.i8, v657), *v412.i8, *v414.i8);
    v416 = vmlal_high_s16(vmull_s16(*&vextq_s8(v411, v411, 8uLL), v657), v412, v414);
    v417 = vqaddq_s16(v364, v379);
    v418 = vqaddq_s16(v365, v375);
    v419 = vqaddq_s16(v366, v374);
    v420 = vqaddq_s16(v367, v378);
    v421 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v417.i8, *v883.i8), *v420.i8, *v884.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v417, v883), v420, v884), 0xDuLL);
    v422 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v417.i8, v882), *v420.i8, *v883.i8), 0xDuLL), vmlal_high_s16(vmull_s16(*&vextq_s8(v417, v417, 8uLL), v882), v420, v883), 0xDuLL);
    v423 = vrshrn_high_n_s32(vrshrn_n_s32(v729, 0xDuLL), v726, 0xDuLL);
    v424 = vrshrn_high_n_s32(vrshrn_n_s32(v723, 0xDuLL), v720, 0xDuLL);
    v425 = vqsubq_s16(v418, v422);
    v426 = vqsubq_s16(v419, v421);
    v427 = vqsubq_s16(v425, v424);
    v428 = vqsubq_s16(v426, v423);
    v429 = vdupq_n_s16(0xE63u);
    v430 = vdupq_n_s16(0x1C95u);
    v730 = vmlal_s16(vmull_s16(*v427.i8, *v430.i8), *v428.i8, *v429.i8);
    v727 = vmlal_high_s16(vmull_high_s16(v427, v430), v428, v429);
    v431 = vdupq_n_s16(0xF19Du);
    v721 = vmlal_high_s16(vmull_high_s16(v427, v431), v428, v430);
    v724 = vmlal_s16(vmull_s16(*v427.i8, *v431.i8), *v428.i8, *v430.i8);
    v432 = vqaddq_s16(v418, v422);
    v433 = vqaddq_s16(v419, v421);
    v434 = vrshrn_high_n_s32(vrshrn_n_s32(v740, 0xDuLL), v737, 0xDuLL);
    v435 = vrshrn_high_n_s32(vrshrn_n_s32(v735, 0xDuLL), v732, 0xDuLL);
    v436 = vqaddq_s16(v432, v435);
    v437 = vqaddq_s16(v433, v434);
    v438 = vdupq_n_s16(0x25Bu);
    v439 = vdupq_n_s16(0x1FEAu);
    v736 = vmlal_s16(vmull_s16(*v436.i8, *v439.i8), *v437.i8, *v438.i8);
    v733 = vmlal_high_s16(vmull_high_s16(v436, v439), v437, v438);
    v440 = vdupq_n_s16(0xFDA5u);
    v738 = vmlal_high_s16(vmull_high_s16(v436, v440), v437, v439);
    v741 = vmlal_s16(vmull_s16(*v436.i8, *v440.i8), *v437.i8, *v439.i8);
    v441 = vqaddq_s16(v800, v801);
    v442 = vqaddq_s16(v828, v829);
    v443 = vqaddq_s16(v841, v843);
    v444 = vqaddq_s16(v835, v837);
    v445 = vqaddq_s16(v839, v840);
    v446 = vqaddq_s16(v845, v846);
    v447 = vqaddq_s16(v831, v833);
    v448 = vqaddq_s16(v802, v803);
    v449 = vqaddq_s16(v444, v445);
    v450 = vqsubq_s16(v444, v445);
    v451 = vqaddq_s16(v443, v446);
    v452 = vqsubq_s16(v443, v446);
    v453 = vqaddq_s16(v442, v447);
    v454 = vqsubq_s16(v442, v447);
    v455 = vqaddq_s16(v441, v448);
    v456 = vqsubq_s16(v441, v448);
    v457 = vqaddq_s16(v453, v451);
    v458 = vqsubq_s16(v453, v451);
    v459 = vqaddq_s16(v455, v449);
    v460 = vqsubq_s16(v455, v449);
    v461 = vmlal_s16(vmull_s16(*v452.i8, *v851.i8), *v454.i8, *v851.i8);
    v462 = vmlal_high_s16(vmull_high_s16(v452, v851), v454, v851);
    v463 = vmlal_s16(vmull_s16(*v452.i8, *v892.i8), *v454.i8, *v851.i8);
    v464 = vmlal_high_s16(vmull_high_s16(v452, v892), v454, v851);
    v465 = vrshrn_high_n_s32(vrshrn_n_s32(v461, 0xDuLL), v462, 0xDuLL);
    v466 = vrshrn_high_n_s32(vrshrn_n_s32(v463, 0xDuLL), v464, 0xDuLL);
    v844 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v458.i8, *v850.i8), *v460.i8, *v891.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v458, v850), v460, v891), 0xDuLL);
    v834 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v458.i8, *v889.i8), *v460.i8, *v850.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v458, v889), v460, v850), 0xDuLL);
    v467 = vqaddq_s16(v450, v466);
    v468 = vqsubq_s16(v450, v466);
    v469 = vqsubq_s16(v456, v465);
    v470 = vqaddq_s16(v456, v465);
    v842 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v467.i8, *v890.i8), *v470.i8, *v887.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v467, v890), v470, v887), 0xDuLL);
    v836 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v467.i8, *v849.i8), *v470.i8, *v890.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v467, v849), v470, v890), 0xDuLL);
    v471 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v468.i8, *v884.i8), *v469.i8, *v885.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v468, v884), v469, v885), 0xDuLL);
    v847 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v468.i8, *v883.i8), *v469.i8, *v884.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v468, v883), v469, v884), 0xDuLL);
    v472 = vqaddq_s16(v812, v811);
    v473 = vqaddq_s16(v810, v814);
    v838 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v472.i8, *v659.i8), *v473.i8, *v848.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v472, v659), v473, v848), 0xDuLL);
    v830 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v472.i8, *v310.i8), *v473.i8, *v659.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v472, v310), v473, v659), 0xDuLL);
    v832 = vrshrn_high_n_s32(vrshrn_n_s32(v870, 0xDuLL), v868, 0xDuLL);
    v871 = vrshrn_high_n_s32(vrshrn_n_s32(v858, 0xDuLL), v855, 0xDuLL);
    v474 = vqaddq_s16(v880, v879);
    v475 = vqaddq_s16(v425, v424);
    v881 = vqsubq_s16(v432, v435);
    v813 = vqsubq_s16(v433, v434);
    v476 = vqaddq_s16(v426, v423);
    v477 = vqaddq_s16(v877, v878);
    v478 = vdupq_n_s16(0x1FFEu);
    v479 = vmlal_s16(vmull_s16(*v474.i8, 0xC900C900C900C9), *v477.i8, *v478.i8);
    v468.i64[0] = 0xC900C900C900C9;
    v468.i64[1] = 0xC900C900C900C9;
    v480 = vmlal_high_s16(vmull_high_s16(v474, v468), v477, v478);
    v481 = vdupq_n_s16(0xE002u);
    v482 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v474.i8, *v481.i8), *v477.i8, 0xC900C900C900C9), 0xDuLL), vmlal_high_s16(vmull_high_s16(v474, v481), v477, v468), 0xDuLL);
    v856 = vrshrn_high_n_s32(vrshrn_n_s32(v415, 0xDuLL), v416, 0xDuLL);
    v483 = vdupq_n_s16(0x1E63u);
    v484 = vmlal_s16(vmull_s16(*v475.i8, 0xA0A0A0A0A0A0A0ALL), *v476.i8, *v483.i8);
    v485 = vmlal_high_s16(vmull_s16(*&vextq_s8(v475, v475, 8uLL), 0xA0A0A0A0A0A0A0ALL), v476, v483);
    v486 = vdupq_n_s16(0xE19Du);
    v487 = vmlal_high_s16(vmull_s16(*&vextq_s8(v476, v476, 8uLL), 0xA0A0A0A0A0A0A0ALL), v475, v486);
    v488 = vmlal_s16(vmull_s16(*v475.i8, *v486.i8), *v476.i8, 0xA0A0A0A0A0A0A0ALL);
    v489 = vrshrn_high_n_s32(vrshrn_n_s32(v484, 0xDuLL), v485, 0xDuLL);
    v490 = vrshrn_high_n_s32(vrshrn_n_s32(v488, 0xDuLL), v487, 0xDuLL);
    v990 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v459.i8, *v892.i8), *v457.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v459, v892), v457, v851), 0xDuLL), 2uLL);
    v991 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v876, 0xDuLL), v875, 0xDuLL), 2uLL);
    v491 = vdupq_n_s16(0x14E7u);
    v492 = vdupq_n_s16(0xE7C5u);
    v992 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v862, 0xDuLL), v860, 0xDuLL), 2uLL);
    v993 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v881.i8, *v492.i8), *v813.i8, *v491.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v881, v492), v813, v491), 0xDuLL), 2uLL);
    v994 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v807, 0xDuLL), v806, 0xDuLL), 2uLL);
    v995 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v694, 0xDuLL), v692, 0xDuLL), 2uLL);
    v996 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v680, 0xDuLL), v678, 0xDuLL), 2uLL);
    v997 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v766, 0xDuLL), v764, 0xDuLL), 2uLL);
    v998 = vrshrq_n_s16(v471, 2uLL);
    v999 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v816, 0xDuLL), v815, 0xDuLL), 2uLL);
    v1000 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v758, 0xDuLL), v756, 0xDuLL), 2uLL);
    v1001 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v712, 0xDuLL), v709, 0xDuLL), 2uLL);
    v1002 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v780, 0xDuLL), v779, 0xDuLL), 2uLL);
    v1003 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v730, 0xDuLL), v727, 0xDuLL), 2uLL);
    v1004 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v796, 0xDuLL), v794, 0xDuLL), 2uLL);
    v1005 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v826, 0xDuLL), v825, 0xDuLL), 2uLL);
    v1006 = vrshrq_n_s16(v834, 2uLL);
    v1007 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v824, 0xDuLL), v823, 0xDuLL), 2uLL);
    v1008 = vrshrq_n_s16(v1008, 2uLL);
    v1009 = vrshrq_n_s16(v490, 2uLL);
    v1010 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v778, 0xDuLL), v776, 0xDuLL), 2uLL);
    v1011 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v686, 0xDuLL), v684, 0xDuLL), 2uLL);
    v1012 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v762, 0xDuLL), v760, 0xDuLL), 2uLL);
    v1013 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v818, 0xDuLL), v817, 0xDuLL), 2uLL);
    v1014 = vrshrq_n_s16(v836, 2uLL);
    v1015 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v745, 0xDuLL), v743, 0xDuLL), 2uLL);
    v1016 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v676, 0xDuLL), v674, 0xDuLL), 2uLL);
    v1017 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v702, 0xDuLL), v698, 0xDuLL), 2uLL);
    v1018 = vrshrq_n_s16(v830, 2uLL);
    v1019 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v736, 0xDuLL), v733, 0xDuLL), 2uLL);
    v1020 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v866, 0xDuLL), v864, 0xDuLL), 2uLL);
    v1021 = vrshrq_n_s16(v482, 2uLL);
    v958 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v459.i8, *v851.i8), *v457.i8, *v851.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v459, v851), v457, v851), 0xDuLL), 2uLL);
    v959 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v479, 0xDuLL), v480, 0xDuLL), 2uLL);
    v493 = vtrn1q_s16(v958, v959);
    v494 = vtrn2q_s16(v958, v959);
    v960 = vrshrq_n_s16(v832, 2uLL);
    v961 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v741, 0xDuLL), v738, 0xDuLL), 2uLL);
    v495 = vtrn1q_s16(v960, v961);
    v496 = vtrn2q_s16(v960, v961);
    v962 = vrshrq_n_s16(v838, 2uLL);
    v963 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v706, 0xDuLL), v704, 0xDuLL), 2uLL);
    v497 = vtrn1q_s16(v962, v963);
    v498 = vtrn2q_s16(v962, v963);
    v964 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v672, 0xDuLL), v671, 0xDuLL), 2uLL);
    v965 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v700, 0xDuLL), v696, 0xDuLL), 2uLL);
    v499 = vtrn1q_s16(v964, v965);
    v500 = vtrn2q_s16(v964, v965);
    v501 = vtrn1q_s32(v493, v495);
    v502 = vtrn2q_s32(v493, v495);
    v503 = vtrn1q_s32(v497, v499);
    v504 = vzip2q_s64(v501, v503);
    v501.i64[1] = v503.i64[0];
    v505 = vtrn1q_s32(v494, v496);
    v506 = vtrn2q_s32(v494, v496);
    v507 = vtrn1q_s32(v498, v500);
    v508 = vzip2q_s64(v505, v507);
    v505.i64[1] = v507.i64[0];
    v509 = vtrn2q_s32(v497, v499);
    v510 = vzip2q_s64(v502, v509);
    v502.i64[1] = v509.i64[0];
    v511 = vtrn2q_s32(v498, v500);
    v512 = vzip2q_s64(v506, v511);
    v506.i64[1] = v511.i64[0];
    v513 = &v957[128 * v8];
    *v513 = v501;
    v513[1] = v505;
    v513[2] = v502;
    v513[3] = v506;
    v513[4] = v504;
    v513[5] = v508;
    v513[6] = v510;
    v514 = vrshrq_n_s16(v842, 2uLL);
    v515 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v820, 0xDuLL), v819, 0xDuLL), 2uLL);
    v966 = v514;
    v967 = v515;
    v516 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v788, 0xDuLL), v785, 0xDuLL), 2uLL);
    v517 = vrshrq_n_s16(v856, 2uLL);
    v968 = v516;
    v969 = v517;
    v518 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v774, 0xDuLL), v772, 0xDuLL), 2uLL);
    v519 = vrshrq_n_s16(v489, 2uLL);
    v970 = v518;
    v971 = v519;
    v520 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v792, 0xDuLL), v790, 0xDuLL), 2uLL);
    v521 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v822, 0xDuLL), v821, 0xDuLL), 2uLL);
    v972 = v520;
    v973 = v521;
    v513[7] = v512;
    v522 = vtrn1q_s16(v514, v515);
    v523 = vtrn2q_s16(v514, v515);
    v524 = vtrn1q_s16(v516, v517);
    v525 = vtrn2q_s16(v516, v517);
    v526 = vtrn1q_s16(v518, v519);
    v527 = vtrn2q_s16(v518, v519);
    v528 = vtrn1q_s16(v520, v521);
    v529 = vtrn2q_s16(v520, v521);
    v530 = vtrn1q_s32(v522, v524);
    v531 = vtrn2q_s32(v522, v524);
    v532 = vtrn1q_s32(v523, v525);
    v533 = vtrn2q_s32(v523, v525);
    v534 = vtrn1q_s32(v526, v528);
    v535 = vtrn2q_s32(v526, v528);
    v536 = vzip2q_s64(v530, v534);
    v530.i64[1] = v534.i64[0];
    v537 = vtrn1q_s32(v527, v529);
    v538 = vtrn2q_s32(v527, v529);
    v513[64] = v530;
    v539 = vzip2q_s64(v532, v537);
    v532.i64[1] = v537.i64[0];
    v540 = vzip2q_s64(v531, v535);
    v531.i64[1] = v535.i64[0];
    v541 = vzip2q_s64(v533, v538);
    v533.i64[1] = v538.i64[0];
    v513[65] = v532;
    v513[66] = v531;
    v513[67] = v533;
    v513[68] = v536;
    v513[69] = v539;
    v542 = vrshrq_n_s16(v844, 2uLL);
    v543 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v872, 0xDuLL), v827, 0xDuLL), 2uLL);
    v974 = v542;
    v975 = v543;
    v544 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v799, 0xDuLL), v798, 0xDuLL), 2uLL);
    v545 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v724, 0xDuLL), v721, 0xDuLL), 2uLL);
    v976 = v544;
    v977 = v545;
    v546 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v853, 0xDuLL), v782, 0xDuLL), 2uLL);
    v547 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v718, 0xDuLL), v715, 0xDuLL), 2uLL);
    v978 = v546;
    v979 = v547;
    v548 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v754, 0xDuLL), v752, 0xDuLL), 2uLL);
    v549 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v809, 0xDuLL), v808, 0xDuLL), 2uLL);
    v980 = v548;
    v981 = v549;
    v513[70] = v540;
    v513[71] = v541;
    v550 = vtrn1q_s16(v542, v543);
    v551 = vtrn2q_s16(v542, v543);
    v552 = vtrn1q_s16(v544, v545);
    v553 = vtrn2q_s16(v544, v545);
    v554 = vtrn1q_s16(v546, v547);
    v555 = vtrn2q_s16(v546, v547);
    v556 = vtrn1q_s16(v548, v549);
    v557 = vtrn2q_s16(v548, v549);
    v558 = vtrn1q_s32(v550, v552);
    v559 = vtrn2q_s32(v550, v552);
    v560 = vtrn1q_s32(v551, v553);
    v561 = vtrn2q_s32(v551, v553);
    v562 = vtrn1q_s32(v554, v556);
    v563 = vzip2q_s64(v558, v562);
    v558.i64[1] = v562.i64[0];
    v564 = vtrn1q_s32(v555, v557);
    v513[128] = v558;
    v565 = vzip2q_s64(v560, v564);
    v560.i64[1] = v564.i64[0];
    v566 = vtrn2q_s32(v554, v556);
    v513[129] = v560;
    v567 = vzip2q_s64(v559, v566);
    v559.i64[1] = v566.i64[0];
    v568 = vtrn2q_s32(v555, v557);
    v513[130] = v559;
    v569 = vzip2q_s64(v561, v568);
    v561.i64[1] = v568.i64[0];
    v570 = vdupq_n_s16(0x183Bu);
    v513[131] = v561;
    v513[132] = v563;
    v513[133] = v565;
    v571 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v881.i8, *v491.i8), *v813.i8, *v570.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v881, v491), v813, v570), 0xDuLL);
    v513[134] = v567;
    v572 = vrshrq_n_s16(v847, 2uLL);
    v573 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v770, 0xDuLL), v768, 0xDuLL), 2uLL);
    v574 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v750, 0xDuLL), v747, 0xDuLL), 2uLL);
    v575 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v690, 0xDuLL), v688, 0xDuLL), 2uLL);
    v576 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v805, 0xDuLL), v804, 0xDuLL), 2uLL);
    v577 = vrshrq_n_s16(v571, 2uLL);
    v578 = vrshrq_n_s16(v871, 2uLL);
    v579 = vrshrq_n_s16(vrshrn_high_n_s32(vrshrn_n_s32(v874, 0xDuLL), v873, 0xDuLL), 2uLL);
    v580 = vtrn1q_s16(v572, v573);
    v581 = vtrn1q_s16(v574, v575);
    v582 = vtrn1q_s16(v576, v577);
    v583 = vtrn1q_s16(v578, v579);
    v584 = vtrn1q_s32(v580, v581);
    v585 = vtrn1q_s32(v582, v583);
    v586 = vzip2q_s64(v584, v585);
    v584.i64[1] = v585.i64[0];
    v513[135] = v569;
    v513[192] = v584;
    v982 = v572;
    v983 = v573;
    v587 = vtrn2q_s16(v572, v573);
    v984 = v574;
    v985 = v575;
    v986 = v576;
    v987 = v577;
    v988 = v578;
    v989 = v579;
    v588 = vtrn2q_s16(v574, v575);
    v589 = vtrn2q_s16(v576, v577);
    v590 = vtrn2q_s16(v578, v579);
    v591 = vtrn1q_s32(v587, v588);
    v592 = vtrn1q_s32(v589, v590);
    v593 = vzip2q_s64(v591, v592);
    v591.i64[1] = v592.i64[0];
    v513[193] = v591;
    v594 = vtrn2q_s32(v580, v581);
    v595 = vtrn2q_s32(v582, v583);
    v596 = vzip2q_s64(v594, v595);
    v594.i64[1] = v595.i64[0];
    v513[194] = v594;
    v597 = vtrn2q_s32(v587, v588);
    v598 = vtrn2q_s32(v589, v590);
    v599 = vzip2q_s64(v597, v598);
    v597.i64[1] = v598.i64[0];
    v513[195] = v597;
    v513[196] = v586;
    v513[197] = v593;
    v513[198] = v596;
    v513[199] = v599;
    ++v8;
    ++v7;
  }

  while (v8 != 8);
  v600 = 0;
  v601 = v957;
  do
  {
    for (i = 0; i != 1024; i += 16)
    {
      v603 = *&v601[i];
      *(&v925 + i) = vmovl_s16(*v603.i8);
      *(&v893 + i) = vmovl_high_s16(v603);
    }

    fdct64_neon(&v925, &v925, 10);
    fdct64_neon(&v893, &v893, 10);
    v604 = vrshrq_n_s32(v926, 2uLL);
    v925 = vrshrq_n_s32(v925, 2uLL);
    v926 = v604;
    v605 = vrshrq_n_s32(v893, 2uLL);
    v606 = vrshrq_n_s32(v894, 2uLL);
    v893 = v605;
    v607 = (v6 + 32 * v600);
    *v607 = v925;
    v607[1] = v605;
    v608 = vrshrq_n_s32(v927, 2uLL);
    v609 = vrshrq_n_s32(v928, 2uLL);
    v927 = v608;
    v928 = v609;
    v894 = v606;
    v607[8] = v604;
    v607[9] = v606;
    v610 = vrshrq_n_s32(v895, 2uLL);
    v611 = vrshrq_n_s32(v896, 2uLL);
    v895 = v610;
    v607[16] = v608;
    v607[17] = v610;
    v612 = vrshrq_n_s32(v929, 2uLL);
    v613 = vrshrq_n_s32(v930, 2uLL);
    v929 = v612;
    v930 = v613;
    v896 = v611;
    v607[24] = v609;
    v607[25] = v611;
    v614 = vrshrq_n_s32(v897, 2uLL);
    v615 = vrshrq_n_s32(v898, 2uLL);
    v897 = v614;
    v607[32] = v612;
    v607[33] = v614;
    v616 = vrshrq_n_s32(v931, 2uLL);
    v617 = vrshrq_n_s32(v932, 2uLL);
    v898 = v615;
    v607[40] = v613;
    v607[41] = v615;
    v618 = v900;
    v619 = vrshrq_n_s32(v899, 2uLL);
    v607[48] = v616;
    v607[49] = v619;
    v931 = v616;
    v932 = v617;
    v620 = vrshrq_n_s32(v618, 2uLL);
    v899 = v619;
    v607[56] = v617;
    v607[57] = v620;
    v621 = vrshrq_n_s32(v934, 2uLL);
    v933 = vrshrq_n_s32(v933, 2uLL);
    v934 = v621;
    v900 = v620;
    v607[64] = v933;
    v622 = vrshrq_n_s32(v902, 2uLL);
    v901 = vrshrq_n_s32(v901, 2uLL);
    v607[65] = v901;
    v607[72] = v621;
    v623 = vrshrq_n_s32(v935, 2uLL);
    v624 = vrshrq_n_s32(v936, 2uLL);
    v935 = v623;
    v936 = v624;
    v902 = v622;
    v607[73] = v622;
    v607[80] = v623;
    v625 = vrshrq_n_s32(v904, 2uLL);
    v903 = vrshrq_n_s32(v903, 2uLL);
    v607[81] = v903;
    v607[88] = v624;
    v626 = vrshrq_n_s32(v937, 2uLL);
    v627 = vrshrq_n_s32(v938, 2uLL);
    v937 = v626;
    v938 = v627;
    v904 = v625;
    v607[89] = v625;
    v607[96] = v626;
    v628 = vrshrq_n_s32(v906, 2uLL);
    v905 = vrshrq_n_s32(v905, 2uLL);
    v607[97] = v905;
    v607[104] = v627;
    v629 = vrshrq_n_s32(v939, 2uLL);
    v630 = vrshrq_n_s32(v940, 2uLL);
    v939 = v629;
    v940 = v630;
    v906 = v628;
    v607[105] = v628;
    v607[112] = v629;
    v631 = vrshrq_n_s32(v908, 2uLL);
    v907 = vrshrq_n_s32(v907, 2uLL);
    v607[113] = v907;
    v607[120] = v630;
    v632 = vrshrq_n_s32(v941, 2uLL);
    v633 = vrshrq_n_s32(v942, 2uLL);
    v941 = v632;
    v942 = v633;
    v908 = v631;
    v607[121] = v631;
    v607[128] = v632;
    v634 = vrshrq_n_s32(v910, 2uLL);
    v909 = vrshrq_n_s32(v909, 2uLL);
    v607[129] = v909;
    v607[136] = v633;
    v635 = vrshrq_n_s32(v943, 2uLL);
    v636 = vrshrq_n_s32(v944, 2uLL);
    v943 = v635;
    v944 = v636;
    v910 = v634;
    v607[137] = v634;
    v607[144] = v635;
    v637 = vrshrq_n_s32(v912, 2uLL);
    v911 = vrshrq_n_s32(v911, 2uLL);
    v607[145] = v911;
    v607[152] = v636;
    v638 = vrshrq_n_s32(v945, 2uLL);
    v639 = vrshrq_n_s32(v946, 2uLL);
    v945 = v638;
    v946 = v639;
    v912 = v637;
    v607[153] = v637;
    v607[160] = v638;
    v640 = vrshrq_n_s32(v914, 2uLL);
    v913 = vrshrq_n_s32(v913, 2uLL);
    v607[161] = v913;
    v607[168] = v639;
    v641 = vrshrq_n_s32(v947, 2uLL);
    v642 = vrshrq_n_s32(v948, 2uLL);
    v947 = v641;
    v948 = v642;
    v914 = v640;
    v607[169] = v640;
    v607[176] = v641;
    v643 = vrshrq_n_s32(v916, 2uLL);
    v915 = vrshrq_n_s32(v915, 2uLL);
    v607[177] = v915;
    v607[184] = v642;
    v644 = vrshrq_n_s32(v949, 2uLL);
    v645 = vrshrq_n_s32(v950, 2uLL);
    v949 = v644;
    v950 = v645;
    v916 = v643;
    v607[185] = v643;
    v607[192] = v644;
    v646 = vrshrq_n_s32(v918, 2uLL);
    v917 = vrshrq_n_s32(v917, 2uLL);
    v607[193] = v917;
    v607[200] = v645;
    v647 = vrshrq_n_s32(v951, 2uLL);
    v648 = vrshrq_n_s32(v952, 2uLL);
    v951 = v647;
    v952 = v648;
    v918 = v646;
    v607[201] = v646;
    v607[208] = v647;
    v649 = vrshrq_n_s32(v920, 2uLL);
    v919 = vrshrq_n_s32(v919, 2uLL);
    v607[209] = v919;
    v607[216] = v648;
    v650 = vrshrq_n_s32(v953, 2uLL);
    v651 = vrshrq_n_s32(v954, 2uLL);
    v953 = v650;
    v954 = v651;
    v920 = v649;
    v607[217] = v649;
    v607[224] = v650;
    v652 = vrshrq_n_s32(v922, 2uLL);
    v921 = vrshrq_n_s32(v921, 2uLL);
    v922 = v652;
    v607[225] = v921;
    v607[232] = v651;
    v653 = v924;
    v654 = vrshrq_n_s32(v923, 2uLL);
    v607[233] = v652;
    v607[241] = v654;
    v655 = vrshrq_n_s32(v955, 2uLL);
    v656 = vrshrq_n_s32(v956, 2uLL);
    v607[240] = v655;
    v955 = v655;
    v956 = v656;
    v607[248] = v656;
    v607[249] = vrshrq_n_s32(v653, 2uLL);
    ++v600;
    v601 += 1024;
  }

  while (v600 != 4);
}