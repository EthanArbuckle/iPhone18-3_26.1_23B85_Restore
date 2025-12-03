@interface VKLabelNavRoadGraph(junctionlist)
- (void)offRouteGraphJunctionsWithNavContext:()junctionlist maxJunctions:isOnRoute:;
@end

@implementation VKLabelNavRoadGraph(junctionlist)

- (void)offRouteGraphJunctionsWithNavContext:()junctionlist maxJunctions:isOnRoute:
{
LABEL_1:
  v183 = (a2 - 16);
  selfCopy = self;
  while (1)
  {
    self = selfCopy;
    v8 = (a2 - selfCopy) >> 4;
    v9 = v8 - 2;
    if (v8 > 2)
    {
      break;
    }

    if (v8 < 2)
    {
      return;
    }

    if (v8 == 2)
    {
      v72 = *(a2 - 8);
      v73 = *(selfCopy + 8);
      v74 = v72 == v73;
      v75 = v72 < v73;
      if (v74)
      {
        v75 = *(a2 - 4) < *(selfCopy + 12);
      }

      if (v75)
      {
        v76 = selfCopy;
        v77 = (a2 - 16);
LABEL_92:

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<OffRouteJunctionInfo *&,OffRouteJunctionInfo *&>(v76, v77);
        return;
      }

      return;
    }

LABEL_9:
    if (v8 <= 23)
    {
      v87 = (selfCopy + 16);
      v89 = selfCopy == a2 || v87 == a2;
      if (a4)
      {
        if (!v89)
        {
          v90 = 0;
          v91 = selfCopy;
          do
          {
            v92 = v87;
            v93 = *(v91 + 24);
            v94 = *(v91 + 8);
            v74 = v93 == v94;
            v95 = v93 < v94;
            if (v74)
            {
              v95 = v91[7] < v91[3];
            }

            if (v95)
            {
              v96 = *v92;
              *v92 = 0;
              v97 = *(v91 + 6);
              v98 = v91[7];
              v99 = v90;
              while (1)
              {
                v100 = (self + v99);
                v101 = *(self + v99);
                *v100 = 0;
                v102 = *(self + v99 + 16);
                *(v100 + 2) = v101;

                *(v100 + 3) = *(v100 + 1);
                if (!v99)
                {
                  break;
                }

                v103 = *(v100 - 8);
                v74 = v103 == v97;
                v104 = v103 > v97;
                if (v74)
                {
                  v104 = *(v100 - 1) > v98;
                }

                v99 -= 16;
                if (!v104)
                {
                  selfCopy2 = self + v99 + 16;
                  goto LABEL_127;
                }
              }

              selfCopy2 = self;
LABEL_127:
              v106 = *selfCopy2;
              *selfCopy2 = v96;

              *(selfCopy2 + 8) = v97;
              *(selfCopy2 + 12) = v98;
            }

            v87 = v92 + 2;
            v90 += 16;
            v91 = v92;
          }

          while (v92 + 2 != a2);
        }
      }

      else if (!v89)
      {
        v169 = (selfCopy - 8);
        do
        {
          v170 = v87;
          v171 = *(self + 24);
          v172 = *(self + 8);
          v74 = v171 == v172;
          v173 = v171 < v172;
          if (v74)
          {
            v173 = *(self + 28) < *(self + 12);
          }

          if (v173)
          {
            v174 = *v170;
            *v170 = 0;
            v175 = *(self + 24);
            v176 = *(self + 28);
            v177 = v169;
            do
            {
              v178 = *(v177 + 1);
              *(v177 + 1) = 0;
              v179 = *(v177 + 3);
              *(v177 + 3) = v178;

              *(v177 + 4) = *(v177 + 2);
              v180 = *v177;
              v74 = v180 == v175;
              v181 = v180 > v175;
              if (v74)
              {
                v181 = *(v177 + 1) > v176;
              }

              v177 -= 16;
            }

            while (v181);
            v182 = *(v177 + 3);
            *(v177 + 3) = v174;

            *(v177 + 8) = v175;
            *(v177 + 9) = v176;
          }

          v87 = v170 + 2;
          v169 += 16;
          self = v170;
        }

        while (v170 + 2 != a2);
      }

      return;
    }

    if (!a3)
    {
      if (selfCopy != a2)
      {
        v107 = v9 >> 1;
        v108 = v9 >> 1;
        do
        {
          v109 = v108;
          if (v107 >= v108)
          {
            v110 = (2 * v108) | 1;
            v111 = self + 16 * v110;
            if (2 * v109 + 2 < v8)
            {
              v112 = *(v111 + 8);
              v113 = *(v111 + 24);
              v74 = v112 == v113;
              v114 = v112 < v113;
              if (v74)
              {
                v114 = *(v111 + 12) < *(v111 + 28);
              }

              v115 = !v114;
              v116 = 16;
              if (v115)
              {
                v116 = 0;
              }

              v111 += v116;
              if (!v115)
              {
                v110 = 2 * v109 + 2;
              }
            }

            v117 = self + 16 * v109;
            v118 = *(v111 + 8);
            v119 = *(v117 + 8);
            v120 = *(v117 + 12);
            v74 = v118 == v119;
            v121 = v118 < v119;
            if (v74)
            {
              v121 = *(v111 + 12) < v120;
            }

            if (!v121)
            {
              v185 = *v117;
              *v117 = 0;
              v122 = *(v117 + 8);
              do
              {
                v123 = v117;
                v117 = v111;
                v124 = *v111;
                *v117 = 0;
                v125 = *v123;
                *v123 = v124;

                *(v123 + 8) = *(v117 + 8);
                if (v107 < v110)
                {
                  break;
                }

                v126 = (2 * v110) | 1;
                v111 = self + 16 * v126;
                if (2 * v110 + 2 < v8)
                {
                  v127 = *(v111 + 8);
                  v128 = *(v111 + 24);
                  v74 = v127 == v128;
                  v129 = v127 < v128;
                  if (v74)
                  {
                    v129 = *(v111 + 12) < *(v111 + 28);
                  }

                  v130 = !v129;
                  v131 = 16;
                  if (v130)
                  {
                    v131 = 0;
                  }

                  v111 += v131;
                  if (!v130)
                  {
                    v126 = 2 * v110 + 2;
                  }
                }

                v132 = *(v111 + 8);
                v74 = v132 == v122;
                v133 = v132 < v122;
                if (v74)
                {
                  v133 = *(v111 + 12) < v120;
                }

                v110 = v126;
              }

              while (!v133);
              v134 = *v117;
              *v117 = v185;

              *(v117 + 8) = v122;
              *(v117 + 12) = v120;
            }
          }

          v108 = v109 - 1;
        }

        while (v109);
        do
        {
          v135 = 0;
          v137 = *self;
          v136 = *(self + 8);
          *self = 0;
          selfCopy3 = self;
          do
          {
            v139 = selfCopy3 + 16 * v135;
            v140 = v139 + 16;
            if (2 * v135 + 2 >= v8)
            {
              v135 = (2 * v135) | 1;
            }

            else
            {
              v141 = *(v139 + 24);
              v142 = *(v139 + 40);
              v74 = v141 == v142;
              v143 = v141 < v142;
              if (v74)
              {
                v143 = *(v139 + 28) < *(v139 + 44);
              }

              v144 = v139 + 32;
              if (v143)
              {
                v140 = v144;
                v135 = 2 * v135 + 2;
              }

              else
              {
                v135 = (2 * v135) | 1;
              }
            }

            v145 = *v140;
            *v140 = 0;
            v146 = *selfCopy3;
            *selfCopy3 = v145;

            *(selfCopy3 + 8) = *(v140 + 8);
            selfCopy3 = v140;
          }

          while (v135 <= ((v8 - 2) >> 1));
          v147 = a2 - 16;
          if (v140 == a2 - 16)
          {
            v168 = *v140;
            *v140 = v137;

            *(v140 + 8) = v136;
          }

          else
          {
            v148 = *(a2 - 16);
            *(a2 - 16) = 0;
            v149 = *v140;
            *v140 = v148;

            *(v140 + 8) = *(a2 - 8);
            v150 = *(a2 - 16);
            *(a2 - 16) = v137;

            *(a2 - 8) = v136;
            v151 = (v140 - self + 16) >> 4;
            v152 = v151 < 2;
            v153 = v151 - 2;
            if (!v152)
            {
              v154 = v153 >> 1;
              v155 = self + 16 * (v153 >> 1);
              v156 = *(v155 + 8);
              v157 = *(v140 + 8);
              v158 = *(v140 + 12);
              v74 = v156 == v157;
              v159 = v156 < v157;
              if (v74)
              {
                v159 = *(v155 + 12) < v158;
              }

              if (v159)
              {
                v160 = *v140;
                *v140 = 0;
                v161 = *(v140 + 8);
                do
                {
                  v162 = v140;
                  v140 = v155;
                  v163 = *v155;
                  *v140 = 0;
                  v164 = *v162;
                  *v162 = v163;

                  *(v162 + 8) = *(v140 + 8);
                  if (!v154)
                  {
                    break;
                  }

                  v154 = (v154 - 1) >> 1;
                  v155 = self + 16 * v154;
                  v165 = *(v155 + 8);
                  v74 = v165 == v161;
                  v166 = v165 < v161;
                  if (v74)
                  {
                    v166 = *(v155 + 12) < v158;
                  }
                }

                while (v166);
                v167 = *v140;
                *v140 = v160;

                *(v140 + 8) = v161;
                *(v140 + 12) = v158;
              }
            }
          }

          a2 = v147;
          v152 = v8-- <= 2;
        }

        while (!v152);
      }

      return;
    }

    v10 = (selfCopy + 16 * (v8 >> 1));
    if (v8 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,-[VKLabelNavRoadGraph(junctionlist) offRouteGraphJunctionsWithNavContext:maxJunctions:isOnRoute:]::$_2 &,OffRouteJunctionInfo *,0>(self + 16 * (v8 >> 1), self, v183);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,-[VKLabelNavRoadGraph(junctionlist) offRouteGraphJunctionsWithNavContext:maxJunctions:isOnRoute:]::$_2 &,OffRouteJunctionInfo *,0>(self, self + 16 * (v8 >> 1), v183);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,-[VKLabelNavRoadGraph(junctionlist) offRouteGraphJunctionsWithNavContext:maxJunctions:isOnRoute:]::$_2 &,OffRouteJunctionInfo *,0>(self + 16, (v10 - 2), a2 - 32);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,-[VKLabelNavRoadGraph(junctionlist) offRouteGraphJunctionsWithNavContext:maxJunctions:isOnRoute:]::$_2 &,OffRouteJunctionInfo *,0>(self + 32, (v10 + 2), a2 - 48);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,-[VKLabelNavRoadGraph(junctionlist) offRouteGraphJunctionsWithNavContext:maxJunctions:isOnRoute:]::$_2 &,OffRouteJunctionInfo *,0>((v10 - 2), self + 16 * (v8 >> 1), (v10 + 2));
      v11 = *self;
      v12 = *(self + 8);
      *self = 0;
      v13 = *v10;
      *v10 = 0;
      v14 = *self;
      *self = v13;

      v15 = *v10;
      *(self + 8) = v10[1];
      *v10 = v11;

      v10[1] = v12;
    }

    --a3;
    if (a4)
    {
      v16 = *(self + 12);
      goto LABEL_19;
    }

    v17 = *(self - 8);
    v18 = *(self + 8);
    v16 = *(self + 12);
    v74 = v17 == v18;
    v19 = v17 < v18;
    if (v74)
    {
      v19 = *(self - 4) < v16;
    }

    if (v19)
    {
LABEL_19:
      v20 = *self;
      *self = 0;
      v21 = *(self + 8);
      selfCopy4 = self;
      do
      {
        v23 = selfCopy4;
        selfCopy4 += 16;
        v24 = *(v23 + 24);
        v74 = v24 == v21;
        v25 = v24 < v21;
        if (v74)
        {
          v25 = *(v23 + 28) < v16;
        }
      }

      while (v25);
      v26 = a2;
      if (v23 == self)
      {
        v31 = a2;
        while (selfCopy4 < v31)
        {
          v27 = (v31 - 16);
          v32 = *(v31 - 8);
          v33 = *(v31 - 4) < v16;
          v74 = v32 == v21;
          v34 = v32 < v21;
          if (v74)
          {
            v34 = v33;
          }

          v31 = v27;
          if (v34)
          {
            goto LABEL_35;
          }
        }

        v27 = v31;
      }

      else
      {
        do
        {
          v27 = (v26 - 16);
          v28 = *(v26 - 8);
          v29 = *(v26 - 4) < v16;
          v74 = v28 == v21;
          v30 = v28 < v21;
          if (v74)
          {
            v30 = v29;
          }

          v26 = v27;
        }

        while (!v30);
      }

LABEL_35:
      if (selfCopy4 >= v27)
      {
        selfCopy = selfCopy4;
      }

      else
      {
        v35 = v27;
        selfCopy = selfCopy4;
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<OffRouteJunctionInfo *&,OffRouteJunctionInfo *&>(selfCopy, v35);
          do
          {
            v36 = *(selfCopy + 24);
            v37 = *(selfCopy + 28);
            selfCopy += 16;
            v74 = v36 == v21;
            v38 = v36 < v21;
            if (v74)
            {
              v38 = v37 < v16;
            }
          }

          while (v38);
          do
          {
            v39 = *(v35 - 8);
            v40 = *(v35 - 1);
            v35 -= 2;
            v74 = v39 == v21;
            v41 = v39 < v21;
            if (v74)
            {
              v41 = v40 < v16;
            }
          }

          while (!v41);
        }

        while (selfCopy < v35);
      }

      if (selfCopy - 16 != self)
      {
        v42 = *(selfCopy - 16);
        *(selfCopy - 16) = 0;
        v43 = *self;
        *self = v42;

        *(self + 8) = *(selfCopy - 8);
      }

      v44 = *(selfCopy - 16);
      *(selfCopy - 16) = v20;

      *(selfCopy - 8) = v21;
      *(selfCopy - 4) = v16;
      if (selfCopy4 < v27)
      {
        goto LABEL_52;
      }

      v45 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,-[VKLabelNavRoadGraph(junctionlist) offRouteGraphJunctionsWithNavContext:maxJunctions:isOnRoute:]::$_2 &,OffRouteJunctionInfo *>(self, selfCopy - 16);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,-[VKLabelNavRoadGraph(junctionlist) offRouteGraphJunctionsWithNavContext:maxJunctions:isOnRoute:]::$_2 &,OffRouteJunctionInfo *>(selfCopy, a2))
      {
        a2 = selfCopy - 16;
        if (!v45)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v45)
      {
LABEL_52:
        std::__introsort<std::_ClassicAlgPolicy,[VKLabelNavRoadGraph(junctionlist) offRouteGraphJunctionsWithNavContext:maxJunctions:isOnRoute:]::$_2 &,OffRouteJunctionInfo *,false>(self, selfCopy - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v46 = *self;
      *self = 0;
      v47 = *(self + 8);
      v48 = *(a2 - 8);
      v74 = v48 == v47;
      v49 = v48 > v47;
      if (v74)
      {
        v49 = *(a2 - 4) > v16;
      }

      if (v49)
      {
        selfCopy5 = self;
        do
        {
          selfCopy = selfCopy5 + 16;
          v51 = *(selfCopy5 + 24);
          v52 = *(selfCopy5 + 28) > v16;
          v74 = v51 == v47;
          v53 = v51 > v47;
          if (v74)
          {
            v53 = v52;
          }

          selfCopy5 = selfCopy;
        }

        while (!v53);
      }

      else
      {
        v54 = self + 16;
        do
        {
          selfCopy = v54;
          if (v54 >= a2)
          {
            break;
          }

          v55 = *(v54 + 8);
          v56 = *(selfCopy + 12) > v16;
          v74 = v55 == v47;
          v57 = v55 > v47;
          if (!v74)
          {
            v56 = v57;
          }

          v54 = selfCopy + 16;
        }

        while (!v56);
      }

      v58 = a2;
      if (selfCopy < a2)
      {
        v59 = a2;
        do
        {
          v58 = (v59 - 16);
          v60 = *(v59 - 8);
          v61 = *(v59 - 4) > v16;
          v74 = v60 == v47;
          v62 = v60 > v47;
          if (v74)
          {
            v62 = v61;
          }

          v59 = v58;
        }

        while (v62);
      }

      while (selfCopy < v58)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<OffRouteJunctionInfo *&,OffRouteJunctionInfo *&>(selfCopy, v58);
        do
        {
          v63 = *(selfCopy + 24);
          v64 = *(selfCopy + 28);
          selfCopy += 16;
          v74 = v63 == v47;
          v65 = v63 > v47;
          if (v74)
          {
            v65 = v64 > v16;
          }
        }

        while (!v65);
        do
        {
          v66 = *(v58 - 8);
          v67 = *(v58 - 1);
          v58 -= 2;
          v74 = v66 == v47;
          v68 = v66 > v47;
          if (v74)
          {
            v68 = v67 > v16;
          }
        }

        while (v68);
      }

      if (selfCopy - 16 != self)
      {
        v69 = *(selfCopy - 16);
        *(selfCopy - 16) = 0;
        v70 = *self;
        *self = v69;

        *(self + 8) = *(selfCopy - 8);
      }

      v71 = *(selfCopy - 16);
      *(selfCopy - 16) = v46;

      a4 = 0;
      *(selfCopy - 8) = v47;
      *(selfCopy - 4) = v16;
    }
  }

  if (v8 == 3)
  {

    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,-[VKLabelNavRoadGraph(junctionlist) offRouteGraphJunctionsWithNavContext:maxJunctions:isOnRoute:]::$_2 &,OffRouteJunctionInfo *,0>(selfCopy, selfCopy + 16, v183);
    return;
  }

  if (v8 != 4)
  {
    if (v8 == 5)
    {

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,-[VKLabelNavRoadGraph(junctionlist) offRouteGraphJunctionsWithNavContext:maxJunctions:isOnRoute:]::$_2 &,OffRouteJunctionInfo *,0>(selfCopy, selfCopy + 16, selfCopy + 32, selfCopy + 48, v183);
      return;
    }

    goto LABEL_9;
  }

  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,-[VKLabelNavRoadGraph(junctionlist) offRouteGraphJunctionsWithNavContext:maxJunctions:isOnRoute:]::$_2 &,OffRouteJunctionInfo *,0>(selfCopy, selfCopy + 16, selfCopy + 32);
  v78 = *(a2 - 8);
  v79 = *(selfCopy + 40);
  v74 = v78 == v79;
  v80 = v78 < v79;
  if (v74)
  {
    v80 = *(a2 - 4) < *(selfCopy + 44);
  }

  if (v80)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<OffRouteJunctionInfo *&,OffRouteJunctionInfo *&>((selfCopy + 32), v183);
    v81 = *(selfCopy + 40);
    v82 = *(selfCopy + 24);
    v74 = v81 == v82;
    v83 = v81 < v82;
    if (v74)
    {
      v83 = *(selfCopy + 44) < *(selfCopy + 28);
    }

    if (v83)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<OffRouteJunctionInfo *&,OffRouteJunctionInfo *&>((selfCopy + 16), (selfCopy + 32));
      v84 = *(selfCopy + 24);
      v85 = *(selfCopy + 8);
      v74 = v84 == v85;
      v86 = v84 < v85;
      if (v74)
      {
        v86 = *(selfCopy + 28) < *(selfCopy + 12);
      }

      if (v86)
      {
        v77 = (selfCopy + 16);
        v76 = selfCopy;
        goto LABEL_92;
      }
    }
  }
}

@end