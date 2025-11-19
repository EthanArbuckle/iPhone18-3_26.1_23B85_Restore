void tcp_tfo_rcv_probe(uint64_t a1, int a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    *(a1 + 1001) = 1;
    v3 = *(a1 + 236) <= (*(a1 + 212) + (*(a1 + 204) >> 3)) >> 2 ? (*(a1 + 212) + (*(a1 + 204) >> 3)) >> 2 : *(a1 + 236);
    *(a1 + 40) = *(nw_tcp_access_globals(*(*(a1 + 80) + 224)) + 308) + v3 - *(a1 + 64);
    v4 = *(*(a1 + 80) + 224);
    if (!v4 || (*(v4 + 776) & 2) == 0)
    {
      v5 = __nwlog_tcp_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = &unk_188A285CF;
        if (v4)
        {
          v6 = (v4 + 556);
        }

        v7 = *(a1 + 40);
        v8 = *(a1 + 1880) - 1;
        if (v8 > 2)
        {
          v9 = "invalid";
        }

        else
        {
          v9 = off_1E70E90C0[v8];
        }

        v10 = *(a1 + 248);
        v11 = *(a1 + 204);
        v12 = *(a1 + 208);
        v14 = *(a1 + 212);
        v13 = *(a1 + 216);
        v16 = 136449282;
        v17 = "tcp_tfo_rcv_probe";
        v18 = 2082;
        v19 = v6;
        v20 = 1024;
        v21 = v7;
        v22 = 2082;
        v23 = v9;
        v24 = 1024;
        v25 = v10;
        v26 = 1024;
        v27 = v11 >> 5;
        v28 = 1024;
        v29 = ((1000 * v11) >> 5) % 1000;
        v30 = 1024;
        v31 = v14 >> 4;
        v32 = 1024;
        v33 = ((1000 * v14) >> 4) % 1000;
        v34 = 1024;
        v35 = v12 >> 5;
        v36 = 1024;
        v37 = ((1000 * v12) >> 5) % 1000;
        v38 = 1024;
        v39 = v13 >> 4;
        v40 = 1024;
        v41 = ((1000 * v13) >> 4) % 1000;
        _os_log_impl(&dword_1889BA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s %{public}s UTCPT_KEEP: %u RTT_Cache: %{public}s, rtt_upd: %d, rtt: %u.%03ums, rtt_var: %u.%03ums rtt_nc: %u.%03ums, rtt_var_nc: %u.%03ums", &v16, 0x5Cu);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t tcp_is_ack_ratelimited(uint64_t a1)
{
  v2 = *(nw_tcp_access_globals(*(*(a1 + 80) + 224)) + 308);
  v3 = *(a1 + 1052);
  if (!v3 || v2 - v3 >= 1000)
  {
    *(a1 + 1052) = v2;
    v5 = 1;
    goto LABEL_6;
  }

  v4 = *(a1 + 1056);
  if (v4 < *(sysctls + 244))
  {
    v5 = v4 + 1;
LABEL_6:
    result = 0;
    *(a1 + 1056) = v5;
    return result;
  }

  return 1;
}

uint64_t tcp_newreno_partial_ack(_DWORD *a1, uint64_t a2)
{
  v4 = a1[25];
  v5 = a1[37];
  a1[7] = 0;
  a1[4] = 0;
  a1[44] = 0;
  v6 = *(a2 + 8);
  a1[25] = v6;
  a1[37] = a1[50] + v6 - a1[23];
  result = tcp_output(a1);
  if (v4 - a1[25] >= 1)
  {
    a1[25] = v4;
  }

  v8 = *(a2 + 8) - a1[23];
  v9 = v5 >= v8;
  v10 = v5 - v8;
  if (!v9)
  {
    v10 = 0;
  }

  a1[37] = v10 + a1[50];
  return result;
}

uint64_t tcp_ece_aggressive_heur(uint64_t result, char a2)
{
  v2 = *(result + 336);
  if ((v2 & 0x2000) == 0)
  {
    v3 = *(result + 738) + a2;
    *(result + 738) = v3;
    if (*(result + 368) >= 0x14uLL)
    {
      if (v3 >= 0x13u)
      {
        v4 = result;
        tcp_heuristic_ecn_aggressive(result);
        result = v4;
        v2 = *(v4 + 336) & 0xFFFFDFFB;
      }

      *(result + 336) = v2 | 0x2000;
    }
  }

  return result;
}

uint64_t tcp_reass(uint64_t a1, int *a2, uint64_t *a3, uint64_t a4, unsigned int a5, _BYTE *a6, _DWORD *a7)
{
  v210 = *MEMORY[0x1E69E9840];
  v10 = *(*(a1 + 80) + 224);
  v192 = *(a1 + 80);
  if (!a4)
  {
    v190 = 0;
    v191 = 0;
    goto LABEL_10;
  }

  if (*(a4 + 1224) == 255 || *(a4 + 1168) == 255)
  {
    v11 = 1;
  }

  else
  {
    if (*(a4 + 1216) == 3)
    {
      v191 = 0;
      v190 = 1;
      goto LABEL_10;
    }

    v11 = 0;
    if (*(a4 + 1176) == 3)
    {
      v190 = 1;
      v191 = 0;
      goto LABEL_10;
    }
  }

  HIDWORD(v191) = v11;
  v190 = 0;
  v12 = *(a4 + 1212) == 2 || *(a4 + 1172) == 2;
  LODWORD(v191) = v12;
LABEL_10:
  v13 = nw_tcp_access_globals(v10);
  if (a7)
  {
    *a7 = 0;
  }

  v193 = *a3;
  v199 = nw_protocol_tcp_copy_frame(v10, *a3, *a2 + a5);
  v14 = *a3;
  v201 = v10;
  v195 = a7;
  v196 = v13;
  if (!*a3)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_frame_is_single_ip_aggregate";
    v153 = _os_log_send_and_compose_impl();
    LOBYTE(v203) = 16;
    if (!__nwlog_fault())
    {
      goto LABEL_302;
    }

    if (v203 == 17)
    {
      v154 = __nwlog_obj();
      v155 = v203;
      if (!os_log_type_enabled(v154, v203))
      {
        goto LABEL_302;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_frame_is_single_ip_aggregate";
      v156 = "%{public}s called with null frame";
    }

    else
    {
      v154 = __nwlog_obj();
      v155 = v203;
      if (!os_log_type_enabled(v154, v203))
      {
        goto LABEL_302;
      }

      *buf = 136446210;
      *&buf[4] = "__nw_frame_is_single_ip_aggregate";
      v156 = "%{public}s called with null frame, backtrace limit exceeded";
    }

    _os_log_impl(&dword_1889BA000, v154, v155, v156, buf, 0xCu);
LABEL_302:
    if (v153)
    {
      free(v153);
      if (!a5)
      {
        goto LABEL_51;
      }

LABEL_21:
      v25 = *a3;
      if (!*a3)
      {
        goto LABEL_47;
      }

      goto LABEL_22;
    }

LABEL_20:
    if (!a5)
    {
      goto LABEL_51;
    }

    goto LABEL_21;
  }

  if ((*(v14 + 204) & 0x80) == 0)
  {
    goto LABEL_20;
  }

  v15 = *(v14 + 196);
  v16 = v15 >= a5;
  v17 = v15 - a5;
  if (v16)
  {
    *(v14 + 196) = v17;
    goto LABEL_20;
  }

  __nwlog_obj();
  v18 = *(v14 + 196);
  *buf = 136446722;
  *&buf[4] = "__nw_frame_array_claim";
  *&buf[12] = 1024;
  *&buf[14] = v18;
  *&buf[18] = 1024;
  *&buf[20] = a5;
  v19 = _os_log_send_and_compose_impl();
  LOBYTE(v203) = 16;
  if (!__nwlog_fault())
  {
    goto LABEL_44;
  }

  if (v203 == 17)
  {
    v20 = __nwlog_obj();
    if (!os_log_type_enabled(v20, v203))
    {
      goto LABEL_44;
    }

    v21 = *(v14 + 196);
    *buf = 136446722;
    *&buf[4] = "__nw_frame_array_claim";
    *&buf[12] = 1024;
    *&buf[14] = v21;
    *&buf[18] = 1024;
    *&buf[20] = a5;
    v22 = "%{public}s Aggregate buffer length: %u sum: %u";
    v23 = v20;
    v24 = v203;
  }

  else
  {
    v35 = __nwlog_obj();
    if (!os_log_type_enabled(v35, v203))
    {
      goto LABEL_44;
    }

    v36 = *(v14 + 196);
    *buf = 136446722;
    *&buf[4] = "__nw_frame_array_claim";
    *&buf[12] = 1024;
    *&buf[14] = v36;
    *&buf[18] = 1024;
    *&buf[20] = a5;
    v22 = "%{public}s Aggregate buffer length: %u sum: %u, backtrace limit exceeded";
    v23 = v35;
    v24 = v203;
  }

  _os_log_impl(&dword_1889BA000, v23, v24, v22, buf, 0x18u);
LABEL_44:
  if (v19)
  {
    free(v19);
  }

  *(v14 + 196) = 0;
  v25 = *a3;
  if (!*a3)
  {
LABEL_47:
    v26 = 0;
LABEL_48:
    if (v26 != a5)
    {
      v37 = __nwlog_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        *&buf[4] = "__nw_frame_array_claim";
        *&buf[12] = 1024;
        *&buf[14] = v26;
        *&buf[18] = 1024;
        *&buf[20] = a5;
        _os_log_impl(&dword_1889BA000, v37, OS_LOG_TYPE_ERROR, "%{public}s start_offset %u != start_bytes %u", buf, 0x18u);
      }
    }

    goto LABEL_51;
  }

LABEL_22:
  v26 = 0;
  while (1)
  {
    v27 = *(v25 + 52);
    v28 = *(v25 + 56);
    v29 = *(v25 + 60);
    v30 = v27 - (v28 + v29);
    if (v30 >= a5 - v26)
    {
      v30 = a5 - v26;
    }

    v31 = v27 ? v30 : 0;
    v32 = v28 + v31;
    if (v28 + v31 <= v27 - v29)
    {
      *(v25 + 56) = v32;
    }

    else
    {
      v33 = __nwlog_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = *(v25 + 52);
        *buf = 136446978;
        *&buf[4] = "__nw_frame_claim_internal";
        *&buf[12] = 1024;
        *&buf[14] = v32;
        *&buf[18] = 1024;
        *&buf[20] = v34;
        *v206 = 1024;
        *&v206[2] = v29;
        _os_log_impl(&dword_1889BA000, v33, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
      }
    }

    v26 += v31;
    if (v26 == a5)
    {
      break;
    }

    if (v26 < a5)
    {
      v25 = *(v25 + 32);
      if (v25)
      {
        continue;
      }
    }

    goto LABEL_48;
  }

LABEL_51:
  v38 = v199;
  if (v199)
  {
    v39 = a1;
    if (*(v199 + 204) < 0)
    {
      *(a1 + 748) |= 0x4000000u;
      *(v199 + 204) &= ~0x8000u;
    }

    if (!*(v199 + 32) || v201 && (*(v201 + 776) & 2) != 0)
    {
LABEL_84:
      v51 = *(v38 + 112);
      if (!v51)
      {
        goto LABEL_90;
      }

      if ((*(v38 + 204) & 0x100) != 0 && *MEMORY[0x1E6977EF8])
      {
        if (!(*MEMORY[0x1E6977EF8])(v38, *(v38 + 88)))
        {
          v51 = 0;
LABEL_90:
          v198 = v51;
          if ((*(v38 + 204) & 0x80) != 0)
          {
            *(v38 + 196) -= a5;
          }

          v52 = *(v38 + 56) + a5;
          v53 = *(v38 + 60);
          if (v52 <= *(v38 + 52) - v53)
          {
            *(v38 + 56) = v52;
            v56 = v51;
            if (!v201)
            {
LABEL_99:
              if (__nwlog_is_datapath_logging_enabled())
              {
                v157 = __nwlog_tcp_log();
                if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
                {
                  v158 = (v201 + 556);
                  if (!v201)
                  {
                    v158 = &unk_188A285CF;
                  }

                  v159 = *(v38 + 52);
                  if (v159)
                  {
                    v159 -= *(v38 + 56) + *(v38 + 60);
                  }

                  *buf = 136446978;
                  *&buf[4] = "tcp_reass";
                  *&buf[12] = 2082;
                  *&buf[14] = v158;
                  *&buf[22] = 2048;
                  *v206 = v38;
                  *&v206[8] = 1024;
                  *v207 = v159;
                  _os_log_impl(&dword_1889BA000, v157, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s queueing frame %p of length %u", buf, 0x26u);
                }
              }

LABEL_100:
              *(v39 + 320) = 16;
              if (*(v39 + 762))
              {
                *(v39 + 762) = 0;
                *(v39 + 752) = 0;
              }

              if (*(v56 + 4) == *(v39 + 120))
              {
                goto LABEL_108;
              }

              v57 = *(v201 + 468) >> 10;
              if (v57 <= 0x64)
              {
                v57 = 100;
              }

              if (v57 >= *(sysctls + 72) >> 10)
              {
                LOWORD(v57) = *(sysctls + 72) >> 10;
              }

              v58 = v57;
              if (*(v39 + 232) + 1 < v57)
              {
LABEL_108:
                v59 = malloc_type_malloc(*v196[6], 0x6223832DuLL);
                if (v59)
                {
                  ++*(v39 + 232);
                  v60 = *v39;
                  v61 = *(v56 + 4);
                  v197 = v59;
                  if (!*v39)
                  {
                    v67 = 0;
                    v68 = 0;
                    v194 = 1;
                    v62 = a2;
                    v63 = v192;
                    v65 = v191;
                    v64 = HIDWORD(v191);
                    v66 = v190;
                    goto LABEL_140;
                  }

                  v62 = a2;
                  v63 = v192;
                  v65 = v191;
                  v64 = HIDWORD(v191);
                  v66 = v190;
                  if (*(v60[3] + 4) - v61 > 0)
                  {
                    v67 = 0;
                    v68 = 0;
                    v194 = 1;
                    goto LABEL_140;
                  }

                  do
                  {
                    v67 = v60;
                    v60 = *v60;
                  }

                  while (v60 && *(v60[3] + 4) - v61 < 1);
                  v69 = *(v67 + 4) + *(v67[3] + 4) - v61;
                  if (v69 < 1)
                  {
                    v194 = 0;
                    v68 = 0;
                    goto LABEL_140;
                  }

                  v68 = v69 != 1;
                  if (v69 != 1)
                  {
                    *(v39 + 948) = v61;
                    v70 = *a2;
                    if (v69 < *a2)
                    {
                      v70 = v69;
                    }

                    *(v39 + 952) = v70 + v61;
                  }

                  v71 = *a2;
                  if (v69 < v71)
                  {
                    if ((*(v38 + 204) & 0x80) != 0)
                    {
                      *(v38 + 196) -= v69;
                    }

                    v72 = *(v38 + 56) + v69;
                    v73 = *(v38 + 60);
                    if (v72 <= *(v38 + 52) - v73)
                    {
                      *(v38 + 56) = v72;
                    }

                    else
                    {
                      v74 = __nwlog_obj();
                      v75 = os_log_type_enabled(v74, OS_LOG_TYPE_ERROR);
                      v66 = v190;
                      v65 = v191;
                      v64 = HIDWORD(v191);
                      v63 = v192;
                      if (v75)
                      {
                        v76 = *(v38 + 52);
                        *buf = 136446978;
                        *&buf[4] = "__nw_frame_claim_internal";
                        *&buf[12] = 1024;
                        *&buf[14] = v72;
                        *&buf[18] = 1024;
                        *&buf[20] = v76;
                        *v206 = 1024;
                        *&v206[2] = v73;
                        _os_log_impl(&dword_1889BA000, v74, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
                        v66 = v190;
                        v65 = v191;
                        v64 = HIDWORD(v191);
                        v63 = v192;
                      }
                    }

                    v194 = 0;
                    v62 = a2;
                    *a2 -= v69;
                    v56 = v198;
                    v61 = *(v198 + 4) + v69;
                    *(v198 + 4) = v61;
LABEL_140:
                    if (v61 != *(v39 + 120))
                    {
                      ++*(v39 + 1004);
                      v84 = *(v39 + 1064);
                      v85 = *v62;
                      if (v84)
                      {
                        v86.i64[0] = vdupq_n_s64(1uLL).u64[0];
                        v86.i64[1] = *v62;
                        v84[16] = vaddq_s64(v84[16], v86);
                      }

                      *(v39 + 700) += v85;
                    }

                    v87 = *(v63 + 248);
                    ++*v87;
                    if (v64)
                    {
                      ++**(v63 + 256);
                      if (!v66)
                      {
                        goto LABEL_146;
                      }
                    }

                    else if (!v66)
                    {
LABEL_146:
                      if (!v65)
                      {
                        goto LABEL_148;
                      }

                      goto LABEL_147;
                    }

                    ++**(v63 + 264);
                    if (!v65)
                    {
LABEL_148:
                      v88 = *v62;
                      v87[1] += v88;
                      if (v64)
                      {
                        *(*(v63 + 256) + 8) += v88;
                        if (!v66)
                        {
                          goto LABEL_150;
                        }
                      }

                      else if (!v66)
                      {
LABEL_150:
                        if (v65)
                        {
                          goto LABEL_151;
                        }

                        goto LABEL_158;
                      }

                      *(*(v63 + 264) + 8) += v88;
                      if (v65)
                      {
LABEL_151:
                        *(*(v63 + 272) + 8) += v88;
                        if (!*(v201 + 24))
                        {
                          goto LABEL_161;
                        }

                        goto LABEL_159;
                      }

LABEL_158:
                      if (!*(v201 + 24))
                      {
                        goto LABEL_161;
                      }

LABEL_159:
                      all_stats = nw_protocol_tcp_get_all_stats();
                      if (all_stats)
                      {
                        *(all_stats + 52) += *v62;
                      }

LABEL_161:
                      if (!v60)
                      {
LABEL_245:
                        *(v199 + 32) = 0;
                        v197[4] = v199;
                        *(v199 + 40) = v197 + 4;
                        v197[5] = v199 + 32;
                        v197[3] = v56;
                        *(v197 + 4) = *v62;
                        if (v194)
                        {
                          v39 = a1;
                          v132 = *a1;
                          *v197 = *a1;
                          if (v132)
                          {
                            v132[1] = v197;
                          }

                          *a1 = v197;
                          v197[1] = a1;
                        }

                        else
                        {
                          v133 = *v67;
                          *v197 = *v67;
                          v39 = a1;
                          if (v133)
                          {
                            *(v133 + 8) = v197;
                          }

                          *v67 = v197;
                          v197[1] = v67;
                        }

LABEL_252:
                        if (*(v39 + 12) >= 4)
                        {
                          v134 = *v39;
                          if (*v39)
                          {
                            v135 = v134[3];
                            v136 = *(v135 + 4);
                            if (v136 == *(v39 + 120))
                            {
                              v137 = *(v39 + 748);
                              if ((v137 & 0x800000) == 0)
                              {
                                *(v39 + 748) = v137 | 0x800000;
                                v138 = *(v39 + 1064);
                                if (v138)
                                {
                                  ++*(v138 + 1616);
                                }

                                v139 = 0;
                                v140 = a1;
                                do
                                {
                                  *(v140 + 120) = v136 + *(v134 + 4);
                                  v141 = *(v135 + 13);
                                  v142 = *v134;
                                  v143 = v134[1];
                                  if (*v134)
                                  {
                                    *(v142 + 8) = v143;
                                  }

                                  *v143 = v142;
                                  if ((*(v201 + 376) & 0x20) == 0)
                                  {
                                    v144 = *(a1 + 748);
                                    *(a1 + 748) = v144 & 0xFFFFFFEF | (16 * ((v141 >> 3) & 1));
                                    if ((v144 & 0x4000000) != 0)
                                    {
                                      *(a1 + 748) = v144 & 0xFBFFFFEF | (16 * ((v141 >> 3) & 1)) & 0xFBFFFFFF;
                                      nw_frame_array_first();
                                      nw_frame_set_is_wake_packet();
                                      if ((*(v201 + 776) & 2) == 0)
                                      {
                                        v145 = __nwlog_tcp_log();
                                        if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
                                        {
                                          *buf = 136446466;
                                          *&buf[4] = "tcp_reass";
                                          *&buf[12] = 2082;
                                          *&buf[14] = v201 + 556;
                                          _os_log_impl(&dword_1889BA000, v145, OS_LOG_TYPE_INFO, "%{public}s %{public}s reassembled segment is wake packet", buf, 0x16u);
                                        }
                                      }
                                    }

                                    v146 = v134 + 4;
                                    v147 = v134[4];
                                    if (v147)
                                    {
                                      v148 = 0;
                                      v149 = v134[4];
                                      do
                                      {
                                        v150 = *(v149 + 52);
                                        if (v150)
                                        {
                                          v150 -= *(v149 + 56) + *(v149 + 60);
                                        }

                                        v148 += v150;
                                        v149 = *(v149 + 32);
                                      }

                                      while (v149);
                                      if (v148 <= 0)
                                      {
                                        *(v147 + 40) = &v203;
                                        v151 = v134[5];
                                        v203 = v147;
                                        v204 = v151;
                                        v134[4] = 0;
                                        v134[5] = v146;
                                        *buf = MEMORY[0x1E69E9820];
                                        *&buf[8] = 0x40000000;
                                        *&buf[16] = ____nw_frame_array_finalize_block_invoke_586;
                                        *v206 = &__block_descriptor_tmp_12;
                                        v206[8] = 1;
                                        do
                                        {
                                          v152 = v203;
                                          if (!v203)
                                          {
                                            break;
                                          }

                                          nw_frame_array_remove();
                                        }

                                        while (((*&buf[16])(buf, v152) & 1) != 0);
                                      }

                                      else if (sbappendstream((v201 + 464), v146, v148))
                                      {
                                        v139 = 1;
                                      }
                                    }
                                  }

                                  free(v134);
                                  v140 = a1;
                                  --*(a1 + 232);
                                  v134 = *a1;
                                  if (!*a1)
                                  {
                                    break;
                                  }

                                  v135 = v134[3];
                                  v136 = *(v135 + 4);
                                }

                                while (v136 == *(a1 + 120));
                                result = v141 & 1;
                                *(a1 + 748) &= ~0x800000u;
                                if (a6 && v139)
                                {
                                  *a6 = 1;
                                }

                                goto LABEL_346;
                              }
                            }
                          }
                        }

LABEL_345:
                        result = 0;
                        goto LABEL_346;
                      }

                      while (1)
                      {
                        v90 = *v62 + *(v56 + 4);
                        v91 = v60[3];
                        v92 = *(v91 + 4);
                        v93 = v90 - v92;
                        if (v90 - v92 < 1)
                        {
                          goto LABEL_245;
                        }

                        if (((v93 != 1) & ~v68) != 0)
                        {
                          if (*(a1 + 948))
                          {
                            v92 = *(a1 + 952);
                          }

                          else
                          {
                            *(a1 + 948) = v92;
                          }

                          v94 = *(v60 + 4);
                          v95 = v93 >= v94 ? *(v60 + 4) : v93;
                          *(a1 + 952) = v95 + v92;
                        }

                        else
                        {
                          v94 = *(v60 + 4);
                        }

                        if (v94 > v93)
                        {
                          break;
                        }

                        v97 = *v60;
                        v96 = v60[1];
                        if (*v60)
                        {
                          v97[1] = v96;
                        }

                        *v96 = v97;
                        if (!v201 || (*(v201 + 776) & 2) == 0)
                        {
                          if (__nwlog_is_datapath_logging_enabled())
                          {
                            v101 = __nwlog_tcp_log();
                            if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
                            {
                              v102 = *(v60[3] + 4);
                              v103 = *(v56 + 4);
                              v104 = *(v60 + 4);
                              v105 = *v62;
                              *buf = 136447490;
                              *&buf[4] = "tcp_reass";
                              *&buf[12] = 2082;
                              *&buf[14] = v201 + 556;
                              *&buf[22] = 1024;
                              *v206 = v102;
                              *&v206[4] = 1024;
                              *&v206[6] = v103;
                              *v207 = 1024;
                              *&v207[2] = v104;
                              v208 = 1024;
                              v209 = v105;
                              _os_log_impl(&dword_1889BA000, v101, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s dropping a completely overlapping segment: tqe_seq %u th_seq %u tqe_len %u tlen %u", buf, 0x2Eu);
                            }
                          }
                        }

                        v98 = v60[4];
                        if (v98)
                        {
                          *(v98 + 40) = &v203;
                          v99 = v60[5];
                          v203 = v98;
                          v204 = v99;
                          v60[4] = 0;
                          v60[5] = v60 + 4;
                          *buf = MEMORY[0x1E69E9820];
                          *&buf[8] = 0x40000000;
                          *&buf[16] = ____nw_frame_array_finalize_block_invoke_289;
                          *v206 = &__block_descriptor_tmp_290;
                          v206[8] = 1;
                          do
                          {
                            v100 = v203;
                            if (!v203)
                            {
                              break;
                            }

                            nw_frame_array_remove();
                          }

                          while (((*&buf[16])(buf, v100) & 1) != 0);
                        }

                        free(v60);
                        --*(a1 + 232);
                        v60 = v97;
                        if (!v97)
                        {
                          goto LABEL_245;
                        }
                      }

                      *(v91 + 4) = v90;
                      *(v60 + 4) = v94 - v93;
                      v106 = v60[4];
                      if (v106)
                      {
                        if ((*(v106 + 204) & 0x80) == 0)
                        {
                          goto LABEL_229;
                        }

                        v107 = *(v106 + 196);
                        if (v93 <= v107)
                        {
                          *(v106 + 196) = v107 - v93;
                          v120 = v60[4];
                          if (v120)
                          {
                            goto LABEL_230;
                          }

LABEL_220:
                          v121 = 0;
LABEL_243:
                          v131 = __nwlog_obj();
                          if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136446722;
                            *&buf[4] = "__nw_frame_array_claim";
                            *&buf[12] = 1024;
                            *&buf[14] = v121;
                            *&buf[18] = 1024;
                            *&buf[20] = v93;
                            _os_log_impl(&dword_1889BA000, v131, OS_LOG_TYPE_ERROR, "%{public}s start_offset %u != start_bytes %u", buf, 0x18u);
                          }

                          goto LABEL_245;
                        }

                        __nwlog_obj();
                        v108 = *(v106 + 196);
                        *buf = 136446722;
                        *&buf[4] = "__nw_frame_array_claim";
                        *&buf[12] = 1024;
                        *&buf[14] = v108;
                        *&buf[18] = 1024;
                        *&buf[20] = v93;
                        v109 = _os_log_send_and_compose_impl();
                        LOBYTE(v203) = 16;
                        if (__nwlog_fault())
                        {
                          if (v203 == 17)
                          {
                            v110 = __nwlog_obj();
                            v111 = v203;
                            if (os_log_type_enabled(v110, v203))
                            {
                              v112 = *(v106 + 196);
                              *buf = 136446722;
                              *&buf[4] = "__nw_frame_array_claim";
                              *&buf[12] = 1024;
                              *&buf[14] = v112;
                              *&buf[18] = 1024;
                              *&buf[20] = v93;
                              v113 = "%{public}s Aggregate buffer length: %u sum: %u";
LABEL_225:
                              _os_log_impl(&dword_1889BA000, v110, v111, v113, buf, 0x18u);
                            }
                          }

                          else
                          {
                            v110 = __nwlog_obj();
                            v111 = v203;
                            if (os_log_type_enabled(v110, v203))
                            {
                              v122 = *(v106 + 196);
                              *buf = 136446722;
                              *&buf[4] = "__nw_frame_array_claim";
                              *&buf[12] = 1024;
                              *&buf[14] = v122;
                              *&buf[18] = 1024;
                              *&buf[20] = v93;
                              v113 = "%{public}s Aggregate buffer length: %u sum: %u, backtrace limit exceeded";
                              goto LABEL_225;
                            }
                          }
                        }

                        v62 = a2;
                        if (v109)
                        {
                          free(v109);
                        }

                        *(v106 + 196) = 0;
LABEL_229:
                        v120 = v60[4];
                        if (v120)
                        {
                          goto LABEL_230;
                        }

                        goto LABEL_220;
                      }

                      __nwlog_obj();
                      *buf = 136446210;
                      *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                      v176 = _os_log_send_and_compose_impl();
                      LOBYTE(v203) = 16;
                      if (__nwlog_fault())
                      {
                        if (v203 == 17)
                        {
                          v177 = __nwlog_obj();
                          v178 = v203;
                          if (!os_log_type_enabled(v177, v203))
                          {
                            goto LABEL_353;
                          }

                          *buf = 136446210;
                          *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                          v179 = "%{public}s called with null frame";
                        }

                        else
                        {
                          v177 = __nwlog_obj();
                          v178 = v203;
                          if (!os_log_type_enabled(v177, v203))
                          {
                            goto LABEL_353;
                          }

                          *buf = 136446210;
                          *&buf[4] = "__nw_frame_is_single_ip_aggregate";
                          v179 = "%{public}s called with null frame, backtrace limit exceeded";
                        }

                        _os_log_impl(&dword_1889BA000, v177, v178, v179, buf, 0xCu);
                      }

LABEL_353:
                      if (v176)
                      {
                        free(v176);
                      }

                      v62 = a2;
                      v56 = v198;
                      v120 = v60[4];
                      if (v120)
                      {
LABEL_230:
                        v121 = 0;
                        while (1)
                        {
                          v123 = *(v120 + 52);
                          v124 = *(v120 + 56);
                          v125 = *(v120 + 60);
                          v126 = v123 - (v124 + v125);
                          if (v126 >= v93 - v121)
                          {
                            v126 = v93 - v121;
                          }

                          v127 = v123 ? v126 : 0;
                          v128 = v124 + v127;
                          if (v124 + v127 <= v123 - v125)
                          {
                            *(v120 + 56) = v128;
                          }

                          else
                          {
                            v129 = __nwlog_obj();
                            if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                            {
                              v130 = *(v120 + 52);
                              *buf = 136446978;
                              *&buf[4] = "__nw_frame_claim_internal";
                              *&buf[12] = 1024;
                              *&buf[14] = v128;
                              *&buf[18] = 1024;
                              *&buf[20] = v130;
                              *v206 = 1024;
                              *&v206[2] = v125;
                              _os_log_impl(&dword_1889BA000, v129, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
                            }
                          }

                          v121 += v127;
                          v62 = a2;
                          v56 = v198;
                          if (v121 == v93)
                          {
                            goto LABEL_245;
                          }

                          if (v121 < v93)
                          {
                            v120 = *(v120 + 32);
                            if (v120)
                            {
                              continue;
                            }
                          }

                          goto LABEL_243;
                        }
                      }

                      goto LABEL_220;
                    }

LABEL_147:
                    ++**(v63 + 272);
                    goto LABEL_148;
                  }

                  v114 = *(v39 + 1064);
                  if (v114)
                  {
                    v115.i64[0] = vdupq_n_s64(1uLL).u64[0];
                    v115.i64[1] = *a2;
                    v114[13] = vaddq_s64(v114[13], v115);
                  }

                  v116 = *(v192 + 248);
                  ++*v116;
                  if (HIDWORD(v191))
                  {
                    ++**(v192 + 256);
                    if (!v190)
                    {
                      goto LABEL_199;
                    }
                  }

                  else if (!v190)
                  {
LABEL_199:
                    if (!v191)
                    {
                      goto LABEL_201;
                    }

                    goto LABEL_200;
                  }

                  ++**(v192 + 264);
                  if (!v191)
                  {
LABEL_201:
                    v116[1] += v71;
                    if (HIDWORD(v191))
                    {
                      *(*(v192 + 256) + 8) += v71;
                      if (!v190)
                      {
                        goto LABEL_203;
                      }
                    }

                    else if (!v190)
                    {
LABEL_203:
                      if (!v191)
                      {
LABEL_205:
                        *(v39 + 696) += v71;
                        if (*(v201 + 24))
                        {
                          v117 = nw_protocol_tcp_get_all_stats();
                          if (v117)
                          {
                            *(v117 + 48) += *a2;
                          }
                        }

                        if ((*(v201 + 776) & 2) == 0)
                        {
                          if (__nwlog_is_datapath_logging_enabled())
                          {
                            v184 = __nwlog_tcp_log();
                            if (os_log_type_enabled(v184, OS_LOG_TYPE_DEBUG))
                            {
                              v185 = *(v67[3] + 4);
                              v186 = *(v67 + 4);
                              v187 = *(v56 + 4);
                              *buf = 136447234;
                              *&buf[4] = "tcp_reass";
                              *&buf[12] = 2082;
                              *&buf[14] = v201 + 556;
                              *&buf[22] = 1024;
                              *v206 = v185;
                              *&v206[4] = 1024;
                              *&v206[6] = v186;
                              *v207 = 1024;
                              *&v207[2] = v187;
                              _os_log_impl(&dword_1889BA000, v184, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s It's a duplicate segment: tqe_seq %u tqe_len %u th_seq %u", buf, 0x28u);
                            }
                          }
                        }

                        v118 = *(v38 + 80);
                        if (v118)
                        {
                          v119 = *(v38 + 88);
                          *(v38 + 80) = 0;
                          *(v38 + 88) = 0;
                          v118(v38, 1, v119);
LABEL_212:
                          free(v197);
                          --*(v39 + 232);
                          goto LABEL_252;
                        }

                        __nwlog_obj();
                        *buf = 136446210;
                        *&buf[4] = "__nw_frame_finalize";
                        v180 = _os_log_send_and_compose_impl();
                        LOBYTE(v203) = 16;
                        if (__nwlog_fault())
                        {
                          if (v203 == 17)
                          {
                            v181 = __nwlog_obj();
                            v182 = v203;
                            if (os_log_type_enabled(v181, v203))
                            {
                              *buf = 136446210;
                              *&buf[4] = "__nw_frame_finalize";
                              v183 = "%{public}s called with null frame->finalizer";
LABEL_359:
                              _os_log_impl(&dword_1889BA000, v181, v182, v183, buf, 0xCu);
                            }
                          }

                          else
                          {
                            v181 = __nwlog_obj();
                            v182 = v203;
                            if (os_log_type_enabled(v181, v203))
                            {
                              *buf = 136446210;
                              *&buf[4] = "__nw_frame_finalize";
                              v183 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
                              goto LABEL_359;
                            }
                          }
                        }

                        if (v180)
                        {
                          free(v180);
                        }

                        v39 = a1;
                        goto LABEL_212;
                      }

LABEL_204:
                      *(*(v192 + 272) + 8) += v71;
                      goto LABEL_205;
                    }

                    *(*(v192 + 264) + 8) += v71;
                    if (!v191)
                    {
                      goto LABEL_205;
                    }

                    goto LABEL_204;
                  }

LABEL_200:
                  ++**(v192 + 272);
                  goto LABEL_201;
                }

                v77 = *(v39 + 1064);
                if (v77)
                {
                  ++*(v77 + 232);
                }

                if ((*(v201 + 776) & 2) == 0)
                {
                  v78 = __nwlog_tcp_log();
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136446466;
                    *&buf[4] = "tcp_reass";
                    *&buf[12] = 2082;
                    *&buf[14] = v201 + 556;
                    _os_log_impl(&dword_1889BA000, v78, OS_LOG_TYPE_ERROR, "%{public}s %{public}s couldn't allocate memory for tcp_reass_zone", buf, 0x16u);
                  }
                }

                v79 = *(v38 + 80);
                if (v79)
                {
                  v80 = *(v38 + 88);
                  *(v38 + 80) = 0;
                  *(v38 + 88) = 0;
                  v79(v38, 1, v80);
                  result = 0;
                  goto LABEL_346;
                }

                __nwlog_obj();
                *buf = 136446210;
                *&buf[4] = "__nw_frame_finalize";
                v164 = _os_log_send_and_compose_impl();
                LOBYTE(v203) = 16;
                if (__nwlog_fault())
                {
                  if (v203 == 17)
                  {
                    v165 = __nwlog_obj();
                    v166 = v203;
                    if (!os_log_type_enabled(v165, v203))
                    {
                      goto LABEL_343;
                    }

                    *buf = 136446210;
                    *&buf[4] = "__nw_frame_finalize";
                    v167 = "%{public}s called with null frame->finalizer";
                  }

                  else
                  {
                    v165 = __nwlog_obj();
                    v166 = v203;
                    if (!os_log_type_enabled(v165, v203))
                    {
                      goto LABEL_343;
                    }

                    *buf = 136446210;
                    *&buf[4] = "__nw_frame_finalize";
                    v167 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
                  }

                  _os_log_impl(&dword_1889BA000, v165, v166, v167, buf, 0xCu);
                }

LABEL_343:
                if (v164)
                {
                  free(v164);
                }

                goto LABEL_345;
              }

              v81 = *(v39 + 1064);
              if (v81)
              {
                ++*(v81 + 232);
              }

              if ((*(v201 + 776) & 2) == 0)
              {
                if (__nwlog_is_datapath_logging_enabled())
                {
                  v172 = __nwlog_tcp_log();
                  if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
                  {
                    v173 = *(v56 + 4);
                    v174 = *(v39 + 120);
                    v175 = *(v39 + 232);
                    *buf = 136447490;
                    *&buf[4] = "tcp_reass";
                    *&buf[12] = 2082;
                    *&buf[14] = v201 + 556;
                    *&buf[22] = 1024;
                    *v206 = v173;
                    *&v206[4] = 1024;
                    *&v206[6] = v174;
                    *v207 = 1024;
                    *&v207[2] = v175;
                    v208 = 1024;
                    v209 = v58;
                    _os_log_impl(&dword_1889BA000, v172, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s drop due to limit: seq %u rcv_nxt %u reqssqlen %u qlimit %u", buf, 0x2Eu);
                  }
                }
              }

              v82 = *(v38 + 80);
              if (v82)
              {
                v83 = *(v38 + 88);
                *(v38 + 80) = 0;
                *(v38 + 88) = 0;
                v82(v38, 1, v83);
LABEL_138:
                result = 0;
                *a2 = 0;
                goto LABEL_346;
              }

              __nwlog_obj();
              *buf = 136446210;
              *&buf[4] = "__nw_frame_finalize";
              v168 = _os_log_send_and_compose_impl();
              LOBYTE(v203) = 16;
              if (__nwlog_fault())
              {
                if (v203 == 17)
                {
                  v169 = __nwlog_obj();
                  v170 = v203;
                  if (!os_log_type_enabled(v169, v203))
                  {
                    goto LABEL_348;
                  }

                  *buf = 136446210;
                  *&buf[4] = "__nw_frame_finalize";
                  v171 = "%{public}s called with null frame->finalizer";
                }

                else
                {
                  v169 = __nwlog_obj();
                  v170 = v203;
                  if (!os_log_type_enabled(v169, v203))
                  {
                    goto LABEL_348;
                  }

                  *buf = 136446210;
                  *&buf[4] = "__nw_frame_finalize";
                  v171 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
                }

                _os_log_impl(&dword_1889BA000, v169, v170, v171, buf, 0xCu);
              }

LABEL_348:
              if (v168)
              {
                free(v168);
              }

              goto LABEL_138;
            }
          }

          else
          {
            v54 = __nwlog_obj();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v55 = *(v38 + 52);
              *buf = 136446978;
              *&buf[4] = "__nw_frame_claim_internal";
              *&buf[12] = 1024;
              *&buf[14] = v52;
              *&buf[18] = 1024;
              *&buf[20] = v55;
              *v206 = 1024;
              *&v206[2] = v53;
              _os_log_impl(&dword_1889BA000, v54, OS_LOG_TYPE_ERROR, "%{public}s Claiming bytes failed because start (%u) is beyond end (%u - %u)", buf, 0x1Eu);
            }

            v56 = v198;
            if (!v201)
            {
              goto LABEL_99;
            }
          }

          if ((*(v201 + 776) & 2) != 0)
          {
            goto LABEL_100;
          }

          goto LABEL_99;
        }

        v51 = *(v38 + 112);
      }

      v51 += *(v38 + 56);
      goto LABEL_90;
    }

    __nwlog_tcp_log();
    if (v201)
    {
      v40 = (v201 + 556);
    }

    else
    {
      v40 = &unk_188A285CF;
    }

    *buf = 136446466;
    *&buf[4] = "tcp_reass";
    *&buf[12] = 2082;
    *&buf[14] = v40;
    v41 = _os_log_send_and_compose_impl();
    LOBYTE(v203) = 16;
    if (__nwlog_fault())
    {
      if (v203 == 17)
      {
        v42 = __nwlog_tcp_log();
        v43 = v203;
        if (os_log_type_enabled(v42, v203))
        {
          *buf = 136446466;
          *&buf[4] = "tcp_reass";
          *&buf[12] = 2082;
          *&buf[14] = v40;
          v44 = "%{public}s %{public}s new_frame has next";
LABEL_80:
          _os_log_impl(&dword_1889BA000, v42, v43, v44, buf, 0x16u);
        }
      }

      else
      {
        v42 = __nwlog_tcp_log();
        v43 = v203;
        if (os_log_type_enabled(v42, v203))
        {
          *buf = 136446466;
          *&buf[4] = "tcp_reass";
          *&buf[12] = 2082;
          *&buf[14] = v40;
          v44 = "%{public}s %{public}s new_frame has next, backtrace limit exceeded";
          goto LABEL_80;
        }
      }
    }

    if (v41)
    {
      free(v41);
    }

    v39 = a1;
    v38 = v199;
    goto LABEL_84;
  }

  v45 = v201;
  if (!v193)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "__nw_frame_check_validity";
    v160 = _os_log_send_and_compose_impl();
    LOBYTE(v203) = 16;
    if (__nwlog_fault())
    {
      if (v203 == 17)
      {
        v161 = __nwlog_obj();
        v162 = v203;
        if (os_log_type_enabled(v161, v203))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_frame_check_validity";
          v163 = "%{public}s called with null frame";
LABEL_329:
          _os_log_impl(&dword_1889BA000, v161, v162, v163, buf, 0xCu);
        }
      }

      else
      {
        v161 = __nwlog_obj();
        v162 = v203;
        if (os_log_type_enabled(v161, v203))
        {
          *buf = 136446210;
          *&buf[4] = "__nw_frame_check_validity";
          v163 = "%{public}s called with null frame, backtrace limit exceeded";
          goto LABEL_329;
        }
      }
    }

    if (v160)
    {
      free(v160);
    }

    v45 = v201;
    v46 = v195;
    goto LABEL_333;
  }

  v46 = a7;
  if (*(v193 + 204) & 0x100) == 0 || !*MEMORY[0x1E6977EF8] || ((*MEMORY[0x1E6977EF8])(v193, *(v193 + 88)))
  {
    if (!a7)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_333:
  *(a1 + 1064) = 0;
  if (v46)
  {
LABEL_69:
    *v46 = 12;
  }

LABEL_70:
  v47 = *(a1 + 1064);
  if (v47)
  {
    ++*(v47 + 232);
  }

  if (v45 && (*(v45 + 776) & 2) != 0)
  {
    goto LABEL_345;
  }

  v48 = __nwlog_tcp_log();
  result = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v50 = &unk_188A285CF;
    if (v45)
    {
      v50 = (v45 + 556);
    }

    *buf = 136446466;
    *&buf[4] = "tcp_reass";
    *&buf[12] = 2082;
    *&buf[14] = v50;
    _os_log_impl(&dword_1889BA000, v48, OS_LOG_TYPE_ERROR, "%{public}s %{public}s unable to copy frame for reassembly", buf, 0x16u);
    result = 0;
  }

LABEL_346:
  v188 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tcp_sbrcv_reserve(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  if (a3 >= a5)
  {
    v5 = a5;
  }

  else
  {
    v5 = a3;
  }

  if (v5 >= 0xFFFF << *(result + 269))
  {
    v6 = 0xFFFF << *(result + 269);
  }

  else
  {
    v6 = v5;
  }

  if (v6 <= *(a2 + 4) || v6 > 0x71C71C)
  {
    return result;
  }

  *(a2 + 4) = v6;
  v8 = *(*(a2 + 48) + 24);
  if ((*(a2 + 32) & 4) != 0)
  {
    v9 = v6;
    if (v8)
    {
      v10 = a4;
      v11 = result;
      v12 = a5;
      v16 = *(*(a2 + 48) + 24);
      v17 = a2;
      all_stats = nw_protocol_tcp_get_all_stats();
      a2 = v17;
      v9 = *(v17 + 4);
      if (all_stats)
      {
        *(all_stats + 88) = v9;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v9 = v6;
    if (v8)
    {
      v10 = a4;
      v11 = result;
      v12 = a5;
      v13 = *(*(a2 + 48) + 24);
      v14 = a2;
      v15 = nw_protocol_tcp_get_all_stats();
      a2 = v14;
      v9 = *(v14 + 4);
      if (v15)
      {
        *(v15 + 100) = v9;
      }

LABEL_18:
      a5 = v12;
      result = v11;
      a4 = v10;
    }
  }

  if (*(a2 + 8) > v9)
  {
    *(a2 + 8) = v9;
  }

  v19 = *(a2 + 36);
  if (a4)
  {
    v20 = a4;
  }

  else
  {
    v20 = v6;
  }

  if (v19 <= v20)
  {
    v19 = v20;
  }

  if (v19 >= a5)
  {
    v19 = a5;
  }

  if (v19 >= 0xFFFF << *(result + 269))
  {
    v19 = 0xFFFF << *(result + 269);
  }

  *(a2 + 36) = v19;
  return result;
}

uint64_t tcp_bad_rexmt_restore_state(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  if ((~v3 & 0x180) != 0)
  {
    *(a1 + 148) = *(a1 + 496);
    if ((v3 & 0x400000) == 0)
    {
LABEL_25:
      *(a1 + 992) = 0;
      v9 = *(a1 + 148);
      goto LABEL_26;
    }

    *(a1 + 88) = v3 | 0x200000;
    v10 = *(a1 + 80);
    v11 = *(v10 + 2372);
    if ((v11 & 0x40000000) == 0)
    {
LABEL_17:
      v17 = *(a1 + 960);
      if (v17)
      {
        v18 = (a1 + 960);
        do
        {
          v21 = *v18;
          if (*v18 == v17)
          {
            v19 = (a1 + 960);
          }

          else
          {
            do
            {
              v22 = v21;
              v21 = v21[2];
            }

            while (v21 != v17);
            v19 = v22 + 2;
          }

          v20 = v17[2];
          *v19 = v21[2];
          nw_tcp_access_globals(*(*(a1 + 80) + 224));
          free(v17);
          v17 = v20;
        }

        while (v20);
        *(a1 + 968) = *(a1 + 96);
      }

      goto LABEL_25;
    }

    v12 = *(v10 + 224);
    if ((v11 & 0x10000000) != 0)
    {
      *(v10 + 2372) = v11 & 0xAFFFFFFF;
      v14 = (v12 + 364);
      v13 = *(v12 + 364);
    }

    else
    {
      v13 = *(v12 + 364);
      *(v10 + 2372) = v11 & 0xAFFFFFFF;
      if ((v13 & 0x20000) == 0)
      {
LABEL_14:
        v15 = *(v12 + 32);
        if (v15)
        {
          v16 = *v15;
          if (v16)
          {
            v16();
          }
        }

        goto LABEL_17;
      }

      v14 = (v12 + 364);
    }

    *v14 = v13 & 0xFFFDFFFF;
    goto LABEL_14;
  }

  v4 = *(a2 + 8);
  v5 = *(a1 + 96) - v4;
  v6 = v4 - *(a1 + 92);
  *(a1 + 152) = *(a1 + 500);
  v7 = *(tcp_cc_algo_list[*(a1 + 272)] + 40);
  if (v7)
  {
    v7(a1);
  }

  v8 = *(a1 + 148);
  if (v6 < v8)
  {
    v8 = v6;
  }

  v9 = v5 + v8;
LABEL_26:
  v23 = sysctls;
  if (*(sysctls + 280))
  {
    v24 = *(sysctls + 16);
  }

  else
  {
    v24 = 10;
  }

  v25 = *(a1 + 200) * v24;
  if (v9 <= v25)
  {
    v9 = v25;
  }

  *(a1 + 148) = v9;
  *(a1 + 156) = *(a1 + 504);
  *(a1 + 100) = *(a1 + 96);
  v26 = *(*(a1 + 80) + 224);
  v27 = *(v26 + 416);
  if ((~v27 & 0xC00) == 0)
  {
    v28 = *(v23 + 228);
    if (v28 <= *(a1 + 152))
    {
      v28 = *(a1 + 152);
    }

    v29 = *(v23 + 116);
    if (v28 < v29)
    {
      v29 = v28;
    }

    *(v26 + 420) = v29;
    if (*(v26 + 388) <= v29)
    {
      if (v29 <= 0x71C71C)
      {
        *(v26 + 388) = v29;
        v30 = *(*(v26 + 432) + 24);
        if ((v27 & 4) != 0)
        {
          if (v30)
          {
            all_stats = nw_protocol_tcp_get_all_stats();
            v29 = *(v26 + 388);
            if (all_stats)
            {
              *(all_stats + 88) = v29;
            }
          }
        }

        else if (v30)
        {
          v31 = nw_protocol_tcp_get_all_stats();
          v29 = *(v26 + 388);
          if (v31)
          {
            *(v31 + 100) = v29;
          }
        }

        if (*(v26 + 392) > v29)
        {
          *(v26 + 392) = v29;
        }
      }

      *(v26 + 416) &= ~0x800u;
    }
  }

  v33 = *(a1 + 748);
  if ((v33 & 0x20400020) == 0x20000020)
  {
    v34 = *(a1 + 2077);
    if ((v34 & 0x1Fu) >= 0xF)
    {
      v35 = 16;
    }

    else
    {
      v35 = (v34 + 1) & 0x1F;
    }

    *(a1 + 2077) = v34 & 0xC0 | v35 | 0x20;
  }

  *(a1 + 748) = v33 | 0x40;
  result = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  *(a1 + 524) = *(result + 308);
  *(a1 + 176) = 0;
  return result;
}

void tcp_set_foreground_cc(uint64_t a1)
{
  if (*(sysctls + 20))
  {
    v1 = 1;
  }

  else if (*(sysctls + 280))
  {
    v1 = 2;
  }

  else if (*(*(*a1 + 240) + 2096))
  {
    v1 = 4;
  }

  else
  {
    v1 = 3;
  }

  tcp_set_new_cc(a1, v1);
}

uint64_t tcp_usr_preconnect(_DWORD *a1)
{
  result = tcp_output(*(*a1 + 240));
  v3 = a1[92];
  if ((v3 & 0x30) != 0)
  {
    a1[92] = v3 & 0xFFFFFFCF;
  }

  return result;
}

uint64_t tcp_usr_rcvoob()
{
  v6 = *MEMORY[0x1E69E9840];
  __nwlog_obj();
  *buf = 136446210;
  v5 = "tcp_usr_rcvoob";
  v0 = _os_log_send_and_compose_impl();
  if (__nwlog_fault())
  {
    v1 = __nwlog_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v5 = "tcp_usr_rcvoob";
      _os_log_impl(&dword_1889BA000, v1, OS_LOG_TYPE_ERROR, "%{public}s currently not supported, backtrace limit exceeded", buf, 0xCu);
    }
  }

  if (v0)
  {
    free(v0);
  }

  v2 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t tcp_usr_listen(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (!*a1 || *(v1 + 232) == 3)
  {
    goto LABEL_3;
  }

  v5 = *(v1 + 240);
  v6 = nw_tcp_access_globals(*(v1 + 224));
  v10 = 0;
  v11 = 0;
  microuptime(&v10);
  v7 = v11 / 1000 + 1000 * v10;
  if (*(v6 + 308) < v7)
  {
    *v6 = v10;
    *(v6 + 308) = v7;
  }

  v8 = a1;
  if (!*(v1 + 2370))
  {
    if (*(v1 + 492))
    {
LABEL_3:
      result = 22;
      goto LABEL_4;
    }

    v10 = 0;
    v11 = 0;
    result = (*(*(v1 + 2280) + 8))(*(v1 + 224), 0, 16, &v10, 16);
    if (result)
    {
      goto LABEL_4;
    }

    v8 = a1;
    if (HIDWORD(v10))
    {
      *(v1 + 492) = HIDWORD(v10);
    }

    *(v1 + 2370) = WORD1(v10);
  }

  *(v5 + 12) = 1;
  result = v8[3];
  if (result)
  {
    result = nw_protocol_tcp_get_all_stats();
    if (result)
    {
      v9 = result;
      result = 0;
      *(v9 + 136) = 1;
    }
  }

LABEL_4:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tcp_usr_abort(uint64_t *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (!*a1 || *(v1 + 232) == 3)
  {
    result = 22;
LABEL_10:
    v9 = *MEMORY[0x1E69E9840];
    return result;
  }

  v4 = *(v1 + 240);
  v5 = nw_tcp_access_globals(*(v1 + 224));
  v12 = 0uLL;
  microuptime(&v12);
  v6 = SDWORD2(v12) / 1000 + 1000 * v12;
  if (*(v5 + 308) < v6)
  {
    *v5 = v12;
    *(v5 + 308) = v6;
  }

  if (!v4)
  {
    result = 0;
    goto LABEL_10;
  }

  tcp_drop(v4, 53);
  v7 = a1;
  v8 = *(a1 + 90);
  if (v8 > 0)
  {
LABEL_8:
    result = 0;
    *(v7 + 90) = v8 - 1;
    goto LABEL_10;
  }

  v10 = __nwlog_obj();
  os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  LODWORD(v12) = 136446210;
  *(&v12 + 4) = "tcp_usr_abort";
  v11 = _os_log_send_and_compose_impl();
  result = __nwlog_should_abort();
  if (!result)
  {
    free(v11);
    v7 = a1;
    v8 = *(a1 + 90);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t tcp6_usr_listen(void *a1)
{
  v1 = *a1;
  if (!*a1 || *(v1 + 232) == 3)
  {
    return 22;
  }

  v4 = *(v1 + 240);
  v5 = nw_tcp_access_globals(*(v1 + 224));
  v10 = 0;
  v11.i64[0] = 0;
  microuptime(&v10);
  v6 = v11.i32[0] / 1000 + 1000 * v10;
  if (*(v5 + 308) < v6)
  {
    *v5 = v10;
    *(v5 + 308) = v6;
  }

  v7 = a1;
  if (*(v1 + 2370))
  {
    goto LABEL_8;
  }

  v9 = *(v1 + 2380);
  *(v1 + 2380) = v9 & 0xFE;
  if ((*(v1 + 2373) & 0x80) == 0)
  {
    *(v1 + 2380) = v9 | 1;
  }

  if (*(v1 + 480) || *(v1 + 484) || *(v1 + 488) || *(v1 + 492))
  {
    return 22;
  }

  v12 = 0;
  v11 = 0uLL;
  v10 = 0;
  result = (*(*(v1 + 2280) + 8))(*(v1 + 224), 0, 28, &v10, 28);
  if (!result)
  {
    if (vmaxv_u16(vmovn_s32(vtstq_s32(v11, v11))))
    {
      *(v1 + 480) = v11;
    }

    *(v1 + 2370) = WORD1(v10);
    v7 = a1;
LABEL_8:
    *(v4 + 12) = 1;
    result = v7[3];
    if (result)
    {
      result = nw_protocol_tcp_get_all_stats();
      if (result)
      {
        v8 = result;
        result = 0;
        *(v8 + 136) = 1;
      }
    }
  }

  return result;
}

uint64_t tcp_connect_complete(uint64_t a1)
{
  v2 = *(*a1 + 240);
  (*(*(*(v2 + 80) + 2280) + 64))(*(a1 + 24));
  if ((*(a1 + 368) & 0x20) != 0)
  {
    tcp_mss(v2, 0xFFFFFFFF, 0);
    v4 = *(v2 + 200);
    *(v2 + 144) = v4;
    *(v2 + 260) = v4;
    return 0;
  }

  else
  {

    return tcp_output(v2);
  }
}

void inp_flush()
{
  v5 = *MEMORY[0x1E69E9840];
  __nwlog_obj();
  *buf = 136446210;
  v4 = "inp_flush";
  v0 = _os_log_send_and_compose_impl();
  if (__nwlog_fault())
  {
    v1 = __nwlog_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v4 = "inp_flush";
      _os_log_impl(&dword_1889BA000, v1, OS_LOG_TYPE_ERROR, "%{public}s currently unsupported, backtrace limit exceeded", buf, 0xCu);
    }
  }

  if (v0)
  {
    free(v0);
  }

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t tcp_setpersist(uint64_t a1)
{
  v2 = (*(a1 + 212) + (*(a1 + 204) >> 2)) >> 1;
  if (*(a1 + 324) && !*(a1 + 36) && !*(a1 + 328))
  {
    *(a1 + 328) = *(a1 + 324) + *(nw_tcp_access_globals(*(*(a1 + 80) + 224)) + 308);
  }

  v3 = tcp_backoff[*(a1 + 234)] * v2;
  *(a1 + 36) = v3;
  if (v3 >> 3 >= 0x271)
  {
    if (v3 < 0xEA61)
    {
      goto LABEL_10;
    }

    v3 = 60000;
  }

  else
  {
    v3 = 5000;
  }

  *(a1 + 36) = v3;
LABEL_10:
  result = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  *(a1 + 36) = *(result + 308) + v3 - *(a1 + 64);
  v5 = *(a1 + 234);
  if (v5 <= 0xB)
  {
    *(a1 + 234) = v5 + 1;
  }

  return result;
}

uint64_t __tcp_ip_output_send_block_invoke(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(a2 + 52);
    if (v4)
    {
      v5 = v4 - (*(a2 + 56) + *(a2 + 60));
      if (!*(a1 + 32))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 = 0;
      if (!*(a1 + 32))
      {
        goto LABEL_14;
      }
    }

    v6 = *(a2 + 112);
    v7 = MEMORY[0x1E6977EF8];
    if (v6 && ((*(a2 + 204) & 0x100) == 0 || !*MEMORY[0x1E6977EF8] || (*MEMORY[0x1E6977EF8])(a2, *(a2 + 88)) && (v6 = *(a2 + 112)) != 0))
    {
      v8 = (v6 + *(a2 + 56));
      v9 = *(a1 + 40);
      if (!v9 || (*(v9 + 776) & 2) == 0)
      {
        if (__nwlog_is_datapath_logging_enabled())
        {
          v13 = __nwlog_tcp_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            if (v9)
            {
              v14 = (v9 + 556);
            }

            else
            {
              v14 = &unk_188A285CF;
            }

            v15 = bswap32(*v8) >> 16;
            v16 = bswap32(v8[1]) >> 16;
            v17 = *(v8 + 13);
            v18 = bswap32(*(v8 + 1));
            v19 = bswap32(*(v8 + 2));
            v20 = bswap32(v8[7]) >> 16;
            v21 = *(a1 + 32);
            v22 = v21[3];
            v25 = v21[30];
            v26 = v21[23];
            v27 = v17;
            v23 = packet_service_class_to_str(*(a2 + 176));
            *buf = 136449282;
            v29 = "tcp_ip_output_send_block_invoke";
            v30 = 2082;
            v31 = v14;
            v32 = 1024;
            v33 = v15;
            v34 = 1024;
            v35 = v16;
            v36 = 1024;
            v37 = v5;
            v38 = 1024;
            v39 = v27;
            v40 = 1024;
            v41 = v18;
            v42 = 1024;
            v43 = v19;
            v44 = 1024;
            v45 = v20;
            v46 = 1024;
            v47 = v22;
            v48 = 1024;
            v49 = v25;
            v50 = 1024;
            v51 = v26;
            v52 = 2082;
            v53 = v23;
            _os_log_impl(&dword_1889BA000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %{public}s sending frame, %u:%u tlen %u flags=%{network:tcp_flags}x seq=%u, ack=%u, win=%u state=%{network:tcp_state}x rcv_nxt=%u, snd_una=%u svc %{public}s", buf, 0x5Cu);
          }
        }
      }
    }

    else if ((*(a2 + 204) & 0x100) != 0 && *v7 && ((*v7)(a2, *(a2 + 88)) & 1) == 0)
    {
      *(*(a1 + 32) + 1064) = 0;
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v29 = "__nw_frame_unclaimed_length";
    v12 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v24 = __nwlog_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v29 = "__nw_frame_unclaimed_length";
        _os_log_impl(&dword_1889BA000, v24, OS_LOG_TYPE_ERROR, "%{public}s called with null frame, backtrace limit exceeded", buf, 0xCu);
      }
    }

    if (v12)
    {
      free(v12);
    }
  }

LABEL_14:
  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __tcp_ip_output_send_block_invoke_7(uint64_t a1, uint64_t a2)
{
  ++*(*(*(a1 + 32) + 8) + 24);
  if (a2 && *(a1 + 40))
  {
    v2 = *(a2 + 112);
    v3 = MEMORY[0x1E6977EF8];
    if (v2 && ((*(a2 + 204) & 0x100) == 0 || !*MEMORY[0x1E6977EF8] || (v4 = a1, v5 = a2, v6 = (*MEMORY[0x1E6977EF8])(a2, *(a2 + 88)), a2 = v5, v7 = v6, a1 = v4, v7) && (v2 = *(v5 + 112)) != 0))
    {
      v8 = v2 + *(a2 + 56);
      if (*MEMORY[0x1E6977EF0] != -1)
      {
        v15 = a1;
        dispatch_once(MEMORY[0x1E6977EF0], &__block_literal_global_488);
        a1 = v15;
      }

      if (*MEMORY[0x1E6977EE8] == 1)
      {
        v9 = a1;
        if (kdebug_is_enabled())
        {
          v10 = *(*(v9 + 48) + 640);
          v11 = bswap32(*(v8 + 14)) >> 16 << *(*(v9 + 40) + 269);
          kdebug_trace();
        }
      }
    }

    else if ((*(a2 + 204) & 0x100) != 0)
    {
      v12 = *v3;
      if (*v3)
      {
        v13 = a1;
        if ((v12(a2, *(a2 + 88)) & 1) == 0)
        {
          *(*(v13 + 40) + 1064) = 0;
        }
      }
    }
  }

  return 1;
}

uint64_t ____nw_signpost_is_enabled_block_invoke_495()
{
  v0 = *MEMORY[0x1E6977F48];
  result = networkd_settings_get_BOOL();
  *MEMORY[0x1E6977EE8] = result;
  return result;
}

uint64_t tcp_cc_adjust_nonvalidated_cwnd(uint64_t result)
{
  v1 = *(result + 972);
  if (v1 <= *(result + 976))
  {
    v1 = *(result + 976);
  }

  if (*(result + 980) > v1)
  {
    v1 = *(result + 980);
  }

  *(result + 988) = v1;
  *(result + 972) = 0;
  *(result + 980) = 0;
  *(result + 759) = 0;
  *(result + 992) = 0;
  v2 = v1 >> 1;
  v3 = *(result + 200);
  if (v2 <= v3)
  {
    v2 = *(result + 200);
  }

  *(result + 148) = 3 * v3 + v2;
  *(result + 748) &= ~0x100000u;
  return result;
}

uint64_t ____nw_frame_array_finalize_block_invoke_586(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = *(a2 + 80);
    if (v2)
    {
      v3 = *(a1 + 32);
      v4 = *(a2 + 88);
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      v2(a2, v3, v4);
      goto LABEL_4;
    }

    __nwlog_obj();
    *buf = 136446210;
    v11 = "__nw_frame_finalize";
    v7 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v11 = "__nw_frame_finalize";
        v9 = "%{public}s called with null frame->finalizer, backtrace limit exceeded";
        goto LABEL_13;
      }
    }
  }

  else
  {
    __nwlog_obj();
    *buf = 136446210;
    v11 = "__nw_frame_finalize";
    v7 = _os_log_send_and_compose_impl();
    if (__nwlog_fault())
    {
      v8 = __nwlog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v11 = "__nw_frame_finalize";
        v9 = "%{public}s called with null frame, backtrace limit exceeded";
LABEL_13:
        _os_log_impl(&dword_1889BA000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0xCu);
      }
    }
  }

  if (v7)
  {
    free(v7);
  }

LABEL_4:
  v5 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t sbreserve(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x71C71C)
  {
    return 0;
  }

  *(a1 + 4) = a2;
  v3 = *(*(a1 + 48) + 24);
  if ((*(a1 + 32) & 4) != 0)
  {
    if (v3)
    {
      v7 = a1;
      v8 = *(*(a1 + 48) + 24);
      all_stats = nw_protocol_tcp_get_all_stats();
      a1 = v7;
      a2 = *(v7 + 4);
      if (all_stats)
      {
        *(all_stats + 88) = a2;
      }
    }
  }

  else if (v3)
  {
    v4 = a1;
    v5 = *(*(a1 + 48) + 24);
    v6 = nw_protocol_tcp_get_all_stats();
    a1 = v4;
    a2 = *(v4 + 4);
    if (v6)
    {
      *(v6 + 100) = a2;
    }
  }

  if (*(a1 + 8) > a2)
  {
    *(a1 + 8) = a2;
  }

  return 1;
}

uint64_t tcp_setsockopt(uint64_t a1, int a2, int a3, int *a4)
{
  v26[0] = 1;
  v26[1] = a2;
  v28 = a4;
  v27 = a3;
  v29 = 4;
  v9 = *a4;
  (*(*(a1 + 8) + 16))(a1, 1, v4, a4);
  if ((~*(a1 + 376) & 0x30) == 0 && (*(a1 + 365) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  if (a2 != 0xFFFF)
  {
    v10 = tcp_ctloutput(a1, v26);
    goto LABEL_22;
  }

  v10 = 42;
  if (a3 > 2047)
  {
    if (a3 >= 0x2000)
    {
      if (a3 >= 0x8000)
      {
        if (a3 != 0x8000 && a3 != 0x10000)
        {
          goto LABEL_22;
        }
      }

      else if (a3 != 0x2000 && a3 != 0x4000)
      {
        goto LABEL_22;
      }

      goto LABEL_9;
    }

    if ((a3 - 4097) >= 4)
    {
      if (a3 != 2048)
      {
        goto LABEL_22;
      }

LABEL_9:
      v10 = 0;
      if (v9)
      {
        v11 = *(a1 + 372) | a3;
      }

      else
      {
        v11 = *(a1 + 372) & ~a3;
      }

      *(a1 + 372) = v11;
      goto LABEL_22;
    }

    if (v9 < 1)
    {
LABEL_3:
      v10 = 22;
      goto LABEL_22;
    }

    if ((a3 - 4097) >= 2)
    {
      if (a3 == 4099)
      {
        v10 = 0;
        v14 = *(a1 + 388) / 3u;
        if (v9 <= *(a1 + 388) / 3)
        {
          v14 = v9;
        }

        if (v14 <= 1)
        {
          v14 = 1;
        }

        *(a1 + 392) = v14;
      }

      else
      {
        v10 = 0;
        v22 = *(a1 + 468) / 3u;
        if (v9 <= *(a1 + 468) / 3)
        {
          v22 = v9;
        }

        if (v22 >= 0x4000)
        {
          v23 = 0x4000;
        }

        else
        {
          v23 = v22;
        }

        if (v22)
        {
          v24 = v23;
        }

        else
        {
          v24 = 1;
        }

        *(a1 + 472) = v24;
      }
    }

    else
    {
      v12 = 464;
      if (a3 == 4097)
      {
        v12 = 384;
      }

      if (v9 <= 0x71C71C)
      {
        v18 = (a1 + v12);
        *(a1 + v12 + 4) = v9;
        v19 = *(*(a1 + v12 + 48) + 24);
        if ((*(a1 + v12 + 32) & 4) != 0)
        {
          v20 = v9;
          if (v19)
          {
            all_stats = nw_protocol_tcp_get_all_stats();
            v20 = v18[1];
            if (all_stats)
            {
              *(all_stats + 88) = v20;
            }
          }
        }

        else
        {
          v20 = v9;
          if (v19)
          {
            v21 = nw_protocol_tcp_get_all_stats();
            v20 = v18[1];
            if (v21)
            {
              *(v21 + 100) = v20;
            }
          }
        }

        if (v18[2] > v20)
        {
          v18[2] = v20;
        }

        v10 = 0;
        v18[8] = v18[8] & 0xFFFFF9FF | 0x200;
        v18[9] = v9;
      }

      else
      {
        v10 = 55;
      }
    }
  }

  else
  {
    if (a3 <= 127)
    {
      if ((a3 - 1) > 0x3F || ((1 << (a3 - 1)) & 0x8000000080008089) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_9;
    }

    if (a3 != 128)
    {
      if (a3 != 512 && a3 != 1024)
      {
        goto LABEL_22;
      }

      goto LABEL_9;
    }

    v15 = *a4;
    *(a1 + 16) = a4[1];
    v16 = *(a1 + 372);
    v10 = 0;
    if (v15)
    {
      v17 = v16 | 0x80;
    }

    else
    {
      v17 = v16 & 0xFFFFFF7F;
    }

    *(a1 + 372) = v17;
  }

LABEL_22:
  (*(*(a1 + 8) + 24))(a1, 1, v4);
  return v10;
}

uint64_t tcp_set_keepalive(uint64_t a1, int a2)
{
  (*(*(a1 + 8) + 16))();
  v4 = a1;
  if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
  {
    v5 = 0;
    *(v4 + 372) = *(v4 + 372) & 0xFFFFFFF7 | (8 * (a2 != 0));
  }

  else
  {
    v5 = 22;
  }

  (*(*(v4 + 8) + 24))();
  return v5;
}

uint64_t tcp_set_keepalive_idle_time(uint64_t a1, int a2)
{
  v6 = a2;
  v7[0] = 0x600000001;
  v7[2] = &v6;
  v7[3] = 4;
  (*(*(a1 + 8) + 16))();
  if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
  {
    v7[1] = 16;
    v4 = tcp_ctloutput(a1, v7);
  }

  else
  {
    v4 = 22;
  }

  (*(*(a1 + 8) + 24))(a1, 1, v2);
  return v4;
}

uint64_t tcp_set_keepalive_interval(uint64_t a1, int a2)
{
  v6 = a2;
  v7[0] = 0x600000001;
  v7[2] = &v6;
  v7[3] = 4;
  (*(*(a1 + 8) + 16))();
  if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
  {
    v7[1] = 257;
    v4 = tcp_ctloutput(a1, v7);
  }

  else
  {
    v4 = 22;
  }

  (*(*(a1 + 8) + 24))(a1, 1, v2);
  return v4;
}

uint64_t tcp_set_background_management(uint64_t a1)
{
  v5 = 1;
  v6[0] = 0xFFFF00000001;
  v6[2] = &v5;
  v6[3] = 4;
  (*(*(a1 + 8) + 16))();
  if ((~*(a1 + 376) & 0x30) != 0 || (*(a1 + 365) & 0x20) != 0)
  {
    v6[1] = 4357;
    v3 = tcp_ctloutput(a1, v6);
  }

  else
  {
    v3 = 22;
  }

  (*(*(a1 + 8) + 24))(a1, 1, v1);
  return v3;
}

uint64_t tcp_rack_update_reordering_window(uint64_t result, int a2)
{
  v2 = *(result + 2077);
  if (a2 - *(result + 2068) <= 0)
  {
    v2 &= ~0x40u;
    *(result + 2077) = v2;
    if ((v2 & 0x40) == 0)
    {
LABEL_3:
      if ((v2 & 0x1F) == 0)
      {
        *(result + 2076) = 1;
      }

      return result;
    }
  }

  else if ((*(result + 2077) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2068) = *(result + 100);
  v3 = *(result + 2076);
  if ((v3 + 1) < 0xFF)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = -1;
  }

  *(result + 2076) = v4;
  *(result + 2077) = v2 & 0xA0 | 0x10;
  return result;
}

uint64_t tcp_rack_detect_loss_and_arm_timer(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  v7 = 0;
  if ((*(a1 + 2077) & 0x20) != 0)
  {
    *(a1 + 24) = 0;
    v4 = tcp_rack_detect_loss(a1, a2, &v7);
    if (v4)
    {
      v5 = v4 + *(nw_tcp_access_globals(*(*(a1 + 80) + 224)) + 308) - *(a1 + 64) + 2;
      *(a1 + 16) = 0;
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 24) = v5;
    v2 = v7;
  }

  return v2 & 1;
}

uint64_t tcp_rack_detect_loss(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  v6 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  if (*(a1 + 1024) || (*(a1 + 90) & 0x20) == 0 && *(a1 + 322) > a2)
  {
    v7 = *(*(a1 + 80) + 496);
    if (v7)
    {
      v7 = *(v7 + 1632);
      if (v7)
      {
        LODWORD(v7) = *(v7 + 40);
      }
    }

    v8 = (*(a1 + 204) >> 4) & 0xFFFFFFE;
    if ((v7 * *(a1 + 2076)) >> 2 < v8)
    {
      v8 = (v7 * *(a1 + 2076)) >> 2;
    }

    if (v8 <= 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = *(a1 + 1992);
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    v9 = 0;
    v10 = *(a1 + 1992);
    if (!v10)
    {
      return 0;
    }
  }

  v11 = *(v6 + 308);
  v12 = 0;
  if (a3)
  {
    do
    {
      v20 = *(a1 + 2056);
      v21 = *(v10 + 8);
      if (v20 <= v21 && (v20 != v21 || *(a1 + 2060) - *(v10 + 4) < 1))
      {
        break;
      }

      if ((*(v10 + 12) & 6) != 2 && (*(v10 + 12) & 1) == 0)
      {
        v24 = v21 + v9 + *(a1 + 2064);
        if (v11 - v24 < 0)
        {
          v19 = v24 - v11;
          if (v24 - v11 <= v12)
          {
            v19 = v12;
          }

          if (v24 == v11)
          {
            v12 = v12;
          }

          else
          {
            v12 = v19;
          }
        }

        else
        {
          tcp_mark_seg_lost(a1, v10);
          *a3 = 1;
        }
      }

      v10 = *(v10 + 16);
    }

    while (v10);
  }

  else
  {
    do
    {
      v13 = *(a1 + 2056);
      v14 = *(v10 + 8);
      if (v13 <= v14 && (v13 != v14 || *(a1 + 2060) - *(v10 + 4) < 1))
      {
        break;
      }

      if ((*(v10 + 12) & 6) != 2 && (*(v10 + 12) & 1) == 0)
      {
        v17 = v14 + v9 + *(a1 + 2064);
        if (v11 - v17 >= 0)
        {
          tcp_mark_seg_lost(a1, v10);
        }

        else
        {
          v18 = v17 - v11;
          if (v17 - v11 <= v12)
          {
            v18 = v12;
          }

          if (v17 == v11)
          {
            v12 = v12;
          }

          else
          {
            v12 = v18;
          }
        }
      }

      v10 = *(v10 + 16);
    }

    while (v10);
  }

  return v12;
}

uint64_t tcp_rack_reordering_timeout(uint64_t a1)
{
  v7 = 0;
  result = tcp_rack_detect_loss(a1, 0, &v7);
  if (v7 == 1)
  {
    v3 = *(a1 + 88);
    if ((v3 & 0x200000) == 0)
    {
      if ((~v3 & 0x180) != 0)
      {
        *(a1 + 496) = *(a1 + 148);
        *(a1 + 504) = *(a1 + 156);
        *(a1 + 88) = v3 & 0xFF9FFFFF;
      }

      else
      {
        v4 = *(a1 + 96) - *(a1 + 92);
        v5 = *(a1 + 156);
        if (v4 <= *(a1 + 152))
        {
          v4 = *(a1 + 152);
        }

        *(a1 + 500) = v4;
        *(a1 + 504) = v5;
      }

      *(a1 + 508) = (*(a1 + 204) >> 5) + 2;
      *(a1 + 516) = *(a1 + 212) >> 4;
      if ((*(a1 + 1880) & 0xFFFFFFFE) == 2)
      {
        *(a1 + 512) = (*(a1 + 208) >> 5) + 2;
        *(a1 + 520) = *(a1 + 216) >> 4;
      }

      *(a1 + 748) &= ~0x40u;
      tcp_enter_fast_recovery(a1);
    }

    v6 = *(a1 + 1064);
    if (v6)
    {
      ++*(v6 + 632);
    }

    ++*(a1 + 1020);
    return tcp_output(a1);
  }

  return result;
}

void tcp_rack_loss_on_rto(uint64_t a1)
{
  v2 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  if (!*(a1 + 1024))
  {
    v5 = 0;
    v6 = *(a1 + 1992);
    if (!v6)
    {
      return;
    }

    goto LABEL_13;
  }

  v3 = *(*(a1 + 80) + 496);
  if (v3)
  {
    v3 = *(v3 + 1632);
    if (v3)
    {
      LODWORD(v3) = *(v3 + 40);
    }
  }

  v4 = (*(a1 + 204) >> 4) & 0xFFFFFFE;
  if ((v3 * *(a1 + 2076)) >> 2 < v4)
  {
    v4 = (v3 * *(a1 + 2076)) >> 2;
  }

  if (v4 <= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = *(a1 + 1992);
  if (v6)
  {
LABEL_13:
    v7 = *(v2 + 308);
    do
    {
      if (*v6 == *(a1 + 92))
      {
        tcp_mark_seg_lost(a1, v6);
      }

      if (v7 - *(a1 + 2064) - (v5 + *(v6 + 8)) >= 0)
      {
        tcp_mark_seg_lost(a1, v6);
      }

      v6 = *(v6 + 16);
    }

    while (v6);
  }
}

const char *packet_service_class_to_str(int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 <= 2621727)
  {
    if (a1 <= 1048703)
    {
      if (!a1)
      {
        result = "be";
        goto LABEL_29;
      }

      if (a1 == 524432)
      {
        result = "bk_sys";
        goto LABEL_29;
      }
    }

    else
    {
      switch(a1)
      {
        case 1048704:
          result = "bk";
          goto LABEL_29;
        case 1572880:
          result = "rd";
          goto LABEL_29;
        case 2097184:
          result = "oam";
          goto LABEL_29;
      }
    }
  }

  else if (a1 > 3670319)
  {
    switch(a1)
    {
      case 3670320:
        result = "sig";
        goto LABEL_29;
      case 4194688:
        result = "vo";
        goto LABEL_29;
      case 4718992:
        result = "ctl";
        goto LABEL_29;
    }
  }

  else
  {
    switch(a1)
    {
      case 2621728:
        result = "av";
        goto LABEL_29;
      case 3146000:
        result = "rv";
        goto LABEL_29;
      case 3670272:
        result = "vi";
        goto LABEL_29;
    }
  }

  v3 = __nwlog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136446466;
    v6 = "packet_service_class_to_str";
    v7 = 1024;
    v8 = a1;
    _os_log_impl(&dword_1889BA000, v3, OS_LOG_TYPE_ERROR, "%{public}s invalid packet service class %d", &v5, 0x12u);
  }

  result = "unknown";
LABEL_29:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void tcp_remove_timer(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = nw_tcp_access_globals(*(*(a1 + 80) + 224));
  v3 = *(*(a1 + 80) + 224);
  (*(*(v3 + 8) + 32))(v3, 0);
  if ((*(a1 + 91) & 0x40) != 0)
  {
    v4 = *(v2 + 256);
    v5 = (a1 + 48);
    if (v4)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      *(v2 + 256) = *v5;
    }

    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    if (v7)
    {
      *(v7 + 8) = v8;
    }

    *v8 = v7;
    v9 = *(v3 + 360);
    if (v9 <= 0)
    {
      if ((*(v3 + 776) & 2) == 0)
      {
        __nwlog_tcp_log();
        v12 = *(v3 + 360);
        *buf = 136446722;
        v19 = "tcp_remove_timer";
        v20 = 2082;
        v21 = v3 + 556;
        v22 = 1024;
        v23 = v12;
        v13 = _os_log_send_and_compose_impl();
        if (__nwlog_fault())
        {
          v16 = __nwlog_tcp_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = *(v3 + 360);
            *buf = 136446722;
            v19 = "tcp_remove_timer";
            v20 = 2082;
            v21 = v3 + 556;
            v22 = 1024;
            v23 = v17;
            _os_log_impl(&dword_1889BA000, v16, OS_LOG_TYPE_ERROR, "%{public}s %{public}s inp_so->so_usecount(== %d) underflow  when removing timer entry, backtrace limit exceeded", buf, 0x1Cu);
          }
        }

        if (v13)
        {
          free(v13);
        }
      }
    }

    else
    {
      v10 = v9 - 1;
      *(v3 + 360) = v10;
      if (!v10 && (*(v3 + 776) & 2) == 0)
      {
        v14 = __nwlog_tcp_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = *(*(a1 + 80) + 456);
          *buf = 136446722;
          v19 = "tcp_remove_timer";
          v20 = 2082;
          v21 = v3 + 556;
          v22 = 1024;
          v23 = v15;
          _os_log_impl(&dword_1889BA000, v14, OS_LOG_TYPE_INFO, "%{public}s %{public}s retiring defunct socket from the TCP timer list (wantcnt=%d)", buf, 0x1Cu);
        }
      }
    }

    *(a1 + 88) &= ~0x40000000u;
    --*(v2 + 272);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
}

void tcp_pmtud_revert_segment_size(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 690);
  if (*(a1 + 690))
  {
LABEL_2:
    *(a1 + 88) = *(a1 + 88) & 0xDBFFFFFF | 0x4000000;
    v3 = *(a1 + 200) - *(a1 + 160);
    *(a1 + 160) = v2;
    *(a1 + 200) = v3 + v2;
    v4 = *(tcp_cc_algo_list[*(a1 + 272)] + 40);
    if (v4)
    {
      v4(a1);
    }

    if (*(sysctls + 284) == 1 && (~*(a1 + 88) & 0x180) == 0 && (*(sysctls + 40) == 1 || (*(*(*(a1 + 80) + 224) + 369) & 0x40) != 0) && off_1ED4BF6E8)
    {
      off_1ED4BF6E8(a1);
    }

    *(a1 + 692) = 0;
    v5 = *(a1 + 1064);
    if (v5)
    {
      ++*(v5 + 1056);
    }

    v6 = **(*(a1 + 80) + 224);
    v7 = *(v6 + 448);
    if (!v7)
    {
      goto LABEL_35;
    }

    v8 = *(v6 + 240);
    if (*(v7 + 1224) != 255 && *(v7 + 1168) != 255)
    {
      goto LABEL_35;
    }

    if (*(v8 + 12) > 5 || (*(v8 + 91) & 0x20) != 0 || (*(v7 + 9) & 0x80) == 0)
    {
      goto LABEL_35;
    }

    v9 = *(v8 + 160);
    v10 = *(v8 + 200) - v9;
    v11 = *(v7 + 72);
    if (v11 == 1200)
    {
      if (v9 <= 0x4B0)
      {
        goto LABEL_33;
      }

      v12 = 1200;
    }

    else
    {
      if (v11 != 512)
      {
        if (v11)
        {
          goto LABEL_33;
        }

        v12 = *(v8 + 740);
        if (!*(v8 + 740) || v9 >= v12)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      if (v9 < 0x201)
      {
        goto LABEL_33;
      }

      v12 = 512;
    }

    *(v8 + 740) = v9;
LABEL_32:
    *(v8 + 160) = v12;
    v9 = v12;
LABEL_33:
    *(v8 + 200) = v10 + v9;
    if (v9 == *(v8 + 740))
    {
      *(v8 + 740) = 0;
    }

LABEL_35:
    v14 = *MEMORY[0x1E69E9840];
    return;
  }

  v15 = __nwlog_obj();
  os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  v16 = _os_log_send_and_compose_impl();
  if (!__nwlog_should_abort())
  {
    free(v16);
    v2 = *(a1 + 690);
    goto LABEL_2;
  }

  __break(1u);
}

uint64_t tcp_itimer(uint64_t result, uint64_t a2)
{
  *(result + 316) |= 0x10u;
  v4 = *(result + 104);
  if (v4)
  {
    while (1)
    {
      v5 = v4;
      v4 = *v4;
      if (*(v5 + 240))
      {
        break;
      }

LABEL_4:
      if (!v4)
      {
        goto LABEL_34;
      }
    }

    do
    {
      v6 = *(v5 + 456);
      if (v6 == 0xFFFF)
      {
        goto LABEL_4;
      }

      v7 = *(v5 + 456);
      atomic_compare_exchange_strong_explicit((v5 + 456), &v7, v6 + 1, memory_order_relaxed, memory_order_relaxed);
    }

    while (v7 != v6);
    v8 = *(v5 + 224);
    (*(v8[1] + 16))(v8, 1, v2);
    if (in_pcb_checkstate(v5, 2, 1) == 0xFFFF || (*(a2 + 68) & 1) == 0 || (v9 = *(*v8 + 448)) == 0 || (v10 = *(*v8 + 240), *(v9 + 1224) != 255) && *(v9 + 1168) != 255 || *(v10 + 12) > 5 || (*(v10 + 91) & 0x20) != 0 || (*(v9 + 9) & 0x80) == 0)
    {
LABEL_3:
      result = (*(v8[1] + 24))(v8, 1, v2);
      goto LABEL_4;
    }

    v11 = *(v10 + 160);
    v12 = *(v9 + 72);
    switch(v12)
    {
      case 1200:
        if (v11 <= 0x4B0)
        {
          goto LABEL_31;
        }

        v13 = 1200;
        break;
      case 512:
        if (v11 < 0x201)
        {
          goto LABEL_31;
        }

        v13 = 512;
        break;
      case 0:
        v13 = *(v10 + 740);
        if (*(v10 + 740))
        {
          v14 = v11 >= v13;
        }

        else
        {
          v14 = 1;
        }

        v15 = *(v10 + 160);
        if (v14)
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      default:
LABEL_31:
        v15 = *(v10 + 160);
LABEL_32:
        *(v10 + 200) = *(v10 + 200) - v11 + v15;
        if (v15 == *(v10 + 740))
        {
          *(v10 + 740) = 0;
        }

        goto LABEL_3;
    }

    *(v10 + 740) = v11;
LABEL_30:
    *(v10 + 160) = v13;
    v15 = v13;
    goto LABEL_32;
  }

LABEL_34:
  *(a2 + 68) &= ~1u;
  return result;
}

uint64_t tcp_heuristic_tfo_middlebox(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  v3 = *(v2 + 224);
  if (tcp_perf_measurement == 1)
  {
    if (!v3 || (*(v3 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v4 = __nwlog_tcp_log();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v5 = &unk_188A285CF;
          if (v3)
          {
            v5 = (v3 + 556);
          }

          *v12 = 136446466;
          *&v12[4] = "tcp_heuristic_tfo_middlebox";
          *&v12[12] = 2082;
          *&v12[14] = v5;
          v6 = v4;
          v7 = OS_LOG_TYPE_DEBUG;
LABEL_15:
          _os_log_impl(&dword_1889BA000, v6, v7, "%{public}s %{public}s ", v12, 0x16u);
        }
      }
    }
  }

  else if (!v3 || (*(v3 + 776) & 2) == 0)
  {
    v8 = __nwlog_tcp_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = &unk_188A285CF;
      if (v3)
      {
        v9 = (v3 + 556);
      }

      *v12 = 136446466;
      *&v12[4] = "tcp_heuristic_tfo_middlebox";
      *&v12[12] = 2082;
      *&v12[14] = v9;
      v6 = v8;
      v7 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }
  }

  *(a1 + 996) |= 0x40u;
  *v12 = 0;
  *&v12[8] = 0;
  *&v12[16] = 1024;
  result = (*(*(v2 + 2280) + 56))(*(*(a1 + 80) + 224), v12);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tcp_heuristic_tfo_rst(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  v3 = *(v2 + 224);
  if (tcp_perf_measurement == 1)
  {
    if (!v3 || (*(v3 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v4 = __nwlog_tcp_log();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v5 = &unk_188A285CF;
          if (v3)
          {
            v5 = (v3 + 556);
          }

          *v14 = 136446466;
          *&v14[4] = "tcp_heuristic_tfo_rst";
          *&v14[12] = 2082;
          *&v14[14] = v5;
          v6 = v4;
          v7 = OS_LOG_TYPE_DEBUG;
LABEL_15:
          _os_log_impl(&dword_1889BA000, v6, v7, "%{public}s %{public}s ", v14, 0x16u);
        }
      }
    }
  }

  else if (!v3 || (*(v3 + 776) & 2) == 0)
  {
    v8 = __nwlog_tcp_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = &unk_188A285CF;
      if (v3)
      {
        v9 = (v3 + 556);
      }

      *v14 = 136446466;
      *&v14[4] = "tcp_heuristic_tfo_rst";
      *&v14[12] = 2082;
      *&v14[14] = v9;
      v6 = v8;
      v7 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }
  }

  memset(v14, 0, 18);
  v10 = *(a1 + 998);
  if ((v10 & 0x40) == 0)
  {
    v11 = 64;
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v14[17] = 32;
  v11 = 96;
  if ((v10 & 0x10) != 0)
  {
LABEL_20:
    v14[17] = v11;
  }

LABEL_21:
  result = (*(*(v2 + 2280) + 56))(*(*(a1 + 80) + 224), v14);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tcp_heuristic_ecn_loss(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  v3 = *(v2 + 224);
  if (tcp_perf_measurement == 1)
  {
    if (!v3 || (*(v3 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v4 = __nwlog_tcp_log();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v5 = &unk_188A285CF;
          if (v3)
          {
            v5 = (v3 + 556);
          }

          v12 = 136446466;
          v13 = "tcp_heuristic_ecn_loss";
          v14 = 2082;
          v15 = v5;
          v6 = v4;
          v7 = OS_LOG_TYPE_DEBUG;
LABEL_15:
          _os_log_impl(&dword_1889BA000, v6, v7, "%{public}s %{public}s ", &v12, 0x16u);
        }
      }
    }
  }

  else if (!v3 || (*(v3 + 776) & 2) == 0)
  {
    v8 = __nwlog_tcp_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = &unk_188A285CF;
      if (v3)
      {
        v9 = (v3 + 556);
      }

      v12 = 136446466;
      v13 = "tcp_heuristic_ecn_loss";
      v14 = 2082;
      v15 = v9;
      v6 = v8;
      v7 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }
  }

  LOBYTE(v12) = 2;
  result = (*(*(v2 + 2280) + 24))(*(*(a1 + 80) + 224), &v12);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tcp_heuristic_ecn_droprst(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  v3 = *(v2 + 224);
  if (tcp_perf_measurement == 1)
  {
    if (!v3 || (*(v3 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v4 = __nwlog_tcp_log();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v5 = &unk_188A285CF;
          if (v3)
          {
            v5 = (v3 + 556);
          }

          v12 = 136446466;
          v13 = "tcp_heuristic_ecn_droprst";
          v14 = 2082;
          v15 = v5;
          v6 = v4;
          v7 = OS_LOG_TYPE_DEBUG;
LABEL_15:
          _os_log_impl(&dword_1889BA000, v6, v7, "%{public}s %{public}s ", &v12, 0x16u);
        }
      }
    }
  }

  else if (!v3 || (*(v3 + 776) & 2) == 0)
  {
    v8 = __nwlog_tcp_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = &unk_188A285CF;
      if (v3)
      {
        v9 = (v3 + 556);
      }

      v12 = 136446466;
      v13 = "tcp_heuristic_ecn_droprst";
      v14 = 2082;
      v15 = v9;
      v6 = v8;
      v7 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }
  }

  LOBYTE(v12) = 4;
  result = (*(*(v2 + 2280) + 24))(*(*(a1 + 80) + 224), &v12);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tcp_heuristic_ecn_synrst(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 80) + 224);
  if (tcp_perf_measurement == 1)
  {
    if (!v2 || (*(v2 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v3 = __nwlog_tcp_log();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          v4 = &unk_188A285CF;
          if (v2)
          {
            v4 = (v2 + 556);
          }

          v12 = 136446466;
          v13 = "tcp_heuristic_ecn_synrst";
          v14 = 2082;
          v15 = v4;
          v5 = v3;
          v6 = OS_LOG_TYPE_DEBUG;
LABEL_15:
          _os_log_impl(&dword_1889BA000, v5, v6, "%{public}s %{public}s ", &v12, 0x16u);
        }
      }
    }
  }

  else if (!v2 || (*(v2 + 776) & 2) == 0)
  {
    v7 = __nwlog_tcp_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = &unk_188A285CF;
      if (v2)
      {
        v8 = (v2 + 556);
      }

      v12 = 136446466;
      v13 = "tcp_heuristic_ecn_synrst";
      v14 = 2082;
      v15 = v8;
      v5 = v7;
      v6 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }
  }

  v9 = *(a1 + 80);
  LOBYTE(v12) = 32;
  result = (*(*(v9 + 2280) + 24))(*(v9 + 224), &v12);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tcp_heuristic_ecn_aggressive(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  v3 = *(v2 + 224);
  if (tcp_perf_measurement == 1)
  {
    if (!v3 || (*(v3 + 776) & 2) == 0)
    {
      if (__nwlog_is_datapath_logging_enabled())
      {
        v4 = __nwlog_tcp_log();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v5 = &unk_188A285CF;
          if (v3)
          {
            v5 = (v3 + 556);
          }

          v12 = 136446466;
          v13 = "tcp_heuristic_ecn_aggressive";
          v14 = 2082;
          v15 = v5;
          v6 = v4;
          v7 = OS_LOG_TYPE_DEBUG;
LABEL_15:
          _os_log_impl(&dword_1889BA000, v6, v7, "%{public}s %{public}s ", &v12, 0x16u);
        }
      }
    }
  }

  else if (!v3 || (*(v3 + 776) & 2) == 0)
  {
    v8 = __nwlog_tcp_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = &unk_188A285CF;
      if (v3)
      {
        v9 = (v3 + 556);
      }

      v12 = 136446466;
      v13 = "tcp_heuristic_ecn_aggressive";
      v14 = 2082;
      v15 = v9;
      v6 = v8;
      v7 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }
  }

  LOBYTE(v12) = 16;
  result = (*(*(v2 + 2280) + 24))(*(*(a1 + 80) + 224), &v12);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t tcp_cubic_switch_cc(uint64_t a1)
{
  result = tcp_cubic_cwnd_init_or_reset(a1);
  atomic_fetch_add(dword_1ED4BF7B0, 1u);
  return result;
}