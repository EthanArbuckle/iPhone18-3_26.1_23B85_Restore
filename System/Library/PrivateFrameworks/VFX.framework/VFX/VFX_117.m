void sub_1AFA15090(float a1, uint64_t a2, float32x2_t *a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v257 = *MEMORY[0x1E69E9840];
  v8 = *(a6 + 84) & a3[2].i32[1];
  if (v8)
  {
    v11 = a6;
    v12 = a7;
    v13 = (a7 & 0xFE00000000) != 0;
    if ((a7 & 0xFE00000000) != 0)
    {
      v12 = 0;
    }

    v197 = v12;
    v14 = a3[2].f32[0];
    v15 = *(a6 + 80);
    v16 = a3[1].f32[0];
    v17 = *(a6 + 72);
    __asm { FMOV            V7.2S, #1.0 }

    v22 = fminf(fmaxf(a3[1].f32[1] + *(a6 + 76), 0.0), 1.0);
    *&v204 = vminnm_f32(vmaxnm_f32(vadd_f32(*a3, *(a6 + 64)), 0), _D7);
    DWORD2(v204) = fminf(fmaxf(v16 + v17, 0.0), 1.0);
    *(&v204 + 3) = 1.0 - v22;
    v205 = v14 + v15;
    v206 = v8;
    v23 = *a4;
    v24 = a4[1];
    v25 = a4[2];
    v26 = a4[3];
    v27 = a5[1];
    v28 = a5[2];
    v29 = a5[3];
    v30 = a3[3];
    v255[0] = *a5;
    v255[1] = v27;
    v255[2] = v28;
    v255[3] = v29;
    v256 = 0;
    if (_ZF)
    {
      v13 = 1;
    }

    v196 = v13;
    sub_1AFA17308(v255, v201, v23, v24, v25, v26, *(a6 + 96), *(a6 + 112), *(a6 + 128), *(a6 + 144));
    sub_1AF8E60EC(v30, 1, v215);
    v186 = v11;
    if (v218)
    {
      v234 = v215[0];
      v235 = v215[1];
      v236 = v216;
      v237 = v217;
      v238 = v218;
      v242 = v216;
      v243 = v217;
      v31 = sub_1AF8FE1C4(&v242);
      if (v31 != 7)
      {
        if (v31 != 2)
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v151 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v152 = v151;
            swift_once();
            v151 = v152;
          }

          *&v242 = 0;
          sub_1AF0D4F18(v151, &v242, 0xD000000000000041, 0x80000001AFF43C80);
          goto LABEL_145;
        }

        sub_1AF44222C(&v234, &v242);
        sub_1AF478700(&v234, 1, 1, &v219);
        if (*(&v221 + 1) == 1)
        {
          goto LABEL_145;
        }

        *v210 = v219;
        *&v210[16] = v220;
        *&v210[32] = v221;
        *&v211 = v222;
        if ((*(v11 + 80) & 0x7FFFFFFF) != 0 && vabds_f32(v202, v203) > 0.0001)
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v32 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v153 = v32;
            swift_once();
            v32 = v153;
          }

          *&v242 = 0;
          sub_1AF0D4F18(v32, &v242, 0xD000000000000049, 0x80000001AFF43CD0);
        }

        v33 = *(v11 + 40);
        v239 = *(v11 + 24);
        v240 = v33;
        v241 = *(v11 + 56);
        sub_1AF6B06C0(a8, &v239, 0x200000000, &v226);
        if (!v226)
        {
LABEL_145:
          sub_1AF0D9DB0(v215, &unk_1ED725420);
          return;
        }

        v166 = v233;
        if (v233 > 0)
        {
          v163 = v230;
          if (v230)
          {
            v34 = 0;
            v160 = v229;
            v157 = v231;
            v193 = *(v231 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
            v190 = *(v232 + 32);
            v207 = v226;
            v208 = v227;
            v209 = v228;
            v198 = v232;
            while (1)
            {
              v35 = (v160 + 48 * v34);
              v36 = *v35;
              v37 = v35[1];
              v38 = v35[2];
              v39 = *(v35 + 3);
              v169 = *(v35 + 2);
              v40 = *(v35 + 5);
              v172 = *(v35 + 4);
              if (v193)
              {
                v41 = *(v40 + 376);

                os_unfair_lock_lock(v41);
                os_unfair_lock_lock(*(v40 + 344));
              }

              else
              {
              }

              ecs_stack_allocator_push_snapshot(v190);
              v42 = v198;
              v180 = *(v198 + 64);
              v183 = *(v198 + 48);
              v177 = *(v198 + 80);
              v43 = *(*(*(*(v40 + 40) + 16) + 32) + 16) + 1;
              *(v198 + 48) = ecs_stack_allocator_allocate(*(v198 + 32), 48 * v43, 8);
              *(v198 + 56) = v43;
              *(v198 + 72) = 0;
              *(v198 + 80) = 0;
              *(v198 + 64) = 0;
              *&v242 = v157;
              v187 = v40;
              *(&v242 + 1) = v40;
              v243 = v198;
              v244 = v38;
              v245 = (v37 - v36 + v38);
              v246 = v166;
              v247 = v36;
              v248 = v37;
              v249 = 0;
              v250 = 0;
              v251 = 1;
              v252 = v169;
              v253 = v39;
              v254 = v172;
              sub_1AFA175A4(&v242, &v204, v201, v11, v197 | (v196 << 32), v210, a1);
              v44 = *(v198 + 48);
              v45 = *(v198 + 64);
              if (!v45)
              {
                v67 = *(v198 + 56);
                v68 = *(v198 + 32);
                goto LABEL_56;
              }

              v173 = v34;
              for (i = 0; i != v45; ++i)
              {
                v48 = (v44 + 48 * i);
                v49 = *v48;
                v50 = v48[4];
                v51 = *(v42 + 72);
                if (v51)
                {
                  _ZF = v49 == v51;
                }

                else
                {
                  _ZF = 0;
                }

                if (_ZF)
                {
                  goto LABEL_28;
                }

                v53 = v207;
                if (!v207[11])
                {
                  goto LABEL_28;
                }

                v54 = v48[2];
                v55 = v207 + 41;
                v56 = v207[9];
                if (v56 >= 0x10)
                {
                  v57 = &v55[v207[8]];
                  v58 = v56 >> 4;
                  v59 = v207 + 41;
                  while (*v57 != v49)
                  {
                    ++v59;
                    v57 += 16;
                    if (!--v58)
                    {
                      goto LABEL_44;
                    }
                  }

                  v60 = v59[v207[10]];
                  v61 = v60 > 5;
                  v62 = (1 << v60) & 0x23;
                  if (v61 || v62 == 0)
                  {
LABEL_28:

                    v50(v47);

                    goto LABEL_29;
                  }
                }

LABEL_44:
                if (swift_conformsToProtocol2() && v54)
                {
                  if (sub_1AF5FC8D8(v54))
                  {
                    goto LABEL_28;
                  }

                  v64 = v53[9];
                  if (v64 < 0x10)
                  {
                    goto LABEL_28;
                  }

                  v65 = &v55[v53[8]];
                  v66 = 16 * (v64 >> 4);
                  while (*v65 != v54)
                  {
                    v65 += 16;
                    v66 -= 16;
                    if (!v66)
                    {
                      goto LABEL_28;
                    }
                  }
                }

LABEL_29:
                v42 = v198;
              }

              v67 = *(v198 + 56);
              v44 = *(v198 + 48);
              v68 = *(v198 + 32);
              if (*(v198 + 64) >= 1)
              {
                swift_arrayDestroy();
              }

              v11 = v186;
              v34 = v173;
LABEL_56:
              ecs_stack_allocator_deallocate(v68, v44, 48 * v67);
              *(v42 + 48) = v183;
              *(v42 + 64) = v180;
              *(v42 + 80) = v177;
              sub_1AF62D29C(v187);
              ecs_stack_allocator_pop_snapshot(v190);
              if (v193)
              {
                os_unfair_lock_unlock(*(v187 + 344));
                os_unfair_lock_unlock(*(v187 + 376));
              }

              if (++v34 == v163)
              {
                goto LABEL_147;
              }
            }
          }

          goto LABEL_147;
        }

LABEL_151:
        sub_1AF0D9DB0(&v226, &qword_1ED725EA0);
        goto LABEL_145;
      }

      sub_1AF44222C(&v234, &v242);
      sub_1AF478ACC(&v234, 1, 1, &v219);
      if (v224 == 1)
      {
        goto LABEL_145;
      }

      *&v210[16] = v220;
      *&v210[32] = v221;
      v211 = v222;
      *v210 = v219;
      v212 = v223;
      v213 = v224;
      v214 = v225;
      v241 = *(v11 + 56);
      v116 = *(v11 + 40);
      v239 = *(v11 + 24);
      v240 = v116;
      sub_1AF6B06C0(a8, &v239, 0x200000000, &v226);
      if (!v226)
      {
        goto LABEL_145;
      }

      v168 = v233;
      if (v233 <= 0)
      {
        goto LABEL_151;
      }

      v165 = v230;
      if (!v230)
      {
LABEL_147:
        sub_1AF0D9DB0(v215, &unk_1ED725420);
        goto LABEL_148;
      }

      v117 = 0;
      v162 = v229;
      v159 = v231;
      v195 = *(v231 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v192 = *(v232 + 32);
      v207 = v226;
      v208 = v227;
      v209 = v228;
      v200 = v232;
LABEL_105:
      v118 = (v162 + 48 * v117);
      v119 = *v118;
      v120 = v118[1];
      v121 = v118[2];
      v123 = *(v118 + 4);
      v122 = *(v118 + 5);
      v175 = *(v118 + 2);
      v171 = *(v118 + 3);
      if (v195)
      {
        v124 = *(v122 + 376);

        os_unfair_lock_lock(v124);
        os_unfair_lock_lock(*(v122 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v192);
      v125 = v200;
      v182 = *(v200 + 64);
      v185 = *(v200 + 48);
      v179 = *(v200 + 80);
      v126 = *(*(*(*(v122 + 40) + 16) + 32) + 16) + 1;
      *(v200 + 48) = ecs_stack_allocator_allocate(*(v200 + 32), 48 * v126, 8);
      *(v200 + 56) = v126;
      *(v200 + 72) = 0;
      *(v200 + 80) = 0;
      *(v200 + 64) = 0;
      *&v242 = v159;
      v189 = v122;
      *(&v242 + 1) = v122;
      v243 = v200;
      v244 = v121;
      v245 = (v120 - v119 + v121);
      v246 = v168;
      v247 = v119;
      v248 = v120;
      v249 = 0;
      v250 = 0;
      v251 = 1;
      v252 = v175;
      v253 = v171;
      v254 = v123;
      sub_1AFA18144(&v242, &v204, v201, v11, v197 | (v196 << 32), v210, a1);
      v127 = *(v200 + 48);
      v128 = *(v200 + 64);
      if (!v128)
      {
        v149 = *(v200 + 56);
        v150 = *(v200 + 32);
        goto LABEL_138;
      }

      v176 = v117;
      v129 = 0;
      while (1)
      {
        v131 = (v127 + 48 * v129);
        v132 = *v131;
        v133 = v131[4];
        v134 = *(v125 + 72);
        if (v134)
        {
          v135 = v132 == v134;
        }

        else
        {
          v135 = 0;
        }

        if (!v135)
        {
          v136 = v207;
          if (v207[11])
          {
            v137 = v131[2];
            v138 = v207 + 41;
            v139 = v207[9];
            if (v139 < 0x10)
            {
              goto LABEL_126;
            }

            v140 = &v138[v207[8]];
            v141 = v139 >> 4;
            v142 = v207 + 41;
            while (*v140 != v132)
            {
              ++v142;
              v140 += 16;
              if (!--v141)
              {
                goto LABEL_126;
              }
            }

            v143 = v142[v207[10]];
            v61 = v143 > 5;
            v144 = (1 << v143) & 0x23;
            if (!v61 && v144 != 0)
            {
LABEL_126:
              if (!swift_conformsToProtocol2() || !v137)
              {
                goto LABEL_111;
              }

              if ((sub_1AF5FC8D8(v137) & 1) == 0)
              {
                v146 = v136[9];
                if (v146 >= 0x10)
                {
                  v147 = &v138[v136[8]];
                  v148 = 16 * (v146 >> 4);
                  while (*v147 != v137)
                  {
                    v147 += 16;
                    v148 -= 16;
                    if (!v148)
                    {
                      goto LABEL_110;
                    }
                  }

                  goto LABEL_111;
                }
              }
            }
          }
        }

LABEL_110:

        v133(v130);

LABEL_111:
        ++v129;
        v125 = v200;
        if (v129 == v128)
        {
          v149 = *(v200 + 56);
          v127 = *(v200 + 48);
          v150 = *(v200 + 32);
          if (*(v200 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v11 = v186;
          v117 = v176;
LABEL_138:
          ecs_stack_allocator_deallocate(v150, v127, 48 * v149);
          *(v125 + 48) = v185;
          *(v125 + 64) = v182;
          *(v125 + 80) = v179;
          sub_1AF62D29C(v189);
          ecs_stack_allocator_pop_snapshot(v192);
          if (v195)
          {
            os_unfair_lock_unlock(*(v189 + 344));
            os_unfair_lock_unlock(*(v189 + 376));
          }

          if (++v117 == v165)
          {
            goto LABEL_147;
          }

          goto LABEL_105;
        }
      }
    }

    sub_1AF3CD3CC(v30, &v234);
    v69 = *(&v235 + 1);
    if (*(&v235 + 1) != 1)
    {
      v70 = v235;
      v71 = DWORD2(v234);
      v72 = v234;
      *&v239 = v236;
      swift_unknownObjectRetain();
      v73 = sub_1AF5F8458(v72, v71, v70, v69);
      v167 = v75;
      v170 = v74;
      v164 = v76;
      v161 = v73;
      v77 = *(v11 + 40);
      v219 = *(v11 + 24);
      v220 = v77;
      *&v221 = *(v11 + 56);
      sub_1AF6B06C0(a8, &v219, 0x200000000, &v226);
      if (v226)
      {
        v158 = v233;
        if (v233 <= 0 || (v156 = v230) == 0)
        {
LABEL_146:
          swift_unknownObjectRelease();
          sub_1AFA174F0(&v239);
LABEL_148:
          sub_1AF0D9DB0(&v226, &qword_1ED725EA0);
          return;
        }

        v78 = 0;
        v155 = v229;
        v154 = v231;
        v191 = *(v231 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v188 = *(v232 + 32);
        *v210 = v226;
        *&v210[8] = v227;
        *&v210[24] = v228;
        v199 = v232;
LABEL_64:
        v184 = v78;
        v79 = (v155 + 48 * v78);
        v80 = *v79;
        v81 = v79[1];
        v82 = v79[2];
        v84 = *(v79 + 2);
        v83 = *(v79 + 3);
        v85 = *(v79 + 4);
        v86 = *(v79 + 5);
        if (v191)
        {
          v87 = *(v86 + 376);

          os_unfair_lock_lock(v87);
          os_unfair_lock_lock(*(v86 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v188);
        v88 = v199;
        v178 = *(v199 + 64);
        v181 = *(v199 + 48);
        v174 = *(v199 + 80);
        v194 = v86;
        v89 = *(*(*(*(v86 + 40) + 16) + 32) + 16) + 1;
        *(v199 + 48) = ecs_stack_allocator_allocate(*(v199 + 32), 48 * v89, 8);
        *(v199 + 56) = v89;
        v90 = v194;
        *(v199 + 72) = 0;
        *(v199 + 80) = 0;
        *(v199 + 64) = 0;
        *&v242 = v154;
        *(&v242 + 1) = v194;
        v243 = v199;
        v244 = v82;
        v245 = (v81 - v80 + v82);
        v246 = v158;
        v247 = v80;
        v248 = v81;
        v249 = 0;
        v250 = 0;
        v251 = 1;
        v252 = v84;
        v253 = v83;
        LOBYTE(v207) = v196;
        v254 = v85;
        sub_1AFA18A80(&v242, &v204, v201, v11, v197 | (v196 << 32), v161, a1, v170, v167, v164);
        v91 = *(v199 + 48);
        v92 = *(v199 + 64);
        if (!v92)
        {
          v113 = *(v199 + 56);
          v114 = *(v199 + 32);
          v115 = v184;
          goto LABEL_97;
        }

        v93 = 0;
        while (1)
        {
          v95 = (v91 + 48 * v93);
          v96 = *v95;
          v97 = v95[4];
          v98 = *(v88 + 72);
          if (v98)
          {
            v99 = v96 == v98;
          }

          else
          {
            v99 = 0;
          }

          if (!v99)
          {
            v100 = *v210;
            if (*(*v210 + 22))
            {
              v101 = v95[2];
              v102 = *v210 + 41;
              v103 = *(*v210 + 18);
              if (v103 < 0x10)
              {
                goto LABEL_85;
              }

              v104 = (v102 + *(*v210 + 16));
              v105 = v103 >> 4;
              v106 = *v210 + 41;
              while (*v104 != v96)
              {
                ++v106;
                v104 += 2;
                if (!--v105)
                {
                  goto LABEL_85;
                }
              }

              v107 = *(v106 + *(*v210 + 20));
              v61 = v107 > 5;
              v108 = (1 << v107) & 0x23;
              if (!v61 && v108 != 0)
              {
LABEL_85:
                if (!swift_conformsToProtocol2() || !v101)
                {
                  goto LABEL_70;
                }

                if ((sub_1AF5FC8D8(v101) & 1) == 0)
                {
                  v110 = *(v100 + 18);
                  if (v110 >= 0x10)
                  {
                    v111 = (v102 + *(v100 + 16));
                    v112 = 16 * (v110 >> 4);
                    while (*v111 != v101)
                    {
                      v111 += 2;
                      v112 -= 16;
                      if (!v112)
                      {
                        goto LABEL_69;
                      }
                    }

                    goto LABEL_70;
                  }
                }
              }
            }
          }

LABEL_69:

          v97(v94);

LABEL_70:
          ++v93;
          v88 = v199;
          if (v93 == v92)
          {
            v113 = *(v199 + 56);
            v91 = *(v199 + 48);
            v114 = *(v199 + 32);
            if (*(v199 + 64) >= 1)
            {
              swift_arrayDestroy();
            }

            v11 = v186;
            v115 = v184;
            v90 = v194;
LABEL_97:
            ecs_stack_allocator_deallocate(v114, v91, 48 * v113);
            *(v88 + 48) = v181;
            *(v88 + 64) = v178;
            *(v88 + 80) = v174;
            sub_1AF62D29C(v90);
            ecs_stack_allocator_pop_snapshot(v188);
            if (v191)
            {
              os_unfair_lock_unlock(*(v90 + 344));
              os_unfair_lock_unlock(*(v90 + 376));
            }

            v78 = v115 + 1;
            if (v78 == v156)
            {
              goto LABEL_146;
            }

            goto LABEL_64;
          }
        }
      }

      swift_unknownObjectRelease();
      sub_1AFA174F0(&v239);
    }
  }
}

uint64_t sub_1AFA160B4(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  v5 = sub_1AFA09D74(a1, v11);
  if (v11[28])
  {
    v6 = v11[11];
    MEMORY[0x1EEE9AC00](v5, v11[7]);
    v10[2] = v11;
    sub_1AF63291C(0, v7, 1, a2 | ((HIDWORD(a2) & 1) << 32), v8, a3, v10, v6);
    ecs_stack_allocator_deallocate(*(v6 + 32), v11[26], 80 * v11[27]);
  }

  sub_1AFA1C110(v11);
  return sub_1AFA09D20(v11);
}

void sub_1AFA1618C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v44 = a6;
  v45 = a7;
  v42 = a4;
  v43 = a5;
  if (qword_1EB637248 != -1)
  {
    swift_once();
  }

  v65[0] = xmmword_1EB6C3550;
  v65[1] = unk_1EB6C3560;
  v66 = qword_1EB6C3570;
  if (*(a3 + 52))
  {
    v11 = 0x200000000;
  }

  else
  {
    v11 = *(a3 + 48);
  }

  sub_1AF6B06C0(a2, v65, v11, v47);
  if (*&v47[0])
  {
    v39 = *&v47[0];
    v14 = *(&v47[2] + 1);
    v15 = *(&v48 + 1);
    v16 = *(&v49 + 1);
    v40 = v49;
    v52 = *(v47 + 8);
    v53 = *(&v47[1] + 8);
    MEMORY[0x1EEE9AC00](v12, v13);
    v37 = v30;
    v38 = v17;
    v30[2] = a3;
    v30[3] = a1;
    v31 = v42;
    v32 = v43;
    v33 = v44;
    v34 = v45;
    v35 = v7;
    if (v17 > 0 && v15)
    {
      v36 = &v36;
      v18 = v16[4];
      v45.n128_u32[0] = *(v40 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v46[2] = v47[2];
      v46[3] = v48;
      v46[4] = v49;
      v46[5] = v50;
      v46[0] = v47[0];
      v46[1] = v47[1];
      sub_1AF5DD298(v46, v60);
      for (i = (v14 + 24); ; i += 6)
      {
        v44.n128_u64[0] = 0;
        v20 = *(i - 6);
        v21 = *(i - 5);
        v22 = *(i - 4);
        v23 = *i;
        v43.n128_u64[0] = *(i - 1);
        v24 = i[2];
        v41 = i[1];
        v42.n128_u64[0] = v23;
        if (v45.n128_u32[0])
        {
          v25 = v16;
          v26 = *(v24 + 376);

          v27 = v26;
          v16 = v25;
          os_unfair_lock_lock(v27);
          os_unfair_lock_lock(*(v24 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v18);

        sub_1AF630914(v28, v16, v51);

        LOBYTE(v54) = 1;
        v60[0] = v40;
        v60[1] = v24;
        v60[2] = v16;
        v60[3] = v22;
        v60[4] = (v21 - v20 + v22);
        v60[5] = v38;
        v60[6] = v20;
        v60[7] = v21;
        v60[8] = 0;
        v60[9] = 0;
        v61 = 1;
        v62 = v43.n128_u64[0];
        v63 = v42.n128_u64[0];
        v64 = v41;
        v29 = v44.n128_u64[0];
        sub_1AFA16F54(v60, sub_1AFA192B0, v37);
        if (v29)
        {
          break;
        }

        v57 = v39;
        v58 = v52;
        v59 = v53;
        sub_1AF630994(v16, &v57, v51);
        sub_1AF62D29C(v24);
        ecs_stack_allocator_pop_snapshot(v18);
        if (v45.n128_u32[0])
        {
          os_unfair_lock_unlock(*(v24 + 344));
          os_unfair_lock_unlock(*(v24 + 376));
        }

        if (!--v15)
        {
          sub_1AF0D9DB0(v47, &qword_1ED725EA0);
          sub_1AF0D9DB0(v47, &qword_1ED725EA0);
          return;
        }
      }

      v54 = v39;
      v55 = v52;
      v56 = v53;
      sub_1AF630994(v16, &v54, v51);
      sub_1AF62D29C(v24);
      ecs_stack_allocator_pop_snapshot(v18);
      os_unfair_lock_unlock(*(v24 + 344));
      os_unfair_lock_unlock(*(v24 + 376));
      __break(1u);
    }

    else
    {
      sub_1AF0D9DB0(v47, &qword_1ED725EA0);
    }
  }
}

void *sub_1AFA1655C(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, uint64_t a5, uint64_t a6, float32x4_t *a7, float32x4_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v68 = a11;
  v50 = a3;
  v51 = a4;
  v48 = a1;
  v49 = a2;
  result = sub_1AF8D93C8(*(a6 + 24), v65, *(a9 + 136), *(a9 + 144));
  if (result)
  {
    v18 = result;
    if ((*(a10 + 20) & *(a6 + 20)) != 0)
    {
      v19 = 1.0 - fminf(fmaxf(*(a6 + 12) + *(a10 + 12), 0.0), 1.0);
      *&v20 = fminf(fmaxf(*(a6 + 8) + *(a10 + 8), 0.0), 1.0);
      v21 = fminf(fmaxf(*(a6 + 4) + *(a10 + 4), 0.0), 1.0);
      v22 = *a7;
      v23 = a7[1];
      v24 = a7[2];
      v25 = a7[3];
      v26 = *a8;
      v27 = a8[1];
      v28 = a8[2];
      v29 = a8[3];
      v64 = 0;
      v66[0] = v26;
      v66[1] = v27;
      v66[2] = v28;
      v66[3] = v29;
      v67 = 0;
      sub_1AFA17308(v66, v65, v22, v23, v24, v25, v48, v49, v50, v51);
      v30 = *(a10 + 16) * 0.5;
      sub_1AFB943A8();
      *&v52 = __PAIR64__(v20, v31);
      *(&v52 + 2) = v19;
      v53 = v65[0];
      v54 = v65[1];
      v55 = v65[2];
      v56 = v65[3];
      v57 = v65[4];
      v58 = v65[5];
      v59 = v65[6];
      v60 = v65[7];
      v61 = v65[12];
      v62 = v21;
      v63 = v30;
      v32 = *a9;
      v47[1] = v11;
      if (v32)
      {
        ObjectType = swift_getObjectType();
        type metadata accessor for particle_sdf_collider_uniforms(0);
        sub_1AF6F4524(&v52, 1, ObjectType, v34, v35, v36, v37, v38);
        [v32 setTexture:v18 atIndex:0];
      }

      v39 = *(a9 + 24);
      v52 = *(a9 + 8);
      v53 = v39;
      v40 = *(a9 + 56);
      v54 = *(a9 + 40);
      v55 = v40;
      v41 = *(a9 + 120);
      v58 = *(a9 + 104);
      v59 = v41;
      v42 = *(a9 + 88);
      v56 = *(a9 + 72);
      v57 = v42;
      v43 = v54;
      v44 = *(v52 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

      v50.i64[0] = v44;

      v51.i64[0] = v47;
      MEMORY[0x1EEE9AC00](v45, v46);
      sub_1AFCBF008(v43, sub_1AF9D17D4);
      swift_unknownObjectRelease();
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1AFA1683C(uint64_t *a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v26[6] = a3;
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  v9 = sub_1AF64B110(&type metadata for ParticleSphereCollider, &off_1F2553488, v5, v4, v6, v8);
  v10 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v5, v4, v6, v8);
  result = sub_1AF64B110(&type metadata for LastFrameWorldTransform, &off_1F2529EB0, v5, v4, v6, v8);
  v12 = result;
  if (v5)
  {
    if (v6)
    {
      v13 = a1[3];
      v14 = *a1;
      do
      {
        v15 = *v5++;
        v25[0] = v14;
        v25[1] = v7;
        v25[2] = v8;
        v25[3] = v13;
        v25[4] = v15;
        result = a2(v25, v9, v10, v12);
        if (v23)
        {
          break;
        }

        v12 += 64;
        v10 += 64;
        v9 += 28;
        ++v13;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v16 = a1[3];
    v17 = a1[6];
    v18 = v9 + 28 * v17;
    v19 = a1[7];
    v20 = v10 + (v17 << 6);
    v21 = result + (v17 << 6);
    do
    {
      if (v19 == v17)
      {
        break;
      }

      v22 = v17 + 1;
      v26[0] = *a1;
      v26[1] = v7;
      v26[2] = v8;
      v26[3] = v16;
      v26[4] = v17;
      result = a2(v26, v18, v20, v21);
      ++v16;
      v18 += 28;
      v20 += 64;
      v21 += 64;
      v17 = v22;
    }

    while (!v23);
  }

  return result;
}

uint64_t sub_1AFA16A04(uint64_t *a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v26[6] = a3;
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  v9 = sub_1AF64B110(&type metadata for ParticleBoxCollider, &off_1F2552898, v5, v4, v6, v8);
  v10 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v5, v4, v6, v8);
  result = sub_1AF64B110(&type metadata for LastFrameWorldTransform, &off_1F2529EB0, v5, v4, v6, v8);
  v12 = result;
  if (v5)
  {
    if (v6)
    {
      v13 = a1[3];
      v14 = *a1;
      do
      {
        v15 = *v5++;
        v25[0] = v14;
        v25[1] = v7;
        v25[2] = v8;
        v25[3] = v13;
        v25[4] = v15;
        result = a2(v25, v9, v10, v12);
        if (v23)
        {
          break;
        }

        v12 += 64;
        v10 += 64;
        v9 += 32;
        ++v13;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v16 = a1[3];
    v17 = a1[6];
    v18 = a1[7];
    v19 = v9 + 32 * v17;
    v20 = v10 + (v17 << 6);
    v21 = result + (v17 << 6);
    do
    {
      if (v18 == v17)
      {
        break;
      }

      v22 = v17 + 1;
      v26[0] = *a1;
      v26[1] = v7;
      v26[2] = v8;
      v26[3] = v16;
      v26[4] = v17;
      result = a2(v26, v19, v20, v21);
      ++v16;
      v19 += 32;
      v20 += 64;
      v21 += 64;
      v17 = v22;
    }

    while (!v23);
  }

  return result;
}

uint64_t sub_1AFA16BC4(uint64_t *a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v26[6] = a3;
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  v9 = sub_1AF64B110(&type metadata for ParticleCylinderCollider, &off_1F2552A70, v5, v4, v6, v8);
  v10 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v5, v4, v6, v8);
  result = sub_1AF64B110(&type metadata for LastFrameWorldTransform, &off_1F2529EB0, v5, v4, v6, v8);
  v12 = result;
  if (v5)
  {
    if (v6)
    {
      v13 = a1[3];
      v14 = *a1;
      do
      {
        v15 = *v5++;
        v25[0] = v14;
        v25[1] = v7;
        v25[2] = v8;
        v25[3] = v13;
        v25[4] = v15;
        result = a2(v25, v9, v10, v12);
        if (v23)
        {
          break;
        }

        v12 += 64;
        v10 += 64;
        v9 += 24;
        ++v13;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v16 = a1[3];
    v17 = a1[6];
    v18 = v9 + 24 * v17;
    v19 = a1[7];
    v20 = v10 + (v17 << 6);
    v21 = result + (v17 << 6);
    do
    {
      if (v19 == v17)
      {
        break;
      }

      v22 = v17 + 1;
      v26[0] = *a1;
      v26[1] = v7;
      v26[2] = v8;
      v26[3] = v16;
      v26[4] = v17;
      result = a2(v26, v18, v20, v21);
      ++v16;
      v18 += 24;
      v20 += 64;
      v21 += 64;
      v17 = v22;
    }

    while (!v23);
  }

  return result;
}

uint64_t sub_1AFA16D8C(uint64_t *a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v26[6] = a3;
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  v9 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v5, v4, v6, v8);
  v10 = sub_1AF64B110(&type metadata for EmitterRuntime, &off_1F2563418, v5, v4, v6, v8);
  result = sub_1AF64B110(&type metadata for WorldAABB, &off_1F2510410, v5, v4, v6, v8);
  v12 = result;
  if (v5)
  {
    if (v6)
    {
      v13 = a1[3];
      v14 = *a1;
      do
      {
        v15 = *v5++;
        v25[0] = v14;
        v25[1] = v7;
        v25[2] = v8;
        v25[3] = v13;
        v25[4] = v15;
        result = a2(v25, v9, v10, v12);
        if (v23)
        {
          break;
        }

        v12 += 32;
        v10 += 848;
        v9 += 104;
        ++v13;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v16 = a1[3];
    v17 = a1[6];
    v18 = v9 + 104 * v17;
    v19 = a1[7];
    v20 = v10 + 848 * v17;
    v21 = result + 32 * v17;
    do
    {
      if (v19 == v17)
      {
        break;
      }

      v22 = v17 + 1;
      v26[0] = *a1;
      v26[1] = v7;
      v26[2] = v8;
      v26[3] = v16;
      v26[4] = v17;
      result = a2(v26, v18, v20, v21);
      ++v16;
      v18 += 104;
      v20 += 848;
      v21 += 32;
      v17 = v22;
    }

    while (!v23);
  }

  return result;
}

uint64_t sub_1AFA16F54(uint64_t *a1, uint64_t (*a2)(void *, uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v26[6] = a3;
  v5 = a1[11];
  v4 = a1[12];
  v6 = a1[13];
  v7 = a1[1];
  v8 = a1[2];
  v9 = sub_1AF64B110(&type metadata for ParticleSDFCollider, &off_1F25532A8, v5, v4, v6, v8);
  v10 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v5, v4, v6, v8);
  result = sub_1AF64B110(&type metadata for LastFrameWorldTransform, &off_1F2529EB0, v5, v4, v6, v8);
  v12 = result;
  if (v5)
  {
    if (v6)
    {
      v13 = a1[3];
      v14 = *a1;
      do
      {
        v15 = *v5++;
        v25[0] = v14;
        v25[1] = v7;
        v25[2] = v8;
        v25[3] = v13;
        v25[4] = v15;
        result = a2(v25, v9, v10, v12);
        if (v23)
        {
          break;
        }

        v12 += 64;
        v10 += 64;
        v9 += 32;
        ++v13;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v16 = a1[3];
    v17 = a1[6];
    v18 = a1[7];
    v19 = v9 + 32 * v17;
    v20 = v10 + (v17 << 6);
    v21 = result + (v17 << 6);
    do
    {
      if (v18 == v17)
      {
        break;
      }

      v22 = v17 + 1;
      v26[0] = *a1;
      v26[1] = v7;
      v26[2] = v8;
      v26[3] = v16;
      v26[4] = v17;
      result = a2(v26, v19, v20, v21);
      ++v16;
      v19 += 32;
      v20 += 64;
      v21 += 64;
      v17 = v22;
    }

    while (!v23);
  }

  return result;
}

uint64_t sub_1AFA17114@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  sub_1AFA087DC(0, &qword_1EB641FA0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13[-v9];
  v14 = xmmword_1AFE916A0;
  *&v15 = 0xFF00000000;
  sub_1AFA09EFC(a1, 0);
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v13[15] = 9;
  sub_1AF47FEB4();
  sub_1AFDFE768();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  result = (*(v7 + 8))(v10, v6);
  *(&v15 + 1) = v16;
  v12 = v15;
  *a2 = v14;
  a2[1] = v12;
  return result;
}

__n128 sub_1AFA17308@<Q0>(float32x4_t *a1@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>, float32x4_t a4@<Q1>, float32x4_t a5@<Q2>, float32x4_t a6@<Q3>, float32x4_t a7@<Q4>, float32x4_t a8@<Q5>, float32x4_t a9@<Q6>, float32x4_t a10@<Q7>)
{
  if (a1[4].i8[0])
  {
    v11 = a3;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v13 = a1[2];
    v14 = a1[3];
    v11 = *a1;
    v12 = a1[1];
  }

  v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, a3.f32[0]), a8, *a3.f32, 1), a9, a3, 2), a10, a3, 3);
  v16 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, a4.f32[0]), a8, *a4.f32, 1), a9, a4, 2), a10, a4, 3);
  v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, a5.f32[0]), a8, *a5.f32, 1), a9, a5, 2), a10, a5, 3);
  v35 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, a6.f32[0]), a8, *a6.f32, 1), a9, a6, 2), a10, a6, 3);
  v18 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, v14.f32[0]), a8, *v14.f32, 1), a9, v14, 2), a10, v14, 3), vmlaq_f32(vmlaq_f32(vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, v11.f32[0]), a8, *v11.f32, 1), a9, v11, 2), a10, v11, 3), 0), 0, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, v12.f32[0]), a8, *v12.f32, 1), a9, v12, 2), a10, v12, 3)), 0, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a7, v13.f32[0]), a8, *v13.f32, 1), a9, v13, 2), a10, v13, 3)));
  v19 = vmulq_f32(v15, v15);
  v20 = vmulq_f32(v16, v16);
  v21.n128_u64[0] = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v20, v20, 8uLL)), vadd_f32(vzip1_s32(*v19.i8, *v20.i8), vzip2_s32(*v19.i8, *v20.i8))));
  v22 = vmulq_f32(v17, v17);
  v21.n128_u64[1] = COERCE_UNSIGNED_INT(sqrtf(*&v22.i32[2] + vaddv_f32(*v22.i8)));
  v42 = v21;
  v43 = vsubq_f32(vaddq_f32(v35, vmlaq_f32(vmlaq_f32(vmulq_f32(v15, 0), 0, v16), 0, v17)), v18);
  v23 = vzip2q_s32(v19, v22);
  v24 = vzip1q_s32(vzip1q_s32(v19, v22), v20);
  v25 = vtrn2q_s32(v19, v20);
  v25.i32[2] = v22.i32[1];
  v26 = vaddq_f32(vzip1q_s32(v23, vdupq_laneq_s32(v20, 2)), vaddq_f32(v24, v25));
  __asm { FMOV            V1.4S, #1.0 }

  v32 = vceqzq_f32(v26);
  v32.i32[3] = 0;
  v33 = vbslq_s8(vcltzq_s32(v32), v26, vdivq_f32(_Q1, v26));
  v38 = v15;
  v41 = vmulq_n_f32(v15, v33.f32[0]);
  v44.columns[1] = v16;
  v36 = v17;
  v37 = v16;
  v44.columns[2] = v17;
  v39 = vmulq_laneq_f32(v17, v33, 2);
  v40 = vmulq_lane_f32(v16, *v33.f32, 1);
  v44.columns[0] = v15;
  v44.columns[3] = v35;
  *a2 = __invert_f4(v44);
  *(a2 + 64) = v38;
  *(a2 + 80) = v37;
  *(a2 + 96) = v36;
  *(a2 + 112) = v35;
  *(a2 + 128) = v41;
  *(a2 + 144) = v40;
  *(a2 + 160) = v39;
  *(a2 + 176) = v35;
  result = v42;
  *(a2 + 192) = v43;
  *(a2 + 208) = v42;
  return result;
}

uint64_t sub_1AFA174F0(uint64_t a1)
{
  sub_1AFA1754C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AFA1754C()
{
  if (!qword_1EB632A70)
  {
    sub_1AF6B7338();
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB632A70);
    }
  }
}

uint64_t sub_1AFA175A4(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, float a7)
{
  v209 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 11);
  v11 = *(a1 + 12);
  v12 = *(a1 + 13);
  v14 = *(a1 + 1);
  v13 = *(a1 + 2);
  v154 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v10, v11, v12, v13);
  v160 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v10, v11, v12, v13);
  v144 = sub_1AF9C5D1C();
  v151 = v15;
  v153 = sub_1AF9C5D08();
  v178 = v16;
  v143 = sub_1AF9C5E38();
  v150 = v17;
  v185 = *a2;
  v18 = a1[3];
  v198 = a1[2];
  v19 = *a1;
  v197 = a1[1];
  v196 = v19;
  v20 = a1[5];
  v202 = a1[6];
  v21 = a1[4];
  v201 = v20;
  v187 = &type metadata for CollisionProperties;
  v188 = &off_1F2553AE0;
  v186 = *(a2 + 2);
  v200 = v21;
  v22 = *(a4 + 16);
  v149 = *(a3 + 192);
  v189 = v149;
  v199 = v18;
  v24 = *(a1 + 6);
  v23 = *(a1 + 7);
  v25 = v13[4];

  v26 = v153;
  v142 = ecs_stack_allocator_allocate(v25, 8 * (v23 - v24), 8);
  v203 = v142;
  v204 = v23 - v24;
  v205 = 0;
  sub_1AF441194(&v185, v190);
  v194 = a7;
  v193 = v22;
  v27 = v160;
  sub_1AF649C6C(*(v14 + 40), &type metadata for Anchored, v184);
  v148 = v184[0];
  v195 = v184[0];
  v28 = v13[4];
  v29 = v178;
  v30 = ecs_stack_allocator_allocate(v28, 80 * (v23 - v24), 16);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v185);
  v141 = v30;
  v206 = v30;
  v207 = v23 - v24;
  v208 = 0;
  v31 = v154;
  if (v23 != v24)
  {
    v139 = 0;
    v140 = 0;
    v33 = *(a4 + 80) * 0.5;
    v34 = *(a3 + 208);
    v181 = *(a3 + 16);
    v183 = *a3;
    v35 = *(a3 + 32);
    v180 = v35;
    v174 = *(a3 + 48);
    if ((DWORD1(v34) & 0x7FFFFF) != 0)
    {
      v35.i32[0] = *(a3 + 208);
    }

    else
    {
      v35.i32[0] = HIDWORD(*(a3 + 208));
    }

    if ((~DWORD1(v34) & 0x7F800000) != 0)
    {
      v35.i32[0] = HIDWORD(*(a3 + 208));
    }

    if (*(&v34 + 1) >= *&v34)
    {
      *&v34 = v35.f32[0];
    }

    v36 = *&v34 + *&v34;
    __asm { FMOV            V0.4S, #1.0 }

    v166 = _Q0;
    __asm { FMOV            V11.2S, #1.0 }

    v152 = v33;
    v162 = v36;
    v161 = _D11;
    do
    {
      if (v29)
      {
        v43 = v166;
      }

      else
      {
        v43 = *(v26 + 16 * v24);
      }

      v44 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v174, v180, *(v31 + 16 * v24), 2), v181, *(v31 + 16 * v24), 1), v183, COERCE_FLOAT(*(v31 + 16 * v24))).u64[0];
      v45 = vcgt_f32(vabs_f32(v44), _D11);
      if ((vpmax_u32(v45, v45).u32[0] & 0x80000000) != 0)
      {
        goto LABEL_12;
      }

      v175 = v44;
      v179 = v35;
      v46 = (v33 * fmaxf(fmaxf(*&v43, *(&v43 + 2)), *(&v43 + 1))) / v36;
      v167 = *(v31 + 16 * v24);
      v169 = *(v27 + 16 * v24);
      if ((*(a6 + 40))(a6, COERCE_DOUBLE(vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, v44))) > v46)
      {
        v35 = v179;
        goto LABEL_12;
      }

      v47 = v23;
      v48 = v29;
      v163 = vmuls_lane_f32(a7, v169, 2);
      v170 = vmul_n_f32(*v169.f32, a7);
      v49 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_n_f32(v180, v163), v181, v170, 1), v183, v170.f32[0]);
      v50 = vsub_f32(v175, *v49.f32);
      v51 = vcgt_f32(vabs_f32(v50), _D11);
      v52 = vpmax_u32(v51, v51).u32[0];
      v53 = v50;
      if (v52 < 0)
      {
        v54 = vdiv_f32(_D11, vmaxnm_f32(vabs_f32(*v49.f32), 0x3400000034000000));
        v55 = vsub_f32(vmul_f32(v50, vmul_f32(vbsl_s8(vorr_s8(vcltz_f32(*v49.f32), vcgtz_f32(*v49.f32)), vneg_f32(vorr_s8(vand_s8(*v49.f32, 0x8000000080000000), _D11)), 0x8000000080000000), v54)), v54);
        v53 = vmla_n_f32(v50, *v49.f32, fmaxf(v55.f32[0], v55.f32[1]));
      }

      v56 = vmla_f32(0x3F0000003F000000, 0x3F0000003F000000, v53);
      v57 = vmulq_f32(v49, v49).u64[0];
      *v57.i32 = vaddv_f32(v57);
      v58 = vdup_lane_s32(v57, 0);
      v59 = vrsqrte_f32(v58);
      v60 = vmul_f32(v59, vrsqrts_f32(v58, vmul_f32(v59, v59)));
      v61 = vbsl_s8(vceqz_f32(v58), *v49.f32, vmul_f32(*v49.f32, vmul_f32(v60, vrsqrts_f32(v58, vmul_f32(v60, v60)))));
      v62 = (*(a6 + 40))(a6, COERCE_DOUBLE(vmla_f32(v56, 0, v61))) - v46;
      v63 = 0.0;
      if (v62 > 0.01)
      {
        v64 = (*(a6 + 40))(a6, COERCE_DOUBLE(vmla_n_f32(v56, v61, v62 * 0.5))) - v46;
        if (v64 <= 0.01)
        {
          v63 = v62;
LABEL_27:
          v33 = v152;
          goto LABEL_28;
        }

        v63 = v62 + v64;
        v65 = (*(a6 + 40))(a6, COERCE_DOUBLE(vmla_n_f32(v56, v61, (v62 + v64) * 0.5))) - v46;
        if (v65 <= 0.01)
        {
          goto LABEL_27;
        }

        v63 = v63 + v65;
        v66 = (*(a6 + 40))(a6, COERCE_DOUBLE(vmla_n_f32(v56, v61, v63 * 0.5))) - v46;
        v33 = v152;
        if (v66 > 0.01)
        {
          v63 = v63 + v66;
          v67 = (*(a6 + 40))(a6, COERCE_DOUBLE(vmla_n_f32(v56, v61, v63 * 0.5))) - v46;
          if (v67 > 0.01)
          {
            v63 = v63 + v67;
          }
        }
      }

LABEL_28:
      v68 = vsub_f32(v53, v50);
      v69 = sqrtf(vaddv_f32(vmul_f32(v68, v68))) + v63;
      if (v52 >= 0)
      {
        v69 = v63;
      }

      v70 = vsub_f32(v175, v50);
      v71 = v69 / sqrtf(vaddv_f32(vmul_f32(v70, v70)));
      if (v71 <= 1.0)
      {
        v72 = vmla_n_f32(v56, v61, v69 * 0.5);
        v176 = COERCE_INT32X2_T((*(a6 + 40))(a6, COERCE_DOUBLE(vadd_f32(v72, 1008981770))));
        v157 = COERCE_INT32X2_T((*(a6 + 40))(a6, COERCE_DOUBLE(vadd_f32(v72, 0x80000000BC23D70ALL))));
        v155 = COERCE_INT32X2_T((*(a6 + 40))(a6, COERCE_DOUBLE(vadd_f32(v72, 0x3C23D70A00000000))));
        (*(a6 + 40))(a6, COERCE_DOUBLE(vadd_f32(v72, 0xBC23D70A80000000)));
        v36 = v162;
        _D11 = v161;
        if (v71 >= 0.0)
        {
          v74 = vsub_f32(vzip1_s32(v176, v155), vzip1_s32(v157, v73));
          v75 = vmul_f32(v74, v74);
          v76 = vdup_lane_s32(vadd_f32(v75, vdup_lane_s32(v75, 1)), 0);
          v77 = vrsqrte_f32(v76);
          v78 = vmul_f32(v77, vrsqrts_f32(v76, vmul_f32(v77, v77)));
          v79 = vbsl_s8(vceqz_f32(v76), v74, vmul_f32(v74, vmul_f32(v78, vrsqrts_f32(v76, vmul_f32(v78, v78)))));
          v177 = 0u;
          v80 = vmlaq_f32(vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(*(a3 + 128), v79.f32[0]), *(a3 + 144), v79, 1), 0, *(a3 + 160)), 0, *(a3 + 176));
          v81 = vabsq_f32(v80);
          if (v81.f32[0] > 0.00000011921 || v81.f32[1] > 0.00000011921 || v81.f32[2] > 0.00000011921)
          {
            v84 = vmulq_f32(v80, v80);
            *&v85 = v84.f32[2] + vaddv_f32(*v84.f32);
            *v84.f32 = vrsqrte_f32(v85);
            *v84.f32 = vmul_f32(*v84.f32, vrsqrts_f32(v85, vmul_f32(*v84.f32, *v84.f32)));
            v86 = vmulq_n_f32(v80, vmul_f32(*v84.f32, vrsqrts_f32(v85, vmul_f32(*v84.f32, *v84.f32))).f32[0]);
            v86.i32[3] = v138;
            v177 = v86;
          }

          if (v151)
          {
            v87 = 0;
            v158 = 0;
            if ((v150 & 1) == 0)
            {
              goto LABEL_45;
            }

LABEL_47:
            v156 = 0;
          }

          else
          {
            v88 = (v144 + 16 * v24);
            v87 = *v88;
            v158 = v88[1];
            if (v150)
            {
              goto LABEL_47;
            }

LABEL_45:
            v156 = *(v143 + 4 * v24);
          }

          v89 = v191;
          v90 = v192;
          sub_1AF441150(v190, v191);
          v91 = (*(v90 + 56))(v89, v90);
          if (v91 > 0.0)
          {
            if (v91 >= 1.0 || (v93 = v91, v94 = drand48(), v93 > v94))
            {
              v142[v139++] = v24;
              v205 = v139;
            }
          }

          *v92.f32 = vsub_f32(*&v167, vmul_n_f32(v170, 1.0 - v71));
          v95 = *(&v167 + 2) - (v163 * (1.0 - v71));
          v168 = v92;
          v164 = v95;
          if (v148)
          {
            *v96.f32 = vsub_f32(*v92.f32, *(v31 + 16 * v24));
            v96.f32[2] = v95 - COERCE_FLOAT(*(v31 + 16 * v24 + 8));
            v96.i32[3] = 0;
            v171 = v96;
            v97 = v96;
            v145 = *(v160 + 16 * v24);
            v97.i32[3] = HIDWORD(v145);
            *(v160 + 16 * v24) = v97;
            v98 = v191;
            v99 = v192;
            sub_1AF441150(v190, v191);
            v100 = (*(v99 + 8))(v98, v99);
            v101 = v191;
            v102 = v192;
            sub_1AF441150(v190, v191);
            (*(v102 + 32))(v101, v102);
            v104 = v171;
            v104.i32[3] = v179.i32[3];
            v105 = vaddq_f32(v149, v104);
            v106 = vmulq_f32(v177, v105);
            v107 = v106.f32[2] + vaddv_f32(*v106.f32);
            v172 = v104;
            v108 = v104;
            if (v107 < 0.0)
            {
              v109 = vmulq_n_f32(v177, v107);
              v108 = vmlaq_n_f32(vmulq_n_f32(v109, -v100), vsubq_f32(v105, v109), v103);
            }

            v108.i32[3] = HIDWORD(v145);
            v146 = v108;
            *(v160 + 16 * v24) = v108;
            v31 = v154;
          }

          else
          {
            v173 = 1.0 - v71;
            v110 = v191;
            v111 = v192;
            sub_1AF441150(v190, v191);
            v112 = (*(v111 + 8))(v110, v111);
            v113 = v191;
            v114 = v192;
            v31 = v154;
            sub_1AF441150(v190, v191);
            (*(v114 + 32))(v113, v114);
            v116 = *(v154 + 16 * v24);
            v117 = v116;
            v117.i32[3] = v136;
            v118 = *(v160 + 16 * v24);
            v119 = v118;
            v119.i32[3] = v137;
            v120 = vaddq_f32(v149, v119);
            v121 = vmulq_f32(v177, v120);
            v122 = v121.f32[2] + vaddv_f32(*v121.f32);
            v123 = v117;
            v124 = v119;
            if (v122 < 0.0)
            {
              v125 = v168;
              v125.f32[2] = v164;
              v126 = vmulq_n_f32(v177, v122);
              v124 = vmlaq_n_f32(vmulq_n_f32(v126, -v112), vsubq_f32(v120, v126), v115);
              v123 = vmlaq_n_f32(vmlaq_f32(v125, vdupq_n_s32(0x38D1B717u), v177), v124, v173 * a7);
            }

            v124.i32[3] = v118.i32[3];
            v146 = v124;
            *(v160 + 16 * v24) = v124;
            v123.i32[3] = v116.i32[3];
            *(v154 + 16 * v24) = v123;
            v172 = v179;
          }

          v127 = v191;
          v128 = v192;
          sub_1AF441150(v190, v191);
          v129 = (*(v128 + 80))(v127, v128);
          if (v129 <= 0.0)
          {
            v27 = v160;
            v26 = v153;
            v29 = v48;
          }

          else
          {
            v26 = v153;
            v29 = v48;
            if (v129 >= 1.0 || (v130 = v129, v131 = drand48(), v130 > v131))
            {
              *v132.f32 = vadd_f32(*v168.f32, vmul_f32(*v177.f32, vdup_n_s32(0x3C23D70Au)));
              v132.f32[2] = v164 + vmuls_lane_f32(0.01, v177, 2);
              v132.i32[3] = 0;
              v133 = v146;
              v133.i32[3] = v135;
              LOBYTE(v185) = v151 & 1;
              v184[0] = v150 & 1;
              v134 = &v141[10 * v140];
              *v134 = v132;
              v134[1] = v177;
              v134[2] = v133;
              v134[3].i64[0] = v87;
              v134[3].i64[1] = v158;
              v134[4].i8[0] = v151 & 1;
              v134[4].i32[1] = v156;
              v134[4].i8[8] = v150 & 1;
              v208 = ++v140;
            }

            v27 = v160;
          }

          v23 = v47;
          v35 = v172;
          goto LABEL_12;
        }

        v29 = v48;
        v35 = v179;
        v23 = v47;
      }

      else
      {
        v35 = v179;
        v29 = v48;
        v23 = v47;
        v36 = v162;
        _D11 = v161;
      }

LABEL_12:
      ++v24;
    }

    while (v23 != v24);
  }

  sub_1AFA160B4(&v189, a5 | ((HIDWORD(a5) & 1) << 32), sub_1AFA09DD0);
  return sub_1AFA09D20(&v189);
}

uint64_t sub_1AFA18144(__int128 *a1, __int128 *a2, float32x4_t *a3, uint64_t a4, unint64_t a5, uint64_t a6, float a7)
{
  v177 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 11);
  v11 = *(a1 + 12);
  v12 = *(a1 + 13);
  v14 = *(a1 + 1);
  v13 = *(a1 + 2);
  v15 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v10, v11, v12, v13);
  v145 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v10, v11, v12, v13);
  v109 = sub_1AF9C5D1C();
  v119 = v16;
  v108 = sub_1AF9C5E38();
  v118 = v17;
  v153 = *a2;
  v18 = a1[3];
  v166 = a1[2];
  v19 = *a1;
  v165 = a1[1];
  v164 = v19;
  v20 = a1[5];
  v170 = a1[6];
  v21 = a1[4];
  v169 = v20;
  v156 = &off_1F2553AE0;
  v22 = *(a2 + 2);
  v155 = &type metadata for CollisionProperties;
  v154 = v22;
  v168 = v21;
  v23 = *(a4 + 16);
  v115 = a3[12];
  v157 = v115;
  v167 = v18;
  v24 = *(a1 + 6);
  v25 = *(a1 + 7);
  v26 = v13[4];

  v106 = ecs_stack_allocator_allocate(v26, 8 * (v25 - v24), 8);
  v171 = v106;
  v172 = v25 - v24;
  v173 = 0;
  sub_1AF441194(&v153, v158);
  v162 = a7;
  v161 = v23;
  sub_1AF649C6C(*(v14 + 40), &type metadata for Anchored, v152);
  v114 = v152[0];
  v163 = v152[0];
  v27 = ecs_stack_allocator_allocate(v13[4], 80 * (v25 - v24), 16);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v153);
  v105 = v27;
  v174 = v27;
  v175 = v25 - v24;
  v176 = 0;
  if (v25 != v24)
  {
    v110 = 0;
    v111 = 0;
    v32 = *a3;
    v33 = a3[1];
    v34 = a3[2];
    v35 = a3[3];
    v103 = vdupq_lane_s32(COERCE_UNSIGNED_INT(a7 * 0.0), 0);
    __asm { FMOV            V7.4S, #1.0 }

    v137 = v33;
    v138 = *a3;
    v135 = v35;
    v136 = v34;
    v134 = _Q7;
    do
    {
      v41 = v28.i32[3];
      v42 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v35, v34, *(v15 + 16 * v24), 2), v33, *(v15 + 16 * v24), 1), v32, COERCE_FLOAT(*(v15 + 16 * v24)));
      v28 = vabsq_f32(v42);
      v28.i32[3] = v41;
      v43 = vcgtq_f32(_Q7, v28);
      if ((v43.i32[2] & v43.i32[1] & v43.i32[0]) < 0 != _VF)
      {
        v141 = v30;
        v143 = v29;
        v44 = vmuls_lane_f32(0.5, v42, 2);
        *v45.f32 = vadd_f32(vmul_f32(*v42.f32, 0x3F0000003F000000), 0x3F0000003F000000);
        v45.i64[1] = COERCE_UNSIGNED_INT(v44 + 0.5);
        v146 = v28.i32[3];
        v148 = v45;
        v46 = (*(a6 + 72))(a6);
        if (v46 >= 0.0)
        {
          v30 = v141;
          v29 = v143;
          v33 = v137;
          v32 = v138;
          v35 = v135;
          v34 = v136;
          _Q7 = v134;
          v28.i32[3] = v146;
        }

        else
        {
          v139 = v46;
          *&v47 = (*(a6 + 72))(a6, vaddq_f32(v148, xmmword_1AFE91BD0));
          v132 = v47;
          v130 = COERCE_INT32X2_T((*(a6 + 72))(a6, vaddq_f32(v148, xmmword_1AFE91BE0)));
          v127 = COERCE_INT32X2_T((*(a6 + 72))(a6, vaddq_f32(v148, xmmword_1AFE91BF0)));
          v125 = COERCE_INT32X2_T((*(a6 + 72))(a6, vaddq_f32(v148, xmmword_1AFE91C00)));
          *v48.i64 = (*(a6 + 72))(a6, vaddq_f32(v148, xmmword_1AFE91C10));
          v123 = v48;
          *v49.i64 = (*(a6 + 72))(a6, vaddq_f32(v148, xmmword_1AFE91C20));
          v121 = v49;
          if (v119)
          {
            v50 = 0;
            v117 = 0;
          }

          else
          {
            v51 = (v109 + 16 * v24);
            v50 = *v51;
            v117 = v51[1];
          }

          v126 = a3[4];
          v124 = a3[5];
          v122 = a3[6];
          v149 = *(v15 + 16 * v24);
          if (v118)
          {
            v116 = 0;
          }

          else
          {
            v116 = *(v108 + 4 * v24);
          }

          v52 = v159;
          v53 = v160;
          sub_1AF441150(v158, v159);
          v54 = (*(v53 + 56))(v52, v53);
          if (v54 > 0.0)
          {
            if (v54 >= 1.0 || (v55 = v54, v56 = drand48(), v55 > v56))
            {
              v106[v110++] = v24;
              v173 = v110;
            }
          }

          *v57.f32 = vsub_f32(vzip1_s32(*&v132, v127), vzip1_s32(v130, v125));
          v62.i64[1] = v121.i64[1];
          v57.i64[1] = __PAIR64__(HIDWORD(v132), vsubq_f32(v123, v121).u32[0]);
          v58 = vmulq_f32(v57, v57);
          v62.f32[0] = v58.f32[2] + vaddv_f32(*v58.f32);
          *v58.f32 = vrsqrte_f32(v62.u32[0]);
          *v58.f32 = vmul_f32(*v58.f32, vrsqrts_f32(v62.u32[0], vmul_f32(*v58.f32, *v58.f32)));
          v59 = vmulq_n_f32(v57, vmul_f32(*v58.f32, vrsqrts_f32(v62.u32[0], vmul_f32(*v58.f32, *v58.f32))).f32[0]);
          v58.f32[0] = fabsf(v139);
          v60 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v122, vmuls_lane_f32(v58.f32[0], v59, 2)), v124, vmuls_lane_f32(v58.f32[0], *v59.f32, 1)), v126, v58.f32[0] * v59.f32[0]);
          v61 = vmulq_f32(v60, v60);
          v62.f32[0] = v61.f32[2] + vaddv_f32(*v61.f32);
          *v61.f32 = vrsqrte_f32(v62.u32[0]);
          *v61.f32 = vmul_f32(*v61.f32, vrsqrts_f32(v62.u32[0], vmul_f32(*v61.f32, *v61.f32)));
          v140 = vmulq_n_f32(v60, vmul_f32(*v61.f32, vrsqrts_f32(v62.u32[0], vmul_f32(*v61.f32, *v61.f32))).f32[0]);
          *v62.f32 = vadd_f32(*v149.f32, *v60.f32);
          v131 = v149.f32[2] + v60.f32[2];
          v133 = v62;
          if (v114)
          {
            *v63.f32 = vsub_f32(*v62.f32, *(v15 + 16 * v24));
            v63.f32[2] = (v149.f32[2] + v60.f32[2]) - COERCE_FLOAT(*(v15 + 16 * v24 + 8));
            v63.i32[3] = 0;
            v150 = v63;
            v64 = v63;
            v128 = *(v145 + 16 * v24);
            v64.i32[3] = HIDWORD(v128);
            *(v145 + 16 * v24) = v64;
            v65 = v159;
            v66 = v160;
            sub_1AF441150(v158, v159);
            v67 = (*(v66 + 8))(v65, v66);
            v68 = v159;
            v69 = v160;
            sub_1AF441150(v158, v159);
            (*(v69 + 32))(v68, v69);
            v71 = v140;
            v72 = v150;
            v72.i32[3] = v141.i32[3];
            v73 = vaddq_f32(v115, v72);
            v74 = vmulq_f32(v140, v73);
            v75 = v74.f32[2] + vaddv_f32(*v74.f32);
            v151 = v72;
            v76 = v72;
            if (v75 < 0.0)
            {
              v77 = vmulq_n_f32(v140, v75);
              v76 = vmlaq_n_f32(vmulq_n_f32(v77, -v67), vsubq_f32(v73, v77), v70);
            }

            v76.i32[3] = HIDWORD(v128);
            v129 = v76;
            *(v145 + 16 * v24) = v76;
            v78 = v143.i32[3];
          }

          else
          {
            v79 = v159;
            v80 = v160;
            sub_1AF441150(v158, v159);
            v81 = (*(v80 + 8))(v79, v80);
            v82 = v159;
            v83 = v160;
            sub_1AF441150(v158, v159);
            (*(v83 + 32))(v82, v83);
            v85 = *(v15 + 16 * v24);
            v86 = v85;
            v86.i32[3] = v112;
            v87 = *(v145 + 16 * v24);
            v88 = v87;
            v88.i32[3] = v113;
            v89 = vaddq_f32(v115, v88);
            v71 = v140;
            v90 = vmulq_f32(v140, v89);
            v91 = v90.f32[2] + vaddv_f32(*v90.f32);
            v92 = v86;
            v93 = v88;
            if (v91 < 0.0)
            {
              v94 = v133;
              v94.f32[2] = v131;
              v95 = vmulq_n_f32(v140, v91);
              v93 = vmlaq_n_f32(vmulq_n_f32(v95, -v81), vsubq_f32(v89, v95), v84);
              v92 = vmlaq_f32(vmlaq_f32(v94, vdupq_n_s32(0x38D1B717u), v140), v103, v93);
            }

            v93.i32[3] = v87.i32[3];
            v129 = v93;
            *(v145 + 16 * v24) = v93;
            v92.i32[3] = v85.i32[3];
            *(v15 + 16 * v24) = v92;
            v78 = v143.i32[3];
            v151 = v141;
          }

          v71.i32[3] = v78;
          v144 = v71;
          v96 = v159;
          v97 = v160;
          sub_1AF441150(v158, v159);
          v98 = (*(v97 + 80))(v96, v97);
          if (v98 <= 0.0 || v98 < 1.0 && (v99 = v98, v100 = drand48(), v99 <= v100))
          {
            v33 = v137;
            v32 = v138;
            v35 = v135;
            v34 = v136;
            _Q7 = v134;
            v28.i32[3] = v146;
            v30 = v151;
            v29 = v144;
          }

          else
          {
            *v101.f32 = vadd_f32(*v133.f32, vmul_f32(*v140.f32, vdup_n_s32(0x3C23D70Au)));
            v101.f32[2] = v131 + vmuls_lane_f32(0.01, v140, 2);
            v101.i32[3] = 0;
            v28 = v129;
            v28.i32[3] = v107;
            LOBYTE(v153) = v119 & 1;
            v152[0] = v118 & 1;
            v102 = &v105[10 * v111];
            v29 = v144;
            *v102 = v101;
            v102[1] = v144;
            v102[2] = v28;
            v102[3].i64[0] = v50;
            v102[3].i64[1] = v117;
            v102[4].i8[0] = v119 & 1;
            v102[4].i32[1] = v116;
            v102[4].i8[8] = v118 & 1;
            v176 = ++v111;
            v33 = v137;
            v32 = v138;
            v35 = v135;
            v34 = v136;
            _Q7 = v134;
            v28.i32[3] = v146;
            v30 = v151;
          }
        }
      }

      _VF = __OFSUB__(v25, ++v24);
    }

    while (v25 != v24);
  }

  sub_1AFA160B4(&v157, a5 | ((HIDWORD(a5) & 1) << 32), sub_1AFA09F14);
  return sub_1AFA09D20(&v157);
}

uint64_t sub_1AFA18A80(__int128 *a1, __int128 *a2, float32x4_t *a3, uint64_t a4, unint64_t a5, uint64_t a6, float a7, float32x4_t a8, int32x4_t a9, int32x4_t a10)
{
  v176 = *MEMORY[0x1E69E9840];
  v14 = *(a1 + 11);
  v13 = *(a1 + 12);
  v15 = *(a1 + 13);
  v17 = *(a1 + 1);
  v16 = *(a1 + 2);
  v18 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v14, v13, v15, v16);
  v136 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v14, v13, v15, v16);
  v112 = sub_1AF9C5D1C();
  v122 = v19;
  v111 = sub_1AF9C5E38();
  v121 = v20;
  v152 = *a2;
  v21 = a1[3];
  v165 = a1[2];
  v22 = *a1;
  v164 = a1[1];
  v163 = v22;
  v23 = a1[5];
  v169 = a1[6];
  v24 = a1[4];
  v168 = v23;
  v155 = &off_1F2553AE0;
  v25 = *(a2 + 2);
  v154 = &type metadata for CollisionProperties;
  v153 = v25;
  v167 = v24;
  v26 = *(a4 + 16);
  v118 = a3[12];
  v156 = v118;
  v166 = v21;
  v28 = *(a1 + 6);
  v27 = *(a1 + 7);
  v29 = v16[4];

  v109 = ecs_stack_allocator_allocate(v29, 8 * (v27 - v28), 8);
  v170 = v109;
  v171 = v27 - v28;
  v172 = 0;
  sub_1AF441194(&v152, v157);
  v161 = a7;
  v160 = v26;
  sub_1AF649C6C(*(v17 + 40), &type metadata for Anchored, v151);
  v117 = v151[0];
  v162 = v151[0];
  v30 = ecs_stack_allocator_allocate(v16[4], 80 * (v27 - v28), 16);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v152);
  v108 = v30;
  v173 = v30;
  v174 = v27 - v28;
  v175 = 0;
  if (v27 != v28)
  {
    v113 = 0;
    v114 = 0;
    v35 = *a3;
    v36 = a3[1];
    v37 = a3[2];
    v38 = a3[3];
    v105 = vdupq_lane_s32(COERCE_UNSIGNED_INT(a7 * 0.0), 0);
    __asm { FMOV            V7.4S, #1.0 }

    v134 = v36;
    v135 = *a3;
    v132 = v38;
    v133 = v37;
    v131 = _Q7;
    do
    {
      v44 = v31.i32[3];
      v45 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v38, v37, *(v18 + 16 * v28), 2), v36, *(v18 + 16 * v28), 1), v35, COERCE_FLOAT(*(v18 + 16 * v28)));
      v31 = vabsq_f32(v45);
      v31.i32[3] = v44;
      v46 = vcgtq_f32(_Q7, v31);
      if ((v46.i32[2] & v46.i32[1] & v46.i32[0]) < 0 != _VF)
      {
        v146 = v33;
        v147 = v32;
        v150 = v31.i32[3];
        v47 = vmuls_lane_f32(0.5, v45, 2);
        *v48.f32 = vadd_f32(vmul_f32(*v45.f32, 0x3F0000003F000000), 0x3F0000003F000000);
        v48.f32[2] = v47 + 0.5;
        v48.i32[3] = 0;
        v139 = v48;
        v49 = sub_1AF5F4958(a6, v48, a8, a9, a10);
        if (v49 >= 0.0)
        {
          v33 = v146;
          v32 = v147;
          v36 = v134;
          v35 = v135;
          v38 = v132;
          v37 = v133;
          _Q7 = v131;
          v31.i32[3] = v150;
        }

        else
        {
          v50 = v49;
          *v51.i64 = sub_1AF5F4C38(a6, v139, a8, a9, a10);
          v137 = v51;
          if (v122)
          {
            v119 = 0;
            v120 = 0;
          }

          else
          {
            v52 = (v112 + 16 * v28);
            v119 = v52[1];
            v120 = *v52;
          }

          v127 = a3[5];
          v129 = a3[4];
          v124 = a3[6];
          v140 = *(v18 + 16 * v28);
          if (v121)
          {
            v53 = 0;
          }

          else
          {
            v53 = *(v111 + 4 * v28);
          }

          v54 = v158;
          v55 = v159;
          sub_1AF441150(v157, v158);
          v56 = (*(v55 + 56))(v54, v55);
          if (v56 > 0.0)
          {
            if (v56 >= 1.0 || (v58 = v56, v59 = drand48(), v58 > v59))
            {
              v109[v113++] = v28;
              v172 = v113;
            }
          }

          v60 = vmulq_f32(v137, v137);
          *&v61 = v60.f32[2] + vaddv_f32(*v60.f32);
          *v60.f32 = vrsqrte_f32(v61);
          *v60.f32 = vmul_f32(*v60.f32, vrsqrts_f32(v61, vmul_f32(*v60.f32, *v60.f32)));
          v62 = vmulq_n_f32(v137, vmul_f32(*v60.f32, vrsqrts_f32(v61, vmul_f32(*v60.f32, *v60.f32))).f32[0]);
          v63 = fabsf(v50);
          v64 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v124, vmuls_lane_f32(v63, v62, 2)), v127, vmuls_lane_f32(v63, *v62.f32, 1)), v129, v63 * v62.f32[0]);
          v65 = vmulq_f32(v64, v64);
          v57.f32[0] = v65.f32[2] + vaddv_f32(*v65.f32);
          *v65.f32 = vrsqrte_f32(v57.u32[0]);
          *v65.f32 = vmul_f32(*v65.f32, vrsqrts_f32(v57.u32[0], vmul_f32(*v65.f32, *v65.f32)));
          v138 = vmulq_n_f32(v64, vmul_f32(*v65.f32, vrsqrts_f32(v57.u32[0], vmul_f32(*v65.f32, *v65.f32))).f32[0]);
          *v57.f32 = vadd_f32(*&v140, *v64.f32);
          v128 = *(&v140 + 2) + v64.f32[2];
          v130 = v57;
          if (v117)
          {
            *v66.f32 = vsub_f32(*v57.f32, *(v18 + 16 * v28));
            v66.f32[2] = (*(&v140 + 2) + v64.f32[2]) - COERCE_FLOAT(*(v18 + 16 * v28 + 8));
            v66.i32[3] = 0;
            v141 = v66;
            v67 = v66;
            v125 = *(v136 + 16 * v28);
            v67.i32[3] = HIDWORD(v125);
            *(v136 + 16 * v28) = v67;
            v68 = v158;
            v69 = v159;
            sub_1AF441150(v157, v158);
            v70 = (*(v69 + 8))(v68, v69);
            v71 = v158;
            v72 = v159;
            sub_1AF441150(v157, v158);
            (*(v72 + 32))(v71, v72);
            v75 = v138;
            v74 = v141;
            v74.i32[3] = v146.i32[3];
            v76 = vaddq_f32(v118, v74);
            v77 = vmulq_f32(v138, v76);
            v78 = v77.f32[2] + vaddv_f32(*v77.f32);
            v142 = v74;
            v79 = v74;
            if (v78 < 0.0)
            {
              v80 = vmulq_n_f32(v138, v78);
              v79 = vmlaq_n_f32(vmulq_n_f32(v80, -v70), vsubq_f32(v76, v80), v73);
            }

            v79.i32[3] = HIDWORD(v125);
            v126 = v79;
            *(v136 + 16 * v28) = v79;
          }

          else
          {
            v81 = v158;
            v82 = v159;
            sub_1AF441150(v157, v158);
            v83 = (*(v82 + 8))(v81, v82);
            v84 = v158;
            v85 = v159;
            sub_1AF441150(v157, v158);
            (*(v85 + 32))(v84, v85);
            v87 = *(v18 + 16 * v28);
            v88 = v87;
            v88.i32[3] = v115;
            v89 = *(v136 + 16 * v28);
            v90 = v89;
            v90.i32[3] = v116;
            v91 = vaddq_f32(v118, v90);
            v75 = v138;
            v92 = vmulq_f32(v138, v91);
            v93 = v92.f32[2] + vaddv_f32(*v92.f32);
            v94 = v88;
            v95 = v90;
            if (v93 < 0.0)
            {
              v96 = v130;
              v96.f32[2] = v128;
              v97 = vmulq_n_f32(v138, v93);
              v95 = vmlaq_n_f32(vmulq_n_f32(v97, -v83), vsubq_f32(v91, v97), v86);
              v94 = vmlaq_f32(vmlaq_f32(v96, vdupq_n_s32(0x38D1B717u), v138), v105, v95);
            }

            v95.i32[3] = v89.i32[3];
            v126 = v95;
            *(v136 + 16 * v28) = v95;
            v94.i32[3] = v87.i32[3];
            *(v18 + 16 * v28) = v94;
            v142 = v146;
          }

          v75.i32[3] = v147.i32[3];
          v148 = v75;
          v98 = v158;
          v99 = v159;
          sub_1AF441150(v157, v158);
          v100 = (*(v99 + 80))(v98, v99);
          if (v100 <= 0.0 || v100 < 1.0 && (v101 = v100, v102 = drand48(), v101 <= v102))
          {
            v36 = v134;
            v35 = v135;
            v38 = v132;
            v37 = v133;
            _Q7 = v131;
            v32 = v148;
            v31.i32[3] = v150;
            v33 = v142;
          }

          else
          {
            *v103.f32 = vadd_f32(*v130.f32, vmul_f32(*v138.f32, vdup_n_s32(0x3C23D70Au)));
            v103.f32[2] = v128 + vmuls_lane_f32(0.01, v138, 2);
            v103.i32[3] = 0;
            v31 = v126;
            v31.i32[3] = v110;
            LOBYTE(v152) = v122 & 1;
            v151[0] = v121 & 1;
            v104 = &v108[10 * v114];
            v32 = v148;
            *v104 = v103;
            v104[1] = v148;
            v104[2] = v31;
            v104[3].i64[0] = v120;
            v104[3].i64[1] = v119;
            v104[4].i8[0] = v122 & 1;
            v104[4].i32[1] = v53;
            v104[4].i8[8] = v121 & 1;
            v175 = ++v114;
            v36 = v134;
            v35 = v135;
            v38 = v132;
            v37 = v133;
            _Q7 = v131;
            v31.i32[3] = v150;
            v33 = v142;
          }
        }
      }

      _VF = __OFSUB__(v27, ++v28);
    }

    while (v27 != v28);
  }

  sub_1AFA160B4(&v156, a5 | ((HIDWORD(a5) & 1) << 32), sub_1AFA09F14);
  return sub_1AFA09D20(&v156);
}

double sub_1AFA192E8@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AFE916A0;
  *(a1 + 16) = 0xFF00000000;
  *(a1 + 24) = 0;
  return result;
}

double sub_1AFA19304@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AFA1AA2C(a1, v5);
  if (!v2)
  {
    *a2 = *v5;
    result = *&v5[9];
    *(a2 + 9) = *&v5[9];
  }

  return result;
}

uint64_t sub_1AFA19348(void *a1)
{
  sub_1AFA087DC(0, &qword_1EB641F58, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11[-v8];
  *v12 = *v1;
  *&v12[9] = *(v1 + 9);
  result = sub_1AFA059DC(a1, &v11[-v8]);
  if (!v2)
  {
    v11[15] = 10;
    sub_1AFDFE8C8();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

double sub_1AFA19478()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED73B840;
  v4 = 0;
  v5 = 2;
  v6 = 0;
  v7 = 2;
  v8 = 0;

  sub_1AF8D4E40(1, 1, 1, v1);

  result = *v1;
  xmmword_1EB6C3578 = v1[0];
  unk_1EB6C3588 = v1[1];
  qword_1EB6C3598 = v2;
  return result;
}

void sub_1AFA19530(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = *(v4 + 160);
  if (qword_1EB637250 != -1)
  {
    swift_once();
  }

  v66[0] = xmmword_1EB6C3578;
  v66[1] = unk_1EB6C3588;
  v67 = qword_1EB6C3598;
  sub_1AF6B06C0(a1, v66, a4 & 0xFFFFFFFFFFLL, v48);
  v41 = *&v48[0];
  if (*&v48[0])
  {
    v12 = *(&v48[2] + 1);
    v13 = *(&v49 + 1);
    v37 = *(&v50 + 1);
    v40 = v50;
    v53 = *(v48 + 8);
    v54 = *(&v48[1] + 8);
    MEMORY[0x1EEE9AC00](v10, v11);
    v38 = v28;
    v39 = v14;
    v28[2] = v4;
    v29 = a4;
    v30 = v15;
    v31 = a1;
    v32 = v9;
    v33 = a1;
    v34 = a2;
    v35 = a3;
    if (v14 > 0 && v13)
    {
      v36 = &v36;
      v16 = v37;
      v17 = v37[4];
      v46 = *(v40 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v47[2] = v48[2];
      v47[3] = v49;
      v47[4] = v50;
      v47[5] = v51;
      v47[0] = v48[0];
      v47[1] = v48[1];
      sub_1AF5DD298(v47, v61);
      for (i = (v12 + 24); ; i += 6)
      {
        v45 = 0;
        v19 = v17;
        v20 = *(i - 6);
        v21 = *(i - 5);
        v22 = *(i - 4);
        v23 = *(i - 1);
        v43 = *i;
        v44 = v23;
        v24 = i[2];
        v42 = i[1];
        if (v46)
        {
          v25 = *(v24 + 376);

          v16 = v37;
          os_unfair_lock_lock(v25);
          os_unfair_lock_lock(*(v24 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v19);

        sub_1AF630914(v26, v16, v52);

        LOBYTE(v55) = 1;
        v61[0] = v40;
        v61[1] = v24;
        v61[2] = v16;
        v61[3] = v22;
        v61[4] = (v21 - v20 + v22);
        v61[5] = v39;
        v61[6] = v20;
        v61[7] = v21;
        v61[8] = 0;
        v61[9] = 0;
        v62 = 1;
        v63 = v44;
        v64 = v43;
        v65 = v42;
        v27 = v45;
        sub_1AFA1683C(v61, sub_1AFA1AC24, v38);
        if (v27)
        {
          break;
        }

        v58 = v41;
        v59 = v53;
        v60 = v54;
        sub_1AF630994(v16, &v58, v52);
        sub_1AF62D29C(v24);
        ecs_stack_allocator_pop_snapshot(v19);
        v17 = v19;
        if (v46)
        {
          os_unfair_lock_unlock(*(v24 + 344));
          os_unfair_lock_unlock(*(v24 + 376));
        }

        if (!--v13)
        {
          sub_1AF5D1564(v48);
          sub_1AF5D1564(v48);
          return;
        }
      }

      v55 = v41;
      v56 = v53;
      v57 = v54;
      sub_1AF630994(v16, &v55, v52);
      sub_1AF62D29C(v24);
      ecs_stack_allocator_pop_snapshot(v19);
      os_unfair_lock_unlock(*(v24 + 344));
      os_unfair_lock_unlock(*(v24 + 376));
      __break(1u);
    }

    else
    {
      sub_1AF5D1564(v48);
    }
  }
}

void sub_1AFA198DC(float a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4, float32x4_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a6 + 84) & a3[2].i32[1];
  if (v8)
  {
    v12 = a7;
    v13 = (a7 & 0xFE00000000) != 0;
    if ((a7 & 0xFE00000000) != 0)
    {
      v12 = 0;
    }

    v137 = v12;
    v14 = a3[2].f32[0] + *(a6 + 80);
    v15 = 1.0;
    v16 = fminf(fmaxf(a3[1].f32[1] + *(a6 + 76), 0.0), 1.0);
    v17 = fminf(fmaxf(a3[1].f32[0] + *(a6 + 72), 0.0), 1.0);
    __asm { FMOV            V4.2S, #1.0 }

    *&v132 = vminnm_f32(vmaxnm_f32(vadd_f32(*a3, *(a6 + 64)), 0), _D4);
    *(&v132 + 2) = v17;
    *(&v132 + 3) = 1.0 - v16;
    v133 = v14;
    v134 = v8;
    v78 = *a4[6].f32;
    v81 = *a5;
    v83 = a5[1];
    v94 = a5[2];
    v100 = a5[3];
    v22 = *(a6 + 96);
    v23 = *(a6 + 112);
    v25 = *(a6 + 128);
    v24 = *(a6 + 144);
    v85 = v22;
    v87 = v23;
    v96 = v25;
    v98 = v24;
    v102 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*a4[4].f32)), v23, a4[4], 1), v25, *a4[4].f32, 2), v24, *a4[4].f32, 3);
    v104 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*a4[2].f32)), v23, a4[2], 1), v25, *a4[2].f32, 2), v24, *a4[2].f32, 3);
    v26 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v102, v102), v102, 0xCuLL), vnegq_f32(v104)), v102, vextq_s8(vuzp1q_s32(v104, v104), v104, 0xCuLL));
    v106 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*a4->f32)), v23, *a4, 1), v25, *a4->f32, 2), v24, *a4->f32, 3);
    v27 = vmulq_f32(v106, vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL));
    v28 = v27.f32[2] + vaddv_f32(*v27.f32);
    if (_ZF)
    {
      v13 = 1;
    }

    v93 = v13;
    if (v28 < 0.0)
    {
      v15 = -1.0;
    }

    v79 = v15;
    v29 = *(a6 + 40);
    v135[0] = *(a6 + 24);
    v135[1] = v29;
    v136 = *(a6 + 56);
    sub_1AF6B06C0(a8, v135, 0x200000000, &v108);
    if (v108)
    {
      v92 = v115;
      if (v115 >= 1)
      {
        v91 = v112;
        if (v112)
        {
          v30 = 0;
          v31 = vmulq_f32(v106, v106);
          v32 = vmulq_f32(v104, v104);
          v33 = vadd_f32(vzip1_s32(*v31.i8, *v32.i8), vzip2_s32(*v31.i8, *v32.i8));
          v34 = vextq_s8(v31, v31, 8uLL);
          *v34.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v34.f32, *&vextq_s8(v32, v32, 8uLL)), v33));
          v35 = vmulq_f32(v102, v102);
          v34.i32[2] = sqrtf(v35.f32[2] + vaddv_f32(*v35.f32));
          v36 = vmulq_n_f32(v34, v79);
          v37 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v85, v78.f32[0]), v87, *v78.f32, 1), v96, v78, 2), v98, v78, 3), 0, v102), 0, v104), 0, v106);
          v38 = fmaxf(fmaxf(v36.f32[0], v36.f32[2]), v36.f32[1]) * 0.5;
          v39 = vsubq_f32(v37, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v85, v100.f32[0]), v87, *v100.f32, 1), v96, v100, 2), v98, v100, 3), 0, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v85, v94.f32[0]), v87, *v94.f32, 1), v96, v94, 2), v98, v94, 3)), 0, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v85, v83.f32[0]), v87, *v83.f32, 1), v96, v83, 2), v98, v83, 3)), 0, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v85, v81.f32[0]), v87, *v81.f32, 1), v96, v81, 2), v98, v81, 3)));
          v39.i32[3] = 0;
          v86 = v39;
          v88 = v37;
          v84 = v111;
          v82 = v113;
          v40 = *(v113 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v105 = *(v114 + 32);
          v116 = v108;
          v117 = v109;
          v118 = v110;
          v80 = v40;
          v89 = a3;
          v90 = a6;
          v107 = v114;
          do
          {
            v103 = v30;
            v41 = (v84 + 48 * v30);
            v42 = *v41;
            v43 = v41[1];
            v44 = v41[2];
            v46 = *(v41 + 2);
            v45 = *(v41 + 3);
            v47 = *(v41 + 4);
            v48 = *(v41 + 5);
            if (v40)
            {
              v49 = *(v48 + 376);

              os_unfair_lock_lock(v49);
              os_unfair_lock_lock(*(v48 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v105);
            v50 = v107;
            v97 = *(v107 + 64);
            v99 = *(v107 + 48);
            v95 = *(v107 + 80);
            v51 = *(*(*(*(v48 + 40) + 16) + 32) + 16) + 1;
            *(v107 + 48) = ecs_stack_allocator_allocate(*(v107 + 32), 48 * v51, 8);
            *(v107 + 56) = v51;
            *(v107 + 72) = 0;
            *(v107 + 80) = 0;
            *(v107 + 64) = 0;
            *&v119 = v82;
            *(&v119 + 1) = v48;
            v101 = v48;
            v120 = v107;
            v121 = v44;
            v122 = (v43 - v42 + v44);
            v123 = v92;
            v124 = v42;
            v125 = v43;
            v126 = 0;
            v127 = 0;
            v128 = 1;
            v129 = v46;
            v130 = v45;
            v131 = v47;
            sub_1AFA1AC6C(&v119, &v132, v90, v137 | (v93 << 32), v89, v88, v86, v38, a1);
            v52 = *(v107 + 48);
            v53 = *(v107 + 64);
            if (!v53)
            {
              v75 = *(v107 + 56);
              v76 = *(v107 + 32);
              v77 = v103;
              goto LABEL_46;
            }

            for (i = 0; i != v53; ++i)
            {
              v56 = (v52 + 48 * i);
              v57 = *v56;
              v58 = v56[4];
              v59 = *(v50 + 72);
              if (v59)
              {
                _ZF = v57 == v59;
              }

              else
              {
                _ZF = 0;
              }

              if (_ZF)
              {
                goto LABEL_19;
              }

              v61 = v116;
              if (!v116[11])
              {
                goto LABEL_19;
              }

              v62 = v56[2];
              v63 = v116 + 41;
              v64 = v116[9];
              if (v64 >= 0x10)
              {
                v65 = &v63[v116[8]];
                v66 = v64 >> 4;
                v67 = v116 + 41;
                while (*v65 != v57)
                {
                  ++v67;
                  v65 += 16;
                  if (!--v66)
                  {
                    goto LABEL_35;
                  }
                }

                v68 = v67[v116[10]];
                v69 = v68 > 5;
                v70 = (1 << v68) & 0x23;
                if (v69 || v70 == 0)
                {
LABEL_19:

                  v58(v55);

                  goto LABEL_20;
                }
              }

LABEL_35:
              if (swift_conformsToProtocol2() && v62)
              {
                if (sub_1AF5FC8D8(v62))
                {
                  goto LABEL_19;
                }

                v72 = v61[9];
                if (v72 < 0x10)
                {
                  goto LABEL_19;
                }

                v73 = &v63[v61[8]];
                v74 = 16 * (v72 >> 4);
                while (*v73 != v62)
                {
                  v73 += 16;
                  v74 -= 16;
                  if (!v74)
                  {
                    goto LABEL_19;
                  }
                }
              }

LABEL_20:
              v50 = v107;
            }

            v75 = *(v107 + 56);
            v52 = *(v107 + 48);
            v76 = *(v107 + 32);
            v77 = v103;
            if (*(v107 + 64) >= 1)
            {
              swift_arrayDestroy();
            }

LABEL_46:
            v40 = v80;
            ecs_stack_allocator_deallocate(v76, v52, 48 * v75);
            *(v50 + 48) = v99;
            *(v50 + 64) = v97;
            *(v50 + 80) = v95;
            sub_1AF62D29C(v101);
            ecs_stack_allocator_pop_snapshot(v105);
            if (v80)
            {
              os_unfair_lock_unlock(*(v101 + 344));
              os_unfair_lock_unlock(*(v101 + 376));
            }

            v30 = v77 + 1;
          }

          while (v30 != v91);
        }
      }

      sub_1AF5D1564(&v108);
    }
  }
}

uint64_t sub_1AFA19F30(uint64_t a1, unint64_t a2)
{
  v3 = sub_1AFA09D74(a1, v9);
  if (v9[28])
  {
    v4 = v9[11];
    MEMORY[0x1EEE9AC00](v3, v9[7]);
    v8[2] = v9;
    sub_1AF63291C(0, v5, 1, a2 | ((HIDWORD(a2) & 1) << 32), v6, sub_1AFA09DD0, v8, v4);
    ecs_stack_allocator_deallocate(*(v4 + 32), v9[26], 80 * v9[27]);
  }

  sub_1AFA1C110(v9);
  return sub_1AFA09D20(v9);
}

void sub_1AFA1A00C(uint64_t a1, uint64_t a2, void *a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  v138 = a1;
  v135 = a6;
  v136 = a7;
  v133 = a4;
  v134 = a5;
  if (qword_1EB637250 != -1)
  {
    swift_once();
  }

  v170[0] = xmmword_1EB6C3578;
  v170[1] = unk_1EB6C3588;
  v171 = qword_1EB6C3598;
  v166 = *(a3 + 9);
  v167 = *(a3 + 11);
  v168 = *(a3 + 13);
  v169 = *(a3 + 15);
  v163[0] = *(a3 + 1);
  v163[1] = *(a3 + 3);
  v164 = *(a3 + 5);
  v165 = *(a3 + 7);
  if (BYTE12(v164))
  {
    v9 = 0x200000000;
  }

  else
  {
    v9 = DWORD2(v164);
  }

  sub_1AF6B06C0(a2, v170, v9, v155);
  if (*&v155[0])
  {
    if (v158 > 0)
    {
      v126 = *(&v156 + 1);
      if (*(&v156 + 1))
      {
        v125 = *(&v155[2] + 1);
        v130 = *(&v157 + 1);
        v129 = *(*(&v157 + 1) + 32);
        v10 = *(v157 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v160 = *&v155[0];
        v161 = *(v155 + 8);
        v162 = *(&v155[1] + 8);
        v154[2] = v155[2];
        v154[3] = v156;
        v154[4] = v157;
        v154[5] = v158;
        v154[0] = v155[0];
        v154[1] = v155[1];
        sub_1AF5DD298(v154, &v145);
        v11 = 0;
        v12 = 0;
        v132 = 0x80000001AFF43D40;
        v143 = a3;
        v124 = v10;
        do
        {
          v128 = v11;
          v13 = (v125 + 48 * v11);
          v14 = *v13;
          v142 = v13[1];
          v15 = *(v13 + 2);
          v16 = *(v13 + 3);
          v18 = *(v13 + 4);
          v17 = *(v13 + 5);
          v144.i64[0] = v12;
          if (v10)
          {
            v19 = *(v17 + 376);

            os_unfair_lock_lock(v19);
            os_unfair_lock_lock(*(v17 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v129);

          v131 = v17;
          v21 = v130;
          sub_1AF630914(v20, v130, v159);

          v22 = sub_1AF64B110(&type metadata for ParticleSphereCollider, &off_1F2553488, v15, v16, v18, v21);
          v23 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v15, v16, v18, v21);
          v24 = v21;
          v25 = v131;
          v26 = sub_1AF64B110(&type metadata for LastFrameWorldTransform, &off_1F2529EB0, v15, v16, v18, v24);
          if (v15)
          {
            v27 = v141;
            if (v18)
            {
              LODWORD(v139[0]) = *(v138 + 20);
              v28 = v22 + 12;
              v29 = (v26 + 32);
              v30 = (v23 + 32);
              v12 = v144.i64[0];
              do
              {
                if ((v139[0] & *(v28 + 8)) != 0)
                {
                  v142 = v18;
                  v38 = *(v138 + 16);
                  v39 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v133, COERCE_FLOAT(*v30[-4].f32)), v134, v30[-4], 1), v135, *v30[-4].f32, 2), v136, *v30[-4].f32, 3);
                  v40 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v133, COERCE_FLOAT(*v30[-2].f32)), v134, v30[-2], 1), v135, *v30[-2].f32, 2), v136, *v30[-2].f32, 3);
                  v41 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v133, COERCE_FLOAT(*v30->f32)), v134, *v30, 1), v135, *v30->f32, 2), v136, *v30->f32, 3);
                  v42 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v133, COERCE_FLOAT(*v30[2].f32)), v134, v30[2], 1), v135, *v30[2].f32, 2), v136, *v30[2].f32, 3);
                  v43 = fminf(fmaxf(*(v28 - 4) + *(v138 + 8), 0.0), 1.0);
                  v44 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v133, COERCE_FLOAT(*v29[-4].f32)), v134, v29[-4], 1), v135, *v29[-4].f32, 2), v136, *v29[-4].f32, 3);
                  v45 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v133, COERCE_FLOAT(*v29[-2].f32)), v134, v29[-2], 1), v135, *v29[-2].f32, 2), v136, *v29[-2].f32, 3);
                  v46 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v133, COERCE_FLOAT(*v29->f32)), v134, *v29, 1), v135, *v29->f32, 2), v136, *v29->f32, 3);
                  v47 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v133, COERCE_FLOAT(*v29[2].f32)), v134, v29[2], 1), v135, *v29[2].f32, 2), v136, *v29[2].f32, 3);
                  v48 = 1.0 - fminf(fmaxf(*v28 + *(v138 + 12), 0.0), 1.0);
                  v49 = fminf(fmaxf(*(v28 - 8) + *(v138 + 4), 0.0), 1.0);
                  v50 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL), vnegq_f32(v40)), v41, vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL));
                  v51 = vmulq_f32(v39, vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL));
                  v52 = (v51.f32[2] + vaddv_f32(*v51.f32)) < 0.0;
                  v53 = vmulq_f32(v39, v39);
                  v54 = vmulq_f32(v40, v40);
                  v55 = vadd_f32(vzip1_s32(*v53.i8, *v54.i8), vzip2_s32(*v53.i8, *v54.i8));
                  v56 = -1.0;
                  if (!v52)
                  {
                    v56 = 1.0;
                  }

                  v57 = vextq_s8(v53, v53, 8uLL);
                  *v57.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v57.f32, *&vextq_s8(v54, v54, 8uLL)), v55));
                  v58 = vmulq_f32(v41, v41);
                  v57.i32[2] = sqrtf(v58.f32[2] + vaddv_f32(*v58.f32));
                  v59 = vmulq_n_f32(v57, v56);
                  v60 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v42, 0, v41), 0, v40), 0, v39);
                  v61 = fmaxf(fmaxf(v59.f32[0], v59.f32[2]), v59.f32[1]) * 0.5;
                  v62 = vsubq_f32(v60, vmlaq_f32(vmlaq_f32(vmlaq_f32(v47, 0, v46), 0, v45), 0, v44));
                  v60.i32[3] = v27.i32[3];
                  v144 = v60;
                  v62.i32[3] = 0;
                  v141 = v62;
                  v63 = v38 * 0.5;
                  sub_1AFB943A8();
                  v64 = *(v28 + 12);
                  v145 = v65;
                  v146 = v43;
                  v147 = v48;
                  v148 = v61;
                  v149 = v144;
                  v150 = v141;
                  v151 = v49;
                  v152 = v64;
                  v153 = v63;
                  if (*a3)
                  {
                    ObjectType = swift_getObjectType();
                    type metadata accessor for particle_sphere_collider_uniforms(0);
                    sub_1AF6F4524(&v145, 1, ObjectType, v67, v68, v69, v70, v71);
                  }

                  v31 = a3[18];
                  v32 = *(*&v163[0] + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
                  v33 = *(*&v163[0] + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
                  v141.i64[0] = v33;

                  v34 = v164;

                  v140 = &v123;
                  MEMORY[0x1EEE9AC00](v35, v36);
                  v37 = v137;
                  *(&v123 - 10) = v143;
                  *(&v123 - 9) = v37;
                  *(&v123 - 8) = 0xD000000000000018;
                  *(&v123 - 7) = v132;
                  *(&v123 - 6) = 0;
                  *(&v123 - 5) = v31;
                  *(&v123 - 4) = 0;
                  *(&v123 - 24) = v32;
                  a3 = v143;
                  *(&v123 - 2) = v33;
                  *(&v123 - 1) = v163;
                  sub_1AFCBF008(v34, sub_1AFA09F2C);

                  v27 = v144;
                  v18 = v142;
                }

                v28 += 28;
                v29 += 8;
                v30 += 8;
                --v18;
              }

              while (v18);
              v141 = v27;
              v25 = v131;
            }

            else
            {
              v12 = v144.i64[0];
            }
          }

          else
          {
            v72 = v142 + 1;
            v73 = v22 - 24;
            v74 = v23 - 32;
            v75 = (v26 - 32);
            v12 = v144.i64[0];
LABEL_26:
            v76 = v73 + 28 * v14;
            v77 = (v74 + (v14 << 6));
            v78 = &v75[8 * v14];
            while (v72 != ++v14)
            {
              v79 = v76 + 28;
              v77 += 8;
              v78 += 8;
              v80 = *(v76 + 44);
              v76 += 28;
              if ((*(v138 + 20) & v80) != 0)
              {
                v140 = v75;
                v142 = v74;
                v144.i64[0] = v73;
                v81 = *(v138 + 16);
                v82 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v133, COERCE_FLOAT(*v77[-4].f32)), v134, v77[-4], 1), v135, *v77[-4].f32, 2), v136, *v77[-4].f32, 3);
                v83 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v133, COERCE_FLOAT(*v77[-2].f32)), v134, v77[-2], 1), v135, *v77[-2].f32, 2), v136, *v77[-2].f32, 3);
                v84 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v133, COERCE_FLOAT(*v77->f32)), v134, *v77, 1), v135, *v77->f32, 2), v136, *v77->f32, 3);
                v85 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v133, COERCE_FLOAT(*v77[2].f32)), v134, v77[2], 1), v135, *v77[2].f32, 2), v136, *v77[2].f32, 3);
                v86 = fminf(fmaxf(*(v79 + 4) + *(v138 + 8), 0.0), 1.0);
                v87 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v133, COERCE_FLOAT(*v78[-4].f32)), v134, v78[-4], 1), v135, *v78[-4].f32, 2), v136, *v78[-4].f32, 3);
                v88 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v133, COERCE_FLOAT(*v78[-2].f32)), v134, v78[-2], 1), v135, *v78[-2].f32, 2), v136, *v78[-2].f32, 3);
                v89 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v133, COERCE_FLOAT(*v78->f32)), v134, *v78, 1), v135, *v78->f32, 2), v136, *v78->f32, 3);
                v90 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v133, COERCE_FLOAT(*v78[2].f32)), v134, v78[2], 1), v135, *v78[2].f32, 2), v136, *v78[2].f32, 3);
                v91 = 1.0 - fminf(fmaxf(*(v79 + 8) + *(v138 + 12), 0.0), 1.0);
                v92 = fminf(fmaxf(*v79 + *(v138 + 4), 0.0), 1.0);
                v93 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL), vnegq_f32(v83)), v84, vextq_s8(vuzp1q_s32(v83, v83), v83, 0xCuLL));
                v94 = vmulq_f32(v82, vextq_s8(vuzp1q_s32(v93, v93), v93, 0xCuLL));
                v52 = (v94.f32[2] + vaddv_f32(*v94.f32)) < 0.0;
                v95 = vmulq_f32(v82, v82);
                v96 = vmulq_f32(v83, v83);
                v97 = vadd_f32(vzip1_s32(*v95.i8, *v96.i8), vzip2_s32(*v95.i8, *v96.i8));
                v98 = -1.0;
                if (!v52)
                {
                  v98 = 1.0;
                }

                v99 = vextq_s8(v95, v95, 8uLL);
                *v99.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v99.f32, *&vextq_s8(v96, v96, 8uLL)), v97));
                v100 = vmulq_f32(v84, v84);
                v99.i32[2] = sqrtf(v100.f32[2] + vaddv_f32(*v100.f32));
                v101 = vmulq_n_f32(v99, v98);
                v102 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v85, 0, v84), 0, v83), 0, v82);
                v103 = fmaxf(fmaxf(v101.f32[0], v101.f32[2]), v101.f32[1]) * 0.5;
                v104 = vsubq_f32(v102, vmlaq_f32(vmlaq_f32(vmlaq_f32(v90, 0, v89), 0, v88), 0, v87));
                v102.i32[3] = v127.i32[3];
                v127 = v102;
                v104.i32[3] = 0;
                *v139 = v104;
                v105 = v81 * 0.5;
                v106 = v143;
                sub_1AFB943A8();
                v107 = *(v79 + 20);
                v145 = v108;
                v146 = v86;
                v147 = v91;
                v148 = v103;
                v149 = v127;
                v150 = *v139;
                v151 = v92;
                v152 = v107;
                v153 = v105;
                if (*v106)
                {
                  v109 = swift_getObjectType();
                  type metadata accessor for particle_sphere_collider_uniforms(0);
                  sub_1AF6F4524(&v145, 1, v109, v110, v111, v112, v113, v114);
                }

                v115 = v143;
                v116 = v143[18];
                v117 = *(*&v163[0] + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
                v118 = *(*&v163[0] + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
                v139[0] = v118;

                v119 = v164;

                v123 = &v123;
                MEMORY[0x1EEE9AC00](v120, v121);
                v122 = v137;
                *(&v123 - 10) = v115;
                *(&v123 - 9) = v122;
                *(&v123 - 8) = 0xD000000000000018;
                *(&v123 - 7) = v132;
                *(&v123 - 6) = 0;
                *(&v123 - 5) = v116;
                *(&v123 - 4) = 0;
                *(&v123 - 24) = v117;
                *(&v123 - 2) = v118;
                *(&v123 - 1) = v163;
                sub_1AFCBF008(v119, sub_1AFA09E00);

                v25 = v131;
                v73 = v144.i64[0];
                v74 = v142;
                v75 = v140;
                goto LABEL_26;
              }
            }

            a3 = v143;
          }

          sub_1AF630994(v130, &v160, v159);
          sub_1AF62D29C(v25);
          ecs_stack_allocator_pop_snapshot(v129);
          v10 = v124;
          if (v124)
          {
            os_unfair_lock_unlock(*(v25 + 344));
            os_unfair_lock_unlock(*(v25 + 376));
          }

          v11 = v128 + 1;
        }

        while (v128 + 1 != v126);
        sub_1AF5D1564(v155);
      }
    }

    sub_1AF5D1564(v155);
  }
}

uint64_t sub_1AFA1AA2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA087DC(0, &qword_1EB641FA0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17 - v9;
  v17 = xmmword_1AFE916A0;
  v18 = 0xFF00000000;
  v19 = 0;
  sub_1AFA062DC(a1, 0);
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v12 = a1[3];
  v13 = a1[4];
  sub_1AF441150(a1, v12);
  if (sub_1AF694FF8(2024, v12, v13))
  {
    v20 = 10;
    v14 = sub_1AFDFE718();
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v14 = v19;
  }

  v15 = v18;
  v16 = HIDWORD(v18);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v17;
  *(a2 + 16) = v15;
  *(a2 + 20) = v16;
  *(a2 + 24) = v14 & 1;
  return result;
}

uint64_t sub_1AFA1AC6C(__int128 *a1, __int128 *a2, uint64_t a3, unint64_t a4, uint64_t a5, __n128 a6, float32x4_t a7, float a8, float a9)
{
  v234 = *MEMORY[0x1E69E9840];
  v13 = *(a1 + 11);
  v14 = *(a1 + 12);
  v15 = *(a1 + 13);
  v16 = *(a1 + 1);
  v17 = *(a1 + 2);
  v199 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v13, v14, v15, v17);
  v18 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v13, v14, v15, v17);
  v182 = sub_1AF9C5D1C();
  v194 = v19;
  v198 = sub_1AF9C5D08();
  v197 = v20;
  v181 = sub_1AF9C5E38();
  v193 = v21;
  v210 = *a2;
  v22 = a1[5];
  v227 = a1[6];
  v23 = a1[4];
  v226 = v22;
  v225 = v23;
  v24 = a1[2];
  v224 = a1[3];
  v25 = a1[1];
  v221 = *a1;
  v222 = v25;
  v213 = &off_1F2553AE0;
  v26 = *(a2 + 2);
  v212 = &type metadata for CollisionProperties;
  v211 = v26;
  v207 = a3;
  v27 = *(a3 + 16);
  v214 = a7;
  v223 = v24;
  v28 = *(a1 + 6);
  v29 = *(a1 + 7);
  v30 = v17[4];

  v177 = ecs_stack_allocator_allocate(v30, 8 * (v29 - v28), 8);
  v228 = v177;
  v229 = v29 - v28;
  v230 = 0;
  sub_1AF441194(&v210, v215);
  v219 = a9;
  v218 = v27;
  sub_1AF649C6C(*(v16 + 40), &type metadata for Anchored, v209);
  v185 = v209[0];
  v220 = v209[0];
  v31 = ecs_stack_allocator_allocate(v17[4], 80 * (v29 - v28), 16);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v210);
  v38 = v197;
  v39 = a6.n128_u64[0];
  v40 = a9;
  v41 = a5;
  v176 = v31;
  v231 = v31;
  v232 = v29 - v28;
  v233 = 0;
  v42 = v198;
  v43 = v199;
  if (v29 != v28)
  {
    v179 = 0;
    v180 = 0;
    v45 = *(v207 + 80) * 0.5;
    __asm { FMOV            V16.4S, #1.0 }

    v51 = -1.0;
    v184 = _Q16;
    do
    {
      if (v38)
      {
        v55 = _Q16;
        HIDWORD(v55) = HIDWORD(v35);
        v35 = v55;
      }

      else
      {
        v55 = *(v42 + 16 * v28);
      }

      v34.f32[0] = v45 * fmaxf(fmaxf(*&v55, *(&v55 + 2)), *(&v55 + 1));
      v56 = 16 * v28;
      v57 = *(v18 + 16 * v28);
      v58 = vmuls_lane_f32(v40, v57, 2);
      *v33.f32 = vmul_n_f32(*v57.f32, v40);
      v59 = v33;
      v59.f32[2] = v58;
      if (*(v41 + 24))
      {
        v34.f32[0] = -v34.f32[0];
      }

      v60 = vmulq_f32(v59, v59);
      v61 = v60.f32[2] + vaddv_f32(*v60.f32);
      if (v61 < 0.00000011921)
      {
        goto LABEL_6;
      }

      *v37.f32 = vsub_f32(*(v43 + 16 * v28), *v33.f32);
      v62 = COERCE_FLOAT(*(v43 + v56 + 8)) - v58;
      v63 = v34.f32[0] + a8;
      *v34.f32 = vsub_f32(*v37.f32, v39);
      v34.f32[2] = v62 - a6.n128_f32[2];
      v33 = vmulq_f32(v59, v34);
      v33.f32[0] = v33.f32[2] + vaddv_f32(*v33.f32);
      v34 = vmulq_f32(v34, v34);
      v34.f32[0] = (v33.f32[0] * v33.f32[0]) - (v61 * ((v34.f32[2] + vaddv_f32(*v34.f32)) - (v63 * v63)));
      if (v34.f32[0] < 0.0)
      {
        goto LABEL_6;
      }

      v64 = sqrtf(v34.f32[0]);
      if (!*(v41 + 24))
      {
        v64 = -v64;
      }

      v65 = (v64 - v33.f32[0]) / v61;
      if (v65 < 0.0 || v65 > 1.0)
      {
        goto LABEL_6;
      }

      v37.f32[2] = v62;
      v186 = v65;
      v66 = vmlaq_n_f32(v37, v59, v65);
      v203 = v66;
      v67 = v66.f32[2];
      if (*(v41 + 24))
      {
        v68 = v51;
      }

      else
      {
        v68 = 1.0;
      }

      *v32.f32 = vsub_f32(*v66.f32, v39);
      v32.f32[2] = v66.f32[2] - a6.n128_f32[2];
      v69 = vmulq_f32(v32, v32);
      *&v70 = v69.f32[2] + vaddv_f32(*v69.f32);
      *v69.f32 = vrsqrte_f32(v70);
      *v69.f32 = vmul_f32(*v69.f32, vrsqrts_f32(v70, vmul_f32(*v69.f32, *v69.f32)));
      v71 = vmulq_n_f32(v32, vmul_f32(*v69.f32, vrsqrts_f32(v70, vmul_f32(*v69.f32, *v69.f32))).f32[0]);
      *v69.f32 = vmul_n_f32(*v71.f32, v68);
      v191 = vmuls_lane_f32(v68, v71, 2);
      v192 = v69;
      v72.i64[0] = v69.i64[0];
      v72.i64[1] = LODWORD(v191);
      v208 = v72;
      v195 = v36;
      v196 = v35;
      if (!*(v41 + 24))
      {
        if (v194)
        {
          v174 = 0;
          v172 = 0;
          if ((v193 & 1) == 0)
          {
            goto LABEL_27;
          }

LABEL_39:
          v74 = 0;
        }

        else
        {
          v97 = (v182 + 16 * v28);
          v174 = *v97;
          v172 = v97[1];
          if (v193)
          {
            goto LABEL_39;
          }

LABEL_27:
          v74 = *(v181 + 4 * v28);
        }

        v98 = v216;
        v99 = v217;
        sub_1AF441150(v215, v216);
        v100 = (*(v99 + 56))(v98, v99);
        if (v100 > 0.0)
        {
          if (v100 >= 1.0 || (v101 = v100, v102 = drand48(), v101 > v102))
          {
            v177[v179++] = v28;
            v230 = v179;
          }
        }

        if (v185)
        {
          *v103.f32 = vsub_f32(*v203.f32, *(v43 + 16 * v28));
          v103.f32[2] = v67 - COERCE_FLOAT(*(v43 + v56 + 8));
          v103.i32[3] = 0;
          v189 = v103;
          v104 = v103;
          v170 = *(v18 + 16 * v28);
          v104.i32[3] = HIDWORD(v170);
          *(v18 + 16 * v28) = v104;
          v105 = v216;
          v106 = v217;
          sub_1AF441150(v215, v216);
          v107 = (*(v106 + 8))(v105, v106);
          v108 = v216;
          v109 = v217;
          sub_1AF441150(v215, v216);
          (*(v109 + 32))(v108, v109);
          v111 = v189;
          v111.i32[3] = v178.i32[3];
          v112 = vaddq_f32(v111, a7);
          v113 = vmulq_f32(v208, v112);
          v114 = v113.f32[2] + vaddv_f32(*v113.f32);
          v190 = v111;
          v115 = v111;
          if (v114 < 0.0)
          {
            v116 = vmulq_n_f32(v208, v114);
            v115 = vmlaq_n_f32(vmulq_n_f32(v116, -v107), vsubq_f32(v112, v116), v110);
          }

          v115.i32[3] = HIDWORD(v170);
          v171 = v115;
          *(v18 + 16 * v28) = v115;
          v43 = v199;
        }

        else
        {
          v139 = v216;
          v140 = v217;
          sub_1AF441150(v215, v216);
          v141 = (*(v140 + 8))(v139, v140);
          v142 = v216;
          v143 = v217;
          v43 = v199;
          sub_1AF441150(v215, v216);
          (*(v143 + 32))(v142, v143);
          v145 = *(v199 + 16 * v28);
          v146 = v145;
          v146.i32[3] = v166;
          v147 = *(v18 + 16 * v28);
          v148 = v147;
          v148.i32[3] = v167;
          v149 = vaddq_f32(v148, a7);
          v150 = vmulq_f32(v208, v149);
          v151 = v150.f32[2] + vaddv_f32(*v150.f32);
          v152 = v146;
          v153 = v148;
          if (v151 < 0.0)
          {
            v154 = vmulq_n_f32(v208, v151);
            v153 = vmlaq_n_f32(vmulq_n_f32(v154, -v141), vsubq_f32(v149, v154), v144);
            v152 = vmlaq_n_f32(vmlaq_f32(v203, vdupq_n_s32(0x38D1B717u), v208), v153, (1.0 - v186) * a9);
          }

          v153.i32[3] = v147.i32[3];
          v171 = v153;
          *(v18 + 16 * v28) = v153;
          v152.i32[3] = v145.i32[3];
          *(v199 + 16 * v28) = v152;
          v190 = v178;
        }

        v155 = v216;
        v156 = v217;
        sub_1AF441150(v215, v216);
        v157 = (*(v156 + 80))(v155, v156);
        if (v157 > 0.0)
        {
          if (v157 >= 1.0 || (v158 = v157, v159 = drand48(), v158 > v159))
          {
            *v32.f32 = vadd_f32(*v203.f32, vmul_f32(*v192.f32, vdup_n_s32(0x3C23D70Au)));
            v32.f32[2] = v67 + (v191 * 0.01);
            v32.i32[3] = 0;
            v160 = v171;
            v160.i32[3] = v163;
            LOBYTE(v210) = v194 & 1;
            v209[0] = v193 & 1;
            v161 = &v176[10 * v180];
            *v161 = v32;
            v161[1] = v208;
            v161[2] = v160;
            v161[3].i64[0] = v174;
            v161[3].i64[1] = v172;
            v161[4].i8[0] = v194 & 1;
            v161[4].i32[1] = v74;
            v161[4].i8[8] = v193 & 1;
            v233 = ++v180;
          }
        }

        v178 = v190;
        v36 = v195;
        v35 = v196;
        v41 = a5;
        v40 = a9;
        v39 = a6.n128_u64[0];
        v42 = v198;
        v38 = v197;
        _Q16 = v184;
        goto LABEL_6;
      }

      if (v194)
      {
        v168 = 0;
        v169 = 0;
        if ((v193 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v75 = (v182 + 16 * v28);
        v168 = v75[1];
        v169 = *v75;
        if ((v193 & 1) == 0)
        {
LABEL_24:
          v73 = *(v181 + 4 * v28);
          goto LABEL_30;
        }
      }

      v73 = 0;
LABEL_30:
      v76 = v216;
      v77 = v217;
      sub_1AF441150(v215, v216);
      v78 = (*(v77 + 56))(v76, v77);
      if (v78 > 0.0)
      {
        if (v78 >= 1.0 || (v79 = v78, v80 = drand48(), v81 = v79 <= v80, v51 = -1.0, !v81))
        {
          v177[v179++] = v28;
          v230 = v179;
        }
      }

      v82.i64[1] = v192.i64[1];
      *v82.f32 = vadd_f32(*v203.f32, vmul_n_f32(*v192.f32, v63 * 0.01));
      v173 = v82;
      v175 = v67 + ((v63 * 0.01) * v191);
      if (v185)
      {
        *v83.f32 = vsub_f32(*v82.f32, *(v43 + 16 * v28));
        v83.f32[2] = (v67 + ((v63 * 0.01) * v191)) - COERCE_FLOAT(*(v43 + v56 + 8));
        v83.i32[3] = 0;
        v204 = v83;
        v84 = v83;
        v187 = *(v18 + 16 * v28);
        v84.i32[3] = HIDWORD(v187);
        *(v18 + 16 * v28) = v84;
        v85 = v216;
        v86 = v217;
        sub_1AF441150(v215, v216);
        v87 = (*(v86 + 8))(v85, v86);
        v88 = v216;
        v89 = v217;
        sub_1AF441150(v215, v216);
        (*(v89 + 32))(v88, v89);
        v91 = v204;
        v91.i32[3] = v195.i32[3];
        v92 = vaddq_f32(v91, a7);
        v93 = vmulq_f32(v208, v92);
        v94 = v93.f32[2] + vaddv_f32(*v93.f32);
        v205 = v91;
        v95 = v91;
        if (v94 < 0.0)
        {
          v96 = vmulq_n_f32(v208, v94);
          v95 = vmlaq_n_f32(vmulq_n_f32(v96, -v87), vsubq_f32(v92, v96), v90);
        }

        v95.i32[3] = HIDWORD(v187);
        v188 = v95;
        *(v18 + 16 * v28) = v95;
        v43 = v199;
      }

      else
      {
        v117 = v216;
        v118 = v217;
        sub_1AF441150(v215, v216);
        v119 = (*(v118 + 8))(v117, v118);
        v120 = v216;
        v121 = v217;
        v43 = v199;
        sub_1AF441150(v215, v216);
        (*(v121 + 32))(v120, v121);
        v123 = *(v199 + 16 * v28);
        v124 = v123;
        v124.i32[3] = v164;
        v125 = *(v18 + 16 * v28);
        v126 = v125;
        v126.i32[3] = v165;
        v127 = vaddq_f32(v126, a7);
        v128 = vmulq_f32(v208, v127);
        v129 = v128.f32[2] + vaddv_f32(*v128.f32);
        v130 = v124;
        v131 = v126;
        if (v129 < 0.0)
        {
          v132 = v173;
          v132.f32[2] = v175;
          v133 = vmulq_n_f32(v208, v129);
          v131 = vmlaq_n_f32(vmulq_n_f32(v133, -v119), vsubq_f32(v127, v133), v122);
          v130 = vmlaq_n_f32(vmlaq_f32(v132, vdupq_n_s32(0x38D1B717u), v208), v131, (1.0 - v186) * a9);
        }

        v131.i32[3] = v125.i32[3];
        v188 = v131;
        *(v18 + 16 * v28) = v131;
        v130.i32[3] = v123.i32[3];
        *(v199 + 16 * v28) = v130;
        v205 = v195;
      }

      v134 = v216;
      v135 = v217;
      sub_1AF441150(v215, v216);
      v136 = (*(v135 + 80))(v134, v135);
      if (v136 > 0.0)
      {
        if (v136 >= 1.0 || (v137 = v136, v138 = drand48(), v137 > v138))
        {
          v33.i64[1] = v173.i64[1];
          *v52.f32 = vadd_f32(vmul_f32(*v192.f32, vdup_n_s32(0x3C23D70Au)), *v173.f32);
          v52.f32[2] = (v191 * 0.01) + v175;
          v52.i32[3] = 0;
          v32.i32[3] = v162;
          v53 = v188;
          v53.i32[3] = v162;
          LOBYTE(v210) = v194 & 1;
          v209[0] = v193 & 1;
          v54 = &v176[10 * v180];
          *v54 = v52;
          v54[1] = v208;
          v54[2] = v53;
          v54[3].i64[0] = v169;
          v54[3].i64[1] = v168;
          v54[4].i8[0] = v194 & 1;
          v54[4].i32[1] = v73;
          v54[4].i8[8] = v193 & 1;
          v233 = ++v180;
        }
      }

      v41 = a5;
      v36 = v205;
      v40 = a9;
      v39 = a6.n128_u64[0];
      v42 = v198;
      v38 = v197;
      _Q16 = v184;
      v35 = v196;
LABEL_6:
      ++v28;
    }

    while (v29 != v28);
  }

  sub_1AFA19F30(&v214, a4 | ((HIDWORD(a4) & 1) << 32));
  return sub_1AFA09D20(&v214);
}

__n128 initializeWithCopy for ParticleSphereCollider(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

BOOL sub_1AFA1B8FC()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED73B840;
  v7 = 0;
  v8 = 2;
  v9 = 0;
  v10 = 2;
  v11 = 0;
  sub_1AFA1CFD4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for ParticleCollide;
  *(inited + 40) = &off_1F2553690;
  sub_1AF5F58E4(inited, 1, v4);
  swift_setDeallocating();
  sub_1AF6B06C0(v0, v4, 0x200000000, v5);
  sub_1AF692DB0(v4);
  v2 = *&v5[0];
  if (*&v5[0])
  {
    sub_1AF5D1564(v5);
  }

  return v2 != 0;
}

BOOL sub_1AFA1BB28(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1AFA1BB58@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1AFA1BB84@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1AFA1BC44@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

double sub_1AFA1BC9C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 0.0078125;
  *(a1 + 16) = xmmword_1AFE20160;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 68) = 0;
  *(a1 + 72) = 1;
  return result;
}

unint64_t sub_1AFA1BCD8(char a1)
{
  result = 0x6963697473616C65;
  switch(a1)
  {
    case 1:
      v3 = 9;
      goto LABEL_10;
    case 2:
      return result;
    case 3:
      result = 0x6E6F697463697266;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x73726579616CLL;
      break;
    case 6:
      result = 0x696E69666E497369;
      break;
    case 7:
      result = 0x656C62756F447369;
      break;
    case 8:
      result = 0x65747845666C6168;
      break;
    case 9:
      result = 0x61746144666473;
      break;
    case 10:
      result = 0x656469736E69;
      break;
    case 11:
      result = 0x615272656E726F63;
      break;
    case 12:
      result = 1752393069;
      break;
    default:
      v3 = 5;
LABEL_10:
      result = v3 | 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1AFA1BE58(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1AFA1BCD8(*a1);
  v5 = v4;
  if (v3 == sub_1AFA1BCD8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AFA1BEE0()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AFA1BCD8(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA1BF44()
{
  sub_1AFA1BCD8(*v0);
  sub_1AFDFD038();
}

uint64_t sub_1AFA1BF98()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AFA1BCD8(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA1BFF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFA1CC68();
  *a1 = result;
  return result;
}

unint64_t sub_1AFA1C028@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AFA1BCD8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AFA1C070@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFA1CC68();
  *a1 = result;
  return result;
}

uint64_t sub_1AFA1C098(uint64_t a1)
{
  v2 = sub_1AFA08734();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA1C0D4(uint64_t a1)
{
  v2 = sub_1AFA08734();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFA1C110(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[23];
  v4 = a1[24];
  v5 = a1[25];
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v21 = 5;
  if (v5 >= 1)
  {
    if (v5 == *(v1 + 240) - *(v1 + 232))
    {
      sub_1AF63515C(v19, v16);
      v18 = 0;
      v17 = 0uLL;
    }

    else
    {
      sub_1AF63515C(v19, v16);
      *&v17 = v3;
      *(&v17 + 1) = v4;
      v18 = v5;
    }

    v6 = *(v2 + 104);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 104) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_1AF420EA0(0, v6[2] + 1, 1, v6);
      *(v2 + 104) = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      *(v2 + 104) = sub_1AF420EA0(v8 > 1, v9 + 1, 1, v6);
    }

    v10 = *(v2 + 104);
    *(v10 + 16) = v9 + 1;
    v11 = v10 + 72 * v9;
    *(v11 + 32) = v16[0];
    v12 = v16[1];
    v13 = v16[2];
    v14 = v17;
    *(v11 + 96) = v18;
    *(v11 + 64) = v13;
    *(v11 + 80) = v14;
    *(v11 + 48) = v12;
    *(v2 + 104) = v10;
  }

  return sub_1AF635250(v19);
}

uint64_t sub_1AFA1C258(uint64_t a1, uint64_t a2)
{
  result = sub_1AF64B110(&type metadata for ParticleCollisionEvent, &off_1F2553660, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v5 != v6)
  {
    v7 = result;
    v8 = *(a1 + 24);
    v9 = *(a2 + 208);
    result = memmove((result + 80 * v5), (v9 + 80 * v8), 0x49uLL);
    if (v5 + 1 != v6)
    {
      v10 = (v7 + 80 * v5 + 80);
      v11 = ~v5 + v6;
      v12 = (v9 + 80 * v8 + 80);
      do
      {
        result = memmove(v10, v12, 0x49uLL);
        v10 += 80;
        v12 += 80;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

void sub_1AFA1C350(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xFF00000000;
}

float sub_1AFA1C360@<S0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA1CC04(0, &qword_1EB641FA0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  v13 = 0uLL;
  v14 = 0xFF00000000;
  sub_1AFA09EFC(a1, 1);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  if (!v2)
  {
    (*(v7 + 8))(v10, v6);
    result = *&v14;
    v12 = HIDWORD(v14);
    *a2 = v13;
    *(a2 + 16) = result;
    *(a2 + 20) = v12;
  }

  return result;
}

uint64_t sub_1AFA1C4A0(void *a1)
{
  sub_1AFA1CC04(0, &qword_1EB641F58, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  v11 = *v1;
  v12 = *(v1 + 2);
  result = sub_1AFA09EE4(a1, &v11 - v8);
  if (!v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

void sub_1AFA1C5B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = *(a1 + 40);
  v30 = *(a1 + 44);
  v10 = *(a1 + 8);

  v11 = sub_1AF3CD518(v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = HIDWORD(v11);
  v19 = HIDWORD(v13);
  if (v17)
  {
    v20 = 255;
  }

  else
  {
    v20 = HIDWORD(v15);
  }

  if (v17)
  {
    v21 = 0;
  }

  else
  {
    v21 = v15;
  }

  if (v17)
  {
    LODWORD(v19) = 0;
    v22 = 0;
  }

  else
  {
    v22 = v13;
  }

  if (v17)
  {
    LODWORD(v18) = 0;
    v23 = 0;
  }

  else
  {
    v23 = v11;
  }

  *(v5 + 64) = v23;
  *(v5 + 68) = v18;
  *(v5 + 72) = v22;
  *(v5 + 76) = v19;
  *(v5 + 80) = v21;
  *(v5 + 84) = v20;
  if (sub_1AFB94ABC())
  {
    *(v5 + 80) = *(v5 + 80) + *(v5 + 80);
  }

  if (*(v5 + 84))
  {
    sub_1AFB93E58();
    *(v5 + 160) = v24;
    if (v24 != 0.0)
    {
      v25 = *(a1 + 32);

      sub_1AFB95040(v25, &v32);
      v29 = v32;

      if (v33)
      {
        v26 = -1;
      }

      else
      {
        v26 = 0;
      }

      v27 = vdupq_n_s32(v26);
      *(v5 + 96) = vbslq_s8(v27, xmmword_1AFE20150, v29.columns[0]);
      *(v5 + 112) = vbslq_s8(v27, xmmword_1AFE20160, v29.columns[1]);
      *(v5 + 128) = vbslq_s8(v27, xmmword_1AFE20180, v29.columns[2]);
      *(v5 + 144) = vbslq_s8(v27, xmmword_1AFE201A0, v29.columns[3]);
      if (v30)
      {
        v28 = 0x200000000;
      }

      else
      {
        v28 = v31 | 0x100000000;
      }

      sub_1AFA121D4(a2, a3, a4, v28);
      sub_1AFA19530(a2, a3, a4, v28);
      sub_1AFA069E8(a2, a3, a4, v28);
      sub_1AFA0A264(a2, a3, a4, v28);
      sub_1AFA14CB4(a2, a3, a4, v28);

      sub_1AFA0D85C(a2, a3, a4, v28);
    }
  }
}

uint64_t sub_1AFA1C800()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AFA1C864(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1AFA1CD80(a1);
  sub_1AF688940(a1);
  return v2;
}

uint64_t sub_1AFA1C8D0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  v4 = *(a1 + 88);
  v38 = *(a1 + 72);
  v39 = v4;
  v5 = *(a1 + 120);
  v40 = *(a1 + 104);
  v41 = v5;
  v6 = *(a1 + 24);
  v34 = v2;
  v35 = v6;
  v7 = *(a1 + 56);
  v36 = v3;
  v37 = v7;
  v8 = v34;
  v9 = v3;
  swift_retain_n();
  sub_1AFB95040(v9, &v32);
  v30 = v32;

  v10 = v33;
  v11 = *(&v34 + 1);

  v12 = sub_1AF3CD518(v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = *&v16;
  if (v18)
  {
    v20 = 255;
  }

  else
  {
    v20 = HIDWORD(v16);
  }

  if (v18)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v19;
  }

  if (v18)
  {
    v22 = 0;
  }

  else
  {
    v22 = HIDWORD(v14);
  }

  if (v18)
  {
    LODWORD(v14) = 0;
    v23 = 0;
  }

  else
  {
    v23 = HIDWORD(v12);
  }

  if (v18)
  {
    v24 = 0;
  }

  else
  {
    v24 = v12;
  }

  if (v10)
  {
    v25 = -1;
  }

  else
  {
    v25 = 0;
  }

  v26 = vdupq_n_s32(v25);
  v30.columns[3] = vbslq_s8(v26, xmmword_1AFE201A0, v30.columns[3]);
  v30.columns[2] = vbslq_s8(v26, xmmword_1AFE20180, v30.columns[2]);
  v30.columns[1] = vbslq_s8(v26, xmmword_1AFE20160, v30.columns[1]);
  v30.columns[0] = vbslq_s8(v26, xmmword_1AFE20150, v30.columns[0]);
  v27 = sub_1AFB94ABC();
  v28 = v21 + v21;
  v42[0] = v24;
  v42[1] = v23;
  if ((v27 & 1) == 0)
  {
    v28 = v21;
  }

  v42[2] = v14;
  v42[3] = v22;
  *&v42[4] = v28;
  v42[5] = v20;
  sub_1AFA12BD4(v42, v8, a1, v30.columns[0], v30.columns[1], v30.columns[2], v30.columns[3]);
  sub_1AFA1A00C(v42, v8, a1, v30.columns[0], v30.columns[1], v30.columns[2], v30.columns[3]);
  sub_1AFA077D4(v42, v8, a1, v30.columns[0], v30.columns[1], v30.columns[2], v30.columns[3]);
  sub_1AFA0AC14(v42, v8, a1, v30.columns[0], v30.columns[1], v30.columns[2], v30.columns[3]);
  sub_1AFA1618C(v42, v8, a1, v30.columns[0], v30.columns[1], v30.columns[2], v30.columns[3]);
}

__n128 initializeWithCopy for ParticleCollisionEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleCollisionEvent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 73))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ParticleCollisionEvent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 73) = v3;
  return result;
}

void sub_1AFA1CC04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA08734();
    v7 = a3(a1, &type metadata for ParticleCollidableCodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AFA1CC68()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

double sub_1AFA1CCB4()
{
  sub_1AFA1CFD4(0, &qword_1ED72F7D0, &qword_1ED72FFE0, &qword_1ED72FFF0);
  v0 = swift_allocObject();
  *&result = 6;
  *(v0 + 16) = xmmword_1AFE86410;
  *(v0 + 32) = &type metadata for ParticlePlaneCollider;
  *(v0 + 40) = &off_1F25530C8;
  *(v0 + 48) = &type metadata for ParticleSphereCollider;
  *(v0 + 56) = &off_1F2553488;
  *(v0 + 64) = &type metadata for ParticleBoxCollider;
  *(v0 + 72) = &off_1F2552898;
  *(v0 + 80) = &type metadata for ParticleCylinderCollider;
  *(v0 + 88) = &off_1F2552A70;
  *(v0 + 96) = &type metadata for ParticleSDFCollider;
  *(v0 + 104) = &off_1F25532A8;
  *(v0 + 112) = &type metadata for ParticleMeshCollider;
  *(v0 + 120) = &off_1F2552EB8;
  return result;
}

uint64_t sub_1AFA1CD80(uint64_t a1)
{
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0xFF00000000;
  *(v1 + 96) = xmmword_1AFE20150;
  *(v1 + 112) = xmmword_1AFE20160;
  *(v1 + 128) = xmmword_1AFE20180;
  *(v1 + 144) = xmmword_1AFE201A0;
  *(v1 + 160) = 0;
  sub_1AFA1CFD4(0, &qword_1ED72F7D0, &qword_1ED72FFE0, &qword_1ED72FFF0);

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = &type metadata for ParticleCollisionEvent;
  *(inited + 40) = &off_1F2553660;
  *(inited + 48) = &type metadata for NewEvent;
  *(inited + 56) = &off_1F2534448;
  sub_1AFA1CF6C();
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1AFE4C620;
  *(v4 + 56) = &type metadata for EmitterReference;
  *(v4 + 64) = &off_1F2563D20;
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 96) = &type metadata for AnonymousEntity;
  *(v4 + 104) = &off_1F2532728;
  v5 = sub_1AF65AF08(inited, v4);
  swift_setDeallocating();

  swift_setDeallocating();
  sub_1AF5C5358(0, &qword_1ED72C1D0);
  swift_arrayDestroy();
  *(v1 + 16) = v5;
  v6 = *(a1 + 104);
  v11 = *(a1 + 88);
  v12 = v6;
  v13 = *(a1 + 120);
  sub_1AF5C9174(v9);
  v7 = v9[1];
  *(v1 + 24) = v9[0];
  *(v1 + 40) = v7;
  *(v1 + 56) = v10;
  return v1;
}

void sub_1AFA1CF6C()
{
  if (!qword_1ED726A10)
  {
    sub_1AF5C5358(255, &qword_1ED72C1D0);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726A10);
    }
  }
}

void sub_1AFA1CFD4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  if (!*a2)
  {
    sub_1AF624D60(255, a3, a4);
    v5 = sub_1AFDFEA18();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t destroy for CollisionHandler(uint64_t a1)
{
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1 + 16);
}

uint64_t initializeWithCopy for CollisionHandler(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  (**(v4 - 8))(a1 + 16, a2 + 16);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);

  return a1;
}

uint64_t assignWithCopy for CollisionHandler(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_1AF6156AC((a1 + 16), (a2 + 16));
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  v4 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v4;
  v5 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 160) = v5;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  return a1;
}

__n128 initializeWithTake for CollisionHandler(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t assignWithTake for CollisionHandler(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1 + 16);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v6 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v6;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  v7 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v7;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  return a1;
}

uint64_t getEnumTagSinglePayload for CollisionHandler(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CollisionHandler(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AFA1D444()
{
  result = qword_1EB641FA8;
  if (!qword_1EB641FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641FA8);
  }

  return result;
}

unint64_t sub_1AFA1D49C()
{
  result = qword_1EB641FB0;
  if (!qword_1EB641FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641FB0);
  }

  return result;
}

unint64_t sub_1AFA1D4F4()
{
  result = qword_1EB641FB8;
  if (!qword_1EB641FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641FB8);
  }

  return result;
}

unint64_t sub_1AFA1D54C()
{
  result = qword_1EB641FC0;
  if (!qword_1EB641FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641FC0);
  }

  return result;
}

unint64_t sub_1AFA1D5A0(uint64_t a1)
{
  result = sub_1AFA1D5C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AFA1D5C8()
{
  result = qword_1EB641FC8;
  if (!qword_1EB641FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641FC8);
  }

  return result;
}

unint64_t sub_1AFA1D620()
{
  result = qword_1EB641FD0;
  if (!qword_1EB641FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641FD0);
  }

  return result;
}

unint64_t sub_1AFA1D678()
{
  result = qword_1EB641FD8;
  if (!qword_1EB641FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641FD8);
  }

  return result;
}

unint64_t sub_1AFA1D6D0()
{
  result = qword_1EB641FE0;
  if (!qword_1EB641FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641FE0);
  }

  return result;
}

uint64_t sub_1AFA1D750(void *a1)
{
  sub_1AFA1EF24(0, &qword_1EB642008, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA1EED0();
  sub_1AFDFF3F8();
  v12 = 0;
  sub_1AFDFE8E8();
  if (!v1)
  {
    v11 = 1;
    sub_1AFDFE8C8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AFA1D8C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6566694C7265766FLL;
  }

  else
  {
    v3 = 0x726F74636166;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6566694C7265766FLL;
  }

  else
  {
    v5 = 0x726F74636166;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AFA1D968()
{
  if (*v0)
  {
    return 0x6566694C7265766FLL;
  }

  else
  {
    return 0x726F74636166;
  }
}

uint64_t sub_1AFA1D9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F74636166 && a2 == 0xE600000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6566694C7265766FLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1AFA1DA78(uint64_t a1)
{
  v2 = sub_1AFA1EED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA1DAB4(uint64_t a1)
{
  v2 = sub_1AFA1EED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AFA1DAF0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1AFA1DE78(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 4) = v4 & 1;
  }
}

uint64_t sub_1AFA1DBB0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 88);
  v32 = *(a1 + 72);
  v33 = v3;
  v4 = *(a1 + 120);
  v34 = *(a1 + 104);
  v35 = v4;
  v5 = *(a1 + 24);
  v29[0] = v2;
  v29[1] = v5;
  v6 = *(a1 + 56);
  v30 = *(a1 + 40);
  v31 = v6;
  v7 = v2;

  v8 = sub_1AF3CD61C(*(&v7 + 1));

  result = sub_1AFA1E030(v29, v27);
  if ((v28 & 1) == 0)
  {
    v10 = *&v8;
    if ((v8 & 0xFF00000000) == 0x200000000)
    {
      v10 = 1.0;
    }

    v25[0] = v27[0];
    v25[1] = v27[1];
    v25[2] = v27[2];
    v25[3] = v27[3];
    v26 = v10;
    if (*a1)
    {
      ObjectType = swift_getObjectType();
      type metadata accessor for particle_attach_uniforms(0);
      sub_1AF6F4524(v25, 1, ObjectType, v12, v13, v14, v15, v16);
    }

    sub_1AFA1EDD8(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    v24 = 0;
    *(v17 + 16) = xmmword_1AFE431C0;
    *(v17 + 32) = xmmword_1AFE92340;
    *(v17 + 48) = 0;
    *(v17 + 64) = BYTE4(v8) & 1;
    *(v17 + 128) = 13;
    v18 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
    v19 = v30;

    v20 = v18;

    v23 = &v23;
    MEMORY[0x1EEE9AC00](v21, v22);
    sub_1AFCBF008(v19, sub_1AF9D17D4);
  }

  return result;
}

float sub_1AFA1DE78(void *a1)
{
  sub_1AFA1EF24(0, &qword_1EB641FF8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA1EED0();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v14 = 0;
    sub_1AFDFE738();
    v2 = v10;
    v13 = 1;
    sub_1AFDFE718();
    (*(v6 + 8))(v9, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AFA1E030@<X0>(void *a1@<X0>, float32x4_t *a2@<X8>)
{
  v4 = *a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock;
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);

  v7 = v5 == 1 && v6 == 0;
  if (v7 || (v8 = a1[4], sub_1AF3CBE00(v8, v24), (v25 & 1) != 0) || (v22 = v24[1], v23 = v24[0], v19 = v24[3], v21 = v24[2], sub_1AF3C9244(v8, v26), (v27 & 1) != 0))
  {

    v10 = 1;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  else
  {
    v17 = v26[2];
    v18 = v26[3];
    v15 = v26[0];
    v16 = v26[1];
    v28.columns[1] = v22;
    v28.columns[0] = v23;
    v28.columns[3] = v19;
    v28.columns[2] = v21;
    v20 = __invert_f4(v28);

    v10 = 0;
    v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v20.columns[0].f32[0]), v16, *v20.columns[0].f32, 1), v17, v20.columns[0], 2), v18, v20.columns[0], 3);
    v12 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v20.columns[1].f32[0]), v16, *v20.columns[1].f32, 1), v17, v20.columns[1], 2), v18, v20.columns[1], 3);
    v13 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v20.columns[2].f32[0]), v16, *v20.columns[2].f32, 1), v17, v20.columns[2], 2), v18, v20.columns[2], 3);
    v14 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v20.columns[3].f32[0]), v16, *v20.columns[3].f32, 1), v17, v20.columns[3], 2), v18, v20.columns[3], 3);
  }

  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v14;
  a2[4].i8[0] = v10;
  return result;
}

uint64_t sub_1AFA1E194(uint64_t a1)
{
  v2 = *a1;

  if (sub_1AFB9402C() != 2)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v7 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v59 = v7;
      swift_once();
      v7 = v59;
    }

    *v88 = 0;
    sub_1AF0D4F18(v7, v88, 0xD00000000000002DLL, 0x80000001AFF43EA0);
  }

  v3 = *(a1 + 8);

  v4 = sub_1AF3CD61C(v3);

  v5 = *&v4;
  if ((v4 & 0xFF00000000) == 0x200000000)
  {
    v5 = 1.0;
  }

  v74 = v5;
  sub_1AFA1E030(a1, v84);
  if (v85)
  {
  }

  v66 = v84[0];
  v68 = v84[1];
  v70 = v84[2];
  v72 = v84[3];
  if ((v4 & 0x100000000) != 0)
  {
    v96 = *(a1 + 88);
    v97 = *(a1 + 104);
    v98 = *(a1 + 120);
    sub_1AFCC6FC8(2, 1, v92);
    v93 = *v92;
    v94 = *&v92[16];
    v95 = *&v92[32];
    sub_1AF6B06C0(v2, &v93, 0x200000000, v88);
    if (*v88)
    {
      if (v91 > 0)
      {
        v65 = *(&v89 + 1);
        if (*(&v89 + 1))
        {
          v35 = 0;
          v63 = *&v88[40];
          v36 = *(&v90 + 1);
          v37 = *(*(&v90 + 1) + 32);
          v38 = *(v90 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          *v77 = *v88;
          *&v77[8] = *&v88[8];
          *&v77[24] = *&v88[24];
          v60 = v38;
          v61 = v37;
          do
          {
            v39 = (v63 + 48 * v35);
            v40 = *v39;
            v76 = v39[1];
            v41 = *(v39 + 2);
            v42 = *(v39 + 3);
            v43 = *(v39 + 4);
            v44 = *(v39 + 5);
            if (v38)
            {
              v45 = *(v44 + 376);

              os_unfair_lock_lock(v45);
              os_unfair_lock_lock(*(v44 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v37);
            v46 = *(v36 + 64);
            v78 = *(v36 + 48);
            v79 = v46;
            *&v80 = *(v36 + 80);
            v47 = *(*(*(*(v44 + 40) + 16) + 32) + 16) + 1;
            *(v36 + 48) = ecs_stack_allocator_allocate(*(v36 + 32), 48 * v47, 8);
            *(v36 + 56) = v47;
            *(v36 + 72) = 0;
            *(v36 + 80) = 0;
            *(v36 + 64) = 0;
            v48 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v41, v42, v43, v36);
            v49 = sub_1AF64B110(&type metadata for ParticleAge, &off_1F252CBE8, v41, v42, v43, v36);
            if (v41)
            {
              for (; v43; --v43)
              {
                v50 = *v49++;
                v51 = fminf(fmaxf(v50 / v74, 0.0), 1.0);
                *v48->f32 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v66, 1.0 - v51), xmmword_1AFE20150, v51), COERCE_FLOAT(*v48->f32)), vmlaq_n_f32(vmulq_n_f32(v68, 1.0 - v51), xmmword_1AFE20160, v51), *v48, 1), vmlaq_n_f32(vmulq_n_f32(v70, 1.0 - v51), xmmword_1AFE20180, v51), *v48->f32, 2), vmlaq_n_f32(vmulq_n_f32(v72, 1.0 - v51), xmmword_1AFE201A0, v51), *v48->f32, 3);
                v48 += 2;
              }
            }

            else if (v40 != v76)
            {
              v52 = v76 - v40;
              v53 = &v49[v40];
              v54 = &v48[2 * v40];
              do
              {
                v55 = *v53++;
                v56 = fminf(fmaxf(v55 / v74, 0.0), 1.0);
                *v54->f32 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v66, 1.0 - v56), xmmword_1AFE20150, v56), COERCE_FLOAT(*v54->f32)), vmlaq_n_f32(vmulq_n_f32(v68, 1.0 - v56), xmmword_1AFE20160, v56), *v54, 1), vmlaq_n_f32(vmulq_n_f32(v70, 1.0 - v56), xmmword_1AFE20180, v56), *v54->f32, 2), vmlaq_n_f32(vmulq_n_f32(v72, 1.0 - v56), xmmword_1AFE201A0, v56), *v54->f32, 3);
                v54 += 2;
                --v52;
              }

              while (v52);
            }

            sub_1AF630994(v36, v77, &v78);
            sub_1AF62D29C(v44);
            v37 = v61;
            ecs_stack_allocator_pop_snapshot(v61);
            v38 = v60;
            if (v60)
            {
              os_unfair_lock_unlock(*(v44 + 344));
              os_unfair_lock_unlock(*(v44 + 376));
            }

            ++v35;
          }

          while (v35 != v65);
        }

        sub_1AFA1ECFC(v92, sub_1AFA1ED5C);
        return sub_1AF5D1564(v88);
      }

      v80 = *&v88[32];
      v81 = v89;
      v82 = v90;
      v83 = v91;
      v78 = *v88;
      v79 = *&v88[16];
      sub_1AF5DD298(&v78, v77);
      v57 = sub_1AFA1ED5C;
      v58 = v92;
      goto LABEL_71;
    }

    sub_1AFA1ECFC(v92, sub_1AFA1ED5C);
  }

  v96 = *(a1 + 88);
  v97 = *(a1 + 104);
  v98 = *(a1 + 120);
  sub_1AF705094(2, v86);
  v93 = v86[0];
  v94 = v86[1];
  v95 = v87;
  sub_1AF6B06C0(v2, &v93, 0x200000000, v88);
  if (!*v88)
  {
    sub_1AFA1ECFC(v86, sub_1AFA1ECA4);
  }

  if (v91 > 0)
  {
    v64 = *(&v89 + 1);
    if (*(&v89 + 1))
    {
      v67 = vmlaq_n_f32(vmulq_n_f32(v66, v74), xmmword_1AFE20150, 1.0 - v74);
      v69 = vmlaq_n_f32(vmulq_n_f32(v68, v74), xmmword_1AFE20160, 1.0 - v74);
      v71 = vmlaq_n_f32(vmulq_n_f32(v70, v74), xmmword_1AFE20180, 1.0 - v74);
      v73 = vmlaq_n_f32(vmulq_n_f32(v72, v74), xmmword_1AFE201A0, 1.0 - v74);
      v62 = *&v88[40];
      v8 = *(&v90 + 1);
      v75 = *(v90 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v9 = *(*(&v90 + 1) + 32);
      *v92 = *v88;
      *&v92[8] = *&v88[8];
      *&v92[24] = *&v88[24];
      v80 = *&v88[32];
      v81 = v89;
      v82 = v90;
      v83 = v91;
      v78 = *v88;
      v79 = *&v88[16];
      sub_1AF5DD298(&v78, v77);
      v10 = 0;
      do
      {
        v11 = (v62 + 48 * v10);
        v12 = *v11;
        v13 = v11[1];
        v15 = *(v11 + 2);
        v14 = *(v11 + 3);
        v17 = *(v11 + 4);
        v16 = *(v11 + 5);
        if (v75)
        {
          v18 = *(v16 + 376);

          os_unfair_lock_lock(v18);
          os_unfair_lock_lock(*(v16 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v9);
        v19 = *(v8 + 64);
        *v77 = *(v8 + 48);
        *&v77[16] = v19;
        *&v77[32] = *(v8 + 80);
        v20 = *(*(*(*(v16 + 40) + 16) + 32) + 16) + 1;
        *(v8 + 48) = ecs_stack_allocator_allocate(*(v8 + 32), 48 * v20, 8);
        *(v8 + 56) = v20;
        *(v8 + 72) = 0;
        *(v8 + 80) = 0;
        *(v8 + 64) = 0;
        v21 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v15, v14, v17, v8);
        if (v15)
        {
          for (; v17; --v17)
          {
            *v21->f32 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, COERCE_FLOAT(*v21->f32)), v69, *v21, 1), v71, *v21->f32, 2), v73, *v21->f32, 3);
            v21 += 2;
          }
        }

        else if (v12 != v13)
        {
          v22 = v13 - v12;
          v23 = &v21[2 * v12];
          do
          {
            *v23->f32 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, COERCE_FLOAT(*v23->f32)), v69, *v23, 1), v71, *v23->f32, 2), v73, *v23->f32, 3);
            v23 += 2;
            --v22;
          }

          while (v22);
        }

        sub_1AF630994(v8, v92, v77);
        if (*(*(v8 + 104) + 16))
        {

          sub_1AF62F348(v24, v16);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = *(v8 + 104);
          if (isUniquelyReferenced_nonNull_native)
          {
            v27 = v26[2];
            v28 = swift_isUniquelyReferenced_nonNull_native();
            *(v8 + 104) = v26;
            if ((v28 & 1) == 0)
            {
              v26 = sub_1AF420EA0(0, v27, 1, v26);
              *(v8 + 104) = v26;
            }

            sub_1AF43A540(0);
            swift_arrayDestroy();
            if (v27)
            {
              v29 = v26[2] - v27;
              memmove(v26 + 4, &v26[9 * v27 + 4], 72 * v29);
              v26[2] = v29;
            }

            *(v8 + 104) = v26;
          }

          else
          {
            v30 = MEMORY[0x1E69E7CC0];
            if (v26[3] >= 2uLL)
            {
              sub_1AF9FA280();
              v30 = swift_allocObject();
              v31 = j__malloc_size_0(v30);
              v30[2] = 0;
              v30[3] = 2 * ((v31 - 32) / 72);
            }

            *(v8 + 104) = v30;
          }

          if (*(*(v8 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
          {
            v32 = *(v16 + 232);
            v33 = *(v16 + 256);
            if (v32 == v33)
            {
              v34 = *(v16 + 240);
            }

            else
            {
              sub_1AF6497A0(v33, v32);
              v33 = *(v16 + 232);
              v34 = *(v16 + 240);
              if (v34 == v33)
              {
                v34 = 0;
                v33 = 0;
                *(v16 + 232) = 0;
                *(v16 + 240) = 0;
              }
            }

            *(v16 + 248) = v34;
            *(v16 + 256) = v33;
          }
        }

        ecs_stack_allocator_pop_snapshot(v9);
        if (v75)
        {
          os_unfair_lock_unlock(*(v16 + 344));
          os_unfair_lock_unlock(*(v16 + 376));
        }

        ++v10;
      }

      while (v10 != v64);
      sub_1AF5D1564(v88);
    }

    sub_1AFA1ECFC(v86, sub_1AFA1ECA4);

    return sub_1AF5D1564(v88);
  }

  v80 = *&v88[32];
  v81 = v89;
  v82 = v90;
  v83 = v91;
  v78 = *v88;
  v79 = *&v88[16];
  sub_1AF5DD298(&v78, v77);
  v57 = sub_1AFA1ECA4;
  v58 = v86;
LABEL_71:
  sub_1AFA1ECFC(v58, v57);

  sub_1AF5D1564(v88);
  return sub_1AF5D1564(v88);
}

void sub_1AFA1ECA4()
{
  if (!qword_1EB641FE8)
  {
    v0 = type metadata accessor for Query1();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB641FE8);
    }
  }
}

uint64_t sub_1AFA1ECFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFA1ED5C()
{
  if (!qword_1EB641FF0)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB641FF0);
    }
  }
}

void sub_1AFA1EDD8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Attach(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Attach(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AFA1EED0()
{
  result = qword_1EB642000;
  if (!qword_1EB642000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642000);
  }

  return result;
}

void sub_1AFA1EF24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA1EED0();
    v7 = a3(a1, &type metadata for Attach.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFA1EF9C()
{
  result = qword_1EB642010;
  if (!qword_1EB642010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642010);
  }

  return result;
}

unint64_t sub_1AFA1EFF4()
{
  result = qword_1EB642018;
  if (!qword_1EB642018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642018);
  }

  return result;
}

unint64_t sub_1AFA1F04C()
{
  result = qword_1EB642020;
  if (!qword_1EB642020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642020);
  }

  return result;
}

uint64_t sub_1AFA1F0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AFA1F138(uint64_t a1)
{
  v2 = sub_1AFA1FC6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA1F174(uint64_t a1)
{
  v2 = sub_1AFA1FC6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFA1F1B0@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_1AFA1FCC0(0, &qword_1EB642030, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA1FC6C();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AFDFE738();
  v12 = v11;
  (*(v7 + 8))(v10, v6);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v12;
  return result;
}

uint64_t sub_1AFA1F340(void *a1)
{
  sub_1AFA1FCC0(0, &qword_1EB642040, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA1FC6C();
  sub_1AFDFF3F8();
  sub_1AFDFE8E8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1AFA1F4E4(uint64_t a1)
{
  v2 = *a1;

  sub_1AFB93E58();
  v4 = v3;
  v5 = *(a1 + 8);

  v6 = sub_1AF3CD6F4(v5);

  if ((v6 & 0x100000000) != 0)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = *&v6;
  }

  v8 = *(a1 + 104);
  v97 = *(a1 + 88);
  v98 = v8;
  v99 = *(a1 + 120);
  sub_1AF8D68BC(2, 1, 1, v86);
  v95[0] = v86[0];
  v95[1] = v86[1];
  v96 = v87;
  sub_1AF6B06C0(v2, v95, 0x200000000, v88);
  if (*v88)
  {
    if (v91 <= 0)
    {
      v82 = *&v88[32];
      v83 = v89;
      v84 = v90;
      v85 = v91;
      v80 = *v88;
      v81 = *&v88[16];
      sub_1AF5DD298(&v80, v79);
      sub_1AFA1FBFC(v86, sub_1AFA1FB6C);
    }

    else
    {
      v72 = *(&v89 + 1);
      if (*(&v89 + 1))
      {
        v71 = *&v88[40];
        v9 = *(&v90 + 1);
        v78 = *(v90 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v10 = *(*(&v90 + 1) + 32);
        v92 = *v88;
        v93 = *&v88[8];
        v94 = *&v88[24];
        v82 = *&v88[32];
        v83 = v89;
        v84 = v90;
        v85 = v91;
        v80 = *v88;
        v81 = *&v88[16];
        sub_1AF5DD298(&v80, v79);
        v11 = 0;
        v70 = v10;
        while (1)
        {
          v12 = (v71 + 48 * v11);
          v13 = *v12;
          v14 = v12[1];
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v18 = *(v12 + 4);
          v17 = *(v12 + 5);
          v77 = v11;
          if (v78)
          {
            v19 = *(v17 + 376);

            os_unfair_lock_lock(v19);
            os_unfair_lock_lock(*(v17 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v10);
          v74 = *(v9 + 64);
          v75 = *(v9 + 48);
          v73 = *(v9 + 80);
          v20 = *(*(*(*(v17 + 40) + 16) + 32) + 16) + 1;
          *(v9 + 48) = ecs_stack_allocator_allocate(*(v9 + 32), 48 * v20, 8);
          *(v9 + 56) = v20;
          *(v9 + 72) = 0;
          *(v9 + 80) = 0;
          *(v9 + 64) = 0;
          v21 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v15, v16, v18, v9);
          v22 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v15, v16, v18, v9);
          v76 = v17;
          v23 = sub_1AF64B110(&type metadata for ParticleTarget, &off_1F252DD28, v15, v16, v18, v9);
          if (v15)
          {
            for (; v18; --v18)
            {
              v24 = vsubq_f32(*v22, *v23);
              v25 = vmulq_f32(v24, v24);
              v26 = sqrtf(v25.f32[2] + vaddv_f32(*v25.f32));
              if (v26 > 0.0)
              {
                v27 = v4 * ((v7 - v26) / v26);
                v28 = vmuls_lane_f32(v27, v24, 2);
                *&v29 = vadd_f32(vmul_n_f32(*v24.f32, v27), *v21);
                *(&v29 + 2) = v28 + COERCE_FLOAT(*&v21[1]);
                HIDWORD(v29) = 0;
                *v21->f32 = v29;
              }

              ++v23;
              ++v22;
              v21 += 2;
            }
          }

          else if (v13 != v14)
          {
            v59 = v14 - v13;
            v60 = &v23[v13];
            v61 = &v22[v13];
            v62 = &v21[2 * v13];
            do
            {
              v63 = vsubq_f32(*v61, *v60);
              v64 = vmulq_f32(v63, v63);
              v65 = sqrtf(v64.f32[2] + vaddv_f32(*v64.f32));
              if (v65 > 0.0)
              {
                v66 = v4 * ((v7 - v65) / v65);
                v67 = vmuls_lane_f32(v66, v63, 2);
                *&v68 = vadd_f32(vmul_n_f32(*v63.f32, v66), *v62);
                *(&v68 + 2) = v67 + COERCE_FLOAT(*&v62[1]);
                HIDWORD(v68) = 0;
                *v62->f32 = v68;
              }

              ++v60;
              ++v61;
              v62 += 2;
              --v59;
            }

            while (v59);
          }

          v30 = *(v9 + 48);
          v31 = *(v9 + 64);
          if (!v31)
          {
            v53 = *(v9 + 56);
            v54 = *(v9 + 32);
            v58 = v76;
            v57 = v77;
            v55 = v73;
            v56 = v78;
            goto LABEL_49;
          }

          for (i = 0; i != v31; ++i)
          {
            v34 = (v30 + 48 * i);
            v35 = *v34;
            v36 = v34[4];
            v37 = *(v9 + 72);
            if (v37)
            {
              v38 = v35 == v37;
            }

            else
            {
              v38 = 0;
            }

            if (v38)
            {
              goto LABEL_21;
            }

            v39 = v92;
            if (!v92[11])
            {
              goto LABEL_21;
            }

            v40 = v34[2];
            v41 = v92 + 41;
            v42 = v92[9];
            if (v42 >= 0x10)
            {
              v43 = &v41[v92[8]];
              v44 = v42 >> 4;
              v45 = v92 + 41;
              while (*v43 != v35)
              {
                ++v45;
                v43 += 16;
                if (!--v44)
                {
                  goto LABEL_37;
                }
              }

              v46 = v45[v92[10]];
              v47 = v46 > 5;
              v48 = (1 << v46) & 0x23;
              if (v47 || v48 == 0)
              {
LABEL_21:

                v36(v33);

                continue;
              }
            }

LABEL_37:
            if (swift_conformsToProtocol2() && v40)
            {
              if (sub_1AF5FC8D8(v40))
              {
                goto LABEL_21;
              }

              v50 = v39[9];
              if (v50 < 0x10)
              {
                goto LABEL_21;
              }

              v51 = &v41[v39[8]];
              v52 = 16 * (v50 >> 4);
              while (*v51 != v40)
              {
                v51 += 16;
                v52 -= 16;
                if (!v52)
                {
                  goto LABEL_21;
                }
              }
            }
          }

          v53 = *(v9 + 56);
          v30 = *(v9 + 48);
          v54 = *(v9 + 32);
          v55 = v73;
          if (*(v9 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v56 = v78;
          v10 = v70;
          v58 = v76;
          v57 = v77;
LABEL_49:
          ecs_stack_allocator_deallocate(v54, v30, 48 * v53);
          *(v9 + 48) = v75;
          *(v9 + 64) = v74;
          *(v9 + 80) = v55;
          sub_1AF62D29C(v58);
          ecs_stack_allocator_pop_snapshot(v10);
          if (v56)
          {
            os_unfair_lock_unlock(*(v58 + 344));
            os_unfair_lock_unlock(*(v58 + 376));
          }

          v11 = v57 + 1;
          if (v11 == v72)
          {
            goto LABEL_59;
          }
        }
      }

      v82 = *&v88[32];
      v83 = v89;
      v84 = v90;
      v85 = v91;
      v80 = *v88;
      v81 = *&v88[16];
      sub_1AF5DD298(&v80, v79);
LABEL_59:

      sub_1AFA1FBFC(v86, sub_1AFA1FB6C);
    }

    sub_1AFA1FBFC(v88, sub_1AF5C3C90);
    return sub_1AFA1FBFC(v88, sub_1AF5C3C90);
  }

  else
  {
    sub_1AFA1FBFC(v86, sub_1AFA1FB6C);
  }
}

void sub_1AFA1FB6C()
{
  if (!qword_1EB642028)
  {
    v0 = type metadata accessor for Query3();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB642028);
    }
  }
}

uint64_t sub_1AFA1FBFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AFA1FC6C()
{
  result = qword_1EB642038;
  if (!qword_1EB642038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642038);
  }

  return result;
}

void sub_1AFA1FCC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA1FC6C();
    v7 = a3(a1, &type metadata for DistanceConstraint.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFA1FD38()
{
  result = qword_1EB642048;
  if (!qword_1EB642048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642048);
  }

  return result;
}

unint64_t sub_1AFA1FD90()
{
  result = qword_1EB642050;
  if (!qword_1EB642050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642050);
  }

  return result;
}

unint64_t sub_1AFA1FDE8()
{
  result = qword_1EB642058;
  if (!qword_1EB642058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642058);
  }

  return result;
}

uint64_t sub_1AFA1FF20(void *a1, char a2)
{
  sub_1AFA20FD0(0, &qword_1EB642098, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA20F7C();
  sub_1AFDFF3F8();
  v15 = a2 & 1;
  v14 = 0;
  sub_1AF51C7B0();
  sub_1AFDFE918();
  if (!v2)
  {
    v13 = 1;
    sub_1AFDFE8E8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AFA200C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F74636166;
  }

  else
  {
    v3 = 1701080941;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x726F74636166;
  }

  else
  {
    v5 = 1701080941;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AFA20160()
{
  if (*v0)
  {
    return 0x726F74636166;
  }

  else
  {
    return 1701080941;
  }
}

uint64_t sub_1AFA20190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v5 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F74636166 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1AFA20268(uint64_t a1)
{
  v2 = sub_1AFA20F7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA202A4(uint64_t a1)
{
  v2 = sub_1AFA20F7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AFA202E0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1AFA203B8(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
    *(a2 + 4) = v5;
  }
}

unint64_t sub_1AFA20364()
{
  result = qword_1EB642060;
  if (!qword_1EB642060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642060);
  }

  return result;
}

float sub_1AFA203B8(void *a1)
{
  sub_1AFA20FD0(0, &qword_1EB642088, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA20F7C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v14 = 0;
    sub_1AF51C75C();
    sub_1AFDFE768();
    v13 = 1;
    sub_1AFDFE738();
    v2 = v11;
    (*(v6 + 8))(v9, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AFA20588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);

  v7 = sub_1AF3CD7D0(v6);

  v8 = 1.0;
  if (v7 != 2)
  {
    v8 = *(&v7 + 1);
    if (v7)
    {
      v9 = sub_1AF3C9FF4(v6);
      v108 = 0u;
      if (v11)
      {
        goto LABEL_10;
      }

      v12.i64[0] = v9;
      v12.i64[1] = v10;
      goto LABEL_9;
    }
  }

  v13 = sub_1AFB195A8(a2, a3);
  v108 = 0u;
  if ((v14 & 1) == 0 && v13 != 0xFFFFFFFFLL)
  {
    v15 = v13;

    sub_1AF3C9244(v15, v109);

    if ((v111 & 1) == 0)
    {
      v12 = v110;
LABEL_9:
      v108 = v12;
    }
  }

LABEL_10:
  v127 = *(a1 + 88);
  v128 = *(a1 + 104);
  v129 = *(a1 + 120);
  sub_1AF5C9228(v112);
  v125[0] = v112[0];
  v125[1] = v112[1];
  v126 = v113;
  sub_1AF6B06C0(a2, v125, 0x200000000, &v114);
  if (!v114)
  {
    return sub_1AFA20D68(v112);
  }

  if (v121 > 0)
  {
    v106 = v118;
    if (v118)
    {
      v16 = 0;
      v105 = v117;
      v17 = v120;
      v18 = *(v120 + 32);
      v19 = *(v119 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v122 = v114;
      v123 = v115;
      v124 = v116;
      v103 = v19;
      v104 = v18;
      do
      {
        v20 = v16;
        v21 = (v105 + 48 * v16);
        v22 = *v21;
        v107 = v21[1];
        v23 = *(v21 + 2);
        v24 = *(v21 + 3);
        v26 = *(v21 + 4);
        v25 = *(v21 + 5);
        if (v19)
        {
          v27 = *(v25 + 376);

          os_unfair_lock_lock(v27);
          os_unfair_lock_lock(*(v25 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v18);
        v28 = *(v17 + 64);
        v130[0] = *(v17 + 48);
        v130[1] = v28;
        v131 = *(v17 + 80);
        v29 = *(*(*(*(v25 + 40) + 16) + 32) + 16) + 1;
        *(v17 + 48) = ecs_stack_allocator_allocate(*(v17 + 32), 48 * v29, 8);
        *(v17 + 56) = v29;
        *(v17 + 72) = 0;
        *(v17 + 80) = 0;
        *(v17 + 64) = 0;
        v30 = sub_1AF64B110(&type metadata for Orientation, &off_1F252C8A8, v23, v24, v26, v17);
        v31 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v23, v24, v26, v17);
        v33 = v31;
        if (v23)
        {
          v32.i32[0] = 1.0;
          for (i = v20; v26; --v26)
          {
            v39 = vsubq_f32(v108, *v33);
            v40 = v39;
            v40.i32[3] = 0;
            v41 = vabsq_f32(v40);
            if (v41.f32[0] > 0.00000011921 || v41.f32[1] > 0.00000011921 || v41.f32[2] > 0.00000011921)
            {
              v44 = vmulq_f32(v40, v40);
              *&v45 = v44.f32[2] + vaddv_f32(*v44.f32);
              *v44.f32 = vrsqrte_f32(v45);
              *v44.f32 = vmul_f32(*v44.f32, vrsqrts_f32(v45, vmul_f32(*v44.f32, *v44.f32)));
              v46 = vmulq_n_f32(v39, vmul_f32(*v44.f32, vrsqrts_f32(v45, vmul_f32(*v44.f32, *v44.f32))).f32[0]);
              v47 = vmulq_f32(v46, v46);
              v47.f32[0] = v47.f32[2] + vaddv_f32(*v47.f32);
              v48 = vdupq_lane_s32(*v47.f32, 0);
              v48.i32[3] = 0;
              v49 = vrsqrteq_f32(v48);
              v50 = vmulq_f32(v49, vrsqrtsq_f32(v48, vmulq_f32(v49, v49)));
              v51 = vmulq_f32(v50, v50);
              v52 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v47.f32[0] != 0.0)), 0x1FuLL));
              v52.i32[3] = 0;
              v53 = vbslq_s8(vcltzq_s32(v52), vmulq_f32(v46, vmulq_f32(v50, vrsqrtsq_f32(v48, v51))), v46);
              v51.i32[0] = v53.i32[2];
              v52.i64[0] = 0x8000000080000000;
              v52.i64[1] = 0x8000000080000000;
              v52.i32[0] = vbslq_s8(v52, v32, v51).i32[0];
              v48.f32[0] = v53.f32[1] / (fabsf(v53.f32[2]) + *v32.i32);
              v54 = vmuls_lane_f32(v48.f32[0], *v53.f32, 1);
              v55 = -(v53.f32[0] * v48.f32[0]);
              v56 = v53.f32[2] + (*v52.i32 * v54);
              v57 = *v52.i32 * v55;
              v58 = *v32.i32 - v54;
              v59 = vmuls_lane_f32(-*v52.i32, *v53.f32, 1);
              v60 = v53.f32[2] + (v56 + v58);
              if (v60 > 0.0)
              {
                v35 = sqrtf(v60 + *v32.i32);
                v36.f32[0] = v59 - v53.f32[1];
                v36.i32[1] = vaddq_f32(v53, v53).u32[0];
                v36.f32[2] = v57 - v55;
                v36.f32[3] = v35 * v35;
                v37 = vmulq_n_f32(v36, 0.5 / v35);
              }

              else if (v56 < v58 || v56 < v53.f32[2])
              {
                if (v58 <= v53.f32[2])
                {
                  v66 = sqrtf(((v53.f32[2] + *v32.i32) - v56) - v58);
                  v53.i32[0] = vsubq_f32(v53, v53).u32[0];
                  v53.f32[1] = v53.f32[1] + v59;
                  v53.f32[2] = v66 * v66;
                  v53.f32[3] = v57 - v55;
                  v37 = vmulq_n_f32(v53, 0.5 / v66);
                }

                else
                {
                  v62 = sqrtf(((v58 + *v32.i32) - v56) - v53.f32[2]);
                  v63.f32[0] = v55 + v57;
                  v63.f32[1] = v62 * v62;
                  *&v63.u32[2] = vrev64_s32(vadd_f32(*v53.f32, __PAIR64__(LODWORD(v59), v53.u32[0])));
                  v37 = vmulq_n_f32(v63, 0.5 / v62);
                }
              }

              else
              {
                v64 = sqrtf(((v56 + *v32.i32) - v58) - v53.f32[2]);
                v65.f32[0] = v64 * v64;
                v65.f32[1] = v55 + v57;
                *&v65.u32[2] = vsub_f32(__PAIR64__(LODWORD(v59), v53.u32[0]), *v53.f32);
                v37 = vmulq_n_f32(v65, 0.5 / v64);
              }

              sub_1AF8D9154(*v30, v37, v8);
              *v30 = v38;
              v32.i32[0] = 1.0;
            }

            ++v33;
            ++v30;
          }
        }

        else
        {
          v32.i32[0] = 1.0;
          if (v22 == v107)
          {
            i = v20;
          }

          else
          {
            v67 = v107 - v22;
            v68 = (v31 + 16 * v22);
            v69 = &v30[v22];
            i = v20;
            do
            {
              v74 = vsubq_f32(v108, *v68);
              v75 = v74;
              v75.i32[3] = 0;
              v76 = vabsq_f32(v75);
              if (v76.f32[0] > 0.00000011921 || v76.f32[1] > 0.00000011921 || v76.f32[2] > 0.00000011921)
              {
                v79 = vmulq_f32(v75, v75);
                *&v80 = v79.f32[2] + vaddv_f32(*v79.f32);
                *v79.f32 = vrsqrte_f32(v80);
                *v79.f32 = vmul_f32(*v79.f32, vrsqrts_f32(v80, vmul_f32(*v79.f32, *v79.f32)));
                v81 = vmulq_n_f32(v74, vmul_f32(*v79.f32, vrsqrts_f32(v80, vmul_f32(*v79.f32, *v79.f32))).f32[0]);
                v82 = vmulq_f32(v81, v81);
                v82.f32[0] = v82.f32[2] + vaddv_f32(*v82.f32);
                v83 = vdupq_lane_s32(*v82.f32, 0);
                v83.i32[3] = 0;
                v84 = vrsqrteq_f32(v83);
                v85 = vmulq_f32(v84, vrsqrtsq_f32(v83, vmulq_f32(v84, v84)));
                v86 = vmulq_f32(v85, v85);
                v87 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v82.f32[0] != 0.0)), 0x1FuLL));
                v87.i32[3] = 0;
                v88 = vbslq_s8(vcltzq_s32(v87), vmulq_f32(v81, vmulq_f32(v85, vrsqrtsq_f32(v83, v86))), v81);
                v86.i32[0] = v88.i32[2];
                v87.i64[0] = 0x8000000080000000;
                v87.i64[1] = 0x8000000080000000;
                v87.i32[0] = vbslq_s8(v87, v32, v86).i32[0];
                v83.f32[0] = v88.f32[1] / (fabsf(v88.f32[2]) + *v32.i32);
                v89 = vmuls_lane_f32(v83.f32[0], *v88.f32, 1);
                v90 = -(v88.f32[0] * v83.f32[0]);
                v91 = v88.f32[2] + (*v87.i32 * v89);
                v92 = *v87.i32 * v90;
                v93 = *v32.i32 - v89;
                v94 = vmuls_lane_f32(-*v87.i32, *v88.f32, 1);
                v95 = v88.f32[2] + (v91 + v93);
                if (v95 > 0.0)
                {
                  v70 = sqrtf(v95 + *v32.i32);
                  v71.f32[0] = v94 - v88.f32[1];
                  v71.i32[1] = vaddq_f32(v88, v88).u32[0];
                  v71.f32[2] = v92 - v90;
                  v71.f32[3] = v70 * v70;
                  v72 = vmulq_n_f32(v71, 0.5 / v70);
                }

                else if (v91 < v93 || v91 < v88.f32[2])
                {
                  if (v93 <= v88.f32[2])
                  {
                    v101 = sqrtf(((v88.f32[2] + *v32.i32) - v91) - v93);
                    v88.i32[0] = vsubq_f32(v88, v88).u32[0];
                    v88.f32[1] = v88.f32[1] + v94;
                    v88.f32[2] = v101 * v101;
                    v88.f32[3] = v92 - v90;
                    v72 = vmulq_n_f32(v88, 0.5 / v101);
                  }

                  else
                  {
                    v97 = sqrtf(((v93 + *v32.i32) - v91) - v88.f32[2]);
                    v98.f32[0] = v90 + v92;
                    v98.f32[1] = v97 * v97;
                    *&v98.u32[2] = vrev64_s32(vadd_f32(*v88.f32, __PAIR64__(LODWORD(v94), v88.u32[0])));
                    v72 = vmulq_n_f32(v98, 0.5 / v97);
                  }
                }

                else
                {
                  v99 = sqrtf(((v91 + *v32.i32) - v93) - v88.f32[2]);
                  v100.f32[0] = v99 * v99;
                  v100.f32[1] = v90 + v92;
                  *&v100.u32[2] = vsub_f32(__PAIR64__(LODWORD(v94), v88.u32[0]), *v88.f32);
                  v72 = vmulq_n_f32(v100, 0.5 / v99);
                }

                sub_1AF8D9154(*v69, v72, v8);
                *v69 = v73;
                v32.i32[0] = 1.0;
              }

              ++v68;
              ++v69;
              --v67;
            }

            while (v67);
          }
        }

        sub_1AF630994(v17, &v122, v130);
        sub_1AF62D29C(v25);
        v18 = v104;
        ecs_stack_allocator_pop_snapshot(v104);
        v19 = v103;
        if (v103)
        {
          os_unfair_lock_unlock(*(v25 + 344));
          os_unfair_lock_unlock(*(v25 + 376));
        }

        v16 = i + 1;
      }

      while (v16 != v106);
    }
  }

  sub_1AFA20D68(v112);
  return sub_1AF5D1564(&v114);
}

uint64_t sub_1AFA20D68(uint64_t a1)
{
  sub_1AFA20DC4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AFA20DC4()
{
  if (!qword_1EB642068)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB642068);
    }
  }
}

uint64_t getEnumTagSinglePayload for OrientationConstraint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1AFA20EA8()
{
  result = qword_1EB642070;
  if (!qword_1EB642070)
  {
    sub_1AF82352C(255, &qword_1EB642078, &type metadata for OrientationConstraint.Mode, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642070);
  }

  return result;
}

unint64_t sub_1AFA20F28()
{
  result = qword_1EB642080;
  if (!qword_1EB642080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642080);
  }

  return result;
}

unint64_t sub_1AFA20F7C()
{
  result = qword_1EB642090;
  if (!qword_1EB642090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642090);
  }

  return result;
}

void sub_1AFA20FD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA20F7C();
    v7 = a3(a1, &type metadata for OrientationConstraint.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFA21048()
{
  result = qword_1EB6420A0;
  if (!qword_1EB6420A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6420A0);
  }

  return result;
}

unint64_t sub_1AFA210A0()
{
  result = qword_1EB6420A8;
  if (!qword_1EB6420A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6420A8);
  }

  return result;
}

unint64_t sub_1AFA210F8()
{
  result = qword_1EB6420B0;
  if (!qword_1EB6420B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6420B0);
  }

  return result;
}

uint64_t sub_1AFA2120C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F69746365726964;
  }

  else
  {
    v3 = 0x726F74636166;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xED0000736978416ELL;
  }

  if (*a2)
  {
    v5 = 0x6F69746365726964;
  }

  else
  {
    v5 = 0x726F74636166;
  }

  if (*a2)
  {
    v6 = 0xED0000736978416ELL;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AFA212BC()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA21348()
{
  sub_1AFDFD038();
}

uint64_t sub_1AFA213C0()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA21448@<X0>(char *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1AFA214A8(uint64_t *a1@<X8>)
{
  v2 = 0x726F74636166;
  if (*v1)
  {
    v2 = 0x6F69746365726964;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xED0000736978416ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AFA214F0()
{
  if (*v0)
  {
    return 0x6F69746365726964;
  }

  else
  {
    return 0x726F74636166;
  }
}

uint64_t sub_1AFA21534@<X0>(char *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1AFA21598(uint64_t a1)
{
  v2 = sub_1AFA22A34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA215D4(uint64_t a1)
{
  v2 = sub_1AFA22A34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFA21610(void *a1, char a2)
{
  sub_1AFA22A88(0, &qword_1EB6420F0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA22A34();
  sub_1AFDFF3F8();
  v15 = 0;
  sub_1AFDFE8E8();
  if (!v2)
  {
    v14 = a2 & 1;
    v13 = 1;
    sub_1AF51D8C4();
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_1AFA217E0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1AFA21AF4(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 4) = v4 & 1;
  }
}

uint64_t sub_1AFA21868(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 88);
  v30 = *(a1 + 72);
  v31 = v3;
  v4 = *(a1 + 120);
  v32 = *(a1 + 104);
  v33 = v4;
  v5 = *(a1 + 24);
  v26 = v2;
  v27 = v5;
  v6 = *(a1 + 56);
  v28 = *(a1 + 40);
  v29 = v6;
  v7 = v2;

  v8 = sub_1AF3CD8A0(*(&v7 + 1));

  if ((v8 & 0xFF00000000) == 0x200000000)
  {
    v9 = 1;
  }

  else
  {
    v9 = BYTE4(v8) & 1;
  }

  if ((v8 & 0xFF00000000) == 0x200000000)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = *&v8;
  }

  sub_1AFB943A8();
  v24[0] = v11;
  *&v24[1] = v10;
  v25 = v9;
  if (*a1)
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for particle_orientation_over_velocity_uniforms(0);
    sub_1AF6F4524(v24, 1, ObjectType, v13, v14, v15, v16, v17);
  }

  v18 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v19 = v28;

  v20 = v18;

  MEMORY[0x1EEE9AC00](v21, v22);
  sub_1AFCBF008(v19, sub_1AF9D17D4);
}

unint64_t sub_1AFA21AA0()
{
  result = qword_1EB6420B8;
  if (!qword_1EB6420B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6420B8);
  }

  return result;
}

float sub_1AFA21AF4(void *a1)
{
  sub_1AFA22A88(0, &qword_1EB6420E0, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA22A34();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v14 = 0;
    sub_1AFDFE738();
    v2 = v10;
    v13 = 1;
    sub_1AF51D870();
    sub_1AFDFE6E8();
    (*(v6 + 8))(v9, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AFA21CD0(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  swift_retain_n();
  v4 = sub_1AF3CD8A0(v2);

  v5 = *&v4;
  if ((v4 & 0xFF00000000) == 0x200000000)
  {
    v5 = 1.0;
  }

  v6 = (v4 & 0x100000000) == 0 && (v4 & 0xFF00000000) != 0x200000000;
  v7 = 1.0 - fminf(fmaxf(v5, 0.0), 1.0);
  sub_1AFB93E58();
  v9 = powf(v7, v8 * 60.0);
  v10 = *(a1 + 104);
  v166 = *(a1 + 88);
  v167 = v10;
  v168 = *(a1 + 120);
  sub_1AF5C924C(v158);
  v164[0] = v158[0];
  v164[1] = v158[1];
  v165 = v159;
  sub_1AF6B06C0(v3, v164, 0x200000000, v160);
  if (*v160)
  {
    if (v163 <= 0)
    {
      v154 = *&v160[32];
      v155 = v161;
      v156 = v162;
      v157 = v163;
      v152 = *v160;
      v153 = *&v160[16];
      sub_1AF5DD298(&v152, &v149);
      sub_1AFA22820(v158);

      sub_1AF5D1564(v160);
    }

    else
    {
      v139 = *(&v161 + 1);
      if (*(&v161 + 1))
      {
        v11 = 0;
        v12 = 0;
        v13 = fminf(fmaxf(1.0 - v9, 0.0), 1.0);
        v138 = *&v160[40];
        v142 = *(&v162 + 1);
        v14 = *(*(&v162 + 1) + 32);
        v15 = *(v162 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v149 = *v160;
        v150 = *&v160[8];
        v151 = *&v160[24];
        v137 = v15;
        while (1)
        {
          v146 = v12;
          v141 = v11;
          v16 = (v138 + 48 * v11);
          v18 = *v16;
          v17 = v16[1];
          v19 = *(v16 + 2);
          v20 = *(v16 + 3);
          v21 = *(v16 + 4);
          v22 = *(v16 + 5);
          if (v15)
          {
            v23 = *(v22 + 376);

            os_unfair_lock_lock(v23);
            os_unfair_lock_lock(*(v22 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v14);
          v24 = *(v142 + 64);
          v152 = *(v142 + 48);
          v153 = v24;
          *&v154 = *(v142 + 80);
          v25 = *(*(*(*(v22 + 40) + 16) + 32) + 16) + 1;
          *(v142 + 48) = ecs_stack_allocator_allocate(*(v142 + 32), 48 * v25, 8);
          *(v142 + 56) = v25;
          *(v142 + 72) = 0;
          *(v142 + 80) = 0;
          *(v142 + 64) = 0;
          v26 = v22;
          v27 = sub_1AF64B110(&type metadata for Orientation, &off_1F252C8A8, v19, v20, v21, v142);
          v140 = v26;
          v28 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v19, v20, v21, v142);
          v29 = v28;
          v144 = vdupq_n_s32(0x3F3504F3u);
          if (!v19)
          {
            break;
          }

          if (v21)
          {
            v30 = v141;
            v12 = v146;
            v15 = v137;
            while (1)
            {
              v32 = vabsq_f32(*v29);
              if (v32.f32[0] <= 0.00000011921 && v32.f32[1] <= 0.00000011921 && v32.f32[2] <= 0.00000011921)
              {
                goto LABEL_18;
              }

              v147 = *v29;
              sub_1AF5C5D6C(*v27);
              if (v6)
              {
                *v35.f32 = vsub_f32(0, v36);
                v35.f32[2] = 0.0 - v37;
                v35.i32[3] = 0;
              }

              else
              {
                v35.i32[3] = v145;
              }

              v38 = vmulq_f32(v147, v147);
              *&v39 = v38.f32[2] + vaddv_f32(*v38.f32);
              *v38.f32 = vrsqrte_f32(v39);
              *v38.f32 = vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32)));
              v40 = vmulq_n_f32(v147, vmul_f32(*v38.f32, vrsqrts_f32(v39, vmul_f32(*v38.f32, *v38.f32))).f32[0]);
              v41 = vmulq_f32(v40, v40);
              v41.f32[0] = v41.f32[2] + vaddv_f32(*v41.f32);
              v42 = vdupq_lane_s32(*v41.f32, 0);
              v42.i32[3] = 0;
              v43 = vrsqrteq_f32(v42);
              v44 = vmulq_f32(v43, vrsqrtsq_f32(v42, vmulq_f32(v43, v43)));
              v45 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v41.f32[0] != 0.0)), 0x1FuLL));
              v45.i32[3] = 0;
              v46 = vbslq_s8(vcltzq_s32(v45), vmulq_f32(v40, vmulq_f32(v44, vrsqrtsq_f32(v42, vmulq_f32(v44, v44)))), v40);
              v47 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
              v48 = vmlaq_f32(vmulq_f32(v47, vnegq_f32(v35)), v46, vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL));
              v49 = vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL);
              v50 = vmulq_f32(v48, v48);
              v50.f32[0] = v50.f32[1] + (v50.f32[2] + v50.f32[0]);
              v51 = vdupq_lane_s32(*v50.f32, 0);
              v51.i32[3] = 0;
              v52 = vrsqrteq_f32(v51);
              v53 = vmulq_f32(v52, vrsqrtsq_f32(v51, vmulq_f32(v52, v52)));
              v54 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v50.f32[0] != 0.0)), 0x1FuLL));
              v54.i32[3] = 0;
              v55 = vbslq_s8(vcltzq_s32(v54), vmulq_f32(vmulq_f32(v53, vrsqrtsq_f32(v51, vmulq_f32(v53, v53))), v49), vextq_s8(vextq_s8(v46, v46, 0xCuLL), v46, 8uLL));
              v56 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), vnegq_f32(v46)), v55, v47);
              v57 = vextq_s8(vuzp1q_s32(v56, v56), v56, 0xCuLL);
              v58 = vmulq_f32(v56, v56);
              v44.f32[0] = v58.f32[1] + (v58.f32[2] + v58.f32[0]);
              *v58.f32 = vrsqrte_f32(v44.u32[0]);
              *v58.f32 = vmul_f32(*v58.f32, vrsqrts_f32(v44.u32[0], vmul_f32(*v58.f32, *v58.f32)));
              v59 = vmulq_n_f32(v57, vmul_f32(*v58.f32, vrsqrts_f32(v44.u32[0], vmul_f32(*v58.f32, *v58.f32))).f32[0]);
              v60 = v46.f32[2] + (v55.f32[0] + *&v59.i32[1]);
              if (v60 <= 0.0)
              {
                if (v55.f32[0] < v46.f32[2] || v55.f32[0] < *&v59.i32[1])
                {
                  if (*&v59.i32[1] <= v46.f32[2])
                  {
                    v72 = vzip1_s32(*&vextq_s8(v55, v55, 8uLL), *&vextq_s8(v59, v59, 8uLL));
                    v73 = __PAIR64__(v55.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v46.f32[2] + 1.0) - v55.f32[0]) - *&v59.i32[1])));
                    v74 = vdup_lane_s32(*v59.i8, 0);
                    *v75.f32 = vadd_f32(*v46.f32, v72);
                    v76 = vsub_f32(*v55.f32, v74);
                    v74.i32[0] = v73.i32[0];
                    v74.i32[0] = vmul_f32(v73, v74).u32[0];
                    v74.i32[1] = v76.i32[1];
                    *&v75.u32[2] = v74;
                    _Q1 = vmulq_n_f32(v75, 0.5 / v73.f32[0]);
                    if (v6)
                    {
LABEL_41:
                      _Q4 = vmlaq_f32(vmulq_f32(_Q1, xmmword_1AFE92AE0), xmmword_1AFE92AD0, vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL));
                      v78 = vextq_s8(vuzp1q_s32(_Q4, _Q4), _Q4, 0xCuLL);
                      _Q4.i32[0] = 1060439283;
                      __asm { FMLA            S2, S4, V1.S[3] }

                      _Q1 = vaddq_f32(vmlaq_laneq_f32(vmulq_f32(_Q1, v144), xmmword_1AFE92AD0, _Q1, 3), v78);
                      _Q1.i32[3] = _S2;
                    }
                  }

                  else
                  {
                    v70 = sqrtf(((*&v59.i32[1] + 1.0) - v55.f32[0]) - v46.f32[2]);
                    v71.f32[0] = v55.f32[1] + *v59.i32;
                    v71.f32[1] = v70 * v70;
                    *&v71.u32[2] = vext_s8(vadd_f32(*v46.f32, vdup_laneq_s32(v59, 2)), vsub_f32(*v46.f32, *&vextq_s8(v55, v55, 8uLL)), 4uLL);
                    _Q1 = vmulq_n_f32(v71, 0.5 / v70);
                    if (v6)
                    {
                      goto LABEL_41;
                    }
                  }
                }

                else
                {
                  v65 = sqrtf(((v55.f32[0] + 1.0) - *&v59.i32[1]) - v46.f32[2]);
                  v66 = vdup_lane_s32(*v59.i8, 0);
                  v67 = vadd_f32(*v55.f32, v66);
                  v66.f32[0] = v65;
                  v68.i32[0] = vmul_f32(__PAIR64__(v55.u32[1], LODWORD(v65)), v66).u32[0];
                  v68.i32[1] = v67.i32[1];
                  LODWORD(v69) = vadd_f32(*v46.f32, *&vextq_s8(v55, v55, 8uLL)).u32[0];
                  HIDWORD(v69) = vsub_f32(vdup_laneq_s32(v59, 2), *&v46).i32[1];
                  v68.i64[1] = v69;
                  _Q1 = vmulq_n_f32(v68, 0.5 / v65);
                  if (v6)
                  {
                    goto LABEL_41;
                  }
                }
              }

              else
              {
                v61 = vzip2q_s32(v59, vuzp1q_s32(v59, v46));
                v61.i32[2] = v55.i32[1];
                v62 = vtrn2q_s32(v46, vzip2q_s32(v46, v55));
                v62.i32[2] = v59.i32[0];
                v63 = vsubq_f32(v61, v62);
                v61.i32[3] = sqrtf(v60 + 1.0);
                v62.i32[3] = v61.i32[3];
                v63.i32[3] = vmulq_f32(v61, v62).i32[3];
                _Q1 = vmulq_n_f32(v63, 0.5 / v61.f32[3]);
                if (v6)
                {
                  goto LABEL_41;
                }
              }

              sub_1AF8D9154(*v27, _Q1, v13);
              *v27 = v31;
LABEL_18:
              ++v29;
              ++v27;
              if (!--v21)
              {
                goto LABEL_44;
              }
            }
          }

LABEL_43:
          v30 = v141;
          v12 = v146;
          v15 = v137;
LABEL_44:
          sub_1AF630994(v142, &v149, &v152);
          sub_1AF62D29C(v140);
          ecs_stack_allocator_pop_snapshot(v14);
          if (v15)
          {
            os_unfair_lock_unlock(*(v140 + 344));
            os_unfair_lock_unlock(*(v140 + 376));
          }

          v11 = v30 + 1;
          if (v11 == v139)
          {
            goto LABEL_75;
          }
        }

        if (v18 == v17)
        {
          goto LABEL_43;
        }

        v84 = v17 - v18;
        v85 = (v28 + 16 * v18);
        v86 = &v27[v18];
        v30 = v141;
        v12 = v146;
        v15 = v137;
        while (1)
        {
          v88 = vabsq_f32(*v85);
          if (v88.f32[0] <= 0.00000011921 && v88.f32[1] <= 0.00000011921 && v88.f32[2] <= 0.00000011921)
          {
            goto LABEL_48;
          }

          v148 = *v85;
          sub_1AF5C5D6C(*v86);
          if (v6)
          {
            *v91.f32 = vsub_f32(0, v92);
            v91.f32[2] = 0.0 - v93;
            v91.i32[3] = 0;
          }

          else
          {
            v91.i32[3] = v143;
          }

          v94 = vmulq_f32(v148, v148);
          *&v95 = v94.f32[2] + vaddv_f32(*v94.f32);
          *v94.f32 = vrsqrte_f32(v95);
          *v94.f32 = vmul_f32(*v94.f32, vrsqrts_f32(v95, vmul_f32(*v94.f32, *v94.f32)));
          v96 = vmulq_n_f32(v148, vmul_f32(*v94.f32, vrsqrts_f32(v95, vmul_f32(*v94.f32, *v94.f32))).f32[0]);
          v97 = vmulq_f32(v96, v96);
          v97.f32[0] = v97.f32[2] + vaddv_f32(*v97.f32);
          v98 = vdupq_lane_s32(*v97.f32, 0);
          v98.i32[3] = 0;
          v99 = vrsqrteq_f32(v98);
          v100 = vmulq_f32(v99, vrsqrtsq_f32(v98, vmulq_f32(v99, v99)));
          v101 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v97.f32[0] != 0.0)), 0x1FuLL));
          v101.i32[3] = 0;
          v102 = vbslq_s8(vcltzq_s32(v101), vmulq_f32(v96, vmulq_f32(v100, vrsqrtsq_f32(v98, vmulq_f32(v100, v100)))), v96);
          v103 = vextq_s8(vuzp1q_s32(v102, v102), v102, 0xCuLL);
          v104 = vmlaq_f32(vmulq_f32(v103, vnegq_f32(v91)), v102, vextq_s8(vuzp1q_s32(v91, v91), v91, 0xCuLL));
          v105 = vextq_s8(vuzp1q_s32(v104, v104), v104, 0xCuLL);
          v106 = vmulq_f32(v104, v104);
          v106.f32[0] = v106.f32[1] + (v106.f32[2] + v106.f32[0]);
          v107 = vdupq_lane_s32(*v106.f32, 0);
          v107.i32[3] = 0;
          v108 = vrsqrteq_f32(v107);
          v109 = vmulq_f32(v108, vrsqrtsq_f32(v107, vmulq_f32(v108, v108)));
          v110 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v106.f32[0] != 0.0)), 0x1FuLL));
          v110.i32[3] = 0;
          v111 = vbslq_s8(vcltzq_s32(v110), vmulq_f32(vmulq_f32(v109, vrsqrtsq_f32(v107, vmulq_f32(v109, v109))), v105), vextq_s8(vextq_s8(v102, v102, 0xCuLL), v102, 8uLL));
          v112 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v111, v111), v111, 0xCuLL), vnegq_f32(v102)), v111, v103);
          v113 = vextq_s8(vuzp1q_s32(v112, v112), v112, 0xCuLL);
          v114 = vmulq_f32(v112, v112);
          v100.f32[0] = v114.f32[1] + (v114.f32[2] + v114.f32[0]);
          *v114.f32 = vrsqrte_f32(v100.u32[0]);
          *v114.f32 = vmul_f32(*v114.f32, vrsqrts_f32(v100.u32[0], vmul_f32(*v114.f32, *v114.f32)));
          v115 = vmulq_n_f32(v113, vmul_f32(*v114.f32, vrsqrts_f32(v100.u32[0], vmul_f32(*v114.f32, *v114.f32))).f32[0]);
          v116 = v102.f32[2] + (v111.f32[0] + *&v115.i32[1]);
          if (v116 <= 0.0)
          {
            if (v111.f32[0] < v102.f32[2] || v111.f32[0] < *&v115.i32[1])
            {
              if (*&v115.i32[1] <= v102.f32[2])
              {
                v128 = vzip1_s32(*&vextq_s8(v111, v111, 8uLL), *&vextq_s8(v115, v115, 8uLL));
                v129 = __PAIR64__(v111.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v102.f32[2] + 1.0) - v111.f32[0]) - *&v115.i32[1])));
                v130 = vdup_lane_s32(*v115.i8, 0);
                *v131.f32 = vadd_f32(*v102.f32, v128);
                v132 = vsub_f32(*v111.f32, v130);
                v130.i32[0] = v129.i32[0];
                v130.i32[0] = vmul_f32(v129, v130).u32[0];
                v130.i32[1] = v132.i32[1];
                *&v131.u32[2] = v130;
                _Q1 = vmulq_n_f32(v131, 0.5 / v129.f32[0]);
                if (v6)
                {
LABEL_71:
                  _Q4 = vmlaq_f32(vmulq_f32(_Q1, xmmword_1AFE92AE0), xmmword_1AFE92AD0, vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL));
                  v134 = vextq_s8(vuzp1q_s32(_Q4, _Q4), _Q4, 0xCuLL);
                  _Q4.i32[0] = 1060439283;
                  __asm { FMLA            S2, S4, V1.S[3] }

                  _Q1 = vaddq_f32(vmlaq_laneq_f32(vmulq_f32(_Q1, v144), xmmword_1AFE92AD0, _Q1, 3), v134);
                  _Q1.i32[3] = _S2;
                }
              }

              else
              {
                v126 = sqrtf(((*&v115.i32[1] + 1.0) - v111.f32[0]) - v102.f32[2]);
                v127.f32[0] = v111.f32[1] + *v115.i32;
                v127.f32[1] = v126 * v126;
                *&v127.u32[2] = vext_s8(vadd_f32(*v102.f32, vdup_laneq_s32(v115, 2)), vsub_f32(*v102.f32, *&vextq_s8(v111, v111, 8uLL)), 4uLL);
                _Q1 = vmulq_n_f32(v127, 0.5 / v126);
                if (v6)
                {
                  goto LABEL_71;
                }
              }
            }

            else
            {
              v121 = sqrtf(((v111.f32[0] + 1.0) - *&v115.i32[1]) - v102.f32[2]);
              v122 = vdup_lane_s32(*v115.i8, 0);
              v123 = vadd_f32(*v111.f32, v122);
              v122.f32[0] = v121;
              v124.i32[0] = vmul_f32(__PAIR64__(v111.u32[1], LODWORD(v121)), v122).u32[0];
              v124.i32[1] = v123.i32[1];
              LODWORD(v125) = vadd_f32(*v102.f32, *&vextq_s8(v111, v111, 8uLL)).u32[0];
              HIDWORD(v125) = vsub_f32(vdup_laneq_s32(v115, 2), *&v102).i32[1];
              v124.i64[1] = v125;
              _Q1 = vmulq_n_f32(v124, 0.5 / v121);
              if (v6)
              {
                goto LABEL_71;
              }
            }
          }

          else
          {
            v117 = vzip2q_s32(v115, vuzp1q_s32(v115, v102));
            v117.i32[2] = v111.i32[1];
            v118 = vtrn2q_s32(v102, vzip2q_s32(v102, v111));
            v118.i32[2] = v115.i32[0];
            v119 = vsubq_f32(v117, v118);
            v117.i32[3] = sqrtf(v116 + 1.0);
            v118.i32[3] = v117.i32[3];
            v119.i32[3] = vmulq_f32(v117, v118).i32[3];
            _Q1 = vmulq_n_f32(v119, 0.5 / v117.f32[3]);
            if (v6)
            {
              goto LABEL_71;
            }
          }

          sub_1AF8D9154(*v86, _Q1, v13);
          *v86 = v87;
LABEL_48:
          ++v85;
          ++v86;
          if (!--v84)
          {
            goto LABEL_44;
          }
        }
      }

LABEL_75:

      sub_1AFA22820(v158);
    }

    return sub_1AF5D1564(v160);
  }

  else
  {
    sub_1AFA22820(v158);
  }
}

uint64_t sub_1AFA22820(uint64_t a1)
{
  sub_1AFA2287C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AFA2287C()
{
  if (!qword_1EB6420C0)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6420C0);
    }
  }
}

uint64_t getEnumTagSinglePayload for OrientationOverVelocity(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_1AFA22960()
{
  result = qword_1EB6420C8;
  if (!qword_1EB6420C8)
  {
    sub_1AF82352C(255, &qword_1EB6420D0, &type metadata for OrientationOverVelocity.DirectionAxis, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6420C8);
  }

  return result;
}

unint64_t sub_1AFA229E0()
{
  result = qword_1EB6420D8;
  if (!qword_1EB6420D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6420D8);
  }

  return result;
}

unint64_t sub_1AFA22A34()
{
  result = qword_1EB6420E8;
  if (!qword_1EB6420E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6420E8);
  }

  return result;
}

void sub_1AFA22A88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA22A34();
    v7 = a3(a1, &type metadata for OrientationOverVelocity.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFA22B00()
{
  result = qword_1EB6420F8;
  if (!qword_1EB6420F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6420F8);
  }

  return result;
}

unint64_t sub_1AFA22B58()
{
  result = qword_1EB642100;
  if (!qword_1EB642100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642100);
  }

  return result;
}

unint64_t sub_1AFA22BB0()
{
  result = qword_1EB642108;
  if (!qword_1EB642108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642108);
  }

  return result;
}

uint64_t sub_1AFA22C04(uint64_t a1)
{
  v2 = sub_1AFA22F04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA22C40(uint64_t a1)
{
  v2 = sub_1AFA22F04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFA22CBC(uint64_t a1)
{
  v2 = sub_1AFA22FB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA22CF8(uint64_t a1)
{
  v2 = sub_1AFA22FB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFA22D74(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(void), uint64_t a6, void (*a7)(void))
{
  sub_1AFA22F58(0, a4, a5);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v16 - v13;
  sub_1AF441150(a1, a1[3]);
  a7();
  sub_1AFDFF3F8();
  return (*(v11 + 8))(v14, v10);
}

double sub_1AFA22E9C()
{
  sub_1AF47BBFC();
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1AFE431C0;
  *(v0 + 32) = &type metadata for ParticleAffectedByGravity;
  *(v0 + 40) = &off_1F2554810;
  return result;
}

unint64_t sub_1AFA22F04()
{
  result = qword_1EB642118;
  if (!qword_1EB642118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642118);
  }

  return result;
}

void sub_1AFA22F58(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1AFDFE9A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AFA22FB8()
{
  result = qword_1EB642128;
  if (!qword_1EB642128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642128);
  }

  return result;
}

unint64_t sub_1AFA23030()
{
  result = qword_1EB642130;
  if (!qword_1EB642130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642130);
  }

  return result;
}

unint64_t sub_1AFA23088()
{
  result = qword_1EB642138;
  if (!qword_1EB642138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642138);
  }

  return result;
}

unint64_t sub_1AFA230E0()
{
  result = qword_1EB642140;
  if (!qword_1EB642140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642140);
  }

  return result;
}

unint64_t sub_1AFA23138()
{
  result = qword_1EB642148;
  if (!qword_1EB642148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642148);
  }

  return result;
}

uint64_t sub_1AFA2318C(void *a1)
{
  v3 = v1;
  sub_1AFA24944(0, &qword_1EB642170, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  sub_1AF441150(a1, a1[3]);
  sub_1AFA248F0();
  sub_1AFDFF3F8();
  LOBYTE(v13[0]) = 0;
  sub_1AFDFE8E8();
  if (!v2)
  {
    v13[0] = *(v3 + 8);
    *(v13 + 9) = *(v3 + 17);
    v12[15] = 1;
    sub_1AF8BA0A0(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    sub_1AF8BA158(&qword_1EB63F018);
    sub_1AFDFE8A8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AFA23370(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6576727563;
  }

  else
  {
    v3 = 0x797469636F6C6576;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6576727563;
  }

  else
  {
    v5 = 0x797469636F6C6576;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AFA23414()
{
  if (*v0)
  {
    return 0x6576727563;
  }

  else
  {
    return 0x797469636F6C6576;
  }
}

uint64_t sub_1AFA2344C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x797469636F6C6576 && a2 == 0xE800000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6576727563 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1AFA23524(uint64_t a1)
{
  v2 = sub_1AFA248F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA23560(uint64_t a1)
{
  v2 = sub_1AFA248F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFA2359C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA236D8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_1AFA2361C()
{
  sub_1AF9D7EF0(0, &qword_1ED72F7D0, sub_1AF47BC54);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1AFE431C0;
  *(v0 + 32) = &type metadata for ParticleAngle;
  *(v0 + 40) = &off_1F252E0E8;
  return result;
}

void sub_1AFA23680(uint64_t a1@<X8>)
{
  *a1 = 1036831949;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
}

uint64_t sub_1AFA236D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA24944(0, &qword_1EB642160, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA248F0();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  LOBYTE(v18) = 0;
  sub_1AFDFE738();
  v12 = v11;
  sub_1AF8BA0A0(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
  v17 = 1;
  sub_1AF8BA158(qword_1ED724010);
  sub_1AFDFE6E8();
  (*(v7 + 8))(v10, v6);
  v16 = v18;
  v13 = v19;
  v14 = v20;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v12;
  *(a2 + 8) = v16;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  return result;
}

uint64_t sub_1AFA23920(uint64_t a1)
{
  v2 = 0;
  v4 = *a1;
  v3 = *(a1 + 8);
  swift_retain_n();
  sub_1AF3CD978(v3, v98);
  v5 = *v98;
  v6 = v98[1];
  v8 = v98[2];
  v7 = v98[3];
  v9 = v99;

  if (v6 == 1)
  {
    v10 = 0.1;
LABEL_24:
    sub_1AFB93E58();
    v34 = v33;
    v113 = *(a1 + 88);
    v114 = *(a1 + 104);
    v115 = *(a1 + 120);
    sub_1AF829168(&v100);
    v110 = v100;
    v111 = v101;
    v112 = v102;
    v35 = sub_1AF6B06C0(v4, &v110, 0x200000000, v103);
    if (!*v103)
    {
      sub_1AFA246FC(&v100, &qword_1EB642150, &type metadata for ParticleAngle, &off_1F252E0E8, type metadata accessor for Query1);
    }

    if (v106 <= 0)
    {
      v94 = *&v103[32];
      v95 = v104;
      v96 = v105;
      v97 = v106;
      v92 = *v103;
      v93 = *&v103[16];
      sub_1AF5DD298(&v92, &v89);
      sub_1AFA246FC(&v100, &qword_1EB642150, &type metadata for ParticleAngle, &off_1F252E0E8, type metadata accessor for Query1);

      sub_1AF5D1564(v103);
    }

    else
    {
      v84 = *(&v104 + 1);
      if (*(&v104 + 1))
      {
        v35.n128_f32[0] = v10 * v34;
        v85 = v35.n128_u64[0];
        v82 = *&v103[40];
        v36 = *(&v105 + 1);
        v88 = *(v105 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v87 = *(*(&v105 + 1) + 32);
        v107 = *v103;
        v108 = *&v103[8];
        v109 = *&v103[24];
        v94 = *&v103[32];
        v95 = v104;
        v96 = v105;
        v97 = v106;
        v92 = *v103;
        v93 = *&v103[16];
        sub_1AF5DD298(&v92, &v89);
        v37 = 0;
        v80 = vdupq_lane_s32(v85, 0);
        while (1)
        {
          v38 = v2;
          v39 = (v82 + 48 * v37);
          v40 = *v39;
          v41 = v39[1];
          v43 = *(v39 + 2);
          v42 = *(v39 + 3);
          v44 = *(v39 + 4);
          v45 = *(v39 + 5);
          if (v88)
          {
            v46 = *(v45 + 376);

            os_unfair_lock_lock(v46);
            os_unfair_lock_lock(*(v45 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v87);
          v47 = *(v36 + 64);
          v89 = *(v36 + 48);
          v90 = v47;
          v91 = *(v36 + 80);
          v48 = *(*(*(*(v45 + 40) + 16) + 32) + 16) + 1;
          *(v36 + 48) = ecs_stack_allocator_allocate(*(v36 + 32), 48 * v48, 8);
          *(v36 + 56) = v48;
          *(v36 + 72) = 0;
          *(v36 + 80) = 0;
          *(v36 + 64) = 0;
          v49 = sub_1AF64B110(&type metadata for ParticleAngle, &off_1F252E0E8, v43, v42, v44, v36);
          if (v43)
          {
            if (v44)
            {
              if (v44 > 7)
              {
                v50 = v44 & 0xFFFFFFFFFFFFFFF8;
                v53 = (v49 + 16);
                v54 = v44 & 0xFFFFFFFFFFFFFFF8;
                do
                {
                  v55 = vaddq_f32(v80, *v53);
                  v53[-1] = vaddq_f32(v80, v53[-1]);
                  *v53 = v55;
                  v53 += 2;
                  v54 -= 8;
                }

                while (v54);
                if (v44 == v50)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v50 = 0;
              }

              v56 = v44 - v50;
              v57 = (v49 + 4 * v50);
              do
              {
                *v57 = *v85.i32 + *v57;
                ++v57;
                --v56;
              }

              while (v56);
            }
          }

          else if (v40 != v41)
          {
            v51 = v41 - v40;
            if ((v41 - v40) > 7)
            {
              v52 = (v51 & 0xFFFFFFFFFFFFFFF8) + v40;
              v58 = (v49 + 4 * v40 + 16);
              v59 = v51 & 0xFFFFFFFFFFFFFFF8;
              do
              {
                v60 = vaddq_f32(v80, *v58);
                v58[-1] = vaddq_f32(v80, v58[-1]);
                *v58 = v60;
                v58 += 2;
                v59 -= 8;
              }

              while (v59);
              if (v51 == (v51 & 0xFFFFFFFFFFFFFFF8))
              {
                goto LABEL_50;
              }
            }

            else
            {
              v52 = v40;
            }

            v61 = v41 - v52;
            v62 = (v49 + 4 * v52);
            do
            {
              *v62 = *v85.i32 + *v62;
              ++v62;
              --v61;
            }

            while (v61);
          }

LABEL_50:
          v2 = v38;
          sub_1AF630994(v36, &v107, &v89);
          if (*(*(v36 + 104) + 16))
          {

            sub_1AF62F348(v63, v45);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v65 = *(v36 + 104);
            if (isUniquelyReferenced_nonNull_native)
            {
              v66 = v65[2];
              v67 = swift_isUniquelyReferenced_nonNull_native();
              *(v36 + 104) = v65;
              if ((v67 & 1) == 0)
              {
                v65 = sub_1AF420EA0(0, v66, 1, v65);
                *(v36 + 104) = v65;
              }

              sub_1AF43A540(0);
              swift_arrayDestroy();
              if (v66)
              {
                v68 = v65[2] - v66;
                memmove(v65 + 4, &v65[9 * v66 + 4], 72 * v68);
                v65[2] = v68;
              }

              *(v36 + 104) = v65;
            }

            else
            {
              v69 = MEMORY[0x1E69E7CC0];
              if (v65[3] >= 2uLL)
              {
                sub_1AF9D7EF0(0, &qword_1ED7269C0, sub_1AF43A540);
                v69 = swift_allocObject();
                v70 = j__malloc_size_0(v69);
                v69[2] = 0;
                v69[3] = 2 * ((v70 - 32) / 72);
              }

              *(v36 + 104) = v69;
            }

            if (*(*(v36 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
            {
              v71 = *(v45 + 232);
              v72 = *(v45 + 256);
              if (v71 == v72)
              {
                v73 = *(v45 + 240);
              }

              else
              {
                sub_1AF6497A0(v72, v71);
                v72 = *(v45 + 232);
                v73 = *(v45 + 240);
                if (v73 == v72)
                {
                  v73 = 0;
                  v72 = 0;
                  *(v45 + 232) = 0;
                  *(v45 + 240) = 0;
                }
              }

              *(v45 + 248) = v73;
              *(v45 + 256) = v72;
            }
          }

          ecs_stack_allocator_pop_snapshot(v87);
          if (v88)
          {
            os_unfair_lock_unlock(*(v45 + 344));
            os_unfair_lock_unlock(*(v45 + 376));
          }

          if (++v37 == v84)
          {
            sub_1AF5D1564(v103);
            sub_1AFA246FC(&v100, &qword_1EB642150, &type metadata for ParticleAngle, &off_1F252E0E8, type metadata accessor for Query1);
            goto LABEL_73;
          }
        }
      }

      sub_1AFA246FC(&v100, &qword_1EB642150, &type metadata for ParticleAngle, &off_1F252E0E8, type metadata accessor for Query1);
LABEL_73:
    }

    return sub_1AF5D1564(v103);
  }

  if (!v6)
  {
    v10 = v5;
    goto LABEL_24;
  }

  v113 = *(a1 + 88);
  v114 = *(a1 + 104);
  v115 = *(a1 + 120);
  sub_1AF5C9270(&v100);
  v110 = v100;
  v111 = v101;
  v112 = v102;
  sub_1AF6B06C0(v4, &v110, 0x200000000, v103);
  if (!*v103)
  {
    sub_1AFA24414(&v100);
  }

  if (v106 <= 0)
  {
    v94 = *&v103[32];
    v95 = v104;
    v96 = v105;
    v97 = v106;
    v92 = *v103;
    v93 = *&v103[16];
    sub_1AF5DD298(&v92, &v89);
    sub_1AFA24414(&v100);

    sub_1AF5D1564(v103);
  }

  else
  {
    v79 = *(&v104 + 1);
    if (*(&v104 + 1))
    {
      v78 = *&v103[40];
      v11 = *(&v105 + 1);
      v12 = *(v105 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v13 = *(*(&v105 + 1) + 32);
      v107 = *v103;
      v108 = *&v103[8];
      v109 = *&v103[24];
      v94 = *&v103[32];
      v95 = v104;
      v96 = v105;
      v97 = v106;
      v92 = *v103;
      v93 = *&v103[16];
      sub_1AF5DD298(&v92, &v89);
      v14 = 0;
      v77 = v12;
      v75 = v7;
      v76 = v13;
      while (1)
      {
        v86 = v14;
        v15 = (v78 + 48 * v14);
        v83 = *v15;
        v81 = v15[1];
        v17 = *(v15 + 2);
        v16 = *(v15 + 3);
        v18 = *(v15 + 4);
        v19 = *(v15 + 5);
        if (v12)
        {
          v20 = *(v19 + 376);

          os_unfair_lock_lock(v20);
          os_unfair_lock_lock(*(v19 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v13);
        v21 = *(v11 + 64);
        v89 = *(v11 + 48);
        v90 = v21;
        v91 = *(v11 + 80);
        v22 = *(*(*(*(v19 + 40) + 16) + 32) + 16) + 1;
        *(v11 + 48) = ecs_stack_allocator_allocate(*(v11 + 32), 48 * v22, 8);
        *(v11 + 56) = v22;
        *(v11 + 72) = 0;
        *(v11 + 80) = 0;
        *(v11 + 64) = 0;
        v23 = sub_1AF64B110(&type metadata for ParticleAngle, &off_1F252E0E8, v17, v16, v18, v11);
        v24 = sub_1AF64B110(&type metadata for ParticleAge, &off_1F252CBE8, v17, v16, v18, v11);
        v25 = v24;
        if (v17)
        {
          if (v18)
          {
            v26 = v86;
            v27 = v19;
            do
            {
              v28 = *v25++;
              *v23++ = sub_1AFBFCB44(v6, v8, v75, v9, v28).u32[0];
              --v18;
            }

            while (v18);
            goto LABEL_21;
          }
        }

        else if (v83 != v81)
        {
          v29 = v81 - v83;
          v30 = (v24 + 4 * v83);
          v31 = &v23[v83];
          v26 = v86;
          v27 = v19;
          do
          {
            v32 = *v30++;
            *v31++ = sub_1AFBFCB44(v6, v8, v75, v9, v32).u32[0];
            --v29;
          }

          while (v29);
          goto LABEL_21;
        }

        v26 = v86;
        v27 = v19;
LABEL_21:
        sub_1AF630994(v11, &v107, &v89);
        sub_1AF62D29C(v27);
        v13 = v76;
        ecs_stack_allocator_pop_snapshot(v76);
        v12 = v77;
        if (v77)
        {
          os_unfair_lock_unlock(*(v27 + 344));
          os_unfair_lock_unlock(*(v27 + 376));
        }

        v14 = v26 + 1;
        if (v14 == v79)
        {
          goto LABEL_76;
        }
      }
    }

    v94 = *&v103[32];
    v95 = v104;
    v96 = v105;
    v97 = v106;
    v92 = *v103;
    v93 = *&v103[16];
    sub_1AF5DD298(&v92, &v89);
LABEL_76:

    sub_1AF5D1564(v103);

    sub_1AFA24414(&v100);
  }

  return sub_1AF5D1564(v103);
}

uint64_t sub_1AFA24414(uint64_t a1)
{
  sub_1AFA24470();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AFA24470()
{
  if (!qword_1EB642158)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB642158);
    }
  }
}

uint64_t destroy for ParticleAngleEvolution(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
  }

  return result;
}

__n128 initializeWithCopy for ParticleAngleEvolution(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    *(a1 + 8) = v2;
    *(a1 + 16) = v3;
    *(a1 + 24) = v4;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    result = *(a2 + 17);
    *(a1 + 17) = result;
  }

  return result;
}

uint64_t assignWithCopy for ParticleAngleEvolution(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  v7 = (a2 + 8);
  v6 = *(a2 + 8);
  if (v5)
  {
    if (v6)
    {
      *(a1 + 8) = v6;

      *(a1 + 16) = *(a2 + 16);

      *(a1 + 24) = *(a2 + 24);

      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      sub_1AFA246FC(v4, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
      v8 = *(v7 + 9);
      *v4 = *v7;
      *(v4 + 9) = v8;
    }
  }

  else if (v6)
  {
    *(a1 + 8) = v6;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v9 = *v7;
    *(v4 + 9) = *(a2 + 17);
    *v4 = v9;
  }

  return a1;
}

uint64_t sub_1AFA246FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  sub_1AF8BA0A0(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

__n128 assignWithTake for ParticleAngleEvolution(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = a1 + 8;
  v4 = a2 + 8;
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v3)
    {
      *(a1 + 8) = v3;

      *(a1 + 16) = *(a2 + 16);

      *(a1 + 24) = *(a2 + 24);

      *(a1 + 32) = *(a2 + 32);
      return result;
    }

    sub_1AFA246FC(a1 + 8, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
  }

  *v2 = *v4;
  result = *(v4 + 9);
  *(v2 + 9) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleAngleEvolution(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleAngleEvolution(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1AFA248F0()
{
  result = qword_1EB642168;
  if (!qword_1EB642168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642168);
  }

  return result;
}

void sub_1AFA24944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA248F0();
    v7 = a3(a1, &type metadata for ParticleAngleEvolution.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFA249BC()
{
  result = qword_1EB642178;
  if (!qword_1EB642178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642178);
  }

  return result;
}

unint64_t sub_1AFA24A14()
{
  result = qword_1EB642180;
  if (!qword_1EB642180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642180);
  }

  return result;
}

unint64_t sub_1AFA24A6C()
{
  result = qword_1EB642188;
  if (!qword_1EB642188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642188);
  }

  return result;
}

uint64_t sub_1AFA24AC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1886216562;
  if (v2 != 1)
  {
    v4 = 0x4173746365666661;
    v3 = 0xEC0000006168706CLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7469736F706D6F63;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB000000006E6F69;
  }

  v7 = 0xE400000000000000;
  v8 = 1886216562;
  if (*a2 != 1)
  {
    v8 = 0x4173746365666661;
    v7 = 0xEC0000006168706CLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7469736F706D6F63;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB000000006E6F69;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AFA24BC8()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA24C74()
{
  sub_1AFDFD038();
}

uint64_t sub_1AFA24D0C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA24DB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFA260D8();
  *a1 = result;
  return result;
}

void sub_1AFA24DE4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006E6F69;
  v4 = 0xE400000000000000;
  v5 = 1886216562;
  if (v2 != 1)
  {
    v5 = 0x4173746365666661;
    v4 = 0xEC0000006168706CLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7469736F706D6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1AFA24E4C()
{
  v1 = 1886216562;
  if (*v0 != 1)
  {
    v1 = 0x4173746365666661;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7469736F706D6F63;
  }
}

uint64_t sub_1AFA24EB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AFA260D8();
  *a1 = result;
  return result;
}

uint64_t sub_1AFA24ED8(uint64_t a1)
{
  v2 = sub_1AFA265C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA24F14(uint64_t a1)
{
  v2 = sub_1AFA265C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFA24F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v103 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);

  sub_1AF3CDAE8(v6, &v83);

  if (v84)
  {
    v7 = v87;
    v69 = v83;
    v70 = v84;
    v71 = v85;
    v72 = v86;
    v73 = v87;
    v8 = HIDWORD(v86);
    if (HIDWORD(v86) != -1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1AFA25D60(&v69);
    LODWORD(v8) = HIDWORD(v72);
    v7 = v73;
    if (HIDWORD(v72) != -1)
    {
LABEL_8:
      sub_1AF8E60EC(v8 | (v7 << 32), 1, &v79);
      goto LABEL_9;
    }
  }

  if (v7)
  {
    goto LABEL_8;
  }

  if (!a3)
  {
    return sub_1AF58F86C(&v69);
  }

  sub_1AF8B4B2C(v70, v71, v72, &v79);
LABEL_9:
  v78[0] = v79;
  v78[1] = v80;
  v78[2] = v81;
  v78[3] = v82;
  if (!*(&v82 + 1))
  {
    return sub_1AF58F86C(&v69);
  }

  v102[0] = v79;
  v102[1] = v80;
  v102[2] = v81;
  v102[3] = v82;
  sub_1AF44222C(v78, &v92);
  sub_1AF4783C0(v102, 1, 1, &v88);
  if (v90 == 1)
  {
    goto LABEL_69;
  }

  v74 = v88;
  v75 = v89;
  v76 = v90;
  v77 = v91;
  v9 = v69;
  v10 = 0;
  v57 = *(&v69 + 1);
  if (*(&v69 + 1) > 0.0)
  {
    v10.i32[0] = SHIDWORD(v69);
  }

  if (*v10.i32 > 1.0)
  {
    *v10.i32 = 1.0;
  }

  v60 = v10;
  v11 = *(v3 + 32);
  v67[0] = *(v3 + 16);
  v67[1] = v11;
  v68 = *(v3 + 48);
  sub_1AF6B06C0(a2, v67, 0x200000000, &v92);
  if (!v92)
  {
LABEL_69:
    sub_1AF0D9DB0(&v79, &unk_1ED725420);
    return sub_1AF58F86C(&v69);
  }

  if (v99 <= 0)
  {
    sub_1AF0D9DB0(&v79, &unk_1ED725420);
    sub_1AF58F86C(&v69);
  }

  else
  {
    v54 = v96;
    if (v96)
    {
      v12 = 0;
      v53 = v95;
      v13 = v98;
      v14 = *(v98 + 32);
      v15 = *(v97 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v64 = v92;
      v65 = v93;
      v66 = v94;
      v56 = vdupq_lane_s32(v60, 0);
      v51 = v15;
      v52 = v14;
      while (1)
      {
        v55 = v12;
        v16 = (v53 + 48 * v12);
        v17 = *v16;
        v61 = v16[1];
        v18 = *(v16 + 2);
        v19 = *(v16 + 3);
        v21 = *(v16 + 4);
        v20 = *(v16 + 5);
        if (v15)
        {
          v22 = *(v20 + 376);

          os_unfair_lock_lock(v22);
          os_unfair_lock_lock(*(v20 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v14);
        v23 = *(v13 + 64);
        v100[0] = *(v13 + 48);
        v100[1] = v23;
        v101 = *(v13 + 80);
        v24 = *(*(*(*(v20 + 40) + 16) + 32) + 16) + 1;
        *(v13 + 48) = ecs_stack_allocator_allocate(*(v13 + 32), 48 * v24, 8);
        *(v13 + 56) = v24;
        *(v13 + 72) = 0;
        *(v13 + 80) = 0;
        *(v13 + 64) = 0;
        v25 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v18, v19, v21, v13);
        v26 = sub_1AF64B110(&type metadata for ParticleAge, &off_1F252CBE8, v18, v19, v21, v13);
        v27 = v26;
        if (v18)
        {
          v28 = v55;
          if (!v21)
          {
            goto LABEL_67;
          }

          v29 = BYTE1(v72);
          v31 = v49;
          v30 = v50;
          while (1)
          {
            v58 = v31;
            v62 = v30;
            v76(&v74, *v27);
            if (v29)
            {
              v31 = v58;
              v30 = v62;
              if (v9 > 1)
              {
                if (v9 == 2)
                {
                  v32 = vmulq_f32(vmulq_n_f32(v34, v57), *v25);
                }

                else
                {
                  v32 = vmlaq_f32(*v25, v56, vsubq_f32(v34, *v25));
                }
              }

              else if (v9)
              {
                v32 = vaddq_f32(vmulq_n_f32(v34, v57), *v25);
              }

              else
              {
                v32 = vmulq_n_f32(v34, v57);
              }

              goto LABEL_29;
            }

            v31 = v34;
            v31.i32[3] = v58.i32[3];
            v35 = *v25;
            v30 = *v25;
            v30.i32[3] = v62.i32[3];
            if (v9 > 1)
            {
              if (v9 != 2)
              {
                v32 = vmlaq_f32(v35, v56, vsubq_f32(v31, v30));
                goto LABEL_28;
              }

              v32.i64[0] = vmulq_f32(v35, vmulq_n_f32(v34, v57)).u64[0];
              v33 = vmuls_lane_f32(vmuls_lane_f32(v57, v34, 2), v35, 2);
            }

            else if (v9)
            {
              v32.i64[0] = vaddq_f32(v35, vmulq_n_f32(v34, v57)).u64[0];
              v33 = v35.f32[2] + vmuls_lane_f32(v57, v34, 2);
            }

            else
            {
              v32.i64[0] = vmulq_n_f32(v34, v57).u64[0];
              v33 = vmuls_lane_f32(v57, v34, 2);
            }

            v32.f32[2] = v33;
LABEL_28:
            v32.i32[3] = HIDWORD(*v25);
LABEL_29:
            *v25++ = v32;
            ++v27;
            if (!--v21)
            {
              v49 = v31;
              v50 = v30;
              goto LABEL_67;
            }
          }
        }

        if (v17 != v61)
        {
          break;
        }

LABEL_66:
        v28 = v55;
LABEL_67:
        sub_1AF630994(v13, &v64, v100);
        sub_1AF62D29C(v20);
        v14 = v52;
        ecs_stack_allocator_pop_snapshot(v52);
        v15 = v51;
        if (v51)
        {
          os_unfair_lock_unlock(*(v20 + 344));
          os_unfair_lock_unlock(*(v20 + 376));
        }

        v12 = v28 + 1;
        if (v12 == v54)
        {
          goto LABEL_71;
        }
      }

      v36 = BYTE1(v72);
      v37 = v61 - v17;
      v38 = (v26 + 4 * v17);
      v39 = &v25[v17];
      v41 = v47;
      v40 = v48;
      while (1)
      {
        v59 = v41;
        v63 = v40;
        v76(&v74, *v38);
        if (v36)
        {
          v41 = v59;
          v40 = v63;
          if (v9 > 1)
          {
            if (v9 == 2)
            {
              v42 = vmulq_f32(vmulq_n_f32(v44, v57), *v39);
            }

            else
            {
              v42 = vmlaq_f32(*v39, v56, vsubq_f32(v44, *v39));
            }
          }

          else if (v9)
          {
            v42 = vaddq_f32(vmulq_n_f32(v44, v57), *v39);
          }

          else
          {
            v42 = vmulq_n_f32(v44, v57);
          }

          goto LABEL_50;
        }

        v41 = v44;
        v41.i32[3] = v59.i32[3];
        v45 = *v39;
        v40 = *v39;
        v40.i32[3] = v63.i32[3];
        if (v9 > 1)
        {
          if (v9 != 2)
          {
            v42 = vmlaq_f32(v45, v56, vsubq_f32(v41, v40));
            goto LABEL_49;
          }

          v42.i64[0] = vmulq_f32(v45, vmulq_n_f32(v44, v57)).u64[0];
          v43 = vmuls_lane_f32(vmuls_lane_f32(v57, v44, 2), v45, 2);
        }

        else if (v9)
        {
          v42.i64[0] = vaddq_f32(v45, vmulq_n_f32(v44, v57)).u64[0];
          v43 = v45.f32[2] + vmuls_lane_f32(v57, v44, 2);
        }

        else
        {
          v42.i64[0] = vmulq_n_f32(v44, v57).u64[0];
          v43 = vmuls_lane_f32(v57, v44, 2);
        }

        v42.f32[2] = v43;
LABEL_49:
        v42.i32[3] = HIDWORD(*v39);
LABEL_50:
        *v39++ = v42;
        ++v38;
        if (!--v37)
        {
          v47 = v41;
          v48 = v40;
          goto LABEL_66;
        }
      }
    }

LABEL_71:
    sub_1AF58F86C(&v69);
    sub_1AF0D9DB0(&v79, &unk_1ED725420);
  }

  return sub_1AF0D9DB0(&v92, &qword_1ED725EA0);
}

uint64_t sub_1AFA2562C(void *a1)
{
  v3 = v1;
  sub_1AFA2661C(0, &qword_1EB642190, sub_1AFA265C8, &type metadata for ParticleColorOverLife.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA265C8();
  sub_1AFDFF3F8();
  *&v12 = *v3;
  v14 = 0;
  sub_1AF9D68D0();
  sub_1AFDFE918();
  if (!v2)
  {
    v12 = *(v3 + 8);
    v13 = *(v3 + 24);
    v14 = 1;
    sub_1AF80BC20();
    sub_1AFDFE918();
    LOBYTE(v12) = 2;
    sub_1AFDFE8C8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AFA25824(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 104);
  v8 = *(a1 + 88);
  v9 = v3;
  v10 = *(a1 + 120);
  sub_1AF5C9294(v6);
  sub_1AF688940(a1);
  v4 = v6[1];
  *(v2 + 16) = v6[0];
  *(v2 + 32) = v4;
  *(v2 + 48) = v7;
  return v2;
}

double sub_1AFA258C0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA26124(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_1AFA2599C@<D0>(uint64_t a1@<X8>)
{
  sub_1AFA25D60(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1AFA259E0(uint64_t a1)
{
  v2 = *(a1 + 88);
  v35 = *(a1 + 72);
  v36 = v2;
  v3 = *(a1 + 120);
  v37 = *(a1 + 104);
  v38 = v3;
  v4 = *(a1 + 24);
  v31 = *(a1 + 8);
  v32 = v4;
  v5 = *(a1 + 56);
  v33 = *(a1 + 40);
  v34 = v5;
  v6 = v31;

  sub_1AF3CDAE8(*(&v31 + 1), &v27);

  if (v28)
  {
    v39 = v27;
    v40 = v28;
    v41[0] = v29;
    LODWORD(v41[1]) = v30;
  }

  else
  {
    sub_1AFA25D60(&v39);
  }

  sub_1AFB948C0();
  v7 = sub_1AF657F68(&type metadata for ParticleAge);

  if (!v7)
  {
    return sub_1AF58F86C(&v39);
  }

  sub_1AFB948C0();
  v8 = sub_1AF657F68(&type metadata for ParticleLifetime);

  if (!v8)
  {
    return sub_1AF58F86C(&v39);
  }

  LODWORD(v27) = HIDWORD(v39);
  BYTE4(v27) = v39;
  LOBYTE(v28) = BYTE9(v41[0]);
  v9 = *a1;
  if (*a1)
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for particle_color_over_life_uniforms(0);
    sub_1AF6F4524(&v27, 1, ObjectType, v11, v12, v13, v14, v15);
  }

  if (*(v41 + 12) != 0xFFFFFFFFLL)
  {
    v19 = sub_1AF8D93C8(HIDWORD(v41[0]) | (LODWORD(v41[1]) << 32), &v27, *(a1 + 136), *(a1 + 144));
    result = sub_1AF58F86C(&v39);
    if (!v19)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (!*(a1 + 144))
  {
    return sub_1AF58F86C(&v39);
  }

  v16 = v40;
  v17 = *&v41[0];
  v18 = BYTE8(v41[0]);

  v19 = sub_1AF8B47E4(v16, v17, v18);
  sub_1AF58F86C(&v39);

  if (!v19)
  {
    return result;
  }

LABEL_15:
  if (v9)
  {
    [v9 setTexture:v19 atIndex:0];
  }

  v21 = *(v6 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v22 = v33;

  v23 = v21;

  v26[1] = v26;
  MEMORY[0x1EEE9AC00](v24, v25);
  sub_1AFCBF008(v22, sub_1AF9D17D4);
  swift_unknownObjectRelease();
}

double sub_1AFA25D60@<D0>(uint64_t a1@<X8>)
{
  sub_1AF9D6924(0, &qword_1EB633A48, sub_1AF43A11C);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C6A0;
  v3 = _simd_pow_f4(xmmword_1AFE93380, xmmword_1AFE42AB0);
  v3.i32[3] = 0;
  *(v2 + 32) = v3;
  *(v2 + 48) = 0;
  v4 = _simd_pow_f4(xmmword_1AFE93390, xmmword_1AFE42AB0);
  v4.i32[3] = 1.0;
  *(v2 + 64) = v4;
  *(v2 + 80) = 1048576000;
  v5 = _simd_pow_f4(xmmword_1AFE933A0, xmmword_1AFE42AB0);
  v5.i32[3] = 1.0;
  *(v2 + 96) = v5;
  *(v2 + 112) = 1056964608;
  v6 = _simd_pow_f4(xmmword_1AFE933B0, xmmword_1AFE42AB0);
  v6.i32[3] = 1.0;
  *(v2 + 128) = v6;
  *(v2 + 144) = 1061158912;
  v7 = _simd_pow_f4(xmmword_1AFE933C0, xmmword_1AFE42AB0);
  v7.i32[3] = 0;
  *(v2 + 160) = v7;
  *(v2 + 176) = 1065353216;
  v8 = sub_1AF3C3D64(v2);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v9 = sub_1AF9D3A24(v8);
  v11 = v10;

  *a1 = 0;
  *(a1 + 4) = 1065353216;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11;
  *(a1 + 24) = 257;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 28) = 0xFFFFFFFFLL;
  return result;
}

uint64_t initializeWithCopy for ParticleColorOverLife(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);

  return a1;
}

uint64_t assignWithCopy for ParticleColorOverLife(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

__n128 initializeWithTake for ParticleColorOverLife(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for ParticleColorOverLife(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

uint64_t getEnumTagSinglePayload for ParticleColorOverLife(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleColorOverLife(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AFA260D8()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AFA26124@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v30 = a2;
  sub_1AFA2661C(0, &qword_1EB633AD8, sub_1AFA265C8, &type metadata for ParticleColorOverLife.CodingKeys, MEMORY[0x1E69E6F48]);
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v29 - v6;
  sub_1AF9D6924(0, &qword_1EB633A48, sub_1AF43A11C);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C6A0;
  v34 = xmmword_1AFE42AB0;
  v9 = _simd_pow_f4(xmmword_1AFE93380, xmmword_1AFE42AB0);
  v9.i32[3] = 0;
  *(v8 + 32) = v9;
  *(v8 + 48) = 0;
  v10 = _simd_pow_f4(xmmword_1AFE93390, v34);
  v10.i32[3] = 1.0;
  *(v8 + 64) = v10;
  *(v8 + 80) = 1048576000;
  v11 = _simd_pow_f4(xmmword_1AFE933A0, v34);
  v11.i32[3] = 1.0;
  *(v8 + 96) = v11;
  *(v8 + 112) = 1056964608;
  v12 = _simd_pow_f4(xmmword_1AFE933B0, v34);
  LODWORD(v13) = 1.0;
  v33 = v13;
  v12.i32[3] = 1.0;
  *(v8 + 128) = v12;
  *(v8 + 144) = 1061158912;
  v14 = _simd_pow_f4(xmmword_1AFE933C0, v34);
  v14.i32[3] = 0;
  *(v8 + 160) = v14;
  *(v8 + 176) = 1065353216;
  v15 = sub_1AF3C3D64(v8);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v16 = sub_1AF9D3A24(v15);
  v18 = v17;

  sub_1AF441150(a1, a1[3]);
  sub_1AFA265C8();
  sub_1AFDFF3B8();
  if (v2)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    LOBYTE(v38) = 0;
    *(&v38 + 1) = v44;
    BYTE3(v38) = v45;
    HIDWORD(v38) = v33;
    v39 = v16;
    v40 = v18;
    v41 = 1;
    v42 = 1;
    v43 = 0xFFFFFFFFLL;
    return sub_1AF58F86C(&v38);
  }

  else
  {
    v19 = v31;
    LOBYTE(v35) = 0;
    sub_1AF9D6798();
    sub_1AFDFE768();
    v20 = v38;
    LODWORD(v21) = HIDWORD(v38);
    v33 = v21;
    LOBYTE(v35) = 1;
    sub_1AF80A7AC();
    sub_1AFDFE768();

    v23 = v38;
    v22 = v39;
    v24 = v40;
    v37 = 2;
    v25 = sub_1AFDFE718();
    (*(v19 + 8))(v7, v32);
    v25 &= 1u;
    LOBYTE(v35) = v20;
    *(&v35 + 1) = v44;
    BYTE3(v35) = v45;
    DWORD1(v35) = v33;
    *(&v35 + 1) = v23;
    *v36 = v22;
    v36[8] = v24;
    v36[9] = v25;
    *&v36[12] = 0xFFFFFFFFLL;
    sub_1AF4425A0(&v35, &v38);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    LOBYTE(v38) = v20;
    *(&v38 + 1) = v44;
    BYTE3(v38) = v45;
    HIDWORD(v38) = v33;
    v39 = v23;
    v40 = v22;
    v41 = v24;
    v42 = v25;
    v43 = 0xFFFFFFFFLL;
    result = sub_1AF58F86C(&v38);
    v27 = *v36;
    v28 = v30;
    *v30 = v35;
    v28[1] = v27;
    *(v28 + 8) = *&v36[16];
  }

  return result;
}