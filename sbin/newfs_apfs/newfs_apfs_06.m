uint64_t sub_10004884C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  LODWORD(v7) = 0;
  v8 = 0;
  v9 = 0;
  v10 = *(a3 + 376);
  v117 = 0;
  v118 = 0;
  v11 = v10 + 12;
  v98 = a3 + 896;
  v116 = 0;
  memset(v115, 170, sizeof(v115));
  v104 = v10 + 12;
  v105 = (a1 + 4040);
  v107 = a3 + 1576;
  v99 = -1;
  v114 = 0xAAAAAAAAAAAAAAAALL;
  v12 = *(a4 + 172);
  v109 = v10;
  do
  {
    v13 = *(a4 + 112) / v10[9] / v10[10];
    v103 = v8;
    if (v11[12 * v12 + 5])
    {
      v14 = v10[11];
      v15 = v13 / v14;
      v16 = v118;
      if (v13 / v14 == v99)
      {
        LODWORD(v17) = *(a4 + 112) / v10[9] / v10[10];
        v15 = v99;
      }

      else
      {
        v19 = *(*(v98 + 8 * v12) + 8 * v15);
        if (v118)
        {
          sub_100037058(v118);
          v10 = v109;
          v118 = 0;
          LODWORD(v12) = *(a4 + 172);
        }

        v115[1] = v10;
        v115[2] = __PAIR64__(v15, v12);
        v20 = v10;
        v21 = sub_10003A1E8(*(a2 + 392), 0x40000000, v19, &xmmword_10006A940, &v115[1], 0, 0, 0, &v118);
        if (v21)
        {
          v93 = v21;
          v8 = v103;
          break;
        }

        v14 = v20[11];
        v16 = v118;
        LODWORD(v12) = *(a4 + 172);
        v99 = v15;
        v17 = *(a4 + 112) / v20[9] / v20[10];
        v10 = v20;
      }

      v18 = (*(v16 + 56) + 8 * (v13 - v14 * v15) + 40);
      LODWORD(v13) = v17;
      v8 = v103;
    }

    else
    {
      v18 = (*(v98 + 8 * v12) + 8 * v13);
    }

    v22 = *v18;
    v115[1] = v10;
    v115[2] = __PAIR64__(v13, v12);
    v106 = v22;
    v23 = v10;
    v24 = sub_10003A1E8(*(a2 + 392), 0x40000000, v22, &xmmword_10006A950, &v115[1], 0, 0, 0, &v117);
    if (v24)
    {
      v93 = v24;
      break;
    }

    v5 = *(v117 + 56);
    v25 = *(v5 + 32);
    v27 = v23[9];
    v26 = v23[10];
    v28 = v26 * v25;
    v29 = v23;
    if (v8 == v11[12 * *(a4 + 172) + 4])
    {
      v30 = *(a4 + 120) / v27 - v28 + 1;
    }

    else
    {
      v30 = *(v5 + 36);
    }

    v7 = *(a4 + 112) / v27 - v26 * v25;
    if (v30 <= v7)
    {
      v93 = 0;
      goto LABEL_276;
    }

    v110 = v5 + 40;
    v101 = *(v117 + 56);
    v7 = v7;
    v111 = v26 * v25;
    while (1)
    {
      if (v6 >= 3 && *(a4 + 189) == 1)
      {
        v31 = *(a4 + 32);
        if (v31 >= 1 && *(a4 + 48) <= (2 * v29[9]))
        {
          *(a4 + 189) = 0;
          *(a4 + 120) = *(a4 + 24);
          if (*(a4 + 184) == 1)
          {
            *(a4 + 48) = v31;
          }

          v94 = *(a4 + 40);
          *(a4 + 185) = v94;
          if ((v94 & 1) == 0 && *(a4 + 186) == 1)
          {
            if ((*(a4 + 169) & 2) == 0)
            {
              *(a2 + 634) = 1;
              *(a2 + 1048) = 0;
            }

            *(a4 + 64) = 0;
            *(a4 + 72) = 0;
          }

          v93 = 3;
          goto LABEL_276;
        }
      }

      v32 = v110 + 32 * v7;
      v33 = *(v32 + 8);
      v34 = v28 + v7;
      v35 = v29[9];
      if (v33 != (v28 + v7) * v35)
      {
        v39 = sub_100036630(a1);
        v40 = v105;
        if (v39 != 13)
        {
          v40 = (*(a1 + 384) + 212);
        }

        sub_100012178("%s:%d: %s skip bad chunk info ci @ block %lld (cib %lld) ci_index 0x%x ci_addr 0x%llx (expect 0x%llx)\n", "spaceman_alloc_iterate_chunks", 7327, v40, v106, *(v5 + 8), v7, *(v32 + 8), v34 * v109[9]);
        v29 = v109;
        if (v29[9] + v29[9] * v34 >= *&v11[12 * *(a4 + 172)])
        {
          v9 = 0;
        }

        else
        {
          v9 = v109[9] + v109[9] * v34;
        }

        v28 = v111;
LABEL_105:
        *(a4 + 112) = v9;
        goto LABEL_106;
      }

      v36 = *(a4 + 172);
      if (v8 == v11[12 * v36 + 4] && (v37 = *(a4 + 120), v37 / v35 - v28 == v7))
      {
        v38 = v37 - v33;
      }

      else
      {
        v38 = *(v32 + 16) & 0xFFFFFLL;
      }

      v41 = *(a4 + 176);
      if (v36 == v41)
      {
        v42 = *(a4 + 80);
        v43 = v42 - v33;
        if (v42 - v33 >= v38)
        {
          v43 = v38;
        }

        if (v42 > v33 && v42 < v38 + v33)
        {
          v38 = v43;
        }
      }

      v45 = *(a4 + 180);
      v112 = v6;
      v46 = 0;
      if (v36 == v45)
      {
        v52 = *(a4 + 64);
        if (v52 > v33 && v52 < v38 + v33)
        {
          if (*(a4 + 190))
          {
            v46 = 1;
          }

          else
          {
            v46 = 0;
            if (v52 - v33 < v38)
            {
              v38 = v52 - v33;
            }
          }
        }
      }

      v47 = *(a4 + 112);
      v48 = v47 - v33;
      if (v36 == v41)
      {
        v49 = *(a4 + 88);
        if (v49 > v33 && v49 < v38 + v33)
        {
          if (v49 - v33 > v48)
          {
            v48 = v49 - v33;
          }

          v47 = v48 + v33;
          *(a4 + 112) = v48 + v33;
          if (v48 > 0)
          {
            v9 = 0;
          }
        }
      }

      if (v36 == v45)
      {
        v53 = *(a4 + 72);
        if (v53 > v33 && v53 < v38 + v33)
        {
          if (*(a4 + 190))
          {
            v46 = 1;
          }

          else
          {
            if (v53 - v33 > v48)
            {
              v48 = v53 - v33;
            }

            v47 = v48 + v33;
            *(a4 + 112) = v48 + v33;
            if (v48 > 0)
            {
              v9 = 0;
            }
          }
        }
      }

      if ((*(a4 + 184) & 1) == 0)
      {
        v50 = *(v32 + 20) & 0xFFFFF;
        if (!v9 || v50 < (*(v32 + 16) & 0xFFFFFu) && *(a4 + 48) - v9 > v50)
        {
          if (v50)
          {
            if (v7 >= v30 - 1 || (v51 = *(v32 + 52) & 0xFFFFF, *(a4 + 48) <= (v51 + v50)))
            {
              v9 = 0;
            }

            else
            {
              v9 = 0;
              if (v51 < (*(v32 + 48) & 0xFFFFFu))
              {
                v46 = 1;
              }
            }
          }

          else
          {
            v9 = 0;
            v46 = 2;
          }
        }
      }

      if (v36 == v41 && *(a4 + 80) <= v48 + v33 && *(a4 + 88) >= v38 + v33)
      {
        v46 = 2;
        if (!*(a4 + 184))
        {
          goto LABEL_88;
        }
      }

      else
      {
        if (v36 != v45 || v46)
        {
          goto LABEL_85;
        }

        if (*(a4 + 64) <= v48 + v33)
        {
          v46 = *(a4 + 72) >= v38 + v33;
LABEL_85:
          if (!*(a4 + 184))
          {
            goto LABEL_88;
          }

          goto LABEL_86;
        }

        v46 = 0;
        if (!*(a4 + 184))
        {
          goto LABEL_88;
        }
      }

LABEL_86:
      if ((*(v32 + 20) & 0xFFFFF) == 0)
      {
        v46 = 2;
      }

LABEL_88:
      v54 = *(v32 + 24);
      if (!v54 && ((*(v32 + 16) ^ *(v32 + 20)) & 0xFFFFF) != 0)
      {
        LOBYTE(v55) = *(a4 + 190);
LABEL_96:
        v56 = v47 + v38 - v48;
        *(a4 + 112) = v56;
        v11 = v104;
        v28 = v111;
        v6 = v112;
        if (v36 == v41 && v56 >= *(a4 + 80) && v56 < *(a4 + 88) || (v55 & 1) == 0 && v36 == *(a4 + 180) && v56 >= *(a4 + 64) && v56 < *(a4 + 72))
        {
          v56 = *(v32 + 8) + (*(v32 + 16) & 0xFFFFF);
          *(a4 + 112) = v56;
        }

        v9 = 0;
        if (v56 < *&v104[12 * v36])
        {
          goto LABEL_107;
        }

        goto LABEL_105;
      }

      if (!v46)
      {
        if (*(a4 + 185) != 1)
        {
          v57 = 1;
          goto LABEL_111;
        }

        v46 = sub_1000311F8(a3, v36, v33, *(a4 + 48));
        v29 = v109;
      }

      v55 = *(a4 + 190);
      if (v46 > v55)
      {
        v47 = *(a4 + 112);
        v36 = *(a4 + 172);
        v41 = *(a4 + 176);
        goto LABEL_96;
      }

      v54 = *(v32 + 24);
      v57 = v46 == 0;
LABEL_111:
      v113 = (v112 + 1);
      v116 = 0;
      if (v54)
      {
        v58 = sub_10003A1E8(*(a2 + 392), 0x40000000, v54, &xmmword_10006A960, 0, 0, 0, 0, &v116);
        if (v58)
        {
          v93 = v58;
          goto LABEL_274;
        }
      }

      if (v9)
      {
        v59 = v38;
        if (v57)
        {
          if (*(a4 + 48) - v9 >= v38)
          {
            v59 = v38;
          }

          else
          {
            v59 = *(a4 + 48) - v9;
          }
        }

        if (!v116 || !sub_10001C25C(1, *(v116 + 56), 0, v59, (a4 + 128)))
        {
          v6 = v113;
          if (v57)
          {
            v63 = *(a4 + 48);
            if (v63 == v59 + v9)
            {
              *(a4 + 152) = *(a4 + 112) - v9;
              *(a4 + 160) = v63;
              v11 = v104;
              if (v116)
              {
                sub_100037058(v116);
              }

              v9 = 0;
              v93 = 0;
              v116 = 0;
              v5 = v101;
              v8 = v103;
              goto LABEL_276;
            }
          }

          v11 = v104;
          if (*(a4 + 190) == 1)
          {
            v64 = *(a4 + 191);
          }

          else
          {
            v64 = 0;
          }

          v65 = v59 + v9;
          sub_10002A8DC(*(v107 + 8 * *(a4 + 172)), v64 & 1, *(a4 + 112) - v9, v59 + v9);
          if (*(a4 + 184) == 1 && v65 > *(a4 + 160))
          {
            if (v57 || !sub_100031394(a2, a3, *(a4 + 172), *(a4 + 112) - v9, v59 + v9, *(a4 + 168), *(a4 + 56), v115, &v114))
            {
              *(a4 + 152) = *(a4 + 112) - v9;
              v66 = *(a4 + 48);
              if (v65 < v66)
              {
                v66 = v59 + v9;
              }

LABEL_145:
              *(a4 + 160) = v66;
            }

            else
            {
              v66 = v114;
              if (v114 >= *(a4 + 48))
              {
                v66 = *(a4 + 48);
              }

              v114 = v66;
              if (v66 > *(a4 + 160))
              {
                *(a4 + 152) = v115[0];
                goto LABEL_145;
              }
            }
          }

          v67 = *(a4 + 112) + v59;
          *(a4 + 112) = v67;
          v68 = *(a4 + 172);
          v5 = v101;
          v8 = v103;
          if (v68 == *(a4 + 176) && v67 >= *(a4 + 80) && v67 < *(a4 + 88) || (*(a4 + 190) & 1) == 0 && v68 == *(a4 + 180) && v67 >= *(a4 + 64) && v67 < *(a4 + 72))
          {
            v65 = 0;
            v67 = *(v32 + 8) + (*(v32 + 16) & 0xFFFFF);
            *(a4 + 112) = v67;
          }

          v9 = v65;
          if (v67 >= *&v104[12 * v68])
          {
            v9 = 0;
            *(a4 + 112) = 0;
          }

          if (v116)
          {
            sub_100037058(v116);
          }

          v116 = 0;
          if (v9)
          {
            goto LABEL_262;
          }

          v28 = v111;
          v29 = v109;
          if ((*(a4 + 169) & 4) != 0 && *(a4 + 160))
          {
            v9 = 0;
            v93 = 0;
            goto LABEL_276;
          }

          goto LABEL_106;
        }

        v5 = v101;
        if (*(a4 + 184) != 1)
        {
          goto LABEL_168;
        }

        v60 = *(a4 + 128) + v9;
        if (v60 <= *(a4 + 160))
        {
          goto LABEL_168;
        }

        if (!v57)
        {
          if (sub_100031394(a2, a3, *(a4 + 172), *(a4 + 112) - v9, v60, *(a4 + 168), *(a4 + 56), v115, &v114))
          {
            v61 = *(a4 + 48);
            if (v114 < v61)
            {
              v61 = v114;
            }

            v114 = v61;
            v62 = *(a4 + 160);
            if (v61 > v62)
            {
              *(a4 + 152) = v115[0];
              *(a4 + 160) = v61;
LABEL_167:
              if ((*(a4 + 169) & 4) != 0)
              {
                if (v116)
                {
                  sub_100037058(v116);
                }

                v9 = 0;
                v93 = 0;
                v116 = 0;
LABEL_274:
                v8 = v103;
                goto LABEL_275;
              }

LABEL_168:
              if (*(a4 + 190) == 1)
              {
                v69 = *(a4 + 191);
              }

              else
              {
                v69 = 0;
              }

              sub_10002A8DC(*(v107 + 8 * *(a4 + 172)), v69 & 1, *(a4 + 112) - v9, *(a4 + 128) + v9);
              v70 = *(a4 + 128);
              *(a4 + 112) += v70 - v48;
              v48 = v70;
              goto LABEL_172;
            }

LABEL_166:
            if (v62)
            {
              goto LABEL_167;
            }

            goto LABEL_168;
          }

          v60 = *(a4 + 128) + v9;
        }

        v62 = *(a4 + 48);
        if (v60 < v62)
        {
          v62 = v60;
        }

        *(a4 + 152) = *(a4 + 112) - v9;
        *(a4 + 160) = v62;
        goto LABEL_166;
      }

LABEL_172:
      if (!v116)
      {
        break;
      }

      if (*(v107 + 8 * *(a4 + 172)))
      {
        if (v38 > v48)
        {
          v71 = 0;
          v72 = 0;
          v73 = v48;
          while (1)
          {
            sub_10001C57C(*(v116 + 56), v38 - v73, v73, v38, (a4 + 128), (a4 + 136));
            v74 = *(a4 + 136);
            if (!v74)
            {
              goto LABEL_212;
            }

            if (v74 <= v71)
            {
              break;
            }

            if ((*(a4 + 169) & 4) != 0)
            {
              if (v71)
              {
                break;
              }

              v75 = *(a4 + 48);
            }

            else
            {
              v75 = *(a4 + 48);
              if (v71 >= v75)
              {
                break;
              }
            }

            v72 = *(a4 + 128);
            if (v75 >= v74)
            {
              v71 = *(a4 + 136);
            }

            else
            {
              v71 = v75;
            }

            if (!v57)
            {
              goto LABEL_192;
            }

LABEL_183:
            v76 = *(a4 + 48);
            if (v71 >= v76 && ((*(a4 + 187) & 1) != 0 || (*(a4 + 188) & 1) != 0))
            {
              *(a4 + 128) = v72;
              *(a4 + 136) = v71;
              goto LABEL_214;
            }

LABEL_192:
            if (*(a4 + 190) == 1)
            {
              v77 = *(a4 + 191);
            }

            else
            {
              v77 = 0;
            }

            sub_10002A8DC(*(v107 + 8 * *(a4 + 172)), v77 & 1, *(a4 + 112) - v48 + *(a4 + 128), v74);
            v73 = *(a4 + 136) + *(a4 + 128);
            if (v73 >= v38)
            {
              goto LABEL_212;
            }
          }

          if (!v57)
          {
            goto LABEL_192;
          }

          goto LABEL_183;
        }

        v72 = 0;
        v71 = 0;
LABEL_212:
        *(a4 + 128) = v72;
        *(a4 + 136) = v71;
        if (v57)
        {
          v76 = *(a4 + 48);
LABEL_214:
          if (v71 >= v76)
          {
            v9 = 0;
            v93 = 0;
            *(a4 + 112) += v38 - v48;
            v5 = v101;
            goto LABEL_274;
          }

          v82 = 0;
          v5 = v101;
        }

        else
        {
          v82 = 0;
          v5 = v101;
        }
      }

      else
      {
        if (sub_10001C368(*(v116 + 56), *(a4 + 48), v48, v38, (a4 + 128), (a4 + 136), (*(a4 + 168) >> 10) & 1))
        {
          v9 = 0;
          v93 = 0;
          goto LABEL_274;
        }

        v82 = 0;
      }

LABEL_219:
      if (*(a4 + 184) != 1)
      {
        goto LABEL_228;
      }

      v9 = *(a4 + 136);
      if (v9 > *(a4 + 160))
      {
        v84 = *(a4 + 112);
        v85 = *(a4 + 128);
        if (!v57)
        {
          if (sub_100031394(a2, a3, *(a4 + 172), v84 - v48 + v85, v9, *(a4 + 168), *(a4 + 56), v115, &v114))
          {
            v9 = v114;
            if (v114 > *(a4 + 160))
            {
              v86 = v115[0];
              goto LABEL_227;
            }

            goto LABEL_228;
          }

          v84 = *(a4 + 112);
          v85 = *(a4 + 128);
          v9 = *(a4 + 136);
        }

        v86 = v84 - v48 + v85;
LABEL_227:
        *(a4 + 152) = v86;
        *(a4 + 160) = v9;
LABEL_228:
        v9 = *(a4 + 136);
      }

      v8 = v103;
      if (v9 && *(a4 + 128) + v9 == v38)
      {
        goto LABEL_243;
      }

      if ((*(a4 + 169) & 4) != 0 && *(a4 + 160))
      {
        v9 = 0;
        v93 = 0;
        *(a4 + 112) += v38 - v48;
LABEL_275:
        v11 = v104;
        v6 = v113;
        goto LABEL_276;
      }

      v9 = v82;
      if (!v82)
      {
        v87 = *(a4 + 48);
        v88 = v38 - v87;
        if (v38 < v87)
        {
          v88 = 0;
          v87 = v38;
        }

        if (sub_10001C2E0(*(v116 + 56), v88, v87, (a4 + 128)) && (v89 = *(a4 + 128), v89 < v38 - 1))
        {
          if (*(a4 + 190) == 1)
          {
            v90 = *(a4 + 191);
          }

          else
          {
            v90 = 0;
          }

          v9 = v38 + ~v89;
          sub_10002A8DC(*(v107 + 8 * *(a4 + 172)), v90 & 1, v89 - v48 + *(a4 + 112) + 1, v9);
        }

        else
        {
          v9 = 0;
        }
      }

LABEL_243:
      *(a4 + 136) = 0;
      v91 = *(a4 + 112) + v38 - v48;
      *(a4 + 112) = v91;
      v92 = *(a4 + 172);
      v11 = v104;
      v6 = v113;
      if (v92 == *(a4 + 176) && v91 >= *(a4 + 80) && v91 < *(a4 + 88) || (*(a4 + 190) & 1) == 0 && v92 == *(a4 + 180) && v91 >= *(a4 + 64) && v91 < *(a4 + 72))
      {
        v9 = 0;
        v91 = *(v32 + 8) + (*(v32 + 16) & 0xFFFFF);
        *(a4 + 112) = v91;
      }

      if (v91 >= *&v104[12 * v92])
      {
        v9 = 0;
        *(a4 + 112) = 0;
      }

      if (v116)
      {
        sub_100037058(v116);
      }

      v116 = 0;
      if (!v113)
      {
        goto LABEL_262;
      }

      v28 = v111;
      v29 = v109;
      if ((*(a4 + 190) & 1) == 0 || v9)
      {
        goto LABEL_107;
      }

      if (*(a4 + 160) || *(a4 + 104))
      {
        if (!sub_10002A2E8(*(v107 + 8 * *(a4 + 172)), v113))
        {
          v9 = 0;
LABEL_262:
          v28 = v111;
          v29 = v109;
          goto LABEL_107;
        }

        v96 = *(a4 + 104);
        if (v96 > *(a4 + 160))
        {
          *(a4 + 152) = *(a4 + 96);
          *(a4 + 160) = v96;
        }

        v9 = 0;
        v93 = 0;
        *(a4 + 192) = 1;
LABEL_276:
        if (*(a4 + 136))
        {
          goto LABEL_302;
        }

        goto LABEL_277;
      }

LABEL_106:
      v9 = 0;
LABEL_107:
      if (++v7 >= v30)
      {
        v93 = 0;
        LODWORD(v7) = v30;
        goto LABEL_276;
      }
    }

    v78 = *(a4 + 48);
    v79 = v78 <= v38 - v48;
    if (v78 >= v38 - v48)
    {
      v80 = v38 - v48;
    }

    else
    {
      v80 = *(a4 + 48);
    }

    *(a4 + 128) = v48;
    *(a4 + 136) = v80;
    v81 = v78 <= v38 - v48 && v57;
    if (v79)
    {
      v82 = v38 - v48;
    }

    else
    {
      v82 = 0;
    }

    if (!v81)
    {
      if (*(a4 + 190) == 1)
      {
        v83 = *(a4 + 191);
      }

      else
      {
        v83 = 0;
      }

      sub_10002A8DC(*(v107 + 8 * *(a4 + 172)), v83 & 1, *(a4 + 112), v80);
      goto LABEL_219;
    }

    v9 = 0;
    v93 = 0;
    v8 = v103;
    v11 = v104;
    v6 = v113;
    if (v80)
    {
      break;
    }

LABEL_277:
    v95 = *(a4 + 160);
    if (v95 == *(a4 + 48))
    {
      break;
    }

    if (v9 || !v95)
    {
      if (v93)
      {
        break;
      }
    }

    else if (*(a4 + 168) & 0x400 | v93)
    {
      break;
    }

    if (*(a4 + 192))
    {
      break;
    }

    sub_100037058(v117);
    v117 = 0;
    ++v8;
    v12 = *(a4 + 172);
    v10 = v109;
  }

  while (v8 <= v11[12 * v12 + 4]);
LABEL_302:
  *(a4 + 193) = v8 == v11[12 * *(a4 + 172) + 4] + 1;
  if (*(a4 + 136))
  {
    *(a4 + 144) = *(v5 + 32 * v7 + 48);
  }

  if (v118)
  {
    sub_100037058(v118);
    v118 = 0;
  }

  if (v117)
  {
    sub_100037058(v117);
    v117 = 0;
  }

  if (v116)
  {
    sub_100037058(v116);
  }

  return v93;
}

uint64_t sub_10004988C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v8 = a6;
  v10 = a4;
  v11 = a3;
  v120 = 0;
  v124 = 0;
  v122 = 0;
  v12 = *(a3 + 376);
  v144 = 0;
  v145 = 0;
  v143 = 0;
  memset(v142, 170, sizeof(v142));
  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a1;
  }

  v119 = v13;
  v117 = (v13 + 505);
  v118 = (a2 + 505);
  v121 = a8 & 0x10001;
  v123 = -1;
  v137 = a4;
  v130 = v12;
  while (1)
  {
    pthread_mutex_lock((v11 + 640));
    v14 = v10 / v12[9];
    v15 = v14 / v12[10];
    v140 = v12[17];
    if (v140)
    {
      v16 = v15 / v12[11];
      if (v16 != v123 || v120 == 0)
      {
        v18 = *(*(v11 + 896) + 8 * v16);
        if (v145)
        {
          sub_100037058(v145);
          v145 = 0;
        }

        v142[1] = v12;
        LODWORD(v142[2]) = 0;
        HIDWORD(v142[2]) = v16;
        v124 = v18;
        v19 = sub_10003A1E8(a1[49], 1073741829, v18, &xmmword_10006A940, &v142[1], 0, 0, v8, &v145);
        if (v19)
        {
          v109 = v19;
          sub_100012178("%s:%d: %s error getting cab %d @ %lld: %d\n", "spaceman_modify_bits", 5882, (a1[48] + 212), v16, v124, v19);
          v110 = 1;
          goto LABEL_158;
        }

        v120 = *(v145 + 56);
        v123 = v16;
      }

      else
      {
        sub_10003BBDC(v145, 2);
      }

      pthread_mutex_unlock((v11 + 640));
      if (sub_100038020(v145) == v8)
      {
        v22 = v124;
        v23 = v123;
      }

      else
      {
        v24 = sub_1000425C0(a1, v11, v8, v142);
        if (v24)
        {
          v109 = v24;
          if (sub_100011490(a1))
          {
            sub_100012178("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_modify_bits", 5901, (a1[48] + 212), v109);
          }

          v110 = 1;
          v122 = 1;
          goto LABEL_159;
        }

        v22 = v142[0];
        v23 = v123;
        *(*(v11 + 896) + 8 * v123) = v142[0];
        sub_10003D180(v145, v8, v22);
        v25 = sub_10004CD70(a1, v11, v124, v8);
        if (v25)
        {
          v109 = v25;
          sub_100012178("%s:%d: %s failed to free internal pool block %lld: %d\n", "spaceman_modify_bits", 5908, (a1[48] + 212), v124, v25);
          v110 = 1;
          v122 = 1;
          goto LABEL_159;
        }
      }

      v21 = v120 + 40;
      v26 = *(v130 + 40);
      LODWORD(v15) = v15 - *(v130 + 44) * v23;
      v142[1] = v130;
      LODWORD(v142[2]) = 0;
      HIDWORD(v142[2]) = v14 / v26;
      v122 = 1;
      v124 = v22;
    }

    else
    {
      v20 = v12;
      v21 = *(v11 + 896);
      v142[1] = v20;
      LODWORD(v142[2]) = 0;
      HIDWORD(v142[2]) = v15;
      if (!v21)
      {
        v109 = 22;
        v110 = 1;
        goto LABEL_158;
      }
    }

    v27 = *(v21 + 8 * v15);
    v28 = sub_10003A1E8(a1[49], 1073741829, v27, &xmmword_10006A950, &v142[1], 0, 0, v8, &v144);
    if (v28)
    {
      v109 = v28;
      if (v123 == -1)
      {
        v108 = 0;
      }

      else
      {
        v108 = *(v130 + 44) * v123;
      }

      sub_100012178("%s:%d: %s error getting cib %d @ %lld: %d\n", "spaceman_modify_bits", 5934, (a1[48] + 212), v108 + v15, v27, v28);
      v110 = 1;
      goto LABEL_155;
    }

    v131 = *(v144 + 56);
    if (sub_100038020(v144) == v8)
    {
      v128 = v27;
      v29 = v130;
      v30 = v137;
      goto LABEL_29;
    }

    v31 = sub_1000425C0(a1, v11, v8, v142);
    if (v31)
    {
      v109 = v31;
      v115 = a1[48] + 212;
      sub_100012178("%s:%d: %s failed to allocate block from internal pool: %d\n");
      goto LABEL_152;
    }

    v128 = v142[0];
    *(v21 + 8 * v15) = v142[0];
    if (v145)
    {
      sub_10003D180(v145, v8, v124);
    }

    sub_10003D180(v144, v8, v128);
    v32 = sub_10004CD70(a1, v11, v27, v8);
    v29 = v130;
    v30 = v137;
    if (v32)
    {
      break;
    }

LABEL_29:
    if (!v140)
    {
      pthread_mutex_unlock((v11 + 640));
    }

    if (v145)
    {
      sub_10003C190(v145, 2);
      v122 = 0;
    }

    v138 = v14 % v29[10];
    v132 = v131 + 40;
    v33 = v131 + 40 + 32 * v138;
    v34 = (v33 + 24);
    v35 = *(v33 + 24);
    if (a7 == 1)
    {
LABEL_34:
      if (v35)
      {
        goto LABEL_35;
      }

      if (((*(v33 + 16) ^ *(v33 + 20)) & 0xFFFFF) != 0)
      {
        v109 = sub_1000033FC(a1);
        v110 = 0;
      }

      else
      {
        v110 = 0;
        v109 = 22;
      }

      goto LABEL_159;
    }

    while (1)
    {
LABEL_35:
      if (v35)
      {
        v36 = sub_10003A1E8(a1[49], 1073741825, v35, &xmmword_10006A960, 0, 0, 0, v8, &v143);
        if (v36)
        {
          v107 = v36;
          v104 = a1[48] + 212;
          if (v123 != -1)
          {
            v105 = v29[11] * v123;
          }

          sub_100012178("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n");
          goto LABEL_146;
        }

        v37 = *(v143 + 56);
      }

      else
      {
        v37 = 0;
      }

      v38 = v29[9];
      v39 = v10 % v38;
      v40 = v38 - v10 % v38;
      if (a5 < v40)
      {
        v40 = a5;
      }

      v141 = v40;
      v134 = a5;
      if (v35 && *v33 == a6)
      {
        v133 = v35;
        goto LABEL_50;
      }

      v41 = sub_1000425C0(a1, v11, a6, v142);
      if (v41)
      {
        v106 = v41;
        sub_100012178("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_modify_bits", 6004, (a1[48] + 212), v41);
        v110 = 0;
        v109 = v106;
        goto LABEL_159;
      }

      *v33 = a6;
      v42 = v142[0];
      *v34 = v142[0];
      v133 = v42;
      if (v35)
      {
        sub_10003D180(v143, a6, v42);
        v43 = sub_10004CD70(a1, v11, v35, a6);
        if (v43)
        {
          v107 = v43;
          v114 = a1[48] + 212;
          sub_100012178("%s:%d: %s failed to free internal pool block %lld: %d\n");
LABEL_146:
          v110 = 0;
          v109 = v107;
          goto LABEL_159;
        }
      }

      else
      {
        v44 = sub_100038AF0(a1[49], 0x40000000, v42, &xmmword_10006A960, 0, 0, a6, &v143);
        if (v44)
        {
          v109 = v44;
          sub_100012178("%s:%d: %s failed to create bitmap object %lld: %d\n", "spaceman_modify_bits", 6019, (a1[48] + 212), v133, v44);
          v110 = 0;
          goto LABEL_159;
        }

        v37 = *(v143 + 56);
      }

LABEL_50:
      v45 = *(v11 + 376);
      if (a7 == 1)
      {
        v46 = sub_10001C584(v37, 0, v39, v141 + v39);
        v47 = v46;
        if (v46)
        {
          sub_100012178("%s:%d: %s freeing 0x%llx:%lld, but %lld bits are already clear.  Double free?\n", "spaceman_clear_bits_in_bm", 5603, (a1[48] + 212), v30, a5, v46);
        }

        v48 = a1[47];
        v49 = *(v48 + 1248);
        v50 = v132 + 32 * v138;
        if (v49)
        {
          v51 = *(v48 + 1240);
          v146 = 0xAAAAAAAAAAAAAAAALL;
          v52 = sub_100011DE8(v30, v141, v51, v49, &v146);
          v53 = v52;
          if (v52)
          {
            v52 = sub_10001C584(v37, 0, v146 - *(v50 + 8), v146 + v52 - *(v50 + 8));
          }

          v54 = v10;
          v55 = v47 - v52;
        }

        else
        {
          v54 = v10;
          v53 = 0;
          v55 = v47;
        }

        sub_10001C18C(v37, v39, v141);
        sub_10004C308(a3, v37, v30 / *(v45 + 36));
        *(v50 + 20) += v141 - v47;
        pthread_mutex_lock((a3 + 576));
        *(v45 + 72) += v141 - v53 - v55;
        a5 = v134;
        v8 = a6;
        v59 = v138;
        v10 = v54;
        v11 = a3;
        if (a8)
        {
          v76 = *(a3 + 984);
          v64 = v76 >= v141;
          v77 = v76 - v141;
          if (!v64)
          {
            v77 = 0;
          }

          *(a3 + 984) = v77;
        }

LABEL_128:
        pthread_mutex_unlock((v11 + 576));
        v79 = 0;
        v109 = 0;
        v78 = 1;
        goto LABEL_129;
      }

      v56 = (*(v33 + 16) & 0xFFFFF) - v39;
      if (v56 >= v141)
      {
        v57 = v141;
      }

      else
      {
        v57 = (*(v33 + 16) & 0xFFFFF) - v39;
      }

      if (sub_10001BFA8(v37, v39, v57, v56))
      {
        sub_10001C098(v37, v39, v57, v58);
        v59 = v138;
        sub_10004C308(v11, v37, v138 + *(v45 + 40) * *(v131 + 32));
        pthread_mutex_lock((v11 + 576));
        v60 = *(v45 + 72);
        if (*(v11 + 1616))
        {
          v61 = *(v45 + 240) + v60 + *(v11 + 984) + *(v45 + 120) + *(v45 + 280) + *(v11 + 992);
          v62 = *(v45 + 184);
          v63 = *(v45 + 192);
          v64 = v62 >= v63;
          v65 = v62 - v63;
          if (!v64)
          {
            v65 = 0;
          }

          v64 = v61 >= v65;
          v66 = v61 - v65;
          if (!v64)
          {
            v66 = 0;
          }

          v67 = *(v11 + 1624);
          v68 = *(v11 + 1640);
          v64 = v67 >= v68;
          v69 = v67 - v68;
          if (v64)
          {
            v70 = v69;
          }

          else
          {
            v70 = 0;
          }

          v71 = *(v11 + 1648);
          v72 = *(v11 + 1656);
          v64 = v71 >= v72;
          v73 = v71 - v72;
          if (!v64)
          {
            v73 = 0;
          }

          v74 = v73 + v70;
          v64 = v66 >= v74;
          v75 = v66 - v74;
          if (!v64)
          {
            v75 = 0;
          }

          v125 = v75;
        }

        else
        {
          v70 = 0;
          v125 = 0;
        }

        v80 = a2;
        *(v33 + 20) -= v57;
        *(v45 + 72) = v60 - v57;
        v8 = a6;
        if (a8)
        {
          v82 = *(v11 + 848);
          if (*(v11 + 832) < v82)
          {
            panic("%s, Reserved space < reserved metadata: %llu < %llu\n", "Main", *(v11 + 832), v82);
          }

          if ((a8 & 0x40) != 0)
          {
            if (v82 < v57)
            {
              panic("reserved metadata space underflow: %lld (%lld)\n", *(v11 + 848), v57);
            }

            *(v11 + 848) = v82 - v57;
            *(v11 + 832) -= v57;
            v80 = a2;
          }

          else
          {
            v83 = *(v11 + 832);
            if (v83 - v82 >= v57)
            {
              v82 = v83 - v57;
            }

            else if (sub_100036630(v119) == 13)
            {
              sub_100012178("%s:%d: %s reserved space underflow: %lld (+meta:%llu) < %lld\n", "spaceman_set_bits_in_bm", 5755, v117, *(v11 + 832) - v82, v82, v57);
            }

            else
            {
              sub_100012178("%s:%d: %s reserved space underflow: %lld (+meta:%llu) < %lld\n", "spaceman_set_bits_in_bm", 5755, (*(v119 + 384) + 212), *(v11 + 832) - v82, v82, v57);
            }

            v80 = a2;
            *(v11 + 832) = v82;
          }

          v59 = v138;
          if (v80)
          {
            v84 = v80[51];
            v64 = v84 >= v57;
            v85 = v84 - v57;
            if (!v64)
            {
              v86 = sub_100036630(v80);
              v87 = v118;
              if (v86 != 13)
              {
                v87 = (a2[48] + 212);
              }

              sub_100012178("%s:%d: %s fs reserved space underflow: %lld (%lld)\n", "spaceman_set_bits_in_bm", 5770, v87, a2[51], v57);
              v80 = a2;
              v85 = 0;
            }

            v80[51] = v85;
            goto LABEL_102;
          }

          v81 = 0;
        }

        else
        {
          if (!a2)
          {
            v81 = 0;
LABEL_119:
            if (*(v11 + 1616))
            {
              v98 = v57 - v81;
              if ((a8 & 0x10000) != 0)
              {
                v101 = *(v11 + 1640);
                if (v98 <= v70)
                {
                  v102 = v101 + v98;
                }

                else
                {
                  v102 = v101 + v70;
                }

                *(v11 + 1640) = v102;
              }

              else
              {
                v99 = v98 > v125;
                v100 = v98 - v125;
                if (v99)
                {
                  *(v11 + 1656) += v100;
                }
              }
            }

            goto LABEL_128;
          }

LABEL_102:
          v88 = v80[47];
          v89 = *(v88 + 72);
          v90 = *(v88 + 88);
          v91 = v89 - v90;
          if (v89 < v90)
          {
            v91 = 0;
          }

          if (v57 >= v91)
          {
            v81 = v91;
          }

          else
          {
            v81 = v57;
          }

          v92 = v90 + v57;
          *(v88 + 88) = v92;
          *(v45 + 192) += v81;
          if (v89)
          {
            v64 = v89 >= v92;
            v93 = v89 - v92;
            if (!v64)
            {
              v93 = 0;
            }

            v94 = v80[52];
            if (v93 >= v80[51])
            {
              v93 = v80[51];
            }

            v95 = *(v11 + 864);
            v80[52] = v93;
            *(v11 + 864) = v93 - v94 + v95;
          }

          sub_100019634(v80, a6);
        }

        if (v121 == 65537)
        {
          v96 = *(v11 + 1632);
          v64 = v96 >= v57;
          v97 = v96 - v57;
          if (!v64)
          {
            v97 = 0;
          }

          *(v11 + 1632) = v97;
        }

        goto LABEL_119;
      }

      v78 = 0;
      v109 = 22;
      v79 = 1;
      v8 = a6;
      v59 = v138;
LABEL_129:
      sub_10003D180(v11, v8, 0);
      sub_10003D180(v144, v8, v128);
      sub_10003D180(v143, v8, v133);
      sub_100037058(v143);
      v143 = 0;
      v30 += v141;
      v10 += v141;
      a5 -= v141;
      if (!v78 || a5 < 1 || v59 >= (*(v131 + 36) - 1))
      {
        break;
      }

      v138 = v59 + 1;
      v33 = v132 + 32 * (v59 + 1);
      v34 = (v33 + 24);
      v35 = *(v33 + 24);
      v29 = v130;
      if (a7 == 1)
      {
        goto LABEL_34;
      }
    }

    v137 = v30;
    sub_10003C190(v144, 2);
    sub_100037058(v144);
    v144 = 0;
    if (a5 < 1)
    {
      v103 = 1;
    }

    else
    {
      v103 = v79;
    }

    v12 = v130;
    if (v103)
    {
      v110 = 1;
      goto LABEL_159;
    }
  }

  v109 = v32;
  v116 = a1[48] + 212;
  sub_100012178("%s:%d: %s failed to free internal pool block %lld: %d\n");
LABEL_152:
  v110 = 0;
LABEL_155:
  if (!v140)
  {
LABEL_158:
    pthread_mutex_unlock((v11 + 640));
  }

LABEL_159:
  if (v145 && (v122 & 1) != 0)
  {
    sub_10003C190(v145, 2);
  }

  if (v144)
  {
    v111 = v110;
  }

  else
  {
    v111 = 1;
  }

  if ((v111 & 1) == 0)
  {
    sub_10003C190(v144, 2);
  }

  if (v145)
  {
    sub_100037058(v145);
  }

  if (v144)
  {
    sub_100037058(v144);
  }

  if (v143)
  {
    sub_100037058(v143);
  }

  if (a7 == 1)
  {
    if (v109)
    {
      if (a5)
      {
        v112 = *(v11 + 984);
        if (v112)
        {
          *(v11 + 984) = v112 - a5;
        }
      }
    }
  }

  return v109;
}

uint64_t sub_10004A66C(const char *a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = 0;
  if (sub_100036630(a1) == 13)
  {
    v10 = *(a1 + 49);
    v11 = a1;
  }

  else
  {
    v11 = 0;
    v10 = a1;
  }

  v12 = sub_10004D1DC(v10, a5);
  v13 = 22;
  if (a4 >= 1 && v12)
  {
    v26 = 0xAAAAAAAAAAAAAAAALL;
    v13 = sub_100042E24(v10, &v26);
    if (!v13)
    {
      v14 = v26;
      v15 = *(v26 + 1592);
      if (v15)
      {
        v16.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v16.i64[1] = a4;
        v15[6] = vaddq_s64(v15[6], v16);
      }

      v17 = sub_100042D38(v10, v14, a3, a4);
      if (v17)
      {
        v18 = v17;
        if (sub_100011490(*(*a1 + 392)))
        {
          if (sub_100036630(a1) == 13)
          {
            v19 = a1 + 4040;
          }

          else
          {
            v19 = (*(a1 + 48) + 212);
          }

          sub_100012178("%s:%d: %s attempt to free extent (0x%llx:0x%llx) which should not be freed: %d\n", "spaceman_free", 8742, v19, a3, a4, v18);
        }

        v13 = 22;
        goto LABEL_20;
      }

      v13 = sub_10003BC6C(v26, 0, a5);
      if (!v13)
      {
        if (*(v10 + 629) == 1)
        {
          v20 = sub_10004A91C(v10, a3, a4, &v25);
          if (v20 | v25)
          {
            v13 = 0;
            goto LABEL_20;
          }

          pthread_mutex_lock((v26 + 384));
          v13 = sub_10004A9A4(v10, v26, a3, a4, a5);
          sub_10005090C(*(v10 + 384));
          if (!v13)
          {
            if (v11)
            {
              sub_10004AAA0(v11, v26, a4, a5);
            }

            v24 = v26;
            if (*(v26 + 1616))
            {
              sub_10004ABE8(v26, a2, a4);
              v24 = v26;
            }

            sub_10003D180(v24, a5, 0);
          }

          v23 = (v26 + 384);
        }

        else
        {
          pthread_mutex_lock((v26 + 512));
          v13 = sub_10004ACF0(v10, v26, 1, a3, a4, a5);
          if (!v13)
          {
            pthread_mutex_lock((v26 + 384));
            if (v11)
            {
              sub_10004AAA0(v11, v26, a4, a5);
            }

            v22 = v26;
            if (*(v26 + 1616))
            {
              sub_10004ABE8(v26, a2, a4);
              v22 = v26;
            }

            sub_10003D180(v22, a5, 0);
            pthread_mutex_unlock((v26 + 384));
          }

          v23 = (v26 + 512);
        }

        pthread_mutex_unlock(v23);
      }

LABEL_20:
      sub_100037058(v26);
    }
  }

  return v13;
}

uint64_t sub_10004A91C(uint64_t a1, unint64_t a2, uint64_t a3, _BOOL4 *a4)
{
  v8 = *(a1 + 416);
  pthread_mutex_lock(v8 + 8);
  pthread_mutex_lock(v8 + 6);
  v9 = sub_10004B0C8(a1, v8, 1, a2, a3, a4, 0);
  pthread_mutex_unlock(v8 + 6);
  pthread_mutex_unlock(v8 + 8);
  return v9;
}

uint64_t sub_10004A9A4(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!sub_10004D1DC(a1, a5))
  {
    return 22;
  }

  v10 = sub_100042D38(a1, a2, a3, a4);
  if (v10)
  {
    v11 = v10;
    if (sub_100011490(a1))
    {
      sub_100012178("%s:%d: %s attempt to free extent (0x%llx:0x%llx) which should not be free: %d\n", "spaceman_freed", 6134, (a1[48] + 212), a3, a4, v11);
    }

    return 22;
  }

  sub_100050900(a1[48]);

  return sub_10004CA58(a1, a2, a3, a4, 0, a5);
}

void sub_10004AAA0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 376);
  pthread_mutex_lock((a2 + 576));
  v9 = *(a1 + 376);
  v10 = *(v9 + 88);
  v11 = v10 >= a3;
  v12 = v10 - a3;
  if (v11)
  {
    *(v9 + 88) = v12;
  }

  else
  {
    v13 = sub_100038018(a1);
    sub_100012178("%s:%d: %s fs %lld alloc count underflow: %lld (%lld)\n", "spaceman_free_fs_deduct_block_counts", 8664, (a1 + 4040), v13, *(*(a1 + 376) + 88), a3);
    v12 = 0;
    v9 = *(a1 + 376);
    *(v9 + 88) = 0;
  }

  v14 = *(v9 + 72);
  if (v14)
  {
    v15 = v14 - v12;
    if (v14 < v12)
    {
      v15 = 0;
    }

    v16 = *(a1 + 416);
    if (v15 >= *(a1 + 408))
    {
      v15 = *(a1 + 408);
    }

    v17 = *(a2 + 864);
    *(a1 + 416) = v15;
    *(a2 + 864) = v15 - v16 + v17;
  }

  v11 = v14 >= v12;
  v18 = v14 - v12;
  if (v18 != 0 && v11)
  {
    if (v18 >= a3)
    {
      v18 = a3;
    }

    v19 = *(v8 + 192);
    v20 = v19 - v18;
    if (v19 < v18)
    {
      sub_100012178("%s:%d: %s spaceman fs reserve alloc count underflow: %lld (%lld)\n", "spaceman_free_fs_deduct_block_counts", 8680, (a1 + 4040), *(v8 + 192), v18);
      v20 = 0;
    }

    *(v8 + 192) = v20;
  }

  pthread_mutex_unlock((a2 + 576));

  sub_100019634(a1, a4);
}

uint64_t sub_10004ABE8(uint64_t result, int a2, unint64_t a3)
{
  if (!*(result + 1616))
  {
    return result;
  }

  v5 = result;
  if ((a2 & 0x30000) == 0)
  {
    sub_100042DAC(0, result);
  }

  pthread_mutex_lock((v5 + 576));
  if ((a2 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  if ((a2 & 0x10000) != 0)
  {
    v6 = (v5 + 1640);
    v7 = *(v5 + 1640);
  }

  else
  {
    v6 = (v5 + 1656);
    v7 = *(v5 + 1656);
  }

  if (v7 < a3)
  {
    a3 -= v7;
    *v6 = 0;
LABEL_11:
    if (a3)
    {
      v8 = *(v5 + 1624);
      v9 = *(v5 + 1616);
      v10 = v9 - v8;
      if (v9 > v8)
      {
        v11 = v8 + a3;
        v12 = a3 >= v10;
        v13 = a3 - v10;
        if (v13 == 0 || !v12)
        {
          v9 = v11;
        }

        if (v12)
        {
          a3 = v13;
        }

        else
        {
          a3 = 0;
        }

        *(v5 + 1624) = v9;
      }

      if ((a2 & 0x40) == 0 && a3)
      {
        if ((a2 & 0x10000) != 0)
        {
          v16 = *(v5 + 1640);
          v12 = v16 >= a3;
          v17 = v16 - a3;
          if (v12)
          {
            *(v5 + 1640) = v17;
          }

          else
          {
            *(v5 + 1640) = 0;
          }
        }

        else
        {
          v14 = *(v5 + 1656);
          v12 = v14 >= a3;
          v15 = v14 - a3;
          if (v12)
          {
            *(v5 + 1656) = v15;
          }

          else
          {
            *(v5 + 1656) = 0;
          }
        }
      }
    }

    goto LABEL_25;
  }

  *v6 = v7 - a3;
LABEL_25:

  return pthread_mutex_unlock((v5 + 576));
}

uint64_t sub_10004ACF0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a2 + 376);
  v36 = 0xAAAAAAAAAAAAAAAALL;
  v35[0] = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  memset(v33, 170, 24);
  v13 = sub_10004464C(a1, a2, a3, a6, 1, &v36);
  if (!v13)
  {
    *&v32 = 0;
    *&v34 = a6;
    *(&v34 + 1) = a4;
    v30 = 8;
    v31 = 16;
    v14 = sub_100025428(v36, 0, &v34, &v31, 0x10u, v35, &v30, 1u, 0, 0);
    if (v14 == 2)
    {
      goto LABEL_13;
    }

    v13 = v14;
    if (v14)
    {
      goto LABEL_43;
    }

    if (v34 != a6)
    {
      goto LABEL_13;
    }

    if (v30)
    {
      v15 = v35[0];
    }

    else
    {
      v15 = 1;
      v35[0] = 1;
    }

    if (v15 + *(&v34 + 1) <= a4)
    {
      if (v15 + *(&v34 + 1) != a4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_100012178("%s:%d: %s range 0x%llx:%lld overlaps with recently-freed range 0x%llx:%lld\n", "spaceman_fq_tree_insert", 4855, (*(a1 + 384) + 212), a4, a5, *(&v34 + 1), v15);
      v15 = v35[0];
      a5 += a4 - (v35[0] + *(&v34 + 1));
      if (a5 < 1)
      {
        v13 = 22;
        goto LABEL_43;
      }

      a4 = v35[0] + *(&v34 + 1);
    }

    v33[0] = v34;
    v16 = v15 + a5;
    *&v33[1] = v15 + a5;
    if (v34)
    {
LABEL_14:
      v34 = v33[0];
      v30 = 8;
      v31 = 16;
      v17 = sub_100025428(v36, 0, &v34, &v31, 0x10u, v35, &v30, 4u, 0, 0);
      if (v17 == 2)
      {
LABEL_31:
        v30 = 8 * (v16 != 1);
        v13 = sub_10001D908(v36, 0, v33, 16, &v33[1], v30, a6);
        if (!v13)
        {
          pthread_mutex_lock((a2 + 576));
          v22 = v12 + 40 * a3;
          v25 = *(v22 + 200);
          v23 = (v22 + 200);
          v24 = v25;
          if (!v25)
          {
            v23[2] = a6;
          }

          *v23 = v24 + a5;
          pthread_mutex_unlock((a2 + 576));
          sub_10003D180(a2, a6, 0);
          if (v32)
          {
            v26 = sub_100025094(v36, 0, &v32, 0x10u, a6);
            if (v26)
            {
              sub_100012178("%s:%d: %s removal of replaced free extent failed: %d\n", "spaceman_fq_tree_insert", 4932, (*(a1 + 384) + 212), v26);
            }
          }

          if (sub_100046750(a2, a3, v36, 0))
          {
            *&v27 = 0xAAAAAAAAAAAAAAAALL;
            *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v29[2] = v27;
            v29[3] = v27;
            v29[0] = v27;
            v29[1] = v27;
            sub_100043414(a1, v29, 0, 0);
              ;
            }

            sub_100043D24(a1, v29);
          }

          v13 = 0;
        }

        goto LABEL_43;
      }

      v13 = v17;
      if (!v17)
      {
        if (v34 == a6)
        {
          if (v30)
          {
            v18 = v35[0];
          }

          else
          {
            v18 = 1;
            v35[0] = 1;
          }

          v19 = v16 + *(&v33[0] + 1);
          if (*(&v34 + 1) <= v16 + *(&v33[0] + 1))
          {
            if (*(&v34 + 1) < v16 + *(&v33[0] + 1))
            {
              v20 = v18 + *(&v34 + 1);
              sub_100012178("%s:%d: %s range 0x%llx:%lld overlaps with recently-freed range 0x%llx:%lld\n", "spaceman_fq_tree_insert", 4897, (*(a1 + 384) + 212), a4, a5, *(&v34 + 1), v18);
              if (v20 > v19)
              {
                v16 += v20 - v19;
                *&v33[1] = v16;
              }

              if (v20 >= v19)
              {
                v21 = v19;
              }

              else
              {
                v21 = v20;
              }

              a5 = a5 - v21 + *(&v34 + 1);
            }

            else
            {
              v16 += v18;
              *&v33[1] = v16;
            }

            v32 = v34;
          }
        }

        goto LABEL_31;
      }

LABEL_43:
      sub_100037058(v36);
      return v13;
    }

LABEL_13:
    *&v33[0] = a6;
    *(&v33[0] + 1) = a4;
    v16 = a5;
    *&v33[1] = a5;
    goto LABEL_14;
  }

  return v13;
}

uint64_t sub_10004B0C8(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, _BOOL4 *a6, void *a7)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v11 = a2;
  v60 = 0;
  v61 = 0;
  v58 = 0xAAAAAAAAAAAAAAAALL;
  v59 = 0;
  v57 = 0xAAAAAAAAAAAAAAAALL;
  if ((a3 & 2) != 0)
  {
    *a7 = 0;
  }

  v12 = *(a2 + 376);
  v13 = *(v12 + 48);
  if (v13 <= a5 || v13 - a5 < a4)
  {
    sub_100012178("%s:%d: %s block range %lld:%lld out of %s bounds %lld\n", "spaceman_check_allocation_status_internal", 8850, (*(a1 + 384) + 212), a4, a5, "main", *(v12 + 48));
    return 22;
  }

  if (a5 <= 0)
  {
    v16 = 0;
    v15 = 0;
    if ((a3 & 3) == 0)
    {
LABEL_58:
      if (!v15 && v16)
      {
        v56 = 0;
        v15 = sub_1000464F0(a1, v11, 1u, v9, v8, &v56);
        if (((v15 == 0) & v56) != 0)
        {
          v16 = 0;
        }
      }
    }

LABEL_62:
    if (v15)
    {
      sub_100012088("%s:%d: %s %lld:%lld error: %d\n", "spaceman_check_allocation_status_internal", 8981, (*(a1 + 384) + 212), v9, v8, v15);
    }

    goto LABEL_64;
  }

  v16 = 0;
  v17 = 0;
  v18 = a5 + a4;
  v53 = a3 & 3;
  v19 = -1;
  while (1)
  {
    v20 = *(v12 + 40);
    v21 = v9 / *(v12 + 36);
    v52 = v21;
    v22 = v21 / v20;
    if (*(v12 + 68))
    {
      v23 = *(v12 + 44);
      v24 = v22 / v23;
      v25 = v21 / v20;
      if (v22 / v23 == v19)
      {
LABEL_16:
        LODWORD(v28) = v22 - v23 * v19;
        LODWORD(v22) = v25;
        goto LABEL_18;
      }

      v26 = *(*(v11 + 896) + 8 * v24);
      if (v61)
      {
        sub_100037058(v61);
        v61 = 0;
      }

      v57 = v12;
      LODWORD(v58) = 0;
      HIDWORD(v58) = v24;
      v27 = sub_10003A1E8(*(a1 + 392), 0x40000000, v26, &xmmword_10006A940, &v57, 0, 0, 0, &v61);
      if (!v27)
      {
        v17 = *(v61 + 56) + 40;
        v23 = *(v12 + 44);
        v19 = v24;
        v25 = v52 / *(v12 + 40);
        goto LABEL_16;
      }

      v44 = v27;
      sub_100012178("%s:%d: %s error getting cab %d @ %lld: %d\n", "spaceman_check_allocation_status_internal", 8877, (*(a1 + 384) + 212), v24, v26, v27);
      v15 = v44;
LABEL_57:
      v9 = a4;
      v7 = a6;
      v8 = a5;
      if (!v53)
      {
        goto LABEL_58;
      }

      goto LABEL_62;
    }

    v17 = *(v11 + 896);
    v28 = v21 / v20;
LABEL_18:
    v57 = v12;
    LODWORD(v58) = 0;
    HIDWORD(v58) = v22;
    if (!v17)
    {
      v15 = 22;
      goto LABEL_57;
    }

    v50 = v19;
    v51 = v17;
    v29 = *(v17 + 8 * v28);
    v30 = sub_10003A1E8(*(a1 + 392), 0x40000000, v29, &xmmword_10006A950, &v57, 0, 0, 0, &v60);
    if (v30)
    {
      v15 = v30;
      sub_100012178("%s:%d: %s error getting cib %d @ %lld: %d\n", "spaceman_check_allocation_status_internal", 8902, (*(a1 + 384) + 212), v52 / *(v12 + 40), v29, v30);
      goto LABEL_57;
    }

    if (v9 < v18)
    {
      break;
    }

    v15 = 0;
LABEL_46:
    sub_100037058(v60);
    v60 = 0;
    if (!v15)
    {
      v17 = v51;
      v19 = v50;
      if (v9 < v18)
      {
        continue;
      }
    }

    goto LABEL_57;
  }

  v31 = v52 % *(v12 + 40);
  v32 = *(v60 + 56);
  while (1)
  {
    if (v31 >= *(v32 + 36))
    {
LABEL_42:
      v15 = 0;
LABEL_45:
      v11 = a2;
      goto LABEL_46;
    }

    v33 = v32 + 40 + 32 * v31;
    v34 = *(v33 + 24);
    if (!v34)
    {
      break;
    }

    v35 = sub_10003A1E8(*(a1 + 392), 0x40000000, v34, &xmmword_10006A960, 0, 0, 0, 0, &v59);
    if (v35)
    {
      v15 = v35;
      sub_100012178("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_check_allocation_status_internal", 8929, (*(a1 + 384) + 212), v52 / *(v12 + 40), v31, v34, v35);
      goto LABEL_45;
    }

    v36 = *(v59 + 56);
    v37 = *(v12 + 36);
    v38 = v9 % v37;
    v39 = v37 - v9 % v37;
    if (v18 - v9 >= v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = v18 - v9;
    }

    if (a3)
    {
      v42 = sub_10001BFA8(v36, v38, v40, v39);
      v43 = a3 & 2 | v42;
      v16 = v42 == 0;
      sub_100037058(v59);
      v59 = 0;
      if (!v43)
      {
        v15 = 0;
        v16 = 1;
        goto LABEL_53;
      }
    }

    else if ((a3 & 2) != 0)
    {
      *a7 += sub_10001C584(v36, 0, v38, v40 + v38);
      sub_100037058(v59);
      v59 = 0;
    }

    else
    {
      v16 = sub_10001BEB4(v36, v38, v40);
      sub_100037058(v59);
      v59 = 0;
      if (!v16)
      {
        goto LABEL_52;
      }
    }

LABEL_41:
    v9 += v40;
    ++v31;
    if (v9 >= v18)
    {
      goto LABEL_42;
    }
  }

  if (v53)
  {
    v41 = (*(v33 + 20) & 0xFFFFF) + v9 / *(v12 + 36) * *(v12 + 36) - v9;
    if (v18 - v9 >= v41)
    {
      v40 = v41;
    }

    else
    {
      v40 = v18 - v9;
    }

    v16 = 0;
    if (a7)
    {
      *a7 += v40;
    }

    goto LABEL_41;
  }

  v16 = 0;
LABEL_52:
  v15 = 0;
LABEL_53:
  v7 = a6;
LABEL_64:
  if (v61)
  {
    sub_100037058(v61);
  }

  if (v60)
  {
    sub_100037058(v60);
  }

  if (v59)
  {
    sub_100037058(v59);
  }

  *v7 = v16;
  return v15;
}

uint64_t sub_10004B638(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v9 = a1;
  v33 = a3;
  if (sub_100036630(a1) == 13)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v9 = v10[49];
  }

  v32 = 0xAAAAAAAAAAAAAAAALL;
  v34 = 0;
  v31 = 0;
  if (a3 < 1)
  {
    return 22;
  }

  v11 = sub_100042E24(v9, &v32);
  if (!v11)
  {
    v11 = sub_100047FA4(v32, a2, &v34, &v31, (*(*(v9 + 376) + 48) >> 1) & 1);
    v12 = v32;
    if (!v11)
    {
      pthread_mutex_lock(v32 + 6);
      v13 = v31;
      v14 = a2 & 0x30000;
      v15 = &v34;
      do
      {
        if (!v13)
        {
          pthread_mutex_unlock(v32 + 6);
          v11 = 28;
          goto LABEL_34;
        }

        v16 = *v15;
        if (!v14)
        {
          sub_100042DAC(0, v32);
        }

        v17 = sub_10004807C(v9, v10, v32, v16, a2, &v33, a4);
        --v13;
        v15 = (v15 + 4);
      }

      while (v17 == 7);
      v11 = v17;
      if (v17)
      {
        pthread_mutex_unlock(v32 + 6);
      }

      else
      {
        pthread_mutex_lock(v32 + 9);
        v18 = v32;
        v19 = v33;
        v20 = &v32->__sig + v16;
        v20[104] += v33;
        if ((a2 & 0x40) != 0)
        {
          v20[106] += v19;
        }

        if (v10)
        {
          v21 = v10[51] + v19;
          v10[51] = v21;
          v22 = v10[47];
          v23 = *(v22 + 72);
          if (v23)
          {
            v24 = *(v22 + 88);
            v25 = v23 >= v24;
            v26 = v23 - v24;
            if (!v25)
            {
              v26 = 0;
            }

            if (v26 < v21)
            {
              v21 = v26;
            }

            v27 = *&v18[13].__opaque[24] - v10[52];
            v10[52] = v21;
            *&v18[13].__opaque[24] = v27 + v21;
          }
        }

        if (v16 == 1)
        {
          v28 = 16;
        }

        else
        {
          v28 = 8;
        }

        v29 = v28 | a2 & 0x40;
        *a5 = v29;
        if (*&v18[25].__opaque[8])
        {
          *a5 = v29 | v14;
          if ((a2 & 0x10000) != 0)
          {
            *&v18[25].__opaque[24] += v19;
          }
        }

        pthread_mutex_unlock(v18 + 9);
        pthread_mutex_unlock(v32 + 6);
        v11 = 0;
      }

LABEL_34:
      v12 = v32;
    }

    sub_100037058(v12);
  }

  return v11;
}

uint64_t sub_10004B89C(uint64_t a1, unsigned int a2, unint64_t a3)
{
  if (sub_100036630(a1) == 13)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  if (v6)
  {
    v7 = v6[49];
  }

  v30 = 0xAAAAAAAAAAAAAAAALL;
  v8 = sub_100042E24(v7, &v30);
  if (!v8)
  {
    v9 = (a2 >> 4) & 1;
    pthread_mutex_lock((v30 + 384));
    pthread_mutex_lock((v30 + 576));
    if (*(v30 + 832 + 8 * v9) < *(v30 + 848 + 8 * v9))
    {
      v10 = "T2";
      if (!v9)
      {
        v10 = "Main";
      }

      v11 = *(v30 + 832);
      panic("%s, Reserved space < reserved metadata: %llu < %llu\n", v10, v11, *(v30 + 848));
    }

    v12 = v30;
    v13 = *(v30 + 848 + 8 * v9);
    if ((a2 & 0x40) != 0)
    {
      if (v13 < a3)
      {
        panic("reserved metadata space underflow: %lld (%lld)\n", *(v30 + 848 + 8 * v9), a3);
      }

      *(v30 + 848 + 8 * v9) = v13 - a3;
      *(v12 + 8 * v9 + 832) -= a3;
      if (!v6)
      {
LABEL_35:
        v21 = v30;
        if ((a2 & 0x10000) == 0)
        {
LABEL_42:
          pthread_mutex_unlock((v21 + 576));
          pthread_mutex_unlock((v30 + 384));
          sub_100037058(v30);
          return v8;
        }

LABEL_36:
        v26 = *(v21 + 1632);
        v23 = v26 >= a3;
        v27 = v26 - a3;
        if (v23)
        {
          *(v21 + 1632) = v27;
        }

        else
        {
          if (sub_100036630(a1) == 13)
          {
            v28 = (a1 + 4040);
          }

          else
          {
            v28 = (*(a1 + 384) + 212);
          }

          sub_100012178("%s:%d: %s entitled reserve: reserved space underflow: %lld (%lld)\n", "spaceman_unreserve", 9216, v28, *(v30 + 1632), a3);
          v21 = v30;
          *(v30 + 1632) = 0;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v14 = *(v30 + 832 + 8 * v9);
      if (v14 - v13 >= a3)
      {
        *(v30 + 832 + 8 * v9) = v14 - a3;
        if (!v6)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (sub_100036630(a1) == 13)
        {
          v15 = (a1 + 4040);
        }

        else
        {
          v15 = (*(a1 + 384) + 212);
        }

        sub_100012178("%s:%d: %s reserved space underflow: %lld (+meta:%llu) < %lld\n", "spaceman_unreserve", 9191, v15, *(v30 + 8 * v9 + 832) - v13, v13, a3);
        *(v30 + 8 * v9 + 832) = v13;
        if (!v6)
        {
          goto LABEL_35;
        }
      }
    }

    v16 = v6[51];
    v17 = v16 - a3;
    if (v16 < a3)
    {
      if (sub_100036630(a1) == 13)
      {
        v18 = (a1 + 4040);
      }

      else
      {
        v18 = (*(a1 + 384) + 212);
      }

      sub_100012178("%s:%d: %s fs reserved space underflow: %lld (%lld)\n", "spaceman_unreserve", 9200, v18, v6[51], a3);
      v17 = 0;
    }

    v6[51] = v17;
    v19 = v6[47];
    v20 = *(v19 + 72);
    v21 = v30;
    if (v20)
    {
      v22 = *(v19 + 88);
      v23 = v20 >= v22;
      v24 = v20 - v22;
      if (!v23)
      {
        v24 = 0;
      }

      if (v24 < v17)
      {
        v17 = v24;
      }

      v25 = *(v30 + 864) - v6[52];
      v6[52] = v17;
      *(v21 + 864) = v25 + v17;
    }

    if ((a2 & 0x10000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  return v8;
}

uint64_t sub_10004BB80(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v64 = 0xAAAAAAAAAAAAAAAALL;
  v10 = sub_100042E24(a1, &v64);
  if (!v10)
  {
    v11 = *&v64[5].__opaque[48];
    v10 = sub_10003BC6C(v64, 0, a5);
    if (!v10)
    {
      pthread_mutex_lock(v64 + 8);
      pthread_mutex_lock(v64 + 6);
      pthread_mutex_lock(v64 + 9);
      v14 = *(a2 + 376);
      v15 = *(v14 + 72);
      v16 = a3 - v15;
      if ((a3 - v15) < 0 && v11[23] < v15 - a3)
      {
        v12 = sub_1000033FC(a1);
LABEL_54:
        pthread_mutex_unlock(v64 + 9);
        pthread_mutex_unlock(v64 + 6);
        pthread_mutex_unlock(v64 + 8);
        sub_100037058(&v64->__sig);
        return v12;
      }

      if (a4 && a3 > a4)
      {
        sub_100012178("%s:%d: %s Quota %llu is smaller than reserve %llu\n");
LABEL_11:
        v12 = 22;
        goto LABEL_54;
      }

      if (a4)
      {
        v17 = *(a2 + 408) + *(v14 + 88);
        if (v17 > a4)
        {
          sub_100012178("%s:%d: %s Quota %llu is smaller than what's currently allocated and reserved %llu\n", "spaceman_fs_bounds_set", 9281, (a2 + 4040), a4, v17);
          v12 = 69;
          goto LABEL_54;
        }
      }

      if (v16 < 1)
      {
        if (v16 < 0)
        {
          v59 = *&v64[25].__opaque[8];
          if (v59)
          {
            v60 = v15 - *(v14 + 88);
            if (v60 >= 1)
            {
              v61 = *&v64[25].__opaque[16];
              if (v61 < v59)
              {
                if (v60 >= v15 - a3)
                {
                  v60 = v15 - a3;
                }

                v62 = v61 + v60;
                if (v62 >= v59)
                {
                  v62 = *&v64[25].__opaque[8];
                }

                *&v64[25].__opaque[16] = v62;
              }
            }
          }
        }
      }

      else
      {
        sub_100042DAC(a1, v64);
        v18 = *&v64[5].__opaque[48];
        v19 = v18[30] + v18[9] + *&v64[15].__opaque[16] + v18[15] + v18[35] + *&v64[15].__opaque[24];
        v21 = v18[23];
        v20 = v18[24];
        v22 = v21 >= v20;
        v23 = v21 - v20;
        if (!v22)
        {
          v23 = 0;
        }

        v24 = *v64[13].__opaque + v64[13].__sig;
        v25 = *&v64[13].__opaque[24];
        v22 = v24 >= v25;
        v26 = v24 - v25;
        if (!v22)
        {
          v26 = 0;
        }

        v27 = v26 + v23;
        v22 = v19 >= v27;
        v28 = v19 - v27;
        if (v22)
        {
          v29 = v28;
        }

        else
        {
          v29 = 0;
        }

        v30 = *&v64[25].__opaque[8];
        if (v30)
        {
          v31 = *&v64[25].__opaque[24];
          v22 = v26 >= v31;
          v32 = v26 - v31;
          if (!v22)
          {
            v32 = 0;
          }

          v33 = *&v64[25].__opaque[16];
          v34 = *&v64[25].__opaque[32];
          v22 = v33 >= v34;
          v35 = v33 - v34;
          if (!v22)
          {
            v35 = 0;
          }

          v22 = v35 >= v31;
          v36 = v35 - v31;
          if (!v22)
          {
            v36 = 0;
          }

          v37 = *&v64[25].__opaque[40];
          v38 = *&v64[25].__opaque[48];
          v22 = v37 >= v38;
          v39 = v37 - v38;
          if (!v22)
          {
            v39 = 0;
          }

          v22 = v39 >= v32;
          v40 = v39 - v32;
          if (!v22)
          {
            v40 = 0;
          }

          v41 = v40 + v36;
          v22 = v29 >= v41;
          v42 = v29 - v41;
          if (!v22)
          {
            v42 = 0;
          }

          v29 = v42 + v40;
        }

        else
        {
          v40 = 0;
          v42 = 0;
        }

        if (v16 > v29)
        {
          goto LABEL_53;
        }

        v56 = v11[12] + v11[6];
        v57 = 50;
        if (v56 >> 2 > 0x4FA)
        {
          v57 = v56 / 0x64;
        }

        if (v11[23] + v16 > v56 - v57)
        {
          v63 = v11[23];
          sub_100012178("%s:%d: %s %llu blocks are already reserved in container, Cannot reserve more than %llu blocks in the container\n");
          goto LABEL_11;
        }

        if (v30)
        {
          v58 = v16 - v42;
          if (v16 > v42)
          {
            if (v58 > v40)
            {
LABEL_53:
              v12 = 28;
              goto LABEL_54;
            }

            *&v64[25].__opaque[48] += v58;
          }
        }
      }

      v43 = v11[23] + v16;
      v44 = *(a2 + 376);
      v45 = v44[11];
      if (v44[9] >= v45)
      {
        v46 = v44[11];
      }

      else
      {
        v46 = v44[9];
      }

      if (v45 >= a3)
      {
        v47 = a3;
      }

      else
      {
        v47 = v44[11];
      }

      v48 = v11[24] + v47;
      v44[9] = a3;
      v11[23] = v43;
      v11[24] = v48;
      v49 = v48 - v46;
      if (v48 < v46)
      {
        sub_100012178("%s:%d: %s sm_fs_reserve_alloc_count underflow, sm_fs_reserve_alloc_count %lld, new fs_reserve_block_count %lld, old fs_reserve_block_count %lld alloc_count %lld\n", "spaceman_fs_bounds_set", 9375, (a2 + 4040), v48, a3, v15, v45);
        v49 = 0;
        v44 = *(a2 + 376);
      }

      v11[24] = v49;
      v44[10] = a4;
      sub_10003D180(v64, a5, 0);
      sub_100019634(a2, a5);
      v12 = 0;
      v50 = *(a2 + 376);
      v51 = *(v50 + 72);
      v52 = *(v50 + 88);
      v22 = v51 >= v52;
      v53 = v51 - v52;
      if (!v22)
      {
        v53 = 0;
      }

      v54 = *(a2 + 416);
      if (v53 >= *(a2 + 408))
      {
        v53 = *(a2 + 408);
      }

      v55 = v64;
      *(a2 + 416) = v53;
      *&v55[13].__opaque[24] += v53 - v54;
      goto LABEL_54;
    }
  }

  return v10;
}

uint64_t sub_10004BFAC(void *a1, uint64_t a2, unint64_t a3)
{
  v28 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_100042E24(a1, &v28);
  if (!result)
  {
    v6 = *&v28[5].__opaque[48];
    result = sub_10003BC6C(v28, 0, a3);
    if (!result)
    {
      pthread_mutex_lock(v28 + 6);
      pthread_mutex_lock(v28 + 9);
      v7 = *(a2 + 376);
      v8 = v7[9];
      v9 = v7[11];
      if (v9)
      {
        v10 = sub_100038018(a2);
        sub_100012178("%s:%d: %s file system %lld alloc block count is not zero: %lld/%lld\n", "spaceman_fs_bounds_clear", 9426, (a2 + 4040), v10, v9, v8);
        v7 = *(a2 + 376);
        if (v7[9])
        {
          goto LABEL_8;
        }
      }

      else
      {
        v11 = v7[9];
        if (v8)
        {
          goto LABEL_8;
        }
      }

      if (!v7[10])
      {
        v20 = v28;
LABEL_25:
        pthread_mutex_unlock(v20 + 9);
        pthread_mutex_unlock(v28 + 6);
        sub_100037058(&v28->__sig);
        return 0;
      }

LABEL_8:
      if (v9 >= v8)
      {
        v9 = v8;
      }

      v12 = *(v6 + 184);
      if (v12 < v8)
      {
        v13 = sub_100038018(a2);
        sub_100012178("%s:%d: %s file system %lld fs reserve block count %lld larger than global fs reserve block count %lld\n", "spaceman_fs_bounds_clear", 9442, (a2 + 4040), v13, v8, *(v6 + 184));
        v12 = *(v6 + 184);
        v8 = v12;
      }

      *(v6 + 184) = v12 - v8;
      v14 = *(v6 + 192);
      if (v14 < v9)
      {
        v15 = sub_100038018(a2);
        sub_100012178("%s:%d: %s file system %lld fs reserve alloc count %lld larger than global fs reserve alloc count %lld\n", "spaceman_fs_bounds_clear", 9449, (a2 + 4040), v15, v9, *(v6 + 192));
        v14 = *(v6 + 192);
        v9 = v14;
      }

      *(v6 + 192) = v14 - v9;
      p_sig = &v28->__sig;
      v17 = *&v28[25].__opaque[8];
      if (v17)
      {
        if (v8 > v9)
        {
          v18 = *&v28[25].__opaque[16];
          if (v18 < v17)
          {
            if (v8 - v9 + v18 < v17)
            {
              v17 = v8 - v9 + v18;
            }

            *&v28[25].__opaque[16] = v17;
          }
        }
      }

      v19 = *(a2 + 376);
      *(v19 + 72) = 0;
      *(v19 + 80) = 0;
      sub_10003D180(p_sig, a3, 0);
      sub_100019634(a2, a3);
      v20 = v28;
      v21 = *(a2 + 376);
      v22 = *(v21 + 72);
      v23 = *(v21 + 88);
      v24 = v22 >= v23;
      v25 = v22 - v23;
      if (!v24)
      {
        v25 = 0;
      }

      v26 = *(a2 + 416);
      if (v25 >= *(a2 + 408))
      {
        v25 = *(a2 + 408);
      }

      v27 = *&v28[13].__opaque[24];
      *(a2 + 416) = v25;
      *&v20[13].__opaque[24] = v25 - v26 + v27;
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t sub_10004C1DC(void *a1, unint64_t a2)
{
  v2 = a1[47];
  if (!*(v2 + 1248))
  {
    return 0;
  }

  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v5 = sub_100042E24(a1, &v10);
  if (!v5)
  {
    v6 = *&v10[5].__opaque[48];
    v5 = sub_10003BC6C(v10, 0, a2);
    p_sig = &v10->__sig;
    if (!v5)
    {
      pthread_mutex_lock(v10 + 8);
      pthread_mutex_lock(v10 + 6);
      v5 = sub_10004B0C8(a1, v10, 2, *(v2 + 1240), *(v2 + 1248), &v11, &v9);
      pthread_mutex_lock(v10 + 9);
      *(v6 + 72) += v9;
      pthread_mutex_unlock(v10 + 9);
      *(a1[47] + 1240) = 0u;
      pthread_mutex_unlock(v10 + 6);
      pthread_mutex_unlock(v10 + 8);
      sub_10003D180(v10, a2, 0);
      p_sig = &v10->__sig;
    }

    sub_100037058(p_sig);
  }

  return v5;
}

BOOL sub_10004C308(_BOOL8 result, _DWORD *a2, uint64_t a3)
{
  v3 = *(result + 376);
  v4 = *(result + 1496);
  v10 = 0;
  v11 = 0;
  if (v4)
  {
    v7 = *(result + 1592);
    if (v7)
    {
      ++*(v7 + 112);
    }

    if (*(v3 + 56) - 1 == a3)
    {
      v8 = *(v3 + 48) % *(v3 + 36);
    }

    else
    {
      v8 = *(v3 + 36);
    }

    *(v4 + 4 * a3) = (*(v4 + 4 * a3) & 0xFEFFFFFF | ((*a2 & 1) << 24)) ^ 0x1000000;
    result = sub_10001C574(a2, 0xFFFFFFLL, 0, v8, &v11, &v10);
    if (v8 < 0x40 || (*&a2[2 * (v8 >> 6) - 2] & 0x8000000000000000) != 0)
    {
      v9 = *(v4 + 4 * a3) & 0xFDFFFFFF;
    }

    else
    {
      v9 = *(v4 + 4 * a3) | 0x2000000;
    }

    *(v4 + 4 * a3) = v9 & 0xFF000000 | v10 & 0xFFFFFF;
  }

  return result;
}

uint64_t sub_10004C3F0(uint64_t result, uint64_t a2)
{
  if (a2 && *(a2 + 62) == 1 && (*(a2 + 63) & 1) == 0)
  {
    v3 = result;
    v7.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v7.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v7);
    tv_sec = v7.tv_sec;
    tv_nsec = v7.tv_nsec;
    *a2 = v7.tv_sec;
    tv_nsec /= 1000;
    *(a2 + 8) = tv_nsec;
    v6 = 1000000 * tv_sec + tv_nsec;
    *(a2 + 32) = v6;
    if (v6 - *(a2 + 24) >= 1000 * *(a2 + 60))
    {
      atomic_fetch_add_explicit((*(v3 + 384) + 152), 1uLL, memory_order_relaxed);
      ++*(a2 + 56);
      *(a2 + 24) = *(a2 + 32);
    }
  }

  return result;
}

uint64_t sub_10004C4C8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a2 + 376);
  v6 = *(v5 + 164) & 0x7FFFFFFF;
  if (v6 <= a3)
  {
    return 22;
  }

  v7 = *(v5 + 322);
  if (v7 == 0xFFFF)
  {
    v8 = *(a2 + 888);
    goto LABEL_7;
  }

  if (v6 > v7)
  {
    v8 = *(a2 + 888);
    *(v8 + 2 * *(v5 + 322)) = a3;
LABEL_7:
    *(v8 + 2 * a3) = -1;
    *(v5 + 322) = a3;
    if (*(v5 + 320) == -1)
    {
      *(v5 + 320) = a3;
    }

    sub_10003D180(a2, a4, 0);
    return 0;
  }

  return sub_1000033FC(a1);
}

uint64_t sub_10004C570(uint64_t result, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v4 = *(a2 + 376) + 40 * a3;
  v6 = *(v4 + 200);
  v5 = (v4 + 200);
  v7 = v6 - a4;
  if (v6 >= a4)
  {
    *v5 = v7;
  }

  else
  {
    v11 = result;
    result = sub_100011490(result);
    if (result)
    {
      result = sub_100012178("%s:%d: %s sfq %d count underflow %lld - %lld\n", "spaceman_decrement_free_queue_count", 6155, (*(v11 + 384) + 212), a3, *(*(a2 + 376) + 40 * a3 + 200), a4);
    }

    *(*(a2 + 376) + 40 * a3 + 200) = 0;
  }

  return result;
}

uint64_t sub_10004C630(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  v7 = *(*(a2 + 376) + 152);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_100046824(a1, a2, a3, &v9);
  if (result == 2)
  {
    return 22;
  }

  if (result)
  {
    return result;
  }

  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) <= a4 || v9 > (v7 & 0x7FFFFFFFFFFFFFFFuLL) - a4)
  {
    return 22;
  }

  result = 0;
  if (a5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t sub_10004C6B4(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  if (a3)
  {
    if (!*(a2 + 1540))
    {
      return result;
    }

    pthread_mutex_unlock((a2 + 512));
    v10 = *(a2 + 1540) + 16;
    v11 = 16;
  }

  else
  {
    if (!*(a2 + 1542))
    {
      return result;
    }

    pthread_mutex_unlock((a2 + 448));
    v11 = 0;
    v10 = *(a2 + 1542);
  }

  sub_10004C3F0(v9, a4);
  v12 = v10;
  if (v11 < v10)
  {
    v13 = 16 * v11;
    v14 = v10 - v11;
    do
    {
      v15 = (*(a2 + 1544) + v13);
      v16 = *v15;
      v17 = v15[1];
      sub_100050900(v9[48]);
      v13 += 16;
      --v14;
    }

    while (v14);
  }

  sub_10005090C(v9[48]);
  if (a3)
  {
    pthread_mutex_lock((a2 + 512));
    v18 = 384;
  }

  else
  {
    v18 = 448;
  }

  result = pthread_mutex_lock((a2 + v18));
  if (v11 < v10)
  {
    v19 = 16 * v11;
    v20 = v12 - v11;
    do
    {
      v21 = (*(a2 + 1544) + v19);
      v22 = *v21;
      v23 = v21[1];
      if (a3)
      {
        result = sub_10004CA58(v9, a2, v22, v23, 1, a5);
      }

      else
      {
        result = sub_10004C818(v9, a2, v22, v23, a5);
      }

      v19 += 16;
      --v20;
    }

    while (v20);
  }

  if (a3)
  {
    result = pthread_mutex_unlock((a2 + 384));
    *(a2 + 1560) = 0;
    *(a2 + 1540) = 0;
  }

  else
  {
    *(a2 + 1552) = 0;
    *(a2 + 1542) = 0;
  }

  return result;
}

uint64_t sub_10004C818(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2[47];
  v26 = 0;
  result = sub_10004D1DC(a1, a5);
  if (result)
  {
    v27 = 0xAAAAAAAAAAAAAAAALL;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    v25 = 0xAAAAAAAAAAAAAAAALL;
    result = sub_10004C630(a1, a2, a3, a4, &v27);
    if (result)
    {
      v21 = *(a1 + 384) + 212;
      if (result == 22)
      {
        return sub_100012178("%s:%d: %s attempt to free block(s) outside of internal pool: 0x%llx:0x%llx\n");
      }

      else
      {
        return sub_100012178("%s:%d: %s Error mapping freed IP block range 0x%llx:0x%llx to index: %d\n");
      }
    }

    else
    {
      v12 = 8 * *(v10 + 32);
      if (v12)
      {
        v13 = a4 < 1;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        v14 = v12;
        v15 = v27;
        v22 = v10;
        do
        {
          v16 = v15 / v14;
          v17 = *(a2[110] + 2 * (v15 / v14));
          result = sub_100042DE8(a1, v10, v17, &v25);
          if (result)
          {
            break;
          }

          result = sub_10003A1E8(*(a1 + 392), 1073741825, v25, &xmmword_10006A960, 0, 0, 0, a5, &v26);
          if (result)
          {
            break;
          }

          v18 = *(v26 + 56);
          v19 = v27 % v14;
          if (a4 >= (v14 - v27 % v14))
          {
            v20 = v14 - v27 % v14;
          }

          else
          {
            v20 = a4;
          }

          if (*(a2[109] + 8 * v16) != a5)
          {
            v24 = 0;
            v23 = 0;
            if (sub_10004227C(a1, a2, a5, &v24, &v23) || sub_10004C4C8(a1, a2, v17, a5))
            {
              return sub_100037058(v26);
            }

            v25 = v24;
            *(a2[110] + 2 * v16) = v23;
            *(a2[109] + 8 * v16) = a5;
          }

          sub_10001C18C(v18, v19, v20);
          sub_10003D180(v26, a5, v25);
          result = sub_100037058(v26);
          v15 = v27 + v20;
          v27 += v20;
          v13 = a4 <= v20;
          a4 -= v20;
          v10 = v22;
        }

        while (!v13);
      }
    }
  }

  return result;
}

uint64_t sub_10004CA58(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6)
{
  if (a4)
  {
    sub_10002FEB4(a1, a2, a3);
  }

  v12 = sub_10004988C(a1, 0, a2, a3, a4, a6, 1, a5);
  if (!v12)
  {
    sub_10002A8DC(*(a2 + 1576), 0, a3, a4);
  }

  return v12;
}

unint64_t sub_10004CAF4(unint64_t result, unsigned int a2, unint64_t a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = result;
  v8 = *(result + 376);
  v9 = a2;
  v10 = *(v8 + 48 * a2 + 56);
  v11 = a4[1];
  v12 = *(v8 + 36);
  v13 = *a4 / v12;
  v14 = result + 1496;
  v15 = *(*(result + 1496 + 8 * a2) + 4 * v13) & 0xFFFFFF;
  if (a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = *(v8 + 48 * a2 + 56);
  }

  if (v10 < v16)
  {
    v16 = *(v8 + 48 * a2 + 56);
  }

  if (v12 >= 0xFFFFFF)
  {
    v17 = 0xFFFFFF;
  }

  else
  {
    v17 = *(v8 + 36);
  }

  if (v15 == v17 || v16 < 2)
  {
    v19 = *a4 / v12;
    LODWORD(v20) = *(*(result + 1496 + 8 * a2) + 4 * v13) & 0xFFFFFF;
    goto LABEL_37;
  }

  v21 = v16 - 1;
  v22 = v13 + 1;
  v23 = *(*(result + 1496 + 8 * a2) + 4 * v13) & 0xFFFFFF;
  v24 = *a4 / v12;
  do
  {
    v19 = v22 % v10;
    v25 = *(v14 + 8 * v9);
    v26 = *(v25 + 4 * (v22 % v10));
    LODWORD(v20) = v26 & 0xFFFFFF;
    if ((v26 & 0xFFFFFFu) > v15)
    {
      v13 = v22 % v10;
      v15 = v26 & 0xFFFFFF;
    }

    if (v20 > v23)
    {
      if (*(v6 + 16) == 1)
      {
        if ((v26 & 0xC000000) != 0)
        {
          goto LABEL_34;
        }

        v27 = *(v7 + 376);
        v28 = v27 + 48 * v9;
        v29 = *(v28 + 56);
        if (v29 > v19)
        {
          v30 = v6[4];
          if (v30)
          {
            v46 = v24;
            v47 = v7;
            v49 = v11;
            v50 = v8;
            v31 = *(v27 + 36);
            v32 = v31;
            if (v29 - 1 == v19)
            {
              v32 = *(v28 + 48) % v31;
            }

            v48 = v6;
            result = sub_100011DE8(v19 * v31, v32, v6[3], v30, 0);
            v6 = v48;
            v11 = v49;
            v8 = v50;
            v24 = v46;
            v7 = v47;
            if (result)
            {
              goto LABEL_34;
            }

            LODWORD(v20) = *(v25 + 4 * v19) & 0xFFFFFF;
          }
        }
      }

      LODWORD(v12) = *(v8 + 36);
      if (v12 >= 0xFFFFFF)
      {
        v33 = 0xFFFFFF;
      }

      else
      {
        v33 = *(v8 + 36);
      }

      if (v11 <= v20 || v20 == v33)
      {
        goto LABEL_36;
      }

      v24 = v22 % v10;
      v23 = v20;
    }

LABEL_34:
    ++v22;
    --v21;
  }

  while (v21);
  LODWORD(v12) = *(v8 + 36);
  v19 = v24;
  LODWORD(v20) = v23;
LABEL_36:
  v12 = v12;
  v5 = a5;
LABEL_37:
  v35 = v19 * v12;
  if (v11 >= v20)
  {
    v20 = v20;
  }

  else
  {
    v20 = v11;
  }

  *v5 = v35;
  *(v5 + 8) = v20;
  if (*(v6 + 16) == 1)
  {
    v36 = *(v7 + 376);
    v37 = v36 + 48 * v9;
    v38 = *(v37 + 56);
    if (v38 > v19 && (v39 = v6[4]) != 0)
    {
      v40 = *(v36 + 36);
      v41 = v19 * v40;
      v42 = v11;
      v43 = v8;
      if (v38 - 1 == v19)
      {
        v40 = *(v37 + 48) % v40;
      }

      result = sub_100011DE8(v41, v40, v6[3], v39, 0);
      v44 = result == 0;
      v8 = v43;
      v11 = v42;
    }

    else
    {
      v44 = 1;
    }
  }

  else
  {
    v44 = 0;
  }

  *(v5 + 16) = v44;
  if (v19 != v13)
  {
    v45 = v15;
    if (v11 < v15)
    {
      v45 = v11;
    }

    *(v5 + 24) = v13 * *(v8 + 36);
    *(v5 + 32) = v45;
    *(v5 + 40) = 0;
  }

  return result;
}

uint64_t sub_10004CD70(uint64_t a1, pthread_mutex_t *a2, unint64_t a3, uint64_t a4)
{
  v8 = 22;
  if (sub_10004D1DC(a1, a4))
  {
    pthread_mutex_lock(a2 + 7);
    v9 = sub_100046824(a1, a2, a3, &v11);
    if (v9 == 2)
    {
      v8 = 22;
    }

    else
    {
      v8 = v9;
    }

    if (!v8)
    {
      v8 = sub_10004ACF0(a1, a2, 0, a3, 1, a4);
    }

    pthread_mutex_unlock(a2 + 7);
  }

  return v8;
}

uint64_t sub_10004CE18(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(*(a1 + 376) + 36);
  v7 = sub_1000122F4(1uLL, 0x130uLL, 0x10A0040BC325467uLL);
  if (v7)
  {
    v8 = v7;
    v7[1].__sig = a2;
    *v7[1].__opaque = 0;
    *&v7[1].__opaque[40] = 0;
    *&v7[1].__opaque[8] = 0;
    *&v7[1].__opaque[12] = (v6 - 40) / 0x28uLL;
    *&v7[1].__opaque[48] = v7 + 112;
    v7[2].__sig = 0;
    *v7[2].__opaque = v7 + 2;
    v9 = sub_100011924(v7);
    if (!v9)
    {
      v11 = sub_10001193C((v8 + 256));
      if (v11)
      {
        v10 = v11;
        j__pthread_mutex_destroy(v8);
        goto LABEL_7;
      }

      if ((*(a1 + 627) & 1) != 0 || (v9 = sub_10004CF34(v8, v6), !v9))
      {
        v10 = 0;
        v13 = *(a1 + 376);
        v14 = *(v13 + 104) & 0x7FFFFFFF7FFFFFFFLL;
        *(v8 + 88) = v14;
        *(v8 + 96) = *(v13 + 128);
        *(v8 + 104) = v14;
        *a3 = v8;
        return v10;
      }
    }

    v10 = v9;
LABEL_7:
    sub_1000123F8(v8, 304);
    return v10;
  }

  return 12;
}

uint64_t sub_10004CF34(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  v4 = (a1 + 120);
  v5 = 4;
  while (1)
  {
    v6 = sub_1000122F4(1uLL, 0x78uLL, 0x10A004067E43129uLL);
    if (!v6)
    {
      break;
    }

    v7 = v6;
    v6[7] = sub_100012434(v3, 0x256D25E1uLL);
    v7[8] = sub_100012434(v3, 0x60A3118CuLL);
    v8 = *v4;
    *v7 = 0;
    v7[1] = v8;
    *v8 = v7;
    *v4 = v7;
    if (!v7[7] || !v7[8])
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  while (1)
  {
    v15 = *(a1 + 112);
    if (!v15)
    {
      break;
    }

    v10 = *v15;
    v11 = v15[1];
    v12 = (*v15 + 8);
    if (!*v15)
    {
      v12 = v4;
    }

    *v12 = v11;
    *v11 = v10;
    v13 = v15[7];
    if (v13)
    {
      sub_1000123F8(v13, v3);
    }

    v14 = v15[8];
    if (v14)
    {
      sub_1000123F8(v14, v3);
    }

    sub_1000123F8(v15, 120);
  }

  return 12;
}

void sub_10004D040(uint64_t a1, void *a2, unsigned int a3)
{
  v6 = a2[18];
  if (v6)
  {
    sub_100012178("%s:%d: %s Trash unfinished tx xid=0x%llx\n", "tx_mgr_free_tx", 187, (*(a1 + 384) + 212), *(v6 + 16));
    v7 = a2[18];
    v8 = a2[15];
    *v7 = 0;
    v7[1] = v8;
    *v8 = v7;
    a2[15] = v7;
    a2[18] = 0;
  }

  v9 = a2[16];
  if (v9)
  {
    sub_100012178("%s:%d: %s Trash unfinished pending tx, xid range = 0x%llx - 0x%llx\n", "tx_mgr_free_tx", 195, (*(a1 + 384) + 212), *(v9 + 16), *(**(a2[17] + 8) + 16));
    v10 = a2[16];
    if (v10)
    {
      *a2[15] = v10;
      *(a2[16] + 8) = a2[15];
      a2[15] = a2[17];
      a2[16] = 0;
      a2[17] = a2 + 16;
    }
  }

  v11 = a2[14];
  if (v11)
  {
    v12 = a2 + 15;
    do
    {
      v14 = *v11;
      v13 = v11[1];
      v15 = (*v11 + 8);
      if (!*v11)
      {
        v15 = v12;
      }

      *v15 = v13;
      *v13 = v14;
      v16 = v11[7];
      if (v16)
      {
        sub_1000123F8(v16, a3);
      }

      v17 = v11[8];
      if (v17)
      {
        sub_1000123F8(v17, a3);
      }

      sub_1000123F8(v11, 120);
      v11 = v14;
    }

    while (v14);
  }
}

void sub_10004D190(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_10004D040(a1, a2, a3);
  j__pthread_mutex_destroy(a2);
  sub_100011944((a2 + 256));

  sub_1000123F8(a2, 304);
}

BOOL sub_10004D1DC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 624) == 1)
  {
    v2 = (*(a1 + 376) + 96);
    return *v2 == a2;
  }

  v3 = *(a1 + 400);
  if (v3)
  {
    v4 = *(v3 + 144);
    if (v4)
    {
      v2 = (v4 + 16);
      return *v2 == a2;
    }
  }

  return 0;
}

uint64_t sub_10004D220(void *a1, int a2)
{
  v4 = a1[50];
  v5 = *(a1[47] + 36);
  v6 = sub_1000122F4(1uLL, v5, 0x7BA1CA01uLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (a2)
  {
    v8 = *(v4 + 96);
    while (1)
    {
      v12 = -1;
      v9 = sub_10001124C(a1, v8, &v12);
      if (v9)
      {
        break;
      }

      v9 = sub_100050A5C(a1[48]);
      if (v9)
      {
        break;
      }

      v8 = (*(v4 + 96) + 1) % *(v4 + 88);
      *(v4 + 96) = v8;
      if (!--a2)
      {
        goto LABEL_7;
      }
    }

    v10 = v9;
    sub_100012178("%s:%d: %s failed to zero checkpoint descriptor block %d @ %lld: %d\n", "tx_checkpoint_desc_zero", 392, (a1[48] + 212), *(v4 + 96), v12, v9);
  }

  else
  {
LABEL_7:
    v10 = 0;
  }

  sub_1000123F8(v7, v5);
  return v10;
}

uint64_t sub_10004D34C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = 0;
  v7 = *(a1 + 400);
  while (1)
  {
    v8 = *(v7 + 96);
    v9 = *(v7 + 104);
    v10 = v9;
    if (v8 > v9)
    {
      v10 = *(v7 + 88) + v9;
    }

    v11 = *(v7 + 100);
    v12 = *(v7 + 108);
    v13 = v12;
    if (v11 > v12)
    {
      v13 = *(v7 + 92) + v12;
    }

    v14 = v10 - v8;
    v15 = v13 - v11;
    v16 = *(a2 + 48) + a3;
    if (v16 <= v15 && !(v6 & 1 | (*(a2 + 40) + 1 > v14)))
    {
      return 0;
    }

    if ((v6 & 1) != 0 || !*(v7 + 128))
    {
      break;
    }

    sub_10004D470(a1, 80, 0);
    v6 = 1;
  }

  if (!*(v7 + 82))
  {
    sub_100012178("%s:%d: %s checkpoint area out of space: stable: %d %d - next %d %d available %d %d tx[%lld] %d %d\n", "tx_checkpoint_space_check", 493, (*(a1 + 384) + 212), v9, v12, v8, v11, v14, v15, *(a2 + 16), *(a2 + 40) + 1, v16);
  }

  *(v7 + 82) = 1;
  return 28;
}

uint64_t sub_10004D470(uint64_t a1, char a2, int a3)
{
  v5 = *(a1 + 400);
  if ((a2 & 0x40) != 0)
  {
    v6 = *(v5 + 128);
    if (!v6 || (*(v6 + 24) & 0x40) == 0)
    {
      return 0;
    }
  }

  if (a3)
  {
    pthread_mutex_unlock(*(a1 + 400));
  }

  v7 = sub_1000508F4(*(a1 + 384));
  if (a3)
  {
    pthread_mutex_lock(v5);
  }

  if (v7 == 25 || v7 == 0)
  {
    v9 = *(v5 + 128);
    if (v9)
    {
      do
      {
        v10 = *v9;
        v11 = *(v9 + 6);
        if ((v11 & 0x40) != 0)
        {
          *(v9 + 6) = v11 & 0xFFFFFFBF;
          v21.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v21.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v21);
          v12 = 1000000 * v21.tv_sec + SLODWORD(v21.tv_nsec) / 1000;
          v13 = v12 - v9[9];
          v9[9] = v12;
          v9[13] += v13;
          v14 = v9[2];
          if (*(a1 + 632) != 1 || v14 < *(*(a1 + 376) + 1408))
          {
            v15 = *(v9 + 11);
            *(v5 + 104) = *(v9 + 9);
            *(v5 + 108) = v15;
          }

          sub_10004430C(a1, v14);
          v16 = *v9;
          v17 = v9[1];
          v18 = (*v9 + 8);
          if (!*v9)
          {
            v18 = (v5 + 136);
          }

          *v18 = v17;
          *v17 = v16;
          v19 = *(v5 + 120);
          *v9 = 0;
          v9[1] = v19;
          *v19 = v9;
          *(v5 + 120) = v9;
          j__pthread_cond_broadcast((v5 + 256));
        }

        v9 = v10;
      }

      while (v10);
    }

    return 0;
  }

  return v7;
}

uint64_t sub_10004D5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*(a1 + 376) + 36) + *(a3 + 48) - 1) / *(*(a1 + 376) + 36);
  v6 = *(a2 + 64);
  if (*(v6 + 36) == *(*(a1 + 400) + 84))
  {
    ++*(a2 + 40);
    *(v6 + 36) = 0;
  }

  v7 = sub_10004D34C(a1, a2, v5);
  if (!v7)
  {
    if ((*(a3 + 19) & 0x20) == 0)
    {
      v10 = *(a3 + 56);
      v8.i64[0] = *(a3 + 36);
      v10[3] = v8.i64[0];
      v11 = *(a2 + 16);
      v10[1] = *(a3 + 112);
      v10[2] = v11;
      sub_10003D4A0(a3, v8, v9);
    }

    *(a3 + 120) = *(a2 + 16);
    *(a3 + 144) = 0;
    ++*(*(a2 + 64) + 36);
    *(a2 + 48) += v5;
  }

  return v7;
}

uint64_t sub_10004D6CC(void *a1, uint64_t a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v8 = a1[50];
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  v9 = *(a1[47] + 36);
  v10 = *(a3 + 48);
  v11 = *(a2 + 64);
  if (*(v11 + 36) == v8[21])
  {
    sub_10003D4D4(a1, v11, *(a1[47] + 36), a4, a5);
    v12 = *(*(a2 + 64) + 8);
    v13 = sub_100050A5C(a1[48]);
    if (v13)
    {
      v14 = v13;
      if (!v8[19])
      {
        v41 = *(*(a2 + 64) + 8);
        v37 = a1[48] + 212;
        sub_100012178("%s:%d: %s failed to write checkpoint map block %lld: %d\n");
      }

      return v14;
    }

    v15 = (*(a2 + 40) + v8[24]) % v8[22];
    v46 = -1;
    v16 = sub_10001124C(a1, v15, &v46);
    if (v16)
    {
      v14 = v16;
      if (!v8[19])
      {
        v38 = a1[48] + 212;
        sub_100012178("%s:%d: %s error getting next checkpoint map block address %d: %d\n");
      }

      return v14;
    }

    bzero(*(a2 + 64), v9);
    v17 = *(a2 + 64);
    *(v17 + 24) = 1073741836;
    v18 = *(a2 + 16);
    *(v17 + 8) = v46;
    *(v17 + 16) = v18;
    ++*(a2 + 40);
  }

  v19 = (*(a2 + 48) + v8[25]) % v8[23];
  v45 = -1;
  v20 = sub_100011290(a1, v19, &v45, &v44);
  if (v20)
  {
    v14 = v20;
    if (!v8[19])
    {
      v39 = a1[48] + 212;
      sub_100012178("%s:%d: %s error getting next checkpoint data block address %d: %d\n");
    }
  }

  else
  {
    v21 = (v9 + v10 - 1) / v9;
    pthread_mutex_lock((a1[49] + 328));
    for (i = (a3 + 32); (atomic_fetch_or_explicit(i, 8u, memory_order_relaxed) & 8) != 0; i = (a3 + 32))
    {
      pthread_mutex_unlock((a1[49] + 328));
      pthread_mutex_lock((a1[49] + 328));
    }

    v42 = *(a3 + 64);
    *(a3 + 128) = v45;
    v43 = v21;
    if (v21 < 1)
    {
LABEL_27:
      if (v42 == *(a3 + 56))
      {
        v27 = 0;
      }

      else
      {
        v27 = v42;
      }

      *(a3 + 64) = 0;
      v28 = a1[49];
      v29 = *(*(v28 + 872) + 104);
      *(v28 + 872) = v29;
      if (!v29)
      {
        *(v28 + 880) = v28 + 872;
      }

      *(a3 + 104) = 3735928559;
      atomic_fetch_and_explicit((a3 + 32), 0xFFFFFFF7, memory_order_relaxed);
      pthread_mutex_unlock((a1[49] + 328));
      v30 = *(a2 + 64);
      v31 = *(v30 + 36);
      v32 = v30 + 40 * v31;
      *(v32 + 40) = *(a3 + 36);
      *(v32 + 48) = *(a3 + 48);
      v33 = *(a3 + 8);
      if (v33)
      {
        v33 = sub_100038018(v33);
        v30 = *(a2 + 64);
        v31 = *(v30 + 36);
      }

      v34 = (v30 + 40 * v31);
      v35 = *(a3 + 112);
      v34[7] = v33;
      v34[8] = v35;
      v34[9] = *(a3 + 128);
      *(v30 + 36) = v31 + 1;
      *(a2 + 48) += v43;
      if (v27)
      {
        sub_10003518C(v27, *(a3 + 48), *(a3 + 16), a1[49]);
      }

      return 0;
    }

    else
    {
      v23 = v42;
      v24 = v43;
      while (1)
      {
        v25 = v44 >= v24 ? v24 : v44;
        v26 = sub_100050A5C(a1[48]);
        if (v26)
        {
          break;
        }

        v24 -= v25;
        if (!v24)
        {
          goto LABEL_27;
        }

        v19 = v19 + v25 >= (*(a1[47] + 108) & 0x7FFFFFFFu) ? 0 : (v19 + v25);
        v26 = sub_100011290(a1, v19, &v45, &v44);
        if (v26)
        {
          break;
        }

        v23 += v25 * v9;
        if (v24 <= 0)
        {
          goto LABEL_27;
        }
      }

      v14 = v26;
      atomic_fetch_and_explicit((a3 + 32), 0xFFFFFFF7, memory_order_relaxed);
      pthread_mutex_unlock((a1[49] + 328));
      if (!v8[19])
      {
        v40 = a1[48] + 212;
        sub_100012178("%s:%d: %s failed to write checkpoint data block %lld: %d\n");
      }
    }
  }

  return v14;
}

uint64_t sub_10004DADC(uint64_t a1, char a2)
{
  v4 = *(a1 + 400);
  if (a2 < 0 && (v5 = *(v4 + 144)) != 0 && (*(v5 + 24) & 8) != 0)
  {
    v6 = 0;
    if ((a2 & 0x40) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    pthread_mutex_lock(*(a1 + 400));
    v6 = 1;
    if ((a2 & 0x40) == 0)
    {
      goto LABEL_11;
    }
  }

  v7 = *(v4 + 128);
  if (!v7 || (*(v7 + 24) & 0x40) == 0)
  {
    if (v6)
    {
      pthread_mutex_unlock(v4);
    }

    return 0;
  }

LABEL_11:
  v8 = sub_10004D470(a1, a2, 0);
  if (v6)
  {
    pthread_mutex_unlock(v4);
  }

  return v8;
}

uint64_t sub_10004DB80(uint64_t a1)
{
  v2 = *(a1 + 400);
  pthread_mutex_lock(v2);
  *(v2 + 72) |= 1u;
  pthread_mutex_unlock(v2);
  while (1)
  {
    result = sub_10004DD70(a1, 8);
    if (result != 16)
    {
      break;
    }

    sub_100012088("%s:%d: %s waiting for transaction to finish\n", "tx_unmount", 1863, (*(a1 + 384) + 212));
    sleep(1u);
  }

  if (result)
  {
    result = sub_100012178("%s:%d: %s tx_finish() failed, %d\n", "tx_unmount", 1878, (*(a1 + 384) + 212), result);
    if (*(a1 + 629))
    {
      return result;
    }

    pthread_mutex_lock(v2);
  }

  else
  {
    if (*(a1 + 629))
    {
      return result;
    }

    pthread_mutex_lock(v2);
    if ((*(v2 + 72) & 2) != 0)
    {
      v4 = sub_10004D470(a1, 16, 0);
      if (v4)
      {
        sub_100012178("%s:%d: %s First sync/barrier failed: %d\n", "tx_unmount", 1892, (*(a1 + 384) + 212), v4);
      }

      if ((*(a1 + 628) & 1) == 0)
      {
        v7 = *(a1 + 376);
        if (*(v7 + 140))
        {
          if (*(v7 + 148))
          {
            *(v7 + 1264) |= 2uLL;
          }
        }
      }

      sub_10003D4A0(a1, v5, v6);
      v8 = *(a1 + 376);
      v9 = sub_100050A5C(*(a1 + 384));
      if (v9)
      {
        sub_100012178("%s:%d: %s failed to write superblock to block 0: %d\n", "tx_unmount", 1903, (*(a1 + 384) + 212), v9);
      }

      v10 = sub_10004D470(a1, 16, 0);
      if (v10)
      {
        sub_100012178("%s:%d: %s Final sync/barrier failed: %d\n", "tx_unmount", 1909, (*(a1 + 384) + 212), v10);
      }
    }
  }

  return pthread_mutex_unlock(v2);
}

uint64_t sub_10004DD70(uint64_t a1, __int16 a2)
{
  if (*(a1 + 627))
  {
    return 30;
  }

  v5 = *(a1 + 400);
  pthread_mutex_lock(v5);
  v6 = *(v5 + 72);
  if ((a2 & 8) != 0 || (v6 & 1) == 0)
  {
    while (1)
    {
      v7 = *(v5 + 144);
      if ((v6 & 0x40) == 0)
      {
        break;
      }

      if (v7)
      {
        *(v7 + 24) |= 0x100000u;
      }

      if ((a2 & 0x100) != 0)
      {
        *(v5 + 72) = v6 & 0xFFFFFFF3;
        j__pthread_cond_broadcast((v5 + 256));
        v7 = *(v5 + 144);
      }

      if (v7)
      {
        v2 = *(v7 + 52);
        if (v2)
        {
          goto LABEL_67;
        }
      }

      sub_100011950((v5 + 256), v5, 8, "nx_tx_finish_wait_for_dirty_data", 0);
      v8 = *(v5 + 144);
      if (v8)
      {
        v9 = *(v8 + 52);
        if (v9 | a2 & 0x100)
        {
          if (v9)
          {
            v2 = v9;
          }

          else
          {
            v2 = 35;
          }

          goto LABEL_67;
        }
      }

      else if ((a2 & 0x100) != 0)
      {
        v2 = 35;
LABEL_67:
        pthread_mutex_unlock(v5);
        return v2;
      }

      v6 = *(v5 + 72);
      if (a2 & 8) == 0 && (v6)
      {
        goto LABEL_18;
      }
    }

    if (!v7)
    {
      v7 = **(*(v5 + 136) + 8);
      if (!v7 || (*(v7 + 24) & 0x30) == 0)
      {
        if ((a2 & 0x11) != 0)
        {
          v2 = sub_10004D470(a1, a2 & 0x10, 0);
        }

        else
        {
          v2 = 0;
        }

        goto LABEL_67;
      }
    }

    if ((a2 & 2) == 0 && (v6 & 0xC) == 8)
    {
      pthread_mutex_unlock(v5);
      return 16;
    }

    v10 = *(v7 + 16);
    if ((a2 & 8) == 0)
    {
      ++*(v5 + 176);
    }

    v11 = *(v7 + 24);
    v12 = ((a2 & 0x30) << 14) & 0xFFFDFFFF | ((a2 & 1) << 17) | v11 & 0xFFEFFFFF;
    if (v11 & 0x100000 | a2 & 0x10 | a2 & 1 | a2 & 0x20)
    {
      *(v7 + 24) = v12;
    }

    if (v11)
    {
      if ((v11 & 2) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v12, 2, 1);
      }

      *(v7 + 24) = ((a2 & 0x30) << 14) & 0xFFFDFFFC | ((a2 & 1) << 17) | v11 & 0xFFEFFFFC | 2;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      *(v7 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    }

    if (*(v7 + 28))
    {
      v2 = (16 * (a2 & 1)) ^ 0x10u;
    }

    else
    {
      if ((*(v7 + 24) & 2) != 0)
      {
        v13 = sub_10004E6D4(v7, 2, 4);
        v14 = v13;
        if (v13 > 0xF4240)
        {
          sub_100012128("%s:%d: %s tx xid %lld took %lld us to close\n", "tx_finish", 2126, (*(a1 + 384) + 212), *(v7 + 16), v13);
        }

        *(v5 + 248) = (*(v5 + 248) + v14) >> 1;
      }

      v2 = sub_10004E7C0(a1);
      if (!v2)
      {
        v15 = *(v5 + 72);
        if ((v15 & 0x40) != 0)
        {
          *(v5 + 72) = v15 & 0xFFFFFFF3;
          if ((a2 & 0x100) != 0)
          {
LABEL_69:
            pthread_mutex_unlock(v5);
            return 35;
          }

          j__pthread_cond_broadcast((v5 + 256));
        }

        v2 = 0;
      }
    }

    if ((a2 & 9) != 0)
    {
      if (a2)
      {
        v16 = 126;
      }

      else
      {
        v16 = 62;
      }

      do
      {
        if (*(v7 + 16) != v10 || (*(v7 + 24) & v16) == 0)
        {
          break;
        }

        if (!v2)
        {
          sub_100011950((v5 + 256), v5, 8, "nx_tx_finish_wait", 0);
        }

        v17 = *(v5 + 72);
        if (a2 & 8) == 0 && (v17)
        {
          goto LABEL_18;
        }

        if ((a2 & 0x100) != 0 && (v17 & 4) == 0)
        {
          goto LABEL_69;
        }
      }

      while (!*(v5 + 76));
      v18 = **(*(v5 + 136) + 8);
      if (!v18 || (v2 = *(v18 + 52), !v2))
      {
        v2 = *(v7 + 52);
      }
    }

    goto LABEL_67;
  }

LABEL_18:
  pthread_mutex_unlock(v5);
  return 1;
}

uint64_t sub_10004E124(uint64_t a1, uint64_t *a2, char a3)
{
  if (*(a1 + 627))
  {
    return 30;
  }

  v7 = *(a1 + 400);
  pthread_mutex_lock(v7);
  if (*(v7 + 72))
  {
LABEL_37:
    pthread_mutex_unlock(v7);
    return 1;
  }

  v8 = *a2;
  if (*a2 != -1)
  {
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v11 = *(v7 + 144);
  if (v11)
  {
    v12 = (*(v7 + 72) & 0xC) == 8;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || (*(v11 + 24) & 0x1C) != 0)
  {
    *a2 = 0;
LABEL_15:
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v15 = 0;
    tv_sec = __tp.tv_sec;
    v33 = SLODWORD(__tp.tv_nsec) / 1000;
    while (1)
    {
      v9 = *(v7 + 144);
      if (v9 && (*(v9 + 24) & 0x1E) != 0)
      {
        if (*(v7 + 80) > 9u)
        {
          goto LABEL_69;
        }

        v16 = "nx_tx_wait";
        if ((a3 & 2) != 0)
        {
LABEL_20:
          v17 = *(v9 + 24);
          v15 = "nx_tx_wait_closing";
          if ((v17 & 2) == 0)
          {
            if ((v17 & 4) != 0)
            {
              v18 = **(*(v7 + 136) + 8);
              if (!v18 || (v15 = "nx_tx_wait_closed_prev_flushing", (*(v18 + 24) & 0x30) == 0))
              {
                v15 = "nx_tx_wait_closed";
              }
            }

            else if ((v17 & 0x18) != 0)
            {
              v15 = "nx_tx_wait_flush";
            }

            else
            {
              v15 = v16;
            }
          }

          goto LABEL_36;
        }
      }

      else
      {
        if ((a3 & 2) != 0 || (*(v7 + 72) & 8) == 0)
        {
          v3 = 0;
          v35 = 0;
          if (!v9)
          {
            goto LABEL_42;
          }

LABEL_40:
          if (*(v9 + 24))
          {
            if (!v3)
            {
              ++*(v9 + 28);
              *a2 = *(v9 + 16);
              if (v15)
              {
                v10 = v35;
                if (v35)
                {
                  if (strcmp(v15, "nx_tx_wait_frozen"))
                  {
                    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
                    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
                    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
                    v27 = 1000000 * (__tp.tv_sec - tv_sec) - v33 + SLODWORD(__tp.tv_nsec) / 1000;
                    *(v7 + 168) += v27;
                    if (v27 > 0xF4240 && sub_100011490(a1))
                    {
                      sub_100012128("%s:%d: %s waited %lld us to open tx xid %lld (%s)\n", "tx_enter_internal", 2385, (*(a1 + 384) + 212), v27, *(v9 + 16), v15);
                    }

                    ++*(v7 + 160);
                  }

                  v10 = 1;
                }
              }

              else
              {
                v10 = v35;
              }

LABEL_84:
              ++*(v9 + 32);
              pthread_mutex_unlock(v7);
              if (v10)
              {
                sub_100043DE4(a1, v9);
              }

              return 0;
            }

LABEL_82:
            pthread_mutex_unlock(v7);
            return v3;
          }

          while (1)
          {
            v24 = *(v9 + 24);
            if ((v24 & 1) == 0)
            {
              break;
            }

            do
            {
              sub_100012088("%s:%d: %s waiting for available tx to open: xid %lld\n", "tx_enter_internal", 2370, (*(a1 + 384) + 212), *(v7 + 64));
              sub_100011950((v7 + 256), v7, 8, "nx_tx_wait_open", 0);
LABEL_58:
              v9 = *(v7 + 144);
              if (v9)
              {
                goto LABEL_40;
              }

LABEL_42:
              v19 = *(v7 + 112);
            }

            while (!v19);
            *(v7 + 144) = v19;
            v21 = *v19;
            v20 = v19[1];
            v22 = (v21 + 8);
            if (!v21)
            {
              v22 = (v7 + 120);
            }

            *v22 = v20;
            *v20 = v21;
            v23 = *(v7 + 64);
            *(v7 + 64) = v23 + 1;
            v9 = *(v7 + 144);
            *(v9 + 16) = v23;
            *(v9 + 24) = 0;
            *(v9 + 32) = 0;
            *(v9 + 52) = 0;
          }

          if (*(a1 + 626) == 1)
          {
            sub_10003D4A0(a1, v13, v14);
            v25 = *(a1 + 376);
            v26 = sub_100050A5C(*(a1 + 384));
            if (v26)
            {
              v3 = v26;
              sub_100012178("%s:%d: %s Error: tx[%lld] failed to unclean superblock: %d\n", "tx_enter_internal", 2348, (*(a1 + 384) + 212), *(*(v7 + 144) + 16), v26);
              v9 = *(v7 + 144);
LABEL_52:
              sub_100012178("%s:%d: %s Error: tx[%lld] failed to start: %d\n", "tx_enter_internal", 2352, (*(a1 + 384) + 212), *(v9 + 16), v3);
              goto LABEL_58;
            }

            *(a1 + 626) = 0;
            v9 = *(v7 + 144);
            v24 = *(v9 + 24);
            if (v24)
            {
              panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v24, 1, 0);
            }
          }

          else if (v3)
          {
            goto LABEL_52;
          }

          *(v9 + 24) = v24 | 1;
          __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
          *(v9 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
          if ((a3 & 2) != 0)
          {
            *(*(v7 + 144) + 24) |= 0x10000u;
          }

          j__pthread_cond_broadcast((v7 + 256));
          v3 = 0;
          v35 = 1;
          goto LABEL_58;
        }

        if (*(v7 + 80) >= 0xAu)
        {
LABEL_69:
          v28 = **(*(v7 + 136) + 8);
          if (v28)
          {
            if (*(v28 + 24) & 0x30)
            {
              v30 = 0;
            }

            else
            {
              v28 = *(v7 + 144);
              v30 = v9 == 0;
            }

            if (!v30)
            {
              v9 = v28;
              goto LABEL_78;
            }
          }

          else if (v9)
          {
LABEL_78:
            v31 = *(v9 + 52);
            if (v31)
            {
              v3 = v31;
            }

            else
            {
              v3 = 5;
            }

            goto LABEL_82;
          }

          v3 = 5;
          goto LABEL_82;
        }
      }

      if ((*(v7 + 72) & 8) != 0)
      {
        v16 = "nx_tx_wait_frozen";
      }

      else
      {
        v16 = "nx_tx_wait";
      }

      if (v9)
      {
        goto LABEL_20;
      }

      v15 = v16;
LABEL_36:
      sub_100011950((v7 + 256), v7, 8, v15, 0);
      if (*(v7 + 72))
      {
        goto LABEL_37;
      }
    }
  }

  v8 = *(v11 + 16);
  *a2 = v8;
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_6:
  v9 = *(v7 + 144);
  if (v9 && v8 == *(v9 + 16))
  {
    v10 = 0;
    ++*(v9 + 28);
    goto LABEL_84;
  }

  pthread_mutex_unlock(v7);
  return 22;
}

__darwin_time_t sub_10004E6D4(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    v4 = *(a1 + 24);
    if ((v4 & a2) == 0)
    {
      panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v4, a3, a2);
    }
  }

  if (a3)
  {
    v5 = *(a1 + 24);
    if ((v5 & a3) != 0)
    {
      panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v5, a3, a2);
    }
  }

  *(a1 + 24) = *(a1 + 24) & ~a2 | a3;
  __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
  v6 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
  result = v6 - *(a1 + 72);
  *(a1 + 72) = v6;
  return result;
}

uint64_t sub_10004E7C0(uint64_t a1)
{
  v2 = *(a1 + 400);
  for (i = *(v2 + 72); (i & 0x10) != 0; i = *(v2 + 72))
  {
    *(v2 + 72) = i | 0x20;
    sub_100011950((v2 + 256), v2, 8, "nx_tx_flush_busy", 0);
  }

  *(v2 + 72) = i | 0x10;
  v4 = **(*(v2 + 136) + 8);
  if (!v4 || (v5 = *(v4 + 24), (v5 & 0x10) == 0))
  {
    v4 = *(v2 + 144);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *(v4 + 24);
  }

  if ((v5 & 0x14) == 0 || (v6 = sub_10004EBF0(a1, v4), !v6))
  {
LABEL_9:
    v7 = *(v2 + 144);
    if (v7 && (*(v7 + 24) & 4) != 0)
    {
      v6 = sub_10004EBF0(a1, v7);
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = *(v2 + 72);
  *(v2 + 72) = v8 & 0xFFFFFFCF;
  if ((v8 & 0x20) != 0)
  {
    j__pthread_cond_broadcast((v2 + 256));
  }

  return v6;
}

uint64_t sub_10004E8BC(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(a1 + 627) & 1) == 0)
  {
    v7 = *(a1 + 400);
    pthread_mutex_lock(v7);
    v8 = *(v7 + 144);
    if ((*(v8 + 24) & 1) == 0)
    {
      goto LABEL_21;
    }

    if ((a3 & 4) != 0)
    {
      v9 = 0;
      ++*(v7 + 176);
    }

    else
    {
      v9 = *(v8 + 32) <= 0x186A0u && !sub_100037850(*(a1 + 392)) && sub_1000441D8(a1) == 0;
    }

    if ((*(v7 + 72) & 0x40) != 0)
    {
      if (!v9)
      {
        *(v8 + 24) |= 0x100000u;
      }
    }

    else
    {
      v10 = *(v8 + 24);
      if ((v10 & 0x100000) != 0)
      {
        v10 &= ~0x100000u;
        *(v8 + 24) = v10;
      }

      else if (v9)
      {
        goto LABEL_21;
      }

      if ((v10 & 1) == 0)
      {
        panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v10, 2, 1);
      }

      if ((v10 & 2) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v10, 2, 1);
      }

      *(v8 + 24) = v10 & 0xFFFFFFFC | 2;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      *(v8 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    }

LABEL_21:
    if ((~a3 & 5) != 0)
    {
      if ((a3 & 0x10) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(v8 + 24) |= 0x20000u;
      if ((a3 & 0x10) == 0)
      {
LABEL_23:
        if ((a3 & 0x20) == 0)
        {
LABEL_25:
          v11 = *(v8 + 28) - 1;
          *(v8 + 28) = v11;
          if (!v11 && (v12 = *(v8 + 24), (v12 & 2) != 0))
          {
            if ((v12 & 4) != 0)
            {
              panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v12, 4, 2);
            }

            *(v8 + 24) = v12 & 0xFFFFFFF9 | 4;
            __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
            __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
            clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
            v15 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
            v16 = v15 - *(v8 + 72);
            *(v8 + 72) = v15;
            if (v16 > 0xF4240)
            {
              sub_100012128("%s:%d: %s tx xid %lld took %lld us to close\n", "tx_leave", 2516, (*(a1 + 384) + 212), *(v8 + 16), v16);
            }

            *(v7 + 248) = (*(v7 + 248) + v16) >> 1;
            v3 = sub_10004E7C0(a1);
            if ((a3 & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v3 = 0;
            if ((a3 & 1) == 0)
            {
LABEL_37:
              pthread_mutex_unlock(v7);
              return v3;
            }
          }

          if ((a3 & 4) != 0)
          {
            v13 = 127;
          }

          else
          {
            v13 = 63;
          }

          do
          {
            if (*(v8 + 16) != a2 || (*(v8 + 24) & v13) == 0)
            {
              break;
            }

            if (!v3)
            {
              sub_100011950((v7 + 256), v7, 8, "nx_tx_finish_wait", 0);
            }
          }

          while (!*(v7 + 76));
          v3 = *(v8 + 52);
          goto LABEL_37;
        }

LABEL_24:
        *(v8 + 24) |= 0x80000u;
        goto LABEL_25;
      }
    }

    *(v8 + 24) |= 0x40000u;
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  return 30;
}

uint64_t sub_10004EBF0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 392);
  v4 = *(a1 + 400);
  v97 = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 660) = -1;
  v6 = **(*(v4 + 136) + 8);
  if (v6 && (*(v6 + 24) & 0x10) != 0)
  {
    if (v6 != a2)
    {
      panic("not handling the flushing tx!\n");
    }
  }

  else
  {
    if (*(v4 + 144) != a2)
    {
      panic("not handling the current tx!\n");
    }

    if ((*(a2 + 24) & 0x14) == 0)
    {
      panic("current tx not closed/flushing?!\n");
    }
  }

  v7 = *(a2 + 24);
  if ((v7 & 0x10) == 0)
  {
    if ((v7 & 4) == 0)
    {
      panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v7, 8, 4);
    }

    if ((v7 & 8) != 0)
    {
      panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v7, 8, 4);
    }

    *(a2 + 24) = v7 & 0xFFFFFFF3 | 8;
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v8 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    v9 = v8 - *(a2 + 72);
    *(a2 + 72) = v8;
    if (v9 > 0xF4240)
    {
      sub_100012128("%s:%d: %s tx xid %lld was closed for %lld us waiting to prepare to flush\n", "tx_flush", 850, (*(a1 + 384) + 212), *(a2 + 16), v9);
    }

    if (*(a1 + 629))
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    v11 = sub_100035BD4(v5, 0, v10, *(a2 + 16));
    if (v11)
    {
      v12 = v11;
      if (!*(v4 + 76))
      {
        sub_100012178("%s:%d: %s xid %lld error preparing to flush object cache: %d\n", "tx_flush", 856, (*(a1 + 384) + 212), *(a2 + 16), v11);
      }

      v13 = 858;
      goto LABEL_23;
    }

    if (*(a1 + 629) == 1)
    {
      v20 = *(a2 + 24);
      if ((v20 & 8) == 0)
      {
        panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v20, 16, 8);
      }

      if ((v20 & 0x10) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v20, 16, 8);
      }

      *(a2 + 24) = v20 & 0xFFFFFFE7 | 0x10;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      v21 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
      v22 = v21 - *(a2 + 72);
      *(a2 + 72) = v21;
      if (v22 > 0xF4240)
      {
        sub_100012128("%s:%d: %s tx xid %lld took %lld us to prepare to flush\n", "tx_flush", 868, (*(a1 + 384) + 212), *(a2 + 16), v22);
      }
    }

    else
    {
      *(a2 + 36) = *(v4 + 96);
      *(a2 + 44) = *(v4 + 100);
      *(a2 + 48) = 0;
      *(a2 + 40) = 0;
      v97 = -1;
      v36 = sub_10001124C(a1, *(*(a1 + 376) + 128), &v97);
      if (v36)
      {
        v12 = v36;
        if (!*(v4 + 76))
        {
          sub_100012178("%s:%d: %s xid %lld error getting first checkpoint map block address %d: %d\n", "tx_flush", 888, (*(a1 + 384) + 212), *(a2 + 16), *(*(a1 + 376) + 128), v36);
        }

        v13 = 890;
        goto LABEL_23;
      }

      bzero(*(a2 + 64), *(*(a1 + 376) + 36));
      v51 = *(a2 + 64);
      *(v51 + 24) = 1073741836;
      *(v51 + 8) = v97;
      *(v51 + 16) = *(a2 + 16);
      ++*(a2 + 40);
      v12 = sub_10000E700(a1, a2, 1);
      if (v12)
      {
        goto LABEL_24;
      }

      for (i = *(v5 + 744); i; i = *(i + 88))
      {
        if (i != a1)
        {
          v53 = sub_10004D5F8(a1, a2, i);
          if (v53)
          {
            v12 = v53;
            if (!*(v4 + 76))
            {
              sub_100012178("%s:%d: %s xid %lld error preparing ephemeral object (oid 0x%llx type 0x%x/0x%x): %d\n", "tx_flush", 916, (*(a1 + 384) + 212), *(a2 + 16), *(i + 112), *(i + 36), *(i + 40), v53);
            }

            v13 = 918;
LABEL_23:
            *(v4 + 76) = v13;
            ++*(v4 + 80);
LABEL_24:
            sub_100036E50(v5);
            v14 = *(v5 + 872);
            if (v14)
            {
              v15 = (v5 + 872);
              do
              {
                v16 = v14[13];
                *v15 = v16;
                if (!v16)
                {
                  *(v5 + 880) = v15;
                }

                v14[13] = 3735928559;
                v14[8] = 0;
                sub_10003D2CC(v14);
                sub_100037058(v14);
                v14 = *v15;
              }

              while (*v15);
            }

            for (j = *(v5 + 744); j; j = *(j + 88))
            {
              if ((*(j + 32) & 4) != 0)
              {
                sub_10003D2CC(j);
              }
            }

            v18 = *(v4 + 72);
            if ((v18 & 0x40) != 0)
            {
              *(v4 + 72) = v18 & 0xFFFFFFBF;
            }

            v19 = *(a2 + 24);
            if ((v19 & 8) == 0)
            {
              panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v19, 1, 8);
            }

            if (v19)
            {
              panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v19, 1, 8);
            }

            *(a2 + 24) = v19 & 0xFFFFFFF6 | 1;
            __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
            __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
            clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
            *(a2 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
            goto LABEL_66;
          }

          sub_10003C8DC(i);
          if ((*(i + 32) & 4) == 0 && (*(i + 20) & 0x20) == 0)
          {
            sub_100012128("%s:%d: %s Unknown NEW persistent ephemeral object found: oid 0x%llx type 0x%x/0x%x\n", "tx_flush", 925, (*(a1 + 384) + 212), *(i + 112), *(i + 36), *(i + 40));
          }

          *(i + 64) = *(i + 56);
          *(i + 104) = 0;
          **(v5 + 880) = i;
          *(v5 + 880) = i + 104;
        }
      }

      v54 = *(v4 + 96);
      *(a2 + 112) = -1;
      v55 = (*(a2 + 40) + v54) % *(v4 + 88);
      v56 = sub_10001124C(a1, v55, (a2 + 112));
      if (v56)
      {
        v12 = v56;
        if (!*(v4 + 76))
        {
          sub_100012178("%s:%d: %s xid %lld error getting next checkpoint superblock address %d: %d\n", "tx_flush", 937, (*(a1 + 384) + 212), *(a2 + 16), v55, v56);
        }

        v13 = 939;
        goto LABEL_23;
      }

      ++*(a2 + 40);
      v69 = *(v5 + 928) - 1;
      if (*(a2 + 48) != v69)
      {
        sub_100012178("%s:%d: %s xid %lld checkpoint data block count is not value tracked by cache: %d != %d\n", "tx_flush", 989, (*(a1 + 384) + 212), *(a2 + 16), *(a2 + 48), v69);
      }

      v70 = *(a1 + 376);
      *(v70 + 88) = *(v5 + 400);
      *(v70 + 96) = *(v4 + 64);
      memcpy(*(a2 + 56), v70, *(v70 + 36));
      v73 = *(a2 + 16);
      v74 = *(a2 + 56);
      *(v74 + 16) = v73;
      v75 = *(v4 + 96);
      *(v74 + 136) = v75;
      v76 = *(v4 + 100);
      *(v74 + 144) = v76;
      v77 = *(a2 + 40);
      *(v74 + 140) = v77;
      v78 = *(a2 + 48);
      *(v74 + 148) = v78;
      v79 = v77 + v75;
      v81 = *(v4 + 88);
      v80 = *(v4 + 92);
      v82 = v79 % v81;
      v83 = (v78 + v76) % v80;
      if (!*(v4 + 76))
      {
        if (v77 > v81 >> 2)
        {
          sub_100012178("%s:%d: %s xid %lld checkpoint descriptor count is larger than expected: %d > %d\n", "tx_flush", 1014, (*(a1 + 384) + 212), v73, v77, v81 >> 2);
          v78 = *(a2 + 48);
          v80 = *(v4 + 92);
        }

        if (v78 > v80 >> 2)
        {
          sub_100012178("%s:%d: %s xid %lld checkpoint data block count is larger than expected: %d > %d\n", "tx_flush", 1018, (*(a1 + 384) + 212), *(a2 + 16), v78, v80 >> 2);
          v78 = *(a2 + 48);
        }

        v84 = *(v5 + 928) - 1;
        if (v78 != v84)
        {
          sub_100012178("%s:%d: %s xid %lld checkpoint data block count is not value tracked by cache: %d != %d\n", "tx_flush", 1022, (*(a1 + 384) + 212), *(a2 + 16), v78, v84);
        }
      }

      v85 = *(a2 + 56);
      *(v85 + 128) = v82;
      *(v85 + 132) = v83;
      sub_10003D4D4(a1, v85, *(*(a1 + 376) + 36), v71, v72);
      *(a2 + 48) = 0;
      *(a2 + 40) = 1;
      *(*(a2 + 64) + 36) = 0;
      v86 = *(a2 + 24);
      if ((v86 & 8) == 0)
      {
        panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v86, 16, 8);
      }

      if ((v86 & 0x10) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v86, 16, 8);
      }

      *(a2 + 24) = v86 & 0xFFFFFFE7 | 0x10;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      v87 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
      v22 = v87 - *(a2 + 72);
      *(a2 + 72) = v87;
      if (v22 > 0xF4240)
      {
        sub_100012128("%s:%d: %s tx xid %lld took %lld us to prepare to flush\n", "tx_flush", 1045, (*(a1 + 384) + 212), *(a2 + 16), v22);
      }
    }

    *(v4 + 232) = (*(v4 + 232) + v22) >> 1;
  }

  if (*(a1 + 629) == 1)
  {
    v23 = *(a2 + 24);
    if ((v23 & 0x10) == 0)
    {
      panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v23, 1, 16);
    }

    if (v23)
    {
      panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v23, 1, 16);
    }

    *(a2 + 24) = v23 & 0xFFFFFFEE | 1;
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    *(a2 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    *(a2 + 32) = 0;
    *(a2 + 52) = 0;
  }

  else if (*(v4 + 144) == a2)
  {
    *a2 = 0;
    v24 = *(v4 + 136);
    *(a2 + 8) = v24;
    *v24 = a2;
    *(v4 + 136) = a2;
    *(v4 + 144) = 0;
  }

  pthread_mutex_unlock(v4);
  j__pthread_cond_broadcast((v4 + 256));
  if (*(a1 + 629))
  {
    v25 = 0;
  }

  else
  {
    v25 = 2;
  }

  v26 = sub_1000374A4(v5, v25);
  if (*(a1 + 629) == 1)
  {
    pthread_mutex_lock(v4);
    sub_100036E50(v5);
    sub_10004D470(a1, 0, 0);
    j__pthread_cond_broadcast((v4 + 256));
    v12 = 0;
    *(a2 + 52) = 0;
    return v12;
  }

  v12 = v26;
  if (v26)
  {
    pthread_mutex_lock(v4);
    if (!*(v4 + 76))
    {
      sub_100012178("%s:%d: %s xid %lld error flushing objects from the cache: %d\n", "tx_flush", 1117, (*(a1 + 384) + 212), *(a2 + 16), v12);
    }

    v29 = 1119;
    goto LABEL_65;
  }

  while (1)
  {
    v32 = *(v5 + 872);
    if (!v32)
    {
      v33 = *(a2 + 64);
      if (*(v33 + 8))
      {
        *(v33 + 32) |= 1u;
        sub_10003D4D4(a1, v33, *(*(a1 + 376) + 36), v27, v28);
        v34 = *(*(a2 + 64) + 8);
        v35 = sub_100050A5C(*(a1 + 384));
        if (v35)
        {
          v12 = v35;
          pthread_mutex_lock(v4);
          if (!*(v4 + 76))
          {
            sub_100012178("%s:%d: %s xid %lld failed to write last checkpoint map block %lld: %d\n", "tx_flush", 1154, (*(a1 + 384) + 212), *(a2 + 16), *(*(a2 + 64) + 8), v12);
          }

          v29 = 1156;
          goto LABEL_65;
        }
      }

      ++*(a2 + 40);
      pthread_mutex_lock(v4);
      v37 = *(a2 + 40);
      v38 = *(a2 + 56);
      v39 = *(a2 + 48);
      v40 = v38[37];
      if (v37 != v38[35] || v39 != v40)
      {
        panic("flush phase checkpoint lengths (%d %d) don't match prepare phase (%d %d)\n", v37, v39, v38[35], v40);
      }

      v42 = *(a1 + 376);
      v42[34] = v38[34];
      v42[35] = v37;
      v42[36] = v38[36];
      v42[37] = v39;
      v43 = *(a2 + 24);
      if ((v43 & 0x10) == 0)
      {
        panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v43, 32, 16);
      }

      if ((v43 & 0x20) != 0)
      {
        panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v43, 32, 16);
      }

      *(a2 + 24) = v43 & 0xFFFFFFCF | 0x20;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      v44 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
      v45 = v44 - *(a2 + 72);
      *(a2 + 72) = v44;
      if (v45 > 0xF4240)
      {
        sub_100012128("%s:%d: %s tx xid %lld took %lld us to flush\n", "tx_flush", 1185, (*(a1 + 384) + 212), *(a2 + 16), v45);
      }

      *(a2 + 104) = v45;
      j__pthread_cond_broadcast((v4 + 256));
      v46 = sub_10004D470(a1, 0, 1);
      if (v46)
      {
        v12 = v46;
        if (!*(v4 + 76))
        {
          sub_100012178("%s:%d: %s xid %lld sync/barrier failed: %d\n", "tx_flush", 1194, (*(a1 + 384) + 212), *(a2 + 16), v46);
        }

        *(v4 + 76) = 1196;
        ++*(v4 + 80);
        --*(a2 + 40);
        v47 = *(a2 + 24);
        if ((v47 & 0x20) == 0)
        {
          panic("can't transition from tx flags 0x%x to 0x%x (expected 0x%x)\n", v47, 16, 32);
        }

        if ((v47 & 0x10) != 0)
        {
          panic("bad transition tx flags 0x%x to 0x%x (expected 0x%x)\n", v47, 16, 32);
        }

        *(a2 + 24) = v47 & 0xFFFFFFCF | 0x10;
        __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        v48 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
        v49 = v48 - *(a2 + 72);
        *(a2 + 72) = v48;
        v50 = v49 + *(a2 + 104);
        goto LABEL_124;
      }

      pthread_mutex_unlock(v4);
      if (*(a1 + 632) == 1)
      {
        *(a2 + 24) |= 0x80000u;
        bzero(*(a2 + 64), *(*(a1 + 376) + 36));
      }

      else
      {
        v57 = *(a2 + 56);
      }

      v58 = *(a2 + 112);
      v59 = sub_100050A5C(*(a1 + 384));
      if (v59)
      {
        v12 = v59;
        pthread_mutex_lock(v4);
        if (!*(v4 + 76))
        {
          sub_100012178("%s:%d: %s xid %lld failed to write checkpoint superblock %lld: %d\n", "tx_flush", 1223, (*(a1 + 384) + 212), *(a2 + 16), *(a2 + 112), v12);
        }

        v60 = 1225;
      }

      else
      {
        if ((*(a2 + 26) & 8) == 0 || (v63 = *(a2 + 56), v64 = sub_100050A5C(*(a1 + 384)), !v64))
        {
          if (*(a1 + 628) == 1 && (*(a1 + 632) & 1) == 0)
          {
            *(a1 + 660) = (*(*(a1 + 376) + 136) + *(*(a1 + 376) + 140) - 1) % *(v4 + 88);
          }

          pthread_mutex_lock(v4);
          v65 = sub_10004E6D4(a2, 32, 64);
          v66 = v65;
          if (v65 > 0xF4240)
          {
            sub_100012128("%s:%d: %s tx xid %lld took %lld us to sync and write superblock\n", "tx_flush", 1280, (*(a1 + 384) + 212), *(a2 + 16), v65);
          }

          *(a2 + 104) += v66;
          v67 = *(a2 + 24);
          if ((v67 & 0x20000) == 0)
          {
            goto LABEL_160;
          }

          ++*(v4 + 184);
          if ((v67 & 0x40000) != 0)
          {
            ++*(v4 + 192);
          }

          v68 = sub_10004D470(a1, (v67 >> 14) & 0x10, 0);
          if (!v68)
          {
LABEL_160:
            *(a2 + 52) = 0;
            *(v4 + 72) |= 2u;
            *(v4 + 76) = 0;
            v88 = *(a2 + 56);
            v89 = *(v88 + 128);
            v90 = *(a1 + 376);
            *(v90 + 128) = v89;
            *(v4 + 96) = v89;
            v91 = *(v88 + 132);
            *(v90 + 132) = v91;
            *(v4 + 100) = v91;
            *(v90 + 16) = *(v88 + 16);
            v92 = *(v4 + 152);
            *(v4 + 152) = v92 + 1;
            if (v92)
            {
              *(v4 + 200) = (*(v4 + 200) + *(a2 + 32)) >> 1;
              *(v4 + 208) = vshrq_n_u64(vaddq_s64(*(a2 + 80), *(v4 + 208)), 1uLL);
              *(v4 + 224) = (*(a2 + 96) + *(v4 + 224)) >> 1;
              *(v4 + 240) = (*(a2 + 104) + *(v4 + 240)) >> 1;
              if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * (v92 + 1), 2) <= 0xCCCCCCCCCCCCCCCuLL && sub_100011490(a1))
              {
                v93 = *(v4 + 160);
                if (v93 <= 1)
                {
                  v94 = 1;
                }

                else
                {
                  v94 = *(v4 + 160);
                }

                v95 = *(v4 + 168) / v94;
                v96 = *(v4 + 232);
                sub_100012088("%s:%d: %s xid %llu tx stats: # %llu owait %llu %lluus finish %llu bar2 %lld f %lld enter %llu fq %llu %llu %lluus close %lluus prep %lluus flush %lluus\n", "tx_flush", 1344, (*(a1 + 384) + 212), *(a2 + 16), *(v4 + 152), v93, v95, *(v4 + 176), *(v4 + 184), *(v4 + 192), *(v4 + 200), *(v4 + 216), *(v4 + 224), *(v4 + 208), *(v4 + 248), v96, *(v4 + 240));
              }
            }

            else
            {
              *(v4 + 200) = *(a2 + 32);
              *(v4 + 208) = *(a2 + 80);
              *(v4 + 224) = *(a2 + 96);
              *(v4 + 240) = *(a2 + 104);
            }

            j__pthread_cond_broadcast((v4 + 256));
            return 0;
          }

          v12 = v68;
          if (!*(v4 + 76))
          {
            sub_100012178("%s:%d: %s xid %lld second sync/barrier failed: %d\n", "tx_flush", 1292, (*(a1 + 384) + 212), *(a2 + 16), v68);
          }

          *(v4 + 76) = 1294;
          ++*(v4 + 80);
          --*(a2 + 40);
          v61 = a2;
          v62 = 64;
          goto LABEL_123;
        }

        v12 = v64;
        if (!*(v4 + 76))
        {
          sub_100012178("%s:%d: %s xid %lld failed to write block 0 superblock: %d\n", "tx_flush", 1245, (*(a1 + 384) + 212), *(a2 + 16), v64);
        }

        pthread_mutex_lock(v4);
        v60 = 1249;
      }

      *(v4 + 76) = v60;
      ++*(v4 + 80);
      --*(a2 + 40);
      v61 = a2;
      v62 = 32;
LABEL_123:
      v50 = *(a2 + 104) + sub_10004E6D4(v61, v62, 16);
LABEL_124:
      *(a2 + 104) = v50;
      goto LABEL_66;
    }

    v31 = sub_10004D6CC(a1, a2, *(v5 + 872), v27, v28);
    if (v31)
    {
      break;
    }

    sub_10003D2CC(v32);
    sub_100037058(v32);
  }

  v12 = v31;
  pthread_mutex_lock(v4);
  if (!*(v4 + 76))
  {
    sub_100012178("%s:%d: %s xid %lld failed to write checkpoint data @ 0x%llx: %d\n", "tx_flush", 1133, (*(a1 + 384) + 212), *(a2 + 16), v32[16], v12);
  }

  v29 = 1135;
LABEL_65:
  *(v4 + 76) = v29;
  ++*(v4 + 80);
LABEL_66:
  j__pthread_cond_broadcast((v4 + 256));
  *(a2 + 52) = v12;
  return v12;
}

uint64_t sub_10004FDE8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2)
  {
    v2 = a2;
    *(a1 + 2) = 4;
    v4 = sub_100012434(0x10uLL, 0x100004052888210uLL);
    *(a1 + 8) = v4;
    if (!v4)
    {
      *(a1 + 2) = 0;
    }

    *(a1 + 6) = (v2 + 7) & 0xFFF8;
    v5 = sub_100012434((v2 + 7) & 0xFFF8, 0xD97FBADFuLL);
    *(a1 + 16) = v5;
    if (!v5)
    {
      *(a1 + 6) = 0;
    }
  }

  return 0;
}

uint64_t sub_10004FE74(unsigned __int16 *a1, unsigned __int16 *a2, unint64_t a3)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  if (a3 < 4)
  {
    return 28;
  }

  v6 = *a2;
  *a1 = v6;
  v7 = a2[1];
  a1[2] = v7;
  a1[1] = v6;
  if (v7 + 4 * v6 + 4 > a3)
  {
    goto LABEL_10;
  }

  if (v6)
  {
    v8 = 0;
    v9 = a2 + 3;
    v10 = v6;
    while (v7 > v8)
    {
      v11 = *v9;
      if ((v7 - v8) < v11)
      {
        break;
      }

      v8 += (v11 + 7) & 0x1FFF8;
      v9 += 2;
      if (!--v10)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_10;
  }

LABEL_9:
  v12 = (v7 + 7) & 0xFFF8;
  a1[3] = v12;
  if (v12 < v7)
  {
LABEL_10:
    result = 22;
LABEL_11:
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    return result;
  }

  v13 = 4 * v6;
  *(a1 + 1) = sub_100012434(4 * v6, 0x100004052888210uLL);
  v14 = sub_100012434(a1[3], 0x8CB4D706uLL);
  *(a1 + 2) = v14;
  v15 = *(a1 + 1);
  v16 = *a1;
  if (!v15 || !v14)
  {
    sub_1000123F8(v15, 4 * v16);
    sub_1000123F8(*(a1 + 2), a1[3]);
    result = 12;
    goto LABEL_11;
  }

  v17 = (a2 + 2);
  memcpy(v15, v17, 4 * v16);
  memcpy(*(a1 + 2), &v17[v13], a1[2]);
  bzero((*(a1 + 2) + a1[2]), a1[3] - a1[2]);
  return 0;
}

uint64_t sub_10004FFE0(unsigned __int16 *a1, unint64_t a2, int a3, _DWORD *a4, void *a5, _DWORD *a6)
{
  if (a2 < 4)
  {
    return 28;
  }

  v7 = *a1;
  v8 = a1[1];
  if (v8 + 4 * v7 + 4 > a2)
  {
    return 22;
  }

  if (*a1)
  {
    v9 = 0;
    v10 = &a1[2 * v7 + 2];
    for (i = a1 + 3; ; i += 2)
    {
      v12 = *i;
      if (v9 + v12 > v8)
      {
        break;
      }

      if (*(i - 2) == a3)
      {
        if (a4)
        {
          *a4 = *(i - 1);
        }

        if (a6)
        {
          *a6 = v12;
        }

        result = 0;
        *a5 = v10 + v9;
        return result;
      }

      v9 += (v12 + 7) & 0x1FFF8;
      if (!--v7)
      {
        return 2;
      }
    }

    return 22;
  }

  return 2;
}

uint64_t sub_100050084(unsigned __int16 *a1, unint64_t a2, int a3, const void *a4, int a5)
{
  v9 = -1431655766;
  __dst = 0;
  result = sub_10004FFE0(a1, a2, a3, 0, &__dst, &v9);
  if (!result)
  {
    if (v9 == a5)
    {
      memcpy(__dst, a4, a5);
      return 0;
    }

    else
    {
      return 34;
    }
  }

  return result;
}

uint64_t sub_1000500F8(uint64_t a1, unsigned __int16 *a2)
{
  if (*(a2 + 2))
  {
    v4 = sub_100012434(a2[3], 0x3B1F33ADuLL);
    if (!v4)
    {
      return 12;
    }

    v5 = v4;
    memcpy(v4, *(a2 + 2), a2[3]);
  }

  else
  {
    v5 = 0;
  }

  if (!*(a2 + 1))
  {
    v7 = 0;
    goto LABEL_9;
  }

  v6 = sub_100012434(4 * a2[1], 0x100004052888210uLL);
  if (v6)
  {
    v7 = v6;
    memcpy(v6, *(a2 + 1), 4 * *a2);
LABEL_9:
    result = 0;
    *a1 = *a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = v5;
    return result;
  }

  sub_1000123F8(v5, a2[3]);
  return 12;
}

uint64_t sub_1000501C0(uint64_t a1)
{
  sub_1000123F8(*(a1 + 8), 4 * *(a1 + 2));
  sub_1000123F8(*(a1 + 16), *(a1 + 6));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return 0;
}

uint64_t sub_10005021C(unsigned __int16 *a1, _WORD *a2, unint64_t a3)
{
  v3 = *a1;
  if (a1[2] + 4 * v3 + 4 > a3)
  {
    return 28;
  }

  *a2 = v3;
  a2[1] = a1[2];
  v6 = a2 + 2;
  memcpy(a2 + 2, *(a1 + 1), 4 * *a1);
  memcpy(&v6[2 * *a1], *(a1 + 2), a1[2]);
  return 0;
}

uint64_t sub_10005029C(unsigned __int16 *a1, int a2, char a3, void *__src, uint64_t __n)
{
  v8 = a2;
  v10 = *a1;
  if (*a1)
  {
    v11 = 0;
    v12 = 0;
    v13 = *a1;
    v14 = v10 - 1;
    v15 = (*(a1 + 1) + 2);
    v16 = 2;
    while (*(v15 - 2) != a2)
    {
      v17 = *v15;
      v15 += 2;
      v12 += (v17 + 7) & 0x1FFF8;
      ++v11;
      v16 += 4;
      if (v10 == v11)
      {
        goto LABEL_14;
      }
    }

    v18 = *(a1 + 2);
    *(v15 - 1) = a3;
    if (v18)
    {
      v19 = (v18 + v12);
      v20 = *v15;
      if (v20 == __n)
      {
        goto LABEL_22;
      }

      v21 = (v20 + 7) & 0x1FFF8;
      v22 = (__n + 7) & 0xFFFFFFFFFFFFFFF8;
      v23 = v22 - v21;
      if (v22 < v21)
      {
        if (v14 > v11)
        {
          memmove((v18 + v12 + v22), (v18 + v12 + v21), a1[3] - (v12 + v21));
        }

        v24 = a1[2] - (v21 - v22);
LABEL_32:
        a1[2] = v24;
LABEL_33:
        *(*(a1 + 1) + v16) = __n;
        if (!v19)
        {
          return 22;
        }

        goto LABEL_22;
      }

      if (v22 <= v21)
      {
        goto LABEL_33;
      }

      v33 = v12;
      v34 = a1[2];
      if (v23 + v34 <= a1[3])
      {
LABEL_29:
        if (v14 > v11)
        {
          memmove(&v19[v22], &v19[v21], v34 - (v21 + v33));
          LOWORD(v34) = a1[2];
        }

        v24 = v34 + v23;
        goto LABEL_32;
      }

      if (!sub_100050500(a1, __n))
      {
        v19 = (*(a1 + 2) + v33);
        LODWORD(v34) = a1[2];
        v14 = *a1 - 1;
        goto LABEL_29;
      }

      return 28;
    }

    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

LABEL_14:
  v25 = a1[1];
  if (v10 >= v25)
  {
    v26 = v25 + 4;
    v27 = sub_100012468(*(a1 + 1), 4 * v25, (4 * (v25 + 4)), 0x100004052888210uLL);
    if (!v27)
    {
      return 28;
    }

    *(a1 + 1) = v27;
    a1[1] = v26;
  }

  v28 = a1[2];
  v29 = (__n + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v29 + v28 > a1[3])
  {
    if (sub_100050500(a1, __n))
    {
      return 28;
    }

    v28 = a1[2];
  }

  v31 = *(a1 + 2);
  v32 = *(a1 + 1) + 4 * v13;
  *v32 = v8;
  *(v32 + 1) = a3;
  *(v32 + 2) = __n;
  ++*a1;
  v19 = (v31 + v28);
  a1[2] = v28 + v29;
  if (!(v31 + v28))
  {
    return 22;
  }

LABEL_22:
  memcpy(v19, __src, __n);
  if ((__n & 7) != 0)
  {
    bzero(&v19[__n], 8 - (__n & 7));
  }

  return 0;
}

uint64_t sub_100050500(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 6);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFF8) + v3;
  v5 = sub_100012468(*(a1 + 16), v3, v4, 0x669DD06FuLL);
  if (!v5)
  {
    return 28;
  }

  v6 = v5;
  result = 0;
  *(a1 + 16) = v6;
  *(a1 + 6) = v4;
  return result;
}

uint64_t sub_100050564(unsigned __int16 *a1, int a2, _DWORD *a3, char *__dst, size_t __n)
{
  if (!*a1)
  {
    return 2;
  }

  v9 = 0;
  v10 = 0;
  v11 = (*(a1 + 1) + 2);
  while (*(v11 - 2) != a2)
  {
    v12 = *v11;
    v11 += 2;
    v10 += (v12 + 7) & 0x1FFF8;
    v9 += 4;
    if (4 * *a1 == v9)
    {
      return 2;
    }
  }

  v14 = (*(a1 + 2) + v10);
  v15 = *v11;
  if (v15 >= __n)
  {
    memcpy(__dst, v14, __n);
  }

  else
  {
    memcpy(__dst, v14, v15);
    v16 = *(*(a1 + 1) + v9 + 2);
    bzero(&__dst[v16], __n - v16);
  }

  result = 0;
  if (a3)
  {
    *a3 = *(*(a1 + 1) + v9 + 1);
  }

  return result;
}

uint64_t sub_100050654(unsigned __int16 *a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (!*a1)
  {
    return 2;
  }

  v5 = 0;
  v6 = 0;
  v7 = *(a1 + 1);
  while (*(v7 + v5) != a2)
  {
    v6 += (*(v7 + v5 + 2) + 7) & 0x1FFF8;
    v5 += 4;
    if (4 * *a1 == v5)
    {
      return 2;
    }
  }

  *a4 = *(a1 + 2) + v6;
  if (a3)
  {
    *a3 = *(*(a1 + 1) + v5 + 1);
  }

  v8 = 0;
  if (a5)
  {
    *a5 = *(*(a1 + 1) + v5 + 2);
  }

  return v8;
}

uint64_t sub_1000506E0(unsigned __int16 *a1, int a2)
{
  if (!*a1)
  {
    return 2;
  }

  v3 = 0;
  v4 = *(a1 + 1);
  v5 = 1;
  for (i = 2; *(v4 + i - 2) != a2; i += 4)
  {
    v3 += (*(v4 + i) + 7) & 0x1FFF8;
    if (++v5 - *a1 == 1)
    {
      return 2;
    }
  }

  v8 = (*(v4 + i) + 7) & 0x1FFF8;
  memmove((*(a1 + 2) + v3), (*(a1 + 2) + v3 + v8), (a1[3] - v3 - v8));
  a1[2] -= v8;
  memmove((*(a1 + 1) + i - 2), (*(a1 + 1) + i + 2), 4 * (*a1 - v5));
  result = 0;
  --*a1;
  return result;
}

uint64_t sub_1000507D4(int a1)
{
  v7 = -1431655766;
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v6.st_blksize = v2;
  *v6.st_qspare = v2;
  v6.st_birthtimespec = v2;
  *&v6.st_size = v2;
  v6.st_mtimespec = v2;
  v6.st_ctimespec = v2;
  *&v6.st_uid = v2;
  v6.st_atimespec = v2;
  *&v6.st_dev = v2;
  memset(&__b, 170, sizeof(__b));
  if (!ioctl(a1, 0x40046418uLL, &v7))
  {
    return v7;
  }

  if (!fstatfs(a1, &__b))
  {
    return __b.f_bsize;
  }

  if (!fstat(a1, &v6))
  {
    return v6.st_blksize;
  }

  v3 = __error();
  v4 = strerror(*v3);
  sub_100012178("%s:%d: can't get the device block size (%s). assuming 512\n", "io_get_device_block_size", 57, v4);
  return 512;
}

uint64_t sub_100050974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 72);
  v8 = *(v7 + 32);
  if (v8)
  {

    return v8();
  }

  else
  {
    v10 = (*(v7 + 24))();
    v11 = v10;
    v12 = *a6;
    if (*a6)
    {
      *(a6 + 96) = v10;
      v12(a6);
    }

    return v11;
  }
}

uint64_t sub_1000509EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a9)
  {
    v9 = *(*(a1 + 72) + 40);
    if (v9)
    {
      return v9();
    }

    else
    {
      return 45;
    }
  }

  else if (a6)
  {
    return sub_100050974(a1, a2, a3, a4, a5, a7);
  }

  else
  {
    return (*(*(a1 + 72) + 24))();
  }
}

uint64_t sub_100050A44(uint64_t a1)
{
  v1 = *(*(a1 + 72) + 56);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 45;
  }
}

uint64_t sub_100050A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = *(a1 + 72);
  if (!a7)
  {
    return (*(v7 + 64))();
  }

  v8 = *(v7 + 72);
  if (v8)
  {
    return v8();
  }

  else
  {
    return 45;
  }
}

uint64_t sub_100050AA4(uint64_t a1, uint64_t a2)
{
  result = aio_error((a2 + 8));
  if (result == -1)
  {
    return *__error();
  }

  return result;
}

uint64_t sub_100050AE0(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2)
  {
    *a2 = a1[22];
  }

  if (a3)
  {
    *a3 = a1[23];
  }

  if (a4)
  {
    *a4 = a1[24];
  }

  if (a5)
  {
    *a5 = a1[25];
  }

  return 0;
}

uint64_t sub_100050B24(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if ((a9 & 0xFFFFFFFA) != 0 || (a8 != 0) == a9 < 4)
  {
    if ((a8 != 0) != a9 < 4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 22;
    }

    if ((a9 & 0xFFFFFFFA) != 0)
    {
      v11 = 45;
    }

    else
    {
      v11 = v10;
    }

    sub_100012178("%s:%d: failed to read blknum 0x%llx size %zu flags 0x%x error %d dev_name = %s\n", "fd_dev_read_extended", 597, a2, a3, a9, v11, (a1 + 212));
    return v11;
  }

  else if (a6)
  {

    return sub_1000519D8(a1, a2, a3, a4, a5, a7);
  }

  else
  {

    return sub_100051768(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_100050C00(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 8);
  aiocblist = (a2 + 8);
  if (aio_suspend(&aiocblist, 1, 0) || (v5 = aio_return(v3), v5 == -1))
  {
    v4 = *__error();
  }

  else if (v5 >= *(a2 + 32))
  {
    v4 = 0;
  }

  else
  {
    v4 = 5;
  }

  v6 = *a2;
  if (*a2)
  {
    *(a2 + 96) = v4;
    v6(a2);
  }

  return v4;
}

uint64_t sub_100050C8C(uint64_t a1, unint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  if ((a7 & 0xFFFFFFFA) != 0 || (a6 != 0) == a7 < 4)
  {
    if ((a6 != 0) != a7 < 4)
    {
      v9 = 0;
    }

    else
    {
      v9 = 22;
    }

    if ((a7 & 0xFFFFFFFA) != 0)
    {
      v10 = 45;
    }

    else
    {
      v10 = v9;
    }

    sub_100012178("%s:%d: failed to write blknum 0x%llx size %zu flags 0x%x error %d dev_name = %s\n", "fd_dev_write_extended", 845, a2, a3, a7, v10, (a1 + 212));
    return v10;
  }

  else
  {

    return sub_100051AC0(a1, a2, a3, a4, a5, a7);
  }
}

uint64_t sub_100050D30(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 36);
    if (v5)
    {
      result = sub_100051900(a1, *(a1 + 40), v5, v4, *(a1 + 48));
      if (result)
      {
        return result;
      }

      *(a1 + 36) = 0;
    }
  }

  fsync(*a1);
  v7 = *(a1 + 4);
  if ((v7 & 0x80000000) == 0)
  {
    fsync(v7);
  }

  if (!a2 && (*(a1 + 88) & 2) != 0)
  {
    v9 = ioctl(*a1, 0x80186416uLL, &v10, 0, 0, 2);
  }

  else
  {
    v8 = *a1;
    if ((*(a1 + 64) & 0xF000) == 0x8000)
    {
      v9 = fcntl(v8, 51, 0);
    }

    else
    {
      v9 = ioctl(v8, 0x20006416uLL, 0, v10, v11);
    }
  }

  if (v9 == -1)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100050E2C(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(a1 + 112);
  v5 = v4 > a2;
  v6 = v4 - a2;
  if (!v5 || v6 < a3)
  {
    return 6;
  }

  v10 = *(a1 + 192);
  if (!v10)
  {
    return 45;
  }

  if (a4 != 1)
  {
    return 22;
  }

  v13 = *(a1 + 200);
  if (v13 >= *(a1 + 204) || *(a1 + 208) != 1)
  {
    result = sub_100050EEC(a1);
    if (result)
    {
      return result;
    }

    v13 = *(a1 + 200);
    v10 = *(a1 + 192);
  }

  result = 0;
  *(a1 + 200) = v13 + 1;
  v14 = *(a1 + 84);
  v15 = (v10 + 16 * v13);
  *v15 = v14 * a2;
  v15[1] = v14 * a3;
  *(a1 + 208) = 1;
  return result;
}

uint64_t sub_100050EEC(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (!v1)
  {
    return 45;
  }

  v3 = *(a1 + 200);
  if (!v3)
  {
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v7 = v1;
  v4 = *(a1 + 208);
  v8 = v3;
  v9 = v4;
  if (ioctl(*a1, 0x80406459uLL, &v7) == -1)
  {
    v5 = *__error();
    if (v5)
    {
      sub_100012178("%s:%d: hinting %d blocks from hint_list failed w/: %d (entry %lld:%lld ; %lld:%lld)\n", "fd_dev_hint_flush", 936, *(a1 + 200), v5, **(a1 + 192), *(*(a1 + 192) + 8), *(*(a1 + 192) + 16), *(*(a1 + 192) + 24));
    }
  }

  else
  {
    v5 = 0;
  }

  bzero(*(a1 + 192), 16 * *(a1 + 204));
  *(a1 + 200) = 0;
  return v5;
}

uint64_t sub_100050FD0(uint64_t a1)
{
  v2 = (a1 + 212);
  v3 = strlen((a1 + 212));
  v4 = *(a1 + 24);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = *(a1 + 36);
  if (!v5)
  {
    v7 = 0;
LABEL_9:
    sub_1000123F8(v4, (*(a1 + 84) * *(a1 + 32)));
    *(a1 + 24) = 0;
    goto LABEL_10;
  }

  v6 = sub_100051900(a1, *(a1 + 40), v5, v4, *(a1 + 48));
  v7 = v6;
  if (v6)
  {
    sub_100012178("%s:%d: Hit an error flushing the cache, %d dev_name = %s\n", "fd_dev_close", 333, v6, v2);
  }

  *(a1 + 36) = 0;
  v4 = *(a1 + 24);
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(a1 + 192))
  {
    v8 = sub_100050EEC(a1);
    v7 = v8;
    if (v8)
    {
      sub_100012178("%s:%d: Hit an error flushing the hint list, %d dev_name = %s\n", "fd_dev_close", 346, v8, v2);
    }

    sub_1000123F8(*(a1 + 192), 16 * *(a1 + 204));
    *(a1 + 192) = 0;
  }

  if (close(*a1))
  {
    v7 = *__error();
  }

  v9 = *(a1 + 4);
  if ((v9 & 0x80000000) == 0 && close(v9))
  {
    v7 = *__error();
  }

  v10 = *(a1 + 8);
  if ((v10 & 0x80000000) == 0 && close(v10))
  {
    v7 = *__error();
  }

  sub_1000123F8(a1, v3 + 216);
  return v7;
}

uint64_t sub_100051134(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 112) * *(a1 + 84) / a2;
  *(a1 + 84) = a2;
  *(a1 + 112) = v2;
  return 0;
}

uint64_t sub_100051180(uint64_t a1)
{
  v20 = -1431655766;
  v18 = -1431655766;
  v19 = -1431655766;
  v17 = -1431655766;
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v16.st_blksize = v2;
  *v16.st_qspare = v2;
  v16.st_birthtimespec = v2;
  *&v16.st_size = v2;
  v16.st_mtimespec = v2;
  v16.st_ctimespec = v2;
  *&v16.st_uid = v2;
  v16.st_atimespec = v2;
  *&v16.st_dev = v2;
  if (fstat(*a1, &v16))
  {
    v3 = __error();
    v4 = *v3;
    sub_100012178("%s:%d: Couldn't fstat dev_fd (%d), err %d dev_name = %s\n", "dev_init_common", 1035, *a1, *v3, (a1 + 212));
  }

  else
  {
    *(a1 + 72) = off_1000700A0;
    v5 = sub_1000507D4(*a1);
    *(a1 + 80) = v5;
    *(a1 + 84) = v5;
    v6 = *a1;
    v22 = 0xAAAAAAAAAAAAAAAALL;
    v7.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v7.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v21.st_blksize = v7;
    *v21.st_qspare = v7;
    v21.st_birthtimespec = v7;
    *&v21.st_size = v7;
    v21.st_mtimespec = v7;
    v21.st_ctimespec = v7;
    *&v21.st_uid = v7;
    v21.st_atimespec = v7;
    *&v21.st_dev = v7;
    if (ioctl(v6, 0x40086419uLL, &v22))
    {
      if (fstat(v6, &v21))
      {
        v8 = __error();
        v9 = strerror(*v8);
        sub_100012178("%s:%d: can't get block count (%s)\n", "io_get_num_device_blocks", 78, v9);
        v10 = 0;
      }

      else
      {
        st_size = v21.st_size;
        v10 = st_size / sub_1000507D4(v6);
      }
    }

    else
    {
      v10 = v22;
    }

    *(a1 + 112) = v10;
    sub_10002F608(*a1, &v20, &v19, &v18, &v17);
    v12 = v19;
    *(a1 + 88) = v20;
    *(a1 + 92) = v12;
    v13 = v17;
    *(a1 + 96) = v18;
    *(a1 + 100) = v13;
    *(a1 + 64) = v16.st_mode;
    *(a1 + 104) = 0;
    v14 = *(a1 + 80) >> 4;
    *(a1 + 204) = *(a1 + 80) >> 4;
    v4 = 0;
    *(a1 + 192) = sub_1000122F4(v14, 0x10uLL, 0x1000040451B5BE8uLL);
    *(a1 + 200) = 0;
  }

  return v4;
}

uint64_t sub_100051344(char *a1, int a2, int **a3)
{
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v6 = 5;
  }

  else
  {
    v6 = 0;
  }

  v7 = &a1[v6];
  v8 = strlen(&a1[v6]);
  *a3 = 0;
  v9 = sub_1000122F4(1uLL, v8 + 216, 0xB22E4C5DuLL);
  if (v9)
  {
    v10 = v9;
    v11.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v11.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v34.st_blksize = v11;
    *v34.st_qspare = v11;
    v34.st_birthtimespec = v11;
    *&v34.st_size = v11;
    v34.st_mtimespec = v11;
    v34.st_ctimespec = v11;
    *&v34.st_uid = v11;
    v34.st_atimespec = v11;
    *&v34.st_dev = v11;
    v9[17] = 0;
    if (stat(a1, &v34) || (v34.st_mode & 0xF000) != 0x4000)
    {
      v14 = sub_10002F9FC(a1, 0);
      if (v14)
      {
        v15 = v14;
        v10[2] = -1;
        v16 = open(a1, a2 & 0xFFFFFFCF | 0x10);
        v10[1] = v16;
        if (v16 < 0)
        {
          v24 = __error();
          v13 = *v24;
          v25 = strerror(*v24);
          sub_100012178("%s:%d: failed to open volume device %s: %s\n", "dev_init", 1163, a1, v25);
        }

        else
        {
          v17 = open(v15, a2 & 0xFFFFFFCF | 0x10);
          *v10 = v17;
          if ((v17 & 0x80000000) == 0)
          {
LABEL_30:
            v30 = sub_100051180(v10);
            if (v30)
            {
              v13 = v30;
              free(v15);
LABEL_38:
              sub_1000123F8(v10, v8 + 216);
              return v13;
            }

            strlcpy(v10 + 212, v7, v8 + 1);
            free(v15);
LABEL_39:
            v13 = 0;
            *a3 = v10;
            return v13;
          }

          v18 = __error();
          v13 = *v18;
          v19 = strerror(*v18);
          sub_100012178("%s:%d: failed to open container device %s: %s\n", "dev_init", 1169, v15, v19);
          close(v10[1]);
        }
      }

      else
      {
        *(v10 + 1) = -1;
        v20 = open(a1, a2);
        *v10 = v20;
        if ((v20 & 0x80000000) == 0)
        {
LABEL_29:
          v15 = 0;
          goto LABEL_30;
        }

        v21 = 30;
        while (*__error() == 16 && v21 != 0)
        {
          sub_100012178("%s:%d: open %s hit EBUSY, attempts remaining: %u dev_name = %s\n", "dev_init", 1189, a1, v21, v7);
          sleep(1u);
          v23 = open(a1, a2);
          *v10 = v23;
          --v21;
          if ((v23 & 0x80000000) == 0)
          {
            v15 = 0;
            goto LABEL_30;
          }
        }

        v15 = 0;
        v13 = *__error();
      }
    }

    else
    {
      memset(__b, 170, sizeof(__b));
      memset(v36, 170, sizeof(v36));
      memset(__str, 170, sizeof(__str));
      snprintf(__b, 0x400uLL, "%s/apfs", a1);
      snprintf(__str, 0x400uLL, "%s/apfs_data", a1);
      snprintf(v36, 0x400uLL, "%s/nx", a1);
      v12 = open(__b, a2);
      v10[1] = v12;
      if (v12 < 0)
      {
        v13 = *__error();
      }

      else
      {
        v13 = 0;
      }

      v26 = open(__str, a2);
      v10[2] = v26;
      if (v26 < 0)
      {
        v13 = *__error();
      }

      v27 = open(v36, a2);
      v28 = v27;
      *v10 = v27;
      v29 = v10[1];
      if ((v29 & 0x80000000) == 0 && (v10[2] & 0x80000000) == 0 && (v27 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      if (!v13)
      {
        v13 = *__error();
        v28 = *v10;
        v29 = v10[1];
      }

      v31 = v10[2];
      v32 = strerror(v13);
      sub_100012178("%s:%d: failed to open apfs/nx special devices ['%s'(%d) / '%s'(%d) / '%s'(%d)] - err %d (%s) dev_name = '%s'\n", "dev_init", 1150, __b, v29, __str, v31, v36, v28, v13, v32, v7);
      close(*v10);
      close(v10[1]);
      close(v10[2]);
      v15 = 0;
    }

    free(v15);
    if (v13)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  return 12;
}

uint64_t sub_100051768(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_100051878(a1, a2, a3);
  if (!v10)
  {
    v11 = *(a1 + 84);
    if ((a2 & 0x8000000000000000) == 0 && (v12 = (a2 * *(a1 + 84)) >> 64, is_mul_ok(a2, v11)) && ((a2 * v11) & 0x8000000000000000) == 0 && (v13 = (a3 * *(a1 + 84)) >> 64, is_mul_ok(a3, v11)))
    {
      v15 = a3 * v11;
      if (!a5 || (v16 = *(a1 + 4), v16 < 0))
      {
        v16 = *a1;
      }

      v17 = pread(v16, a4, a3 * v11, a2 * v11);
      if (v17 < 0)
      {
        v18 = __error();
        v10 = *v18;
        sub_100012178("%s:%d: blknum 0x%llx size %zu, error %d dev_name = %s\n", "fd_dev_read_helper", 484, a2, a3, *v18, (a1 + 212));
      }

      else if (v17 == v15)
      {
        return 0;
      }

      else
      {
        return 5;
      }
    }

    else
    {
      sub_100012178("%s:%d: blknum %lld size %zu blksize %u invalid, dev_name = %s\n", "fd_dev_read_helper", 448, a2, a3, *(a1 + 84), (a1 + 212));
      return 22;
    }
  }

  return v10;
}

uint64_t sub_100051878(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 36);
    if (v7)
    {
      v8 = *(a1 + 40);
      if (a3 + a2 > v8 && v8 + v7 > a2)
      {
        result = sub_100051900(a1, v8, v7, v6, *(a1 + 48));
        if (result)
        {
          return result;
        }

        *(a1 + 36) = 0;
      }
    }
  }

  v10 = *(a1 + 112);
  if (v10 - a2 >= a3 && v10 > a2)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_100051900(uint64_t a1, unint64_t a2, unint64_t a3, void *__buf, uint64_t a5)
{
  v5 = *(a1 + 112);
  v6 = v5 > a2;
  v7 = v5 - a2;
  if (!v6 || v7 < a3)
  {
    return 6;
  }

  v10 = *(a1 + 84);
  if ((a2 & 0x8000000000000000) == 0 && (v11 = (a2 * *(a1 + 84)) >> 64, is_mul_ok(a2, v10)) && (v12 = a2 * v10, ((a2 * v10) & 0x8000000000000000) == 0) && (v13 = (a3 * *(a1 + 84)) >> 64, is_mul_ok(a3, v10)))
  {
    v14 = a3 * v10;
    if (!a5 || (v15 = *(a1 + 4), v15 < 0))
    {
      v15 = *a1;
    }

    v16 = pwrite(v15, __buf, v14, v12);
    if (v16 < 0)
    {
      return *__error();
    }

    else if (v16 == v14)
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    sub_100012178("%s:%d: blknum %lld size %zu blksize %u invalid, dev_name = %s\n", "_fd_dev_write", 702, a2, a3, *(a1 + 84), (a1 + 212));
    return 22;
  }
}

uint64_t sub_1000519D8(int *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100051878(a1, a2, a3);
  if (!v12)
  {
    *(a6 + 8) = 0u;
    v14 = (a6 + 8);
    *(a6 + 88) = a5;
    *(a6 + 24) = 0u;
    *(a6 + 40) = 0u;
    *(a6 + 56) = 0u;
    *(a6 + 72) = 0u;
    v15 = a1[21];
    *(a6 + 16) = v15 * a2;
    *(a6 + 24) = a4;
    *(a6 + 32) = v15 * a3;
    if (!a5 || (v16 = a1[1], v16 < 0))
    {
      v16 = *a1;
    }

    v14->aio_fildes = v16;
    if (!aio_read(v14))
    {
      return 0;
    }

    if (*__error() == 35)
    {
      v12 = 16;
    }

    else
    {
      v12 = *__error();
      if (!v12)
      {
        return v12;
      }
    }
  }

  v13 = *a6;
  if (*a6)
  {
    *(a6 + 96) = v12;
    v13(a6);
  }

  return v12;
}

uint64_t sub_100051AC0(uint64_t a1, unint64_t a2, unint64_t a3, char *__buf, uint64_t a5, int a6)
{
  v8 = __buf;
  v9 = a3;
  v10 = a2;
  v12 = *(a1 + 24);
  if (*(a1 + 60))
  {
    if (!v12)
    {
      v13 = *(a1 + 84);
      v14 = v13 <= 0x100000 ? 0x100000 / v13 : 1;
      *(a1 + 32) = v14;
      v16 = sub_100012434(v14 * v13, 0x835B50A5uLL);
      *(a1 + 24) = v16;
      *(a1 + 36) = 0;
      if (!v16)
      {
        return 12;
      }
    }
  }

  else if (!v12)
  {

    return sub_100051900(a1, a2, a3, __buf, a5);
  }

  if (!v9)
  {
    return 0;
  }

  v17 = *(a1 + 36);
  while (1)
  {
    while (1)
    {
      v18 = v9 <= *(a1 + 32) - v17 ? v9 : *(a1 + 32) - v17;
      if ((a6 & 4) != 0 || ((*(a1 + 56) ^ a6) & 1) != 0 || v10 != *(a1 + 40) + v17)
      {
        break;
      }

      if (*(a1 + 48) != a5 || v18 == 0)
      {
        break;
      }

      memcpy((*(a1 + 24) + *(a1 + 84) * v17), v8, *(a1 + 84) * v18);
      v17 = *(a1 + 36) + v18;
      *(a1 + 36) = v17;
      v10 += v18;
      v9 -= v18;
      v8 += *(a1 + 84) * v18;
      if (!v9)
      {
        return 0;
      }
    }

    if (v17)
    {
      result = sub_100051900(a1, *(a1 + 40), v17, *(a1 + 24), *(a1 + 48));
      if (result)
      {
        break;
      }
    }

    v17 = 0;
    *(a1 + 36) = 0;
    *(a1 + 40) = v10;
    *(a1 + 48) = a5;
    *(a1 + 56) = a6;
  }

  return result;
}

void sub_100051C60(io_registry_entry_t a1, char *a2)
{
  memset(name, 0, 128);
  memset(className, 0, sizeof(className));
  IORegistryEntryGetName(a1, name);
  IOObjectGetClass(a1, className);
  warnx("%sName:[%s] Class:[%s]", a2, name, className);
  properties = 0xAAAAAAAAAAAAAAAALL;
  if (IORegistryEntryCreateCFProperties(a1, &properties, kCFAllocatorDefault, 0))
  {
    warnx("%s Err: unable to fetch properties\n", a2);
  }

  else
  {
    CFDictionaryApplyFunction(properties, sub_100051D7C, a2);
    CFRelease(properties);
  }
}

void sub_100051D7C(const __CFString *a1, const __CFString *a2, const char *a3)
{
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 170, sizeof(__b));
  memset(__str, 170, sizeof(__str));
  v6 = CFGetTypeID(a2);
  if (v6 == CFStringGetTypeID())
  {
    sub_100004AB4(a2, __str);
  }

  else if (v6 == CFNumberGetTypeID())
  {
    CFNumberGetValue(a2, kCFNumberSInt64Type, &valuePtr);
    v7 = valuePtr;
    v8 = sub_100011E2C(valuePtr, 0, 0);
    snprintf(__str, 0x100uLL, "%llu%s", v7, v8);
  }

  else if (v6 == CFBooleanGetTypeID())
  {
    CFBooleanGetValue(a2);
    __strlcpy_chk();
  }

  else
  {
    v9 = CFCopyTypeIDDescription(v6);
    sub_100004AB4(v9, __str);
    __strlcat_chk();
  }

  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (!CStringPtr)
  {
    CStringPtr = __b;
    sub_100004AB4(a1, __b);
  }

  warnx("%s > %s : %s", a3, CStringPtr, __str);
}