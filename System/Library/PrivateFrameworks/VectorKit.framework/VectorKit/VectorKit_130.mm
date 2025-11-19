void std::__introsort<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,false>(float *a1, float *a2, float *a3, uint64_t a4, char a5)
{
  while (2)
  {
    v221 = a2 - 2;
    i = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = i;
          v11 = (a2 - i) >> 3;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:

                std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(i, i + 2, v221, a3);
                return;
              case 4:

                std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(i, i + 2, i + 4, v221, a3);
                return;
              case 5:

                std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(i, i + 2, i + 4, i + 6, v221, a3);
                return;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return;
            }

            if (v11 == 2)
            {
              v76 = *(a2 - 2);
              v77 = *(a2 - 1);
              v78 = a3[1];
              v79 = v77 - v78;
              v80 = *i;
              v81 = i[1];
              v82 = v81 - v78;
              v83 = v79 / (v76 - *a3);
              if (vabds_f32(v76, *a3) < 0.00000011921)
              {
                v83 = 3.4028e38;
              }

              v84 = v82 / (*i - *a3);
              if (vabds_f32(v80, *a3) >= 0.00000011921)
              {
                v85 = v84;
              }

              else
              {
                v85 = 3.4028e38;
              }

              if (v83 < v85 || v83 == v85 && (v76 < v80 || v76 == v80 && v77 < v81))
              {
                *i = v76;
                i[1] = *(a2 - 1);
                *(a2 - 2) = v80;
                *(a2 - 1) = v81;
              }

              return;
            }
          }

          if (v11 <= 23)
          {
            if (a5)
            {
              if (i != a2)
              {
                v86 = i + 2;
                if (i + 2 != a2)
                {
                  v87 = 0;
                  v88 = *a3;
                  v89 = i;
                  do
                  {
                    v90 = v89;
                    v89 = v86;
                    v91 = v90[2];
                    v92 = v90[3];
                    v93 = a3[1];
                    v94 = v92 - v93;
                    v95 = *v90;
                    v96 = v90[1];
                    v97 = v96 - v93;
                    v98 = v94 / (v91 - v88);
                    if (vabds_f32(v91, v88) < 0.00000011921)
                    {
                      v98 = 3.4028e38;
                    }

                    v99 = v97 / (*v90 - v88);
                    if (vabds_f32(v95, v88) < 0.00000011921)
                    {
                      v99 = 3.4028e38;
                    }

                    if (v98 < v99 || v98 == v99 && (v91 < v95 || v91 == v95 && v92 < v96))
                    {
                      v90[2] = v95;
                      v86[1] = v90[1];
                      v100 = i;
                      if (v90 != i)
                      {
                        v101 = v87;
                        while (1)
                        {
                          v102 = (i + v101);
                          v103 = a3[1];
                          v104 = v92 - v103;
                          v105 = *(i + v101 - 8);
                          v106 = *(i + v101 - 4);
                          v107 = v106 - v103;
                          v108 = v104 / (v91 - *a3);
                          if (vabds_f32(v91, *a3) < 0.00000011921)
                          {
                            v108 = 3.4028e38;
                          }

                          v109 = v107 / (v105 - *a3);
                          v110 = vabds_f32(v105, *a3) >= 0.00000011921 ? v109 : 3.4028e38;
                          if (v108 >= v110)
                          {
                            if (v108 != v110)
                            {
                              v100 = (i + v101);
                              goto LABEL_218;
                            }

                            if (v91 >= v105 && (v91 != v105 || v92 >= v106))
                            {
                              break;
                            }
                          }

                          v90 -= 2;
                          *v102 = v105;
                          v102[1] = v106;
                          v101 -= 8;
                          if (!v101)
                          {
                            v100 = i;
                            goto LABEL_218;
                          }
                        }

                        v100 = v90;
                      }

LABEL_218:
                      *v100 = v91;
                      v100[1] = v92;
                      v88 = *a3;
                    }

                    v86 = v89 + 2;
                    v87 += 8;
                  }

                  while (v89 + 2 != a2);
                }
              }
            }

            else if (i != a2)
            {
              v197 = i + 2;
              if (i + 2 != a2)
              {
                v198 = *a3;
                do
                {
                  v199 = a1;
                  a1 = v197;
                  v200 = v199[2];
                  v201 = v199[3];
                  v202 = a3[1];
                  v203 = v201 - v202;
                  v204 = *v199;
                  v205 = v199[1];
                  v206 = v205 - v202;
                  v207 = v203 / (v200 - v198);
                  if (vabds_f32(v200, v198) < 0.00000011921)
                  {
                    v207 = 3.4028e38;
                  }

                  v208 = v206 / (*v199 - v198);
                  if (vabds_f32(v204, v198) < 0.00000011921)
                  {
                    v208 = 3.4028e38;
                  }

                  if (v207 < v208 || v207 == v208 && (v200 < v204 || v200 == v204 && v201 < v205))
                  {
                    do
                    {
                      v209 = v199;
                      v210 = v204;
                      v211 = *(v199 - 2);
                      v199 -= 2;
                      v204 = v211;
                      v212 = *(v199 + 3);
                      v199[4] = v210;
                      *(v199 + 5) = v212;
                      v213 = a3[1];
                      v214 = v201 - v213;
                      v215 = v211 - *a3;
                      v216 = v199[1];
                      v217 = v216 - v213;
                      v218 = v214 / (v200 - *a3);
                      if (vabds_f32(v200, *a3) < 0.00000011921)
                      {
                        v218 = 3.4028e38;
                      }

                      v219 = v217 / v215;
                      if (vabds_f32(v204, *a3) >= 0.00000011921)
                      {
                        v220 = v219;
                      }

                      else
                      {
                        v220 = 3.4028e38;
                      }
                    }

                    while (v218 < v220 || v218 == v220 && (v200 < v204 || v200 == v204 && v201 < v216));
                    *v209 = v200;
                    v209[1] = v201;
                    v198 = *a3;
                  }

                  v197 = a1 + 2;
                }

                while (a1 + 2 != a2);
              }
            }

            return;
          }

          if (!a4)
          {
            if (i != a2)
            {
              v111 = (v11 - 2) >> 1;
              v112 = v111;
              do
              {
                v113 = v112;
                if (v111 >= v112)
                {
                  v114 = (2 * v112) | 1;
                  v115 = &i[2 * v114];
                  v116 = *a3;
                  if (2 * v113 + 2 >= v11)
                  {
                    v120 = a3[1];
                  }

                  else
                  {
                    v117 = v115[2];
                    v119 = *v115;
                    v118 = v115[1];
                    v120 = a3[1];
                    v121 = v115[3];
                    v122 = (v118 - v120) / (*v115 - v116);
                    v123 = 3.4028e38;
                    if (vabds_f32(*v115, v116) < 0.00000011921)
                    {
                      v122 = 3.4028e38;
                    }

                    if (vabds_f32(v117, v116) >= 0.00000011921)
                    {
                      v123 = (v121 - v120) / (v117 - v116);
                    }

                    if (v122 < v123 || v122 == v123 && (v119 < v117 || v119 == v117 && v118 < v121))
                    {
                      v115 += 2;
                      v114 = 2 * v113 + 2;
                    }
                  }

                  v124 = &i[2 * v113];
                  v125 = *v115;
                  v126 = v115[1];
                  v127 = v126 - v120;
                  v128 = *v124;
                  v129 = v124[1];
                  v130 = v129 - v120;
                  v131 = v127 / (*v115 - v116);
                  if (vabds_f32(*v115, v116) < 0.00000011921)
                  {
                    v131 = 3.4028e38;
                  }

                  v132 = v130 / (*v124 - v116);
                  v133 = vabds_f32(v128, v116) >= 0.00000011921 ? v132 : 3.4028e38;
                  if (v131 >= v133 && (v131 != v133 || v125 >= v128 && (v125 != v128 || v126 >= v129)))
                  {
                    while (1)
                    {
                      *v124 = v125;
                      v124[1] = v115[1];
                      if (v111 < v114)
                      {
                        break;
                      }

                      v124 = v115;
                      v134 = 2 * v114;
                      v114 = (2 * v114) | 1;
                      v115 = &i[2 * v114];
                      v135 = v134 + 2;
                      v136 = *a3;
                      v137 = a3[1];
                      if (v135 < v11)
                      {
                        v138 = v115[2];
                        v140 = *v115;
                        v139 = v115[1];
                        v141 = v115[3];
                        v142 = (v139 - v137) / (*v115 - v136);
                        v143 = 3.4028e38;
                        if (vabds_f32(*v115, v136) < 0.00000011921)
                        {
                          v142 = 3.4028e38;
                        }

                        if (vabds_f32(v138, v136) >= 0.00000011921)
                        {
                          v143 = (v141 - v137) / (v138 - v136);
                        }

                        if (v142 < v143 || v142 == v143 && (v140 < v138 || v140 == v138 && v139 < v141))
                        {
                          v115 += 2;
                          v114 = v135;
                        }
                      }

                      v125 = *v115;
                      v144 = v115[1];
                      v145 = v144 - v137;
                      v146 = v129 - v137;
                      v147 = v145 / (*v115 - v136);
                      if (vabds_f32(*v115, v136) < 0.00000011921)
                      {
                        v147 = 3.4028e38;
                      }

                      v148 = v146 / (v128 - v136);
                      if (vabds_f32(v128, v136) >= 0.00000011921)
                      {
                        v149 = v148;
                      }

                      else
                      {
                        v149 = 3.4028e38;
                      }

                      if (v147 < v149 || v147 == v149 && (v125 < v128 || v125 == v128 && v144 < v129))
                      {
                        v115 = v124;
                        break;
                      }
                    }

                    *v115 = v128;
                    v115[1] = v129;
                  }
                }

                v112 = v113 - 1;
              }

              while (v113);
              do
              {
                v150 = 0;
                v152 = *i;
                v151 = *(i + 1);
                v153 = i;
                do
                {
                  v154 = v153;
                  v155 = &v153[2 * v150];
                  v153 = v155 + 2;
                  v156 = 2 * v150;
                  v150 = (2 * v150) | 1;
                  v157 = v156 + 2;
                  if (v157 < v11)
                  {
                    v159 = v155[4];
                    v158 = v155 + 4;
                    v160 = v159;
                    v162 = *(v158 - 2);
                    v161 = *(v158 - 1);
                    v163 = a3[1];
                    v164 = v161 - v163;
                    v165 = v159 - *a3;
                    v166 = v158[1];
                    v167 = v166 - v163;
                    v168 = v164 / (v162 - *a3);
                    if (vabds_f32(v162, *a3) < 0.00000011921)
                    {
                      v168 = 3.4028e38;
                    }

                    v169 = v167 / v165;
                    if (vabds_f32(v160, *a3) >= 0.00000011921)
                    {
                      v170 = v169;
                    }

                    else
                    {
                      v170 = 3.4028e38;
                    }

                    if (v168 < v170 || v168 == v170 && (v162 < v160 || v162 == v160 && v161 < v166))
                    {
                      v153 = v158;
                      v150 = v157;
                    }
                  }

                  *v154 = *v153;
                  v154[1] = v153[1];
                }

                while (v150 <= (v11 - 2) / 2);
                if (v153 == a2 - 2)
                {
                  *v153 = v152;
                  *(v153 + 1) = v151;
                }

                else
                {
                  *v153 = *(a2 - 2);
                  v153[1] = *(a2 - 1);
                  *(a2 - 2) = v152;
                  *(a2 - 1) = v151;
                  v171 = (v153 - i + 8) >> 3;
                  v172 = v171 - 2;
                  if (v171 >= 2)
                  {
                    v173 = v172 >> 1;
                    v174 = &i[2 * (v172 >> 1)];
                    v175 = *v174;
                    v176 = v174[1];
                    v177 = a3[1];
                    v178 = v176 - v177;
                    v179 = *v153;
                    v180 = v153[1];
                    v181 = v180 - v177;
                    v182 = v178 / (*v174 - *a3);
                    if (vabds_f32(*v174, *a3) < 0.00000011921)
                    {
                      v182 = 3.4028e38;
                    }

                    v183 = v181 / (*v153 - *a3);
                    v184 = vabds_f32(v179, *a3) >= 0.00000011921 ? v183 : 3.4028e38;
                    if (v182 < v184 || v182 == v184 && (v175 < v179 || (v175 == v179 ? (v185 = v176 < v180) : (v185 = 0), v185)))
                    {
                      *v153 = v175;
                      v153[1] = v174[1];
                      if (v172 >= 2)
                      {
                        while (1)
                        {
                          v187 = v173 - 1;
                          v173 = (v173 - 1) >> 1;
                          v186 = &i[2 * v173];
                          v188 = *v186;
                          v189 = a3[1];
                          LODWORD(v190) = HIDWORD(*v186);
                          v191 = v190 - v189;
                          v192 = v180 - v189;
                          v193 = v191 / (COERCE_FLOAT(*v186) - *a3);
                          if (vabds_f32(COERCE_FLOAT(*v186), *a3) < 0.00000011921)
                          {
                            v193 = 3.4028e38;
                          }

                          v194 = v192 / (v179 - *a3);
                          v195 = vabds_f32(v179, *a3) >= 0.00000011921 ? v194 : 3.4028e38;
                          if (v193 >= v195 && (v193 != v195 || *&v188 >= v179 && (*&v188 != v179 || v190 >= v180)))
                          {
                            break;
                          }

                          *v174 = v188;
                          v174 = &i[2 * v173];
                          if (v187 <= 1)
                          {
                            goto LABEL_313;
                          }
                        }
                      }

                      v186 = v174;
LABEL_313:
                      *v186 = v179;
                      v186[1] = v180;
                    }
                  }
                }

                a2 -= 2;
              }

              while (v11-- > 2);
            }

            return;
          }

          v12 = v11 >> 1;
          v13 = &i[2 * (v11 >> 1)];
          if (v11 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(&a1[2 * (v11 >> 1)], a1, v221, a3);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(a1, &a1[2 * (v11 >> 1)], v221, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(a1 + 2, v13 - 2, a2 - 4, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(a1 + 4, &a1[2 * v12 + 2], a2 - 6, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(v13 - 2, v13, &a1[2 * v12 + 2], a3);
            v14 = *a1;
            *a1 = *v13;
            *v13 = v14;
          }

          --a4;
          v15 = *a1;
          v16 = *a3;
          v17 = *a1 - *a3;
          if (a5)
          {
            v18 = a1[1];
            v19 = a3[1];
            v20 = vabds_f32(v15, v16);
            v21 = (v18 - v19) / v17;
            break;
          }

          v23 = *(a1 - 2);
          v22 = *(a1 - 1);
          v19 = a3[1];
          v18 = a1[1];
          v24 = vabds_f32(v23, v16) >= 0.00000011921 ? (v22 - v19) / (v23 - v16) : 3.4028e38;
          v20 = vabds_f32(v15, v16);
          v21 = (v18 - v19) / v17;
          v25 = v20 >= 0.00000011921 ? (v18 - v19) / v17 : 3.4028e38;
          if (v24 < v25 || v24 == v25 && (v23 < v15 || v23 == v15 && v22 < v18))
          {
            break;
          }

          v51 = *(a2 - 2);
          v50 = *(a2 - 1);
          v52 = (v50 - v19) / (v51 - v16);
          if (vabds_f32(v51, v16) < 0.00000011921)
          {
            v52 = 3.4028e38;
          }

          if (v25 < v52 || v25 == v52 && (v15 < v51 || v15 == v51 && v18 < v50))
          {
            v53 = a1[2];
            v54 = a1[3];
            i = a1 + 2;
            v55 = (v54 - v19) / (v53 - v16);
            if (vabds_f32(v53, v16) < 0.00000011921)
            {
              v55 = 3.4028e38;
            }

            if (v25 >= v55)
            {
              v56 = a1 + 5;
              do
              {
                if (v25 == v55)
                {
                  if (v15 < v53)
                  {
                    goto LABEL_116;
                  }

                  if (v15 == v53 && v18 < v54)
                  {
                    break;
                  }
                }

                i += 2;
                v53 = *(v56 - 1);
                v54 = *v56;
                v55 = (*v56 - v19) / (v53 - v16);
                if (vabds_f32(v53, v16) < 0.00000011921)
                {
                  v55 = 3.4028e38;
                }

                v56 += 2;
              }

              while (v25 >= v55);
              i = v56 - 3;
            }
          }

          else
          {
            for (i = a1 + 2; i < a2; i += 2)
            {
              v74 = *i;
              v73 = i[1];
              v75 = (v73 - v19) / (*i - v16);
              if (vabds_f32(*i, v16) < 0.00000011921)
              {
                v75 = 3.4028e38;
              }

              if (v25 < v75 || v25 == v75 && (v15 < v74 || v15 == v74 && v18 < v73))
              {
                break;
              }
            }
          }

LABEL_116:
          j = a2;
          if (i < a2)
          {
            for (j = a2 - 2; ; j -= 2)
            {
              v59 = (v50 - v19) / (v51 - v16);
              if (vabds_f32(v51, v16) < 0.00000011921)
              {
                v59 = 3.4028e38;
              }

              if (v25 >= v59 && (v25 != v59 || v15 >= v51 && (v15 != v51 || v18 >= v50)))
              {
                break;
              }

              v51 = *(j - 2);
              v50 = *(j - 1);
            }
          }

          if (i < j)
          {
            v60 = *i;
            v61 = *j;
            do
            {
              v62 = *(i + 1);
              *i = v61;
              i[1] = j[1];
              *j = v60;
              *(j + 1) = v62;
              v63 = *a3;
              v64 = a3[1];
              v65 = 3.4028e38;
              if (vabds_f32(v15, *a3) >= 0.00000011921)
              {
                v66 = (v18 - v64) / (v15 - *a3);
              }

              else
              {
                v66 = 3.4028e38;
              }

              v60 = i[2];
              v68 = i[3];
              v67 = i + 2;
              if (vabds_f32(v60, v63) >= 0.00000011921)
              {
                v65 = (v68 - v64) / (v60 - v63);
              }

              if (v66 >= v65)
              {
                v69 = i + 5;
                do
                {
                  if (v66 == v65)
                  {
                    if (v15 < v60)
                    {
                      goto LABEL_134;
                    }

                    if (v15 == v60 && v18 < v68)
                    {
                      break;
                    }
                  }

                  v67 += 2;
                  v60 = *(v69 - 1);
                  v68 = *v69;
                  v65 = (*v69 - v64) / (v60 - v63);
                  if (vabds_f32(v60, v63) < 0.00000011921)
                  {
                    v65 = 3.4028e38;
                  }

                  v69 += 2;
                }

                while (v66 >= v65);
                i = v69 - 3;
              }

              else
              {
LABEL_134:
                i = v67;
              }

              do
              {
                v61 = *(j - 2);
                v71 = *(j - 1);
                j -= 2;
                v72 = (v71 - v64) / (v61 - v63);
                if (vabds_f32(v61, v63) < 0.00000011921)
                {
                  v72 = 3.4028e38;
                }
              }

              while (v66 < v72 || v66 == v72 && (v15 < v61 || v15 == v61 && v18 < v71));
            }

            while (i < j);
          }

          if (i - 2 != a1)
          {
            *a1 = *(i - 2);
            a1[1] = *(i - 1);
          }

          a5 = 0;
          *(i - 2) = v15;
          *(i - 1) = v18;
        }

        if (v20 < 0.00000011921)
        {
          v21 = 3.4028e38;
        }

        for (k = a1 + 2; ; k += 2)
        {
          v27 = *k;
          v28 = k[1];
          v29 = (v28 - v19) / (*k - v16);
          if (vabds_f32(*k, v16) < 0.00000011921)
          {
            v29 = 3.4028e38;
          }

          if (v29 >= v21 && (v29 != v21 || v27 >= v15 && (v27 != v15 || v28 >= v18)))
          {
            break;
          }
        }

        if (k - 2 == a1)
        {
          v33 = a2;
          if (k < a2)
          {
            v35 = *(a2 - 2);
            v36 = *(a2 - 1);
            v37 = (v36 - v19) / (v35 - v16);
            if (vabds_f32(v35, v16) < 0.00000011921)
            {
              v37 = 3.4028e38;
            }

            v33 = a2 - 2;
            if (v37 >= v21)
            {
              v33 = a2 - 2;
              do
              {
                if (v37 == v21 && (v35 < v15 || v35 == v15 && v36 < v18) || k >= v33)
                {
                  break;
                }

                v35 = *(v33 - 2);
                v36 = *(v33 - 1);
                v33 -= 2;
                v37 = (v36 - v19) / (v35 - v16);
                if (vabds_f32(v35, v16) < 0.00000011921)
                {
                  v37 = 3.4028e38;
                }
              }

              while (v37 >= v21);
            }
          }
        }

        else
        {
          v30 = *(a2 - 2);
          v31 = *(a2 - 1);
          v32 = (v31 - v19) / (v30 - v16);
          if (vabds_f32(v30, v16) < 0.00000011921)
          {
            v32 = 3.4028e38;
          }

          v33 = a2 - 2;
          while (v32 >= v21)
          {
            if (v32 == v21)
            {
              if (v30 < v15)
              {
                break;
              }

              if (v30 == v15 && v31 < v18)
              {
                break;
              }
            }

            v30 = *(v33 - 2);
            v31 = *(v33 - 1);
            v33 -= 2;
            v32 = (v31 - v19) / (v30 - v16);
            if (vabds_f32(v30, v16) < 0.00000011921)
            {
              v32 = 3.4028e38;
            }
          }
        }

        i = k;
        if (k < v33)
        {
          v38 = *v33;
          i = k;
          v39 = v33;
          do
          {
            v40 = *(i + 1);
            *i = v38;
            i[1] = v39[1];
            *v39 = v27;
            *(v39 + 1) = v40;
            v41 = *a3;
            v42 = a3[1];
            if (vabds_f32(v15, *a3) >= 0.00000011921)
            {
              v43 = (v18 - v42) / (v15 - *a3);
            }

            else
            {
              v43 = 3.4028e38;
            }

            do
            {
              v27 = i[2];
              v44 = i[3];
              i += 2;
              v45 = (v44 - v42) / (v27 - v41);
              if (vabds_f32(v27, v41) < 0.00000011921)
              {
                v45 = 3.4028e38;
              }
            }

            while (v45 < v43 || v45 == v43 && (v27 < v15 || v27 == v15 && v44 < v18));
            v38 = *(v39 - 2);
            v46 = *(v39 - 1);
            v39 -= 2;
            v47 = (v46 - v42) / (v38 - v41);
            if (vabds_f32(v38, v41) < 0.00000011921)
            {
              v47 = 3.4028e38;
            }

            while (v47 >= v43)
            {
              if (v47 == v43)
              {
                if (v38 < v15)
                {
                  break;
                }

                if (v38 == v15 && v46 < v18)
                {
                  break;
                }
              }

              v38 = *(v39 - 2);
              v46 = *(v39 - 1);
              v39 -= 2;
              v47 = (v46 - v42) / (v38 - v41);
              if (vabds_f32(v38, v41) < 0.00000011921)
              {
                v47 = 3.4028e38;
              }
            }
          }

          while (i < v39);
        }

        if (i - 2 != a1)
        {
          *a1 = *(i - 2);
          a1[1] = *(i - 1);
        }

        *(i - 2) = v15;
        *(i - 1) = v18;
        if (k >= v33)
        {
          break;
        }

LABEL_94:
        std::__introsort<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,false>(a1, i - 2, a3, a4, a5 & 1);
        a5 = 0;
      }

      v49 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*>(a1, i - 2, a3);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*>(i, a2, a3))
      {
        break;
      }

      if (!v49)
      {
        goto LABEL_94;
      }
    }

    a2 = i - 2;
    if (!v49)
    {
      continue;
    }

    break;
  }
}

float *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(float *result, float *a2, float *a3, float *a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *a4;
  v7 = a4[1];
  v8 = *result;
  v9 = result[1];
  v10 = (v5 - v7) / (*a2 - *a4);
  if (vabds_f32(*a2, *a4) < 0.00000011921)
  {
    v10 = 3.4028e38;
  }

  if (vabds_f32(v8, v6) >= 0.00000011921)
  {
    v11 = (v9 - v7) / (*result - *a4);
  }

  else
  {
    v11 = 3.4028e38;
  }

  if (v10 < v11 || v10 == v11 && (v4 < v8 || v4 == v8 && v5 < v9))
  {
    v12 = *a3;
    v13 = a3[1];
    v14 = (v13 - v7) / (*a3 - v6);
    v15 = vabds_f32(*a3, v6) < 0.00000011921;
    v16 = 3.4028e38;
    if (!v15)
    {
      v16 = v14;
    }

    if (v16 < v10 || v16 == v10 && (v12 < v4 || v12 == v4 && v13 < v5))
    {
      *result = v12;
      result[1] = a3[1];
LABEL_48:
      *a3 = v8;
      a3[1] = v9;
      return result;
    }

    *result = v4;
    result[1] = a2[1];
    *a2 = v8;
    a2[1] = v9;
    v31 = *a3;
    v32 = a3[1];
    v33 = a4[1];
    v34 = v32 - v33;
    v35 = v9 - v33;
    v36 = v34 / (*a3 - *a4);
    if (vabds_f32(*a3, *a4) < 0.00000011921)
    {
      v36 = 3.4028e38;
    }

    v37 = v35 / (v8 - *a4);
    if (vabds_f32(v8, *a4) >= 0.00000011921)
    {
      v38 = v37;
    }

    else
    {
      v38 = 3.4028e38;
    }

    if (v36 < v38 || v36 == v38 && (v31 < v8 || v31 == v8 && v32 < v9))
    {
      *a2 = v31;
      a2[1] = a3[1];
      goto LABEL_48;
    }
  }

  else
  {
    v17 = *a3;
    v18 = a3[1];
    v19 = (v18 - v7) / (*a3 - v6);
    v15 = vabds_f32(*a3, v6) < 0.00000011921;
    v20 = 3.4028e38;
    if (!v15)
    {
      v20 = v19;
    }

    if (v20 < v10 || v20 == v10 && (v17 < v4 || v17 == v4 && v18 < v5))
    {
      *a2 = v17;
      a2[1] = a3[1];
      *a3 = v4;
      a3[1] = v5;
      v21 = *a2;
      v22 = a2[1];
      v23 = a4[1];
      v24 = v22 - v23;
      v25 = *result;
      v26 = result[1];
      v27 = v26 - v23;
      v28 = v24 / (*a2 - *a4);
      if (vabds_f32(*a2, *a4) < 0.00000011921)
      {
        v28 = 3.4028e38;
      }

      v29 = v27 / (*result - *a4);
      if (vabds_f32(v25, *a4) >= 0.00000011921)
      {
        v30 = v29;
      }

      else
      {
        v30 = 3.4028e38;
      }

      if (v28 < v30 || v28 == v30 && (v21 < v25 || v21 == v25 && v22 < v26))
      {
        *result = v21;
        result[1] = a2[1];
        *a2 = v25;
        a2[1] = v26;
      }
    }
  }

  return result;
}

float std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(float *a1, float *a2, float *a3, float *a4, float *a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(a1, a2, a3, a5);
  result = *a4;
  v11 = a4[1];
  v12 = a5[1];
  v13 = v11 - v12;
  v14 = *a3;
  v15 = a3[1];
  v16 = v15 - v12;
  v17 = v13 / (*a4 - *a5);
  if (vabds_f32(*a4, *a5) < 0.00000011921)
  {
    v17 = 3.4028e38;
  }

  v18 = v16 / (*a3 - *a5);
  if (vabds_f32(v14, *a5) >= 0.00000011921)
  {
    v19 = v18;
  }

  else
  {
    v19 = 3.4028e38;
  }

  if (v17 < v19 || v17 == v19 && (result < v14 || result == v14 && v11 < v15))
  {
    *a3 = result;
    a3[1] = a4[1];
    *a4 = v14;
    a4[1] = v15;
    result = *a3;
    v20 = a3[1];
    v21 = a5[1];
    v22 = v20 - v21;
    v23 = *a2;
    v24 = a2[1];
    v25 = v24 - v21;
    v26 = v22 / (*a3 - *a5);
    if (vabds_f32(*a3, *a5) < 0.00000011921)
    {
      v26 = 3.4028e38;
    }

    v27 = v25 / (*a2 - *a5);
    if (vabds_f32(v23, *a5) >= 0.00000011921)
    {
      v28 = v27;
    }

    else
    {
      v28 = 3.4028e38;
    }

    if (v26 < v28 || v26 == v28 && (result < v23 || result == v23 && v20 < v24))
    {
      *a2 = result;
      a2[1] = a3[1];
      *a3 = v23;
      a3[1] = v24;
      result = *a2;
      v29 = a2[1];
      v30 = a5[1];
      v31 = v29 - v30;
      v32 = *a1;
      v33 = a1[1];
      v34 = v33 - v30;
      v35 = v31 / (*a2 - *a5);
      if (vabds_f32(*a2, *a5) < 0.00000011921)
      {
        v35 = 3.4028e38;
      }

      v36 = v34 / (*a1 - *a5);
      if (vabds_f32(v32, *a5) >= 0.00000011921)
      {
        v37 = v36;
      }

      else
      {
        v37 = 3.4028e38;
      }

      if (v35 < v37 || v35 == v37 && (result < v32 || result == v32 && v29 < v33))
      {
        *a1 = result;
        result = a2[1];
        a1[1] = result;
        *a2 = v32;
        a2[1] = v33;
      }
    }
  }

  return result;
}

float std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(float *a1, float *a2, float *a3, float *a4, float *a5, float *a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(a1, a2, a3, a4, a6);
  result = *a5;
  v13 = a5[1];
  v14 = a6[1];
  v15 = v13 - v14;
  v16 = *a4;
  v17 = a4[1];
  v18 = v17 - v14;
  v19 = v15 / (*a5 - *a6);
  if (vabds_f32(*a5, *a6) < 0.00000011921)
  {
    v19 = 3.4028e38;
  }

  v20 = v18 / (*a4 - *a6);
  if (vabds_f32(v16, *a6) >= 0.00000011921)
  {
    v21 = v20;
  }

  else
  {
    v21 = 3.4028e38;
  }

  if (v19 < v21 || v19 == v21 && (result < v16 || result == v16 && v13 < v17))
  {
    *a4 = result;
    a4[1] = a5[1];
    *a5 = v16;
    a5[1] = v17;
    result = *a4;
    v22 = a4[1];
    v23 = a6[1];
    v24 = v22 - v23;
    v25 = *a3;
    v26 = a3[1];
    v27 = v26 - v23;
    v28 = v24 / (*a4 - *a6);
    if (vabds_f32(*a4, *a6) < 0.00000011921)
    {
      v28 = 3.4028e38;
    }

    v29 = v27 / (*a3 - *a6);
    if (vabds_f32(v25, *a6) >= 0.00000011921)
    {
      v30 = v29;
    }

    else
    {
      v30 = 3.4028e38;
    }

    if (v28 < v30 || v28 == v30 && (result < v25 || result == v25 && v22 < v26))
    {
      *a3 = result;
      a3[1] = a4[1];
      *a4 = v25;
      a4[1] = v26;
      result = *a3;
      v31 = a3[1];
      v32 = a6[1];
      v33 = v31 - v32;
      v34 = *a2;
      v35 = a2[1];
      v36 = v35 - v32;
      v37 = v33 / (*a3 - *a6);
      if (vabds_f32(*a3, *a6) < 0.00000011921)
      {
        v37 = 3.4028e38;
      }

      v38 = v36 / (*a2 - *a6);
      if (vabds_f32(v34, *a6) >= 0.00000011921)
      {
        v39 = v38;
      }

      else
      {
        v39 = 3.4028e38;
      }

      if (v37 < v39 || v37 == v39 && (result < v34 || result == v34 && v31 < v35))
      {
        *a2 = result;
        a2[1] = a3[1];
        *a3 = v34;
        a3[1] = v35;
        result = *a2;
        v40 = a2[1];
        v41 = a6[1];
        v42 = v40 - v41;
        v43 = *a1;
        v44 = a1[1];
        v45 = v44 - v41;
        v46 = v42 / (*a2 - *a6);
        if (vabds_f32(*a2, *a6) < 0.00000011921)
        {
          v46 = 3.4028e38;
        }

        v47 = v45 / (*a1 - *a6);
        if (vabds_f32(v43, *a6) >= 0.00000011921)
        {
          v48 = v47;
        }

        else
        {
          v48 = 3.4028e38;
        }

        if (v46 < v48 || v46 == v48 && (result < v43 || result == v43 && v40 < v44))
        {
          *a1 = result;
          result = a2[1];
          a1[1] = result;
          *a2 = v43;
          a2[1] = v44;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*>(float *a1, float *a2, float *a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(a1, a1 + 2, a2 - 2, a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        return 1;
    }

    goto LABEL_20;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 != 2)
  {
LABEL_20:
    v18 = a1 + 4;
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<float>::getConvexHullPoints(std::vector<gm::Matrix<float,2,1>> const&,std::vector<gm::Matrix<float,2,1>>&)::{lambda(gm::Matrix<float,2,1> const&,gm::Matrix<float,2,1> const&)#1} &,gm::Matrix<float,2,1>*,0>(a1, a1 + 2, a1 + 4, a3);
    v19 = a1 + 6;
    if (a1 + 6 != a2)
    {
      v20 = 0;
      v21 = 0;
      v22 = *a3;
      while (1)
      {
        v23 = *v19;
        v24 = v19[1];
        v25 = a3[1];
        v26 = v24 - v25;
        v27 = *v18;
        v28 = v18[1];
        v29 = v28 - v25;
        v30 = v26 / (*v19 - v22);
        if (vabds_f32(*v19, v22) < 0.00000011921)
        {
          v30 = 3.4028e38;
        }

        v31 = v29 / (*v18 - v22);
        if (vabds_f32(v27, v22) < 0.00000011921)
        {
          v31 = 3.4028e38;
        }

        if (v30 < v31 || v30 == v31 && (v23 < v27 || v23 == v27 && v24 < v28))
        {
          *v19 = v27;
          v19[1] = v18[1];
          v32 = v20;
          while (1)
          {
            v33 = (a1 + v32);
            v34 = a3[1];
            v35 = v24 - v34;
            v36 = *(a1 + v32 + 8);
            v37 = *(a1 + v32 + 12);
            v38 = v37 - v34;
            v39 = v35 / (v23 - *a3);
            if (vabds_f32(v23, *a3) < 0.00000011921)
            {
              v39 = 3.4028e38;
            }

            v40 = v38 / (v36 - *a3);
            v41 = vabds_f32(v36, *a3) >= 0.00000011921 ? v40 : 3.4028e38;
            if (v39 >= v41)
            {
              if (v39 != v41)
              {
                goto LABEL_44;
              }

              if (v23 >= v36 && (v23 != v36 || v24 >= v37))
              {
                break;
              }
            }

            v18 -= 2;
            v33[4] = v36;
            v33[5] = v37;
            v32 -= 8;
            if (v32 == -16)
            {
              v18 = a1;
              goto LABEL_44;
            }
          }

          v18 = (a1 + v32 + 16);
LABEL_44:
          *v18 = v23;
          v18[1] = v24;
          if (++v21 == 8)
          {
            return v19 + 2 == a2;
          }

          v22 = *a3;
        }

        v18 = v19;
        v20 += 8;
        v19 += 2;
        if (v19 == a2)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  v7 = *(a2 - 2);
  v8 = *(a2 - 1);
  v9 = a3[1];
  v10 = v8 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = v12 - v9;
  v14 = v10 / (v7 - *a3);
  if (vabds_f32(v7, *a3) < 0.00000011921)
  {
    v14 = 3.4028e38;
  }

  v15 = v13 / (*a1 - *a3);
  if (vabds_f32(v11, *a3) >= 0.00000011921)
  {
    v16 = v15;
  }

  else
  {
    v16 = 3.4028e38;
  }

  if (v14 < v16)
  {
    goto LABEL_14;
  }

  if (v14 != v16)
  {
    return 1;
  }

  if (v7 < v11 || (result = 1, v7 == v11) && v8 < v12)
  {
LABEL_14:
    *a1 = v7;
    a1[1] = *(a2 - 1);
    *(a2 - 2) = v11;
    *(a2 - 1) = v12;
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<md::DaVinciGroundTileData::BuildingBatchType,std::vector<md::DaVinciGroundTileData::BuildingBatch>>,std::__unordered_map_hasher<md::DaVinciGroundTileData::BuildingBatchType,std::__hash_value_type<md::DaVinciGroundTileData::BuildingBatchType,std::vector<md::DaVinciGroundTileData::BuildingBatch>>,md::DaVinciGroundTileData::BuildingBatchTypeHash,std::equal_to<md::DaVinciGroundTileData::BuildingBatchType>,true>,std::__unordered_map_equal<md::DaVinciGroundTileData::BuildingBatchType,std::__hash_value_type<md::DaVinciGroundTileData::BuildingBatchType,std::vector<md::DaVinciGroundTileData::BuildingBatch>>,std::equal_to<md::DaVinciGroundTileData::BuildingBatchType>,md::DaVinciGroundTileData::BuildingBatchTypeHash,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundTileData::BuildingBatchType,std::vector<md::DaVinciGroundTileData::BuildingBatch>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = (v2 + 32);
      std::vector<md::DaVinciGroundTileData::BuildingBatch>::__destroy_vector::operator()[abi:nn200100](&v6);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void md::DaVinciGroundTileData::_populateBuildingLoops(float *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int16 a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  md::DaVinciGroundTileData::_roundLoopCorners(v32, a1, a2, a4, a5);
  v14 = *a7;
  if (*a7)
  {
    *(a7 + 8) = v14;
    operator delete(v14);
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 0;
  }

  *a7 = *v32;
  *(a7 + 16) = v33;
  v15 = *(a7 + 24);
  if (v15)
  {
    *(a7 + 32) = v15;
    operator delete(v15);
    *(a7 + 24) = 0;
    *(a7 + 32) = 0;
    *(a7 + 40) = 0;
  }

  *(a7 + 24) = *__p;
  *(a7 + 40) = v35;
  v16 = *(a3 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((a8[2] - *a8) >> 4) < v16)
  {
    __p[1] = a8;
    std::__allocate_at_least[abi:nn200100]<std::allocator<md::PolygonLoop>>(v16);
  }

  if (*(a3 + 16))
  {
    v17 = 0;
    v18 = (a6 + 4);
    do
    {
      md::DaVinciGroundTileData::_roundLoopCorners(v32, a1, a2, *(v18 - 1), *v18);
      v19 = a8[1];
      v20 = a8[2];
      if (v19 >= v20)
      {
        v21 = 0xAAAAAAAAAAAAAAABLL * ((v19 - *a8) >> 4);
        v22 = v21 + 1;
        if (v21 + 1 > 0x555555555555555)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v23 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *a8) >> 4);
        if (2 * v23 > v22)
        {
          v22 = 2 * v23;
        }

        if (v23 >= 0x2AAAAAAAAAAAAAALL)
        {
          v24 = 0x555555555555555;
        }

        else
        {
          v24 = v22;
        }

        v39 = a8;
        if (v24)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<md::PolygonLoop>>(v24);
        }

        v25 = 48 * v21;
        v36 = 0;
        v37 = v25;
        *(&v38 + 1) = 0;
        *v25 = *v32;
        *(v25 + 16) = v33;
        v32[0] = 0;
        v32[1] = 0;
        v33 = 0;
        *(v25 + 24) = *__p;
        *(v25 + 40) = v35;
        __p[1] = 0;
        v35 = 0;
        __p[0] = 0;
        *&v38 = 48 * v21 + 48;
        v26 = a8[1];
        v27 = 48 * v21 + *a8 - v26;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::PolygonLoop>,md::PolygonLoop*>(*a8, v26, (v25 + *a8 - v26));
        v28 = *a8;
        *a8 = v27;
        v29 = a8[2];
        v31 = v38;
        *(a8 + 1) = v38;
        *&v38 = v28;
        *(&v38 + 1) = v29;
        v36 = v28;
        v37 = v28;
        std::__split_buffer<md::PolygonLoop>::~__split_buffer(&v36);
        v30 = __p[0];
        a8[1] = v31;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v19 = *v32;
        *(v19 + 16) = v33;
        v32[1] = 0;
        v33 = 0;
        v32[0] = 0;
        *(v19 + 24) = *__p;
        *(v19 + 40) = v35;
        a8[1] = v19 + 48;
      }

      if (v32[0])
      {
        operator delete(v32[0]);
      }

      v18 += 4;
      ++v17;
    }

    while (v17 < *(a3 + 16));
  }
}

void sub_1B3189EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void md::DaVinciGroundTileData::_appendFaces(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, uint64_t *a11, uint64_t *a12, char a13, int *a14, uint64_t a15)
{
  v25 = +[VKDebugSettings sharedSettings];
  v26 = [v25 daVinciBuildingHeights];

  if (v26)
  {
    v27 = *(a2 + 4);
    if (*(a15 + 24))
    {
      v27 = *(a15 + 20) + (*(a15 + 8) * v27);
    }

    v99 = *(a2 + 1) == 0;
  }

  else
  {
    v99 = 0;
    v27 = *(a1 + 1184) * 5.0;
  }

  v28 = *a3;
  v29 = a3[1];
  if (v29 != *a3)
  {
    v30 = 0;
    v31 = *a12;
    v32 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *a3) >> 2);
    v33 = v32 - 1;
    v34 = a3[3];
    v35 = *(a5 + 40);
    v36 = *(a8 + 40);
    v37 = *(a7 + 40);
    v38 = *(a6 + 40);
    v39 = v32 - 1;
    v40 = *(a4 + 40);
    v41 = (v28 + 4);
    v42 = *a12;
    do
    {
      v43 = v30++;
      if (v39 == v43)
      {
        v44 = 0;
      }

      else
      {
        v44 = v30;
      }

      v45 = a9;
      if ((a13 & 1) == 0)
      {
        v45 = v41[1];
      }

      v46 = 0.0;
      if (!v99)
      {
        v46 = v41[1];
      }

      v47 = (v28 + 12 * v33);
      v48 = *(v34 + v43);
      v49 = *(v41 - 1);
      v50 = v46 + v27;
      v51 = (v49 * a10);
      v52 = (*v41 * a10);
      if ((v48 & 3) == 0)
      {
        v53 = *v41 - v47[1];
        v54 = *v47 - v49;
        v55 = v35 + 8 * v42;
        *v55 = v51;
        *(v55 + 2) = v52;
        *(v36 + 4 * v42) = a9;
        *(v55 + 4) = v50;
        v56 = 0.28126 / sqrtf((v53 * v53) + (v54 * v54));
        _S6 = (v56 * v53) + 0.5;
        _S5 = (v56 * v54) + 0.5;
        __asm
        {
          FCVT            H6, S6
          FCVT            H5, S5
        }

        v63 = (v37 + 4 * v42);
        *v63 = LOWORD(_S6);
        v63[1] = LOWORD(_S5);
        _S7 = *a14;
        _S16 = a14[1];
        __asm
        {
          FCVT            H7, S7
          FCVT            H16, S16
        }

        v66 = (v38 + 4 * v42);
        *v66 = _S7;
        v66[1] = _S16;
        v67 = v35 + 8 * (v42 + 1);
        *v67 = v51;
        *(v67 + 2) = v52;
        *(v67 + 4) = v41[1];
        *(v36 + 4 * (v42 + 1)) = v45;
        v68 = (v37 + 4 * (v42 + 1));
        *v68 = LOWORD(_S6);
        v68[1] = LOWORD(_S5);
        _S5 = *a14;
        _S6 = a14[1];
        __asm
        {
          FCVT            H5, S5
          FCVT            H6, S6
        }

        v71 = (v38 + 4 * (v42 + 1));
        *v71 = _S5;
        v71[1] = _S6;
        v42 += 2;
        *a12 = v42;
      }

      v72 = (v28 + 12 * v44);
      v73 = v42 + 2;
      if (v39 == v43)
      {
        v73 = v31;
      }

      v74 = *a11;
      v75 = *a11 + 1;
      *a11 = v75;
      *(v40 + 2 * v75) = *a12 + 1;
      v76 = (v40 + 2 * v74);
      *v76 = v42;
      v76[2] = v73;
      v76[3] = v73;
      *a11 = v74 + 4;
      *(v40 + 2 * (v74 + 4)) = *a12 + 1;
      v76[5] = v73 + 1;
      *a11 = v74 + 6;
      v77 = v72 + 1;
      v78 = v47 + 1;
      if (v48)
      {
        v79 = v72 + 1;
      }

      else
      {
        v79 = v41;
      }

      if (v48)
      {
        v80 = v72;
      }

      else
      {
        v80 = v41 - 1;
      }

      if ((v48 & 2) != 0)
      {
        v77 = v79;
      }

      else
      {
        v78 = v41;
      }

      if ((v48 & 2) != 0)
      {
        v81 = v47;
      }

      else
      {
        v81 = v41 - 1;
      }

      if ((v48 & 2) != 0)
      {
        v82 = v80;
      }

      else
      {
        v82 = v72;
      }

      v83 = *v77 - *v78;
      v84 = *v81 - *v82;
      v85 = sqrtf((v83 * v83) + (v84 * v84));
      v86 = *a12;
      v87 = v35 + 8 * *a12;
      *v87 = v51;
      *(v87 + 2) = v52;
      *(v87 + 4) = v50;
      *(v36 + 4 * v86) = a9;
      _S5 = ((0.28126 / v85) * v83) + 0.5;
      _S4 = ((0.28126 / v85) * v84) + 0.5;
      __asm
      {
        FCVT            H5, S5
        FCVT            H4, S4
      }

      v90 = (v37 + 4 * v86);
      *v90 = LOWORD(_S5);
      v90[1] = LOWORD(_S4);
      _S6 = *a14;
      _S7 = a14[1];
      __asm
      {
        FCVT            H6, S6
        FCVT            H7, S7
      }

      v93 = (v38 + 4 * v86);
      *v93 = _S6;
      v93[1] = _S7;
      v94 = v35 + 8 * (v86 + 1);
      *v94 = v51;
      *(v94 + 2) = v52;
      *(v94 + 4) = v41[1];
      *(v36 + 4 * (v86 + 1)) = v45;
      v95 = (v37 + 4 * (v86 + 1));
      *v95 = LOWORD(_S5);
      v95[1] = LOWORD(_S4);
      _S3 = *a14;
      _S4 = a14[1];
      __asm
      {
        FCVT            H3, S3
        FCVT            H4, S4
      }

      v98 = (v38 + 4 * (v86 + 1));
      *v98 = _S3;
      v98[1] = _S4;
      v42 = v86 + 2;
      *a12 = v86 + 2;
      v41 += 3;
      v33 = v43;
    }

    while (v32 > v30);
  }
}

void std::vector<md::PolygonLoop>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::__destroy_at[abi:nn200100]<md::MuninRoadEdgePolyline,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::PolygonLoop>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::PolygonLoop>,md::PolygonLoop*>(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      *a3 = *v5;
      a3[2] = *(v5 + 16);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      a3[3] = 0;
      a3[4] = 0;
      a3[5] = 0;
      *(a3 + 3) = *(v5 + 24);
      a3[5] = *(v5 + 40);
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      *(v5 + 40) = 0;
      v5 += 48;
      a3 += 6;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<md::MuninRoadEdgePolyline,0>(v4);
      v4 += 48;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<md::PolygonLoop>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__destroy_at[abi:nn200100]<md::MuninRoadEdgePolyline,0>(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<ggl::DaVinci::ElevationCompressedMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3AAD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::DeviceDataTyped<ggl::DaVinci::Elevations>::~DeviceDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3A780;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DaVinci::ElevationCompressedVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3A940;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::vector<md::DaVinciGroundTileData::BuildingBatch>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 80;
        std::__destroy_at[abi:nn200100]<md::MuninRoadEdgePolyline,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__shared_ptr_pointer<ggl::Texture2D  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::Texture2D  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B318A7D4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long,std::function<gm::Matrix<float,2,1> ()(unsigned long)>>>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::pair<unsigned long,std::function<gm::Matrix<float,2,1> ()(unsigned long)>>>,std::pair<unsigned long,std::function<gm::Matrix<float,2,1> ()(unsigned long)>>*>(uint64_t result, void *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (a3 + 32);
    v6 = result;
    do
    {
      *(v5 - 4) = *v6;
      v7 = v6[4];
      if (v7)
      {
        if (v6 + 1 == v7)
        {
          *v5 = v5 - 3;
          (*(*v6[4] + 24))(v6[4]);
        }

        else
        {
          *v5 = v7;
          v6[4] = 0;
        }
      }

      else
      {
        *v5 = 0;
      }

      v6 += 5;
      v5 += 5;
    }

    while (v6 != a2);
    do
    {
      result = std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](v4 + 8);
      v4 += 40;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<std::pair<unsigned long,std::function<gm::Matrix<float,2,1> ()(unsigned long)>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::pair<unsigned long,std::function<gm::Matrix<float,2,1> ()(unsigned long)>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 40;
        std::__function::__value_func<gm::Matrix<float,2,1> ()(unsigned long)>::~__value_func[abi:nn200100]((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__func<md::DaVinciGroundTileData::_prepareBuildingBatches(std::shared_ptr<geo::codec::VectorTile> const&,md::PolygonRound const&,std::unordered_map<md::DaVinciGroundTileData::BuildingBatchType,std::vector<md::DaVinciGroundTileData::BuildingBatch>,md::DaVinciGroundTileData::BuildingBatchTypeHash,std::equal_to<md::DaVinciGroundTileData::BuildingBatchType>,std::allocator<std::pair<md::DaVinciGroundTileData::BuildingBatchType const,std::vector<md::DaVinciGroundTileData::BuildingBatch>>>> &)::$_1,std::allocator<md::DaVinciGroundTileData::_prepareBuildingBatches(std::shared_ptr<geo::codec::VectorTile> const&,md::PolygonRound const&,std::unordered_map<md::DaVinciGroundTileData::BuildingBatchType,std::vector<md::DaVinciGroundTileData::BuildingBatch>,md::DaVinciGroundTileData::BuildingBatchTypeHash,std::equal_to<md::DaVinciGroundTileData::BuildingBatchType>,std::allocator<std::pair<md::DaVinciGroundTileData::BuildingBatchType const,std::vector<md::DaVinciGroundTileData::BuildingBatch>>>> &)::$_1>,gm::Matrix<float,2,1> ()(unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A3A518;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::DaVinciGroundTileData::_prepareBuildingBatches(std::shared_ptr<geo::codec::VectorTile> const&,md::PolygonRound const&,std::unordered_map<md::DaVinciGroundTileData::BuildingBatchType,std::vector<md::DaVinciGroundTileData::BuildingBatch>,md::DaVinciGroundTileData::BuildingBatchTypeHash,std::equal_to<md::DaVinciGroundTileData::BuildingBatchType>,std::allocator<std::pair<md::DaVinciGroundTileData::BuildingBatchType const,std::vector<md::DaVinciGroundTileData::BuildingBatch>>>> &)::$_0,std::allocator<md::DaVinciGroundTileData::_prepareBuildingBatches(std::shared_ptr<geo::codec::VectorTile> const&,md::PolygonRound const&,std::unordered_map<md::DaVinciGroundTileData::BuildingBatchType,std::vector<md::DaVinciGroundTileData::BuildingBatch>,md::DaVinciGroundTileData::BuildingBatchTypeHash,std::equal_to<md::DaVinciGroundTileData::BuildingBatchType>,std::allocator<std::pair<md::DaVinciGroundTileData::BuildingBatchType const,std::vector<md::DaVinciGroundTileData::BuildingBatch>>>> &)::$_0>,gm::Matrix<float,2,1> ()(unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A3AD10;
  a2[1] = v2;
  return result;
}

uint64_t md::StyleTexture<md::DaVinciGroundTileData::BuildingColorStyle>::StyleTexture(uint64_t a1, unint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  v3 = &unk_1EB839000;
  {
    v3 = &unk_1EB839000;
    if (v12)
    {
      md::StyleTexture<md::DaVinciGroundTileData::BuildingColorStyle>::StyleTexture(unsigned long,md::StyleTexture<md::DaVinciGroundTileData::BuildingColorStyle>::PackStyle,BOOL,ggl::Filter)::bytesPerPixel = 4;
      v3 = &unk_1EB839000;
    }
  }

  v4 = v3[306];
  v5 = (v4 + 3) / v4;
  v6 = vcvtpd_u64_f64(sqrt(0));
  v7 = v6 > 1;
  v8 = (1 << -__clz(v6 - 1));
  if (!v7)
  {
    v8 = 1;
  }

  v9 = vcvtpd_u64_f64(0 / (v8 / v5));
  v7 = v9 > 1;
  v10 = (1 << -__clz(v9 - 1));
  if (!v7)
  {
    v10 = 1;
  }

  *(a1 + 48) = v8;
  *(a1 + 56) = v10;
  *(a1 + 72) = v8 / v5;
  *(a1 + 80) = v5;
  *(a1 + 64) = v5 * v4;
  *(a1 + 88) = 1.0 / v8;
  return a1;
}

void std::__shared_ptr_emplace<md::StyleTexture<md::DaVinciGroundTileData::BuildingColorStyle>>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<md::StyleTexture<md::DaVinciGroundTileData::BuildingColorStyle>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3ACD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

__n128 std::__function::__func<md::DaVinciGroundTileData::DaVinciGroundTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::shared_ptr<md::GEOVectorTileResource> const&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<gss::StylesheetManager<VKSharedResources *::PropertyID>> const&,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *,md::DaVinciGroundSettings const*)::$_0::operator() const(ggl::ResourceAccessor *)::{lambda(void)#3},std::allocator<ggl::ResourceAccessor *>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A3A638;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<md::DaVinciDecalBuilder::DecalDescription>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const,std::vector<gm::Matrix<float,3,1>>>,0>(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

__n128 std::__function::__func<md::DaVinciGroundTileData::DaVinciGroundTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::shared_ptr<md::GEOVectorTileResource> const&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<gss::StylesheetManager<VKSharedResources *::PropertyID>> const&,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *,md::DaVinciGroundSettings const*)::$_0::operator() const(ggl::ResourceAccessor *)::{lambda(void)#2},std::allocator<ggl::ResourceAccessor *>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A3A5F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::DaVinciGroundTileData::RibbonAsset>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::DaVinciGroundTileData::RibbonAsset>,md::DaVinciGroundTileData::RibbonAsset*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v8[3] = v3;
    v8[4] = v4;
    v6 = a1;
    v7 = a1;
    do
    {
      *a3 = *v7;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 8) = 0;
      *(a3 + 8) = *(v7 + 8);
      *(a3 + 24) = *(v7 + 24);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 0;
      *(a3 + 32) = *(v7 + 32);
      *(a3 + 48) = *(v7 + 48);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      v7 += 56;
      a3 += 56;
    }

    while (v7 != a2);
    do
    {
      v8[0] = (v6 + 32);
      std::vector<md::components::BoundingVolume>::__destroy_vector::operator()[abi:nn200100](v8);
      v8[0] = (v6 + 8);
      std::vector<md::components::CustomRenderState>::__destroy_vector::operator()[abi:nn200100](v8);
      v6 += 56;
    }

    while (v6 != a2);
  }
}

uint64_t std::__split_buffer<md::DaVinciGroundTileData::RibbonAsset>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    v5 = (i - 24);
    std::vector<md::components::BoundingVolume>::__destroy_vector::operator()[abi:nn200100](&v5);
    v5 = (i - 48);
    std::vector<md::components::CustomRenderState>::__destroy_vector::operator()[abi:nn200100](&v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<ggl::DaVinci::RibbonMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3AFE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::DaVinci::RibbonVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::DaVinci::RibbonVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DaVinci::RibbonVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3AFA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

float md::DaVinciGroundTileData::_edgeSmoothingAngleForZ(md::DaVinciGroundTileData *this)
{
  v1 = this;
  v2 = +[VKDebugSettings sharedSettings];
  v3 = [v2 daVinciSmoothEdgeMinZ];
  v4 = [v2 daVinciSmoothEdgeMaxZ];
  [v2 daVinciSmoothEdgeMinZAngle];
  v6 = v5;
  [v2 daVinciSmoothEdgeMaxZAngle];
  v8 = (v6 + ((v7 - v6) * fminf(fmaxf((v1 - v3) / (v4 - v3), 0.0), 1.0))) * 0.017453;

  return v8;
}

void std::vector<std::optional<unsigned int>>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void *geo::range_map<unsigned int,md::DaVinciGroundTileData::TextureMappingData,std::less<unsigned int>,std::allocator<std::pair<gm::Range<unsigned int> const,md::DaVinciGroundTileData::TextureMappingData>>>::insert(void *result, _DWORD *a2)
{
  if (!result[2])
  {
    return std::__tree<std::__value_type<gm::Range<unsigned int>,md::DaVinciGroundTileData::TextureMappingData>,std::__map_value_compare<gm::Range<unsigned int>,std::__value_type<gm::Range<unsigned int>,md::DaVinciGroundTileData::TextureMappingData>,geo::range_map<unsigned int,md::DaVinciGroundTileData::TextureMappingData,std::less<unsigned int>,std::allocator<std::pair<gm::Range<unsigned int> const,md::DaVinciGroundTileData::TextureMappingData>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned int>,md::DaVinciGroundTileData::TextureMappingData>>>::__emplace_unique_key_args<gm::Range<unsigned int>,std::pair<gm::Range<unsigned int> const,md::DaVinciGroundTileData::TextureMappingData>>(result, a2[1]);
  }

  v2 = result + 1;
  if (*result == result + 1)
  {
    v8 = *result;
  }

  else
  {
    v3 = 0;
    v4 = *result;
    do
    {
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      ++v3;
      v4 = v6;
    }

    while (v6 != v2);
    v8 = *result;
    do
    {
      v9 = v3 >> 1;
      v10 = v8;
      if (v3 >= 2)
      {
        v11 = v3 >> 1;
        v12 = v8;
        do
        {
          v13 = v12[1];
          if (v13)
          {
            do
            {
              v10 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v10 = v12[2];
              v7 = *v10 == v12;
              v12 = v10;
            }

            while (!v7);
          }

          v12 = v10;
        }

        while (v11-- > 1);
      }

      if (*(v10 + 9) < a2[1])
      {
        v15 = v10[1];
        if (v15)
        {
          do
          {
            v8 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v8 = v10[2];
            v7 = *v8 == v10;
            v10 = v8;
          }

          while (!v7);
        }

        v9 = v3 + ~v9;
      }

      v3 = v9;
    }

    while (v9);
  }

  if (v2 == v8 || *(v8 + 8) >= a2[1])
  {
    if (*result == v8)
    {
      return std::__tree<std::__value_type<gm::Range<unsigned int>,md::DaVinciGroundTileData::TextureMappingData>,std::__map_value_compare<gm::Range<unsigned int>,std::__value_type<gm::Range<unsigned int>,md::DaVinciGroundTileData::TextureMappingData>,geo::range_map<unsigned int,md::DaVinciGroundTileData::TextureMappingData,std::less<unsigned int>,std::allocator<std::pair<gm::Range<unsigned int> const,md::DaVinciGroundTileData::TextureMappingData>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned int>,md::DaVinciGroundTileData::TextureMappingData>>>::__emplace_unique_key_args<gm::Range<unsigned int>,std::pair<gm::Range<unsigned int> const,md::DaVinciGroundTileData::TextureMappingData>>(result, a2[1]);
    }

    v16 = *v8;
    if (*v8)
    {
      do
      {
        v17 = v16;
        v16 = *(v16 + 8);
      }

      while (v16);
    }

    else
    {
      do
      {
        v17 = v8[2];
        v7 = *v17 == v8;
        v8 = v17;
      }

      while (v7);
    }

    if (*a2 >= *(v17 + 36))
    {
      return std::__tree<std::__value_type<gm::Range<unsigned int>,md::DaVinciGroundTileData::TextureMappingData>,std::__map_value_compare<gm::Range<unsigned int>,std::__value_type<gm::Range<unsigned int>,md::DaVinciGroundTileData::TextureMappingData>,geo::range_map<unsigned int,md::DaVinciGroundTileData::TextureMappingData,std::less<unsigned int>,std::allocator<std::pair<gm::Range<unsigned int> const,md::DaVinciGroundTileData::TextureMappingData>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned int>,md::DaVinciGroundTileData::TextureMappingData>>>::__emplace_unique_key_args<gm::Range<unsigned int>,std::pair<gm::Range<unsigned int> const,md::DaVinciGroundTileData::TextureMappingData>>(result, a2[1]);
    }
  }

  return result;
}

void md::DaVinciGroundTileData::_buildNormals(uint64_t a1, uint64_t a2, uint64_t a3, std::vector<unsigned int>::size_type a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::vector<unsigned int> *a11)
{
  v42 = *MEMORY[0x1E69E9840];
  v31 = a1;
  v32 = a2;
  v29 = a3;
  v30 = a4;
  v27 = a5;
  v28 = a6;
  v26 = 0;
  __sz = a4;
  if (*(a7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a7, *(a7 + 8));
  }

  else
  {
    v24 = *a7;
  }

  v11 = &v24;
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v24.__r_.__value_.__r.__words[0];
  }

  v35 = 12;
  *v34 = v11;
  v36 = &v40;
  v37 = xmmword_1B33B16F0;
  v38 = std::__format::__allocating_buffer<char>::__prepare_write[abi:nn200100];
  v39 = 0;
  __src = &v40;
  *&v17 = 1;
  *(&v17 + 1) = v34;
  *&v18 = 12;
  std::__vformat_to[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v36, "[{}]", 4, &v17);
  v12 = *(&v37 + 1);
  if (*(&v37 + 1) < 0x7FFFFFFFFFFFFFF8uLL)
  {
    if (*(&v37 + 1) < 0x17uLL)
    {
      v23 = BYTE8(v37);
      if (*(&v37 + 1))
      {
        memmove(&__dst, __src, *(&v37 + 1));
      }

      *(&__dst + v12) = 0;
      if (__src != &v40)
      {
        operator delete(__src);
      }

      v21 = 0;
      std::vector<unsigned int>::resize(a11, __sz);
      v13 = __sz;
      v14 = v29;
      if (__sz)
      {
        v15 = 0;
        begin = a11->__begin_;
        do
        {
          begin[v15] = *(v14 + 2 * v15);
          ++v15;
        }

        while (v13 > v15);
      }

      v20 = 0;
      v17 = 0u;
      v18 = 0u;
      v19 = 1065353216;
      v33 = 0;
      operator new();
    }

    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void sub_1B318D118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a35);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a72);
  a72 = &a40;
  std::vector<std::vector<geo::handle<md::CommandBufferResource>>>::__destroy_vector::operator()[abi:nn200100](&a72);
  if (v72)
  {
    operator delete(v72);
  }

  std::default_delete<gdc::TriangularDCEL>::operator()[abi:nn200100](v73);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a43);
  if (a55 < 0)
  {
    operator delete(__p);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  _Unwind_Resume(a1);
}

double geo::S2XYZ<double>::uv(double *a1, int a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      return v4 / v3;
    }

    else if (a2 == 4)
    {
      return v4 / v2;
    }

    else
    {
      result = 0.0;
      if (a2 == 5)
      {
        return -v2 / v4;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return -v3 / v2;
    }

    else
    {
      result = 0.0;
      if (a2 == 2)
      {
        return -v3 / v4;
      }
    }
  }

  else
  {
    return v2 / v3;
  }

  return result;
}

double geo::S2UVtoST<double>(double a1)
{
  v1 = a1 < 0.0;
  v2 = sqrt(a1 * -3.0 + 1.0) * -0.5 + 1.0;
  result = sqrt(a1 * 3.0 + 1.0) * 0.5;
  if (v1)
  {
    return v2;
  }

  return result;
}

void *geo::range_map<unsigned int,md::DaVinciGroundTileData::TextureMappingData,std::less<unsigned int>,std::allocator<std::pair<gm::Range<unsigned int> const,md::DaVinciGroundTileData::TextureMappingData>>>::find(void *a1, unsigned int a2)
{
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = 0;
    v6 = v3;
    do
    {
      v7 = v6[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      ++v5;
      v6 = v8;
    }

    while (v8 != v2);
    do
    {
      v10 = v5 >> 1;
      v11 = v3;
      if (v5 >= 2)
      {
        v12 = v5 >> 1;
        v13 = v3;
        do
        {
          v14 = v13[1];
          if (v14)
          {
            do
            {
              v11 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              v11 = v13[2];
              v9 = *v11 == v13;
              v13 = v11;
            }

            while (!v9);
          }

          v13 = v11;
          v16 = v12-- <= 1;
        }

        while (!v16);
      }

      if (*(v11 + 9) <= a2)
      {
        v15 = v11[1];
        if (v15)
        {
          do
          {
            v3 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v3 = v11[2];
            v9 = *v3 == v11;
            v11 = v3;
          }

          while (!v9);
        }

        v10 = v5 + ~v10;
      }

      v5 = v10;
    }

    while (v10);
  }

  if (v2 == v3)
  {
    return v2;
  }

  v16 = *(v3 + 8) <= a2 && *(v3 + 9) > a2;
  if (!v16)
  {
    return v2;
  }

  return v3;
}

float md::DaVinciGroundTileData::_buildInstanceTransform(float *a1, float *a2, uint64_t a3)
{
  v3 = a1;
  if (*(a3 + 64) == 1)
  {
    v5 = *(a2 + 1);
    v6 = *(a2 + 4);
    v7 = *(a2 + 5);
    *v29 = *a2;
    DWORD1(v29[0]) = v6;
    v8 = *(a2 + 9);
    *(&v29[0] + 1) = *(a2 + 8);
    v32[0] = v5;
    v32[1] = v7;
    v32[2] = v8;
    v9 = a2[3];
    v10 = *(a2 + 6);
    v11 = a2[7];
    v31[0] = a2[2];
    v31[1] = v10;
    v12 = a2[11];
    v31[2] = a2[10];
    v32[3] = 0;
    v31[3] = 0;
    v30[0] = v9;
    v30[1] = v11;
    v30[2] = v12;
    v30[3] = 1.0;
    v13 = v33;
    gm::Matrix<float,4,4>::Matrix<int,void>(v33, v29, v32, v31, v30);
    gm::operator*<float,4,4,4>(v29, a3, v33);
    v14 = 0;
    v33[0] = v29[0];
    v33[1] = v29[1];
    v33[2] = v29[2];
    v33[3] = v29[3];
    do
    {
      v15 = 0;
      v16 = v3;
      do
      {
        result = *&v13[v15];
        *v16 = result;
        v16 += 3;
        ++v15;
      }

      while (v15 != 4);
      ++v14;
      ++v3;
      v13 = (v13 + 4);
    }

    while (v14 != 3);
  }

  else
  {
    result = *a2;
    v18 = *(a2 + 1);
    v19 = *(a2 + 4);
    v20 = *(a2 + 5);
    v21 = *(a2 + 8);
    v22 = *(a2 + 9);
    v23 = *(a2 + 2);
    v24 = *(a2 + 3);
    v25 = *(a2 + 6);
    v26 = *(a2 + 7);
    v27 = *(a2 + 10);
    v28 = *(a2 + 11);
    *a1 = *a2;
    *(a1 + 1) = v19;
    *(a1 + 2) = v21;
    *(a1 + 3) = v18;
    *(a1 + 4) = v20;
    *(a1 + 5) = v22;
    *(a1 + 6) = v23;
    *(a1 + 7) = v25;
    *(a1 + 8) = v27;
    *(a1 + 9) = v24;
    *(a1 + 10) = v26;
    *(a1 + 11) = v28;
  }

  return result;
}

void std::__shared_ptr_emplace<md::MeshConnectivity>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void std::__shared_ptr_emplace<md::MeshConnectivity>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3AB48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DaVinci::DistanceCompressedMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3AB10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DaVinci::DistanceCompressedVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3A9B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DaVinci::ElevationMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3AAA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DaVinci::ElevationVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3A850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__value_func<void ()(gdc::DCELBase const*,gdc::DCELBase::Warning,unsigned int)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void std::vector<std::optional<gm::Range<unsigned int>>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2) + 1;
    if (v9 > 0x1555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 4 * (v8 >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v6 = v12 + 12;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 12;
  }

  *(a1 + 8) = v6;
}

uint64_t std::default_delete<gdc::TriangularDCEL>::operator()[abi:nn200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(result + 128);
    std::__function::__value_func<void ()(gdc::DCELBase const*,gdc::DCELBase::Warning,unsigned int)>::~__value_func[abi:nn200100](v1 + 96);
    v2 = *(v1 + 72);
    if (v2)
    {
      *(v1 + 80) = v2;
      operator delete(v2);
    }

    v3 = *(v1 + 48);
    if (v3)
    {
      *(v1 + 56) = v3;
      operator delete(v3);
    }

    v4 = *(v1 + 24);
    if (v4)
    {
      *(v1 + 32) = v4;
      operator delete(v4);
    }

    v5 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v5;
      operator delete(v5);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void gdc::TriangularDCEL::HalfEdge::to_string(gdc::TriangularDCEL::HalfEdge *this, unsigned int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = (a2 & 0x3FFFFFFF) != 0x3FFFFFFF;
  v4 = a2 >> 30 == 3;
  v5 = !v4 || !v3;
  if (v4 && v3)
  {
    v6 = a2 & 0x3FFFFFFF;
  }

  else
  {
    v6 = 3 * (a2 & 0x3FFFFFFF) + (a2 >> 30);
  }

  v11[0] = v6;
  v11[1] = 0;
  v11[2] = a2 & 0x3FFFFFFF;
  v11[3] = 0;
  v11[4] = a2 >> 30;
  v11[5] = 0;
  v7 = "interior";
  if (!v5)
  {
    v7 = "boundary";
  }

  v11[7] = 8;
  v11[8] = 432326;
  v11[6] = v7;
  v12 = v16;
  *__len = xmmword_1B33B16F0;
  v14 = std::__format::__allocating_buffer<char>::__prepare_write[abi:nn200100];
  v15 = 0;
  __src = v16;
  v10[0] = 4;
  v10[1] = v11;
  v10[2] = 432326;
  std::__vformat_to[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v12, "({} = ({}, {}), {})", 19, v10);
  v8 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v9 = __src;
  if (__len[1] >= 0x17)
  {
    operator new();
  }

  *(this + 23) = __len[1];
  if (v8)
  {
    memmove(this, v9, v8);
  }

  *(this + v8) = 0;
  if (__src != v16)
  {
    operator delete(__src);
  }
}

void sub_1B318DEEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p)
{
  if (__p != v61)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::pair<unsigned int,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::pair<unsigned int,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::pair<unsigned int,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::pair<unsigned int,unsigned int>>>>::__equal_range_multi<unsigned int>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v6 = *(a1 + 8 * v4);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (!*v6)
  {
    return result;
  }

  while (1)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= a2)
      {
        v7 %= a2;
      }
    }

    else
    {
      v7 &= a2 - 1;
    }

    if (v7 != v4)
    {
      return 0;
    }

LABEL_18:
    result = *result;
    if (!result)
    {
      return result;
    }
  }

  if (*(result + 4) != a3)
  {
    goto LABEL_18;
  }

  v8 = result;
  do
  {
    v8 = *v8;
  }

  while (v8 && *(v8 + 4) == a3);
  return result;
}

void md::DaVinciGroundTileData::_buildNormals(std::span<gm::Matrix<float,3,1> const,18446744073709551615ul>,std::span<unsigned short const,18446744073709551615ul>,std::span<md::IndexRangeInfo const,18446744073709551615ul>,md::DaVinciGroundTileData::BuildNormalsOptions const&,std::unordered_map<unsigned int,unsigned int> &,std::vector<gm::Range<unsigned int>> &,std::vector<gm::Matrix<float,3,1>> &,md::DaVinciGroundTileData::MeshIndices &,std::vector<md::BadTriangle> &,md::DaVinciGroundTileData::ConnectivityInfo *)::$_1::operator()(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = *(**a1 + 8 * a2);
  if (!v6)
  {
    v18 = **(a1 + 8);
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v13 = GEOGetVectorKitVKDefaultLog_log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    v19 = *(a1 + 16);
    if (*(v19 + 23) < 0)
    {
      v19 = *v19;
    }

    v28 = 136315394;
    v29 = v19;
    v30 = 1024;
    v31 = v18 + 3 * a2;
    v15 = "%s Could not find vertex offset for index %d";
    v16 = v13;
    v17 = OS_LOG_TYPE_DEBUG;
    goto LABEL_19;
  }

  v9 = *(v6 + 8);
  v10 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(*(a1 + 24), v9);
  if (!v10)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v20 = GEOGetVectorKitVKDefaultLog_log;
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v21 = *(a1 + 16);
    if (*(v21 + 23) < 0)
    {
      v21 = *v21;
    }

    v28 = 136315650;
    v29 = v21;
    v30 = 1024;
    v31 = a3;
    v32 = 1024;
    LODWORD(v33) = v9;
    v22 = "%s On vertex %d, could not find new vertex offset for old offset %d. Cannot remap.";
    v23 = v20;
    v24 = 24;
    goto LABEL_27;
  }

  v11 = **(a1 + 8) + 3 * a2;
  if (v11 > 0xFFFFFFFC)
  {
LABEL_7:
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v13 = GEOGetVectorKitVKDefaultLog_log;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v14 = *(a1 + 16);
    if (*(v14 + 23) < 0)
    {
      v14 = *v14;
    }

    v28 = 136315394;
    v29 = v14;
    v30 = 1024;
    v31 = a2;
    v15 = "%s cant find index for tri %d";
    v16 = v13;
    v17 = OS_LOG_TYPE_ERROR;
LABEL_19:
    _os_log_impl(&dword_1B2754000, v16, v17, v15, &v28, 0x12u);
LABEL_20:

    return;
  }

  v12 = (v11 + 3);
  while (a3 - v9 != *(**(a1 + 32) + 2 * v11))
  {
    if (++v11 >= v12)
    {
      goto LABEL_7;
    }
  }

  v25 = a4 - *(v10 + 5);
  if (v25 >= 0x10000)
  {
    **(a1 + 40) = 1;
  }

  if (**(a1 + 48) <= v11)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v20 = GEOGetVectorKitVKDefaultLog_log;
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    v26 = *(a1 + 16);
    if (*(v26 + 23) < 0)
    {
      v26 = *v26;
    }

    v27 = **(a1 + 48);
    v28 = 136315650;
    v29 = v26;
    v30 = 1024;
    v31 = v11;
    v32 = 2048;
    v33 = v27;
    v22 = "%s index is too large : %d (indexCount = %zu)";
    v23 = v20;
    v24 = 28;
LABEL_27:
    _os_log_impl(&dword_1B2754000, v23, OS_LOG_TYPE_ERROR, v22, &v28, v24);
LABEL_28:

    return;
  }

  *(**(a1 + 56) + 4 * v11) = v25;
}

void std::__shared_ptr_pointer<gdc::TriangularDCEL  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::DaVinciGroundTileData::_buildNormals(std::span<gm::Matrix<float,3,1> const,18446744073709551615ul>,std::span<unsigned short const,18446744073709551615ul>,std::span<md::IndexRangeInfo const,18446744073709551615ul>,md::DaVinciGroundTileData::BuildNormalsOptions const&,std::unordered_map<unsigned int,unsigned int> &,std::vector<gm::Range<unsigned int>> &,std::vector<gm::Matrix<float,3,1>> &,md::DaVinciGroundTileData::MeshIndices &,std::vector<md::BadTriangle> &,md::DaVinciGroundTileData::ConnectivityInfo *)::$_0,std::allocator<md::DaVinciGroundTileData::_buildNormals(std::span<gm::Matrix<float,3,1> const,18446744073709551615ul>,std::span<unsigned short const,18446744073709551615ul>,std::span<md::IndexRangeInfo const,18446744073709551615ul>,md::DaVinciGroundTileData::BuildNormalsOptions const&,std::unordered_map<unsigned int,unsigned int> &,std::vector<gm::Range<unsigned int>> &,std::vector<gm::Matrix<float,3,1>> &,md::DaVinciGroundTileData::MeshIndices &,std::vector<md::BadTriangle> &,md::DaVinciGroundTileData::ConnectivityInfo *)::$_0>,void ()(gdc::DCELBase const*,gdc::DCELBase::Warning,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = *a4;
  ++**(a1 + 8);
  v7 = *(a1 + 24);
  v8 = *(v7 + 8);
  if (v8)
  {
    v9 = **(a1 + 16);
    v10 = v9 + 3 * v6;
    v11 = *v7;
    v12 = 16 * v8;
    while (*v11 > v10 || v11[1] <= v10)
    {
      v11 += 4;
      v12 -= 16;
      if (!v12)
      {
        goto LABEL_6;
      }
    }

    v15 = v11[2];
    if (v10 <= 0xFFFFFFFC)
    {
      operator new();
    }

    *buf = v5;
    v16 = **(a1 + 48);
    v17 = **(a1 + 56);
    v18 = v9 + 3 * v6;
    for (i = 4; i != 40; i += 12)
    {
      v20 = &buf[i];
      v21 = v17 + 12 * (v15 + *(v16 + 2 * v18));
      *v20 = *v21;
      *(v20 + 2) = *(v21 + 8);
      ++v18;
    }

    v22 = *(a1 + 64);
    v23 = *(v22 + 8);
    v24 = *(v22 + 16);
    if (v23 >= v24)
    {
      v26 = *v22;
      v27 = v23 - *v22;
      v28 = 0xCCCCCCCCCCCCCCCDLL * (v27 >> 3) + 1;
      if (v28 > 0x666666666666666)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v29 = 0xCCCCCCCCCCCCCCCDLL * ((v24 - v26) >> 3);
      if (2 * v29 > v28)
      {
        v28 = 2 * v29;
      }

      if (v29 >= 0x333333333333333)
      {
        v30 = 0x666666666666666;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        if (v30 <= 0x666666666666666)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v31 = 8 * (v27 >> 3);
      v32 = *&buf[16];
      *v31 = *buf;
      *(v31 + 16) = v32;
      *(v31 + 32) = v38;
      v25 = v31 + 40;
      v33 = v31 - v27;
      if (v26 != v23)
      {
        v34 = v33;
        do
        {
          v35 = *v26;
          v36 = v26[1];
          *(v34 + 32) = *(v26 + 4);
          *v34 = v35;
          *(v34 + 16) = v36;
          v26 = (v26 + 40);
          v34 += 40;
        }

        while (v26 != v23);
        v26 = *v22;
      }

      *v22 = v33;
      *(v22 + 8) = v25;
      *(v22 + 16) = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v23 = *buf;
      v23[1] = *&buf[16];
      *(v23 + 4) = v38;
      v25 = v23 + 40;
    }

    *(v22 + 8) = v25;
  }

  else
  {
LABEL_6:
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v13 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      if (*(v14 + 23) < 0)
      {
        v14 = *v14;
      }

      *buf = 136315394;
      *&buf[4] = v14;
      *&buf[12] = 1024;
      *&buf[14] = v6;
      _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "%s could not find vtx offset for face %d", buf, 0x12u);
    }
  }
}

__n128 std::__function::__func<md::DaVinciGroundTileData::_buildNormals(std::span<gm::Matrix<float,3,1> const,18446744073709551615ul>,std::span<unsigned short const,18446744073709551615ul>,std::span<md::IndexRangeInfo const,18446744073709551615ul>,md::DaVinciGroundTileData::BuildNormalsOptions const&,std::unordered_map<unsigned int,unsigned int> &,std::vector<gm::Range<unsigned int>> &,std::vector<gm::Matrix<float,3,1>> &,md::DaVinciGroundTileData::MeshIndices &,std::vector<md::BadTriangle> &,md::DaVinciGroundTileData::ConnectivityInfo *)::$_0,std::allocator<md::DaVinciGroundTileData::_buildNormals(std::span<gm::Matrix<float,3,1> const,18446744073709551615ul>,std::span<unsigned short const,18446744073709551615ul>,std::span<md::IndexRangeInfo const,18446744073709551615ul>,md::DaVinciGroundTileData::BuildNormalsOptions const&,std::unordered_map<unsigned int,unsigned int> &,std::vector<gm::Range<unsigned int>> &,std::vector<gm::Matrix<float,3,1>> &,md::DaVinciGroundTileData::MeshIndices &,std::vector<md::BadTriangle> &,md::DaVinciGroundTileData::ConnectivityInfo *)::$_0>,void ()(gdc::DCELBase const*,gdc::DCELBase::Warning,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A3AF28;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__tree<std::__value_type<gm::Range<unsigned int>,md::DaVinciGroundTileData::TextureMappingData>,std::__map_value_compare<gm::Range<unsigned int>,std::__value_type<gm::Range<unsigned int>,md::DaVinciGroundTileData::TextureMappingData>,geo::range_map<unsigned int,md::DaVinciGroundTileData::TextureMappingData,std::less<unsigned int>,std::allocator<std::pair<gm::Range<unsigned int> const,md::DaVinciGroundTileData::TextureMappingData>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned int>,md::DaVinciGroundTileData::TextureMappingData>>>::__emplace_unique_key_args<gm::Range<unsigned int>,std::pair<gm::Range<unsigned int> const,md::DaVinciGroundTileData::TextureMappingData>>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 36);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return 0;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

__n128 std::__function::__func<md::DaVinciGroundTileData::DaVinciGroundTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::shared_ptr<md::GEOVectorTileResource> const&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<gss::StylesheetManager<VKSharedResources *::PropertyID>> const&,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *,md::DaVinciGroundSettings const*)::$_0::operator() const(ggl::ResourceAccessor *)::{lambda(void)#1},std::allocator<ggl::ResourceAccessor *>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A3A5A8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void *std::unique_ptr<md::MaterialRaster>::~unique_ptr[abi:nn200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[12];
    if (v3)
    {
      v2[13] = v3;
      operator delete(v3);
    }

    v4 = v2[9];
    if (v4)
    {
      v2[10] = v4;
      operator delete(v4);
    }

    v5 = v2[6];
    if (v5)
    {
      v2[7] = v5;
      operator delete(v5);
    }

    v6 = v2[5];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = v2[3];
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    v8 = v2[1];
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    MEMORY[0x1B8C62190](v2, 0x1030C4040757CC0);
  }

  return a1;
}

uint64_t std::__shared_ptr_emplace<md::StyleAttributeRasterSet>::__on_zero_shared(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>>>::~__hash_table(a1 + 64);

  return std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(a1 + 24);
}

void std::__shared_ptr_emplace<md::StyleAttributeRasterSet>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3AC40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<md::MaterialRaster>::~unique_ptr[abi:nn200100](v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<md::DaVinciGroundTileData::DaVinciGroundTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::shared_ptr<md::GEOVectorTileResource> const&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<gss::StylesheetManager<VKSharedResources *::PropertyID>> const&,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *,md::DaVinciGroundSettings const*)::$_0,std::allocator<md::DaVinciGroundSettings const*>,void ()(ggl::ResourceAccessor *)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::DaVinciGroundTileData::DaVinciGroundTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::shared_ptr<md::GEOVectorTileResource> const&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<gss::StylesheetManager<VKSharedResources *::PropertyID>> const&,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *,md::DaVinciGroundSettings const*)::$_0,std::allocator<md::DaVinciGroundSettings const*>,void ()(ggl::ResourceAccessor *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

__n128 std::__function::__func<md::DaVinciGroundTileData::DaVinciGroundTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::shared_ptr<md::GEOVectorTileResource> const&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<gss::StylesheetManager<VKSharedResources *::PropertyID>> const&,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *,md::DaVinciGroundSettings const*)::$_0,std::allocator<md::DaVinciGroundSettings const*>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A3A560;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

void std::__function::__func<md::DaVinciGroundTileData::DaVinciGroundTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::shared_ptr<md::GEOVectorTileResource> const&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<gss::StylesheetManager<VKSharedResources *::PropertyID>> const&,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *,md::DaVinciGroundSettings const*)::$_0,std::allocator<md::DaVinciGroundSettings const*>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F2A3A560;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::DaVinciGroundTileData::DaVinciGroundTileData(gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::shared_ptr<md::GEOVectorTileResource> const&,VKSharedResources *,std::vector<gdc::Resource::LoadMetadata> &&<gss::StylesheetManager<VKSharedResources *::PropertyID>> const&,std::vector<gdc::Resource::LoadMetadata> &&<md::RegistryManager> const&,gdc::Registry *,md::DaVinciGroundSettings const*)::$_0,std::allocator<md::DaVinciGroundSettings const*>,void ()(ggl::ResourceAccessor *)>::~__func(void *a1)
{
  *a1 = &unk_1F2A3A560;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

uint64_t md::DaVinciGroundTileData::debugString(md::DaVinciGroundTileData *this, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v11);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v11, "Tex Verts: ", 11);
  v4 = MEMORY[0x1B8C61CB0](&v11, (*(a2[111] + 48) - *(a2[111] + 40)) / *(a2[111] + 8));
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v5 = std::locale::use_facet(&v16, MEMORY[0x1E69E5318]);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(&v16);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v4, "2Elev Verts: ", 13);
  v6 = MEMORY[0x1B8C61CB0](v4, (*(a2[113] + 48) - *(a2[113] + 40)) / *(a2[113] + 8));
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v16, MEMORY[0x1E69E5318]);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v16);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, "Indices: ", 9);
  v8 = MEMORY[0x1B8C61CB0](v6, (*(a2[109] + 48) - *(a2[109] + 40)) / *(a2[109] + 8));
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v16, MEMORY[0x1E69E5318]);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v16);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str[abi:nn200100](this, &v12);
  v11 = *MEMORY[0x1E69E54E8];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v12 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v15);
}

void sub_1B318F47C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::locale::~locale((v26 - 56));
  a9 = *MEMORY[0x1E69E54E8];
  *(&a9 + *(a9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a10 = MEMORY[0x1E69E5548] + 16;
  if (a23 < 0)
  {
    operator delete(__p);
  }

  a10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a11);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a26);
  _Unwind_Resume(a1);
}

uint64_t *md::Ribbons::RibbonWriter<md::Ribbons::PatternedRibbonDescriptor>::writeVertex(uint64_t *result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 60);
  v4 = *result;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = (fminf(fmaxf(*(a2 + 12), 0.0), 1.0) * 65535.0);
    *v4 = (fminf(fmaxf(*(a2 + 8), 0.0), 1.0) * 65535.0);
    v8.i64[0] = *(a2 + 20 + 8 * v2);
    v8.i64[1] = *(a2 + 44 + 8 * v2);
    *(v4 + 2) = v7;
    v9.i64[0] = 0xBF000000BF000000;
    v9.i64[1] = 0xBF000000BF000000;
    *(v4 + 4) = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v9, xmmword_1B33B0C70, v8)));
    *(v4 + 12) = *(a2 + 16);
    *(v4 + 16) = v3;
    v4 += 20;
    v2 = 1;
    v5 = 0;
  }

  while ((v6 & 1) != 0);
  *result = v4;
  return result;
}

void std::__shared_ptr_emplace<ggl::PatternedRibbon::WriteStencilBasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3B0D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::PatternedSharedResources::PatternedSharedResources(md::PatternedSharedResources *this, const ggl::StandardLibrary *a2, const RenderTargetFormat *a3, int a4)
{
  v4 = *MEMORY[0x1E69E9840];
  *this = 0u;
  *(this + 1) = 0u;
  if (a4)
  {
    operator new();
  }

  operator new();
}

void sub_1B31900EC(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v5 = v1[6];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  std::unique_ptr<md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>>::reset[abi:nn200100](v3, 0);
  v6 = v1[3];
  v1[3] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = v1[2];
  v1[2] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = v1[1];
  v1[1] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *v1;
  *v1 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  _Unwind_Resume(a1);
}

unint64_t md::PatternedBatchKey::hash(md::PatternedBatchKey *this)
{
  v2 = *this;
  v3 = gss::FeatureAttributeSet::hash(*(*this + 240), *(*this + 248));
  v5 = *(v2 + 284);
  if (*(v2 + 284))
  {
    v6 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      if (v10 < v5 && (v8 & 1) == 0)
      {
        v11 = *(v2 + 272);
        v9 = (v11 + 4 * v10);
        v4 = (v11 + *(v2 + 280) + 2 * v10);
        v8 = 1;
      }

      v6 ^= (*v4 - 0x61C8864680B583EBLL + ((((v6 << 6) - 0x61C8864680B583EBLL + (v6 >> 2) + *v9) ^ v6) << 6) + ((((v6 << 6) - 0x61C8864680B583EBLL + (v6 >> 2) + *v9) ^ v6) >> 2)) ^ ((v6 << 6) - 0x61C8864680B583EBLL + (v6 >> 2) + *v9);
      v12 = v10 + 1;
      if (v8)
      {
        v8 = 0;
      }

      if (v12 < v5)
      {
        ++v10;
      }

      else
      {
        v10 = *(v2 + 284);
      }
    }

    while (v12 < v5);
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ *(this + 4) ^ v3;
}

uint64_t md::Ribbons::RibbonBatch<md::Ribbons::PatternedRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  *a1 = &unk_1F2A3B078;
  v6 = (a1 + 888);
  std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  md::FrameAllocator<ggl::RenderItem>::reset(a1 + 864);
  free(*(a1 + 864));
  v2 = *(a1 + 840);
  if (v2)
  {
    *(a1 + 848) = v2;
    operator delete(v2);
  }

  v6 = (a1 + 808);
  std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v3 = *(a1 + 784);
  if (v3)
  {
    *(a1 + 792) = v3;
    operator delete(v3);
  }

  for (i = 656; i != -112; i -= 128)
  {
    ggl::RenderItem::~RenderItem((a1 + i));
  }

  return a1;
}

void std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 56);
    std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void md::Ribbons::RibbonBatch<md::Ribbons::PatternedRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  md::Ribbons::RibbonBatch<md::Ribbons::PatternedRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonBatch<md::Ribbons::PatternedRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A3B058;
  v2 = a1[116];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::PatternedRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::RibbonBatch<md::Ribbons::PatternedRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A3B058;
  v2 = a1[116];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return md::Ribbons::RibbonBatch<md::Ribbons::PatternedRibbonDescriptor>::~RibbonBatch(a1);
}

void ggl::ConstantDataTyped<ggl::PatternedRibbon::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PatternedRibbon::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D580;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::PatternedBatch::~PatternedBatch(md::PatternedBatch *this)
{
  md::PatternedBatch::~PatternedBatch(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3B018;
  v2 = *(this + 129);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 127);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 125);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 123);
  *(this + 123) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 122);
  *(this + 122) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 121);
  *(this + 121) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 120);
  *(this + 120) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 119);
  *(this + 119) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 118);
  *(this + 118) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *this = &unk_1F2A3B058;
  v11 = *(this + 116);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::PatternedRibbonDescriptor>::~RibbonBatch(this);
}

unint64_t md::PatternedPipelineStateManager::pipelineStateForFunctionConstants(void *a1, uint64_t a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  v28 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v19 = 0;
  v20 = a6;
  v21 = a7;
  v22 = 0;
  v23 = a8;
  result = ggl::packFunctionConstantKey(v18, a2);
  v11 = *(a2 + 104);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = (a2 + 104);
  do
  {
    v13 = v11[4];
    v14 = v13 >= result;
    v15 = v13 < result;
    if (v14)
    {
      v12 = v11;
    }

    v11 = v11[v15];
  }

  while (v11);
  if (v12 == (a2 + 104) || result < v12[4])
  {
LABEL_9:
    operator new();
  }

  v17 = v12[5];
  v16 = v12[6];
  *a1 = v17;
  a1[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B3190E80(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

void setupPatternedShader<ggl::PatternedRibbon::BasePipelineSetup>(uint64_t a1, void *a2, uint64_t a3, int *a4, void *a5, int a6, float a7, float a8, float a9)
{
  _S8 = a9;
  _S9 = a8;
  v57 = *MEMORY[0x1E69E9840];
  v19 = *a5;
  if (!*a5)
  {
    goto LABEL_14;
  }

  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::vector[abi:nn200100](&v54, a3);
  v20 = *(a3 + 32);
  v56 = v20;
  if (*(v19 + 46) != (_S9 + 0.5) || v20 != *(v19 + 32) || v55 - v54 != *(v19 + 8) - *v19)
  {
    std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v54);
    goto LABEL_14;
  }

  if (v55 == v54)
  {
    v26 = &v54;
LABEL_17:
    std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v26);
    goto LABEL_18;
  }

  v21 = 0;
  v22 = 1;
  do
  {
    v23 = vabds_f32(*(v54 + 4 * v21), *(*v19 + 4 * v21));
    v21 = v22++;
  }

  while (v23 <= 0.00000011921 && (v55 - v54) >> 2 > v21);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v54);
  if (v23 > 0.00000011921)
  {
LABEL_14:
    std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::vector[abi:nn200100](v52, a3);
    v53 = *(a3 + 32);
    md::DashTextureCache::textureForPattern(v50, a2, v52, 0, _S9);
    v25 = a5[1];
    *a5 = v50[0];
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v25);
    }

    v26 = v52;
    goto LABEL_17;
  }

LABEL_18:
  **(a1 + 168) = *(*a5 + 64);
  v27 = *a5;
  LOWORD(v9) = *(v27 + 40);
  ggl::DataAccess<ggl::Tile::View>::DataAccess(v50, **(a1 + 136), 0);
  v28 = *(v27 + 48);
  v29 = 0.0;
  if (v28 != 0.0)
  {
    v30 = *(v51 + 64);
    if (a6)
    {
      v31 = log2f(v30);
      v29 = 1.0 / (v28 * exp2f(floorf(v31)));
    }

    else
    {
      v32 = logf(v28 * v30);
      v29 = expf(floorf(v32 * 4.0) * -0.25);
    }
  }

  v33 = v9;
  ggl::BufferMemory::~BufferMemory(v50);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v50, *(*(a1 + 136) + 32));
  v34 = 4;
  v35 = v51;
  do
  {
    v36 = *a4++;
    *(v35 + 4 * v34++) = v36;
  }

  while (v34 != 8);
  *v35 = (v33 * 0.5) / a7;
  *(v35 + 32) = v29;
  __asm { FCVT            H0, S9 }

  *(v35 + 36) = _H0;
  v42 = *a3;
  v43 = (*(a3 + 8) - *a3) >> 2;
  if (*(a3 + 8) == *a3)
  {
    _S0 = 0.0;
  }

  else
  {
    _S0 = *v42;
  }

  __asm { FCVT            H1, S0 }

  *(v35 + 38) = _H1;
  v46 = _S0 + v43;
  _H0 = 0;
  if (v46 > 1.0)
  {
    _S0 = *(v42 + 4);
    __asm { FCVT            H0, S0 }
  }

  *(v35 + 40) = _H0;
  __asm { FCVT            H0, S8 }

  *(v35 + 42) = _H0;
  ggl::BufferMemory::~BufferMemory(v50);
}

void std::__shared_ptr_emplace<ggl::PatternedRibbon::BasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3B098;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::RibbonLayer(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char *a6, int a7)
{
  v11 = a1;
  v312 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v306 = 0;
    v307 = 0;
    *&v309[4] = 0;
    *&v308[1] = 0;
    *&v308[8] = 0;
    *&v309[12] = 1065353216;
    v12 = *(a3 + 40);
    v13 = *(a3 + 48);
    if (v12 == v13)
    {
LABEL_99:
      operator new();
    }

    while (1)
    {
      v14 = *(*v12 + 88);
      v15 = *(*v12 + 72);
      if (a7)
      {
        v16 = 0;
        if (v14)
        {
          v17 = v15 + 1;
          do
          {
            v18 = vcvts_n_u32_f32(*(v17 - 1), 2uLL);
            if (v18 >= 3)
            {
              LOBYTE(v18) = 3;
            }

            v19 = vcvts_n_u32_f32(*v17, 2uLL);
            if (v19 >= 3)
            {
              LOBYTE(v19) = 3;
            }

            v16 |= 1 << (v18 | (4 * v19));
            v17 += 3;
            v14 = (v14 - 1);
          }

          while (v14);
        }
      }

      else
      {
        v14 = ggl::CullingGrid::intersectedCellsForRibbon(v14, v15);
        v16 = v14;
      }

      v20 = v16;
      v21 = v307;
      if (v307)
      {
        v22 = vcnt_s8(v307);
        v22.i16[0] = vaddlv_u8(v22);
        if (v22.u32[0] > 1uLL)
        {
          v9 = v16;
          if (v307 <= v16)
          {
            v9 = v16 % v307;
          }
        }

        else
        {
          v9 = (v307 - 1) & v16;
        }

        v23 = *(*&v306 + 8 * v9);
        if (v23)
        {
          v24 = *v23;
          if (*v23)
          {
            do
            {
              v25 = v24[1];
              if (v25 == v16)
              {
                if (*(v24 + 4) == v16)
                {
                  goto LABEL_88;
                }
              }

              else
              {
                if (v22.u32[0] > 1uLL)
                {
                  if (v25 >= v307)
                  {
                    v25 %= v307;
                  }
                }

                else
                {
                  v25 &= v307 - 1;
                }

                if (v25 != v9)
                {
                  break;
                }
              }

              v24 = *v24;
            }

            while (v24);
          }
        }
      }

      v26 = mdm::zone_mallocator::instance(v14);
      v27 = pthread_rwlock_rdlock((v26 + 32));
      if (v27)
      {
        geo::read_write_lock::logFailure(v27, "read lock", v28);
      }

      v24 = malloc_type_zone_malloc(*v26, 0x38uLL, 0x10200408A1E2E81uLL);
      atomic_fetch_add((v26 + 24), 1u);
      geo::read_write_lock::unlock((v26 + 32));
      *v24 = 0;
      v24[1] = v16;
      *(v24 + 4) = v16;
      v24[3] = 0;
      v24[4] = 0;
      v24[5] = 0;
      v30 = (*&v309[4] + 1);
      if (!v21 || (*&v309[12] * v21) < v30)
      {
        break;
      }

LABEL_78:
      v51 = v306;
      v52 = *(*&v306 + 8 * v9);
      if (v52)
      {
        *v24 = *v52;
      }

      else
      {
        *v24 = *&v308[8];
        *&v308[8] = v24;
        *(*&v51 + 8 * v9) = &v308[8];
        if (!*v24)
        {
          goto LABEL_87;
        }

        v53 = *(*v24 + 8);
        if ((v21 & (v21 - 1)) != 0)
        {
          if (v53 >= v21)
          {
            v53 %= v21;
          }
        }

        else
        {
          v53 &= v21 - 1;
        }

        v52 = (*&v306 + 8 * v53);
      }

      *v52 = v24;
LABEL_87:
      ++*&v309[4];
LABEL_88:
      std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100]((v24 + 3), v12++);
      if (v12 == v13)
      {
        goto LABEL_99;
      }
    }

    v31 = (v21 & (v21 - 1)) != 0;
    if (v21 < 3)
    {
      v31 = 1;
    }

    v32 = v31 | (2 * v21);
    v33 = vcvtps_u32_f32(v30 / *&v309[12]);
    if (v32 <= v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = v32;
    }

    if (v34 == 1)
    {
      v34 = 2;
    }

    else if ((v34 & (v34 - 1)) != 0)
    {
      prime = std::__next_prime(v34);
      v34 = prime;
    }

    v21 = v307;
    if (v34 > v307)
    {
      goto LABEL_43;
    }

    if (v34 < v307)
    {
      prime = vcvtps_u32_f32(*&v309[4] / *&v309[12]);
      if (v307 < 3 || (v46 = vcnt_s8(v307), v46.i16[0] = vaddlv_u8(v46), v46.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v47 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v47;
        }
      }

      if (v34 <= prime)
      {
        v34 = prime;
      }

      if (v34 >= v307)
      {
        v21 = v307;
      }

      else
      {
        if (v34)
        {
LABEL_43:
          v35 = mdm::zone_mallocator::instance(prime);
          v36 = pthread_rwlock_rdlock((v35 + 32));
          if (v36)
          {
            geo::read_write_lock::logFailure(v36, "read lock", v37);
          }

          v38 = malloc_type_zone_malloc(*v35, 8 * v34, 0x2004093837F09uLL);
          atomic_fetch_add((v35 + 24), 1u);
          geo::read_write_lock::unlock((v35 + 32));
          v40 = v306;
          v306 = v38;
          if (v40)
          {
            v41 = mdm::zone_mallocator::instance(v39);
            geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(v41, v40);
          }

          v42 = 0;
          v307 = v34;
          do
          {
            *(*&v306 + 8 * v42++) = 0;
          }

          while (v34 != v42);
          v43 = *&v308[8];
          if (*&v308[8])
          {
            v44 = *(*&v308[8] + 8);
            v45 = vcnt_s8(v34);
            v45.i16[0] = vaddlv_u8(v45);
            if (v45.u32[0] > 1uLL)
            {
              if (v44 >= v34)
              {
                v44 %= v34;
              }
            }

            else
            {
              v44 &= v34 - 1;
            }

            *(*&v306 + 8 * v44) = &v308[8];
            for (i = *v43; i; v44 = v49)
            {
              v49 = i[1];
              if (v45.u32[0] > 1uLL)
              {
                if (v49 >= v34)
                {
                  v49 %= v34;
                }
              }

              else
              {
                v49 &= v34 - 1;
              }

              if (v49 != v44)
              {
                v50 = v306;
                if (!*(*&v306 + 8 * v49))
                {
                  *(*&v306 + 8 * v49) = v43;
                  goto LABEL_69;
                }

                *v43 = *i;
                *i = **(*&v50 + 8 * v49);
                **(*&v50 + 8 * v49) = i;
                i = v43;
              }

              v49 = v44;
LABEL_69:
              v43 = i;
              i = *i;
            }
          }

          v21 = v34;
          goto LABEL_73;
        }

        v54 = v306;
        v306 = 0;
        if (v54)
        {
          v55 = mdm::zone_mallocator::instance(prime);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(v55, v54);
        }

        v21 = 0;
        v307 = 0;
      }
    }

LABEL_73:
    if ((v21 & (v21 - 1)) != 0)
    {
      if (v21 <= v20)
      {
        v9 = v20 % v21;
      }

      else
      {
        v9 = v20;
      }
    }

    else
    {
      v9 = (v21 - 1) & v20;
    }

    goto LABEL_78;
  }

  v56 = a6[32];
  if (v56 == 1)
  {
    v8 = a6[1];
    v10 = *(a6 + 4);
    v57 = *a6;
    v9 = *(a6 + 2);
    v7 = a6[24];
  }

  else
  {
    v57 = 0;
  }

  *a1 = &unk_1F2A3B128;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v58.i64[1] = 0;
  *(a1 + 32) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 104) = a7;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 152) = 0;
  if (v56)
  {
    *(a1 + 121) = v8;
    *(a1 + 124) = v10;
    *(a1 + 120) = v57;
    *(a1 + 136) = v9;
    *(a1 + 144) = v7;
    *(a1 + 152) = 1;
  }

  if (!*(a1 + 8))
  {
    v60 = 0;
    if ((a7 & 1) == 0)
    {
      goto LABEL_165;
    }

LABEL_164:
    operator new();
  }

  v59 = *(a1 + 8);
  v60 = 0;
  do
  {
    v262 = v59;
    v61 = *v59;
    v61[1] = v11;
    v62 = v61[111];
    v63 = v61[112];
    v267 = v63;
    while (v62 != v63)
    {
      v274 = v62;
      v64 = *v62;
      v64[1] = **v62;
      v64[3] = v64[2];
      v64[5] = v64[4];
      v306 = 0;
      v307 = 0;
      *v308 = 0;
      memset(&__p, 0, sizeof(__p));
      v65 = v64[7];
      v281 = v64[8];
      if (v65 != v281)
      {
        v269 = v60;
        v276 = v64;
        do
        {
          v66 = *v65;
          v293.__begin_ = 1;
          md::Ribbons::RibbonWriter<md::Ribbons::DaVinciTrafficRibbonDescriptor>::eliminateDuplicates(v66, &v306, &__p, &v293);
          begin = v293.__begin_;
          if (v293.__begin_ >= 2)
          {
            v68 = v306;
            if (*(v66 + 96))
            {
              v69 = 0;
              v70 = 0;
              v71 = *(v66 + 100);
              v72 = *(v66 + 104);
            }

            else
            {
              v73 = 12;
              v74 = 1;
              while (1)
              {
                v75 = (*&v306 + 12 * v74);
                v77 = *v75;
                v76 = v75[1];
                v78 = 1;
                v79 = **v306.f32;
                do
                {
                  v80 = vabds_f32(v77, v79);
                  if ((v78 & 1) == 0)
                  {
                    break;
                  }

                  v78 = 0;
                  v79 = *(*&v306 + 4);
                  v77 = v76;
                }

                while (v80 < 1.0e-10);
                if (v80 >= 1.0e-10)
                {
                  break;
                }

                ++v74;
                v73 += 12;
                if (v74 == v293.__begin_)
                {
                  v72 = 0.0;
                  v71 = 1.0;
                  goto LABEL_124;
                }
              }

              for (j = 0; j != 12; j += 4)
              {
                *(&v297 + j) = *(*&v68 + v73) - *(*&v68 + j);
                v73 += 4;
              }

              v82 = 1.0 / sqrtf((*&v297 * *&v297) + (*(&v297 + 1) * *(&v297 + 1)));
              v71 = v82 * *&v297;
              v72 = v82 * *(&v297 + 1);
LABEL_124:
              v69 = 1;
              v70 = 2;
            }

            v279 = v65;
            if (v69 < begin - 1)
            {
              v83 = *&v68 + 12 * v69 + 12;
              while (1)
              {
                v84 = v71;
                v85 = v72;
                v86 = *&v68 + 12 * v69;
                v294 = *v86;
                LODWORD(v295) = *(v86 + 8);
                if (++v69 < begin)
                {
                  v87 = v83;
                  v88 = v69;
                  while (1)
                  {
                    v89 = (*&v68 + 12 * v88);
                    v91 = *v89;
                    v90 = v89[1];
                    v92 = 1;
                    v93 = *&v294;
                    do
                    {
                      v94 = vabds_f32(v91, v93);
                      if ((v92 & 1) == 0)
                      {
                        break;
                      }

                      v92 = 0;
                      v93 = *(&v294 + 1);
                      v91 = v90;
                    }

                    while (v94 < 1.0e-10);
                    if (v94 >= 1.0e-10)
                    {
                      break;
                    }

                    ++v88;
                    v87 += 3;
                    if (v88 >= begin)
                    {
                      goto LABEL_138;
                    }
                  }

                  for (k = 0; k != 12; k += 4)
                  {
                    v96 = *v87++;
                    *(&v297 + k) = v96 - *(&v294 + k);
                  }

                  v97 = 1.0 / sqrtf((*&v297 * *&v297) + (*(&v297 + 1) * *(&v297 + 1)));
                  v71 = v97 * *&v297;
                  v72 = v97 * *(&v297 + 1);
                }

LABEL_138:
                v98 = atan2f(v72, v71);
                v99 = v98 - atan2f(v85, v84);
                v100 = v99;
                if (v99 > 3.14159265)
                {
                  break;
                }

                if (v100 < -3.14159265)
                {
                  v101 = 6.28318531;
                  goto LABEL_142;
                }

LABEL_143:
                v102 = fmaxf(ceilf(fabsf(v99) * 1.2732), 1.0);
                v103 = 2;
                if (v102 >= 2)
                {
                  v103 = 2 * v102;
                }

                v70 += v103;
                v83 += 12;
                if (v69 == (begin - 1))
                {
                  goto LABEL_146;
                }
              }

              v101 = -6.28318531;
LABEL_142:
              v99 = v100 + v101;
              goto LABEL_143;
            }

LABEL_146:
            v104 = v70 + 2;
            if ((v70 + 2) < 0x10000)
            {
              v107 = 3 * v104 + *(v66 + 24);
              v105 = *(v66 + 8) + v104;
              v106 = v107 - 6;
            }

            else
            {
              v105 = *(v66 + 8);
              v106 = *(v66 + 24);
            }

            v11 = a1;
            v64 = v276;
            v65 = v279;
            *(v66 + 16) = v105;
            *(v66 + 32) = v106;
            *(v66 + 48) = *(v66 + 40);
          }

          v108 = *v65++;
          v64[1] = v108[2] + v64[1] - v108[1];
          v64[3] = v108[4] + v64[3] - v108[3];
          v64[5] = v108[6] + v64[5] - v108[5];
        }

        while (v65 != v281);
        v60 = v269;
        if (__p.__begin_)
        {
          operator delete(__p.__begin_);
        }
      }

      if (v306)
      {
        operator delete(*&v306);
      }

      v109 = v60 >> 3;
      if (((v60 >> 3) + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      if (v60 >> 3 != -1)
      {
        if (!(((v60 >> 3) + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      *(8 * v109) = *v274;
      memcpy(0, 0, v60);
      v60 = 8 * v109 + 8;
      v62 = (v274 + 1);
      v63 = v267;
    }

    v59 = v262 + 1;
  }

  while (v262 != -8);
  if (*(v11 + 104))
  {
    goto LABEL_164;
  }

LABEL_165:
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v297 = 0;
  v113 = v60 >> 3;
  do
  {
    if (v112 == v113 || (*(*(8 * v112) + 8) + v111 - **(8 * v112)) >= 0x10000)
    {
      v294 = "BatchType/IData";
      operator new();
    }

    if (v112 < v60 >> 3)
    {
      v114 = *(8 * v112);
      v111 += v114->i64[1] - v114->i64[0];
      v115 = vaddq_s64(v114[1], v114[2]);
      v58 = vsubq_s64(vdupq_laneq_s64(v115, 1), v115);
      v110 += v58.i64[0];
      v297 = v110;
    }

    v113 = v60 >> 3;
    ++v112;
  }

  while (v112 <= v60 >> 3);
  v116 = &xmmword_1B33B2000;
  *a1 = &unk_1F2A3B108;
  *(a1 + 160) = *a4;
  v117 = a4[1];
  *(a1 + 168) = v117;
  if (v117)
  {
    atomic_fetch_add_explicit((v117 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 176) = *a5;
  v118 = a5[1];
  *(a1 + 184) = v118;
  if (v118)
  {
    atomic_fetch_add_explicit((v118 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 192) = 0;
  v119 = *(a1 + 8);
  v256 = *(a1 + 16);
  if (v119 != v256)
  {
    v58.i64[0] = 0x3DDB7CDFD9D7BDBBLL;
    v287 = v58;
    do
    {
      v257 = v119;
      v120 = *v119;
      v121 = *(*v119 + 888);
      v122 = *(v120 + 896);
      v258 = v122;
      while (v121 != v122)
      {
        v259 = v121;
        v123 = *v121;
        v124 = **((*v121)[11] + 64);
        v125 = **v121;
        v126 = (*v121)[1];
        ggl::BufferMemory::BufferMemory(&__p);
        ggl::ResourceAccessor::accessIndexData(&v306, a2, v124, v125, v126, 1, 1);
        ggl::BufferMemory::operator=(&__p, &v306);
        ggl::BufferMemory::~BufferMemory(&v306);
        v127 = v123[2];
        v129 = v123[4];
        v128 = v123[5];
        if (v128 == v129)
        {
          v130 = v123[3];
        }

        else
        {
          if (v129 < v127)
          {
            v127 = v123[4];
          }

          if (v123[3] <= v128)
          {
            v130 = v123[5];
          }

          else
          {
            v130 = v123[3];
          }
        }

        v131 = v300;
        v132 = ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(&v297, *(v123[11] + 96), v127, v130, 1, 1, a2);
        v133 = v123[2];
        v134 = v123[4];
        v294 = 0;
        v295 = 0;
        v296 = 0;
        memset(&v293, 0, sizeof(v293));
        v261 = v123;
        v135 = v123[7];
        v263 = (v123 + 7);
        v136 = v123[8];
        if (v135 != v136)
        {
          v137 = v298 + 2 * v133 - 2 * v127;
          v138 = v298 + 2 * v134 - 2 * v127;
          v139 = v287;
          v266 = v136;
          while (1)
          {
            v132 = *v135;
            v304 = v131;
            v140 = *(v132 + 2);
            if (v140 != *(v132 + 1))
            {
              break;
            }

            v141 = *(v132 + 2);
LABEL_279:
            v131 += 20 * (v141 - v140);
            v137 += 2 * (*(v132 + 4) - *(v132 + 3));
            v138 += 2 * (*(v132 + 6) - *(v132 + 5));
            if (++v135 == v136)
            {
              v287 = v139;
              v135 = *v263;
              goto LABEL_281;
            }
          }

          v273 = v137;
          v275 = v132;
          v288 = v139;
          v303 = 1;
          md::Ribbons::RibbonWriter<md::Ribbons::DaVinciTrafficRibbonDescriptor>::eliminateDuplicates(v132, &v294, &v293, &v303);
          v145 = v303;
          if (v303 < 2)
          {
            v139 = v288;
            v137 = v273;
LABEL_278:
            v132 = *v135;
            v140 = *(*v135 + 1);
            v141 = *(*v135 + 2);
            goto LABEL_279;
          }

          v270 = v131;
          v146 = 0;
          v147 = v294;
          v148 = v294;
          v280 = v293.__begin_;
          v149 = v303 - 1;
          v150 = 0.0;
          v151 = v294;
          v152 = v288;
          do
          {
            v153 = 0;
            ++v146;
            do
            {
              v306.f32[v153] = *&v151[v153 * 4 + 12] - *&v151[v153 * 4];
              ++v153;
            }

            while (v153 != 3);
            v150 = sqrtf(vaddv_f32(vmul_f32(v306, v306))) + v150;
            v151 += 12;
          }

          while (v146 != v149);
          *&v142 = v150;
          v154 = 1.0 / v150;
          v155 = *&v142 <= 1.0e-10;
          DWORD1(v142) = 0;
          if (v155)
          {
            v154 = 0.0;
          }

          v277 = v154;
          __src = v145;
          v271 = v135;
          if (*(v275 + 96))
          {
            v156 = 0;
            *&v144 = *(v275 + 100);
            LOBYTE(v311) = 0;
            v157 = 0.0;
          }

          else
          {
            for (m = 0; m != 3; ++m)
            {
              v306.f32[m] = *&v147[m * 4 + 12] - *&v147[m * 4];
            }

            v157 = sqrtf((v306.f32[0] * v306.f32[0]) + (v306.f32[1] * v306.f32[1]));
            v159 = 1;
            while (1)
            {
              v160 = &v147[12 * v159];
              v162 = *v160;
              v161 = v160[1];
              v163 = 1;
              v164 = *v148;
              do
              {
                v165 = vabds_f32(v162, v164);
                if ((v163 & 1) == 0)
                {
                  break;
                }

                v163 = 0;
                v164 = v148[1];
                v162 = v161;
              }

              while (v165 < 1.0e-10);
              if (v165 >= 1.0e-10)
              {
                break;
              }

              ++v159;
              m += 3;
              if (v159 == v145)
              {
                v166 = 0.0;
                LODWORD(v142) = 1.0;
                goto LABEL_214;
              }
            }

            for (n = 0; n != 3; ++n)
            {
              v306.f32[n] = v148[m++] - v148[n];
            }

            v168 = 1.0 / sqrtf((v306.f32[0] * v306.f32[0]) + (v306.f32[1] * v306.f32[1]));
            *&v142 = v168 * v306.f32[0];
            v166 = v168 * v306.f32[1];
LABEL_214:
            v306 = *v280;
            for (ii = 2; ii != 5; ++ii)
            {
              v170 = *v148++;
              v306.i32[ii] = v170;
            }

            v171 = v142;
            *(&v171 + 1) = v166;
            v283 = v171;
            v310 = 0;
            *v309 = -v166;
            *&v309[4] = v142;
            v311 = 0;
            *&v308[4] = -v166;
            *&v308[8] = v142;
            *&v308[12] = v166;
            *&v308[16] = -*&v142;
            *&v309[8] = xmmword_1B33B0590;
            md::Ribbons::RibbonWriter<md::Ribbons::PatternedRibbonDescriptor>::writeVertex(&v304, &v306);
            v144 = v283;
            v152 = v288;
            v156 = 1;
            v145 = __src;
          }

          v268 = v138;
          if (v156 >= v149)
          {
            v215 = v144;
LABEL_250:
            v216 = &v147[12 * v149];
            v217 = &v147[12 * v145];
            v218 = *v216;
            v219 = *(v217 - 6);
            v220 = 1;
            do
            {
              v221 = vabds_f32(v218, v219);
              if ((v220 & 1) == 0)
              {
                break;
              }

              v220 = 0;
              v219 = *(v217 - 5);
              v218 = v216[1];
            }

            while (v221 < 1.0e-10);
            if (v221 >= 1.0e-10)
            {
              for (jj = 0; jj != 3; ++jj)
              {
                v305[0].f32[jj] = v217[jj - 3] - v217[jj - 6];
              }

              v215 = vmul_n_f32(v305[0], 1.0 / sqrtf(vaddv_f32(vmul_f32(v305[0], v305[0]))));
            }

            v290 = v152;
            if (*(v275 + 97) == 1)
            {
              v224 = *(v275 + 27);
              v223 = *(v275 + 28);
              v225 = v215.f32[0] + v224;
              v226 = v215.f32[1];
              v227 = v215.f32[1] + v223;
              v228 = (v225 * v225) + (v227 * v227);
              v230 = v215.f32[1];
              v292 = v215.f32[0];
              v229 = v215.f32[0];
              if (v228 > 0.0)
              {
                v231 = 1.0 / sqrtf(v228);
                v229 = -(v227 * v231);
                v230 = v231 * v225;
              }

              v285 = *(v275 + 28);
              v232 = atan2f(v223, v224);
              v233 = v232 - atan2f(v226, v292);
              v234 = v233;
              if (v233 <= 3.14159265)
              {
                v135 = v271;
                v145 = __src;
                if (v234 < -3.14159265)
                {
                  v233 = v234 + 6.28318531;
                }
              }

              else
              {
                v233 = v234 + -6.28318531;
                v135 = v271;
                v145 = __src;
              }

              v236 = fmaxf(ceilf(fabsf(v233) * *(v116 + 384)), 1.0);
              v237 = v229;
              v215.f32[0] = v230;
              if (v236 <= 1)
              {
                v238 = sqrtf(fmaxf(-((((v229 * v224) + (v230 * v285)) * ((v229 * v224) + (v230 * v285))) + -1.0), 0.1));
                v237 = v229 / v238;
                v215.f32[0] = v230 / v238;
              }

              *&v308[4] = v237;
              *&v308[8] = v215.i32[0];
              v235 = -v237;
            }

            else
            {
              v235 = v215.f32[1];
              v229 = -v215.f32[1];
              *&v308[4] = -v215.f32[1];
              *&v308[8] = v215.i32[0];
              v230 = v215.f32[0];
              v135 = v271;
            }

            v131 = v270;
            v136 = v266;
            *&v308[12] = v235;
            *&v308[16] = -v215.f32[0];
            HIBYTE(v311) = 0;
            v306 = v280[v145 - 1];
            for (kk = 2; kk != 5; ++kk)
            {
              v240 = *v216++;
              v306.i32[kk] = v240;
            }

            *v309 = v229;
            *&v309[4] = v230;
            *&v310 = v157;
            *(&v310 + 1) = v157 * v277;
            md::Ribbons::RibbonWriter<md::Ribbons::PatternedRibbonDescriptor>::writeVertex(&v304, &v306);
            v137 = v273;
            v241 = *(v275 + 1);
            v242 = *(v275 + 2) - v241;
            v139 = v290;
            v138 = v268;
            if (v242 >= 4)
            {
              v243 = v242 >> 1;
              if (v243 <= 2)
              {
                v243 = 2;
              }

              v244 = v243 - 1;
              v245 = v244;
              v246 = *(v275 + 1);
              v247 = v273;
              do
              {
                *v247 = v246;
                v248 = v246 + 1;
                v247[1] = v246 + 1;
                v249 = v246 + 3;
                LODWORD(v246) = v246 + 2;
                v247[2] = v246;
                v247[3] = v248;
                v247[4] = v249;
                v247[5] = v246;
                v247 += 6;
                --v245;
              }

              while (v245);
              if (*(v275 + 6) != *(v275 + 5))
              {
                v250 = v268;
                do
                {
                  *v250 = v241;
                  v241 += 2;
                  v250[1] = v241;
                  v250 += 2;
                  --v244;
                }

                while (v244);
              }
            }

            goto LABEL_278;
          }

          v172 = &v147[12 * v156];
          v173 = (v172 + 12);
          while (2)
          {
            v174 = 0;
            v306 = v280[v156];
            v175 = &v147[12 * v156];
            v301 = *v175;
            v302 = *(v175 + 2);
            ++v156;
            do
            {
              v305[0].f32[v174] = v173[v174] - *(&v301 + v174 * 4);
              ++v174;
            }

            while (v174 != 3);
            v176 = v305[0];
            if (v156 >= v145)
            {
LABEL_228:
              v143 = v144;
              v185 = *(&v144 + 1);
              v186 = *(&v144 + 1);
              v187 = *&v144;
            }

            else
            {
              v177 = v173;
              v178 = v156;
              while (1)
              {
                v179 = &v147[12 * v178];
                v181 = *v179;
                v180 = v179[1];
                v182 = 1;
                v183 = *&v301;
                do
                {
                  v184 = vabds_f32(v181, v183);
                  if ((v182 & 1) == 0)
                  {
                    break;
                  }

                  v182 = 0;
                  v183 = *(&v301 + 1);
                  v181 = v180;
                }

                while (v184 < 1.0e-10);
                if (v184 >= 1.0e-10)
                {
                  break;
                }

                ++v178;
                v177 += 3;
                if (v178 >= v145)
                {
                  goto LABEL_228;
                }
              }

              for (mm = 0; mm != 3; ++mm)
              {
                v189 = *v177++;
                v305[0].f32[mm] = v189 - *(&v301 + mm * 4);
              }

              v190 = 1.0 / sqrtf((v305[0].f32[0] * v305[0].f32[0]) + (v305[0].f32[1] * v305[0].f32[1]));
              v187 = v190 * v305[0].f32[0];
              v186 = v190 * v305[0].f32[1];
              v185 = *(&v144 + 1);
              *&v143 = v190 * v305[0].f32[0];
            }

            v191 = v187 + *&v144;
            v192 = v186 + v185;
            v193 = (v191 * v191) + (v192 * v192);
            if (v193 <= 0.0)
            {
              v196 = *(&v144 + 1);
              v197 = v144;
              v185 = *(&v144 + 1);
              LODWORD(v195) = v144;
            }

            else
            {
              v194 = 1.0 / sqrtf(v193);
              v195 = -(v192 * v194);
              v196 = v194 * v191;
              v197 = __PAIR64__(LODWORD(v196), LODWORD(v195));
            }

            v282 = v196;
            v284 = *&v144;
            v198 = sqrtf((v176.f32[0] * v176.f32[0]) + (v176.f32[1] * v176.f32[1]));
            *(&v143 + 1) = v186;
            v289 = v143;
            v291 = v197;
            v199 = sqrtf(fmaxf(-((((v187 * v195) + (v186 * v196)) * ((v187 * v195) + (v186 * v196))) + -1.0), 0.1));
            v200 = v195 / v199;
            v201 = v172;
            for (nn = 2; nn != 5; ++nn)
            {
              v203 = *v201++;
              v306.i32[nn] = v203;
            }

            *&v310 = v157;
            *(&v310 + 1) = v157 * v277;
            *&v309[8] = xmmword_1B33B0590;
            *v309 = v195;
            HIBYTE(v311) = 1;
            v204 = atan2f(v186, v187);
            v205 = v204 - atan2f(v185, v284);
            v206 = v205;
            if (v205 > 3.14159265)
            {
              v207 = -6.28318531;
              goto LABEL_241;
            }

            if (v206 < -3.14159265)
            {
              v207 = 6.28318531;
LABEL_241:
              v205 = v206 + v207;
            }

            v208 = v149;
            v209 = fmaxf(ceilf(fabsf(v205) * *(v116 + 384)), 1.0);
            if (v209 < 2)
            {
              *&v309[4] = v282;
              *&v308[4] = v200;
              *&v308[8] = v282 / v199;
              *&v308[12] = -v200;
              *&v308[16] = -(v282 / v199);
              md::Ribbons::RibbonWriter<md::Ribbons::PatternedRibbonDescriptor>::writeVertex(&v304, &v306);
            }

            else
            {
              for (i1 = 0; i1 != v209; ++i1)
              {
                v211 = __sincosf_stret(((i1 * (1.0 / (v209 + -1.0))) + -0.5) * v205);
                v212 = vrev64_s32(vmul_n_f32(v291, v211.__sinval));
                v213 = vmul_n_f32(v291, v211.__cosval);
                v214.i32[0] = vsub_f32(v213, v212).u32[0];
                v214.i32[1] = vadd_f32(v213, v212).i32[1];
                *v309 = v214;
                *&v308[4] = v214;
                *&v308[12] = vneg_f32(v214);
                md::Ribbons::RibbonWriter<md::Ribbons::PatternedRibbonDescriptor>::writeVertex(&v304, &v306);
                HIBYTE(v311) = 0;
              }
            }

            v173 += 3;
            v157 = v198 + v157;
            v172 += 12;
            v152 = v289;
            v215 = v289;
            *&v144 = v289;
            v149 = v208;
            v116 = &xmmword_1B33B2000;
            v145 = __src;
            if (v156 == v208)
            {
              goto LABEL_250;
            }

            continue;
          }
        }

LABEL_281:
        v251 = v261;
        if (v135)
        {
          v252 = v261[8];
          v253 = v135;
          if (v252 != v135)
          {
            do
            {
              std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>::reset[abi:nn200100](--v252);
            }

            while (v252 != v135);
            v251 = v261;
            v253 = *v263;
          }

          v251[8] = v135;
          v254 = mdm::zone_mallocator::instance(v132);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>>(v254, v253);
          *v263 = 0;
          v263[1] = 0;
          v263[2] = 0;
        }

        *v263 = 0;
        v263[1] = 0;
        v263[2] = 0;
        v307 = 0;
        *v308 = 0;
        v306 = 0;
        v305[0] = &v306;
        std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v305);
        if (v293.__begin_)
        {
          operator delete(v293.__begin_);
        }

        if (v294)
        {
          operator delete(v294);
        }

        ggl::BufferMemory::~BufferMemory(&v297);
        ggl::BufferMemory::~BufferMemory(&__p);
        v122 = v258;
        v121 = v259 + 1;
      }

      v119 = v257 + 1;
    }

    while (v257 + 1 != v256);
  }

  return a1;
}

void md::PatternedLayer::~PatternedLayer(md::PatternedLayer *this)
{
  *this = &unk_1F2A3B108;
  v2 = *(this + 23);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::~RibbonLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3B108;
  v2 = *(this + 23);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::~RibbonLayer(this);
}

void *md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A3B128;
  v2 = a1[1];
  v3 = a1[2];
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  v4 = a1[4];
  v5 = a1[5];
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  v6 = a1[14];
  a1[14] = 0;
  if (v6)
  {
    std::default_delete<gdc::GlobeTileGrid>::operator()[abi:nn200100](v6);
  }

  v7 = a1[4];
  if (v7)
  {
    a1[5] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

void md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::~RibbonLayer(void *a1)
{
  md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A3B108;
  v2 = a1[23];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[21];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A3B108;
  v2 = a1[23];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[21];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::~RibbonLayer(a1);
}

void std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>::reset[abi:nn200100](uint64_t (****a1)(void))
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = (**v1)(v1);
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::PatternedRibbon>(v3, v1);
  }
}

void non-virtual thunk toggl::VertexDataTyped<ggl::PatternedRibbon::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::PatternedRibbon::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::PatternedRibbon::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3B148;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

mdm::zone_mallocator *std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, uint64_t *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = v9 >> 3;
    v11 = (v9 >> 3) + 1;
    if (v11 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = v4 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    v22[4] = result + 24;
    if (v13)
    {
      v14 = mdm::zone_mallocator::instance(result);
      v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>>(v14, v13);
      v8 = *v3;
      v9 = *(v3 + 1) - *v3;
    }

    else
    {
      v15 = 0;
    }

    v16 = &v15[8 * v10];
    v17 = &v15[8 * v13];
    v18 = *a2;
    *a2 = 0;
    v19 = &v16[-8 * (v9 >> 3)];
    *v16 = v18;
    v7 = v16 + 8;
    memcpy(v19, v8, v9);
    v20 = *v3;
    *v3 = v19;
    *(v3 + 1) = v7;
    v21 = *(v3 + 2);
    *(v3 + 2) = v17;
    v22[2] = v20;
    v22[3] = v21;
    v22[0] = v20;
    v22[1] = v20;
    result = std::__split_buffer<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(v22);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  *(v3 + 1) = v7;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::batch(std::unordered_map<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
  while (2)
  {
    v117 = a2;
    v119 = a2 - 1;
    v114 = a2 - 3;
    v115 = a2 - 2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v6;
          v8 = a2 - v6;
          if (v8 > 2)
          {
            switch(v8)
            {
              case 3:

                return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v119);
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v6 + 2, v119);
              case 5:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, v6 + 1, v6 + 2, v6 + 3, v119);
            }
          }

          else
          {
            if (v8 < 2)
            {
              return result;
            }

            if (v8 == 2)
            {
              v41 = *v119;
              v42 = ggl::CullingGrid::sortOrderForCells(*(*v119 + 96));
              v43 = *v6;
              result = ggl::CullingGrid::sortOrderForCells(*(*v6 + 96));
              if (v42 < result)
              {
                *v6 = v41;
                *v119 = v43;
              }

              return result;
            }
          }

          if (v8 <= 23)
          {
            v44 = v6 + 1;
            v46 = v6 == a2 || v44 == a2;
            if (a4)
            {
              if (!v46)
              {
                v47 = 0;
                v48 = v6;
                do
                {
                  v49 = v44;
                  v50 = v48[1];
                  v51 = ggl::CullingGrid::sortOrderForCells(*(v50 + 96));
                  result = ggl::CullingGrid::sortOrderForCells(*(*v48 + 96));
                  if (v51 < result)
                  {
                    *v49 = 0;
                    v124 = v50;
                    v52 = *v48;
                    v53 = v47;
                    while (1)
                    {
                      *(v7 + v53) = 0;
                      std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100]((v7 + v53 + 8), v52);
                      v54 = v124;
                      if (!v53)
                      {
                        break;
                      }

                      v55 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
                      v52 = *(v7 + v53 - 8);
                      v53 -= 8;
                      if (v55 >= ggl::CullingGrid::sortOrderForCells(*(v52 + 96)))
                      {
                        v56 = (v7 + v53 + 8);
                        goto LABEL_84;
                      }
                    }

                    v56 = v7;
LABEL_84:
                    v124 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](v56, v54);
                    result = std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                    a2 = v117;
                  }

                  v44 = v49 + 1;
                  v47 += 8;
                  v48 = v49;
                }

                while (v49 + 1 != a2);
              }
            }

            else if (!v46)
            {
              do
              {
                v106 = v44;
                v107 = v7[1];
                v108 = ggl::CullingGrid::sortOrderForCells(*(v107 + 96));
                result = ggl::CullingGrid::sortOrderForCells(*(*v7 + 96));
                if (v108 < result)
                {
                  *v106 = 0;
                  v124 = v107;
                  v109 = *v7;
                  v110 = v106;
                  v111 = v106;
                  do
                  {
                    *--v111 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](v110, v109);
                    v112 = v124;
                    v113 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
                    v109 = *(v110 - 2);
                    v110 = v111;
                  }

                  while (v113 < ggl::CullingGrid::sortOrderForCells(*(v109 + 96)));
                  v124 = 0;
                  std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](v111, v112);
                  result = std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                }

                v44 = v106 + 1;
                v7 = v106;
              }

              while (v106 + 1 != a2);
            }

            return result;
          }

          v122 = v6;
          if (!a3)
          {
            if (v6 != a2)
            {
              v57 = (v8 - 2) >> 1;
              v120 = v57;
              do
              {
                v58 = v57;
                if (v120 >= v57)
                {
                  v59 = (2 * v57) | 1;
                  v60 = &v122[v59];
                  if (2 * v57 + 2 >= v8)
                  {
                    v65 = *v60;
                  }

                  else
                  {
                    v61 = *v60;
                    v62 = ggl::CullingGrid::sortOrderForCells(*(*v60 + 96));
                    v63 = v60[1];
                    v64 = ggl::CullingGrid::sortOrderForCells(*(v63 + 96));
                    if (v62 >= v64)
                    {
                      v65 = v61;
                    }

                    else
                    {
                      v65 = v63;
                    }

                    if (v62 < v64)
                    {
                      ++v60;
                      v59 = 2 * v58 + 2;
                    }
                  }

                  v66 = &v122[v58];
                  v67 = ggl::CullingGrid::sortOrderForCells(*(v65 + 96));
                  v68 = *v66;
                  result = ggl::CullingGrid::sortOrderForCells(*(*v66 + 96));
                  if (v67 >= result)
                  {
                    *v66 = 0;
                    v124 = v68;
                    v69 = *v60;
                    while (1)
                    {
                      v70 = v60;
                      *v60 = 0;
                      std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](v66, v69);
                      if (v120 < v59)
                      {
                        break;
                      }

                      v71 = (2 * v59) | 1;
                      v60 = &v122[v71];
                      v72 = 2 * v59 + 2;
                      if (v72 >= v8)
                      {
                        v69 = *v60;
                        v59 = (2 * v59) | 1;
                      }

                      else
                      {
                        v73 = *v60;
                        v74 = ggl::CullingGrid::sortOrderForCells(*(*v60 + 96));
                        v75 = v60[1];
                        v76 = ggl::CullingGrid::sortOrderForCells(*(v75 + 96));
                        v77 = v74 >= v76;
                        if (v74 >= v76)
                        {
                          v69 = v73;
                        }

                        else
                        {
                          v69 = v75;
                        }

                        if (v77)
                        {
                          v59 = v71;
                        }

                        else
                        {
                          ++v60;
                          v59 = v72;
                        }
                      }

                      v78 = ggl::CullingGrid::sortOrderForCells(*(v69 + 96));
                      v79 = v124;
                      v66 = v70;
                      if (v78 < ggl::CullingGrid::sortOrderForCells(*(v124 + 96)))
                      {
                        goto LABEL_112;
                      }
                    }

                    v79 = v124;
LABEL_112:
                    a2 = v117;
                    v124 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](v70, v79);
                    result = std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                  }
                }

                v57 = v58 - 1;
              }

              while (v58);
              v80 = v122;
              do
              {
                if (v8 >= 2)
                {
                  v81 = 0;
                  v82 = *v80;
                  *v80 = 0;
                  v118 = a2;
                  v121 = v82;
                  v123 = v82;
                  v83 = v80;
                  do
                  {
                    v84 = &v83[v81];
                    v85 = v84 + 1;
                    v86 = (2 * v81) | 1;
                    v81 = 2 * v81 + 2;
                    if (v81 >= v8)
                    {
                      v93 = *v85;
                      v81 = v86;
                    }

                    else
                    {
                      v87 = v84[1];
                      v88 = ggl::CullingGrid::sortOrderForCells(*(v87 + 96));
                      v91 = v84[2];
                      v90 = v84 + 2;
                      v89 = v91;
                      v92 = ggl::CullingGrid::sortOrderForCells(*(v91 + 96));
                      if (v88 >= v92)
                      {
                        v93 = v87;
                      }

                      else
                      {
                        v93 = v89;
                      }

                      if (v88 >= v92)
                      {
                        v81 = v86;
                      }

                      else
                      {
                        v85 = v90;
                      }
                    }

                    *v85 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](v83, v93);
                    v83 = v85;
                  }

                  while (v81 <= ((v8 - 2) >> 1));
                  a2 = v118;
                  v94 = v118 - 1;
                  if (v85 == v118 - 1)
                  {
                    v123 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](v85, v121);
                    v80 = v122;
                  }

                  else
                  {
                    v95 = *v94;
                    *v94 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](v85, v95);
                    v123 = 0;
                    std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](v94, v121);
                    v80 = v122;
                    v96 = (v85 - v122 + 8) >> 3;
                    v97 = v96 < 2;
                    v98 = v96 - 2;
                    if (!v97)
                    {
                      v99 = v98 >> 1;
                      v100 = &v122[v98 >> 1];
                      v101 = ggl::CullingGrid::sortOrderForCells(*(*v100 + 96));
                      v102 = *v85;
                      if (v101 < ggl::CullingGrid::sortOrderForCells(*(*v85 + 96)))
                      {
                        *v85 = 0;
                        v103 = *v100;
                        do
                        {
                          v104 = v100;
                          *v100 = 0;
                          std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](v85, v103);
                          if (!v99)
                          {
                            break;
                          }

                          v99 = (v99 - 1) >> 1;
                          v100 = &v122[v99];
                          v103 = *v100;
                          v105 = ggl::CullingGrid::sortOrderForCells(*(*v100 + 96));
                          v85 = v104;
                        }

                        while (v105 < ggl::CullingGrid::sortOrderForCells(*(v102 + 96)));
                        v124 = 0;
                        std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](v104, v102);
                        std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
                        a2 = v118;
                      }
                    }
                  }

                  result = std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](&v123, 0);
                }

                --a2;
                v97 = v8-- > 2;
              }

              while (v97);
            }

            return result;
          }

          v9 = v8 >> 1;
          v10 = &v6[v8 >> 1];
          if (v8 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(&v6[v8 >> 1], v6, v119);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6, &v6[v8 >> 1], v119);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6 + 1, v10 - 1, v115);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v6 + 2, &v6[v9 + 1], v114);
            v7 = v6;
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(v10 - 1, &v6[v8 >> 1], &v6[v9 + 1]);
            v11 = *v6;
            *v6 = *v10;
            *v10 = v11;
          }

          --a3;
          v12 = *v7;
          if (a4)
          {
            break;
          }

          v14 = ggl::CullingGrid::sortOrderForCells(*(*(v7 - 1) + 96));
          v13 = ggl::CullingGrid::sortOrderForCells(*(v12 + 96));
          v77 = v14 >= v13;
          v7 = v6;
          if (!v77)
          {
            goto LABEL_18;
          }

          *v6 = 0;
          v124 = v12;
          if (v13 >= ggl::CullingGrid::sortOrderForCells(*(*v119 + 96)))
          {
            v31 = v6 + 1;
            do
            {
              v6 = v31;
              if (v31 >= a2)
              {
                break;
              }

              ++v31;
            }

            while (v13 >= ggl::CullingGrid::sortOrderForCells(*(*v6 + 96)));
          }

          else
          {
            do
            {
              v30 = v6[1];
              ++v6;
            }

            while (v13 >= ggl::CullingGrid::sortOrderForCells(*(v30 + 96)));
          }

          v32 = a2;
          if (v6 < a2)
          {
            v32 = a2;
            do
            {
              v33 = *--v32;
            }

            while (v13 < ggl::CullingGrid::sortOrderForCells(*(v33 + 96)));
          }

          if (v6 < v32)
          {
            v34 = *v6;
            v35 = *v32;
            do
            {
              *v6 = v35;
              *v32 = v34;
              v12 = v124;
              v36 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
              do
              {
                v37 = v6[1];
                ++v6;
                v34 = v37;
              }

              while (v36 >= ggl::CullingGrid::sortOrderForCells(*(v37 + 96)));
              do
              {
                v38 = *--v32;
                v35 = v38;
              }

              while (v36 < ggl::CullingGrid::sortOrderForCells(*(v38 + 96)));
            }

            while (v6 < v32);
          }

          v39 = v6 - 1;
          if (v6 - 1 != v122)
          {
            v40 = *v39;
            *v39 = 0;
            std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](v122, v40);
            v12 = v124;
          }

          v124 = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](v6 - 1, v12);
          result = std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
          a4 = 0;
        }

        v13 = ggl::CullingGrid::sortOrderForCells(*(v12 + 96));
LABEL_18:
        *v7 = 0;
        v124 = v12;
        v15 = v7;
        do
        {
          v16 = v15;
          v18 = v15[1];
          ++v15;
          v17 = v18;
        }

        while (ggl::CullingGrid::sortOrderForCells(*(v18 + 96)) < v13);
        v19 = a2;
        if (v16 == v122)
        {
          v19 = a2;
          do
          {
            if (v15 >= v19)
            {
              break;
            }

            v21 = *--v19;
          }

          while (ggl::CullingGrid::sortOrderForCells(*(v21 + 96)) >= v13);
        }

        else
        {
          do
          {
            v20 = *--v19;
          }

          while (ggl::CullingGrid::sortOrderForCells(*(v20 + 96)) >= v13);
        }

        if (v15 < v19)
        {
          v22 = *v19;
          v23 = v15;
          v24 = v19;
          do
          {
            *v23 = v22;
            *v24 = v17;
            v12 = v124;
            v25 = ggl::CullingGrid::sortOrderForCells(*(v124 + 96));
            do
            {
              v16 = v23;
              v26 = v23[1];
              ++v23;
              v17 = v26;
            }

            while (ggl::CullingGrid::sortOrderForCells(*(v26 + 96)) < v25);
            do
            {
              v27 = *--v24;
              v22 = v27;
            }

            while (ggl::CullingGrid::sortOrderForCells(*(v27 + 96)) >= v25);
          }

          while (v23 < v24);
        }

        if (v16 != v122)
        {
          v28 = *v16;
          *v16 = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](v122, v28);
          v12 = v124;
        }

        v124 = 0;
        std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](v16, v12);
        std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](&v124, 0);
        a2 = v117;
        if (v15 >= v19)
        {
          break;
        }

LABEL_37:
        result = std::__introsort<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::batch(std::unordered_map<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,false>(v122, v16, a3, a4 & 1);
        a4 = 0;
        v6 = v16 + 1;
      }

      v29 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::batch(std::unordered_map<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(v122, v16);
      v6 = v16 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::batch(std::unordered_map<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(v16 + 1, v117);
      if (result)
      {
        break;
      }

      if ((v29 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    a2 = v16;
    v6 = v122;
    if ((v29 & 1) == 0)
    {
      continue;
    }

    return result;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(char *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v5 = (v1 + 24);
      std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

uint64_t std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::batch(std::unordered_map<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = ggl::CullingGrid::sortOrderForCells(*(v5 + 96));
      v7 = *a1;
      if (v6 < ggl::CullingGrid::sortOrderForCells(*(*a1 + 96)))
      {
        *a1 = v5;
        *(a2 - 1) = v7;
      }

      return 1;
    }
  }

  v8 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2);
  v9 = a1 + 3;
  if (a1 + 3 != a2)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *v9;
      v13 = ggl::CullingGrid::sortOrderForCells(*(*v9 + 96));
      if (v13 < ggl::CullingGrid::sortOrderForCells(*(*v8 + 96)))
      {
        *v9 = 0;
        v21 = v12;
        v14 = *v8;
        v15 = v10;
        while (1)
        {
          *(a1 + v15 + 16) = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100]((a1 + v15 + 24), v14);
          v16 = v21;
          if (v15 == -16)
          {
            break;
          }

          v17 = ggl::CullingGrid::sortOrderForCells(*(v21 + 96));
          v14 = *(a1 + v15 + 8);
          v15 -= 8;
          if (v17 >= ggl::CullingGrid::sortOrderForCells(*(v14 + 96)))
          {
            v18 = (a1 + v15 + 24);
            goto LABEL_19;
          }
        }

        v18 = a1;
LABEL_19:
        v21 = 0;
        std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](v18, v16);
        if (++v11 == 8)
        {
          v19 = v9 + 1 == a2;
          std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
          return v19;
        }

        std::unique_ptr<md::RibbonSection<md::Ribbons::PatternedRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
      }

      v8 = v9;
      v10 += 8;
      ++v9;
    }

    while (v9 != a2);
  }

  return 1;
}

void *md::PatternedLayer::PatternedLayer(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, int a7)
{
  v8[0] = 0;
  v12 = 0;
  if (*(a6 + 32) == 1)
  {
    v9 = *(a6 + 4);
    *v8 = *a6;
    v10 = *(a6 + 16);
    v11 = *(a6 + 24);
    v12 = 1;
  }

  result = md::RibbonLayer<md::Ribbons::PatternedRibbonDescriptor>::RibbonLayer(a1, a2, *(a3 + 16), a4, a5, v8, a7);
  *result = &unk_1F2A3B038;
  result[25] = 0;
  return result;
}

void md::PolygonRound::smoothTwoSegments(void *a1, float *a2, float *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (*a2 == 0.0)
  {
    goto LABEL_13;
  }

  v6 = a3[2];
  v7 = a3[3];
  v8 = v6 - *a3;
  v9 = v7 - a3[1];
  v10 = a3[4] - v6;
  v11 = a3[5] - v7;
  v12 = atan2f(v11, v10);
  v50 = v8;
  v13 = v12 - atan2f(v9, v8);
  if (v13 <= 3.1416)
  {
    if (v13 >= -3.1416)
    {
      goto LABEL_7;
    }

    v14 = v13;
    v15 = 6.28318531;
  }

  else
  {
    v14 = v13;
    v15 = -6.28318531;
  }

  v13 = v14 + v15;
LABEL_7:
  v16 = fabsf(v13);
  if (v16 < a2[2] || v16 > a2[3] || ((v17 = v4 / tanf((v16 * -0.5) + 1.5708), v18 = sqrtf((v50 * v50) + (v9 * v9)), v19 = a2[4], v20 = v19 * sqrtf((v10 * v10) + (v11 * v11)), v17 <= (v19 * v18)) ? (v21 = v17 <= v20) : (v21 = 0), !v21))
  {
LABEL_13:
    v52 = a1;
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
  }

  v22 = vcvtas_u32_f32(v16 / a2[1]);
  if (v22 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  v24 = 1.0 / v18;
  v25 = v24 * v50;
  v48 = v24 * v50;
  v26 = v24 * v9;
  v49 = v24 * v9;
  v27 = -(v24 * v9);
  v28 = -(v24 * v50);
  if (v13 <= 0.0)
  {
    v29 = v26;
  }

  else
  {
    v29 = v27;
  }

  if (v13 <= 0.0)
  {
    v30 = v28;
  }

  else
  {
    v30 = v25;
  }

  v31 = v17;
  std::vector<gm::Matrix<float,2,1>>::reserve(a1, v23 + 1);
  v32 = 0;
  v33 = -(v29 * *a2);
  v34 = v30;
  v35 = -(v30 * *a2);
  v36 = v6 - ((v31 * v48) - (v29 * v4));
  v37 = v7 - ((v31 * v49) - (v34 * v4));
  v38 = a1[1];
  do
  {
    v39 = __sincosf_stret((v13 * v32) * (1.0 / v23));
    v40 = v36 - ((v39.__sinval * v35) - (v39.__cosval * v33));
    v41 = (v37 + (v39.__sinval * v33)) + (v39.__cosval * v35);
    v42 = a1[2];
    if (v38 >= v42)
    {
      v43 = (v38 - *a1) >> 3;
      if ((v43 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v44 = v42 - *a1;
      v45 = v44 >> 2;
      if (v44 >> 2 <= (v43 + 1))
      {
        v45 = v43 + 1;
      }

      if (v44 >= 0x7FFFFFFFFFFFFFF8)
      {
        v46 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v46 = v45;
      }

      v52 = a1;
      if (v46)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v46);
      }

      v47 = (8 * v43);
      __p[0] = 0;
      __p[1] = v47;
      *v47 = v40;
      v47[1] = v41;
      __p[2] = (8 * v43 + 8);
      __p[3] = 0;
      std::vector<gm::Matrix<float,2,1>>::__swap_out_circular_buffer(a1, __p);
      v38 = a1[1];
      if (__p[0])
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *v38 = v40;
      v38[1] = v41;
      v38 += 2;
    }

    a1[1] = v38;
    ++v32;
  }

  while (v23 + 1 != v32);
}

void *std::vector<GEOPDCameraPathFrame>::reserve(void *result, unint64_t a2)
{
  if (0x2E8BA2E8BA2E8BA3 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x2E8BA2E8BA2E8BBLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<GEOPDCameraPathFrame>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void std::vector<GEOPDCameraPathFrame>::push_back[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v10 = 0x2E8BA2E8BA2E8BA3 * ((v3 - *a1) >> 3);
    v11 = v10 + 1;
    if ((v10 + 1) > 0x2E8BA2E8BA2E8BALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *a1) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x1745D1745D1745DLL)
    {
      v13 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<GEOPDCameraPathFrame>>(v13);
    }

    v14 = 88 * v10;
    v15 = *(a2 + 16);
    *v14 = *a2;
    *(v14 + 16) = v15;
    v16 = *(a2 + 32);
    v17 = *(a2 + 48);
    v18 = *(a2 + 64);
    *(v14 + 80) = *(a2 + 80);
    *(v14 + 48) = v17;
    *(v14 + 64) = v18;
    *(v14 + 32) = v16;
    v9 = 88 * v10 + 88;
    v19 = *(a1 + 8) - *a1;
    v20 = v14 - v19;
    memcpy((v14 - v19), *a1, v19);
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    v6 = *(a2 + 32);
    v7 = *(a2 + 48);
    v8 = *(a2 + 64);
    *(v3 + 80) = *(a2 + 80);
    *(v3 + 48) = v7;
    *(v3 + 64) = v8;
    *(v3 + 32) = v6;
    v9 = v3 + 88;
  }

  *(a1 + 8) = v9;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<GEOPDCameraPathFrame>>(unint64_t a1)
{
  if (a1 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *geo::_retain_ptr<CAMediaTimingFunction * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A3B180;
  a1[1] = v3;
  return a1;
}

void std::vector<md::AnimationData::LabelEntry>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = (v4 - *a1) >> 5;
    if ((v7 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v3 - *a1;
    v9 = v8 >> 4;
    if (v8 >> 4 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v23 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::AnimationData::LabelEntry>>(v10);
    }

    v12 = 32 * v7;
    v20 = 0;
    v21 = 32 * v7;
    v22 = (32 * v7);
    *(32 * v7) = *a2;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((32 * v7 + 8), *(a2 + 8), *(a2 + 16));
      v12 = v21;
      v14 = v22;
    }

    else
    {
      v13 = *(a2 + 8);
      *(32 * v7 + 0x18) = *(a2 + 24);
      *(32 * v7 + 8) = v13;
      v14 = 32 * v7;
    }

    *&v22 = v14 + 32;
    v15 = a1[1];
    v16 = v12 + *a1 - v15;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::AnimationData::LabelEntry>,md::AnimationData::LabelEntry*>(*a1, v15, v16);
    v17 = *a1;
    *a1 = v16;
    v18 = a1[2];
    v19 = v22;
    *(a1 + 1) = v22;
    *&v22 = v17;
    *(&v22 + 1) = v18;
    v20 = v17;
    v21 = v17;
    std::__split_buffer<md::AnimationData::LabelEntry>::~__split_buffer(&v20);
    v11 = v19;
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(v5, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v6 = *(a2 + 8);
      v4[3] = *(a2 + 24);
      *&v5->__r_.__value_.__l.__data_ = v6;
    }

    v11 = v4 + 4;
    a1[1] = (v4 + 4);
  }

  a1[1] = v11;
}

void sub_1B3195600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<md::AnimationData::LabelEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<md::AnimationData::LabelEntry>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 4;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<geo::_retain_ptr<CAMediaTimingFunction * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 24;
      v7 = v4 - 24;
      v8 = v4 - 24;
      do
      {
        v9 = *v8;
        v8 -= 24;
        (*v9)(v7);
        v6 -= 24;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::AnimationData::LabelEntry>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::AnimationData::LabelEntry>,md::AnimationData::LabelEntry*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      v6 = *(v5 + 8);
      *(a3 + 24) = *(v5 + 24);
      *(a3 + 8) = v6;
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      *(v5 + 8) = 0;
      v5 += 32;
      a3 += 32;
    }

    while (v5 != a2);
    do
    {
      if (*(v4 + 31) < 0)
      {
        operator delete(*(v4 + 8));
      }

      v4 += 32;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<md::AnimationData::LabelEntry>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geo::_retain_ptr<CAMediaTimingFunction * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::_retain_ptr<CAMediaTimingFunction * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(uint64_t result, uint64_t (***a2)(void), void *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = a3;
    v6 = result;
    v7 = a3;
    do
    {
      *v7 = &unk_1F2A3B180;
      v7 += 3;
      a3[1] = 0;
      objc_storeStrong(a3 + 1, *(v6 + 8));
      v8 = *(v6 + 8);
      *(v6 + 8) = 0;

      v6 += 24;
      v5 += 3;
      a3 = v7;
    }

    while (v6 != a2);
    v9 = v4;
    v10 = v4;
    do
    {
      v11 = *v10;
      v10 += 3;
      result = (*v11)(v4);
      v9 += 3;
      v4 = v10;
    }

    while (v10 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<geo::_retain_ptr<CAMediaTimingFunction * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 24);
    *(a1 + 16) = i - 24;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void geo::_retain_ptr<CAMediaTimingFunction * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3B180;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<CAMediaTimingFunction * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3B180;

  return a1;
}

void md::AnimationData::~AnimationData(md::AnimationData *this)
{
  v6 = (this + 120);
  std::vector<md::AnimationData::LabelEntry>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (this + 96);
  std::vector<geo::_retain_ptr<CAMediaTimingFunction * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
  }
}

uint64_t md::AnimationData::getKeyframeIndex(md::AnimationData *this, double a2, unsigned int *a3)
{
  v3 = a2 / *(this + 18);
  v4 = *a3;
  v5 = *(this + 9);
  if (v3 >= *(v5 + 8 * v4))
  {
    v7 = ((*(this + 10) - v5) >> 3) - 1;
    do
    {
      result = v4;
      if (v7 <= v4)
      {
        break;
      }

      v4 = (v4 + 1);
    }

    while (v3 > *(v5 + 8 * v4));
  }

  else if (v4)
  {
    while (v3 < *(v5 + 8 * v4))
    {
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    result = v4;
  }

  else
  {
LABEL_5:
    result = 0;
  }

  *a3 = result;
  return result;
}

void md::AnimationData::interpolateFrames(md::AnimationData *this, double a2, uint64_t a3, unsigned int a4)
{
  *this = vdupq_n_s64(0xC00921FB54442D18);
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 3);
  if (v6 > a4 + 1)
  {
    v7 = a4 + 1;
  }

  else
  {
    v7 = v6 - 1;
  }

  v8 = a4;
  if (v7 == a4)
  {
    LODWORD(a2) = 1.0;
  }

  else
  {
    a2 = (a2 / *(a3 + 144) - *(*(a3 + 72) + 8 * a4)) / (*(*(a3 + 72) + 8 * v7) - *(*(a3 + 72) + 8 * a4));
    *&a2 = a2;
  }

  [*(*(a3 + 96) + 24 * a4 + 8) _solveForInput:a2];
  v10 = v9;
  if (*(a3 + 152) == 1)
  {
    v11 = *(*(a3 + 72) + 8 * v8) + (*(*(a3 + 72) + 8 * v7) - *(*(a3 + 72) + 8 * v8)) * v10;
    md::interpolateSpline(a3, (a3 + 72), v11);
    v41[0] = v12;
    v41[1] = v13;
    v41[2] = v14;
    md::interpolateSpline((a3 + 48), (a3 + 72), v11);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    md::interpolateSpline((a3 + 24), (a3 + 72), v11);
    v22 = v21;
    geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(this, v41);
    *(this + 4) = v18;
    *(this + 5) = v16;
  }

  else
  {
    v23 = 3 * v8;
    v24 = (*a3 + 8 * v23);
    v25 = *v24;
    v26 = (*a3 + 24 * v7);
    v27 = fmod(3.14159265 - *v24 + *v26, 6.28318531);
    v28 = fmod(v27 + 6.28318531, 6.28318531);
    v29 = fmod(v25 + 3.14159265 + (v28 + -3.14159265) * v10, 6.28318531);
    *this = fmod(v29 + 6.28318531, 6.28318531) + -3.14159265;
    v30 = v24[1];
    v31 = fmod(3.14159265 - v30 + v26[1], 6.28318531);
    v32 = fmod(v31 + 6.28318531, 6.28318531);
    v33 = fmod(v30 + 3.14159265 + (v32 + -3.14159265) * v10, 6.28318531);
    *(this + 1) = fmod(v33 + 6.28318531, 6.28318531) + -3.14159265;
    *(this + 2) = v24[2] + (v26[2] - v24[2]) * v10;
    v22 = *(*(a3 + 24) + 8 * v23) + (*(*(a3 + 24) + 24 * v7) - *(*(a3 + 24) + 8 * v23)) * v10;
    v34 = *(a3 + 48);
    v35 = (v34 + 8 * v23);
    v36 = *v35;
    v37 = (v34 + 24 * v7);
    v38 = fmod(3.14159265 - *v35 + *v37, 6.28318531);
    v39 = fmod(v38 + 6.28318531, 6.28318531);
    v40 = fmod(v36 + 3.14159265 + (v39 + -3.14159265) * v10, 6.28318531);
    *(this + 5) = fmod(v40 + 6.28318531, 6.28318531) + -3.14159265;
    *(this + 4) = v35[1] + (v37[1] - v35[1]) * v10;
    v20 = v35[2] + (v37[2] - v35[2]) * v10;
  }

  *(this + 6) = v20;
  *(this + 3) = v22;
}

void *md::interpolateSpline(__int128 **a1, void **a2, double a3)
{
  v202 = *MEMORY[0x1E69E9840];
  v170 = &unk_1F2A3B1A0;
  *__p = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0;
  v182 = 0;
  v181 = 0uLL;
  v179 = 256;
  v180 = 1;
  std::vector<double>::reserve(__p, 3uLL);
  std::vector<gm::Matrix<double,3,1>>::reserve(&v172 + 1, 3uLL);
  if ((&v172 + 8) != a1)
  {
    std::vector<gm::Matrix<double,3,1>>::__assign_with_size[abi:nn200100]<gm::Matrix<double,3,1>*,gm::Matrix<double,3,1>*>(&v172 + 1, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  }

  v180 = 1;
  if (__p == a2)
  {
    v14 = __p[1];
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = v7 - *a2;
    v9 = v172;
    v10 = __p[0];
    if (v172 - __p[0] < v8)
    {
      v11 = v8 >> 3;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
        v9 = 0;
        __p[0] = 0;
        __p[1] = 0;
        *&v172 = 0;
      }

      if (!(v11 >> 61))
      {
        v12 = v9 >> 2;
        if (v9 >> 2 <= v11)
        {
          v12 = v8 >> 3;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (!(v13 >> 61))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v13);
        }
      }

LABEL_202:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v15 = __p[1];
    v16 = __p[1] - __p[0];
    if ((__p[1] - __p[0]) >= v8)
    {
      if (v7 != v6)
      {
        memmove(__p[0], v6, v8);
      }

      v14 = &v10[v8];
    }

    else
    {
      v17 = &v6[v16];
      if (__p[1] != __p[0])
      {
        memmove(__p[0], v6, v16);
        v15 = __p[1];
      }

      if (v7 != v17)
      {
        memmove(v15, v17, v7 - v17);
      }

      v14 = &v15[v7 - v17];
    }

    __p[1] = v14;
  }

  v180 = 0;
  v18 = __p[0];
  v19 = *(&v172 + 1);
  v20 = v14 - __p[0];
  v21 = 0xAAAAAAAAAAAAAAABLL * ((v173 - *(&v172 + 1)) >> 3);
  if ((v20 >> 3) >= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = (v20 >> 3);
  }

  if (v22 < 2)
  {
    goto LABEL_165;
  }

  v197 = 0uLL;
  v198 = 0;
  v195 = 0uLL;
  v23 = (v22 - 1);
  v196 = 0;
  std::vector<gm::Matrix<double,3,1>>::reserve(&v197, v23);
  std::vector<double>::reserve(&v195, v23);
  v24 = 0;
  for (i = 1; i != v22; ++i)
  {
    v26 = 0;
    v27 = *(&v172 + 1) + v24;
    do
    {
      *(&v199 + v26) = *(v27 + v26 + 24) - *(v27 + v26);
      v26 += 8;
    }

    while (v26 != 24);
    v193 = v199;
    v194 = v200;
    std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](&v197, &v193);
    v28 = 0;
    v29 = 0.0;
    do
    {
      v29 = v29 + *(&v193 + v28) * *(&v193 + v28);
      v28 += 8;
    }

    while (v28 != 24);
    v30 = *(&v195 + 1);
    v31 = sqrt(v29);
    if (*(&v195 + 1) >= v196)
    {
      v33 = v195;
      v34 = *(&v195 + 1) - v195;
      v35 = (*(&v195 + 1) - v195) >> 3;
      v36 = v35 + 1;
      if ((v35 + 1) >> 61)
      {
        goto LABEL_202;
      }

      v37 = v196 - v195;
      if ((v196 - v195) >> 2 > v36)
      {
        v36 = v37 >> 2;
      }

      if (v37 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v36;
      }

      if (v38)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v38);
      }

      *(8 * v35) = v31;
      v32 = 8 * v35 + 8;
      memcpy(0, v33, v34);
      v39 = v195;
      *&v195 = 0;
      *(&v195 + 1) = v32;
      v196 = 0;
      if (v39)
      {
        operator delete(v39);
      }
    }

    else
    {
      **(&v195 + 1) = v31;
      v32 = v30 + 8;
    }

    *(&v195 + 1) = v32;
    v24 += 24;
  }

  v40 = 0.0;
  v169 = HIBYTE(v179);
  if (HIBYTE(v179) == 1)
  {
    v41 = v195;
    v42 = v22 - 1;
    v43 = 0.0;
    do
    {
      v44 = *v41++;
      v43 = v44 + v43;
      --v42;
    }

    while (v42);
    v40 = v43 / v23;
  }

  std::vector<gm::Matrix<double,3,1>>::resize(&v177, v22);
  std::vector<gm::Matrix<double,3,1>>::resize(&v175 + 1, v22);
  v45 = v179;
  v193 = 0uLL;
  v194 = 0;
  std::vector<gm::Matrix<double,3,1>>::reserve(&v193, v22);
  v46 = &qword_1B33AF000;
  if (*(&v174 + 1) - v174 == v173 - *(&v172 + 1))
  {
    if (v169)
    {
      v47 = 0;
      for (j = 0; j != v22; ++j)
      {
        v49 = 0;
        v50 = 0.0;
        do
        {
          v50 = v50 + *(v174 + v47 + v49) * *(v174 + v47 + v49);
          v49 += 8;
        }

        while (v49 != 24);
        v51 = 0;
        v52 = sqrt(v50);
        v53 = v52;
        if (v53 <= 1.0e-20)
        {
          v54 = 1.0;
        }

        else
        {
          v54 = 1.0 / v53;
        }

        v55 = v54 * v40;
        v56 = v174 + v47;
        do
        {
          *(&v199 + v51) = v55 * *(v56 + v51);
          v51 += 8;
        }

        while (v51 != 24);
        v191 = v199;
        v192 = v200;
        std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](&v193, &v191);
        v47 += 24;
      }
    }

    else
    {
      v112 = 0;
      v113 = v22;
      do
      {
        std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](&v193, (v174 + v112));
        v112 += 24;
        --v113;
      }

      while (v113);
    }

    v67 = 1;
    v111 = v22 - 2;
    goto LABEL_137;
  }

  v191 = 0uLL;
  v192 = 0;
  if (*(&v174 + 1) - v174 == 48)
  {
    std::vector<gm::Matrix<double,3,1>>::__assign_with_size[abi:nn200100]<gm::Matrix<double,3,1>*,gm::Matrix<double,3,1>*>(&v191, v174, *(&v174 + 1), 2uLL);
  }

  v57 = 0;
  if (v22 != 2 && v45)
  {
    v58 = (*(&v172 + 1) + 24 * v23);
    v59 = *v58;
    v60 = v58[1];
    v61 = v58[2];
    v57 = **(&v172 + 1) == v59 && *(*(&v172 + 1) + 8) == v60 && *(*(&v172 + 1) + 16) == v61;
  }

  v64 = 0;
  v65 = 0;
  v66 = v191;
  v67 = v191 != *(&v191 + 1) || v57;
  v168 = (v191 + 24);
  v68 = v197;
  v69 = v197 - 24;
  do
  {
    if (v65 || v66 == *(&v66 + 1))
    {
      if (v65 != v23 || v66 == *(&v66 + 1))
      {
        if (v65)
        {
          if (v65 >= v23)
          {
            v109 = 0;
            v110 = *(&v172 + 1) + v64;
            do
            {
              *(&v199 + v109) = *(v110 + v109) - *(v110 + v109 - 24);
              v109 += 8;
            }

            while (v109 != 24);
          }

          else
          {
            v99 = 0;
            v100 = *(v195 + 8 * (v65 - 1));
            v101 = *(v195 + 8 * v65);
            v102 = 1.0 / (v101 + v100);
            if (fabs(v101 + v100) <= 1.0e-20)
            {
              v102 = 0.0;
            }

            v103 = v102 * v101;
            do
            {
              *(&v199 + v99) = v103 * *(v69 + v99);
              v99 += 8;
            }

            while (v99 != 24);
            v104 = 0;
            v187 = v199;
            v188 = v200;
            v105 = v102 * v100;
            do
            {
              *(&v199 + v104) = v105 * *(v68 + v104);
              v104 += 8;
            }

            while (v104 != 24);
            v106 = 0;
            v185 = v199;
            v186 = v200;
            do
            {
              *(&v199 + v106) = *(&v185 + v106) + *(&v187 + v106);
              v106 += 8;
            }

            while (v106 != 24);
          }
        }

        else
        {
          v107 = 0;
          v108 = *(&v172 + 1);
          do
          {
            *(&v199 + v107) = *(v108 + v107 + 24) - *(v108 + v107);
            v107 += 8;
          }

          while (v107 != 24);
        }
      }

      else
      {
        v70 = v168;
        if (!v169)
        {
LABEL_112:
          std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](&v193, v70);
          goto LABEL_130;
        }

        v85 = 0;
        v86 = *(&v172 + 1) + 24 * v23;
        v87 = *(&v172 + 1) + 24 * v22 - 48;
        do
        {
          *(&v199 + v85) = *(v86 + v85) - *(v87 + v85);
          v85 += 8;
        }

        while (v85 != 24);
        v88 = 0;
        v89 = 0.0;
        do
        {
          v89 = v89 + *(&v199 + v88) * *(&v199 + v88);
          v88 += 8;
        }

        while (v88 != 24);
        v90 = 0.0;
        v91 = sqrt(v89);
        do
        {
          v90 = v90 + *(v66 + v88) * *(v66 + v88);
          v88 += 8;
        }

        while (v88 != 48);
        v92 = 0;
        v93 = v91;
        v94 = v93;
        if (v94 <= 1.0e-20)
        {
          v94 = 1.0;
        }

        v95 = sqrt(v90);
        v96 = v95;
        if (v96 <= 1.0e-20)
        {
          v97 = 1.0;
        }

        else
        {
          v97 = 1.0 / v96;
        }

        v98 = v97 * v94;
        do
        {
          *(&v199 + v92) = v98 * *(v66 + v92 + 24);
          v92 += 8;
        }

        while (v92 != 24);
      }
    }

    else
    {
      v70 = v66;
      if (!v169)
      {
        goto LABEL_112;
      }

      v71 = 0;
      v72 = *(&v172 + 1);
      do
      {
        *(&v199 + v71) = *(v72 + v71) - *(v72 + v71 + 24);
        v71 += 8;
      }

      while (v71 != 24);
      v73 = 0;
      v74 = 0.0;
      do
      {
        v74 = v74 + *(&v199 + v73) * *(&v199 + v73);
        v73 += 8;
      }

      while (v73 != 24);
      v75 = 0;
      v76 = 0.0;
      v77 = sqrt(v74);
      do
      {
        v76 = v76 + *(v66 + v75) * *(v66 + v75);
        v75 += 8;
      }

      while (v75 != 24);
      v78 = 0;
      v79 = v77;
      v80 = v79;
      if (v80 <= 1.0e-20)
      {
        v80 = 1.0;
      }

      v81 = sqrt(v76);
      v82 = v81;
      if (v82 <= 1.0e-20)
      {
        v83 = 1.0;
      }

      else
      {
        v83 = 1.0 / v82;
      }

      v84 = v83 * v80;
      do
      {
        *(&v199 + v78) = v84 * *(v66 + v78);
        v78 += 8;
      }

      while (v78 != 24);
    }

    v189 = v199;
    v190 = v200;
    std::vector<gm::Matrix<double,3,1>>::push_back[abi:nn200100](&v193, &v189);
LABEL_130:
    ++v65;
    v64 += 24;
    v69 += 24;
    v68 += 24;
  }

  while (v65 != v22);
  if (v66)
  {
    operator delete(v66);
  }

  v111 = v22 - 2;
  v46 = &qword_1B33AF000;
LABEL_137:
  v114 = 0;
  v115 = v193;
  v116 = v177;
  v117 = *(&v175 + 1);
  v118 = __p[0];
  v119 = *(v46 + 281);
  v120 = v193;
  do
  {
    if (v114)
    {
      v121 = v114 == v23;
    }

    else
    {
      v121 = 1;
    }

    v122 = !v121;
    v123 = 0.0;
    if ((v122 | v67))
    {
      v124 = v114 - 1;
      if (v114)
      {
        v125 = 0.0;
      }

      else
      {
        v124 = v111;
        v125 = 1.0;
      }

      v126 = (v114 + 1);
      if (v114 >= v23)
      {
        v127 = 1.0;
      }

      else
      {
        v127 = 0.0;
      }

      if (v114 >= v23)
      {
        v126 = 1;
      }

      v128 = v118[v124];
      v129 = v125 + v127 + v118[v126] - v128;
      if (v129 > v119)
      {
        v123 = (v125 - v128 + v118[v114] + v125 - v128 + v118[v114]) / v129;
      }
    }

    v130 = 0;
    v131 = v116 + 24 * v114;
    v132 = v117 + 24 * v114;
    do
    {
      *(&v199 + v130) = *(v120 + v130) * v123;
      v130 += 8;
    }

    while (v130 != 24);
    v133 = 0;
    v134 = v200;
    *v132 = v199;
    *(v132 + 16) = v134;
    do
    {
      *(&v199 + v133) = *(v120 + v133) * v123;
      v133 += 8;
    }

    while (v133 != 24);
    v135 = v200;
    *v131 = v199;
    *(v131 + 16) = v135;
    ++v114;
    v120 += 24;
  }

  while (v114 != v22);
  operator delete(v115);
  if (v195)
  {
    *(&v195 + 1) = v195;
    operator delete(v195);
  }

  if (v197)
  {
    operator delete(v197);
  }

  v18 = __p[0];
  v19 = *(&v172 + 1);
  v20 = __p[1] - __p[0];
  v21 = 0xAAAAAAAAAAAAAAABLL * ((v173 - *(&v172 + 1)) >> 3);
LABEL_165:
  v136 = v20 >> 3;
  if (v136 >= v21)
  {
    v136 = v21;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v176 - *(&v175 + 1)) >> 3) == v136 && v136 && 0xAAAAAAAAAAAAAAABLL * ((*(&v177 + 1) - v177) >> 3) == v136)
  {
    v138 = 0;
    v139 = 24;
    while (1)
    {
      v140 = v18[v138];
      if (v140 > a3)
      {
        break;
      }

      ++v138;
      v139 -= 24;
      if (v136 == v138)
      {
        goto LABEL_179;
      }
    }

    if (v138)
    {
      if (v138 != v136)
      {
        v144 = (*(&v175 + 1) - v139);
        v145 = (v19 - v139);
        v146 = v18[v138 - 1];
        v147 = v140 - v146;
        v148 = 0.0;
        if (v147 != 0.0)
        {
          v148 = (a3 - v146) / v147;
        }

        v149 = 0;
        v150 = 3 * (v138 - 1);
        v151 = 3 * v138;
        *&v199 = v19 + 8 * v150;
        *(&v199 + 1) = v19 + 8 * v151;
        v200 = *(&v175 + 1) + 8 * v150;
        v201 = v177 + 8 * v151;
        *&v191 = v148 * v148;
        *&v193 = v148 * v148 * v148;
        do
        {
          v152 = *v144++;
          *(&v197 + v149) = v152 * v148;
          v149 += 8;
        }

        while (v149 != 24);
        v153 = 0;
        v195 = v197;
        v196 = v198;
        do
        {
          v154 = *v145++;
          *(&v197 + v153) = v154 + *(&v195 + v153);
          v153 += 8;
        }

        while (v153 != 24);
        v155 = 0;
        v156 = &v193;
        v157 = 1;
        v183 = v197;
        v184 = v198;
        do
        {
          v158 = 0;
          v159 = 0;
          v160 = v157;
          v195 = v181;
          v196 = v182;
          do
          {
            v161 = 0;
            v163 = *(&v199 + v158);
            do
            {
              *(&v197 + v161) = *(v163 + v161) * v162;
              v161 += 8;
            }

            while (v161 != 24);
            for (k = 0; k != 24; k += 8)
            {
              *(&v195 + k) = *(&v195 + k) + *(&v197 + k);
            }

            ++v158;
            v159 += 4;
          }

          while (v158 != 4);
          v165 = 0;
          v166 = *v156;
          do
          {
            *(&v197 + v165) = *(&v195 + v165) * v166;
            v165 += 8;
          }

          while (v165 != 24);
          for (m = 0; m != 24; m += 8)
          {
            *(&v183 + m) = *(&v183 + m) + *(&v197 + m);
          }

          v157 = 0;
          v156 = &v191;
          v155 = 1;
        }

        while ((v160 & 1) != 0);
      }

LABEL_179:
      v141 = v19 + 24 * v136;
      v183 = *(v141 - 24);
      v142 = *(v141 - 8);
    }

    else
    {
      v183 = *v19;
      v142 = *(v19 + 2);
    }

    v184 = v142;
  }
}

void sub_1B3196BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v51 = *(v49 - 256);
  if (v51)
  {
    operator delete(v51);
  }

  v52 = *(v49 - 224);
  if (v52)
  {
    *(v49 - 216) = v52;
    operator delete(v52);
  }

  v53 = *(v49 - 192);
  if (v53)
  {
    operator delete(v53);
  }

  _Unwind_Resume(a1);
}

void *md::anonymous namespace::FlyoverSplineInterpolator<gm::Matrix<double,3,1>>::~FlyoverSplineInterpolator(void *a1)
{
  *a1 = &unk_1F2A3B1A0;
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;
    operator delete(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    a1[5] = v5;
    operator delete(v5);
  }

  v6 = a1[1];
  if (v6)
  {
    a1[2] = v6;
    operator delete(v6);
  }

  return a1;
}

void md::anonymous namespace::FlyoverSplineInterpolator<gm::Matrix<double,3,1>>::~FlyoverSplineInterpolator(void *a1)
{

  JUMPOUT(0x1B8C62190);
}

md::AnimationData *std::unique_ptr<md::AnimationData>::reset[abi:nn200100](md::AnimationData **a1, md::AnimationData *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    md::AnimationData::~AnimationData(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t *std::unique_ptr<std::map<unsigned long long,GEOPDFlyover const* {__strong}>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<std::__value_type<unsigned long long,GEOPDFlyover const* {__strong}>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,GEOPDFlyover const* {__strong}>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,GEOPDFlyover const* {__strong}>>>::destroy(*(v2 + 8));

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

md::AnimationData ***std::unique_ptr<md::TourData>::reset[abi:nn200100](md::AnimationData ***result, md::AnimationData **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<md::AnimationData>::reset[abi:nn200100](v2, 0);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

int64x2_t md::VKFlyoverTour::getStartFrame(md::VKFlyoverTour *this, uint64_t *a2)
{
  if (a2 && (v2 = *a2) != 0)
  {
    md::AnimationData::interpolateFrames(this, 0.0, v2, 0);
  }

  else
  {
    result = vdupq_n_s64(0xC00921FB54442D18);
    *this = result;
    *(this + 1) = 0u;
    *(this + 2) = 0u;
    *(this + 6) = 0;
  }

  return result;
}

uint64_t md::VKFlyoverTour::stopTour(md::VKFlyoverTour *this)
{
  result = *(this + 27);
  if (result)
  {
    v3 = *(this + 1);
    if (v3)
    {
      v4 = *v3;
      if (v4)
      {
        v5 = *(v4 + 144);
      }

      else
      {
        v5 = 0.0;
      }

      if (vabds_f32(*(this + 35), v5) <= 0.01)
      {
        v6 = 5;
      }

      else
      {
        v6 = 3;
      }
    }

    else
    {
      v6 = 5;
    }

    std::function<void ()(VKFlyoverTourState)>::operator()(result, v6);
    std::__function::__value_func<void ()(VKFlyoverTourState)>::operator=[abi:nn200100](this + 192);

    return std::__function::__value_func<void ()(std::string const&)>::operator=[abi:nn200100](this + 224);
  }

  return result;
}

uint64_t std::function<void ()(VKFlyoverTourState)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(VKFlyoverTourState)>::operator=[abi:nn200100](v3);
}

uint64_t std::__function::__value_func<void ()(VKFlyoverTourState)>::operator=[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::operator=[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

float64_t md::VKFlyoverTour::interpolateFrames(float64x2_t *a1, float64x2_t *a2, float64x2_t *a3, float a4)
{
  v7 = a2->f64[0];
  v21 = a4;
  v8 = fmod(3.14159265 - a2->f64[0] + a3->f64[0], 6.28318531);
  v9 = fmod(v8 + 6.28318531, 6.28318531);
  v10 = fmod(v7 + 3.14159265 + (v9 + -3.14159265) * v21, 6.28318531);
  a1->f64[0] = fmod(v10 + 6.28318531, 6.28318531) + -3.14159265;
  v11 = a2->f64[1];
  v12 = fmod(3.14159265 - v11 + a3->f64[1], 6.28318531);
  v13 = fmod(v12 + 6.28318531, 6.28318531);
  v14 = fmod(v11 + 3.14159265 + (v13 + -3.14159265) * v21, 6.28318531);
  a1->f64[1] = fmod(v14 + 6.28318531, 6.28318531) + -3.14159265;
  a1[1] = vmlaq_n_f64(a2[1], vsubq_f64(a3[1], a2[1]), v21);
  v15 = a2[2].f64[1];
  v16 = fmod(3.14159265 - v15 + a3[2].f64[1], 6.28318531);
  v17 = fmod(v16 + 6.28318531, 6.28318531);
  v18 = fmod(v15 + 3.14159265 + (v17 + -3.14159265) * v21, 6.28318531);
  v19 = fmod(v18 + 6.28318531, 6.28318531);
  a1[2].f64[0] = a2[2].f64[0] + (a3[2].f64[0] - a2[2].f64[0]) * v21;
  a1[2].f64[1] = v19 + -3.14159265;
  result = a2[3].f64[0] + (a3[3].f64[0] - a2[3].f64[0]) * v21;
  a1[3].f64[0] = result;
  return result;
}

void std::function<void ()(GEOPDFlyover const*)>::operator()(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();

    _Unwind_Resume(v4);
  }

  (*(*v3 + 48))(v3, &v5);
}

void ggl::RouteLineTraffic::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::CrossFadeLabelPart::~CrossFadeLabelPart(md::CrossFadeLabelPart *this)
{
  md::CompositeLabelPart::~CompositeLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

double md::RoadSignColoring::RoadSignColoring(md::RoadSignColoring *this)
{
  *(this + 33) = 0;
  *this = 0x1010000000001;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 8) = _Q0;
  *(this + 24) = _Q0;
  *(this + 168) = 0u;
  *(this + 184) = xmmword_1B33B21E0;
  *(this + 200) = 0u;
  result = 0.0;
  *(this + 216) = xmmword_1B33B0740;
  return result;
}

_BYTE *md::LabelsExternalMeshLogic::debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *(*a2 + 16);
  if (v4)
  {
    v6 = (*(**(*(v4 + 168) + 64) + 24))(*(*(v4 + 168) + 64));
    if (v6)
    {
      v7 = v6;
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v49);
      v8 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::ARArrivalExternalMeshRequest>>>(*(a1 + 120));
      v10 = *(v8 + 80);
      v9 = *(v8 + 88);
      v11 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::ARFeatureShadowExternalMeshRequest>>>(*(a1 + 120));
      v13 = *(v11 + 80);
      v12 = *(v11 + 88);
      v14 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::ARArrivalExternalMesh>>>(*(a1 + 120));
      v47 = v13;
      v48 = v12;
      v15 = *(v14 + 80);
      v16 = *(v14 + 88);
      v17 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::ARFeatureShadowExternalMesh>>>(*(a1 + 120));
      v19 = *(v17 + 80);
      v18 = *(v17 + 88);
      v20 = *(a1 + 120);
      v21 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::LabelExternalMesh>>>(v20);
      v22 = gdc::Registry::storage<arComponents::QueuedForDeletionAfterLayout>(v20);
      v23 = v22;
      v45 = v18;
      v46 = v15;
      v44 = v19;
      v24 = v22 + 32;
      if (*(v22 + 64) - *(v22 + 56) >= *(v21 + 64) - *(v21 + 56))
      {
        v25 = v21 + 32;
      }

      else
      {
        v25 = v22 + 32;
      }

      gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::RegistryViewIterator::RegistryViewIterator(v61, v25, v21 + 32, v24, *(v25 + 24));
      if (*(v23 + 64) - *(v23 + 56) >= *(v21 + 64) - *(v21 + 56))
      {
        v26 = v21 + 32;
      }

      else
      {
        v26 = v24;
      }

      gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::RegistryViewIterator::RegistryViewIterator(v59, v26, v21 + 32, v24, *(v26 + 32));
      v27 = v60;
      v28 = v62;
      if (v60 == v62)
      {
        v29 = 0;
      }

      else
      {
        v29 = 0;
        v30 = *(v61[0] + 32);
        do
        {
          ++v29;
          v31 = v28;
          while (1)
          {
            v32 = v31;
            v31 += 8;
            v62 = v31;
            if (v31 == v30)
            {
              break;
            }

            if (gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::RegistryViewIterator::isValid(v61))
            {
              v28 = v32 + 8;
              goto LABEL_16;
            }
          }

          v28 = v31;
          v31 = v30;
LABEL_16:
          ;
        }

        while (v27 != v31);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "Pending Arrival Requests:", 25);
      v34 = MEMORY[0x1B8C61CB0](&v50, (v9 - v10) >> 4);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v34, "\n", 1);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "Pending Shadow Requests:", 24);
      v35 = MEMORY[0x1B8C61CB0](&v50, (v48 - v47) >> 4);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, "\n", 1);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "Arrival Features:", 17);
      v36 = MEMORY[0x1B8C61CB0](&v50, (v16 - v46) >> 4);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v36, "\n", 1);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "Shadow Features:", 16);
      v37 = MEMORY[0x1B8C61CB0](&v50, (v45 - v44) >> 4);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v37, "\n", 1);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "Visible Features:", 17);
      v38 = MEMORY[0x1B8C61CB0](&v50, (*(v7 + 16) - *(v7 + 8)) >> 3);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v38, "\n", 1);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v50, "Awaiting Deletion:", 18);
      v39 = MEMORY[0x1B8C61CB0](&v50, v29);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v39, "\n", 1);
      if ((v57 & 0x10) != 0)
      {
        v41 = v56;
        if (v56 < v53)
        {
          v56 = v53;
          v41 = v53;
        }

        locale = v52[4].__locale_;
      }

      else
      {
        if ((v57 & 8) == 0)
        {
          v40 = 0;
          a3[23] = 0;
LABEL_35:
          a3[v40] = 0;
          v49[0] = *MEMORY[0x1E69E54D8];
          v43 = *(MEMORY[0x1E69E54D8] + 72);
          *(v49 + *(v49[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
          v50 = v43;
          v51 = MEMORY[0x1E69E5548] + 16;
          if (v55 < 0)
          {
            operator delete(__p);
          }

          v51 = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v52);
          std::iostream::~basic_iostream();
          return MEMORY[0x1B8C620C0](&v58);
        }

        locale = v52[1].__locale_;
        v41 = v52[3].__locale_;
      }

      v40 = v41 - locale;
      if ((v41 - locale) >= 0x7FFFFFFFFFFFFFF8)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      if (v40 >= 0x17)
      {
        operator new();
      }

      a3[23] = v40;
      if (v40)
      {
        memmove(a3, locale, v40);
      }

      goto LABEL_35;
    }
  }

  return std::string::basic_string[abi:nn200100]<0>(a3, "");
}

void sub_1B31979F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  a15 = *MEMORY[0x1E69E54D8];
  v35 = *(MEMORY[0x1E69E54D8] + 72);
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  a17 = v35;
  a18 = MEMORY[0x1E69E5548] + 16;
  if (a31 < 0)
  {
    operator delete(__p);
  }

  a18 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a19);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a34);
  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::ARArrivalExternalMeshRequest>>>(uint64_t a1)
{
  v3 = 0x38E94766143C6BD3;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x38E94766143C6BD3uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::ARFeatureShadowExternalMeshRequest>>>(uint64_t a1)
{
  v3 = 0x152DC0B81456FF96;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x152DC0B81456FF96uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::ARArrivalExternalMesh>>>(uint64_t a1)
{
  v3 = 0xDC141A54284D3B32;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xDC141A54284D3B32);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::ARFeatureShadowExternalMesh>>>(uint64_t a1)
{
  v3 = 0x29581258A69F7265;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x29581258A69F7265uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::ARFeatureShadowExternalMesh>>>::remove(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 2 * (v3 - a1[7]));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v9 = *(v7 - 16);
    v8 = *(v7 - 8);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v6[1];
    *v6 = v9;
    v6[1] = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = a1[11];
    v12 = *(v11 - 8);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    a1[11] = v11 - 16;
    v13 = a1[28];
    if (v13)
    {
      v14 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v13[6], v14, &v16, 1);
        v13 = *v13;
      }

      while (v13);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::ARFeatureShadowExternalMesh>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::ARFeatureShadowExternalMesh>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::ARArrivalExternalMesh>>>::remove(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 2 * (v3 - a1[7]));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v9 = *(v7 - 16);
    v8 = *(v7 - 8);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v6[1];
    *v6 = v9;
    v6[1] = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = a1[11];
    v12 = *(v11 - 8);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    a1[11] = v11 - 16;
    v13 = a1[28];
    if (v13)
    {
      v14 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v13[6], v14, &v16, 1);
        v13 = *v13;
      }

      while (v13);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::ARArrivalExternalMesh>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::ARArrivalExternalMesh>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::ARFeatureShadowExternalMeshRequest>>>::remove(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 2 * (v3 - a1[7]));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v9 = *(v7 - 16);
    v8 = *(v7 - 8);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v6[1];
    *v6 = v9;
    v6[1] = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = a1[11];
    v12 = *(v11 - 8);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    a1[11] = v11 - 16;
    v13 = a1[28];
    if (v13)
    {
      v14 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v13[6], v14, &v16, 1);
        v13 = *v13;
      }

      while (v13);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::ARFeatureShadowExternalMeshRequest>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::ARFeatureShadowExternalMeshRequest>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::ARArrivalExternalMeshRequest>>>::remove(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 2 * (v3 - a1[7]));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v9 = *(v7 - 16);
    v8 = *(v7 - 8);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v6[1];
    *v6 = v9;
    v6[1] = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = a1[11];
    v12 = *(v11 - 8);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    a1[11] = v11 - 16;
    v13 = a1[28];
    if (v13)
    {
      v14 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v13[6], v14, &v16, 1);
        v13 = *v13;
      }

      while (v13);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::ARArrivalExternalMeshRequest>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::ARArrivalExternalMeshRequest>>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

void md::LabelsExternalMeshLogic::runAfterLayout(uint64_t a1)
{
  v9 = v13;
  v10 = v13;
  v11 = v13;
  v12 = 4;
  v2 = gdc::Registry::storage<arComponents::QueuedForDeletionAfterLayout>(*(a1 + 120));
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  while (v3 != v4)
  {
    v14 = *v3;
    geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(&v9, &v14);
    ++v3;
  }

  v5 = v9;
  v6 = v10;
  if (v9 != v10)
  {
    v7 = *(a1 + 120);
    do
    {
      v8 = *v5++;
      gdc::Registry::destroy(v7, v8);
    }

    while (v5 != v6);
    v5 = v9;
  }

  if (v5 != v11)
  {
    free(v5);
  }
}

void sub_1B3198A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12)
{
  if (a10 != a12)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

void md::LabelsExternalMeshLogic::runBeforeLayout(uint64_t *a1, md::LayoutContext *a2, uint64_t a3)
{
  v396 = *MEMORY[0x1E69E9840];
  if (a1[15])
  {
    v3 = *(*a3 + 16);
    if (v3)
    {
      v5 = a1;
      v6 = (*(**(*(v3 + 168) + 64) + 24))(*(*(v3 + 168) + 64));
      if (v6)
      {
        v353 = a2;
        v355 = v6;
        *v389 = &v390 + 8;
        *&v389[8] = &v390 + 8;
        *&v389[16] = &v390 + 8;
        *&v390 = 4;
        v379 = v383;
        v380 = v383;
        v381 = v383;
        v382 = 4;
        v7 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::LabelExternalMesh>>>(v5[15]);
        v8 = v7[7];
        v9 = v7[8];
        if (v8 != v9)
        {
          v10 = v7[10];
          do
          {
            v384 = *v8;
            v11 = atomic_load(*v10 + 116);
            if (v11)
            {
              v12 = v384;
              v13 = gdc::Registry::storage<arComponents::QueuedForDeletionAfterLayout>(v5[15]);
              gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v13, v12);
              v14 = gdc::Registry::storage<arComponents::LabelFeatureArrivalModel>(v5[15]);
              v15 = gdc::ComponentStorageWrapper<arComponents::RotationToApply>::get(v14, v12);
              if (v15)
              {
                v16 = v15;
                v17 = *v15;
                v18 = gdc::Registry::storage<arComponents::QueuedForDeletionAfterLayout>(v5[15]);
                gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v18, v17);
                v19 = v16[1];
                v20 = gdc::Registry::storage<arComponents::QueuedForDeletionAfterLayout>(v5[15]);
                gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v20, v19);
              }

              v22 = v5[22];
              v21 = v5[23];
              if (v22 != v21)
              {
                while (*v10 != *v22)
                {
                  v22 += 2;
                  if (v22 == v21)
                  {
                    goto LABEL_18;
                  }
                }

                if (v22 != v21)
                {
                  v23 = v22 + 2;
                  if (v22 + 2 != v21)
                  {
                    do
                    {
                      v24 = v23[1];
                      *(v23 - 2) = *v23;
                      *(v23 - 1) = v24;
                      v23 += 2;
                    }

                    while (v23 != v21);
                    v22 = v23 - 2;
                  }

                  v5[23] = v22;
                }
              }

LABEL_18:
              geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(v389, &v384);
              v25 = GEOGetVectorKitLabelExternalMeshLogicLog();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                v26 = **v10;
                v27 = "ARFeatureShadow";
                if (!*(*v10 + 4))
                {
                  v27 = "ARArrival";
                }

                *buf = 67109378;
                *&buf[4] = v26;
                *&buf[8] = 2080;
                *&buf[10] = v27;
                _os_log_impl(&dword_1B2754000, v25, OS_LOG_TYPE_INFO, "Queuing external mesh for deletion (id:%d type:%s)", buf, 0x12u);
              }
            }

            v10 += 2;
            ++v8;
          }

          while (v8 != v9);
        }

        v28 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::LabelExternalMeshRequest>>>(v5[15]);
        v29 = v28[7];
        v30 = v28[8];
        v368 = v5;
        if (v29 != v30)
        {
          v31 = v28[10];
          do
          {
            v32 = *v29;
            v384 = *v29;
            v33 = *v31;
            std::mutex::lock((*v31 + 96));
            v34 = *(v33 + 176);
            std::mutex::unlock((v33 + 96));
            v5 = v368;
            if (v34 == 4)
            {
              v35 = gdc::Registry::storage<arComponents::LabelFeatureArrivalModel>(v368[15]);
              v36 = gdc::ComponentStorageWrapper<arComponents::RotationToApply>::get(v35, v32);
              if (v36)
              {
                v37 = v36;
                geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(&v379, v36);
                geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(&v379, v37 + 1);
              }

              geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(&v379, &v384);
              v38 = GEOGetVectorKitLabelExternalMeshLogicLog();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                v39 = *(*v31 + 8);
                v40 = "ARFeatureShadow";
                if (!*(*v31 + 12))
                {
                  v40 = "ARArrival";
                }

                *buf = 67109378;
                *&buf[4] = v39;
                *&buf[8] = 2080;
                *&buf[10] = v40;
                _os_log_impl(&dword_1B2754000, v38, OS_LOG_TYPE_INFO, "Dropping canceled mesh request (id:%d type:%s)", buf, 0x12u);
              }

              v5 = v368;
            }

            v31 += 2;
            ++v29;
          }

          while (v29 != v30);
        }

        v41 = v5[15];
        v42 = *v389;
        v43 = *&v389[8];
        if (*v389 != *&v389[8])
        {
          do
          {
            v44 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::LabelExternalMesh>>>(v41);
            gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::LabelExternalMesh>>>::remove(v44, *v42++);
          }

          while (v42 != v43);
          v41 = v5[15];
          v45 = *v389;
          v46 = *&v389[8];
          if (*v389 != *&v389[8])
          {
            do
            {
              v47 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::ARArrivalExternalMesh>>>(v41);
              gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::ARArrivalExternalMesh>>>::remove(v47, *v45++);
            }

            while (v45 != v46);
            v41 = v5[15];
            v48 = *v389;
            v49 = *&v389[8];
            if (*v389 != *&v389[8])
            {
              do
              {
                v50 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::ARFeatureShadowExternalMesh>>>(v41);
                gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::ARFeatureShadowExternalMesh>>>::remove(v50, *v48++);
              }

              while (v48 != v49);
              v41 = v5[15];
            }
          }
        }

        v52 = v379;
        v51 = v380;
        if (v379 != v380)
        {
          do
          {
            v53 = *v52++;
            gdc::Registry::destroy(v41, v53);
          }

          while (v52 != v51);
          v52 = v379;
        }

        v54 = v368;
        if (v52 != v381)
        {
          free(v52);
        }

        if (*v389 != *&v389[16])
        {
          free(*v389);
        }

        *v389 = &v390 + 8;
        *&v389[8] = &v390 + 8;
        *&v389[16] = &v390 + 8;
        *&v390 = 4;
        v379 = v383;
        v380 = v383;
        v381 = v383;
        v382 = 4;
        v55 = v368[15];
        v56 = gdc::Registry::storage<gdc::component::DataRequestObserver::IsFailed>(v55);
        v57 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::ARArrivalExternalMeshRequest>>>(v55);
        v58 = v57;
        v59 = (v57 + 32);
        v61 = v56[7];
        v60 = v56[8];
        if (*(v57 + 64) - *(v57 + 56) >= (v60 - v61))
        {
          v62 = v56 + 4;
        }

        else
        {
          v62 = (v57 + 32);
        }

        if (v56 + 4 == v62)
        {
          *buf = &v379;
          *&buf[8] = v368;
          while (v61 != v60)
          {
            Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v59, *(v61 + 4));
            v64 = v58[8];
            if (v64 != Index)
            {
              v65 = *v61;
              v66 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v59, HIDWORD(*v61));
              if (v64 == v66)
              {
                v67 = v58[11];
              }

              else
              {
                v67 = (v58[10] + 2 * (v66 - v58[7]));
              }

              md::LabelsExternalMeshLogic::processPendingArrivalRequests(void)::$_0::operator()(buf, v65, *v67);
            }

            v61 += 8;
          }

          v54 = v368;
        }

        if (v59 == v62)
        {
          *buf = &v379;
          *&buf[8] = v54;
          v68 = v58[7];
          v69 = v58[8];
          if (v68 != v69)
          {
            v70 = v58[10];
            do
            {
              if (v56[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v56 + 4, *(v68 + 4)))
              {
                md::LabelsExternalMeshLogic::processPendingArrivalRequests(void)::$_0::operator()(buf, *v68, *v70);
              }

              v70 += 2;
              v68 += 8;
            }

            while (v68 != v69);
          }
        }

        v71 = v54[15];
        v73 = v379;
        v72 = v380;
        if (v379 == v380)
        {
          v75 = v368;
        }

        else
        {
          do
          {
            v74 = *v73++;
            gdc::Registry::destroy(v71, v74);
          }

          while (v73 != v72);
          v73 = v379;
          v75 = v368;
          v71 = v368[15];
        }

        v380 = v73;
        v76 = gdc::Registry::storage<gdc::component::DataRequestObserver::IsCompleted>(v71);
        v77 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::ARArrivalExternalMeshRequest>>>(v71);
        v78 = gdc::Registry::storage<arComponents::LabelFeatureArrivalModel>(v71);
        v79.i64[0] = v76;
        v79.i64[1] = v77;
        v80 = v78 + 4;
        *buf = vaddq_s64(v79, vdupq_n_s64(0x20uLL));
        *&buf[16] = v78 + 4;
        v81 = *buf;
        v82 = 8;
        v83 = buf;
        do
        {
          if (*(*&buf[v82] + 32) - *(*&buf[v82] + 24) < *(v81 + 32) - *(v81 + 24))
          {
            v81 = *&buf[v82];
            v83 = &buf[v82];
          }

          v82 += 8;
        }

        while (v82 != 24);
        v84 = *v83;
        v85 = (v76 + 32);
        if (v76 + 32 == *v83)
        {
          v369 = *v83;
          v362 = (v76 + 32);
          v364 = v76;
          *buf = v75;
          *&buf[8] = v389;
          *&buf[16] = &v379;
          v87 = *(v76 + 56);
          v86 = *(v76 + 64);
          while (v87 != v86)
          {
            v88 = *(v87 + 4);
            v89 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v77 + 4, v88);
            v90 = v77[8];
            if (v90 != v89)
            {
              v91 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v80, v88);
              v92 = v78[8];
              if (v92 != v91)
              {
                v93 = *v87;
                v94 = HIDWORD(*v87);
                v95 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v77 + 4, HIDWORD(*v87));
                if (v90 == v95)
                {
                  v96 = v77[11];
                }

                else
                {
                  v96 = (v77[10] + 2 * (v95 - v77[7]));
                }

                v97 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v80, v94);
                if (v92 == v97)
                {
                  v98 = v78[11];
                }

                else
                {
                  v98 = (v78[10] + 2 * (v97 - v78[7]));
                }

                md::LabelsExternalMeshLogic::processPendingArrivalRequests(void)::$_1::operator()(buf, v93, *v96, v98);
              }
            }

            v87 += 8;
          }

          v85 = v362;
          v76 = v364;
          v84 = v369;
        }

        v99 = v77 + 4;
        if (v77 + 4 == v84)
        {
          v370 = v84;
          *buf = v75;
          *&buf[8] = v389;
          *&buf[16] = &v379;
          v100 = v77[7];
          v101 = v77[8];
          if (v100 != v101)
          {
            v102 = v77[10];
            do
            {
              v103 = *(v100 + 4);
              if (*(v76 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v85, v103))
              {
                v104 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v80, v103);
                v105 = v78[8];
                if (v105 != v104)
                {
                  v106 = *v100;
                  v107 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v80, HIDWORD(*v100));
                  if (v105 == v107)
                  {
                    v108 = v78[11];
                  }

                  else
                  {
                    v108 = (v78[10] + 2 * (v107 - v78[7]));
                  }

                  md::LabelsExternalMeshLogic::processPendingArrivalRequests(void)::$_1::operator()(buf, v106, *v102, v108);
                }
              }

              v102 += 2;
              v100 += 8;
            }

            while (v100 != v101);
          }

          v75 = v368;
          v84 = v370;
          v99 = v77 + 4;
        }

        if (v80 == v84)
        {
          *buf = v75;
          *&buf[8] = v389;
          *&buf[16] = &v379;
          v109 = v78[7];
          v110 = v78[8];
          if (v109 != v110)
          {
            v111 = v78[10];
            do
            {
              v112 = *(v109 + 4);
              if (*(v76 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v85, v112))
              {
                v113 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v99, v112);
                v114 = v77[8];
                if (v114 != v113)
                {
                  v115 = *v109;
                  v116 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v99, HIDWORD(*v109));
                  if (v114 == v116)
                  {
                    v117 = v77[11];
                  }

                  else
                  {
                    v117 = (v77[10] + 2 * (v116 - v77[7]));
                  }

                  md::LabelsExternalMeshLogic::processPendingArrivalRequests(void)::$_1::operator()(buf, v115, *v117, v111);
                }
              }

              v111 += 2;
              v109 += 8;
            }

            while (v109 != v110);
          }

          v75 = v368;
        }

        v118 = v75[15];
        v119 = *v389;
        v120 = *&v389[8];
        if (*v389 != *&v389[8])
        {
          do
          {
            v121 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::ARArrivalExternalMeshRequest>>>(v118);
            gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::ARArrivalExternalMeshRequest>>>::remove(v121, *v119++);
          }

          while (v119 != v120);
          v118 = v75[15];
          v119 = *v389;
          v120 = *&v389[8];
        }

        gdc::Registry::remove<arComponents::Wrap<std::shared_ptr<md::LabelExternalMeshRequest>>,gdc::Entity *>(v118, v119, v120);
        v123 = v379;
        v122 = v380;
        if (v379 != v380)
        {
          v124 = v368[15];
          do
          {
            v125 = *v123++;
            gdc::Registry::destroy(v124, v125);
          }

          while (v123 != v122);
          v123 = v379;
        }

        v126 = v368;
        if (v123 != v381)
        {
          free(v123);
        }

        if (*v389 != *&v389[16])
        {
          free(*v389);
        }

        v127 = 0;
        v128 = 0xCBF29CE484222325;
        *v389 = &v390 + 8;
        *&v389[8] = &v390 + 8;
        *&v389[16] = &v390 + 8;
        *&v390 = 4;
        v379 = v383;
        v380 = v383;
        v381 = v383;
        v382 = 4;
        v129 = v368[15];
        do
        {
          v128 = 0x100000001B3 * (v128 ^ aStdStringViewG_867[v127++ + 38]);
        }

        while (v127 != 122);
        v130 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>::StatusTag<(gdc::component::DataRequestStatus)4>>(v368[15], v128);
        v131 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::ARFeatureShadowExternalMeshRequest>>>(v129);
        v132 = gdc::Registry::storage<arComponents::Boundary>(v129);
        v133.i64[0] = v130;
        v133.i64[1] = v131;
        v134 = v132 + 4;
        *buf = vaddq_s64(v133, vdupq_n_s64(0x20uLL));
        *&buf[16] = v132 + 4;
        v135 = *buf;
        v136 = 8;
        v137 = buf;
        do
        {
          if (*(*&buf[v136] + 32) - *(*&buf[v136] + 24) < *(v135 + 32) - *(v135 + 24))
          {
            v135 = *&buf[v136];
            v137 = &buf[v136];
          }

          v136 += 8;
        }

        while (v136 != 24);
        v138 = *v137;
        v371 = (v130 + 32);
        if (v130 + 32 == *v137)
        {
          v365 = *v137;
          *buf = v368;
          *&buf[8] = v389;
          *&buf[16] = &v379;
          v140 = *(v130 + 56);
          v139 = *(v130 + 64);
          while (v140 != v139)
          {
            v141 = *(v140 + 4);
            if (v131[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v131 + 4, v141) && v132[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v134, v141))
            {
              v142 = *v140;
              v143 = HIDWORD(*v140);
              geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v131 + 4, HIDWORD(*v140));
              geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v134, v143);
              md::LabelsExternalMeshLogic::processPendingShadowRequests(void)::$_0::operator()(buf, v142);
            }

            v140 += 8;
          }

          v126 = v368;
          v138 = v365;
        }

        if (v131 + 4 == v138)
        {
          v366 = v138;
          *buf = v126;
          *&buf[8] = v389;
          *&buf[16] = &v379;
          v144 = v131[7];
          v145 = v131[8];
          if (v144 != v145)
          {
            v146 = v131[10];
            do
            {
              v147 = *(v144 + 4);
              if (*(v130 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v371, v147) && v132[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v134, v147))
              {
                v148 = *v144;
                geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v134, HIDWORD(*v144));
                md::LabelsExternalMeshLogic::processPendingShadowRequests(void)::$_0::operator()(buf, v148);
              }

              v146 += 16;
              v144 += 8;
            }

            while (v144 != v145);
          }

          v126 = v368;
          v138 = v366;
        }

        if (v134 == v138)
        {
          *buf = v126;
          *&buf[8] = v389;
          *&buf[16] = &v379;
          v149 = v132[7];
          v150 = v132[8];
          if (v149 != v150)
          {
            v151 = v132[10];
            do
            {
              v152 = *(v149 + 4);
              if (*(v130 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v371, v152) && v131[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v131 + 4, v152))
              {
                v153 = *v149;
                geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v131 + 4, HIDWORD(*v149));
                md::LabelsExternalMeshLogic::processPendingShadowRequests(void)::$_0::operator()(buf, v153);
              }

              v151 += 24;
              v149 += 8;
            }

            while (v149 != v150);
          }

          v126 = v368;
        }

        v154 = *v389;
        v155 = *&v389[8];
        if (*v389 != *&v389[8])
        {
          do
          {
            v156 = *v154;
            v157 = v126[15];
            v158 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>>(v157);
            v159 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v158, v156);
            if (v159)
            {
              gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>::_clearRequest(v157, v156, v159);
              *buf = v156;
              v160 = gdc::Registry::_get<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>>>(v157, v156);
              if (v160)
              {
                v161 = *v160;
                v162 = *(v160 + 8);
                while (v161 != v162)
                {
                  v163 = *v161;
                  v384 = v163;
                  v164 = gdc::Registry::_get<gdc::component::DataRequestObserver::Observer<gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>>>(v157, v163);
                  gdc::component::DataRequestObserver::updateStatusCounts(v157, v163, v156, *(v164 + 8), 0);
                  gdc::Registry::remove<gdc::component::DataRequestObserver::Observer<gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>>>(v157, &v384);
                  ++v161;
                }

                gdc::Registry::remove<gdc::component::DataRequestObserver::ObserverList<gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>>>(v157, buf);
              }

              v165 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>>(v157);
              gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>>::remove(v165, v156);
            }

            ++v154;
          }

          while (v154 != v155);
          v154 = *v389;
          v155 = *&v389[8];
        }

        v166 = v126[15];
        if (v154 != v155)
        {
          do
          {
            v167 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::ARFeatureShadowExternalMeshRequest>>>(v166);
            gdc::ComponentStorageWrapper<arComponents::Wrap<std::shared_ptr<md::ARFeatureShadowExternalMeshRequest>>>::remove(v167, *v154++);
          }

          while (v154 != v155);
          v166 = v126[15];
          v154 = *v389;
          v155 = *&v389[8];
        }

        gdc::Registry::remove<arComponents::Wrap<std::shared_ptr<md::LabelExternalMeshRequest>>,gdc::Entity *>(v166, v154, v155);
        v169 = v379;
        v168 = v380;
        if (v379 != v380)
        {
          v170 = v368[15];
          do
          {
            v171 = *v169++;
            gdc::Registry::destroy(v170, v171);
          }

          while (v169 != v168);
          v169 = v379;
        }

        if (v169 != v381)
        {
          free(v169);
        }

        if (*v389 != *&v389[16])
        {
          free(*v389);
        }

        memset(buf, 0, sizeof(buf));
        std::mutex::lock((v355 + 64));
        v172 = *(v355 + 56);
        *buf = *(v355 + 40);
        *&buf[16] = v172;
        *(v355 + 40) = 0;
        *(v355 + 48) = 0;
        *(v355 + 56) = 0;
        std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((v355 + 40));
        std::mutex::unlock((v355 + 64));
        v173 = *buf;
        v359 = *&buf[8];
        if (*buf != *&buf[8])
        {
          __asm { FMOV            V9.2S, #1.0 }

          do
          {
            v178 = GEOGetVectorKitLabelExternalMeshLogicLog();
            if (os_log_type_enabled(v178, OS_LOG_TYPE_INFO))
            {
              v179 = *(*v173 + 8);
              v180 = "ARFeatureShadow";
              if (!*(*v173 + 12))
              {
                v180 = "ARArrival";
              }

              *v389 = 67109378;
              *&v389[4] = v179;
              *&v389[8] = 2080;
              *&v389[10] = v180;
              _os_log_impl(&dword_1B2754000, v178, OS_LOG_TYPE_INFO, "Processing new request(id:%d) for external mesh type:%s", v389, 0x12u);
            }

            v367 = v173;
            if (!*(*v173 + 12))
            {
              v182 = v173[1];
              if (v182)
              {
                atomic_fetch_add_explicit((v182 + 8), 1uLL, memory_order_relaxed);
              }

              gdc::Registry::create(v368[15]);
            }

            if (*(*v173 + 12) == 1)
            {
              v181 = v173[1];
              if (v181)
              {
                atomic_fetch_add_explicit((v181 + 8), 1uLL, memory_order_relaxed);
              }

              gdc::Registry::create(v368[15]);
            }

            v173 += 2;
          }

          while (v367 + 2 != v359);
        }

        v183 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::ARArrivalExternalMeshRequest>>>(v368[15]);
        v185 = *(v183 + 80);
        v184 = *(v183 + 88);
        v186 = gdc::Registry::storage<arComponents::Wrap<std::shared_ptr<md::ARFeatureShadowExternalMeshRequest>>>(v368[15]);
        v187 = (v184 - v185) >> 4;
        v189 = *(v186 + 80);
        v188 = *(v186 + 88);
        v190 = v368;
        if (v368[26] != v187)
        {
          v191 = GEOGetVectorKitLabelExternalMeshLogicLog();
          if (os_log_type_enabled(v191, OS_LOG_TYPE_INFO))
          {
            *v389 = 134217984;
            *&v389[4] = v187;
            _os_log_impl(&dword_1B2754000, v191, OS_LOG_TYPE_INFO, "%lu pending Arrival requests", v389, 0xCu);
          }

          v368[26] = v187;
        }

        v192 = (v188 - v189) >> 4;
        if (v368[25] != v192)
        {
          v193 = GEOGetVectorKitLabelExternalMeshLogicLog();
          if (os_log_type_enabled(v193, OS_LOG_TYPE_INFO))
          {
            *v389 = 134217984;
            *&v389[4] = (v188 - v189) >> 4;
            _os_log_impl(&dword_1B2754000, v193, OS_LOG_TYPE_INFO, "%lu pending Shadow requests", v389, 0xCu);
          }

          v368[25] = v192;
        }

        md::LayoutContext::frameState(v353);
        v195 = *(v194 + 88);
        v196 = +[VKDebugSettings sharedSettings];
        v363 = [v196 arIsArrivalAnimationEnabled];

        v197 = v368[16];
        v198 = v368[18];
        v199 = v368[19];
        v368[16] = v199;
        v200 = *(v368 + 10);
        *(v368 + 17) = v200;
        v368[20] = v197;
        v368[21] = v198;
        v368[19] = v197;
        v379 = v383;
        v380 = v383;
        v381 = v383;
        v382 = 2;
        v202 = *(v355 + 8);
        v201 = *(v355 + 16);
        if (v202 != v201)
        {
          while (1)
          {
            v203 = *v202;
            v380 = v379;
            v204 = v190[22];
            v205 = v190[23];
            while (1)
            {
              if (v204 == v205)
              {
                goto LABEL_221;
              }

              if (v203 == *v204)
              {
                break;
              }

              v204 += 2;
            }

            if (v204 == v205)
            {
LABEL_221:
              v206 = 0xFFFFFFFF00000000;
            }

            else
            {
              v206 = v204[1];
              v384 = v206;
              if (v206)
              {
                v207 = 0;
              }

              else
              {
                v207 = v206 > 0xFFFFFFFEFFFFFFFFLL;
              }

              if (!v207)
              {
                v208 = v190[15];
                if (gdc::Registry::isValid(v208, &v384))
                {
                  v209 = gdc::Registry::storage<arComponents::QueuedForDeletionAfterLayout>(v208);
                  if (*(v209 + 64) == geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v209 + 32), HIDWORD(v206)))
                  {
                    if (*(v203 + 4))
                    {
                      if (*(v203 + 4) == 1)
                      {
                        v210 = gdc::Registry::storage<arComponents::WorldTransform>(v190[15]);
                        v211 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v210 + 4, HIDWORD(v206));
                        if (v210[8] != v211)
                        {
                          v212 = v210[10];
                          if (v212 + 80 * ((v211 - v210[7]) >> 3) != v210[11] && v212 != 0)
                          {
                            v214 = v190[15];
                            *v389 = *(v203 + 2);
                            *&v389[16] = *(v203 + 6);
                            v390 = *(v203 + 14);
                            v391 = *(v203 + 9);
                            v392 = *(v203 + 10);
                            v393 = *(v203 + 22);
                            v394 = *(v203 + 13);
                            v215 = gdc::Registry::storage<arComponents::WorldTransform>(v214);
                            gdc::ComponentStorageWrapper<arComponents::WorldTransform>::emplace(v215, v206, v389);
                            v216 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::WorldTransform>>(v190[15]);
                            gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v216, v206);
                          }
                        }

                        v217 = gdc::Registry::storage<arComponents::VisibilityAlpha>(v190[15]);
                        v218 = gdc::ComponentStorageWrapper<md::components::CustomZIndex>::get(v217, v206);
                        if (v218)
                        {
                          v219 = *(v203 + 28);
                          if (vabds_f32(*v218, v219) > 0.001)
                          {
                            *v218 = v219;
                            v220 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::VisibilityAlpha>>(v190[15]);
                            gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v220, v206);
                          }
                        }

                        geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(&v379, &v384);
                      }

                      goto LABEL_286;
                    }

                    v376 = v203;
                    v229 = gdc::Registry::storage<arComponents::LabelFeatureArrivalModel>(v190[15]);
                    v230 = gdc::ComponentStorageWrapper<arComponents::RotationToApply>::get(v229, v206);
                    if (!v230)
                    {
                      goto LABEL_286;
                    }

                    v231 = v230;
                    v232 = v190[15];
                    v233 = *v230;
                    v387[0] = &unk_1F2A3BE08;
                    v387[1] = &v376;
                    v388 = v387;
                    v234 = gdc::Registry::storage<arComponents::UpRelativeTranslationToApply>(v232);
                    v235 = gdc::ComponentStorageWrapper<arComponents::UpRelativeTranslationToApply>::get(v234, v233);
                    if (v235)
                    {
                      std::function<void ()(arComponents::UpRelativeTranslationToApply &,BOOL)>::operator()(v388, v235, 0);
                    }

                    else
                    {
                      *v389 = 0;
                      std::function<void ()(arComponents::UpRelativeTranslationToApply &,BOOL)>::operator()(v388, v389, 1);
                      v378 = *v389;
                      v236 = gdc::Registry::storage<arComponents::UpRelativeTranslationToApply>(v232);
                      gdc::ComponentStorageWrapper<md::components::PendingMaterial>::emplace(v236, v233, &v378);
                    }

                    std::__function::__value_func<void ()(arComponents::UpRelativeTranslationToApply &,BOOL)>::~__value_func[abi:nn200100](v387);
                    v237 = v190[15];
                    v238 = *v231;
                    v239 = gdc::Registry::storage<arComponents::AnimationEntityStatus<(VKAnimationState)1>>(v237);
                    v240 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v239 + 4, HIDWORD(v238));
                    v190 = v368;
                    if (v239[8] == v240 || (v241 = v239[10], v241 + v240 - v239[7] == v239[11]) || !v241)
                    {
                      v242 = *v231;
                      v243 = gdc::Registry::storage<arComponents::AnimationEntityStatus<(VKAnimationState)3>>(v368[15]);
                      v244 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v243 + 4, HIDWORD(v242));
                      v245 = v243[8] == v244 ? v243[11] : v243[10] + v244 - v243[7];
                      v190 = v368;
                      v246 = v245 == v243[11] ? 0 : v245;
                      if (v363 && (!v246 || (v195 * 1000.0) - *v246 >= 1001))
                      {
                        v247 = v368[15];
                        v248 = *v231;
                        v249 = +[VKDebugSettings sharedSettings];
                        [v249 arJumpOffset];
                        v356 = v250;

                        v251 = +[VKDebugSettings sharedSettings];
                        [v251 arJumpDuration];
                        v372 = v252;

                        v253 = +[VKDebugSettings sharedSettings];
                        [v253 arJumpStart];
                        v361 = v254;

                        v255 = +[VKDebugSettings sharedSettings];
                        [v255 arFallOffset];
                        v354 = v256;

                        v257 = +[VKDebugSettings sharedSettings];
                        [v257 arFallDuration];
                        v360 = v258;

                        v259 = +[VKDebugSettings sharedSettings];
                        [v259 arFallStart];
                        v358 = v260;

                        v261 = +[VKDebugSettings sharedSettings];
                        [v261 arRotateOffset];
                        v263 = v262;

                        v264 = +[VKDebugSettings sharedSettings];
                        [v264 arRotateDuration];
                        v357 = v265;

                        v266 = +[VKDebugSettings sharedSettings];
                        [v266 arRotateStart];
                        v268 = v267;

                        v269 = +[VKDebugSettings sharedSettings];
                        [v269 arPulseOffset];
                        v352 = v270;

                        v271 = +[VKDebugSettings sharedSettings];
                        [v271 arPulseDuration];
                        v273 = v272;

                        v274 = +[VKDebugSettings sharedSettings];
                        [v274 arPulseStart];
                        v276 = v275;

                        v277 = +[VKDebugSettings sharedSettings];
                        [v277 arPulseNumberOfRepeats];
                        v279 = v278;

                        JumpAndRotate = gdc::Registry::storage<arComponents::CreateJumpAndRotateAnimation>(v247);
                        *v389 = v248;
                        v281 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(JumpAndRotate + 4, v389);
                        v282 = fmaxf(fmaxf(fmaxf(fmaxf(v361 + v372, 0.0), v360 + (v361 + v372)), v268 + v357), v276 + ((v273 + v273) * v279)) - fminf(v276, fminf(v268, fminf(v358, fminf(v361, 0.0))));
                        v283 = v263 * 3.14159265;
                        v284 = v279;
                        if (v285)
                        {
                          v286 = JumpAndRotate[11];
                          v287 = JumpAndRotate[12];
                          if (v286 >= v287)
                          {
                            v292 = JumpAndRotate[10];
                            v293 = 0x8E38E38E38E38E39 * ((v286 - v292) >> 3);
                            v294 = v293 + 1;
                            if (v293 + 1 > 0x38E38E38E38E38ELL)
                            {
                              std::__throw_bad_array_new_length[abi:nn200100]();
                            }

                            v295 = 0x8E38E38E38E38E39 * ((v287 - v292) >> 3);
                            if (2 * v295 > v294)
                            {
                              v294 = 2 * v295;
                            }

                            if (v295 >= 0x1C71C71C71C71C7)
                            {
                              v296 = 0x38E38E38E38E38ELL;
                            }

                            else
                            {
                              v296 = v294;
                            }

                            if (v296)
                            {
                              if (v296 <= 0x38E38E38E38E38ELL)
                              {
                                operator new();
                              }

                              std::__throw_bad_array_new_length[abi:nn200100]();
                            }

                            v297 = 72 * v293;
                            *v297 = v282;
                            *(v297 + 4) = v356;
                            *(v297 + 8) = v372;
                            *(v297 + 12) = v361;
                            *(v297 + 16) = v378;
                            *(v297 + 20) = v354;
                            *(v297 + 24) = v360;
                            *(v297 + 28) = v358;
                            *(v297 + 32) = v377;
                            *(v297 + 36) = v283;
                            *(v297 + 40) = v357;
                            *(v297 + 44) = v268;
                            *(v297 + 48) = v374;
                            *(v297 + 52) = v352;
                            *(v297 + 56) = v273;
                            *(v297 + 60) = v276;
                            *(v297 + 64) = v375;
                            *(v297 + 68) = v284;
                            v288 = 72 * v293 + 72;
                            v298 = JumpAndRotate[10];
                            v299 = JumpAndRotate[11] - v298;
                            v300 = v297 - v299;
                            memcpy((v297 - v299), v298, v299);
                            v301 = JumpAndRotate[10];
                            JumpAndRotate[10] = v300;
                            JumpAndRotate[11] = v288;
                            JumpAndRotate[12] = 0;
                            if (v301)
                            {
                              operator delete(v301);
                            }

                            v190 = v368;
                          }

                          else
                          {
                            *v286 = v282;
                            *(v286 + 4) = v356;
                            *(v286 + 8) = v372;
                            *(v286 + 12) = v361;
                            *(v286 + 20) = v354;
                            *(v286 + 24) = v360;
                            *(v286 + 28) = v358;
                            *(v286 + 36) = v283;
                            *(v286 + 40) = v357;
                            *(v286 + 44) = v268;
                            *(v286 + 52) = v352;
                            *(v286 + 56) = v273;
                            *(v286 + 68) = v284;
                            v288 = v286 + 72;
                            *(v286 + 60) = v276;
                          }

                          JumpAndRotate[11] = v288;
                          v290 = JumpAndRotate[31];
LABEL_276:
                          for (i = JumpAndRotate[22]; i; i = *i)
                          {
                            std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v290, v389, 1);
                          }
                        }

                        else
                        {
                          v289 = JumpAndRotate[10] + 72 * ((v281 - JumpAndRotate[7]) >> 3);
                          *v289 = v282;
                          *(v289 + 4) = v356;
                          *(v289 + 8) = v372;
                          *(v289 + 12) = v361;
                          *(v289 + 20) = v354;
                          *(v289 + 24) = v360;
                          *(v289 + 28) = v358;
                          *(v289 + 36) = v283;
                          *(v289 + 40) = v357;
                          *(v289 + 44) = v268;
                          *(v289 + 52) = v352;
                          *(v289 + 56) = v273;
                          *(v289 + 60) = v276;
                          *(v289 + 68) = v284;
                          v290 = JumpAndRotate[31];
                          if (v289 == JumpAndRotate[11])
                          {
                            goto LABEL_276;
                          }

                          for (j = JumpAndRotate[16]; j; j = *j)
                          {
                            std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v290, v389, 1);
                          }
                        }
                      }
                    }

                    v303 = 0;
                    *v389 = *v231;
                    do
                    {
                      v374 = *&v389[v303];
                      v304 = v374;
                      v305 = gdc::Registry::storage<arComponents::VisibilityAlpha>(v190[15]);
                      v306 = gdc::ComponentStorageWrapper<md::components::CustomZIndex>::get(v305, v304);
                      if (v306)
                      {
                        v307 = *(v203 + 28);
                        if (vabds_f32(*v306, v307) > 0.001)
                        {
                          *v306 = v307;
                          v308 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::VisibilityAlpha>>(v190[15]);
                          gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v308, v304);
                        }
                      }

                      v309 = v190[15];
                      v385[0] = &unk_1F2A3BE80;
                      v385[1] = &v376;
                      v386 = v385;
                      v310 = gdc::Registry::storage<arComponents::ScaleToApply>(v309);
                      v311 = gdc::ComponentStorageWrapper<arComponents::UpRelativeTranslationToApply>::get(v310, v304);
                      if (v311)
                      {
                        std::function<void ()(arComponents::ScaleToApply &,BOOL)>::operator()(v386, v311, 0);
                      }

                      else
                      {
                        v378 = 0x3FF0000000000000;
                        std::function<void ()(arComponents::ScaleToApply &,BOOL)>::operator()(v386, &v378, 1);
                        v377 = v378;
                        v312 = gdc::Registry::storage<arComponents::ScaleToApply>(v309);
                        gdc::ComponentStorageWrapper<md::components::PendingMaterial>::emplace(v312, v304, &v377);
                      }

                      std::__function::__value_func<void ()(arComponents::ScaleToApply &,BOOL)>::~__value_func[abi:nn200100](v385);
                      geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(&v379, &v374);
                      v303 += 8;
                    }

                    while (v303 != 16);
LABEL_286:
                    v313 = v379;
                    v314 = v380;
                    while (v313 != v314)
                    {
                      v315 = *v313;
                      *v389 = *v313;
                      v317 = v190[19];
                      v316 = v190[20];
                      v318 = v316;
                      if (v317 == v316)
                      {
                        goto LABEL_295;
                      }

                      v318 = v190[19];
                      while (*v318 < v315)
                      {
                        v318 += 8;
                        if (v318 == v316)
                        {
                          v318 = v190[20];
                          goto LABEL_295;
                        }
                      }

                      if (v318 == v316 || v315 != *v318)
                      {
LABEL_295:
                        v319 = v190[21];
                        if (v316 >= v319)
                        {
                          v321 = ((v316 - v317) >> 3) + 1;
                          if (v321 >> 61)
                          {
                            std::__throw_bad_array_new_length[abi:nn200100]();
                          }

                          v322 = v319 - v317;
                          v323 = (v319 - v317) >> 2;
                          if (v323 > v321)
                          {
                            v321 = v323;
                          }

                          if (v322 >= 0x7FFFFFFFFFFFFFF8)
                          {
                            v324 = 0x1FFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v324 = v321;
                          }

                          if (v324)
                          {
                            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v324);
                          }

                          v325 = v318 - v317;
                          v326 = (v318 - v317) >> 3;
                          v327 = (8 * v326);
                          v328 = 8 * v326;
                          if (!v326)
                          {
                            if (v325 < 1)
                            {
                              v331 = v325 >> 2;
                              if (v318 == v317)
                              {
                                v332 = 1;
                              }

                              else
                              {
                                v332 = v331;
                              }

                              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v332);
                            }

                            v327 = (v327 - (((v325 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
                            v328 = v327;
                          }

                          *v327 = *v389;
                          v333 = v328 + 8;
                          memcpy((v328 + 8), v318, v190[20] - v318);
                          v334 = v190[19];
                          v373 = (v333 + v190[20] - v318);
                          v190[20] = v318;
                          v335 = v318 - v334;
                          v336 = v327 - (v318 - v334);
                          memcpy(v336, v334, v335);
                          v337 = v190[19];
                          v190[19] = v336;
                          *(v190 + 10) = v373;
                          if (v337)
                          {
                            operator delete(v337);
                          }
                        }

                        else if (v318 == v316)
                        {
                          *v316 = v315;
                          v190[20] = (v316 + 8);
                        }

                        else
                        {
                          if (v316 < 8)
                          {
                            v320 = v190[20];
                          }

                          else
                          {
                            *v316 = *(v316 - 1);
                            v320 = v316 + 8;
                          }

                          v190[20] = v320;
                          if (v316 != v318 + 8)
                          {
                            memmove(v318 + 8, v318, v316 - (v318 + 8));
                            v320 = v190[20];
                          }

                          v329 = v320 <= v389 || v318 > v389;
                          v330 = 8;
                          if (v329)
                          {
                            v330 = 0;
                          }

                          *v318 = *&v389[v330];
                        }
                      }

                      v339 = v190[16];
                      v338 = v190[17];
                      v340 = *v389;
                      if (v339 == v338)
                      {
                        goto LABEL_339;
                      }

                      while (1)
                      {
                        v341 = *v339;
                        if (*v339 == *v389)
                        {
                          break;
                        }

                        v339 += 8;
                        if (*v389 < v341 || v339 == v338)
                        {
                          goto LABEL_339;
                        }
                      }

                      if (v339 == v338)
                      {
LABEL_339:
                        v344 = gdc::Registry::storage<arComponents::IsVisible>(v190[15]);
                        gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v344, v340);
                        v345 = *v389;
                        v346 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::IsVisible>>(v190[15]);
                        gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v346, v345);
                      }

                      else
                      {
                        v343 = v338 - (v339 + 8);
                        if (v338 != v339 + 8)
                        {
                          memmove(v339, v339 + 8, v338 - (v339 + 8));
                        }

                        v190[17] = &v339[v343];
                      }

                      ++v313;
                    }

                    goto LABEL_238;
                  }
                }
              }
            }

            v221 = GEOGetVectorKitLabelExternalMeshLogicLog();
            if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
            {
              v222 = *v203;
              v223 = "ARFeatureShadow";
              if (!*(v203 + 4))
              {
                v223 = "ARArrival";
              }

              *v389 = 67109378;
              *&v389[4] = v222;
              *&v389[8] = 2080;
              *&v389[10] = v223;
              _os_log_impl(&dword_1B2754000, v221, OS_LOG_TYPE_ERROR, "Labels is still tracking a deleted external mesh entity (id:%d type:%s)", v389, 0x12u);
            }

            v225 = v190[16];
            v224 = v190[17];
            if (v225 != v224)
            {
              while (1)
              {
                v226 = *v225;
                if (*v225 == v206)
                {
                  break;
                }

                ++v225;
                if (v206 < v226 || v225 == v224)
                {
                  goto LABEL_238;
                }
              }

              if (v225 != v224)
              {
                v228 = v224 - (v225 + 1);
                if (v224 != v225 + 1)
                {
                  memmove(v225, v225 + 1, v224 - (v225 + 1));
                }

                v190[17] = v225 + v228;
              }
            }

LABEL_238:
            if (++v202 == v201)
            {
              v199 = v190[16];
              v347 = v190[17];
              goto LABEL_342;
            }
          }
        }

        v347 = v200;
LABEL_342:
        v348 = v190[15];
        if (v199 != v347)
        {
          do
          {
            v349 = *v199;
            v350 = gdc::Registry::storage<arComponents::RequiresUpdateInRenderLayer<arComponents::IsVisible>>(v348);
            gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v350, v349);
            ++v199;
          }

          while (v199 != v347);
          v348 = v190[15];
          v199 = v190[16];
          v347 = v190[17];
        }

        if (v199 != v347)
        {
          do
          {
            v351 = gdc::Registry::storage<arComponents::IsVisible>(v348);
            gdc::ComponentStorageWrapper<arComponents::IsVisible>::remove(v351, *v199++);
          }

          while (v199 != v347);
          v199 = v190[16];
        }

        v190[17] = v199;
        if (v379 != v381)
        {
          free(v379);
        }

        *v389 = buf;
        std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](v389);
      }
    }
  }
}