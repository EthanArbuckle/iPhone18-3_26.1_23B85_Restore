uint64_t update_base_rtt(uint64_t a1, unsigned int a2)
{
  result = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  v5 = *(*(a1 + 80) + 496);
  if (v5)
  {
    v6 = *(v5 + 1632);
    if (v6)
    {
      if (v6[11])
      {
        v7 = *(a1 + 748);
        if ((v7 & 0x100) != 0 && *(result + 308) - *(a1 + 1048) >= 5000 && *(a1 + 244) <= *(sysctls + 4) + v6[10])
        {
          *(a1 + 748) = v7 & 0xFFFFFEFF;
          *(a1 + 1048) = 0;
        }

        v8 = (*(a1 + 1920) + 1) & 3;
        *(a1 + 1920) = v8;
        *(a1 + 1900 + 4 * v8) = a2;
        v9 = *(a1 + 1900);
        if (*(a1 + 1904) - 1 < (v9 - 1))
        {
          v9 = *(a1 + 1904);
        }

        if (*(a1 + 1908) - 1 < (v9 - 1))
        {
          v9 = *(a1 + 1908);
        }

        if (*(a1 + 1912) - 1 < (v9 - 1))
        {
          v9 = *(a1 + 1912);
        }

        *(a1 + 1916) = v9;
        v10 = *(result + 308) - v6[11];
        if (v10 < 60000)
        {
          v24 = *(v6 + 72);
          v25 = v6[v24];
          if (v25 >= a2)
          {
            v25 = a2;
          }

          v6[v24] = v25;
          v26 = v6[10];
          if (v26)
          {
            if (v26 >= a2)
            {
              v26 = a2;
            }

            v6[10] = v26;
          }

          else
          {
            v6[10] = a2;
          }
        }

        else
        {
          v11 = v10 / 0xEA60u;
          if (v10 >= 0xA1220)
          {
            v11 = 11;
          }

          v12 = *(v6 + 72);
          LODWORD(v13) = v12 + 1;
          if (v11 >= 2)
          {
            if (v11 == 2)
            {
              goto LABEL_22;
            }

            v14 = (v11 - 1) & 0xFFFFFFFE;
            v15 = v12 + 2;
            v16 = v12 + 1;
            v17 = v14;
            do
            {
              v6[v16 % 0xA] = 0;
              v6[v15 % 0xA] = 0;
              v16 += 2;
              v15 += 2;
              v17 -= 2;
            }

            while (v17);
            LODWORD(v13) = v13 + v14;
            if (v11 - 1 != v14)
            {
LABEL_22:
              v18 = v11 + v12;
              v19 = &v6[v13];
              v13 = v13;
              do
              {
                v19[-10 * (v13 / 0xA)] = 0;
                ++v13;
                ++v19;
              }

              while (v13 < v18);
            }
          }

          v20 = v13 % 0xA;
          *(v6 + 72) = v20;
          v6[v20] = a2;
          v21 = *(result + 308);
          v22 = *v6;
          result = v6[8];
          if (v6[1] - 1 < *v6 - 1)
          {
            v22 = v6[1];
          }

          if (v6[2] - 1 < v22 - 1)
          {
            v22 = v6[2];
          }

          if (v6[3] - 1 < v22 - 1)
          {
            v22 = v6[3];
          }

          if (v6[4] - 1 < v22 - 1)
          {
            v22 = v6[4];
          }

          if (v6[5] - 1 < v22 - 1)
          {
            v22 = v6[5];
          }

          if (v6[6] - 1 < v22 - 1)
          {
            v22 = v6[6];
          }

          if (v6[7] - 1 < v22 - 1)
          {
            v22 = v6[7];
          }

          if (result - 1 < v22 - 1)
          {
            v22 = v6[8];
          }

          if (v6[9] - 1 < v22 - 1)
          {
            v22 = v6[9];
          }

          v6[10] = v22;
          v6[11] = v21;
        }
      }

      else
      {
        v23 = *(result + 308);
        *(v6 + 72) = 0;
        *v6 = a2;
        v6[10] = a2;
        v6[11] = v23;
        *(a1 + 1920) = 0;
        *(a1 + 1900) = a2;
        *(a1 + 1916) = a2;
      }
    }
  }

  return result;
}

void set_frame_service_class(uint64_t a1, uint64_t a2, int a3, char a4, int *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  if ((a3 + 1) >= 2)
  {
    v12 = 524432;
    if (a3 <= 499)
    {
      if (a3 > 299)
      {
        if (a3 == 300)
        {
          v9 = 1572880;
          goto LABEL_3;
        }

        if (a3 == 400)
        {
          v9 = 2097184;
          goto LABEL_3;
        }
      }

      else
      {
        if (a3 == 100)
        {
          goto LABEL_11;
        }

        if (a3 == 200)
        {
LABEL_9:
          v12 = 1048704;
          goto LABEL_11;
        }
      }
    }

    else if (a3 <= 699)
    {
      if (a3 == 500)
      {
        v9 = 2621728;
        goto LABEL_3;
      }

      if (a3 == 600)
      {
        v9 = 3146000;
        goto LABEL_3;
      }
    }

    else
    {
      switch(a3)
      {
        case 700:
          v9 = 3670272;
          goto LABEL_3;
        case 800:
          v9 = 4194688;
          goto LABEL_3;
        case 900:
          v9 = 4718992;
          goto LABEL_3;
      }
    }

    v28 = *a2;
    v27 = a4;
    v25 = __nwlog_obj();
    os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    v26 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort())
    {
      goto LABEL_55;
    }

    free(v26);
    v9 = 0;
    a4 = v27;
    v8 = v28;
    goto LABEL_3;
  }

  v9 = 0;
LABEL_3:
  if ((*(a2 + 369) & 0x20) != 0)
  {
    goto LABEL_9;
  }

  if (v9 && v9 != 2097184 && v9 != 1572880 || !*(v8 + 448))
  {
    v12 = v9;
    goto LABEL_11;
  }

  v10 = a4;
  v11 = so_throttle_best_effort(a2);
  a4 = v10;
  v12 = v9;
  if (v11)
  {
    goto LABEL_9;
  }

LABEL_11:
  if ((*(a2 + 369) & 0x20) != 0 || (v13 = *(a2 + 552), v13 == 200) || v13 == 100)
  {
    *(a1 + 186) |= 0x10u;
    v13 = *(a2 + 552);
  }

  if ((v13 - 801) >= 0xFFFFFED3)
  {
    *(a1 + 186) |= 0x20u;
  }

  if ((a4 & 6) != 0)
  {
    v14 = 4718992;
  }

  else
  {
    v14 = v12;
  }

  if (v12 == 1048704)
  {
    v15 = 1048704;
  }

  else
  {
    v15 = v14;
  }

  if (v12 == 524432)
  {
    v16 = 524432;
  }

  else
  {
    v16 = v15;
  }

  set_tcp_stream_priority(a2);
  v17 = v16 >> 7;
  if (v17 < 4)
  {
    goto LABEL_27;
  }

  v23 = __nwlog_obj();
  os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
  v24 = _os_log_send_and_compose_impl();
  if (__nwlog_should_abort())
  {
LABEL_55:
    __break(1u);
    return;
  }

  free(v24);
LABEL_27:
  v18 = a2 + 32 * v17;
  v19 = v18 + 648;
  ++*(v18 + 664);
  v20 = *(a1 + 52);
  if (v20)
  {
    v21 = (v20 - (*(a1 + 56) + *(a1 + 60)));
  }

  else
  {
    v21 = 0;
  }

  *(v19 + 24) += v21;
  *a5 = v16;
  v22 = *MEMORY[0x1E69E9840];
}

uint64_t tcp_dooptions(uint64_t result, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3 >= 1)
  {
    do
    {
      v7 = *a2;
      if (v7 == 1)
      {
        v5 = 1;
      }

      else
      {
        if (*a2)
        {
          v8 = a3 == 1;
        }

        else
        {
          v8 = 1;
        }

        if (v8)
        {
          return result;
        }

        v5 = a2[1];
        v9 = v5 - 2;
        if (v5 < 2 || a3 < v5)
        {
          return result;
        }

        if (*a2 > 7u)
        {
          if (*a2 > 0xABu)
          {
            if ((v7 == 172 || v7 == 174) && v5 >= 5)
            {
              v13 = (v5 - 2) / 3u;
              if ((-3 * v13) == (2 - v5))
              {
                *(a5 + 32) = v13;
                *(a5 + 40) = a2 + 2;
                *(a5 + 48) = v7 == 174;
              }
            }

            goto LABEL_4;
          }

          if (v7 == 8)
          {
            if (v5 == 10)
            {
              *a5 |= 1u;
              *(a5 + 4) = bswap32(*(a2 + 2));
              v14 = *(a2 + 6);
              *(a5 + 8) = v14;
              *(a5 + 8) = bswap32(v14) - *(result + 288);
              v15 = *(result + 88);
              if ((v15 & 0x80) == 0)
              {
                *(result + 88) = v15 | 0x80;
              }

              v5 = 10;
            }

            goto LABEL_4;
          }

          if (v7 == 34)
          {
            if (v5 != 2)
            {
              if ((v5 - 19) >= 0xF3u && (*(result + 12) - 1) <= 1)
              {
                *a5 |= 0x400u;
                *(a5 + 24) = a2 + 1;
              }

              goto LABEL_4;
            }

            if (*(result + 12) == 1)
            {
              v11 = *a5 | 0x800;
LABEL_56:
              *a5 = v11;
              v5 = 2;
              goto LABEL_4;
            }

            goto LABEL_50;
          }
        }

        else
        {
          if (*a2 <= 3u)
          {
            if (v7 == 2)
            {
              if (v5 == 4)
              {
                if ((*(a4 + 13) & 2) != 0)
                {
                  *(a5 + 12) = bswap32(*(a2 + 1)) >> 16;
                  *a5 |= 0x10u;
                }

                v5 = 4;
              }
            }

            else if (v7 == 3 && v5 == 3)
            {
              if ((*(a4 + 13) & 2) != 0)
              {
                *a5 |= 0x20u;
                v16 = a2[2];
                if (v16 >= 0xE)
                {
                  LOBYTE(v16) = 14;
                }

                *(a5 + 14) = v16;
                v5 = 3;
              }

              else
              {
                v5 = 3;
              }
            }

            goto LABEL_4;
          }

          if (v7 != 4)
          {
            if (v7 == 5 && v5 >= 3 && (v9 & 7) == 0)
            {
              *(a5 + 15) = v9 >> 3;
              *(a5 + 16) = a2 + 2;
              v12 = *(result + 1064);
              if (v12)
              {
                ++*(v12 + 592);
              }
            }

            goto LABEL_4;
          }

          if (v5 == 2)
          {
            if ((*(a4 + 13) & 2) != 0)
            {
              v11 = *a5 | 0x100;
              goto LABEL_56;
            }

LABEL_50:
            v5 = 2;
          }
        }
      }

LABEL_4:
      a2 += v5;
      v6 = __OFSUB__(a3, v5);
      a3 -= v5;
    }

    while (!((a3 < 0) ^ v6 | (a3 == 0)));
  }

  return result;
}

void tcp_finalize_options(uint64_t a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2)
  {
    *(a1 + 88) |= 0x100u;
    *(a1 + 284) = a2[1];
    v8 = a3;
    v9 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
    a3 = v8;
    *(a1 + 292) = *(v9 + 308);
    v5 = *a2;
    if ((*a2 & 0x10) == 0)
    {
LABEL_3:
      v6 = *(a1 + 748);
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  tcp_mss(a1, *(a2 + 6), a3);
  v5 = *a2;
  v6 = *(a1 + 748);
  if ((v6 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      return;
    }

    goto LABEL_5;
  }

LABEL_9:
  if ((v5 & 0x100) != 0)
  {
    *(a1 + 88) |= 0x200u;
    if ((v5 & 0x20) == 0)
    {
      return;
    }
  }

  else
  {
    *(a1 + 748) = v6 & 0xFFFFFFDF;
    if ((v5 & 0x20) == 0)
    {
      return;
    }
  }

LABEL_5:
  v7 = *(a1 + 88);
  *(a1 + 88) = v7 | 0x40;
  *(a1 + 271) = *(a2 + 14);
  if (*(a1 + 270))
  {
    *(a1 + 88) = v7 | 0x60;
  }
}

void tcp_mss(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80);
  if (*(*(v3 + 224) + 376) < 0 || !*(a1 + 12))
  {
LABEL_137:
    v62 = *MEMORY[0x1E69E9840];
    return;
  }

  v6 = *(v3 + 2380);
  if ((v6 & 2) != 0)
  {
    v7 = -60;
  }

  else
  {
    v7 = -40;
  }

  v8 = *(a1 + 80);
  if ((*(v3 + 2380) & 2) != 0)
  {
    v9 = tcp_rtlookup6(v8, a3);
  }

  else
  {
    v9 = tcp_rtlookup(v8, a3);
  }

  v10 = v9;
  if (!v9)
  {
    v15 = 148;
    if ((v6 & 2) == 0)
    {
      v15 = 144;
    }

    v16 = *(sysctls + v15);
    *(a1 + 200) = v16;
    *(a1 + 160) = v16;
    goto LABEL_137;
  }

  v11 = *(v9 + 216);
  if (*(v11 + 1224) == 23 && *(sysctls + 48) >= 1 && (*(v11 + 1184) - 9601) >> 7 <= 0x39C)
  {
    *(a1 + 88) |= 0x80000u;
  }

  v12 = *(v3 + 224);
  v13 = a2;
  if (a2 == -1)
  {
    v17 = *(v9 + 1632);
    if (v17)
    {
      v13 = *(v17 + 52);
      v14 = sysctls;
      if (!v13)
      {
LABEL_22:
        v18 = 37;
        if ((v6 & 2) == 0)
        {
          v18 = 36;
        }

        v13 = v14[v18];
        goto LABEL_30;
      }
    }

    else
    {
      v14 = sysctls;
      v13 = -1;
    }
  }

  else
  {
    v14 = sysctls;
    if (!a2)
    {
      goto LABEL_22;
    }
  }

  if (v13 <= v14[40])
  {
    v13 = v14[40];
  }

  if (v13 <= 0x40)
  {
    v13 = 64;
  }

LABEL_30:
  v19 = *(v9 + 1632);
  v20 = v19 == 0;
  if (!v19)
  {
    *(a1 + 236) = 30;
    v22 = *(v11 + 1188);
    goto LABEL_39;
  }

  v19[13] = v13;
  if (*(a1 + 204) || (v37 = v19[16]) == 0)
  {
    *(a1 + 236) = 30;
    goto LABEL_33;
  }

  if (*(a1 + 1880) != 1)
  {
    *(a1 + 236) = 30;
    v38 = ((138547333 * v37) >> 32) + ((v37 - ((138547333 * v37) >> 32)) >> 1);
    v39 = *(a1 + 1064);
    if (v39)
    {
      ++*(v39 + 1280);
      v40 = v19[17];
      if (v40)
      {
        v40 /= 0x3Eu;
        ++*(v39 + 1288);
      }
    }

    else
    {
      v47 = v19[17];
      if (v47)
      {
        v40 = v47 / 0x3E;
      }

      else
      {
        v40 = 0;
      }
    }

    v48 = v38 >> 4;
    if (*(a1 + 12) < 4)
    {
      v49 = 0;
    }

    else
    {
      v49 = v14[43];
    }

    v50 = (v40 + (v48 >> 3)) >> 2;
    v51 = 30;
    if (v50 <= 0x1E)
    {
      v50 = 30;
    }

    v52 = v49 + v50;
    *(a1 + 196) = v52;
    if (v52 >= 0x1E)
    {
      if (v52 < 0xFA01)
      {
        goto LABEL_33;
      }

      v51 = 64000;
    }

    *(a1 + 196) = v51;
  }

LABEL_33:
  v21 = v19[12];
  v22 = *(v11 + 1188);
  if (v21)
  {
    v20 = 0;
    if (v21 >= v22)
    {
      v23 = *(v11 + 1188);
    }

    else
    {
      v23 = v19[12];
    }

    v24 = v23 + v7;
    goto LABEL_44;
  }

LABEL_39:
  v25 = v22 + v7;
  if ((v6 & 2) != 0)
  {
    v24 = v14[37];
  }

  else
  {
    v24 = v14[36];
  }

  if (v25 < v24)
  {
    v24 = v25;
  }

LABEL_44:
  if (v24 < v13)
  {
    v13 = v24;
  }

  *(a1 + 160) = v13;
  if ((*(a1 + 88) & 0x100) != 0 || a2 == -1)
  {
    v27 = v13 - 12;
  }

  else
  {
    v27 = v13;
  }

  if ((*(a1 + 88) & 0x88) == 0x80)
  {
    v28 = v27;
  }

  else
  {
    v28 = v13;
  }

  *(a1 + 200) = v28;
  v29 = v19 + 14;
  v30 = (v12 + 388);
  if (v20)
  {
    v29 = (v12 + 388);
  }

  v31 = *v29;
  if (v31 <= *(v12 + 388))
  {
    v32 = *(v12 + 388);
  }

  else
  {
    v32 = v31;
  }

  v33 = v32;
  if (v32 >= v28)
  {
    v33 = (v28 + v32 - 1) / v28 * v28;
    if (v33 <= 0x71C71C)
    {
      *(v12 + 388) = v33;
      v34 = *(*(v12 + 432) + 24);
      if ((*(v12 + 416) & 4) != 0)
      {
        v35 = (v28 + v32 - 1) / v28 * v28;
        if (v34)
        {
          all_stats = nw_protocol_tcp_get_all_stats();
          v35 = *v30;
          if (all_stats)
          {
            *(all_stats + 88) = v35;
          }
        }
      }

      else
      {
        v35 = (v28 + v32 - 1) / v28 * v28;
        if (v34)
        {
          v36 = nw_protocol_tcp_get_all_stats();
          v35 = *v30;
          if (v36)
          {
            *(v36 + 100) = v35;
          }
        }
      }

      if (*(v12 + 392) > v35)
      {
        *(v12 + 392) = v35;
      }
    }

    v32 = v28;
  }

  *(a1 + 200) = v32;
  if (v32)
  {
LABEL_78:
    v42 = *(*v12 + 240);
    if (*(v11 + 1224) != 255 && *(v11 + 1168) != 255 || *(v42 + 12) > 5 || (*(v42 + 91) & 0x20) != 0 || (*(v11 + 9) & 0x80) == 0)
    {
LABEL_109:
      v53 = *(v12 + 468);
      if (v33 > v53)
      {
        v53 = v33;
      }

      if (v53 > v32)
      {
        v54 = (v32 + v53 - 1) / v32 * v32;
        if (v54 <= 0x71C71C)
        {
          *(v12 + 468) = v54;
          v55 = *(*(v12 + 512) + 24);
          if ((*(v12 + 496) & 4) != 0)
          {
            if (v55)
            {
              v57 = nw_protocol_tcp_get_all_stats();
              v54 = *(v12 + 468);
              if (v57)
              {
                *(v57 + 88) = v54;
              }
            }
          }

          else if (v55)
          {
            v56 = nw_protocol_tcp_get_all_stats();
            v54 = *(v12 + 468);
            if (v56)
            {
              *(v56 + 100) = v54;
            }
          }

          if (*(v12 + 472) > v54)
          {
            *(v12 + 472) = v54;
          }
        }
      }

      set_tcp_stream_priority(v12);
      v58 = *(v10 + 1632);
      if (v58 && (v59 = *(v58 + 60)) != 0)
      {
        if (2 * v32 > v59)
        {
          v59 = 2 * v32;
        }

        *(a1 + 152) = v59;
        v60 = *(a1 + 1064);
        if (v60)
        {
          ++*(v60 + 1296);
        }
      }

      else
      {
        *(a1 + 152) = 1073725440;
      }

      v61 = *(tcp_cc_algo_list[*(a1 + 272)] + 40);
      if (v61)
      {
        v61(a1);
      }

      if (*(sysctls + 284) == 1 && (~*(a1 + 88) & 0x180) == 0 && (*(sysctls + 40) == 1 || (*(v12 + 369) & 0x40) != 0))
      {
        if (off_1ED4BF6E8)
        {
          off_1ED4BF6E8(a1);
        }
      }

      goto LABEL_137;
    }

    v43 = *(v42 + 160);
    v44 = *(v42 + 200) - v43;
    v45 = *(v11 + 72);
    if (v45 == 1200)
    {
      if (v43 <= 0x4B0)
      {
        goto LABEL_107;
      }

      v46 = 1200;
    }

    else
    {
      if (v45 != 512)
      {
        if (*(v11 + 72) || (v46 = *(v42 + 740), !*(v42 + 740)) || v43 >= v46)
        {
LABEL_107:
          *(v42 + 200) = v44 + v43;
          if (v43 == *(v42 + 740))
          {
            *(v42 + 740) = 0;
          }

          goto LABEL_109;
        }

LABEL_106:
        *(v42 + 160) = v46;
        v43 = v46;
        goto LABEL_107;
      }

      if (v43 < 0x201)
      {
        goto LABEL_107;
      }

      v46 = 512;
    }

    *(v42 + 740) = v43;
    goto LABEL_106;
  }

  v63 = __nwlog_obj();
  os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);
  v64 = _os_log_send_and_compose_impl();
  if (!__nwlog_should_abort())
  {
    free(v64);
    v32 = 0;
    goto LABEL_78;
  }

  __break(1u);
}

void nw_proto_tcp_ecn_update_cache(uint64_t a1, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v9 = "nw_proto_tcp_ecn_update_cache";
    v4 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v5 = __nwlog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v9 = "nw_proto_tcp_ecn_update_cache";
        v6 = "%{public}s called with null so, backtrace limit exceeded";
LABEL_17:
        _os_log_impl(&dword_1889BA000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0xCu);
      }
    }

LABEL_18:
    if (v4)
    {
      free(v4);
    }

    goto LABEL_20;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v9 = "nw_proto_tcp_ecn_update_cache";
    v4 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v5 = __nwlog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v9 = "nw_proto_tcp_ecn_update_cache";
        v6 = "%{public}s called with null ecn_cache_buffer, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

    goto LABEL_18;
  }

  v2 = *(a1 + 40);
  if (!v2 || (*(v2 + 5436) = *(v2 + 5436) & 0xFFFDFFFF | ((*a2 & 1) << 17), !*(v2 + 5336)) || !*(v2 + 5344))
  {
LABEL_20:
    v7 = *MEMORY[0x1E69E9840];
    return;
  }

  v3 = *MEMORY[0x1E69E9840];

  MEMORY[0x1EEDD3E88]();
}

uint64_t tcp_sbrcv_tstmp_check(uint64_t result)
{
  if ((~*(result + 88) & 0x180) == 0)
  {
    return result;
  }

  v1 = *(*(result + 80) + 224);
  v2 = *(v1 + 496);
  if ((v2 & 0x400) == 0)
  {
    return result;
  }

  v3 = 2 * *(sysctls + 232);
  v4 = v3 >= 0xFFFF << *(result + 269) ? 0xFFFF << *(result + 269) : 2 * *(sysctls + 232);
  if (v4 <= *(v1 + 468) || v4 > 0x71C71C)
  {
    return result;
  }

  *(v1 + 468) = v4;
  v6 = *(*(v1 + 512) + 24);
  if ((v2 & 4) != 0)
  {
    v7 = v4;
    if (v6)
    {
      v8 = result;
      v11 = *(*(v1 + 512) + 24);
      all_stats = nw_protocol_tcp_get_all_stats();
      v7 = *(v1 + 468);
      if (all_stats)
      {
        *(all_stats + 88) = v7;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v7 = v4;
    if (v6)
    {
      v8 = result;
      v9 = *(*(v1 + 512) + 24);
      v10 = nw_protocol_tcp_get_all_stats();
      v7 = *(v1 + 468);
      if (v10)
      {
        *(v10 + 100) = v7;
      }

LABEL_17:
      result = v8;
    }
  }

  if (*(v1 + 472) > v7)
  {
    *(v1 + 472) = v7;
  }

  v13 = *(v1 + 500);
  if (v13 <= v4)
  {
    v13 = v4;
  }

  if (v13 >= v3)
  {
    v13 = v3;
  }

  if (v13 >= 0xFFFF << *(result + 269))
  {
    v13 = 0xFFFF << *(result + 269);
  }

  *(v1 + 500) = v13;
  return result;
}

uint64_t soisconnected(uint64_t result)
{
  v2 = result;
  v3 = *(result + 296);
  v4 = *(result + 376);
  v5 = v4 & 0xFBF1 | 2;
  *(result + 376) = v5;
  *(result + 460) = 0;
  *(result + 540) = 0;
  v6 = v4 & 0x800;
  if (v3)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = *(result + 32);
    if (v8)
    {
      v9 = *(v8 + 24);
      if (!v9 || (result = v9(result), (v8 = v2[4]) != 0))
      {
        v10 = *v8;
        if (*v8)
        {

          return v10(v2);
        }
      }
    }
  }

  else
  {
    *(result + 376) = v5 & 0xE3F3 | 0x1000;
    if (*(*(v3 + 8) + 32))
    {
      (*(*(result + 8) + 24))(result, 0, v1);
      result = (*(*(v3 + 8) + 16))(v3, 1, v1);
    }

    v11 = v2[42];
    v12 = v2[43];
    v13 = (v3 + 312);
    if (v11)
    {
      v13 = (v11 + 344);
    }

    *v13 = v12;
    *v12 = v11;
    --*(v3 + 356);
    v14 = *(v3 + 328);
    v2[42] = 0;
    v2[43] = v14;
    *v14 = v2;
    *(v3 + 328) = v2 + 42;
    v15 = *(v3 + 32);
    if (v15)
    {
      v16 = *(v15 + 24);
      if (!v16 || (result = v16(v3), (v15 = *(v3 + 32)) != 0))
      {
        v17 = *(v15 + 48);
        if (v17)
        {
          result = v17(v3);
        }
      }
    }

    v18 = *(v3 + 8);
    if (*(v18 + 32))
    {
      (*(v18 + 24))(v3, 1, v1);
      v19 = *(v2[1] + 16);

      return v19(v2, 0, v1);
    }
  }

  return result;
}

void tcp_xmit_timer(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a2 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2;
  }

  if (v7 >= 60001)
  {
    v8 = *(*(a1 + 80) + 224);
    if (!v8 || (*(v8 + 776) & 2) == 0)
    {
      v9 = __nwlog_tcp_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = (v8 + 556);
        v51 = "tcp_xmit_timer";
        v50 = 136446722;
        if (!v8)
        {
          v10 = &unk_188A285CF;
        }

        v52 = 2082;
        v53 = v10;
        v54 = 1024;
        v55 = v7;
        _os_log_impl(&dword_1889BA000, v9, OS_LOG_TYPE_INFO, "%{public}s %{public}s rtt is %d - maxing it at 4 x MSL\n", &v50, 0x1Cu);
      }
    }

    v7 = 60000;
  }

  v11 = *(*(a1 + 80) + 448);
  if (!v11 || (*(v11 + 1198) & 0x10) == 0 || *(a1 + 112) + 1 != a4)
  {
    v12 = *(a1 + 748);
    if ((v12 & 0x40) != 0)
    {
      if (a4 - *(a1 + 92) < 1 || a4 - *(a1 + 96) > 0 || a3 && a3 - *(a1 + 524) < 0)
      {
        goto LABEL_89;
      }

      *(a1 + 748) = v12 & 0xFFFFFFBF;
      *(a1 + 524) = 0;
      v22 = *(a1 + 508);
      if (v22 <= v7)
      {
        v22 = v7;
      }

      v23 = 32 * v22;
      *(a1 + 204) = v23;
      v24 = *(a1 + 516);
      v25 = v7 >> 1;
      if (v24 <= v7 >> 1)
      {
        v24 = v7 >> 1;
      }

      v26 = 16 * v24;
      *(a1 + 212) = v26;
      if ((*(a1 + 1880) & 0xFFFFFFFE) == 2)
      {
        v27 = *(a1 + 512);
        if (v27 <= v7)
        {
          v27 = v7;
        }

        *(a1 + 208) = 32 * v27;
        if (*(a1 + 520) > v25)
        {
          v25 = *(a1 + 520);
        }

        *(a1 + 216) = 16 * v25;
      }

      v28 = v26 + v23;
      if (*(a1 + 240) > v28)
      {
        *(a1 + 240) = v28;
      }
    }

    else
    {
      v13 = *(a1 + 1064);
      if (v13)
      {
        ++*(v13 + 464);
      }

      v14 = *(a1 + 248) + 1;
      *(a1 + 244) = v7;
      *(a1 + 248) = v14;
      update_base_rtt(a1, v7);
      v15 = *(a1 + 204);
      if (v15)
      {
        v16 = 4 * v7 - (v15 >> 3);
        v17 = v16 + v15;
        if (v17 <= 1)
        {
          v17 = 1;
        }

        *(a1 + 204) = v17;
        if (v16 < 0)
        {
          v16 = -v16;
        }

        v18 = *(a1 + 212) + v16 - (*(a1 + 212) >> 2);
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        *(a1 + 212) = v19;
        v20 = *(a1 + 240);
        v21 = v19 + v17;
        if (!v20 || v20 > v21)
        {
          *(a1 + 240) = v21;
        }
      }

      else
      {
        *(a1 + 204) = 32 * v7;
        *(a1 + 212) = 8 * v7;
        *(a1 + 240) = 40 * v7;
        if (!*(a1 + 1976))
        {
          *(a1 + 1976) = 32 * v7;
        }
      }

      if ((*(a1 + 1880) & 0xFFFFFFFE) == 2)
      {
        v29 = *(a1 + 208);
        if (v29)
        {
          v30 = 4 * v7 - (v29 >> 3);
          v31 = v30 + v29;
          if (v31 <= 1)
          {
            v31 = 1;
          }

          *(a1 + 208) = v31;
          if (v30 >= 0)
          {
            v32 = v30;
          }

          else
          {
            v32 = -v30;
          }

          v33 = *(a1 + 216) + v32 - (*(a1 + 216) >> 2);
          if (v33 <= 1)
          {
            v33 = 1;
          }
        }

        else
        {
          *(a1 + 208) = 32 * v7;
          v33 = 8 * v7;
        }

        *(a1 + 216) = v33;
      }
    }

    if (*(*(*(a1 + 80) + 224) + 24))
    {
      all_stats = nw_protocol_tcp_get_all_stats();
      if (all_stats)
      {
        *(all_stats + 68) = *(a1 + 240);
      }
    }

    if (*(*(*(a1 + 80) + 224) + 24))
    {
      v35 = nw_protocol_tcp_get_all_stats();
      if (v35)
      {
        *(v35 + 72) = *(a1 + 204);
      }
    }

    if (*(*(*(a1 + 80) + 224) + 24))
    {
      v36 = nw_protocol_tcp_get_all_stats();
      if (v36)
      {
        *(v36 + 76) = *(a1 + 212);
      }
    }

    if (*(a1 + 12) < 4)
    {
      v37 = 0;
    }

    else
    {
      v37 = *(sysctls + 172);
    }

    v38 = *(a1 + 236);
    v39 = *(a1 + 204);
    v40 = (*(a1 + 212) + (v39 >> 3)) >> 2;
    if (v38 > v40)
    {
      v40 = *(a1 + 236);
    }

    v41 = v40 + v37;
    *(a1 + 196) = v41;
    if (v38 <= v7 + 2)
    {
      v38 = v7 + 2;
    }

    if (v41 >= v38)
    {
      if (v41 < 0xFA01)
      {
LABEL_78:
        *(a1 + 264) = 0;
        v42 = *(a1 + 148);
        if (v39)
        {
          v43 = 32000 * v42 / v39;
        }

        else
        {
          v43 = 0;
        }

        v44 = v43 << (v42 < *(a1 + 152));
        v45 = *(*(a1 + 80) + 2384);
        if (v45 >= v44)
        {
          v46 = v44;
        }

        else
        {
          v46 = *(*(a1 + 80) + 2384);
        }

        if (v45 != -1)
        {
          v44 = v46;
        }

        v47 = v44 >> 12;
        *(a1 + 472) = v44;
        v48 = *(a1 + 200);
        if (v48 <= v47)
        {
          v48 = v47;
        }

        *(a1 + 480) = v48;
        goto LABEL_89;
      }

      v38 = 64000;
    }

    *(a1 + 196) = v38;
    goto LABEL_78;
  }

LABEL_89:
  v49 = *MEMORY[0x1E69E9840];
}

uint64_t tcp_update_window(uint64_t a1, char a2, uint64_t a3, unsigned int a4, int a5)
{
  if ((a2 & 0x10) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 104);
  v6 = *(a3 + 4);
  if (v5 - v6 >= 0)
  {
    if (v5 != v6)
    {
      return 0;
    }

    v7 = *(a1 + 108);
    v8 = *(a3 + 8);
    if (v7 - v8 >= 0 && (v7 != v8 || *(a1 + 144) >= a4))
    {
      return 0;
    }
  }

  if (!a5 && *(a1 + 108) == *(a3 + 8) && *(a1 + 144) < a4)
  {
    v9 = *(a1 + 1064);
    if (v9)
    {
      ++*(v9 + 296);
    }
  }

  *(a1 + 144) = a4;
  if (*(*(*(a1 + 80) + 224) + 24))
  {
    v10 = a3;
    v11 = a1;
    v12 = *(*(*(a1 + 80) + 224) + 24);
    all_stats = nw_protocol_tcp_get_all_stats();
    a1 = v11;
    a4 = *(v11 + 144);
    if (all_stats)
    {
      *(all_stats + 112) = a4;
    }

    a3 = v10;
  }

  *(a1 + 104) = *(a3 + 4);
  if (a4 > *(a1 + 260))
  {
    *(a1 + 260) = a4;
  }

  return 1;
}

void nw_protocol_tcp_wake_read(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (*(v2 + 5352) == 2)
  {
    v3 = *(a1 + 464);
    if (v3 >= *(v2 + 472) || v3 >= *(a1 + 472))
    {
      nw_protocol_upcast();
      nw_protocol_get_input_handler();
      if (nw_protocol_input_available_is_valid())
      {
        if ((*(a1 + 776) & 2) == 0)
        {
          if (__nwlog_is_datapath_logging_enabled())
          {
            v10 = __nwlog_tcp_log();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              v11 = *(a1 + 464);
              v12 = 136446722;
              v13 = "nw_protocol_tcp_wake_read";
              v14 = 2082;
              v15 = a1 + 556;
              v16 = 1024;
              v17 = v11;
              _os_log_impl(&dword_1889BA000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s waking the input_handler with %d bytes in our queue", &v12, 0x1Cu);
            }
          }
        }

        nw_protocol_get_input_handler();
        nw_protocol_input_available();
      }
    }

    else if ((*(a1 + 776) & 2) == 0)
    {
      v4 = v2;
      if (__nwlog_is_datapath_logging_enabled())
      {
        v5 = __nwlog_tcp_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v6 = *(v4 + 472);
          v7 = *(v4 + 464);
          v12 = 136446978;
          v13 = "nw_protocol_tcp_wake_read";
          v14 = 2082;
          v15 = a1 + 556;
          v16 = 1024;
          v17 = v6;
          v18 = 1024;
          v19 = v7;
          _os_log_impl(&dword_1889BA000, v5, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s ignoring wake low_water %u sb_cc %u", &v12, 0x22u);
        }
      }
    }
  }

  else if ((*(a1 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v8 = __nwlog_tcp_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v12 = 136446466;
        v13 = "nw_protocol_tcp_wake_read";
        v14 = 2082;
        v15 = a1 + 556;
        _os_log_impl(&dword_1889BA000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", &v12, 0x16u);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t nw_protocol_tcp_wake_send(uint64_t a1)
{
  v1 = *(a1 + 40);
  nw_protocol_upcast();
  nw_protocol_retain();
  v2 = *(v1 + 5328);
  return nw_queue_context_async();
}

uint64_t tcp_cc_delay_ack(uint64_t a1, uint64_t a2)
{
  v2 = *(sysctls + 36);
  if ((v2 - 1) >= 2)
  {
    if (v2 != 3)
    {
      return 0;
    }

    v5 = tcp_sbspace(a1);
    v6 = 0xFFFF << *(a1 + 269);
    if (v5 < v6)
    {
      v6 = v5;
    }

    if ((*(a1 + 749) & 2) != 0 && (*(a1 + 120) - *(a1 + 296)) <= *(a1 + 200) || (*(a1 + 90) & 4) != 0 || *(a1 + 320) || *(*(*(a1 + 80) + 224) + 464) <= *(*(*(a1 + 80) + 224) + 472) || v6 > *(a1 + 132))
    {
      return 0;
    }

    v7 = *(a1 + 120) - *(a1 + 296);
    v8 = *(a1 + 200);
    if (v7 <= v8)
    {
      if (v7 >= v6 >> 2)
      {
        return 0;
      }
    }

    else if (v7 >= v6 >> 2 || v6 <= *(sysctls + 232) + (*(sysctls + 232) >> 1))
    {
      return 0;
    }

    if (v7 < v8 << 8)
    {
      ++*(a1 + 720);
      return 1;
    }
  }

  else if ((*(a1 + 90) & 4) == 0 && (*(a2 + 13) & 8) == 0 && *(a1 + 316) == 1)
  {
    return 1;
  }

  return 0;
}

void tcp_output_batch_acks_end(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 240);
  v3 = *(a1 + 224);
  if (!v3 || (*(v3 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v4 = __nwlog_tcp_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = (v3 + 556);
        v6 = *(v2 + 748);
        v7 = *(v2 + 640);
        if (!v3)
        {
          v5 = &unk_188A285CF;
        }

        v8 = *(v2 + 312);
        v14 = "tcp_output_batch_acks_end";
        v9 = (v6 & 0x2000000) == 0;
        v10 = "off";
        v13 = 136447234;
        if (!v9)
        {
          v10 = "on";
        }

        v15 = 2082;
        v16 = v5;
        v17 = 2082;
        v18 = v10;
        v19 = 1024;
        v20 = v7;
        v21 = 1024;
        v22 = v8;
        _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s %{public}s t_pktlist_sentlen %d t_lastchain %d", &v13, 0x2Cu);
      }
    }
  }

  *(v2 + 748) &= ~0x2000000u;
  if (*(a1 + 2382))
  {
    goto LABEL_17;
  }

  if (*(v2 + 624))
  {
    goto LABEL_14;
  }

  while (*(v2 + 648))
  {
LABEL_14:
    tcp_ip_output_send(v3, v2, (v2 + 624), *(v2 + 312), 0);
    *(v2 + 624) = 0;
    *(v2 + 632) = v2 + 624;
    *(v2 + 640) = 0;
    *(v2 + 312) = 0;
    if (*(a1 + 2382))
    {
      goto LABEL_17;
    }
  }

  v11 = *(v2 + 88);
  if ((v11 & 0x8000000) != 0)
  {
    *(v2 + 88) = v11 & 0xF7FFFFFF;
    tcp_close(v2);
  }

  else
  {
LABEL_17:
    tcp_check_timer_state(v2);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void nw_protocol_tcp_notify(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_tcp_notify";
    v25 = _os_log_send_and_compose_impl();
    LOBYTE(v48) = 16;
    LOBYTE(v46) = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_134;
    }

    if (v48 == 17)
    {
      v26 = __nwlog_obj();
      v27 = v48;
      if (!os_log_type_enabled(v26, v48))
      {
        goto LABEL_134;
      }

      *buf = 136446210;
      v41 = "nw_protocol_tcp_notify";
      v28 = "%{public}s called with null protocol";
    }

    else if (v46 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v27 = v48;
      v30 = os_log_type_enabled(v26, v48);
      if (backtrace_string)
      {
        if (v30)
        {
          *buf = 136446466;
          v41 = "nw_protocol_tcp_notify";
          v42 = 2082;
          v43 = backtrace_string;
          _os_log_impl(&dword_1889BA000, v26, v48, "%{public}s called with null protocol, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_134:
        if (!v25)
        {
          goto LABEL_32;
        }

LABEL_135:
        free(v25);
        goto LABEL_32;
      }

      if (!v30)
      {
        goto LABEL_134;
      }

      *buf = 136446210;
      v41 = "nw_protocol_tcp_notify";
      v28 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v26 = __nwlog_obj();
      v27 = v48;
      if (!os_log_type_enabled(v26, v48))
      {
        goto LABEL_134;
      }

      *buf = 136446210;
      v41 = "nw_protocol_tcp_notify";
      v28 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

    goto LABEL_133;
  }

  v10 = nw_protocol_downcast();
  if (!v10)
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_tcp_notify";
    v25 = _os_log_send_and_compose_impl();
    LOBYTE(v48) = 16;
    LOBYTE(v46) = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_134;
    }

    if (v48 != 17)
    {
      if (v46 != 1)
      {
        v26 = __nwlog_obj();
        v27 = v48;
        if (!os_log_type_enabled(v26, v48))
        {
          goto LABEL_134;
        }

        *buf = 136446210;
        v41 = "nw_protocol_tcp_notify";
        v28 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_133;
      }

      v31 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v27 = v48;
      v32 = os_log_type_enabled(v26, v48);
      if (!v31)
      {
        if (!v32)
        {
          goto LABEL_134;
        }

        *buf = 136446210;
        v41 = "nw_protocol_tcp_notify";
        v28 = "%{public}s called with null tcp, no backtrace";
        goto LABEL_133;
      }

      if (!v32)
      {
        goto LABEL_105;
      }

      *buf = 136446466;
      v41 = "nw_protocol_tcp_notify";
      v42 = 2082;
      v43 = v31;
      v33 = "%{public}s called with null tcp, dumping backtrace:%{public}s";
      goto LABEL_104;
    }

    v26 = __nwlog_obj();
    v27 = v48;
    if (!os_log_type_enabled(v26, v48))
    {
      goto LABEL_134;
    }

    *buf = 136446210;
    v41 = "nw_protocol_tcp_notify";
    v28 = "%{public}s called with null tcp";
LABEL_133:
    _os_log_impl(&dword_1889BA000, v26, v27, v28, buf, 0xCu);
    goto LABEL_134;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_tcp_notify";
    v25 = _os_log_send_and_compose_impl();
    LOBYTE(v48) = 16;
    LOBYTE(v46) = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_134;
    }

    if (v48 == 17)
    {
      v26 = __nwlog_obj();
      v27 = v48;
      if (!os_log_type_enabled(v26, v48))
      {
        goto LABEL_134;
      }

      *buf = 136446210;
      v41 = "nw_protocol_tcp_notify";
      v28 = "%{public}s called with null other_protocol";
      goto LABEL_133;
    }

    if (v46 != 1)
    {
      v26 = __nwlog_obj();
      v27 = v48;
      if (!os_log_type_enabled(v26, v48))
      {
        goto LABEL_134;
      }

      *buf = 136446210;
      v41 = "nw_protocol_tcp_notify";
      v28 = "%{public}s called with null other_protocol, backtrace limit exceeded";
      goto LABEL_133;
    }

    v31 = __nw_create_backtrace_string();
    v26 = __nwlog_obj();
    v27 = v48;
    v34 = os_log_type_enabled(v26, v48);
    if (!v31)
    {
      if (!v34)
      {
        goto LABEL_134;
      }

      *buf = 136446210;
      v41 = "nw_protocol_tcp_notify";
      v28 = "%{public}s called with null other_protocol, no backtrace";
      goto LABEL_133;
    }

    if (!v34)
    {
      goto LABEL_105;
    }

    *buf = 136446466;
    v41 = "nw_protocol_tcp_notify";
    v42 = 2082;
    v43 = v31;
    v33 = "%{public}s called with null other_protocol, dumping backtrace:%{public}s";
LABEL_104:
    _os_log_impl(&dword_1889BA000, v26, v27, v33, buf, 0x16u);
    goto LABEL_105;
  }

  v11 = v10;
  if (a3 == 16)
  {
    if (a4)
    {
      if (a5 == 1)
      {
        v12 = *a4;
        if ((*(v10 + 776) & 2) == 0)
        {
          v13 = __nwlog_tcp_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v41 = "nw_protocol_tcp_notify";
            v42 = 2082;
            v43 = (v11 + 556);
            v44 = 1024;
            v45 = v12;
            _os_log_impl(&dword_1889BA000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s nw_protocol_notification_type_connection_idle is %{BOOL}d", buf, 0x1Cu);
          }
        }

        v14 = nw_protocol_downcast();
        if (v14)
        {
          v15 = v14;
          if (*(v14 + 5336))
          {
            if (*(v14 + 5344))
            {
              os_unfair_lock_lock((v14 + 5392));
              v48 = 0;
              v49 = 0;
              v16 = *(v15 + 5336);
              v17 = *(v15 + 5344);
              if (nw_path_flow_registration_get_nexus_instance())
              {
                v46 = 0;
                v47 = 0;
                nw_protocol_upcast();
                nw_protocol_get_flow_id();
                v18 = os_nexus_flow_set_connection_idle();
                if ((*(v15 + 776) & 2) == 0)
                {
                  v19 = v18;
                  v20 = __nwlog_tcp_log();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136446722;
                    v41 = "nw_protocol_tcp_set_connection_idle";
                    v42 = 2082;
                    v43 = (v15 + 556);
                    v44 = 1024;
                    v45 = v19;
                    _os_log_impl(&dword_1889BA000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s os_nexus_flow_set_connection_idle returned %d", buf, 0x1Cu);
                  }
                }
              }

              os_unfair_lock_unlock((v15 + 5392));
              goto LABEL_32;
            }

            if ((*(v14 + 776) & 2) != 0 || (v22 = __nwlog_tcp_log(), !os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT)))
            {
LABEL_32:
              v24 = *MEMORY[0x1E69E9840];
              return;
            }

            *buf = 136446466;
            v41 = "nw_protocol_tcp_set_connection_idle";
            v42 = 2082;
            v43 = (v15 + 556);
            v23 = "%{public}s %{public}s nw_protocol_tcp_set_connection_idle flow_registration is NULL";
          }

          else
          {
            if ((*(v14 + 776) & 2) != 0)
            {
              goto LABEL_32;
            }

            v22 = __nwlog_tcp_log();
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_32;
            }

            *buf = 136446466;
            v41 = "nw_protocol_tcp_set_connection_idle";
            v42 = 2082;
            v43 = (v15 + 556);
            v23 = "%{public}s %{public}s nw_protocol_tcp_set_connection_idle path is NULL";
          }

          _os_log_impl(&dword_1889BA000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0x16u);
          goto LABEL_32;
        }

        __nwlog_obj();
        *buf = 136446210;
        v41 = "nw_protocol_tcp_set_connection_idle";
        v25 = _os_log_send_and_compose_impl();
        LOBYTE(v48) = 16;
        LOBYTE(v46) = 0;
        if (!__nwlog_fault())
        {
          goto LABEL_134;
        }

        if (v48 == 17)
        {
          v26 = __nwlog_obj();
          v27 = v48;
          if (!os_log_type_enabled(v26, v48))
          {
            goto LABEL_134;
          }

          *buf = 136446210;
          v41 = "nw_protocol_tcp_set_connection_idle";
          v28 = "%{public}s called with null tcp";
          goto LABEL_133;
        }

        if (v46 != 1)
        {
          v26 = __nwlog_obj();
          v27 = v48;
          if (!os_log_type_enabled(v26, v48))
          {
            goto LABEL_134;
          }

          *buf = 136446210;
          v41 = "nw_protocol_tcp_set_connection_idle";
          v28 = "%{public}s called with null tcp, backtrace limit exceeded";
          goto LABEL_133;
        }

        v31 = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v27 = v48;
        v39 = os_log_type_enabled(v26, v48);
        if (!v31)
        {
          if (!v39)
          {
            goto LABEL_134;
          }

          *buf = 136446210;
          v41 = "nw_protocol_tcp_set_connection_idle";
          v28 = "%{public}s called with null tcp, no backtrace";
          goto LABEL_133;
        }

        if (v39)
        {
          *buf = 136446466;
          v41 = "nw_protocol_tcp_set_connection_idle";
          v42 = 2082;
          v43 = v31;
          v33 = "%{public}s called with null tcp, dumping backtrace:%{public}s";
          goto LABEL_104;
        }
      }

      else
      {
        __nwlog_obj();
        *buf = 136446210;
        v41 = "nw_protocol_tcp_notify";
        v25 = _os_log_send_and_compose_impl();
        LOBYTE(v48) = 16;
        LOBYTE(v46) = 0;
        if (!__nwlog_fault())
        {
          goto LABEL_134;
        }

        if (v48 == 17)
        {
          v26 = __nwlog_obj();
          v27 = v48;
          if (!os_log_type_enabled(v26, v48))
          {
            goto LABEL_134;
          }

          *buf = 136446210;
          v41 = "nw_protocol_tcp_notify";
          v28 = "%{public}s called with null (len == sizeof(BOOL))";
          goto LABEL_133;
        }

        if (v46 != 1)
        {
          v26 = __nwlog_obj();
          v27 = v48;
          if (!os_log_type_enabled(v26, v48))
          {
            goto LABEL_134;
          }

          *buf = 136446210;
          v41 = "nw_protocol_tcp_notify";
          v28 = "%{public}s called with null (len == sizeof(BOOL)), backtrace limit exceeded";
          goto LABEL_133;
        }

        v31 = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v27 = v48;
        v38 = os_log_type_enabled(v26, v48);
        if (!v31)
        {
          if (!v38)
          {
            goto LABEL_134;
          }

          *buf = 136446210;
          v41 = "nw_protocol_tcp_notify";
          v28 = "%{public}s called with null (len == sizeof(BOOL)), no backtrace";
          goto LABEL_133;
        }

        if (v38)
        {
          *buf = 136446466;
          v41 = "nw_protocol_tcp_notify";
          v42 = 2082;
          v43 = v31;
          v33 = "%{public}s called with null (len == sizeof(BOOL)), dumping backtrace:%{public}s";
          goto LABEL_104;
        }
      }

      goto LABEL_105;
    }

    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_tcp_notify";
    v25 = _os_log_send_and_compose_impl();
    LOBYTE(v48) = 16;
    LOBYTE(v46) = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_134;
    }

    if (v48 == 17)
    {
      v26 = __nwlog_obj();
      v27 = v48;
      if (!os_log_type_enabled(v26, v48))
      {
        goto LABEL_134;
      }

      *buf = 136446210;
      v41 = "nw_protocol_tcp_notify";
      v28 = "%{public}s called with null (val != nil)";
      goto LABEL_133;
    }

    if (v46 != 1)
    {
      v26 = __nwlog_obj();
      v27 = v48;
      if (!os_log_type_enabled(v26, v48))
      {
        goto LABEL_134;
      }

      *buf = 136446210;
      v41 = "nw_protocol_tcp_notify";
      v28 = "%{public}s called with null (val != nil), backtrace limit exceeded";
      goto LABEL_133;
    }

    v31 = __nw_create_backtrace_string();
    v26 = __nwlog_obj();
    v27 = v48;
    v36 = os_log_type_enabled(v26, v48);
    if (!v31)
    {
      if (!v36)
      {
        goto LABEL_134;
      }

      *buf = 136446210;
      v41 = "nw_protocol_tcp_notify";
      v28 = "%{public}s called with null (val != nil), no backtrace";
      goto LABEL_133;
    }

    if (!v36)
    {
      goto LABEL_105;
    }

LABEL_87:
    *buf = 136446466;
    v41 = "nw_protocol_tcp_notify";
    v42 = 2082;
    v43 = v31;
    v33 = "%{public}s called with null (val != nil), dumping backtrace:%{public}s";
    goto LABEL_104;
  }

  if (a3 == 20)
  {
    if (a4)
    {
      if (a5 == 12)
      {
        *buf = 0;
        LODWORD(v48) = 0;
        LODWORD(v46) = 0;
        nw_link_get_local_congestion_info();
        *(v11 + 5292);
        *(v11 + 5292) = 0;
        goto LABEL_32;
      }

      __nwlog_obj();
      *buf = 136446210;
      v41 = "nw_protocol_tcp_notify";
      v25 = _os_log_send_and_compose_impl();
      LOBYTE(v48) = 16;
      LOBYTE(v46) = 0;
      if (!__nwlog_fault())
      {
        goto LABEL_134;
      }

      if (v48 == 17)
      {
        v26 = __nwlog_obj();
        v27 = v48;
        if (!os_log_type_enabled(v26, v48))
        {
          goto LABEL_134;
        }

        *buf = 136446210;
        v41 = "nw_protocol_tcp_notify";
        v28 = "%{public}s called with null (len == sizeof(struct nw_link_congestion_info))";
        goto LABEL_133;
      }

      if (v46 != 1)
      {
        v26 = __nwlog_obj();
        v27 = v48;
        if (!os_log_type_enabled(v26, v48))
        {
          goto LABEL_134;
        }

        *buf = 136446210;
        v41 = "nw_protocol_tcp_notify";
        v28 = "%{public}s called with null (len == sizeof(struct nw_link_congestion_info)), backtrace limit exceeded";
        goto LABEL_133;
      }

      v31 = __nw_create_backtrace_string();
      v26 = __nwlog_obj();
      v27 = v48;
      v37 = os_log_type_enabled(v26, v48);
      if (!v31)
      {
        if (!v37)
        {
          goto LABEL_134;
        }

        *buf = 136446210;
        v41 = "nw_protocol_tcp_notify";
        v28 = "%{public}s called with null (len == sizeof(struct nw_link_congestion_info)), no backtrace";
        goto LABEL_133;
      }

      if (v37)
      {
        *buf = 136446466;
        v41 = "nw_protocol_tcp_notify";
        v42 = 2082;
        v43 = v31;
        v33 = "%{public}s called with null (len == sizeof(struct nw_link_congestion_info)), dumping backtrace:%{public}s";
        goto LABEL_104;
      }

LABEL_105:
      free(v31);
      if (!v25)
      {
        goto LABEL_32;
      }

      goto LABEL_135;
    }

    __nwlog_obj();
    *buf = 136446210;
    v41 = "nw_protocol_tcp_notify";
    v25 = _os_log_send_and_compose_impl();
    LOBYTE(v48) = 16;
    LOBYTE(v46) = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_134;
    }

    if (v48 == 17)
    {
      v26 = __nwlog_obj();
      v27 = v48;
      if (!os_log_type_enabled(v26, v48))
      {
        goto LABEL_134;
      }

      *buf = 136446210;
      v41 = "nw_protocol_tcp_notify";
      v28 = "%{public}s called with null (val != nil)";
      goto LABEL_133;
    }

    if (v46 != 1)
    {
      v26 = __nwlog_obj();
      v27 = v48;
      if (!os_log_type_enabled(v26, v48))
      {
        goto LABEL_134;
      }

      *buf = 136446210;
      v41 = "nw_protocol_tcp_notify";
      v28 = "%{public}s called with null (val != nil), backtrace limit exceeded";
      goto LABEL_133;
    }

    v31 = __nw_create_backtrace_string();
    v26 = __nwlog_obj();
    v27 = v48;
    v35 = os_log_type_enabled(v26, v48);
    if (!v31)
    {
      if (!v35)
      {
        goto LABEL_134;
      }

      *buf = 136446210;
      v41 = "nw_protocol_tcp_notify";
      v28 = "%{public}s called with null (val != nil), no backtrace";
      goto LABEL_133;
    }

    if (!v35)
    {
      goto LABEL_105;
    }

    goto LABEL_87;
  }

  v21 = *MEMORY[0x1E69E9840];

  MEMORY[0x1EEDD4130](a1, a2, a3, a4, a5);
}

void __nw_protocol_tcp_timer_init_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    *buf = 0;
    *&buf[8] = 0;
    microuptime(buf);
    v2 = *&buf[8] / 1000 + 1000 * *buf;
    v3 = *(v1 + 308);
    if (v3 < v2)
    {
      *v1 = *buf;
      *(v1 + 308) = v2;
      v3 = v2;
    }

    *(v1 + 302) &= ~2u;
    v4 = *(v1 + 264);
    v5 = v3 - v4;
    if (!*(v1 + 248))
    {
      goto LABEL_42;
    }

    v6 = v4 - *(v1 + 268);
    if (v5 < 11)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v37 = __nwlog_obj();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v38 = *(v1 + 284);
          v39 = *(v1 + 268);
          v40 = *(v1 + 264);
          v41 = *(v1 + 308);
          *buf = 136447746;
          *&buf[4] = "tcp_run_timerlist";
          *&buf[12] = 1024;
          *&buf[14] = v38;
          v47 = 1024;
          v48 = v39;
          v49 = 1024;
          v50 = v40;
          v51 = 1024;
          v52 = v41;
          v53 = 1024;
          v54 = v5;
          v55 = 1024;
          v56 = v6;
          v12 = v37;
          v13 = OS_LOG_TYPE_DEBUG;
          goto LABEL_9;
        }
      }
    }

    else if ((*(v1 + 316) & 0x80000000) == 0)
    {
      v7 = __nwlog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(v1 + 284);
        v9 = *(v1 + 268);
        v10 = *(v1 + 264);
        v11 = *(v1 + 308);
        *buf = 136447746;
        *&buf[4] = "tcp_run_timerlist";
        *&buf[12] = 1024;
        *&buf[14] = v8;
        v47 = 1024;
        v48 = v9;
        v49 = 1024;
        v50 = v10;
        v51 = 1024;
        v52 = v11;
        v53 = 1024;
        v54 = v5;
        v55 = 1024;
        v56 = v6;
        v12 = v7;
        v13 = OS_LOG_TYPE_INFO;
LABEL_9:
        _os_log_impl(&dword_1889BA000, v12, v13, "%{public}s mode %d schedtime %u runtime %u tcp_now %u drift %d / offset %d", buf, 0x30u);
      }
    }

LABEL_42:
    tcp_process_timerlist(v1);
    v25 = *(v1 + 248);
    if (v25)
    {
      v26 = *(v25 + 1016);
      if (v26)
      {
        if (v5 > 1)
        {
          if (v5 > 0xA)
          {
            if (v5 > 0x14)
            {
              if (v5 > 0x32)
              {
                if (v5 > 0x64)
                {
                  if (v5 > 0xC8)
                  {
                    if (v5 > 0x1F4)
                    {
                      if (v5 > 0x3E8)
                      {
                        ++v26[159];
                      }

                      else
                      {
                        ++v26[158];
                      }
                    }

                    else
                    {
                      ++v26[157];
                    }
                  }

                  else
                  {
                    ++v26[156];
                  }
                }

                else
                {
                  ++v26[155];
                }
              }

              else
              {
                ++v26[154];
              }
            }

            else
            {
              ++v26[153];
            }
          }

          else
          {
            ++v26[152];
          }
        }

        else
        {
          ++v26[151];
        }
      }
    }

    goto LABEL_103;
  }

  v14 = *(v1 + 316);
  *(v1 + 316) = v14 & 0xF9;
  if ((v14 & 6) == 0)
  {
    goto LABEL_23;
  }

  v15 = *(v1 + 112);
  if (!v15)
  {
    goto LABEL_23;
  }

  if ((v14 & 2) == 0)
  {
    if ((v14 & 4) != 0)
    {
      v17 = 0;
      v18 = 0uLL;
      do
      {
        if (*(v15 + 10) || *(v15 + 11) || *(v15 + 12))
        {
          *(v15 + 12) = 0;
          v15[5] = 0;
        }

        if (*(v15 + 13) || *(v15 + 14) || *(v15 + 15))
        {
          *(v15 + 15) = 0;
          *(v15 + 52) = 0;
          v30 = v15[3];
          if (v30)
          {
            v44 = v18;
            v30(v1, v15);
            *(&v31 + 1) = *(&v44 + 1);
            *&v31 = vadd_s32(*(v15 + 52), *&v44);
            v18 = v31;
            v17 += *(v15 + 15);
          }
        }

        v15 = *v15;
      }

      while (v15);
      v16 = 0;
      goto LABEL_24;
    }

    do
    {
      if (*(v15 + 10) || *(v15 + 11) || *(v15 + 12))
      {
        *(v15 + 12) = 0;
        v15[5] = 0;
      }

      if (*(v15 + 13) || *(v15 + 14) || *(v15 + 15))
      {
        *(v15 + 15) = 0;
        *(v15 + 52) = 0;
      }

      v15 = *v15;
    }

    while (v15);
LABEL_23:
    v16 = 0;
    v17 = 0;
    *&v18 = 0;
LABEL_24:
    *&v42 = 0;
    goto LABEL_25;
  }

  if ((v14 & 4) != 0)
  {
    v17 = 0;
    v16 = 0;
    v18 = 0uLL;
    v42 = 0u;
    do
    {
      v45 = v18;
      if (*(v15 + 10) || *(v15 + 11) || *(v15 + 12))
      {
        *(v15 + 12) = 0;
        v15[5] = 0;
        v32 = v15[2];
        if (v32)
        {
          v32(v1, v15);
          *(&v33 + 1) = *(&v42 + 1);
          *&v33 = vadd_s32(v15[5], *&v42);
          v42 = v33;
          v18 = v45;
          v16 += *(v15 + 12);
        }
      }

      if (*(v15 + 13) || *(v15 + 14) || *(v15 + 15))
      {
        *(v15 + 15) = 0;
        *(v15 + 52) = 0;
        v34 = v15[3];
        if (v34)
        {
          v34(v1, v15);
          *(&v35 + 1) = *(&v45 + 1);
          *&v35 = vadd_s32(*(v15 + 52), *&v45);
          v18 = v35;
          v17 += *(v15 + 15);
        }
      }

      v15 = *v15;
    }

    while (v15);
  }

  else
  {
    v16 = 0;
    v18 = 0uLL;
    do
    {
      if (*(v15 + 10) || *(v15 + 11) || *(v15 + 12))
      {
        *(v15 + 12) = 0;
        v15[5] = 0;
        v28 = v15[2];
        if (v28)
        {
          v43 = v18;
          v28(v1, v15);
          *(&v29 + 1) = *(&v43 + 1);
          *&v29 = vadd_s32(v15[5], *&v43);
          v18 = v29;
          v16 += *(v15 + 12);
        }
      }

      if (*(v15 + 13) || *(v15 + 14) || *(v15 + 15))
      {
        *(v15 + 15) = 0;
        *(v15 + 52) = 0;
      }

      v15 = *v15;
    }

    while (v15);
    *&v42 = v18;
    v17 = 0;
    *&v18 = 0;
  }

LABEL_25:
  v19 = *(v1 + 316);
  if (v42)
  {
    v20 = 2;
  }

  else
  {
    v20 = 2 * (v16 != 0);
  }

  v21 = v19 | v20;
  if ((*(v1 + 316) & 2) == 0)
  {
    v19 = v21;
  }

  if (v18)
  {
    v22 = 4;
  }

  else
  {
    v22 = 4 * (v17 != 0);
  }

  v23 = v19 | v22;
  if ((v19 & 4) == 0)
  {
    v19 = v23;
  }

  *(v1 + 316) = v19 & 0xFE;
  if (v16 | v17)
  {
    if ((v19 & 6) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_47;
  }

  if (vadd_s32(*&v18, *&v42).u32[1] > 5)
  {
    if ((v19 & 6) != 0)
    {
LABEL_47:
      v24 = v19 | 9;
      goto LABEL_48;
    }

LABEL_103:
    v36 = *MEMORY[0x1E69E9840];
    return;
  }

  if ((v19 & 6) == 0)
  {
    goto LABEL_103;
  }

  v24 = v19 & 0xF6 | 1;
LABEL_48:
  *(v1 + 316) = v24;
  v27 = *MEMORY[0x1E69E9840];

  nw_protocol_timer_run_inner(v1, 1000000000, 0);
}

void tcp_process_timerlist(uint64_t a1)
{
  v97 = *MEMORY[0x1E69E9840];
  if (g_tcp_nw_assert_context == 1)
  {
    v2 = *(a1 + 240);
    nw_context_assert_queue();
  }

  if ((*(a1 + 302) & 1) == 0)
  {
    *(a1 + 302) = *(a1 + 302) & 0xFA | 1;
    v3 = *(a1 + 248);
    if (!v3)
    {
      goto LABEL_156;
    }

    v4 = 0;
    v5 = 0;
    do
    {
      v7 = v3;
      v3 = *v3;
      if (*(v7 + 12) > 7u || (v6 = *(v7 + 5) - *(a1 + 308), v6 < 1))
      {
        v8 = (v7 - 6);
        v9 = v7[4];
        while (1)
        {
          v10 = *(v9 + 456);
          if (v10 == 0xFFFF)
          {
            break;
          }

          v11 = *(v9 + 456);
          atomic_compare_exchange_strong_explicit((v9 + 456), &v11, v10 + 1, memory_order_relaxed, memory_order_relaxed);
          if (v11 == v10)
          {
            v92 = v5;
            v13 = v8 + 48;
            v12 = *(v8 + 48);
            if (v12 && *(v12 + 8) != v13)
            {
              __nwlog_obj();
              *buf = 136446466;
              v94 = "tcp_process_timerlist";
              v95 = 2048;
              v96 = v8 + 48;
              v14 = _os_log_send_and_compose_impl();
              if (__nwlog_fault())
              {
                v21 = __nwlog_obj();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446466;
                  v94 = "tcp_process_timerlist";
                  v95 = 2048;
                  v96 = v8 + 48;
                  _os_log_impl(&dword_1889BA000, v21, OS_LOG_TYPE_ERROR, "%{public}s Bad link elm %p next->prev != elm, backtrace limit exceeded", buf, 0x16u);
                }
              }

              if (v14)
              {
                free(v14);
              }
            }

            if (**(v8 + 56) != v13)
            {
              __nwlog_obj();
              *buf = 136446466;
              v94 = "tcp_process_timerlist";
              v95 = 2048;
              v96 = v8 + 48;
              v22 = _os_log_send_and_compose_impl();
              if (__nwlog_fault())
              {
                v23 = __nwlog_obj();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446466;
                  v94 = "tcp_process_timerlist";
                  v95 = 2048;
                  v96 = v8 + 48;
                  _os_log_impl(&dword_1889BA000, v23, OS_LOG_TYPE_ERROR, "%{public}s Bad link elm %p prev->next != elm, backtrace limit exceeded", buf, 0x16u);
                }
              }

              if (v22)
              {
                free(v22);
              }
            }

            v24 = *(a1 + 300);
            (*(*(*(*(v8 + 80) + 224) + 8) + 16))(*(*(v8 + 80) + 224), 1);
            v25 = *(*(v8 + 80) + 224);
            v26 = nw_tcp_access_globals(v25);
            if (in_pcb_checkstate(*(v8 + 80), 2, 1) == 0xFFFF)
            {
              if ((*(v8 + 91) & 0x40) != 0)
              {
                tcp_remove_timer(v8);
              }

              goto LABEL_41;
            }

            if (v24)
            {
              v27 = *(*(v8 + 80) + 448);
              if (v27)
              {
                if (*(v27 + 1220) == v24)
                {
                  *(v8 + 748) |= 0x200000u;
                  tcp_timers(v8, 0);
                  *(v8 + 16) = 0;
                  *(v8 + 748) &= 0x200000u;
                }
              }
            }

            v28 = *(v8 + 72);
            if (v28 == 8)
            {
LABEL_41:
              v29 = 0;
              v30 = 0;
              goto LABEL_42;
            }

            v30 = *(v8 + 68) - *(v26 + 308);
            if (v30 >= 1)
            {
LABEL_50:
              v29 = *(v8 + 74);
LABEL_42:
              if (*(v8 + 72) == 8)
              {
                tcp_remove_timer(v8);
                goto LABEL_44;
              }

              goto LABEL_45;
            }

            v31 = v8 + 4 * *(v8 + 72);
            v32 = *(v31 + 16);
            *(v31 + 16) = 0;
            if (v32)
            {
              v8 = tcp_timers(v8, v28);
              if (!v8)
              {
                goto LABEL_143;
              }
            }

            v34 = v8 + 16;
            v33 = *(v8 + 16);
            *(v8 + 74) = 0;
            v35 = *(v26 + 308);
            if (v33)
            {
              v36 = *(v8 + 64) + v33 - v35;
              v37 = 1;
              if (v36 < 1)
              {
                v39 = 0;
                v40 = 0;
                v36 = 0;
                v38 = 8;
                v41 = *(v8 + 20);
                if (!v41)
                {
                  goto LABEL_65;
                }
              }

              else
              {
                v38 = 0;
                *(v8 + 16) = v36;
                *(v8 + 74) = 1;
                v35 = *(v26 + 308);
                v39 = 1;
                v40 = 1;
                v37 = 0;
                v41 = *(v8 + 20);
                if (!v41)
                {
                  goto LABEL_65;
                }
              }

LABEL_61:
              v42 = *(v8 + 64) + v41 - v35;
              if (v42 >= 1)
              {
                *(v8 + 20) = v42;
                if (v36 - 1 >= v42)
                {
                  v38 = 1;
                  v36 = v42;
                }

                v39 = 1;
                *(v8 + 74) = 1;
                v35 = *(v26 + 308);
                goto LABEL_65;
              }

              v43 = 0;
              ++v37;
              v44 = *(v8 + 24);
              if (v44)
              {
LABEL_68:
                v45 = *(v8 + 64) + v44 - v35;
                if (v45 >= 1)
                {
                  *(v8 + 24) = v45;
                  if (v36 - 1 >= v45)
                  {
                    v38 = 2;
                    v36 = v45;
                  }

                  v39 = 1;
                  *(v8 + 74) = 1;
                  v35 = *(v26 + 308);
                  goto LABEL_72;
                }

                v46 = 0;
                ++v37;
                v47 = *(v8 + 28);
                if (v47)
                {
LABEL_75:
                  v48 = *(v8 + 64) + v47 - v35;
                  if (v48 >= 1)
                  {
                    *(v8 + 28) = v48;
                    if (v36 - 1 >= v48)
                    {
                      v36 = v48;
                      v38 = 3;
                    }

                    v39 |= 2u;
                    *(v8 + 74) = v39;
                    v35 = *(v26 + 308);
                    goto LABEL_79;
                  }

                  v91 = 0;
                  ++v37;
                  v49 = *(v8 + 32);
                  if (v49)
                  {
LABEL_82:
                    v50 = *(v8 + 64) + v49 - v35;
                    if (v50 >= 1)
                    {
                      *(v8 + 32) = v50;
                      if (v36 - 1 >= v50)
                      {
                        v36 = v50;
                        v38 = 4;
                      }

                      v39 |= 2u;
                      *(v8 + 74) = v39;
                      v35 = *(v26 + 308);
                      goto LABEL_86;
                    }

                    v51 = 0;
                    ++v37;
                    v52 = *(v8 + 36);
                    if (v52)
                    {
LABEL_89:
                      v53 = *(v8 + 64) + v52 - v35;
                      if (v53 >= 1)
                      {
                        *(v8 + 36) = v53;
                        if (v36 - 1 >= v53)
                        {
                          v36 = v53;
                          v38 = 5;
                        }

                        v39 |= 4u;
                        *(v8 + 74) = v39;
                        v35 = *(v26 + 308);
                        goto LABEL_93;
                      }

                      v54 = 0;
                      ++v37;
                      v55 = *(v8 + 40);
                      if (!v55)
                      {
LABEL_99:
                        v57 = 1;
                        goto LABEL_101;
                      }

LABEL_94:
                      v56 = *(v8 + 64) + v55 - v35;
                      if (v56 < 1)
                      {
                        v57 = 0;
                        ++v37;
                      }

                      else
                      {
                        *(v8 + 40) = v56;
                        if (v36 - 1 >= v56)
                        {
                          v36 = v56;
                          v38 = 6;
                        }

                        v39 |= 4u;
                        *(v8 + 74) = v39;
                        v35 = *(v26 + 308);
                        v57 = 1;
                      }

LABEL_101:
                      v58 = *(v8 + 44);
                      v59 = v58 == 0;
                      if (v58)
                      {
                        v60 = *(v8 + 64) + v58 - v35;
                        if (v60 >= 1)
                        {
                          *(v8 + 44) = v60;
                          *(v8 + 74) = v39 | 4;
                          v35 = *(v26 + 308);
                          *(v8 + 64) = v35;
                          if (v36 - 1 >= v60)
                          {
                            v38 = 7;
                            *(v8 + 72) = 7;
                            v59 = 1;
                          }

                          else
                          {
                            *(v8 + 72) = v38;
                            v59 = 1;
                            if (v38 == 8)
                            {
                              goto LABEL_116;
                            }
                          }

LABEL_113:
                          v63 = *(v34 + 4 * v38) + v35;
                          if (v63 <= 1)
                          {
                            v63 = 1;
                          }

                          *(v8 + 68) = v63;
LABEL_116:
                          if (!v37)
                          {
LABEL_141:
                            if (v38 > 7)
                            {
                              goto LABEL_41;
                            }

                            v30 = *(v8 + 4 * v38 + 16);
                            goto LABEL_50;
                          }

                          v88 = v57;
                          v90 = v54;
                          v86 = v59;
                          v64 = v46;
                          if ((v40 & 1) != 0 || (*(v8 + 16) = 0, v65 = v43, v66 = tcp_timers(v8, 0), v43 = v65, (v8 = v66) != 0))
                          {
                            if ((v43 & 1) != 0 || (*(v8 + 20) = 0, (v8 = tcp_timers(v8, 1)) != 0))
                            {
                              if ((v64 & 1) == 0)
                              {
                                *(v8 + 24) = 0;
                                nw_tcp_access_globals(*(*(v8 + 80) + 224));
                                if ((*(v8 + 748) & 0x20400020) == 0x20000020)
                                {
                                  tcp_rack_reordering_timeout(v8);
                                }
                              }

                              if ((v91 & 1) != 0 || (*(v8 + 28) = 0, (v8 = tcp_timers(v8, 3)) != 0))
                              {
                                if ((v51 & 1) == 0)
                                {
                                  *(v8 + 32) = 0;
                                  nw_tcp_access_globals(*(*(v8 + 80) + 224));
                                  if (*(sysctls + 36))
                                  {
                                    v67 = *(v8 + 88);
                                    if ((v67 & 2) != 0)
                                    {
                                      *(v8 + 32) = 0;
                                      *(v8 + 88) = v67 & 0xFFFFFFFC | 1;
                                      *(v8 + 320) = 16;
                                      *(v8 + 752) = 0;
                                      v68 = *(v8 + 1064);
                                      if (v68)
                                      {
                                        ++*(v68 + 56);
                                      }

                                      ++*(v8 + 716);
                                      tcp_output(v8);
                                    }
                                  }
                                }

                                if (v90)
                                {
                                  v69 = v88;
                                  goto LABEL_135;
                                }

                                *(v8 + 36) = 0;
                                v8 = tcp_timers(v8, 5);
                                v69 = v88;
                                if (v8)
                                {
LABEL_135:
                                  if (v69)
                                  {
                                    v70 = v86;
LABEL_138:
                                    if (v70 || (*(v8 + 44) = 0, (v8 = tcp_timers(v8, 7)) != 0))
                                    {
                                      tcp_set_lotimer_index(v8);
                                      v38 = *(v8 + 72);
                                      goto LABEL_141;
                                    }
                                  }

                                  else
                                  {
                                    *(v8 + 40) = 0;
                                    v8 = tcp_timers(v8, 6);
                                    v70 = v86;
                                    if (v8)
                                    {
                                      goto LABEL_138;
                                    }
                                  }
                                }
                              }
                            }
                          }

LABEL_143:
                          v29 = 0;
LABEL_44:
                          v30 = 0;
LABEL_45:
                          (*(*(v25 + 8) + 24))(v25, 1);
                          if (v30)
                          {
                            v5 = v92;
                            if (v29)
                            {
                              v5 = v29 | v92;
                              if (v4 - 1 >= v30)
                              {
                                v4 = v30;
                              }
                            }
                          }

                          else
                          {
                            v5 = v92;
                          }

                          goto LABEL_10;
                        }

                        ++v37;
                      }

                      *(v8 + 64) = v35;
                      *(v8 + 72) = v38;
                      if (v38 == 8)
                      {
                        goto LABEL_116;
                      }

                      if (!v39)
                      {
                        v85 = v59;
                        v87 = v57;
                        v89 = v54;
                        v82 = v46;
                        v83 = v43;
                        v84 = v40;
                        v61 = __nwlog_obj();
                        os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
                        *buf = 136446210;
                        v94 = "tcp_run_conn_timer";
                        v62 = _os_log_send_and_compose_impl();
                        if (__nwlog_should_abort())
                        {
                          __break(1u);
                          return;
                        }

                        free(v62);
                        v38 = *(v8 + 72);
                        if (v38 == 8)
                        {
                          v43 = v83;
                          v40 = v84;
                          v46 = v82;
                          v57 = v87;
                          v54 = v89;
                          v59 = v85;
                          goto LABEL_116;
                        }

                        v35 = *(v8 + 64);
                        v43 = v83;
                        v40 = v84;
                        v34 = v8 + 16;
                        v46 = v82;
                        v57 = v87;
                        v54 = v89;
                        v59 = v85;
                      }

                      goto LABEL_113;
                    }

LABEL_93:
                    v54 = 1;
                    v55 = *(v8 + 40);
                    if (!v55)
                    {
                      goto LABEL_99;
                    }

                    goto LABEL_94;
                  }

LABEL_86:
                  v51 = 1;
                  v52 = *(v8 + 36);
                  if (v52)
                  {
                    goto LABEL_89;
                  }

                  goto LABEL_93;
                }

LABEL_79:
                v91 = 1;
                v49 = *(v8 + 32);
                if (v49)
                {
                  goto LABEL_82;
                }

                goto LABEL_86;
              }
            }

            else
            {
              v39 = 0;
              v37 = 0;
              v36 = 0;
              v38 = 8;
              v40 = 1;
              v41 = *(v8 + 20);
              if (v41)
              {
                goto LABEL_61;
              }

LABEL_65:
              v43 = 1;
              v44 = *(v8 + 24);
              if (v44)
              {
                goto LABEL_68;
              }
            }

LABEL_72:
            v46 = 1;
            v47 = *(v8 + 28);
            if (v47)
            {
              goto LABEL_75;
            }

            goto LABEL_79;
          }
        }

        v15 = *(v8 + 88);
        if ((v15 & 0x40000000) != 0)
        {
          v16 = v15 & 0xBFFFFFFF;
          v19 = *(v8 + 48);
          v18 = v8 + 48;
          v17 = v19;
          *(v18 + 40) = v16;
          v20 = *(v18 + 8);
          if (v19)
          {
            *(v17 + 8) = v20;
          }

          *v20 = v17;
          --*(a1 + 272);
          *v18 = 0;
          *(v18 + 8) = 0;
        }
      }

      else
      {
        if (v4 - 1 >= v6)
        {
          v4 = *(v7 + 5) - *(a1 + 308);
        }

        v5 |= *(v7 + 13);
      }

LABEL_10:
      ;
    }

    while (v3);
    if (*(a1 + 248))
    {
      if (v5)
      {
        v74 = 0;
        v75 = 1;
      }

      else
      {
        v71 = *(a1 + 288);
        if (((v71 | v5) & 2) != 0)
        {
          v72 = 2;
        }

        else
        {
          v72 = 4;
        }

        v73 = (*(a1 + 288) & 1) == 0;
        v74 = (v71 & 1) == 0 && ((v71 | v5) & 2) == 0;
        if (*(a1 + 288))
        {
          v75 = 1;
        }

        else
        {
          v75 = v72;
        }
      }

      *(a1 + 296) = 0;
      *(a1 + 284) = v75;
      v77 = *(a1 + 292);
      if (v77 >= v4)
      {
        v78 = v4;
      }

      else
      {
        v78 = *(a1 + 292);
      }

      if (v77)
      {
        v79 = v78;
      }

      else
      {
        v79 = v4;
      }

      if (v79 <= 0x1F4)
      {
        v80 = 500;
      }

      else
      {
        v80 = v79;
      }

      if (v74)
      {
        v76 = v80;
      }

      else
      {
        v76 = v79;
      }
    }

    else
    {
LABEL_156:
      v76 = tcp_timerlist_max_offset;
    }

    tcp_sched_timerlist(a1, v76);
    *(a1 + 302) &= ~1u;
    *(a1 + 288) = 0;
    *(a1 + 300) = 0;
  }

  v81 = *MEMORY[0x1E69E9840];
}

void tcp_gc(uint64_t a1, uint64_t a2)
{
  if (g_tcp_nw_assert_context == 1)
  {
    v4 = *(a1 + 240);
    nw_context_assert_queue();
  }

  v10 = 0;
  v11 = 0;
  microuptime(&v10);
  v5 = v11 / 1000 + 1000 * v10;
  if (*(a1 + 308) < v5)
  {
    *a1 = v10;
    *(a1 + 308) = v5;
  }

  *(a1 + 316) |= 0x20u;
  v6 = *(a1 + 104);
  while (v6)
  {
    v7 = v6;
    v6 = *v6;
    if (tcp_garbage_collect(v7, 0))
    {
      atomic_fetch_add((a2 + 44), 1u);
    }
  }

  v8 = *(a1 + 128);
  while (v8)
  {
    v9 = v8;
    v8 = *(v8 + 832);
    if (!*(v9 + 12) || *(a1 + 308) - *(v9 + 44) >= 0)
    {
      if (tcp_garbage_collect(*(v9 + 80), 1))
      {
        atomic_fetch_add((a2 + 40), 1u);
      }
    }
  }

  atomic_fetch_add((a2 + 40), *(a2 + 64));
}

uint64_t tcp_garbage_collect(uint64_t a1, int a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 224);
  v5 = *(a1 + 240);
  v6 = nw_tcp_access_globals(v4);
  v7 = *(v4 + 360);
  if (v7 >= 2)
  {
LABEL_2:
    result = *(a1 + 456) == 0xFFFF;
LABEL_96:
    v53 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (!a2)
  {
    if (v7 != 1)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (*(v6 + 308) - *(v5 + 44) >= 0 && *(v5 + 12))
  {
    tcp_close(v5);
    v7 = *(v4 + 360);
  }

  if (v7 == 1)
  {
    if ((*(v4 + 365) & 2) != 0)
    {
LABEL_9:
      if (*(a1 + 232) == 3)
      {
        v9 = 1;
      }

      else
      {
        in_pcbdetach(a1);
        v9 = *(v4 + 360);
        if (v9 <= 0 && (*(v4 + 776) & 2) == 0)
        {
          __nwlog_tcp_log();
          *buf = 136446466;
          v58 = "tcp_garbage_collect";
          v59 = 2082;
          v60 = v4 + 556;
          v14 = _os_log_send_and_compose_impl();
          if (__nwlog_fault())
          {
            v33 = __nwlog_tcp_log();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 136446466;
              v58 = "tcp_garbage_collect";
              v59 = 2082;
              v60 = v4 + 556;
              _os_log_impl(&dword_1889BA000, v33, OS_LOG_TYPE_ERROR, "%{public}s %{public}s so->so_usecount <= 0, backtrace limit exceeded", buf, 0x16u);
            }
          }

          if (v14)
          {
            free(v14);
          }

          v9 = *(v4 + 360);
        }
      }

      *(v4 + 360) = v9 - 1;
      goto LABEL_2;
    }

LABEL_13:
    if (!*(v5 + 12) && *(v4 + 296) && (~*(v4 + 376) & 0x830) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v7 = 1;
  }

LABEL_15:
  if (*(a1 + 456) != 0xFFFF)
  {
    goto LABEL_95;
  }

  if (v7)
  {
    result = 1;
    goto LABEL_96;
  }

  if ((*(v4 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v54 = __nwlog_tcp_log();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v58 = "tcp_garbage_collect";
        v59 = 2082;
        v60 = v4 + 556;
        v61 = 1024;
        LODWORD(v62) = 0;
        _os_log_impl(&dword_1889BA000, v54, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s state change to %{network:tcp_state}d", buf, 0x1Cu);
      }
    }
  }

  if ((*(v5 + 91) & 0x40) != 0)
  {
    tcp_remove_timer(v5);
  }

  if (*(a1 + 232) != 3)
  {
    in_pcbdetach(a1);
  }

  v10 = *(a1 + 224);
  if (v10)
  {
    if (*(v10 + 360))
    {
      if ((*(v10 + 776) & 2) != 0)
      {
        goto LABEL_95;
      }

      __nwlog_tcp_log();
      v11 = **(*(v10 + 8) + 8);
      v12 = *(v10 + 360);
      *buf = 136447234;
      v58 = "in_pcbdispose";
      v59 = 2082;
      v60 = v10 + 556;
      v61 = 2048;
      v62 = v10;
      v63 = 1024;
      *v64 = v11;
      *&v64[4] = 1024;
      *&v64[6] = v12;
      v13 = _os_log_send_and_compose_impl();
      if (!__nwlog_fault())
      {
        goto LABEL_92;
      }

      v29 = __nwlog_tcp_log();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_92;
      }

      v30 = **(*(v10 + 8) + 8);
      v31 = *(v10 + 360);
      *buf = 136447234;
      v58 = "in_pcbdispose";
      v59 = 2082;
      v60 = v10 + 556;
      v61 = 2048;
      v62 = v10;
      v63 = 1024;
      *v64 = v30;
      *&v64[4] = 1024;
      *&v64[6] = v31;
      v32 = "%{public}s %{public}s so %p [%d] usecount %d, backtrace limit exceeded";
      v43 = v29;
      v44 = 44;
      goto LABEL_91;
    }

    if (*(a1 + 456) != 0xFFFF)
    {
      if ((*(v10 + 776) & 2) != 0)
      {
        goto LABEL_95;
      }

      __nwlog_tcp_log();
      v23 = *(a1 + 456);
      v24 = **(*(v10 + 8) + 8);
      v25 = *(v10 + 360);
      v26 = *(v10 + 376);
      v27 = *(v10 + 364);
      *buf = 136448258;
      v58 = "in_pcbdispose";
      v59 = 2082;
      v60 = v10 + 556;
      v61 = 2048;
      v62 = a1;
      v63 = 1024;
      *v64 = v23;
      *&v64[4] = 2048;
      *&v64[6] = v10;
      v65 = 1024;
      v66 = v24;
      v67 = 1024;
      v68 = v25;
      v69 = 1024;
      v70 = v26;
      v71 = 1024;
      v72 = v27;
      v28 = _os_log_send_and_compose_impl();
      if (__nwlog_fault())
      {
        v46 = __nwlog_tcp_log();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = *(a1 + 456);
          v48 = **(*(v10 + 8) + 8);
          v49 = *(v10 + 360);
          v50 = *(v10 + 376);
          v51 = *(v10 + 364);
          *buf = 136448258;
          v58 = "in_pcbdispose";
          v59 = 2082;
          v60 = v10 + 556;
          v61 = 2048;
          v62 = a1;
          v63 = 1024;
          *v64 = v47;
          *&v64[4] = 2048;
          *&v64[6] = v10;
          v65 = 1024;
          v66 = v48;
          v67 = 1024;
          v68 = v49;
          v69 = 1024;
          v70 = v50;
          v71 = 1024;
          v72 = v51;
          _os_log_impl(&dword_1889BA000, v46, OS_LOG_TYPE_ERROR, "%{public}s %{public}s inp %p invalid wantcnt %d, so %p [%d] usecount %d retaincnt state 0x%x flags 0x%x, backtrace limit exceeded", buf, 0x48u);
        }
      }

      if (!v28)
      {
        goto LABEL_95;
      }

      v52 = v28;
      goto LABEL_94;
    }
  }

  else if (*(a1 + 456) != 0xFFFF)
  {
    __nwlog_obj();
    v15 = *(a1 + 456);
    *buf = 136446722;
    v58 = "in_pcbdispose";
    v59 = 2048;
    v60 = a1;
    v61 = 1024;
    LODWORD(v62) = v15;
    v16 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v34 = __nwlog_obj();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 456);
        *buf = 136446722;
        v58 = "in_pcbdispose";
        v59 = 2048;
        v60 = a1;
        v61 = 1024;
        LODWORD(v62) = v35;
        _os_log_impl(&dword_1889BA000, v34, OS_LOG_TYPE_ERROR, "%{public}s inp %p invalid wantcnt %d no socket, backtrace limit exceeded", buf, 0x1Cu);
      }
    }

    if (!v16)
    {
      goto LABEL_95;
    }

    v52 = v16;
    goto LABEL_94;
  }

  v17 = *(a1 + 2376);
  if ((v17 & 1) == 0)
  {
    if (g_tcp_nw_assert_context)
    {
      nw_tcp_access_context(*(a1 + 224));
      nw_context_assert_queue();
    }

    v18 = *a1;
    v19 = *(a1 + 8);
    if (*a1)
    {
      *(v18 + 8) = v19;
    }

    *v19 = v18;
    goto LABEL_64;
  }

  if (!g_tcp_nw_assert_context || (nw_tcp_access_context(*(a1 + 224)), nw_context_assert_queue(), v17 = *(a1 + 2376), (v17 & 1) != 0))
  {
    v20 = *(a1 + 240);
    v21 = *(v20 + 832);
    v22 = *(v20 + 840);
    if (v21)
    {
      *(v21 + 840) = v22;
    }

    else
    {
      *(nw_tcp_access_globals(*(a1 + 224)) + 136) = v22;
      v21 = *(v20 + 832);
      v22 = *(v20 + 840);
      v17 = *(a1 + 2376);
    }

    *v22 = v21;
  }

  *(a1 + 2376) = v17 & 0xFFFFFFFE;
  v36 = *(a1 + 16);
  v37 = *(v36 + 64);
  if (v37)
  {
LABEL_62:
    *(v36 + 64) = v37 - 1;
    v38 = *(*(a1 + 240) + 1064);
    if (v38)
    {
      --*(v38 + 1696);
    }

LABEL_64:
    if (!v10)
    {
      goto LABEL_95;
    }

    sofreelastref(v10);
    if (*(v10 + 464) || *(v10 + 384))
    {
      sbrelease(v10 + 464);
      sbrelease(v10 + 384);
    }

    if (!*(v10 + 296))
    {
      *(v10 + 364) |= 4u;
      *v10 = 0;
      *(a1 + 224) = 0;
      v39 = *(a1 + 496);
      if (v39)
      {
        if (*(v39 + 1640) == 1)
        {
          v40 = *(v39 + 1632);
          if (v40)
          {
            free(v40);
            v39 = *(a1 + 496);
            *(v39 + 1632) = 0;
          }

          *(v39 + 1640) = 0;
        }

        *(a1 + 496) = 0;
      }

      v41 = *(v10 + 32);
      if (v41)
      {
        v42 = *(v41 + 64);
        if (v42)
        {
          v42(v10);
        }
      }

      goto LABEL_95;
    }

    if ((*(v10 + 776) & 2) != 0)
    {
      goto LABEL_95;
    }

    __nwlog_tcp_log();
    *buf = 136446722;
    v58 = "in_pcbdispose";
    v59 = 2082;
    v60 = v10 + 556;
    v61 = 2048;
    v62 = v10;
    v13 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault() || (v45 = __nwlog_tcp_log(), !os_log_type_enabled(v45, OS_LOG_TYPE_ERROR)))
    {
LABEL_92:
      if (v13)
      {
        v52 = v13;
LABEL_94:
        free(v52);
      }

LABEL_95:
      result = 0;
      goto LABEL_96;
    }

    *buf = 136446722;
    v58 = "in_pcbdispose";
    v59 = 2082;
    v60 = v10 + 556;
    v61 = 2048;
    v62 = v10;
    v32 = "%{public}s %{public}s so=%p head still exist, backtrace limit exceeded";
    v43 = v45;
    v44 = 32;
LABEL_91:
    _os_log_impl(&dword_1889BA000, v43, OS_LOG_TYPE_ERROR, v32, buf, v44);
    goto LABEL_92;
  }

  v55 = __nwlog_obj();
  os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  v58 = "in_pcbremlists";
  v56 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort();
  if (!result)
  {
    free(v56);
    v36 = *(a1 + 16);
    v37 = *(v36 + 64);
    goto LABEL_62;
  }

  __break(1u);
  return result;
}

uint64_t tcp_timers(uint64_t a1, int a2)
{
  v3 = a1;
  v155 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 80);
  v5 = *(v4 + 448);
  v6 = *(v4 + 224);
  v7 = nw_tcp_access_globals(v6);
  v8 = *(v7 + 308);
  if (a2 > 3)
  {
    v14 = v8 - *(v3 + 164);
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        if (!*(sysctls + 36))
        {
          goto LABEL_349;
        }

        v36 = *(v3 + 88);
        if ((v36 & 2) == 0)
        {
          goto LABEL_349;
        }

        *(v3 + 32) = 0;
        *(v3 + 88) = v36 & 0xFFFFFFFC | 1;
        *(v3 + 320) = 16;
        *(v3 + 752) = 0;
        v37 = *(v3 + 1064);
        if (v37)
        {
          ++*(v37 + 56);
        }

        ++*(v3 + 716);
        goto LABEL_348;
      }

      v15 = *(v3 + 1064);
      if (v15)
      {
        ++*(v15 + 504);
      }

      if (*(v3 + 234) != 12)
      {
        goto LABEL_30;
      }

      if (v14 <= 7199999)
      {
        v16 = *(v3 + 236);
        if (v16 <= (*(v3 + 212) + (*(v3 + 204) >> 3)) >> 2)
        {
          v16 = (*(v3 + 212) + (*(v3 + 204) >> 3)) >> 2;
        }

        if (v14 < (511 * v16))
        {
LABEL_30:
          v17 = *(v3 + 328);
          if (!v17 || v17 - v8 > 0)
          {
            tcp_setpersist(v3);
            *(v3 + 748) |= 0x8000u;
            tcp_output(v3);
            *(v3 + 748) &= ~0x8000u;
            goto LABEL_349;
          }
        }
      }

      if (v15)
      {
        ++*(v15 + 512);
      }

      goto LABEL_235;
    }

    if (a2 != 6)
    {
      if (a2 == 7)
      {
        for (i = *(v3 + 536); i; i = *(v3 + 536))
        {
          v29 = i[2];
          if (*(v3 + 608) == i)
          {
            *(v3 + 608) = v29;
          }

          v27 = i[3];
          v28 = (v29 + 24);
          if (!v29)
          {
            v28 = (v3 + 544);
          }

          *v28 = v27;
          *v27 = v29;
          nw_tcp_access_globals(*(*(v3 + 80) + 224));
          free(i);
          --*(v3 + 530);
          atomic_fetch_add_explicit(tcp_sack_globalholes, 0xFFFFFFFF, memory_order_relaxed);
        }

        *(v3 + 608) = 0u;
        v45 = *(v3 + 12);
        if (v45 == 10 || v45 == 9 || v14 < 1)
        {
          goto LABEL_355;
        }

        v57 = *(v3 + 680);
        if (!v57)
        {
          v57 = *(sysctls + 196);
        }

        v58 = *(v3 + 676);
        if (!v58)
        {
          v58 = *(sysctls + 192);
        }

        if (v14 >= v58 * v57)
        {
LABEL_355:
          if (!v6 || (*(v6 + 776) & 2) == 0)
          {
            v46 = __nwlog_tcp_log();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              v47 = &unk_188A285CF;
              if (v6)
              {
                v47 = (v6 + 556);
              }

              *buf = 136446466;
              *&buf[4] = "tcp_timers";
              *&buf[12] = 2082;
              *&buf[14] = v47;
              _os_log_impl(&dword_1889BA000, v46, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s dropping connection on 2 MSL timeout", buf, 0x16u);
            }
          }

          tcp_close(v3);
          v3 = 0;
        }

        else
        {
          *(v3 + 44) = *(nw_tcp_access_globals(*(*(v3 + 80) + 224)) + 308) + v58 - *(v3 + 64);
        }
      }

      goto LABEL_349;
    }

    v38 = *(v3 + 1064);
    if (v38)
    {
      ++*(v38 + 520);
    }

    v39 = *(v3 + 12);
    if (v39 <= 3)
    {
      if (v39 != 1 || v6 && (*(v6 + 776) & 2) != 0)
      {
LABEL_233:
        v93 = *(v3 + 1064);
        if (v93)
        {
          ++*(v93 + 536);
        }

LABEL_235:
        v65 = v3;
        v64 = 60;
        goto LABEL_236;
      }

      __nwlog_tcp_log();
      if (v6)
      {
        v40 = (v6 + 556);
      }

      else
      {
        v40 = &unk_188A285CF;
      }

      *buf = 136446466;
      *&buf[4] = "tcp_timers";
      *&buf[12] = 2082;
      *&buf[14] = v40;
      v41 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      if (__nwlog_fault())
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v42 = __nwlog_tcp_log();
          v43 = type[0];
          if (!os_log_type_enabled(v42, type[0]))
          {
            goto LABEL_231;
          }

          *buf = 136446466;
          *&buf[4] = "tcp_timers";
          *&buf[12] = 2082;
          *&buf[14] = v40;
          v44 = "%{public}s %{public}s TCP listener failed to receive inbound connection within timeout, dropping connection";
        }

        else
        {
          v42 = __nwlog_tcp_log();
          v43 = type[0];
          if (!os_log_type_enabled(v42, type[0]))
          {
            goto LABEL_231;
          }

          *buf = 136446466;
          *&buf[4] = "tcp_timers";
          *&buf[12] = 2082;
          *&buf[14] = v40;
          v44 = "%{public}s %{public}s TCP listener failed to receive inbound connection within timeout, dropping connection, backtrace limit exceeded";
        }

        _os_log_impl(&dword_1889BA000, v42, v43, v44, buf, 0x16u);
      }

LABEL_231:
      if (v41)
      {
        free(v41);
      }

      goto LABEL_233;
    }

    v48 = *(v3 + 80);
    v49 = *(v48 + 224);
    v50 = *(v49 + 372);
    if ((v50 & 8) != 0 || (*(v3 + 748) & 0x80) != 0 || *(v3 + 1001) == 1)
    {
      if ((v39 - 4) < 4 || v39 == 9)
      {
        if ((v50 & 8) != 0 && (v51 = *(v3 + 668)) != 0)
        {
          v52 = *(v3 + 680);
          if (v52)
          {
            goto LABEL_102;
          }
        }

        else
        {
          v51 = *(sysctls + 188);
          v52 = *(v3 + 680);
          if (v52)
          {
LABEL_102:
            v53 = *(v3 + 676);
            if (v53)
            {
LABEL_103:
              if (v14 >= v51 + v53 * v52)
              {
                if (!v6 || (*(v6 + 776) & 2) == 0)
                {
                  v59 = __nwlog_tcp_log();
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                  {
                    v60 = &unk_188A285CF;
                    if (v6)
                    {
                      v60 = (v6 + 556);
                    }

                    *buf = 136446466;
                    *&buf[4] = "tcp_timers";
                    *&buf[12] = 2082;
                    *&buf[14] = v60;
                    _os_log_impl(&dword_1889BA000, v59, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s dropping connection on keepalive timeout", buf, 0x16u);
                  }
                }

                goto LABEL_233;
              }

              v151 = 0;
              memset(buf, 0, sizeof(buf));
              *type = 0x1000000000;
              if (v38)
              {
                ++*(v38 + 528);
              }

              if ((*(v48 + 2380) & 2) != 0)
              {
                v56 = in6_pseudo();
              }

              else
              {
                v54 = *(v48 + 492);
                v55 = *(v48 + 476);
                v56 = in_pseudo();
              }

              v153 = v56;
              HIDWORD(v61) = *(v48 + 2368);
              LODWORD(v61) = HIDWORD(v61);
              *&v152 = (v61 >> 16);
              *(&v152 + 1) = 0x5000000000;
              v154 = 0;
              tcp_respond(v3, &v152, 0, *(v3 + 120), *(v3 + 92) - 1, 0, type);
              if ((*(v3 + 748) & 0x80) != 0)
              {
                ++*(v3 + 323);
              }

              v62 = *(v3 + 676);
              if (!v62)
              {
                v62 = *(sysctls + 192);
              }

              v49 = *(*(v3 + 80) + 224);
LABEL_146:
              *(v3 + 40) = *(nw_tcp_access_globals(v49) + 308) + v62 - *(v3 + 64);
              if (v5)
              {
                if ((*(v5 + 1196) & 8) != 0 && *(v3 + 323) >= 5u)
                {
                  if (*(*(*(v3 + 80) + 224) + 24))
                  {
                    all_stats = nw_protocol_tcp_get_all_stats();
                    if (all_stats)
                    {
                      *(all_stats + 96) |= 4u;
                    }
                  }
                }
              }

              v67 = *(v3 + 748);
              if ((v67 & 0x80) == 0)
              {
                goto LABEL_205;
              }

              if (*(v3 + 273))
              {
                v68 = *(v3 + 323);
                if (v68 > *(v3 + 273))
                {
                  if (v6)
                  {
                    v69 = *(v6 + 32);
                    if (v69)
                    {
                      v70 = *(v69 + 72);
                      if (v70)
                      {
                        v70(v6);
                      }
                    }
                  }

                  tcp_keepalive_reset(v3);
                  goto LABEL_205;
                }
              }

              else if (!v5 || (*(v5 + 1196) & 8) == 0 || (v68 = *(v3 + 323), v68 >= 6))
              {
                *(v3 + 748) = v67 & 0xFFFFFF7F;
                goto LABEL_205;
              }

              if (v68 >= 0xC)
              {
                v78 = 12;
              }

              else
              {
                v78 = v68;
              }

              if (*(v3 + 236) <= (*(v3 + 212) + (*(v3 + 204) >> 3)) >> 2)
              {
                v80 = (*(v3 + 212) + (*(v3 + 204) >> 3)) >> 2;
              }

              else
              {
                v80 = *(v3 + 236);
              }

              v79 = tcp_backoff[v78];
              *(v3 + 40) = *(nw_tcp_access_globals(*(*(v3 + 80) + 224)) + 308) + v80 * v79 - *(v3 + 64);
LABEL_205:
              v81 = *(v3 + 1001);
              if (v81 == 1)
              {
                v82 = ++*(v3 + 1000);
                if (v82 >= 0xC)
                {
                  v83 = 12;
                }

                else
                {
                  v83 = v82;
                }

                if (*(v3 + 236) <= (*(v3 + 212) + (*(v3 + 204) >> 3)) >> 2)
                {
                  v85 = (*(v3 + 212) + (*(v3 + 204) >> 3)) >> 2;
                }

                else
                {
                  v85 = *(v3 + 236);
                }

                v84 = tcp_backoff[v83];
                v86 = *(nw_tcp_access_globals(*(*(v3 + 80) + 224)) + 308) + v85 * v84 - *(v3 + 64);
                if (v86 >= *(v3 + 40))
                {
                  v86 = *(v3 + 40);
                }

                *(v3 + 40) = v86;
              }

              else if ((*(v3 + 751) & 1) == 0 && v81 == 2 && (*(v3 + 996) & 0x40) == 0)
              {
                tcp_heuristic_tfo_middlebox(v3);
                *(v6 + 378) = 96;
                user_north_signal_error(v6);
                v87 = *(v6 + 32);
                if (v87)
                {
                  v88 = *(v87 + 24);
                  if (v88)
                  {
                    v88(v6);
                  }
                }

                *(v3 + 998) |= 0x2000u;
                v89 = *(v3 + 1064);
                if (v89)
                {
                  ++*(v89 + 1144);
                }
              }

              goto LABEL_349;
            }

LABEL_119:
            v53 = *(sysctls + 192);
            goto LABEL_103;
          }
        }

        v52 = *(sysctls + 196);
        v53 = *(v3 + 676);
        if (v53)
        {
          goto LABEL_103;
        }

        goto LABEL_119;
      }

      if ((v50 & 8) != 0)
      {
        v62 = *(v3 + 668);
        if (v62)
        {
          goto LABEL_146;
        }
      }
    }

    v62 = *(sysctls + 188);
    goto LABEL_146;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if ((*(v3 + 748) & 0x20400020) == 0x20000020)
      {
        tcp_rack_reordering_timeout(v3);
      }

      goto LABEL_349;
    }

    v18 = *(v3 + 234) + 1;
    *(v3 + 234) = v18;
    if (v18 <= 0xCu)
    {
      v19 = *(v3 + 252);
      if (!v19 || (v20 = *(v3 + 256)) == 0 || v8 - v20 < v19)
      {
        v21 = v7;
        if ((*(v3 + 748) & 1) == 0 || (*(v3 + 88) & 0x10) == 0)
        {
          if (v18 < 5u)
          {
            goto LABEL_165;
          }

          v22 = *(v3 + 12);
          if (v22 >= 4 && v5)
          {
            if ((*(v5 + 1196) & 8) != 0)
            {
              if (*(*(*(v3 + 80) + 224) + 24))
              {
                v23 = *(*(*(v3 + 80) + 224) + 24);
                v24 = nw_protocol_tcp_get_all_stats();
                v7 = v21;
                if (v24)
                {
                  v25 = 2;
LABEL_164:
                  *(v24 + 96) |= v25;
                }
              }
            }
          }

          else if (v22 <= 3)
          {
            if (*(*(*(v3 + 80) + 224) + 24))
            {
              v71 = *(*(*(v3 + 80) + 224) + 24);
              v24 = nw_protocol_tcp_get_all_stats();
              v7 = v21;
              if (v24)
              {
                v25 = 8;
                goto LABEL_164;
              }
            }
          }

LABEL_165:
          v72 = *(v3 + 1064);
          if (v72)
          {
            ++*(v72 + 480);
          }

          *(v3 + 224) = 0;
          if (*(v3 + 234) == 1 && *(v3 + 12) == 4)
          {
            *(v3 + 256) = *(v7 + 308);
            tcp_rexmt_save_state(v3);
          }

          if (*(v3 + 274))
          {
            if (*(v3 + 234) > *(v3 + 274) && *(v3 + 12) >= 4)
            {
              if (v6)
              {
                v73 = *(v6 + 32);
                if (v73)
                {
                  v74 = *(v73 + 80);
                  if (v74)
                  {
                    v74(v6);
                  }
                }
              }
            }
          }

          v75 = *(v3 + 748);
          if ((v75 & 0x1000) != 0)
          {
            v75 &= ~0x1000u;
            *(v3 + 748) = v75;
            v76 = *(v3 + 1064);
            if (v76)
            {
              ++*(v76 + 720);
            }
          }

          if ((v75 & 0x4000) != 0)
          {
            *(v3 + 528) = 0;
            *(v3 + 20) = 0;
            v75 &= ~0x4000u;
            *(v3 + 748) = v75;
          }

          if ((v75 & 0x1000000) == 0 && *(v3 + 12) == 3)
          {
            v75 &= 0xFEBFFFFF;
            *(v3 + 748) = v75;
          }

          if ((v75 & 0x1000000) == 0 && (*(v3 + 996) & 0x40) == 0 && (*(v3 + 996) & 0x20) == 0 && (*(v3 + 998) & 0x40) != 0)
          {
            v77 = *(v3 + 234);
            if (*(v3 + 12) == 2)
            {
              if (v77 < 5)
              {
                goto LABEL_245;
              }
            }

            else if (v77 <= 1)
            {
              goto LABEL_245;
            }

            tcp_heuristic_tfo_middlebox(v3);
            *(v6 + 378) = 96;
            user_north_signal_error(v6);
            v94 = *(v6 + 32);
            if (v94)
            {
              v95 = v94[3];
              if (!v95 || (v95(v6), (v94 = *(v6 + 32)) != 0))
              {
                v96 = *v94;
                if (v96)
                {
                  v96(v6);
                }
              }
            }

            *(v3 + 998) |= 0x1000u;
            v97 = *(v3 + 1064);
            if (v97)
            {
              ++*(v97 + 1176);
            }
          }

LABEL_245:
          if ((*(v3 + 751) & 1) == 0 && (*(v3 + 996) & 0x40) == 0 && (*(v3 + 998) & 0x80) != 0 && *(v3 + 234) >= 4u && *(v3 + 168) - *(v3 + 164) - 10000 >= 1)
          {
            tcp_heuristic_tfo_middlebox(v3);
            *(v6 + 378) = 96;
            user_north_signal_error(v6);
            v98 = *(v6 + 32);
            if (v98)
            {
              v99 = v98[3];
              if (!v99 || (v99(v6), (v98 = *(v6 + 32)) != 0))
              {
                v100 = *v98;
                if (v100)
                {
                  v100(v6);
                }
              }
            }
          }

          if (*(v3 + 12) == 2)
          {
            v101 = &tcp_syn_backoff;
            if ((*(sysctls + 316) & 4) != 0 && v5)
            {
              if ((*(v5 + 1202) & 0x80) != 0)
              {
                atomic_fetch_add((v5 + 1144), 1uLL);
                v101 = tcp_backoff;
              }

              else
              {
                v101 = &tcp_syn_backoff;
              }
            }

            v104 = *(v3 + 234);
            v103 = *(v3 + 196) << ((v101[v104] - v101[v104 - 1]) / v101[v104 - 1]);
            *(v3 + 708) = v104;
            v105 = *(v3 + 748);
            if ((v105 & 0x1400000) == 0x400000)
            {
              *(v3 + 748) = v105 & 0xFEBFFFFF;
              *(v3 + 996) |= 0x10u;
            }
          }

          else
          {
            v102 = *(v3 + 236);
            if (v102 <= (*(v3 + 212) + (*(v3 + 204) >> 3)) >> 2)
            {
              v102 = (*(v3 + 212) + (*(v3 + 204) >> 3)) >> 2;
            }

            v103 = v102 * tcp_backoff[*(v3 + 234)];
          }

          if (*(v3 + 12) < 4)
          {
            v106 = 0;
          }

          else
          {
            v106 = *(sysctls + 172);
          }

          v107 = v106 + v103;
          *(v3 + 196) = v106 + v103;
          v108 = *(v3 + 236);
          if (v107 >= v108)
          {
            if (v107 < 0xFA01)
            {
LABEL_273:
              v109 = *(v3 + 80);
              if ((*(sysctls + 316) & 0x10) != 0)
              {
                v110 = *(v109 + 448);
                if (v110)
                {
                  if ((*(v110 + 1202) & 0x80) != 0 && v107 < *(sysctls + 320))
                  {
                    atomic_fetch_add((v110 + 1152), 1uLL);
                    v107 = *(sysctls + 320);
                    *(v3 + 196) = v107;
                    v109 = *(v3 + 80);
                  }
                }
              }

              v111 = nw_tcp_access_globals(*(v109 + 224));
              v112 = *(v3 + 140);
              if (v112 - *(v111 + 308) <= 0)
              {
                v112 = *(v111 + 308);
              }

              *(v3 + 28) = v107 - *(v3 + 64) + v112;
              if ((*(*(v3 + 80) + 2375) & 0x50) != 0)
              {
                goto LABEL_348;
              }

              tcp_free_sackholes(v3);
              v113 = *(v3 + 748);
              if ((v113 & 0x20400020) == 0x20000020)
              {
                tcp_segs_clear_sacked(v3);
                tcp_rack_loss_on_rto(v3);
                v113 = *(v3 + 748);
              }

              if ((v113 & 0x20000) == 0)
              {
                v114 = *(v3 + 12);
                if (v114 != 4)
                {
                  goto LABEL_310;
                }

                v115 = *(v3 + 88);
                if ((v115 & 0x4000000) == 0)
                {
                  goto LABEL_307;
                }

                v116 = *(v3 + 160);
                v117 = sysctls;
                v118 = *(sysctls + 224);
                v119 = v118;
                if (v116 <= v118)
                {
                  v120 = 144;
                  if ((*(*(v3 + 80) + 2380) & 1) == 0)
                  {
                    v120 = 148;
                  }

                  v119 = *(sysctls + v120);
                }

                if (v119 < *(v3 + 688) && *(v3 + 234) == 2)
                {
                  *(v3 + 88) = v115 & 0xDBFFFFFF | 0x20000000;
                  v121 = *(v3 + 200) - v116;
                  *(v3 + 690) = v116;
                  v122 = *(v21 + 308);
                  if (v122 <= 1)
                  {
                    v122 = 1;
                  }

                  *(v3 + 692) = v122;
                  if (v116 <= v118)
                  {
                    v123 = 144;
                    if ((*(*(v3 + 80) + 2380) & 1) == 0)
                    {
                      v123 = 148;
                    }

                    v118 = *(v117 + v123);
                  }

                  *(v3 + 160) = v118;
                  v124 = v121 + v118;
                  *(v3 + 200) = v124;
                  v125 = *(tcp_cc_algo_list[*(v3 + 272)] + 40);
                  if (v125)
                  {
                    v125(v3);
                    v124 = *(v3 + 200);
                    v117 = sysctls;
                  }

                  *(v3 + 148) = v124;
                  if (*(v117 + 284) == 1 && (~*(v3 + 88) & 0x180) == 0 && (*(v117 + 40) == 1 || (*(v6 + 369) & 0x40) != 0) && off_1ED4BF6E8)
                  {
                    off_1ED4BF6E8(v3);
                  }
                }

                else
                {
LABEL_307:
                  if ((v115 & 0x20000000) != 0 && *(v3 + 234) >= 5u)
                  {
                    tcp_pmtud_revert_segment_size(v3);
                    *(v3 + 148) = *(v3 + 200);
                  }
                }
              }

              v114 = *(v3 + 12);
LABEL_310:
              v126 = *(v3 + 234);
              if (v114 == 2)
              {
                if (*(sysctls + 216) == v126)
                {
                  *(v3 + 88) &= 0xFFFFFF5F;
                }

                if (v126 <= 2)
                {
                  if (!v6 || (*(v6 + 776) & 2) == 0)
                  {
                    v127 = __nwlog_tcp_log();
                    if (os_log_type_enabled(v127, OS_LOG_TYPE_INFO))
                    {
                      v128 = (v6 + 556);
                      v129 = *(v3 + 234);
                      *&buf[4] = "tcp_timers";
                      *buf = 136446722;
                      if (!v6)
                      {
                        v128 = &unk_188A285CF;
                      }

                      *&buf[12] = 2082;
                      *&buf[14] = v128;
                      *&buf[22] = 1024;
                      *&buf[24] = v129;
                      v130 = "%{public}s %{public}s retransmit SYN %u";
                      v131 = v127;
                      v132 = OS_LOG_TYPE_INFO;
                      v133 = 28;
LABEL_329:
                      _os_log_impl(&dword_1889BA000, v131, v132, v130, buf, v133);
                      goto LABEL_330;
                    }
                  }

                  goto LABEL_330;
                }
              }

              else if (v126 < 3)
              {
                goto LABEL_333;
              }

              if (!v6 || (*(v6 + 776) & 2) == 0)
              {
                v134 = __nwlog_tcp_log();
                if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
                {
                  v135 = (v6 + 556);
                  v136 = &unk_188A285CF;
                  v137 = *(v3 + 92);
                  if (!v6)
                  {
                    v135 = &unk_188A285CF;
                  }

                  v138 = *(v3 + 12) == 2;
                  v139 = *(v3 + 234);
                  *&buf[4] = "tcp_timers";
                  *buf = 136447234;
                  if (v138)
                  {
                    v136 = " SYN";
                  }

                  *&buf[12] = 2082;
                  *&buf[14] = v135;
                  *&buf[22] = 2082;
                  *&buf[24] = v136;
                  LOWORD(v151) = 1024;
                  *(&v151 + 2) = v137;
                  HIWORD(v151) = 1024;
                  LODWORD(v152) = v139;
                  v130 = "%{public}s %{public}s retransmit%{public}s seq=%u %u";
                  v131 = v134;
                  v132 = OS_LOG_TYPE_DEFAULT;
                  v133 = 44;
                  goto LABEL_329;
                }
              }

LABEL_330:
              v126 = *(v3 + 234);
              if (v126 >= 4)
              {
                *(v3 + 212) += *(v3 + 204) >> 5;
                *(v3 + 204) = 0;
                if ((*(v3 + 1880) & 0xFFFFFFFE) == 2)
                {
                  *(v3 + 216) += *(v3 + 208) >> 5;
                  *(v3 + 208) = 0;
                }
              }

LABEL_333:
              v140 = *(v3 + 88);
              *(v3 + 100) = *(v3 + 92);
              *(v3 + 156) = *(v3 + 96);
              *(v3 + 88) = v140 | 1;
              if (*(v3 + 12) > 3 || v5 && *(v5 + 1224) != 255 && *(v5 + 1168) != 255)
              {
                *(v3 + 176) = 0;
              }

              if ((v140 & 0x200000) != 0)
              {
                if (v126 == 1)
                {
LABEL_343:
                  v142 = *(tcp_cc_algo_list[*(v3 + 272)] + 88);
                  if (v142)
                  {
                    v142(v3);
                    if ((*(v3 + 2096) & 2) == 0)
                    {
                      v143 = *(v3 + 336);
                      if ((~v143 & 3) == 0)
                      {
                        *(v3 + 336) = v143 | 8;
                      }
                    }
                  }
                }
              }

              else if (v126 == 1)
              {
                v141 = *(v3 + 1064);
                if (v141)
                {
                  ++*(v141 + 1608);
                }

                goto LABEL_343;
              }

              *(v3 + 88) &= ~0x200000u;
              *(v3 + 8) = 0;
              *(v3 + 322) = 3;
              *(v3 + 300) = 0;
              *(v3 + 336) &= ~0x20u;
              *(v3 + 16) = 0;
              v144 = *(v3 + 748);
              *(v3 + 992) = 0;
              *(v3 + 620) = 0;
              *(v3 + 748) = v144 & 0xFFE7FFFF;
LABEL_348:
              tcp_output(v3);
              goto LABEL_349;
            }

            v108 = 64000;
          }

          *(v3 + 196) = v108;
          v107 = v108;
          goto LABEL_273;
        }

        if (v18 < 4u)
        {
          goto LABEL_165;
        }
      }
    }

    v63 = *(v3 + 1064);
    if (*(v3 + 748))
    {
      if (v63)
      {
        ++*(v63 + 496);
      }
    }

    else if (v63)
    {
      ++*(v63 + 488);
    }

    *(v3 + 234) = 12;
    if (*(v3 + 264))
    {
      v64 = *(v3 + 264);
    }

    else
    {
      v64 = 60;
    }

    v65 = v3;
LABEL_236:
    tcp_drop(v65, v64);
    v3 = 0;
    goto LABEL_349;
  }

  if (!a2)
  {
    v30 = *(v3 + 748);
    v31 = v30 & 0xFFFFEFFF;
    *(v3 + 748) = v30 & 0xFFFFEFFF;
    if (*(v3 + 12) == 4 && (!*(v3 + 234) || (v30 & 0x200000) != 0))
    {
      v32 = *(v3 + 96);
      v33 = v32 - *(v3 + 92);
      if (v33)
      {
        if ((v30 & 0x20) != 0 && (*(v3 + 90) & 0x20) == 0)
        {
          v34 = *(v6 + 384);
          if (v34 >= *(v3 + 144))
          {
            v34 = *(v3 + 144);
          }

          if ((v34 - v33) < 1)
          {
            v90 = *(v3 + 200);
            if (v33 < v90)
            {
              v90 = v32 - *(v3 + 92);
            }

            v32 -= v90;
            v35 = v31 | 0x40000000;
          }

          else
          {
            v35 = v30 & 0xBFFFEFFF;
          }

          *(v3 + 100) = v32;
          v91 = *(v3 + 1064);
          if (v91)
          {
            ++*(v91 + 712);
            if ((v35 & 0x200000) != 0)
            {
              ++*(v91 + 728);
            }
          }

          *(v3 + 176) = 0;
          *(v3 + 748) = v35 | 0x1000;
          *(v3 + 944) = v8;
          *(v3 + 148) += *(v3 + 200);
          *(v3 + 28) = 0;
          tcp_output(v3);
          *(v3 + 148) -= *(v3 + 200);
          v92 = *(v3 + 100);
          *(v3 + 936) = v92;
          *(v3 + 940) = v92;
        }
      }
    }

    goto LABEL_349;
  }

  if (a2 != 1 || (v9 = *(v3 + 748), *(v3 + 748) = v9 & 0xFFFFBFFF, (*(v3 + 90) & 0x20) != 0) || *(v3 + 92) - *(v3 + 156) >= 0 || *(v3 + 234))
  {
LABEL_349:
    v145 = *MEMORY[0x1E69E9840];
    return v3;
  }

  if ((v9 & 0x20) != 0)
  {
    goto LABEL_9;
  }

  v147 = __nwlog_obj();
  os_log_type_enabled(v147, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  *&buf[4] = "tcp_timers";
  v148 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort();
  if (!result)
  {
    free(v148);
LABEL_9:
    tcp_rexmt_save_state(v3);
    v10 = *(tcp_cc_algo_list[*(v3 + 272)] + 64);
    if (v10)
    {
      v10(v3);
      if ((*(v3 + 2096) & 2) == 0)
      {
        v11 = *(v3 + 336);
        if ((~v11 & 3) == 0)
        {
          *(v3 + 336) = v11 | 8;
        }
      }
    }

    *(v3 + 88) |= 0x200000u;
    v12 = *(v3 + 80);
    if ((*(v12 + 2375) & 0x40) != 0)
    {
      inp_reset_fc_state(v12);
    }

    if (*(v3 + 960))
    {
      tcp_rxtseg_clean(v3);
    }

    *(v3 + 28) = 0;
    v13 = *(v3 + 1064);
    if (v13)
    {
      ++*(v13 + 568);
    }

    ++*(v3 + 1012);
    *(v3 + 148) = *(v3 + 200);
    goto LABEL_348;
  }

  __break(1u);
  return result;
}

double tcp_free_sackholes(uint64_t a1)
{
  for (i = *(a1 + 536); i; i = *(a1 + 536))
  {
    v5 = i[2];
    if (*(a1 + 608) == i)
    {
      *(a1 + 608) = v5;
    }

    v3 = i[3];
    v4 = (v5 + 24);
    if (!v5)
    {
      v4 = (a1 + 544);
    }

    *v4 = v3;
    *v3 = v5;
    nw_tcp_access_globals(*(*(a1 + 80) + 224));
    free(i);
    --*(a1 + 530);
    atomic_fetch_add_explicit(tcp_sack_globalholes, 0xFFFFFFFF, memory_order_relaxed);
  }

  result = 0.0;
  *(a1 + 608) = 0u;
  return result;
}

void tcp_cubic_after_timeout(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 848))
  {
    v10 = __nwlog_obj();
    os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    v11 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort())
    {
      __break(1u);
      return;
    }

    free(v11);
  }

  if (*(a1 + 12) > 3 || *(a1 + 96) - *(a1 + 92) >= 2)
  {
    if ((*(a1 + 90) & 0x20) == 0)
    {
      **(a1 + 848) = 0;
      *(*(a1 + 848) + 4) = 0;
      *(*(a1 + 848) + 8) = 0;
      *(*(a1 + 848) + 12) = 0;
      *(*(a1 + 848) + 16) = 0;
      *(*(a1 + 848) + 28) = 0;
      tcp_cubic_pre_fr(a1);
    }

    v2 = *(a1 + 200);
    v3 = *(a1 + 204);
    *(a1 + 148) = v2;
    if (v3)
    {
      v4 = 32000 * v2 / v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4 << (v2 < *(a1 + 152));
    v6 = *(*(a1 + 80) + 2384);
    if (v6 >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = *(*(a1 + 80) + 2384);
    }

    if (v6 == -1)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    *(a1 + 472) = v8;
    if (v2 <= (v8 >> 12))
    {
      v2 = v8 >> 12;
    }

    *(a1 + 480) = v2;
  }

  v9 = *MEMORY[0x1E69E9840];
}

void nw_protocol_tcp_wake_connected(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  if (*(v3 + 5352) >= 2u)
  {
    if ((*(a1 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v4 = __nwlog_tcp_log();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          *&buf[4] = "nw_protocol_tcp_wake_connected";
          *&buf[12] = 2082;
          *&buf[14] = a1 + 556;
          _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", buf, 0x16u);
        }
      }
    }

    goto LABEL_35;
  }

  *(v3 + 5352) = 2;
  if (*MEMORY[0x1E6977EF0] != -1)
  {
    dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_18);
  }

  if (*MEMORY[0x1E6977EE8] == 1 && kdebug_is_enabled())
  {
    v19 = *(a1 + 640);
    kdebug_trace();
  }

  v21 = 0;
  v22 = 0;
  microuptime(&v21);
  v5 = v21 - *(v3 + 5376);
  v6 = v22 - *(v3 + 5384);
  if (v6 < 0)
  {
    v8 = -1;
    v7 = 1000000;
  }

  else
  {
    if (v6 <= 0xF423F)
    {
      goto LABEL_16;
    }

    v7 = -1000000;
    v8 = 1;
  }

  LODWORD(v5) = v8 + v5;
  v6 += v7;
LABEL_16:
  *(v3 + 5424) = v6 + 1000000 * v5;
  nw_protocol_upcast();
  nw_protocol_get_input_handler();
  if (nw_protocol_get_parameters())
  {
    v9 = nw_parameters_copy_protocol_options_legacy();
    if (v9)
    {
      v10 = v9;
      if (nw_protocol_options_is_tcp())
      {
        v11 = MEMORY[0x18CFDD160](v10);
        v20 = v11;
        if (v11)
        {
          if ((*(a1 + 776) & 2) == 0)
          {
            v12 = v11;
            v13 = __nwlog_tcp_log();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446722;
              *&buf[4] = "nw_protocol_tcp_wake_connected";
              *&buf[12] = 2082;
              *&buf[14] = a1 + 556;
              *&buf[22] = 1024;
              LODWORD(v24) = v12;
              _os_log_impl(&dword_1889BA000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s setting MSS to %d", buf, 0x1Cu);
            }
          }

          *buf = 0x600000001;
          *&buf[8] = 2;
          *&buf[16] = &v20;
          v24 = 4;
          (*(*(v3 + 8) + 16))(v3, 1, v1);
          if ((~*(v3 + 376) & 0x30) != 0 || (*(v3 + 365) & 0x20) != 0)
          {
            v14 = tcp_ctloutput(v3, buf);
          }

          else
          {
            v14 = 22;
          }

          (*(*(v3 + 8) + 24))(v3, 1, v1);
          if (v14)
          {
            __nwlog_obj();
            v15 = a1 + 556;
            *buf = 136446722;
            *&buf[4] = "nw_protocol_tcp_wake_connected";
            *&buf[12] = 2082;
            *&buf[14] = a1 + 556;
            *&buf[22] = 1024;
            LODWORD(v24) = v14;
            v16 = _os_log_send_and_compose_impl();
            if (__nwlog_fault())
            {
              v17 = __nwlog_obj();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                *&buf[4] = "nw_protocol_tcp_wake_connected";
                *&buf[12] = 2082;
                *&buf[14] = v15;
                *&buf[22] = 1024;
                LODWORD(v24) = v14;
                _os_log_impl(&dword_1889BA000, v17, OS_LOG_TYPE_ERROR, "%{public}s %{public}s tcp_setsockopt TCP_MAXSEG failed %{darwin.errno}d, backtrace limit exceeded", buf, 0x1Cu);
              }
            }

            if (v16)
            {
              free(v16);
            }
          }
        }
      }

      nw_release(v10);
    }
  }

  nw_protocol_get_input_handler();
  nw_protocol_connected_quiet();
LABEL_35:
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t nw_protocol_tcp_waiting_for_output(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v8 = "nw_protocol_tcp_waiting_for_output";
    v4 = _os_log_send_and_compose_impl();
    if (!__nwlog_fault())
    {
      goto LABEL_14;
    }

    v5 = __nwlog_obj();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 136446210;
    v8 = "nw_protocol_tcp_waiting_for_output";
    v6 = "%{public}s called with null protocol, backtrace limit exceeded";
    goto LABEL_13;
  }

  v1 = nw_protocol_downcast();
  if (v1)
  {
    result = (*(v1 + 5436) >> 5) & 1;
    goto LABEL_4;
  }

  __nwlog_obj();
  *buf = 136446210;
  v8 = "nw_protocol_tcp_waiting_for_output";
  v4 = _os_log_send_and_compose_impl();
  if (__nwlog_fault())
  {
    v5 = __nwlog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v8 = "nw_protocol_tcp_waiting_for_output";
      v6 = "%{public}s called with null tcp, backtrace limit exceeded";
LABEL_13:
      _os_log_impl(&dword_1889BA000, v5, OS_LOG_TYPE_ERROR, v6, buf, 0xCu);
    }
  }

LABEL_14:
  if (v4)
  {
    free(v4);
  }

  result = 0;
LABEL_4:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void tcp_set_new_cc(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 240);
  if (*(v2 + 272) != a2)
  {
    v5 = *(tcp_cc_algo_list[*(v2 + 272)] + 32);
    if (v5)
    {
      v5(*(*a1 + 240));
    }

    *(v2 + 272) = a2;
    if (*(a1 + 24))
    {
      all_stats = nw_protocol_tcp_get_all_stats();
      if (all_stats)
      {
        *(all_stats + 132) = a2;
      }
    }

    v7 = *(v2 + 272);
    if ((v7 - 2) <= 2 && !*(v2 + 848))
    {
      *(v2 + 848) = v2 + 856;
      *(v2 + 856) = 0u;
      *(v2 + 872) = 0u;
      *(v2 + 888) = 0u;
      *(v2 + 904) = 0u;
      *(v2 + 920) = 0u;
    }

    v8 = *(tcp_cc_algo_list[v7] + 120);
    if (v8)
    {
      v8(v2);
    }

    if ((*(a1 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v10 = __nwlog_tcp_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = tcp_cc_algo_list[*(v2 + 272)];
          v12 = 136446722;
          v13 = "tcp_set_new_cc";
          v14 = 2082;
          v15 = a1 + 556;
          v16 = 2082;
          v17 = v11;
          _os_log_impl(&dword_1889BA000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s cc_algo %{public}s", &v12, 0x20u);
        }
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t tcp_set_rto(uint64_t a1)
{
  v2 = *(a1 + 80);
  if ((*(sysctls + 316) & 0x10) != 0)
  {
    v3 = *(v2 + 448);
    if (v3)
    {
      if ((*(v3 + 1202) & 0x80) != 0 && *(a1 + 196) < *(sysctls + 320))
      {
        atomic_fetch_add((v3 + 1152), 1uLL);
        *(a1 + 196) = *(sysctls + 320);
        v2 = *(a1 + 80);
      }
    }
  }

  v4 = *(a1 + 196);
  result = nw_tcp_access_globals(*(v2 + 224));
  v6 = *(a1 + 140);
  if (v6 - *(result + 308) <= 0)
  {
    v6 = *(result + 308);
  }

  *(a1 + 28) = v4 - *(a1 + 64) + v6;
  return result;
}

_DWORD *tcp_update_sack_list(_DWORD *result, int a2, int a3)
{
  v3 = result;
  __src[6] = *MEMORY[0x1E69E9840];
  v4 = result[139];
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = result + 140;
    do
    {
      v7 = *v6;
      v8 = HIDWORD(*v6);
      if (v7 - v8 < 0 && v7 - result[30] >= 1)
      {
        if (a2 - v8 > 0 || a3 - v7 < 0)
        {
          __src[v5++] = *v6;
        }

        else
        {
          if (a2 - v7 > 0)
          {
            a2 = *v6;
          }

          if (a3 - v8 < 0)
          {
            a3 = HIDWORD(*v6);
          }
        }
      }

      ++v6;
      --v4;
    }

    while (v4);
  }

  if (a2 - result[30] < 1)
  {
    v9 = 0;
    if (v5 < 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  result[140] = a2;
  result[141] = a3;
  v5 -= v5 > 5;
  v9 = 1;
  if (v5 >= 1)
  {
LABEL_17:
    result = memcpy(&result[2 * v9 + 140], __src, 8 * v5);
  }

LABEL_18:
  v3[139] = v5 + v9;
  if ((v5 + v9) >= 1)
  {
    *(v3 + 160) = 16;
    if (*(v3 + 381))
    {
      *(v3 + 381) = 0;
      v3[188] = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void nw_protocol_tcp_set_receive_low_water_mark(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = nw_protocol_downcast();
  if (!v4)
  {
    __nwlog_obj();
    *buf = 136446210;
    v21 = "nw_protocol_tcp_set_receive_low_water_mark";
    v15 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v19 = __nwlog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v21 = "nw_protocol_tcp_set_receive_low_water_mark";
        _os_log_impl(&dword_1889BA000, v19, OS_LOG_TYPE_ERROR, "%{public}s called with null tcp, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v15)
    {
      free(v15);
    }

    goto LABEL_22;
  }

  v5 = v4;
  if (a2 <= 1)
  {
    a2 = 1;
  }

  if (*(v4 + 472) == a2)
  {
    goto LABEL_22;
  }

  (*(*(v4 + 8) + 16))(v4, 1, v2);
  if ((~*(v5 + 376) & 0x30) != 0)
  {
    if (a2 <= 0)
    {
      goto LABEL_8;
    }
  }

  else if ((*(v5 + 365) & 0x20) == 0 || a2 < 1)
  {
LABEL_8:
    (*(*(v5 + 8) + 24))(v5, 1, v2);
    v6 = __nwlog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v21 = "nw_protocol_tcp_set_receive_low_water_mark";
      v22 = 1024;
      *v23 = a2;
      *&v23[4] = 1024;
      *&v23[6] = 22;
      v7 = "%{public}s setsockopt SO_RCVLOWAT %u failed %{darwin.errno}d";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 24;
LABEL_10:
      _os_log_impl(&dword_1889BA000, v8, v9, v7, buf, v10);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v11 = *(v5 + 468) / 3u;
  if (a2 <= *(v5 + 468) / 3)
  {
    v11 = a2;
  }

  if (v11 >= 0x4000)
  {
    v12 = 0x4000;
  }

  else
  {
    v12 = v11;
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  *(v5 + 472) = v13;
  (*(*(v5 + 8) + 24))(v5, 1, v2);
  if ((*(v5 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v16 = __nwlog_tcp_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(v5 + 472);
        v18 = *(v5 + 464);
        *buf = 136446978;
        v21 = "nw_protocol_tcp_set_receive_low_water_mark";
        v22 = 2082;
        *v23 = v5 + 556;
        *&v23[8] = 1024;
        v24 = v17;
        v25 = 1024;
        v26 = v18;
        v7 = "%{public}s %{public}s so_rcv.sb_lowat %u sb_cc %u";
        v8 = v16;
        v9 = OS_LOG_TYPE_DEBUG;
        v10 = 34;
        goto LABEL_10;
      }
    }
  }

LABEL_22:
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t nw_protocol_tcp_get_input_frames(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5, void *a6)
{
  v116 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    v106 = "nw_protocol_tcp_get_input_frames";
    v60 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v103 = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_124;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v77 = __nwlog_obj();
      v78 = type;
      if (!os_log_type_enabled(v77, type))
      {
        goto LABEL_124;
      }

      *buf = 136446210;
      v106 = "nw_protocol_tcp_get_input_frames";
      v63 = "%{public}s called with null protocol";
      goto LABEL_166;
    }

    if (v103 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v77 = __nwlog_obj();
      v78 = type;
      v79 = os_log_type_enabled(v77, type);
      if (backtrace_string)
      {
        if (!v79)
        {
          goto LABEL_117;
        }

        *buf = 136446466;
        v106 = "nw_protocol_tcp_get_input_frames";
        v107 = 2082;
        *v108 = backtrace_string;
        v66 = "%{public}s called with null protocol, dumping backtrace:%{public}s";
        goto LABEL_151;
      }

      if (!v79)
      {
        goto LABEL_124;
      }

      *buf = 136446210;
      v106 = "nw_protocol_tcp_get_input_frames";
      v63 = "%{public}s called with null protocol, no backtrace";
    }

    else
    {
      v77 = __nwlog_obj();
      v78 = type;
      if (!os_log_type_enabled(v77, type))
      {
        goto LABEL_124;
      }

      *buf = 136446210;
      v106 = "nw_protocol_tcp_get_input_frames";
      v63 = "%{public}s called with null protocol, backtrace limit exceeded";
    }

LABEL_166:
    v70 = v77;
    v71 = v78;
    v72 = 12;
    goto LABEL_123;
  }

  v12 = nw_protocol_downcast();
  if (!v12)
  {
    __nwlog_obj();
    *buf = 136446210;
    v106 = "nw_protocol_tcp_get_input_frames";
    v60 = _os_log_send_and_compose_impl();
    type = OS_LOG_TYPE_ERROR;
    v103 = 0;
    if (!__nwlog_fault())
    {
      goto LABEL_124;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v77 = __nwlog_obj();
      v78 = type;
      if (!os_log_type_enabled(v77, type))
      {
        goto LABEL_124;
      }

      *buf = 136446210;
      v106 = "nw_protocol_tcp_get_input_frames";
      v63 = "%{public}s called with null tcp";
      goto LABEL_166;
    }

    if (v103 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v77 = __nwlog_obj();
      v78 = type;
      v80 = os_log_type_enabled(v77, type);
      if (backtrace_string)
      {
        if (!v80)
        {
          goto LABEL_117;
        }

        *buf = 136446466;
        v106 = "nw_protocol_tcp_get_input_frames";
        v107 = 2082;
        *v108 = backtrace_string;
        v66 = "%{public}s called with null tcp, dumping backtrace:%{public}s";
LABEL_151:
        v67 = v77;
        v68 = v78;
        v69 = 22;
        goto LABEL_116;
      }

      if (!v80)
      {
        goto LABEL_124;
      }

      *buf = 136446210;
      v106 = "nw_protocol_tcp_get_input_frames";
      v63 = "%{public}s called with null tcp, no backtrace";
    }

    else
    {
      v77 = __nwlog_obj();
      v78 = type;
      if (!os_log_type_enabled(v77, type))
      {
        goto LABEL_124;
      }

      *buf = 136446210;
      v106 = "nw_protocol_tcp_get_input_frames";
      v63 = "%{public}s called with null tcp, backtrace limit exceeded";
    }

    goto LABEL_166;
  }

  v13 = v12;
  v14 = *(v12 + 5352);
  if (v14 <= 1)
  {
    if ((*(v12 + 776) & 2) != 0)
    {
LABEL_126:
      result = 0;
      goto LABEL_127;
    }

    result = __nwlog_is_datapath_logging_enabled();
    if (result)
    {
      v16 = __nwlog_tcp_log();
      result = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        *buf = 136446466;
        v106 = "nw_protocol_tcp_get_input_frames";
        v107 = 2082;
        *v108 = v13 + 556;
        v17 = "%{public}s %{public}s skipping";
LABEL_8:
        _os_log_impl(&dword_1889BA000, v16, OS_LOG_TYPE_DEBUG, v17, buf, 0x16u);
        goto LABEL_126;
      }
    }

    goto LABEL_127;
  }

  if (v14 == 2)
  {
LABEL_13:
    if (*(v13 + 468) < a3)
    {
      if ((*(v13 + 776) & 2) == 0)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          v81 = __nwlog_tcp_log();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
          {
            v82 = *(v13 + 468);
            *buf = 136446978;
            v106 = "nw_protocol_tcp_get_input_frames";
            v107 = 2082;
            *v108 = v13 + 556;
            *&v108[8] = 1024;
            LODWORD(v109) = a3;
            WORD2(v109) = 1024;
            *(&v109 + 6) = v82;
            _os_log_impl(&dword_1889BA000, v81, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s capping minimum_bytes %u to sb_hiwat %u", buf, 0x22u);
          }
        }
      }

      a3 = *(v13 + 468);
    }

    v19 = *(v13 + 8);
    v20 = *(*v13 + 240);
    (*(v19 + 16))(v13, 1, v6);
    if (*(v13 + 360) == 1)
    {
      if ((*(v13 + 776) & 2) != 0)
      {
        goto LABEL_106;
      }

      __nwlog_tcp_log();
      *buf = 136446466;
      v106 = "tcp_get_northbound_frames";
      v107 = 2082;
      *v108 = v13 + 556;
      v21 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v103 = 0;
      if (!__nwlog_fault())
      {
        goto LABEL_66;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_tcp_log();
        v23 = type;
        if (!os_log_type_enabled(v22, type))
        {
          goto LABEL_66;
        }

        *buf = 136446466;
        v106 = "tcp_get_northbound_frames";
        v107 = 2082;
        *v108 = v13 + 556;
        v24 = "%{public}s %{public}s no other reference on socket";
      }

      else if (v103 == 1)
      {
        v30 = __nw_create_backtrace_string();
        v22 = __nwlog_tcp_log();
        v23 = type;
        v31 = os_log_type_enabled(v22, type);
        if (v30)
        {
          if (v31)
          {
            *buf = 136446722;
            v106 = "tcp_get_northbound_frames";
            v107 = 2082;
            *v108 = v13 + 556;
            *&v108[8] = 2082;
            *&v109 = v30;
            _os_log_impl(&dword_1889BA000, v22, type, "%{public}s %{public}s no other reference on socket, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(v30);
          goto LABEL_66;
        }

        if (!v31)
        {
LABEL_66:
          if (v21)
          {
            free(v21);
          }

          goto LABEL_106;
        }

        *buf = 136446466;
        v106 = "tcp_get_northbound_frames";
        v107 = 2082;
        *v108 = v13 + 556;
        v24 = "%{public}s %{public}s no other reference on socket, no backtrace";
      }

      else
      {
        v22 = __nwlog_tcp_log();
        v23 = type;
        if (!os_log_type_enabled(v22, type))
        {
          goto LABEL_66;
        }

        *buf = 136446466;
        v106 = "tcp_get_northbound_frames";
        v107 = 2082;
        *v108 = v13 + 556;
        v24 = "%{public}s %{public}s no other reference on socket, backtrace limit exceeded";
      }

      _os_log_impl(&dword_1889BA000, v22, v23, v24, buf, 0x16u);
      goto LABEL_66;
    }

    v25 = (v13 + 464);
    if ((*(v13 + 364) & 8) != 0)
    {
      **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 57;
      if ((*(v13 + 776) & 2) == 0)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          v84 = __nwlog_tcp_log();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136446722;
            v106 = "tcp_get_northbound_frames";
            v107 = 2082;
            *v108 = v13 + 556;
            *&v108[8] = 1024;
            LODWORD(v109) = 57;
            _os_log_impl(&dword_1889BA000, v84, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s defunct socket error (%d)", buf, 0x1Cu);
          }
        }
      }

      if (*(v13 + 376) < 0)
      {
        sb_empty_assert((v13 + 464), "tcp_get_northbound_frames");
      }

      goto LABEL_105;
    }

    if ((*(v13 + 368) & 0x20) != 0)
    {
      v26 = *(*(v19 + 40) + 88);
      if (v26)
      {
        v27 = v26(v13);
        **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = v27;
        if (v27)
        {
LABEL_105:
          (*(*(v13 + 8) + 24))(v13, 1, v6);
          goto LABEL_106;
        }
      }
    }

    if ((~*(v13 + 376) & 0x21) == 0 && (*(v13 + 367) & 1) == 0)
    {
      v28 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      v29 = 45;
LABEL_104:
      *v28 = v29;
      goto LABEL_105;
    }

    v96 = v20;
    v32 = *v25;
    if (*v25 >= a3 || v32 >= *(v13 + 472))
    {
      v33 = v32 >= a4 ? a4 : *v25;
      if (v33)
      {
        v95 = (v13 + 464);
        v34 = *(v13 + 480);
        if (v34)
        {
          v35 = (v13 + 480);
          v92 = a5;
          if (v32 <= a4)
          {
            v45 = a6[1];
            *v45 = v34;
            *(*(v13 + 480) + 40) = v45;
            a6[1] = *(v13 + 488);
            *(v13 + 480) = 0;
            *(v13 + 488) = v35;
            v36 = 1;
          }

          else
          {
            v36 = 0;
            v32 = 0;
            v37 = v33;
            while (1)
            {
              v38 = *(v34 + 52);
              if (v38)
              {
                v38 -= *(v34 + 56) + *(v34 + 60);
              }

              v39 = v37 - v38;
              if (v37 < v38)
              {
                break;
              }

              v32 += v38;
              v40 = (v34 + 32);
              v41 = *(v34 + 32);
              v42 = *(v34 + 40);
              v43 = (v41 + 40);
              if (!v41)
              {
                v43 = (v13 + 488);
              }

              *v43 = v42;
              *v42 = v41;
              *(v34 + 40) = 0;
              *v40 = 0;
              v44 = a6[1];
              *(v34 + 40) = v44;
              *v44 = v34;
              a6[1] = v40;
              v36 = (v36 + 1);
              v34 = *v35;
              if (*v35)
              {
                v37 = v39;
                if (v39)
                {
                  continue;
                }
              }

              goto LABEL_71;
            }

            v39 = v37;
LABEL_71:
            if (v34 && v39)
            {
              v87 = (v13 + 488);
              log = (v13 + 480);
              v93 = v33;
              v91 = v36;
              v46 = nw_protocol_tcp_copy_frame(v13, v34, v39);
              if (!v46)
              {
                if (log->isa)
                {
                  v51 = a6[1];
                  *v51 = log->isa;
                  *(log->isa + 5) = v51;
                  a6[1] = *v87;
                  log->isa = 0;
                  *v87 = log;
                }

                if (*a6)
                {
                  v52 = *v87;
                  *v52 = *a6;
                  *(*a6 + 40) = v52;
                  *v87 = a6[1];
                  *a6 = 0;
                  a6[1] = a6;
                }

                if ((*(v34 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && ((*MEMORY[0x1E6977EF8])(v34, *(v34 + 88)) & 1) == 0)
                {
                  *(v96 + 1064) = 0;
                }

                **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8) = 55;
                goto LABEL_106;
              }

              v47 = v46;
              if ((*(v34 + 204) & 0x80) != 0)
              {
                *(v34 + 196) -= v39;
              }

              v48 = *(v34 + 56) + v39;
              if (v48 <= *(v34 + 52) - *(v34 + 60))
              {
                *(v34 + 56) = v48;
              }

              else
              {
                v86 = *(v34 + 56) + v39;
                v88 = *(v34 + 60);
                v97 = v46;
                loga = __nwlog_obj();
                v49 = os_log_type_enabled(loga, OS_LOG_TYPE_ERROR);
                v47 = v97;
                if (v49)
                {
                  v50 = *(v34 + 52);
                  *buf = 136446978;
                  v106 = "__nw_frame_claim_internal";
                  v107 = 1024;
                  *v108 = v86;
                  *&v108[4] = 1024;
                  *&v108[6] = v50;
                  LOWORD(v109) = 1024;
                  *(&v109 + 2) = v88;
                  _os_log_impl(&dword_1889BA000, loga, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
                  v47 = v97;
                }
              }

              *(v47 + 32) = 0;
              v32 += v39;
              v53 = a6[1];
              *(v47 + 40) = v53;
              *v53 = v47;
              a6[1] = v47 + 32;
              v36 = (v91 + 1);
              v33 = v93;
            }
          }

          if (v32)
          {
            v94 = v33;
            v54 = v36;
            *(v13 + 464) -= v32;
            if (*(v13 + 24))
            {
              all_stats = nw_protocol_tcp_get_all_stats();
              if (all_stats)
              {
                *(all_stats + 92) = *v95;
              }
            }

            if (*v13)
            {
              (*(*(v19 + 40) + 56))(v13, 0);
            }

            if (v94 != v32)
            {
              v56 = __nwlog_obj();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446722;
                v106 = "tcp_get_northbound_frames";
                v107 = 1024;
                *v108 = v94;
                *&v108[4] = 1024;
                *&v108[6] = v32;
                _os_log_impl(&dword_1889BA000, v56, OS_LOG_TYPE_ERROR, "%{public}s Failed to copy expected bytes, total_space %u != adj_space %u", buf, 0x18u);
              }
            }

            (*(*(v13 + 8) + 24))(v13, 1, v6);
            if ((v94 & 0x80000000) == 0)
            {
              if (*(v13 + 5360))
              {
                nw_protocol_tcp_update_metadata(a1);
                v57 = (*(v13 + 376) & 0x20) != 0 && *v95 == 0;
                v98[0] = MEMORY[0x1E69E9820];
                v98[1] = 0x40000000;
                v99 = __nw_protocol_tcp_get_input_frames_block_invoke;
                v100 = &__block_descriptor_tmp_30;
                v101 = v13;
                v102 = v57;
                v74 = *a6;
                do
                {
                  if (!v74)
                  {
                    break;
                  }

                  v75 = *(v74 + 32);
                  v76 = (v99)(v98);
                  v74 = v75;
                }

                while ((v76 & 1) != 0);
              }

              nw_protocol_tcp_set_receive_low_water_mark(a1, 1);
              if ((*(v13 + 776) & 2) == 0)
              {
                if (__nwlog_is_datapath_logging_enabled())
                {
                  v85 = __nwlog_tcp_log();
                  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136448002;
                    v106 = "nw_protocol_tcp_get_input_frames";
                    v107 = 2082;
                    *v108 = v13 + 556;
                    *&v108[8] = 1024;
                    LODWORD(v109) = a3;
                    WORD2(v109) = 1024;
                    *(&v109 + 6) = a4;
                    WORD5(v109) = 1024;
                    HIDWORD(v109) = v92;
                    v110 = 1024;
                    v111 = v54;
                    v112 = 1024;
                    v113 = v32;
                    v114 = 1024;
                    v115 = v94;
                    _os_log_impl(&dword_1889BA000, v85, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Asked for min %u max %u bytes, max %u frames and got %d frames %u bytes, ret %u", buf, 0x3Au);
                  }
                }
              }

              result = v54;
              goto LABEL_127;
            }

LABEL_106:
            v58 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
            if (v58 == 35)
            {
              nw_protocol_tcp_set_receive_low_water_mark(a1, a3);
              goto LABEL_126;
            }

            __nwlog_obj();
            v59 = v13 + 556;
            *buf = 136446722;
            v106 = "nw_protocol_tcp_get_input_frames";
            v107 = 2082;
            *v108 = v13 + 556;
            *&v108[8] = 1024;
            LODWORD(v109) = v58;
            v60 = _os_log_send_and_compose_impl();
            type = OS_LOG_TYPE_ERROR;
            v103 = 0;
            if (__nwlog_fault())
            {
              if (type == OS_LOG_TYPE_FAULT)
              {
                v61 = __nwlog_obj();
                v62 = type;
                if (!os_log_type_enabled(v61, type))
                {
                  goto LABEL_124;
                }

                *buf = 136446722;
                v106 = "nw_protocol_tcp_get_input_frames";
                v107 = 2082;
                *v108 = v59;
                *&v108[8] = 1024;
                LODWORD(v109) = v58;
                v63 = "%{public}s %{public}s tcp_get_northbound_frame, returned NULL %{darwin.errno}d";
LABEL_122:
                v70 = v61;
                v71 = v62;
                v72 = 28;
LABEL_123:
                _os_log_impl(&dword_1889BA000, v70, v71, v63, buf, v72);
                goto LABEL_124;
              }

              if (v103 != 1)
              {
                v61 = __nwlog_obj();
                v62 = type;
                if (!os_log_type_enabled(v61, type))
                {
                  goto LABEL_124;
                }

                *buf = 136446722;
                v106 = "nw_protocol_tcp_get_input_frames";
                v107 = 2082;
                *v108 = v59;
                *&v108[8] = 1024;
                LODWORD(v109) = v58;
                v63 = "%{public}s %{public}s tcp_get_northbound_frame, returned NULL %{darwin.errno}d, backtrace limit exceeded";
                goto LABEL_122;
              }

              backtrace_string = __nw_create_backtrace_string();
              v61 = __nwlog_obj();
              v62 = type;
              v65 = os_log_type_enabled(v61, type);
              if (!backtrace_string)
              {
                if (!v65)
                {
                  goto LABEL_124;
                }

                *buf = 136446722;
                v106 = "nw_protocol_tcp_get_input_frames";
                v107 = 2082;
                *v108 = v59;
                *&v108[8] = 1024;
                LODWORD(v109) = v58;
                v63 = "%{public}s %{public}s tcp_get_northbound_frame, returned NULL %{darwin.errno}d, no backtrace";
                goto LABEL_122;
              }

              if (!v65)
              {
LABEL_117:
                free(backtrace_string);
                goto LABEL_124;
              }

              *buf = 136446978;
              v106 = "nw_protocol_tcp_get_input_frames";
              v107 = 2082;
              *v108 = v59;
              *&v108[8] = 1024;
              LODWORD(v109) = v58;
              WORD2(v109) = 2082;
              *(&v109 + 6) = backtrace_string;
              v66 = "%{public}s %{public}s tcp_get_northbound_frame, returned NULL %{darwin.errno}d, dumping backtrace:%{public}s";
              v67 = v61;
              v68 = type;
              v69 = 38;
LABEL_116:
              _os_log_impl(&dword_1889BA000, v67, v68, v66, buf, v69);
              goto LABEL_117;
            }

LABEL_124:
            if (v60)
            {
              free(v60);
            }

            goto LABEL_126;
          }
        }
      }
    }

    v28 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    v29 = 35;
    goto LABEL_104;
  }

  v18 = *(v12 + 776);
  if (*(v12 + 464))
  {
    if ((*(v12 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v83 = __nwlog_tcp_log();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446466;
          v106 = "nw_protocol_tcp_get_input_frames";
          v107 = 2082;
          *v108 = v13 + 556;
          _os_log_impl(&dword_1889BA000, v83, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s allowing read past connected state", buf, 0x16u);
        }
      }
    }

    goto LABEL_13;
  }

  if ((*(v12 + 776) & 2) != 0)
  {
    goto LABEL_126;
  }

  result = __nwlog_is_datapath_logging_enabled();
  if (result)
  {
    v16 = __nwlog_tcp_log();
    result = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      *buf = 136446466;
      v106 = "nw_protocol_tcp_get_input_frames";
      v107 = 2082;
      *v108 = v13 + 556;
      v17 = "%{public}s %{public}s past connected state, skipping";
      goto LABEL_8;
    }
  }

LABEL_127:
  v73 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tcp_usr_rcvd(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 22;
  }

  if (*(v1 + 232) == 3)
  {
    return 22;
  }

  v4 = *(v1 + 240);
  v5 = nw_tcp_access_globals(*(v1 + 224));
  v17 = 0;
  v18 = 0;
  microuptime(&v17);
  v6 = v18 / 1000 + 1000 * v17;
  if (*(v5 + 308) < v6)
  {
    *v5 = v17;
    *(v5 + 308) = v6;
  }

  if (v4)
  {
    if (*(sysctls + 68) == 1)
    {
      v7 = a1;
      v8 = *(a1 + 125);
      if (v8)
      {
        v9 = *(a1 + 117);
        v10 = v9 - v8;
        if (v9 > v8)
        {
          v11 = v8 >> 4;
          if (v4[31] - v4[30] > v11)
          {
            v11 = v4[31] - v4[30];
          }

          if (!v11)
          {
            v11 = 8 * v4[50];
          }

          v12 = v9 - *(a1 + 116) - v11;
          if (v12 < v10)
          {
            v10 = v12;
          }

          if (v10 >= 1)
          {
            v13 = v9 - v10;
            if (v13 <= 0x71C71C)
            {
              *(a1 + 117) = v13;
              v14 = *(a1[64] + 24);
              if ((a1[62] & 4) != 0)
              {
                if (v14)
                {
                  all_stats = nw_protocol_tcp_get_all_stats();
                  v7 = a1;
                  v13 = *(a1 + 117);
                  if (all_stats)
                  {
                    *(all_stats + 88) = v13;
                  }
                }
              }

              else if (v14)
              {
                v15 = nw_protocol_tcp_get_all_stats();
                v7 = a1;
                v13 = *(a1 + 117);
                if (v15)
                {
                  *(v15 + 100) = v13;
                }
              }

              if (*(v7 + 118) > v13)
              {
                *(v7 + 118) = v13;
              }
            }
          }
        }
      }
    }

    if (v4[3] >= 4)
    {
      tcp_output(v4);
    }
  }

  return 0;
}

uint64_t __nw_protocol_tcp_get_input_frames_block_invoke(uint64_t a1, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 5360);
  if (*(a1 + 40) == 1)
  {
    v4 = (*(a2 + 32) == 0) << 6;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = (a2 + 204);
    if ((*(a2 + 204) & 8) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_15;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    v41 = "__nw_frame_set_metadata";
    v13 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    if (__nwlog_fault())
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v33 = __nwlog_obj();
        v34 = type[0];
        if (os_log_type_enabled(v33, type[0]))
        {
          *buf = 136446210;
          v41 = "__nw_frame_set_metadata";
          v16 = "%{public}s called with null frame";
LABEL_69:
          v29 = v33;
          v30 = v34;
          v31 = 12;
LABEL_53:
          _os_log_impl(&dword_1889BA000, v29, v30, v16, buf, v31);
        }
      }

      else
      {
        v33 = __nwlog_obj();
        v34 = type[0];
        if (os_log_type_enabled(v33, type[0]))
        {
          *buf = 136446210;
          v41 = "__nw_frame_set_metadata";
          v16 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_69;
        }
      }
    }

LABEL_54:
    if (v13)
    {
      free(v13);
    }

    goto LABEL_56;
  }

  v4 = 0;
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (MEMORY[0x18CFDCEC0](*(*(a1 + 32) + 5360)))
  {
    *(a2 + 186) = *(a2 + 186) & 0xFC | nw_ip_metadata_get_ecn_flag(v3) & 3;
    dscp_value = nw_ip_metadata_get_dscp_value();
    if (dscp_value < 0x40)
    {
      *(a2 + 184) = dscp_value;
LABEL_6:
      service_class = nw_ip_metadata_get_service_class(v3);
      if (service_class > nw_service_class_signaling)
      {
        v7 = 0;
      }

      else
      {
        v7 = dword_188A18510[service_class];
      }

      *(a2 + 176) = v7;
      *(a2 + 180) = nw_ip_metadata_get_fragmentation_value();
      goto LABEL_14;
    }

    __nwlog_obj();
    *buf = 136446210;
    v41 = "__nw_frame_set_dscp_value";
    v35 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    if (__nwlog_fault())
    {
      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v36 = __nwlog_obj();
        v37 = type[0];
        if (!os_log_type_enabled(v36, type[0]))
        {
          goto LABEL_73;
        }

        *buf = 136446210;
        v41 = "__nw_frame_set_dscp_value";
        v38 = "%{public}s called with null (dscp_value <= _MAX_DSCP)";
      }

      else
      {
        v36 = __nwlog_obj();
        v37 = type[0];
        if (!os_log_type_enabled(v36, type[0]))
        {
          goto LABEL_73;
        }

        *buf = 136446210;
        v41 = "__nw_frame_set_dscp_value";
        v38 = "%{public}s called with null (dscp_value <= _MAX_DSCP), backtrace limit exceeded";
      }

      _os_log_impl(&dword_1889BA000, v36, v37, v38, buf, 0xCu);
    }

LABEL_73:
    if (v35)
    {
      free(v35);
    }

    goto LABEL_6;
  }

LABEL_14:
  v8 = (a2 + 204);
  if ((*(a2 + 204) & 8) == 0)
  {
LABEL_15:
    v9 = *(a2 + 168);
    if (v9)
    {
      nw_release(v9);
      *(a2 + 168) = 0;
    }

    v10 = a2 + 120;
    if (v3)
    {
      *(a2 + 168) = nw_retain(v3);
      v11 = *(a2 + 204);
      if ((v11 & 0x20) == 0)
      {
        nw_protocol_metadata_copy_identifier();
        v11 = *(a2 + 204);
      }

      *v8 = v11 | 8;
    }

    v12 = *(a2 + 64);
    *(a2 + 186) = *(a2 + 186) & 0xBF | v4;
    if (!v12)
    {
      *(a2 + 64) = v10;
      *(a2 + 72) = v10;
      *(a2 + 120) = 0;
      *(a2 + 128) = a2 + 64;
      goto LABEL_56;
    }

    if (v12 == v10)
    {
      goto LABEL_56;
    }

    __nwlog_obj();
    *buf = 136446722;
    v41 = "__nw_frame_set_metadata";
    v42 = 2048;
    v43 = v12;
    v44 = 2048;
    v45 = a2 + 120;
    v13 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    if (!__nwlog_fault())
    {
      goto LABEL_54;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type[0];
      if (!os_log_type_enabled(v14, type[0]))
      {
        goto LABEL_54;
      }

      *buf = 136446722;
      v41 = "__nw_frame_set_metadata";
      v42 = 2048;
      v43 = v12;
      v44 = 2048;
      v45 = v10;
      v16 = "%{public}s Existing metadata %p doesn't match expected %p";
    }

    else
    {
      v14 = __nwlog_obj();
      v15 = type[0];
      if (!os_log_type_enabled(v14, type[0]))
      {
        goto LABEL_54;
      }

      *buf = 136446722;
      v41 = "__nw_frame_set_metadata";
      v42 = 2048;
      v43 = v12;
      v44 = 2048;
      v45 = v10;
      v16 = "%{public}s Existing metadata %p doesn't match expected %p, backtrace limit exceeded";
    }

    v29 = v14;
    v30 = v15;
    v31 = 32;
    goto LABEL_53;
  }

  memset(type, 0, sizeof(type));
  nw_protocol_metadata_copy_identifier();
  v17 = *(a2 + 64);
  if (!v17)
  {
    goto LABEL_42;
  }

  v18 = 0;
  do
  {
    v19 = nw_protocol_metadata_copy_definition(v3);
    v20 = *(v17 + 6);
    if (!v20)
    {
      goto LABEL_35;
    }

    v21 = nw_protocol_metadata_copy_definition(v20);
    if (!MEMORY[0x18CFDCD10](v19, v21) || uuid_compare(type, v17 + 16))
    {
      if (!v21)
      {
        goto LABEL_35;
      }

LABEL_34:
      nw_release(v21);
      goto LABEL_35;
    }

    nw_retain(v3);
    v22 = *(v17 + 6);
    if (v22)
    {
      nw_release(v22);
    }

    *(v17 + 6) = v3;
    *(v17 + 66) = v17[66] & 0xBF | v4;
    v18 = 1;
    if (v21)
    {
      goto LABEL_34;
    }

LABEL_35:
    if (v19)
    {
      nw_release(v19);
    }

    v17 = *v17;
  }

  while (v17);
  if (v18)
  {
    goto LABEL_56;
  }

LABEL_42:
  v23 = malloc_type_calloc(1uLL, 0x48uLL, 0x7DE37D5uLL);
  if (v23)
  {
    goto LABEL_45;
  }

  v24 = __nwlog_obj();
  os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
  *buf = 136446722;
  v41 = "__nw_frame_set_metadata";
  v42 = 2048;
  v43 = 1;
  v44 = 2048;
  v45 = 72;
  v25 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort();
  if (result)
  {
    __break(1u);
  }

  else
  {
    free(v25);
LABEL_45:
    v23[6] = nw_retain(v3);
    *(v23 + 1) = *type;
    *(v23 + 66) = *(v23 + 66) & 0xBF | v4;
    v27 = *(a2 + 64);
    *v23 = v27;
    if (v27)
    {
      v28 = (v27 + 8);
    }

    else
    {
      v28 = (a2 + 72);
    }

    *v28 = v23;
    *(a2 + 64) = v23;
    v23[1] = a2 + 64;
LABEL_56:
    v32 = *MEMORY[0x1E69E9840];
    return 1;
  }

  return result;
}

uint64_t tcp_cubic_congestion_avd(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 80);
  result = v4[28];
  v6 = v4[298];
  if (v6 != -1)
  {
    v7 = *(a1 + 204);
    if (v7)
    {
      if (v6 < (32000 * *(a1 + 148) / v7) >> 1)
      {
        goto LABEL_66;
      }
    }
  }

  v8 = *(a1 + 988);
  if (v8)
  {
    v9 = *(a1 + 148);
    if (v8 < v9 >> 1 && (!result || *(result + 384) <= v9))
    {
      *(a1 + 748) |= 0x100000u;
LABEL_66:
      v49 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  *(a1 + 748) &= ~0x100000u;
  *(a1 + 300) += *(a2 + 8) - *(a1 + 92);
  v10 = v4[62];
  if (v10 && (v11 = *(v10 + 1632)) != 0)
  {
    v12 = *(v11 + 40);
  }

  else
  {
    v12 = 0;
  }

  result = nw_tcp_access_globals(result);
  v13 = *(a1 + 144);
  if (*(a1 + 148) < v13)
  {
    v13 = *(a1 + 148);
  }

  v14 = *(a1 + 848);
  if (*v14)
  {
    if (*(v14 + 4))
    {
      goto LABEL_16;
    }

LABEL_19:
    *(v14 + 4) = *(result + 308);
    v16 = *(a1 + 848);
    if (!v16[1])
    {
      v16[1] = 1;
      v16 = *(a1 + 848);
    }

    if (v13 >= *v16)
    {
      v16[7] = 0;
      v19 = *(a1 + 848);
    }

    else
    {
      v17 = result;
      v18 = cbrtf(((*v16 - v13) / *(a1 + 200)) / 0.4);
      result = v17;
      *(v16 + 7) = v18 * 1000.0;
      v19 = *(a1 + 848);
      v13 = *v19;
    }

    v19[2] = v13;
    v14 = *(a1 + 848);
    v15 = *(v14 + 8);
    if (v15)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

  *v14 = *(a1 + 152);
  v14 = *(a1 + 848);
  if (!*(v14 + 4))
  {
    goto LABEL_19;
  }

LABEL_16:
  v15 = *(v14 + 8);
  if (v15)
  {
LABEL_26:
    v20 = *(sysctls + 32);
    if (v20 <= v12)
    {
      v21 = v12;
    }

    else
    {
      v21 = *(sysctls + 32);
    }

    if (v20)
    {
      v22 = v21;
    }

    else
    {
      v22 = v12;
    }

    v23 = ((v22 + *(result + 308) - *(v14 + 4)) - *(v14 + 28)) / 1000.0;
    v24 = (((*(a1 + 200) * 0.4) * (v23 * (v23 * v23))) + v15);
    if (*(v14 + 12))
    {
      *(v14 + 16) += *(a2 + 8) - *(a1 + 92);
      v25 = *(a1 + 848);
      v26 = (v25 + 16);
      v27 = *(v25 + 16);
      v28 = *(a1 + 148);
      if (v27 >= v28)
      {
        v29 = ((1.0 - *&tcp_cubic_beta) * 3.0) / (*&tcp_cubic_beta + 1.0);
        do
        {
          *v26 = v27 - v28;
          v30 = *(a1 + 848);
          if (*(a1 + 148) >= *v30)
          {
            v31 = *(a1 + 200);
          }

          else
          {
            v31 = (v29 * *(a1 + 200));
          }

          v30[3] += v31;
          v25 = *(a1 + 848);
          v26 = (v25 + 16);
          v27 = *(v25 + 16);
          v28 = *(a1 + 148);
        }

        while (v27 >= v28);
      }
    }

    else
    {
      v32 = *(a1 + 148);
      if (v32 >= *(a1 + 144))
      {
        v32 = *(a1 + 144);
      }

      *(v14 + 12) = v32;
      *(*(a1 + 848) + 16) = *(a2 + 8) - *(a1 + 92);
      v25 = *(a1 + 848);
      v28 = *(a1 + 148);
    }

    v33 = *(v25 + 12);
    v34 = *(a1 + 200);
    v35 = v24 >= v28;
    v37 = v24 - v28;
    v36 = v37 != 0 && v35;
    v38 = v34 * v28 / v37;
    if (!v36)
    {
      v38 = 0xFFFFFFFFLL;
    }

    v39 = (v33 + (v34 >> 1)) / v34 * v34;
    v35 = v39 >= v28;
    v40 = v39 - v28;
    if (v40 != 0 && v35)
    {
      v41 = v34 * v28 / v40;
      if (v41 < v38)
      {
        v38 = v41;
      }
    }

    if (v38)
    {
      v42 = *(a1 + 300);
      if (v38 <= v42)
      {
        *(a1 + 300) = v42 - v38;
        v28 += v34;
        if (v28 >= 0xFFFF << *(a1 + 268))
        {
          v28 = 0xFFFF << *(a1 + 268);
        }

        *(a1 + 148) = v28;
      }
    }

    v43 = *(a1 + 204);
    if (v43)
    {
      v44 = 32000 * v28 / v43;
    }

    else
    {
      v44 = 0;
    }

    v45 = v44 << (v28 < *(a1 + 152));
    v46 = *(*(a1 + 80) + 2384);
    if (v46 >= v45)
    {
      v47 = v45;
    }

    else
    {
      v47 = *(*(a1 + 80) + 2384);
    }

    if (v46 != -1)
    {
      v45 = v47;
    }

    *(a1 + 472) = v45;
    if (v34 <= (v45 >> 12))
    {
      v48 = v45 >> 12;
    }

    else
    {
      v48 = v34;
    }

    *(a1 + 480) = v48;
    goto LABEL_66;
  }

LABEL_67:
  v50 = result;
  v51 = __nwlog_obj();
  os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
  v52 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort();
  if (!result)
  {
    free(v52);
    v14 = *(a1 + 848);
    v15 = *(v14 + 8);
    result = v50;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

void nw_protocol_tcp_update_metadata(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = nw_protocol_downcast();
    if (v1)
    {
      v1[1354] = v1[96];
      v1[1355] = v1[116];
      goto LABEL_4;
    }

    __nwlog_obj();
    *buf = 136446210;
    v7 = "nw_protocol_tcp_update_metadata";
    v3 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v4 = __nwlog_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v7 = "nw_protocol_tcp_update_metadata";
        v5 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_13;
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v7 = "nw_protocol_tcp_update_metadata";
    v3 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v4 = __nwlog_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v7 = "nw_protocol_tcp_update_metadata";
        v5 = "%{public}s called with null protocol, backtrace limit exceeded";
LABEL_13:
        _os_log_impl(&dword_1889BA000, v4, OS_LOG_TYPE_ERROR, v5, buf, 0xCu);
      }
    }
  }

  if (v3)
  {
    free(v3);
  }

LABEL_4:
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t tcp_keepalive_reset(uint64_t a1)
{
  v2 = *(a1 + 668);
  v3 = *(*(a1 + 80) + 224);
  if (!v2 || (*(v3 + 372) & 8) == 0)
  {
    v2 = *(sysctls + 188);
  }

  result = nw_tcp_access_globals(v3);
  *(a1 + 40) = *(result + 308) + v2 - *(a1 + 64);
  *(a1 + 748) &= ~0x80u;
  *(a1 + 323) = 0;
  return result;
}

uint64_t tcp_tfo_rcv_ack(uint64_t result, uint64_t a2)
{
  if (*(result + 1001) == 1 && *(result + 1000))
  {
    v2 = *(a2 + 4) - *(result + 120);
    if (v2)
    {
      if (v2 >= 1)
      {
        *(result + 1001) = 2;
        if (*(result + 236) <= (*(result + 212) + (*(result + 204) >> 3)) >> 2)
        {
          v3 = (*(result + 212) + (*(result + 204) >> 3)) >> 2;
        }

        else
        {
          v3 = *(result + 236);
        }

        v4 = result;
        result = nw_tcp_access_globals(*(*(result + 80) + 224));
        *(v4 + 40) = *(result + 308) + v3 - *(v4 + 64);
      }
    }

    else
    {
      *(result + 1001) = 0;
    }
  }

  return result;
}

uint64_t tcp_cubic_ack_rcvd(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(v2 + 224);
  v4 = *(v2 + 2384);
  if (v4 == -1 || (v5 = *(a1 + 204), !v5) || v4 >= (32000 * *(a1 + 148) / v5) >> 1)
  {
    v6 = *(a1 + 988);
    if (v6)
    {
      v7 = *(a1 + 148);
      if (v6 < v7 >> 1 && (!v3 || *(v3 + 384) <= v7))
      {
        *(a1 + 748) |= 0x100000u;
        return a1;
      }

      *(a1 + 748) &= ~0x100000u;
    }

    else
    {
      *(a1 + 748) &= ~0x100000u;
      v7 = *(a1 + 148);
    }

    v8 = *(a1 + 152);
    if (v7 >= v8)
    {
      return tcp_cubic_congestion_avd(a1, a2);
    }

    else
    {
      v9 = *(a2 + 8) - *(a1 + 92);
      if (*(sysctls + 280))
      {
        v10 = *(sysctls + 16);
      }

      else
      {
        v10 = 10;
      }

      v11 = *(a1 + 200);
      v12 = *(a1 + 204);
      v13 = v11 * v10;
      if (v9 >= v13)
      {
        v9 = v13;
      }

      v14 = v9 + v7;
      if (v14 >= 0xFFFF << *(a1 + 268))
      {
        v14 = 0xFFFF << *(a1 + 268);
      }

      *(a1 + 148) = v14;
      if (v12)
      {
        v15 = 32000 * v14 / v12;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15 << (v14 < v8);
      if (v4 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v4;
      }

      if (v4 == -1)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      *(a1 + 472) = v18;
      if (v11 <= (v18 >> 12))
      {
        v19 = v18 >> 12;
      }

      else
      {
        v19 = v11;
      }

      *(a1 + 480) = v19;
    }
  }

  return a1;
}

void sbdrop(int *a1, int a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x80000000) == 0)
  {
    v3 = a2;
    while (1)
    {
      v4 = *(a1 + 2);
      if (!v4)
      {
        break;
      }

      v5 = *(v4 + 52);
      if (v5)
      {
        v6 = *(v4 + 56);
        v7 = *(v4 + 60);
        if (v5 - (v6 + v7) > v3)
        {
          if ((*(v4 + 204) & 0x80) != 0)
          {
            *(v4 + 196) -= v3;
          }

          v22 = v6 + v3;
          if (v6 + v3 <= (v5 - v7))
          {
            *(v4 + 56) = v22;
          }

          else
          {
            v23 = __nwlog_obj();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = *(v4 + 52);
              *buf = 136446978;
              v30 = "__nw_frame_claim_internal";
              v31 = 1024;
              *v32 = v22;
              *&v32[4] = 1024;
              *&v32[6] = v24;
              *v33 = 1024;
              *&v33[2] = v7;
              _os_log_impl(&dword_1889BA000, v23, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
            }
          }

          *a1 -= v3;
          goto LABEL_41;
        }

        v3 = v3 - v5 + v6 + v7;
        v5 = v6 - v5 + v7;
      }

      *a1 += v5;
      v8 = *(*(a1 + 6) + 24);
      if ((a1[8] & 4) != 0)
      {
        if (v8)
        {
          all_stats = nw_protocol_tcp_get_all_stats();
          if (all_stats)
          {
            *(all_stats + 92) = *a1;
          }
        }
      }

      else if (v8)
      {
        v9 = nw_protocol_tcp_get_all_stats();
        if (v9)
        {
          *(v9 + 104) = *a1;
        }
      }

      v11 = *(v4 + 80);
      v12 = *(v4 + 32);
      v13 = *(v4 + 40);
      v14 = (v12 + 40);
      if (!v12)
      {
        v14 = a1 + 6;
      }

      *v14 = v13;
      *v13 = v12;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      if (v11)
      {
        v15 = *(v4 + 88);
        *(v4 + 80) = 0;
        *(v4 + 88) = 0;
        v11(v4, 1, v15);
        if (v3 < 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        __nwlog_obj();
        *buf = 136446210;
        v30 = "__nw_frame_finalize";
        v16 = _os_log_send_and_compose_impl();
        if (__nwlog_fault())
        {
          v17 = __nwlog_obj();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446210;
            v30 = "__nw_frame_finalize";
            _os_log_impl(&dword_1889BA000, v17, OS_LOG_TYPE_ERROR, "%{public}s called with null frame->finalizer, backtrace limit exceeded", buf, 0xCu);
          }
        }

        if (v16)
        {
          free(v16);
        }

        if (v3 < 0)
        {
          goto LABEL_41;
        }
      }
    }

    if (*a1)
    {
      v18 = *(a1 + 6);
      if (!v18 || (*(v18 + 776) & 2) == 0)
      {
        v19 = __nwlog_tcp_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = (v18 + 556);
          v21 = *a1;
          v30 = "sbdrop";
          *buf = 136446978;
          if (!v18)
          {
            v20 = &unk_188A285CF;
          }

          v31 = 2082;
          *v32 = v20;
          *&v32[8] = 1024;
          *v33 = v3;
          *&v33[4] = 1024;
          v34 = v21;
          _os_log_impl(&dword_1889BA000, v19, OS_LOG_TYPE_ERROR, "%{public}s %{public}s sbdrop - count not zero: len %d sb_cc %u", buf, 0x22u);
        }
      }

      *a1 = 0;
    }
  }

LABEL_41:
  v25 = *(*(a1 + 6) + 24);
  if ((a1[8] & 4) != 0)
  {
    if (v25)
    {
      v27 = nw_protocol_tcp_get_all_stats();
      if (v27)
      {
        *(v27 + 92) = *a1;
      }
    }
  }

  else
  {
    if (v25)
    {
      v26 = nw_protocol_tcp_get_all_stats();
      if (v26)
      {
        *(v26 + 104) = *a1;
      }
    }

    nw_protocol_tcp_update_metadata(*(*(a1 + 6) + 24));
  }

  v28 = *MEMORY[0x1E69E9840];
}

void nw_frame_tcp_finalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 204) & 4) == 0)
    {
      v5 = __nwlog_obj();
      os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      *buf = 136446466;
      v74 = "nw_frame_tcp_finalize";
      v75 = 2048;
      *v76 = 0;
      v6 = _os_log_send_and_compose_impl();
      if (__nwlog_should_abort())
      {
        goto LABEL_93;
      }

      free(v6);
    }

    if (!a3)
    {
      v7 = __nwlog_obj();
      os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      *buf = 136446466;
      v74 = "nw_frame_tcp_finalize";
      v75 = 2048;
      *v76 = 0;
      v8 = _os_log_send_and_compose_impl();
      if (__nwlog_should_abort())
      {
        goto LABEL_93;
      }

      free(v8);
    }

    v9 = *(a1 + 208);
    v10 = v9 & 1;
    if ((~v9 & 6) == 0 || ((v9 & 5) != 5 ? (v11 = (v9 & 3) == 3) : (v11 = 1), v11))
    {
      v12 = __nwlog_obj();
      os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      *buf = 136446978;
      v74 = "nw_frame_tcp_finalize";
      v75 = 1024;
      *v76 = v9 & 1;
      *&v76[4] = 1024;
      *&v76[6] = (v9 >> 1) & 1;
      v77 = 1024;
      v78 = (v9 >> 2) & 1;
      v13 = _os_log_send_and_compose_impl();
      if (__nwlog_should_abort())
      {
        goto LABEL_93;
      }

      free(v13);
    }

    v14 = v9 & 4;
    v15 = v9 & 2;
    if (v15)
    {
      if ((*(a1 + 204) & 2) != 0)
      {
        v35 = *(a1 + 96);
        if (v35)
        {
          nw_release(v35);
          *(a1 + 96) = 0;
        }

        *(a1 + 52) = 0;
        *(a1 + 56) = 0;
        v24 = 16;
        v25 = 192;
        v26 = 176;
        *(a1 + 196) = 0;
      }

      else
      {
        v23 = __nwlog_obj();
        v24 = 16;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v74 = "__nw_frame_set_external_data";
          v24 = 16;
          _os_log_impl(&dword_1889BA000, v23, OS_LOG_TYPE_ERROR, "%{public}s Frame does not use external data", buf, 0xCu);
        }

        v25 = 192;
        v26 = 176;
      }

      goto LABEL_62;
    }

    if (!v10)
    {
      if (!v14)
      {
LABEL_57:
        v24 = 8;
        v25 = 160;
        v26 = 144;
LABEL_62:
        v37 = (a3 + v26);
        v38 = a3 + v25;
        v39 = (a3 + v24);
        v40 = (a1 + 16);
        v41 = *(a1 + 16);
        v42 = *(a1 + 24);
        v43 = (v38 + 8);
        if (v41)
        {
          v43 = (v41 + 24);
        }

        *v43 = v42;
        *v42 = v41;
        *(a1 + 24) = 0;
        *v40 = 0;
        v44 = v37[1];
        *(a1 + 24) = v44;
        *v44 = a1;
        v37[1] = v40;
        v45 = *v39;
        if ((*v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_65;
        }

        v54 = __nwlog_obj();
        os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        v74 = "nw_frame_tcp_finalize";
        v55 = _os_log_send_and_compose_impl();
        if (!__nwlog_should_abort())
        {
          free(v55);
          v45 = *v39;
LABEL_65:
          *v39 = v45 + 1;
          if (v45 >= 100)
          {
            v63[0] = MEMORY[0x1E69E9820];
            v63[1] = 0x40000000;
            v64 = __nw_frame_tcp_finalize_block_invoke;
            v65 = &__block_descriptor_tmp;
            v66 = v39;
            v67 = v37;
            v68 = v15 >> 1;
            v69 = v14 >> 2;
            v70 = v10;
            v46 = *v37;
            do
            {
              if (!v46)
              {
                break;
              }

              v47 = *(v46 + 16);
              v48 = (v64)(v63);
              v46 = v47;
            }

            while ((v48 & 1) != 0);
          }

          goto LABEL_69;
        }

LABEL_93:
        __break(1u);
      }

      if ((*(a1 + 204) & 0x100) == 0 || !*MEMORY[0x1E6977EF8] || (*MEMORY[0x1E6977EF8])(a1, *(a1 + 88)))
      {
        v16 = *(a1 + 112);
        if (v16)
        {
          free(v16);
        }
      }

      v17 = *(a1 + 64);
      *(a1 + 196) = 0;
      *(a1 + 192) = 0;
      *(a1 + 200) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 204) &= 0xFFC7u;
      if (v17)
      {
        do
        {
          v18 = *v17;
          v19 = v17[6];
          v20 = *v17;
          if (v19)
          {
            nw_release(v19);
            v17[6] = 0;
            v20 = *v17;
          }

          v21 = v17[1];
          v22 = v20 + 1;
          if (!v20)
          {
            v22 = (a1 + 72);
          }

          *v22 = v21;
          *v21 = v20;
          if (v17 != (a1 + 120))
          {
            free(v17);
          }

          v17 = v18;
        }

        while (v18);
      }

      *(a1 + 64) = 0;
      *(a1 + 72) = a1 + 64;
      v36 = *(a1 + 168);
      if (!v36)
      {
        goto LABEL_56;
      }

      goto LABEL_55;
    }

    v27 = *(a1 + 104);
    if ((*(a1 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8] && !(*MEMORY[0x1E6977EF8])(a1, *(a1 + 88)))
    {
      if (!v27)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v28 = *(a1 + 112);
      if (!v27)
      {
        if (v28)
        {
          v61 = __nwlog_obj();
          os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
          *buf = 136446210;
          v74 = "nw_frame_tcp_finalize";
          v62 = _os_log_send_and_compose_impl();
          if (__nwlog_should_abort())
          {
            goto LABEL_93;
          }

          free(v62);
        }

        goto LABEL_61;
      }

      if (v28)
      {
LABEL_42:
        nw_mem_buffer_free();
        v29 = *(a1 + 64);
        *(a1 + 196) = 0;
        *(a1 + 192) = 0;
        *(a1 + 200) = 0;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        *(a1 + 104) = 0;
        *(a1 + 112) = 0;
        *(a1 + 204) &= 0xFFC7u;
        if (v29)
        {
          do
          {
            v30 = *v29;
            v31 = v29[6];
            v32 = *v29;
            if (v31)
            {
              nw_release(v31);
              v29[6] = 0;
              v32 = *v29;
            }

            v33 = v29[1];
            v34 = v32 + 1;
            if (!v32)
            {
              v34 = (a1 + 72);
            }

            *v34 = v33;
            *v33 = v32;
            if (v29 != (a1 + 120))
            {
              free(v29);
            }

            v29 = v30;
          }

          while (v30);
        }

        *(a1 + 64) = 0;
        *(a1 + 72) = a1 + 64;
        v36 = *(a1 + 168);
        if (!v36)
        {
LABEL_56:
          *(a1 + 184) = 0;
          *(a1 + 168) = 0u;
          *(a1 + 152) = 0u;
          *(a1 + 136) = 0u;
          *(a1 + 120) = 0u;
          *(a1 + 204) &= 0x413Fu;
          *(a1 + 206) &= ~1u;
          *(a1 + 203) = 0;
          *(a1 + 198) = 0;
          if (!v10)
          {
            goto LABEL_57;
          }

LABEL_61:
          v24 = 24;
          v25 = 224;
          v26 = 208;
          goto LABEL_62;
        }

LABEL_55:
        nw_release(v36);
        goto LABEL_56;
      }
    }

    v58 = v10;
    v59 = __nwlog_obj();
    os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
    *buf = 136446210;
    v74 = "nw_frame_tcp_finalize";
    v60 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort())
    {
      goto LABEL_93;
    }

    free(v60);
    v10 = v58;
    goto LABEL_42;
  }

  __nwlog_obj();
  *buf = 136446210;
  v74 = "nw_frame_tcp_finalize";
  v50 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v71 = 0;
  if (__nwlog_fault())
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (!os_log_type_enabled(v51, type))
      {
        goto LABEL_89;
      }

      *buf = 136446210;
      v74 = "nw_frame_tcp_finalize";
      v53 = "%{public}s called with null frame";
      goto LABEL_88;
    }

    if (v71 != 1)
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (!os_log_type_enabled(v51, type))
      {
        goto LABEL_89;
      }

      *buf = 136446210;
      v74 = "nw_frame_tcp_finalize";
      v53 = "%{public}s called with null frame, backtrace limit exceeded";
      goto LABEL_88;
    }

    backtrace_string = __nw_create_backtrace_string();
    v51 = __nwlog_obj();
    v52 = type;
    v57 = os_log_type_enabled(v51, type);
    if (backtrace_string)
    {
      if (v57)
      {
        *buf = 136446466;
        v74 = "nw_frame_tcp_finalize";
        v75 = 2082;
        *v76 = backtrace_string;
        _os_log_impl(&dword_1889BA000, v51, type, "%{public}s called with null frame, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_89;
    }

    if (v57)
    {
      *buf = 136446210;
      v74 = "nw_frame_tcp_finalize";
      v53 = "%{public}s called with null frame, no backtrace";
LABEL_88:
      _os_log_impl(&dword_1889BA000, v51, v52, v53, buf, 0xCu);
    }
  }

LABEL_89:
  if (v50)
  {
    free(v50);
  }

LABEL_69:
  v49 = *MEMORY[0x1E69E9840];
}

uint64_t tcp_update_snd_una(uint64_t a1, int a2)
{
  *(a1 + 728) += (a2 - *(a1 + 92));
  *(a1 + 92) = a2;
  result = *(*(*(a1 + 80) + 224) + 24);
  if (result)
  {
    result = nw_protocol_tcp_get_all_stats();
    if (result)
    {
      *(result + 108) = *(a1 + 96) - *(a1 + 92);
    }
  }

  return result;
}

uint64_t tcp_sbsnd_trim(uint64_t result)
{
  v1 = *(result + 32);
  if ((~v1 & 0xC00) == 0)
  {
    v2 = *(result + 36);
    if (v2)
    {
      if (*(result + 4) > v2)
      {
        v3 = *result;
        if (*result <= v2)
        {
          v3 = *(result + 36);
        }

        if (v3 <= 0x71C71C)
        {
          *(result + 4) = v3;
          v4 = *(*(result + 48) + 24);
          if ((v1 & 4) != 0)
          {
            if (v4)
            {
              v8 = result;
              v9 = *(*(result + 48) + 24);
              all_stats = nw_protocol_tcp_get_all_stats();
              result = v8;
              v3 = *(v8 + 4);
              if (all_stats)
              {
                *(all_stats + 88) = v3;
              }
            }
          }

          else if (v4)
          {
            v5 = result;
            v6 = *(*(result + 48) + 24);
            v7 = nw_protocol_tcp_get_all_stats();
            result = v5;
            v3 = *(v5 + 4);
            if (v7)
            {
              *(v7 + 100) = v3;
            }
          }

          if (*(result + 8) > v3)
          {
            *(result + 8) = v3;
          }
        }
      }
    }
  }

  if (*(result + 4) <= *(result + 36))
  {
    *(result + 32) &= ~0x800u;
  }

  return result;
}

uint64_t tcp_bwmeas_check(uint64_t result)
{
  v1 = *(result + 776);
  v2 = *(result + 92) - *v1;
  if (v2 >= 1 && (*(result + 748) & 4) != 0 && v2 >= v1[2])
  {
    v3 = result;
    result = nw_tcp_access_globals(*(*(result + 80) + 224));
    v4 = *(v3 + 776);
    v5 = *(result + 308) - v4[1];
    if (v5 && v5 <= v2)
    {
      v6 = v2 / v5;
      v7 = v4[7];
      v8 = v4[8];
      if (v7)
      {
        v6 = (v6 - v7 + 8 * v7) >> 3;
      }

      if (v6 <= v8)
      {
        v9 = v4[8];
      }

      else
      {
        v9 = v6;
      }

      if (!v8)
      {
        v9 = v6;
      }

      v4[7] = v6;
      v4[8] = v9;
    }

    *(v3 + 748) &= ~4u;
  }

  return result;
}

uint64_t tcp_ip_output(uint64_t a1, uint64_t a2, void *a3, int a4, int a5)
{
  if (*a3 || *(a2 + 648))
  {
    *(a2 + 296) = *(a2 + 120);
    *(a2 + 88) &= 0xFFFFFFFC;
    *(a2 + 32) = 0;
    *(a2 + 316) = 0;
    return tcp_ip_output_send(a1, a2, a3, a4, a5);
  }

  return a1;
}

void tcp_coalesce_timer_updates_end(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 280);
  if (!v1)
  {
    v2 = a1;
    v3 = __nwlog_obj();
    os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    v4 = _os_log_send_and_compose_impl();
    if (__nwlog_should_abort())
    {
      __break(1u);
      return;
    }

    free(v4);
    a1 = v2;
    v1 = *(v2 + 280);
  }

  v5 = v1 - 1;
  *(a1 + 280) = v5;
  if (!v5 && (*(a1 + 302) & 4) != 0)
  {
    tcp_process_timerlist(a1);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void nw_protocol_tcp_input_flush(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = nw_protocol_downcast();
    if (v1)
    {
      v2 = v1;
      if (*(v1 + 776))
      {
        v3 = nw_tcp_access_globals(v1);
        tcp_coalesce_timer_updates_end(v3);
        v4 = *(v2 + 32);
        if (v4)
        {
          v5 = *(v4 + 24);
          if (v5)
          {
            v5(v2);
          }
        }

        *(v2 + 776) &= ~1u;
      }

      goto LABEL_8;
    }

    __nwlog_obj();
    *buf = 136446210;
    v11 = "nw_protocol_tcp_input_flush";
    v7 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v11 = "nw_protocol_tcp_input_flush";
        v9 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v11 = "nw_protocol_tcp_input_flush";
    v7 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v11 = "nw_protocol_tcp_input_flush";
        v9 = "%{public}s called with null protocol, backtrace limit exceeded";
LABEL_17:
        _os_log_impl(&dword_1889BA000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0xCu);
      }
    }
  }

  if (v7)
  {
    free(v7);
  }

LABEL_8:
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __nw_protocol_tcp_wake_send_block_invoke(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  if (*(a1[4] + 5352) == 2)
  {
    v3 = *(v2 + 384);
    v4 = *(v2 + 388) - v3;
    v5 = *(v2 + 460);
    v6 = v5 - v3;
    if (v6 >= v4)
    {
      v6 = v4;
    }

    if (v5)
    {
      v4 = v6;
    }

    if ((v4 & ~(v4 >> 31)) >= *(v2 + 392))
    {
      v17 = a1[6];
      nw_protocol_get_input_handler();
      v18 = a1[6];
      nw_protocol_output_available_quiet();
    }

    else if ((*(v2 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v7 = __nwlog_tcp_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v8 = a1[5];
          v9 = v8[98];
          v10 = v8[96];
          v11 = v8[97] - v10;
          v12 = v8[115];
          v13 = v12 - v10;
          if (v13 >= v11)
          {
            v13 = v11;
          }

          if (v12)
          {
            v14 = v13;
          }

          else
          {
            v14 = v11;
          }

          v22 = 136446978;
          v23 = "nw_protocol_tcp_wake_send_block_invoke";
          v24 = 2082;
          v25 = (v2 + 556);
          v26 = 1024;
          v27 = v9;
          v28 = 1024;
          v29 = v14 & ~(v14 >> 31);
          _os_log_impl(&dword_1889BA000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s Ignoring wake low_water %u sbpace %u", &v22, 0x22u);
        }
      }
    }
  }

  else if (!v2 || (*(v2 + 776) & 2) == 0)
  {
    if (__nwlog_is_datapath_logging_enabled())
    {
      v15 = __nwlog_tcp_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = &unk_188A285CF;
        if (v2)
        {
          v16 = (v2 + 556);
        }

        v22 = 136446466;
        v23 = "nw_protocol_tcp_wake_send_block_invoke";
        v24 = 2082;
        v25 = v16;
        _os_log_impl(&dword_1889BA000, v15, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s skipping", &v22, 0x16u);
      }
    }
  }

  v19 = a1[6];
  result = nw_protocol_release();
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tcp_compute_rcv_rtt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
LABEL_3:
    result = nw_tcp_access_globals(*(*(a1 + 80) + 224));
    if (*a2)
    {
      v11 = *(a2 + 8);
      if (v11 && (v12 = *(result + 308), v12 - v11 >= 0))
      {
        if (v12 == v11)
        {
          v10 = 1;
        }

        else
        {
          v10 = v12 - v11;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v6 = *(a1 + 1980);
      if (v6)
      {
        v7 = *(a1 + 120);
        if (v7 - *(a1 + 1984) < 0)
        {
LABEL_23:
          v16 = *MEMORY[0x1E69E9840];
          return result;
        }

        v8 = *(result + 308);
        v9 = v8 - v6;
        if (v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = 1;
        }
      }

      else
      {
        v8 = *(result + 308);
        v7 = *(a1 + 120);
        v10 = 100;
      }

      *(a1 + 1980) = v8;
      *(a1 + 1984) = *(a1 + 128) + v7;
    }

    v13 = *(a1 + 1976);
    v14 = v13 + 4 * v10 - (v13 >> 3);
    if (v14 <= 1)
    {
      v14 = 1;
    }

    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = 32 * v10;
    }

    *(a1 + 1976) = v15;
    *(a1 + 244) = v10;
    result = update_base_rtt(a1, v10);
    goto LABEL_23;
  }

  v17 = __nwlog_obj();
  os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  v18 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort();
  if (!result)
  {
    free(v18);
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t tcp_sbrcv_grow(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a2 + 48);
  result = nw_tcp_access_globals(v8);
  if (*(sysctls + 68))
  {
    if ((*(a2 + 33) & 4) != 0)
    {
      v10 = *(a2 + 4);
      v11 = *(sysctls + 72);
      if (v10 < v11 && (*(a1 + 749) & 1) == 0 && (*(v8 + 368) & 0x40) == 0)
      {
        if ((~*(a1 + 88) & 0x180) != 0)
        {
          v25 = *(result + 308);
          v26 = *(a1 + 184) + (*(a1 + 1976) >> 5);
          v27 = *(a1 + 188) + a4;
          *(a1 + 188) = v27;
          if (v25 - v26 < 0)
          {
            return result;
          }

          v28 = *(a1 + 192);
          if (v27 > v28)
          {
            v29 = v27 <= v28 + (v28 >> 1) ? 1 : 2;
            v30 = v27 << v29;
            v31 = (v27 << v29) - v10;
            if (v31 >= 1)
            {
              v32 = result;
              tcp_sbrcv_reserve(a1, a2, v10 + v31 / *(a1 + 200) * *(a1 + 200), v30, v11);
              result = v32;
              *(a1 + 192) = *(a1 + 188);
            }
          }
        }

        else
        {
          v12 = *(a3 + 8);
          if (v12)
          {
            v13 = *(a1 + 184);
            v14 = *(a1 + 188) + a4;
            *(a1 + 188) = v14;
            if (v12 - v13 < 0)
            {
              return result;
            }

            v15 = *(a1 + 192);
            if (v14 > v15)
            {
              v16 = v14 <= v15 + (v15 >> 1) ? 1 : 2;
              v17 = v14 << v16;
              v18 = (v14 << v16) - v10;
              *(a1 + 192) = v14;
              if (v18 >= 1)
              {
                v19 = result;
                tcp_sbrcv_reserve(a1, a2, v10 + v18 / *(a1 + 200) * *(a1 + 200), v17, v11);
                result = v19;
              }
            }

            v20 = *(a1 + 776);
            if (v20)
            {
              v21 = *(a1 + 188);
              if (v21)
              {
                v22 = *(result + 308) - *(a1 + 184);
                if (v22 >= 1)
                {
                  v23 = *(v20 + 36);
                  v24 = v21 / v22;
                  if (v23)
                  {
                    if (v23 > v24)
                    {
                      v24 = *(v20 + 36);
                    }
                  }

                  *(v20 + 36) = v24;
                }
              }
            }
          }
        }
      }
    }
  }

  *(a1 + 184) = *(result + 308);
  return result;
}

BOOL sbappendstream_rcvdemux(uint64_t a1, uint64_t *a2, int a3)
{
  if (a2 && a3 <= 0)
  {
    v5 = *a2;
    if (*a2)
    {
      v14[4] = v3;
      v14[5] = v4;
      *(v5 + 40) = v14;
      v6 = a2[1];
      v14[0] = v5;
      v14[1] = v6;
      *a2 = 0;
      a2[1] = a2;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 0x40000000;
      v11 = ____nw_frame_array_finalize_block_invoke_586;
      v12 = &__block_descriptor_tmp_12;
      v13 = 1;
      do
      {
        v7 = v14[0];
        if (!v14[0])
        {
          break;
        }

        nw_frame_array_remove();
      }

      while ((v11(v10, v7) & 1) != 0);
    }

    return 0;
  }

  else
  {
    v9 = (a1 + 464);

    return sbappendstream(v9, a2, a3);
  }
}

uint64_t tcp_adaptive_rwtimo_check(uint64_t result, int a2)
{
  v2 = *(result + 80);
  if (*(result + 273))
  {
    if (a2 < 1)
    {
      return result;
    }
  }

  else
  {
    v3 = *(v2 + 448);
    if (!v3 || a2 < 1 || (*(v3 + 1196) & 8) == 0)
    {
      return result;
    }
  }

  if (*(result + 12) == 4)
  {
    if (*(result + 236) <= (*(result + 212) + (*(result + 204) >> 3)) >> 2)
    {
      v4 = (*(result + 212) + (*(result + 204) >> 3)) >> 2;
    }

    else
    {
      v4 = *(result + 236);
    }

    v5 = result;
    result = nw_tcp_access_globals(*(v2 + 224));
    *(v5 + 40) = *(result + 308) + 2 * v4 - *(v5 + 64);
    *(v5 + 748) |= 0x80u;
    *(v5 + 323) = 0;
  }

  return result;
}

uint64_t nw_protocol_tcp_copy_info(uint64_t a1, int a2, uint64_t *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_copy_info";
    v25 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v26 = __nwlog_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_copy_info";
        v27 = "%{public}s called with null protocol, backtrace limit exceeded";
LABEL_56:
        _os_log_impl(&dword_1889BA000, v26, OS_LOG_TYPE_ERROR, v27, buf, 0xCu);
      }
    }

LABEL_57:
    if (v25)
    {
      free(v25);
    }

    goto LABEL_27;
  }

  v5 = nw_protocol_downcast();
  if (!v5)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_protocol_tcp_copy_info";
    v25 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v26 = __nwlog_obj();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_copy_info";
        v27 = "%{public}s called with null tcp, backtrace limit exceeded";
        goto LABEL_56;
      }
    }

    goto LABEL_57;
  }

  v6 = v5;
  if (a2 > 253)
  {
    if (a2 == 254)
    {
      nw_protocol_get_output_handler();
      v7 = nw_protocol_copy_info_quiet();
      if (!v7)
      {
        v7 = MEMORY[0x18CFDC580]();
      }

      v16 = *(v6 + 5424) / 0x3E8uLL;
      v17 = nw_protocol_copy_tcp_definition();
      v18 = nw_protocol_establishment_report_create();
      if (v17)
      {
        nw_release(v17);
      }

      v50 = 0;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      memset(v32, 0, sizeof(v32));
      memset(v31, 0, sizeof(v31));
      v29 = 0u;
      v30 = 0u;
      memset(buf, 0, sizeof(buf));
      tcp_fill_info(v6 + 3200, v6 + 800, v6, buf);
      nw_protocol_establishment_report_set_client_accurate_ecn_state();
      nw_protocol_establishment_report_set_server_accurate_ecn_state();
      nw_protocol_establishment_report_set_l4s_enabled();
      nw_array_append();
      if (v18)
      {
        nw_release(v18);
      }

      goto LABEL_47;
    }

    if (a2 == 255)
    {
      nw_protocol_get_output_handler();
      v7 = nw_protocol_copy_info_quiet();
      if (!v7)
      {
        v7 = MEMORY[0x18CFDC580]();
      }

      v8 = *(v6 + 5360);
      nw_array_append();
      goto LABEL_47;
    }

    goto LABEL_15;
  }

  if (a2 == 1)
  {
    if ((*(v5 + 5438) & 4) != 0)
    {
      v7 = malloc_type_malloc(0x1A8uLL, 0xFD58633DuLL);
      if (v7)
      {
        tcp_fill_info(v6 + 3200, v6 + 800, v6, v7);
        if (!a3)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v22 = __nwlog_obj();
        os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
        *buf = 136446210;
        *&buf[4] = "nw_protocol_tcp_copy_info";
        v23 = _os_log_send_and_compose_impl();
        result = __nwlog_should_abort();
        if (result)
        {
          goto LABEL_59;
        }

        free(v23);
        tcp_fill_info(v6 + 3200, v6 + 800, v6, 0);
        if (!a3)
        {
          goto LABEL_47;
        }
      }

      v15 = 424;
      goto LABEL_46;
    }

LABEL_27:
    v7 = 0;
    goto LABEL_47;
  }

  if (a2 != 2)
  {
LABEL_15:
    nw_protocol_get_output_handler();
    v9 = nw_protocol_copy_info_quiet();
    v7 = v9;
    if (a2 != 5)
    {
      if ((*(v6 + 776) & 2) == 0)
      {
        v19 = __nwlog_tcp_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          *&buf[4] = "nw_protocol_tcp_copy_info";
          *&buf[12] = 2082;
          *&buf[14] = v6 + 556;
          *&buf[22] = 1024;
          *&buf[24] = a2;
          _os_log_impl(&dword_1889BA000, v19, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s unknown protocol info type %d", buf, 0x1Cu);
        }
      }

      goto LABEL_47;
    }

    if (!v9)
    {
      v7 = malloc_type_calloc(1uLL, 0xE0uLL, 0x52A60B48uLL);
      if (!v7)
      {
        v10 = __nwlog_obj();
        os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
        *buf = 136446722;
        *&buf[4] = "nw_protocol_tcp_copy_info";
        *&buf[12] = 2048;
        *&buf[14] = 1;
        *&buf[22] = 2048;
        *&buf[24] = 224;
        v11 = _os_log_send_and_compose_impl();
        result = __nwlog_should_abort();
        if (result)
        {
          goto LABEL_59;
        }

        free(v11);
        v7 = 0;
      }
    }

    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    memset(v32, 0, sizeof(v32));
    memset(v31, 0, sizeof(v31));
    v29 = 0u;
    v30 = 0u;
    memset(buf, 0, sizeof(buf));
    tcp_fill_info(v6 + 3200, v6 + 800, v6, buf);
    *(v7 + 72) = *(v31 + 12);
    *(v7 + 48) = *(v32 + 12);
    *(v7 + 64) = *(&v32[1] + 12);
    *(v7 + 80) = *(&v31[1] + 4);
    v13.i64[0] = *&buf[28];
    v13.i64[1] = v29;
    v14 = v13;
    v13.i64[0] = *&buf[20];
    v13.i64[1] = *&buf[24];
    *(v7 + 136) = vzip1q_s64(v13, v14);
    *(v7 + 120) = vzip2q_s64(v13, v14);
    v13.i64[0] = DWORD1(v29);
    v13.i64[1] = DWORD2(v29);
    *(v7 + 152) = vextq_s8(v13, v13, 8uLL);
    if (!*(v7 + 8))
    {
      *(v7 + 8) = *(v32 + 4);
    }

    if (!*(v7 + 40))
    {
      *(v7 + 40) = *(v31 + 4);
    }

    *(v7 + 88) = v43;
    *(v7 + 104) = v44;
    if (!a3)
    {
      goto LABEL_47;
    }

    v15 = 224;
    goto LABEL_46;
  }

  if ((*(v5 + 5438) & 4) == 0)
  {
    goto LABEL_27;
  }

  v7 = malloc_type_malloc(0x70uLL, 0xC4E14FC0uLL);
  if (v7)
  {
    tcp_connection_fill_info(v6 + 3200, v6 + 800, v6, v7);
    if (!a3)
    {
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  v20 = __nwlog_obj();
  os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
  *buf = 136446210;
  *&buf[4] = "nw_protocol_tcp_copy_info";
  v21 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort();
  if (!result)
  {
    free(v21);
    tcp_connection_fill_info(v6 + 3200, v6 + 800, v6, 0);
    if (a3)
    {
LABEL_42:
      v15 = 112;
LABEL_46:
      *a3 = v15;
    }

LABEL_47:
    v24 = *MEMORY[0x1E69E9840];
    return v7;
  }

LABEL_59:
  __break(1u);
  return result;
}

void tcp_fill_info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = *MEMORY[0x1E69E9840];
  *(a4 + 416) = 0;
  *(a4 + 384) = 0u;
  *(a4 + 400) = 0u;
  *(a4 + 352) = 0u;
  *(a4 + 368) = 0u;
  *(a4 + 320) = 0u;
  *(a4 + 336) = 0u;
  *(a4 + 288) = 0u;
  *(a4 + 304) = 0u;
  *(a4 + 256) = 0u;
  *(a4 + 272) = 0u;
  *(a4 + 224) = 0u;
  *(a4 + 240) = 0u;
  *(a4 + 192) = 0u;
  *(a4 + 208) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  if (a1 && a2 && a3)
  {
    os_unfair_lock_lock((a1 + 1872));
    v8 = *(a1 + 12);
    *a4 = v8;
    *(a4 + 280) = *(a2 + 460);
    v9 = *(a1 + 88);
    if ((~v9 & 0x180) == 0)
    {
      *(a4 + 1) |= 1u;
    }

    v10 = *(a1 + 748);
    if ((v10 & 0x20) != 0)
    {
      *(a4 + 1) |= 2u;
    }

    if ((~v9 & 0x60) == 0)
    {
      *(a4 + 1) |= 4u;
      *(a4 + 2) = *(a1 + 268);
    }

    if ((~*(a1 + 336) & 3) == 0)
    {
      *(a4 + 1) |= 8u;
    }

    if ((v9 & 0x200000) != 0 || *(a1 + 234))
    {
      *(a4 + 4) |= 1u;
    }

    v11 = *(a1 + 28);
    if (v11)
    {
      v11 = *(a1 + 196);
    }

    v12 = *(a1 + 200);
    v13 = *(a1 + 204);
    *(a4 + 8) = v11;
    *(a4 + 12) = v12;
    v15 = *(a1 + 240);
    v14 = *(a1 + 244);
    *(a4 + 16) = v12;
    *(a4 + 20) = v14;
    *(a4 + 292) = *(a1 + 1976) >> 5;
    v16 = *(a1 + 212) >> 4;
    *(a4 + 24) = v13 >> 5;
    *(a4 + 28) = v16;
    *(a4 + 32) = v15 >> 5;
    *(a4 + 36) = vrev64_s32(*(a1 + 148));
    *(a4 + 64) = *(a3 + 384);
    v18 = *(a1 + 120);
    v17 = *(a1 + 124);
    v19 = v17 >= v18;
    v20 = v17 - v18;
    if (!v19)
    {
      v20 = 0;
    }

    v21 = *(a1 + 144);
    *(a4 + 44) = v20;
    *(a4 + 48) = v21;
    *(a4 + 52) = *(a1 + 100);
    *(a4 + 56) = v18;
    if ((v10 & 8) != 0)
    {
      v22 = *(a1 + 776);
      if (v22)
      {
        *(a4 + 132) = (8000 * *(v22 + 28));
      }
    }

    v23 = *(a2 + 448);
    if (v23)
    {
      LODWORD(v23) = *(v23 + 1220);
    }

    *(a4 + 60) = v23;
    v24 = *(a2 + 248);
    *(a4 + 68) = v24[1];
    *(a4 + 84) = *(a1 + 704);
    *(a4 + 284) = *(a1 + 712);
    *(a4 + 92) = (*(a1 + 96) - *(a1 + 92));
    *(a4 + 100) = *v24;
    v25 = *(a1 + 696);
    *&v26 = v25;
    *(&v26 + 1) = HIDWORD(v25);
    *(a4 + 116) = v26;
    if (v8 >= 2)
    {
      *(a4 + 140) = *(a1 + 708);
    }

    v27 = 0;
    v28 = *(a2 + 256);
    v29 = *(a2 + 264);
    *(a4 + 144) = *v28;
    *(a4 + 160) = v28[1];
    *(a4 + 176) = *v29;
    *(a4 + 192) = v29[1];
    v30 = *(a2 + 272);
    *(a4 + 208) = *v30;
    *(a4 + 224) = v30[1];
    *(a4 + 240) = 0;
    if (*(a1 + 234) >= 5u)
    {
      if (*(a1 + 12) <= 3)
      {
        v27 = 8;
      }

      else
      {
        v27 = 2;
      }

      *(a4 + 240) = v27;
    }

    if (*(a1 + 323) >= 5u)
    {
      v27 |= 4u;
      *(a4 + 240) = v27;
    }

    v31 = *(a1 + 80);
    if (v31)
    {
      v32 = *(v31 + 448);
      if (v32)
      {
        if ((*(v32 + 1196) & 8) != 0)
        {
          *(a4 + 240) = v27 | 1;
        }
      }
    }

    v33 = *(a4 + 244) & 0xFFFFFFDF | (32 * (*(a1 + 998) & 1));
    *(a4 + 244) = v33;
    v34 = v33 & 0xFFFFFFBF | (((*(a1 + 998) >> 1) & 1) << 6);
    *(a4 + 244) = v34;
    v35 = v34 & 0xFFFFFF7F | (((*(a1 + 998) >> 2) & 1) << 7);
    *(a4 + 244) = v35;
    v36 = v35 & 0xFFFFFEFF | (((*(a1 + 998) >> 3) & 1) << 8);
    *(a4 + 244) = v36;
    v37 = v36 & 0xFFFFFFFE | (*(a1 + 998) >> 4) & 1;
    *(a4 + 244) = v37;
    v38 = v37 & 0xFFFFFFFD | (2 * ((*(a1 + 998) >> 5) & 1));
    *(a4 + 244) = v38;
    v39 = v38 & 0xFFFFFFF7 | (8 * ((*(a1 + 998) >> 6) & 1));
    *(a4 + 244) = v39;
    v40 = v39 & 0xFFFFFFEF | (16 * ((*(a1 + 998) >> 7) & 1));
    *(a4 + 244) = v40;
    v41 = v40 & 0xFFFFFFFB | (4 * (HIBYTE(*(a1 + 998)) & 1));
    *(a4 + 244) = v41;
    v42 = v41 & 0xFFFFFDFF | (((*(a1 + 998) >> 9) & 1) << 9);
    *(a4 + 244) = v42;
    v43 = v42 & 0xFFFFFBFF | (((*(a1 + 998) >> 10) & 1) << 10);
    *(a4 + 244) = v43;
    v44 = v43 & 0xFFFFF7FF | (((*(a1 + 998) >> 11) & 1) << 11);
    *(a4 + 244) = v44;
    v45 = v44 & 0xFFFFEFFF | (((*(a1 + 998) >> 12) & 1) << 12);
    *(a4 + 244) = v45;
    v46 = v45 & 0xFFFFDFFF | (((*(a1 + 998) >> 13) & 1) << 13);
    *(a4 + 244) = v46;
    v47 = v46 & 0xFFFFBFFF | (((*(a1 + 998) >> 14) & 1) << 14);
    *(a4 + 244) = v47;
    v48 = v47 & 0xFFFF7FFF | (((*(a1 + 336) & 0x100001) != 0) << 15);
    *(a4 + 244) = v48;
    v49 = v48 & 0xFFFEFFFF | (((*(a1 + 336) & 0x200002) != 0) << 16);
    *(a4 + 244) = v49;
    if ((~*(a1 + 336) & 3) != 0)
    {
      v50 = ((*(a1 + 2096) >> 1) & 1) << 17;
    }

    else
    {
      v50 = 0x20000;
    }

    v54 = v50 | v49 & 0xFFFDFFFF;
    *(a4 + 244) = v54;
    v55 = v54 & 0xFFFBFFFF | (((*(a1 + 336) >> 8) & 1) << 18);
    *(a4 + 244) = v55;
    v56 = v55 & 0xFFF7FFFF | (((*(a1 + 336) >> 9) & 1) << 19);
    *(a4 + 244) = v56;
    v57 = v56 & 0xFFEFFFFF | (((*(a1 + 88) >> 17) & 1) << 20);
    *(a4 + 244) = v57;
    v58 = *(a2 + 448);
    if (v58)
    {
      if (*(v58 + 1224) == 255 || *(v58 + 1168) == 255)
      {
        v57 |= 0x200000u;
        *(a4 + 244) = v57;
        v58 = *(a2 + 448);
      }

      if (*(v58 + 1216) == 3 || *(v58 + 1176) == 3)
      {
        v57 |= 0x400000u;
        *(a4 + 244) = v57;
        v58 = *(a2 + 448);
      }

      if (*(v58 + 1212) == 2 || *(v58 + 1172) == 2)
      {
        v57 |= 0x800000u;
        *(a4 + 244) = v57;
        v58 = *(a2 + 448);
        if (*(v58 + 1212) == 2 && *(v58 + 1216) == 3 && (*(v58 + 1198) & 0x10) == 0)
        {
          v57 |= 0x1000000u;
          *(a4 + 244) = v57;
          v58 = *(a2 + 448);
        }
      }

      if ((*(v58 + 1198) & 0x10) != 0)
      {
        v57 |= 0x2000000u;
        *(a4 + 244) = v57;
      }
    }

    if (*(a1 + 272) == 2)
    {
      v57 |= 0x4000000u;
      *(a4 + 244) = v57;
    }

    if (*(sysctls + 40) == 1 || (*(a3 + 369) & 0x40) != 0)
    {
      v57 |= 0x8000000u;
      *(a4 + 244) = v57;
    }

    *&v59 = *(a1 + 340);
    *(&v59 + 1) = *(a1 + 1004);
    *(a4 + 248) = v59;
    *(a4 + 264) = *(a1 + 1012);
    *(a4 + 268) = *(a1 + 1024);
    *(a4 + 276) = *(a1 + 1032);
    *(a4 + 296) = *(a1 + 348);
    *(a4 + 244) = v57 & 0xEFFFFFFF | ((*(a1 + 2096) & 1) << 28);
    *(a4 + 304) = *(a1 + 360);
    *(a4 + 320) = *(a1 + 376);
    *(a4 + 336) = (*(a1 + 408) - 5);
    v60.i64[0] = -1;
    v60.i64[1] = -1;
    v61 = vaddq_s64(*(a1 + 424), v60);
    *(a4 + 344) = vextq_s8(v61, v61, 8uLL);
    *(a4 + 360) = *(a1 + 440);
    v62 = vaddq_s64(*(a1 + 448), v60);
    *(a4 + 368) = vextq_s8(v62, v62, 8uLL);
    v63 = *(a1 + 472);
    *(a4 + 384) = *(a1 + 464);
    v64 = *(a2 + 2384);
    *(a4 + 408) = v63;
    *(a4 + 416) = v64;
    v65 = *MEMORY[0x1E69E9840];

    os_unfair_lock_unlock((a1 + 1872));
  }

  else
  {
    v51 = __nwlog_obj();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v52 = "tp";
      if (!a2)
      {
        v52 = "inp";
      }

      if (!a3)
      {
        v52 = "so";
      }

      v66 = 136446466;
      v67 = "tcp_fill_info";
      v68 = 2082;
      v69 = v52;
      _os_log_impl(&dword_1889BA000, v51, OS_LOG_TYPE_INFO, "%{public}s %{public}s is NULL", &v66, 0x16u);
    }

    v53 = *MEMORY[0x1E69E9840];
  }
}