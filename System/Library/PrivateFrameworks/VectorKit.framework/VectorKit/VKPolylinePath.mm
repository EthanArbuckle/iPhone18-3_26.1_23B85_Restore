@interface VKPolylinePath
- (GEOComposedRouteSection)section;
- (Matrix<float,)convertCoordinateToTile:(id *)a3;
- (VKPolylinePath)initWithOverlay:(id)a3 section:(id)a4 matchedPathSegments:(id)a5;
- (VKPolylinePath)initWithOverlay:(id)a3 section:(id)a4 routeStartIndex:(unsigned int)a5 routeEndIndex:(unsigned int)a6 matchedPathSegments:(id)a7 elevationSource:(void *)a8 elevationSourceContext:(void *)a9;
- (id).cxx_construct;
- (id)description;
@end

@implementation VKPolylinePath

- (id).cxx_construct
{
  *(self + 84) = 0xBF80000000000000;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 92) = 0xBF80000000000000;
  return self;
}

- (GEOComposedRouteSection)section
{
  WeakRetained = objc_loadWeakRetained(&self->_section);

  return WeakRetained;
}

- (id)description
{
  if (self->_matchedPathSegments)
  {
    v2 = "yes";
  }

  else
  {
    v2 = "no";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<VKPolylinePath %p>: %f - %f, snappedPath:%s", self, (self->_routeStart.offset + self->_routeStart.index), (self->_routeEnd.offset + self->_routeEnd.index), v2];
}

- (Matrix<float,)convertCoordinateToTile:(id *)a3
{
  GEOMapPoint3DForCoordinate();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  WeakRetained = objc_loadWeakRetained(&self->_section);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained bounds];
    v13 = v24;
    v12 = v25;
    v14 = v26;
    v15 = v27;
    v17 = v28;
    v16 = v29;
  }

  else
  {
    v16 = 0.0;
    v14 = 0.0;
    v12 = 0.0;
    v17 = 0.0;
    v15 = 0.0;
    v13 = 0.0;
  }

  v18 = (v5 - v13) / v15;
  v19 = (v17 - v7 + v12) / v17;
  v20 = (v9 - v14) / v16;

  v21 = v18;
  v22 = v19;
  v23 = v20;
  result._e[2] = v23;
  result._e[1] = v22;
  result._e[0] = v21;
  return result;
}

- (VKPolylinePath)initWithOverlay:(id)a3 section:(id)a4 routeStartIndex:(unsigned int)a5 routeEndIndex:(unsigned int)a6 matchedPathSegments:(id)a7 elevationSource:(void *)a8 elevationSourceContext:(void *)a9
{
  v162 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v136 = v15;
  v137 = a7;
  v17 = [(VKPolylinePath *)self initWithOverlay:v15 section:v16 matchedPathSegments:?];
  v18 = v17;
  if (v17)
  {
    WeakRetained = objc_loadWeakRetained(&v17->_section);
    v20 = [WeakRetained composedRouteSegment];

    v134 = v20;
    v135 = [v20 composedRoute];
    v18->_routeStart.index = a5;
    v18->_routeStart.offset = 0.0;
    v18->_routeEnd.index = a6;
    v18->_routeEnd.offset = 0.0;
    if (v137)
    {
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v21 = v137;
      v22 = 0;
      v23 = [v21 countByEnumeratingWithState:&v156 objects:v161 count:16];
      if (v23)
      {
        v24 = *v157;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v157 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v22 += [*(*(&v156 + 1) + 8 * i) pointCount];
          }

          v23 = [v21 countByEnumeratingWithState:&v156 objects:v161 count:16];
        }

        while (v23);
      }

      std::vector<gm::Matrix<float,3,1>>::reserve(&v18->_points.__begin_, v22);
      std::vector<gdc::Entity>::reserve(&v18->_polylineCoordinates.__begin_, v22);
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      obj = v21;
      v140 = [obj countByEnumeratingWithState:&v152 objects:v160 count:16];
      if (v140)
      {
        v139 = *v153;
        if (a8)
        {
          v26 = a9 == 0;
        }

        else
        {
          v26 = 1;
        }

        v27 = !v26;
        do
        {
          for (j = 0; j != v140; ++j)
          {
            if (*v153 != v139)
            {
              objc_enumerationMutation(obj);
            }

            v28 = 0;
            v29 = *(*(&v152 + 1) + 8 * j);
            while (v28 < [v29 pointCount])
            {
              [v29 locationCoordinateAt:v28];
              v31 = v30;
              v33 = v32;
              v35 = v34;
              GEOMapPoint3DForCoordinate();
              v37 = v36;
              v39 = v38;
              v41 = v40;
              if (v16)
              {
                [v16 bounds];
                v42 = v146;
                v43 = v147;
                v44 = v148;
                v45 = v149;
                v47 = v150;
                v46 = v151;
              }

              else
              {
                v46 = 0.0;
                v44 = 0.0;
                v43 = 0.0;
                v47 = 0.0;
                v45 = 0.0;
                v42 = 0.0;
              }

              v48 = (v41 - v44) / v46;
              if (v27)
              {
                v142 = v45;
                v143 = v37;
                v49 = v39;
                v50 = v47;
                v146 = v31;
                v147 = v33;
                v148 = v35;
                v51 = (*(*a8 + 16))(a8, &v146, a9);
                if ((v51 & 0x100000000) != 0)
                {
                  v48 = *&v51;
                }

                v47 = v50;
                v39 = v49;
                v45 = v142;
                v37 = v143;
              }

              v52 = (v37 - v42) / v45;
              v53 = (v47 - v39 + v43) / v47;
              end = v18->_points.__end_;
              cap = v18->_points.__cap_;
              if (end >= cap)
              {
                begin = v18->_points.__begin_;
                v58 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 2);
                v59 = v58 + 1;
                if (v58 + 1 > 0x1555555555555555)
                {
                  goto LABEL_116;
                }

                v60 = 0xAAAAAAAAAAAAAAABLL * ((cap - begin) >> 2);
                if (2 * v60 > v59)
                {
                  v59 = 2 * v60;
                }

                if (v60 >= 0xAAAAAAAAAAAAAAALL)
                {
                  v61 = 0x1555555555555555;
                }

                else
                {
                  v61 = v59;
                }

                if (v61)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v61);
                }

                v62 = (12 * v58);
                *v62 = v52;
                v62[1] = v53;
                v62[2] = v48;
                v63 = v18->_points.__begin_;
                v64 = v18->_points.__end_;
                v65 = 12 * v58 + v63 - v64;
                if (v64 != v63)
                {
                  v66 = v62 + v63 - v64;
                  do
                  {
                    v67 = *v63;
                    *(v66 + 2) = *(v63 + 2);
                    *v66 = v67;
                    v66 += 12;
                    v63 += 12;
                  }

                  while (v63 != v64);
                  v63 = v18->_points.__begin_;
                }

                v56 = v62 + 3;
                v18->_points.__begin_ = v65;
                v18->_points.__end_ = v62 + 3;
                v18->_points.__cap_ = 0;
                if (v63)
                {
                  operator delete(v63);
                }
              }

              else
              {
                *end = v52;
                end[1] = v53;
                v56 = end + 3;
                end[2] = v48;
              }

              v18->_points.__end_ = v56;
              v68 = [v29 routeCoordinateAt:v28];
              v69 = v68;
              v70 = HIDWORD(v68);
              v71 = *(&v68 + 1);
              v72 = v18->_polylineCoordinates.__end_;
              v73 = v18->_polylineCoordinates.__cap_;
              if (v72 >= v73)
              {
                v75 = v18->_polylineCoordinates.__begin_;
                v76 = v72 - v75;
                v77 = v76 + 1;
                if ((v76 + 1) >> 61)
                {
                  goto LABEL_115;
                }

                v78 = v73 - v75;
                if (v78 >> 2 > v77)
                {
                  v77 = v78 >> 2;
                }

                if (v78 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v79 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v79 = v77;
                }

                if (v79)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v79);
                }

                v80 = (8 * v76);
                v80->index = v69;
                LODWORD(v80->offset) = v70;
                if (v71 >= 1.0)
                {
                  v80->index = vcvtms_u32_f32(v71) + v69;
                  *(8 * v76 + 4) = v71 - floorf(v71);
                }

                v74 = v80 + 1;
                v81 = v18->_polylineCoordinates.__begin_;
                v82 = v18->_polylineCoordinates.__end_ - v81;
                v83 = (v80 - v82);
                memcpy(v80 - v82, v81, v82);
                v84 = v18->_polylineCoordinates.__begin_;
                v18->_polylineCoordinates.__begin_ = v83;
                v18->_polylineCoordinates.__end_ = v74;
                v18->_polylineCoordinates.__cap_ = 0;
                if (v84)
                {
                  operator delete(v84);
                }
              }

              else
              {
                *v72 = v68;
                if (*(&v68 + 1) >= 1.0)
                {
                  v72->index = vcvtms_u32_f32(*(&v68 + 1)) + v68;
                  v72->offset = *(&v68 + 1) - floorf(*(&v68 + 1));
                }

                v74 = v72 + 1;
              }

              v18->_polylineCoordinates.__end_ = v74;
              ++v28;
            }
          }

          v140 = [obj countByEnumeratingWithState:&v152 objects:v160 count:16];
        }

        while (v140);
      }
    }

    else
    {
      v85 = [v16 startPointIndex];
      v86 = a6 - a5 + 1;
      std::vector<gm::Matrix<float,3,1>>::reserve(&v18->_points.__begin_, v86);
      std::vector<gdc::Entity>::reserve(&v18->_polylineCoordinates.__begin_, v86);
      if (a6 - a5 != -1)
      {
        v87 = 0;
        v88 = a5 - v85;
        if (a8)
        {
          v89 = a9 == 0;
        }

        else
        {
          v89 = 1;
        }

        v90 = !v89;
        v144 = a5 - v85;
        do
        {
          v91 = [v16 points] + 12 * (v88 + v87);
          v93 = *v91;
          v92 = *(v91 + 4);
          v94 = *(v91 + 8);
          if (v90)
          {
            if (v16)
            {
              [v16 bounds];
            }

            GEOCoordinate3DForMapPoint();
            v96 = v95;
            v146 = v97;
            v147 = v98;
            v148 = v95;
            v99 = (*(*a8 + 16))(a8, &v146, a9);
            if ((v99 & 0x100000000) != 0)
            {
              v100 = *&v99;
            }

            else
            {
              v100 = v96;
            }

            if (v16)
            {
              [v16 bounds];
              v101 = v148;
              [v16 bounds];
              v102 = v145;
            }

            else
            {
              v102 = 0.0;
              v101 = 0.0;
            }

            v94 = (v100 - v101) / v102;
          }

          v104 = v18->_points.__end_;
          v103 = v18->_points.__cap_;
          if (v104 >= v103)
          {
            v106 = v18->_points.__begin_;
            v107 = 0xAAAAAAAAAAAAAAABLL * ((v104 - v106) >> 2);
            v108 = v107 + 1;
            if (v107 + 1 > 0x1555555555555555)
            {
LABEL_116:
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v109 = 0xAAAAAAAAAAAAAAABLL * ((v103 - v106) >> 2);
            if (2 * v109 > v108)
            {
              v108 = 2 * v109;
            }

            if (v109 >= 0xAAAAAAAAAAAAAAALL)
            {
              v110 = 0x1555555555555555;
            }

            else
            {
              v110 = v108;
            }

            if (v110)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v110);
            }

            v111 = 12 * v107;
            *v111 = v93;
            *(v111 + 4) = v92;
            *(v111 + 8) = v94;
            v112 = v18->_points.__begin_;
            v113 = v18->_points.__end_;
            v114 = 12 * v107 + v112 - v113;
            if (v113 != v112)
            {
              v115 = (v111 + v112 - v113);
              do
              {
                v116 = *v112;
                *(v115 + 2) = *(v112 + 2);
                *v115 = v116;
                v115 += 12;
                v112 += 12;
              }

              while (v112 != v113);
              v112 = v18->_points.__begin_;
            }

            v105 = v111 + 12;
            v18->_points.__begin_ = v114;
            v18->_points.__end_ = (v111 + 12);
            v18->_points.__cap_ = 0;
            if (v112)
            {
              operator delete(v112);
            }
          }

          else
          {
            *v104 = v93;
            *(v104 + 1) = v92;
            v105 = (v104 + 12);
            *(v104 + 2) = v94;
          }

          v18->_points.__end_ = v105;
          v117 = v87 + a5;
          v119 = v18->_polylineCoordinates.__end_;
          v118 = v18->_polylineCoordinates.__cap_;
          if (v119 >= v118)
          {
            v121 = v18->_polylineCoordinates.__begin_;
            v122 = v119 - v121;
            v123 = (v119 - v121) >> 3;
            v124 = v123 + 1;
            if ((v123 + 1) >> 61)
            {
LABEL_115:
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v125 = v118 - v121;
            if (v125 >> 2 > v124)
            {
              v124 = v125 >> 2;
            }

            if (v125 >= 0x7FFFFFFFFFFFFFF8)
            {
              v126 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v126 = v124;
            }

            if (v126)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v126);
            }

            v127 = v123;
            v128 = (8 * v123);
            *v128 = v117;
            v128[1] = 0;
            v120 = 8 * v123 + 8;
            v129 = &v128[-2 * v127];
            memcpy(v129, v121, v122);
            v130 = v18->_polylineCoordinates.__begin_;
            v18->_polylineCoordinates.__begin_ = v129;
            v18->_polylineCoordinates.__end_ = v120;
            v18->_polylineCoordinates.__cap_ = 0;
            if (v130)
            {
              operator delete(v130);
            }

            v88 = v144;
          }

          else
          {
            *v119 = v117;
            *(v119 + 1) = 0;
            v120 = (v119 + 8);
          }

          v18->_polylineCoordinates.__end_ = v120;
          ++v87;
        }

        while (v87 != v86);
      }
    }

    [v16 lengthScaleFactor];
    v18->_sectionLengthScaleFactor = v131;
    [v135 stepDistanceFromPoint:0 toPoint:*&v18->_routeStart];
    v18->_startDistance = v132;
  }

  return v18;
}

- (VKPolylinePath)initWithOverlay:(id)a3 section:(id)a4 matchedPathSegments:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = VKPolylinePath;
  v11 = [(VKPolylinePath *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_gradientTraffic.blend = 0.0;
    *&v11->_gradientTraffic.start = 771;
    objc_storeWeak(&v11->_overlay, v8);
    objc_storeWeak(&v12->_section, v9);
    v12->_startDistance = -1.0;
    objc_storeStrong(&v12->_matchedPathSegments, a5);
  }

  return v12;
}

@end