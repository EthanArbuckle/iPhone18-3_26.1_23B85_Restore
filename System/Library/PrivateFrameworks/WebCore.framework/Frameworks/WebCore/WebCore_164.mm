void av1_decode_tg_tiles_and_wrapup(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 **a4, int a5, signed int a6, int a7)
{
  v8 = a1 + 388768;
  v9 = (a1 + 363880);
  v10 = a1 + 298112;
  v11 = a1 + 38224;
  v338 = a1 + 15200;
  *(a1 + 10736) = *(a1 + 15248);
  v364 = a1 + 38224;
  if (a7)
  {
    if (*(a1 + 38256) || *(a1 + 38320) || *(a1 + 38384))
    {
      av1_alloc_restoration_buffers(v338, 1);
      av1_alloc_restoration_struct(v338, v11 + 32, 0);
      v12 = *(v11 + 1656);
      if (*(v12 + 77) || (v13 = (v11 + 1656), av1_alloc_restoration_struct(v338, a1 + 38320, 1), v12 = *(v11 + 1656), *(v12 + 77)))
      {
LABEL_10:
        v14 = *(v12 + 76);
        if (*(v10 + 32) != 69696 << v14)
        {
          v15 = *(v10 + 36);
          v16 = *(v10 + 8);
          if (v15)
          {
            v16 *= 2;
          }

          if (v16)
          {
            free(*(v16 - 8));
            v15 = *(v10 + 36);
          }

          *(v10 + 8) = 0;
          if (v15)
          {
            v17 = 2 * *(v10 + 16);
          }

          else
          {
            v17 = *(v10 + 16);
          }

          if (v17)
          {
            free(*(v17 - 8));
          }

          *(v10 + 16) = 0;
          *(v10 + 32) = 0;
          v18 = *(v10 + 40);
          if (v18)
          {
            free(*(v18 - 8));
          }

          *(v10 + 40) = 0;
          v19 = *(v10 + 24);
          if (v19)
          {
            free(*(v19 - 8));
          }

          *(v10 + 24) = 0;
          v20 = *(v10 + 48);
          if (v20)
          {
            free(*(v20 - 8));
          }

          *(v10 + 48) = 0;
          v21 = *(v10 + 56);
          if (v21)
          {
            free(*(v21 - 8));
          }

          *(v10 + 56) = 0;
          allocate_mc_tmp_buf(v338, a1 + 41248, 69696 << v14, v14);
          v11 = v364;
        }

        goto LABEL_29;
      }

      av1_alloc_restoration_struct(v338, a1 + 38384, 1);
    }

    else
    {
      v13 = (a1 + 39880);
    }

    v12 = *v13;
    goto LABEL_10;
  }

LABEL_29:
  v22 = *(*(v11 + 1656) + 77);
  if (*(*(v11 + 1656) + 77))
  {
    v23 = 1;
  }

  else
  {
    v23 = 3;
  }

  v24 = *v9;
  v25 = *(v11 + 2260);
  v26 = v11;
  v354 = v10;
  v325 = v23;
  if (*v9 < 2)
  {
    goto LABEL_67;
  }

  if (v25 && !v9[26])
  {
LABEL_66:
    v25 = 1;
    goto LABEL_67;
  }

  if (v9[27])
  {
    v27 = *(v11 + 1680);
    v28 = *(v11 + 1684);
    if (v25)
    {
      v30 = v9[6];
      v29 = v9[7];
      if (v29 >= v27)
      {
        v31 = *(v11 + 1680);
      }

      else
      {
        v31 = v9[7];
      }

      if (v30 >= v28)
      {
        v32 = *(v11 + 1684);
      }

      else
      {
        v32 = v9[6];
      }

      v33 = v32 & ~(v30 >> 31);
      if (v30 >= 0)
      {
        v34 = v32 + 1;
      }

      else
      {
        v34 = *(v11 + 1684);
      }

      v35 = v31 & ~(v29 >> 31);
      if (v29 >= 0)
      {
        v36 = v31 + 1;
      }

      else
      {
        v36 = *(v11 + 1680);
      }

      v37 = a1;
      if (v34 <= v33)
      {
        goto LABEL_108;
      }
    }

    else
    {
      v35 = 0;
      v33 = 0;
      v36 = *(v11 + 1680);
      v34 = *(v11 + 1684);
      v37 = a1;
      if (v28 <= 0)
      {
        goto LABEL_108;
      }
    }

    if (v36 > v35 && v35 + v33 * v27 <= a6 && v36 + (v34 - 1) * v27 > a5)
    {
      v365 = v36;
      v360 = v34;
      v361 = v35;
      v319 = *(*(v11 + 1656) + 77);
      decode_mt_init(v37);
      if (*(v364 + 2260))
      {
        ls_tile_buffers = get_ls_tile_buffers(v37, a2, a3, (v37 + 298256));
      }

      else
      {
        get_tile_buffers_0(v37, a2, a3, v37 + 298256, a5, a6);
        ls_tile_buffers = 0;
      }

      v123 = (v28 * v27);
      v124 = v354;
      v125 = *(v354 + 128);
      v357 = v123;
      if (v125)
      {
        v126 = *(v354 + 136);
        if (v123 == v126)
        {
          goto LABEL_218;
        }

        if (v126 < 1)
        {
          v124 = v354;
        }

        else
        {
          v127 = 0;
          v128 = 21344;
          v124 = v354;
          do
          {
            av1_dec_row_mt_dealloc((*(v354 + 128) + v128));
            ++v127;
            v128 += 21408;
          }

          while (v127 < *(v354 + 136));
          v125 = *(v354 + 128);
          v123 = (v28 * v27);
          if (!v125)
          {
            goto LABEL_208;
          }
        }

        free(*(v125 - 8));
      }

LABEL_208:
      *(v124 + 136) = 0;
      v129 = 21408 * v123;
      if (v129 <= 0x1FFFFFFD9 && (v130 = malloc_type_malloc(v129 + 39, 0x5F484EBFuLL)) != 0)
      {
        v131 = (v130 + 39) & 0xFFFFFFFFFFFFFFE0;
        *(v131 - 8) = v130;
        *(v354 + 128) = v131;
        if (v131)
        {
LABEL_214:
          *(v354 + 136) = v123;
          if (v123 >= 1)
          {
            v132 = 21344;
            v133 = v123;
            do
            {
              v134 = (*(v354 + 128) + v132);
              v134[2] = 0uLL;
              v134[3] = 0uLL;
              *v134 = 0uLL;
              v134[1] = 0uLL;
              v132 += 21408;
              --v133;
            }

            while (v133);
          }

          *(v8 + 12) = 0;
LABEL_218:
          if (!*(v37 + 10768))
          {
            v135 = malloc_type_malloc(0x8017uLL, 0x5F484EBFuLL);
            if (!v135)
            {
              *(v37 + 10768) = 0;
LABEL_223:
              aom_internal_error(*(v37 + 15248), 2, "Failed to allocate pbi->dcb.xd.seg_mask");
              goto LABEL_224;
            }

            v136 = (v135 + 23) & 0xFFFFFFFFFFFFFFF0;
            *(v136 - 8) = v135;
            *(v37 + 10768) = v136;
            if (!v136)
            {
              goto LABEL_223;
            }
          }

LABEL_224:
          v137 = 0;
          v138 = 0;
          if (v28 >= 1 && v27 >= 1)
          {
            v139 = 0;
            v138 = 0;
            v137 = 0;
            v140 = v37 + 40224;
            v141 = *(*(v364 + 1656) + 36);
            v142 = *(v37 + 15732);
            v143 = *(v37 + 15736);
            v144 = *(v354 + 128) + 12;
            v145 = 21408 * *(v364 + 1680);
            do
            {
              v146 = 0;
              v147 = v139 + 1;
              v148 = (v364 + 1744);
              v149 = v144;
              do
              {
                v150 = *(v140 + 4 * v139) << v141;
                v151 = *(v140 + 4 * v147) << v141;
                v149[1] = v139;
                if (v151 >= v142)
                {
                  v151 = v142;
                }

                *(v149 - 3) = v150;
                *(v149 - 2) = v151;
                v152 = *(v148 - 1) << v141;
                v153 = *v148 << v141;
                v149[2] = v146;
                if (v153 >= v143)
                {
                  v153 = v143;
                }

                *(v149 - 1) = v152;
                *v149 = v153;
                v154 = ((1 << v141) + ~v150 + v151) >> v141;
                if (v138 <= v154)
                {
                  v138 = v154;
                }

                if (v154 == 1)
                {
                  v155 = 1;
                }

                else
                {
                  v155 = 2;
                }

                v137 += v155;
                ++v146;
                v149 += 5352;
                ++v148;
              }

              while (v27 != v146);
              v144 += v145;
              ++v139;
            }

            while (v147 != v28);
          }

          if (v137 >= v24)
          {
            v156 = v24;
          }

          else
          {
            v156 = v137;
          }

          v348 = v156;
          v324 = v8;
          if (*(v8 + 12) != v138)
          {
            if (v357 >= 1)
            {
              v157 = 0;
              v351 = 48 * v138;
              while (1)
              {
                v158 = *(v354 + 128) + 21408 * v157 + 21344;
                v159 = av1_dec_row_mt_dealloc(v158);
                *(v158 + 16) = v138;
                if (v138 >> 27)
                {
                  break;
                }

                v160 = malloc_type_malloc((v138 << 6) | 0x17, 0x5F484EBFuLL);
                if (!v160)
                {
                  break;
                }

                v161 = (v160 + 23) & 0xFFFFFFFFFFFFFFF0;
                *(v161 - 8) = v160;
                *v158 = v161;
                if (!v161)
                {
                  goto LABEL_256;
                }

                if (v138 < 1)
                {
                  v162 = malloc_type_malloc(v351 + 23, 0x5F484EBFuLL);
                  if (!v162)
                  {
                    goto LABEL_265;
                  }

                  v163 = (v162 + 23) & 0xFFFFFFFFFFFFFFF0;
                  *(v163 - 8) = v162;
                  *(v158 + 8) = v163;
                  v164 = (v158 + 8);
                  if (!v163)
                  {
                    goto LABEL_266;
                  }

                  goto LABEL_271;
                }

LABEL_258:
                v165 = 0;
                v166 = v138;
                do
                {
                  pthread_mutex_init((*v158 + v165), 0);
                  v165 += 64;
                  --v166;
                }

                while (v166);
LABEL_260:
                if (v138 > 0xAAAAAAA || (v167 = malloc_type_malloc(v351 + 23, 0x5F484EBFuLL)) == 0)
                {
LABEL_265:
                  *(v158 + 8) = 0;
                  v164 = (v158 + 8);
LABEL_266:
                  aom_internal_error(*(a1 + 15248), 2, "Failed to allocate dec_row_mt_sync->cond_");
                  if (v138 >= 1 && *v164)
                  {
LABEL_268:
                    v169 = 0;
                    v170 = v138;
                    do
                    {
                      pthread_cond_init((*v164 + v169), 0);
                      v169 += 48;
                      --v170;
                    }

                    while (v170);
                  }

                  if (v138 > 0x7FFFFFFA)
                  {
                    goto LABEL_245;
                  }

                  goto LABEL_271;
                }

                v168 = (v167 + 23) & 0xFFFFFFFFFFFFFFF0;
                *(v168 - 8) = v167;
                *(v158 + 8) = v168;
                v164 = (v158 + 8);
                if (!v168)
                {
                  goto LABEL_266;
                }

                if (v138 >= 1)
                {
                  goto LABEL_268;
                }

LABEL_271:
                v171 = malloc_type_malloc(4 * v138 + 23, 0x5F484EBFuLL);
                if (v171)
                {
                  v172 = (v171 + 23) & 0xFFFFFFFFFFFFFFF0;
                  *(v172 - 8) = v171;
                  *(v158 + 24) = v172;
                  v37 = a1;
                  if (v172)
                  {
                    goto LABEL_247;
                  }

                  goto LABEL_246;
                }

LABEL_245:
                *(v158 + 24) = 0;
                v37 = a1;
LABEL_246:
                aom_internal_error(*(v37 + 15248), 2, "Failed to allocate dec_row_mt_sync->cur_sb_col");
LABEL_247:
                *(v158 + 32) = 1;
                if (++v157 == v357)
                {
                  goto LABEL_274;
                }
              }

              *v158 = 0;
LABEL_256:
              aom_internal_error(*(v37 + 15248), 2, "Failed to allocate dec_row_mt_sync->mutex_", v159);
              if (v138 < 1 || !*v158)
              {
                goto LABEL_260;
              }

              goto LABEL_258;
            }

LABEL_274:
            v8 = v324;
            *(v324 + 12) = v138;
          }

          tile_mt_queue(v37, v27, v28, v33, v360, v361, v365, a5, a6);
          v173 = *(*(v364 + 1656) + 36);
          v174 = (*(v37 + 15732) >> v173) + 1 + ((*(v37 + 15732) >> v173) + 1) * (*(v37 + 15736) >> v173);
          if (*(v8 + 8) >= v174)
          {
LABEL_285:
            *(v8 + 56) = 0;
            *(v8 + 32) = v33;
            *(v8 + 36) = v360;
            v179 = v365;
            *(v8 + 40) = v361;
            *(v8 + 44) = v365;
            v180 = 4 * v138;
            *(v8 + 48) = a5;
            *(v8 + 52) = a6;
            *(v8 + 64) = 0;
            v181 = v338;
            do
            {
              v182 = 21408 * v361;
              v183 = v361;
              do
              {
                v185 = *(v364 + 1680);
                v186 = v183 + v33 * v185;
                if (v186 >= a5 && v186 <= a6)
                {
                  v188 = *(v354 + 128) + 21408 * v33 * v185 + v182;
                  *(v188 + 21392) = 0;
                  *(v188 + 21400) = 0;
                  v189 = *(v364 + 1656);
                  v190 = -1 << *(v189 + 36);
                  v191 = (*(v188 + 4) - *v188 + ~v190) & v190;
                  v192 = (*(v188 + 12) + ~v190 - *(v188 + 8)) & v190;
                  *(v188 + 21384) = v191;
                  *(v188 + 21388) = v192;
                  if ((*v181 & 0xFD) == 0 && v181[495] == 1 && v181[496])
                  {
                    if (*(v189 + 28) == 15)
                    {
                      v184 = 2;
                    }

                    else
                    {
                      v184 = 4;
                    }
                  }

                  else
                  {
                    v184 = 0;
                  }

                  *(v188 + 21380) = v184;
                  *(v8 + 56) += v191;
                  memset(*(v188 + 21368), 255, v180);
                  v181 = v338;
                  v179 = v365;
                }

                ++v183;
                v182 += 21408;
              }

              while (v179 != v183);
              ++v33;
            }

            while (v33 != v360);
            v8 = v324;
            v10 = v354;
            v37 = a1;
            v26 = v364;
            v54 = ls_tile_buffers;
            v22 = v319;
            if (*(v324 + 16))
            {
LABEL_309:
              if (*(v324 + 24))
              {
                goto LABEL_316;
              }

              v196 = malloc_type_malloc(0x47uLL, 0x5F484EBFuLL);
              if (v196)
              {
                v197 = v196;
                v198 = ((v196 + 23) & 0xFFFFFFFFFFFFFFF0);
                *&v198[-1].__opaque[32] = v197;
                *(v324 + 24) = v198;
                if (v198)
                {
LABEL_315:
                  pthread_cond_init(v198, 0);
LABEL_316:
                  if (v137 <= 0)
                  {
                    *(a1 + 15056) = 0;
                  }

                  else
                  {
                    v199 = *(v364 + 2992);
                    v200 = *(v364 + 3008);
                    memcpy(*v200, a1, 0x3B60uLL);
                    v201 = *v200;
                    v202 = *v200 + 256872;
                    *(v201 + 3764) = 0;
                    *(v201 + 15064) = *v202;
                    *(v201 + 1879) = *(v202 + 32);
                    *(v201 + 940) = *(v201 + 16057);
                    off_28100B660[0]();
                    v199[3] = row_mt_worker_hook;
                    v199[4] = v200;
                    v199[5] = a1;
                    if (v348 != 1)
                    {
                      v203 = 0;
                      v204 = v348 - 1;
                      v205 = 424;
                      do
                      {
                        v206 = (*(v364 + 2992) + v203);
                        v207 = (*(v364 + 3008) + v205);
                        memcpy(*v207, a1, 0x3B60uLL);
                        v208 = *v207;
                        v209 = *v207 + 256872;
                        *(v208 + 3764) = 0;
                        *(v208 + 15064) = *v209;
                        *(v208 + 1879) = *(v209 + 32);
                        *(v208 + 1346) = *(v209 + 16);
                        *(v208 + 940) = *(v208 + 16057);
                        off_28100B660[0]();
                        v206[10] = row_mt_worker_hook;
                        v206[11] = v207;
                        v206[12] = a1;
                        v205 += 424;
                        v203 += 56;
                        --v204;
                      }

                      while (v204);
                    }

                    v210 = v348 - 1;
                    v211 = *(v364 + 2992) + 56 * (v348 - 1);
                    *(*(v211 + 32) + 8) = a3;
                    *(v211 + 48) = 0;
                    if (v348 != 1)
                    {
                      v212 = 56 * v348;
                      do
                      {
                        off_28100B668(v211);
                        v213 = *(v364 + 2992);
                        *(*(v213 + v212 - 80) + 8) = a3;
                        *(v213 + v212 - 64) = 0;
                        v212 -= 56;
                        --v210;
                        v211 = v213 + 56 * v210;
                      }

                      while (v210);
                      v211 = v213 + v212 - 56;
                    }

                    v54 = ls_tile_buffers;
                    off_28100B670(v211);
                    v214 = 0;
                    v215 = v348 + 1;
                    v216 = 56 * v348 - 56;
                    v37 = a1;
                    v8 = v324;
                    do
                    {
                      off_28100B660[0]();
                      v214 |= v217 == 0;
                      --v215;
                      v216 -= 56;
                    }

                    while (v215 > 1);
                    *(a1 + 15056) = v214;
                    v26 = v364;
                    v10 = v354;
                    v22 = v319;
                    if (v214)
                    {
                      aom_internal_error(a1 + 390868, 7, "Failed to decode tile data");
                    }
                  }

                  if (*(v26 + 2260))
                  {
                    if (v357 != 1)
                    {
                      goto LABEL_382;
                    }

                    goto LABEL_331;
                  }

                  goto LABEL_379;
                }
              }

              else
              {
                *(v324 + 24) = 0;
              }

              aom_internal_error(*(a1 + 15248), 2, "Failed to allocate pbi->row_mt_cond_");
              v198 = *(v324 + 24);
              if (!v198)
              {
                goto LABEL_316;
              }

              goto LABEL_315;
            }

            v193 = malloc_type_malloc(0x57uLL, 0x5F484EBFuLL);
            if (v193)
            {
              v194 = v193;
              v195 = ((v193 + 23) & 0xFFFFFFFFFFFFFFF0);
              *&v195[-1].__opaque[48] = v194;
              *(v324 + 16) = v195;
              if (v195)
              {
LABEL_308:
                pthread_mutex_init(v195, 0);
                goto LABEL_309;
              }
            }

            else
            {
              *(v324 + 16) = 0;
            }

            aom_internal_error(*(a1 + 15248), 2, "Failed to allocate pbi->row_mt_mutex_");
            v195 = *(v324 + 16);
            if (!v195)
            {
              goto LABEL_309;
            }

            goto LABEL_308;
          }

          if (*v8)
          {
            free(*(*v8 - 8));
          }

          *v8 = 0;
          *(v8 + 8) = 0;
          v175 = 241664 * v174;
          if (v175 <= 0x1FFFFFFD9 && (v176 = malloc_type_malloc(v175 | 0x27, 0x5F484EBFuLL)) != 0)
          {
            v177 = v176;
            v178 = ((v176 + 39) & 0xFFFFFFFFFFFFFFE0);
            *(v178 - 1) = v177;
            *v8 = v178;
            if (v178)
            {
LABEL_284:
              bzero(v178, 241664 * v174);
              *(v8 + 8) = v174;
              goto LABEL_285;
            }
          }

          else
          {
            *v8 = 0;
          }

          aom_internal_error(*(v37 + 15248), 2, "Failed to allocate pbi->cb_buffer_base");
          v178 = *v8;
          goto LABEL_284;
        }
      }

      else
      {
        *(v354 + 128) = 0;
      }

      aom_internal_error(*(v37 + 15248), 2, "Failed to allocate pbi->tile_data");
      goto LABEL_214;
    }

LABEL_108:
    v26 = v364;
LABEL_109:
    v10 = v354;
    v54 = a2;
    goto LABEL_382;
  }

  v38 = a6 - a5;
  if (a6 <= a5)
  {
LABEL_67:
    v50 = *(v11 + 1680);
    v51 = *(v11 + 1684);
    v53 = v9[6];
    v52 = v9[7];
    v54 = a2;
    if (v25)
    {
      if (v52 >= v50)
      {
        v55 = *(v11 + 1680);
      }

      else
      {
        v55 = v9[7];
      }

      if (v53 >= v51)
      {
        v56 = *(v11 + 1684);
      }

      else
      {
        v56 = v9[6];
      }

      if (v52 >= 0)
      {
        v57 = v55;
      }

      else
      {
        v57 = 0;
      }

      if (v52 >= 0)
      {
        v58 = v55 + 1;
      }

      else
      {
        v58 = *(v11 + 1680);
      }

      v359 = v58;
      v59 = v52 < 0 && v9[1] != 0;
      if (v53 >= 0)
      {
        v60 = v56;
      }

      else
      {
        v60 = 0;
      }

      if (v53 >= 0)
      {
        v61 = v56 + 1;
      }

      else
      {
        v61 = *(v11 + 1684);
      }

      v62 = v53 < 0 && v9[1] != 0;
      v331 = v62;
      if (v61 <= v60)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v57 = 0;
      v60 = 0;
      v59 = v9[1];
      v331 = v59;
      v359 = *(v11 + 1680);
      v61 = *(v11 + 1684);
      if (v51 <= 0)
      {
        goto LABEL_101;
      }
    }

    v63 = v60;
    if (v359 > v57 && v57 + v60 * v50 <= a6 && v359 + (v61 - 1) * v50 > a5)
    {
      v328 = v61;
      v329 = v57;
      v330 = *(v11 + 1684);
      v318 = *(*(v11 + 1656) + 77);
      v345 = (a1 + 298256);
      if (v25)
      {
        if (v9[26])
        {
          v37 = a1;
          v64 = get_ls_tile_buffers(a1, v54, a3, v345);
          v342 = 0;
        }

        else
        {
          v342 = 0;
          v67 = &v345[128 * v53];
          v68 = v9[25];
          v69 = &v67[2 * v52];
          *v69 = v54;
          v69[1] = v68;
          v64 = &v68[v54];
          v37 = a1;
        }
      }

      else
      {
        v342 = (*(v338 + 492) & 1) == 0;
        get_tile_buffers_0(a1, v54, a3, a1 + 298256, a5, a6);
        v64 = 0;
        v37 = a1;
      }

      v344 = v37 + 56120;
      v70 = v330 * v50;
      v71 = *(v10 + 128);
      v26 = v364;
      v321 = v330 * v50;
      if (v71)
      {
        if (v70 == *(v10 + 136))
        {
          goto LABEL_136;
        }

        free(*(v71 - 8));
        v70 = v330 * v50;
      }

      *(v10 + 136) = 0;
      v72 = 21408 * v70;
      if (v72 <= 0x1FFFFFFD9 && (v73 = malloc_type_malloc(v72 + 39, 0x5F484EBFuLL), v74 = v330 * v50, v73))
      {
        v75 = (v73 + 39) & 0xFFFFFFFFFFFFFFE0;
        *(v75 - 8) = v73;
        *(v10 + 128) = v75;
        if (v75)
        {
LABEL_132:
          *(v10 + 136) = v74;
          if (v74 >= 1)
          {
            v76 = 21344;
            v77 = (v330 * v50);
            do
            {
              v78 = (*(v10 + 128) + v76);
              v78[2] = 0uLL;
              v78[3] = 0uLL;
              *v78 = 0uLL;
              v78[1] = 0uLL;
              v76 += 21408;
              --v77;
            }

            while (v77);
          }

          *(v8 + 12) = 0;
LABEL_136:
          v317 = v64;
          v79 = v37 + 49088;
          v337 = (v37 + 43872);
          v358 = (v364 + 3024);
          v81 = v329;
          v80 = v330;
          if (!*(v37 + 10768))
          {
            v82 = malloc_type_malloc(0x8017uLL, 0x5F484EBFuLL);
            if (!v82)
            {
              *(v37 + 10768) = 0;
LABEL_142:
              aom_internal_error(*(v37 + 15248), 2, "Failed to allocate pbi->dcb.xd.seg_mask");
              goto LABEL_143;
            }

            v83 = (v82 + 23) & 0xFFFFFFFFFFFFFFF0;
            *(v83 - 8) = v82;
            *(v37 + 10768) = v83;
            if (!v83)
            {
              goto LABEL_142;
            }
          }

LABEL_143:
          v323 = v8;
          *(v10 + 64) = read_coeffs_tx_intra_block;
          *(v10 + 80) = av1_read_coeffs_txb;
          *(v10 + 72) = predict_and_reconstruct_intra_block;
          *(v10 + 88) = inverse_transform_inter_block;
          *(v10 + 96) = predict_inter_block;
          *(v10 + 104) = cfl_store_inter_block;
          memcpy(v358, v37, 0x3B60uLL);
          *(v37 + 56312) = *(v10 + 8);
          v84 = *(v37 + 298160);
          v353 = (v37 + 15904);
          v352 = (v37 + 32960);
          *(v37 + 56304) = 0;
          v336 = (v37 + 15872);
          v335 = (v37 + 31744);
          *(v37 + 56280) = *(v10 + 40);
          v350 = (v37 + 15840);
          *(v37 + 56288) = v84;
          v356 = (v37 + 30528);
          v341 = (v37 + 41392);
          v334 = (v37 + 44000);
          v333 = (v37 + 46608);
          v340 = v37 + 40224;
          v339 = v37 + 39964;
          v327 = ~v329 + v50;
          v85 = a1 + 298256;
          v343 = v59;
          while (1)
          {
            v332 = v63;
            if (v331)
            {
              v63 = v80 + ~v63;
            }

            v363 = v63;
            v347 = v63 + 1;
            v86 = v327;
            v349 = v63;
            do
            {
              if (v59)
              {
                v87 = v86;
              }

              else
              {
                v87 = v81;
              }

              v88 = *(v26 + 1680) * v63;
              if (v88 + v87 < a5 || v88 + v87 > a6)
              {
                goto LABEL_148;
              }

              v90 = v37;
              v91 = v87;
              v92 = *(v354 + 128) + 21408 * v88 + 21408 * v87;
              v367 = v87;
              v93 = v85 + (v363 << 10) + 16 * v87;
              *v354 = v92 + 24;
              bzero(v90 + 14112, 0x30000uLL);
              v94 = v367;
              v95 = *(*(v26 + 1656) + 36);
              v96 = *(v340 + 4 * v363) << v95;
              v97 = *(v340 + 4 * v347) << v95;
              *(v79 + 16) = v63;
              if (v97 >= v90[3933])
              {
                v97 = v90[3933];
              }

              *v79 = v96;
              *(v79 + 4) = v97;
              v98 = (v339 + 4 * v91);
              v99 = *v98 << v95;
              v100 = v98[1] << v95;
              *(v79 + 20) = v367;
              if (v100 >= v90[3934])
              {
                v100 = v90[3934];
              }

              *(v79 + 8) = v99;
              *(v79 + 12) = v100;
              *(v79 + 2884) = v90[3954];
              v102 = *v93;
              v101 = *(v93 + 8);
              if (v101 - 1 >= &a3[-*v93])
              {
                *v358 = v96;
                aom_internal_error(a1 + 390868, 7, "Truncated packet or corrupt tile length");
              }

              if (v102 || !v101)
              {
                *(v92 + 24) = v102;
                *(v92 + 32) = &v102[v101];
                *(v92 + 40) = v102;
                *(v92 + 48) = -14;
                *(v92 + 64) = v102;
                *(v92 + 72) = 0xFFF180007FFFFFFFLL;
                v103 = v101;
                *(v92 + 56) = &v102[v101];
                v26 = v364;
                if (!v101)
                {
                  v104 = 0x7FFFFFFF;
                  v108 = -15;
                  v37 = a1;
                  goto LABEL_173;
                }

                v104 = (*v102 << 23) ^ 0x7FFFFFFF;
                v105 = v101 != 1;
                v37 = a1;
                if (v103 == 1)
                {
                  v108 = -7;
                  ++v102;
                  if (!v105)
                  {
                    goto LABEL_173;
                  }
                }

                else
                {
                  v104 ^= v102[1] << 15;
                  v106 = v103 > 2;
                  if (v103 < 3)
                  {
                    v102 += 2;
                    v108 = 1;
                    if (v106)
                    {
                      goto LABEL_174;
                    }
                  }

                  else
                  {
                    v104 ^= v102[2] << 7;
                    v102 += 3;
                    v107 = v103 != 3;
                    v108 = 9;
                    if (v107)
                    {
                      goto LABEL_174;
                    }
                  }

LABEL_173:
                  *(v92 + 48) = (16370 - v108);
                  v108 = 0x4000;
                }

LABEL_174:
                *(v92 + 72) = v104;
                *(v92 + 78) = v108;
                *(v92 + 64) = v102;
                goto LABEL_175;
              }

              *v358 = *v79;
              v37 = a1;
              aom_internal_error(a1 + 390868, 2, "Failed to allocate BOOL decoder %d", 1);
              v26 = v364;
LABEL_175:
              *(v92 + 80) = v342;
              v109 = *(v26 + 1656);
              v110 = *(v109 + 77);
              v111 = v353;
              if (*(v26 + 3040))
              {
                v112 = v352;
              }

              else
              {
                v111 = v350;
                v112 = v356;
              }

              v113 = v111[1];
              *v341 = *v111;
              v341[1] = v113;
              memcpy((v37 + 41440), v112, 0x4C0uLL);
              if (!v110)
              {
                v114 = v336;
                if (*v337)
                {
                  v115 = v335;
                }

                else
                {
                  v114 = v350;
                  v115 = v356;
                }

                v116 = v114[1];
                *v334 = *v114;
                v334[1] = v116;
                memcpy((v37 + 44048), v115, 0x4C0uLL);
                v117 = v353;
                if (!v337[2608])
                {
                  v117 = v350;
                }

                v94 = v367;
                if (v337[2608])
                {
                  v118 = v352;
                }

                else
                {
                  v118 = v356;
                }

                v119 = v117[1];
                *v333 = *v117;
                v333[1] = v119;
                memcpy((v37 + 46656), v118, 0x4C0uLL);
              }

              *(v26 + 3032) = *(v37 + 15780);
              *(v79 + 2896) = *(v37 + 15248);
              bzero((v37 + 52024), 0x800uLL);
              bzero((v37 + 54072), 0x800uLL);
              *(v344 + 144) = *(v109 + 96);
              *(v344 + 140) = 0;
              *(v344 + 152) = 0;
              *(v344 + 2) = 0;
              *v344 = 0;
              v120 = *(v109 + 77);
              *(v79 + 128) = *(*(v26 + 2288) + 8 * v363);
              if (!v120)
              {
                *(v79 + 136) = *(*(v26 + 2296) + 8 * v363);
                *(v79 + 144) = *(*(v26 + 2304) + 8 * v363);
              }

              *(v79 + 248) = *(*(v26 + 2280) + 8 * v363);
              *(v79 + 288) = *(*(v26 + 2312) + 8 * v363);
              memcpy((v92 + 96), *(v26 + 1664), 0x52FCuLL);
              *(v79 + 2808) = v92 + 96;
              v63 = v349;
              decode_tile(v37, v358, v349, v94);
              v121 = *(v37 + 15056) | *(v344 + 184);
              *(v37 + 15056) = v121;
              v59 = v343;
              v85 = a1 + 298256;
              if (v121)
              {
                aom_internal_error(v37 + 390868, 7, "Failed to decode tile data");
              }

LABEL_148:
              ++v81;
              --v86;
            }

            while (v359 != v81);
            v63 = v332 + 1;
            v81 = v329;
            v80 = v330;
            if (v332 + 1 == v328)
            {
              if (*(v26 + 2260))
              {
                v8 = v323;
                v10 = v354;
                v54 = v317;
                v22 = v318;
                if (v321 != 1)
                {
                  goto LABEL_382;
                }

LABEL_331:
                v218 = *(v10 + 128);
LABEL_380:
                v122 = v218 + 24;
              }

              else
              {
                v10 = v354;
                v122 = *(v354 + 128) + 21408 * a6 + 24;
                v8 = v323;
                v22 = v318;
              }

              v54 = *(v122 + 8);
              goto LABEL_382;
            }
          }
        }
      }

      else
      {
        *(v10 + 128) = 0;
      }

      aom_internal_error(*(v37 + 15248), 2, "Failed to allocate pbi->tile_data");
      v74 = v330 * v50;
      goto LABEL_132;
    }

LABEL_101:
    v37 = a1;
    goto LABEL_382;
  }

  if (!v25)
  {
    v322 = v8;
    v48 = 0;
    v46 = 0;
    v39 = *(v11 + 1680);
    v40 = *(v11 + 1684);
    v41 = v40 * v39;
    v47 = v40;
    v49 = v39;
    goto LABEL_112;
  }

  if (!v9[26])
  {
    goto LABEL_66;
  }

  v322 = v8;
  v39 = *(v11 + 1680);
  v40 = *(v11 + 1684);
  v41 = v40 * v39;
  v43 = v9[6];
  v42 = v9[7];
  if (v42 >= v39)
  {
    v44 = *(v11 + 1680);
  }

  else
  {
    v44 = v9[7];
  }

  if (v43 >= v40)
  {
    v45 = *(v11 + 1684);
  }

  else
  {
    v45 = v9[6];
  }

  v46 = v45 & ~(v43 >> 31);
  if (v43 >= 0)
  {
    v47 = v45 + 1;
  }

  else
  {
    v47 = *(v11 + 1684);
  }

  v48 = v44 & ~(v42 >> 31);
  if (v42 >= 0)
  {
    v49 = v44 + 1;
  }

  else
  {
    v49 = *(v11 + 1680);
  }

LABEL_112:
  if (v24 > v38)
  {
    v65 = (v38 + 1);
  }

  else
  {
    v65 = v24;
  }

  if (v47 <= v46)
  {
    v37 = a1;
    v26 = v364;
    v8 = v322;
    goto LABEL_109;
  }

  v54 = a2;
  if (v49 <= v48 || v48 + v46 * v39 > a6 || v49 + (v47 - 1) * v39 <= a5)
  {
    v10 = v354;
    v37 = a1;
    v26 = v364;
    v8 = v322;
    goto LABEL_382;
  }

  v366 = v65;
  v362 = v41;
  v320 = *(*(v11 + 1656) + 77);
  decode_mt_init(a1);
  if (*(v364 + 2260))
  {
    v66 = get_ls_tile_buffers(a1, a2, a3, (a1 + 298256));
  }

  else
  {
    get_tile_buffers_0(a1, a2, a3, a1 + 298256, a5, a6);
    v66 = 0;
  }

  v219 = v354;
  v220 = *(v354 + 128);
  v221 = v362;
  if (v220)
  {
    if (v362 == *(v354 + 136))
    {
      goto LABEL_346;
    }

    free(*(v220 - 8));
    v219 = v354;
  }

  *(v219 + 136) = 0;
  v222 = 21408 * v362;
  if (v222 > 0x1FFFFFFD9 || (v223 = malloc_type_malloc(v222 + 39, 0x5F484EBFuLL)) == 0)
  {
    *(v354 + 128) = 0;
LABEL_341:
    aom_internal_error(*(a1 + 15248), 2, "Failed to allocate pbi->tile_data");
    goto LABEL_342;
  }

  v224 = (v223 + 39) & 0xFFFFFFFFFFFFFFE0;
  *(v224 - 8) = v223;
  *(v354 + 128) = v224;
  if (!v224)
  {
    goto LABEL_341;
  }

LABEL_342:
  *(v354 + 136) = v362;
  if (v362 >= 1)
  {
    v225 = v362;
    v226 = 21344;
    do
    {
      v227 = (*(v354 + 128) + v226);
      v227[2] = 0uLL;
      v227[3] = 0uLL;
      *v227 = 0uLL;
      v227[1] = 0uLL;
      v226 += 21408;
      --v225;
    }

    while (v225);
  }

  *(v322 + 12) = 0;
LABEL_346:
  if (!*(a1 + 10768))
  {
    v228 = malloc_type_malloc(0x8017uLL, 0x5F484EBFuLL);
    if (!v228)
    {
      *(a1 + 10768) = 0;
LABEL_351:
      aom_internal_error(*(a1 + 15248), 2, "Failed to allocate pbi->dcb.xd.seg_mask");
      goto LABEL_352;
    }

    v229 = (v228 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v229 - 8) = v228;
    *(a1 + 10768) = v229;
    if (!v229)
    {
      goto LABEL_351;
    }
  }

LABEL_352:
  if (v40 >= 1 && v39 >= 1)
  {
    v230 = 0;
    v231 = a1 + 40224;
    v232 = *(*(v364 + 1656) + 36);
    v233 = *(a1 + 15732);
    v234 = *(a1 + 15736);
    v235 = *(v354 + 128) + 12;
    v236 = 21408 * *(v364 + 1680);
    do
    {
      v237 = 0;
      v238 = v230 + 1;
      v239 = (v364 + 1744);
      v240 = v235;
      do
      {
        v241 = *(v231 + 4 * v230) << v232;
        v242 = *(v231 + 4 * v238) << v232;
        v240[1] = v230;
        if (v242 >= v233)
        {
          v242 = v233;
        }

        *(v240 - 3) = v241;
        *(v240 - 2) = v242;
        v243 = *(v239 - 1) << v232;
        v244 = *v239 << v232;
        v240[2] = v237;
        if (v244 >= v234)
        {
          v244 = v234;
        }

        *(v240 - 1) = v243;
        *v240 = v244;
        ++v237;
        v240 += 5352;
        ++v239;
      }

      while (v39 != v237);
      v235 += v236;
      ++v230;
    }

    while (v238 != v40);
  }

  tile_mt_queue(a1, v39, v40, v46, v47, v48, v49, a5, a6);
  if (v366 <= 0)
  {
    *(a1 + 15056) = 0;
    v37 = a1;
    v26 = v364;
    v8 = v322;
    v10 = v354;
    v54 = v66;
  }

  else
  {
    v245 = *(v364 + 2992);
    v246 = *(v364 + 3008);
    memcpy(*v246, a1, 0x3B60uLL);
    v247 = *v246;
    v248 = *v246 + 256872;
    *(v247 + 3764) = 0;
    *(v247 + 15064) = *v248;
    *(v247 + 1879) = *(v248 + 32);
    *(v247 + 940) = *(v247 + 16057);
    off_28100B660[0]();
    v245[3] = tile_worker_hook_0;
    v245[4] = v246;
    v245[5] = a1;
    if (v366 != 1)
    {
      v249 = 0;
      v250 = v366 - 1;
      v251 = 424;
      do
      {
        v252 = (*(v364 + 2992) + v249);
        v253 = (*(v364 + 3008) + v251);
        memcpy(*v253, a1, 0x3B60uLL);
        v254 = *v253;
        v255 = *v253 + 256872;
        *(v254 + 3764) = 0;
        *(v254 + 15064) = *v255;
        *(v254 + 1879) = *(v255 + 32);
        *(v254 + 1346) = *(v255 + 16);
        *(v254 + 940) = *(v254 + 16057);
        off_28100B660[0]();
        v252[10] = tile_worker_hook_0;
        v252[11] = v253;
        v252[12] = a1;
        v251 += 424;
        v249 += 56;
        --v250;
      }

      while (v250);
    }

    v256 = v366;
    v257 = v366 - 1;
    v258 = *(v364 + 2992) + 56 * (v366 - 1);
    *(*(v258 + 32) + 8) = a3;
    *(v258 + 48) = 0;
    if (v366 == 1)
    {
      v8 = v322;
      v54 = v66;
    }

    else
    {
      v259 = 56 * v366;
      v8 = v322;
      v54 = v66;
      do
      {
        off_28100B668(v258);
        v260 = *(v364 + 2992);
        *(*(v260 + v259 - 80) + 8) = a3;
        *(v260 + v259 - 64) = 0;
        v259 -= 56;
        --v257;
        v258 = v260 + 56 * v257;
      }

      while (v257);
      v258 = v260 + v259 - 56;
      v256 = v366;
    }

    off_28100B670(v258);
    v261 = 0;
    v262 = v256 + 1;
    v263 = 56 * v256 - 56;
    v10 = v354;
    do
    {
      off_28100B660[0]();
      v261 |= v264 == 0;
      --v262;
      v263 -= 56;
    }

    while (v262 > 1);
    v37 = a1;
    *(a1 + 15056) = v261;
    v26 = v364;
    v221 = v362;
    if (v261)
    {
      aom_internal_error(a1 + 390868, 7, "Failed to decode tile data");
    }
  }

  v22 = v320;
  if (!*(v26 + 2260))
  {
LABEL_379:
    v218 = *(v10 + 128) + 21408 * a6;
    goto LABEL_380;
  }

  if (v221 == 1)
  {
    goto LABEL_331;
  }

LABEL_382:
  *a4 = v54;
  if (!v22)
  {
    goto LABEL_434;
  }

  v265 = *(v26 + 1656);
  v266 = *(v37 + 7960);
  if (!*(v265 + 76))
  {
    if (*(v266 + 28) > 0)
    {
      v273 = 0;
      do
      {
        memset((*(v266 + 48) + *(v266 + 36) * v273++), 128, *(v266 + 20));
        v274 = *(v266 + 28);
      }

      while (v273 < v274);
      if (v274 >= 1)
      {
        v275 = 0;
        do
        {
          memset((*(v266 + 56) + *(v266 + 36) * v275++), 128, *(v266 + 20));
        }

        while (v275 < *(v266 + 28));
      }
    }

    goto LABEL_434;
  }

  v267 = *(v266 + 28);
  if (v267 < 1)
  {
    goto LABEL_434;
  }

  v268 = 1 << (*(v265 + 72) - 1);
  v269 = (2 * *(v266 + 48));
  v270 = *(v266 + 20);
  if (v270)
  {
    if (v270 < 4)
    {
      v271 = 0;
      v272 = (2 * *(v266 + 48));
      goto LABEL_406;
    }

    if (v270 >= 0x10)
    {
      v271 = v270 & 0xFFFFFFFFFFFFFFF0;
      v276 = vdupq_n_s16(v268);
      v277 = v269 + 1;
      v278 = v270 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v277[-1] = v276;
        *v277 = v276;
        v277 += 2;
        v278 -= 16;
      }

      while (v278);
      if (v271 == v270)
      {
        goto LABEL_408;
      }

      if ((v270 & 0xC) == 0)
      {
        v272 = &v269->i16[v271];
LABEL_406:
        v283 = v270 - v271;
        do
        {
          *v272++ = v268;
          --v283;
        }

        while (v283);
LABEL_408:
        v267 = *(v266 + 28);
        goto LABEL_409;
      }
    }

    else
    {
      v271 = 0;
    }

    v279 = v271;
    v271 = v270 & 0xFFFFFFFFFFFFFFFCLL;
    v272 = &v269->i16[v270 & 0xFFFFFFFFFFFFFFFCLL];
    v280 = vdup_n_s16(v268);
    v281 = (v269 + 2 * v279);
    v282 = v279 - (v270 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v281++ = v280;
      v282 += 4;
    }

    while (v282);
    if (v271 == v270)
    {
      goto LABEL_408;
    }

    goto LABEL_406;
  }

LABEL_409:
  if (v267 > 1)
  {
    for (i = 1; i < v267; ++i)
    {
      memcpy(v269 + 2 * *(v266 + 36) * i, v269, 2 * *(v266 + 20));
      v267 = *(v266 + 28);
    }

    v26 = v364;
  }

  if (v267 >= 1)
  {
    v285 = (2 * *(v266 + 56));
    v286 = *(v266 + 20);
    if (!v286)
    {
      goto LABEL_431;
    }

    if (v286 < 4)
    {
      v287 = 0;
      v288 = (2 * *(v266 + 56));
      goto LABEL_428;
    }

    if (v286 >= 0x10)
    {
      v287 = v286 & 0xFFFFFFFFFFFFFFF0;
      v289 = vdupq_n_s16(v268);
      v290 = v285 + 1;
      v291 = v286 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v290[-1] = v289;
        *v290 = v289;
        v290 += 2;
        v291 -= 16;
      }

      while (v291);
      if (v287 == v286)
      {
        goto LABEL_430;
      }

      if ((v286 & 0xC) == 0)
      {
        v288 = &v285->i16[v287];
LABEL_428:
        v296 = v286 - v287;
        do
        {
          *v288++ = v268;
          --v296;
        }

        while (v296);
LABEL_430:
        v267 = *(v266 + 28);
LABEL_431:
        if (v267 >= 2)
        {
          v297 = 1;
          do
          {
            memcpy(v285 + 2 * *(v266 + 36) * v297++, v285, 2 * *(v266 + 20));
          }

          while (v297 < *(v266 + 28));
        }

        goto LABEL_434;
      }
    }

    else
    {
      v287 = 0;
    }

    v292 = v287;
    v287 = v286 & 0xFFFFFFFFFFFFFFFCLL;
    v288 = &v285->i16[v286 & 0xFFFFFFFFFFFFFFFCLL];
    v293 = vdup_n_s16(v268);
    v294 = (v285 + 2 * v292);
    v295 = v292 - (v286 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v294++ = v293;
      v295 += 4;
    }

    while (v295);
    if (v287 == v286)
    {
      goto LABEL_430;
    }

    goto LABEL_428;
  }

LABEL_434:
  if (*(v26 + 1680) * *(v26 + 1684) - 1 != a6)
  {
    return;
  }

  v298 = (v26 + 2952);
  av1_alloc_cdef_buffers(v338, (v26 + 2984), v26 + 2952, *(v26 + 3000), 1);
  if (*(v26 + 3000) >= 1 && !*v298)
  {
    v303 = malloc_type_malloc(0x57uLL, 0x5F484EBFuLL);
    if (v303)
    {
      v304 = v303;
      v305 = ((v303 + 23) & 0xFFFFFFFFFFFFFFF0);
      *&v305[-1].__opaque[48] = v304;
      *v298 = v305;
      if (v305)
      {
LABEL_442:
        pthread_mutex_init(v305, 0);
        goto LABEL_443;
      }
    }

    else
    {
      *v298 = 0;
    }

    aom_internal_error(*(v37 + 15248), 2, "Failed to allocate cdef_sync->mutex_");
    v305 = *v298;
    if (*v298)
    {
      goto LABEL_442;
    }
  }

LABEL_443:
  v306 = v338;
  if ((*(v338 + 496) & 1) != 0 || *(v26 + 2264))
  {
    goto LABEL_445;
  }

  if (*v26 || *(v26 + 4))
  {
    av1_loop_filter_frame_mt(*(v37 + 15432) + 1248, v338, v37, 0, v325, 0, *(v26 + 2992), *(v26 + 3000), *v299.i64, v300, v301, v302, v37 + 40728, 0);
  }

  if (*(v8 + 84))
  {
    v307 = 0;
    v306 = v338;
  }

  else
  {
    v306 = v338;
    if (*(v338 + 499))
    {
      v307 = 0;
    }

    else
    {
      v307 = *(v26 + 680) || *(v26 + 552) || *(v26 + 616) != 0;
    }
  }

  v308 = (*(v37 + 15256) == *(v37 + 15272)) & ~v307;
  if (*(v364 + 32) || *(v364 + 96))
  {
    v309 = 1;
    if (((*(v37 + 15256) == *(v37 + 15272)) & ~v307) != 0)
    {
      goto LABEL_470;
    }

LABEL_474:
    if (v309)
    {
      av1_loop_restoration_save_boundary_lines(*(v37 + 15432) + 1248, v306, 0, v299);
      v306 = v338;
      if (!v307)
      {
        goto LABEL_476;
      }
    }

    else if (!v307)
    {
LABEL_476:
      v26 = v364;
      if (*(v37 + 15256) == *(v37 + 15272))
      {
        goto LABEL_477;
      }

      goto LABEL_486;
    }

    v312 = *(v364 + 3000);
    if (v312 < 2)
    {
      av1_cdef_frame(*(v37 + 15432) + 1248, v306, v37, av1_cdef_init_fb_row);
    }

    else
    {
      av1_cdef_frame_mt(v338, v37, *(v364 + 2984), *(v364 + 2992), v298, v312, av1_cdef_init_fb_row_mt, 0);
    }

    v306 = v338;
    v26 = v364;
    if (*(v37 + 15256) == *(v37 + 15272))
    {
LABEL_477:
      if (!v309)
      {
        goto LABEL_445;
      }

LABEL_487:
      v313 = v306;
      av1_loop_restoration_save_boundary_lines(*(v37 + 15432) + 1248, v306, 1, v299);
      v314 = *(v26 + 3000);
      v315 = *(v37 + 7960);
      if (v314 < 2)
      {
        av1_loop_restoration_filter_frame(v315, v313, v308, (v37 + 40984));
      }

      else
      {
        av1_loop_restoration_filter_frame_mt(v315, v313, v308, *(v26 + 2992), v314, v37 + 40856, v37 + 40984, 0);
      }

      v306 = v313;
      goto LABEL_445;
    }

LABEL_486:
    *v299.i64 = av1_superres_upscale(v306, *(v26 + 2272), 0, *v299.i64);
    v306 = v338;
    if (!v309)
    {
      goto LABEL_445;
    }

    goto LABEL_487;
  }

  v309 = *(v364 + 160) != 0;
  if (((*(v37 + 15256) == *(v37 + 15272)) & ~v307) == 0)
  {
    goto LABEL_474;
  }

LABEL_470:
  v26 = v364;
  if (v309)
  {
    v310 = *(v364 + 3000);
    v311 = *(v37 + 7960);
    if (v310 < 2)
    {
      av1_loop_restoration_filter_frame(v311, v306, v308, (v37 + 40984));
    }

    else
    {
      av1_loop_restoration_filter_frame_mt(v311, v338, v308, *(v364 + 2992), v310, v37 + 40856, v37 + 40984, 0);
    }

    v306 = v338;
  }

LABEL_445:
  if (*(v37 + 15056))
  {
    aom_internal_error(v37 + 390868, 7, "Decode failed. Frame data is corrupted.");
    if (!*(v26 + 2260))
    {
      goto LABEL_447;
    }

LABEL_453:
    if (!*(v37 + 15680))
    {
      return;
    }

    goto LABEL_454;
  }

  if (*(v306 + 516) == 1)
  {
    memcpy(*(v26 + 1664), (*(v10 + 128) + 21408 * *(v8 + 80) + 96), 0x52FCuLL);
    av1_reset_cdf_symbol_counters(*(v26 + 1664));
    if (*(v26 + 2260))
    {
      goto LABEL_453;
    }
  }

  else if (*(v26 + 2260))
  {
    goto LABEL_453;
  }

LABEL_447:
  memcpy((*(v37 + 15432) + 1480), *(v26 + 1664), 0x52FCuLL);
  if (!*(v37 + 15680))
  {
    return;
  }

LABEL_454:
  if (!*(*(v26 + 1656) + 40))
  {
    ++*(v37 + 15216);
  }
}

uint64_t reset_ref_frame_map(uint64_t result)
{
  v1 = result;
  v2 = *(result + 25296);
  v3 = *(result + 416);
  if (v3)
  {
    v4 = (*v3)-- == 1;
    if (v4)
    {
      if (*(v3 + 1224))
      {
        v5 = (v3 + 1224);
        result = (*(v2 + 80))(*(v2 + 64), v3 + 1224);
        v5[1] = 0;
        v5[2] = 0;
        *v5 = 0;
      }
    }
  }

  v1[52] = 0;
  v6 = v1[53];
  if (v6)
  {
    v4 = (*v6)-- == 1;
    if (v4)
    {
      if (*(v6 + 1224))
      {
        v7 = (v6 + 1224);
        result = (*(v2 + 80))(*(v2 + 64), v6 + 1224);
        v7[1] = 0;
        v7[2] = 0;
        *v7 = 0;
      }
    }
  }

  v1[53] = 0;
  v8 = v1[54];
  if (v8)
  {
    v4 = (*v8)-- == 1;
    if (v4)
    {
      if (*(v8 + 1224))
      {
        v9 = (v8 + 1224);
        result = (*(v2 + 80))(*(v2 + 64), v8 + 1224);
        v9[1] = 0;
        v9[2] = 0;
        *v9 = 0;
      }
    }
  }

  v1[54] = 0;
  v10 = v1[55];
  if (v10)
  {
    v4 = (*v10)-- == 1;
    if (v4)
    {
      if (*(v10 + 1224))
      {
        v11 = (v10 + 1224);
        result = (*(v2 + 80))(*(v2 + 64), v10 + 1224);
        v11[1] = 0;
        v11[2] = 0;
        *v11 = 0;
      }
    }
  }

  v1[55] = 0;
  v12 = v1[56];
  if (v12)
  {
    v4 = (*v12)-- == 1;
    if (v4)
    {
      if (*(v12 + 1224))
      {
        v13 = (v12 + 1224);
        result = (*(v2 + 80))(*(v2 + 64), v12 + 1224);
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
      }
    }
  }

  v1[56] = 0;
  v14 = v1[57];
  if (v14)
  {
    v4 = (*v14)-- == 1;
    if (v4)
    {
      if (*(v14 + 1224))
      {
        v15 = (v14 + 1224);
        result = (*(v2 + 80))(*(v2 + 64), v14 + 1224);
        v15[1] = 0;
        v15[2] = 0;
        *v15 = 0;
      }
    }
  }

  v1[57] = 0;
  v16 = v1[58];
  if (v16)
  {
    v4 = (*v16)-- == 1;
    if (v4)
    {
      if (*(v16 + 1224))
      {
        v17 = (v16 + 1224);
        result = (*(v2 + 80))(*(v2 + 64), v16 + 1224);
        v17[1] = 0;
        v17[2] = 0;
        *v17 = 0;
      }
    }
  }

  v1[58] = 0;
  v18 = v1[59];
  if (v18 && (v4 = *v18 == 1, --*v18, v4) && *(v18 + 1224))
  {
    v19 = (v18 + 1224);
    result = (*(v2 + 80))(*(v2 + 64), v18 + 1224);
    v19[1] = 0;
    v19[2] = 0;
    *v19 = 0;
    v1[59] = 0;
  }

  else
  {
    v1[59] = 0;
  }

  return result;
}

double setup_frame_size_0(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = *(a1 + 24680);
  if (!a2)
  {
    v13 = v5[2];
    v20 = v5[3];
    goto LABEL_23;
  }

  v6 = v5[1];
  if (*v5 < 1)
  {
    v7 = 0;
    v13 = 1;
    if (v6 >= 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    v8 = *v5 + 1;
    do
    {
      while (1)
      {
        v10 = *(a3 + 4);
        v11 = (*a3 + (v10 >> 3));
        if (v11 >= a3[1])
        {
          break;
        }

        v9 = (*v11 >> (~v10 & 7)) & 1;
        *(a3 + 4) = v10 + 1;
        v7 |= v9 << (v8-- - 2);
        if (v8 <= 1)
        {
          goto LABEL_9;
        }
      }

      v12 = a3[4];
      if (v12)
      {
        v12(a3[3]);
      }

      --v8;
    }

    while (v8 > 1);
LABEL_9:
    v13 = (v7 + 1);
    if (v6 >= 1)
    {
LABEL_10:
      v14 = 0;
      v15 = v6 + 1;
      do
      {
        while (1)
        {
          v17 = *(a3 + 4);
          v18 = (*a3 + (v17 >> 3));
          if (v18 >= a3[1])
          {
            break;
          }

          v16 = (*v18 >> (~v17 & 7)) & 1;
          *(a3 + 4) = v17 + 1;
          v14 |= v16 << (v15-- - 2);
          if (v15 <= 1)
          {
            goto LABEL_16;
          }
        }

        v19 = a3[4];
        if (v19)
        {
          v19(a3[3]);
        }

        --v15;
      }

      while (v15 > 1);
LABEL_16:
      v20 = (v14 + 1);
      if (v7 >= v5[2])
      {
        goto LABEL_22;
      }

LABEL_21:
      if (v14 < v5[3])
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  v14 = 0;
  v20 = 1;
  if (v7 < v5[2])
  {
    goto LABEL_21;
  }

LABEL_22:
  aom_internal_error(*(a1 + 48), 7, "Frame dimensions are larger than the maximum values");
LABEL_23:
  *(a1 + 72) = v13;
  *(a1 + 76) = v20;
  if (!*(*(a1 + 24680) + 66))
  {
    goto LABEL_48;
  }

  v21 = *(a3 + 4);
  v22 = *a3;
  v23 = a3[1];
  v24 = (*a3 + (v21 >> 3));
  if (v24 >= v23)
  {
    v31 = a3[4];
    if (v31)
    {
      v31(a3[3]);
    }

    goto LABEL_31;
  }

  v25 = *v24;
  v26 = v21 + 1;
  *(a3 + 4) = v21 + 1;
  if (((v25 >> (~v21 & 7)) & 1) == 0)
  {
LABEL_31:
    *(a1 + 80) = 8;
    goto LABEL_48;
  }

  v27 = (v22 + (v26 >> 3));
  if (v27 >= v23)
  {
    v32 = a3[4];
    if (v32)
    {
      v32(a3[3]);
      v29 = 0;
      v26 = *(a3 + 4);
      v22 = *a3;
      v23 = a3[1];
      v30 = (*a3 + (v26 >> 3));
      if (v30 >= v23)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v29 = 0;
      v30 = (v22 + (v26 >> 3));
      if (v30 >= v23)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    v28 = *v27 >> (~v26 & 7);
    v26 = v21 + 2;
    *(a3 + 4) = v21 + 2;
    v29 = 4 * (v28 & 1);
    v30 = (v22 + ((v21 + 2) >> 3));
    if (v30 >= v23)
    {
LABEL_36:
      v30 = a3[4];
      if (v30)
      {
        v30(a3[3]);
        LODWORD(v30) = 0;
        v26 = *(a3 + 4);
        v22 = *a3;
        v23 = a3[1];
      }

      goto LABEL_38;
    }
  }

  v33 = *v30 >> (~v26++ & 7);
  *(a3 + 4) = v26;
  LODWORD(v30) = 2 * (v33 & 1);
LABEL_38:
  v34 = v30 | v29;
  v35 = (v22 + (v26 >> 3));
  if (v35 >= v23)
  {
    v35 = a3[4];
    if (v35)
    {
      v35(a3[3]);
      LODWORD(v35) = 0;
    }
  }

  else
  {
    LODWORD(v35) = (*v35 >> (~v26 & 7)) & 1;
    *(a3 + 4) = v26 + 1;
  }

  v36 = (v35 | v34) + 9;
  *(a1 + 80) = v36;
  if (v13 >= 16)
  {
    v37 = 16;
  }

  else
  {
    v37 = v13;
  }

  v38 = (8 * v13 + (v36 >> 1)) / v36;
  if (v38 <= v37)
  {
    v13 = v37;
  }

  else
  {
    v13 = v38;
  }

LABEL_48:
  resize_context_buffers_0(a1, v13, v20);
  *(a1 + 64) = *(a1 + 72);
  v39 = *(a3 + 4);
  v40 = (*a3 + (v39 >> 3));
  if (v40 >= a3[1])
  {
    v54 = a3[4];
    if (v54)
    {
      v54(a3[3]);
    }
  }

  else
  {
    v41 = *v40;
    *(a3 + 4) = v39 + 1;
    if ((v41 >> (~v39 & 7)))
    {
      v42 = 0;
      for (i = 17; i > 1; --i)
      {
        while (1)
        {
          v45 = *(a3 + 4);
          v46 = (*a3 + (v45 >> 3));
          if (v46 >= a3[1])
          {
            break;
          }

          v44 = (*v46 >> (~v45 & 7)) & 1;
          *(a3 + 4) = v45 + 1;
          v42 |= v44 << (i-- - 2);
          if (i <= 1)
          {
            goto LABEL_56;
          }
        }

        v47 = a3[4];
        if (v47)
        {
          v47(a3[3]);
        }
      }

LABEL_56:
      v48 = 0;
      *(a1 + 64) = v42 + 1;
      for (j = 17; j > 1; --j)
      {
        while (1)
        {
          v51 = *(a3 + 4);
          v52 = (*a3 + (v51 >> 3));
          if (v52 >= a3[1])
          {
            break;
          }

          v50 = (*v52 >> (~v51 & 7)) & 1;
          *(a3 + 4) = v51 + 1;
          v48 |= v50 << (j-- - 2);
          if (j <= 1)
          {
            goto LABEL_62;
          }
        }

        v53 = a3[4];
        if (v53)
        {
          v53(a3[3]);
        }
      }

LABEL_62:
      *(a1 + 68) = v48 + 1;
    }
  }

  return setup_buffer_pool(a1);
}

double resize_context_buffers_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 > 0x4000 || a3 > 0x4000)
  {
    aom_internal_error(*(a1 + 48), 7, "Dimensions of %dx%d beyond allowed size of %dx%d.", a2, a3, 0x4000, 0x4000);
    if (*(a1 + 56) != a2)
    {
      goto LABEL_7;
    }

LABEL_6:
    if (*(a1 + 60) == a3)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (*(a1 + 56) == a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (*(a1 + 536) >= (a2 + 3) >> 2 && *(a1 + 532) >= (a3 + 3) >> 2)
  {
    (*(a1 + 608))(a1 + 520, a2, a3, 0);
  }

  else if (av1_alloc_context_buffers(a1))
  {
    *(a1 + 56) = 0;
    aom_internal_error(*(a1 + 48), 2, "Failed to allocate context buffers");
  }

  (*(a1 + 600))(a1 + 520);
  *(a1 + 56) = a2;
  *(a1 + 60) = a3;
LABEL_13:
  v6 = *(a1 + 232);
  v7 = *(v6 + 72);
  if (v7)
  {
    if (*(v6 + 260) == *(a1 + 532) && *(v6 + 264) == *(a1 + 536))
    {
      goto LABEL_29;
    }

    free(*(v7 - 8));
  }

  v8 = *(a1 + 532);
  *(v6 + 260) = v8;
  v9 = *(a1 + 536);
  *(v6 + 264) = v9;
  v10 = ((v9 + 1) >> 1) * ((v8 + 1) >> 1);
  if (v10 <= 0x3FFFFFFD)
  {
    v11 = 8 * v10;
    v12 = malloc_type_malloc(v11 + 23, 0x5F484EBFuLL);
    if (v12)
    {
      v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v13 - 8) = v12;
      if (v13)
      {
        bzero(((v12 + 23) & 0xFFFFFFFFFFFFFFF0), v11);
        *(v6 + 72) = v13;
        v14 = *(v6 + 80);
        if (!v14)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }
  }

  *(v6 + 72) = 0;
  aom_internal_error(*(a1 + 48), 2, "Failed to allocate buf->mvs");
  v14 = *(v6 + 80);
  if (v14)
  {
LABEL_23:
    free(*(v14 - 8));
  }

LABEL_24:
  v15 = *(a1 + 536) * *(a1 + 532);
  if ((v15 & 0x80000000) == 0 && (v16 = malloc_type_malloc(v15 + 23, 0x5F484EBFuLL)) != 0 && (v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF0, *(v17 - 8) = v16, v17))
  {
    bzero(((v16 + 23) & 0xFFFFFFFFFFFFFFF0), v15);
    *(v6 + 80) = v17;
  }

  else
  {
    *(v6 + 80) = 0;
    aom_internal_error(*(a1 + 48), 2, "Failed to allocate buf->seg_map");
  }

LABEL_29:
  v18 = ((*(a1 + 532) + 32) >> 1) * (*(a1 + 580) >> 1);
  v19 = *(a1 + 25400);
  if (v19)
  {
    if (*(a1 + 25408) >= v18)
    {
      goto LABEL_38;
    }

    free(*(v19 - 8));
  }

  if (v18 <= 0x3FFFFFFD && (v20 = malloc_type_malloc(8 * v18 + 23, 0x5F484EBFuLL)) != 0 && (v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF0, *(v21 - 8) = v20, v21))
  {
    bzero(((v20 + 23) & 0xFFFFFFFFFFFFFFF0), 8 * v18);
    *(a1 + 25400) = v21;
  }

  else
  {
    *(a1 + 25400) = 0;
    aom_internal_error(*(a1 + 48), 2, "Failed to allocate cm->tpl_mvs");
  }

  *(a1 + 25408) = v18;
LABEL_38:
  result = *(a1 + 56);
  *(*(a1 + 232) + 268) = result;
  return result;
}

double setup_buffer_pool(uint64_t a1)
{
  v2 = *(a1 + 25296);
  v3 = *(a1 + 24680);
  pthread_mutex_lock(v2);
  LOBYTE(v7) = 0;
  if (aom_realloc_frame_buffer(*(a1 + 232) + 1248, *(a1 + 56), *(a1 + 60), *(v3 + 96), *(v3 + 100), *(v3 + 76), 64, *(a1 + 512), (*(a1 + 232) + 1224), *(v2 + 72), *(v2 + 64), v7, 0))
  {
    pthread_mutex_unlock(v2);
    aom_internal_error(*(a1 + 48), 2, "Failed to allocate frame buffer");
  }

  pthread_mutex_unlock(v2);
  v4 = *(a1 + 232);
  *(v4 + 1384) = *(v3 + 72);
  *(v4 + 1388) = *(v3 + 80);
  v5 = *(v3 + 92);
  *(v4 + 1396) = *(v3 + 88);
  *(v4 + 1400) = *(v3 + 77);
  *(v4 + 1404) = *(v3 + 104);
  *(v4 + 1408) = v5;
  result = *(a1 + 64);
  *(v4 + 1412) = result;
  return result;
}

uint64_t segfeatures_copy(uint64_t result, uint64_t a2)
{
  *(result + 132) = *(a2 + 132);
  *(result + 4) = *(a2 + 4);
  *(result + 6) = *(a2 + 6);
  *(result + 8) = *(a2 + 8);
  *(result + 10) = *(a2 + 10);
  *(result + 12) = *(a2 + 12);
  *(result + 14) = *(a2 + 14);
  *(result + 16) = *(a2 + 16);
  *(result + 18) = *(a2 + 18);
  *(result + 136) = *(a2 + 136);
  *(result + 20) = *(a2 + 20);
  *(result + 22) = *(a2 + 22);
  *(result + 24) = *(a2 + 24);
  *(result + 26) = *(a2 + 26);
  *(result + 28) = *(a2 + 28);
  *(result + 30) = *(a2 + 30);
  *(result + 32) = *(a2 + 32);
  *(result + 34) = *(a2 + 34);
  *(result + 140) = *(a2 + 140);
  *(result + 36) = *(a2 + 36);
  *(result + 38) = *(a2 + 38);
  *(result + 40) = *(a2 + 40);
  *(result + 42) = *(a2 + 42);
  *(result + 44) = *(a2 + 44);
  *(result + 46) = *(a2 + 46);
  *(result + 48) = *(a2 + 48);
  *(result + 50) = *(a2 + 50);
  *(result + 144) = *(a2 + 144);
  *(result + 52) = *(a2 + 52);
  *(result + 54) = *(a2 + 54);
  *(result + 56) = *(a2 + 56);
  *(result + 58) = *(a2 + 58);
  *(result + 60) = *(a2 + 60);
  *(result + 62) = *(a2 + 62);
  *(result + 64) = *(a2 + 64);
  *(result + 66) = *(a2 + 66);
  *(result + 148) = *(a2 + 148);
  *(result + 68) = *(a2 + 68);
  *(result + 70) = *(a2 + 70);
  *(result + 72) = *(a2 + 72);
  *(result + 74) = *(a2 + 74);
  *(result + 76) = *(a2 + 76);
  *(result + 78) = *(a2 + 78);
  *(result + 80) = *(a2 + 80);
  *(result + 82) = *(a2 + 82);
  *(result + 152) = *(a2 + 152);
  *(result + 84) = *(a2 + 84);
  *(result + 86) = *(a2 + 86);
  *(result + 88) = *(a2 + 88);
  *(result + 90) = *(a2 + 90);
  *(result + 92) = *(a2 + 92);
  *(result + 94) = *(a2 + 94);
  *(result + 96) = *(a2 + 96);
  *(result + 98) = *(a2 + 98);
  *(result + 156) = *(a2 + 156);
  *(result + 100) = *(a2 + 100);
  *(result + 102) = *(a2 + 102);
  *(result + 104) = *(a2 + 104);
  *(result + 106) = *(a2 + 106);
  *(result + 108) = *(a2 + 108);
  *(result + 110) = *(a2 + 110);
  *(result + 112) = *(a2 + 112);
  *(result + 114) = *(a2 + 114);
  *(result + 160) = *(a2 + 160);
  *(result + 116) = *(a2 + 116);
  *(result + 118) = *(a2 + 118);
  *(result + 120) = *(a2 + 120);
  *(result + 122) = *(a2 + 122);
  *(result + 124) = *(a2 + 124);
  *(result + 126) = *(a2 + 126);
  *(result + 128) = *(a2 + 128);
  *(result + 130) = *(a2 + 130);
  *(result + 168) = *(a2 + 168);
  *(result + 164) = *(a2 + 164);
  return result;
}

void *allocate_mc_tmp_buf(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = a2 + 253952;
  v8 = a3;
  if ((a3 & 0x80000000) == 0)
  {
    v9 = malloc_type_malloc(a3 + 23, 0x5F484EBFuLL);
    if (v9)
    {
      v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v10 - 8) = v9;
      if (!a4)
      {
        goto LABEL_4;
      }

LABEL_8:
      if (v10)
      {
        bzero(v10, v8);
        *(v7 + 2920) = v10 >> 1;
        if (a3 < 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        aom_internal_error(*(a1 + 48), 2, "Failed to allocate hbd_mc_buf");
        bzero(0, v8);
        *(v7 + 2920) = 0;
        if (a3 < 0)
        {
LABEL_14:
          aom_internal_error(*(a1 + 48), 2, "Failed to allocate hbd_mc_buf");
          v12 = 0;
LABEL_15:
          bzero(v12, v8);
          *(v7 + 2928) = v12 >> 1;
          goto LABEL_23;
        }
      }

      v11 = malloc_type_malloc(v8 + 23, 0x5F484EBFuLL);
      if (v11)
      {
        v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v12 - 8) = v11;
        if (v12)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_14;
    }
  }

  v10 = 0;
  if (a4)
  {
    goto LABEL_8;
  }

LABEL_4:
  *(v7 + 2920) = v10;
  if (v10)
  {
    bzero(v10, v8);
    if (a3 < 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    aom_internal_error(*(a1 + 48), 2, "Failed to allocate thread_data->mc_buf[ref]");
    bzero(*(v7 + 2920), v8);
    if (a3 < 0)
    {
LABEL_20:
      v16 = (v7 + 2928);
      *(v7 + 2928) = 0;
      goto LABEL_21;
    }
  }

  v13 = malloc_type_malloc(v8 + 23, 0x5F484EBFuLL);
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v13;
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF0);
  *(v15 - 1) = v14;
  *(v7 + 2928) = v15;
  if (!v15)
  {
    v16 = (v7 + 2928);
LABEL_21:
    aom_internal_error(*(a1 + 48), 2, "Failed to allocate thread_data->mc_buf[ref]");
    v15 = *v16;
  }

  bzero(v15, v8);
LABEL_23:
  *(v7 + 2944) = a3;
  *(v7 + 2948) = a4;
  v17 = malloc_type_malloc(0x8027uLL, 0x5F484EBFuLL);
  if (v17)
  {
    v18 = (v17 + 39) & 0xFFFFFFFFFFFFFFE0;
    *(v18 - 8) = v17;
    *(v7 + 2952) = v18;
    if (v18)
    {
      v19 = malloc_type_malloc(0x8017uLL, 0x5F484EBFuLL);
      if (v19)
      {
        goto LABEL_26;
      }

LABEL_34:
      *(v7 + 2936) = 0;
      goto LABEL_35;
    }
  }

  else
  {
    *(v7 + 2952) = 0;
  }

  aom_internal_error(*(a1 + 48), 2, "Failed to allocate thread_data->tmp_conv_dst");
  v19 = malloc_type_malloc(0x8017uLL, 0x5F484EBFuLL);
  if (!v19)
  {
    goto LABEL_34;
  }

LABEL_26:
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v20 - 8) = v19;
  *(v7 + 2936) = v20;
  if (v20)
  {
    v21 = malloc_type_malloc(0x18017uLL, 0x5F484EBFuLL);
    if (v21)
    {
      goto LABEL_28;
    }

LABEL_36:
    *(v7 + 2960) = 0;
    goto LABEL_37;
  }

LABEL_35:
  aom_internal_error(*(a1 + 48), 2, "Failed to allocate thread_data->seg_mask");
  v21 = malloc_type_malloc(0x18017uLL, 0x5F484EBFuLL);
  if (!v21)
  {
    goto LABEL_36;
  }

LABEL_28:
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v22 - 8) = v21;
  *(v7 + 2960) = v22;
  if (v22)
  {
    result = malloc_type_malloc(0x18017uLL, 0x5F484EBFuLL);
    if (result)
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

LABEL_37:
  aom_internal_error(*(a1 + 48), 2, "Failed to allocate thread_data->tmp_obmc_bufs[i]");
  result = malloc_type_malloc(0x18017uLL, 0x5F484EBFuLL);
  if (result)
  {
LABEL_30:
    v24 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v24 - 8) = result;
    *(v7 + 2968) = v24;
    if (v24)
    {
      return result;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v7 + 2968) = 0;
LABEL_39:
  v25 = *(a1 + 48);

  return aom_internal_error(v25, 2, "Failed to allocate thread_data->tmp_obmc_bufs[i]");
}

void decode_mt_init(uint64_t a1)
{
  v2 = a1 + 39880;
  if (!*(a1 + 41224))
  {
    v16 = *(a1 + 363880);
    if ((56 * v16) <= 0x1FFFFFFE9 && (v17 = malloc_type_malloc(56 * v16 + 23, 0x5F484EBFuLL)) != 0)
    {
      v33 = (v2 + 1336);
      v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v18 - 8) = v17;
      *(v2 + 1336) = v18;
      if (v18)
      {
        if (v16 > 0x13521CF)
        {
          goto LABEL_36;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v33 = (v2 + 1336);
      *(v2 + 1336) = 0;
    }

    aom_internal_error(*(a1 + 15248), 2, "Failed to allocate pbi->tile_workers");
    if (v16 > 0x13521CF)
    {
      goto LABEL_36;
    }

LABEL_32:
    v19 = malloc_type_malloc(424 * v16 + 23, 0x5F484EBFuLL);
    if (v19)
    {
      v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v20 - 8) = v19;
      if (v20)
      {
        bzero(((v19 + 23) & 0xFFFFFFFFFFFFFFF0), 424 * v16);
        v21 = (v2 + 1352);
        *(v2 + 1352) = v20;
        if (v16 < 1)
        {
          goto LABEL_2;
        }

        goto LABEL_37;
      }
    }

LABEL_36:
    v21 = (v2 + 1352);
    *(v2 + 1352) = 0;
    aom_internal_error(*(a1 + 15248), 2, "Failed to allocate pbi->thread_data");
    if (v16 < 1)
    {
      goto LABEL_2;
    }

LABEL_37:
    v22 = *(v2 + 1336);
    v23 = *(v2 + 1352);
    g_worker_interface_0(v22);
    *(v22 + 16) = "aom tile worker";
    ++*(v2 + 1344);
    *v23 = a1 + 41248;
    *(v23 + 16) = 0;
    *(v23 + 224) = 0;
    if (v16 == 1)
    {
      goto LABEL_2;
    }

    v24 = v16 - 1;
    v25 = 424;
    v26 = 72;
    do
    {
      v29 = (*v33 + v26);
      v30 = *v21;
      g_worker_interface_0((v29 - 2));
      *v29 = "aom tile worker";
      if (!(off_28100B658[0])((v29 - 2)))
      {
        aom_internal_error(a1 + 390868, 1, "Tile decoder thread creation failed");
      }

      ++*(v2 + 1344);
      v31 = malloc_type_malloc(0x3EC07uLL, 0x5F484EBFuLL);
      if (v31)
      {
        v32 = v31;
        v27 = ((v31 + 39) & 0xFFFFFFFFFFFFFFE0);
        *(v27 - 1) = v32;
        *(v30 + v25) = v27;
        if (v27)
        {
          goto LABEL_41;
        }
      }

      else
      {
        *(v30 + v25) = 0;
      }

      aom_internal_error(*(a1 + 15248), 2, "Failed to allocate thread_data->td");
      v27 = *(v30 + v25);
LABEL_41:
      bzero(v27, 0x3EBE0uLL);
      v28 = v30 + v25;
      *(v28 + 16) = 0;
      *(v28 + 224) = 0;
      v25 += 424;
      v26 += 56;
      --v24;
    }

    while (v24);
  }

LABEL_2:
  v3 = *(a1 + 363880);
  if (v3 > 1)
  {
    v4 = *(*v2 + 76);
    v5 = 1;
    v6 = 424;
    do
    {
      v7 = *(v2 + 1352);
      v8 = *(v7 + v6) + 253952;
      if (*(*(v7 + v6) + 256896) != 69696 << v4)
      {
        v9 = *(*(v7 + v6) + 256900);
        v10 = *(*(v7 + v6) + 256872);
        if (v9)
        {
          v10 *= 2;
        }

        if (v10)
        {
          free(*(v10 - 8));
          v9 = *(v8 + 2948);
        }

        *(v8 + 2920) = 0;
        if (v9)
        {
          v11 = 2 * *(v8 + 2928);
        }

        else
        {
          v11 = *(v8 + 2928);
        }

        if (v11)
        {
          free(*(v11 - 8));
        }

        *(v8 + 2928) = 0;
        *(v8 + 2944) = 0;
        v12 = *(v8 + 2952);
        if (v12)
        {
          free(*(v12 - 8));
        }

        *(v8 + 2952) = 0;
        v13 = *(v8 + 2936);
        if (v13)
        {
          free(*(v13 - 8));
        }

        *(v8 + 2936) = 0;
        v14 = *(v8 + 2960);
        if (v14)
        {
          free(*(v14 - 8));
        }

        *(v8 + 2960) = 0;
        v15 = *(v8 + 2968);
        if (v15)
        {
          free(*(v15 - 8));
        }

        *(v8 + 2968) = 0;
        allocate_mc_tmp_buf(a1 + 15200, *(v7 + v6), 69696 << v4, v4);
        v3 = *(a1 + 363880);
      }

      ++v5;
      v6 += 424;
    }

    while (v5 < v3);
  }
}

unsigned __int8 *get_ls_tile_buffers(_DWORD *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 **a4)
{
  v5 = a2;
  v95 = *MEMORY[0x277D85DE8];
  v6 = a1 + 9970;
  v7 = a1[9976];
  v8 = a1[9977];
  if (v8 * v7 <= 1)
  {
    *a4 = a2;
    a4[1] = (a3 - a2);
    return 0;
  }

  v9 = v7;
  memset(v94, 0, sizeof(v94));
  v10 = a1[90977];
  v85 = a1[90976];
  if (v85 >= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = a1[90976];
  }

  if (v10 >= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = a1[90977];
  }

  if (v10 >= 0)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = v7;
  }

  v87 = v13;
  v14 = a1[90974];
  v91 = a1[90975];
  v15 = a1[9981];
  v93 = a1;
  v81 = v7;
  v86 = v8;
  v83 = v11;
  if (v15)
  {
    v17 = a1[9984];
    v16 = a1[9985];
    goto LABEL_13;
  }

  if (v7 < 1)
  {
    v17 = 0;
  }

  else
  {
    v48 = a1[9992];
    v49 = *(*v6 + 32);
    v17 = v49 * (v48 - a1[9991]);
    if (v7 != 1)
    {
      v50 = v7 - 1;
      v51 = a1 + 9993;
      while (1)
      {
        v53 = *v51++;
        v52 = v53;
        if ((v53 - v48) * v49 != v17)
        {
          break;
        }

        v48 = v52;
        if (!--v50)
        {
          goto LABEL_149;
        }
      }

      v16 = 0;
      goto LABEL_157;
    }
  }

LABEL_149:
  if (v8 < 1)
  {
    v16 = 0;
    goto LABEL_13;
  }

  v72 = a1[10057];
  v73 = *(*v6 + 32);
  v16 = v73 * (v72 - a1[10056]);
  if (v8 == 1)
  {
    goto LABEL_13;
  }

  v74 = v8 - 1;
  v75 = a1 + 10058;
  while (1)
  {
    v77 = *v75++;
    v76 = v77;
    if ((v77 - v72) * v73 != v16)
    {
      break;
    }

    v72 = v76;
    if (!--v74)
    {
      goto LABEL_13;
    }
  }

LABEL_157:
  aom_internal_error((a1 + 97717), 7, "Not all the tiles in the tile list have the same size.");
LABEL_13:
  v92 = v12 & ~(v10 >> 31);
  if (v17 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v88 = v18;
  v79 = v9;
  v19 = v81;
  if (v9 >= 1)
  {
    v20 = 0;
    v21 = (v81 - 1);
    v22 = v5;
    do
    {
      while (v21 == v20)
      {
        *(v94 + v21) = a3;
        v22 = a3;
        if (v19 == ++v20)
        {
          goto LABEL_39;
        }
      }

      v23 = v91;
      if (a3 - v22 < v91)
      {
        aom_internal_error((v93 + 97717), 7, "Not enough data to read tile_col_size");
        v23 = v91;
      }

      v24 = -1;
      if (v23 > 2)
      {
        if (v23 == 3)
        {
          v24 = (v22[2] << 16) | (v22[1] << 8) | *v22;
          v25 = &v22[v91];
          if (v24 <= a3 - v25)
          {
            goto LABEL_34;
          }

LABEL_33:
          aom_internal_error((v93 + 97717), 7, "tile_col_data_end[%d] is out of bound", v20);
          goto LABEL_34;
        }

        if (v23 == 4)
        {
          v24 = *v22;
          v25 = &v22[v23];
          if (v24 <= a3 - v25)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }

      else if (v23 == 1)
      {
        v24 = *v22;
      }

      else if (v23 == 2)
      {
        v24 = *v22;
        v25 = &v22[v23];
        if (v24 <= a3 - v25)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      v25 = &v22[v23];
      if (v24 > a3 - v25)
      {
        goto LABEL_33;
      }

LABEL_34:
      *(v94 + v20) = &v25[v24];
      v19 = v81;
      v22 = &v25[v24];
      ++v20;
    }

    while (v81 != v20);
  }

LABEL_39:
  v26 = v92;
  v80 = 4 * v88;
  if (v92 < v87)
  {
    v84 = v83 + 1;
    v82 = v9 - 1;
    v27 = v14 - 1;
    v28 = v92;
    if (4 * v88 < 257)
    {
      v29 = 8 * v14 - 1;
      v92 = (8 * v14 - 8);
      v30 = &a4[2 * v26];
      while (1)
      {
        if (v28 >= 1)
        {
          v5 = *(v94 + v28 - 1);
        }

        v31 = v91;
        if (v28 == v82)
        {
          v31 = 0;
        }

        v32 = v85 < 0 || v28 == v82;
        v5 += v31;
        v33 = v32 ? v86 : v84;
        v89 = v28;
        if (v33 >= 1)
        {
          break;
        }

LABEL_42:
        v28 = v89 + 1;
        v30 += 2;
        if (v87 == v89 + 1)
        {
          goto LABEL_119;
        }
      }

      v34 = 0;
      v35 = 0;
      v36 = *(v94 + v28);
      v37 = v33 << 10;
      while (1)
      {
        if (v27 >= v36 - v5)
        {
          aom_internal_error((v93 + 97717), 7, "Truncated packet or corrupt tile length");
        }

        v41 = -1;
        if (v14 <= 2)
        {
          break;
        }

        if (v14 != 3)
        {
          if (v14 == 4)
          {
            v41 = *v5;
            if (v41 >> v29 == 1)
            {
              goto LABEL_71;
            }

            goto LABEL_76;
          }

          goto LABEL_70;
        }

        v41 = (v5[2] << 16) | (v5[1] << 8) | *v5;
        if (v41 >> v29 == 1)
        {
LABEL_71:
          v42 = v41 >> v92;
          v43 = v42 & 0x7F;
          if (v43 > v35)
          {
            aom_internal_error((v93 + 97717), 7, "Invalid row offset in tile copy mode: row=%d offset=%d", v35, v42 & 0x7F);
          }

          v44 = &(&v30[v34 / 8])[-128 * v43];
          v45 = *v44;
          v46 = v44[1];
          v47 = &v5[v14];
          goto LABEL_74;
        }

LABEL_76:
        v46 = v41 + 1;
        v47 = &v5[v14];
        if (v41 + 1 > v36 - v47)
        {
          aom_internal_error((v93 + 97717), 7, "Truncated packet or corrupt tile size");
        }

        else if (v41 == -1)
        {
          v45 = 0;
LABEL_74:
          v39 = 0;
          v38 = v47;
          v47 = v45;
          goto LABEL_57;
        }

        v38 = v47;
        v39 = v46;
LABEL_57:
        v40 = &v30[v34 / 8];
        *v40 = v47;
        v40[1] = v46;
        v5 = &v38[v39];
        ++v35;
        v34 += 1024;
        if (v37 == v34)
        {
          goto LABEL_42;
        }
      }

      if (v14 == 1)
      {
        v41 = *v5;
      }

      else if (v14 == 2)
      {
        v41 = *v5;
        if (v41 >> v29 == 1)
        {
          goto LABEL_71;
        }

        goto LABEL_76;
      }

LABEL_70:
      if (v41 >> v29 == 1)
      {
        goto LABEL_71;
      }

      goto LABEL_76;
    }

    v54 = &a4[2 * v92 + 1];
    while (1)
    {
      if (v28 >= 1)
      {
        v5 = *(v94 + v28 - 1);
      }

      v55 = v91;
      if (v28 == v82)
      {
        v55 = 0;
      }

      v56 = v85 < 0 || v28 == v82;
      v5 += v55;
      v57 = v56 ? v86 : v84;
      v90 = v28;
      if (v57 > 0)
      {
        break;
      }

LABEL_86:
      v28 = v90 + 1;
      v54 += 16;
      if (v87 == v90 + 1)
      {
        goto LABEL_119;
      }
    }

    v58 = *(v94 + v28);
    v59 = v54;
    while (1)
    {
      while (1)
      {
        if (v27 >= v58 - v5)
        {
          aom_internal_error((v93 + 97717), 7, "Truncated packet or corrupt tile length");
        }

        v60 = -1;
        if (v14 <= 2)
        {
          break;
        }

        if (v14 == 3)
        {
          v61 = ((v5[2] << 16) | (v5[1] << 8) | *v5) + 1;
          v5 += v14;
          if (v61 > v58 - v5)
          {
            goto LABEL_99;
          }
        }

        else
        {
          if (v14 != 4)
          {
            goto LABEL_113;
          }

          v61 = *v5 + 1;
          v5 += v14;
          if (v61 > v58 - v5)
          {
            goto LABEL_99;
          }
        }

LABEL_114:
        if (v61)
        {
          goto LABEL_100;
        }

        *(v59 - 1) = 0;
        *v59 = 0;
        v59 += 128;
        if (!--v57)
        {
          goto LABEL_86;
        }
      }

      if (v14 == 1)
      {
        v60 = *v5;
LABEL_113:
        v61 = v60 + 1;
        v5 += v14;
        if (v60 + 1 <= (v58 - v5))
        {
          goto LABEL_114;
        }

        goto LABEL_99;
      }

      if (v14 != 2)
      {
        goto LABEL_113;
      }

      v61 = *v5 + 1;
      v5 += v14;
      if (v61 <= v58 - v5)
      {
        goto LABEL_114;
      }

LABEL_99:
      aom_internal_error((v93 + 97717), 7, "Truncated packet or corrupt tile size");
LABEL_100:
      *(v59 - 1) = v5;
      *v59 = v61;
      v5 += v61;
      v59 += 128;
      if (!--v57)
      {
        goto LABEL_86;
      }
    }
  }

LABEL_119:
  if (v87 != v81)
  {
    v5 = *(&v92 + v79);
    if (v86 >= 1)
    {
      v62 = 0;
      v63 = *(v94 + v79 - 1);
      v64 = &a4[2 * v79 - 2];
      while (1)
      {
        if (v14 - 1 >= (v63 - v5))
        {
          aom_internal_error((v93 + 97717), 7, "Truncated packet or corrupt tile length");
        }

        v65 = -1;
        if (v14 <= 2)
        {
          break;
        }

        if (v14 != 3)
        {
          if (v14 == 4)
          {
            v65 = *v5;
            if (v80 <= 256)
            {
              goto LABEL_137;
            }

            goto LABEL_144;
          }

          goto LABEL_136;
        }

        v65 = (v5[2] << 16) | (v5[1] << 8) | *v5;
        if (v80 <= 256)
        {
LABEL_137:
          if (v65 >> (8 * v14 - 1) == 1)
          {
            v66 = v65 >> (8 * v14 - 8);
            v67 = v66 & 0x7F;
            if (v67 > v62)
            {
              aom_internal_error((v93 + 97717), 7, "Invalid row offset in tile copy mode: row=%d offset=%d", v62, v66 & 0x7F);
            }

            v68 = &v64[-128 * v67];
            v69 = *v68;
            v70 = v68[1];
            v5 += v14;
            goto LABEL_141;
          }
        }

LABEL_144:
        v70 = v65 + 1;
        v5 += v14;
        if (v65 + 1 > v63 - v5)
        {
          aom_internal_error((v93 + 97717), 7, "Truncated packet or corrupt tile size");
LABEL_123:
          *v64 = v5;
          v64[1] = v70;
          v5 += v70;
          ++v62;
          v64 += 128;
          if (v86 == v62)
          {
            return v5;
          }
        }

        else
        {
          if (v65 != -1)
          {
            goto LABEL_123;
          }

          v69 = 0;
LABEL_141:
          *v64 = v69;
          v64[1] = v70;
          ++v62;
          v64 += 128;
          if (v86 == v62)
          {
            return v5;
          }
        }
      }

      if (v14 == 1)
      {
        v65 = *v5;
      }

      else if (v14 == 2)
      {
        v65 = *v5;
        if (v80 <= 256)
        {
          goto LABEL_137;
        }

        goto LABEL_144;
      }

LABEL_136:
      if (v80 <= 256)
      {
        goto LABEL_137;
      }

      goto LABEL_144;
    }
  }

  return v5;
}

uint64_t get_tile_buffers_0(uint64_t result, unsigned __int8 *a2, unint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = *(result + 39904);
  v20 = *(result + 39908);
  if (v20 >= 1 && v6 >= 1)
  {
    v12 = result;
    v13 = 0;
    v14 = 0;
    v15 = (a4 + 8);
    v19 = *(result + 39904);
    do
    {
      v23 = v13;
      v21 = v15;
      v22 = v14;
      do
      {
        if (v14 >= a5 && v14 <= a6)
        {
          if (a2 >= a3)
          {
            result = aom_internal_error(v12 + 390868, 7, "Data ended before all tiles were read.");
          }

          if (a6 == v14)
          {
            v16 = a3 - a2;
            goto LABEL_10;
          }

          v17 = *(v12 + 363896);
          if (v17 - 1 >= a3 - a2)
          {
            result = aom_internal_error(v12 + 390868, 7, "Not enough data to read tile size");
          }

          v18 = -1;
          if (v17 <= 2)
          {
            if (v17 == 1)
            {
              v18 = *a2;
            }

            else if (v17 == 2)
            {
              v16 = *a2 + 1;
              a2 += v17;
              if (v16 > a3 - a2)
              {
                goto LABEL_30;
              }

LABEL_10:
              *(v15 - 1) = a2;
              *v15 = v16;
              a2 += v16;
              goto LABEL_11;
            }

LABEL_29:
            v16 = v18 + 1;
            a2 += v17;
            if (v18 + 1 > a3 - a2)
            {
              goto LABEL_30;
            }

            goto LABEL_10;
          }

          if (v17 == 3)
          {
            v16 = ((a2[2] << 16) | (a2[1] << 8) | *a2) + 1;
            a2 += v17;
            if (v16 <= a3 - a2)
            {
              goto LABEL_10;
            }
          }

          else
          {
            if (v17 != 4)
            {
              goto LABEL_29;
            }

            v16 = *a2 + 1;
            a2 += v17;
            if (v16 <= a3 - a2)
            {
              goto LABEL_10;
            }
          }

LABEL_30:
          result = aom_internal_error(v12 + 390868, 7, "Truncated packet or corrupt tile size");
          goto LABEL_10;
        }

LABEL_11:
        ++v14;
        v15 += 2;
        --v6;
      }

      while (v6);
      v6 = v19;
      v14 = v22 + v19;
      v13 = v23 + 1;
      v15 = v21 + 128;
    }

    while (v23 + 1 != v20);
  }

  return result;
}

void tile_mt_queue(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int a9)
{
  v39 = a9;
  v16 = a1 + 363792;
  if (*(a1 + 363820) != a2 || *(a1 + 363816) != a3)
  {
    if (*v16)
    {
      pthread_mutex_destroy(*v16);
      if (*v16)
      {
        free(*(*v16 - 8));
      }
    }

    v17 = *(v16 + 8);
    if (v17)
    {
      free(*(v17 - 8));
    }

    *v16 = 0u;
    *(v16 + 16) = 0u;
    *(v16 + 24) = a3;
    *(v16 + 28) = a2;
    v18 = a3 * a2;
    if ((v18 << 6) <= 0x1FFFFFFE9 && (v19 = malloc_type_malloc((v18 << 6) | 0x17, 0x5F484EBFuLL)) != 0)
    {
      v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v20 - 8) = v19;
      *v16 = v20;
      if (v20)
      {
        if (v18 < 1)
        {
          goto LABEL_17;
        }

LABEL_15:
        v21 = 0;
        do
        {
          pthread_mutex_init((*v16 + v21), 0);
          v21 += 64;
        }

        while (v18 << 6 != v21);
LABEL_17:
        if ((16 * v18) <= 0x1FFFFFFE9 && (v22 = malloc_type_malloc(16 * v18 + 23, 0x5F484EBFuLL)) != 0)
        {
          v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v23 - 8) = v22;
          *(v16 + 8) = v23;
          if (v23)
          {
            goto LABEL_20;
          }
        }

        else
        {
          *(v16 + 8) = 0;
        }

        aom_internal_error(*(a1 + 15248), 2, "Failed to allocate tile_mt_info->job_queue", v39);
        v24 = *(v16 + 8);
        *(v16 + 16) = 0;
        if (a4 < a5)
        {
          goto LABEL_24;
        }

LABEL_32:
        v38 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      *v16 = 0;
    }

    aom_internal_error(*(a1 + 15248), 2, "Failed to allocate tile_mt_info->job_mutex", a9);
    if (v18 < 1)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_20:
  v24 = *(v16 + 8);
  *(v16 + 16) = 0;
  if (a4 >= a5)
  {
    goto LABEL_32;
  }

LABEL_24:
  if (a6 >= a7)
  {
    goto LABEL_32;
  }

  v25 = 0;
  v26 = *(a1 + 39904);
  v27 = a4;
  v28 = a7 - a6;
  v29 = 21408 * v26 * a4 + 21408 * a6;
  v30 = (a4 << 10) + 16 * a6 + a1 + 298256;
  v31 = a6 + v26 * a4;
  v32 = v24;
  do
  {
    v33 = v31;
    v34 = v30;
    v35 = v29;
    v36 = v28;
    do
    {
      if (v33 >= a8 && v33 <= v39)
      {
        v37 = *(a1 + 298240) + v35;
        *v32 = v34;
        v32[1] = v37;
        v32 += 2;
        *(v16 + 16) = ++v25;
      }

      v35 += 21408;
      v34 += 16;
      ++v33;
      --v36;
    }

    while (v36);
    ++v27;
    v29 += 21408 * v26;
    v30 += 1024;
    v31 += v26;
  }

  while (v27 != a5);
  v38 = v25;
LABEL_34:

  qsort(v24, v38, 0x10uLL, compare_tile_buffers_0);
}

BOOL row_mt_worker_hook(int *a1, unint64_t a2)
{
  v3 = a1;
  v4 = a2 + 388768;
  v5 = (a2 + 39880);
  v6 = *a1;
  *(*a1 + 15056) = 0;
  if (setjmp(a1 + 57))
  {
    *(v3 + 56) = 0;
    *(*v3 + 15056) = 1;
    pthread_mutex_lock(*(v4 + 16));
    *(v4 + 68) = 1;
    pthread_cond_broadcast(*(v4 + 24));
    pthread_mutex_unlock(*(v4 + 16));
    v7 = *(*v5 + 36);
    v8 = (**v3 - *(*v3 + 7840)) >> v7;
    v9 = *(a2 + 298240) + 21408 * v5[6] * *(*v3 + 7856) + 21408 * *(*v3 + 7860);
    v10 = *(v9 + 21376) + ((*(*v3 + 7852) + ~*(*v3 + 7848) + (1 << v7)) >> v7) + *(v9 + 21380);
    v11 = v8 << 6;
    pthread_mutex_lock((*(v9 + 21344) + v11));
    *(*(v9 + 21368) + 4 * v8) = v10;
    pthread_cond_signal((*(v9 + 21352) + 48 * v8));
    v12 = (*(v9 + 21344) + v11);
    goto LABEL_39;
  }

  v13 = v6;
  v140 = (v6 + 256864);
  *(v3 + 56) = 1;
  v143 = v5;
  if (v5[151])
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a2 + 15692) ^ 1;
  }

  v136 = v14;
  *(v6 + 256936) = decode_block_void;
  *(v6 + 256952) = decode_block_void;
  *(v6 + 256960) = predict_inter_block_void;
  *(v6 + 256968) = cfl_store_inter_block_void;
  *(v6 + 256928) = read_coeffs_tx_intra_block;
  *(v6 + 256944) = av1_read_coeffs_txb;
  if (*(v6 + 15056))
  {
    goto LABEL_38;
  }

  v15 = a2 + 363792;
  v16 = v6 + 14872;
  v139 = v6 + 14872;
  v137 = v3 + 2;
  v138 = v6 + 5232;
  v134 = (v6 + 7992);
  v133 = (v6 + 8096);
  v132 = (v6 + 8144);
  v135 = v6 + 5232;
  v130 = (v6 + 8300);
  v131 = (v6 + 8276);
  v141 = v6;
  v142 = v4;
  v144 = v3;
  while (1)
  {
    pthread_mutex_lock(*v15);
    v18 = *(v15 + 20);
    if (v18 >= *(v15 + 16))
    {
      break;
    }

    *(v15 + 20) = v18 + 1;
    v19 = *(v15 + 8);
    pthread_mutex_unlock(*v15);
    if (!v19)
    {
      goto LABEL_37;
    }

    v20 = v19 + 16 * v18;
    v21 = *(v20 + 8);
    tile_worker_hook_init(a2, v3, *v20, v21, v136 & 1);
    pthread_mutex_lock(*(v4 + 16));
    ++v21[5350];
    pthread_mutex_unlock(*(v4 + 16));
    v22 = v143;
    v125 = mi_size_wide_7[*(*v143 + 28)];
    v23 = *(*v143 + 77);
    av1_zero_above_context((a2 + 15200), v13, v21[2], v21[3], v21[4]);
    *(v6 + 10752) = 0;
    if (v23)
    {
      v24 = 2;
    }

    else
    {
      v24 = 4;
    }

    bzero((v6 + 10753), v24);
    *(v13 + 0x2000) = 0xFFEA000FFFF90003;
    *(v13 + 8176) = 0xFFEA000FFFF90003;
    *(v138 + 2968) = 15;
    *(v13 + 8184) = 15;
    *(v135 + 2970) = 262137;
    *(v13 + 8186) = 262137;
    *v131 = 0x1FFFFFFFE0;
    if (v23)
    {
      v25 = v21;
      v128 = v21 + 5120;
      v26 = *v21;
      if (v26 < v25[1])
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(v13 + 8224) = 0xFFEA000FFFF90003;
      *(v13 + 8208) = 0xFFEA000FFFF90003;
      *(v138 + 3000) = 15;
      *(v138 + 2984) = 15;
      *(v135 + 3002) = 262137;
      *(v135 + 2986) = 262137;
      *(v13 + 8288) = 0x1FFFFFFFE0;
      *(v13 + 8256) = 0xFFEA000FFFF90003;
      *(v13 + 8240) = 0xFFEA000FFFF90003;
      *(v138 + 3032) = 15;
      *(v138 + 3016) = 15;
      *(v135 + 3034) = 262137;
      *(v135 + 3018) = 262137;
      *v130 = 0x1FFFFFFFE0;
      v25 = v21;
      v128 = v21 + 5120;
      v26 = *v21;
      if (v26 < v25[1])
      {
LABEL_23:
        while (1)
        {
          v134[4] = 0u;
          v134[5] = 0u;
          v134[2] = 0u;
          v134[3] = 0u;
          *v134 = 0u;
          v134[1] = 0u;
          *v133 = 0u;
          v133[1] = 0u;
          *&v31 = 0x4040404040404040;
          *(&v31 + 1) = 0x4040404040404040;
          *v132 = v31;
          v132[1] = v31;
          v32 = v25[2];
          if (v32 < v25[3])
          {
            break;
          }

LABEL_22:
          pthread_mutex_lock(*(v142 + 16));
          v128[228] += v125;
          *(v142 + 60) += v125;
          pthread_cond_signal(*(v142 + 24));
          pthread_mutex_unlock(*(v142 + 16));
          v26 = (*(*v22 + 32) + v26);
          if (v26 >= v25[1])
          {
            goto LABEL_20;
          }
        }

        v33 = *v22;
        while (1)
        {
          v34 = *v142 + 241664 * ((v26 >> *(v33 + 36)) + (v26 >> *(v33 + 36)) * (*(a2 + 15736) >> *(v33 + 36)) + (v32 >> *(v33 + 36)));
          *(v13 + 15080) = v34;
          *(v13 + 15112) = v34 + 196608;
          *(v16 + 232) = 0;
          *(v16 + 264) = 0;
          if (!v23)
          {
            *(v13 + 15088) = v34 + 0x10000;
            *(v13 + 15120) = v34 + 200704;
            *(v16 + 234) = 0;
            *(v139 + 266) = 0;
            *(v13 + 15096) = v34 + 0x20000;
            *(v13 + 15128) = v34 + 204800;
          }

          *(v13 + 176) = v34 + 208896;
          *(v13 + 2784) = v34 + 225280;
          *(v16 + 156) = 0;
          decode_partition_0(a2, v13, v26, v32, *v140, *(v33 + 28), 1u);
          if (*(*v140 + 8) - **v140 < ((*(*v140 + 24) - *(*v140 + 54) + 8 * (*(*v140 + 40) - *(*v140 + 16)) + 7) >> 3))
          {
            break;
          }

          v22 = v143;
          v33 = *v143;
          v32 = (*(*v143 + 32) + v32);
          if (v32 >= v25[3])
          {
            goto LABEL_22;
          }
        }

        v17 = 1;
        goto LABEL_9;
      }
    }

LABEL_20:
    v27 = *(*v140 + 24) - *(*v140 + 54) + 8 * (*(*v140 + 40) - *(*v140 + 16)) + 7;
    v28 = v27 >> 3;
    v30 = **v140;
    v29 = *(*v140 + 8);
    if ((v29 - v30) < v28)
    {
      v17 = 1;
LABEL_9:
      v3 = v144;
      v6 = v141;
      v4 = v142;
      v15 = a2 + 363792;
      goto LABEL_10;
    }

    v35 = (v30 + v28);
    v3 = v144;
    v6 = v141;
    v4 = v142;
    v15 = a2 + 363792;
    if (((2 * (0x80u >> (v27 & 7)) - 1) & *(v35 - 1)) != 0x80u >> (v27 & 7))
    {
      goto LABEL_35;
    }

    v36 = v35;
    if (v35 < v29)
    {
      while (!*v36)
      {
        if (++v36 >= v29)
        {
          goto LABEL_34;
        }
      }

LABEL_35:
      v17 = 1;
      goto LABEL_10;
    }

LABEL_34:
    v17 = 0;
LABEL_10:
    *(v13 + 15056) |= v17;
    pthread_mutex_lock(*(v4 + 16));
    --v128[230];
    pthread_mutex_unlock(*(v4 + 16));
    if (*(v13 + 15056))
    {
      goto LABEL_38;
    }
  }

  pthread_mutex_unlock(*v15);
LABEL_37:
  if (!*(v13 + 15056))
  {
    v140[8] = decode_block_void;
    v140[10] = decode_block_void;
    v140[9] = predict_and_reconstruct_intra_block;
    v140[11] = inverse_transform_inter_block;
    v140[12] = predict_inter_block;
    v140[13] = cfl_store_inter_block;
    pthread_mutex_lock(*(v4 + 16));
    if (*(v4 + 64) == *(v4 + 56))
    {
LABEL_41:
      pthread_mutex_unlock(*(v4 + 16));
      *(v144 + 56) = 0;
      return *(v13 + 15056) == 0;
    }

    v38 = *(v4 + 56);
    v39 = *(v4 + 64);
    v118 = v16;
    while (1)
    {
      while (1)
      {
        v40 = v38;
        if (*(v4 + 68) == 1)
        {
          goto LABEL_41;
        }

        v41 = *(v4 + 32);
        v43 = *(v4 + 40);
        v42 = *(v4 + 44);
        v123 = *(v4 + 36);
        v44 = *(v4 + 60) != v39 && v41 < *(v4 + 36);
        if (v44 && v42 > v43)
        {
          v127 = v39;
          v46 = *(v4 + 32);
          v122 = *(v4 + 40);
          v47 = v143[6];
          v48 = v42 - v43;
          v49 = 21408 * v43;
          v50 = v43 + v41 * v47;
          v51 = *(v4 + 48);
          v52 = *(v4 + 52);
          v53 = 0x7FFFFFFFLL;
          v54 = 0;
          v55 = v41 * v47;
          v56 = 0xFFFFFFFFLL;
          v57 = 0xFFFFFFFFLL;
          do
          {
            v58 = v56;
            v59 = v57;
            v60 = v49 + 21408 * v55;
            v61 = v122;
            v62 = v50;
            v63 = v48;
            v64 = v54;
            v65 = v53;
            do
            {
              v53 = v65;
              v54 = v64;
              v66 = v58;
              v67 = v59;
              if (v62 < v51 || v62 > v52 || (v68 = *(a2 + 298240), v69 = (v68 + v60 + 21392), v70 = v69[1], v71 = *(v69 - 1), (*v69 - v70) * v71 < 1) || ((v72 = v69[2], v73 = ((*(v69 - 2) - v70) * v71), v74 = v72 < v53, v72 >= v53) ? (v53 = v53) : (v53 = v72), !v74 ? (v54 = v54) : (v54 = 0), v74 ? (v75 = v73 <= v54) : (v75 = 1), v75 || ((*(v68 + v60) - *(v68 + v60 + 4) + (-1 << *(*v143 + 36))) >> *(*v143 + 36) == -2 ? (v76 = 1) : (v76 = 2), v72 >= v76)))
              {
                v77 = v66;
                v78 = v67;
              }

              else
              {
                v54 = v73;
                v77 = v46;
                v78 = v61;
              }

              v79 = v77;
              v60 += 21408;
              ++v62;
              v61 = (v61 + 1);
              v59 = v78;
              v58 = v79;
              v64 = v54;
              v65 = v53;
              --v63;
            }

            while (v63);
            v46 = (v46 + 1);
            v55 += v47;
            v50 += v47;
            v57 = v78;
            v56 = v79;
          }

          while (v46 != v123);
          v4 = v142;
          if (v79 != -1 && v78 != -1)
          {
            break;
          }
        }

        pthread_cond_wait(*(v4 + 24), *(v4 + 16));
        v39 = *(v4 + 64);
        v38 = *(v4 + 56);
        if (v39 == v38)
        {
          goto LABEL_41;
        }
      }

      v80 = mi_size_wide_7[*(*v143 + 28)];
      v81 = *(a2 + 298240) + 21408 * v79 * v47 + 21408 * v78;
      v114 = *v81;
      v82 = *(v81 + 21396);
      *(v81 + 21396) = vadd_s32(v82, (v80 | 0x100000000));
      v83 = v127 + v80;
      *(v142 + 64) = v83;
      if (v83 == v40)
      {
        pthread_cond_broadcast(*(v142 + 24));
      }

      pthread_mutex_unlock(*(v142 + 16));
      v113 = *(a2 + 298240);
      v112 = v143[6];
      av1_tile_init((v141 + 7840), a2 + 15200, v79, v78);
      v84 = *(*v143 + 77);
      v85 = (a2 + 15904);
      if (*(v13 + 16))
      {
        v86 = (a2 + 32960);
      }

      else
      {
        v85 = (a2 + 15840);
        v86 = (a2 + 30528);
      }

      v87 = v85[1];
      *(v141 + 144) = *v85;
      *(v141 + 160) = v87;
      memcpy((v141 + 192), v86, 0x4C0uLL);
      if (!v84)
      {
        v88 = (a2 + 15872);
        if (*(v13 + 2624))
        {
          v89 = (a2 + 31744);
        }

        else
        {
          v88 = (a2 + 15840);
          v89 = (a2 + 30528);
        }

        v90 = v88[1];
        *(v141 + 2752) = *v88;
        *(v141 + 2768) = v90;
        memcpy((v141 + 2800), v89, 0x4C0uLL);
        v91 = (a2 + 15904);
        if (*v138)
        {
          v92 = (a2 + 32960);
        }

        else
        {
          v91 = (a2 + 15840);
          v92 = (a2 + 30528);
        }

        v93 = v91[1];
        *(v141 + 5360) = *v91;
        *(v141 + 5376) = v93;
        memcpy((v141 + 5408), v92, 0x4C0uLL);
      }

      v94 = v113 + 21408 * v112 * v79 + 21408 * v78;
      *(v13 + 8) = *(a2 + 15780);
      v95 = *v143;
      bzero((v141 + 10776), 0x800uLL);
      bzero((v141 + 12824), 0x800uLL);
      *(v13 + 15016) = *(v95 + 96);
      *(v13 + 15012) = 0;
      *(v13 + 15024) = 0;
      *(v16 + 2) = 0;
      *v16 = 0;
      *(v13 + 10736) = v137;
      v97 = *(v94 + 8);
      v96 = *(v94 + 12);
      v129 = v94;
      v4 = v142;
      if (v97 < v96)
      {
        break;
      }

LABEL_108:
      pthread_mutex_lock(*(v4 + 16));
      --v129[5350];
      pthread_mutex_unlock(*(v4 + 16));
      pthread_mutex_lock(*(v4 + 16));
      v39 = *(v4 + 64);
      v38 = *(v4 + 56);
      if (v39 == v38)
      {
        goto LABEL_41;
      }
    }

    v98 = 0;
    v99 = *(*v143 + 36);
    v124 = *(*v143 + 77);
    v100 = (v114 + v82.i32[0] - *v129) >> v99;
    v101 = *(a2 + 298240) + 21408 * v129[4] * v143[6] + 21408 * v129[5] + 21344;
    v120 = v100;
    v121 = v100;
    v126 = (v96 + (1 << v99) + ~v97) >> v99;
    v116 = v100;
    v117 = v126 - 1;
    v102 = *v143;
    v119 = v100 - 1;
    while (1)
    {
      v115 = v97;
      v105 = *v4 + 241664 * (((v114 + v82.i32[0]) >> *(v102 + 36)) + ((v114 + v82.i32[0]) >> *(v102 + 36)) * (*(a2 + 15736) >> *(v102 + 36)) + (v97 >> *(v102 + 36)));
      *(v13 + 15080) = v105;
      *(v13 + 15112) = v105 + 196608;
      *(v16 + 232) = 0;
      *(v16 + 264) = 0;
      if (!v124)
      {
        *(v13 + 15088) = v105 + 0x10000;
        *(v13 + 15120) = v105 + 200704;
        *(v16 + 234) = 0;
        *(v139 + 266) = 0;
        *(v13 + 15096) = v105 + 0x20000;
        *(v13 + 15128) = v105 + 204800;
      }

      *(v13 + 176) = v105 + 208896;
      *(v13 + 2784) = v105 + 225280;
      *(v16 + 156) = 0;
      if (v116 && (v106 = *(v101 + 32), ((v106 + 0x7FFFFFFF) & v98) == 0))
      {
        v109 = (*v101 + (v119 << 6));
        pthread_mutex_lock(v109);
        while (*(*(v101 + 24) + 4 * v119) - (v106 + *(v101 + 36)) < v98)
        {
          pthread_cond_wait((*(v101 + 8) + 48 * v119), v109);
        }

        pthread_mutex_unlock(v109);
        v4 = v142;
        v16 = v118;
        pthread_mutex_lock(*(v142 + 16));
        v110 = *(v142 + 68);
        pthread_mutex_unlock(*(v142 + 16));
        if (v110)
        {
LABEL_100:
          v108 = *(v101 + 32);
          if (v117 > v98)
          {
            goto LABEL_106;
          }

          goto LABEL_92;
        }
      }

      else
      {
        pthread_mutex_lock(*(v4 + 16));
        v107 = *(v4 + 68);
        pthread_mutex_unlock(*(v4 + 16));
        if (v107)
        {
          goto LABEL_100;
        }
      }

      decode_partition_0(a2, v13, (v114 + v82.i32[0]), v115, *v140, *(*v143 + 28), 2u);
      v108 = *(v101 + 32);
      if (v117 > v98)
      {
LABEL_106:
        v111 = v98 % v108;
        v103 = v98;
        if (v111)
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }

LABEL_92:
      v103 = v108 + v126 + *(v101 + 36);
LABEL_93:
      v104 = v103;
      pthread_mutex_lock((*v101 + (v121 << 6)));
      *(*(v101 + 24) + 4 * v120) = v104;
      pthread_cond_signal((*(v101 + 8) + 48 * v120));
      v4 = v142;
      pthread_mutex_unlock((*v101 + (v121 << 6)));
LABEL_94:
      v102 = *v143;
      v97 = *(*v143 + 32) + v115;
      ++v98;
      if (v97 >= v129[3])
      {
        goto LABEL_108;
      }
    }
  }

LABEL_38:
  *(v3 + 56) = 0;
  pthread_mutex_lock(*(v4 + 16));
  *(v4 + 68) = 1;
  pthread_cond_broadcast(*(v4 + 24));
  v12 = *(v4 + 16);
LABEL_39:
  pthread_mutex_unlock(v12);
  return 0;
}

void *tile_worker_hook_init(_DWORD *a1, uint64_t *a2, unsigned __int8 **a3, uint64_t a4, char a5)
{
  v9 = a1 + 9216;
  v10 = *a2;
  v12 = *(a4 + 16);
  v11 = *(a4 + 20);
  *(v10 + 256864) = a4 + 24;
  bzero((v10 + 15200), 0x30000uLL);
  v13 = *(*(v9 + 377) + 36);
  v14 = a1[v12 + 10056] << v13;
  v15 = a1[v12 + 10057] << v13;
  *(v10 + 7856) = v12;
  *(v10 + 7840) = v14;
  if (v15 >= a1[3933])
  {
    v15 = a1[3933];
  }

  *(v10 + 7844) = v15;
  v16 = a1[v11 + 9991] << v13;
  v17 = a1[v11 + 9992] << v13;
  *(v10 + 7860) = v11;
  *(v10 + 7848) = v16;
  if (v17 >= a1[3934])
  {
    v17 = a1[3934];
  }

  *(v10 + 7852) = v17;
  *(v10 + 10724) = a1[3954];
  v18 = a2[1];
  v20 = *a3;
  v19 = a3[1];
  v21 = (a2 + 2);
  if ((v19 - 1) >= v18 - *a3)
  {
    *v10 = v14;
    aom_internal_error(v21, 7, "Truncated packet or corrupt tile length");
  }

  if (!v20 && v19)
  {
    *v10 = *(v10 + 7840);
    aom_internal_error(v21, 2, "Failed to allocate BOOL decoder %d", 1);
    goto LABEL_19;
  }

  *(a4 + 24) = v20;
  *(a4 + 32) = &v19[v20];
  *(a4 + 40) = v20;
  *(a4 + 48) = -14;
  *(a4 + 64) = v20;
  *(a4 + 72) = 0xFFF180007FFFFFFFLL;
  *(a4 + 56) = &v20[v19];
  if (v19)
  {
    v22 = (*v20 << 23) ^ 0x7FFFFFFF;
    if (v19 == 1)
    {
      v23 = -7;
      ++v20;
    }

    else
    {
      v22 ^= v20[1] << 15;
      if (v19 < 3uLL)
      {
        v20 += 2;
        v23 = 1;
        if (v19 > 2uLL)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v22 ^= v20[2] << 7;
        v20 += 3;
        v23 = 9;
        if (v19 != 3)
        {
          goto LABEL_18;
        }
      }
    }
  }

  else
  {
    v22 = 0x7FFFFFFF;
    v23 = -15;
  }

  *(a4 + 48) = (16370 - v23);
  v23 = 0x4000;
LABEL_18:
  *(a4 + 72) = v22;
  *(a4 + 78) = v23;
  *(a4 + 64) = v20;
LABEL_19:
  *(a4 + 80) = a5;
  v24 = *(*(v9 + 377) + 77);
  if (*(v10 + 16))
  {
    v25 = a1 + 3976;
  }

  else
  {
    v25 = a1 + 3960;
  }

  if (*(v10 + 16))
  {
    v26 = a1 + 8240;
  }

  else
  {
    v26 = a1 + 7632;
  }

  v27 = v25[1];
  *(v10 + 144) = *v25;
  *(v10 + 160) = v27;
  memcpy((v10 + 192), v26, 0x4C0uLL);
  if (!v24)
  {
    v28 = a1 + 3968;
    if (!*(v10 + 2624))
    {
      v28 = a1 + 3960;
    }

    v29 = v28[1];
    if (*(v10 + 2624))
    {
      v30 = a1 + 7936;
    }

    else
    {
      v30 = a1 + 7632;
    }

    *(v10 + 2752) = *v28;
    *(v10 + 2768) = v29;
    memcpy((v10 + 2800), v30, 0x4C0uLL);
    if (*(v10 + 5232))
    {
      v31 = a1 + 3976;
    }

    else
    {
      v31 = a1 + 3960;
    }

    if (*(v10 + 5232))
    {
      v32 = a1 + 8240;
    }

    else
    {
      v32 = a1 + 7632;
    }

    v33 = v31[1];
    *(v10 + 5360) = *v31;
    *(v10 + 5376) = v33;
    memcpy((v10 + 5408), v32, 0x4C0uLL);
  }

  *(v10 + 8) = a1[3945];
  v34 = *(v9 + 377);
  bzero((v10 + 10776), 0x800uLL);
  bzero((v10 + 12824), 0x800uLL);
  *(v10 + 15016) = *(v34 + 96);
  *(v10 + 15012) = 0;
  *(v10 + 15024) = 0;
  *(v10 + 14874) = 0;
  *(v10 + 14872) = 0;
  *(v10 + 10736) = v21;
  v35 = *(*(v9 + 377) + 77);
  *(v10 + 7968) = *(*(v9 + 456) + 8 * v12);
  if (!v35)
  {
    *(v10 + 7976) = *(*(v9 + 457) + 8 * v12);
    *(v10 + 7984) = *(*(v9 + 458) + 8 * v12);
  }

  *(v10 + 8088) = *(*(v9 + 455) + 8 * v12);
  *(v10 + 8128) = *(*(v9 + 459) + 8 * v12);
  v36 = (a4 + 96);
  result = memcpy(v36, *(v9 + 378), 0x52FCuLL);
  *(v10 + 10648) = v36;
  return result;
}

void read_coeffs_tx_intra_block(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, unsigned int a7, double a8, int8x16_t a9)
{
  if (!*(**(a2 + 7864) + 144))
  {
    av1_read_coeffs_txb(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

int8x8_t *predict_inter_block(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](a1, a2, a3);
  v14 = v13;
  v15 = v4;
  v240 = *MEMORY[0x277D85DE8];
  v16 = **(v4 + 7864);
  if (*(*(v3 + 24680) + 77))
  {
    v17 = 1;
  }

  else
  {
    v17 = 3;
  }

  v19 = *v4;
  v18 = *(v4 + 4);
  v20 = v3 + 240;
  v21 = v3 + 416;
  v194 = v3;
  v22 = v3 + 288;
  v23 = v16[16];
  if (v23 >= 1)
  {
    v24 = *(v20 + 4 * (v23 - 1));
    v25 = *(v21 + 8 * v24);
    v26 = (v22 + 16 * v24);
    *(v4 + 7944) = v26;
    av1_setup_pre_planes(v4, 0, v25 + 1248, v19, v18, v26, v17);
  }

  v27 = v16[17];
  if (v27 > 0)
  {
    v28 = *(v20 + 4 * (v27 - 1));
    v29 = *(v21 + 8 * v28);
    v30 = (v22 + 16 * v28);
    *(v15 + 994) = v30;
    av1_setup_pre_planes(v15, 1, v29 + 1248, v19, v18, v30, v17);
  }

  v31 = v15 + 1350;
  v32 = *(*&v194[3085] + 77);
  v33 = 4 * v18;
  v34 = 4 * v19;
  result = dec_build_inter_predictors_0(v194, v15, 0, **(v15 + 983), 0, *(v15 + 184), *(v15 + 185), v33, v5, v6, v7, v8, v9, v10, v11, v12, 4 * v19);
  v44 = **(v15 + 983);
  if (v44[16] >= 1 && !v44[17] && *v44 - 10 >= 0xFFFFFFF9 && v44[2] - 17 >= 0xFFFFFFFC)
  {
    v45 = *(v15 + 4);
    v46 = v15[14];
    av1_predict_intra_block(v15, *(*&v194[3085] + 28), *(*&v194[3085] + 61), *(v15 + 184), *(v15 + 185), max_txsize_rect_lookup_10[av1_ss_size_lookup[4 * v14 + 2 * v15[5] + v15[6]]], interintra_to_intra_mode[v44[64]], 0, v36, v37, *v38.i64, *v39.i64, *v40.i64, *v41.i8, v42, 0, 5u, v45, v46, &__b, 128, 0, 0, 0);
    result = av1_combine_interintra(v15, v14, 0, v45, v46, &__b, 0x80u);
  }

  if (!v32 && *(v15 + 12) == 1)
  {
    result = dec_build_inter_predictors_0(v194, v15, 1, **(v15 + 983), 0, *(v15 + 2792), *(v15 + 2793), v33, v36, v37, v38, v39, v40, v41, v42, v43, v34);
    v55 = **(v15 + 983);
    if (v55[16] >= 1 && !v55[17] && *v55 - 10 >= 0xFFFFFFF9 && v55[2] - 17 >= 0xFFFFFFFC)
    {
      v212 = 0;
      v56 = *(v15 + 330);
      v208 = *(v15 + 4);
      v209 = v56;
      v210 = *(v15 + 656);
      v57 = v15[666];
      LODWORD(v211) = v15[14];
      HIDWORD(v211) = v57;
      LODWORD(v212) = v15[1318];
      result = av1_build_interintra_predictor(v194, v15, v56);
    }

    if (*(v15 + 12) == 1)
    {
      result = dec_build_inter_predictors_0(v194, v15, 2, **(v15 + 983), 0, *(v15 + 5400), *(v15 + 5401), v33, v47, v48, v49, v50, v51, v52, v53, v54, v34);
      v58 = **(v15 + 983);
      if (v58[16] >= 1 && !v58[17] && *v58 - 10 >= 0xFFFFFFF9 && v58[2] - 17 >= 0xFFFFFFFC)
      {
        v212 = 0;
        v59 = *(v15 + 330);
        v208 = *(v15 + 4);
        v209 = v59;
        v210 = *(v15 + 656);
        LODWORD(v59) = v15[666];
        LODWORD(v211) = v15[14];
        HIDWORD(v211) = v59;
        LODWORD(v212) = v15[1318];
        result = av1_build_interintra_predictor(v194, v15, v210);
      }
    }
  }

  if (v16[24] == 1)
  {
    v60 = *(*&v194[3085] + 77);
    v226 = 128;
    v225 = 0x8000000080;
    v224 = 128;
    v223 = 0x8000000080;
    v222 = 128;
    v221 = 0x8000000080;
    v220 = 128;
    v219 = 0x8000000080;
    v218 = 128;
    v217 = 0x8000000080;
    v216 = 128;
    v215 = 0x8000000080;
    v228[0] = *(v15 + 1880);
    v228[1] = v228[0] + 0x4000;
    v228[2] = v228[0] + 0x8000;
    v227[0] = *(v15 + 1881);
    v227[1] = v227[0] + 0x4000;
    v227[2] = v227[0] + 0x8000;
    v61 = *(v15 + 983);
    v204 = v60;
    if (*(v15 + 7872) == 1)
    {
      v62 = *(v15 + 8309);
      v63 = 16 * v62;
      if (v62 >= 0x10)
      {
        v63 = 256;
      }

      v64 = 32 * v62 - v63;
      v65 = v64 + v15[1984];
      v15[1984] = v65;
      v208 = v194;
      v209 = v228;
      v210 = &v221;
      v211 = &v217;
      v212 = &v225;
      v213 = 0;
      v66 = v15[1982];
      LODWORD(v213) = v66;
      v214 = v15;
      v67 = **v61;
      if (v60)
      {
        v68 = 1;
      }

      else
      {
        v68 = 3;
      }

      v199 = v68;
      v69 = v15[1];
      v70 = v194[67].i32[0];
      if ((v69 + *(v15 + 8308)) < v70)
      {
        v70 = v69 + *(v15 + 8308);
      }

      if (((0x3EFFFCuLL >> v67) & 1) != 0 && v69 < v70)
      {
        v193 = v64;
        v71 = 0;
        v201 = max_neighbor_obmc[mi_size_wide_log2_1[v67]];
        v205 = &(&v61[-v69])[-v15[2]];
        v72 = v15[1];
        v197 = v72;
        v195 = v70;
        do
        {
          v73 = **(v205 + 8 * v72);
          if ((0x1F07FFuLL >> v73))
          {
            v74 = mi_size_wide_7[v73];
          }

          else
          {
            v74 = 16;
          }

          if (v74 == 1)
          {
            v75 = 2;
          }

          else
          {
            v75 = v74;
          }

          if (v74 == 1)
          {
            v76 = v72 & 0xFFFFFFFE;
          }

          else
          {
            v76 = v72;
          }

          if (v74 == 1)
          {
            v77 = (v205 + 8 + 8 * (v72 & 0xFFFFFFFFFFFFFFFELL));
          }

          else
          {
            v77 = (v205 + 8 * v72);
          }

          v78 = *v77;
          if ((*(v78 + 167) & 0x80) != 0 || *(v78 + 16) >= 1)
          {
            v79 = v76 - v69;
            if (v31[2908] >= v75)
            {
              v80 = v75;
            }

            else
            {
              v80 = v31[2908];
            }

            v81 = v15[1] + v79;
            v82 = *v78;
            v83 = *(v78 + 32);
            v230 = *(v78 + 16);
            v231 = v83;
            __b = v82;
            v84 = *(v78 + 48);
            v85 = *(v78 + 64);
            v86 = *(v78 + 96);
            v234 = *(v78 + 80);
            v235 = v86;
            v232 = v84;
            v233 = v85;
            v87 = *(v78 + 112);
            v88 = *(v78 + 128);
            v89 = *(v78 + 160);
            v238 = *(v78 + 144);
            v239 = v89;
            v236 = v87;
            v237 = v88;
            av1_setup_build_prediction_by_above_pred(v15, v79, v80, &__b, &v208, v199);
            v98 = 4 * v81;
            v99 = 4 * *v15;
            v100 = ***(v15 + 983);
            v101 = block_size_high_7[v100];
            v102 = 4 * v80;
            v103 = v15[5];
            v104 = v15[6];
            v105 = &av1_ss_size_lookup[4 * v100];
            if (v105[2 * v103 + v104] >= 3u)
            {
              v106 = v104 + 1;
              v107 = v101 >> v106;
              v108 = 0x40u >> v106;
              if (v107 < v108)
              {
                v108 = v107;
              }

              if (v107 >= 4)
              {
                v109 = v108;
              }

              else
              {
                v109 = 4;
              }

              dec_build_inter_predictors_0(v208, v214, 0, &__b, 1, v102 >> v103, v109, v98, v90, v91, v92, v93, v94, v95, v96, v97, v99);
            }

            if (!v204)
            {
              v110 = v15[657];
              v111 = v15[658];
              if (v105[2 * v110 + v111] >= 3u)
              {
                v112 = v111 + 1;
                v113 = v101 >> v112;
                v114 = 0x40u >> v112;
                if (v113 < v114)
                {
                  v114 = v113;
                }

                if (v113 >= 4)
                {
                  v115 = v114;
                }

                else
                {
                  v115 = 4;
                }

                dec_build_inter_predictors_0(v208, v214, 1, &__b, 1, v102 >> v110, v115, v98, v90, v91, v92, v93, v94, v95, v96, v97, v99);
              }

              v116 = v15[1309];
              v117 = v15[1310];
              if (v105[2 * v116 + v117] >= 3u)
              {
                v118 = v117 + 1;
                v119 = v101 >> v118;
                v120 = 0x40u >> v118;
                if (v119 < v120)
                {
                  v120 = v119;
                }

                if (v119 >= 4)
                {
                  v121 = v120;
                }

                else
                {
                  v121 = 4;
                }

                dec_build_inter_predictors_0(v208, v214, 2, &__b, 1, v102 >> v116, v121, v98, v90, v91, v92, v93, v94, v95, v96, v97, v99);
              }
            }

            ++v71;
            v31 = v15 + 1350;
            LODWORD(v69) = v197;
            v70 = v195;
          }

          v72 = v76 + v75;
        }

        while ((v76 + v75) < v70 && v71 < v201);
        LODWORD(v69) = v15[1];
        v66 = v213;
        v65 = v15[1984];
        v61 = *(v15 + 983);
        v64 = v193;
      }

      v15[1981] = -32 * v69;
      v15[1982] = v66;
      v15[1984] = v65 - v64;
    }

    v122 = *v15;
    if (v31[2473] == 1)
    {
      v123 = v31[2908];
      v124 = 16 * v123;
      if (v123 >= 0x10)
      {
        v124 = 256;
      }

      v125 = 32 * v123 - v124;
      v126 = v125 + v15[1982];
      v15[1982] = v126;
      v208 = v194;
      v209 = v227;
      v210 = &v219;
      v211 = &v215;
      v212 = &v223;
      v213 = 0;
      v127 = v15[1984];
      LODWORD(v213) = v127;
      v214 = v15;
      v128 = **v61;
      v202 = *(*&v194[3085] + 77);
      if (*(*&v194[3085] + 77))
      {
        v129 = 1;
      }

      else
      {
        v129 = 3;
      }

      v200 = v129;
      v130 = v194[66].i32[1];
      if ((v122 + v31[2909]) < v130)
      {
        v130 = v122 + v31[2909];
      }

      if (((0x3DFFFAuLL >> v128) & 1) != 0 && v122 < v130)
      {
        v196 = v125;
        v198 = v130;
        v131 = 0;
        v203 = max_neighbor_obmc[mi_size_high_log2[v128]];
        v206 = &v61[-(v15[2] * v122) - 1];
        v207 = v31;
        v132 = v122;
        while (1)
        {
          v133 = v15[2];
          v134 = *(v206 + 8 * (v133 * v132));
          v135 = *v134;
          if ((0x2F0BFFuLL >> v135))
          {
            if ((0x20005uLL >> v135))
            {
              v137 = v132 | 1;
              v132 &= ~1u;
              v134 = *(v206 + 8 * (v133 * v137));
              v136 = 2;
              if ((*(v134 + 167) & 0x80) != 0)
              {
                goto LABEL_101;
              }
            }

            else
            {
              v136 = mi_size_high_6[v135];
              if ((*(v134 + 167) & 0x80) != 0)
              {
                goto LABEL_101;
              }
            }
          }

          else
          {
            v136 = 16;
            if ((*(v134 + 167) & 0x80) != 0)
            {
              goto LABEL_101;
            }
          }

          if (v134[16] >= 1)
          {
LABEL_101:
            v138 = v122;
            v139 = v132 - v122;
            if (v207[2909] >= v136)
            {
              v140 = v136;
            }

            else
            {
              v140 = v207[2909];
            }

            v141 = *v15 + v139;
            v142 = *v134;
            v143 = *(v134 + 2);
            v230 = *(v134 + 1);
            v231 = v143;
            __b = v142;
            v144 = *(v134 + 3);
            v145 = *(v134 + 4);
            v146 = *(v134 + 6);
            v234 = *(v134 + 5);
            v235 = v146;
            v232 = v144;
            v233 = v145;
            v147 = *(v134 + 7);
            v148 = *(v134 + 8);
            v149 = *(v134 + 10);
            v238 = *(v134 + 9);
            v239 = v149;
            v236 = v147;
            v237 = v148;
            av1_setup_build_prediction_by_left_pred(v15, v139, v140, &__b, &v208, v200);
            v158 = 4 * v15[1];
            v159 = 4 * v141;
            v160 = block_size_wide_8[***(v15 + 983)];
            v161 = 4 * v140;
            v162 = v15[5] + 1;
            v163 = v160 >> v162;
            v164 = 0x40u >> v162;
            if (v163 < v164)
            {
              v164 = v163;
            }

            if (v163 >= 4)
            {
              v165 = v164;
            }

            else
            {
              v165 = 4;
            }

            dec_build_inter_predictors_0(v208, v214, 0, &__b, 1, v165, v161 >> v15[6], v158, v150, v151, v152, v153, v154, v155, v156, v157, v159);
            if (!v202)
            {
              v174 = v15[657] + 1;
              v175 = v160 >> v174;
              v176 = 0x40u >> v174;
              if (v175 < v176)
              {
                v176 = v175;
              }

              if (v175 >= 4)
              {
                v177 = v176;
              }

              else
              {
                v177 = 4;
              }

              dec_build_inter_predictors_0(v208, v214, 1, &__b, 1, v177, v161 >> v15[658], v158, v166, v167, v168, v169, v170, v171, v172, v173, v159);
              v186 = v15[1309] + 1;
              v187 = v160 >> v186;
              v188 = 0x40u >> v186;
              if (v187 < v188)
              {
                v188 = v187;
              }

              if (v187 >= 4)
              {
                v189 = v188;
              }

              else
              {
                v189 = 4;
              }

              dec_build_inter_predictors_0(v208, v214, 2, &__b, 1, v189, v161 >> v15[1310], v158, v178, v179, v180, v181, v182, v183, v184, v185, v159);
            }

            ++v131;
            v122 = v138;
            v130 = v198;
          }

          v132 += v136;
          if (v132 >= v130 || v131 >= v203)
          {
            LODWORD(v122) = *v15;
            v126 = v15[1982];
            v127 = v213;
            v61 = *(v15 + 983);
            v125 = v196;
            break;
          }
        }
      }

      v15[1983] = -32 * v122;
      v15[1982] = v126 - v125;
      v15[1984] = v127;
    }

    if (v204)
    {
      v190 = 1;
    }

    else
    {
      v190 = 3;
    }

    av1_setup_dst_planes((v15 + 4), **v61, *&v194[29] + 1248, v122, v15[1], 0, v190);
    return av1_build_obmc_inter_prediction(v194, v15, v228, &v225, v227, &v223, v191, v192);
  }

  return result;
}

uint64_t cfl_store_inter_block(uint64_t result, uint64_t a2)
{
  if (!*(*(result + 24680) + 77))
  {
    v2 = **(a2 + 7864);
    if (*(a2 + 12) != 1 || (*(v2 + 167) & 0x80) == 0 && v2[16] <= 0 && v2[3] == 13)
    {
      return cfl_store_block(a2, *v2, v2[145]);
    }
  }

  return result;
}

uint8x8_t *dec_build_inter_predictors_0(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4, int a5, int a6, int a7, unsigned int a8, double a9, uint16x8_t a10, uint16x8_t a11, uint16x8_t a12, int16x8_t a13, uint16x8_t a14, uint32x4_t a15, uint16x4_t a16, int a17)
{
  v17 = a4;
  v174[1] = *MEMORY[0x277D85DE8];
  v20 = a2 + 15064;
  v21 = *a4;
  v22 = *(a4 + 167);
  v169 = a3;
  if ((v22 >> 7) & 1 | a5)
  {
    v23 = a3;
LABEL_45:
    v90 = (v17 + 17);
    v91 = *(v17 + 17);
    v92 = a2 + 2608 * v23;
    v157 = *(v92 + 32);
    v158 = (v92 + 32);
    v171 = v92 + 16;
    v174[0] = 0;
    v93 = *(a2 + 10744);
    v94 = *(v17 + 2);
    v95 = block_size_wide_8[v21];
    if (v95 >= block_size_high_7[v21])
    {
      v95 = block_size_high_7[v21];
    }

    v97 = v94 == 15 || v94 == 23;
    v165 = v91;
    if (v91 <= 0)
    {
      v98 = 1;
    }

    else
    {
      v98 = 2;
    }

    if (v91 <= 0)
    {
      v103 = v174;
      v104 = (v17 + 16);
      v105 = v98;
      do
      {
        v106 = *v104++;
        v107 = *(v93 + 36 * v106 + 32) > 1u && v97;
        if (v95 <= 7u)
        {
          v107 = 0;
        }

        *v103++ = v107;
        --v105;
      }

      while (v105);
    }

    else
    {
      v99 = v98 & 2;
      v100 = v174 + 1;
      do
      {
        v101 = *(v93 + 36 * *(v90 - 1) + 32) > 1u && v97;
        v102 = *(v93 + 36 * *v90 + 32) > 1u && v97;
        if (v95 <= 7)
        {
          v101 = 0;
          v102 = 0;
        }

        *(v100 - 1) = v101;
        *v100 = v102;
        v90 += 2;
        v100 += 2;
        v99 -= 2;
      }

      while (v99);
    }

    v108 = 0;
    v109 = 0;
    v153 = a5 != 0;
    v110 = vrev64_s32(*(v171 + 4));
    v111 = vshl_s32(vadd_s32(vshl_n_s32(vcltz_s32(vshl_n_s32(vand_s8(vdup_n_s32(a5 == 0), vbic_s8(vmovn_s64(vshlq_u64(xmmword_273BDF1F0, vnegq_s64(vdupq_n_s64(v21)))), vceqz_s32(v110))), 0x1FuLL)), 2uLL), __PAIR64__(a8, a17)), vneg_s32(v110));
    v112 = (v171 + 48);
    v148 = a2 + 7944;
    v113 = vdup_n_s32(0x120u);
    v163 = a7;
    v162 = a6;
    v160 = v22;
    v156 = v98;
    do
    {
      v114 = a1 + 272;
      if ((v22 & 0x80) == 0)
      {
        v114 = *(v148 + 8 * v109);
      }

      v115 = v158;
      if ((v22 & 0x80) == 0)
      {
        v115 = v112;
      }

      v116 = *(v17 + 8 + 4 * v109);
      v117 = *(v174 + v109);
      v118 = *(v17 + 24);
      memset(&v172[120], 0, 88);
      memset(&v172[8], 0, 112);
      v119 = *(a2 + 10656);
      v120 = (*(v17 + 167) >> 7) & 1;
      v121 = *(v17 + 20);
      *&v172[112] = a6;
      *&v172[116] = a7;
      *&v172[176] = v119;
      *&v172[204] = v120;
      *v172 = 0;
      v122 = *(v171 + 4);
      *&v172[120] = v111;
      *&v172[160] = v122;
      v173 = vrev64_s32(vsub_s32(0x100000001000, vshl_n_s32(vshl_u32(v113, vneg_s32(v122)), 0xAuLL)));
      if (v120)
      {
        v128 = &av1_intrabc_filter_params;
        v126 = &av1_intrabc_filter_params;
      }

      else
      {
        v123 = (*&v121 & 0xFF0000) != 0x40000 && a6 < 5;
        if (v123)
        {
          v124 = &av1_interp_4tap;
        }

        else
        {
          v124 = &av1_interp_filter_params_list;
        }

        v125 = v121 != 4 && a7 < 5;
        v126 = &v124[2 * BYTE2(v121)];
        if (v125)
        {
          v127 = &av1_interp_4tap;
        }

        else
        {
          v127 = &av1_interp_filter_params_list;
        }

        v128 = &v127[2 * v121];
      }

      *&v172[96] = v126;
      *&v172[104] = v128;
      *&v172[168] = v114;
      v129 = v115[1];
      *&v172[128] = *v115;
      *&v172[144] = v129;
      if (v165 < 1)
      {
        v130 = 0;
        v131 = 11;
      }

      else
      {
        v130 = 1;
        *&v172[4] = 1;
        v131 = 7;
      }

      v132 = *(a2 + 15032);
      *&v172[48] = v109;
      *&v172[56] = v132;
      *&v172[64] = 0x300000080;
      *&v172[72] = v131;
      *&v172[76] = a3;
      *&v172[80] = v130;
      *&v172[84] = 0;
      *&v172[92] = 0;
      av1_dist_wtd_comp_weight_assign(a1, v17, &v172[88], &v172[92], &v172[84], v165 > 0);
      v141 = v153;
      if (*&v172[116] < 8)
      {
        v141 = 1;
      }

      if ((v141 & 1) == 0 && *&v172[112] >= 8 && !*(a2 + 10728))
      {
        v142 = *(a2 + 10744);
        v143 = *(v17 + 16 + (v108 >> 32));
        if (**&v172[168] == -1 || (v144 = *(*&v172[168] + 4), v144 == -1) || **&v172[168] == 0x4000 && v144 == 0x4000)
        {
          if ((*&v133 = default_warp_params_2, v134 = algn_273C299FC, *&v172[8] = default_warp_params_2, *&v172[24] = algn_273C299FC, *&v172[40] = 0, v118 == 2) && (v145 = v17 + 28, !*(v17 + 61)) || v117 && (v145 = v142 + 36 * v143, !*(v145 + 33)))
          {
            v133 = *v145;
            v134 = *(v145 + 16);
            *&v172[40] = *(v145 + 32);
            *&v172[24] = v134;
            *&v172[8] = v133;
            *v172 = 1;
          }
        }
      }

      if ((*(v17 + 83) & 0xFE) == 2)
      {
        v172[200] = *v17;
        v133 = *(v17 + 72);
        *&v172[184] = v133;
        if (v109 == 1)
        {
          *&v172[48] = 0;
          *&v172[4] = 2;
        }

        *&v172[184] = *(a2 + 10768);
      }

      result = build_one_inter_predictor(v157, *(v171 + 40), v116, HIWORD(v116), v172, a2, a8, a17, *&v133, v134, v135, v136, v137, v138, v139, v140, v109++, v20);
      v108 += 0x100000000;
      v112 += 2;
      a3 = v169;
      a7 = v163;
      a6 = v162;
      LOBYTE(v22) = v160;
    }

    while (v156 != v109);
    return result;
  }

  v24 = a2 + 2608 * a3;
  v23 = a3;
  v26 = *(v24 + 20);
  v25 = *(v24 + 24);
  v27 = 0x10003uLL >> v21;
  v28 = (0x10003uLL >> v21) & (v26 != 0);
  v29 = (0x20005uLL >> v21) & (v25 != 0);
  if (((0x10003uLL >> v21) & (v26 != 0)) == 0 && !v29)
  {
    goto LABEL_45;
  }

  v30 = *(a2 + 7864);
  v31 = (v28 << 63) >> 63;
  v32 = v29 ? -*(a2 + 8) : 0;
  v33 = v30 + 8 * v32;
  v34 = *(v33 + 8 * v31);
  if ((*(v34 + 167) & 0x80) != 0)
  {
    goto LABEL_45;
  }

  if (*(v34 + 16) < 1)
  {
    goto LABEL_45;
  }

  if (v28)
  {
    v35 = *(v33 + 8 * !((0x10003uLL >> v21) & (v26 != 0)));
    if ((*(v35 + 167) & 0x80) != 0 || *(v35 + 16) < 1)
    {
      goto LABEL_45;
    }
  }

  if (v29)
  {
    v36 = *(v30 + 8 * v31);
    if ((*(v36 + 167) & 0x80) != 0)
    {
      goto LABEL_45;
    }

    if (*(v36 + 16) < 1)
    {
      goto LABEL_45;
    }

    if (v28)
    {
      v37 = *(v30 + 8 * !((0x10003uLL >> v21) & (v26 != 0)));
      if ((*(v37 + 167) & 0x80) != 0 || *(v37 + 16) < 1)
      {
        goto LABEL_45;
      }
    }
  }

  v161 = a2 + 15064;
  v164 = 0;
  v38 = v26 != 0;
  v39 = v25 != 0;
  v40 = block_size_wide_8[v21] >> v38;
  v41 = block_size_high_7[v21];
  v42 = &av1_ss_size_lookup[4 * v21 + 2 * v38];
  if (v25)
  {
    ++v42;
  }

  v43 = *v42;
  v44 = block_size_wide_8[v43];
  v150 = block_size_high_7[v43];
  LODWORD(result) = v41 >> v39;
  v46 = *(v17 + 17);
  v47 = 1296;
  if (a3 != 1)
  {
    v47 = 1304;
  }

  v123 = v46 <= 0;
  v48 = v46 > 0;
  v49 = v29 << 31 >> 31;
  v50 = v27 & v38;
  v147 = (a17 + 4 * v49) >> v39;
  v51 = a1 + 240;
  v52 = a1 + 416;
  v53 = a1 + 288;
  if (v123)
  {
    v54 = 11;
  }

  else
  {
    v54 = 7;
  }

  v55 = a8;
  v146 = v50 << 63 >> 63;
  v56 = 0uLL;
  v57 = vdup_n_s32(0x120u);
  v58 = &av1_intrabc_filter_params;
  v59 = &av1_interp_4tap;
  v60 = &av1_interp_filter_params_list;
  v159 = v47;
  v155 = (a8 + 4 * ((v50 << 31) >> 31)) >> v38;
  v149 = v17;
  v154 = a2 + 2608 * a3;
  v152 = v54;
  v151 = result;
  do
  {
    v61 = 0;
    v62 = v146;
    v168 = v49;
    do
    {
      v170 = v62;
      v63 = *(*(a2 + 7864) + 8 * (v62 + *(a2 + 8) * v49));
      v64 = *(v24 + 56);
      v65 = *(v51 + 4 * (*(v63 + 16) - 1));
      v66 = *(v24 + 32) + (v164 * v64);
      v67 = *(v52 + 8 * v65);
      v68 = *(v67 + v47);
      v69 = *(v63 + 8);
      v173 = 0;
      *&v172[176] = v56;
      *&v172[192] = v56;
      *&v172[144] = v56;
      *&v172[160] = v56;
      *&v172[112] = v56;
      *&v172[128] = v56;
      *&v172[80] = v56;
      *&v172[96] = v56;
      *&v172[48] = v56;
      *&v172[64] = v56;
      *&v172[16] = v56;
      *&v172[32] = v56;
      v70 = *(a2 + 10656);
      v71 = *(v17 + 167);
      v72 = *(v63 + 20);
      *&v172[124] = v155 + v61;
      *&v172[176] = v70;
      *&v172[204] = (v71 >> 7) & 1;
      if ((*&v72 & 0xFF0000) == 0x40000 || v40 >= 5)
      {
        v74 = v60;
      }

      else
      {
        v74 = v59;
      }

      v75 = v72 == 4 || result >= 5;
      v76 = &v74[2 * BYTE2(v72)];
      if (v75)
      {
        v77 = v60;
      }

      else
      {
        v77 = v59;
      }

      v78 = &v77[2 * v72];
      if ((v71 >> 7))
      {
        v76 = v58;
        v78 = v58;
      }

      *&v172[96] = v76;
      *&v172[104] = v78;
      *&v172[168] = v53 + 16 * v65;
      v79 = v67[317];
      *&v172[128] = 0;
      *&v172[136] = v68;
      v80 = v67[319];
      *&v172[144] = v79;
      *&v172[148] = v80;
      *&v172[120] = v164 + v147;
      v81 = v67[321];
      *v172 = v56;
      *&v172[112] = v40;
      *&v172[116] = result;
      *&v172[180] = 0;
      *&v172[160] = *(v24 + 20);
      v173 = vrev64_s32(vsub_s32(0x100000001000, vshl_n_s32(vshl_u32(v57, vneg_s32(*&v172[160])), 0xAuLL)));
      *&v172[152] = v81;
      *&v172[48] = 0uLL;
      *&v172[64] = 0x300000000;
      *&v172[72] = v54;
      *&v172[76] = a3;
      *&v172[80] = v48;
      *&v172[84] = 0;
      *&v172[92] = 0;
      v82 = v40;
      v83 = v55 + v61;
      v84 = v59;
      v85 = v53;
      v86 = v60;
      v87 = v58;
      v88 = v55;
      v89 = v44;
      build_one_inter_predictor((v66 + v61), v64, v69, HIWORD(v69), v172, a2, v83, v164 + a17, *&v173, a10, a11, a12, a13, a14, a15, a16, 0, v161);
      a3 = v169;
      v56 = 0uLL;
      v53 = v85;
      v59 = v84;
      v52 = a1 + 416;
      v51 = a1 + 240;
      v40 = v82;
      v49 = v168;
      v24 = v154;
      v17 = v149;
      result = v151;
      v54 = v152;
      v47 = v159;
      v44 = v89;
      v55 = v88;
      v58 = v87;
      v60 = v86;
      v61 += v40;
      v62 = v170 + 1;
    }

    while (v61 < v44);
    v49 = v168 + 1;
    v164 += v151;
  }

  while (v164 < v150);
  return result;
}

uint8x8_t *build_one_inter_predictor(uint8x8_t *a1, uint64_t a2, unsigned int a3, unsigned int a4, int32x2_t *a5, _DWORD *a6, int a7, int a8, double a9, uint16x8_t a10, uint16x8_t a11, uint16x8_t a12, int16x8_t a13, uint16x8_t a14, uint32x4_t a15, uint16x4_t a16, unsigned int a17, uint64_t a18)
{
  v163 = 0;
  v164 = 0;
  v165 = 0;
  v20 = a5[21];
  v21 = *&a5[14];
  v22 = *v20;
  if (*v20 == -1 || (v23 = v20[1], v23 == -1) || v22 == 0x4000 && v23 == 0x4000)
  {
    v25 = a5[15].i32[0];
    v24 = a5[15].i32[1];
    v26 = vshl_n_s32(*&v21, 4uLL);
    a12.i64[0] = 0x40000000400;
    v27 = vsub_s32(0x100000001, a5[20]);
    v28.i32[0] = a6[1982];
    v28.i32[1] = a6[1984];
    v29 = vshl_u32(v28, v27);
    v30.i32[0] = a6[1981];
    v30.i32[1] = a6[1983];
    v31 = vshl_u32(__PAIR64__(a3, a4), v27);
    v32 = vadd_s32(vsub_s32(vshl_u32(v30, v27), v26), 0x3F0000003FLL);
    a15.i64[0] = 0x3000000030;
    v33 = vshr_n_s32(vshl_n_s32(v31, 0x10uLL), 0x10uLL);
    v34 = vbsl_s8(vcgt_s32(v32, v33), v32, vmin_s32(v33, vadd_s32(vadd_s32(v26, 0x3000000030), v29)));
    v35 = v34.i8[4];
    *a11.i8 = vand_s8(v34, 0xF0000000FLL);
    *a13.i8 = vshl_n_s32(v34, 6uLL);
    v36 = v34.i16[0];
    v37 = v34.i16[2];
    a14.i32[0] = vshl_n_s32(*a11.i8, 6uLL).u32[0];
    *a10.i8 = vand_s8(*a13.i8, vdup_n_s32(0x3C0u));
    a14.i32[1] = a10.i32[1];
    v163 = 0x40000000400;
    v164 = a14.i64[0];
    v38 = (v36 + 16 * v24) >> 4;
    v39 = ((v37 + 16 * v25) >> 4);
    v40 = v38 + LODWORD(v21);
    v41 = v39 | ((v39 + HIDWORD(v21)) << 32);
    v42 = v35 & 0xF;
    v43 = a11.i32[0];
    goto LABEL_6;
  }

  v61 = a5[20].i32[0];
  v62 = a5[20].i32[1];
  v63 = 1 - v62;
  v64 = 1 - v61;
  v65 = (a4 << (1 - v61)) + 16 * a5[15].i32[1];
  v66 = 8 * v23 - 0x20000;
  v67 = v66 + v23 * ((a3 << (1 - v62)) + 16 * a5[15].i32[0]);
  if (v67 < 0)
  {
    v68 = -((128 - v67) >> 8);
    v69 = 8 * v22 - 0x20000;
    v70 = v69 + v22 * v65;
    if ((v70 & 0x8000000000000000) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v68 = (v67 + 128) >> 8;
    v69 = 8 * v22 - 0x20000;
    v70 = v69 + v22 * v65;
    if ((v70 & 0x8000000000000000) == 0)
    {
LABEL_35:
      v71 = (v70 + 128) >> 8;
      goto LABEL_51;
    }
  }

  v71 = -((128 - v70) >> 8);
LABEL_51:
  v78 = v71 + 32;
  v79 = v68 + 32;
  v80 = 4096 - (0x120u >> v62 << 10);
  v81 = 4096 - (0x120u >> v61 << 10);
  v82 = (a5[18].i32[1] << 10) + 4096;
  if (v79 < v82)
  {
    v82 = v79;
  }

  if (v79 >= v80)
  {
    v83 = v82;
  }

  else
  {
    v83 = v80;
  }

  if (v78 >= (a5[18].i32[0] << 10) + 4096)
  {
    v84 = (a5[18].i32[0] << 10) + 4096;
  }

  else
  {
    v84 = v78;
  }

  if (v78 >= v81)
  {
    v81 = v84;
  }

  LODWORD(v164) = v81 & 0x3FF;
  HIDWORD(v164) = v83 & 0x3FF;
  v85 = v20[2];
  v86 = v20[3];
  v163 = __PAIR64__(v86, v85);
  v87 = (v83 >> 10);
  v88 = LODWORD(v21) - 1;
  v89 = (v83 + v86 * (HIDWORD(v21) - 1)) >> 10;
  v90 = 16 * LODWORD(v21) + (a6[1982] << v64);
  v91 = 16 * HIDWORD(v21) + (a6[1984] << v63);
  v92 = a3 << v63;
  v93 = a4 << v64;
  v94 = (a6[1981] << v64) - 16 * LODWORD(v21) - 64;
  v95 = v90 + 48;
  v96 = (a6[1983] << v63) - 16 * HIDWORD(v21) - 64;
  if (v93 < v90 + 48)
  {
    v95 = v93;
  }

  if (v94 <= v93)
  {
    LOWORD(v94) = v95;
  }

  v97 = v92;
  if (v92 >= v91 + 48)
  {
    LOWORD(v92) = v91 + 48;
  }

  if (v96 > v97)
  {
    LOWORD(v92) = v96;
  }

  v98 = 16 * a7;
  v99 = v69 + v22 * (16 * a7);
  if (v99 < 0)
  {
    v100 = -((128 - v99) >> 8);
    v101 = v81 + v85 * v88;
    v102 = (v89 + 1);
    v103 = 16 * a8;
    v104 = v66 + v23 * (16 * a8);
    if ((v104 & 0x8000000000000000) == 0)
    {
LABEL_71:
      v105 = (v104 + 128) >> 8;
      v106 = v101 >> 10;
      v107 = v66 + v23 * (v103 + v92);
      if ((v107 & 0x8000000000000000) == 0)
      {
        goto LABEL_72;
      }

LABEL_76:
      v108 = -((128 - v107) >> 8);
      v38 = v81 >> 10;
      v40 = v106 + 1;
      v41 = v87 | (v102 << 32);
      v109 = v69 + v22 * (v98 + v94);
      if ((v109 & 0x8000000000000000) == 0)
      {
        goto LABEL_73;
      }

LABEL_77:
      v110 = -((128 - v109) >> 8);
      goto LABEL_78;
    }
  }

  else
  {
    v100 = (v99 + 128) >> 8;
    v101 = v81 + v85 * v88;
    v102 = (v89 + 1);
    v103 = 16 * a8;
    v104 = v66 + v23 * (16 * a8);
    if ((v104 & 0x8000000000000000) == 0)
    {
      goto LABEL_71;
    }
  }

  v105 = -((128 - v104) >> 8);
  v106 = v101 >> 10;
  v107 = v66 + v23 * (v103 + v92);
  if (v107 < 0)
  {
    goto LABEL_76;
  }

LABEL_72:
  v108 = (v107 + 128) >> 8;
  v38 = v81 >> 10;
  v40 = v106 + 1;
  v41 = v87 | (v102 << 32);
  v109 = v69 + v22 * (v98 + v94);
  if (v109 < 0)
  {
    goto LABEL_77;
  }

LABEL_73:
  v110 = (v109 + 128) >> 8;
LABEL_78:
  v37 = v108 - v105 + 32;
  v36 = (v110 - v100 + 32);
  v43 = (v110 - v100 + 32) & 0x3FF;
  v42 = v37 & 0x3FF;
LABEL_6:
  v44 = a5[17];
  v45 = a5[19].u32[0];
  v46 = (*&v44 + v45 * v41 + v38);
  v47 = a5->i32[0] == 1;
  v48 = a5[25].i32[1];
  if (v22 == -1)
  {
    v52 = 1;
    if (v48 | v47)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v49 = v20[1];
    v51 = v22 == 0x4000 && v49 == 0x4000;
    v52 = v49 == -1 || v51;
    if (v48 | v47)
    {
      goto LABEL_44;
    }
  }

  v53 = a5[18].i32[1];
  v54 = a5[18].i32[0];
  if (v37 | (v36 << 32))
  {
    v55 = 0;
  }

  else
  {
    v55 = v52;
  }

  if (v55 == 1 && (a5[18].i32[0] & 7) == 0 && (a5[18].i32[1] & 7) == 0)
  {
    goto LABEL_44;
  }

  v58 = HIDWORD(v41);
  if (v43 || v20[2] != 16)
  {
    v38 -= 3;
    v40 += 4;
    v59 = 3;
    v60 = a17;
    if (!v42)
    {
      goto LABEL_37;
    }

LABEL_39:
    LODWORD(v41) = v41 - 3;
    LODWORD(v58) = v58 + 4;
    v72 = 3;
    goto LABEL_40;
  }

  v59 = 0;
  v60 = a17;
  if (v42)
  {
    goto LABEL_39;
  }

LABEL_37:
  if (v20[3] != 16)
  {
    goto LABEL_39;
  }

  v72 = 0;
LABEL_40:
  if (v38 < 0 || v40 >= v54 || (v41 & 0x80000000) != 0 || v58 >= v53)
  {
    v154 = v72;
    v76 = (v40 - v38);
    v156 = a1;
    if (v41 >= v53)
    {
      v77 = (v53 - 1) * v45;
    }

    else
    {
      v77 = v41 * v45;
      if (v41 <= 0)
      {
        v77 = 0;
      }
    }

    v111 = v38;
    v112 = (*&v44 + v77);
    if ((-v38 & (v38 >> 31)) >= v76)
    {
      v113 = v40 - v38;
    }

    else
    {
      v113 = -v38 & (v38 >> 31);
    }

    v114 = v40 - v54;
    if (v40 <= v54)
    {
      v114 = 0;
    }

    if (v114 >= v76)
    {
      v115 = v76;
    }

    else
    {
      v115 = v114;
    }

    v116 = v115 + v113;
    v117 = v113;
    v118 = v76 - (v115 + v113);
    v119 = v118;
    v120 = v54 - 1;
    v121 = v115;
    v122 = v76;
    v162 = v58;
    v161 = a5[18].i32[1];
    v123 = v45;
    v158 = a5;
    v159 = *(a18 + 8 * v60);
    v157 = a2;
    v155 = v59;
    v153 = v76;
    if (v113)
    {
      if (v115)
      {
        if (v76 == v116)
        {
          v124 = v113 + v118;
          v125 = *(a18 + 8 * v60);
          do
          {
            memset(v125, *v112, v117);
            memset(&v125[v124], v112[v120], v121);
            v125 += v122;
            v126 = v41 + 1;
            if (v41 + 1 >= v161 || v41 <= -1)
            {
              v128 = 0;
            }

            else
            {
              v128 = v123;
            }

            v112 += v128;
            LODWORD(v41) = v41 + 1;
          }

          while (v162 != v126);
        }

        else
        {
          v160 = v113 + v118;
          v137 = *(a18 + 8 * v60);
          do
          {
            memset(v137, *v112, v117);
            memcpy(&v137[v117], &v112[v111 + v117], v119);
            memset(&v137[v160], v112[v120], v121);
            v137 += v122;
            v138 = v41 + 1;
            if (v41 + 1 >= v161 || v41 <= -1)
            {
              v140 = 0;
            }

            else
            {
              v140 = v123;
            }

            v112 += v140;
            LODWORD(v41) = v41 + 1;
          }

          while (v162 != v138);
        }
      }

      else if (v76 == v116)
      {
        v133 = *(a18 + 8 * v60);
        do
        {
          memset(v133, *v112, v117);
          v133 += v122;
          v134 = v41 + 1;
          if (v41 + 1 >= v161 || v41 <= -1)
          {
            v136 = 0;
          }

          else
          {
            v136 = v123;
          }

          v112 += v136;
          LODWORD(v41) = v41 + 1;
        }

        while (v162 != v134);
      }

      else
      {
        v149 = *(a18 + 8 * v60);
        do
        {
          memset(v149, *v112, v117);
          memcpy(&v149[v117], &v112[v111 + v117], v119);
          v149 += v122;
          v150 = v41 + 1;
          if (v41 + 1 >= v161 || v41 <= -1)
          {
            v152 = 0;
          }

          else
          {
            v152 = v123;
          }

          v112 += v152;
          LODWORD(v41) = v41 + 1;
        }

        while (v162 != v150);
      }
    }

    else if (v115)
    {
      if (v76 == v116)
      {
        v129 = (*(a18 + 8 * v60) + v118);
        do
        {
          memset(v129, v112[v120], v121);
          v130 = v41 + 1;
          if (v41 + 1 >= v161 || v41 <= -1)
          {
            v132 = 0;
          }

          else
          {
            v132 = v123;
          }

          v112 += v132;
          v129 += v122;
          LODWORD(v41) = v41 + 1;
        }

        while (v162 != v130);
      }

      else
      {
        v145 = *(a18 + 8 * v60);
        do
        {
          memcpy(v145, &v112[v111 + v117], v119);
          memset(&v145[v119], v112[v120], v121);
          v146 = v41 + 1;
          if (v41 + 1 >= v161 || v41 <= -1)
          {
            v148 = 0;
          }

          else
          {
            v148 = v123;
          }

          v112 += v148;
          v145 += v122;
          LODWORD(v41) = v41 + 1;
        }

        while (v162 != v146);
      }
    }

    else if (v76 != v116)
    {
      v141 = *(a18 + 8 * v60);
      do
      {
        memcpy(v141, &v112[v111 + v117], v119);
        v142 = v41 + 1;
        if (v41 + 1 >= v161 || v41 <= -1)
        {
          v144 = 0;
        }

        else
        {
          v144 = v123;
        }

        v112 += v144;
        v141 += v122;
        LODWORD(v41) = v41 + 1;
      }

      while (v162 != v142);
    }

    a5 = v158;
    v46 = (v159 + v154 * v122 + v155);
    v45 = v153;
    v73 = v156;
    v74 = v157;
    if (v158->i32[1] <= 1u)
    {
      return av1_make_inter_predictor(v46, v45, v73, v74, a5, &v163, v21, a10, a11, a12, a13, a14, a15, a16);
    }

    return av1_make_masked_inter_predictor(v46, v45, v73);
  }

LABEL_44:
  v73 = a1;
  v74 = a2;
  if (a5->i32[1] <= 1u)
  {
    return av1_make_inter_predictor(v46, v45, v73, v74, a5, &v163, v21, a10, a11, a12, a13, a14, a15, a16);
  }

  return av1_make_masked_inter_predictor(v46, v45, v73);
}

void *av1_zero_above_context(void *a1, uint64_t a2, int a3, int a4, int a5)
{
  v9 = a1[3085];
  v10 = *(v9 + 77);
  v11 = (a4 - a3 + ~(-1 << *(v9 + 36))) & (-1 << *(v9 + 36));
  v12 = *(v9 + 96);
  v13 = a3;
  bzero((*(a1[3164] + 8 * a5) + a3), v11);
  if (!v10)
  {
    v14 = *(a1[3165] + 8 * a5);
    if (v14 && *(a1[3166] + 8 * a5))
    {
      v15 = a3 >> v12;
      bzero((v14 + v15), v11 >> v12);
      bzero((*(a1[3166] + 8 * a5) + v15), v11 >> v12);
    }

    else
    {
      aom_internal_error(*(a2 + 10736), 7, "Invalid value of planes");
    }
  }

  bzero((*(a1[3163] + 8 * a5) + v13), v11);
  v16 = (*(a1[3167] + 8 * a5) + v13);

  return memset(v16, 64, v11);
}

unint64_t decode_partition_0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a6;
  v12 = mi_size_wide_7[a6];
  v13 = 255;
  if (a6 > 8)
  {
    switch(a6)
    {
      case 9u:
        v14 = 3u;
        break;
      case 0xCu:
        v14 = 4u;
        break;
      case 0xFu:
        v14 = 5u;
        break;
      default:
        goto LABEL_14;
    }
  }

  else
  {
    v14 = a6;
    if (a6)
    {
      if (a6 == 3)
      {
        v14 = 1u;
      }

      else
      {
        if (a6 != 6)
        {
          goto LABEL_14;
        }

        v14 = 2u;
      }
    }
  }

  v13 = *(&subsize_lookup_1 + v14 + 18);
LABEL_14:
  v15 = *(result + 15732);
  if (v15 <= a3 || *(result + 15736) <= a4)
  {
    return result;
  }

  v366 = *(result + 15736);
  v16 = (v12 >> 1) + a4;
  __len = mi_size_wide_7[a6];
  v376 = result;
  v377 = a6;
  v367 = (v12 >> 1) + a3;
  if ((a7 & 1) == 0)
  {
    v212 = *(result + 15780);
    v213 = (*(result + 15768) + 8 * (a4 + v212 * a3));
    v214 = **v213;
    if (v214 == a6)
    {
      v211 = 0;
      goto LABEL_180;
    }

    v215 = mi_size_high_6[a6];
    v216 = mi_size_high_6[**v213];
    v217 = mi_size_wide_7[**v213];
    if (a6 < 4 || ((v12 >> 1) + a3) >= v15 || (result = v366, ((v215 >> 1) + a4) >= v366))
    {
      v211 = get_partition_base_partitions_0[(v216 < v215) | (2 * (v217 < v12))];
      if (v211 == 0xFF)
      {
        goto LABEL_269;
      }
    }

    else
    {
      v218 = v213[(v215 >> 1) * v212];
      if (v217 == v12)
      {
        if (v215 == 4 * v216)
        {
          v211 = 8;
        }

        else if (*v218 == v214)
        {
          v211 = 1;
        }

        else
        {
          v211 = 5;
        }
      }

      else
      {
        v249 = v213[v12 >> 1];
        if (v216 == v215)
        {
          if (v12 == 4 * v217)
          {
            v211 = 9;
          }

          else if (*v249 == v214)
          {
            v211 = 2;
          }

          else
          {
            v211 = 7;
          }
        }

        else if (v12 == 2 * v217 && 2 * v216 == v215)
        {
          if (mi_size_wide_7[*v218] == v12)
          {
            v211 = 4;
          }

          else if (mi_size_high_6[*v249] == v215)
          {
            v211 = 6;
          }

          else
          {
            v211 = 3;
          }
        }

        else
        {
          v211 = 3;
        }
      }
    }

    goto LABEL_180;
  }

  v364 = (v12 >> 1) + a4;
  v365 = *(result + 15732);
  v363 = v13;
  v17 = 0;
  v375 = *(*(result + 39880) + 77);
  v374 = result + 38256;
  v370 = a2 + 8176;
  v369 = a2 + 8272;
  v18 = xmmword_273B8E7B0;
  v19 = xmmword_273B8E7C0;
  v20 = xmmword_273B8E7D0;
  v21 = xmmword_273B8E7A0;
  v22.i64[0] = 0x8000800080008;
  v22.i64[1] = 0x8000800080008;
  v23.i64[0] = 0x7F0000007FLL;
  v23.i64[1] = 0x7F0000007FLL;
  do
  {
    v385 = v17;
    v24 = v374 + (v17 << 6);
    if (*v24)
    {
      v25 = *(v376 + 39880);
      if (v25[3].u8[4] == v377)
      {
        if (v17)
        {
          v26 = vtst_s32(v25[12], v25[12]);
        }

        else
        {
          v26 = 0;
        }

        v27 = 4u >> (v26.i8[0] & 1);
        v28 = *(v376 + 15256);
        v29 = *(v376 + 15272);
        if (v28 != v29)
        {
          v27 *= *(v376 + 15280);
        }

        v30 = *(v24 + 4);
        result = *(v24 + 16);
        v31 = 4u >> (v26.i8[4] & 1);
        if (v28 == v29)
        {
          v32 = *(v24 + 4);
        }

        else
        {
          v32 = 8 * v30;
        }

        v33 = v30 - 1;
        v34 = v32 - 1 + v27 * a4;
        v35 = (v32 - 1 + v27 * (mi_size_wide_27[v377] + a4)) / v32;
        v380 = *(v24 + 16);
        if (v35 >= result)
        {
          v35 = *(v24 + 16);
        }

        v36 = (v33 + v31 * (mi_size_high_24[v377] + a3)) / v30;
        if (v36 >= *(v24 + 12))
        {
          v36 = *(v24 + 12);
        }

        v37 = v34 / v32;
        if (v37 < v35)
        {
          v38 = (v33 + v31 * a3) / v30;
          if (v38 < v36)
          {
            v39 = v38;
            v379 = v37;
            v383 = v369 + 12 * v385;
            v40 = v35;
            v378 = v36;
            v41 = (v370 + 32 * v385);
            v382 = v35;
            do
            {
              v381 = v39;
              v386 = v39 * v380;
              v42 = v379;
              do
              {
                v45 = *(v24 + 24) + (v42 << 6) + (v386 << 6);
                v46 = *v24;
                if (*v24 == 1)
                {
                  v98 = *(v10 + 10648);
                  v99 = v98 + 12288;
                  v100 = (v98 + 12714);
                  v101 = *(a5 + 48);
                  v102 = *(a5 + 52);
                  v103 = v102 >> 8;
                  v104 = 8;
                  v105 = 1;
                  do
                  {
                    v106 = v102;
                    v107 = *v100++;
                    v108 = v103 * (v107 >> 6);
                    v104 -= 4;
                    v102 = v104 + (v108 >> 1);
                    --v105;
                  }

                  while (HIWORD(v101) < v102);
                  v109 = v106 - (v108 >> 1) - v104;
                  v110 = 15 - (__clz(v109) ^ 0x1F);
                  v111 = *(a5 + 54) - v110;
                  *(a5 + 54) = v111;
                  v112 = ((v101 - (v102 << 16) + 1) << v110) - 1;
                  *(a5 + 48) = v112;
                  *(a5 + 52) = v109 << v110;
                  if ((v111 & 0x8000) == 0)
                  {
                    if (*(a5 + 56))
                    {
                      goto LABEL_71;
                    }

                    goto LABEL_78;
                  }

                  v129 = v111;
                  v130 = *(a5 + 32);
                  v131 = *(a5 + 40);
                  if (v131 < v130)
                  {
                    v132 = 8 - v129;
                    if ((8 - v129) >= 7)
                    {
                      v133 = 7;
                    }

                    else
                    {
                      v133 = 8 - v129;
                    }

                    v134 = ((v133 ^ 0xFu) - v129) >> 3;
                    if (v134 >= ~v131 + v130)
                    {
                      v134 = ~v131 + v130;
                    }

                    if (v134 >= 0xF)
                    {
                      v172 = v134 + 1;
                      v173 = (v134 + 1) & 0x3FFFFFF0;
                      v174 = 0uLL;
                      v175 = v129;
                      v176 = v112;
                      v177 = vdupq_n_s32(v132);
                      v135 = &v131->u8[v173];
                      v178 = vaddq_s32(v177, xmmword_273BC3230);
                      v132 -= 8 * v173;
                      v179 = vaddq_s32(v177, xmmword_273BC3240);
                      v180 = vaddq_s32(v177, xmmword_273BC3250);
                      v181 = vaddq_s32(v177, xmmword_273BC3220);
                      v182 = v173;
                      v183 = 0uLL;
                      v184 = 0uLL;
                      v185 = 0uLL;
                      do
                      {
                        v186 = *v131++;
                        v184 = veorq_s8(vshlq_u32(vqtbl1q_s8(v186, v18), v179), v184);
                        v183 = veorq_s8(vshlq_u32(vqtbl1q_s8(v186, v19), v180), v183);
                        v176 = veorq_s8(vshlq_u32(vqtbl1q_s8(v186, v20), v181), v176);
                        v185 = veorq_s8(vshlq_u32(vqtbl1q_s8(v186, v21), v178), v185);
                        v175 = vaddq_s16(v175, v22);
                        v174 = vaddq_s16(v174, v22);
                        v181 = vaddq_s32(v181, v23);
                        v180 = vaddq_s32(v180, v23);
                        v179 = vaddq_s32(v179, v23);
                        v178 = vaddq_s32(v178, v23);
                        v182 -= 16;
                      }

                      while (v182);
                      v187 = v131 < v130;
                      LOWORD(v129) = vaddvq_s16(vaddq_s16(v175, v174));
                      v188 = veorq_s8(veorq_s8(v176, v184), veorq_s8(v183, v185));
                      *v188.i8 = veor_s8(*v188.i8, *&vextq_s8(v188, v188, 8uLL));
                      result = HIDWORD(v188.i64[0]);
                      v112 = v188.i32[0] ^ v188.i32[1];
                      if (v172 != v173)
                      {
                        goto LABEL_136;
                      }
                    }

                    else
                    {
                      v135 = *(a5 + 40);
                      do
                      {
LABEL_136:
                        v189 = *v135++;
                        v112 ^= v189 << v132;
                        LOWORD(v129) = v129 + 8;
                        v187 = v135 < v130;
                        v171 = v132 >= 8;
                        v132 -= 8;
                      }

                      while (v171 && v135 < v130);
                    }

                    if (!v187)
                    {
LABEL_140:
                      *(a5 + 24) = *(a5 + 24) - v129 + 0x4000;
                      LOWORD(v129) = 0x4000;
                    }

                    *(a5 + 48) = v112;
                    *(a5 + 54) = v129;
                    *(a5 + 40) = v135;
                    if (*(a5 + 56))
                    {
LABEL_71:
                      v113 = *(v99 + 430);
                      v114 = (v113 >> 4) + 4;
                      v115 = *(v99 + 426);
                      v116 = v115 - (v115 >> v114);
                      v117 = v115 + ((0x8000 - v115) >> v114);
                      if (-v105 >= 1)
                      {
                        v118 = v117;
                      }

                      else
                      {
                        v118 = v116;
                      }

                      *(v99 + 426) = v118;
                      if (v113 >= 0x20)
                      {
                        v119 = v113;
                      }

                      else
                      {
                        v119 = v113 + 1;
                      }

                      *(v99 + 430) = v119;
                    }

LABEL_78:
                    if (!v105)
                    {
                      *v45 = 0;
                      goto LABEL_38;
                    }

                    *v45 = 1;
                    *(v45 + 16) = 0;
                    v120 = (v45 + 16);
                    *(v45 + 32) = 0;
                    *(v45 + 40) = 0;
                    *(v45 + 24) = 0;
                    if (!v385)
                    {
                      goto LABEL_155;
                    }

                    goto LABEL_80;
                  }

                  v135 = *(a5 + 40);
                  goto LABEL_140;
                }

                if (v46 == 2)
                {
                  v68 = *(v10 + 10648);
                  v69 = v68 + 12288;
                  v70 = (v68 + 12720);
                  v71 = *(a5 + 48);
                  v72 = *(a5 + 52);
                  v73 = v72 >> 8;
                  v74 = 8;
                  v75 = 1;
                  do
                  {
                    v76 = v72;
                    v77 = *v70++;
                    v78 = v73 * (v77 >> 6);
                    v74 -= 4;
                    v72 = v74 + (v78 >> 1);
                    --v75;
                  }

                  while (HIWORD(v71) < v72);
                  v79 = v76 - (v78 >> 1) - v74;
                  v80 = 15 - (__clz(v79) ^ 0x1F);
                  v81 = *(a5 + 54) - v80;
                  *(a5 + 54) = v81;
                  v82 = ((v71 - (v72 << 16) + 1) << v80) - 1;
                  *(a5 + 48) = v82;
                  *(a5 + 52) = v79 << v80;
                  if ((v81 & 0x8000) == 0)
                  {
                    if (*(a5 + 56))
                    {
                      goto LABEL_53;
                    }

                    goto LABEL_60;
                  }

                  v122 = v81;
                  v123 = *(a5 + 32);
                  v124 = *(a5 + 40);
                  if (v124 >= v123)
                  {
                    v128 = *(a5 + 40);
                    goto LABEL_130;
                  }

                  v125 = 8 - v122;
                  if ((8 - v122) >= 7)
                  {
                    v126 = 7;
                  }

                  else
                  {
                    v126 = 8 - v122;
                  }

                  v127 = ((v126 ^ 0xFu) - v122) >> 3;
                  if (v127 >= ~v124 + v123)
                  {
                    v127 = ~v124 + v123;
                  }

                  if (v127 >= 0xF)
                  {
                    v153 = v127 + 1;
                    v154 = (v127 + 1) & 0x3FFFFFF0;
                    v155 = 0uLL;
                    v156 = v122;
                    v157 = v82;
                    v158 = vdupq_n_s32(v125);
                    v128 = &v124->u8[v154];
                    v159 = vaddq_s32(v158, xmmword_273BC3230);
                    v125 -= 8 * v154;
                    v160 = vaddq_s32(v158, xmmword_273BC3240);
                    v161 = vaddq_s32(v158, xmmword_273BC3250);
                    v162 = vaddq_s32(v158, xmmword_273BC3220);
                    v163 = v154;
                    v164 = 0uLL;
                    v165 = 0uLL;
                    v166 = 0uLL;
                    do
                    {
                      v167 = *v124++;
                      v165 = veorq_s8(vshlq_u32(vqtbl1q_s8(v167, v18), v160), v165);
                      v164 = veorq_s8(vshlq_u32(vqtbl1q_s8(v167, v19), v161), v164);
                      v157 = veorq_s8(vshlq_u32(vqtbl1q_s8(v167, v20), v162), v157);
                      v166 = veorq_s8(vshlq_u32(vqtbl1q_s8(v167, v21), v159), v166);
                      v156 = vaddq_s16(v156, v22);
                      v155 = vaddq_s16(v155, v22);
                      v162 = vaddq_s32(v162, v23);
                      v161 = vaddq_s32(v161, v23);
                      v160 = vaddq_s32(v160, v23);
                      v159 = vaddq_s32(v159, v23);
                      v163 -= 16;
                    }

                    while (v163);
                    v168 = v124 < v123;
                    LOWORD(v122) = vaddvq_s16(vaddq_s16(v156, v155));
                    v169 = veorq_s8(veorq_s8(v157, v165), veorq_s8(v164, v166));
                    *v169.i8 = veor_s8(*v169.i8, *&vextq_s8(v169, v169, 8uLL));
                    result = HIDWORD(v169.i64[0]);
                    v82 = v169.i32[0] ^ v169.i32[1];
                    if (v153 != v154)
                    {
                      goto LABEL_126;
                    }
                  }

                  else
                  {
                    v128 = *(a5 + 40);
                    do
                    {
LABEL_126:
                      v170 = *v128++;
                      v82 ^= v170 << v125;
                      LOWORD(v122) = v122 + 8;
                      v168 = v128 < v123;
                      v171 = v125 >= 8;
                      v125 -= 8;
                    }

                    while (v171 && v128 < v123);
                  }

                  if (!v168)
                  {
LABEL_130:
                    *(a5 + 24) = *(a5 + 24) - v122 + 0x4000;
                    LOWORD(v122) = 0x4000;
                  }

                  *(a5 + 48) = v82;
                  *(a5 + 54) = v122;
                  *(a5 + 40) = v128;
                  if (*(a5 + 56))
                  {
LABEL_53:
                    v83 = *(v69 + 436);
                    v84 = (v83 >> 4) + 4;
                    v85 = *(v69 + 432);
                    v86 = v85 - (v85 >> v84);
                    v87 = v85 + ((0x8000 - v85) >> v84);
                    if (-v75 >= 1)
                    {
                      v88 = v87;
                    }

                    else
                    {
                      v88 = v86;
                    }

                    *(v69 + 432) = v88;
                    if (v83 >= 0x20)
                    {
                      v89 = v83;
                    }

                    else
                    {
                      v89 = v83 + 1;
                    }

                    *(v69 + 436) = v89;
                  }

LABEL_60:
                  if (!v75)
                  {
                    *v45 = 0;
                    v10 = a2;
                    goto LABEL_38;
                  }

                  *v45 = 2;
                  v90 = od_ec_decode_BOOL_q15(a5 + 16, 0x4000u);
                  v91 = (4 * od_ec_decode_BOOL_q15(a5 + 16, 0x4000u)) | (8 * v90);
                  v92 = v91 | (2 * od_ec_decode_BOOL_q15(a5 + 16, 0x4000u));
                  v93 = od_ec_decode_BOOL_q15(a5 + 16, 0x4000u);
                  *(v45 + 48) = v92 | v93;
                  v94 = (&av1_sgr_params + 16 * (v92 | v93));
                  if (*v94)
                  {
                    v95 = v94[1];
                    v96 = v369 + 12 * v385;
                    result = aom_read_primitive_refsubexpfin_(a5, 128, 4, (*(v383 + 4) + 96));
                    *(v45 + 52) = result - 96;
                    if (!v95)
                    {
                      v97 = 224 - result;
                      if (224 - result >= 95)
                      {
                        v97 = 95;
                      }

                      if (v97 <= -32)
                      {
                        v97 = -32;
                      }

                      goto LABEL_109;
                    }
                  }

                  else
                  {
                    *(v45 + 52) = 0;
                    v96 = v369 + 12 * v385;
                  }

                  result = aom_read_primitive_refsubexpfin_(a5, 128, 4, (*(v96 + 8) + 32));
                  v97 = result - 32;
LABEL_109:
                  v19 = xmmword_273B8E7C0;
                  v18 = xmmword_273B8E7B0;
                  v21 = xmmword_273B8E7A0;
                  v20 = xmmword_273B8E7D0;
                  v22.i64[0] = 0x8000800080008;
                  v22.i64[1] = 0x8000800080008;
                  v23.i64[0] = 0x7F0000007FLL;
                  v23.i64[1] = 0x7F0000007FLL;
                  *(v45 + 56) = v97;
                  v143 = *(v45 + 48);
                  *(v96 + 8) = *(v45 + 56);
                  *v96 = v143;
                  v10 = a2;
                  v40 = v382;
                  goto LABEL_38;
                }

                if (v46 != 3)
                {
                  goto LABEL_38;
                }

                v47 = *(v10 + 10648);
                v48 = (v47 + 12288);
                v49 = (v47 + 12706);
                v50 = *(a5 + 48);
                v51 = *(a5 + 52);
                v52 = v51 >> 8;
                v53 = 12;
                v54 = 0x200000000000000;
                v55 = 0xFF00000000000000;
                v56 = -1;
                do
                {
                  result = v51;
                  v57 = *v49++;
                  v58 = v52 * (v57 >> 6);
                  v53 -= 4;
                  v51 = v53 + (v58 >> 1);
                  v54 -= 0x100000000000000;
                  v55 += 0x100000000000000;
                  ++v56;
                }

                while (HIWORD(v50) < v51);
                v59 = result - (v58 >> 1) - v53;
                v60 = 15 - (__clz(v59) ^ 0x1F);
                v61 = *(a5 + 54) - v60;
                *(a5 + 54) = v61;
                v62 = ((v50 - (v51 << 16) + 1) << v60) - 1;
                *(a5 + 48) = v62;
                *(a5 + 52) = v59 << v60;
                if ((v61 & 0x8000) == 0)
                {
                  if (!*(a5 + 56))
                  {
                    goto LABEL_152;
                  }

                  goto LABEL_46;
                }

                v136 = v61;
                v137 = *(a5 + 32);
                v138 = *(a5 + 40);
                if (v138 < v137)
                {
                  v139 = 8 - v136;
                  if ((8 - v136) >= 7)
                  {
                    v140 = 7;
                  }

                  else
                  {
                    v140 = 8 - v136;
                  }

                  v141 = ((v140 ^ 0xFu) - v136) >> 3;
                  if (v141 >= ~v138 + v137)
                  {
                    v141 = ~v138 + v137;
                  }

                  if (v141 >= 0xF)
                  {
                    v190 = v141 + 1;
                    result = (v141 + 1) & 0x3FFFFFF0;
                    v191 = 0uLL;
                    v192 = v136;
                    v193 = v62;
                    v194 = vdupq_n_s32(v139);
                    v142 = &v138->u8[result];
                    v195 = vaddq_s32(v194, xmmword_273BC3230);
                    v139 -= 8 * result;
                    v196 = vaddq_s32(v194, xmmword_273BC3240);
                    v197 = vaddq_s32(v194, xmmword_273BC3250);
                    v198 = vaddq_s32(v194, xmmword_273BC3220);
                    v199 = result;
                    v200 = 0uLL;
                    v201 = 0uLL;
                    v202 = 0uLL;
                    do
                    {
                      v203 = *v138++;
                      v201 = veorq_s8(vshlq_u32(vqtbl1q_s8(v203, v18), v196), v201);
                      v200 = veorq_s8(vshlq_u32(vqtbl1q_s8(v203, v19), v197), v200);
                      v193 = veorq_s8(vshlq_u32(vqtbl1q_s8(v203, v20), v198), v193);
                      v202 = veorq_s8(vshlq_u32(vqtbl1q_s8(v203, v21), v195), v202);
                      v192 = vaddq_s16(v192, v22);
                      v191 = vaddq_s16(v191, v22);
                      v198 = vaddq_s32(v198, v23);
                      v197 = vaddq_s32(v197, v23);
                      v196 = vaddq_s32(v196, v23);
                      v195 = vaddq_s32(v195, v23);
                      v199 -= 16;
                    }

                    while (v199);
                    v204 = v138 < v137;
                    LOWORD(v136) = vaddvq_s16(vaddq_s16(v192, v191));
                    v205 = veorq_s8(veorq_s8(v193, v201), veorq_s8(v200, v202));
                    *v205.i8 = veor_s8(*v205.i8, *&vextq_s8(v205, v205, 8uLL));
                    v62 = v205.i32[0] ^ v205.i32[1];
                    if (v190 != result)
                    {
                      goto LABEL_146;
                    }
                  }

                  else
                  {
                    v142 = *(a5 + 40);
                    do
                    {
LABEL_146:
                      v206 = *v142++;
                      v62 ^= v206 << v139;
                      LOWORD(v136) = v136 + 8;
                      v204 = v142 < v137;
                      v171 = v139 >= 8;
                      v139 -= 8;
                    }

                    while (v171 && v142 < v137);
                  }

                  if (v204)
                  {
                    goto LABEL_151;
                  }

                  goto LABEL_150;
                }

                v142 = *(a5 + 40);
LABEL_150:
                *(a5 + 24) = *(a5 + 24) - v136 + 0x4000;
                LOWORD(v136) = 0x4000;
LABEL_151:
                *(a5 + 48) = v62;
                *(a5 + 54) = v136;
                *(a5 + 40) = v142;
                if (!*(a5 + 56))
                {
LABEL_152:
                  *v45 = v56;
                  if (v56 == 2)
                  {
                    goto LABEL_116;
                  }

                  goto LABEL_153;
                }

LABEL_46:
                v63 = v48[212];
                v64 = (v63 >> 4) + 4;
                v65 = v48[209];
                if (v55 <= 0)
                {
                  v48[209] = v65 - (v65 >> v64);
                  v66 = v48[210];
                }

                else
                {
                  v48[209] = v65 + ((0x8000 - v65) >> v64);
                  v66 = v48[210];
                  if (v54)
                  {
                    v67 = v66 + ((0x8000 - v66) >> v64);
                    goto LABEL_112;
                  }
                }

                v67 = v66 - (v66 >> v64);
LABEL_112:
                v48[210] = v67;
                if (v63 >= 0x20)
                {
                  v144 = v63;
                }

                else
                {
                  v144 = v63 + 1;
                }

                v48[212] = v144;
                *v45 = v56;
                if (v56 == 2)
                {
LABEL_116:
                  v145 = od_ec_decode_BOOL_q15(a5 + 16, 0x4000u);
                  v146 = (4 * od_ec_decode_BOOL_q15(a5 + 16, 0x4000u)) | (8 * v145);
                  v147 = v146 | (2 * od_ec_decode_BOOL_q15(a5 + 16, 0x4000u));
                  v148 = od_ec_decode_BOOL_q15(a5 + 16, 0x4000u);
                  *(v45 + 48) = v147 | v148;
                  v149 = (&av1_sgr_params + 16 * (v147 | v148));
                  if (*v149)
                  {
                    v150 = v149[1];
                    v151 = v369 + 12 * v385;
                    result = aom_read_primitive_refsubexpfin_(a5, 128, 4, (*(v383 + 4) + 96));
                    *(v45 + 52) = result - 96;
                    if (v150)
                    {
                      result = aom_read_primitive_refsubexpfin_(a5, 128, 4, (*(v383 + 8) + 32));
                      v152 = result - 32;
                    }

                    else
                    {
                      v152 = 224 - result;
                      if (224 - result >= 95)
                      {
                        v152 = 95;
                      }

                      if (v152 <= -32)
                      {
                        v152 = -32;
                      }
                    }

                    v10 = a2;
                  }

                  else
                  {
                    *(v45 + 52) = 0;
                    v151 = v369 + 12 * v385;
                    result = aom_read_primitive_refsubexpfin_(a5, 128, 4, (*(v383 + 8) + 32));
                    v152 = result - 32;
                  }

                  v19 = xmmword_273B8E7C0;
                  v18 = xmmword_273B8E7B0;
                  v21 = xmmword_273B8E7A0;
                  v20 = xmmword_273B8E7D0;
                  v22.i64[0] = 0x8000800080008;
                  v22.i64[1] = 0x8000800080008;
                  v23.i64[0] = 0x7F0000007FLL;
                  v23.i64[1] = 0x7F0000007FLL;
                  *(v45 + 56) = v152;
                  v210 = *(v45 + 48);
                  *(v151 + 8) = *(v45 + 56);
                  *v151 = v210;
                  v40 = v382;
                  goto LABEL_38;
                }

LABEL_153:
                if (v56 != 1)
                {
                  goto LABEL_38;
                }

                *(v45 + 16) = 0;
                v120 = (v45 + 16);
                *(v45 + 32) = 0;
                *(v45 + 40) = 0;
                *(v45 + 24) = 0;
                if (!v385)
                {
LABEL_155:
                  v121 = aom_read_primitive_refsubexpfin_(a5, 16, 1, (*v41 + 5)) - 5;
                  goto LABEL_156;
                }

LABEL_80:
                v121 = 0;
LABEL_156:
                *(v45 + 28) = v121;
                *(v45 + 16) = v121;
                primitive_refsubexpfin = aom_read_primitive_refsubexpfin_(a5, 32, 2, (v41[1] + 23));
                *(v45 + 26) = primitive_refsubexpfin - 23;
                *(v45 + 18) = primitive_refsubexpfin - 23;
                v208 = aom_read_primitive_refsubexpfin_(a5, 64, 3, (v41[2] + 17));
                v209 = 0;
                *(v45 + 24) = v208 - 17;
                *(v45 + 20) = v208 - 17;
                *(v45 + 22) = -2 * (*(v45 + 16) + *(v45 + 18) + v208 - 17);
                if (!v385)
                {
                  v209 = aom_read_primitive_refsubexpfin_(a5, 16, 1, (v41[8] + 5)) - 5;
                }

                *(v45 + 44) = v209;
                *(v45 + 32) = v209;
                v43 = aom_read_primitive_refsubexpfin_(a5, 32, 2, (v41[9] + 23));
                *(v45 + 42) = v43 - 23;
                *(v45 + 34) = v43 - 23;
                result = aom_read_primitive_refsubexpfin_(a5, 64, 3, (v41[10] + 17));
                *(v45 + 40) = result - 17;
                *(v45 + 36) = result - 17;
                *(v45 + 38) = -2 * (*(v45 + 32) + *(v45 + 34) + result - 17);
                v44 = v120[1];
                *v41 = *v120;
                *(v41 + 1) = v44;
                v19 = xmmword_273B8E7C0;
                v18 = xmmword_273B8E7B0;
                v21 = xmmword_273B8E7A0;
                v20 = xmmword_273B8E7D0;
                v22.i64[0] = 0x8000800080008;
                v22.i64[1] = 0x8000800080008;
                v23.i64[0] = 0x7F0000007FLL;
                v23.i64[1] = 0x7F0000007FLL;
LABEL_38:
                ++v42;
              }

              while (v42 != v40);
              v39 = v381 + 1;
            }

            while (v381 + 1 != v378);
          }
        }
      }
    }

    if (v375)
    {
      break;
    }

    v17 = v385 + 1;
  }

  while (v385 < 2);
  v11 = v377;
  if (v377 < 3)
  {
    v211 = 0;
    v8 = a4;
    v9 = a3;
    v13 = v363;
    v16 = v364;
    v15 = v365;
    goto LABEL_180;
  }

  v16 = v364;
  v15 = v365;
  v8 = a4;
  v9 = a3;
  if (v367 >= v365 && v364 >= v366)
  {
    v211 = 3;
    v13 = v363;
    goto LABEL_180;
  }

  v220 = mi_size_wide_log2_1[v377];
  v221 = (*(*(v10 + 8088) + a4) >> (v220 - 1)) & 1;
  v222 = *(v10 + (a3 & 0x1F) + 8096) >> (v220 - 1);
  v223 = *(v10 + 10648);
  v224 = (v223 + 22 * (v221 | (2 * (v222 & 1)) | (4 * (v220 - 1))) + 13618);
  if (v367 >= v365 || v364 >= v366)
  {
    v13 = v363;
    if (v364 >= v366 || v367 < v365)
    {
      v248 = ((v224[1] - *v224) ^ 0x8000) - v224[2] + v224[6];
      if (v377 != 15)
      {
        v248 = v248 - *(v223 + 22 * ((*(*(v10 + 8088) + a4) >> (v220 - 1)) & 1 | (2 * (v222 & 1)) | (4 * (v220 - 1))) + 13632) + *(v223 + 22 * ((*(*(v10 + 8088) + a4) >> (v220 - 1)) & 1 | (2 * (v222 & 1)) | (4 * (v220 - 1))) + 13634);
      }

      v388[0] = 0x8000 - v248;
      v388[1] = 0;
      result = od_ec_decode_cdf_q15(a5 + 16, v388, 2);
      if (result)
      {
        v211 = 3;
      }

      else
      {
        v211 = 2;
      }

      v15 = v365;
    }

    else
    {
      v247 = v224[4] - v224[1] - v224[5] + v224[7] + 0x8000;
      if (v377 != 15)
      {
        v247 = v247 - v224[8] + v224[9];
      }

      v389[0] = 0x8000 - v247;
      v389[1] = 0;
      result = od_ec_decode_cdf_q15(a5 + 16, v389, 2);
      if (result)
      {
        v211 = 3;
      }

      else
      {
        v211 = 1;
      }
    }
  }

  else
  {
    v225 = 2 * (v222 & 1);
    if (v377 == 15)
    {
      v226 = 8;
    }

    else
    {
      v226 = 10;
    }

    if (v377 == 3)
    {
      v226 = 4;
    }

    v227 = *(a5 + 48);
    v228 = *(a5 + 52);
    v229 = v228 >> 8;
    v230 = 4 * v226;
    v231 = v225 | (4 * v220);
    v232 = (v223 + 22 * (v231 + v221 - 4) + 13618);
    v233 = -1;
    v234 = 0xFF00000000000000;
    v13 = v363;
    do
    {
      v235 = v228;
      ++v233;
      v236 = *v232++;
      v237 = v229 * (v236 >> 6);
      v230 -= 4;
      v228 = v230 + (v237 >> 1);
      v234 += 0x100000000000000;
    }

    while (HIWORD(v227) < v228);
    result = v235 - (v237 >> 1) - v230;
    v238 = 15 - (__clz(result) ^ 0x1F);
    v239 = *(a5 + 54) - v238;
    *(a5 + 54) = v239;
    v240 = ((v227 - (v228 << 16) + 1) << v238) - 1;
    *(a5 + 48) = v240;
    *(a5 + 52) = result << v238;
    if (v239 < 0)
    {
      v241 = v239;
      v242 = *(a5 + 32);
      result = *(a5 + 40);
      if (result >= v242)
      {
        v246 = *(a5 + 40);
        goto LABEL_254;
      }

      v243 = 8 - v241;
      if ((8 - v241) >= 7)
      {
        v244 = 7;
      }

      else
      {
        v244 = 8 - v241;
      }

      v245 = ((v244 ^ 0xFu) - v241) >> 3;
      if (v245 >= ~result + v242)
      {
        v245 = ~result + v242;
      }

      if (v245 >= 0xF)
      {
        v251 = v245 + 1;
        v252 = (v245 + 1) & 0x3FFFFFF0;
        v253 = v241;
        v254 = 0uLL;
        v255 = v240;
        v256 = vdupq_n_s32(v243);
        v246 = (result + v252);
        v257 = vaddq_s32(v256, xmmword_273BC3230);
        v243 -= 8 * v252;
        v258 = vaddq_s32(v256, xmmword_273BC3240);
        v259 = vaddq_s32(v256, xmmword_273BC3250);
        v260 = vaddq_s32(v256, xmmword_273BC3220);
        v261.i64[0] = 0x8000800080008;
        v261.i64[1] = 0x8000800080008;
        v262.i64[0] = 0x7F0000007FLL;
        v262.i64[1] = 0x7F0000007FLL;
        v263 = v252;
        v264 = 0uLL;
        v265 = 0uLL;
        v266 = 0uLL;
        do
        {
          v267 = *result;
          result += 16;
          v265 = veorq_s8(vshlq_u32(vqtbl1q_s8(v267, v18), v258), v265);
          v264 = veorq_s8(vshlq_u32(vqtbl1q_s8(v267, v19), v259), v264);
          v255 = veorq_s8(vshlq_u32(vqtbl1q_s8(v267, v20), v260), v255);
          v266 = veorq_s8(vshlq_u32(vqtbl1q_s8(v267, v21), v257), v266);
          v253 = vaddq_s16(v253, v261);
          v254 = vaddq_s16(v254, v261);
          v260 = vaddq_s32(v260, v262);
          v259 = vaddq_s32(v259, v262);
          v258 = vaddq_s32(v258, v262);
          v257 = vaddq_s32(v257, v262);
          v263 -= 16;
        }

        while (v263);
        result = result < v242;
        LOWORD(v241) = vaddvq_s16(vaddq_s16(v253, v254));
        v268 = veorq_s8(veorq_s8(v255, v265), veorq_s8(v264, v266));
        *v268.i8 = veor_s8(*v268.i8, *&vextq_s8(v268, v268, 8uLL));
        v240 = v268.i32[0] ^ v268.i32[1];
        if (v251 != v252)
        {
          goto LABEL_250;
        }
      }

      else
      {
        v246 = *(a5 + 40);
        do
        {
LABEL_250:
          v269 = *v246++;
          v240 ^= v269 << v243;
          LOWORD(v241) = v241 + 8;
          result = v246 < v242;
          v171 = v243 >= 8;
          v243 -= 8;
        }

        while (v171 && v246 < v242);
      }

      if ((result & 1) == 0)
      {
LABEL_254:
        *(a5 + 24) = *(a5 + 24) - v241 + 0x4000;
        LOWORD(v241) = 0x4000;
      }

      *(a5 + 48) = v240;
      *(a5 + 54) = v241;
      *(a5 + 40) = v246;
    }

    if (*(a5 + 56))
    {
      v270 = 0;
      v271 = v224[v226];
      v272 = (v271 >> 4) + 5;
      v273 = v226 - 1;
      v274 = v234 >> 56;
      if (v377 != 3 && v377 != 15)
      {
        v270 = v273 & 0xFFFFFFF8;
        v275 = vdupq_n_s64(v274);
        v276 = (v223 + 22 * (v231 + v221 - 4) + 13618);
        v277 = xmmword_273BB9B30;
        v278 = xmmword_273BB9B40;
        v279 = xmmword_273B92120;
        v280 = xmmword_273B92130;
        v281 = vnegq_s32(vdupq_n_s32(v272));
        v282.i64[0] = 0x800000008000;
        v282.i64[1] = 0x800000008000;
        v283 = vdupq_n_s64(8uLL);
        v284 = v270;
        do
        {
          *v276 = vaddq_s16(*v276, vbslq_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_s64(v275, v280), vcgtq_s64(v275, v279)), vuzp1q_s32(vcgtq_s64(v275, v278), vcgtq_s64(v275, v277))), vuzp1q_s16(vshlq_s32(vsubw_u16(v282, *v276->i8), v281), vshlq_s32(vsubw_high_u16(v282, *v276), v281)), vnegq_s16(vuzp1q_s16(vshlq_u32(vmovl_u16(*v276->i8), v281), vshlq_u32(vmovl_high_u16(*v276), v281)))));
          ++v276;
          v278 = vaddq_s64(v278, v283);
          v279 = vaddq_s64(v279, v283);
          v280 = vaddq_s64(v280, v283);
          v277 = vaddq_s64(v277, v283);
          v284 -= 8;
        }

        while (v284);
      }

      v285 = v223 + 22 * (v231 + v221 - 4) + 13618;
      do
      {
        v286 = *(v285 + 2 * v270);
        result = v286 - (v286 >> v272);
        v287 = v286 + ((0x8000 - v286) >> v272);
        if (v270 >= v274)
        {
          LOWORD(v287) = result;
        }

        *(v285 + 2 * v270++) = v287;
      }

      while (v273 != v270);
      v288 = v224[v226];
      if (v271 < 0x20)
      {
        ++v288;
      }

      v224[v226] = v288;
    }

    v211 = v233;
    v15 = v365;
    if (v211 == 0xFF)
    {
LABEL_269:
      v211 = -1;
      goto LABEL_270;
    }
  }

LABEL_180:
  if (v11 > 8)
  {
    if (v11 == 9)
    {
      v219 = *(&subsize_lookup_1 + 6 * v211 + 3);
      if (v219 == 255)
      {
        goto LABEL_270;
      }
    }

    else if (v11 == 12)
    {
      v219 = *(&subsize_lookup_1 + 6 * v211 + 4);
      if (v219 == 255)
      {
        goto LABEL_270;
      }
    }

    else if (v11 != 15 || (v219 = *(&subsize_lookup_1 + 6 * v211 + 5), v219 == 255))
    {
LABEL_270:
      *v10 = v9;
      v361 = block_size_wide_8[v11];
      v362 = block_size_high_7[v11];
      v289 = v211;
      result = aom_internal_error(*(v10 + 10736), 7, "Partition is invalid for block size %dx%d", v361, v362);
      v211 = v289;
      v219 = 0xFFu;
    }
  }

  else if (v11)
  {
    if (v11 == 3)
    {
      v219 = *(&subsize_lookup_1 + 6 * v211 + 1);
      if (v219 == 255)
      {
        goto LABEL_270;
      }
    }

    else
    {
      if (v11 != 6)
      {
        goto LABEL_270;
      }

      v219 = *(&subsize_lookup_1 + 6 * v211 + 2);
      if (v219 == 255)
      {
        goto LABEL_270;
      }
    }
  }

  else
  {
    v219 = *(&subsize_lookup_1 + 6 * v211 + v11);
    if (v219 == 255)
    {
      goto LABEL_270;
    }
  }

  v290 = v219;
  if (av1_ss_size_lookup[4 * v219 + 2 * *(v10 + 2628) + *(v10 + 2632)] != 255)
  {
    v291 = v211;
    v387 = v211;
    if (v211 <= 4u)
    {
      goto LABEL_273;
    }

LABEL_279:
    if (v291 > 6)
    {
      if (v291 != 7)
      {
        v300 = v12 >> 2;
        if (v291 == 8)
        {
          v301 = decode_partition_block_visit[a7];
          result = v301(v376, v10, v9, v8, a5, 8, v290);
          if ((v300 + v9) < *(v376 + 15732))
          {
            result = (v301)(v376, v10);
            if ((v9 + 2 * v300) < *(v376 + 15732))
            {
              result = (v301)(v376, v10);
              v305 = 3 * v300 + v9;
              if (v305 < *(v376 + 15732))
              {
                v303 = v376;
                v304 = v10;
                v302 = v8;
                v306 = a5;
                v307 = 8;
LABEL_305:
                result = v301(v303, v304, v305, v302, v306, v307, v290);
              }
            }
          }
        }

        else if (v291 == 9)
        {
          v301 = decode_partition_block_visit[a7];
          result = v301(v376, v10, v9, v8, a5, 9, v290);
          if ((v300 + v8) < *(v376 + 15736))
          {
            result = (v301)(v376, v10, v9);
            if ((v8 + 2 * v300) < *(v376 + 15736))
            {
              result = (v301)(v376, v10, v9);
              v302 = 3 * v300 + v8;
              if (v302 < *(v376 + 15736))
              {
                v303 = v376;
                v304 = v10;
                v305 = v9;
                v306 = a5;
                v307 = 9;
                goto LABEL_305;
              }
            }
          }
        }

        goto LABEL_306;
      }

      v308 = decode_partition_block_visit[a7];
      v308(v376, v10, v9, v8, a5, 7, v290);
      v308(v376, v10, v9, v16, a5, 7, v13);
      v309 = v376;
      v310 = v10;
      v311 = v367;
      v312 = v16;
      v313 = a5;
      v314 = 7;
LABEL_299:
      result = v308(v309, v310, v311, v312, v313, v314, v13);
      goto LABEL_306;
    }

    if (v291 == 5)
    {
      v308 = decode_partition_block_visit[a7];
      v308(v376, v10, v9, v8, a5, 5, v290);
      v308(v376, v10, v367, v8, a5, 5, v13);
      v309 = v376;
      v310 = v10;
      v311 = v367;
      v312 = v16;
      v313 = a5;
      v314 = 5;
      goto LABEL_299;
    }

    if (v291 != 6)
    {
      goto LABEL_306;
    }

    v292 = decode_partition_block_visit[a7];
    v292(v376, v10, v9, v8, a5, 6, v13);
    v292(v376, v10, v367, v8, a5, 6, v13);
    v293 = v376;
    v294 = v10;
    v295 = v9;
    v296 = v16;
    v297 = a5;
    v298 = 6;
LABEL_297:
    result = v292(v293, v294, v295, v296, v297, v298, v290);
    goto LABEL_306;
  }

  *v10 = v9;
  v299 = v211;
  result = aom_internal_error(*(v10 + 10736), 7, "Block size %dx%d invalid with this subsampling mode", block_size_wide_8[v219], block_size_high_7[v219]);
  v291 = v299;
  v387 = v299;
  if (v299 > 4u)
  {
    goto LABEL_279;
  }

LABEL_273:
  if (v291 <= 1)
  {
    if (!v291)
    {
      result = decode_partition_block_visit[a7](v376, v10, v9, v8, a5, 0, v290);
      goto LABEL_306;
    }

    v292 = decode_partition_block_visit[a7];
    result = v292(v376, v10, v9, v8, a5, 1, v290);
    if (v367 < v15)
    {
      v293 = v376;
      v294 = v10;
      v295 = v367;
      v296 = v8;
      v297 = a5;
      v298 = 1;
      goto LABEL_297;
    }
  }

  else
  {
    switch(v291)
    {
      case 2:
        v292 = decode_partition_block_visit[a7];
        result = v292(v376, v10, v9, v8, a5, 2, v290);
        if (v16 >= v366)
        {
          break;
        }

        v293 = v376;
        v294 = v10;
        v295 = v9;
        v296 = v16;
        v297 = a5;
        v298 = 2;
        goto LABEL_297;
      case 3:
        decode_partition_0(v376, v10, v9, v8, a5, v290, a7);
        decode_partition_0(v376, v10, v9, v16, a5, v290, a7);
        decode_partition_0(v376, v10, v367, v8, a5, v290, a7);
        result = decode_partition_0(v376, v10, v367, v16, a5, v290, a7);
        break;
      case 4:
        v292 = decode_partition_block_visit[a7];
        v292(v376, v10, v9, v8, a5, 4, v13);
        v292(v376, v10, v9, v16, a5, 4, v13);
        v293 = v376;
        v294 = v10;
        v295 = v367;
        v296 = v8;
        v297 = a5;
        v298 = 4;
        goto LABEL_297;
    }
  }

LABEL_306:
  if (v377 < 3 || (a7 & 1) == 0)
  {
    return result;
  }

  v315 = 255;
  if (v377 <= 8)
  {
    v316 = v387;
    if (v377 == 3)
    {
      v317 = 1u;
    }

    else
    {
      if (v377 != 6)
      {
        goto LABEL_320;
      }

      v317 = 2u;
    }

    goto LABEL_319;
  }

  v316 = v387;
  switch(v377)
  {
    case 9:
      v317 = 3u;
LABEL_319:
      v315 = *(&subsize_lookup_1 + v317 + 18);
      break;
    case 0xC:
      v317 = 4u;
      goto LABEL_319;
    case 0xF:
      v317 = 5u;
      goto LABEL_319;
  }

LABEL_320:
  v318 = __len >> 1;
  if (v316 > 4u)
  {
    if (v316 <= 7u)
    {
      if (v316 == 5)
      {
        v347 = *(v10 + 8088);
        v348 = v8;
        v349 = v10 + 8096;
        v350 = v10;
        v351 = v9 & 0x1F;
        v352 = mi_size_wide_7[v290];
        v353 = v9;
        v354 = mi_size_high_6[v290];
        v355 = &partition_context_lookup_1 + 2 * v290;
        memset((v347 + v348), *v355, v352);
        memset((v349 + v351), v355[1], v354);
        v356 = &partition_context_lookup_1 + 2 * v315;
        memset((*(v350 + 8088) + v348), *v356, v352);
        v330 = v356[1];
        v331 = (v349 + ((v318 + v353) & 0x1F));
        v332 = v354;
      }

      else
      {
        if (v316 == 6)
        {
          v357 = *(v10 + 8088);
          v358 = v8;
          v335 = v9 & 0x1F;
          v359 = v10;
          v337 = v10 + 8096;
          v338 = mi_size_wide_7[v290];
          v339 = mi_size_high_6[v290];
          v360 = &partition_context_lookup_1 + 2 * v315;
          memset((v357 + v358), *v360, v338);
          memset((v337 + v335), v360[1], v339);
          v341 = v358 + v318;
          v342 = *(v359 + 8088);
          v343 = &partition_context_lookup_1 + 2 * v290;
        }

        else
        {
          if (v316 != 7)
          {
            return result;
          }

          v333 = *(v10 + 8088);
          v334 = v8;
          v335 = v9 & 0x1F;
          v336 = v10;
          v337 = v10 + 8096;
          v338 = mi_size_wide_7[v290];
          v339 = mi_size_high_6[v290];
          v340 = &partition_context_lookup_1 + 2 * v290;
          memset((v333 + v334), *v340, v338);
          memset((v337 + v335), v340[1], v339);
          v341 = v334 + v318;
          v342 = *(v336 + 8088);
          v343 = &partition_context_lookup_1 + 2 * v315;
        }

        memset((v342 + v341), *v343, v338);
        v330 = v343[1];
        v331 = (v337 + v335);
        v332 = v339;
      }

      goto LABEL_335;
    }

    if (v316 - 8 >= 2)
    {
      return result;
    }

LABEL_331:
    v344 = v9 & 0x1F;
    v345 = mi_size_high_6[v377];
    v346 = &partition_context_lookup_1 + 2 * v290;
    memset((*(v10 + 8088) + v8), *v346, __len);
    v330 = v346[1];
    v331 = (v10 + 8096 + v344);
    v332 = v345;
LABEL_335:

    return memset(v331, v330, v332);
  }

  if (v316 < 3u)
  {
    goto LABEL_331;
  }

  if (v316 == 3)
  {
    if (v377 != 3)
    {
      return result;
    }

    goto LABEL_331;
  }

  if (v316 == 4)
  {
    v319 = *(v10 + 8088);
    v320 = v8;
    v321 = v10 + 8096;
    v322 = v10;
    v323 = v9 & 0x1F;
    v324 = mi_size_wide_7[v290];
    v325 = v9;
    v326 = mi_size_high_6[v290];
    v327 = &partition_context_lookup_1 + 2 * v315;
    memset((v319 + v320), *v327, v324);
    memset((v321 + v323), v327[1], v326);
    v328 = (v318 + v325) & 0x1F;
    v329 = &partition_context_lookup_1 + 2 * v290;
    memset((*(v322 + 8088) + v320), *v329, v324);
    v330 = v329[1];
    v331 = (v321 + v328);
    v332 = v326;
    goto LABEL_335;
  }

  return result;
}

uint64_t parse_decode_block(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, char a6, unsigned int a7)
{
  v440 = a1 + 39568;
  v10 = mi_size_wide_7[a7];
  v430 = *(a1 + 39880);
  v431 = a7;
  v11 = *(a1 + 15736) - a4;
  if (v11 >= v10)
  {
    v12 = mi_size_wide_7[a7];
  }

  else
  {
    v12 = v11;
  }

  v441 = mi_size_high_6[a7];
  if (*(a1 + 15732) - a3 >= v441)
  {
    v13 = mi_size_high_6[a7];
  }

  else
  {
    v13 = *(a1 + 15732) - a3;
  }

  v14 = *(*(a1 + 39880) + 77);
  v15 = *(a1 + 15780);
  v436 = (a1 + 15704);
  v16 = mi_size_wide_7[*(a1 + 15760)];
  v17 = (*(a1 + 15744) + 176 * (a4 / v16 + a3 / v16 * *(a1 + 15756)));
  v18 = *(a1 + 15768);
  v19 = a4 + v15 * a3;
  *(v18 + 8 * v19) = v17;
  *(a2 + 7864) = v18 + 8 * v19;
  *(a2 + 7912) = *(a1 + 15784) + v19;
  if (v14)
  {
    v20 = 1;
  }

  else
  {
    v20 = 3;
  }

  v433 = v20;
  *(a2 + 7920) = v15;
  *v17 = a7;
  if (v12 >= 2)
  {
    if (v12 <= 4)
    {
      v21 = 1;
LABEL_16:
      v26 = v12 - v21;
      v27 = (v18 + 8 * v21 + 8 * v19);
      do
      {
        *v27++ = v17;
        --v26;
      }

      while (v26);
      goto LABEL_18;
    }

    v22 = (v12 - 1) & 0xFFFFFFFFFFFFFFFCLL;
    v21 = v22 | 1;
    v23 = vdupq_n_s64(v17);
    v24 = (v18 + 8 * v19 + 24);
    v25 = v22;
    do
    {
      v24[-1] = v23;
      *v24 = v23;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    if (v12 - 1 != v22)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  v438 = v13;
  v28 = (a2 + 5400);
  if (v13 >= 2)
  {
    v29 = v13 - 1;
    do
    {
      memcpy((*(a2 + 7864) + 8 * v15), *(a2 + 7864), 8 * v12);
      v15 += *(a1 + 15780);
      --v29;
    }

    while (v29);
  }

  v30 = 4 * v10;
  v31 = 4 * v441;
  v32 = ((4 * v10) >> *(a2 + 20));
  v33 = ((4 * v441) >> *(a2 + 24));
  if (v32 <= 4)
  {
    LOBYTE(v32) = 4;
  }

  *(a2 + 184) = v32;
  if (v33 <= 4)
  {
    LOBYTE(v33) = 4;
  }

  *(a2 + 185) = v33;
  v34 = v28;
  if (!v14)
  {
    v35 = (v30 >> *(a2 + 2628));
    v36 = (v31 >> *(a2 + 2632));
    if (v35 <= 4)
    {
      LOBYTE(v35) = 4;
    }

    *(a2 + 2792) = v35;
    if (v36 <= 4)
    {
      v37 = 4;
    }

    else
    {
      v37 = v36;
    }

    *(a2 + 2793) = v37;
    v38 = (v30 >> *(a2 + 5236));
    v39 = (v31 >> *(a2 + 5240));
    if (v38 <= 4)
    {
      LOBYTE(v38) = 4;
    }

    *v28 = v38;
    if (v39 <= 4)
    {
      LOBYTE(v39) = 4;
    }

    v28[1] = v39;
  }

  v40 = ***(a2 + 7864);
  v41 = 0x10003uLL >> v40;
  v42 = a4 - 1;
  v43 = a2 + 7992;
  if ((a3 & 1) == 0)
  {
    v44 = a3 & 0x1E;
    v45 = *(a2 + 20);
    v46 = v44 >> *(a2 + 24);
    v47 = a7;
    v48 = a6;
    if ((a4 & 1) == 0)
    {
      *(a2 + 128) = *(a2 + 7968) + (a4 >> v45);
      *(a2 + 136) = v43 + v46;
      if (!v14)
      {
LABEL_39:
        v49 = *(a2 + 2632);
        *(a2 + 2736) = *(a2 + 7976) + (a4 >> *(a2 + 2628));
        *(a2 + 2744) = v43 + (v44 >> v49) + 32;
        v50 = *(a2 + 5240);
        v51 = *(a2 + 5236);
LABEL_40:
        *(a2 + 5344) = *(a2 + 7984) + (a4 >> v51);
        v52 = v44 >> v50;
LABEL_77:
        *(a2 + 5352) = v43 + v52 + 64;
        goto LABEL_78;
      }

      goto LABEL_78;
    }

    if (v45)
    {
      v62 = (v41 & 1) == 0;
    }

    else
    {
      v62 = 1;
    }

    if (v62)
    {
      v63 = a4;
    }

    else
    {
      v63 = a4 - 1;
    }

    *(a2 + 128) = *(a2 + 7968) + (v63 >> v45);
    *(a2 + 136) = v43 + v46;
    if (v14)
    {
      goto LABEL_78;
    }

    v64 = (v41 & 1) == 0;
    v65 = *(a2 + 2632);
    v66 = *(a2 + 2628);
    if (v66)
    {
      v67 = v64;
    }

    else
    {
      v67 = 1;
    }

    if (!v67)
    {
      v63 = a4 - 1;
    }

    *(a2 + 2736) = *(a2 + 7976) + (v63 >> v66);
    *(a2 + 2744) = v43 + (v44 >> v65) + 32;
    v68 = *(a2 + 5240);
    v69 = *(a2 + 5236);
    if (!v69)
    {
      v64 = 1;
    }

    if (v64)
    {
      v42 = v63;
    }

    v70 = *(a2 + 7984);
    v71 = v42 >> v69;
LABEL_76:
    *(a2 + 5344) = v70 + v71;
    v52 = v44 >> v68;
    goto LABEL_77;
  }

  v53 = 0x20005uLL >> v40;
  v54 = a3 - 1;
  v47 = a7;
  v48 = a6;
  if ((a4 & 1) == 0)
  {
    v55 = *(a2 + 24);
    if (v55)
    {
      v56 = (v53 & 1) == 0;
    }

    else
    {
      v56 = 1;
    }

    if (v56)
    {
      v57 = a3;
    }

    else
    {
      v57 = a3 - 1;
    }

    *(a2 + 128) = *(a2 + 7968) + (a4 >> *(a2 + 20));
    *(a2 + 136) = v43 + ((v57 & 0x1F) >> v55);
    if (!v14)
    {
      v58 = (v53 & 1) == 0;
      v59 = *(a2 + 2632);
      if (v59)
      {
        v60 = v58;
      }

      else
      {
        v60 = 1;
      }

      if (!v60)
      {
        v57 = a3 - 1;
      }

      *(a2 + 2736) = *(a2 + 7976) + (a4 >> *(a2 + 2628));
      *(a2 + 2744) = v43 + ((v57 & 0x1F) >> v59) + 32;
      v61 = *(a2 + 5240);
      if (!v61)
      {
        v58 = 1;
      }

      if (!v58)
      {
        v57 = a3 - 1;
      }

      *(a2 + 5344) = *(a2 + 7984) + (a4 >> *(a2 + 5236));
      v52 = (v57 & 0x1F) >> v61;
      goto LABEL_77;
    }

    goto LABEL_78;
  }

  if (v53)
  {
    v117 = *(a2 + 20);
    v116 = *(a2 + 24);
    if (v116)
    {
      v118 = a3 - 1;
    }

    else
    {
      v118 = a3;
    }

    if ((v41 & 1) == 0)
    {
      *(a2 + 128) = *(a2 + 7968) + (a4 >> v117);
      *(a2 + 136) = v43 + ((v118 & 0x1F) >> v116);
      if (v14)
      {
        goto LABEL_78;
      }

      v119 = *(a2 + 2632);
      if (v119)
      {
        v120 = a3 - 1;
      }

      else
      {
        v120 = v118;
      }

      *(a2 + 2736) = *(a2 + 7976) + (a4 >> *(a2 + 2628));
      *(a2 + 2744) = v43 + ((v120 & 0x1F) >> v119) + 32;
      v50 = *(a2 + 5240);
      if (!v50)
      {
        v54 = v120;
      }

      v51 = *(a2 + 5236);
      v44 = v54 & 0x1F;
      goto LABEL_40;
    }

    if (v117)
    {
      v132 = a4 - 1;
    }

    else
    {
      v132 = a4;
    }

    *(a2 + 128) = *(a2 + 7968) + (v132 >> v117);
    *(a2 + 136) = v43 + ((v118 & 0x1F) >> v116);
    if (v14)
    {
      goto LABEL_78;
    }

    v133 = *(a2 + 2632);
    if (v133)
    {
      v118 = a3 - 1;
    }

    v134 = *(a2 + 2628);
    if (v134)
    {
      v132 = a4 - 1;
    }

    *(a2 + 2736) = *(a2 + 7976) + (v132 >> v134);
    *(a2 + 2744) = v43 + ((v118 & 0x1F) >> v133) + 32;
    v68 = *(a2 + 5240);
    if (!v68)
    {
      v54 = v118;
    }

    v135 = *(a2 + 5236);
    if (!v135)
    {
      v42 = v132;
    }

    v44 = v54 & 0x1F;
    v70 = *(a2 + 7984);
    v71 = v42 >> v135;
    goto LABEL_76;
  }

  v44 = a3 & 0x1F;
  v114 = *(a2 + 20);
  v115 = v44 >> *(a2 + 24);
  if ((v41 & 1) == 0)
  {
    *(a2 + 128) = *(a2 + 7968) + (a4 >> v114);
    *(a2 + 136) = v43 + v115;
    if (v14)
    {
      goto LABEL_78;
    }

    goto LABEL_39;
  }

  if (v114)
  {
    v127 = a4 - 1;
  }

  else
  {
    v127 = a4;
  }

  *(a2 + 128) = *(a2 + 7968) + (v127 >> v114);
  *(a2 + 136) = v43 + v115;
  if (!v14)
  {
    v128 = *(a2 + 2632);
    v129 = *(a2 + 2628);
    if (v129)
    {
      v127 = a4 - 1;
    }

    *(a2 + 2736) = *(a2 + 7976) + (v127 >> v129);
    *(a2 + 2744) = v43 + (v44 >> v128) + 32;
    v130 = *(a2 + 5240);
    v131 = *(a2 + 5236);
    if (!v131)
    {
      v42 = v127;
    }

    *(a2 + 5344) = *(a2 + 7984) + (v42 >> v131);
    v52 = v44 >> v130;
    goto LABEL_77;
  }

LABEL_78:
  set_mi_row_col(a2, *(a2 + 7840), *(a2 + 7848), a3, v441, a4, v10, *(a1 + 15732), *(a1 + 15736));
  av1_setup_dst_planes(a2 + 16, v47, *(a1 + 15432) + 1248, a3, a4, 0, v433);
  *(**(a2 + 7864) + 1) = v48;
  av1_read_mode_info(a1, a2, a5, v12, v438, v72, v73);
  if (v47 >= 3 && *(v430 + 96) && av1_ss_size_lookup[4 * v431 + 2 * *(v430 + 96) + *(v430 + 100)] == 255)
  {
    aom_internal_error(*(a2 + 10736), 7, "Invalid block size.");
  }

  v74 = **(a2 + 7864);
  if ((*(v74 + 167) & 0x80) == 0 && *(v74 + 16) <= 0)
  {
    if (*(v74 + 142))
    {
      av1_decode_palette_tokens(a2, 0, a5);
    }

    if (!*(*(v440 + 312) + 77) && *(a2 + 12) == 1 && *(**(a2 + 7864) + 143))
    {
      av1_decode_palette_tokens(a2, 1, a5);
    }
  }

  v75 = *(*(v440 + 312) + 77);
  v76 = *(a2 + 7864);
  v77 = *v76;
  v78 = *(*v76 + 167);
  if ((v78 & 0x80) != 0)
  {
    v79 = 1;
    v80 = *v436;
    v437 = a1;
    if (!v47)
    {
      goto LABEL_99;
    }
  }

  else
  {
    v79 = v77[16] > 0;
    v80 = *v436;
    v437 = a1;
    if (!v47)
    {
      goto LABEL_99;
    }
  }

  if (v80 == 2)
  {
    v81 = !v79;
    if (v77[144])
    {
      v81 = 1;
    }

    if ((v81 & 1) == 0 && !*(a2 + 4 * (v78 & 7) + 10692))
    {
      v121 = *(*(v440 + 312) + 77);
      v122 = 0;
      v123 = max_txsize_rect_lookup_2[v431];
      v124 = tx_size_high_unit_2[v123];
      v125 = tx_size_wide_unit_2[v123];
      do
      {
        v126 = 0;
        do
        {
          read_tx_size_vartx(a2, v77, v123, 0, v122, v126, a5);
          v126 = (v126 + v125);
        }

        while (v126 < v10);
        v122 += v124;
      }

      while (v122 < v441);
      goto LABEL_219;
    }
  }

LABEL_99:
  if (*(a2 + 4 * (v78 & 7) + 10692))
  {
    v82 = 1;
  }

  else
  {
    v82 = *v77 == 0;
  }

  if (v82)
  {
    LODWORD(v80) = 0;
    v77[145] = 0;
    if (!v79)
    {
      goto LABEL_206;
    }

    goto LABEL_205;
  }

  v83 = !v79;
  if (!v77[144])
  {
    v83 = 1;
  }

  if (v80 != 2 || !v83)
  {
    LODWORD(v80) = tx_mode_to_biggest_tx_size_0[v80];
    if (txsize_sqr_map_0[max_txsize_rect_lookup_2[*v77]] <= v80)
    {
      LODWORD(v80) = max_txsize_rect_lookup_2[*v77];
    }

    v77[145] = v80;
    if (v79)
    {
      goto LABEL_205;
    }

    goto LABEL_206;
  }

  v84 = bsize_to_max_depth_bsize_to_max_depth_table_0[*v77];
  v80 = max_txsize_rect_lookup_2[*v77];
  v85 = **(a2 + 8128);
  v86 = **(a2 + 8136);
  if (v34[2472] == 1)
  {
    v87 = *(a2 + 7888);
    if ((*(v87 + 167) & 0x80) != 0 || v87[16] >= 1)
    {
      v85 = block_size_wide_8[*v87];
    }
  }

  if (v34[2473])
  {
    v88 = *(a2 + 7880);
    if ((*(v88 + 167) & 0x80) != 0 || v88[16] >= 1)
    {
      v86 = block_size_high_7[*v88];
    }
  }

  if (tx_size_high_4[v80] <= v86)
  {
    v89 = v34[2473];
  }

  else
  {
    v89 = 0;
  }

  if (tx_size_wide_5[v80] <= v85)
  {
    v90 = v34[2472];
  }

  else
  {
    v90 = 0;
  }

  v91 = *(a2 + 10648) + 24 * (bsize_to_tx_size_cat_bsize_to_tx_size_depth_table_0[*v77] - 1) + 8 * (v89 + v90) + 15014;
  v92 = v84 + 1;
  v93 = *(a5 + 48);
  v94 = *(a5 + 52);
  v95 = v94 >> 8;
  v96 = 4 * v84 + 4;
  v97 = -1;
  v98 = -2;
  v99 = 0xFF00000000000000;
  v100 = v91;
  do
  {
    v101 = v94;
    v102 = *v100++;
    v103 = v95 * (v102 >> 6);
    v96 -= 4;
    v94 = v96 + (v103 >> 1);
    ++v97;
    ++v98;
    v99 += 0x100000000000000;
  }

  while (HIWORD(v93) < v94);
  v104 = v101 - (v103 >> 1) - v96;
  v105 = 15 - (__clz(v104) ^ 0x1F);
  v106 = *(a5 + 54) - v105;
  *(a5 + 54) = v106;
  v107 = ((v93 - (v94 << 16) + 1) << v105) - 1;
  *(a5 + 48) = v107;
  *(a5 + 52) = v104 << v105;
  if (v106 < 0)
  {
    v109 = *(a5 + 32);
    v108 = *(a5 + 40);
    if (v108 >= v109)
    {
      v113 = *(a5 + 40);
      goto LABEL_190;
    }

    v110 = 8 - v106;
    if (v110 >= 7)
    {
      v111 = 7;
    }

    else
    {
      v111 = 8 - v106;
    }

    v112 = ((v111 ^ 0xFu) - v106) >> 3;
    if (v112 >= ~v108 + v109)
    {
      v112 = ~v108 + v109;
    }

    if (v112 >= 0xF)
    {
      v136 = v112 + 1;
      v137 = (v112 + 1) & 0x3FFFFFF0;
      v113 = &v108->u8[v137];
      v138 = 0uLL;
      v139 = v106;
      v140 = v107;
      v141 = vdupq_n_s32(v110);
      v142 = vaddq_s32(v141, xmmword_273BC3230);
      v143 = vaddq_s32(v141, xmmword_273BC3240);
      v144 = vaddq_s32(v141, xmmword_273BC3250);
      v145 = vaddq_s32(v141, xmmword_273BC3220);
      v146.i64[0] = 0x8000800080008;
      v146.i64[1] = 0x8000800080008;
      v147.i64[0] = 0x7F0000007FLL;
      v147.i64[1] = 0x7F0000007FLL;
      v148 = v137;
      v149 = 0uLL;
      v150 = 0uLL;
      v151 = 0uLL;
      do
      {
        v152 = *v108++;
        v150 = veorq_s8(vshlq_u32(vqtbl1q_s8(v152, xmmword_273B8E7B0), v143), v150);
        v149 = veorq_s8(vshlq_u32(vqtbl1q_s8(v152, xmmword_273B8E7C0), v144), v149);
        v140 = veorq_s8(vshlq_u32(vqtbl1q_s8(v152, xmmword_273B8E7D0), v145), v140);
        v151 = veorq_s8(vshlq_u32(vqtbl1q_s8(v152, xmmword_273B8E7A0), v142), v151);
        v139 = vaddq_s16(v139, v146);
        v138 = vaddq_s16(v138, v146);
        v145 = vaddq_s32(v145, v147);
        v144 = vaddq_s32(v144, v147);
        v143 = vaddq_s32(v143, v147);
        v142 = vaddq_s32(v142, v147);
        v148 -= 16;
      }

      while (v148);
      v153 = v108 < v109;
      v106 = vaddvq_s16(vaddq_s16(v139, v138));
      v154 = veorq_s8(veorq_s8(v140, v150), veorq_s8(v149, v151));
      *v154.i8 = veor_s8(*v154.i8, *&vextq_s8(v154, v154, 8uLL));
      v107 = v154.i32[0] ^ v154.i32[1];
      if (v136 == v137)
      {
        goto LABEL_189;
      }

      v110 -= 8 * v137;
    }

    else
    {
      v113 = *(a5 + 40);
    }

    do
    {
      v155 = *v113++;
      v107 ^= v155 << v110;
      v106 += 8;
      v153 = v113 < v109;
      v156 = v110 >= 8;
      v110 -= 8;
    }

    while (v156 && v113 < v109);
LABEL_189:
    if (v153)
    {
LABEL_191:
      *(a5 + 48) = v107;
      *(a5 + 54) = v106;
      *(a5 + 40) = v113;
      goto LABEL_192;
    }

LABEL_190:
    *(a5 + 24) = *(a5 + 24) - v106 + 0x4000;
    v106 = 0x4000;
    goto LABEL_191;
  }

LABEL_192:
  if (*(a5 + 56))
  {
    v157 = 0;
    v158 = *(v91 + 2 * v92);
    v159 = (v158 >> 4) + 4;
    v160 = v99 >> 56;
    if (v84 <= 1)
    {
      v84 = 1;
    }

    else
    {
      v84 = v84;
    }

    do
    {
      v161 = *(v91 + 2 * v157);
      v162 = v161 - (v161 >> v159);
      v163 = v161 + ((0x8000 - v161) >> v159);
      if (v157 >= v160)
      {
        LOWORD(v163) = v162;
      }

      *(v91 + 2 * v157++) = v163;
    }

    while (v84 != v157);
    v164 = *(v91 + 2 * v92);
    if (v158 < 0x20)
    {
      ++v164;
    }

    *(v91 + 2 * v92) = v164;
  }

  if (v98 < 0)
  {
    v77[145] = v80;
    if (!v79)
    {
      goto LABEL_206;
    }

LABEL_205:
    v165 = 0x101010101010101 * v80;
    *(v77 + 154) = v165;
    *(v77 + 146) = v165;
    goto LABEL_206;
  }

  do
  {
    LODWORD(v80) = sub_tx_size_map_0[v80];
    --v97;
  }

  while (v97);
  v77[145] = v80;
  if (v79)
  {
    goto LABEL_205;
  }

LABEL_206:
  v166 = v34[2908];
  v167 = v34[2909];
  if (v77[144])
  {
    if ((*(v77 + 167) & 0x80) != 0)
    {
      v121 = v75;
      v169 = 0;
      v170 = 4 * v167;
      v168 = v80;
      if (!v34[2908])
      {
        goto LABEL_217;
      }

      goto LABEL_213;
    }

    v168 = v80;
    v121 = v75;
    if (v77[16] > 0)
    {
      v169 = 0;
      v170 = 4 * v167;
      if (!v34[2908])
      {
        goto LABEL_217;
      }

      goto LABEL_213;
    }
  }

  else
  {
    v121 = v75;
    v168 = v80;
  }

  v170 = tx_size_high_4[v168];
  v169 = 1;
  if (!v34[2908])
  {
    goto LABEL_217;
  }

LABEL_213:
  v171 = tx_size_wide_5[v168];
  if (v169)
  {
    v172 = v171;
  }

  else
  {
    v172 = 4 * v166;
  }

  memset(*(a2 + 8128), v172, v166);
LABEL_217:
  if (v167)
  {
    memset(*(a2 + 8136), v170, v167);
  }

LABEL_219:
  if (!*v440)
  {
    goto LABEL_975;
  }

  v173 = *(a2 + 10724);
  v174 = *(v437 + 34192);
  v175 = v173;
  if (*(v437 + 34192))
  {
    v175 = *(a2 + 10724);
    if (*(v437 + 34324))
    {
      v176 = v173 + *(v437 + 34196);
      v175 = v176 >= 0xFF ? 255 : v173 + *(v437 + 34196);
      if (v176 < 0)
      {
        v175 = 0;
      }
    }
  }

  v177 = *(*(v440 + 312) + 72);
  v178 = *(v437 + 15820) + v175;
  if (v178 >= 0xFF)
  {
    v179 = 255;
  }

  else
  {
    v179 = *(v437 + 15820) + v175;
  }

  if (v178 >= 0)
  {
    v180 = v179;
  }

  else
  {
    v180 = 0;
  }

  switch(v177)
  {
    case 8:
      v181 = dc_qlookup_QTX;
      goto LABEL_241;
    case 10:
      v181 = dc_qlookup_10_QTX;
      goto LABEL_241;
    case 12:
      v181 = dc_qlookup_12_QTX;
LABEL_241:
      v182 = v181[v180];
      goto LABEL_243;
  }

  v182 = -1;
LABEL_243:
  *(a2 + 144) = v182;
  if (v175 >= 0xFF)
  {
    v183 = 255;
  }

  else
  {
    v183 = v175;
  }

  if (v175 < 0)
  {
    v183 = 0;
  }

  switch(v177)
  {
    case 8:
      *(a2 + 146) = ac_qlookup_QTX[v183];
      if (v121)
      {
        goto LABEL_315;
      }

      break;
    case 12:
      *(a2 + 146) = ac_qlookup_12_QTX[v183];
      if (v121)
      {
        goto LABEL_315;
      }

      break;
    case 10:
      *(a2 + 146) = ac_qlookup_10_QTX[v183];
      if (v121)
      {
        goto LABEL_315;
      }

      break;
    default:
      *(a2 + 146) = -1;
      if (v121)
      {
        goto LABEL_315;
      }

      break;
  }

  v184 = *(v437 + 15832);
  v185 = *(v437 + 15824) + v175;
  if (v185 >= 0xFF)
  {
    v186 = 255;
  }

  else
  {
    v186 = *(v437 + 15824) + v175;
  }

  if (v185 >= 0)
  {
    v187 = v186;
  }

  else
  {
    v187 = 0;
  }

  switch(v177)
  {
    case 8:
      v188 = dc_qlookup_QTX;
      goto LABEL_272;
    case 10:
      v188 = dc_qlookup_10_QTX;
      goto LABEL_272;
    case 12:
      v188 = dc_qlookup_12_QTX;
LABEL_272:
      v189 = v188[v187];
      goto LABEL_274;
  }

  v189 = -1;
LABEL_274:
  *(a2 + 2752) = v189;
  v190 = v184 + v175;
  if (v190 >= 0xFF)
  {
    v191 = 255;
  }

  else
  {
    v191 = v190;
  }

  if (v190 >= 0)
  {
    v192 = v191;
  }

  else
  {
    v192 = 0;
  }

  switch(v177)
  {
    case 8:
      v193 = ac_qlookup_QTX;
      goto LABEL_286;
    case 10:
      v193 = ac_qlookup_10_QTX;
      goto LABEL_286;
    case 12:
      v193 = ac_qlookup_12_QTX;
LABEL_286:
      v194 = v193[v192];
      goto LABEL_288;
  }

  v194 = -1;
LABEL_288:
  *(a2 + 2754) = v194;
  v195 = *(v437 + 15836);
  v196 = *(v437 + 15828) + v175;
  if (v196 >= 0xFF)
  {
    v197 = 255;
  }

  else
  {
    v197 = *(v437 + 15828) + v175;
  }

  if (v196 >= 0)
  {
    v198 = v197;
  }

  else
  {
    v198 = 0;
  }

  switch(v177)
  {
    case 8:
      v199 = dc_qlookup_QTX;
      break;
    case 10:
      v199 = dc_qlookup_10_QTX;
      break;
    case 12:
      v199 = dc_qlookup_12_QTX;
      break;
    default:
      v200 = -1;
      goto LABEL_302;
  }

  v200 = v199[v198];
LABEL_302:
  *(a2 + 5360) = v200;
  v201 = v195 + v175;
  if (v201 >= 0xFF)
  {
    v202 = 255;
  }

  else
  {
    v202 = v201;
  }

  if (v201 >= 0)
  {
    v203 = v202;
  }

  else
  {
    v203 = 0;
  }

  switch(v177)
  {
    case 8:
      v204 = ac_qlookup_QTX;
      break;
    case 10:
      v204 = ac_qlookup_10_QTX;
      break;
    case 12:
      v204 = ac_qlookup_12_QTX;
      break;
    default:
      *(a2 + 5362) = -1;
      v205 = v173;
      if (!v174)
      {
        goto LABEL_323;
      }

      goto LABEL_316;
  }

  *(a2 + 5362) = v204[v203];
LABEL_315:
  v205 = v173;
  if (!v174)
  {
    goto LABEL_323;
  }

LABEL_316:
  v205 = v173;
  if (*(v437 + 34328))
  {
    v206 = v173 + *(v437 + 34212);
    if (v206 >= 0xFF)
    {
      v207 = 255;
    }

    else
    {
      v207 = v173 + *(v437 + 34212);
    }

    if (v206 >= 0)
    {
      v205 = v207;
    }

    else
    {
      v205 = 0;
    }
  }

LABEL_323:
  v208 = *(v437 + 15820) + v205;
  if (v208 >= 0xFF)
  {
    v209 = 255;
  }

  else
  {
    v209 = *(v437 + 15820) + v205;
  }

  if (v208 >= 0)
  {
    v210 = v209;
  }

  else
  {
    v210 = 0;
  }

  switch(v177)
  {
    case 8:
      v211 = dc_qlookup_QTX;
      goto LABEL_335;
    case 12:
      v211 = dc_qlookup_12_QTX;
      goto LABEL_335;
    case 10:
      v211 = dc_qlookup_10_QTX;
LABEL_335:
      v212 = v211[v210];
      goto LABEL_337;
  }

  v212 = -1;
LABEL_337:
  *(a2 + 148) = v212;
  if (v205 >= 0xFF)
  {
    v213 = 255;
  }

  else
  {
    v213 = v205;
  }

  if (v205 < 0)
  {
    v213 = 0;
  }

  switch(v177)
  {
    case 8:
      *(a2 + 150) = ac_qlookup_QTX[v213];
      if (v121)
      {
        break;
      }

      goto LABEL_352;
    case 12:
      *(a2 + 150) = ac_qlookup_12_QTX[v213];
      if (v121)
      {
        break;
      }

LABEL_352:
      v214 = *(v437 + 15832);
      v215 = *(v437 + 15824) + v205;
      if (v215 >= 0xFF)
      {
        v216 = 255;
      }

      else
      {
        v216 = *(v437 + 15824) + v205;
      }

      if (v215 >= 0)
      {
        v217 = v216;
      }

      else
      {
        v217 = 0;
      }

      switch(v177)
      {
        case 8:
          v218 = dc_qlookup_QTX;
          break;
        case 10:
          v218 = dc_qlookup_10_QTX;
          break;
        case 12:
          v218 = dc_qlookup_12_QTX;
          break;
        default:
          v219 = -1;
LABEL_368:
          *(a2 + 2756) = v219;
          v220 = v214 + v205;
          if (v220 >= 0xFF)
          {
            v221 = 255;
          }

          else
          {
            v221 = v220;
          }

          if (v220 >= 0)
          {
            v222 = v221;
          }

          else
          {
            v222 = 0;
          }

          switch(v177)
          {
            case 8:
              v223 = ac_qlookup_QTX;
              break;
            case 10:
              v223 = ac_qlookup_10_QTX;
              break;
            case 12:
              v223 = ac_qlookup_12_QTX;
              break;
            default:
              v224 = -1;
LABEL_382:
              *(a2 + 2758) = v224;
              v225 = *(v437 + 15836);
              v226 = *(v437 + 15828) + v205;
              if (v226 >= 0xFF)
              {
                v227 = 255;
              }

              else
              {
                v227 = *(v437 + 15828) + v205;
              }

              if (v226 >= 0)
              {
                v228 = v227;
              }

              else
              {
                v228 = 0;
              }

              switch(v177)
              {
                case 8:
                  v229 = dc_qlookup_QTX;
                  break;
                case 10:
                  v229 = dc_qlookup_10_QTX;
                  break;
                case 12:
                  v229 = dc_qlookup_12_QTX;
                  break;
                default:
                  v230 = -1;
LABEL_396:
                  *(a2 + 5364) = v230;
                  v231 = v225 + v205;
                  if (v231 >= 0xFF)
                  {
                    v232 = 255;
                  }

                  else
                  {
                    v232 = v231;
                  }

                  if (v231 >= 0)
                  {
                    v233 = v232;
                  }

                  else
                  {
                    v233 = 0;
                  }

                  switch(v177)
                  {
                    case 8:
                      v234 = ac_qlookup_QTX;
                      break;
                    case 10:
                      v234 = ac_qlookup_10_QTX;
                      break;
                    case 12:
                      v234 = ac_qlookup_12_QTX;
                      break;
                    default:
                      v235 = -1;
                      goto LABEL_410;
                  }

                  v235 = v234[v233];
LABEL_410:
                  *(a2 + 5366) = v235;
                  goto LABEL_411;
              }

              v230 = v229[v228];
              goto LABEL_396;
          }

          v224 = v223[v222];
          goto LABEL_382;
      }

      v219 = v218[v217];
      goto LABEL_368;
    case 10:
      *(a2 + 150) = ac_qlookup_10_QTX[v213];
      if (!v121)
      {
        goto LABEL_352;
      }

      break;
    default:
      *(a2 + 150) = -1;
      if (!v121)
      {
        goto LABEL_352;
      }

      break;
  }

LABEL_411:
  v236 = v173;
  if (v174)
  {
    v236 = v173;
    if (*(v437 + 34332))
    {
      v237 = v173 + *(v437 + 34228);
      if (v237 >= 0xFF)
      {
        v238 = 255;
      }

      else
      {
        v238 = v173 + *(v437 + 34228);
      }

      if (v237 >= 0)
      {
        v236 = v238;
      }

      else
      {
        v236 = 0;
      }
    }
  }

  v239 = *(v437 + 15820) + v236;
  if (v239 >= 0xFF)
  {
    v240 = 255;
  }

  else
  {
    v240 = *(v437 + 15820) + v236;
  }

  if (v239 >= 0)
  {
    v241 = v240;
  }

  else
  {
    v241 = 0;
  }

  switch(v177)
  {
    case 8:
      v242 = dc_qlookup_QTX;
      goto LABEL_431;
    case 12:
      v242 = dc_qlookup_12_QTX;
      goto LABEL_431;
    case 10:
      v242 = dc_qlookup_10_QTX;
LABEL_431:
      v243 = v242[v241];
      goto LABEL_433;
  }

  v243 = -1;
LABEL_433:
  *(a2 + 152) = v243;
  if (v236 >= 0xFF)
  {
    v244 = 255;
  }

  else
  {
    v244 = v236;
  }

  if (v236 < 0)
  {
    v244 = 0;
  }

  switch(v177)
  {
    case 8:
      *(a2 + 154) = ac_qlookup_QTX[v244];
      if (v121)
      {
        break;
      }

      goto LABEL_448;
    case 12:
      *(a2 + 154) = ac_qlookup_12_QTX[v244];
      if (v121)
      {
        break;
      }

LABEL_448:
      v245 = *(v437 + 15832);
      v246 = *(v437 + 15824) + v236;
      if (v246 >= 0xFF)
      {
        v247 = 255;
      }

      else
      {
        v247 = *(v437 + 15824) + v236;
      }

      if (v246 >= 0)
      {
        v248 = v247;
      }

      else
      {
        v248 = 0;
      }

      switch(v177)
      {
        case 8:
          v249 = dc_qlookup_QTX;
          break;
        case 10:
          v249 = dc_qlookup_10_QTX;
          break;
        case 12:
          v249 = dc_qlookup_12_QTX;
          break;
        default:
          v250 = -1;
LABEL_462:
          *(a2 + 2760) = v250;
          v251 = v245 + v236;
          if (v251 >= 0xFF)
          {
            v252 = 255;
          }

          else
          {
            v252 = v251;
          }

          if (v251 >= 0)
          {
            v253 = v252;
          }

          else
          {
            v253 = 0;
          }

          switch(v177)
          {
            case 8:
              v254 = ac_qlookup_QTX;
              break;
            case 10:
              v254 = ac_qlookup_10_QTX;
              break;
            case 12:
              v254 = ac_qlookup_12_QTX;
              break;
            default:
              v255 = -1;
LABEL_476:
              *(a2 + 2762) = v255;
              v256 = *(v437 + 15836);
              v257 = *(v437 + 15828) + v236;
              if (v257 >= 0xFF)
              {
                v258 = 255;
              }

              else
              {
                v258 = *(v437 + 15828) + v236;
              }

              if (v257 >= 0)
              {
                v259 = v258;
              }

              else
              {
                v259 = 0;
              }

              switch(v177)
              {
                case 8:
                  v260 = dc_qlookup_QTX;
                  break;
                case 10:
                  v260 = dc_qlookup_10_QTX;
                  break;
                case 12:
                  v260 = dc_qlookup_12_QTX;
                  break;
                default:
                  v261 = -1;
LABEL_490:
                  *(a2 + 5368) = v261;
                  v262 = v256 + v236;
                  if (v262 >= 0xFF)
                  {
                    v263 = 255;
                  }

                  else
                  {
                    v263 = v262;
                  }

                  if (v262 >= 0)
                  {
                    v264 = v263;
                  }

                  else
                  {
                    v264 = 0;
                  }

                  switch(v177)
                  {
                    case 8:
                      v265 = ac_qlookup_QTX;
                      break;
                    case 10:
                      v265 = ac_qlookup_10_QTX;
                      break;
                    case 12:
                      v265 = ac_qlookup_12_QTX;
                      break;
                    default:
                      v266 = -1;
                      goto LABEL_504;
                  }

                  v266 = v265[v264];
LABEL_504:
                  *(a2 + 5370) = v266;
                  goto LABEL_505;
              }

              v261 = v260[v259];
              goto LABEL_490;
          }

          v255 = v254[v253];
          goto LABEL_476;
      }

      v250 = v249[v248];
      goto LABEL_462;
    case 10:
      *(a2 + 154) = ac_qlookup_10_QTX[v244];
      if (!v121)
      {
        goto LABEL_448;
      }

      break;
    default:
      *(a2 + 154) = -1;
      if (!v121)
      {
        goto LABEL_448;
      }

      break;
  }

LABEL_505:
  v267 = v173;
  if (v174)
  {
    v267 = v173;
    if (*(v437 + 34336))
    {
      v268 = v173 + *(v437 + 34244);
      if (v268 >= 0xFF)
      {
        v269 = 255;
      }

      else
      {
        v269 = v173 + *(v437 + 34244);
      }

      if (v268 >= 0)
      {
        v267 = v269;
      }

      else
      {
        v267 = 0;
      }
    }
  }

  v270 = *(v437 + 15820) + v267;
  if (v270 >= 0xFF)
  {
    v271 = 255;
  }

  else
  {
    v271 = *(v437 + 15820) + v267;
  }

  if (v270 >= 0)
  {
    v272 = v271;
  }

  else
  {
    v272 = 0;
  }

  switch(v177)
  {
    case 8:
      v273 = dc_qlookup_QTX;
      goto LABEL_525;
    case 12:
      v273 = dc_qlookup_12_QTX;
      goto LABEL_525;
    case 10:
      v273 = dc_qlookup_10_QTX;
LABEL_525:
      v274 = v273[v272];
      goto LABEL_527;
  }

  v274 = -1;
LABEL_527:
  *(a2 + 156) = v274;
  if (v267 >= 0xFF)
  {
    v275 = 255;
  }

  else
  {
    v275 = v267;
  }

  if (v267 < 0)
  {
    v275 = 0;
  }

  switch(v177)
  {
    case 8:
      *(a2 + 158) = ac_qlookup_QTX[v275];
      if (v121)
      {
        break;
      }

      goto LABEL_542;
    case 12:
      *(a2 + 158) = ac_qlookup_12_QTX[v275];
      if (v121)
      {
        break;
      }

LABEL_542:
      v276 = *(v437 + 15832);
      v277 = *(v437 + 15824) + v267;
      if (v277 >= 0xFF)
      {
        v278 = 255;
      }

      else
      {
        v278 = *(v437 + 15824) + v267;
      }

      if (v277 >= 0)
      {
        v279 = v278;
      }

      else
      {
        v279 = 0;
      }

      switch(v177)
      {
        case 8:
          v280 = dc_qlookup_QTX;
          break;
        case 10:
          v280 = dc_qlookup_10_QTX;
          break;
        case 12:
          v280 = dc_qlookup_12_QTX;
          break;
        default:
          v281 = -1;
LABEL_556:
          *(a2 + 2764) = v281;
          v282 = v276 + v267;
          if (v282 >= 0xFF)
          {
            v283 = 255;
          }

          else
          {
            v283 = v282;
          }

          if (v282 >= 0)
          {
            v284 = v283;
          }

          else
          {
            v284 = 0;
          }

          switch(v177)
          {
            case 8:
              v285 = ac_qlookup_QTX;
              break;
            case 10:
              v285 = ac_qlookup_10_QTX;
              break;
            case 12:
              v285 = ac_qlookup_12_QTX;
              break;
            default:
              v286 = -1;
LABEL_570:
              *(a2 + 2766) = v286;
              v287 = *(v437 + 15836);
              v288 = *(v437 + 15828) + v267;
              if (v288 >= 0xFF)
              {
                v289 = 255;
              }

              else
              {
                v289 = *(v437 + 15828) + v267;
              }

              if (v288 >= 0)
              {
                v290 = v289;
              }

              else
              {
                v290 = 0;
              }

              switch(v177)
              {
                case 8:
                  v291 = dc_qlookup_QTX;
                  break;
                case 10:
                  v291 = dc_qlookup_10_QTX;
                  break;
                case 12:
                  v291 = dc_qlookup_12_QTX;
                  break;
                default:
                  v292 = -1;
LABEL_584:
                  *(a2 + 5372) = v292;
                  v293 = v287 + v267;
                  if (v293 >= 0xFF)
                  {
                    v294 = 255;
                  }

                  else
                  {
                    v294 = v293;
                  }

                  if (v293 >= 0)
                  {
                    v295 = v294;
                  }

                  else
                  {
                    v295 = 0;
                  }

                  switch(v177)
                  {
                    case 8:
                      v296 = ac_qlookup_QTX;
                      break;
                    case 10:
                      v296 = ac_qlookup_10_QTX;
                      break;
                    case 12:
                      v296 = ac_qlookup_12_QTX;
                      break;
                    default:
                      v297 = -1;
                      goto LABEL_598;
                  }

                  v297 = v296[v295];
LABEL_598:
                  *(a2 + 5374) = v297;
                  goto LABEL_599;
              }

              v292 = v291[v290];
              goto LABEL_584;
          }

          v286 = v285[v284];
          goto LABEL_570;
      }

      v281 = v280[v279];
      goto LABEL_556;
    case 10:
      *(a2 + 158) = ac_qlookup_10_QTX[v275];
      if (!v121)
      {
        goto LABEL_542;
      }

      break;
    default:
      *(a2 + 158) = -1;
      if (!v121)
      {
        goto LABEL_542;
      }

      break;
  }

LABEL_599:
  v298 = v173;
  if (v174)
  {
    v298 = v173;
    if (*(v437 + 34340))
    {
      v299 = v173 + *(v437 + 34260);
      if (v299 >= 0xFF)
      {
        v300 = 255;
      }

      else
      {
        v300 = v173 + *(v437 + 34260);
      }

      if (v299 >= 0)
      {
        v298 = v300;
      }

      else
      {
        v298 = 0;
      }
    }
  }

  v301 = *(v437 + 15820) + v298;
  if (v301 >= 0xFF)
  {
    v302 = 255;
  }

  else
  {
    v302 = *(v437 + 15820) + v298;
  }

  if (v301 >= 0)
  {
    v303 = v302;
  }

  else
  {
    v303 = 0;
  }

  switch(v177)
  {
    case 8:
      v304 = dc_qlookup_QTX;
      goto LABEL_619;
    case 12:
      v304 = dc_qlookup_12_QTX;
      goto LABEL_619;
    case 10:
      v304 = dc_qlookup_10_QTX;
LABEL_619:
      v305 = v304[v303];
      goto LABEL_621;
  }

  v305 = -1;
LABEL_621:
  *(a2 + 160) = v305;
  if (v298 >= 0xFF)
  {
    v306 = 255;
  }

  else
  {
    v306 = v298;
  }

  if (v298 < 0)
  {
    v306 = 0;
  }

  switch(v177)
  {
    case 8:
      *(a2 + 162) = ac_qlookup_QTX[v306];
      if (v121)
      {
        break;
      }

      goto LABEL_636;
    case 12:
      *(a2 + 162) = ac_qlookup_12_QTX[v306];
      if (v121)
      {
        break;
      }

LABEL_636:
      v307 = *(v437 + 15832);
      v308 = *(v437 + 15824) + v298;
      if (v308 >= 0xFF)
      {
        v309 = 255;
      }

      else
      {
        v309 = *(v437 + 15824) + v298;
      }

      if (v308 >= 0)
      {
        v310 = v309;
      }

      else
      {
        v310 = 0;
      }

      switch(v177)
      {
        case 8:
          v311 = dc_qlookup_QTX;
          break;
        case 10:
          v311 = dc_qlookup_10_QTX;
          break;
        case 12:
          v311 = dc_qlookup_12_QTX;
          break;
        default:
          v312 = -1;
LABEL_650:
          *(a2 + 2768) = v312;
          v313 = v307 + v298;
          if (v313 >= 0xFF)
          {
            v314 = 255;
          }

          else
          {
            v314 = v313;
          }

          if (v313 >= 0)
          {
            v315 = v314;
          }

          else
          {
            v315 = 0;
          }

          switch(v177)
          {
            case 8:
              v316 = ac_qlookup_QTX;
              break;
            case 10:
              v316 = ac_qlookup_10_QTX;
              break;
            case 12:
              v316 = ac_qlookup_12_QTX;
              break;
            default:
              v317 = -1;
LABEL_664:
              *(a2 + 2770) = v317;
              v318 = *(v437 + 15836);
              v319 = *(v437 + 15828) + v298;
              if (v319 >= 0xFF)
              {
                v320 = 255;
              }

              else
              {
                v320 = *(v437 + 15828) + v298;
              }

              if (v319 >= 0)
              {
                v321 = v320;
              }

              else
              {
                v321 = 0;
              }

              switch(v177)
              {
                case 8:
                  v322 = dc_qlookup_QTX;
                  break;
                case 10:
                  v322 = dc_qlookup_10_QTX;
                  break;
                case 12:
                  v322 = dc_qlookup_12_QTX;
                  break;
                default:
                  v323 = -1;
LABEL_678:
                  *(a2 + 5376) = v323;
                  v324 = v318 + v298;
                  if (v324 >= 0xFF)
                  {
                    v325 = 255;
                  }

                  else
                  {
                    v325 = v324;
                  }

                  if (v324 >= 0)
                  {
                    v326 = v325;
                  }

                  else
                  {
                    v326 = 0;
                  }

                  switch(v177)
                  {
                    case 8:
                      v327 = ac_qlookup_QTX;
                      break;
                    case 10:
                      v327 = ac_qlookup_10_QTX;
                      break;
                    case 12:
                      v327 = ac_qlookup_12_QTX;
                      break;
                    default:
                      v328 = -1;
                      goto LABEL_692;
                  }

                  v328 = v327[v326];
LABEL_692:
                  *(a2 + 5378) = v328;
                  goto LABEL_693;
              }

              v323 = v322[v321];
              goto LABEL_678;
          }

          v317 = v316[v315];
          goto LABEL_664;
      }

      v312 = v311[v310];
      goto LABEL_650;
    case 10:
      *(a2 + 162) = ac_qlookup_10_QTX[v306];
      if (!v121)
      {
        goto LABEL_636;
      }

      break;
    default:
      *(a2 + 162) = -1;
      if (!v121)
      {
        goto LABEL_636;
      }

      break;
  }

LABEL_693:
  v329 = v173;
  if (v174)
  {
    v329 = v173;
    if (*(v437 + 34344))
    {
      v330 = v173 + *(v437 + 34276);
      if (v330 >= 0xFF)
      {
        v331 = 255;
      }

      else
      {
        v331 = v173 + *(v437 + 34276);
      }

      if (v330 >= 0)
      {
        v329 = v331;
      }

      else
      {
        v329 = 0;
      }
    }
  }

  v332 = *(v437 + 15820) + v329;
  if (v332 >= 0xFF)
  {
    v333 = 255;
  }

  else
  {
    v333 = *(v437 + 15820) + v329;
  }

  if (v332 >= 0)
  {
    v334 = v333;
  }

  else
  {
    v334 = 0;
  }

  switch(v177)
  {
    case 8:
      v335 = dc_qlookup_QTX;
      goto LABEL_713;
    case 12:
      v335 = dc_qlookup_12_QTX;
      goto LABEL_713;
    case 10:
      v335 = dc_qlookup_10_QTX;
LABEL_713:
      v336 = v335[v334];
      goto LABEL_715;
  }

  v336 = -1;
LABEL_715:
  *(a2 + 164) = v336;
  if (v329 >= 0xFF)
  {
    v337 = 255;
  }

  else
  {
    v337 = v329;
  }

  if (v329 < 0)
  {
    v337 = 0;
  }

  switch(v177)
  {
    case 8:
      *(a2 + 166) = ac_qlookup_QTX[v337];
      if (v121)
      {
        break;
      }

      goto LABEL_730;
    case 12:
      *(a2 + 166) = ac_qlookup_12_QTX[v337];
      if (v121)
      {
        break;
      }

LABEL_730:
      v338 = *(v437 + 15832);
      v339 = *(v437 + 15824) + v329;
      if (v339 >= 0xFF)
      {
        v340 = 255;
      }

      else
      {
        v340 = *(v437 + 15824) + v329;
      }

      if (v339 >= 0)
      {
        v341 = v340;
      }

      else
      {
        v341 = 0;
      }

      switch(v177)
      {
        case 8:
          v342 = dc_qlookup_QTX;
          break;
        case 10:
          v342 = dc_qlookup_10_QTX;
          break;
        case 12:
          v342 = dc_qlookup_12_QTX;
          break;
        default:
          v343 = -1;
LABEL_744:
          *(a2 + 2772) = v343;
          v344 = v338 + v329;
          if (v344 >= 0xFF)
          {
            v345 = 255;
          }

          else
          {
            v345 = v344;
          }

          if (v344 >= 0)
          {
            v346 = v345;
          }

          else
          {
            v346 = 0;
          }

          switch(v177)
          {
            case 8:
              v347 = ac_qlookup_QTX;
              break;
            case 10:
              v347 = ac_qlookup_10_QTX;
              break;
            case 12:
              v347 = ac_qlookup_12_QTX;
              break;
            default:
              v348 = -1;
LABEL_758:
              *(a2 + 2774) = v348;
              v349 = *(v437 + 15836);
              v350 = *(v437 + 15828) + v329;
              if (v350 >= 0xFF)
              {
                v351 = 255;
              }

              else
              {
                v351 = *(v437 + 15828) + v329;
              }

              if (v350 >= 0)
              {
                v352 = v351;
              }

              else
              {
                v352 = 0;
              }

              switch(v177)
              {
                case 8:
                  v353 = dc_qlookup_QTX;
                  break;
                case 10:
                  v353 = dc_qlookup_10_QTX;
                  break;
                case 12:
                  v353 = dc_qlookup_12_QTX;
                  break;
                default:
                  v354 = -1;
LABEL_772:
                  *(a2 + 5380) = v354;
                  v355 = v349 + v329;
                  if (v355 >= 0xFF)
                  {
                    v356 = 255;
                  }

                  else
                  {
                    v356 = v355;
                  }

                  if (v355 >= 0)
                  {
                    v357 = v356;
                  }

                  else
                  {
                    v357 = 0;
                  }

                  switch(v177)
                  {
                    case 8:
                      v358 = ac_qlookup_QTX;
                      break;
                    case 10:
                      v358 = ac_qlookup_10_QTX;
                      break;
                    case 12:
                      v358 = ac_qlookup_12_QTX;
                      break;
                    default:
                      v359 = -1;
                      goto LABEL_786;
                  }

                  v359 = v358[v357];
LABEL_786:
                  *(a2 + 5382) = v359;
                  goto LABEL_787;
              }

              v354 = v353[v352];
              goto LABEL_772;
          }

          v348 = v347[v346];
          goto LABEL_758;
      }

      v343 = v342[v341];
      goto LABEL_744;
    case 10:
      *(a2 + 166) = ac_qlookup_10_QTX[v337];
      if (!v121)
      {
        goto LABEL_730;
      }

      break;
    default:
      *(a2 + 166) = -1;
      if (!v121)
      {
        goto LABEL_730;
      }

      break;
  }

LABEL_787:
  v360 = v173;
  if (v174)
  {
    v360 = v173;
    if (*(v437 + 34348))
    {
      v361 = v173 + *(v437 + 34292);
      if (v361 >= 0xFF)
      {
        v362 = 255;
      }

      else
      {
        v362 = v173 + *(v437 + 34292);
      }

      if (v361 >= 0)
      {
        v360 = v362;
      }

      else
      {
        v360 = 0;
      }
    }
  }

  v363 = *(v437 + 15820) + v360;
  if (v363 >= 0xFF)
  {
    v364 = 255;
  }

  else
  {
    v364 = *(v437 + 15820) + v360;
  }

  if (v363 >= 0)
  {
    v365 = v364;
  }

  else
  {
    v365 = 0;
  }

  switch(v177)
  {
    case 8:
      v366 = dc_qlookup_QTX;
      goto LABEL_807;
    case 12:
      v366 = dc_qlookup_12_QTX;
      goto LABEL_807;
    case 10:
      v366 = dc_qlookup_10_QTX;
LABEL_807:
      v367 = v366[v365];
      goto LABEL_809;
  }

  v367 = -1;
LABEL_809:
  *(a2 + 168) = v367;
  if (v360 >= 0xFF)
  {
    v368 = 255;
  }

  else
  {
    v368 = v360;
  }

  if (v360 < 0)
  {
    v368 = 0;
  }

  switch(v177)
  {
    case 8:
      *(a2 + 170) = ac_qlookup_QTX[v368];
      if (v121)
      {
        break;
      }

      goto LABEL_824;
    case 12:
      *(a2 + 170) = ac_qlookup_12_QTX[v368];
      if (v121)
      {
        break;
      }

LABEL_824:
      v369 = *(v437 + 15832);
      v370 = *(v437 + 15824) + v360;
      if (v370 >= 0xFF)
      {
        v371 = 255;
      }

      else
      {
        v371 = *(v437 + 15824) + v360;
      }

      if (v370 >= 0)
      {
        v372 = v371;
      }

      else
      {
        v372 = 0;
      }

      switch(v177)
      {
        case 8:
          v373 = dc_qlookup_QTX;
          break;
        case 10:
          v373 = dc_qlookup_10_QTX;
          break;
        case 12:
          v373 = dc_qlookup_12_QTX;
          break;
        default:
          v374 = -1;
LABEL_838:
          *(a2 + 2776) = v374;
          v375 = v369 + v360;
          if (v375 >= 0xFF)
          {
            v376 = 255;
          }

          else
          {
            v376 = v375;
          }

          if (v375 >= 0)
          {
            v377 = v376;
          }

          else
          {
            v377 = 0;
          }

          switch(v177)
          {
            case 8:
              v378 = ac_qlookup_QTX;
              break;
            case 10:
              v378 = ac_qlookup_10_QTX;
              break;
            case 12:
              v378 = ac_qlookup_12_QTX;
              break;
            default:
              v379 = -1;
LABEL_852:
              *(a2 + 2778) = v379;
              v380 = *(v437 + 15836);
              v381 = *(v437 + 15828) + v360;
              if (v381 >= 0xFF)
              {
                v382 = 255;
              }

              else
              {
                v382 = *(v437 + 15828) + v360;
              }

              if (v381 >= 0)
              {
                v383 = v382;
              }

              else
              {
                v383 = 0;
              }

              switch(v177)
              {
                case 8:
                  v384 = dc_qlookup_QTX;
                  break;
                case 10:
                  v384 = dc_qlookup_10_QTX;
                  break;
                case 12:
                  v384 = dc_qlookup_12_QTX;
                  break;
                default:
                  v385 = -1;
LABEL_866:
                  *(a2 + 5384) = v385;
                  v386 = v380 + v360;
                  if (v386 >= 0xFF)
                  {
                    v387 = 255;
                  }

                  else
                  {
                    v387 = v386;
                  }

                  if (v386 >= 0)
                  {
                    v388 = v387;
                  }

                  else
                  {
                    v388 = 0;
                  }

                  switch(v177)
                  {
                    case 8:
                      v389 = ac_qlookup_QTX;
                      break;
                    case 10:
                      v389 = ac_qlookup_10_QTX;
                      break;
                    case 12:
                      v389 = ac_qlookup_12_QTX;
                      break;
                    default:
                      v390 = -1;
                      goto LABEL_880;
                  }

                  v390 = v389[v388];
LABEL_880:
                  *(a2 + 5386) = v390;
                  goto LABEL_881;
              }

              v385 = v384[v383];
              goto LABEL_866;
          }

          v379 = v378[v377];
          goto LABEL_852;
      }

      v374 = v373[v372];
      goto LABEL_838;
    case 10:
      *(a2 + 170) = ac_qlookup_10_QTX[v368];
      if (!v121)
      {
        goto LABEL_824;
      }

      break;
    default:
      *(a2 + 170) = -1;
      if (!v121)
      {
        goto LABEL_824;
      }

      break;
  }

LABEL_881:
  if (v174 && (*(v437 + 34352) & 1) != 0)
  {
    v391 = v173 + *(v437 + 34308);
    if (v391 >= 0xFF)
    {
      v392 = 255;
    }

    else
    {
      v392 = v391;
    }

    if (v391 >= 0)
    {
      v173 = v392;
    }

    else
    {
      v173 = 0;
    }
  }

  v393 = *(v437 + 15820) + v173;
  if (v393 >= 0xFF)
  {
    v394 = 255;
  }

  else
  {
    v394 = *(v437 + 15820) + v173;
  }

  if (v393 >= 0)
  {
    v395 = v394;
  }

  else
  {
    v395 = 0;
  }

  switch(v177)
  {
    case 8:
      v396 = dc_qlookup_QTX;
      goto LABEL_901;
    case 12:
      v396 = dc_qlookup_12_QTX;
      goto LABEL_901;
    case 10:
      v396 = dc_qlookup_10_QTX;
LABEL_901:
      v397 = v396[v395];
      goto LABEL_903;
  }

  v397 = -1;
LABEL_903:
  *(a2 + 172) = v397;
  if (v173 >= 0xFF)
  {
    v398 = 255;
  }

  else
  {
    v398 = v173;
  }

  if (v173 < 0)
  {
    v398 = 0;
  }

  switch(v177)
  {
    case 8:
      *(a2 + 174) = ac_qlookup_QTX[v398];
      if (v121)
      {
        break;
      }

      goto LABEL_918;
    case 12:
      *(a2 + 174) = ac_qlookup_12_QTX[v398];
      if (v121)
      {
        break;
      }

LABEL_918:
      v399 = *(v437 + 15832);
      v400 = *(v437 + 15824) + v173;
      if (v400 >= 0xFF)
      {
        v401 = 255;
      }

      else
      {
        v401 = *(v437 + 15824) + v173;
      }

      if (v400 >= 0)
      {
        v402 = v401;
      }

      else
      {
        v402 = 0;
      }

      switch(v177)
      {
        case 8:
          v403 = dc_qlookup_QTX;
          break;
        case 10:
          v403 = dc_qlookup_10_QTX;
          break;
        case 12:
          v403 = dc_qlookup_12_QTX;
          break;
        default:
          v404 = -1;
LABEL_932:
          *(a2 + 2780) = v404;
          v405 = v399 + v173;
          if (v405 >= 0xFF)
          {
            v406 = 255;
          }

          else
          {
            v406 = v405;
          }

          if (v405 >= 0)
          {
            v407 = v406;
          }

          else
          {
            v407 = 0;
          }

          switch(v177)
          {
            case 8:
              v408 = ac_qlookup_QTX;
              break;
            case 10:
              v408 = ac_qlookup_10_QTX;
              break;
            case 12:
              v408 = ac_qlookup_12_QTX;
              break;
            default:
              v409 = -1;
LABEL_946:
              *(a2 + 2782) = v409;
              v410 = *(v437 + 15836);
              v411 = *(v437 + 15828) + v173;
              if (v411 >= 0xFF)
              {
                v412 = 255;
              }

              else
              {
                v412 = *(v437 + 15828) + v173;
              }

              if (v411 >= 0)
              {
                v413 = v412;
              }

              else
              {
                v413 = 0;
              }

              switch(v177)
              {
                case 8:
                  v414 = dc_qlookup_QTX;
                  break;
                case 10:
                  v414 = dc_qlookup_10_QTX;
                  break;
                case 12:
                  v414 = dc_qlookup_12_QTX;
                  break;
                default:
                  v415 = -1;
LABEL_960:
                  *(a2 + 5388) = v415;
                  v416 = v410 + v173;
                  if (v416 >= 0xFF)
                  {
                    v417 = 255;
                  }

                  else
                  {
                    v417 = v416;
                  }

                  if (v416 >= 0)
                  {
                    v418 = v417;
                  }

                  else
                  {
                    v418 = 0;
                  }

                  switch(v177)
                  {
                    case 8:
                      v419 = ac_qlookup_QTX;
                      break;
                    case 10:
                      v419 = ac_qlookup_10_QTX;
                      break;
                    case 12:
                      v419 = ac_qlookup_12_QTX;
                      break;
                    default:
                      v420 = -1;
                      goto LABEL_974;
                  }

                  v420 = v419[v418];
LABEL_974:
                  *(a2 + 5390) = v420;
                  goto LABEL_975;
              }

              v415 = v414[v413];
              goto LABEL_960;
          }

          v409 = v408[v407];
          goto LABEL_946;
      }

      v404 = v403[v402];
      goto LABEL_932;
    case 10:
      *(a2 + 174) = ac_qlookup_10_QTX[v398];
      if (!v121)
      {
        goto LABEL_918;
      }

      break;
    default:
      *(a2 + 174) = -1;
      if (!v121)
      {
        goto LABEL_918;
      }

      break;
  }

LABEL_975:
  if (v77[144])
  {
    v421 = &av1_ss_size_lookup[4 * v431];
    v422 = v421[2 * *(a2 + 20) + *(a2 + 24)];
    v423 = 2 * *(a2 + 12) * (v121 == 0);
    v424 = mi_size_high_5[v422];
    bzero(*(a2 + 128), mi_size_wide_6[v422]);
    bzero(*(a2 + 136), v424);
    if (v423)
    {
      v425 = v421[2 * *(a2 + 2628) + *(a2 + 2632)];
      v426 = mi_size_high_5[v425];
      bzero(*(a2 + 2736), mi_size_wide_6[v425]);
      bzero(*(a2 + 2744), v426);
      v427 = v421[2 * *(a2 + 5236) + *(a2 + 5240)];
      v428 = mi_size_high_5[v427];
      bzero(*(a2 + 5344), mi_size_wide_6[v427]);
      bzero(*(a2 + 5352), v428);
    }
  }

  return decode_token_recon_block(v437, a2, a5, a7);
}