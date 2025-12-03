@interface VKDrivingPolylinePath
+ (void)updateDistances:(void *)distances forPath:(id)path snap:(BOOL)snap;
- (VKDrivingPolylinePath)initWithOverlay:(id)overlay section:(id)section routeStartIndex:(unsigned int)index routeEndIndex:(unsigned int)endIndex matchedPathSegments:(id)segments elevationSource:(void *)source elevationSourceContext:(void *)context;
- (const)gradientTrafficAtIndex:(unsigned int)index;
- (float)laneHalfWidthAtIndex:(unsigned int)index;
- (id).cxx_construct;
- (unint64_t)splitGradientTrafficSegmentationAndAddTo:with:shouldSnap:;
- (void)assignPoints:(void *)points count:(unint64_t)count;
- (void)assignPoints:(void *)points laneHalfWidths:(float *)widths gradientTraffics:(GradientTraffic *)traffics polylineCoordinates:(PolylineCoordinate *)coordinates count:(unint64_t)count;
- (void)assignTo:(id)to withSegment:(const TrafficSegment *)segment;
- (void)setTrafficSpeed:(unsigned __int8)speed;
- (void)splitGradientTrafficSegmentationAndAddTo:(id)to with:(void *)with shouldSnap:(BOOL)snap;
@end

@implementation VKDrivingPolylinePath

- (id).cxx_construct
{
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 18) = 0;
  *(self + 22) = 0;
  *(self + 23) = 0;
  *(self + 21) = 0;
  *(self + 25) = 0;
  *(self + 26) = 0;
  *(self + 24) = 0;
  return self;
}

- (void)splitGradientTrafficSegmentationAndAddTo:(id)to with:(void *)with shouldSnap:(BOOL)snap
{
  selfCopy = self;
  v180[0] = self;
  toCopy = to;
  v6 = +[VKDebugSettings sharedSettings];
  [v6 routeTrafficTransitionDistance];
  v8 = v7 * 0.5;

  v9 = 0;
  v177 = 0;
  v10 = 0;
  v178 = 0;
  __p = 0;
  v11 = 0;
  LODWORD(v12) = 0;
  v13 = 0.0;
  v14 = 0.5;
  for (i = 0x1EB7F5000uLL; ; i = 0x1EB7F5000)
  {
    v16 = v11;
    v17 = *with;
    v18 = (*(with + 1) - *with) >> 3;
    v19 = v18 - 1;
    do
    {
      if (v19 <= v12)
      {
        goto LABEL_130;
      }

      v20 = v12;
      if (v18 <= v12)
      {
        goto LABEL_164;
      }

      v12 = (v12 + 1);
      if (v18 <= v12)
      {
        goto LABEL_164;
      }

      v21 = v13;
      v22 = *(v17 + 8 * v20);
      v13 = v22;
      v23 = v22;
      v24 = fmin((v8 + v22), v22 + (*(v17 + 8 * v12) - v22) * v14);
      v25 = *(i + 3892);
      v26 = *(&selfCopy->super.super.isa + v25);
      v27 = *(v26 + 8 * v11);
    }

    while (v27 > v24);
    v170 = v17 + 8 * v20;
    v28 = fmax((v23 - v8), v21 + (v13 - v21) * v14);
    v29 = (*(&selfCopy->super._overlay + v25) - v26) >> 3;
    if (v29 > v11 && v27 < v28)
    {
      while (1)
      {
        begin = selfCopy->_laneHalfWidths.__begin_;
        v31 = begin == selfCopy->_laneHalfWidths.__end_ ? 0 : LODWORD(begin[v16]);
        v32 = selfCopy->super._points.__begin_ + 12 * v16;
        v167 = *(v170 + 4);
        v165 = selfCopy->super._polylineCoordinates.__begin_;
        v172 = v11;
        v33 = 0xAAAAAAAAAAAAAAABLL * ((v9 - __p) >> 2) + 1;
        if (v33 > 0x1555555555555555)
        {
          break;
        }

        if (0x5555555555555556 * (-__p >> 2) > v33)
        {
          v33 = 0x5555555555555556 * (-__p >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-__p >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v34 = 0x1555555555555555;
        }

        else
        {
          v34 = v33;
        }

        if (v34)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v34);
        }

        v35 = 4 * ((v9 - __p) >> 2);
        v36 = *v32;
        *(v35 + 8) = *(v32 + 8);
        *v35 = v36;
        v37 = v35 + 12 * ((v9 - __p) / -12);
        if (__p != v9)
        {
          v38 = __p;
          v39 = 4 * ((v9 - __p) >> 2) + 12 * ((v9 - __p) / -12);
          do
          {
            v40 = *v38;
            *(v39 + 8) = *(v38 + 8);
            *v39 = v40;
            v39 += 12;
            v38 += 12;
          }

          while (v38 != v9);
        }

        v9 = (v35 + 12);
        if (__p)
        {
          operator delete(__p);
          selfCopy = v180[0];
        }

        __p = v37;
        if (selfCopy->_laneHalfWidths.__begin_ != selfCopy->_laneHalfWidths.__end_)
        {
          v41 = v10;
          v42 = v10 >> 2;
          if (((v10 >> 2) + 1) >> 62)
          {
            goto LABEL_168;
          }

          if (v10 >> 2 != -1)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>((v10 >> 2) + 1);
          }

          *(4 * v42) = v31;
          v10 = 4 * v42 + 4;
          memcpy(0, 0, v41);
        }

        v43 = v177;
        v44 = v177 >> 3;
        if (((v177 >> 3) + 1) >> 61)
        {
          goto LABEL_166;
        }

        if (v177 >> 3 != -1)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<gss::StyleAttribute,unsigned short>>>((v177 >> 3) + 1);
        }

        v45 = 8 * v44;
        *v45 = 0;
        *(v45 + 4) = v167;
        *(v45 + 5) = v167;
        v177 = 8 * v44 + 8;
        memcpy(0, 0, v43);
        v46 = v178;
        v47 = v178 >> 3;
        if (((v178 >> 3) + 1) >> 61)
        {
          goto LABEL_165;
        }

        if (v178 >> 3 != -1)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>((v178 >> 3) + 1);
        }

        *(8 * v47) = v165[v16];
        v178 = 8 * v47 + 8;
        memcpy(0, 0, v46);
        v11 = v172 + 1;
        v16 = v172 + 1;
        selfCopy = v180[0];
        v26 = *(v180[0] + v25);
        v29 = (*(v180[0] + v25 + 8) - v26) >> 3;
        if (v29 <= v16 || *(v26 + 8 * v11) >= v28)
        {
          goto LABEL_38;
        }
      }

LABEL_167:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

LABEL_38:
    if (v29 == v16)
    {
      break;
    }

    v164 = v17 + 8 * v12;
    if (v11)
    {
      v173 = v11;
      v48 = v11 - 1;
      v49 = v28;
      v50 = (v28 - *(v26 + 8 * v48)) / (*(v26 + 8 * v16) - *(v26 + 8 * v48));
      v51 = selfCopy->super._points.__begin_;
      v52 = gm::lerp<gm::Matrix<float,3,1>,float>(v51[3 * v48], v51[3 * v48 + 1], v51[3 * v48 + 2], v51[3 * v16], v51[3 * v16 + 1], v51[3 * v16 + 2], v50);
      v54 = v53;
      v56 = v55;
      v57 = selfCopy->_laneHalfWidths.__begin_;
      if (v57 == selfCopy->_laneHalfWidths.__end_)
      {
        v58 = 0.0;
      }

      else
      {
        v58 = v57[v48] + ((v57[v16] - v57[v48]) * v50);
      }

      v169 = v58;
      v59 = [VKDrivingPolylinePath splitGradientTrafficSegmentationAndAddTo:with:shouldSnap:]::$_1::operator()(v180, &selfCopy->super._polylineCoordinates.__begin_[v48], &selfCopy->super._polylineCoordinates.__begin_[v16], v50);
      v60 = *(v170 + 4);
      v61 = *(v164 + 4);
      v28 = v49;
      v62 = v9 - __p;
      v63 = 0xAAAAAAAAAAAAAAABLL * ((v9 - __p) >> 2) + 1;
      v14 = 0.5;
      if (v63 > 0x1555555555555555)
      {
        goto LABEL_167;
      }

      if (0x5555555555555556 * (-__p >> 2) > v63)
      {
        v63 = 0x5555555555555556 * (-__p >> 2);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-__p >> 2) >= 0xAAAAAAAAAAAAAAALL)
      {
        v64 = 0x1555555555555555;
      }

      else
      {
        v64 = v63;
      }

      if (v64)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v64);
      }

      v65 = (4 * ((v9 - __p) >> 2));
      *v65 = v52;
      *(v65 + 1) = v54;
      *(v65 + 2) = v56;
      v66 = (v65 - v62);
      if (__p != v9)
      {
        v67 = __p;
        v68 = (v65 - v62);
        do
        {
          v69 = *v67;
          *(v68 + 2) = *(v67 + 8);
          *v68 = v69;
          v68 += 12;
          v67 += 12;
        }

        while (v67 != v9);
      }

      v9 = v65 + 3;
      if (__p)
      {
        operator delete(__p);
      }

      __p = v66;
      if (*(v180[0] + 144) != *(v180[0] + 152))
      {
        v70 = v10;
        v71 = v10 >> 2;
        if (((v10 >> 2) + 1) >> 62)
        {
          goto LABEL_168;
        }

        if (v10 >> 2 != -1)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>((v10 >> 2) + 1);
        }

        *(4 * v71) = v169;
        v10 = 4 * v71 + 4;
        memcpy(0, 0, v70);
      }

      v72 = v177;
      v73 = v177 >> 3;
      if (((v177 >> 3) + 1) >> 61)
      {
LABEL_166:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      if (v177 >> 3 != -1)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<gss::StyleAttribute,unsigned short>>>((v177 >> 3) + 1);
      }

      v74 = 8 * v73;
      *v74 = 0;
      *(v74 + 4) = v60;
      *(v74 + 5) = v61;
      v177 = 8 * v73 + 8;
      memcpy(0, 0, v72);
      v75 = v178;
      v76 = v178 >> 3;
      if (((v178 >> 3) + 1) >> 61)
      {
LABEL_165:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      if (v178 >> 3 != -1)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>((v178 >> 3) + 1);
      }

      *(8 * v76) = v59;
      v178 = 8 * v76 + 8;
      memcpy(0, 0, v75);
      v11 = v173;
      selfCopy = v180[0];
    }

    v77 = v11;
    v78 = *(&selfCopy->super.super.isa + v25);
    v79 = (*(&selfCopy->super._overlay + v25) - v78) >> 3;
    if (v79 > v11)
    {
      v80 = *(v78 + 8 * v11);
      if (v80 < v24)
      {
        v81 = v24 - v28;
        v82 = 1.0 / v81;
        while (1)
        {
          v83 = selfCopy->_laneHalfWidths.__begin_;
          v174 = v11;
          v84 = v83 == selfCopy->_laneHalfWidths.__end_ ? 0 : LODWORD(v83[v77]);
          v85 = selfCopy->super._points.__begin_ + 12 * v77;
          v86 = *(v170 + 4);
          v168 = *(v164 + 4);
          v166 = selfCopy->super._polylineCoordinates.__begin_;
          v87 = v9 - __p;
          v88 = 0xAAAAAAAAAAAAAAABLL * ((v9 - __p) >> 2) + 1;
          if (v88 > 0x1555555555555555)
          {
            goto LABEL_167;
          }

          if (0x5555555555555556 * (-__p >> 2) > v88)
          {
            v88 = 0x5555555555555556 * (-__p >> 2);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-__p >> 2) >= 0xAAAAAAAAAAAAAAALL)
          {
            v89 = 0x1555555555555555;
          }

          else
          {
            v89 = v88;
          }

          if (v89)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v89);
          }

          v90 = 4 * ((v9 - __p) >> 2);
          v91 = *v85;
          *(v90 + 8) = *(v85 + 8);
          *v90 = v91;
          v92 = v90 + 12 * (v87 / -12);
          if (__p != v9)
          {
            v93 = __p;
            v94 = v90 + 12 * (v87 / -12);
            do
            {
              v95 = *v93;
              *(v94 + 8) = *(v93 + 8);
              *v94 = v95;
              v94 += 12;
              v93 += 12;
            }

            while (v93 != v9);
          }

          v9 = (v90 + 12);
          if (__p)
          {
            operator delete(__p);
            selfCopy = v180[0];
          }

          __p = v92;
          if (selfCopy->_laneHalfWidths.__begin_ != selfCopy->_laneHalfWidths.__end_)
          {
            v96 = v10;
            v97 = v10 >> 2;
            if (((v10 >> 2) + 1) >> 62)
            {
              goto LABEL_168;
            }

            if (v10 >> 2 != -1)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>((v10 >> 2) + 1);
            }

            *(4 * v97) = v84;
            v10 = 4 * v97 + 4;
            memcpy(0, 0, v96);
          }

          v98 = (v80 - v28) * v82;
          v99 = v177;
          v100 = v177 >> 3;
          if (((v177 >> 3) + 1) >> 61)
          {
            goto LABEL_166;
          }

          if (v177 >> 3 != -1)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<gss::StyleAttribute,unsigned short>>>((v177 >> 3) + 1);
          }

          v101 = 8 * v100;
          *v101 = v98;
          *(v101 + 4) = v86;
          *(v101 + 5) = v168;
          v177 = 8 * v100 + 8;
          memcpy(0, 0, v99);
          v102 = v178;
          v103 = v178 >> 3;
          if (((v178 >> 3) + 1) >> 61)
          {
            goto LABEL_165;
          }

          if (v178 >> 3 != -1)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>((v178 >> 3) + 1);
          }

          *(8 * v103) = v166[v77];
          v178 = 8 * v103 + 8;
          memcpy(0, 0, v102);
          v77 = v174 + 1;
          v11 = v174 + 1;
          selfCopy = v180[0];
          v78 = *(v180[0] + v25);
          v79 = (*(v180[0] + v25 + 8) - v78) >> 3;
          if (v79 > v77)
          {
            v80 = *(v78 + 8 * v77);
            if (v80 < v24)
            {
              continue;
            }
          }

          break;
        }
      }
    }

    if (v79 == v77)
    {
      break;
    }

    v175 = v11;
    v104 = v11 - 1;
    v105 = (v24 - *(v78 + 8 * v104)) / (*(v78 + 8 * v77) - *(v78 + 8 * v104));
    v106 = selfCopy->super._points.__begin_;
    v107 = gm::lerp<gm::Matrix<float,3,1>,float>(v106[3 * v104], v106[3 * v104 + 1], v106[3 * v104 + 2], v106[3 * v77], v106[3 * v77 + 1], v106[3 * v77 + 2], v105);
    v109 = v108;
    v111 = v110;
    v112 = selfCopy->_laneHalfWidths.__begin_;
    if (v112 == selfCopy->_laneHalfWidths.__end_)
    {
      v113 = 0.0;
    }

    else
    {
      v113 = *(4 * v104) + ((v112[v77] - *(4 * v104)) * v105);
    }

    v114 = [VKDrivingPolylinePath splitGradientTrafficSegmentationAndAddTo:with:shouldSnap:]::$_1::operator()(v180, &selfCopy->super._polylineCoordinates.__begin_[v104], &selfCopy->super._polylineCoordinates.__begin_[v77], v105);
    v115 = *(v170 + 4);
    v116 = *(v164 + 4);
    v117 = v9 - __p;
    v118 = 0xAAAAAAAAAAAAAAABLL * ((v9 - __p) >> 2) + 1;
    if (v118 > 0x1555555555555555)
    {
      goto LABEL_167;
    }

    if (0x5555555555555556 * (-__p >> 2) > v118)
    {
      v118 = 0x5555555555555556 * (-__p >> 2);
    }

    if (0xAAAAAAAAAAAAAAABLL * (-__p >> 2) >= 0xAAAAAAAAAAAAAAALL)
    {
      v119 = 0x1555555555555555;
    }

    else
    {
      v119 = v118;
    }

    if (v119)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v119);
    }

    v120 = (4 * ((v9 - __p) >> 2));
    *v120 = v107;
    *(v120 + 1) = v109;
    *(v120 + 2) = v111;
    v121 = &v120[3 * (v117 / -12)];
    if (__p != v9)
    {
      v122 = __p;
      v123 = &v120[3 * (v117 / -12)];
      do
      {
        v124 = *v122;
        v123[2] = *(v122 + 8);
        *v123 = v124;
        v123 += 3;
        v122 += 12;
      }

      while (v122 != v9);
    }

    v9 = v120 + 3;
    if (__p)
    {
      operator delete(__p);
    }

    __p = v121;
    if (*(v180[0] + 144) != *(v180[0] + 152))
    {
      v125 = v10;
      v126 = v10 >> 2;
      if (((v10 >> 2) + 1) >> 62)
      {
LABEL_168:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      if (v10 >> 2 != -1)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>((v10 >> 2) + 1);
      }

      *(4 * v126) = v113;
      v10 = 4 * v126 + 4;
      memcpy(0, 0, v125);
    }

    v127 = v177;
    v128 = v177 >> 3;
    if (((v177 >> 3) + 1) >> 61)
    {
      goto LABEL_166;
    }

    if (v177 >> 3 != -1)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<gss::StyleAttribute,unsigned short>>>((v177 >> 3) + 1);
    }

    v129 = 8 * v128;
    *v129 = 1065353216;
    *(v129 + 4) = v115;
    *(v129 + 5) = v116;
    v177 = 8 * v128 + 8;
    memcpy(0, 0, v127);
    v130 = v178;
    v131 = v178 >> 3;
    if (((v178 >> 3) + 1) >> 61)
    {
      goto LABEL_165;
    }

    if (v178 >> 3 != -1)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>((v178 >> 3) + 1);
    }

    *(8 * v131) = v114;
    v178 = 8 * v131 + 8;
    memcpy(0, 0, v130);
    v11 = v175;
    selfCopy = v180[0];
  }

  v17 = *with;
  v18 = (*(with + 1) - *with) >> 3;
  v19 = v18 - 1;
LABEL_130:
  if (v18 <= v19)
  {
LABEL_164:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v176 = v10;
  v132 = selfCopy->super._points.__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((selfCopy->super._points.__end_ - v132) >> 2) > v11)
  {
    v133 = v11;
    v171 = v17 + 8 * v19;
    do
    {
      v134 = selfCopy->_laneHalfWidths.__begin_;
      v135 = v11;
      v136 = v134 == selfCopy->_laneHalfWidths.__end_ ? 0 : LODWORD(v134[v133]);
      v137 = &v132[12 * v133];
      v138 = *(v171 + 4);
      v139 = selfCopy->super._polylineCoordinates.__begin_;
      v140 = v9 - __p;
      v141 = 0xAAAAAAAAAAAAAAABLL * ((v9 - __p) >> 2) + 1;
      if (v141 > 0x1555555555555555)
      {
        goto LABEL_167;
      }

      if (0x5555555555555556 * (-__p >> 2) > v141)
      {
        v141 = 0x5555555555555556 * (-__p >> 2);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-__p >> 2) >= 0xAAAAAAAAAAAAAAALL)
      {
        v142 = 0x1555555555555555;
      }

      else
      {
        v142 = v141;
      }

      if (v142)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v142);
      }

      v143 = *v137;
      v144 = 4 * ((v9 - __p) >> 2);
      *(v144 + 8) = *(v137 + 2);
      *v144 = v143;
      v145 = v144 - v140;
      if (__p != v9)
      {
        v146 = __p;
        v147 = v144 - v140;
        do
        {
          v148 = *v146;
          *(v147 + 8) = *(v146 + 8);
          *v147 = v148;
          v147 += 12;
          v146 += 12;
        }

        while (v146 != v9);
      }

      v9 = (v144 + 12);
      if (__p)
      {
        operator delete(__p);
        selfCopy = v180[0];
      }

      __p = v145;
      if (selfCopy->_laneHalfWidths.__begin_ != selfCopy->_laneHalfWidths.__end_)
      {
        v149 = v176;
        v150 = v176 >> 2;
        if (((v176 >> 2) + 1) >> 62)
        {
          goto LABEL_168;
        }

        if (v176 >> 2 != -1)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>((v176 >> 2) + 1);
        }

        *(4 * v150) = v136;
        v176 = 4 * v150 + 4;
        memcpy(0, 0, v149);
      }

      v151 = v177;
      v152 = v177 >> 3;
      if (((v177 >> 3) + 1) >> 61)
      {
        goto LABEL_166;
      }

      if (v177 >> 3 != -1)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<gss::StyleAttribute,unsigned short>>>((v177 >> 3) + 1);
      }

      v153 = 8 * v152;
      *v153 = 0;
      *(v153 + 4) = v138;
      *(v153 + 5) = v138;
      v177 = 8 * v152 + 8;
      memcpy(0, 0, v151);
      v154 = v178;
      v155 = v178 >> 3;
      if (((v178 >> 3) + 1) >> 61)
      {
        goto LABEL_165;
      }

      if (v178 >> 3 != -1)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>((v178 >> 3) + 1);
      }

      *(8 * v155) = v139[v133];
      v178 = 8 * v155 + 8;
      memcpy(0, 0, v154);
      v133 = v135 + 1;
      selfCopy = v180[0];
      v132 = *(v180[0] + 32);
      v11 = v135 + 1;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(v180[0] + 40) - v132) >> 2) > v133);
  }

  v156 = [VKDrivingPolylinePath alloc];
  WeakRetained = objc_loadWeakRetained(&selfCopy->super._overlay);
  v158 = v180[0];
  v159 = objc_loadWeakRetained((v180[0] + 16));
  v160 = [(VKPolylinePath *)v156 initWithOverlay:WeakRetained section:v159 matchedPathSegments:v158[3]];

  [(VKPolylinePath *)v160 setRouteStart:*(v158 + 84)];
  [(VKPolylinePath *)v160 setRouteEnd:*(v158 + 92)];
  v161 = toCopy;
  [VKDrivingPolylinePath assignPoints:v160 laneHalfWidths:"assignPoints:laneHalfWidths:gradientTraffics:polylineCoordinates:count:" gradientTraffics:toCopy polylineCoordinates:? count:?];
  [v161 addObject:v160];

  if (__p)
  {
    operator delete(__p);
  }
}

- (unint64_t)splitGradientTrafficSegmentationAndAddTo:with:shouldSnap:
{
  v7 = *a3;
  if (*a3 != *a2 || (v8 = *(a2 + 1), vabds_f32(*(a3 + 1), v8) >= 0.00000011921))
  {
    WeakRetained = objc_loadWeakRetained((*self + 16));
    composedRouteSegment = [WeakRetained composedRouteSegment];
    composedRoute = [composedRouteSegment composedRoute];

    v12 = *a2;
    v13 = *(a2 + 1);
    if (v13 >= 1.0)
    {
      v12 += vcvtms_u32_f32(v13);
      v13 = v13 - floorf(v13);
    }

    v14 = *a3;
    v15 = *(a3 + 1);
    if (v15 >= 1.0)
    {
      v14 += vcvtms_u32_f32(v15);
      v15 = v15 - floorf(v15);
    }

    [composedRoute distanceBetweenRouteCoordinate:v12 | (LODWORD(v13) << 32) andRouteCoordinate:v14 | (LODWORD(v15) << 32)];
    v17 = [composedRoute routeCoordinateForDistance:*a2 afterRouteCoordinate:v16 * a4];
    v8 = *(&v17 + 1);
    v7 = v17;
    if (*(&v17 + 1) >= 1.0)
    {
      v7 = vcvtms_u32_f32(*(&v17 + 1)) + v17;
      v8 = *(&v17 + 1) - floorf(*(&v17 + 1));
    }
  }

  return v7 | (LODWORD(v8) << 32);
}

- (void)assignPoints:(void *)points laneHalfWidths:(float *)widths gradientTraffics:(GradientTraffic *)traffics polylineCoordinates:(PolylineCoordinate *)coordinates count:(unint64_t)count
{
  std::vector<gm::Matrix<float,3,1>>::resize(&self->super._points.__begin_, count);
  memcpy(self->super._points.__begin_, points, 12 * count);
  if (widths)
  {
    begin = self->_laneHalfWidths.__begin_;
    end = self->_laneHalfWidths.__end_;
    v15 = end - begin;
    if (count <= v15)
    {
      if (count >= v15)
      {
LABEL_15:
        memcpy(begin, widths, 4 * count);
        goto LABEL_16;
      }

      v21 = &begin[count];
    }

    else
    {
      v16 = count - v15;
      cap = self->_laneHalfWidths.__cap_;
      if (v16 > cap - end)
      {
        if (!(count >> 62))
        {
          v18 = cap - begin;
          countCopy = v18 >> 1;
          if (v18 >> 1 <= count)
          {
            countCopy = count;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v20 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = countCopy;
          }

          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(self->_laneHalfWidths.__end_, 4 * v16);
      v21 = &end[v16];
    }

    self->_laneHalfWidths.__end_ = v21;
    goto LABEL_15;
  }

LABEL_16:
  v22 = self->_gradientTraffics.__begin_;
  v23 = self->_gradientTraffics.__end_;
  v24 = v23 - v22;
  if (count <= v24)
  {
    if (count >= v24)
    {
      goto LABEL_29;
    }

    v30 = &v22[count];
  }

  else
  {
    v25 = count - v24;
    v26 = self->_gradientTraffics.__cap_;
    if (v25 > v26 - v23)
    {
      if (!(count >> 61))
      {
        v27 = v26 - v22;
        countCopy2 = v27 >> 2;
        if (v27 >> 2 <= count)
        {
          countCopy2 = count;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = countCopy2;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<gss::StyleAttribute,unsigned short>>>(v29);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(self->_gradientTraffics.__end_, 8 * v25);
    v30 = &v23[v25];
  }

  self->_gradientTraffics.__end_ = v30;
LABEL_29:
  memcpy(self->_gradientTraffics.__begin_, traffics, 8 * count);
  std::vector<geo::PolylineCoordinate>::resize(&self->super._polylineCoordinates, count);
  v31 = self->super._polylineCoordinates.__begin_;

  memcpy(v31, coordinates, 8 * count);
}

- (void)assignPoints:(void *)points count:(unint64_t)count
{
  std::vector<gm::Matrix<float,3,1>>::resize(&self->super._points.__begin_, count);
  begin = self->super._points.__begin_;

  memcpy(begin, points, 12 * count);
}

- (void)assignTo:(id)to withSegment:(const TrafficSegment *)segment
{
  toCopy = to;
  if (segment)
  {
    var1 = segment->var1;
  }

  else
  {
    var1 = 4;
  }

  v8 = toCopy;
  [(VKDrivingPolylinePath *)self setTrafficSpeed:var1];
  [v8 addObject:self];
}

- (const)gradientTrafficAtIndex:(unsigned int)index
{
  begin = self->_gradientTraffics.__begin_;
  if (index >= (self->_gradientTraffics.__end_ - begin))
  {
    return &self->_standardModeTraffic;
  }

  else
  {
    return &begin[index];
  }
}

- (void)setTrafficSpeed:(unsigned __int8)speed
{
  self->super._trafficSpeed = speed;
  self->_standardModeTraffic.blend = 0.0;
  self->_standardModeTraffic.start = speed;
  self->_standardModeTraffic.end = self->super._trafficSpeed;
}

- (float)laneHalfWidthAtIndex:(unsigned int)index
{
  begin = self->_laneHalfWidths.__begin_;
  if (begin == self->_laneHalfWidths.__end_)
  {
    return 1.85;
  }

  else
  {
    return begin[index];
  }
}

- (VKDrivingPolylinePath)initWithOverlay:(id)overlay section:(id)section routeStartIndex:(unsigned int)index routeEndIndex:(unsigned int)endIndex matchedPathSegments:(id)segments elevationSource:(void *)source elevationSourceContext:(void *)context
{
  v11 = *&endIndex;
  v12 = *&index;
  overlayCopy = overlay;
  sectionCopy = section;
  segmentsCopy = segments;
  v22.receiver = self;
  v22.super_class = VKDrivingPolylinePath;
  v18 = [(VKPolylinePath *)&v22 initWithOverlay:overlayCopy section:sectionCopy routeStartIndex:v12 routeEndIndex:v11 matchedPathSegments:segmentsCopy elevationSource:source elevationSourceContext:context];
  v19 = v18;
  if (v18)
  {
    v18->super._trafficSpeed = 4;
    [VKDrivingPolylinePath updateDistances:&v18->_distances forPath:v18 snap:segmentsCopy != 0];
    v20 = v19;
  }

  return v19;
}

+ (void)updateDistances:(void *)distances forPath:(id)path snap:(BOOL)snap
{
  snapCopy = snap;
  pathCopy = path;
  pathCopy[80] = snapCopy;
  v8 = *(pathCopy + 5) - *(pathCopy + 4);
  if (v8)
  {
    v42 = pathCopy;
    *(distances + 1) = *distances;
    std::vector<double>::reserve(distances, 0xAAAAAAAAAAAAAAABLL * (v8 >> 2));
    v9 = v42;
    section = [v9 section];
    composedRouteSegment = [section composedRouteSegment];

    composedRoute = [composedRouteSegment composedRoute];
    v13 = 0;
    while (1)
    {
      if (snapCopy)
      {
        matchedPathSegments = [v9 matchedPathSegments];
        v15 = [matchedPathSegments count];

        if (v15 <= v13 || ([v9 matchedPathSegments], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count") - 1, v16, v17 == v13) && (objc_msgSend(v9, "matchedPathSegments"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "objectAtIndexedSubscript:", v13), v19 = objc_claimAutoreleasedReturnValue(), v18, v20 = objc_msgSend(v19, "pointCount"), v19, v20 <= HIDWORD(v13)))
        {
LABEL_30:

          pathCopy = v42;
          break;
        }

        matchedPathSegments2 = [v9 matchedPathSegments];
        v22 = [matchedPathSegments2 objectAtIndexedSubscript:v13];

        v23 = [v22 routeCoordinateAt:HIDWORD(v13)];
        v24 = v23;
        v25 = HIDWORD(v23);

        v26 = v25;
      }

      else
      {
        if ([v9 pointCount] <= HIDWORD(v13))
        {
          goto LABEL_30;
        }

        routeStart = [v9 routeStart];
        routeStart2 = [v9 routeStart];
        v24 = routeStart + HIDWORD(v13);
        v26 = HIDWORD(routeStart2);
        if (*(&routeStart2 + 1) >= 1.0)
        {
          v24 += vcvtms_u32_f32(*(&routeStart2 + 1));
          v26 = COERCE_UNSIGNED_INT(*(&routeStart2 + 1) - floorf(*(&routeStart2 + 1)));
        }
      }

      [composedRoute stepDistanceFromPoint:0 toPoint:v24 | (v26 << 32)];
      v31 = *(distances + 1);
      v30 = *(distances + 2);
      if (v31 >= v30)
      {
        v33 = *distances;
        v34 = v31 - *distances;
        v35 = v34 >> 3;
        v36 = (v34 >> 3) + 1;
        if (v36 >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v37 = v30 - v33;
        if (v37 >> 2 > v36)
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

        *(8 * v35) = v29;
        v32 = 8 * v35 + 8;
        memcpy(0, v33, v34);
        v39 = *distances;
        *distances = 0;
        *(distances + 1) = v32;
        *(distances + 2) = 0;
        if (v39)
        {
          operator delete(v39);
        }
      }

      else
      {
        *v31 = v29;
        v32 = (v31 + 1);
      }

      *(distances + 1) = v32;
      if (snapCopy)
      {
        matchedPathSegments3 = [v9 matchedPathSegments];
        v41 = [matchedPathSegments3 objectAtIndexedSubscript:v13];

        if ([v41 pointCount] <= 1 || (objc_msgSend(v41, "pointCount") - 1) <= HIDWORD(v13))
        {
          v13 = (v13 + 1);
        }

        else
        {
          v13 += 0x100000000;
        }
      }

      else
      {
        v13 += 0x100000000;
      }
    }
  }
}

@end