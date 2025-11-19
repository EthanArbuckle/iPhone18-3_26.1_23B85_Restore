google::protobuf::internal *sub_275DF24CC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v191 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v191) & 1) == 0)
  {
    while (2)
    {
      v7 = (v191 + 1);
      v8 = *v191;
      if (*v191 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v191, (v9 - 128));
          v191 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_324;
          }

          v7 = TagFallback;
          v8 = v14;
LABEL_7:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 10)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 8u;
              v10 = *(a1 + 288);
              if (v10)
              {
                goto LABEL_289;
              }

              v11 = *(a1 + 8);
              if (v11)
              {
                v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
              }

              v12 = MEMORY[0x277C8F050](v11);
              LODWORD(v10) = v12;
              *(a1 + 288) = v12;
              goto LABEL_288;
            case 2u:
              if (v8 != 18)
              {
                goto LABEL_298;
              }

              v103 = v7 - 1;
              while (1)
              {
                v104 = (v103 + 1);
                v191 = (v103 + 1);
                v105 = *(a1 + 40);
                if (!v105)
                {
                  goto LABEL_178;
                }

                v111 = *(a1 + 32);
                v106 = *v105;
                if (v111 < *v105)
                {
                  *(a1 + 32) = v111 + 1;
                  v108 = *&v105[2 * v111 + 2];
                  goto LABEL_182;
                }

                if (v106 == *(a1 + 36))
                {
LABEL_178:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                  v105 = *(a1 + 40);
                  v106 = *v105;
                }

                *v105 = v106 + 1;
                v107 = MEMORY[0x277C8F050](*(a1 + 24));
                LODWORD(v108) = v107;
                v109 = *(a1 + 32);
                v110 = *(a1 + 40) + 8 * v109;
                *(a1 + 32) = v109 + 1;
                *(v110 + 8) = v107;
                v104 = v191;
LABEL_182:
                v103 = sub_275E5B9DC(a3, v108, v104);
                v191 = v103;
                if (!v103)
                {
                  goto LABEL_324;
                }

                if (*a3 <= v103 || *v103 != 18)
                {
                  goto LABEL_291;
                }
              }

            case 3u:
              if (v8 != 26)
              {
                goto LABEL_298;
              }

              v114 = (v7 - 1);
              while (1)
              {
                v115 = (v114 + 1);
                v191 = (v114 + 1);
                v116 = *(a1 + 64);
                if (!v116)
                {
                  goto LABEL_198;
                }

                v121 = *(a1 + 56);
                v117 = *v116;
                if (v121 < *v116)
                {
                  *(a1 + 56) = v121 + 1;
                  v118 = *&v116[2 * v121 + 2];
                  goto LABEL_202;
                }

                if (v117 == *(a1 + 60))
                {
LABEL_198:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                  v116 = *(a1 + 64);
                  v117 = *v116;
                }

                *v116 = v117 + 1;
                v118 = sub_275E1F7C4(*(a1 + 48));
                v119 = *(a1 + 56);
                v120 = *(a1 + 64) + 8 * v119;
                *(a1 + 56) = v119 + 1;
                *(v120 + 8) = v118;
                v115 = v191;
LABEL_202:
                v114 = sub_275E5C05C(a3, v118, v115);
                v191 = v114;
                if (!v114)
                {
                  goto LABEL_324;
                }

                if (*a3 <= v114 || *v114 != 26)
                {
                  goto LABEL_291;
                }
              }

            case 4u:
              if (v8 != 34)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x10u;
              v142 = *(a1 + 296);
              if (!v142)
              {
                v143 = *(a1 + 8);
                if (v143)
                {
                  v143 = *(v143 & 0xFFFFFFFFFFFFFFFELL);
                }

                v142 = sub_275E1F6F8(v143);
                *(a1 + 296) = v142;
                v7 = v191;
              }

              v60 = sub_275E5C12C(a3, v142, v7);
              goto LABEL_290;
            case 5u:
              if (v8 != 42)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x20u;
              v10 = *(a1 + 304);
              if (v10)
              {
                goto LABEL_289;
              }

              v95 = *(a1 + 8);
              if (v95)
              {
                v95 = *(v95 & 0xFFFFFFFFFFFFFFFELL);
              }

              v96 = MEMORY[0x277C8F050](v95);
              LODWORD(v10) = v96;
              *(a1 + 304) = v96;
              goto LABEL_288;
            case 6u:
              if (v8 != 50)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x40u;
              v10 = *(a1 + 312);
              if (v10)
              {
                goto LABEL_289;
              }

              v77 = *(a1 + 8);
              if (v77)
              {
                v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
              }

              v78 = MEMORY[0x277C8F050](v77);
              LODWORD(v10) = v78;
              *(a1 + 312) = v78;
              goto LABEL_288;
            case 7u:
              if (v8 != 58)
              {
                goto LABEL_298;
              }

              v79 = v7 - 1;
              while (1)
              {
                v80 = (v79 + 1);
                v191 = (v79 + 1);
                v81 = *(a1 + 88);
                if (!v81)
                {
                  goto LABEL_133;
                }

                v87 = *(a1 + 80);
                v82 = *v81;
                if (v87 < *v81)
                {
                  *(a1 + 80) = v87 + 1;
                  v84 = *&v81[2 * v87 + 2];
                  goto LABEL_137;
                }

                if (v82 == *(a1 + 84))
                {
LABEL_133:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
                  v81 = *(a1 + 88);
                  v82 = *v81;
                }

                *v81 = v82 + 1;
                v83 = MEMORY[0x277C8F050](*(a1 + 72));
                LODWORD(v84) = v83;
                v85 = *(a1 + 80);
                v86 = *(a1 + 88) + 8 * v85;
                *(a1 + 80) = v85 + 1;
                *(v86 + 8) = v83;
                v80 = v191;
LABEL_137:
                v79 = sub_275E5B9DC(a3, v84, v80);
                v191 = v79;
                if (!v79)
                {
                  goto LABEL_324;
                }

                if (*a3 <= v79 || *v79 != 58)
                {
                  goto LABEL_291;
                }
              }

            case 0xAu:
              if (v8 != 82)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 1u;
              goto LABEL_95;
            case 0xBu:
              if (v8 != 90)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x80u;
              v38 = *(a1 + 320);
              if (v38)
              {
                goto LABEL_194;
              }

              v75 = *(a1 + 8);
              if (v75)
              {
                v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
              }

              v76 = MEMORY[0x277C8EFA0](v75);
              LODWORD(v38) = v76;
              *(a1 + 320) = v76;
              goto LABEL_193;
            case 0xCu:
              if (v8 != 96)
              {
                goto LABEL_298;
              }

              v5 |= 0x200000u;
              v41 = (v7 + 1);
              LODWORD(v42) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_62;
              }

              v43 = *v41;
              v42 = (v42 + (v43 << 7) - 128);
              if (v43 < 0)
              {
                v173 = google::protobuf::internal::VarintParseSlow32(v7, v42);
                v191 = v173;
                *(a1 + 432) = v174;
                if (!v173)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                v41 = (v7 + 2);
LABEL_62:
                v191 = v41;
                *(a1 + 432) = v42;
              }

              goto LABEL_291;
            case 0xDu:
              if (v8 != 104)
              {
                goto LABEL_298;
              }

              v5 |= 0x400000u;
              v63 = (v7 + 1);
              LODWORD(v64) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_106;
              }

              v65 = *v63;
              v64 = (v64 + (v65 << 7) - 128);
              if (v65 < 0)
              {
                v177 = google::protobuf::internal::VarintParseSlow32(v7, v64);
                v191 = v177;
                *(a1 + 436) = v178;
                if (!v177)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                v63 = (v7 + 2);
LABEL_106:
                v191 = v63;
                *(a1 + 436) = v64;
              }

              goto LABEL_291;
            case 0xEu:
              if (v8 != 114)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x100u;
              v38 = *(a1 + 328);
              if (v38)
              {
                goto LABEL_194;
              }

              v112 = *(a1 + 8);
              if (v112)
              {
                v112 = *(v112 & 0xFFFFFFFFFFFFFFFELL);
              }

              v113 = MEMORY[0x277C8EFA0](v112);
              LODWORD(v38) = v113;
              *(a1 + 328) = v113;
              goto LABEL_193;
            case 0xFu:
              if (v8 != 120)
              {
                goto LABEL_298;
              }

              v5 |= 0x800000u;
              v97 = (v7 + 1);
              LODWORD(v98) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_169;
              }

              v99 = *v97;
              v98 = (v98 + (v99 << 7) - 128);
              if (v99 < 0)
              {
                v181 = google::protobuf::internal::VarintParseSlow32(v7, v98);
                v191 = v181;
                *(a1 + 440) = v182;
                if (!v181)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                v97 = (v7 + 2);
LABEL_169:
                v191 = v97;
                *(a1 + 440) = v98;
              }

              goto LABEL_291;
            case 0x10u:
              if (v8 != 128)
              {
                goto LABEL_298;
              }

              v5 |= 0x1000000u;
              v47 = (v7 + 1);
              LODWORD(v48) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_74;
              }

              v49 = *v47;
              v48 = (v48 + (v49 << 7) - 128);
              if (v49 < 0)
              {
                v175 = google::protobuf::internal::VarintParseSlow32(v7, v48);
                v191 = v175;
                *(a1 + 444) = v176;
                if (!v175)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                v47 = (v7 + 2);
LABEL_74:
                v191 = v47;
                *(a1 + 444) = v48;
              }

              goto LABEL_291;
            case 0x11u:
              if (v8 != 138)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x200u;
              v10 = *(a1 + 336);
              if (v10)
              {
                goto LABEL_289;
              }

              v144 = *(a1 + 8);
              if (v144)
              {
                v144 = *(v144 & 0xFFFFFFFFFFFFFFFELL);
              }

              v145 = MEMORY[0x277C8F050](v144);
              LODWORD(v10) = v145;
              *(a1 + 336) = v145;
              goto LABEL_288;
            case 0x12u:
              if (v8 != 146)
              {
                goto LABEL_298;
              }

              v146 = v7 - 2;
              while (1)
              {
                v147 = (v146 + 2);
                v191 = (v146 + 2);
                v148 = *(a1 + 112);
                if (!v148)
                {
                  goto LABEL_253;
                }

                v154 = *(a1 + 104);
                v149 = *v148;
                if (v154 < *v148)
                {
                  *(a1 + 104) = v154 + 1;
                  v151 = *&v148[2 * v154 + 2];
                  goto LABEL_257;
                }

                if (v149 == *(a1 + 108))
                {
LABEL_253:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
                  v148 = *(a1 + 112);
                  v149 = *v148;
                }

                *v148 = v149 + 1;
                v150 = MEMORY[0x277C8EF80](*(a1 + 96));
                LODWORD(v151) = v150;
                v152 = *(a1 + 104);
                v153 = *(a1 + 112) + 8 * v152;
                *(a1 + 104) = v152 + 1;
                *(v153 + 8) = v150;
                v147 = v191;
LABEL_257:
                v146 = sub_275E5C2CC(a3, v151, v147);
                v191 = v146;
                if (!v146)
                {
                  goto LABEL_324;
                }

                if (*a3 <= v146 || *v146 != 402)
                {
                  goto LABEL_291;
                }
              }

            case 0x13u:
              if (v8 != 152)
              {
                goto LABEL_298;
              }

              v5 |= 0x10000000u;
              v160 = (v7 + 1);
              v159 = *v7;
              if ((v159 & 0x8000000000000000) == 0)
              {
                goto LABEL_277;
              }

              v161 = *v160;
              v159 = (v161 << 7) + v159 - 128;
              if (v161 < 0)
              {
                v185 = google::protobuf::internal::VarintParseSlow64(v7, v159);
                v191 = v185;
                *(a1 + 457) = v186 != 0;
                if (!v185)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                v160 = (v7 + 2);
LABEL_277:
                v191 = v160;
                *(a1 + 457) = v159 != 0;
              }

              goto LABEL_291;
            case 0x14u:
              if (v8 != 162)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x400u;
              v10 = *(a1 + 344);
              if (v10)
              {
                goto LABEL_289;
              }

              v157 = *(a1 + 8);
              if (v157)
              {
                v157 = *(v157 & 0xFFFFFFFFFFFFFFFELL);
              }

              v158 = MEMORY[0x277C8F050](v157);
              LODWORD(v10) = v158;
              *(a1 + 344) = v158;
              goto LABEL_288;
            case 0x15u:
              if (v8 != 170)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x800u;
              v38 = *(a1 + 352);
              if (v38)
              {
                goto LABEL_194;
              }

              v39 = *(a1 + 8);
              if (v39)
              {
                v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
              }

              v40 = MEMORY[0x277C8EFA0](v39);
              LODWORD(v38) = v40;
              *(a1 + 352) = v40;
LABEL_193:
              v7 = v191;
LABEL_194:
              v60 = sub_275E5C1FC(a3, v38, v7);
              goto LABEL_290;
            case 0x16u:
              if (v8 != 176)
              {
                goto LABEL_298;
              }

              v5 |= 0x2000000u;
              v100 = (v7 + 1);
              LODWORD(v101) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_174;
              }

              v102 = *v100;
              v101 = (v101 + (v102 << 7) - 128);
              if (v102 < 0)
              {
                v183 = google::protobuf::internal::VarintParseSlow32(v7, v101);
                v191 = v183;
                *(a1 + 448) = v184;
                if (!v183)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                v100 = (v7 + 2);
LABEL_174:
                v191 = v100;
                *(a1 + 448) = v101;
              }

              goto LABEL_291;
            case 0x17u:
              if (v8 != 184)
              {
                goto LABEL_298;
              }

              v5 |= 0x4000000u;
              v162 = (v7 + 1);
              LODWORD(v163) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_282;
              }

              v164 = *v162;
              v163 = (v163 + (v164 << 7) - 128);
              if (v164 < 0)
              {
                v187 = google::protobuf::internal::VarintParseSlow32(v7, v163);
                v191 = v187;
                *(a1 + 452) = v188;
                if (!v187)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                v162 = (v7 + 2);
LABEL_282:
                v191 = v162;
                *(a1 + 452) = v163;
              }

              goto LABEL_291;
            case 0x18u:
              if (v8 != 194)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x1000u;
              v44 = *(a1 + 360);
              if (v44)
              {
                goto LABEL_159;
              }

              v45 = *(a1 + 8);
              if (v45)
              {
                v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
              }

              v46 = MEMORY[0x277C8F0F0](v45);
              LODWORD(v44) = v46;
              *(a1 + 360) = v46;
              goto LABEL_158;
            case 0x19u:
              if (v8 != 202)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x2000u;
              v44 = *(a1 + 368);
              if (v44)
              {
                goto LABEL_159;
              }

              v93 = *(a1 + 8);
              if (v93)
              {
                v93 = *(v93 & 0xFFFFFFFFFFFFFFFELL);
              }

              v94 = MEMORY[0x277C8F0F0](v93);
              LODWORD(v44) = v94;
              *(a1 + 368) = v94;
              goto LABEL_158;
            case 0x1Au:
              if (v8 != 210)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x4000u;
              v44 = *(a1 + 376);
              if (v44)
              {
                goto LABEL_159;
              }

              v58 = *(a1 + 8);
              if (v58)
              {
                v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
              }

              v59 = MEMORY[0x277C8F0F0](v58);
              LODWORD(v44) = v59;
              *(a1 + 376) = v59;
LABEL_158:
              v7 = v191;
LABEL_159:
              v60 = sub_275E5C39C(a3, v44, v7);
              goto LABEL_290;
            case 0x1Bu:
              if (v8 != 218)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x8000u;
              v10 = *(a1 + 384);
              if (v10)
              {
                goto LABEL_289;
              }

              v122 = *(a1 + 8);
              if (v122)
              {
                v122 = *(v122 & 0xFFFFFFFFFFFFFFFELL);
              }

              v123 = MEMORY[0x277C8F050](v122);
              LODWORD(v10) = v123;
              *(a1 + 384) = v123;
              goto LABEL_288;
            case 0x1Cu:
              if (v8 != 226)
              {
                goto LABEL_298;
              }

              v50 = (v7 - 2);
              while (1)
              {
                v51 = (v50 + 2);
                v191 = (v50 + 2);
                v52 = *(a1 + 136);
                if (!v52)
                {
                  goto LABEL_78;
                }

                v57 = *(a1 + 128);
                v53 = *v52;
                if (v57 < *v52)
                {
                  *(a1 + 128) = v57 + 1;
                  v54 = *&v52[2 * v57 + 2];
                  goto LABEL_82;
                }

                if (v53 == *(a1 + 132))
                {
LABEL_78:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120));
                  v52 = *(a1 + 136);
                  v53 = *v52;
                }

                *v52 = v53 + 1;
                v54 = sub_275E1FE50(*(a1 + 120));
                v55 = *(a1 + 128);
                v56 = *(a1 + 136) + 8 * v55;
                *(a1 + 128) = v55 + 1;
                *(v56 + 8) = v54;
                v51 = v191;
LABEL_82:
                v50 = sub_275E5C46C(a3, v54, v51);
                v191 = v50;
                if (!v50)
                {
                  goto LABEL_324;
                }

                if (*a3 <= v50 || *v50 != 482)
                {
                  goto LABEL_291;
                }
              }

            case 0x1Du:
              if (v8 != 234)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x10000u;
              v10 = *(a1 + 392);
              if (v10)
              {
                goto LABEL_289;
              }

              v36 = *(a1 + 8);
              if (v36)
              {
                v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
              }

              v37 = MEMORY[0x277C8F050](v36);
              LODWORD(v10) = v37;
              *(a1 + 392) = v37;
              goto LABEL_288;
            case 0x1Eu:
              if (v8 != 242)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x20000u;
              v10 = *(a1 + 400);
              if (v10)
              {
                goto LABEL_289;
              }

              v165 = *(a1 + 8);
              if (v165)
              {
                v165 = *(v165 & 0xFFFFFFFFFFFFFFFELL);
              }

              v166 = MEMORY[0x277C8F050](v165);
              LODWORD(v10) = v166;
              *(a1 + 400) = v166;
              goto LABEL_288;
            case 0x1Fu:
              if (v8 != 250)
              {
                goto LABEL_298;
              }

              v66 = v7 - 2;
              while (1)
              {
                v67 = (v66 + 2);
                v191 = (v66 + 2);
                v68 = *(a1 + 160);
                if (!v68)
                {
                  goto LABEL_110;
                }

                v74 = *(a1 + 152);
                v69 = *v68;
                if (v74 < *v68)
                {
                  *(a1 + 152) = v74 + 1;
                  v71 = *&v68[2 * v74 + 2];
                  goto LABEL_114;
                }

                if (v69 == *(a1 + 156))
                {
LABEL_110:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 144));
                  v68 = *(a1 + 160);
                  v69 = *v68;
                }

                *v68 = v69 + 1;
                v70 = MEMORY[0x277C8F050](*(a1 + 144));
                LODWORD(v71) = v70;
                v72 = *(a1 + 152);
                v73 = *(a1 + 160) + 8 * v72;
                *(a1 + 152) = v72 + 1;
                *(v73 + 8) = v70;
                v67 = v191;
LABEL_114:
                v66 = sub_275E5B9DC(a3, v71, v67);
                v191 = v66;
                if (!v66)
                {
                  goto LABEL_324;
                }

                if (*a3 <= v66 || *v66 != 506)
                {
                  goto LABEL_291;
                }
              }

            case 0x22u:
              if (v8 != 16)
              {
                goto LABEL_298;
              }

              v5 |= 0x20000000u;
              v89 = (v7 + 1);
              v88 = *v7;
              if ((v88 & 0x8000000000000000) == 0)
              {
                goto LABEL_147;
              }

              v90 = *v89;
              v88 = (v90 << 7) + v88 - 128;
              if (v90 < 0)
              {
                v179 = google::protobuf::internal::VarintParseSlow64(v7, v88);
                v191 = v179;
                *(a1 + 458) = v180 != 0;
                if (!v179)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                v89 = (v7 + 2);
LABEL_147:
                v191 = v89;
                *(a1 + 458) = v88 != 0;
              }

              goto LABEL_291;
            case 0x23u:
              if (v8 != 26)
              {
                goto LABEL_298;
              }

              v133 = v7 - 2;
              while (1)
              {
                v134 = (v133 + 2);
                v191 = (v133 + 2);
                v135 = *(a1 + 184);
                if (!v135)
                {
                  goto LABEL_229;
                }

                v141 = *(a1 + 176);
                v136 = *v135;
                if (v141 < *v135)
                {
                  *(a1 + 176) = v141 + 1;
                  v138 = *&v135[2 * v141 + 2];
                  goto LABEL_233;
                }

                if (v136 == *(a1 + 180))
                {
LABEL_229:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 168));
                  v135 = *(a1 + 184);
                  v136 = *v135;
                }

                *v135 = v136 + 1;
                v137 = MEMORY[0x277C8F050](*(a1 + 168));
                LODWORD(v138) = v137;
                v139 = *(a1 + 176);
                v140 = *(a1 + 184) + 8 * v139;
                *(a1 + 176) = v139 + 1;
                *(v140 + 8) = v137;
                v134 = v191;
LABEL_233:
                v133 = sub_275E5B9DC(a3, v138, v134);
                v191 = v133;
                if (!v133)
                {
                  goto LABEL_324;
                }

                if (*a3 <= v133 || *v133 != 666)
                {
                  goto LABEL_291;
                }
              }

            case 0x24u:
              if (v8 != 34)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x40000u;
              v10 = *(a1 + 408);
              if (v10)
              {
                goto LABEL_289;
              }

              v91 = *(a1 + 8);
              if (v91)
              {
                v91 = *(v91 & 0xFFFFFFFFFFFFFFFELL);
              }

              v92 = MEMORY[0x277C8F050](v91);
              LODWORD(v10) = v92;
              *(a1 + 408) = v92;
              goto LABEL_288;
            case 0x25u:
              if (v8 != 42)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 2u;
              goto LABEL_95;
            case 0x26u:
              if (v8 != 50)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 4u;
LABEL_95:
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v60 = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_290;
            case 0x27u:
              if (v8 != 58)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x80000u;
              v10 = *(a1 + 416);
              if (v10)
              {
                goto LABEL_289;
              }

              v155 = *(a1 + 8);
              if (v155)
              {
                v155 = *(v155 & 0xFFFFFFFFFFFFFFFELL);
              }

              v156 = MEMORY[0x277C8F050](v155);
              LODWORD(v10) = v156;
              *(a1 + 416) = v156;
LABEL_288:
              v7 = v191;
LABEL_289:
              v60 = sub_275E5B9DC(a3, v10, v7);
              goto LABEL_290;
            case 0x28u:
              if (v8 != 64)
              {
                goto LABEL_298;
              }

              v5 |= 0x40000000u;
              v168 = (v7 + 1);
              v167 = *v7;
              if ((v167 & 0x8000000000000000) == 0)
              {
                goto LABEL_297;
              }

              v169 = *v168;
              v167 = (v169 << 7) + v167 - 128;
              if (v169 < 0)
              {
                v189 = google::protobuf::internal::VarintParseSlow64(v7, v167);
                v191 = v189;
                *(a1 + 459) = v190 != 0;
                if (!v189)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                v168 = (v7 + 2);
LABEL_297:
                v191 = v168;
                *(a1 + 459) = v167 != 0;
              }

              goto LABEL_291;
            case 0x29u:
              if (v8 != 72)
              {
                goto LABEL_298;
              }

              v5 |= 0x8000000u;
              v34 = (v7 + 1);
              v33 = *v7;
              if ((v33 & 0x8000000000000000) == 0)
              {
                goto LABEL_47;
              }

              v35 = *v34;
              v33 = (v35 << 7) + v33 - 128;
              if (v35 < 0)
              {
                v171 = google::protobuf::internal::VarintParseSlow64(v7, v33);
                v191 = v171;
                *(a1 + 456) = v172 != 0;
                if (!v171)
                {
                  goto LABEL_324;
                }
              }

              else
              {
                v34 = (v7 + 2);
LABEL_47:
                v191 = v34;
                *(a1 + 456) = v33 != 0;
              }

              goto LABEL_291;
            case 0x2Au:
              if (v8 != 82)
              {
                goto LABEL_298;
              }

              v124 = v7 - 2;
              while (1)
              {
                v125 = (v124 + 2);
                v191 = (v124 + 2);
                v126 = *(a1 + 208);
                if (!v126)
                {
                  goto LABEL_216;
                }

                v132 = *(a1 + 200);
                v127 = *v126;
                if (v132 < *v126)
                {
                  *(a1 + 200) = v132 + 1;
                  v129 = *&v126[2 * v132 + 2];
                  goto LABEL_220;
                }

                if (v127 == *(a1 + 204))
                {
LABEL_216:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 192));
                  v126 = *(a1 + 208);
                  v127 = *v126;
                }

                *v126 = v127 + 1;
                v128 = MEMORY[0x277C8F050](*(a1 + 192));
                LODWORD(v129) = v128;
                v130 = *(a1 + 200);
                v131 = *(a1 + 208) + 8 * v130;
                *(a1 + 200) = v130 + 1;
                *(v131 + 8) = v128;
                v125 = v191;
LABEL_220:
                v124 = sub_275E5B9DC(a3, v129, v125);
                v191 = v124;
                if (!v124)
                {
                  goto LABEL_324;
                }

                if (*a3 <= v124 || *v124 != 722)
                {
                  goto LABEL_291;
                }
              }

            case 0x2Bu:
              if (v8 != 90)
              {
                goto LABEL_298;
              }

              v24 = v7 - 2;
              while (1)
              {
                v25 = (v24 + 2);
                v191 = (v24 + 2);
                v26 = *(a1 + 232);
                if (!v26)
                {
                  goto LABEL_33;
                }

                v32 = *(a1 + 224);
                v27 = *v26;
                if (v32 < *v26)
                {
                  *(a1 + 224) = v32 + 1;
                  v29 = *&v26[2 * v32 + 2];
                  goto LABEL_37;
                }

                if (v27 == *(a1 + 228))
                {
LABEL_33:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 216));
                  v26 = *(a1 + 232);
                  v27 = *v26;
                }

                *v26 = v27 + 1;
                v28 = MEMORY[0x277C8F050](*(a1 + 216));
                LODWORD(v29) = v28;
                v30 = *(a1 + 224);
                v31 = *(a1 + 232) + 8 * v30;
                *(a1 + 224) = v30 + 1;
                *(v31 + 8) = v28;
                v25 = v191;
LABEL_37:
                v24 = sub_275E5B9DC(a3, v29, v25);
                v191 = v24;
                if (!v24)
                {
                  goto LABEL_324;
                }

                if (*a3 <= v24 || *v24 != 730)
                {
                  goto LABEL_291;
                }
              }

            case 0x2Cu:
              if (v8 != 98)
              {
                goto LABEL_298;
              }

              v15 = v7 - 2;
              break;
            case 0x2Du:
              if (v8 != 106)
              {
                goto LABEL_298;
              }

              *(a1 + 16) |= 0x100000u;
              v61 = *(a1 + 424);
              if (!v61)
              {
                v62 = *(a1 + 8);
                if (v62)
                {
                  v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
                }

                v61 = sub_275E1FF68(v62);
                *(a1 + 424) = v61;
                v7 = v191;
              }

              v60 = sub_275E5C53C(a3, v61, v7);
              goto LABEL_290;
            default:
LABEL_298:
              if (v8)
              {
                v170 = (v8 & 7) == 4;
              }

              else
              {
                v170 = 1;
              }

              if (v170)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_275E22260((a1 + 8));
              }

              v60 = google::protobuf::internal::UnknownFieldParse();
LABEL_290:
              v191 = v60;
              if (!v60)
              {
LABEL_324:
                v191 = 0;
                goto LABEL_2;
              }

LABEL_291:
              if (sub_275E221E8(a3, &v191))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v16 = (v15 + 2);
            v191 = (v15 + 2);
            v17 = *(a1 + 256);
            if (!v17)
            {
              goto LABEL_20;
            }

            v23 = *(a1 + 248);
            v18 = *v17;
            if (v23 < *v17)
            {
              *(a1 + 248) = v23 + 1;
              v20 = *&v17[2 * v23 + 2];
              goto LABEL_24;
            }

            if (v18 == *(a1 + 252))
            {
LABEL_20:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 240));
              v17 = *(a1 + 256);
              v18 = *v17;
            }

            *v17 = v18 + 1;
            v19 = MEMORY[0x277C8F050](*(a1 + 240));
            LODWORD(v20) = v19;
            v21 = *(a1 + 248);
            v22 = *(a1 + 256) + 8 * v21;
            *(a1 + 248) = v21 + 1;
            *(v22 + 8) = v19;
            v16 = v191;
LABEL_24:
            v15 = sub_275E5B9DC(a3, v20, v16);
            v191 = v15;
            if (!v15)
            {
              goto LABEL_324;
            }

            if (*a3 <= v15 || *v15 != 738)
            {
              goto LABEL_291;
            }
          }
        }

        v7 = (v191 + 2);
      }

      break;
    }

    v191 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v191;
}

unsigned __int8 *sub_275DF3828(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 288);
    *v4 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = v4 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        v4[2] = v10;
        v9 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v8;
      v9 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v7, v9, a3);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v15 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 18;
      v16 = *(v15 + 5);
      if (v16 > 0x7F)
      {
        v4[1] = v16 | 0x80;
        v18 = v16 >> 7;
        if (v16 >> 14)
        {
          v17 = v4 + 3;
          do
          {
            *(v17 - 1) = v18 | 0x80;
            v19 = v18 >> 7;
            ++v17;
            v20 = v18 >> 14;
            v18 >>= 7;
          }

          while (v20);
          *(v17 - 1) = v19;
        }

        else
        {
          v4[2] = v18;
          v17 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v16;
        v17 = v4 + 2;
      }

      v4 = TSP::Reference::_InternalSerialize(v15, v17, a3);
    }
  }

  v21 = *(a1 + 56);
  if (v21)
  {
    for (j = 0; j != v21; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v23 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 26;
      v24 = *(v23 + 20);
      if (v24 > 0x7F)
      {
        v4[1] = v24 | 0x80;
        v26 = v24 >> 7;
        if (v24 >> 14)
        {
          v25 = v4 + 3;
          do
          {
            *(v25 - 1) = v26 | 0x80;
            v27 = v26 >> 7;
            ++v25;
            v28 = v26 >> 14;
            v26 >>= 7;
          }

          while (v28);
          *(v25 - 1) = v27;
        }

        else
        {
          v4[2] = v26;
          v25 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v24;
        v25 = v4 + 2;
      }

      v4 = sub_275DE83CC(v23, v25, a3);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v29 = *(a1 + 296);
    *v4 = 34;
    v30 = *(v29 + 20);
    if (v30 > 0x7F)
    {
      v4[1] = v30 | 0x80;
      v32 = v30 >> 7;
      if (v30 >> 14)
      {
        v31 = v4 + 3;
        do
        {
          *(v31 - 1) = v32 | 0x80;
          v33 = v32 >> 7;
          ++v31;
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
        *(v31 - 1) = v33;
      }

      else
      {
        v4[2] = v32;
        v31 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v30;
      v31 = v4 + 2;
    }

    v4 = sub_275DE79FC(v29, v31, a3);
    if ((v6 & 0x20) == 0)
    {
LABEL_38:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_60;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_38;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v35 = *(a1 + 304);
  *v4 = 42;
  v36 = *(v35 + 5);
  if (v36 > 0x7F)
  {
    v4[1] = v36 | 0x80;
    v38 = v36 >> 7;
    if (v36 >> 14)
    {
      v37 = v4 + 3;
      do
      {
        *(v37 - 1) = v38 | 0x80;
        v39 = v38 >> 7;
        ++v37;
        v40 = v38 >> 14;
        v38 >>= 7;
      }

      while (v40);
      *(v37 - 1) = v39;
    }

    else
    {
      v4[2] = v38;
      v37 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v36;
    v37 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v35, v37, a3);
  if ((v6 & 0x40) != 0)
  {
LABEL_60:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v41 = *(a1 + 312);
    *v4 = 50;
    v42 = *(v41 + 5);
    if (v42 > 0x7F)
    {
      v4[1] = v42 | 0x80;
      v44 = v42 >> 7;
      if (v42 >> 14)
      {
        v43 = v4 + 3;
        do
        {
          *(v43 - 1) = v44 | 0x80;
          v45 = v44 >> 7;
          ++v43;
          v46 = v44 >> 14;
          v44 >>= 7;
        }

        while (v46);
        *(v43 - 1) = v45;
      }

      else
      {
        v4[2] = v44;
        v43 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v42;
      v43 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v41, v43, a3);
  }

LABEL_70:
  v47 = *(a1 + 80);
  if (v47)
  {
    for (k = 0; k != v47; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v49 = *(*(a1 + 88) + 8 * k + 8);
      *v4 = 58;
      v50 = *(v49 + 5);
      if (v50 > 0x7F)
      {
        v4[1] = v50 | 0x80;
        v52 = v50 >> 7;
        if (v50 >> 14)
        {
          v51 = v4 + 3;
          do
          {
            *(v51 - 1) = v52 | 0x80;
            v53 = v52 >> 7;
            ++v51;
            v54 = v52 >> 14;
            v52 >>= 7;
          }

          while (v54);
          *(v51 - 1) = v53;
        }

        else
        {
          v4[2] = v52;
          v51 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v50;
        v51 = v4 + 2;
      }

      v4 = TSP::Reference::_InternalSerialize(v49, v51, a3);
    }
  }

  if (v6)
  {
    v4 = sub_275DE5774(a3, 10, (*(a1 + 264) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v6 & 0x80) == 0)
    {
LABEL_84:
      if ((v6 & 0x200000) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_142;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_84;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v58 = *(a1 + 320);
  *v4 = 90;
  v59 = *(v58 + 5);
  if (v59 > 0x7F)
  {
    v4[1] = v59 | 0x80;
    v62 = v59 >> 7;
    if (v59 >> 14)
    {
      v60 = v4 + 3;
      do
      {
        *(v60 - 1) = v62 | 0x80;
        v78 = v62 >> 7;
        ++v60;
        v79 = v62 >> 14;
        v62 >>= 7;
      }

      while (v79);
      *(v60 - 1) = v78;
    }

    else
    {
      v4[2] = v62;
      v60 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v59;
    v60 = v4 + 2;
  }

  v4 = TSD::GeometryArchive::_InternalSerialize(v58, v60, a3);
  if ((v6 & 0x200000) == 0)
  {
LABEL_85:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_86;
    }

LABEL_163:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v90 = *(a1 + 436);
    *v4 = 104;
    if (v90 > 0x7F)
    {
      v4[1] = v90 | 0x80;
      v91 = v90 >> 7;
      if (v90 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v91 | 0x80;
          v96 = v91 >> 7;
          ++v4;
          v97 = v91 >> 14;
          v91 >>= 7;
        }

        while (v97);
        *(v4 - 1) = v96;
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_186;
        }
      }

      else
      {
        v4[2] = v91;
        v4 += 3;
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_186;
        }
      }
    }

    else
    {
      v4[1] = v90;
      v4 += 2;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_186;
      }
    }

LABEL_87:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_88;
    }

LABEL_207:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v108 = *(a1 + 440);
    *v4 = 120;
    if (v108 > 0x7F)
    {
      v4[1] = v108 | 0x80;
      v109 = v108 >> 7;
      if (v108 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v109 | 0x80;
          v116 = v109 >> 7;
          ++v4;
          v117 = v109 >> 14;
          v109 >>= 7;
        }

        while (v117);
        *(v4 - 1) = v116;
        if ((v6 & 0x1000000) != 0)
        {
          goto LABEL_227;
        }
      }

      else
      {
        v4[2] = v109;
        v4 += 3;
        if ((v6 & 0x1000000) != 0)
        {
          goto LABEL_227;
        }
      }
    }

    else
    {
      v4[1] = v108;
      v4 += 2;
      if ((v6 & 0x1000000) != 0)
      {
        goto LABEL_227;
      }
    }

LABEL_89:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_90;
  }

LABEL_142:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v80 = *(a1 + 432);
  *v4 = 96;
  if (v80 > 0x7F)
  {
    v4[1] = v80 | 0x80;
    v81 = v80 >> 7;
    if (v80 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v81 | 0x80;
        v88 = v81 >> 7;
        ++v4;
        v89 = v81 >> 14;
        v81 >>= 7;
      }

      while (v89);
      *(v4 - 1) = v88;
      if ((v6 & 0x400000) != 0)
      {
        goto LABEL_163;
      }
    }

    else
    {
      v4[2] = v81;
      v4 += 3;
      if ((v6 & 0x400000) != 0)
      {
        goto LABEL_163;
      }
    }
  }

  else
  {
    v4[1] = v80;
    v4 += 2;
    if ((v6 & 0x400000) != 0)
    {
      goto LABEL_163;
    }
  }

LABEL_86:
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_87;
  }

LABEL_186:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v98 = *(a1 + 328);
  *v4 = 114;
  v99 = *(v98 + 5);
  if (v99 > 0x7F)
  {
    v4[1] = v99 | 0x80;
    v101 = v99 >> 7;
    if (v99 >> 14)
    {
      v100 = v4 + 3;
      do
      {
        *(v100 - 1) = v101 | 0x80;
        v106 = v101 >> 7;
        ++v100;
        v107 = v101 >> 14;
        v101 >>= 7;
      }

      while (v107);
      *(v100 - 1) = v106;
    }

    else
    {
      v4[2] = v101;
      v100 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v99;
    v100 = v4 + 2;
  }

  v4 = TSD::GeometryArchive::_InternalSerialize(v98, v100, a3);
  if ((v6 & 0x800000) != 0)
  {
    goto LABEL_207;
  }

LABEL_88:
  if ((v6 & 0x1000000) == 0)
  {
    goto LABEL_89;
  }

LABEL_227:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v118 = *(a1 + 444);
  *v4 = 384;
  if (v118 > 0x7F)
  {
    v4[2] = v118 | 0x80;
    v119 = v118 >> 7;
    if (v118 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v119 | 0x80;
        v126 = v119 >> 7;
        ++v4;
        v127 = v119 >> 14;
        v119 >>= 7;
      }

      while (v127);
      *(v4 - 1) = v126;
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v4[3] = v119;
      v4 += 4;
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_107;
      }
    }
  }

  else
  {
    v4[2] = v118;
    v4 += 3;
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_107;
    }
  }

LABEL_90:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v55 = *(a1 + 336);
  *v4 = 394;
  v56 = *(v55 + 5);
  if (v56 > 0x7F)
  {
    v4[2] = v56 | 0x80;
    v61 = v56 >> 7;
    if (v56 >> 14)
    {
      v57 = v4 + 4;
      do
      {
        *(v57 - 1) = v61 | 0x80;
        v63 = v61 >> 7;
        ++v57;
        v64 = v61 >> 14;
        v61 >>= 7;
      }

      while (v64);
      *(v57 - 1) = v63;
    }

    else
    {
      v4[3] = v61;
      v57 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v56;
    v57 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v55, v57, a3);
LABEL_107:
  v65 = *(a1 + 104);
  if (v65)
  {
    for (m = 0; m != v65; ++m)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v67 = *(*(a1 + 112) + 8 * m + 8);
      *v4 = 402;
      v68 = *(v67 + 5);
      if (v68 > 0x7F)
      {
        v4[2] = v68 | 0x80;
        v70 = v68 >> 7;
        if (v68 >> 14)
        {
          v69 = v4 + 4;
          do
          {
            *(v69 - 1) = v70 | 0x80;
            v71 = v70 >> 7;
            ++v69;
            v72 = v70 >> 14;
            v70 >>= 7;
          }

          while (v72);
          *(v69 - 1) = v71;
        }

        else
        {
          v4[3] = v70;
          v69 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v68;
        v69 = v4 + 3;
      }

      v4 = TSD::GuideArchive::_InternalSerialize(v67, v69, a3);
    }
  }

  if ((v6 & 0x10000000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v73 = *(a1 + 457);
    *v4 = 408;
    v4[2] = v73;
    v4 += 3;
    if ((v6 & 0x400) == 0)
    {
LABEL_121:
      if ((v6 & 0x800) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_154;
    }
  }

  else if ((v6 & 0x400) == 0)
  {
    goto LABEL_121;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v74 = *(a1 + 344);
  *v4 = 418;
  v75 = *(v74 + 5);
  if (v75 > 0x7F)
  {
    v4[2] = v75 | 0x80;
    v77 = v75 >> 7;
    if (v75 >> 14)
    {
      v76 = v4 + 4;
      do
      {
        *(v76 - 1) = v77 | 0x80;
        v82 = v77 >> 7;
        ++v76;
        v83 = v77 >> 14;
        v77 >>= 7;
      }

      while (v83);
      *(v76 - 1) = v82;
    }

    else
    {
      v4[3] = v77;
      v76 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v75;
    v76 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v74, v76, a3);
  if ((v6 & 0x800) == 0)
  {
LABEL_122:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_175;
  }

LABEL_154:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v84 = *(a1 + 352);
  *v4 = 426;
  v85 = *(v84 + 5);
  if (v85 > 0x7F)
  {
    v4[2] = v85 | 0x80;
    v87 = v85 >> 7;
    if (v85 >> 14)
    {
      v86 = v4 + 4;
      do
      {
        *(v86 - 1) = v87 | 0x80;
        v92 = v87 >> 7;
        ++v86;
        v93 = v87 >> 14;
        v87 >>= 7;
      }

      while (v93);
      *(v86 - 1) = v92;
    }

    else
    {
      v4[3] = v87;
      v86 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v85;
    v86 = v4 + 3;
  }

  v4 = TSD::GeometryArchive::_InternalSerialize(v84, v86, a3);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_123:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_124;
    }

LABEL_195:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v104 = *(a1 + 452);
    *v4 = 440;
    if (v104 > 0x7F)
    {
      v4[2] = v104 | 0x80;
      v105 = v104 >> 7;
      if (v104 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v105 | 0x80;
          v110 = v105 >> 7;
          ++v4;
          v111 = v105 >> 14;
          v105 >>= 7;
        }

        while (v111);
        *(v4 - 1) = v110;
        if ((v6 & 0x1000) != 0)
        {
          goto LABEL_218;
        }
      }

      else
      {
        v4[3] = v105;
        v4 += 4;
        if ((v6 & 0x1000) != 0)
        {
          goto LABEL_218;
        }
      }
    }

    else
    {
      v4[2] = v104;
      v4 += 3;
      if ((v6 & 0x1000) != 0)
      {
        goto LABEL_218;
      }
    }

LABEL_125:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_239;
  }

LABEL_175:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v94 = *(a1 + 448);
  *v4 = 432;
  if (v94 > 0x7F)
  {
    v4[2] = v94 | 0x80;
    v95 = v94 >> 7;
    if (v94 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v95 | 0x80;
        v102 = v95 >> 7;
        ++v4;
        v103 = v95 >> 14;
        v95 >>= 7;
      }

      while (v103);
      *(v4 - 1) = v102;
      if ((v6 & 0x4000000) != 0)
      {
        goto LABEL_195;
      }
    }

    else
    {
      v4[3] = v95;
      v4 += 4;
      if ((v6 & 0x4000000) != 0)
      {
        goto LABEL_195;
      }
    }
  }

  else
  {
    v4[2] = v94;
    v4 += 3;
    if ((v6 & 0x4000000) != 0)
    {
      goto LABEL_195;
    }
  }

LABEL_124:
  if ((v6 & 0x1000) == 0)
  {
    goto LABEL_125;
  }

LABEL_218:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v112 = *(a1 + 360);
  *v4 = 450;
  v113 = *(v112 + 5);
  if (v113 > 0x7F)
  {
    v4[2] = v113 | 0x80;
    v115 = v113 >> 7;
    if (v113 >> 14)
    {
      v114 = v4 + 4;
      do
      {
        *(v114 - 1) = v115 | 0x80;
        v120 = v115 >> 7;
        ++v114;
        v121 = v115 >> 14;
        v115 >>= 7;
      }

      while (v121);
      *(v114 - 1) = v120;
    }

    else
    {
      v4[3] = v115;
      v114 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v113;
    v114 = v4 + 3;
  }

  v4 = TSWP::ShapeStylePropertiesArchive::_InternalSerialize(v112, v114, a3);
  if ((v6 & 0x2000) == 0)
  {
LABEL_126:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_253;
  }

LABEL_239:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v122 = *(a1 + 368);
  *v4 = 458;
  v123 = *(v122 + 5);
  if (v123 > 0x7F)
  {
    v4[2] = v123 | 0x80;
    v125 = v123 >> 7;
    if (v123 >> 14)
    {
      v124 = v4 + 4;
      do
      {
        *(v124 - 1) = v125 | 0x80;
        v128 = v125 >> 7;
        ++v124;
        v129 = v125 >> 14;
        v125 >>= 7;
      }

      while (v129);
      *(v124 - 1) = v128;
    }

    else
    {
      v4[3] = v125;
      v124 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v123;
    v124 = v4 + 3;
  }

  v4 = TSWP::ShapeStylePropertiesArchive::_InternalSerialize(v122, v124, a3);
  if ((v6 & 0x4000) == 0)
  {
LABEL_127:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_273;
    }

    goto LABEL_263;
  }

LABEL_253:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v130 = *(a1 + 376);
  *v4 = 466;
  v131 = *(v130 + 5);
  if (v131 > 0x7F)
  {
    v4[2] = v131 | 0x80;
    v133 = v131 >> 7;
    if (v131 >> 14)
    {
      v132 = v4 + 4;
      do
      {
        *(v132 - 1) = v133 | 0x80;
        v134 = v133 >> 7;
        ++v132;
        v135 = v133 >> 14;
        v133 >>= 7;
      }

      while (v135);
      *(v132 - 1) = v134;
    }

    else
    {
      v4[3] = v133;
      v132 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v131;
    v132 = v4 + 3;
  }

  v4 = TSWP::ShapeStylePropertiesArchive::_InternalSerialize(v130, v132, a3);
  if ((v6 & 0x8000) != 0)
  {
LABEL_263:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v136 = *(a1 + 384);
    *v4 = 474;
    v137 = *(v136 + 5);
    if (v137 > 0x7F)
    {
      v4[2] = v137 | 0x80;
      v139 = v137 >> 7;
      if (v137 >> 14)
      {
        v138 = v4 + 4;
        do
        {
          *(v138 - 1) = v139 | 0x80;
          v140 = v139 >> 7;
          ++v138;
          v141 = v139 >> 14;
          v139 >>= 7;
        }

        while (v141);
        *(v138 - 1) = v140;
      }

      else
      {
        v4[3] = v139;
        v138 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v137;
      v138 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v136, v138, a3);
  }

LABEL_273:
  v142 = *(a1 + 128);
  if (v142)
  {
    for (n = 0; n != v142; ++n)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v144 = *(*(a1 + 136) + 8 * n + 8);
      *v4 = 482;
      v145 = *(v144 + 20);
      if (v145 > 0x7F)
      {
        v4[2] = v145 | 0x80;
        v147 = v145 >> 7;
        if (v145 >> 14)
        {
          v146 = v4 + 4;
          do
          {
            *(v146 - 1) = v147 | 0x80;
            v148 = v147 >> 7;
            ++v146;
            v149 = v147 >> 14;
            v147 >>= 7;
          }

          while (v149);
          *(v146 - 1) = v148;
        }

        else
        {
          v4[3] = v147;
          v146 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v145;
        v146 = v4 + 3;
      }

      v4 = sub_275DF0828(v144, v146, a3);
    }
  }

  if ((v6 & 0x10000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v150 = *(a1 + 392);
    *v4 = 490;
    v151 = *(v150 + 5);
    if (v151 > 0x7F)
    {
      v4[2] = v151 | 0x80;
      v153 = v151 >> 7;
      if (v151 >> 14)
      {
        v152 = v4 + 4;
        do
        {
          *(v152 - 1) = v153 | 0x80;
          v154 = v153 >> 7;
          ++v152;
          v155 = v153 >> 14;
          v153 >>= 7;
        }

        while (v155);
        *(v152 - 1) = v154;
      }

      else
      {
        v4[3] = v153;
        v152 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v151;
      v152 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v150, v152, a3);
  }

  if ((v6 & 0x20000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v156 = *(a1 + 400);
    *v4 = 498;
    v157 = *(v156 + 5);
    if (v157 > 0x7F)
    {
      v4[2] = v157 | 0x80;
      v159 = v157 >> 7;
      if (v157 >> 14)
      {
        v158 = v4 + 4;
        do
        {
          *(v158 - 1) = v159 | 0x80;
          v160 = v159 >> 7;
          ++v158;
          v161 = v159 >> 14;
          v159 >>= 7;
        }

        while (v161);
        *(v158 - 1) = v160;
      }

      else
      {
        v4[3] = v159;
        v158 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v157;
      v158 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v156, v158, a3);
  }

  v162 = *(a1 + 152);
  if (v162)
  {
    for (ii = 0; ii != v162; ++ii)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v164 = *(*(a1 + 160) + 8 * ii + 8);
      *v4 = 506;
      v165 = *(v164 + 5);
      if (v165 > 0x7F)
      {
        v4[2] = v165 | 0x80;
        v167 = v165 >> 7;
        if (v165 >> 14)
        {
          v166 = v4 + 4;
          do
          {
            *(v166 - 1) = v167 | 0x80;
            v168 = v167 >> 7;
            ++v166;
            v169 = v167 >> 14;
            v167 >>= 7;
          }

          while (v169);
          *(v166 - 1) = v168;
        }

        else
        {
          v4[3] = v167;
          v166 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v165;
        v166 = v4 + 3;
      }

      v4 = TSP::Reference::_InternalSerialize(v164, v166, a3);
    }
  }

  if ((v6 & 0x20000000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v170 = *(a1 + 458);
    *v4 = 656;
    v4[2] = v170;
    v4 += 3;
  }

  v171 = *(a1 + 176);
  if (v171)
  {
    for (jj = 0; jj != v171; ++jj)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v173 = *(*(a1 + 184) + 8 * jj + 8);
      *v4 = 666;
      v174 = *(v173 + 5);
      if (v174 > 0x7F)
      {
        v4[2] = v174 | 0x80;
        v176 = v174 >> 7;
        if (v174 >> 14)
        {
          v175 = v4 + 4;
          do
          {
            *(v175 - 1) = v176 | 0x80;
            v177 = v176 >> 7;
            ++v175;
            v178 = v176 >> 14;
            v176 >>= 7;
          }

          while (v178);
          *(v175 - 1) = v177;
        }

        else
        {
          v4[3] = v176;
          v175 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v174;
        v175 = v4 + 3;
      }

      v4 = TSP::Reference::_InternalSerialize(v173, v175, a3);
    }
  }

  if ((v6 & 0x40000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v179 = *(a1 + 408);
    *v4 = 674;
    v180 = *(v179 + 5);
    if (v180 > 0x7F)
    {
      v4[2] = v180 | 0x80;
      v182 = v180 >> 7;
      if (v180 >> 14)
      {
        v181 = v4 + 4;
        do
        {
          *(v181 - 1) = v182 | 0x80;
          v183 = v182 >> 7;
          ++v181;
          v184 = v182 >> 14;
          v182 >>= 7;
        }

        while (v184);
        *(v181 - 1) = v183;
      }

      else
      {
        v4[3] = v182;
        v181 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v180;
      v181 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v179, v181, a3);
    if ((v6 & 2) == 0)
    {
LABEL_337:
      if ((v6 & 4) == 0)
      {
        goto LABEL_338;
      }

      goto LABEL_353;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_337;
  }

  v4 = sub_275DE5774(a3, 37, (*(a1 + 272) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_338:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_339;
    }

    goto LABEL_354;
  }

LABEL_353:
  v4 = sub_275DE5774(a3, 38, (*(a1 + 280) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x80000) == 0)
  {
LABEL_339:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_340;
    }

    goto LABEL_364;
  }

LABEL_354:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v185 = *(a1 + 416);
  *v4 = 698;
  v186 = *(v185 + 5);
  if (v186 > 0x7F)
  {
    v4[2] = v186 | 0x80;
    v188 = v186 >> 7;
    if (v186 >> 14)
    {
      v187 = v4 + 4;
      do
      {
        *(v187 - 1) = v188 | 0x80;
        v189 = v188 >> 7;
        ++v187;
        v190 = v188 >> 14;
        v188 >>= 7;
      }

      while (v190);
      *(v187 - 1) = v189;
    }

    else
    {
      v4[3] = v188;
      v187 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v186;
    v187 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v185, v187, a3);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_340:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_370;
    }

    goto LABEL_367;
  }

LABEL_364:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v191 = *(a1 + 459);
  *v4 = 704;
  v4[2] = v191;
  v4 += 3;
  if ((v6 & 0x8000000) != 0)
  {
LABEL_367:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v192 = *(a1 + 456);
    *v4 = 712;
    v4[2] = v192;
    v4 += 3;
  }

LABEL_370:
  v193 = *(a1 + 200);
  if (v193)
  {
    for (kk = 0; kk != v193; ++kk)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v195 = *(*(a1 + 208) + 8 * kk + 8);
      *v4 = 722;
      v196 = *(v195 + 5);
      if (v196 > 0x7F)
      {
        v4[2] = v196 | 0x80;
        v198 = v196 >> 7;
        if (v196 >> 14)
        {
          v197 = v4 + 4;
          do
          {
            *(v197 - 1) = v198 | 0x80;
            v199 = v198 >> 7;
            ++v197;
            v200 = v198 >> 14;
            v198 >>= 7;
          }

          while (v200);
          *(v197 - 1) = v199;
        }

        else
        {
          v4[3] = v198;
          v197 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v196;
        v197 = v4 + 3;
      }

      v4 = TSP::Reference::_InternalSerialize(v195, v197, a3);
    }
  }

  v201 = *(a1 + 224);
  if (v201)
  {
    for (mm = 0; mm != v201; ++mm)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v203 = *(*(a1 + 232) + 8 * mm + 8);
      *v4 = 730;
      v204 = *(v203 + 5);
      if (v204 > 0x7F)
      {
        v4[2] = v204 | 0x80;
        v206 = v204 >> 7;
        if (v204 >> 14)
        {
          v205 = v4 + 4;
          do
          {
            *(v205 - 1) = v206 | 0x80;
            v207 = v206 >> 7;
            ++v205;
            v208 = v206 >> 14;
            v206 >>= 7;
          }

          while (v208);
          *(v205 - 1) = v207;
        }

        else
        {
          v4[3] = v206;
          v205 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v204;
        v205 = v4 + 3;
      }

      v4 = TSP::Reference::_InternalSerialize(v203, v205, a3);
    }
  }

  v209 = *(a1 + 248);
  if (v209)
  {
    for (nn = 0; nn != v209; ++nn)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v211 = *(*(a1 + 256) + 8 * nn + 8);
      *v4 = 738;
      v212 = *(v211 + 5);
      if (v212 > 0x7F)
      {
        v4[2] = v212 | 0x80;
        v214 = v212 >> 7;
        if (v212 >> 14)
        {
          v213 = v4 + 4;
          do
          {
            *(v213 - 1) = v214 | 0x80;
            v215 = v214 >> 7;
            ++v213;
            v216 = v214 >> 14;
            v214 >>= 7;
          }

          while (v216);
          *(v213 - 1) = v215;
        }

        else
        {
          v4[3] = v214;
          v213 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v212;
        v213 = v4 + 3;
      }

      v4 = TSP::Reference::_InternalSerialize(v211, v213, a3);
    }
  }

  if ((v6 & 0x100000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v217 = *(a1 + 424);
    *v4 = 746;
    v218 = *(v217 + 40);
    if (v218 > 0x7F)
    {
      v4[2] = v218 | 0x80;
      v220 = v218 >> 7;
      if (v218 >> 14)
      {
        v219 = v4 + 4;
        do
        {
          *(v219 - 1) = v220 | 0x80;
          v221 = v220 >> 7;
          ++v219;
          v222 = v220 >> 14;
          v220 >>= 7;
        }

        while (v222);
        *(v219 - 1) = v221;
      }

      else
      {
        v4[3] = v220;
        v219 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v218;
      v219 = v4 + 3;
    }

    v4 = sub_275DF1740(v217, v219, a3);
  }

  v223 = *(a1 + 8);
  if ((v223 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v223 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275DF4F80(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 8) != 0)
  {
    v4 = TSP::Reference::ByteSizeLong(*(a1 + 288));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x10) != 0)
  {
LABEL_5:
    v5 = sub_275DE7AEC(*(a1 + 296));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

LABEL_6:
  if ((v2 & 0x10000000) != 0)
  {
    return v3 + 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_275DF5020(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x10000018) != 0)
  {
    v4 = sub_275DF4F80(a1);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(*(a1 + 288));
    v3 = sub_275DE7AEC(*(a1 + 296));
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 5;
  }

  v5 = *(a1 + 32);
  v6 = v4 + v5;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 8 * v5;
    do
    {
      v10 = *v8++;
      v11 = TSP::Reference::ByteSizeLong(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
  }

  v12 = *(a1 + 56);
  v13 = v6 + v12;
  v14 = *(a1 + 64);
  if (v14)
  {
    v15 = (v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  if (v12)
  {
    v16 = 8 * v12;
    do
    {
      v17 = *v15++;
      v18 = sub_275DE876C(v17);
      v13 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6);
      v16 -= 8;
    }

    while (v16);
  }

  v19 = *(a1 + 80);
  v20 = v13 + v19;
  v21 = *(a1 + 88);
  if (v21)
  {
    v22 = (v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  if (v19)
  {
    v23 = 8 * v19;
    do
    {
      v24 = *v22++;
      v25 = TSP::Reference::ByteSizeLong(v24);
      v20 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6);
      v23 -= 8;
    }

    while (v23);
  }

  v26 = *(a1 + 104);
  v27 = v20 + 2 * v26;
  v28 = *(a1 + 112);
  if (v28)
  {
    v29 = (v28 + 8);
  }

  else
  {
    v29 = 0;
  }

  if (v26)
  {
    v30 = 8 * v26;
    do
    {
      v31 = *v29++;
      v32 = TSD::GuideArchive::ByteSizeLong(v31);
      v27 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6);
      v30 -= 8;
    }

    while (v30);
  }

  v33 = *(a1 + 128);
  v34 = v27 + 2 * v33;
  v35 = *(a1 + 136);
  if (v35)
  {
    v36 = (v35 + 8);
  }

  else
  {
    v36 = 0;
  }

  if (v33)
  {
    v37 = 8 * v33;
    do
    {
      v38 = *v36++;
      v39 = sub_275DF09EC(v38);
      v34 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6);
      v37 -= 8;
    }

    while (v37);
  }

  v40 = *(a1 + 152);
  v41 = v34 + 2 * v40;
  v42 = *(a1 + 160);
  if (v42)
  {
    v43 = (v42 + 8);
  }

  else
  {
    v43 = 0;
  }

  if (v40)
  {
    v44 = 8 * v40;
    do
    {
      v45 = *v43++;
      v46 = TSP::Reference::ByteSizeLong(v45);
      v41 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6);
      v44 -= 8;
    }

    while (v44);
  }

  v47 = *(a1 + 176);
  v48 = v41 + 2 * v47;
  v49 = *(a1 + 184);
  if (v49)
  {
    v50 = (v49 + 8);
  }

  else
  {
    v50 = 0;
  }

  if (v47)
  {
    v51 = 8 * v47;
    do
    {
      v52 = *v50++;
      v53 = TSP::Reference::ByteSizeLong(v52);
      v48 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6);
      v51 -= 8;
    }

    while (v51);
  }

  v54 = *(a1 + 200);
  v55 = v48 + 2 * v54;
  v56 = *(a1 + 208);
  if (v56)
  {
    v57 = (v56 + 8);
  }

  else
  {
    v57 = 0;
  }

  if (v54)
  {
    v58 = 8 * v54;
    do
    {
      v59 = *v57++;
      v60 = TSP::Reference::ByteSizeLong(v59);
      v55 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6);
      v58 -= 8;
    }

    while (v58);
  }

  v61 = *(a1 + 224);
  v62 = v55 + 2 * v61;
  v63 = *(a1 + 232);
  if (v63)
  {
    v64 = (v63 + 8);
  }

  else
  {
    v64 = 0;
  }

  if (v61)
  {
    v65 = 8 * v61;
    do
    {
      v66 = *v64++;
      v67 = TSP::Reference::ByteSizeLong(v66);
      v62 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6);
      v65 -= 8;
    }

    while (v65);
  }

  v68 = *(a1 + 248);
  v69 = v62 + 2 * v68;
  v70 = *(a1 + 256);
  if (v70)
  {
    v71 = (v70 + 8);
  }

  else
  {
    v71 = 0;
  }

  if (v68)
  {
    v72 = 8 * v68;
    do
    {
      v73 = *v71++;
      v74 = TSP::Reference::ByteSizeLong(v73);
      v69 += v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6);
      v72 -= 8;
    }

    while (v72);
  }

  v75 = *(a1 + 16);
  if ((v75 & 7) != 0)
  {
    if (v75)
    {
      v84 = *(a1 + 264) & 0xFFFFFFFFFFFFFFFELL;
      v85 = *(v84 + 23);
      v86 = *(v84 + 8);
      if ((v85 & 0x80u) == 0)
      {
        v86 = v85;
      }

      v69 += v86 + ((9 * (__clz(v86 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v75 & 2) == 0)
      {
LABEL_67:
        if ((v75 & 4) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_68;
      }
    }

    else if ((v75 & 2) == 0)
    {
      goto LABEL_67;
    }

    v87 = *(a1 + 272) & 0xFFFFFFFFFFFFFFFELL;
    v88 = *(v87 + 23);
    v89 = *(v87 + 8);
    if ((v88 & 0x80u) == 0)
    {
      v89 = v88;
    }

    v69 += v89 + ((9 * (__clz(v89 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v75 & 4) != 0)
    {
LABEL_68:
      v76 = *(a1 + 280) & 0xFFFFFFFFFFFFFFFELL;
      v77 = *(v76 + 23);
      v78 = *(v76 + 8);
      if ((v77 & 0x80u) == 0)
      {
        v78 = v77;
      }

      v69 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

LABEL_71:
  if ((v75 & 0xE0) == 0)
  {
    goto LABEL_76;
  }

  if ((v75 & 0x20) != 0)
  {
    v90 = TSP::Reference::ByteSizeLong(*(a1 + 304));
    v69 += v90 + ((9 * (__clz(v90 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v75 & 0x40) == 0)
    {
LABEL_74:
      if ((v75 & 0x80) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_75;
    }
  }

  else if ((v75 & 0x40) == 0)
  {
    goto LABEL_74;
  }

  v91 = TSP::Reference::ByteSizeLong(*(a1 + 312));
  v69 += v91 + ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v75 & 0x80) != 0)
  {
LABEL_75:
    v79 = TSD::GeometryArchive::ByteSizeLong(*(a1 + 320));
    v69 += v79 + ((9 * (__clz(v79 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_76:
  if ((v75 & 0xFF00) == 0)
  {
    goto LABEL_86;
  }

  if ((v75 & 0x100) != 0)
  {
    v92 = TSD::GeometryArchive::ByteSizeLong(*(a1 + 328));
    v69 += v92 + ((9 * (__clz(v92 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v75 & 0x200) == 0)
    {
LABEL_79:
      if ((v75 & 0x400) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_124;
    }
  }

  else if ((v75 & 0x200) == 0)
  {
    goto LABEL_79;
  }

  v93 = TSP::Reference::ByteSizeLong(*(a1 + 336));
  v69 += v93 + ((9 * (__clz(v93 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v75 & 0x400) == 0)
  {
LABEL_80:
    if ((v75 & 0x800) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_125;
  }

LABEL_124:
  v94 = TSP::Reference::ByteSizeLong(*(a1 + 344));
  v69 += v94 + ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v75 & 0x800) == 0)
  {
LABEL_81:
    if ((v75 & 0x1000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_126;
  }

LABEL_125:
  v95 = TSD::GeometryArchive::ByteSizeLong(*(a1 + 352));
  v69 += v95 + ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v75 & 0x1000) == 0)
  {
LABEL_82:
    if ((v75 & 0x2000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_127;
  }

LABEL_126:
  v96 = TSWP::ShapeStylePropertiesArchive::ByteSizeLong(*(a1 + 360));
  v69 += v96 + ((9 * (__clz(v96 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v75 & 0x2000) == 0)
  {
LABEL_83:
    if ((v75 & 0x4000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_128;
  }

LABEL_127:
  v97 = TSWP::ShapeStylePropertiesArchive::ByteSizeLong(*(a1 + 368));
  v69 += v97 + ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v75 & 0x4000) == 0)
  {
LABEL_84:
    if ((v75 & 0x8000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_128:
  v98 = TSWP::ShapeStylePropertiesArchive::ByteSizeLong(*(a1 + 376));
  v69 += v98 + ((9 * (__clz(v98 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v75 & 0x8000) != 0)
  {
LABEL_85:
    v80 = TSP::Reference::ByteSizeLong(*(a1 + 384));
    v69 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_86:
  if ((v75 & 0xFF0000) == 0)
  {
    goto LABEL_96;
  }

  if ((v75 & 0x10000) != 0)
  {
    v99 = TSP::Reference::ByteSizeLong(*(a1 + 392));
    v69 += v99 + ((9 * (__clz(v99 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v75 & 0x20000) == 0)
    {
LABEL_89:
      if ((v75 & 0x40000) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_132;
    }
  }

  else if ((v75 & 0x20000) == 0)
  {
    goto LABEL_89;
  }

  v100 = TSP::Reference::ByteSizeLong(*(a1 + 400));
  v69 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v75 & 0x40000) == 0)
  {
LABEL_90:
    if ((v75 & 0x80000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_133;
  }

LABEL_132:
  v101 = TSP::Reference::ByteSizeLong(*(a1 + 408));
  v69 += v101 + ((9 * (__clz(v101 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v75 & 0x80000) == 0)
  {
LABEL_91:
    if ((v75 & 0x100000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_134;
  }

LABEL_133:
  v102 = TSP::Reference::ByteSizeLong(*(a1 + 416));
  v69 += v102 + ((9 * (__clz(v102 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v75 & 0x100000) == 0)
  {
LABEL_92:
    if ((v75 & 0x200000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_135;
  }

LABEL_134:
  v103 = sub_275DF1864(*(a1 + 424));
  v69 += v103 + ((9 * (__clz(v103 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v75 & 0x200000) == 0)
  {
LABEL_93:
    if ((v75 & 0x400000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_136;
  }

LABEL_135:
  v69 += ((9 * (__clz(*(a1 + 432) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v75 & 0x400000) == 0)
  {
LABEL_94:
    if ((v75 & 0x800000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

LABEL_136:
  v69 += ((9 * (__clz(*(a1 + 436) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v75 & 0x800000) != 0)
  {
LABEL_95:
    v69 += ((9 * (__clz(*(a1 + 440) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_96:
  if ((v75 & 0xF000000) == 0)
  {
    goto LABEL_103;
  }

  if ((v75 & 0x1000000) != 0)
  {
    v69 += ((9 * (__clz(*(a1 + 444) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v75 & 0x2000000) == 0)
    {
LABEL_99:
      if ((v75 & 0x4000000) == 0)
      {
        goto LABEL_101;
      }

      goto LABEL_100;
    }
  }

  else if ((v75 & 0x2000000) == 0)
  {
    goto LABEL_99;
  }

  v69 += ((9 * (__clz(*(a1 + 448) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v75 & 0x4000000) != 0)
  {
LABEL_100:
    v69 += ((9 * (__clz(*(a1 + 452) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_101:
  if ((v75 & 0x8000000) != 0)
  {
    v69 += 3;
  }

LABEL_103:
  v81 = v69 + 3;
  if ((v75 & 0x20000000) == 0)
  {
    v81 = v69;
  }

  if ((v75 & 0x40000000) != 0)
  {
    v81 += 3;
  }

  if ((v75 & 0x60000000) != 0)
  {
    v82 = v81;
  }

  else
  {
    v82 = v69;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v82, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v82;
    return v82;
  }
}

uint64_t sub_275DF598C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7E98, 0);
  if (v4)
  {

    return sub_275DF5A34(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DF5A34(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275E226E8(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    result = sub_275E22A78(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 72));
    result = sub_275E226E8(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 104);
  if (v20)
  {
    v21 = *(a2 + 112);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 96));
    result = sub_275E22B38(v3 + 96, v22, (v21 + 8), v20, **(v3 + 112) - *(v3 + 104));
    v23 = *(v3 + 104) + v20;
    *(v3 + 104) = v23;
    v24 = *(v3 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 128);
  if (v25)
  {
    v26 = *(a2 + 136);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 120));
    result = sub_275E22BF8(v3 + 120, v27, (v26 + 8), v25, **(v3 + 136) - *(v3 + 128));
    v28 = *(v3 + 128) + v25;
    *(v3 + 128) = v28;
    v29 = *(v3 + 136);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 152);
  if (v30)
  {
    v31 = *(a2 + 160);
    v32 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 144));
    result = sub_275E226E8(v3 + 144, v32, (v31 + 8), v30, **(v3 + 160) - *(v3 + 152));
    v33 = *(v3 + 152) + v30;
    *(v3 + 152) = v33;
    v34 = *(v3 + 160);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 176);
  if (v35)
  {
    v36 = *(a2 + 184);
    v37 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 168));
    result = sub_275E226E8(v3 + 168, v37, (v36 + 8), v35, **(v3 + 184) - *(v3 + 176));
    v38 = *(v3 + 176) + v35;
    *(v3 + 176) = v38;
    v39 = *(v3 + 184);
    if (*v39 < v38)
    {
      *v39 = v38;
    }
  }

  v40 = *(a2 + 200);
  if (v40)
  {
    v41 = *(a2 + 208);
    v42 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 192));
    result = sub_275E226E8(v3 + 192, v42, (v41 + 8), v40, **(v3 + 208) - *(v3 + 200));
    v43 = *(v3 + 200) + v40;
    *(v3 + 200) = v43;
    v44 = *(v3 + 208);
    if (*v44 < v43)
    {
      *v44 = v43;
    }
  }

  v45 = *(a2 + 224);
  if (v45)
  {
    v46 = *(a2 + 232);
    v47 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 216));
    result = sub_275E226E8(v3 + 216, v47, (v46 + 8), v45, **(v3 + 232) - *(v3 + 224));
    v48 = *(v3 + 224) + v45;
    *(v3 + 224) = v48;
    v49 = *(v3 + 232);
    if (*v49 < v48)
    {
      *v49 = v48;
    }
  }

  v50 = *(a2 + 248);
  if (v50)
  {
    v51 = *(a2 + 256);
    v52 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 240));
    result = sub_275E226E8(v3 + 240, v52, (v51 + 8), v50, **(v3 + 256) - *(v3 + 248));
    v53 = *(v3 + 248) + v50;
    *(v3 + 248) = v53;
    v54 = *(v3 + 256);
    if (*v54 < v53)
    {
      *v54 = v53;
    }
  }

  v55 = *(a2 + 16);
  if (!v55)
  {
    goto LABEL_87;
  }

  if ((v55 & 1) == 0)
  {
    if ((v55 & 2) == 0)
    {
      goto LABEL_36;
    }

LABEL_39:
    *(v3 + 16) |= 2u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v55 & 4) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  *(v3 + 16) |= 1u;
  result = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v55 & 2) != 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  if ((v55 & 4) != 0)
  {
LABEL_40:
    *(v3 + 16) |= 4u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
  }

LABEL_41:
  v56 = MEMORY[0x277D80A18];
  if ((v55 & 8) != 0)
  {
    *(v3 + 16) |= 8u;
    v57 = *(v3 + 288);
    if (!v57)
    {
      v58 = *(v3 + 8);
      if (v58)
      {
        v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
      }

      v57 = MEMORY[0x277C8F050](v58);
      *(v3 + 288) = v57;
    }

    if (*(a2 + 288))
    {
      v59 = *(a2 + 288);
    }

    else
    {
      v59 = v56;
    }

    result = TSP::Reference::MergeFrom(v57, v59);
    if ((v55 & 0x10) == 0)
    {
LABEL_43:
      if ((v55 & 0x20) == 0)
      {
        goto LABEL_44;
      }

LABEL_63:
      *(v3 + 16) |= 0x20u;
      v63 = *(v3 + 304);
      if (!v63)
      {
        v64 = *(v3 + 8);
        if (v64)
        {
          v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
        }

        v63 = MEMORY[0x277C8F050](v64);
        *(v3 + 304) = v63;
      }

      if (*(a2 + 304))
      {
        v65 = *(a2 + 304);
      }

      else
      {
        v65 = v56;
      }

      result = TSP::Reference::MergeFrom(v63, v65);
      if ((v55 & 0x40) == 0)
      {
LABEL_45:
        if ((v55 & 0x80) == 0)
        {
          goto LABEL_87;
        }

        goto LABEL_79;
      }

      goto LABEL_71;
    }
  }

  else if ((v55 & 0x10) == 0)
  {
    goto LABEL_43;
  }

  *(v3 + 16) |= 0x10u;
  v60 = *(v3 + 296);
  if (!v60)
  {
    v61 = *(v3 + 8);
    if (v61)
    {
      v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
    }

    v60 = sub_275E1F6F8(v61);
    *(v3 + 296) = v60;
  }

  if (*(a2 + 296))
  {
    v62 = *(a2 + 296);
  }

  else
  {
    v62 = &qword_2812EAB40;
  }

  result = sub_275DE7C20(v60, v62);
  if ((v55 & 0x20) != 0)
  {
    goto LABEL_63;
  }

LABEL_44:
  if ((v55 & 0x40) == 0)
  {
    goto LABEL_45;
  }

LABEL_71:
  *(v3 + 16) |= 0x40u;
  v66 = *(v3 + 312);
  if (!v66)
  {
    v67 = *(v3 + 8);
    if (v67)
    {
      v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
    }

    v66 = MEMORY[0x277C8F050](v67);
    *(v3 + 312) = v66;
  }

  if (*(a2 + 312))
  {
    v68 = *(a2 + 312);
  }

  else
  {
    v68 = v56;
  }

  result = TSP::Reference::MergeFrom(v66, v68);
  if ((v55 & 0x80) != 0)
  {
LABEL_79:
    *(v3 + 16) |= 0x80u;
    v69 = *(v3 + 320);
    if (!v69)
    {
      v70 = *(v3 + 8);
      if (v70)
      {
        v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
      }

      v69 = MEMORY[0x277C8EFA0](v70);
      *(v3 + 320) = v69;
    }

    if (*(a2 + 320))
    {
      v71 = *(a2 + 320);
    }

    else
    {
      v71 = MEMORY[0x277D804B8];
    }

    result = TSD::GeometryArchive::MergeFrom(v69, v71);
  }

LABEL_87:
  if ((v55 & 0xFF00) == 0)
  {
    goto LABEL_162;
  }

  if ((v55 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v72 = *(v3 + 328);
    if (!v72)
    {
      v73 = *(v3 + 8);
      if (v73)
      {
        v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
      }

      v72 = MEMORY[0x277C8EFA0](v73);
      *(v3 + 328) = v72;
    }

    if (*(a2 + 328))
    {
      v74 = *(a2 + 328);
    }

    else
    {
      v74 = MEMORY[0x277D804B8];
    }

    result = TSD::GeometryArchive::MergeFrom(v72, v74);
    if ((v55 & 0x200) == 0)
    {
LABEL_90:
      if ((v55 & 0x400) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_109;
    }
  }

  else if ((v55 & 0x200) == 0)
  {
    goto LABEL_90;
  }

  *(v3 + 16) |= 0x200u;
  v75 = *(v3 + 336);
  if (!v75)
  {
    v76 = *(v3 + 8);
    if (v76)
    {
      v76 = *(v76 & 0xFFFFFFFFFFFFFFFELL);
    }

    v75 = MEMORY[0x277C8F050](v76);
    *(v3 + 336) = v75;
  }

  if (*(a2 + 336))
  {
    v77 = *(a2 + 336);
  }

  else
  {
    v77 = MEMORY[0x277D80A18];
  }

  result = TSP::Reference::MergeFrom(v75, v77);
  if ((v55 & 0x400) == 0)
  {
LABEL_91:
    if ((v55 & 0x800) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_117;
  }

LABEL_109:
  *(v3 + 16) |= 0x400u;
  v78 = *(v3 + 344);
  if (!v78)
  {
    v79 = *(v3 + 8);
    if (v79)
    {
      v79 = *(v79 & 0xFFFFFFFFFFFFFFFELL);
    }

    v78 = MEMORY[0x277C8F050](v79);
    *(v3 + 344) = v78;
  }

  if (*(a2 + 344))
  {
    v80 = *(a2 + 344);
  }

  else
  {
    v80 = MEMORY[0x277D80A18];
  }

  result = TSP::Reference::MergeFrom(v78, v80);
  if ((v55 & 0x800) != 0)
  {
LABEL_117:
    *(v3 + 16) |= 0x800u;
    v81 = *(v3 + 352);
    if (!v81)
    {
      v82 = *(v3 + 8);
      if (v82)
      {
        v82 = *(v82 & 0xFFFFFFFFFFFFFFFELL);
      }

      v81 = MEMORY[0x277C8EFA0](v82);
      *(v3 + 352) = v81;
    }

    if (*(a2 + 352))
    {
      v83 = *(a2 + 352);
    }

    else
    {
      v83 = MEMORY[0x277D804B8];
    }

    result = TSD::GeometryArchive::MergeFrom(v81, v83);
  }

LABEL_125:
  v84 = MEMORY[0x277D81090];
  if ((v55 & 0x1000) != 0)
  {
    *(v3 + 16) |= 0x1000u;
    v85 = *(v3 + 360);
    if (!v85)
    {
      v86 = *(v3 + 8);
      if (v86)
      {
        v86 = *(v86 & 0xFFFFFFFFFFFFFFFELL);
      }

      v85 = MEMORY[0x277C8F0F0](v86);
      *(v3 + 360) = v85;
    }

    if (*(a2 + 360))
    {
      v87 = *(a2 + 360);
    }

    else
    {
      v87 = v84;
    }

    result = TSWP::ShapeStylePropertiesArchive::MergeFrom(v85, v87);
    if ((v55 & 0x2000) == 0)
    {
LABEL_127:
      if ((v55 & 0x4000) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_146;
    }
  }

  else if ((v55 & 0x2000) == 0)
  {
    goto LABEL_127;
  }

  *(v3 + 16) |= 0x2000u;
  v88 = *(v3 + 368);
  if (!v88)
  {
    v89 = *(v3 + 8);
    if (v89)
    {
      v89 = *(v89 & 0xFFFFFFFFFFFFFFFELL);
    }

    v88 = MEMORY[0x277C8F0F0](v89);
    *(v3 + 368) = v88;
  }

  if (*(a2 + 368))
  {
    v90 = *(a2 + 368);
  }

  else
  {
    v90 = v84;
  }

  result = TSWP::ShapeStylePropertiesArchive::MergeFrom(v88, v90);
  if ((v55 & 0x4000) == 0)
  {
LABEL_128:
    if ((v55 & 0x8000) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_154;
  }

LABEL_146:
  *(v3 + 16) |= 0x4000u;
  v91 = *(v3 + 376);
  if (!v91)
  {
    v92 = *(v3 + 8);
    if (v92)
    {
      v92 = *(v92 & 0xFFFFFFFFFFFFFFFELL);
    }

    v91 = MEMORY[0x277C8F0F0](v92);
    *(v3 + 376) = v91;
  }

  if (*(a2 + 376))
  {
    v93 = *(a2 + 376);
  }

  else
  {
    v93 = v84;
  }

  result = TSWP::ShapeStylePropertiesArchive::MergeFrom(v91, v93);
  if ((v55 & 0x8000) != 0)
  {
LABEL_154:
    *(v3 + 16) |= 0x8000u;
    v94 = *(v3 + 384);
    if (!v94)
    {
      v95 = *(v3 + 8);
      if (v95)
      {
        v95 = *(v95 & 0xFFFFFFFFFFFFFFFELL);
      }

      v94 = MEMORY[0x277C8F050](v95);
      *(v3 + 384) = v94;
    }

    if (*(a2 + 384))
    {
      v96 = *(a2 + 384);
    }

    else
    {
      v96 = MEMORY[0x277D80A18];
    }

    result = TSP::Reference::MergeFrom(v94, v96);
  }

LABEL_162:
  if ((v55 & 0xFF0000) == 0)
  {
    goto LABEL_173;
  }

  if ((v55 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v97 = *(v3 + 392);
    if (!v97)
    {
      v98 = *(v3 + 8);
      if (v98)
      {
        v98 = *(v98 & 0xFFFFFFFFFFFFFFFELL);
      }

      v97 = MEMORY[0x277C8F050](v98);
      *(v3 + 392) = v97;
    }

    if (*(a2 + 392))
    {
      v99 = *(a2 + 392);
    }

    else
    {
      v99 = MEMORY[0x277D80A18];
    }

    result = TSP::Reference::MergeFrom(v97, v99);
    if ((v55 & 0x20000) == 0)
    {
LABEL_165:
      if ((v55 & 0x40000) == 0)
      {
        goto LABEL_166;
      }

      goto LABEL_200;
    }
  }

  else if ((v55 & 0x20000) == 0)
  {
    goto LABEL_165;
  }

  *(v3 + 16) |= 0x20000u;
  v100 = *(v3 + 400);
  if (!v100)
  {
    v101 = *(v3 + 8);
    if (v101)
    {
      v101 = *(v101 & 0xFFFFFFFFFFFFFFFELL);
    }

    v100 = MEMORY[0x277C8F050](v101);
    *(v3 + 400) = v100;
  }

  if (*(a2 + 400))
  {
    v102 = *(a2 + 400);
  }

  else
  {
    v102 = MEMORY[0x277D80A18];
  }

  result = TSP::Reference::MergeFrom(v100, v102);
  if ((v55 & 0x40000) == 0)
  {
LABEL_166:
    if ((v55 & 0x80000) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_208;
  }

LABEL_200:
  *(v3 + 16) |= 0x40000u;
  v103 = *(v3 + 408);
  if (!v103)
  {
    v104 = *(v3 + 8);
    if (v104)
    {
      v104 = *(v104 & 0xFFFFFFFFFFFFFFFELL);
    }

    v103 = MEMORY[0x277C8F050](v104);
    *(v3 + 408) = v103;
  }

  if (*(a2 + 408))
  {
    v105 = *(a2 + 408);
  }

  else
  {
    v105 = MEMORY[0x277D80A18];
  }

  result = TSP::Reference::MergeFrom(v103, v105);
  if ((v55 & 0x80000) == 0)
  {
LABEL_167:
    if ((v55 & 0x100000) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_216;
  }

LABEL_208:
  *(v3 + 16) |= 0x80000u;
  v106 = *(v3 + 416);
  if (!v106)
  {
    v107 = *(v3 + 8);
    if (v107)
    {
      v107 = *(v107 & 0xFFFFFFFFFFFFFFFELL);
    }

    v106 = MEMORY[0x277C8F050](v107);
    *(v3 + 416) = v106;
  }

  if (*(a2 + 416))
  {
    v108 = *(a2 + 416);
  }

  else
  {
    v108 = MEMORY[0x277D80A18];
  }

  result = TSP::Reference::MergeFrom(v106, v108);
  if ((v55 & 0x100000) == 0)
  {
LABEL_168:
    if ((v55 & 0x200000) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_224;
  }

LABEL_216:
  *(v3 + 16) |= 0x100000u;
  v109 = *(v3 + 424);
  if (!v109)
  {
    v110 = *(v3 + 8);
    if (v110)
    {
      v110 = *(v110 & 0xFFFFFFFFFFFFFFFELL);
    }

    v109 = sub_275E1FF68(v110);
    *(v3 + 424) = v109;
  }

  if (*(a2 + 424))
  {
    v111 = *(a2 + 424);
  }

  else
  {
    v111 = &unk_2812EAE80;
  }

  result = sub_275DF19C4(v109, v111);
  if ((v55 & 0x200000) == 0)
  {
LABEL_169:
    if ((v55 & 0x400000) == 0)
    {
      goto LABEL_170;
    }

LABEL_225:
    *(v3 + 436) = *(a2 + 436);
    if ((v55 & 0x800000) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_171;
  }

LABEL_224:
  *(v3 + 432) = *(a2 + 432);
  if ((v55 & 0x400000) != 0)
  {
    goto LABEL_225;
  }

LABEL_170:
  if ((v55 & 0x800000) != 0)
  {
LABEL_171:
    *(v3 + 440) = *(a2 + 440);
  }

LABEL_172:
  *(v3 + 16) |= v55;
LABEL_173:
  if ((v55 & 0x7F000000) == 0)
  {
    return result;
  }

  if ((v55 & 0x1000000) != 0)
  {
    *(v3 + 444) = *(a2 + 444);
    if ((v55 & 0x2000000) == 0)
    {
LABEL_176:
      if ((v55 & 0x4000000) == 0)
      {
        goto LABEL_177;
      }

      goto LABEL_229;
    }
  }

  else if ((v55 & 0x2000000) == 0)
  {
    goto LABEL_176;
  }

  *(v3 + 448) = *(a2 + 448);
  if ((v55 & 0x4000000) == 0)
  {
LABEL_177:
    if ((v55 & 0x8000000) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_230;
  }

LABEL_229:
  *(v3 + 452) = *(a2 + 452);
  if ((v55 & 0x8000000) == 0)
  {
LABEL_178:
    if ((v55 & 0x10000000) == 0)
    {
      goto LABEL_179;
    }

    goto LABEL_231;
  }

LABEL_230:
  *(v3 + 456) = *(a2 + 456);
  if ((v55 & 0x10000000) == 0)
  {
LABEL_179:
    if ((v55 & 0x20000000) == 0)
    {
      goto LABEL_180;
    }

LABEL_232:
    *(v3 + 458) = *(a2 + 458);
    if ((v55 & 0x40000000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_181;
  }

LABEL_231:
  *(v3 + 457) = *(a2 + 457);
  if ((v55 & 0x20000000) != 0)
  {
    goto LABEL_232;
  }

LABEL_180:
  if ((v55 & 0x40000000) != 0)
  {
LABEL_181:
    *(v3 + 459) = *(a2 + 459);
  }

LABEL_182:
  *(v3 + 16) |= v55;
  return result;
}

uint64_t *sub_275DF6514(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DF20E4(result);

    return sub_275DF598C(v4, a2);
  }

  return result;
}

uint64_t sub_275DF6560(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x10000018) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 56);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = sub_275DE8C14(*(*(a1 + 64) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 80);
  while (v9 >= 1)
  {
    v10 = v9 - 1;
    v11 = TSP::Reference::IsInitialized(*(*(a1 + 88) + 8 * v9));
    v9 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_275DF689C(a1 + 120);
  if (!result)
  {
    return result;
  }

  v12 = *(a1 + 152);
  while (v12 >= 1)
  {
    v13 = v12 - 1;
    v14 = TSP::Reference::IsInitialized(*(*(a1 + 160) + 8 * v12));
    result = 0;
    v12 = v13;
    if ((v14 & 1) == 0)
    {
      return result;
    }
  }

  v15 = *(a1 + 176);
  while (v15 >= 1)
  {
    v16 = v15 - 1;
    v17 = TSP::Reference::IsInitialized(*(*(a1 + 184) + 8 * v15));
    result = 0;
    v15 = v16;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  v18 = *(a1 + 200);
  while (v18 >= 1)
  {
    v19 = v18 - 1;
    v20 = TSP::Reference::IsInitialized(*(*(a1 + 208) + 8 * v18));
    result = 0;
    v18 = v19;
    if ((v20 & 1) == 0)
    {
      return result;
    }
  }

  v21 = *(a1 + 224);
  while (v21 >= 1)
  {
    v22 = v21 - 1;
    v23 = TSP::Reference::IsInitialized(*(*(a1 + 232) + 8 * v21));
    result = 0;
    v21 = v22;
    if ((v23 & 1) == 0)
    {
      return result;
    }
  }

  v24 = *(a1 + 248);
  while (v24 >= 1)
  {
    v25 = v24 - 1;
    v26 = TSP::Reference::IsInitialized(*(*(a1 + 256) + 8 * v24));
    result = 0;
    v24 = v25;
    if ((v26 & 1) == 0)
    {
      return result;
    }
  }

  v27 = *(a1 + 16);
  if ((v27 & 8) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 288));
    if (!result)
    {
      return result;
    }

    v27 = *(a1 + 16);
  }

  if ((v27 & 0x10) != 0)
  {
    v28 = *(a1 + 296);
    if ((*(v28 + 16) & 1) == 0)
    {
      return 0;
    }

    result = sub_275DE7730(*(v28 + 24));
    if (!result)
    {
      return result;
    }

    v27 = *(a1 + 16);
    if ((v27 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  if ((v27 & 0x20) != 0)
  {
LABEL_42:
    result = TSP::Reference::IsInitialized(*(a1 + 304));
    if (!result)
    {
      return result;
    }

    v27 = *(a1 + 16);
  }

LABEL_47:
  if ((v27 & 0x40) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 312));
    if (!result)
    {
      return result;
    }

    v27 = *(a1 + 16);
  }

  if ((v27 & 0x80) != 0)
  {
    result = TSD::GeometryArchive::IsInitialized(*(a1 + 320));
    if (!result)
    {
      return result;
    }

    v27 = *(a1 + 16);
  }

  if ((v27 & 0x100) != 0)
  {
    result = TSD::GeometryArchive::IsInitialized(*(a1 + 328));
    if (!result)
    {
      return result;
    }

    v27 = *(a1 + 16);
  }

  if ((v27 & 0x200) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 336));
    if (!result)
    {
      return result;
    }

    v27 = *(a1 + 16);
  }

  if ((v27 & 0x400) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 344));
    if (!result)
    {
      return result;
    }

    v27 = *(a1 + 16);
  }

  if ((v27 & 0x800) != 0)
  {
    result = TSD::GeometryArchive::IsInitialized(*(a1 + 352));
    if (!result)
    {
      return result;
    }

    v27 = *(a1 + 16);
  }

  if ((v27 & 0x1000) != 0)
  {
    result = TSWP::ShapeStylePropertiesArchive::IsInitialized(*(a1 + 360));
    if (!result)
    {
      return result;
    }

    v27 = *(a1 + 16);
  }

  if ((v27 & 0x2000) != 0)
  {
    result = TSWP::ShapeStylePropertiesArchive::IsInitialized(*(a1 + 368));
    if (!result)
    {
      return result;
    }

    v27 = *(a1 + 16);
  }

  if ((v27 & 0x4000) != 0)
  {
    result = TSWP::ShapeStylePropertiesArchive::IsInitialized(*(a1 + 376));
    if (!result)
    {
      return result;
    }

    v27 = *(a1 + 16);
  }

  if ((v27 & 0x8000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 384));
    if (!result)
    {
      return result;
    }

    v27 = *(a1 + 16);
  }

  if ((v27 & 0x10000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 392));
    if (!result)
    {
      return result;
    }

    v27 = *(a1 + 16);
  }

  if ((v27 & 0x20000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 400));
    if (!result)
    {
      return result;
    }

    v27 = *(a1 + 16);
  }

  if ((v27 & 0x40000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 408));
    if (!result)
    {
      return result;
    }

    v27 = *(a1 + 16);
  }

  if ((v27 & 0x80000) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 416));
    if (!result)
    {
      return result;
    }

    v27 = *(a1 + 16);
  }

  if ((v27 & 0x100000) == 0)
  {
    return 1;
  }

  result = sub_275DF1AB8(*(a1 + 424) + 16);
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL sub_275DF689C(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(*(a1 + 16) + 8 * v2);
    if ((~*(v4 + 16) & 3) != 0)
    {
      break;
    }

    --v2;
  }

  while ((TSP::Reference::IsInitialized(*(v4 + 32)) & 1) != 0);
  return v3 < 1;
}

void *sub_275DF693C(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D5EE8;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812EA710, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = MEMORY[0x277D80A90];
  return a1;
}

uint64_t *sub_275DF69D0(uint64_t *a1)
{
  v2 = a1[6];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  sub_275DE4968(a1 + 1);
  sub_275E22CA8(a1 + 3);
  return a1;
}

void sub_275DF6A4C(uint64_t *a1)
{
  sub_275DF69D0(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275DF6A8C(uint64_t a1)
{
  result = sub_275E223D8(a1 + 24);
  if (*(a1 + 16))
  {
    v3 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

  v5 = *(a1 + 8);
  v4 = a1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_275E224D0(v4);
  }

  return result;
}

google::protobuf::internal *sub_275DF6B10(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  while (1)
  {
LABEL_2:
    if (sub_275E221E8(a3, &v21))
    {
      return v21;
    }

    v5 = (v21 + 1);
    v6 = *v21;
    if ((*v21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v21 + 2);
LABEL_6:
      v21 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v7 - 128));
    v21 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v19;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      break;
    }

    if (v6 >> 3 != 1 || v6 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    google::protobuf::internal::ArenaStringPtr::Mutable();
    v10 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_33:
    v21 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  if (v6 == 18)
  {
    v11 = v5 - 1;
    while (1)
    {
      v21 = (v11 + 1);
      v12 = *(a1 + 40);
      if (!v12)
      {
        goto LABEL_26;
      }

      v13 = *(a1 + 32);
      v14 = *v12;
      if (v13 >= *v12)
      {
        break;
      }

      *(a1 + 32) = v13 + 1;
LABEL_28:
      v11 = google::protobuf::internal::InlineGreedyStringParser();
      v21 = v11;
      if (!v11)
      {
        return 0;
      }

      if (*a3 <= v11 || *v11 != 18)
      {
        goto LABEL_2;
      }
    }

    if (v14 == *(a1 + 36))
    {
LABEL_26:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
      v12 = *(a1 + 40);
      v14 = *v12;
    }

    *v12 = v14 + 1;
    v15 = sub_275D5EFD8(*(a1 + 24));
    v16 = *(a1 + 32);
    v17 = *(a1 + 40) + 8 * v16;
    *(a1 + 32) = v16 + 1;
    *(v17 + 8) = v15;
    goto LABEL_28;
  }

LABEL_12:
  if (v6)
  {
    v9 = (v6 & 7) == 4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275E22260((a1 + 8));
    }

    v10 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_33;
  }

  *(a3 + 80) = v6 - 1;
  return v21;
}

uint64_t sub_275DF6D24(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  v4 = a2;
  if (*(a1 + 16))
  {
    v4 = sub_275DE5774(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      v4 = sub_275DF6DE4(a3, 2, *(*(a1 + 40) + v7), v4);
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v8 = *(a1 + 8);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275DF6DE4(uint64_t *a1, int a2, const void **a3, _BYTE *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = a3[1], v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = a4 + 2;
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = a4 + 2;
        }

LABEL_18:
        *v7 = v4;
        v14 = v7 + 1;
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return v14 + v4;
      }
    }

    else if (v5 - a4 + 14 >= v4)
    {
      *a4 = v6 | 2;
      v7 = a4 + 1;
      goto LABEL_18;
    }
  }

  return MEMORY[0x2821EAB40]();
}

uint64_t sub_275DF6F10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v1 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v1 = 0;
  }

  v5 = *(a1 + 32);
  v6 = v1 + v5;
  if (v5 >= 1)
  {
    v7 = (*(a1 + 40) + 8);
    do
    {
      v8 = *v7++;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v6 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      --v5;
    }

    while (v5);
  }

  if (*(a1 + 8))
  {
    return MEMORY[0x2821EADD8](a1 + 8, v6, a1 + 20);
  }

  *(a1 + 20) = v6;
  return v6;
}

uint64_t sub_275DF6FD8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7EB0, 0);
  if (v4)
  {

    return sub_275DF7080(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DF7080(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275E22D44((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    *(v3 + 16) |= 1u;

    return google::protobuf::internal::ArenaStringPtr::Set();
  }

  return result;
}

uint64_t sub_275DF7174(uint64_t result, void *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DF6A8C(result);

    return sub_275DF6FD8(v4, a2);
  }

  return result;
}

uint64_t sub_275DF7204(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D5F98;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 48) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 192) = a2;
  *(a1 + 144) = a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a2;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  if (atomic_load_explicit(dword_2812EA6C8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(a1 + 216) = MEMORY[0x277D80A90];
  *(a1 + 224) = v3;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 277) = 0;
  *(a1 + 288) = 1;
  return a1;
}

void sub_275DF7314(_Unwind_Exception *a1)
{
  sub_275E23000(v8);
  sub_275E22F7C(v7);
  sub_275E22CA8(v6);
  sub_275E22EF8(v5);
  sub_275E22E74(v4);
  sub_275E22DF0(v3);
  sub_275E22664(v2);
  sub_275E22664(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_275DF7384(uint64_t *a1)
{
  sub_275DF7418(a1);
  sub_275DE4968(a1 + 1);
  sub_275E23000(a1 + 24);
  sub_275E22F7C(a1 + 21);
  sub_275E22CA8(a1 + 18);
  sub_275E22EF8(a1 + 15);
  sub_275E22E74(a1 + 12);
  sub_275E22DF0(a1 + 9);
  sub_275E22664(a1 + 6);
  sub_275E22664(a1 + 3);
  return a1;
}

TSP::UUID *sub_275DF7418(TSP::UUID *result)
{
  v1 = result;
  v2 = *(result + 27);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 28);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C8F960](v4, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812EB0B8)
  {
    v5 = *(v1 + 29);
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x277C8F960]();
    }

    v6 = *(v1 + 30);
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x277C8F960]();
    }

    result = *(v1 + 31);
    if (result)
    {
      TSP::UUID::~UUID(result);

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

void sub_275DF7530(uint64_t *a1)
{
  sub_275DF7384(a1);

  JUMPOUT(0x277C8F960);
}

void *sub_275DF7570()
{
  if (atomic_load_explicit(dword_2812EA6C8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812EB0B8;
}

uint64_t *sub_275DF75B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 64) + 8);
    do
    {
      v7 = *v6++;
      TSP::Reference::Clear(v7);
      --v5;
    }

    while (v5);
    *(a1 + 56) = 0;
  }

  v8 = *(a1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 88) + 8);
    do
    {
      v10 = *v9++;
      TSP::Size::Clear(v10);
      --v8;
    }

    while (v8);
    *(a1 + 80) = 0;
  }

  v11 = *(a1 + 104);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 112) + 8);
    do
    {
      v13 = *v12++;
      TSP::DataReference::Clear(v13);
      --v11;
    }

    while (v11);
    *(a1 + 104) = 0;
  }

  v14 = *(a1 + 128);
  if (v14 >= 1)
  {
    v15 = (*(a1 + 136) + 8);
    do
    {
      v16 = *v15++;
      sub_275DF6A8C(v16);
      --v14;
    }

    while (v14);
    *(a1 + 128) = 0;
  }

  sub_275E223D8(a1 + 144);
  v17 = *(a1 + 176);
  if (v17 >= 1)
  {
    v18 = (*(a1 + 184) + 8);
    do
    {
      v19 = *v18++;
      TSP::UUID::Clear(v19);
      --v17;
    }

    while (v17);
    *(a1 + 176) = 0;
  }

  result = sub_275E22424((a1 + 192));
  v21 = *(a1 + 16);
  if ((v21 & 0x1F) == 0)
  {
    goto LABEL_32;
  }

  if (v21)
  {
    v24 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v24 + 23) < 0)
    {
      **v24 = 0;
      *(v24 + 8) = 0;
      if ((v21 & 2) != 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      *v24 = 0;
      *(v24 + 23) = 0;
      if ((v21 & 2) != 0)
      {
        goto LABEL_46;
      }
    }

LABEL_28:
    if ((v21 & 4) == 0)
    {
      goto LABEL_29;
    }

LABEL_50:
    result = TSP::Reference::Clear(*(a1 + 232));
    if ((v21 & 8) == 0)
    {
LABEL_30:
      if ((v21 & 0x10) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    goto LABEL_51;
  }

  if ((v21 & 2) == 0)
  {
    goto LABEL_28;
  }

LABEL_46:
  v25 = *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v25 + 23) < 0)
  {
    **v25 = 0;
    *(v25 + 8) = 0;
    if ((v21 & 4) != 0)
    {
      goto LABEL_50;
    }
  }

  else
  {
    *v25 = 0;
    *(v25 + 23) = 0;
    if ((v21 & 4) != 0)
    {
      goto LABEL_50;
    }
  }

LABEL_29:
  if ((v21 & 8) == 0)
  {
    goto LABEL_30;
  }

LABEL_51:
  result = TSP::Reference::Clear(*(a1 + 240));
  if ((v21 & 0x10) != 0)
  {
LABEL_31:
    result = TSP::UUID::Clear(*(a1 + 248));
  }

LABEL_32:
  if ((v21 & 0xE0) != 0)
  {
    *(a1 + 258) = 0;
    *(a1 + 256) = 0;
  }

  if ((v21 & 0xFF00) != 0)
  {
    *(a1 + 265) = 0;
    *(a1 + 259) = 0;
  }

  if ((v21 & 0x7F0000) != 0)
  {
    *(a1 + 281) = 0;
    *(a1 + 273) = 0;
    *(a1 + 288) = 1;
  }

  v23 = *(a1 + 8);
  v22 = a1 + 8;
  *(v22 + 8) = 0;
  if (v23)
  {

    return sub_275E224D0(v22);
  }

  return result;
}

google::protobuf::internal *sub_275DF77EC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v180 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v180) & 1) == 0)
  {
    while (2)
    {
      v7 = (v180 + 1);
      v8 = *v180;
      if (*v180 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v180, (v9 - 128));
          v180 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_272;
          }

          v7 = TagFallback;
          v8 = v20;
LABEL_7:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 10)
              {
                goto LABEL_227;
              }

              v10 = v7 - 1;
              while (1)
              {
                v11 = (v10 + 1);
                v180 = (v10 + 1);
                v12 = *(a1 + 40);
                if (!v12)
                {
                  goto LABEL_11;
                }

                v18 = *(a1 + 32);
                v13 = *v12;
                if (v18 < *v12)
                {
                  *(a1 + 32) = v18 + 1;
                  v15 = *&v12[2 * v18 + 2];
                  goto LABEL_15;
                }

                if (v13 == *(a1 + 36))
                {
LABEL_11:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                  v12 = *(a1 + 40);
                  v13 = *v12;
                }

                *v12 = v13 + 1;
                v14 = MEMORY[0x277C8F050](*(a1 + 24));
                LODWORD(v15) = v14;
                v16 = *(a1 + 32);
                v17 = *(a1 + 40) + 8 * v16;
                *(a1 + 32) = v16 + 1;
                *(v17 + 8) = v14;
                v11 = v180;
LABEL_15:
                v10 = sub_275E5B9DC(a3, v15, v11);
                v180 = v10;
                if (!v10)
                {
                  goto LABEL_272;
                }

                if (*a3 <= v10 || *v10 != 10)
                {
                  goto LABEL_235;
                }
              }

            case 2u:
              if (v8 != 18)
              {
                goto LABEL_227;
              }

              *(a1 + 16) |= 4u;
              v55 = *(a1 + 232);
              if (v55)
              {
                goto LABEL_115;
              }

              v73 = *(a1 + 8);
              if (v73)
              {
                v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
              }

              v74 = MEMORY[0x277C8F050](v73);
              LODWORD(v55) = v74;
              *(a1 + 232) = v74;
              goto LABEL_114;
            case 3u:
              if (v8 != 26)
              {
                goto LABEL_227;
              }

              *(a1 + 16) |= 8u;
              v55 = *(a1 + 240);
              if (v55)
              {
                goto LABEL_115;
              }

              v56 = *(a1 + 8);
              if (v56)
              {
                v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
              }

              v57 = MEMORY[0x277C8F050](v56);
              LODWORD(v55) = v57;
              *(a1 + 240) = v57;
LABEL_114:
              v7 = v180;
LABEL_115:
              v75 = sub_275E5B9DC(a3, v55, v7);
              goto LABEL_234;
            case 4u:
              if (v8 != 32)
              {
                goto LABEL_227;
              }

              v5 |= 0x40u;
              v68 = (v7 + 1);
              v67 = *v7;
              if ((v67 & 0x8000000000000000) == 0)
              {
                goto LABEL_103;
              }

              v69 = *v68;
              v67 = (v69 << 7) + v67 - 128;
              if (v69 < 0)
              {
                v156 = google::protobuf::internal::VarintParseSlow64(v7, v67);
                v180 = v156;
                *(a1 + 257) = v157 != 0;
                if (!v156)
                {
                  goto LABEL_272;
                }
              }

              else
              {
                v68 = (v7 + 2);
LABEL_103:
                v180 = v68;
                *(a1 + 257) = v67 != 0;
              }

              goto LABEL_235;
            case 5u:
              if (v8 != 40)
              {
                goto LABEL_227;
              }

              v5 |= 0x80u;
              v31 = (v7 + 1);
              v30 = *v7;
              if ((v30 & 0x8000000000000000) == 0)
              {
                goto LABEL_44;
              }

              v32 = *v31;
              v30 = (v32 << 7) + v30 - 128;
              if (v32 < 0)
              {
                v150 = google::protobuf::internal::VarintParseSlow64(v7, v30);
                v180 = v150;
                *(a1 + 258) = v151 != 0;
                if (!v150)
                {
                  goto LABEL_272;
                }
              }

              else
              {
                v31 = (v7 + 2);
LABEL_44:
                v180 = v31;
                *(a1 + 258) = v30 != 0;
              }

              goto LABEL_235;
            case 6u:
              if (v8 != 48)
              {
                goto LABEL_227;
              }

              v5 |= 0x400u;
              v83 = (v7 + 1);
              v82 = *v7;
              if ((v82 & 0x8000000000000000) == 0)
              {
                goto LABEL_130;
              }

              v84 = *v83;
              v82 = (v84 << 7) + v82 - 128;
              if (v84 < 0)
              {
                v164 = google::protobuf::internal::VarintParseSlow64(v7, v82);
                v180 = v164;
                *(a1 + 261) = v165 != 0;
                if (!v164)
                {
                  goto LABEL_272;
                }
              }

              else
              {
                v83 = (v7 + 2);
LABEL_130:
                v180 = v83;
                *(a1 + 261) = v82 != 0;
              }

              goto LABEL_235;
            case 7u:
              if (v8 != 56)
              {
                goto LABEL_227;
              }

              v5 |= 0x800u;
              v92 = (v7 + 1);
              v91 = *v7;
              if ((v91 & 0x8000000000000000) == 0)
              {
                goto LABEL_145;
              }

              v93 = *v92;
              v91 = (v93 << 7) + v91 - 128;
              if (v93 < 0)
              {
                v170 = google::protobuf::internal::VarintParseSlow64(v7, v91);
                v180 = v170;
                *(a1 + 262) = v171 != 0;
                if (!v170)
                {
                  goto LABEL_272;
                }
              }

              else
              {
                v92 = (v7 + 2);
LABEL_145:
                v180 = v92;
                *(a1 + 262) = v91 != 0;
              }

              goto LABEL_235;
            case 8u:
              if (v8 != 64)
              {
                goto LABEL_227;
              }

              v5 |= 0x1000u;
              v71 = (v7 + 1);
              v70 = *v7;
              if ((v70 & 0x8000000000000000) == 0)
              {
                goto LABEL_108;
              }

              v72 = *v71;
              v70 = (v72 << 7) + v70 - 128;
              if (v72 < 0)
              {
                v158 = google::protobuf::internal::VarintParseSlow64(v7, v70);
                v180 = v158;
                *(a1 + 263) = v159 != 0;
                if (!v158)
                {
                  goto LABEL_272;
                }
              }

              else
              {
                v71 = (v7 + 2);
LABEL_108:
                v180 = v71;
                *(a1 + 263) = v70 != 0;
              }

              goto LABEL_235;
            case 9u:
              if (v8 != 74)
              {
                goto LABEL_227;
              }

              v97 = v7 - 1;
              while (1)
              {
                v98 = (v97 + 1);
                v180 = (v97 + 1);
                v99 = *(a1 + 64);
                if (!v99)
                {
                  goto LABEL_157;
                }

                v105 = *(a1 + 56);
                v100 = *v99;
                if (v105 < *v99)
                {
                  *(a1 + 56) = v105 + 1;
                  v102 = *&v99[2 * v105 + 2];
                  goto LABEL_161;
                }

                if (v100 == *(a1 + 60))
                {
LABEL_157:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                  v99 = *(a1 + 64);
                  v100 = *v99;
                }

                *v99 = v100 + 1;
                v101 = MEMORY[0x277C8F050](*(a1 + 48));
                LODWORD(v102) = v101;
                v103 = *(a1 + 56);
                v104 = *(a1 + 64) + 8 * v103;
                *(a1 + 56) = v103 + 1;
                *(v104 + 8) = v101;
                v98 = v180;
LABEL_161:
                v97 = sub_275E5B9DC(a3, v102, v98);
                v180 = v97;
                if (!v97)
                {
                  goto LABEL_272;
                }

                if (*a3 <= v97 || *v97 != 74)
                {
                  goto LABEL_235;
                }
              }

            case 0xAu:
              if (v8 != 82)
              {
                goto LABEL_227;
              }

              v36 = v7 - 1;
              while (1)
              {
                v37 = (v36 + 1);
                v180 = (v36 + 1);
                v38 = *(a1 + 88);
                if (!v38)
                {
                  goto LABEL_53;
                }

                v44 = *(a1 + 80);
                v39 = *v38;
                if (v44 < *v38)
                {
                  *(a1 + 80) = v44 + 1;
                  v41 = *&v38[2 * v44 + 2];
                  goto LABEL_57;
                }

                if (v39 == *(a1 + 84))
                {
LABEL_53:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
                  v38 = *(a1 + 88);
                  v39 = *v38;
                }

                *v38 = v39 + 1;
                v40 = MEMORY[0x277C8EFF0](*(a1 + 72));
                LODWORD(v41) = v40;
                v42 = *(a1 + 80);
                v43 = *(a1 + 88) + 8 * v42;
                *(a1 + 80) = v42 + 1;
                *(v43 + 8) = v40;
                v37 = v180;
LABEL_57:
                v36 = sub_275E5C60C(a3, v41, v37);
                v180 = v36;
                if (!v36)
                {
                  goto LABEL_272;
                }

                if (*a3 <= v36 || *v36 != 82)
                {
                  goto LABEL_235;
                }
              }

            case 0xBu:
              if (v8 != 90)
              {
                goto LABEL_227;
              }

              *(a1 + 16) |= 1u;
              goto LABEL_153;
            case 0xCu:
              if (v8 != 98)
              {
                goto LABEL_227;
              }

              *(a1 + 16) |= 2u;
LABEL_153:
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v75 = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_234;
            case 0xDu:
              if (v8 != 104)
              {
                goto LABEL_227;
              }

              v5 |= 0x2000u;
              v33 = (v7 + 1);
              LODWORD(v34) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_49;
              }

              v35 = *v33;
              v34 = (v34 + (v35 << 7) - 128);
              if (v35 < 0)
              {
                v152 = google::protobuf::internal::VarintParseSlow32(v7, v34);
                v180 = v152;
                *(a1 + 264) = v153;
                if (!v152)
                {
                  goto LABEL_272;
                }
              }

              else
              {
                v33 = (v7 + 2);
LABEL_49:
                v180 = v33;
                *(a1 + 264) = v34;
              }

              goto LABEL_235;
            case 0xEu:
              if (v8 != 112)
              {
                goto LABEL_227;
              }

              v5 |= 0x20u;
              v89 = (v7 + 1);
              v88 = *v7;
              if ((v88 & 0x8000000000000000) == 0)
              {
                goto LABEL_140;
              }

              v90 = *v89;
              v88 = (v90 << 7) + v88 - 128;
              if (v90 < 0)
              {
                v168 = google::protobuf::internal::VarintParseSlow64(v7, v88);
                v180 = v168;
                *(a1 + 256) = v169 != 0;
                if (!v168)
                {
                  goto LABEL_272;
                }
              }

              else
              {
                v89 = (v7 + 2);
LABEL_140:
                v180 = v89;
                *(a1 + 256) = v88 != 0;
              }

              goto LABEL_235;
            case 0xFu:
              if (v8 != 120)
              {
                goto LABEL_227;
              }

              v5 |= 0x4000u;
              v27 = (v7 + 1);
              LODWORD(v28) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_37;
              }

              v29 = *v27;
              v28 = (v28 + (v29 << 7) - 128);
              if (v29 < 0)
              {
                v148 = google::protobuf::internal::VarintParseSlow32(v7, v28);
                v180 = v148;
                *(a1 + 268) = v149;
                if (!v148)
                {
                  goto LABEL_272;
                }
              }

              else
              {
                v27 = (v7 + 2);
LABEL_37:
                v180 = v27;
                *(a1 + 268) = v28;
              }

              goto LABEL_235;
            case 0x10u:
              if (v8 != 130)
              {
                goto LABEL_227;
              }

              v58 = v7 - 2;
              while (1)
              {
                v59 = (v58 + 2);
                v180 = (v58 + 2);
                v60 = *(a1 + 112);
                if (!v60)
                {
                  goto LABEL_89;
                }

                v66 = *(a1 + 104);
                v61 = *v60;
                if (v66 < *v60)
                {
                  *(a1 + 104) = v66 + 1;
                  v63 = *&v60[2 * v66 + 2];
                  goto LABEL_93;
                }

                if (v61 == *(a1 + 108))
                {
LABEL_89:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
                  v60 = *(a1 + 112);
                  v61 = *v60;
                }

                *v60 = v61 + 1;
                v62 = MEMORY[0x277C8EFD0](*(a1 + 96));
                LODWORD(v63) = v62;
                v64 = *(a1 + 104);
                v65 = *(a1 + 112) + 8 * v64;
                *(a1 + 104) = v64 + 1;
                *(v65 + 8) = v62;
                v59 = v180;
LABEL_93:
                v58 = sub_275E5C6DC(a3, v63, v59);
                v180 = v58;
                if (!v58)
                {
                  goto LABEL_272;
                }

                if (*a3 <= v58 || *v58 != 386)
                {
                  goto LABEL_235;
                }
              }

            case 0x11u:
              if (v8 != 136)
              {
                goto LABEL_227;
              }

              v5 |= 0x100u;
              v25 = (v7 + 1);
              v24 = *v7;
              if ((v24 & 0x8000000000000000) == 0)
              {
                goto LABEL_32;
              }

              v26 = *v25;
              v24 = (v26 << 7) + v24 - 128;
              if (v26 < 0)
              {
                v146 = google::protobuf::internal::VarintParseSlow64(v7, v24);
                v180 = v146;
                *(a1 + 259) = v147 != 0;
                if (!v146)
                {
                  goto LABEL_272;
                }
              }

              else
              {
                v25 = (v7 + 2);
LABEL_32:
                v180 = v25;
                *(a1 + 259) = v24 != 0;
              }

              goto LABEL_235;
            case 0x12u:
              if (v8 != 144)
              {
                goto LABEL_227;
              }

              v5 |= 0x8000u;
              v77 = (v7 + 1);
              v76 = *v7;
              if ((v76 & 0x8000000000000000) == 0)
              {
                goto LABEL_120;
              }

              v78 = *v77;
              v76 = (v78 << 7) + v76 - 128;
              if (v78 < 0)
              {
                v160 = google::protobuf::internal::VarintParseSlow64(v7, v76);
                v180 = v160;
                *(a1 + 272) = v161 != 0;
                if (!v160)
                {
                  goto LABEL_272;
                }
              }

              else
              {
                v77 = (v7 + 2);
LABEL_120:
                v180 = v77;
                *(a1 + 272) = v76 != 0;
              }

              goto LABEL_235;
            case 0x13u:
              if (v8 != 152)
              {
                goto LABEL_227;
              }

              v5 |= 0x200u;
              v95 = (v7 + 1);
              v94 = *v7;
              if ((v94 & 0x8000000000000000) == 0)
              {
                goto LABEL_150;
              }

              v96 = *v95;
              v94 = (v96 << 7) + v94 - 128;
              if (v96 < 0)
              {
                v172 = google::protobuf::internal::VarintParseSlow64(v7, v94);
                v180 = v172;
                *(a1 + 260) = v173 != 0;
                if (!v172)
                {
                  goto LABEL_272;
                }
              }

              else
              {
                v95 = (v7 + 2);
LABEL_150:
                v180 = v95;
                *(a1 + 260) = v94 != 0;
              }

              goto LABEL_235;
            case 0x14u:
              if (v8 != 160)
              {
                goto LABEL_227;
              }

              v5 |= 0x20000u;
              v118 = (v7 + 1);
              v117 = *v7;
              if ((v117 & 0x8000000000000000) == 0)
              {
                goto LABEL_189;
              }

              v119 = *v118;
              v117 = (v119 << 7) + v117 - 128;
              if (v119 < 0)
              {
                v176 = google::protobuf::internal::VarintParseSlow64(v7, v117);
                v180 = v176;
                *(a1 + 274) = v177 != 0;
                if (!v176)
                {
                  goto LABEL_272;
                }
              }

              else
              {
                v118 = (v7 + 2);
LABEL_189:
                v180 = v118;
                *(a1 + 274) = v117 != 0;
              }

              goto LABEL_235;
            case 0x15u:
              if (v8 != 168)
              {
                goto LABEL_227;
              }

              v5 |= 0x400000u;
              v79 = (v7 + 1);
              LODWORD(v80) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_125;
              }

              v81 = *v79;
              v80 = (v80 + (v81 << 7) - 128);
              if (v81 < 0)
              {
                v162 = google::protobuf::internal::VarintParseSlow32(v7, v80);
                v180 = v162;
                *(a1 + 288) = v163;
                if (!v162)
                {
                  goto LABEL_272;
                }
              }

              else
              {
                v79 = (v7 + 2);
LABEL_125:
                v180 = v79;
                *(a1 + 288) = v80;
              }

              goto LABEL_235;
            case 0x16u:
              if (v8 != 176)
              {
                goto LABEL_227;
              }

              v5 |= 0x10000u;
              v86 = (v7 + 1);
              v85 = *v7;
              if ((v85 & 0x8000000000000000) == 0)
              {
                goto LABEL_135;
              }

              v87 = *v86;
              v85 = (v87 << 7) + v85 - 128;
              if (v87 < 0)
              {
                v166 = google::protobuf::internal::VarintParseSlow64(v7, v85);
                v180 = v166;
                *(a1 + 273) = v167 != 0;
                if (!v166)
                {
                  goto LABEL_272;
                }
              }

              else
              {
                v86 = (v7 + 2);
LABEL_135:
                v180 = v86;
                *(a1 + 273) = v85 != 0;
              }

              goto LABEL_235;
            case 0x17u:
              if (v8 != 184)
              {
                goto LABEL_227;
              }

              v5 |= 0x40000u;
              v115 = (v7 + 1);
              v114 = *v7;
              if ((v114 & 0x8000000000000000) == 0)
              {
                goto LABEL_184;
              }

              v116 = *v115;
              v114 = (v116 << 7) + v114 - 128;
              if (v116 < 0)
              {
                v174 = google::protobuf::internal::VarintParseSlow64(v7, v114);
                v180 = v174;
                *(a1 + 275) = v175 != 0;
                if (!v174)
                {
                  goto LABEL_272;
                }
              }

              else
              {
                v115 = (v7 + 2);
LABEL_184:
                v180 = v115;
                *(a1 + 275) = v114 != 0;
              }

              goto LABEL_235;
            case 0x18u:
              if (v8 != 194)
              {
                goto LABEL_227;
              }

              v120 = (v7 - 2);
              while (1)
              {
                v121 = (v120 + 2);
                v180 = (v120 + 2);
                v122 = *(a1 + 136);
                if (!v122)
                {
                  goto LABEL_193;
                }

                v127 = *(a1 + 128);
                v123 = *v122;
                if (v127 < *v122)
                {
                  *(a1 + 128) = v127 + 1;
                  v124 = *&v122[2 * v127 + 2];
                  goto LABEL_197;
                }

                if (v123 == *(a1 + 132))
                {
LABEL_193:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120));
                  v122 = *(a1 + 136);
                  v123 = *v122;
                }

                *v122 = v123 + 1;
                v124 = sub_275E20080(*(a1 + 120));
                v125 = *(a1 + 128);
                v126 = *(a1 + 136) + 8 * v125;
                *(a1 + 128) = v125 + 1;
                *(v126 + 8) = v124;
                v121 = v180;
LABEL_197:
                v120 = sub_275E5C7AC(a3, v124, v121);
                v180 = v120;
                if (!v120)
                {
                  goto LABEL_272;
                }

                if (*a3 <= v120 || *v120 != 450)
                {
                  goto LABEL_235;
                }
              }

            case 0x19u:
              if (v8 != 202)
              {
                goto LABEL_227;
              }

              v48 = v7 - 2;
              while (1)
              {
                v180 = (v48 + 2);
                v49 = *(a1 + 160);
                if (!v49)
                {
                  goto LABEL_75;
                }

                v50 = *(a1 + 152);
                v51 = *v49;
                if (v50 >= *v49)
                {
                  break;
                }

                *(a1 + 152) = v50 + 1;
LABEL_77:
                v48 = google::protobuf::internal::InlineGreedyStringParser();
                v180 = v48;
                if (!v48)
                {
                  goto LABEL_272;
                }

                if (*a3 <= v48 || *v48 != 458)
                {
                  goto LABEL_235;
                }
              }

              if (v51 == *(a1 + 156))
              {
LABEL_75:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 144));
                v49 = *(a1 + 160);
                v51 = *v49;
              }

              *v49 = v51 + 1;
              v52 = sub_275D5EFD8(*(a1 + 144));
              v53 = *(a1 + 152);
              v54 = *(a1 + 160) + 8 * v53;
              *(a1 + 152) = v53 + 1;
              *(v54 + 8) = v52;
              goto LABEL_77;
            case 0x1Au:
              if (v8 != 208)
              {
                goto LABEL_227;
              }

              v5 |= 0x80000u;
              v45 = (v7 + 1);
              LODWORD(v46) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_67;
              }

              v47 = *v45;
              v46 = (v46 + (v47 << 7) - 128);
              if (v47 < 0)
              {
                v154 = google::protobuf::internal::VarintParseSlow32(v7, v46);
                v180 = v154;
                *(a1 + 276) = v155;
                if (!v154)
                {
                  goto LABEL_272;
                }
              }

              else
              {
                v45 = (v7 + 2);
LABEL_67:
                v180 = v45;
                *(a1 + 276) = v46;
              }

              goto LABEL_235;
            case 0x1Bu:
              if (v8 != 216)
              {
                goto LABEL_227;
              }

              v5 |= 0x100000u;
              v140 = (v7 + 1);
              LODWORD(v141) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_226;
              }

              v142 = *v140;
              v141 = (v141 + (v142 << 7) - 128);
              if (v142 < 0)
              {
                v178 = google::protobuf::internal::VarintParseSlow32(v7, v141);
                v180 = v178;
                *(a1 + 280) = v179;
                if (!v178)
                {
                  goto LABEL_272;
                }
              }

              else
              {
                v140 = (v7 + 2);
LABEL_226:
                v180 = v140;
                *(a1 + 280) = v141;
              }

              goto LABEL_235;
            case 0x1Cu:
              if (v8 != 224)
              {
                goto LABEL_227;
              }

              v5 |= 0x200000u;
              v22 = (v7 + 1);
              v21 = *v7;
              if ((v21 & 0x8000000000000000) == 0)
              {
                goto LABEL_27;
              }

              v23 = *v22;
              v21 = (v23 << 7) + v21 - 128;
              if (v23 < 0)
              {
                v144 = google::protobuf::internal::VarintParseSlow64(v7, v21);
                v180 = v144;
                *(a1 + 284) = v145 != 0;
                if (!v144)
                {
                  goto LABEL_272;
                }
              }

              else
              {
                v22 = (v7 + 2);
LABEL_27:
                v180 = v22;
                *(a1 + 284) = v21 != 0;
              }

              goto LABEL_235;
            case 0x1Du:
              if (v8 != 234)
              {
                goto LABEL_227;
              }

              *(a1 + 16) |= 0x10u;
              v128 = *(a1 + 248);
              if (!v128)
              {
                v129 = *(a1 + 8);
                if (v129)
                {
                  v129 = *(v129 & 0xFFFFFFFFFFFFFFFELL);
                }

                v130 = MEMORY[0x277C8F000](v129);
                LODWORD(v128) = v130;
                *(a1 + 248) = v130;
                v7 = v180;
              }

              v75 = sub_275E5BB7C(a3, v128, v7);
              goto LABEL_234;
            case 0x1Eu:
              if (v8 != 242)
              {
                goto LABEL_227;
              }

              v131 = v7 - 2;
              while (1)
              {
                v132 = (v131 + 2);
                v180 = (v131 + 2);
                v133 = *(a1 + 184);
                if (!v133)
                {
                  goto LABEL_212;
                }

                v139 = *(a1 + 176);
                v134 = *v133;
                if (v139 < *v133)
                {
                  *(a1 + 176) = v139 + 1;
                  v136 = *&v133[2 * v139 + 2];
                  goto LABEL_216;
                }

                if (v134 == *(a1 + 180))
                {
LABEL_212:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 168));
                  v133 = *(a1 + 184);
                  v134 = *v133;
                }

                *v133 = v134 + 1;
                v135 = MEMORY[0x277C8F000](*(a1 + 168));
                LODWORD(v136) = v135;
                v137 = *(a1 + 176);
                v138 = *(a1 + 184) + 8 * v137;
                *(a1 + 176) = v137 + 1;
                *(v138 + 8) = v135;
                v132 = v180;
LABEL_216:
                v131 = sub_275E5BB7C(a3, v136, v132);
                v180 = v131;
                if (!v131)
                {
                  goto LABEL_272;
                }

                if (*a3 <= v131 || *v131 != 498)
                {
                  goto LABEL_235;
                }
              }

            case 0x1Fu:
              if (v8 != 250)
              {
                goto LABEL_227;
              }

              v106 = (v7 - 2);
              break;
            default:
LABEL_227:
              if (v8)
              {
                v143 = (v8 & 7) == 4;
              }

              else
              {
                v143 = 1;
              }

              if (v143)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_275E22260((a1 + 8));
              }

              v75 = google::protobuf::internal::UnknownFieldParse();
LABEL_234:
              v180 = v75;
              if (!v75)
              {
LABEL_272:
                v180 = 0;
                goto LABEL_2;
              }

LABEL_235:
              if (sub_275E221E8(a3, &v180))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v107 = (v106 + 2);
            v180 = (v106 + 2);
            v108 = *(a1 + 208);
            if (!v108)
            {
              goto LABEL_170;
            }

            v113 = *(a1 + 200);
            v109 = *v108;
            if (v113 < *v108)
            {
              *(a1 + 200) = v113 + 1;
              v110 = *&v108[2 * v113 + 2];
              goto LABEL_174;
            }

            if (v109 == *(a1 + 204))
            {
LABEL_170:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 192));
              v108 = *(a1 + 208);
              v109 = *v108;
            }

            *v108 = v109 + 1;
            v110 = sub_275E2196C(*(a1 + 192));
            v111 = *(a1 + 200);
            v112 = *(a1 + 208) + 8 * v111;
            *(a1 + 200) = v111 + 1;
            *(v112 + 8) = v110;
            v107 = v180;
LABEL_174:
            v106 = sub_275E5C87C(a3, v110, v107);
            v180 = v106;
            if (!v106)
            {
              goto LABEL_272;
            }

            if (*a3 <= v106 || *v106 != 506)
            {
              goto LABEL_235;
            }
          }
        }

        v7 = (v180 + 2);
      }

      break;
    }

    v180 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v180;
}

unsigned __int8 *sub_275DF8898(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v8, v10, this);
    }
  }

  v14 = *(a1 + 16);
  if ((v14 & 4) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v15 = *(a1 + 232);
    *a2 = 18;
    v16 = *(v15 + 5);
    if (v16 > 0x7F)
    {
      a2[1] = v16 | 0x80;
      v18 = v16 >> 7;
      if (v16 >> 14)
      {
        v17 = a2 + 3;
        do
        {
          *(v17 - 1) = v18 | 0x80;
          v19 = v18 >> 7;
          ++v17;
          v20 = v18 >> 14;
          v18 >>= 7;
        }

        while (v20);
        *(v17 - 1) = v19;
      }

      else
      {
        a2[2] = v18;
        v17 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v16;
      v17 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v15, v17, this);
    if ((v14 & 8) == 0)
    {
LABEL_15:
      if ((v14 & 0x40) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_41;
    }
  }

  else if ((v14 & 8) == 0)
  {
    goto LABEL_15;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v21 = *(a1 + 240);
  *a2 = 26;
  v22 = *(v21 + 5);
  if (v22 > 0x7F)
  {
    a2[1] = v22 | 0x80;
    v24 = v22 >> 7;
    if (v22 >> 14)
    {
      v23 = a2 + 3;
      do
      {
        *(v23 - 1) = v24 | 0x80;
        v25 = v24 >> 7;
        ++v23;
        v26 = v24 >> 14;
        v24 >>= 7;
      }

      while (v26);
      *(v23 - 1) = v25;
    }

    else
    {
      a2[2] = v24;
      v23 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v22;
    v23 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v21, v23, this);
  if ((v14 & 0x40) == 0)
  {
LABEL_16:
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_41:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v27 = *(a1 + 257);
  *a2 = 32;
  a2[1] = v27;
  a2 += 2;
  if ((v14 & 0x80) == 0)
  {
LABEL_17:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v28 = *(a1 + 258);
  *a2 = 40;
  a2[1] = v28;
  a2 += 2;
  if ((v14 & 0x400) == 0)
  {
LABEL_18:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_47:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v29 = *(a1 + 261);
  *a2 = 48;
  a2[1] = v29;
  a2 += 2;
  if ((v14 & 0x800) == 0)
  {
LABEL_19:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

LABEL_50:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v30 = *(a1 + 262);
  *a2 = 56;
  a2[1] = v30;
  a2 += 2;
  if ((v14 & 0x1000) != 0)
  {
LABEL_53:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v31 = *(a1 + 263);
    *a2 = 64;
    a2[1] = v31;
    a2 += 2;
  }

LABEL_56:
  v32 = *(a1 + 56);
  if (v32)
  {
    for (j = 0; j != v32; ++j)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v34 = *(*(a1 + 64) + 8 * j + 8);
      *a2 = 74;
      v35 = *(v34 + 5);
      if (v35 > 0x7F)
      {
        a2[1] = v35 | 0x80;
        v37 = v35 >> 7;
        if (v35 >> 14)
        {
          v36 = a2 + 3;
          do
          {
            *(v36 - 1) = v37 | 0x80;
            v38 = v37 >> 7;
            ++v36;
            v39 = v37 >> 14;
            v37 >>= 7;
          }

          while (v39);
          *(v36 - 1) = v38;
        }

        else
        {
          a2[2] = v37;
          v36 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v35;
        v36 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v34, v36, this);
    }
  }

  v40 = *(a1 + 80);
  if (v40)
  {
    for (k = 0; k != v40; ++k)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v42 = *(*(a1 + 88) + 8 * k + 8);
      *a2 = 82;
      v43 = *(v42 + 5);
      if (v43 > 0x7F)
      {
        a2[1] = v43 | 0x80;
        v45 = v43 >> 7;
        if (v43 >> 14)
        {
          v44 = a2 + 3;
          do
          {
            *(v44 - 1) = v45 | 0x80;
            v46 = v45 >> 7;
            ++v44;
            v47 = v45 >> 14;
            v45 >>= 7;
          }

          while (v47);
          *(v44 - 1) = v46;
        }

        else
        {
          a2[2] = v45;
          v44 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v43;
        v44 = a2 + 2;
      }

      a2 = TSP::Size::_InternalSerialize(v42, v44, this);
    }
  }

  if (v14)
  {
    a2 = sub_275DE5774(this, 11, (*(a1 + 216) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v14 & 2) == 0)
    {
LABEL_82:
      if ((v14 & 0x2000) == 0)
      {
        goto LABEL_83;
      }

LABEL_88:
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v48 = *(a1 + 264);
      *a2 = 104;
      if (v48 > 0x7F)
      {
        a2[1] = v48 | 0x80;
        v49 = v48 >> 7;
        if (v48 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v49 | 0x80;
            v50 = v49 >> 7;
            ++a2;
            v51 = v49 >> 14;
            v49 >>= 7;
          }

          while (v51);
          *(a2 - 1) = v50;
          if ((v14 & 0x20) != 0)
          {
            goto LABEL_99;
          }
        }

        else
        {
          a2[2] = v49;
          a2 += 3;
          if ((v14 & 0x20) != 0)
          {
            goto LABEL_99;
          }
        }
      }

      else
      {
        a2[1] = v48;
        a2 += 2;
        if ((v14 & 0x20) != 0)
        {
          goto LABEL_99;
        }
      }

LABEL_84:
      if ((v14 & 0x4000) == 0)
      {
        goto LABEL_111;
      }

      goto LABEL_102;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_82;
  }

  a2 = sub_275DE5774(this, 12, (*(a1 + 224) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v14 & 0x2000) != 0)
  {
    goto LABEL_88;
  }

LABEL_83:
  if ((v14 & 0x20) == 0)
  {
    goto LABEL_84;
  }

LABEL_99:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v52 = *(a1 + 256);
  *a2 = 112;
  a2[1] = v52;
  a2 += 2;
  if ((v14 & 0x4000) != 0)
  {
LABEL_102:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v53 = *(a1 + 268);
    *a2 = 120;
    if (v53 > 0x7F)
    {
      a2[1] = v53 | 0x80;
      v54 = v53 >> 7;
      if (v53 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v54 | 0x80;
          v55 = v54 >> 7;
          ++a2;
          v56 = v54 >> 14;
          v54 >>= 7;
        }

        while (v56);
        *(a2 - 1) = v55;
      }

      else
      {
        a2[2] = v54;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v53;
      a2 += 2;
    }
  }

LABEL_111:
  v57 = *(a1 + 104);
  if (v57)
  {
    for (m = 0; m != v57; ++m)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v59 = *(*(a1 + 112) + 8 * m + 8);
      *a2 = 386;
      v60 = *(v59 + 5);
      if (v60 > 0x7F)
      {
        a2[2] = v60 | 0x80;
        v62 = v60 >> 7;
        if (v60 >> 14)
        {
          v61 = a2 + 4;
          do
          {
            *(v61 - 1) = v62 | 0x80;
            v63 = v62 >> 7;
            ++v61;
            v64 = v62 >> 14;
            v62 >>= 7;
          }

          while (v64);
          *(v61 - 1) = v63;
        }

        else
        {
          a2[3] = v62;
          v61 = a2 + 4;
        }
      }

      else
      {
        a2[2] = v60;
        v61 = a2 + 3;
      }

      a2 = TSP::DataReference::_InternalSerialize(v59, v61, this);
    }
  }

  if ((v14 & 0x100) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v65 = *(a1 + 259);
    *a2 = 392;
    a2[2] = v65;
    a2 += 3;
    if ((v14 & 0x8000) == 0)
    {
LABEL_125:
      if ((v14 & 0x200) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_137;
    }
  }

  else if ((v14 & 0x8000) == 0)
  {
    goto LABEL_125;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v66 = *(a1 + 272);
  *a2 = 400;
  a2[2] = v66;
  a2 += 3;
  if ((v14 & 0x200) == 0)
  {
LABEL_126:
    if ((v14 & 0x20000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_140;
  }

LABEL_137:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v67 = *(a1 + 260);
  *a2 = 408;
  a2[2] = v67;
  a2 += 3;
  if ((v14 & 0x20000) == 0)
  {
LABEL_127:
    if ((v14 & 0x400000) == 0)
    {
      goto LABEL_128;
    }

LABEL_143:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v69 = *(a1 + 288);
    *a2 = 424;
    if (v69 > 0x7F)
    {
      a2[2] = v69 | 0x80;
      v70 = v69 >> 7;
      if (v69 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v70 | 0x80;
          v71 = v70 >> 7;
          ++a2;
          v72 = v70 >> 14;
          v70 >>= 7;
        }

        while (v72);
        *(a2 - 1) = v71;
        if ((v14 & 0x10000) != 0)
        {
          goto LABEL_154;
        }
      }

      else
      {
        a2[3] = v70;
        a2 += 4;
        if ((v14 & 0x10000) != 0)
        {
          goto LABEL_154;
        }
      }
    }

    else
    {
      a2[2] = v69;
      a2 += 3;
      if ((v14 & 0x10000) != 0)
      {
        goto LABEL_154;
      }
    }

LABEL_129:
    if ((v14 & 0x40000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_157;
  }

LABEL_140:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v68 = *(a1 + 274);
  *a2 = 416;
  a2[2] = v68;
  a2 += 3;
  if ((v14 & 0x400000) != 0)
  {
    goto LABEL_143;
  }

LABEL_128:
  if ((v14 & 0x10000) == 0)
  {
    goto LABEL_129;
  }

LABEL_154:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v73 = *(a1 + 273);
  *a2 = 432;
  a2[2] = v73;
  a2 += 3;
  if ((v14 & 0x40000) != 0)
  {
LABEL_157:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v74 = *(a1 + 275);
    *a2 = 440;
    a2[2] = v74;
    a2 += 3;
  }

LABEL_160:
  v75 = *(a1 + 128);
  if (v75)
  {
    for (n = 0; n != v75; ++n)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v77 = *(*(a1 + 136) + 8 * n + 8);
      *a2 = 450;
      v78 = *(v77 + 20);
      if (v78 > 0x7F)
      {
        a2[2] = v78 | 0x80;
        v80 = v78 >> 7;
        if (v78 >> 14)
        {
          v79 = a2 + 4;
          do
          {
            *(v79 - 1) = v80 | 0x80;
            v81 = v80 >> 7;
            ++v79;
            v82 = v80 >> 14;
            v80 >>= 7;
          }

          while (v82);
          *(v79 - 1) = v81;
        }

        else
        {
          a2[3] = v80;
          v79 = a2 + 4;
        }
      }

      else
      {
        a2[2] = v78;
        v79 = a2 + 3;
      }

      a2 = sub_275DF6D24(v77, v79, this);
    }
  }

  v83 = *(a1 + 152);
  if (v83 >= 1)
  {
    v84 = 8;
    do
    {
      a2 = sub_275DF6DE4(this, 25, *(*(a1 + 160) + v84), a2);
      v84 += 8;
      --v83;
    }

    while (v83);
  }

  if ((v14 & 0x80000) == 0)
  {
    if ((v14 & 0x100000) == 0)
    {
      goto LABEL_177;
    }

LABEL_191:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v89 = *(a1 + 280);
    *a2 = 472;
    if (v89 > 0x7F)
    {
      a2[2] = v89 | 0x80;
      v90 = v89 >> 7;
      if (v89 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v90 | 0x80;
          v91 = v90 >> 7;
          ++a2;
          v92 = v90 >> 14;
          v90 >>= 7;
        }

        while (v92);
        *(a2 - 1) = v91;
        if ((v14 & 0x200000) != 0)
        {
          goto LABEL_202;
        }
      }

      else
      {
        a2[3] = v90;
        a2 += 4;
        if ((v14 & 0x200000) != 0)
        {
          goto LABEL_202;
        }
      }
    }

    else
    {
      a2[2] = v89;
      a2 += 3;
      if ((v14 & 0x200000) != 0)
      {
        goto LABEL_202;
      }
    }

LABEL_178:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_215;
    }

    goto LABEL_205;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v85 = *(a1 + 276);
  *a2 = 464;
  if (v85 > 0x7F)
  {
    a2[2] = v85 | 0x80;
    v86 = v85 >> 7;
    if (v85 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v86 | 0x80;
        v87 = v86 >> 7;
        ++a2;
        v88 = v86 >> 14;
        v86 >>= 7;
      }

      while (v88);
      *(a2 - 1) = v87;
      if ((v14 & 0x100000) != 0)
      {
        goto LABEL_191;
      }
    }

    else
    {
      a2[3] = v86;
      a2 += 4;
      if ((v14 & 0x100000) != 0)
      {
        goto LABEL_191;
      }
    }
  }

  else
  {
    a2[2] = v85;
    a2 += 3;
    if ((v14 & 0x100000) != 0)
    {
      goto LABEL_191;
    }
  }

LABEL_177:
  if ((v14 & 0x200000) == 0)
  {
    goto LABEL_178;
  }

LABEL_202:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v93 = *(a1 + 284);
  *a2 = 480;
  a2[2] = v93;
  a2 += 3;
  if ((v14 & 0x10) != 0)
  {
LABEL_205:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v94 = *(a1 + 248);
    *a2 = 490;
    v95 = *(v94 + 5);
    if (v95 > 0x7F)
    {
      a2[2] = v95 | 0x80;
      v97 = v95 >> 7;
      if (v95 >> 14)
      {
        v96 = a2 + 4;
        do
        {
          *(v96 - 1) = v97 | 0x80;
          v98 = v97 >> 7;
          ++v96;
          v99 = v97 >> 14;
          v97 >>= 7;
        }

        while (v99);
        *(v96 - 1) = v98;
      }

      else
      {
        a2[3] = v97;
        v96 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v95;
      v96 = a2 + 3;
    }

    a2 = TSP::UUID::_InternalSerialize(v94, v96, this);
  }

LABEL_215:
  v100 = *(a1 + 176);
  if (v100)
  {
    for (ii = 0; ii != v100; ++ii)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v102 = *(*(a1 + 184) + 8 * ii + 8);
      *a2 = 498;
      v103 = *(v102 + 5);
      if (v103 > 0x7F)
      {
        a2[2] = v103 | 0x80;
        v105 = v103 >> 7;
        if (v103 >> 14)
        {
          v104 = a2 + 4;
          do
          {
            *(v104 - 1) = v105 | 0x80;
            v106 = v105 >> 7;
            ++v104;
            v107 = v105 >> 14;
            v105 >>= 7;
          }

          while (v107);
          *(v104 - 1) = v106;
        }

        else
        {
          a2[3] = v105;
          v104 = a2 + 4;
        }
      }

      else
      {
        a2[2] = v103;
        v104 = a2 + 3;
      }

      a2 = TSP::UUID::_InternalSerialize(v102, v104, this);
    }
  }

  v108 = *(a1 + 200);
  if (v108)
  {
    for (jj = 0; jj != v108; ++jj)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v110 = *(*(a1 + 208) + 8 * jj + 8);
      *a2 = 506;
      v111 = *(v110 + 32);
      if (v111 > 0x7F)
      {
        a2[2] = v111 | 0x80;
        v113 = v111 >> 7;
        if (v111 >> 14)
        {
          v112 = a2 + 4;
          do
          {
            *(v112 - 1) = v113 | 0x80;
            v114 = v113 >> 7;
            ++v112;
            v115 = v113 >> 14;
            v113 >>= 7;
          }

          while (v115);
          *(v112 - 1) = v114;
        }

        else
        {
          a2[3] = v113;
          v112 = a2 + 4;
        }
      }

      else
      {
        a2[2] = v111;
        v112 = a2 + 3;
      }

      a2 = sub_275E1A7D0(v110, v112, this);
    }
  }

  v116 = *(a1 + 8);
  if ((v116 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v116 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275DF964C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = (~v2 & 0xC40) == 0;
  v4 = 6;
  v5 = ((v2 >> 5) & 2) + ((v2 >> 9) & 2) + ((v2 >> 10) & 2);
  if (!v3)
  {
    v4 = v5;
  }

  v6 = *(a1 + 32);
  v7 = v4 + v6;
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 8 * v6;
    do
    {
      v11 = *v9++;
      v12 = TSP::Reference::ByteSizeLong(v11);
      v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      v10 -= 8;
    }

    while (v10);
  }

  v13 = *(a1 + 56);
  v14 = v7 + v13;
  v15 = *(a1 + 64);
  if (v15)
  {
    v16 = (v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  if (v13)
  {
    v17 = 8 * v13;
    do
    {
      v18 = *v16++;
      v19 = TSP::Reference::ByteSizeLong(v18);
      v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      v17 -= 8;
    }

    while (v17);
  }

  v20 = *(a1 + 80);
  v21 = v14 + v20;
  v22 = *(a1 + 88);
  if (v22)
  {
    v23 = (v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  if (v20)
  {
    v24 = 8 * v20;
    do
    {
      v25 = *v23++;
      v26 = TSP::Size::ByteSizeLong(v25);
      v21 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
      v24 -= 8;
    }

    while (v24);
  }

  v27 = *(a1 + 104);
  v28 = v21 + 2 * v27;
  v29 = *(a1 + 112);
  if (v29)
  {
    v30 = (v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  if (v27)
  {
    v31 = 8 * v27;
    do
    {
      v32 = *v30++;
      v33 = TSP::DataReference::ByteSizeLong(v32);
      v28 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6);
      v31 -= 8;
    }

    while (v31);
  }

  v34 = *(a1 + 128);
  v35 = v28 + 2 * v34;
  v36 = *(a1 + 136);
  if (v36)
  {
    v37 = (v36 + 8);
  }

  else
  {
    v37 = 0;
  }

  if (v34)
  {
    v38 = 8 * v34;
    do
    {
      v39 = *v37++;
      v40 = sub_275DF6F10(v39);
      v35 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6);
      v38 -= 8;
    }

    while (v38);
  }

  v41 = *(a1 + 152);
  v42 = v35 + 2 * v41;
  if (v41 >= 1)
  {
    v43 = (*(a1 + 160) + 8);
    do
    {
      v44 = *v43++;
      v45 = *(v44 + 23);
      v46 = *(v44 + 8);
      if ((v45 & 0x80u) == 0)
      {
        v46 = v45;
      }

      v42 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6);
      --v41;
    }

    while (v41);
  }

  v47 = *(a1 + 176);
  v48 = v42 + 2 * v47;
  v49 = *(a1 + 184);
  if (v49)
  {
    v50 = (v49 + 8);
  }

  else
  {
    v50 = 0;
  }

  if (v47)
  {
    v51 = 8 * v47;
    do
    {
      v52 = *v50++;
      v53 = TSP::UUID::ByteSizeLong(v52);
      v48 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6);
      v51 -= 8;
    }

    while (v51);
  }

  v54 = *(a1 + 200);
  v55 = v48 + 2 * v54;
  v56 = *(a1 + 208);
  if (v56)
  {
    v57 = (v56 + 8);
  }

  else
  {
    v57 = 0;
  }

  if (v54)
  {
    v58 = 8 * v54;
    do
    {
      v59 = *v57++;
      v60 = sub_275E1A8E4(v59);
      v55 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6);
      v58 -= 8;
    }

    while (v58);
  }

  v61 = *(a1 + 16);
  if ((v61 & 0x3F) != 0)
  {
    if (v61)
    {
      v68 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
      v69 = *(v68 + 23);
      v70 = *(v68 + 8);
      if ((v69 & 0x80u) == 0)
      {
        v70 = v69;
      }

      v55 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v61 & 2) == 0)
      {
LABEL_53:
        if ((v61 & 4) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_97;
      }
    }

    else if ((v61 & 2) == 0)
    {
      goto LABEL_53;
    }

    v71 = *(a1 + 224) & 0xFFFFFFFFFFFFFFFELL;
    v72 = *(v71 + 23);
    v73 = *(v71 + 8);
    if ((v72 & 0x80u) == 0)
    {
      v73 = v72;
    }

    v55 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v61 & 4) == 0)
    {
LABEL_54:
      if ((v61 & 8) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_98;
    }

LABEL_97:
    v74 = TSP::Reference::ByteSizeLong(*(a1 + 232));
    v55 += v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v61 & 8) == 0)
    {
LABEL_55:
      if ((v61 & 0x10) == 0)
      {
LABEL_57:
        v55 += (v61 >> 4) & 2;
        goto LABEL_58;
      }

LABEL_56:
      v62 = TSP::UUID::ByteSizeLong(*(a1 + 248));
      v55 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 2;
      goto LABEL_57;
    }

LABEL_98:
    v75 = TSP::Reference::ByteSizeLong(*(a1 + 240));
    v55 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v61 & 0x10) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

LABEL_58:
  v63 = v55 + ((v61 >> 6) & 2) + 3;
  if ((v61 & 0x100) == 0)
  {
    v63 = v55 + ((v61 >> 6) & 2);
  }

  if ((v61 & 0x200) != 0)
  {
    v63 += 3;
  }

  if ((v61 & 0x300) != 0)
  {
    v64 = v63;
  }

  else
  {
    v64 = v55 + ((v61 >> 6) & 2);
  }

  if ((v61 & 0xF000) != 0)
  {
    v65 = v64 + ((v61 >> 11) & 2);
    if ((v61 & 0x2000) != 0)
    {
      v65 += ((9 * (__clz(*(a1 + 264) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v61 & 0x4000) != 0)
    {
      v65 += ((9 * (__clz(*(a1 + 268) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v61 & 0x8000) != 0)
    {
      v64 = v65 + 3;
    }

    else
    {
      v64 = v65;
    }
  }

  if ((v61 & 0x7F0000) != 0)
  {
    v66 = v64 + 3;
    if ((v61 & 0x10000) == 0)
    {
      v66 = v64;
    }

    if ((v61 & 0x20000) != 0)
    {
      v66 += 3;
    }

    if ((v61 & 0x40000) != 0)
    {
      v66 += 3;
    }

    if ((v61 & 0x80000) != 0)
    {
      v66 += ((9 * (__clz(*(a1 + 276) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v61 & 0x100000) != 0)
    {
      v66 += ((9 * (__clz(*(a1 + 280) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v61 & 0x200000) != 0)
    {
      v64 = v66 + 3;
    }

    else
    {
      v64 = v66;
    }

    if ((v61 & 0x400000) != 0)
    {
      v64 += ((9 * (__clz(*(a1 + 288) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v64, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v64;
    return v64;
  }
}

uint64_t sub_275DF9BF8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7EC8, 0);
  if (v4)
  {

    return sub_275DF9CA0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DF9CA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275E226E8(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    result = sub_275E226E8(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 72));
    result = sub_275E23084(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 104);
  if (v20)
  {
    v21 = *(a2 + 112);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 96));
    result = sub_275E23144(v3 + 96, v22, (v21 + 8), v20, **(v3 + 112) - *(v3 + 104));
    v23 = *(v3 + 104) + v20;
    *(v3 + 104) = v23;
    v24 = *(v3 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 128);
  if (v25)
  {
    v26 = *(a2 + 136);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 120));
    result = sub_275E23204(v3 + 120, v27, (v26 + 8), v25, **(v3 + 136) - *(v3 + 128));
    v28 = *(v3 + 128) + v25;
    *(v3 + 128) = v28;
    v29 = *(v3 + 136);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 152);
  if (v30)
  {
    v31 = *(a2 + 160);
    v32 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 144));
    result = sub_275E22D44((v3 + 144), v32, (v31 + 8), v30, **(v3 + 160) - *(v3 + 152));
    v33 = *(v3 + 152) + v30;
    *(v3 + 152) = v33;
    v34 = *(v3 + 160);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 176);
  if (v35)
  {
    v36 = *(a2 + 184);
    v37 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 168));
    result = sub_275E232C4(v3 + 168, v37, (v36 + 8), v35, **(v3 + 184) - *(v3 + 176));
    v38 = *(v3 + 176) + v35;
    *(v3 + 176) = v38;
    v39 = *(v3 + 184);
    if (*v39 < v38)
    {
      *v39 = v38;
    }
  }

  v40 = *(a2 + 200);
  if (v40)
  {
    v41 = *(a2 + 208);
    v42 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 192));
    result = sub_275E23384((v3 + 192), v42, (v41 + 8), v40, **(v3 + 208) - *(v3 + 200));
    v43 = *(v3 + 200) + v40;
    *(v3 + 200) = v43;
    v44 = *(v3 + 208);
    if (*v44 < v43)
    {
      *v44 = v43;
    }
  }

  v45 = *(a2 + 16);
  if (v45)
  {
    if (v45)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v45 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
    }

    v46 = MEMORY[0x277D80A18];
    if ((v45 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v47 = *(v3 + 232);
      if (!v47)
      {
        v48 = *(v3 + 8);
        if (v48)
        {
          v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
        }

        v47 = MEMORY[0x277C8F050](v48);
        *(v3 + 232) = v47;
      }

      if (*(a2 + 232))
      {
        v49 = *(a2 + 232);
      }

      else
      {
        v49 = v46;
      }

      result = TSP::Reference::MergeFrom(v47, v49);
      if ((v45 & 8) == 0)
      {
LABEL_34:
        if ((v45 & 0x10) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_78;
      }
    }

    else if ((v45 & 8) == 0)
    {
      goto LABEL_34;
    }

    *(v3 + 16) |= 8u;
    v50 = *(v3 + 240);
    if (!v50)
    {
      v51 = *(v3 + 8);
      if (v51)
      {
        v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
      }

      v50 = MEMORY[0x277C8F050](v51);
      *(v3 + 240) = v50;
    }

    if (*(a2 + 240))
    {
      v52 = *(a2 + 240);
    }

    else
    {
      v52 = v46;
    }

    result = TSP::Reference::MergeFrom(v50, v52);
    if ((v45 & 0x10) == 0)
    {
LABEL_35:
      if ((v45 & 0x20) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_86;
    }

LABEL_78:
    *(v3 + 16) |= 0x10u;
    v53 = *(v3 + 248);
    if (!v53)
    {
      v54 = *(v3 + 8);
      if (v54)
      {
        v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
      }

      v53 = MEMORY[0x277C8F000](v54);
      *(v3 + 248) = v53;
    }

    if (*(a2 + 248))
    {
      v55 = *(a2 + 248);
    }

    else
    {
      v55 = MEMORY[0x277D809E0];
    }

    result = TSP::UUID::MergeFrom(v53, v55);
    if ((v45 & 0x20) == 0)
    {
LABEL_36:
      if ((v45 & 0x40) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_87;
    }

LABEL_86:
    *(v3 + 256) = *(a2 + 256);
    if ((v45 & 0x40) == 0)
    {
LABEL_37:
      if ((v45 & 0x80) == 0)
      {
LABEL_39:
        *(v3 + 16) |= v45;
        goto LABEL_40;
      }

LABEL_38:
      *(v3 + 258) = *(a2 + 258);
      goto LABEL_39;
    }

LABEL_87:
    *(v3 + 257) = *(a2 + 257);
    if ((v45 & 0x80) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_40:
  if ((v45 & 0xFF00) == 0)
  {
    goto LABEL_51;
  }

  if ((v45 & 0x100) != 0)
  {
    *(v3 + 259) = *(a2 + 259);
    if ((v45 & 0x200) == 0)
    {
LABEL_43:
      if ((v45 & 0x400) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_91;
    }
  }

  else if ((v45 & 0x200) == 0)
  {
    goto LABEL_43;
  }

  *(v3 + 260) = *(a2 + 260);
  if ((v45 & 0x400) == 0)
  {
LABEL_44:
    if ((v45 & 0x800) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v3 + 261) = *(a2 + 261);
  if ((v45 & 0x800) == 0)
  {
LABEL_45:
    if ((v45 & 0x1000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v3 + 262) = *(a2 + 262);
  if ((v45 & 0x1000) == 0)
  {
LABEL_46:
    if ((v45 & 0x2000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v3 + 263) = *(a2 + 263);
  if ((v45 & 0x2000) == 0)
  {
LABEL_47:
    if ((v45 & 0x4000) == 0)
    {
      goto LABEL_48;
    }

LABEL_95:
    *(v3 + 268) = *(a2 + 268);
    if ((v45 & 0x8000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_94:
  *(v3 + 264) = *(a2 + 264);
  if ((v45 & 0x4000) != 0)
  {
    goto LABEL_95;
  }

LABEL_48:
  if ((v45 & 0x8000) != 0)
  {
LABEL_49:
    *(v3 + 272) = *(a2 + 272);
  }

LABEL_50:
  *(v3 + 16) |= v45;
LABEL_51:
  if ((v45 & 0x7F0000) == 0)
  {
    return result;
  }

  if ((v45 & 0x10000) != 0)
  {
    *(v3 + 273) = *(a2 + 273);
    if ((v45 & 0x20000) == 0)
    {
LABEL_54:
      if ((v45 & 0x40000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_99;
    }
  }

  else if ((v45 & 0x20000) == 0)
  {
    goto LABEL_54;
  }

  *(v3 + 274) = *(a2 + 274);
  if ((v45 & 0x40000) == 0)
  {
LABEL_55:
    if ((v45 & 0x80000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(v3 + 275) = *(a2 + 275);
  if ((v45 & 0x80000) == 0)
  {
LABEL_56:
    if ((v45 & 0x100000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_101;
  }

LABEL_100:
  *(v3 + 276) = *(a2 + 276);
  if ((v45 & 0x100000) == 0)
  {
LABEL_57:
    if ((v45 & 0x200000) == 0)
    {
      goto LABEL_58;
    }

LABEL_102:
    *(v3 + 284) = *(a2 + 284);
    if ((v45 & 0x400000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_101:
  *(v3 + 280) = *(a2 + 280);
  if ((v45 & 0x200000) != 0)
  {
    goto LABEL_102;
  }

LABEL_58:
  if ((v45 & 0x400000) != 0)
  {
LABEL_59:
    *(v3 + 288) = *(a2 + 288);
  }

LABEL_60:
  *(v3 + 16) |= v45;
  return result;
}

uint64_t sub_275DFA274(uint64_t result, void *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DF75B0(result);

    return sub_275DF9BF8(v4, a2);
  }

  return result;
}

uint64_t sub_275DFA2C0(uint64_t a1)
{
  if ((~*(a1 + 16) & 0xC40) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 56);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::Reference::IsInitialized(*(*(a1 + 64) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 80);
  while (v9 >= 1)
  {
    v10 = v9 - 1;
    v11 = TSP::Size::IsInitialized(*(*(a1 + 88) + 8 * v9));
    v9 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(a1 + 104);
  while (v12 >= 1)
  {
    v13 = v12 - 1;
    v14 = TSP::DataReference::IsInitialized(*(*(a1 + 112) + 8 * v12));
    v12 = v13;
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(a1 + 128);
  while (v15 >= 1)
  {
    result = 0;
    v16 = *(*(a1 + 136) + 8 * v15--);
    if ((*(v16 + 16) & 1) == 0)
    {
      return result;
    }
  }

  v17 = *(a1 + 176);
  while (v17 >= 1)
  {
    v18 = v17 - 1;
    v19 = TSP::UUID::IsInitialized(*(*(a1 + 184) + 8 * v17));
    result = 0;
    v17 = v18;
    if ((v19 & 1) == 0)
    {
      return result;
    }
  }

  v20 = *(a1 + 16);
  if ((v20 & 4) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 232));
    if (!result)
    {
      return result;
    }

    v20 = *(a1 + 16);
  }

  if ((v20 & 8) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 240));
    if (!result)
    {
      return result;
    }

    v20 = *(a1 + 16);
  }

  if ((v20 & 0x10) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(a1 + 248));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275DFA470(uint64_t result, uint64_t a2)
{
  *result = &unk_2884D6048;
  *(result + 8) = a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 1;
  return result;
}

void sub_275DFA4D0(uint64_t a1)
{
  sub_275DE4968((a1 + 8));

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275DFA528()
{
  if (atomic_load_explicit(dword_2812EA100, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812EB1E0;
}

uint64_t *sub_275DFA568(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    *(a1 + 30) = 0;
    *(a1 + 24) = 0;
  }

  if ((v1 & 0x700) != 0)
  {
    *(a1 + 38) = 0;
    *(a1 + 40) = 1;
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 2) = 0;
  if (v3)
  {
    return sub_275E224D0(result);
  }

  return result;
}

google::protobuf::internal *sub_275DFA5A4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v66 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v66) & 1) == 0)
  {
    while (1)
    {
      v7 = (v66 + 1);
      v8 = *v66;
      if ((*v66 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v66, (v9 - 128));
      v66 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_119;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 6)
      {
        if (v8 >> 3 <= 2)
        {
          if (v10 != 1)
          {
            if (v10 == 2 && v8 == 16)
            {
              v22 = (v7 + 1);
              v21 = *v7;
              if ((v21 & 0x8000000000000000) == 0)
              {
                goto LABEL_43;
              }

              v23 = *v22;
              v21 = (v23 << 7) + v21 - 128;
              if (v23 < 0)
              {
                v66 = google::protobuf::internal::VarintParseSlow64(v7, v21);
                if (!v66)
                {
                  goto LABEL_119;
                }
              }

              else
              {
                v22 = (v7 + 2);
LABEL_43:
                v66 = v22;
              }

              if (v21 > 1)
              {
                sub_275E5F6FC();
              }

              else
              {
                *(a1 + 16) |= 1u;
                *(a1 + 24) = v21;
              }

              goto LABEL_92;
            }

LABEL_85:
            if (v8)
            {
              v47 = (v8 & 7) == 4;
            }

            else
            {
              v47 = 1;
            }

            if (v47)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_275E22260((a1 + 8));
            }

            v66 = google::protobuf::internal::UnknownFieldParse();
            if (!v66)
            {
LABEL_119:
              v66 = 0;
              goto LABEL_2;
            }

            goto LABEL_92;
          }

          if (v8 != 8)
          {
            goto LABEL_85;
          }

          v5 |= 2u;
          v27 = (v7 + 1);
          v26 = *v7;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_52;
          }

          v28 = *v27;
          v26 = (v28 << 7) + v26 - 128;
          if ((v28 & 0x80000000) == 0)
          {
            v27 = (v7 + 2);
LABEL_52:
            v66 = v27;
            *(a1 + 28) = v26 != 0;
            goto LABEL_92;
          }

          v48 = google::protobuf::internal::VarintParseSlow64(v7, v26);
          v66 = v48;
          *(a1 + 28) = v49 != 0;
          if (!v48)
          {
            goto LABEL_119;
          }
        }

        else if (v10 == 3)
        {
          if (v8 != 24)
          {
            goto LABEL_85;
          }

          v5 |= 4u;
          v39 = (v7 + 1);
          v38 = *v7;
          if ((v38 & 0x8000000000000000) == 0)
          {
            goto LABEL_72;
          }

          v40 = *v39;
          v38 = (v40 << 7) + v38 - 128;
          if ((v40 & 0x80000000) == 0)
          {
            v39 = (v7 + 2);
LABEL_72:
            v66 = v39;
            *(a1 + 29) = v38 != 0;
            goto LABEL_92;
          }

          v58 = google::protobuf::internal::VarintParseSlow64(v7, v38);
          v66 = v58;
          *(a1 + 29) = v59 != 0;
          if (!v58)
          {
            goto LABEL_119;
          }
        }

        else if (v10 == 5)
        {
          if (v8 != 40)
          {
            goto LABEL_85;
          }

          v5 |= 8u;
          v30 = (v7 + 1);
          v29 = *v7;
          if ((v29 & 0x8000000000000000) == 0)
          {
            goto LABEL_57;
          }

          v31 = *v30;
          v29 = (v31 << 7) + v29 - 128;
          if ((v31 & 0x80000000) == 0)
          {
            v30 = (v7 + 2);
LABEL_57:
            v66 = v30;
            *(a1 + 30) = v29 != 0;
            goto LABEL_92;
          }

          v50 = google::protobuf::internal::VarintParseSlow64(v7, v29);
          v66 = v50;
          *(a1 + 30) = v51 != 0;
          if (!v50)
          {
            goto LABEL_119;
          }
        }

        else
        {
          if (v10 != 6 || v8 != 48)
          {
            goto LABEL_85;
          }

          v5 |= 0x400u;
          v15 = (v7 + 1);
          v14 = *v7;
          if ((v14 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          v16 = *v15;
          v14 = (v16 << 7) + v14 - 128;
          if ((v16 & 0x80000000) == 0)
          {
            v15 = (v7 + 2);
LABEL_25:
            v66 = v15;
            *(a1 + 40) = v14 != 0;
            goto LABEL_92;
          }

          v56 = google::protobuf::internal::VarintParseSlow64(v7, v14);
          v66 = v56;
          *(a1 + 40) = v57 != 0;
          if (!v56)
          {
            goto LABEL_119;
          }
        }
      }

      else if (v8 >> 3 > 9)
      {
        if (v10 == 10)
        {
          if (v8 != 80)
          {
            goto LABEL_85;
          }

          v5 |= 0x80u;
          v45 = (v7 + 1);
          v44 = *v7;
          if ((v44 & 0x8000000000000000) == 0)
          {
            goto LABEL_84;
          }

          v46 = *v45;
          v44 = (v46 << 7) + v44 - 128;
          if ((v46 & 0x80000000) == 0)
          {
            v45 = (v7 + 2);
LABEL_84:
            v66 = v45;
            *(a1 + 37) = v44 != 0;
            goto LABEL_92;
          }

          v64 = google::protobuf::internal::VarintParseSlow64(v7, v44);
          v66 = v64;
          *(a1 + 37) = v65 != 0;
          if (!v64)
          {
            goto LABEL_119;
          }
        }

        else if (v10 == 11)
        {
          if (v8 != 88)
          {
            goto LABEL_85;
          }

          v5 |= 0x100u;
          v36 = (v7 + 1);
          v35 = *v7;
          if ((v35 & 0x8000000000000000) == 0)
          {
            goto LABEL_67;
          }

          v37 = *v36;
          v35 = (v37 << 7) + v35 - 128;
          if ((v37 & 0x80000000) == 0)
          {
            v36 = (v7 + 2);
LABEL_67:
            v66 = v36;
            *(a1 + 38) = v35 != 0;
            goto LABEL_92;
          }

          v54 = google::protobuf::internal::VarintParseSlow64(v7, v35);
          v66 = v54;
          *(a1 + 38) = v55 != 0;
          if (!v54)
          {
            goto LABEL_119;
          }
        }

        else
        {
          if (v10 != 12 || v8 != 96)
          {
            goto LABEL_85;
          }

          v5 |= 0x200u;
          v18 = (v7 + 1);
          v17 = *v7;
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_33;
          }

          v19 = *v18;
          v17 = (v19 << 7) + v17 - 128;
          if ((v19 & 0x80000000) == 0)
          {
            v18 = (v7 + 2);
LABEL_33:
            v66 = v18;
            *(a1 + 39) = v17 != 0;
            goto LABEL_92;
          }

          v62 = google::protobuf::internal::VarintParseSlow64(v7, v17);
          v66 = v62;
          *(a1 + 39) = v63 != 0;
          if (!v62)
          {
            goto LABEL_119;
          }
        }
      }

      else
      {
        if (v10 == 7)
        {
          if (v8 == 56)
          {
            v42 = (v7 + 1);
            v41 = *v7;
            if ((v41 & 0x8000000000000000) == 0)
            {
              goto LABEL_77;
            }

            v43 = *v42;
            v41 = (v43 << 7) + v41 - 128;
            if (v43 < 0)
            {
              v66 = google::protobuf::internal::VarintParseSlow64(v7, v41);
              if (!v66)
              {
                goto LABEL_119;
              }
            }

            else
            {
              v42 = (v7 + 2);
LABEL_77:
              v66 = v42;
            }

            if (v41 > 2)
            {
              sub_275E5F730();
            }

            else
            {
              *(a1 + 16) |= 0x20u;
              *(a1 + 32) = v41;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v10 == 8)
        {
          if (v8 != 64)
          {
            goto LABEL_85;
          }

          v5 |= 0x10u;
          v33 = (v7 + 1);
          v32 = *v7;
          if ((v32 & 0x8000000000000000) == 0)
          {
            goto LABEL_62;
          }

          v34 = *v33;
          v32 = (v34 << 7) + v32 - 128;
          if ((v34 & 0x80000000) == 0)
          {
            v33 = (v7 + 2);
LABEL_62:
            v66 = v33;
            *(a1 + 31) = v32 != 0;
            goto LABEL_92;
          }

          v52 = google::protobuf::internal::VarintParseSlow64(v7, v32);
          v66 = v52;
          *(a1 + 31) = v53 != 0;
          if (!v52)
          {
            goto LABEL_119;
          }
        }

        else
        {
          if (v10 != 9 || v8 != 72)
          {
            goto LABEL_85;
          }

          v5 |= 0x40u;
          v12 = (v7 + 1);
          v11 = *v7;
          if ((v11 & 0x8000000000000000) == 0)
          {
            goto LABEL_16;
          }

          v13 = *v12;
          v11 = (v13 << 7) + v11 - 128;
          if ((v13 & 0x80000000) == 0)
          {
            v12 = (v7 + 2);
LABEL_16:
            v66 = v12;
            *(a1 + 36) = v11 != 0;
            goto LABEL_92;
          }

          v60 = google::protobuf::internal::VarintParseSlow64(v7, v11);
          v66 = v60;
          *(a1 + 36) = v61 != 0;
          if (!v60)
          {
            goto LABEL_119;
          }
        }
      }

LABEL_92:
      if (sub_275E221E8(a3, &v66))
      {
        goto LABEL_2;
      }
    }

    v7 = (v66 + 2);
LABEL_6:
    v66 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v66;
}