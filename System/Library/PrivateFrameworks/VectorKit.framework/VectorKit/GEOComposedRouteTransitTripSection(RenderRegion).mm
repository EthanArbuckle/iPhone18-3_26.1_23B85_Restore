@interface GEOComposedRouteTransitTripSection(RenderRegion)
- (id)pathsForRenderRegion:()RenderRegion inOverlay:shouldSnapToTransit:verifySnapping:;
- (id)unsnappedPathsInOverlay:()RenderRegion;
- (uint64_t)_getEndPoints:()RenderRegion rect:result:;
- (uint64_t)_validateSnappedPaths:()RenderRegion snappedTileBounds:overlay:;
@end

@implementation GEOComposedRouteTransitTripSection(RenderRegion)

- (id)unsnappedPathsInOverlay:()RenderRegion
{
  v4 = a3;
  v5 = _unsnappedPaths(*&a1[*MEMORY[0x1E69A2798]], *&a1[*MEMORY[0x1E69A2790]], v4, a1, [a1 lineID]);

  return v5;
}

- (id)pathsForRenderRegion:()RenderRegion inOverlay:shouldSnapToTransit:verifySnapping:
{
  v9 = a3;
  v192 = a4;
  v10 = &a1[*MEMORY[0x1E69A2780]];
  v195 = a1;
  v11 = &a1[*MEMORY[0x1E69A2788]];
  v12 = *(v10 + 24);
  *v11 = *v10;
  *(v11 + 1) = v12;
  v189 = v11;
  v191 = v9;
  if (!a5)
  {
    goto LABEL_166;
  }

  v227 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v228 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v13 = [v9 routeLineDatas];
  v14 = *v13;
  v193 = v13 + 1;
  if (*v13 != v13 + 1)
  {
    do
    {
      v196 = v14;
      v15 = *(v14[4] + 776);
      if (v15)
      {
        v204 = *(v15 + 1352);
        v202 = geo::codec::VectorTile::transitLinkCount(v204, *(v15 + 1360));
        if (v202)
        {
          v16 = 0;
          v200 = &v195[*MEMORY[0x1E69A27A8]];
          v198 = &v195[*MEMORY[0x1E69A27B0]];
          while (1)
          {
            v206 = v16;
            v17 = v204 + 184 * v16;
            if (*(v17 + 20))
            {
              v19 = *v200;
              v18 = v200[1];
              v20 = v200[2];
              v211 = *v198;
              v221 = v198[1];
              v21 = v198[2];
              LineCount = geo::codec::transitLinkGetLineCount(v17);
              if (LineCount)
              {
                v22 = 0;
                v213 = v17 + 152;
                v215 = v17 + 120;
                v217 = v17;
                while (1)
                {
                  v23 = geo::codec::transitLinkGetFromNodeID(v17, v22);
                  v24 = geo::codec::transitLinkGetToNodeID(v17, v22);
                  v219 = v22;
                  LineDirection = geo::codec::transitLinkGetLineDirection(v17, v22);
                  v26 = LineDirection;
                  if (LineDirection > 1)
                  {
                    v29 = 0;
                    v33 = 0;
                    v30 = v211;
                  }

                  else
                  {
                    _ZF = v19 == v23 || v18 == v23;
                    v29 = _ZF || v20 == v23;
                    v30 = v211;
                    v33 = v211 == v24 || v221 == v24 || v21 == v24;
                    if (v29 == 1 && v33)
                    {
                      break;
                    }
                  }

                  v34 = LineDirection & 0xFFFFFFFD;
                  if ((LineDirection & 0xFFFFFFFD) != 0)
                  {
                    LOBYTE(v35) = 0;
                    v36 = 0;
                  }

                  else
                  {
                    v35 = v19 == v24 || v18 == v24 || v20 == v24;
                    v36 = v30 == v23 || v221 == v23 || v21 == v23;
                    if (v35 && v36)
                    {
                      break;
                    }
                  }

                  if (((v29 | v33) & 1) != 0 || v35 || v36)
                  {
                    v41 = v217[1];
                    if (v41 && (v41 = std::__shared_weak_count::lock(v41)) != 0)
                    {
                      v42 = *v217;
                    }

                    else
                    {
                      v42 = 0;
                    }

                    v43 = 0;
                    v44 = 1;
                    while (1)
                    {
                      v45 = v44;
                      v46 = (v215 + 16 * v43);
                      v47 = v46[1];
                      if (v47)
                      {
                        break;
                      }

LABEL_102:
                      v59 = (v213 + 16 * v43);
                      v60 = v59[1];
                      if (v60)
                      {
                        v61 = (*(v42 + 1800) + 8 * *v59);
                        do
                        {
                          v63 = *v61++;
                          v62 = v63;
                          if (v45)
                          {
                            v64 = v24;
                          }

                          else
                          {
                            v64 = v62;
                          }

                          if ((v45 & 1) == 0)
                          {
                            v62 = v23;
                          }

                          if (v26 <= 1)
                          {
                            v65 = v19 == v62 || v18 == v62;
                            if (v65 || v20 == v62)
                            {
                              v67 = v30 == v64 || v221 == v64;
                              if (v67 || v21 == v64)
                              {
                                goto LABEL_148;
                              }
                            }
                          }

                          if (!v34)
                          {
                            v69 = v19 == v64 || v18 == v64;
                            if (v69 || v20 == v64)
                            {
                              v71 = v30 == v62 || v221 == v62;
                              if (v71 || v21 == v62)
                              {
                                goto LABEL_148;
                              }
                            }
                          }
                        }

                        while (--v60);
                      }

                      v44 = 0;
                      v43 = 1;
                      if ((v45 & 1) == 0)
                      {
                        if (!v41)
                        {
                          goto LABEL_145;
                        }

                        goto LABEL_144;
                      }
                    }

                    v48 = (*(v42 + 1416) + 344 * *v46 + 40);
                    while (1)
                    {
                      v49 = *v48;
                      if (v45)
                      {
                        v50 = v24;
                      }

                      else
                      {
                        v50 = *v48;
                      }

                      if ((v45 & 1) == 0)
                      {
                        v49 = v23;
                      }

                      if (v26 <= 1)
                      {
                        v51 = v19 == v49 || v18 == v49;
                        if (v51 || v20 == v49)
                        {
                          v53 = v30 == v50 || v221 == v50;
                          if (v53 || v21 == v50)
                          {
                            break;
                          }
                        }
                      }

                      if (!v34)
                      {
                        v55 = v19 == v50 || v18 == v50;
                        if (v55 || v20 == v50)
                        {
                          v57 = v30 == v49 || v221 == v49;
                          if (v57 || v21 == v49)
                          {
                            break;
                          }
                        }
                      }

                      v48 += 43;
                      if (!--v47)
                      {
                        goto LABEL_102;
                      }
                    }

LABEL_148:
                    LODWORD(v43) = 0;
                    if (v41)
                    {
LABEL_144:
                      std::__shared_weak_count::__release_shared[abi:nn200100](v41);
                    }

LABEL_145:
                    if (!v43)
                    {
                      break;
                    }
                  }

                  v17 = v217;
                  v22 = v219 + 1;
                  if (v219 + 1 == LineCount)
                  {
                    goto LABEL_151;
                  }
                }

                v226 = 0;
                geo::codec::transitLinkPoints(v217, 0, &v226);
                if (v226 > 1)
                {
                  break;
                }
              }
            }

LABEL_151:
            v16 = v206 + 1;
            if (v206 + 1 == v202)
            {
              goto LABEL_152;
            }
          }

          v76 = 0;
          v77 = v196[4];
          v78 = *(v77 + 169);
          v79 = *(v77 + 172);
          v80 = *(v77 + 176);
          v81 = 1;
          v82 = 1 << v78;
          v83 = 1.0 / v82;
          *&v223 = v83 * v80;
          v224 = v83 * (v82 + ~v79);
          v225[0] = v83 * v80 + v83;
          v225[1] = v224 + v83;
          v84 = &v227;
          v85 = &v223;
          do
          {
            v86 = v81;
            v87 = *v85;
            v88 = v84->f64[0];
            v228.f64[v76] = fmax(v228.f64[v76], v225[v76]);
            v84->f64[0] = fmin(v87, v88);
            v85 = &v224;
            v84 = &v227.f64[1];
            v76 = 1;
            v81 = 0;
          }

          while ((v86 & 1) != 0);
        }
      }

LABEL_152:
      v73 = v196;
      v74 = v196[1];
      if (v74)
      {
        do
        {
          v75 = v74;
          v74 = *v74;
        }

        while (v74);
      }

      else
      {
        do
        {
          v75 = v73[2];
          _ZF = *v75 == v73;
          v73 = v75;
        }

        while (!_ZF);
      }

      v14 = v75;
    }

    while (v75 != v193);
  }

  v89 = 0;
  v90 = 0;
  v91 = &v227;
  do
  {
    v92 = v228.f64[v90];
    v93 = v91->f64[0];
    if (v89)
    {
      break;
    }

    v89 = 1;
    v91 = &v227.f64[1];
    v90 = 1;
  }

  while (v92 >= v93);
  if (v92 < v93)
  {
LABEL_166:
    v94 = 0;
    goto LABEL_335;
  }

  v197 = [MEMORY[0x1E695DF70] array];
  v95 = [v191 routeLineDatas];
  v98 = *v95;
  v96 = v95 + 1;
  v97 = v98;
  if (v98 != v96)
  {
    __asm { FMOV            V9.2S, #1.0 }

    v194 = v96;
    do
    {
      v199 = v97[4];
      v201 = v97;
      v103 = *(v199 + 776);
      if (!v103)
      {
        goto LABEL_324;
      }

      v208 = *(v103 + 1352);
      v207 = geo::codec::VectorTile::transitLinkCount(v208, *(v103 + 1360));
      if (!v207)
      {
        goto LABEL_324;
      }

      v104 = 0;
      v205 = &v195[*MEMORY[0x1E69A27A8]];
      v203 = &v195[*MEMORY[0x1E69A27B0]];
      do
      {
        v209 = v104;
        v105 = v208 + 184 * v104;
        if (!*(v105 + 20))
        {
          goto LABEL_323;
        }

        v107 = *v205;
        v106 = v205[1];
        v108 = v205[2];
        v109 = v203[1];
        v222 = *v203;
        v110 = v203[2];
        v212 = geo::codec::transitLinkGetLineCount(v208 + 184 * v104);
        if (!v212)
        {
          goto LABEL_323;
        }

        v111 = 0;
        v214 = v105 + 152;
        v216 = v105 + 120;
        v218 = v105;
        while (1)
        {
          v112 = geo::codec::transitLinkGetFromNodeID(v105, v111);
          v113 = geo::codec::transitLinkGetToNodeID(v105, v111);
          v220 = v111;
          v114 = geo::codec::transitLinkGetLineDirection(v105, v111);
          v115 = v114;
          if (v114 > 1)
          {
            v118 = 0;
            v121 = 0;
          }

          else
          {
            v118 = v107 == v112 || v106 == v112 || v108 == v112;
            v121 = v222 == v113 || v109 == v113 || v110 == v113;
            if (v118 && v121)
            {
              v162 = 1;
              goto LABEL_320;
            }
          }

          v122 = v114 & 0xFFFFFFFD;
          if ((v114 & 0xFFFFFFFD) != 0)
          {
            LOBYTE(v123) = 0;
            v124 = 0;
            goto LABEL_220;
          }

          v125 = v107 == v113 || v106 == v113;
          v126 = v125 || v108 == v113;
          v123 = v126;
          v127 = v222 == v112 || v109 == v112;
          v128 = v127 || v110 == v112;
          v124 = v128;
          if (v123 && v124)
          {
            break;
          }

LABEL_220:
          if (v118 || v121 || v123 || v124)
          {
            v129 = v218[1];
            if (v129 && (v129 = std::__shared_weak_count::lock(v129)) != 0)
            {
              v130 = *v218;
            }

            else
            {
              v130 = 0;
            }

            v131 = 0;
            v132 = 1;
            while (1)
            {
              v133 = v132;
              v134 = (v216 + 16 * v131);
              v135 = v134[1];
              if (v135)
              {
                break;
              }

LABEL_269:
              v147 = (v214 + 16 * v131);
              v148 = v147[1];
              if (v148)
              {
                v149 = (*(v130 + 1800) + 8 * *v147);
                do
                {
                  v151 = *v149++;
                  v150 = v151;
                  if (v133)
                  {
                    v152 = v113;
                  }

                  else
                  {
                    v152 = v150;
                  }

                  if ((v133 & 1) == 0)
                  {
                    v150 = v112;
                  }

                  if (v115 <= 1)
                  {
                    v153 = v107 == v150 || v106 == v150;
                    if (v153 || v108 == v150)
                    {
                      v155 = v222 == v152 || v109 == v152;
                      if (v155 || v110 == v152)
                      {
                        goto LABEL_311;
                      }
                    }
                  }

                  if (!v122)
                  {
                    v157 = v107 == v152 || v106 == v152;
                    if (v157 || v108 == v152)
                    {
                      v159 = v222 == v150 || v109 == v150;
                      if (v159 || v110 == v150)
                      {
                        goto LABEL_312;
                      }
                    }
                  }
                }

                while (--v148);
              }

              v132 = 0;
              v131 = 1;
              if ((v133 & 1) == 0)
              {
                goto LABEL_314;
              }
            }

            v136 = (*(v130 + 1416) + 344 * *v134 + 40);
            while (1)
            {
              v137 = *v136;
              if (v133)
              {
                v138 = v113;
              }

              else
              {
                v138 = *v136;
              }

              if ((v133 & 1) == 0)
              {
                v137 = v112;
              }

              if (v115 <= 1)
              {
                v139 = v107 == v137 || v106 == v137;
                if (v139 || v108 == v137)
                {
                  v141 = v222 == v138 || v109 == v138;
                  if (v141 || v110 == v138)
                  {
                    break;
                  }
                }
              }

              if (!v122)
              {
                v143 = v107 == v138 || v106 == v138;
                if (v143 || v108 == v138)
                {
                  v145 = v222 == v137 || v109 == v137;
                  if (v145 || v110 == v137)
                  {
LABEL_312:
                    LODWORD(v131) = 0;
                    v161 = 2;
                    goto LABEL_313;
                  }
                }
              }

              v136 += 43;
              if (!--v135)
              {
                goto LABEL_269;
              }
            }

LABEL_311:
            LODWORD(v131) = 0;
            v161 = 1;
LABEL_313:
            LODWORD(LineCount) = v161;
LABEL_314:
            v105 = v218;
            if (v129)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v129);
            }

            if (!v131)
            {
              goto LABEL_321;
            }
          }

          else
          {
            v105 = v218;
          }

          v111 = v220 + 1;
          if (v220 + 1 == v212)
          {
            goto LABEL_323;
          }
        }

        v162 = 2;
LABEL_320:
        LODWORD(LineCount) = v162;
        v105 = v218;
LABEL_321:
        v226 = 0;
        v163 = geo::codec::transitLinkPoints(v105, 0, &v226);
        v164 = v226;
        if (v226 >= 2)
        {
          v165 = v163;
          v166 = v201[4];
          v167 = 1 << *(v166 + 169);
          v168.i64[0] = *(v166 + 176);
          v168.i64[1] = v167 + ~*(v166 + 172);
          v223 = vdiv_f32(_D9, vcvt_f32_f64(vmulq_n_f64(vsubq_f64(v228, v227), v167)));
          v224 = COERCE_DOUBLE(vmul_f32(v223, vcvt_f32_f64(vmulq_n_f64(vmlaq_n_f64(vnegq_f64(v227), vcvtq_f64_s64(v168), 1.0 / v167), v167))));
          v169 = [VKTransitPolylinePath alloc];
          v170 = [v195 startPointIndex];
          v171 = [v195 endPointIndex];
          v172 = [v195 lineID];
          v173 = *(v199 + 776);
          v174 = *(v173 + 176);
          v175 = geo::codec::VectorTile::key(v173);
          BYTE4(v188) = *v174;
          LODWORD(v188) = *(v175 + 1) & 0x3F;
          v176 = [(VKTransitPolylinePath *)v169 initWithOverlay:v192 section:v195 points:v165 pointCount:v164 reversePoints:LineCount == 2 transform:&v223 routeStartIndex:__PAIR64__(v171 routeEndIndex:v170) lineID:v172 tileZ:v188 vertexPrecision:?];
          [v197 addObject:v176];
        }

LABEL_323:
        v104 = v209 + 1;
      }

      while (v209 + 1 != v207);
LABEL_324:
      v177 = v201;
      v178 = v201[1];
      if (v178)
      {
        do
        {
          v179 = v178;
          v178 = *v178;
        }

        while (v178);
      }

      else
      {
        do
        {
          v179 = v177[2];
          _ZF = *v179 == v177;
          v177 = v179;
        }

        while (!_ZF);
      }

      v97 = v179;
    }

    while (v179 != v194);
  }

  if ((a6 & 1) != 0 && ([v195 _validateSnappedPaths:v197 snappedTileBounds:&v227 overlay:v192] & 1) == 0)
  {
    v94 = 0;
    v186 = v197;
  }

  else
  {
    v180 = *(MEMORY[0x1E69A1688] + 16);
    _V2.D[1] = v228.f64[1];
    v182 = *&vmulq_f64(v180, v227);
    _D4 = *(MEMORY[0x1E69A1688] + 24);
    __asm { FMLS            D4, D4, V2.D[1] }

    v185 = vmulq_f64(vsubq_f64(v228, v227), v180);
    *v189 = v182;
    *(v189 + 1) = _D4;
    *(v189 + 1) = v185;
    v186 = v197;
    v94 = v197;
  }

LABEL_335:

  return v94;
}

- (uint64_t)_validateSnappedPaths:()RenderRegion snappedTileBounds:overlay:
{
  v60 = *MEMORY[0x1E69E9840];
  v38 = a3;
  v36 = a5;
  v7 = [a1 unsnappedPathsInOverlay:?];
  v8 = &a1[*MEMORY[0x1E69A2780]];
  v9 = v8[1];
  v10 = *(MEMORY[0x1E69A1688] + 16);
  v11 = *(MEMORY[0x1E69A1688] + 24);
  v12 = 1.0 - (v8[4] + v9) / v11;
  v13 = (v8[3] + *v8) / v10;
  v56[0] = *v8 / v10;
  v56[1] = v12;
  v56[2] = v13;
  v56[3] = 1.0 - v9 / v11;
  v37 = v7;
  if (([a1 _getEndPoints:v7 rect:v56 result:v57] & 1) == 0)
  {
    ConnectedPath = 0;
    goto LABEL_58;
  }

  v52 = v57[0];
  v53 = &v52;
  v54 = v57[1];
  v55 = &v52;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v14 = [v38 count];
  if (v14)
  {
    if (!(v14 >> 61))
    {
      v58[4] = &v49;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v14);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v15 = 2 * [v38 count];
  if (v15)
  {
    if (!(v15 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v15);
    }

LABEL_59:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v38;
  v17 = [obj countByEnumeratingWithState:&v42 objects:v59 count:16];
  if (v17)
  {
    v40 = *v43;
    __src = 0;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v43 != v40)
        {
          objc_enumerationMutation(obj);
        }

        if ([*(*(&v42 + 1) + 8 * i) pointCount])
        {
          operator new();
        }
      }

      v17 = [obj countByEnumeratingWithState:&v42 objects:v59 count:16];
    }

    while (v17);
  }

  else
  {
    __src = 0;
  }

  if (v49 != v50)
  {
    std::__introsort<std::_ClassicAlgPolicy,PointInfoSorterByX &,PointInfo **,false>(0, 0, 0, 1);
    v58[0] = 0;
    v19 = v46;
    v20 = v47;
    __src = v46;
    v21 = &v52;
    if (v46 == v47)
    {
LABEL_41:
      if (v20 >= v48)
      {
        v29 = (v20 - v19) >> 3;
        v30 = v29 + 1;
        if ((v29 + 1) >> 61)
        {
          goto LABEL_59;
        }

        v31 = v48 - v19;
        if ((v48 - v19) >> 2 > v30)
        {
          v30 = v31 >> 2;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFF8)
        {
          v32 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v30;
        }

        if (v32)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v32);
        }

        v33 = v20 - __src;
        v34 = (8 * v29 - (v20 - __src));
        *(8 * v29) = &v54;
        v28 = 8 * v29 + 8;
        memcpy(v34, __src, v33);
        v46 = v34;
        v47 = v28;
        v48 = 0;
        if (__src)
        {
          operator delete(__src);
        }
      }

      else
      {
        *v20 = &v54;
        v28 = (v20 + 8);
      }

      v47 = v28;
      ConnectedPath = findConnectedPath(&v46, v21, v58, 0.0000001);
      __src = v46;
      goto LABEL_55;
    }

    v19 = v47;
    while (findConnectedPath(&v46, v21, v58, 0.0000001))
    {
      v22 = *(v58[0] + 2);
      if (v58[0] == v22)
      {
        v23 = 3;
      }

      else
      {
        v23 = 0;
      }

      v24 = __src;
      if (__src != v19)
      {
        v25 = __src;
        while (1)
        {
          v26 = *v25++;
          if (*(v26 + 16) == v22)
          {
            break;
          }

          v24 = v25;
          if (v25 == v19)
          {
            goto LABEL_40;
          }
        }

        if (v25 != v19)
        {
          v27 = v24 + 1;
          do
          {
            if (*(*v27 + 2) != v22)
            {
              *v24++ = *v27;
            }

            ++v27;
          }

          while (v27 != v19);
          v19 = v47;
          __src = v46;
        }

        if (v24 != v19)
        {
          v19 = v24;
          v47 = v24;
        }
      }

LABEL_40:
      v21 = &v22[v23];
      v20 = v19;
      if (__src == v19)
      {
        goto LABEL_41;
      }
    }
  }

  ConnectedPath = 0;
LABEL_55:
  if (__src)
  {
    v47 = __src;
    operator delete(__src);
  }

  v58[0] = &v49;
  std::vector<std::unique_ptr<PathInfo>>::__destroy_vector::operator()[abi:nn200100](v58);
LABEL_58:

  return ConnectedPath;
}

- (uint64_t)_getEndPoints:()RenderRegion rect:result:
{
  v7 = a3;
  v8 = [v7 count];
  if (v8)
  {
    v9 = 0;
    v10 = v8 - 1;
    v11 = 1;
    while (1)
    {
      v12 = (v11 & 1) != 0 ? 0 : v10;
      v13 = [v7 objectAtIndex:v12];
      v14 = [v13 pointCount];
      if (!v14)
      {
        break;
      }

      v15 = [v13 points];
      v16 = v14 - 1;
      v17 = v11 & 1;
      if (v11)
      {
        v16 = 0;
      }

      v18 = (v15 + 12 * v16);
      v19 = v18[1];
      v20 = *a4 + (a4[2] - *a4) * *v18;
      v21 = (a5 + 16 * v9);
      *v21 = v20;
      v21[1] = a4[1] + (a4[3] - a4[1]) * v19;

      v11 = 0;
      v9 = 1;
      if (!v17)
      {
        goto LABEL_13;
      }
    }
  }

  v9 = 0;
LABEL_13:

  return v9;
}

@end