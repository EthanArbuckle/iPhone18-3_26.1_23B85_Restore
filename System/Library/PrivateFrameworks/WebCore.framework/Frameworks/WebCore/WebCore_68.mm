void webrtc::TMMBRHelp::FindBoundingSet(uint64_t a1@<X0>, __int128 **a2@<X8>, __n128 a3@<Q0>)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  if (*a1 != v5)
  {
    do
    {
      while (*(v6 + 1))
      {
        v6 = (v6 + 24);
        if (v6 == v5)
        {
          goto LABEL_8;
        }
      }

      v7 = v5 - (v6 + 24);
      if (v5 != (v6 + 24))
      {
        memmove(v6, v6 + 24, v7 - 6);
      }

      v5 = v6 + v7;
      *(a1 + 8) = v6 + v7;
    }

    while (v6 != (v6 + v7));
LABEL_8:
    v6 = *a1;
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3);
  if (v8 < 2)
  {
    *a2 = v6;
    a2[1] = v5;
    a2[2] = *(a1 + 16);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    return;
  }

  v9 = 126 - 2 * __clz(v8);
  if (v5 == v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  std::__introsort<std::_ClassicAlgPolicy,webrtc::TMMBRHelp::FindBoundingSet(std::vector<webrtc::rtcp::TmmbItem>)::$_0 &,webrtc::rtcp::TmmbItem*,false>(v6, v5, v10, 1, a3);
  v11 = *a1;
  v12 = *(a1 + 8);
  if (*a1 == v12)
  {
LABEL_39:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    if (v8)
    {
      goto LABEL_40;
    }

    goto LABEL_43;
  }

  v13 = *a1;
  do
  {
    if (v12 == (v13 + 24))
    {
      v13 = (v13 + 24);
    }

    else
    {
      v14 = v13 + 2;
      while (*(v14 + 4) == *(v13 + 8))
      {
        v15 = v14 + 1;
        v16 = *(v13 + 1);
        if (*v14 >= v16)
        {
          v17 = v14;
        }

        else
        {
          v17 = (v13 + 8);
        }

        if (*v14 < v16)
        {
          v13 = (v14 - 8);
        }

        *v17 = 0;
        --v8;
        v14 = (v14 + 24);
        if (v15 == v12)
        {
          v13 = (v14 - 8);
          goto LABEL_17;
        }
      }

      v13 = (v14 - 8);
    }

LABEL_17:
    ;
  }

  while (v13 != v12);
  while (!*(v11 + 1))
  {
    v11 = (v11 + 24);
    if (v11 == v12)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    v18 = v11;
    do
    {
      v19 = *(v11 + 1);
      if (v19 && v19 <= *(v18 + 1))
      {
        v18 = v11;
      }

      v11 = (v11 + 24);
    }

    while (v11 != v12);
    v12 = v18;
    goto LABEL_39;
  }

  v12 = v11;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (v8)
  {
LABEL_40:
    if (v8 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_43:
  std::vector<webrtc::rtcp::TmmbItem>::push_back[abi:sn200100](a2, v12);
  __break(1u);
  operator delete(0);
  operator delete(0);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,webrtc::TMMBRHelp::FindBoundingSet(std::vector<webrtc::rtcp::TmmbItem>)::$_0 &,webrtc::rtcp::TmmbItem*,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = (a2 - 48);
  v11 = (a2 - 72);
  for (i = a1; ; *(i - 8) = v81)
  {
LABEL_2:
    a1 = i;
    v13 = a2 - i;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - i) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        if (*(a2 - 8) < *(i + 16))
        {
          v217 = *(i + 16);
          v187 = *i;
          v99 = *(a2 - 24);
          *(i + 16) = *(a2 - 8);
          *i = v99;
          result = v187;
          *(a2 - 8) = v217;
          *(a2 - 24) = v187;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v100 = *(i + 40);
      v101 = *(i + 64);
      if (v100 >= *(i + 16))
      {
        if (v101 < v100)
        {
          v148 = *(i + 40);
          result = *(i + 24);
          *(i + 24) = *(i + 48);
          *(i + 40) = *(i + 64);
          *(i + 48) = result;
          *(i + 64) = v148;
          if (*(i + 40) < *(i + 16))
          {
            v220 = *(i + 16);
            v192 = *i;
            *i = *(i + 24);
            *(i + 16) = *(i + 40);
            result = v192;
            *(i + 24) = v192;
            *(i + 40) = v220;
          }
        }
      }

      else if (v101 >= v100)
      {
        v222 = *(i + 16);
        v195 = *i;
        *i = *(i + 24);
        *(i + 16) = *(i + 40);
        result = v195;
        *(i + 24) = v195;
        *(i + 40) = v222;
        if (*(i + 64) < *(i + 40))
        {
          v160 = *(i + 40);
          result = *(i + 24);
          *(i + 24) = *(i + 48);
          *(i + 40) = *(i + 64);
          *(i + 48) = result;
          *(i + 64) = v160;
        }
      }

      else
      {
        v218 = *(i + 16);
        v188 = *i;
        *i = *(i + 48);
        *(i + 16) = *(i + 64);
        result = v188;
        *(i + 48) = v188;
        *(i + 64) = v218;
      }

      if (*(a2 - 8) >= *(i + 64))
      {
        return result;
      }

      result = *(i + 48);
      v161 = *(i + 64);
      v162 = *(a2 - 8);
      *(i + 48) = *v9;
      *(i + 64) = v162;
      *(a2 - 8) = v161;
      *v9 = result;
      if (*(i + 64) >= *(i + 40))
      {
        return result;
      }

      v163 = *(i + 40);
      result = *(i + 24);
      *(i + 24) = *(i + 48);
      *(i + 40) = *(i + 64);
      *(i + 48) = result;
      *(i + 64) = v163;
LABEL_198:
      if (*(i + 40) < *(i + 16))
      {
        v223 = *(i + 16);
        v196 = *i;
        *i = *(i + 24);
        *(i + 16) = *(i + 40);
        result = v196;
        *(i + 24) = v196;
        *(i + 40) = v223;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::TMMBRHelp::FindBoundingSet(std::vector<webrtc::rtcp::TmmbItem>)::$_0 &,webrtc::rtcp::TmmbItem*,0>(i, (i + 24), (i + 48), (i + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      if (a4)
      {
        if (i != a2)
        {
          v102 = (i + 24);
          if (i + 24 != a2)
          {
            v103 = 0;
            v104 = i;
            do
            {
              v106 = v104[2].n128_u16[4];
              v107 = v104[1].n128_u16[0];
              v104 = v102;
              if (v106 < v107)
              {
                v189 = *v102;
                v108 = v103;
                do
                {
                  v109 = i + v108;
                  *(v109 + 24) = *(i + v108);
                  *(v109 + 40) = *(i + v108 + 16);
                  if (!v108)
                  {
                    v105 = i;
                    goto LABEL_130;
                  }

                  v108 -= 24;
                }

                while (v106 < *(v109 - 8));
                v105 = i + v108 + 24;
LABEL_130:
                result = v189;
                *v105 = v189;
                *(v105 + 16) = v106;
              }

              v102 = (v104 + 24);
              v103 += 24;
            }

            while (&v104[1].n128_i8[8] != a2);
          }
        }
      }

      else if (i != a2)
      {
        v149 = (i + 24);
        if (i + 24 != a2)
        {
          v150 = 0;
          v151 = -24;
          v152 = 24;
          do
          {
            v153 = i + v150;
            v150 = v152;
            v154 = *(v153 + 40);
            if (v154 < *(v153 + 16))
            {
              v193 = *v149;
              v155 = v151;
              v156 = v149;
              do
              {
                *v156 = *(v156 - 24);
                v156[1].n128_u16[0] = v156[-1].n128_u16[4];
                if (!v155)
                {
                  goto LABEL_190;
                }

                v157 = v156[-2].n128_u16[0];
                v156 = (v156 - 24);
                v155 += 24;
              }

              while (v154 < v157);
              result = v193;
              *v156 = v193;
              v156[1].n128_u16[0] = v154;
            }

            v152 = v150 + 24;
            v149 = (v149 + 24);
            v151 -= 24;
          }

          while (v149 != a2);
        }
      }

      return result;
    }

    if (!a3)
    {
      if (i != a2)
      {
        v110 = (v14 - 2) >> 1;
        v111 = v110;
        do
        {
          if (v110 >= v111)
          {
            v113 = (2 * (v111 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v114 = i + 24 * v113;
            if (2 * v111 + 2 < v14)
            {
              v115 = *(v114 + 16);
              v116 = *(v114 + 40);
              v117 = v115 >= v116;
              v118 = v115 >= v116 ? 0 : 24;
              v114 += v118;
              if (!v117)
              {
                v113 = 2 * v111 + 2;
              }
            }

            v119 = i + 24 * v111;
            v120 = *(v119 + 16);
            if (*(v114 + 16) >= v120)
            {
              v190 = *v119;
              do
              {
                v121 = v119;
                v119 = v114;
                v122 = *v114;
                *(v121 + 16) = *(v114 + 16);
                *v121 = v122;
                if (v110 < v113)
                {
                  break;
                }

                v123 = (2 * v113) | 1;
                v114 = i + 24 * v123;
                v124 = 2 * v113 + 2;
                if (v124 < v14)
                {
                  v125 = *(v114 + 16);
                  v126 = *(v114 + 40);
                  v127 = v125 >= v126;
                  v128 = v125 >= v126 ? 0 : 24;
                  v114 += v128;
                  if (!v127)
                  {
                    v123 = v124;
                  }
                }

                v113 = v123;
              }

              while (*(v114 + 16) >= v120);
              *v119 = v190;
              *(v119 + 16) = v120;
            }
          }

          v112 = v111-- <= 0;
        }

        while (!v112);
        v129 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v130 = 0;
          v219 = *(i + 16);
          v191 = *i;
          v131 = i;
          do
          {
            v137 = v131 + 24 * v130;
            v135 = (v137 + 24);
            v138 = (2 * v130) | 1;
            v130 = 2 * v130 + 2;
            if (v130 < v129)
            {
              v132 = *(v137 + 40);
              v133 = *(v137 + 64);
              v134 = (v137 + 48);
              if (v132 >= v133)
              {
                v130 = v138;
              }

              else
              {
                v135 = v134;
              }
            }

            else
            {
              v130 = v138;
            }

            v136 = *v135;
            *(v131 + 16) = v135[1].n128_u16[0];
            *v131 = v136;
            v131 = v135;
          }

          while (v130 <= ((v129 - 2) >> 1));
          a2 -= 24;
          if (v135 == a2)
          {
            result = v191;
            v135[1].n128_u16[0] = v219;
            *v135 = v191;
          }

          else
          {
            v139 = *a2;
            v135[1].n128_u16[0] = *(a2 + 16);
            *v135 = v139;
            result = v191;
            *(a2 + 16) = v219;
            *a2 = v191;
            v140 = &v135[1].n128_i64[1] - i;
            if (v140 >= 25)
            {
              v141 = (-2 - 0x5555555555555555 * (v140 >> 3)) >> 1;
              v142 = i + 24 * v141;
              v143 = v135[1].n128_u16[0];
              if (*(v142 + 16) < v143)
              {
                v166 = *v135;
                do
                {
                  v144 = v135;
                  v135 = v142;
                  v145 = *v142;
                  v144[1].n128_u16[0] = *(v142 + 16);
                  *v144 = v145;
                  if (!v141)
                  {
                    break;
                  }

                  v141 = (v141 - 1) >> 1;
                  v142 = i + 24 * v141;
                }

                while (*(v142 + 16) < v143);
                result = v166;
                *v135 = v166;
                v135[1].n128_u16[0] = v143;
              }
            }
          }

          v112 = v129-- <= 2;
        }

        while (!v112);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (i + 24 * (v14 >> 1));
    v17 = *(a2 - 8);
    if (v13 < 0xC01)
    {
      v20 = *(i + 16);
      if (v20 >= v16[1].n128_u16[0])
      {
        if (v17 < v20)
        {
          v201 = *(i + 16);
          v171 = *i;
          v24 = *v9;
          *(i + 16) = *(a2 - 8);
          *i = v24;
          *(a2 - 8) = v201;
          *v9 = v171;
          if (*(i + 16) < v16[1].n128_u16[0])
          {
            v202 = v16[1].n128_u64[0];
            v172 = *v16;
            v25 = *i;
            v16[1].n128_u16[0] = *(i + 16);
            *v16 = v25;
            *(i + 16) = v202;
            *i = v172;
            --a3;
            if (a4)
            {
              goto LABEL_38;
            }

            goto LABEL_61;
          }
        }
      }

      else
      {
        if (v17 < v20)
        {
          v198 = v16[1].n128_u64[0];
          v168 = *v16;
          v21 = *v9;
          v16[1].n128_u16[0] = *(a2 - 8);
          *v16 = v21;
          goto LABEL_36;
        }

        v205 = v16[1].n128_u64[0];
        v175 = *v16;
        v39 = *i;
        v16[1].n128_u16[0] = *(i + 16);
        *v16 = v39;
        *(i + 16) = v205;
        *i = v175;
        if (*(a2 - 8) < *(i + 16))
        {
          v198 = *(i + 16);
          v168 = *i;
          v40 = *v9;
          *(i + 16) = *(a2 - 8);
          *i = v40;
LABEL_36:
          *(a2 - 8) = v198;
          *v9 = v168;
        }
      }

      --a3;
      if (a4)
      {
        goto LABEL_38;
      }

      goto LABEL_61;
    }

    v18 = v16[1].n128_u16[0];
    if (v18 >= *(i + 16))
    {
      if (v17 < v18)
      {
        v199 = v16[1].n128_u64[0];
        v169 = *v16;
        v22 = *v9;
        v16[1].n128_u16[0] = *(a2 - 8);
        *v16 = v22;
        *(a2 - 8) = v199;
        *v9 = v169;
        if (v16[1].n128_u16[0] < *(i + 16))
        {
          v200 = *(i + 16);
          v170 = *i;
          v23 = *v16;
          *(i + 16) = v16[1].n128_u16[0];
          *i = v23;
          v16[1].n128_u16[0] = v200;
          *v16 = v170;
        }
      }
    }

    else
    {
      if (v17 >= v18)
      {
        v203 = *(i + 16);
        v173 = *i;
        v26 = *v16;
        *(i + 16) = v16[1].n128_u16[0];
        *i = v26;
        v16[1].n128_u16[0] = v203;
        *v16 = v173;
        if (*(a2 - 8) >= v16[1].n128_u16[0])
        {
          goto LABEL_28;
        }

        v197 = v16[1].n128_u64[0];
        v167 = *v16;
        v27 = *v9;
        v16[1].n128_u16[0] = *(a2 - 8);
        *v16 = v27;
      }

      else
      {
        v197 = *(i + 16);
        v167 = *i;
        v19 = *v9;
        *(i + 16) = *(a2 - 8);
        *i = v19;
      }

      *(a2 - 8) = v197;
      *v9 = v167;
    }

LABEL_28:
    v28 = i + 24 * v15;
    v29 = (v28 - 24);
    v30 = *(v28 - 8);
    v31 = *(a2 - 32);
    if (v30 >= *(i + 40))
    {
      if (v31 < v30)
      {
        v204 = v29[1].n128_i64[0];
        v174 = *v29;
        v35 = *v10;
        v29[1].n128_u16[0] = *(a2 - 32);
        *v29 = v35;
        *(a2 - 32) = v204;
        *v10 = v174;
        if (v29[1].n128_u16[0] < *(i + 40))
        {
          v36 = *(i + 24);
          v37 = *(i + 40);
          v38 = v29[1].n128_i16[0];
          *(i + 24) = *v29;
          *(i + 40) = v38;
          v29[1].n128_u16[0] = v37;
          *v29 = v36;
        }
      }
    }

    else
    {
      if (v31 >= v30)
      {
        v42 = *(i + 24);
        v43 = *(i + 40);
        v44 = v29[1].n128_i16[0];
        *(i + 24) = *v29;
        *(i + 40) = v44;
        v29[1].n128_u16[0] = v43;
        *v29 = v42;
        if (*(a2 - 32) >= v29[1].n128_u16[0])
        {
          goto LABEL_42;
        }

        v206 = v29[1].n128_i64[0];
        v176 = *v29;
        v45 = *v10;
        v29[1].n128_u16[0] = *(a2 - 32);
        *v29 = v45;
        v32 = v176;
        *(a2 - 32) = v206;
      }

      else
      {
        v32 = *(i + 24);
        v33 = *(i + 40);
        v34 = *(a2 - 32);
        *(i + 24) = *v10;
        *(i + 40) = v34;
        *(a2 - 32) = v33;
      }

      *v10 = v32;
    }

LABEL_42:
    v46 = i + 24 * v15;
    v47 = *(v46 + 40);
    v48 = *(a2 - 56);
    if (v47 >= *(i + 64))
    {
      if (v48 < v47)
      {
        v207 = *(v46 + 40);
        v177 = *(v46 + 24);
        v52 = *v11;
        *(v46 + 40) = *(a2 - 56);
        *(v46 + 24) = v52;
        *(a2 - 56) = v207;
        *v11 = v177;
        if (*(v46 + 40) < *(i + 64))
        {
          v53 = *(i + 48);
          v54 = *(i + 64);
          v55 = *(v46 + 40);
          *(i + 48) = *(v46 + 24);
          *(i + 64) = v55;
          *(v46 + 40) = v54;
          *(v46 + 24) = v53;
        }
      }
    }

    else
    {
      if (v48 >= v47)
      {
        v56 = *(i + 48);
        v57 = *(i + 64);
        v58 = *(v46 + 40);
        *(i + 48) = *(v46 + 24);
        *(i + 64) = v58;
        *(v46 + 40) = v57;
        *(v46 + 24) = v56;
        if (*(a2 - 56) >= *(v46 + 40))
        {
          goto LABEL_51;
        }

        v208 = *(v46 + 40);
        v178 = *(v46 + 24);
        v59 = *v11;
        *(v46 + 40) = *(a2 - 56);
        *(v46 + 24) = v59;
        v49 = v178;
        *(a2 - 56) = v208;
      }

      else
      {
        v49 = *(i + 48);
        v50 = *(i + 64);
        v51 = *(a2 - 56);
        *(i + 48) = *v11;
        *(i + 64) = v51;
        *(a2 - 56) = v50;
      }

      *v11 = v49;
    }

LABEL_51:
    v60 = v16[1].n128_u16[0];
    v61 = *(v46 + 40);
    if (v60 >= v29[1].n128_u16[0])
    {
      if (v61 < v60)
      {
        v210 = v16[1].n128_u64[0];
        v180 = *v16;
        *v16 = *(v46 + 24);
        v16[1].n128_u16[0] = *(v46 + 40);
        *(v46 + 40) = v210;
        *(v46 + 24) = v180;
        if (v16[1].n128_u16[0] < v29[1].n128_u16[0])
        {
          v211 = v29[1].n128_i64[0];
          v181 = *v29;
          *v29 = *v16;
          v29[1].n128_u16[0] = v16[1].n128_u16[0];
          v16[1].n128_u16[0] = v211;
          *v16 = v181;
        }
      }
    }

    else
    {
      if (v61 >= v60)
      {
        v212 = v29[1].n128_i64[0];
        v182 = *v29;
        *v29 = *v16;
        v29[1].n128_u16[0] = v16[1].n128_u16[0];
        v16[1].n128_u16[0] = v212;
        *v16 = v182;
        if (*(v46 + 40) >= v16[1].n128_u16[0])
        {
          goto LABEL_60;
        }

        v209 = v16[1].n128_u64[0];
        v179 = *v16;
        *v16 = *(v46 + 24);
        v16[1].n128_u16[0] = *(v46 + 40);
      }

      else
      {
        v209 = v29[1].n128_u64[0];
        v179 = *v29;
        *v29 = *(v46 + 24);
        v29[1].n128_u16[0] = *(v46 + 40);
      }

      *(v46 + 40) = v209;
      *(v46 + 24) = v179;
    }

LABEL_60:
    v213 = *(i + 16);
    v183 = *i;
    v62 = *v16;
    *(i + 16) = v16[1].n128_u16[0];
    *i = v62;
    v16[1].n128_u16[0] = v213;
    *v16 = v183;
    --a3;
    if (a4)
    {
LABEL_38:
      v41 = *(i + 16);
LABEL_62:
      v63 = 0;
      v164 = *i;
      do
      {
        if (i + v63 + 24 == a2)
        {
          goto LABEL_190;
        }

        v64 = *(i + v63 + 40);
        v63 += 24;
      }

      while (v64 < v41);
      v65 = i + v63;
      v66 = a2;
      if (v63 != 24)
      {
        while (v66 != i)
        {
          v67 = v66 - 24;
          v68 = *(v66 - 8);
          v66 -= 24;
          if (v68 < v41)
          {
            goto LABEL_72;
          }
        }

LABEL_190:
        __break(1u);
        goto LABEL_191;
      }

      v69 = a2;
      do
      {
        if (v65 >= v69)
        {
          v67 = v69;
          i = v65;
          goto LABEL_83;
        }

        v67 = v69 - 24;
        v70 = *(v69 - 8);
        v69 -= 24;
      }

      while (v70 >= v41);
LABEL_72:
      i = v65;
      if (v65 < v67)
      {
        v71 = v67;
LABEL_74:
        v214 = *(i + 16);
        v184 = *i;
        v72 = *v71;
        *(i + 16) = *(v71 + 16);
        *i = v72;
        *(v71 + 16) = v214;
        *v71 = v184;
        v73 = i + 24;
        while (v73 != a2)
        {
          v74 = *(v73 + 16);
          v73 += 24;
          if (v74 >= v41)
          {
            i = v73 - 24;
            v75 = v71;
            while (v75 != a1)
            {
              v71 = v75 - 24;
              v76 = *(v75 - 8);
              v75 -= 24;
              if (v76 < v41)
              {
                if (i < v71)
                {
                  goto LABEL_74;
                }

                goto LABEL_83;
              }
            }

            goto LABEL_190;
          }
        }

        goto LABEL_190;
      }

LABEL_83:
      v77 = (i - 24);
      if (i - 24 != a1)
      {
        v78 = *v77;
        *(a1 + 16) = *(i - 8);
        *a1 = v78;
      }

      *v77 = v164;
      *(i - 8) = v41;
      if (v65 < v67)
      {
LABEL_88:
        std::__introsort<std::_ClassicAlgPolicy,webrtc::TMMBRHelp::FindBoundingSet(std::vector<webrtc::rtcp::TmmbItem>)::$_0 &,webrtc::rtcp::TmmbItem*,false>(a1, i - 24, a3, a4 & 1);
        a4 = 0;
        goto LABEL_2;
      }

      v79 = std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::TMMBRHelp::FindBoundingSet(std::vector<webrtc::rtcp::TmmbItem>)::$_0 &,webrtc::rtcp::TmmbItem*>(a1, (i - 24), v164);
      if (!std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::TMMBRHelp::FindBoundingSet(std::vector<webrtc::rtcp::TmmbItem>)::$_0 &,webrtc::rtcp::TmmbItem*>(i, a2, v80))
      {
        if (v79)
        {
          goto LABEL_2;
        }

        goto LABEL_88;
      }

      a2 = i - 24;
      if (v79)
      {
        return result;
      }

      goto LABEL_1;
    }

LABEL_61:
    v41 = *(i + 16);
    if (*(i - 8) < v41)
    {
      goto LABEL_62;
    }

    v165 = *i;
    v81 = *(i + 16);
    if (v81 >= *(a2 - 8))
    {
      v84 = i + 24;
      do
      {
        i = v84;
        if (v84 >= a2)
        {
          break;
        }

        v85 = *(v84 + 16);
        v84 += 24;
      }

      while (v81 >= v85);
    }

    else
    {
      v82 = i + 24;
      do
      {
        if (v82 == a2)
        {
          goto LABEL_190;
        }

        v83 = *(v82 + 16);
        v82 += 24;
      }

      while (v81 >= v83);
      i = v82 - 24;
    }

    v86 = a2;
    if (i < a2)
    {
      v87 = a2;
      do
      {
        if (v87 == a1)
        {
          goto LABEL_190;
        }

        v86 = v87 - 24;
        v88 = *(v87 - 8);
        v87 -= 24;
      }

      while (v81 < v88);
    }

    while (i < v86)
    {
      v215 = *(i + 16);
      v185 = *i;
      v89 = *v86;
      *(i + 16) = *(v86 + 16);
      *i = v89;
      *(v86 + 16) = v215;
      *v86 = v185;
      v90 = i + 24;
      do
      {
        if (v90 == a2)
        {
          goto LABEL_190;
        }

        v91 = *(v90 + 16);
        v90 += 24;
      }

      while (v81 >= v91);
      i = v90 - 24;
      v92 = v86;
      do
      {
        if (v92 == a1)
        {
          goto LABEL_190;
        }

        v86 = v92 - 24;
        v93 = *(v92 - 8);
        v92 -= 24;
      }

      while (v81 < v93);
    }

    v94 = (i - 24);
    if (i - 24 != a1)
    {
      v95 = *v94;
      *(a1 + 16) = *(i - 8);
      *a1 = v95;
    }

    a4 = 0;
    result = v165;
    *v94 = v165;
  }

  v96 = *(i + 40);
  v97 = *(a2 - 8);
  if (v96 >= *(i + 16))
  {
    if (v97 >= v96)
    {
      return result;
    }

    result = *(i + 24);
    v146 = *(i + 40);
    v147 = *(a2 - 8);
    *(i + 24) = *v9;
    *(i + 40) = v147;
    *(a2 - 8) = v146;
    *v9 = result;
    goto LABEL_198;
  }

  if (v97 < v96)
  {
    v216 = *(i + 16);
    v186 = *i;
    v98 = *v9;
    *(i + 16) = *(a2 - 8);
    *i = v98;
    result = v186;
    *(a2 - 8) = v216;
    *v9 = v186;
    return result;
  }

LABEL_191:
  v221 = *(a1 + 16);
  v194 = *a1;
  *a1 = *(a1 + 24);
  *(a1 + 16) = *(a1 + 40);
  result = v194;
  *(a1 + 24) = v194;
  *(a1 + 40) = v221;
  if (*(a2 - 8) < *(a1 + 40))
  {
    result = *(a1 + 24);
    v158 = *(a1 + 40);
    v159 = *(a2 - 8);
    *(a1 + 24) = *v9;
    *(a1 + 40) = v159;
    *(a2 - 8) = v158;
    *v9 = result;
  }

  return result;
}

__n128 std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::TMMBRHelp::FindBoundingSet(std::vector<webrtc::rtcp::TmmbItem>)::$_0 &,webrtc::rtcp::TmmbItem*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2[1].n128_u16[0];
  v7 = a3[1].n128_u16[0];
  if (v6 >= a1[1].n128_u16[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      v10 = a2[1].n128_u64[0];
      v11 = a3[1].n128_u16[0];
      *a2 = *a3;
      a2[1].n128_u16[0] = v11;
      a3[1].n128_u16[0] = v10;
      *a3 = result;
      if (a2[1].n128_u16[0] < a1[1].n128_u16[0])
      {
        result = *a1;
        v12 = a1[1].n128_u64[0];
        v13 = a2[1].n128_u16[0];
        *a1 = *a2;
        a1[1].n128_u16[0] = v13;
        a2[1].n128_u16[0] = v12;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      v8 = a1[1].n128_u64[0];
      v9 = a3[1].n128_u16[0];
      *a1 = *a3;
      a1[1].n128_u16[0] = v9;
LABEL_9:
      a3[1].n128_u16[0] = v8;
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    v14 = a1[1].n128_u64[0];
    v15 = a2[1].n128_u16[0];
    *a1 = *a2;
    a1[1].n128_u16[0] = v15;
    a2[1].n128_u16[0] = v14;
    *a2 = result;
    if (a3[1].n128_u16[0] < a2[1].n128_u16[0])
    {
      result = *a2;
      v8 = a2[1].n128_u64[0];
      v16 = a3[1].n128_u16[0];
      *a2 = *a3;
      a2[1].n128_u16[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4[1].n128_u16[0] < a3[1].n128_u16[0])
  {
    result = *a3;
    v17 = a3[1].n128_u64[0];
    v18 = a4[1].n128_u16[0];
    *a3 = *a4;
    a3[1].n128_u16[0] = v18;
    a4[1].n128_u16[0] = v17;
    *a4 = result;
    if (a3[1].n128_u16[0] < a2[1].n128_u16[0])
    {
      result = *a2;
      v19 = a2[1].n128_u64[0];
      v20 = a3[1].n128_u16[0];
      *a2 = *a3;
      a2[1].n128_u16[0] = v20;
      a3[1].n128_u16[0] = v19;
      *a3 = result;
      if (a2[1].n128_u16[0] < a1[1].n128_u16[0])
      {
        result = *a1;
        v21 = a1[1].n128_u64[0];
        v22 = a2[1].n128_u16[0];
        *a1 = *a2;
        a1[1].n128_u16[0] = v22;
        a2[1].n128_u16[0] = v21;
        *a2 = result;
      }
    }
  }

  if (a5[1].n128_u16[0] < a4[1].n128_u16[0])
  {
    result = *a4;
    v23 = a4[1].n128_i64[0];
    v24 = a5[1].n128_u16[0];
    *a4 = *a5;
    a4[1].n128_u16[0] = v24;
    a5[1].n128_u16[0] = v23;
    *a5 = result;
    if (a4[1].n128_u16[0] < a3[1].n128_u16[0])
    {
      result = *a3;
      v25 = a3[1].n128_u64[0];
      v26 = a4[1].n128_u16[0];
      *a3 = *a4;
      a3[1].n128_u16[0] = v26;
      a4[1].n128_u16[0] = v25;
      *a4 = result;
      if (a3[1].n128_u16[0] < a2[1].n128_u16[0])
      {
        result = *a2;
        v27 = a2[1].n128_u64[0];
        v28 = a3[1].n128_u16[0];
        *a2 = *a3;
        a2[1].n128_u16[0] = v28;
        a3[1].n128_u16[0] = v27;
        *a3 = result;
        if (a2[1].n128_u16[0] < a1[1].n128_u16[0])
        {
          result = *a1;
          v29 = a1[1].n128_u64[0];
          v30 = a2[1].n128_u16[0];
          *a1 = *a2;
          a1[1].n128_u16[0] = v30;
          a2[1].n128_u16[0] = v29;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::TMMBRHelp::FindBoundingSet(std::vector<webrtc::rtcp::TmmbItem>)::$_0 &,webrtc::rtcp::TmmbItem*>(uint64_t a1, __int128 *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v8 = (a2 - 24);
      v9 = *(a1 + 40);
      v10 = *(a2 - 4);
      if (v9 < *(a1 + 16))
      {
        if (v10 >= v9)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v37;
          *(a1 + 40) = v36;
          if (*(a2 - 4) >= *(a1 + 40))
          {
            return 1;
          }

          v11 = *(a1 + 24);
          v12 = *(a1 + 40);
          v38 = *(a2 - 4);
          *(a1 + 24) = *v8;
          *(a1 + 40) = v38;
        }

        else
        {
          v11 = *a1;
          v12 = *(a1 + 16);
          v13 = *(a2 - 4);
          *a1 = *v8;
          *(a1 + 16) = v13;
        }

        *(a2 - 4) = v12;
        *v8 = v11;
        return 1;
      }

      if (v10 >= v9)
      {
        return 1;
      }

      v25 = *(a1 + 24);
      v26 = *(a1 + 40);
      v27 = *(a2 - 4);
      *(a1 + 24) = *v8;
      *(a1 + 40) = v27;
      *(a2 - 4) = v26;
      *v8 = v25;
LABEL_50:
      if (*(a1 + 40) < *(a1 + 16))
      {
        v56 = *(a1 + 16);
        v57 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v57;
        *(a1 + 40) = v56;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::TMMBRHelp::FindBoundingSet(std::vector<webrtc::rtcp::TmmbItem>)::$_0 &,webrtc::rtcp::TmmbItem*,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
        return 1;
      }

      goto LABEL_13;
    }

    v20 = *(a1 + 40);
    v21 = *(a1 + 16);
    v22 = *(a1 + 64);
    if (v20 >= v21)
    {
      if (v22 < v20)
      {
        v32 = *(a1 + 40);
        v33 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v33;
        *(a1 + 64) = v32;
        if (*(a1 + 40) < v21)
        {
          v34 = *(a1 + 16);
          v35 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v35;
          *(a1 + 40) = v34;
        }
      }

      goto LABEL_47;
    }

    if (v22 >= v20)
    {
      v48 = *(a1 + 16);
      v49 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v49;
      *(a1 + 40) = v48;
      if (v22 >= *(a1 + 40))
      {
        goto LABEL_47;
      }

      v23 = *(a1 + 40);
      v24 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v23 = *(a1 + 16);
      v24 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    *(a1 + 48) = v24;
    *(a1 + 64) = v23;
LABEL_47:
    if (*(a2 - 4) >= *(a1 + 64))
    {
      return 1;
    }

    v50 = a2 - 24;
    v51 = *(a1 + 48);
    v52 = *(a1 + 64);
    v53 = *(a2 - 4);
    *(a1 + 48) = *(a2 - 24);
    *(a1 + 64) = v53;
    *(v50 + 16) = v52;
    *v50 = v51;
    if (*(a1 + 64) >= *(a1 + 40))
    {
      return 1;
    }

    v54 = *(a1 + 40);
    v55 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v55;
    *(a1 + 64) = v54;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 4) < *(a1 + 16))
    {
      v4 = *a1;
      v5 = *(a1 + 16);
      v6 = *(a2 - 4);
      *a1 = *(a2 - 24);
      *(a1 + 16) = v6;
      *(a2 - 4) = v5;
      *(a2 - 24) = v4;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v14 = (a1 + 48);
  v15 = *(a1 + 40);
  v16 = *(a1 + 16);
  v17 = *(a1 + 64);
  if (v15 >= v16)
  {
    if (v17 < v15)
    {
      v28 = *(a1 + 40);
      v29 = *(a1 + 24);
      *(a1 + 24) = *v14;
      *(a1 + 40) = *(a1 + 64);
      *v14 = v29;
      *(a1 + 64) = v28;
      if (*(a1 + 40) < v16)
      {
        v30 = *(a1 + 16);
        v31 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v31;
        *(a1 + 40) = v30;
      }
    }
  }

  else
  {
    if (v17 >= v15)
    {
      v39 = *(a1 + 16);
      v40 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v40;
      *(a1 + 40) = v39;
      if (v17 >= *(a1 + 40))
      {
        goto LABEL_33;
      }

      v18 = *(a1 + 40);
      v19 = *(a1 + 24);
      *(a1 + 24) = *v14;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v18 = *(a1 + 16);
      v19 = *a1;
      *a1 = *v14;
      *(a1 + 16) = *(a1 + 64);
    }

    *v14 = v19;
    *(a1 + 64) = v18;
  }

LABEL_33:
  v41 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v42 = 0;
  v43 = 0;
  while (1)
  {
    v44 = *(v41 + 8);
    if (v44 < *(v14 + 8))
    {
      break;
    }

LABEL_42:
    v14 = v41;
    v42 += 24;
    v41 = (v41 + 24);
    if (v41 == a2)
    {
      return 1;
    }
  }

  v58 = *v41;
  v45 = v42;
  do
  {
    v46 = a1 + v45;
    *(v46 + 72) = *(a1 + v45 + 48);
    *(v46 + 88) = *(a1 + v45 + 64);
    if (v45 == -48)
    {
      *a1 = v58;
      *(a1 + 16) = v44;
      if (++v43 != 8)
      {
        goto LABEL_42;
      }

      return (v41 + 24) == a2;
    }

    v45 -= 24;
  }

  while (v44 < *(v46 + 40));
  v47 = a1 + v45;
  *(v47 + 72) = v58;
  *(v47 + 88) = v44;
  if (++v43 != 8)
  {
    goto LABEL_42;
  }

  return (v41 + 24) == a2;
}

void webrtc::TrackMediaInfoMap::Initialize(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v14 = &unk_280905000;
  {
    goto LABEL_284;
  }

LABEL_2:
  v14 = pthread_getspecific(v14[403][11]);
  v19 = *(v14 + 217);
  *(v14 + 217) = 0;
  *a1 = 1;
  v20 = a1 + 1;
  if (*(a1 + 112) == *(a2 + 104))
  {
    if (*(a1 + 112))
    {
      if (v20 != a2)
      {
        std::vector<webrtc::VoiceSenderInfo>::__assign_with_size[abi:sn200100]<webrtc::VoiceSenderInfo*,webrtc::VoiceSenderInfo*>(v20, *a2, *(a2 + 8), 0x7D6343EB1A1F58D1 * ((*(a2 + 8) - *a2) >> 3));
        std::vector<webrtc::VoiceReceiverInfo>::__assign_with_size[abi:sn200100]<webrtc::VoiceReceiverInfo*,webrtc::VoiceReceiverInfo*>(a1 + 4, *(a2 + 24), *(a2 + 32), 0xF128CFC4A33F128DLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
        std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,webrtc::RtpCodecParameters>,std::__tree_node<std::__value_type<int,webrtc::RtpCodecParameters>,void *> *,long>>((a1 + 7), *(a2 + 48), (a2 + 56));
        std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,webrtc::RtpCodecParameters>,std::__tree_node<std::__value_type<int,webrtc::RtpCodecParameters>,void *> *,long>>((a1 + 10), *(a2 + 72), (a2 + 80));
      }

      *(a1 + 26) = *(a2 + 96);
    }
  }

  else if (*(a1 + 112))
  {
    webrtc::VoiceMediaInfo::~VoiceMediaInfo(v20);
    *(a1 + 112) = 0;
  }

  else
  {
    webrtc::VoiceMediaInfo::VoiceMediaInfo(v20, a2);
    *(a1 + 112) = 1;
  }

  v21 = a1 + 15;
  v132 = v14;
  v131 = v19;
  if (*(a1 + 240) == *(a3 + 120))
  {
    if (v21 != a3 && *(a1 + 240))
    {
      v14 = 0xCBEEA4E1A08AD8F3;
      std::vector<webrtc::VideoSenderInfo>::__assign_with_size[abi:sn200100]<webrtc::VideoSenderInfo*,webrtc::VideoSenderInfo*>(v21, *a3, *(a3 + 8), 0xCBEEA4E1A08AD8F3 * ((*(a3 + 8) - *a3) >> 3));
      std::vector<webrtc::VideoSenderInfo>::__assign_with_size[abi:sn200100]<webrtc::VideoSenderInfo*,webrtc::VideoSenderInfo*>(a1 + 18, *(a3 + 24), *(a3 + 32), 0xCBEEA4E1A08AD8F3 * ((*(a3 + 32) - *(a3 + 24)) >> 3));
      std::vector<webrtc::VideoReceiverInfo>::__assign_with_size[abi:sn200100]<webrtc::VideoReceiverInfo*,webrtc::VideoReceiverInfo*>(a1 + 21, *(a3 + 48), *(a3 + 56), 0xAFD6A052BF5A814BLL * ((*(a3 + 56) - *(a3 + 48)) >> 3));
      std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,webrtc::RtpCodecParameters>,std::__tree_node<std::__value_type<int,webrtc::RtpCodecParameters>,void *> *,long>>((a1 + 24), *(a3 + 72), (a3 + 80));
      std::__tree<std::__value_type<int,webrtc::RtpCodecParameters>,std::__map_value_compare<int,std::__value_type<int,webrtc::RtpCodecParameters>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::RtpCodecParameters>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,webrtc::RtpCodecParameters>,std::__tree_node<std::__value_type<int,webrtc::RtpCodecParameters>,void *> *,long>>((a1 + 27), *(a3 + 96), (a3 + 104));
    }
  }

  else if (*(a1 + 240))
  {
    webrtc::VideoMediaInfo::~VideoMediaInfo(v21);
    *(a1 + 240) = 0;
  }

  else
  {
    webrtc::VideoMediaInfo::VideoMediaInfo(v21, a3);
    *(a1 + 240) = 1;
  }

  v137 = a1;
  a3 = 0x1020C002C67DF80;
  v143[0] = 0;
  v143[1] = 0;
  v142[1] = 0;
  v142[2] = v143;
  v141[2] = v142;
  v142[0] = 0;
  v141[0] = 0;
  v141[1] = 0;
  v140[1] = 0;
  v140[2] = v141;
  v140[0] = 0;
  v138 = 0;
  v139 = 0;
  if (a5)
  {
    v22 = a4;
  }

  else
  {
    v22 = 0;
  }

  v133 = a5;
  v134 = a7;
  if (a7)
  {
    v23 = a6;
  }

  else
  {
    v23 = 0;
  }

  v135 = v23;
  if (a5)
  {
    v24 = &v22[a5];
    v25 = a4;
    do
    {
      v26 = (*(**v25 + 64))();
      (*(**v25 + 40))(&v144);
      a2 = v144;
      if (v144)
      {
        (*(*v144 + 8))(v144);
        v27 = (*(**v25 + 56))();
        if (v27)
        {
          a5 = v27;
          if (v26)
          {
            v28 = v142[0];
            v14 = v142;
            if (!v142[0])
            {
LABEL_36:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v29 = v28;
                v30 = *(v28 + 8);
                if (v27 >= v30)
                {
                  break;
                }

                v28 = *v29;
                v14 = v29;
                if (!*v29)
                {
                  goto LABEL_36;
                }
              }

              if (v30 >= v27)
              {
                break;
              }

              v28 = v29[1];
              if (!v28)
              {
                goto LABEL_36;
              }
            }

            v29[5] = a2;
          }

          else
          {
            v31 = v143[0];
            v32 = v143;
LABEL_39:
            v14 = v32;
            if (!v31)
            {
LABEL_43:
              operator new();
            }

            while (1)
            {
              v32 = v31;
              v33 = *(v31 + 8);
              if (v27 < v33)
              {
                v31 = *v32;
                goto LABEL_39;
              }

              if (v33 >= v27)
              {
                break;
              }

              v31 = v32[1];
              if (!v31)
              {
                goto LABEL_43;
              }
            }

            v32[5] = a2;
          }
        }
      }

      ++v25;
    }

    while (v25 != v24);
  }

  if (v134)
  {
    v136 = &v135[v134];
    v34 = a6;
    do
    {
      a5 = (*(**v34 + 64))();
      (*(**v34 + 32))(&v144);
      a2 = v144;
      if (v144)
      {
        (*(*v144 + 8))(v144);
      }

      (*(**v34 + 80))(&v144);
      v35 = v146;
      v36 = v147;
      if (v146 != v147)
      {
        if (a5)
        {
          do
          {
            while (*(v35 + 4) != 1)
            {
              v138 = a2;
              v35 += 68;
              if (v35 == v36)
              {
                goto LABEL_47;
              }
            }

            v37 = v140[0];
            v14 = v140;
            if (!v140[0])
            {
LABEL_61:
              operator new();
            }

            v38 = *v35;
            while (1)
            {
              while (1)
              {
                v39 = v37;
                v40 = *(v37 + 8);
                if (v38 >= v40)
                {
                  break;
                }

                v37 = *v39;
                v14 = v39;
                if (!*v39)
                {
                  goto LABEL_61;
                }
              }

              if (v40 >= v38)
              {
                break;
              }

              v37 = v39[1];
              if (!v37)
              {
                goto LABEL_61;
              }
            }

            v39[5] = a2;
            v35 += 68;
          }

          while (v35 != v36);
        }

        else
        {
          do
          {
            while (*(v35 + 4) != 1)
            {
              v139 = a2;
              v35 += 68;
              if (v35 == v36)
              {
                goto LABEL_47;
              }
            }

            v41 = v141[0];
            v14 = v141;
            if (!v141[0])
            {
LABEL_72:
              operator new();
            }

            v42 = *v35;
            while (1)
            {
              while (1)
              {
                v43 = v41;
                v44 = *(v41 + 8);
                if (v42 >= v44)
                {
                  break;
                }

                v41 = *v43;
                v14 = v43;
                if (!*v43)
                {
                  goto LABEL_72;
                }
              }

              if (v44 >= v42)
              {
                break;
              }

              v41 = v43[1];
              if (!v41)
              {
                goto LABEL_72;
              }
            }

            v43[5] = a2;
            v35 += 68;
          }

          while (v35 != v36);
        }
      }

LABEL_47:
      webrtc::RtpParameters::~RtpParameters(&v144);
      ++v34;
    }

    while (v34 != v136);
  }

  v45 = v137;
  if (v133)
  {
    v46 = &a4[v133];
    a2 = (v137 + 44);
    do
    {
      v47 = (*(**a4 + 280))(*a4);
      (*(**a4 + 40))(&v144);
      a5 = v144;
      v48 = *a2;
      v14 = (v137 + 44);
      if (!*a2)
      {
LABEL_84:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v49 = v48;
          v50 = *(v48 + 32);
          if (v144 >= v50)
          {
            break;
          }

          v48 = *v49;
          v14 = v49;
          if (!*v49)
          {
            goto LABEL_84;
          }
        }

        if (v50 >= v144)
        {
          break;
        }

        v48 = *(v49 + 8);
        if (!v48)
        {
          goto LABEL_84;
        }
      }

      *(v49 + 40) = v47;
      if (a5)
      {
        (*(*a5 + 8))(a5);
      }

      ++a4;
      v45 = v137;
    }

    while (a4 != v46);
  }

  if (v134)
  {
    v51 = &a6[v134];
    a5 = (v45 + 44);
    do
    {
      v52 = (*(**a6 + 232))();
      (*(**a6 + 32))(&v144);
      a4 = v144;
      v53 = *a5;
      v14 = (v45 + 44);
      if (!*a5)
      {
LABEL_96:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          a2 = v53;
          v54 = *(v53 + 32);
          if (v144 >= v54)
          {
            break;
          }

          v53 = *a2;
          v14 = a2;
          if (!*a2)
          {
            goto LABEL_96;
          }
        }

        if (v54 >= v144)
        {
          break;
        }

        v53 = *(a2 + 8);
        if (!v53)
        {
          goto LABEL_96;
        }
      }

      *(a2 + 40) = v52;
      if (a4)
      {
        (*(*a4 + 8))(a4);
      }

      ++a6;
    }

    while (a6 != v51);
  }

  if ((v45[14] & 1) == 0)
  {
    goto LABEL_196;
  }

  v55 = v137;
  a6 = v137[1];
  a7 = v137[2];
  if (a6 == a7)
  {
    goto LABEL_140;
  }

  a2 = (v137 + 32);
  a5 = (v137 + 47);
  a1 = v143;
  do
  {
    v56 = a6[14];
    v57 = a6[15];
    if (v57 == v56)
    {
      v58 = 0;
      v59 = v143[0];
      if (!v143[0])
      {
        goto LABEL_126;
      }
    }

    else
    {
      v58 = *v56;
      v59 = v143[0];
      if (!v143[0])
      {
        goto LABEL_126;
      }
    }

    v60 = v143;
    do
    {
      v61 = *(v59 + 8);
      v62 = v61 >= v58;
      v63 = v61 < v58;
      if (v62)
      {
        v60 = v59;
      }

      v59 = v59[v63];
    }

    while (v59);
    if (v60 != v143 && *(v60 + 8) <= v58)
    {
      v64 = v60[5];
      if (v64)
      {
        v65 = *a2;
        v14 = (v137 + 32);
        if (!*a2)
        {
LABEL_122:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v66 = v65;
            v67 = *(v65 + 32);
            if (a6 >= v67)
            {
              break;
            }

            v65 = *v66;
            v14 = v66;
            if (!*v66)
            {
              goto LABEL_122;
            }
          }

          if (v67 >= a6)
          {
            break;
          }

          v65 = v66[1];
          if (!v65)
          {
            goto LABEL_122;
          }
        }

        (**v64)(v64);
        v68 = v66[5];
        if (v68)
        {
          (*(*v68 + 8))(v68);
        }

        v66[5] = v64;
        v56 = a6[14];
        v57 = a6[15];
        v55 = v137;
      }
    }

LABEL_126:
    if (v57 != v56)
    {
      a4 = *v56;
      if (a4)
      {
        v69 = *a5;
        v14 = (v137 + 47);
        a1 = v137 + 47;
        if (!*a5)
        {
LABEL_138:
          operator new();
        }

        v70 = *a5;
        do
        {
          v71 = *(v70 + 32);
          if (a4 >= v71)
          {
            if (v71 >= a4)
            {
              goto LABEL_283;
            }

            v70 += 8;
          }

          v70 = *v70;
        }

        while (v70);
        while (1)
        {
          while (1)
          {
            v72 = v69;
            v73 = *(v69 + 8);
            if (a4 >= v73)
            {
              break;
            }

            v69 = *v72;
            v14 = v72;
            if (!*v72)
            {
              goto LABEL_138;
            }
          }

          if (v73 >= a4)
          {
            break;
          }

          v69 = v72[1];
          if (!v69)
          {
            goto LABEL_138;
          }
        }

        v72[5] = a6;
        a1 = v143;
      }
    }

    a6 += 49;
  }

  while (a6 != a7);
  if ((v55[14] & 1) == 0)
  {
    goto LABEL_281;
  }

LABEL_140:
  a6 = v55[4];
  a2 = v55[5];
  if (a6 != a2)
  {
    a1 = v137 + 35;
    v74 = v137 + 50;
    do
    {
      v75 = a6[20];
      if (a6[21] == v75)
      {
        v76 = 0;
        v77 = v141[0];
        if (!v141[0])
        {
          goto LABEL_157;
        }
      }

      else
      {
        v76 = *v75;
        v77 = v141[0];
        if (!v141[0])
        {
          goto LABEL_157;
        }
      }

      v78 = v141;
      do
      {
        v79 = *(v77 + 8);
        v62 = v79 >= v76;
        v80 = v79 < v76;
        if (v62)
        {
          v78 = v77;
        }

        v77 = v77[v80];
      }

      while (v77);
      if (v78 == v141 || *(v78 + 8) > v76 || (a4 = v78[5]) == 0)
      {
LABEL_157:
        if (v139)
        {
          v82 = *a1;
          v14 = (v137 + 35);
          if (!*a1)
          {
LABEL_164:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              a7 = v82;
              v83 = v82[4];
              if (a6 >= v83)
              {
                break;
              }

              v82 = *a7;
              v14 = a7;
              if (!*a7)
              {
                goto LABEL_164;
              }
            }

            if (v83 >= a6)
            {
              break;
            }

            v82 = a7[1];
            if (!v82)
            {
              goto LABEL_164;
            }
          }

          (**v139)(v139);
          v84 = a7[5];
          if (v84)
          {
            (*(*v84 + 8))(v84);
          }

          a7[5] = v139;
        }

        v85 = a6[20];
        v86 = a6[21];
        if (v86 != v85)
        {
          goto LABEL_169;
        }

        goto LABEL_179;
      }

      v81 = *a1;
      v14 = (v137 + 35);
      if (!*a1)
      {
LABEL_175:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          a5 = v81;
          v89 = *(v81 + 32);
          if (a6 >= v89)
          {
            break;
          }

          v81 = *a5;
          v14 = a5;
          if (!*a5)
          {
            goto LABEL_175;
          }
        }

        if (v89 >= a6)
        {
          break;
        }

        v81 = *(a5 + 8);
        if (!v81)
        {
          goto LABEL_175;
        }
      }

      (**a4)(a4);
      v90 = *(a5 + 40);
      if (v90)
      {
        (*(*v90 + 8))(v90);
      }

      *(a5 + 40) = a4;
      v85 = a6[20];
      v86 = a6[21];
      if (v86 != v85)
      {
LABEL_169:
        v87 = *v85;
        v88 = *v74;
        if (*v74)
        {
          goto LABEL_180;
        }

        goto LABEL_186;
      }

LABEL_179:
      v87 = 0;
      v88 = *v74;
      if (*v74)
      {
LABEL_180:
        v91 = v88;
        do
        {
          v92 = *(v91 + 32);
          if (v87 >= v92)
          {
            if (v92 >= v87)
            {
              goto LABEL_282;
            }

            v91 += 8;
          }

          v91 = *v91;
        }

        while (v91);
      }

LABEL_186:
      if (v86 != v85)
      {
        a7 = *v85;
        v14 = (v137 + 50);
        if (v88)
        {
          goto LABEL_192;
        }

LABEL_195:
        operator new();
      }

      a7 = 0;
      v14 = (v137 + 50);
      if (!v88)
      {
        goto LABEL_195;
      }

      while (1)
      {
LABEL_192:
        while (1)
        {
          a5 = v88;
          v93 = *(v88 + 32);
          if (a7 >= v93)
          {
            break;
          }

          v88 = *a5;
          v14 = a5;
          if (!*a5)
          {
            goto LABEL_195;
          }
        }

        if (v93 >= a7)
        {
          break;
        }

        v88 = *(a5 + 8);
        if (!v88)
        {
          goto LABEL_195;
        }
      }

      *(a5 + 40) = a6;
      a6 += 69;
    }

    while (a6 != a2);
  }

LABEL_196:
  if (*(v137 + 240) != 1)
  {
    goto LABEL_280;
  }

  if (v137[15] != v137[16])
  {
    v145[0] = 0;
    v145[1] = 0;
    v144 = v145;
    operator new();
  }

  a6 = v137[18];
  a3 = v137[19];
  if (a6 != a3)
  {
    a1 = v137 + 53;
    a7 = v137 + 38;
    while (1)
    {
      v94 = a6[14];
      v95 = a6[15];
      if (v95 != v94)
      {
        a2 = *v94;
        if (a2)
        {
          v96 = *a1;
          v14 = (v137 + 53);
          if (!*a1)
          {
LABEL_211:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              a4 = v96;
              v97 = *(v96 + 32);
              if (a2 >= v97)
              {
                break;
              }

              v96 = *a4;
              v14 = a4;
              if (!*a4)
              {
                goto LABEL_211;
              }
            }

            if (v97 >= a2)
            {
              break;
            }

            v96 = a4[1];
            if (!v96)
            {
              goto LABEL_211;
            }
          }

          a4[5] = a6;
          if (v95 == v94)
          {
            v98 = 0;
            v99 = v142[0];
            if (v142[0])
            {
LABEL_216:
              v100 = v142;
              do
              {
                v101 = *(v99 + 8);
                v62 = v101 >= v98;
                v102 = v101 < v98;
                if (v62)
                {
                  v100 = v99;
                }

                v99 = v99[v102];
              }

              while (v99);
              if (v100 != v142 && *(v100 + 8) <= v98)
              {
                v103 = v100[5];
                if (v103)
                {
                  v104 = *a7;
                  v14 = (v137 + 38);
                  if (!*a7)
                  {
LABEL_230:
                    operator new();
                  }

                  while (1)
                  {
                    while (1)
                    {
                      a2 = v104;
                      v105 = *(v104 + 32);
                      if (a6 >= v105)
                      {
                        break;
                      }

                      v104 = *a2;
                      v14 = a2;
                      if (!*a2)
                      {
                        goto LABEL_230;
                      }
                    }

                    if (v105 >= a6)
                    {
                      break;
                    }

                    v104 = *(a2 + 8);
                    if (!v104)
                    {
                      goto LABEL_230;
                    }
                  }

                  (**v103)(v103);
                  v106 = *(a2 + 40);
                  if (v106)
                  {
                    (*(*v106 + 8))();
                  }

                  *(a2 + 40) = v103;
                }
              }
            }
          }

          else
          {
            v98 = *v94;
            v99 = v142[0];
            if (v142[0])
            {
              goto LABEL_216;
            }
          }
        }
      }

      a6 += 59;
      if (a6 == a3)
      {
        if (v137[30])
        {
          break;
        }

LABEL_281:
        __break(1u);
LABEL_282:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/track_media_info_map.cc", 171, "voice_info_by_receiver_ssrc_.count(receiver_info.ssrc()) == 0", webrtc::webrtc_checks_impl::LogStreamer<>::Call<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, v15, v16, v17, v18, "Duplicate voice receiver SSRC: ");
LABEL_283:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/track_media_info_map.cc", 157, "voice_info_by_sender_ssrc_.count(sender_info.ssrc()) == 0", webrtc::webrtc_checks_impl::LogStreamer<>::Call<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)9,char const*>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)4,unsigned int> const&)::t, v15, v16, v17, v18, "Duplicate voice sender SSRC: ");
LABEL_284:
        {
          operator new();
        }

        goto LABEL_2;
      }
    }
  }

  v107 = v137[21];
  v108 = v137[22];
  if (v107 != v108)
  {
    v109 = v137 + 41;
    v110 = v137 + 56;
    do
    {
      v111 = *(v107 + 160);
      if (*(v107 + 168) == v111)
      {
        v112 = 0;
        v113 = v140[0];
        if (!v140[0])
        {
          goto LABEL_251;
        }
      }

      else
      {
        v112 = *v111;
        v113 = v140[0];
        if (!v140[0])
        {
          goto LABEL_251;
        }
      }

      v114 = v140;
      do
      {
        v115 = *(v113 + 8);
        v62 = v115 >= v112;
        v116 = v115 < v112;
        if (v62)
        {
          v114 = v113;
        }

        v113 = v113[v116];
      }

      while (v113);
      if (v114 != v140 && *(v114 + 8) <= v112)
      {
        v117 = v114[5];
        if (v117)
        {
          v118 = *v109;
          if (!*v109)
          {
LABEL_269:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v126 = v118;
              v127 = v118[4];
              if (v107 >= v127)
              {
                break;
              }

              v118 = *v126;
              if (!*v126)
              {
                goto LABEL_269;
              }
            }

            if (v127 >= v107)
            {
              break;
            }

            v118 = v126[1];
            if (!v118)
            {
              goto LABEL_269;
            }
          }

          (**v117)(v117);
          v128 = v126[5];
          if (v128)
          {
            (*(*v128 + 8))(v128);
          }

          v126[5] = v117;
          v123 = *(v107 + 160);
          if (*(v107 + 168) != v123)
          {
LABEL_263:
            v124 = *v123;
            v125 = *v110;
            if (*v110)
            {
              goto LABEL_276;
            }

LABEL_279:
            operator new();
          }

          goto LABEL_273;
        }
      }

LABEL_251:
      if (v138)
      {
        v119 = *v109;
        if (!*v109)
        {
LABEL_258:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v120 = v119;
            v121 = v119[4];
            if (v107 >= v121)
            {
              break;
            }

            v119 = *v120;
            if (!*v120)
            {
              goto LABEL_258;
            }
          }

          if (v121 >= v107)
          {
            break;
          }

          v119 = v120[1];
          if (!v119)
          {
            goto LABEL_258;
          }
        }

        (**v138)(v138);
        v122 = v120[5];
        if (v122)
        {
          (*(*v122 + 8))(v122);
        }

        v120[5] = v138;
      }

      v123 = *(v107 + 160);
      if (*(v107 + 168) != v123)
      {
        goto LABEL_263;
      }

LABEL_273:
      v124 = 0;
      v125 = *v110;
      if (!*v110)
      {
        goto LABEL_279;
      }

      while (1)
      {
LABEL_276:
        while (1)
        {
          v129 = v125;
          v130 = *(v125 + 32);
          if (v124 >= v130)
          {
            break;
          }

          v125 = *v129;
          if (!*v129)
          {
            goto LABEL_279;
          }
        }

        if (v130 >= v124)
        {
          break;
        }

        v125 = v129[1];
        if (!v125)
        {
          goto LABEL_279;
        }
      }

      v129[5] = v107;
      v107 += 792;
    }

    while (v107 != v108);
  }

LABEL_280:
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v140[0]);
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v141[0]);
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v142[0]);
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v143[0]);
  *(v132 + 217) = v131;
}

uint64_t dcsctp::TraditionalReassemblyStreams::StreamBase::AssembleMessage(uint64_t *a1, uint64_t a2, void *a3)
{
  v33[1] = *MEMORY[0x277D85DE8];
  if (a2 == a3)
  {
    v3 = 0;
    v21 = *(a2 + 40);
    __p[1] = 0;
    *&v30 = 0;
    v28 = 0;
    __p[0] = 0;
    v22 = *a1;
    v26 = v21 | (*(a2 + 52) << 32);
    *v27 = 0uLL;
    v31 = 0;
    v32 = 0;
    v23 = *(v22 + 48);
    if (v23)
    {
      (*(*v23 + 48))(v23, &v31, &v26);
      if (v27[0])
      {
        v27[1] = v27[0];
        operator delete(v27[0]);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      return v3;
    }

LABEL_33:
    std::__throw_bad_function_call[abi:sn200100]();
  }

  v4 = 0;
  v5 = a2;
  do
  {
    v6 = v4;
    v7 = v5[1];
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
        v8 = v5[2];
        v9 = *v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    v4 = v6 + 1;
    v5 = v8;
  }

  while (v8 != a3);
  if (v6)
  {
    v10 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v11 = a2;
    *&v30 = 0;
    do
    {
      v12 = v11[1];
      v13 = v11;
      if (v12)
      {
        do
        {
          v14 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v14 = v13[2];
          v9 = *v14 == v13;
          v13 = v14;
        }

        while (!v9);
      }

      v10 = v10 - v11[7] + v11[8];
      v11 = v14;
    }

    while (v14 != a3);
    if (v6 < 0x1FFFFFFFFFFFFFFFLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v15 = *(a2 + 32);
  v16 = *(a2 + 56);
  v17 = (*(a2 + 40) | (*(a2 + 52) << 32));
  v18 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  v33[0] = v15;
  v19 = *a1;
  __p[0] = v17;
  __p[1] = v16;
  v25 = v18;
  v30 = v18;
  v31 = v33;
  v32 = 1;
  v20 = *(v19 + 48);
  if (!v20)
  {
    goto LABEL_33;
  }

  (*(*v20 + 48))(v20, &v31, __p);
  if (__p[1])
  {
    *&v30 = __p[1];
    operator delete(__p[1]);
  }

  return v25 - v16;
}

uint64_t dcsctp::TraditionalReassemblyStreams::Add(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v77[1] = *MEMORY[0x277D85DE8];
  if (*(a3 + 42) != 1)
  {
    v7 = *(a1 + 88);
    if (!v7)
    {
LABEL_30:
      operator new();
    }

    v8 = *a3;
    while (1)
    {
      while (1)
      {
        v9 = v7;
        v10 = *(v7 + 16);
        if (v8 >= v10)
        {
          break;
        }

        v7 = *v9;
        if (!*v9)
        {
          goto LABEL_30;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = v9[1];
      if (!v7)
      {
        goto LABEL_30;
      }
    }

    v20 = a3[1];
    v69 = *(a3 + 3);
    v44 = *(a3 + 2);
    v21 = *(a3 + 3);
    v70 = *(a3 + 4);
    *(a3 + 3) = 0;
    *(a3 + 4) = 0;
    *(a3 + 2) = 0;
    v22 = v20;
    if (*(v9 + 82) == 1)
    {
      v23 = *(v9 + 40);
      v24 = v20 >= v23;
      LODWORD(v25) = v20 - v23;
      v26 = v25 != 0 && v24;
      v27 = (v25 & 0x8000u) == 0;
      if (v25 == 0x8000)
      {
        v27 = v26;
      }

      if (v27)
      {
        v25 = v25;
      }

      else
      {
        v25 |= 0xFFFFFFFFFFFF0000;
      }

      v22 = v25 + v9[9];
    }

    v28 = v21 - v44;
    v29 = *(a3 + 40);
    v30 = v9[11];
    v31 = *(a3 + 41);
    v9[9] = v22;
    *(v9 + 40) = v20;
    *(v9 + 82) = 1;
    if (v22 == v30)
    {
      if ((v29 & 1) == 0 || (v31 & 1) == 0)
      {
        v41 = v9[7];
        if (!v41)
        {
LABEL_68:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v42 = v41;
            v43 = v41[4];
            if (v43 <= v22)
            {
              break;
            }

            v41 = *v42;
            if (!*v42)
            {
              goto LABEL_68;
            }
          }

          if (v43 >= v22)
          {
            break;
          }

          v41 = v42[1];
          if (!v41)
          {
            goto LABEL_68;
          }
        }

        v45 = v42[6];
        if (!v45)
        {
LABEL_77:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v46 = v45;
            v47 = v45[4];
            if (v47 <= a2)
            {
              break;
            }

            v45 = *v46;
            if (!*v46)
            {
              goto LABEL_77;
            }
          }

          if (v47 >= a2)
          {
            break;
          }

          v45 = v46[1];
          if (!v45)
          {
            goto LABEL_77;
          }
        }

        if (!v44)
        {
          return 0;
        }

        v16 = v44;
        goto LABEL_103;
      }

      v77[0] = a2;
      v32 = v9[5];
      v71 = v8 | (v69 << 32);
      __p = v44;
      v73 = v21;
      v74 = v70;
      v75 = v77;
      v76 = 1;
      v33 = *(v32 + 48);
      if (v33)
      {
        (*(*v33 + 48))(v33, &v75, &v71);
        if (__p)
        {
          v73 = __p;
          operator delete(__p);
        }

        v34 = v44 - v21;
        v48 = 0;
        ++v9[11];
        do
        {
          if (!v9[8])
          {
            break;
          }

          v50 = v9[6];
          if (v50[4] != v9[11])
          {
            break;
          }

          v51 = v50[5];
          if (*(v51 + 80) != 1)
          {
            break;
          }

          v52 = v50[6];
          v53 = v52;
          v54 = v50 + 6;
          if (v52)
          {
            do
            {
              v55 = v53;
              v53 = v53[1];
            }

            while (v53);
          }

          else
          {
            do
            {
              v55 = v54[2];
              v56 = *v55 == v54;
              v54 = v55;
            }

            while (v56);
          }

          if (*(v55 + 81) != 1)
          {
            break;
          }

          v57 = v50 + 6;
          if (v52)
          {
            do
            {
              v58 = v52;
              v52 = v52[1];
            }

            while (v52);
          }

          else
          {
            do
            {
              v58 = v57[2];
              v56 = *v58 == v57;
              v57 = v58;
            }

            while (v56);
          }

          v59 = v58[4] - *(v51 + 32);
          if (v59 < 0)
          {
            v59 = *(v51 + 32) - v58[4];
          }

          if (v50[7] - 1 != v59)
          {
            break;
          }

          v60 = dcsctp::TraditionalReassemblyStreams::StreamBase::AssembleMessage(v9 + 5, v51, v50 + 6);
          v61 = v9[6];
          v62 = *(v61 + 8);
          v63 = v61;
          if (v62)
          {
            do
            {
              v64 = v62;
              v62 = *v62;
            }

            while (v62);
          }

          else
          {
            do
            {
              v64 = v63[2];
              v56 = *v64 == v63;
              v63 = v64;
            }

            while (!v56);
          }

          v9[6] = v64;
          v49 = v9[7];
          --v9[8];
          std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v49, v61);
          std::__tree<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>,std::__map_value_compare<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>,std::less<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>>,true>,std::allocator<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>::destroy(*(v61 + 48));
          operator delete(v61);
          ++v9[11];
          v48 += v60;
        }

        while (v60);
        return (v34 + v28 - v48);
      }

      goto LABEL_106;
    }

    v35 = v9[7];
    if (!v35)
    {
LABEL_54:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v36 = v35;
        v37 = v35[4];
        if (v22 >= v37)
        {
          break;
        }

        v35 = *v36;
        if (!*v36)
        {
          goto LABEL_54;
        }
      }

      if (v37 >= v22)
      {
        break;
      }

      v35 = v36[1];
      if (!v35)
      {
        goto LABEL_54;
      }
    }

    v38 = v36[6];
    if (!v38)
    {
LABEL_61:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v39 = v38;
        v40 = v38[4];
        if (v40 <= a2)
        {
          break;
        }

        v38 = *v39;
        if (!*v39)
        {
          goto LABEL_61;
        }
      }

      if (v40 >= a2)
      {
        break;
      }

      v38 = v39[1];
      if (!v38)
      {
        goto LABEL_61;
      }
    }

LABEL_69:
    if (v44)
    {
      v16 = v44;
      goto LABEL_103;
    }

    return 0;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
LABEL_16:
    operator new();
  }

  v4 = *a3;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_16;
      }
    }

    if (v6 >= v4)
    {
      break;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  v11 = *(a3 + 3);
  v12 = *(a3 + 2);
  v68 = *(a3 + 3);
  v13 = *(a3 + 4);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  if ((a3[20] & 1) == 0 || (*(a3 + 41) & 1) == 0)
  {
    v17 = v5[7];
    if (!v17)
    {
LABEL_29:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v18 = v17;
        v19 = v17[4];
        if (v19 <= a2)
        {
          break;
        }

        v17 = *v18;
        if (!*v18)
        {
          goto LABEL_29;
        }
      }

      if (v19 >= a2)
      {
        break;
      }

      v17 = v18[1];
      if (!v17)
      {
        goto LABEL_29;
      }
    }

    v44 = v12;
    goto LABEL_69;
  }

  v77[0] = a2;
  v14 = v5[5];
  v71 = v4 | (v11 << 32);
  __p = v12;
  v73 = v68;
  v74 = v13;
  v75 = v77;
  v76 = 1;
  v15 = *(v14 + 48);
  if (v15)
  {
    (*(*v15 + 48))(v15, &v75, &v71);
    v16 = __p;
    if (__p)
    {
      v73 = __p;
LABEL_103:
      operator delete(v16);
      return 0;
    }

    return 0;
  }

LABEL_106:
  v67 = std::__throw_bad_function_call[abi:sn200100]();
  return dcsctp::TraditionalReassemblyStreams::HandleForwardTsn(v67);
}

uint64_t dcsctp::TraditionalReassemblyStreams::HandleForwardTsn(void *a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v6 = a1[7];
  v7 = a1 + 8;
  if (v6 != a1 + 8)
  {
    v9 = 0;
    while (1)
    {
      v11 = v6 + 7;
      for (i = v6[7]; i; i = i[i[4] <= a2])
      {
        if (i[4] > a2)
        {
          v11 = i;
        }
      }

      v12 = v6[6];
      if (v12 == v11)
      {
        v24 = 0;
        v25 = v6[1];
        if (v25)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v13 = 0;
        v14 = v6[6];
        do
        {
          v15 = v14[1];
          v16 = v14;
          if (v15)
          {
            do
            {
              v17 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v17 = v16[2];
              v18 = *v17 == v16;
              v16 = v17;
            }

            while (!v18);
          }

          v13 = v13 - v14[7] + v14[8];
          v14 = v17;
        }

        while (v17 != v11);
        do
        {
          v19 = v12[1];
          v20 = v12;
          if (v19)
          {
            do
            {
              v21 = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              v21 = v20[2];
              v18 = *v21 == v20;
              v20 = v21;
            }

            while (!v18);
          }

          if (v6[6] == v12)
          {
            v6[6] = v21;
          }

          v22 = v6[7];
          --v6[8];
          std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v22, v12);
          v23 = v12[7];
          if (v23)
          {
            v12[8] = v23;
            operator delete(v23);
          }

          operator delete(v12);
          v12 = v21;
        }

        while (v21 != v11);
        v24 = v13;
        v25 = v6[1];
        if (v25)
        {
          do
          {
LABEL_30:
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
          goto LABEL_3;
        }
      }

      do
      {
        v26 = v6[2];
        v18 = *v26 == v6;
        v6 = v26;
      }

      while (!v18);
LABEL_3:
      v9 += v24;
      v6 = v26;
      if (v26 == v7)
      {
        goto LABEL_36;
      }
    }
  }

  v9 = 0;
LABEL_36:
  if (a4)
  {
    v78 = &a3[6 * a4];
    v27 = (a1 + 11);
    while (1)
    {
      v28 = *v27;
      if (!*v27)
      {
LABEL_45:
        operator new();
      }

      v29 = *a3;
      while (1)
      {
        while (1)
        {
          v30 = v28;
          v31 = *(v28 + 16);
          if (v29 >= v31)
          {
            break;
          }

          v28 = *v30;
          if (!*v30)
          {
            goto LABEL_45;
          }
        }

        if (v31 >= v29)
        {
          break;
        }

        v28 = v30[1];
        if (!v28)
        {
          goto LABEL_45;
        }
      }

      v32 = a3[1];
      v33 = a3[1];
      if (*(v30 + 82) == 1)
      {
        v34 = *(v30 + 40);
        v35 = v32 >= v34;
        LODWORD(v36) = v32 - v34;
        v37 = v36 != 0 && v35;
        v38 = (v36 & 0x8000u) == 0;
        if (v36 == 0x8000)
        {
          v38 = v37;
        }

        if (v38)
        {
          v36 = v36;
        }

        else
        {
          v36 |= 0xFFFFFFFFFFFF0000;
        }

        v33 = v36 + v30[9];
      }

      v40 = v30 + 7;
      v39 = v30[7];
      v30[9] = v33;
      *(v30 + 40) = v32;
      for (*(v30 + 82) = 1; v39; v39 = v39[v43])
      {
        v41 = v39[4];
        v42 = v33 < v41;
        v43 = v33 >= v41;
        if (v42)
        {
          v40 = v39;
        }
      }

      v44 = v30[6];
      if (v44 != v40)
      {
        break;
      }

      v58 = 0;
      v59 = v30[11];
      if (v33 >= v59)
      {
        goto LABEL_88;
      }

LABEL_89:
      v60 = 0;
      do
      {
        if (!v30[8])
        {
          break;
        }

        v62 = v30[6];
        if (v62[4] != v59)
        {
          break;
        }

        v63 = v62[5];
        if (*(v63 + 80) != 1)
        {
          break;
        }

        v64 = v62[6];
        v65 = v64;
        v66 = v62 + 6;
        if (v64)
        {
          do
          {
            v67 = v65;
            v65 = v65[1];
          }

          while (v65);
        }

        else
        {
          do
          {
            v67 = v66[2];
            v18 = *v67 == v66;
            v66 = v67;
          }

          while (v18);
        }

        if (*(v67 + 81) != 1)
        {
          break;
        }

        v68 = v62 + 6;
        if (v64)
        {
          do
          {
            v69 = v64;
            v64 = v64[1];
          }

          while (v64);
        }

        else
        {
          do
          {
            v69 = v68[2];
            v18 = *v69 == v68;
            v68 = v69;
          }

          while (v18);
        }

        v70 = v69[4] - *(v63 + 32);
        if (v70 < 0)
        {
          v70 = *(v63 + 32) - v69[4];
        }

        if (v62[7] - 1 != v70)
        {
          break;
        }

        v71 = dcsctp::TraditionalReassemblyStreams::StreamBase::AssembleMessage(v30 + 5, v63, v62 + 6);
        v72 = v30[6];
        v73 = *(v72 + 8);
        v74 = v72;
        if (v73)
        {
          do
          {
            v75 = v73;
            v73 = *v73;
          }

          while (v73);
        }

        else
        {
          do
          {
            v75 = v74[2];
            v18 = *v75 == v74;
            v74 = v75;
          }

          while (!v18);
        }

        v30[6] = v75;
        v61 = v30[7];
        --v30[8];
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v61, v72);
        std::__tree<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>,std::__map_value_compare<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>,std::less<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>>,true>,std::allocator<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>::destroy(*(v72 + 48));
        operator delete(v72);
        v59 = v30[11] + 1;
        v30[11] = v59;
        v60 += v71;
      }

      while (v71);
      v9 += v58 + v60;
      a3 += 6;
      if (a3 == v78)
      {
        return v9;
      }
    }

    v45 = 0;
    v46 = v30[6];
    do
    {
      v47 = v46[5];
      if (v47 == v46 + 6)
      {
        LODWORD(v48) = 0;
      }

      else
      {
        v48 = 0;
        do
        {
          v49 = v47[1];
          v50 = v47;
          if (v49)
          {
            do
            {
              v51 = v49;
              v49 = *v49;
            }

            while (v49);
          }

          else
          {
            do
            {
              v51 = v50[2];
              v18 = *v51 == v50;
              v50 = v51;
            }

            while (!v18);
          }

          v48 = v48 - v47[7] + v47[8];
          v47 = v51;
        }

        while (v51 != v46 + 6);
      }

      v52 = v46[1];
      if (v52)
      {
        do
        {
          v53 = v52;
          v52 = *v52;
        }

        while (v52);
      }

      else
      {
        do
        {
          v53 = v46[2];
          v18 = *v53 == v46;
          v46 = v53;
        }

        while (!v18);
      }

      v45 += v48;
      v46 = v53;
    }

    while (v53 != v40);
    do
    {
      v55 = v44[1];
      v56 = v44;
      if (v55)
      {
        do
        {
          v57 = v55;
          v55 = *v55;
        }

        while (v55);
      }

      else
      {
        do
        {
          v57 = v56[2];
          v18 = *v57 == v56;
          v56 = v57;
        }

        while (!v18);
      }

      if (v30[6] == v44)
      {
        v30[6] = v57;
      }

      v54 = v30[7];
      --v30[8];
      std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v54, v44);
      std::__tree<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>,std::__map_value_compare<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>,std::less<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>>,true>,std::allocator<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>::destroy(v44[6]);
      operator delete(v44);
      v44 = v57;
    }

    while (v57 != v40);
    v58 = v45;
    v59 = v30[11];
    if (v33 < v59)
    {
      goto LABEL_89;
    }

LABEL_88:
    v59 = v33 + 1;
    v30[11] = v33 + 1;
    goto LABEL_89;
  }

  return v9;
}

void *dcsctp::TraditionalReassemblyStreams::ResetStreams(void *result, unsigned __int16 *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result[11];
    result += 11;
    v3 = v4;
    if (v4)
    {
      v5 = &a2[a3];
LABEL_4:
      v6 = *a2;
      v7 = result;
      do
      {
        v8 = *(v3 + 32);
        v9 = v8 >= v6;
        v10 = v8 < v6;
        if (v9)
        {
          v7 = v3;
        }

        v3 = *(v3 + 8 * v10);
      }

      while (v3);
      if (v7 != result && v6 >= *(v7 + 16))
      {
        v7[9] = 0;
        *(v7 + 40) = 0;
        *(v7 + 82) = 1;
        v7[11] = 0;
      }

      while (++a2 != v5)
      {
        v3 = *result;
        if (*result)
        {
          goto LABEL_4;
        }
      }
    }
  }

  else
  {
    v11 = result[10];
    if (v11 != result + 11)
    {
      do
      {
        v11[9] = 0;
        *(v11 + 40) = 0;
        *(v11 + 82) = 1;
        v11[11] = 0;
        v12 = v11[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v11[2];
            v14 = *v13 == v11;
            v11 = v13;
          }

          while (!v14);
        }

        v11 = v13;
      }

      while (v13 != result + 11);
    }
  }

  return result;
}

uint64_t dcsctp::TraditionalReassemblyStreams::GetHandoverReadiness(dcsctp::TraditionalReassemblyStreams *this)
{
  v2 = *(this + 10);
  if (v2 == (this + 88))
  {
LABEL_2:
    result = 0;
    v4 = *(this + 7);
    v5 = this + 64;
    if (v4 != v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    while (!*(v2 + 8))
    {
      v6 = *(v2 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v2 + 2);
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
      if (v7 == (this + 88))
      {
        goto LABEL_2;
      }
    }

    result = 128;
    v4 = *(this + 7);
    v5 = this + 64;
    if (v4 != v5)
    {
LABEL_15:
      while (!*(v4 + 8))
      {
        v9 = *(v4 + 1);
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = *(v4 + 2);
            v8 = *v10 == v4;
            v4 = v10;
          }

          while (!v8);
        }

        v4 = v10;
        if (v10 == v5)
        {
          return result;
        }
      }

      return result | 0x100;
    }
  }

  return result;
}

void *dcsctp::TraditionalReassemblyStreams::AddHandoverState(void *result, uint64_t a2)
{
  v3 = result;
  v4 = result[10];
  v5 = result + 11;
  if (v4 != result + 11)
  {
    do
    {
      v8 = *(v4 + 44);
      LODWORD(v15) = *(v4 + 16);
      HIDWORD(v15) = v8;
      result = std::vector<std::pair<webrtc::Socket::Option,int>>::push_back[abi:sn200100]((a2 + 112), &v15);
      v9 = v4[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != v5);
  }

  v6 = v3[7];
  v7 = v3 + 8;
  if (v6 != v7)
  {
    do
    {
      v14 = *(v6 + 16);
      result = std::vector<unsigned int>::push_back[abi:sn200100]((a2 + 136), &v14);
      v12 = v6[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v6[2];
          v11 = *v13 == v6;
          v6 = v13;
        }

        while (!v11);
      }

      v6 = v13;
    }

    while (v13 != v7);
  }

  return result;
}

void dcsctp::TraditionalReassemblyStreams::RestoreFromState(uint64_t a1, void *a2)
{
  if (a2[14] != a2[15])
  {
    operator new();
  }

  if (a2[17] != a2[18])
  {
    operator new();
  }
}

void dcsctp::TraditionalReassemblyStreams::~TraditionalReassemblyStreams(dcsctp::TraditionalReassemblyStreams *this)
{
  *this = &unk_2882A1070;
  std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::OrderedStream>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::OrderedStream>,std::less<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::OrderedStream>>>::destroy(*(this + 11));
  std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::UnorderedStream>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::UnorderedStream>,std::less<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::UnorderedStream>>>::destroy(*(this + 8));
  v2 = *(this + 6);
  if (v2 == (this + 24))
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }
}

{
  *this = &unk_2882A1070;
  std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::OrderedStream>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::OrderedStream>,std::less<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::OrderedStream>>>::destroy(*(this + 11));
  std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::UnorderedStream>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::UnorderedStream>,std::less<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::UnorderedStream>>>::destroy(*(this + 8));
  v2 = *(this + 6);
  if (v2 == (this + 24))
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2743DA540);
}

void std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::OrderedStream>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::OrderedStream>,std::less<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::OrderedStream>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::OrderedStream>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::OrderedStream>,std::less<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::OrderedStream>>>::destroy(*a1);
    std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::OrderedStream>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::OrderedStream>,std::less<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::OrderedStream>>>::destroy(a1[1]);
    std::__tree<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::SSNTag,unsigned short>>,std::map<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>,std::__map_value_compare<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::SSNTag,unsigned short>>,std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::SSNTag,unsigned short>>,std::map<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>,std::less<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::SSNTag,unsigned short>>>,true>,std::allocator<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::SSNTag,unsigned short>>,std::map<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>>::destroy(a1[7]);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::SSNTag,unsigned short>>,std::map<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>,std::__map_value_compare<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::SSNTag,unsigned short>>,std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::SSNTag,unsigned short>>,std::map<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>,std::less<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::SSNTag,unsigned short>>>,true>,std::allocator<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::SSNTag,unsigned short>>,std::map<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::SSNTag,unsigned short>>,std::map<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>,std::__map_value_compare<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::SSNTag,unsigned short>>,std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::SSNTag,unsigned short>>,std::map<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>,std::less<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::SSNTag,unsigned short>>>,true>,std::allocator<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::SSNTag,unsigned short>>,std::map<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>>::destroy(*a1);
    std::__tree<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::SSNTag,unsigned short>>,std::map<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>,std::__map_value_compare<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::SSNTag,unsigned short>>,std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::SSNTag,unsigned short>>,std::map<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>,std::less<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::SSNTag,unsigned short>>>,true>,std::allocator<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::SSNTag,unsigned short>>,std::map<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>,std::__map_value_compare<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>,std::less<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>>,true>,std::allocator<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>::destroy(a1[6]);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>,std::__map_value_compare<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>,std::less<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>>,true>,std::allocator<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>,std::__map_value_compare<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>,std::less<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>>,true>,std::allocator<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>::destroy(*a1);
    std::__tree<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>,std::__map_value_compare<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>,std::less<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>>,true>,std::allocator<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>::destroy(a1[1]);
    v2 = a1[7];
    if (v2)
    {
      a1[8] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::UnorderedStream>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::UnorderedStream>,std::less<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::UnorderedStream>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::UnorderedStream>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::UnorderedStream>,std::less<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::UnorderedStream>>>::destroy(*a1);
    std::__tree<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::UnorderedStream>,std::__map_value_compare<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::UnorderedStream>,std::less<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>>,true>,std::allocator<std::__value_type<webrtc::StrongAlias<dcsctp::StreamIDTag,unsigned short>,dcsctp::TraditionalReassemblyStreams::UnorderedStream>>>::destroy(a1[1]);
    std::__tree<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>,std::__map_value_compare<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>,std::less<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>>,true>,std::allocator<std::__value_type<dcsctp::UnwrappedSequenceNumber<webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>>,dcsctp::Data>>>::destroy(a1[7]);

    operator delete(a1);
  }
}

void webrtc::TransceiverStableState::SetInitSendEncodings(uint64_t a1, uint64_t *a2)
{
  v3 = (a1 + 80);
  if (*(a1 + 104) == 1)
  {
    if (v3 != a2)
    {
      v4 = a2[1];
      v5 = 0xF0F0F0F0F0F0F0F1 * ((v4 - *a2) >> 4);
      v6 = *a2;

      std::vector<webrtc::RtpEncodingParameters>::__assign_with_size[abi:sn200100]<webrtc::RtpEncodingParameters*,webrtc::RtpEncodingParameters*>(v3, v6, v4, v5);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    v7 = a2[1];
    if (v7 != *a2)
    {
      if (0xF0F0F0F0F0F0F0F1 * ((v7 - *a2) >> 4) < 0xF0F0F0F0F0F0F1)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    *(a1 + 104) = 1;
  }
}

void webrtc::TransceiverList::FindByMid(void *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v7 = *v4;
      if (*v4)
      {
        (**v7)(*v4);
      }

      (*(*v7 + 40))(__p, v7);
      if (v19)
      {
        v8 = v18;
        if ((v18 & 0x80u) == 0)
        {
          v9 = v18;
        }

        else
        {
          v9 = __p[1];
        }

        v10 = *(a2 + 23);
        v11 = v10;
        if (v10 < 0)
        {
          v10 = a2[1];
        }

        if (v9 == v10)
        {
          v12 = __p[0];
          if ((v18 & 0x80u) == 0)
          {
            v13 = __p;
          }

          else
          {
            v13 = __p[0];
          }

          if (v11 >= 0)
          {
            v14 = a2;
          }

          else
          {
            v14 = *a2;
          }

          v15 = memcmp(v13, v14, v9);
          v16 = v15;
          if (v8 < 0)
          {
            operator delete(v12);
            if (!v16)
            {
              goto LABEL_26;
            }
          }

          else if (!v15)
          {
            goto LABEL_26;
          }
        }

        else if (v18 < 0)
        {
          operator delete(__p[0]);
        }
      }

      (*(*v7 + 8))(v7);
      ++v4;
    }

    while (v4 != v5);
  }

  v7 = 0;
LABEL_26:
  *a3 = v7;
}

void dcsctp::TransmissionControlBlock::TransmissionControlBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, void *a6, uint64_t a7)
{
  *a1 = &unk_2882A10C0;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v7 = *a5;
  v8 = a5[1];
  v9 = a5[2];
  *(a1 + 72) = a5[3];
  *(a1 + 56) = v9;
  *(a1 + 40) = v8;
  *(a1 + 24) = v7;
  v10 = a5[4];
  v11 = a5[5];
  v12 = a5[6];
  *(a1 + 136) = a5[7];
  *(a1 + 120) = v12;
  *(a1 + 104) = v11;
  *(a1 + 88) = v10;
  v13 = a5[8];
  v14 = a5[9];
  v15 = a5[10];
  *(a1 + 200) = a5[11];
  *(a1 + 184) = v15;
  *(a1 + 168) = v14;
  *(a1 + 152) = v13;
  *(a1 + 216) = a2;
  *(a1 + 224) = *a6;
  *(a1 + 232) = a7;
  operator new();
}

uint64_t dcsctp::TransmissionControlBlock::OnRtxTimerExpiry(dcsctp::TransmissionControlBlock *this)
{
  v2 = (*(**(this + 29) + 56))(*(this + 29));
  if ((*(this + 1536) & 1) == 0)
  {
    v3 = v2;
    if ((*(*this + 64))(this, "t3-rtx expired", 14))
    {
      v4 = *(this + 129) >> 1;
      v5 = *(this + 92);
      if (v4 <= 4 * v5)
      {
        v4 = 4 * v5;
      }

      *(this + 131) = v4;
      *(this + 129) = v5;
      *(this + 132) = 0;
      dcsctp::OutstandingData::NackAll((this + 1104));
      LODWORD(v14[0]) = *(this + 66);
      v6 = *(this + 7);
      WORD2(v14[0]) = *(this + 6);
      HIWORD(v14[0]) = v6;
      v14[1] = (*(this + 5) & 0xFFFFFFFFFFFFFFFCLL);
      __p = 0;
      v16 = 0;
      v17 = 0;
      v7.var0 = v3;
      dcsctp::TransmissionControlBlock::SendBufferedPackets(this, v14, v7, v8, v9, v10, v11, v12);
      if (__p)
      {
        v16 = __p;
        operator delete(__p);
      }
    }
  }

  return 0;
}

uint64_t dcsctp::TransmissionControlBlock::OnDelayedAckTimerExpiry(dcsctp::TransmissionControlBlock *this)
{
  v1 = *(this + 114);
  if (v1 != 3)
  {
    if (v1 == 2)
    {
      v2 = *(this + 56);
      if (*(v2 + 156) == 1)
      {
        v3 = this;
        (*(**(v2 + 136) + 24))(*(v2 + 136));
        this = v3;
        *(v2 + 160) = 0;
        *(v2 + 156) = 0;
      }
    }

    *(this + 114) = 3;
  }

  dcsctp::TransmissionControlBlock::MaybeSendSack(this);
  return 0;
}

uint64_t dcsctp::TransmissionControlBlock::ObserveRTT(dcsctp::TransmissionControlBlock *this, TimeDelta a2)
{
  result = dcsctp::RetransmissionTimeout::ObserveRTT(this + 328, a2);
  v4 = *(this + 48);
  if (v4 >= 86400000000)
  {
    v4 = 86400000000;
  }

  *(*(this + 30) + 144) = v4;
  v5 = llround(*(this + 48) * 0.5);
  v6 = *(this + 36);
  v7 = 1000 * v6;
  v8 = v6 == 0x7FFFFFFF;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v8)
  {
    v9 = v7;
  }

  if (v9 < v5)
  {
    v5 = v9;
  }

  if (v5 >= 86400000000)
  {
    v5 = 86400000000;
  }

  *(*(this + 31) + 144) = v5;
  return result;
}

void dcsctp::TransmissionControlBlock::MaybeSendSack(dcsctp::TransmissionControlBlock *this)
{
  if (*(this + 114) == 3)
  {
    v17 = v1;
    v18 = v2;
    *(this + 114) = 0;
    (*(*this + 88))(v14);
    dcsctp::DataTracker::CreateSelectiveAck((this + 424), *(this + 140) - *(this + 174), v10);
    dcsctp::SctpPacket::Builder::Add(v14, v10, v4, v5, v6, v7, v8, v9);
    v10[0] = &unk_28829E470;
    std::__tree<sigslot::_signal_base_interface *>::destroy(v13, v13[1]);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    (*(*this + 96))(this, v14);
    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }
  }
}

void dcsctp::TransmissionControlBlock::MaybeSendFastRetransmit(dcsctp::TransmissionControlBlock *this)
{
  if (*(this + 155))
  {
    v31 = *(this + 66);
    v2 = *(this + 7);
    v32 = *(this + 6);
    v33 = v2;
    v34 = *(this + 5) & 0xFFFFFFFFFFFFFFFCLL;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    dcsctp::RetransmissionQueue::GetChunksForFastRetransmit((this + 712), v34 - 12, &v29);
    v9 = v29;
    v10 = v30;
    if (v29 != v30)
    {
      v11 = v29;
      do
      {
        v12 = *v11;
        if (*(this + 225) == 1)
        {
          v40 = *(v11 + 8);
          v13 = v40;
          v14 = *(v11 + 5);
          v15 = *(v11 + 24);
          *(v11 + 4) = 0;
          *(v11 + 5) = 0;
          *(v11 + 3) = 0;
          v38 = *(v11 + 24);
          v39 = v11[50];
          v22 = v12;
          v23 = v13;
          *__p = v15;
          v25 = v14;
          v27 = v39;
          v26 = v38;
          v28 = 0;
          v16 = &unk_288294A60;
        }

        else
        {
          v40 = *(v11 + 8);
          v17 = v40;
          v18 = *(v11 + 5);
          v19 = *(v11 + 24);
          *(v11 + 4) = 0;
          *(v11 + 5) = 0;
          *(v11 + 3) = 0;
          v38 = *(v11 + 24);
          v39 = v11[50];
          v22 = v12;
          v23 = v17;
          *__p = v19;
          v25 = v18;
          v27 = v39;
          v26 = v38;
          v28 = 0;
          v16 = &unk_2882921A0;
        }

        v21 = v16;
        dcsctp::SctpPacket::Builder::Add(&v31, &v21, v3, v4, v5, v6, v7, v8);
        v21 = &unk_288291328;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v11 += 56;
      }

      while (v11 != v10);
    }

    (*(*this + 96))(this, &v31);
    if (v9)
    {
      for (; v10 != v9; v10 -= 56)
      {
        v20 = *(v10 - 4);
        if (v20)
        {
          *(v10 - 3) = v20;
          operator delete(v20);
        }
      }

      operator delete(v9);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }
  }
}

void dcsctp::TransmissionControlBlock::SendBufferedPackets(uint64_t a1, void *a2, Timestamp a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 184) < 1)
  {
    return;
  }

  v91 = v8;
  v92 = v9;
  v13 = 0;
  while (1)
  {
    if (v13)
    {
      goto LABEL_35;
    }

    if (*(a1 + 1536) == 1)
    {
      dcsctp::SctpPacket::Builder::Add(a2, a1 + 1504, a3.var0, a4, a5, a6, a7, a8);
    }

    v14 = *(a1 + 456);
    if (v14 == 3)
    {
      goto LABEL_7;
    }

    if ((v14 - 1) <= 1)
    {
      if (v14 == 2)
      {
        v21 = *(a1 + 448);
        if (*(v21 + 156) == 1)
        {
          (*(**(v21 + 136) + 24))(*(v21 + 136));
          *(v21 + 160) = 0;
          *(v21 + 156) = 0;
        }
      }

LABEL_7:
      *(a1 + 456) = 0;
      dcsctp::DataTracker::CreateSelectiveAck((a1 + 424), *(a1 + 560) - *(a1 + 696), &v78);
      dcsctp::SctpPacket::Builder::Add(a2, &v78, v15, v16, v17, v18, v19, v20);
      v78 = &unk_28829E470;
      std::__tree<sigslot::_signal_base_interface *>::destroy(&v81[1], v82);
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }
    }

    if (*(a1 + 320) <= a3.var0 && *(a1 + 912) == 1)
    {
      v22.var0 = a3.var0;
      dcsctp::OutstandingData::ExpireOutstandingChunks((a1 + 1104), v22);
      if (*(a1 + 1192))
      {
        if (*(*(*(a1 + 1160) + 8 * (*(a1 + 1184) / 0x2EuLL)) + 88 * (*(a1 + 1184) % 0x2EuLL) + 18) == 2)
        {
          if (*(a1 + 225) == 1)
          {
            dcsctp::OutstandingData::CreateIForwardTsn((a1 + 1104), &v78);
          }

          else
          {
            dcsctp::OutstandingData::CreateForwardTsn((a1 + 1104), &v78);
          }

          dcsctp::SctpPacket::Builder::Add(a2, &v78, v23, v24, v25, v26, v27, v28);
          v78 = &unk_288291358;
          if (__p)
          {
            *(&__p + 1) = __p;
            operator delete(__p);
          }

          v29 = 0x7FFFFFFFFFFFFFFFLL;
          if (a3.var0 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v30 = *(a1 + 368);
            v31 = 200000;
            if (v30 < 200000)
            {
              v31 = *(a1 + 368);
            }

            v32 = v30 == 0x8000000000000000 || a3.var0 == 0x8000000000000000;
            v29 = v31 + a3.var0;
            if (v32)
            {
              v29 = 0x8000000000000000;
            }
          }

          *(a1 + 320) = v29;
        }
      }
    }

    dcsctp::StreamResetHandler::MakeStreamResetRequest((a1 + 1296), &v78);
    if (LOBYTE(v81[0]) == 1)
    {
      dcsctp::SctpPacket::Builder::Add(a2, &v78, v33, v34, v35, v36, v37, v38);
      if (v81[0])
      {
        v78 = &unk_28829A3E0;
        if (v79)
        {
          *&__p = v79;
          operator delete(v79);
        }
      }
    }

LABEL_35:
    v39 = a2[2];
    v40 = a2[3];
    if (v39 == v40)
    {
      v45 = a2[1] - 12;
    }

    else
    {
      v41 = v40 - v39;
      v42 = a2[1];
      v43 = v42 >= v41;
      v44 = v42 - v41;
      if (v43)
      {
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }
    }

    v46.var0 = a3.var0;
    dcsctp::RetransmissionQueue::GetChunksToSend((a1 + 712), v46, v45, &v86);
    v53 = v86;
    v54 = v87;
    if (v86 != v87)
    {
      v55 = *(a1 + 1472);
      if (v55)
      {
        v56 = *(a1 + 1488);
        if (*(a1 + 1480) == 1)
        {
          v57 = (*(**(a1 + 1456) + 56))(*(a1 + 1456));
          v58 = *(a1 + 1472);
          v55 = 0x7FFFFFFFFFFFFFFFLL;
          if (v58 != 0x7FFFFFFFFFFFFFFFLL && v57 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v59 = v57 == 0x8000000000000000 || v58 == 0x8000000000000000;
            v55 = v58 + v57;
            if (v59)
            {
              v55 = 0x8000000000000000;
            }
          }
        }

        if (v55 >= 86400000000)
        {
          v55 = 86400000000;
        }

        *(v56 + 144) = v55;
        dcsctp::Timer::Start(*(a1 + 1488));
        v53 = v86;
        v54 = v87;
      }
    }

    if (v53 != v54)
    {
      v60 = *(a1 + 1032) < *(a1 + 40) * *(a1 + 176);
      do
      {
        v61 = *v53;
        if (*(a1 + 225) == 1)
        {
          v90 = *(v53 + 8);
          v62 = v90;
          v63 = *(v53 + 5);
          v64 = *(v53 + 24);
          *(v53 + 4) = 0;
          *(v53 + 5) = 0;
          *(v53 + 3) = 0;
          v88 = *(v53 + 24);
          v89 = v53[50];
          LODWORD(v79) = v61;
          __p = v62;
          *v81 = v64;
          v82 = v63;
          v84 = v89;
          v83 = v88;
          v85 = v60;
          v65 = &unk_288294A60;
        }

        else
        {
          v90 = *(v53 + 8);
          v66 = v90;
          v67 = *(v53 + 5);
          v68 = *(v53 + 24);
          *(v53 + 4) = 0;
          *(v53 + 5) = 0;
          *(v53 + 3) = 0;
          v88 = *(v53 + 24);
          v89 = v53[50];
          LODWORD(v79) = v61;
          __p = v66;
          *v81 = v68;
          v82 = v67;
          v84 = v89;
          v83 = v88;
          v85 = v60;
          v65 = &unk_2882921A0;
        }

        v78 = v65;
        dcsctp::SctpPacket::Builder::Add(a2, &v78, v47, v48, v49, v50, v51, v52);
        v78 = &unk_288291328;
        if (v81[0])
        {
          v81[1] = v81[0];
          operator delete(v81[0]);
        }

        v53 += 56;
      }

      while (v53 != v54);
    }

    if ((*(a1 + 227) & 1) == 0)
    {
      break;
    }

    if (!dcsctp::PacketSender::Send(*(a1 + 312), a2, *(a1 + 1536) & 1))
    {
      goto LABEL_76;
    }

LABEL_65:
    v69 = *(a1 + 1536);
    v70 = v86;
    if (v86)
    {
      v71 = v87;
      v72 = v86;
      if (v87 != v86)
      {
        do
        {
          v73 = *(v71 - 4);
          if (v73)
          {
            *(v71 - 3) = v73;
            operator delete(v73);
          }

          v71 -= 56;
        }

        while (v71 != v70);
        v72 = v86;
      }

      v87 = v70;
      operator delete(v72);
    }

    if ((v69 & 1) == 0 && ++v13 < *(a1 + 184))
    {
      continue;
    }

    return;
  }

  if (dcsctp::PacketSender::Send(*(a1 + 312), a2, 1))
  {
    goto LABEL_65;
  }

LABEL_76:
  v74 = v86;
  if (v86)
  {
    v75 = v87;
    v76 = v86;
    if (v87 != v86)
    {
      do
      {
        v77 = *(v75 - 4);
        if (v77)
        {
          *(v75 - 3) = v77;
          operator delete(v77);
        }

        v75 -= 56;
      }

      while (v75 != v74);
      v76 = v86;
    }

    v87 = v74;
    operator delete(v76);
  }
}

void dcsctp::TransmissionControlBlock::~TransmissionControlBlock(dcsctp::TransmissionControlBlock *this)
{
  dcsctp::TransmissionControlBlock::~TransmissionControlBlock(this);

  JUMPOUT(0x2743DA540);
}

{
  *this = &unk_2882A10C0;
  if (*(this + 1536) == 1)
  {
    *(this + 188) = &unk_2882916E0;
    v2 = *(this + 189);
    if (v2)
    {
      *(this + 190) = v2;
      operator delete(v2);
    }
  }

  v3 = *(this + 187);
  *(this + 187) = 0;
  if (v3)
  {
    dcsctp::Timer::~Timer(v3);
    MEMORY[0x2743DA540]();
  }

  v4 = *(this + 186);
  *(this + 186) = 0;
  if (v4)
  {
    dcsctp::Timer::~Timer(v4);
    MEMORY[0x2743DA540]();
  }

  if (*(this + 1416) == 1)
  {
    v5 = *(this + 174);
    if (v5)
    {
      *(this + 175) = v5;
      operator delete(v5);
    }
  }

  v6 = *(this + 170);
  *(this + 170) = 0;
  if (v6)
  {
    dcsctp::Timer::~Timer(v6);
    MEMORY[0x2743DA540]();
  }

  v7 = *(this + 159);
  if (v7)
  {
    *(this + 160) = v7;
    operator delete(v7);
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 1248, *(this + 157));
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 1224, *(this + 154));
  v8 = *(this + 145);
  v9 = *(this + 146);
  if (v9 == v8)
  {
    v9 = *(this + 145);
    *(this + 149) = 0;
    v17 = 0;
  }

  else
  {
    v10 = *(this + 148);
    v11 = &v8[v10 / 0x2E];
    v12 = *v11;
    v13 = *v11 + 88 * (v10 % 0x2E);
    v14 = v8[(*(this + 149) + v10) / 0x2E] + 88 * ((*(this + 149) + v10) % 0x2E);
    if (v13 != v14)
    {
      while (v13)
      {
        v15 = *(v13 + 56);
        if (v15)
        {
          *(v13 + 64) = v15;
          operator delete(v15);
          v12 = *v11;
        }

        v13 += 88;
        if (v13 - v12 == 4048)
        {
          v16 = v11[1];
          ++v11;
          v12 = v16;
          v13 = v16;
        }

        if (v13 == v14)
        {
          v9 = *(this + 146);
          v8 = *(this + 145);
          goto LABEL_25;
        }
      }

      goto LABEL_98;
    }

LABEL_25:
    *(this + 149) = 0;
    v17 = v9 - v8;
    if (v17 >= 3)
    {
      do
      {
        operator delete(*v8);
        v8 = (*(this + 145) + 8);
        *(this + 145) = v8;
        v9 = *(this + 146);
        v17 = v9 - v8;
      }

      while (v17 > 2);
    }
  }

  if (v17 == 1)
  {
    v18 = 23;
    goto LABEL_32;
  }

  if (v17 == 2)
  {
    v18 = 46;
LABEL_32:
    *(this + 148) = v18;
  }

  if (v8 != v9)
  {
    do
    {
      v19 = *v8++;
      operator delete(v19);
    }

    while (v8 != v9);
    v20 = *(this + 145);
    v21 = *(this + 146);
    if (v21 != v20)
    {
      *(this + 146) = v21 + ((v20 - v21 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v22 = *(this + 144);
  if (v22)
  {
    operator delete(v22);
  }

  v23 = *(this + 143);
  if (v23 == (this + 1120))
  {
    (*(*v23 + 32))(v23);
    v24 = *(this + 125);
    if (v24 != (this + 976))
    {
      goto LABEL_43;
    }

LABEL_74:
    (*(*v24 + 32))(v24);
    v25 = *(this + 121);
    if (v25 != (this + 944))
    {
      goto LABEL_46;
    }

    goto LABEL_75;
  }

  if (v23)
  {
    (*(*v23 + 40))(v23);
  }

  v24 = *(this + 125);
  if (v24 == (this + 976))
  {
    goto LABEL_74;
  }

LABEL_43:
  if (v24)
  {
    (*(*v24 + 40))(v24);
  }

  v25 = *(this + 121);
  if (v25 != (this + 944))
  {
LABEL_46:
    if (v25)
    {
      (*(*v25 + 40))(v25);
    }

    v26 = *(this + 88);
    *(this + 88) = 0;
    if (v26)
    {
      goto LABEL_49;
    }

    goto LABEL_50;
  }

LABEL_75:
  (*(*v25 + 32))(v25);
  v26 = *(this + 88);
  *(this + 88) = 0;
  if (v26)
  {
LABEL_49:
    (*(*v26 + 8))(v26);
  }

LABEL_50:
  if (*(this + 688) == 1)
  {
    v27 = *(this + 83);
    if (v27)
    {
      v28 = *(this + 84);
      v29 = *(this + 83);
      if (v28 != v27)
      {
        do
        {
          v30 = v28 - 32;
          (*(v28 - 16))(1, v30, v30);
          v28 = v30;
        }

        while (v30 != v27);
        v29 = *(this + 83);
      }

      *(this + 84) = v27;
      operator delete(v29);
    }

    v31 = *(this + 80);
    if (v31)
    {
      *(this + 81) = v31;
      operator delete(v31);
    }
  }

  v32 = *(this + 74);
  v33 = *(this + 75);
  if (v33 == v32)
  {
    v33 = *(this + 74);
    *(this + 78) = 0;
    v41 = 0;
    goto LABEL_70;
  }

  v34 = *(this + 77);
  v35 = &v32[v34 >> 7];
  v36 = *v35;
  v37 = *v35 + 32 * (v34 & 0x7F);
  v38 = *(v32 + (((*(this + 78) + v34) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(this + 78) + v34) & 0x7F);
  if (v37 != v38)
  {
    while (v37)
    {
      v39 = *(v37 + 8);
      if (v39)
      {
        *(v37 + 16) = v39;
        operator delete(v39);
        v36 = *v35;
      }

      v37 += 32;
      if (v37 - v36 == 4096)
      {
        v40 = v35[1];
        ++v35;
        v36 = v40;
        v37 = v40;
      }

      if (v37 == v38)
      {
        v33 = *(this + 75);
        v32 = *(this + 74);
        goto LABEL_68;
      }
    }

LABEL_98:
    __break(1u);
    return;
  }

LABEL_68:
  *(this + 78) = 0;
  v41 = v33 - v32;
  if (v41 >= 3)
  {
    do
    {
      operator delete(*v32);
      v32 = (*(this + 74) + 8);
      *(this + 74) = v32;
      v33 = *(this + 75);
      v41 = v33 - v32;
    }

    while (v41 > 2);
  }

LABEL_70:
  if (v41 == 1)
  {
    v42 = 64;
    goto LABEL_79;
  }

  if (v41 == 2)
  {
    v42 = 128;
LABEL_79:
    *(this + 77) = v42;
  }

  if (v32 != v33)
  {
    do
    {
      v43 = *v32++;
      operator delete(v43);
    }

    while (v32 != v33);
    v44 = *(this + 74);
    v45 = *(this + 75);
    if (v45 != v44)
    {
      *(this + 75) = v45 + ((v44 - v45 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v46 = *(this + 73);
  if (v46)
  {
    operator delete(v46);
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 512, *(this + 65));
  v47 = *(this + 61);
  if (v47)
  {
    *(this + 62) = v47;
    operator delete(v47);
  }

  v48 = *(this + 38);
  if (v48 != (this + 280))
  {
    if (v48)
    {
      (*(*v48 + 40))(v48);
    }

    v49 = *(this + 31);
    *(this + 31) = 0;
    if (!v49)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

  (*(*v48 + 32))(v48);
  v49 = *(this + 31);
  *(this + 31) = 0;
  if (v49)
  {
LABEL_92:
    dcsctp::Timer::~Timer(v49);
    MEMORY[0x2743DA540]();
  }

LABEL_93:
  v50 = *(this + 30);
  *(this + 30) = 0;
  if (v50)
  {
    dcsctp::Timer::~Timer(v50);
    MEMORY[0x2743DA540]();
  }
}

uint64_t dcsctp::TransmissionControlBlock::is_connection_established(dcsctp::TransmissionControlBlock *this)
{
  v2 = *(this + 38);
  if (v2)
  {
    v3 = *(*v2 + 48);

    return v3();
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:sn200100]();
    return dcsctp::TransmissionControlBlock::my_initial_tsn(v5);
  }
}

BOOL dcsctp::TransmissionControlBlock::IncrementTxErrorCounter(uint64_t a1)
{
  v1 = *(a1 + 416);
  *(a1 + 416) = v1 + 1;
  return *(a1 + 412) != 1 || v1 < *(a1 + 408);
}

uint64_t dcsctp::TransmissionControlBlock::ClearTxErrorCounter(uint64_t this)
{
  if (*(this + 416) >= 1)
  {
    *(this + 416) = 0;
  }

  return this;
}

uint64_t dcsctp::TransmissionControlBlock::PacketBuilder@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 264);
  v2 = *(this + 28);
  *(a2 + 4) = *(this + 24);
  *(a2 + 6) = v2;
  *(a2 + 8) = *(this + 40) & 0xFFFFFFFFFFFFFFFCLL;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return this;
}

__n128 std::__function::__func<std::__bind_front_t<webrtc::TimeDelta (dcsctp::StreamResetHandler::*)(void),dcsctp::StreamResetHandler*>,std::allocator<std::__bind_front_t<webrtc::TimeDelta (dcsctp::StreamResetHandler::*)(void),dcsctp::StreamResetHandler*>>,webrtc::TimeDelta ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2882A1138;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind_front_t<webrtc::TimeDelta (dcsctp::StreamResetHandler::*)(void),dcsctp::StreamResetHandler*>,std::allocator<std::__bind_front_t<webrtc::TimeDelta (dcsctp::StreamResetHandler::*)(void),dcsctp::StreamResetHandler*>>,webrtc::TimeDelta ()(void)>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

__n128 std::__function::__func<std::__bind_front_t<webrtc::TimeDelta (dcsctp::TransmissionControlBlock::*)(void),dcsctp::TransmissionControlBlock*>,std::allocator<std::__bind_front_t<webrtc::TimeDelta (dcsctp::TransmissionControlBlock::*)(void),dcsctp::TransmissionControlBlock*>>,webrtc::TimeDelta ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2882A1180;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind_front_t<webrtc::TimeDelta (dcsctp::TransmissionControlBlock::*)(void),dcsctp::TransmissionControlBlock*>,std::allocator<std::__bind_front_t<webrtc::TimeDelta (dcsctp::TransmissionControlBlock::*)(void),dcsctp::TransmissionControlBlock*>>,webrtc::TimeDelta ()(void)>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

__n128 std::__function::__func<std::__bind_front_t<void (dcsctp::TransmissionControlBlock::*)(webrtc::TimeDelta),dcsctp::TransmissionControlBlock*>,std::allocator<std::__bind_front_t<void (dcsctp::TransmissionControlBlock::*)(webrtc::TimeDelta),dcsctp::TransmissionControlBlock*>>,void ()(webrtc::TimeDelta)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2882A11C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind_front_t<void (dcsctp::TransmissionControlBlock::*)(webrtc::TimeDelta),dcsctp::TransmissionControlBlock*>,std::allocator<std::__bind_front_t<void (dcsctp::TransmissionControlBlock::*)(webrtc::TimeDelta),dcsctp::TransmissionControlBlock*>>,void ()(webrtc::TimeDelta)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    return (*(*v4 + v3))();
  }

  else
  {
    return v3(v4, *a2);
  }
}

uint64_t std::__function::__func<dcsctp::TransmissionControlBlock::TransmissionControlBlock(dcsctp::TimerManager &,std::string_view,dcsctp::DcSctpOptions const&,dcsctp::Capabilities const&,dcsctp::DcSctpSocketCallbacks &,dcsctp::SendQueue &,webrtc::StrongAlias<dcsctp::VerificationTagTag,unsigned int>,webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,webrtc::StrongAlias<dcsctp::VerificationTagTag,unsigned int>,webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,unsigned long,webrtc::StrongAlias<dcsctp::TieTagTag,unsigned long long>,dcsctp::PacketSender &,std::function<BOOL ()(void)>)::$_0,std::allocator<dcsctp::TransmissionControlBlock::TransmissionControlBlock(dcsctp::TimerManager &,std::string_view,dcsctp::DcSctpOptions const&,dcsctp::Capabilities const&,dcsctp::DcSctpSocketCallbacks &,dcsctp::SendQueue &,webrtc::StrongAlias<dcsctp::VerificationTagTag,unsigned int>,webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,webrtc::StrongAlias<dcsctp::VerificationTagTag,unsigned int>,webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,unsigned long,webrtc::StrongAlias<dcsctp::TieTagTag,unsigned long long>,dcsctp::PacketSender &,std::function<BOOL ()(void)>)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2882A1210;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<dcsctp::TransmissionControlBlock::TransmissionControlBlock(dcsctp::TimerManager &,std::string_view,dcsctp::DcSctpOptions const&,dcsctp::Capabilities const&,dcsctp::DcSctpSocketCallbacks &,dcsctp::SendQueue &,webrtc::StrongAlias<dcsctp::VerificationTagTag,unsigned int>,webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,webrtc::StrongAlias<dcsctp::VerificationTagTag,unsigned int>,webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,unsigned long,webrtc::StrongAlias<dcsctp::TieTagTag,unsigned long long>,dcsctp::PacketSender &,std::function<BOOL ()(void)>)::$_0,std::allocator<dcsctp::TransmissionControlBlock::TransmissionControlBlock(dcsctp::TimerManager &,std::string_view,dcsctp::DcSctpOptions const&,dcsctp::Capabilities const&,dcsctp::DcSctpSocketCallbacks &,dcsctp::SendQueue &,webrtc::StrongAlias<dcsctp::VerificationTagTag,unsigned int>,webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,webrtc::StrongAlias<dcsctp::VerificationTagTag,unsigned int>,webrtc::StrongAlias<dcsctp::TSNTag,unsigned int>,unsigned long,webrtc::StrongAlias<dcsctp::TieTagTag,unsigned long long>,dcsctp::PacketSender &,std::function<BOOL ()(void)>)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  if (*(v1 + 416) >= 1)
  {
    *(v1 + 416) = 0;
  }

  return result;
}

uint64_t webrtc::TransparentMode::Create@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((*(a2 + 285) & 1) == 0)
  {
    (*(**(a1 + 8) + 16))(&__p);
    v5 = v35;
    if ((v35 & 0x80u) != 0)
    {
      v5 = v34;
    }

    if (v5 >= 7)
    {
      p_p = __p;
      if ((v35 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      v16 = *p_p;
      v17 = *(p_p + 3);
      v6 = v16 == 1650552389 && v17 == 1684368482;
      if ((v35 & 0x80000000) == 0)
      {
LABEL_6:
        if (v6)
        {
          goto LABEL_7;
        }

LABEL_20:
        (*(**(a1 + 8) + 16))(&__p);
        v19 = v35;
        if ((v35 & 0x80u) != 0)
        {
          v19 = v34;
        }

        if (v19 >= 7)
        {
          v29 = __p;
          if ((v35 & 0x80u) == 0)
          {
            v29 = &__p;
          }

          v30 = *v29;
          v31 = *(v29 + 3);
          v20 = v30 == 1650552389 && v31 == 1684368482;
          if ((v35 & 0x80000000) == 0)
          {
LABEL_24:
            v21 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
            if (v20)
            {
              goto LABEL_25;
            }

            goto LABEL_38;
          }
        }

        else
        {
          v20 = 0;
          if ((v35 & 0x80000000) == 0)
          {
            goto LABEL_24;
          }
        }

        operator delete(__p);
        v21 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>();
        if (v20)
        {
LABEL_25:
          if ((v21 & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log("\r\t", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/aec3/transparent_mode.cc");
          }

          operator new();
        }

LABEL_38:
        if ((v21 & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/aec3/transparent_mode.cc");
        }

        operator new();
      }
    }

    else
    {
      v6 = 0;
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    operator delete(__p);
    if (!v6)
    {
      goto LABEL_20;
    }
  }

LABEL_7:
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/audio_processing/aec3/transparent_mode.cc");
  }

  result = 0;
  *a3 = 0;
  return result;
}

uint64_t webrtc::TransparentModeImpl::Reset(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 12) = 1045220557;
  return this;
}

uint64_t webrtc::TransparentModeImpl::Update(uint64_t this, int a2, BOOL a3, BOOL a4, int a5, BOOL a6, int a7)
{
  if (a7)
  {
    v7 = (*(this + 12) * 1.0) + ((1.0 - *(this + 12)) * 0.000001);
    v8 = (v7 * flt_273BA5520[a5 + 2]) / ((v7 * flt_273BA5520[a5 + 2]) + (flt_273BA5520[a5] * (1.0 - v7)));
    *(this + 12) = v8;
    if (v8 <= 0.95)
    {
      if (v8 >= 0.5)
      {
        return this;
      }

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    *(this + 8) = v9;
  }

  return this;
}

uint64_t webrtc::LegacyTransparentModeImpl::Reset(uint64_t this)
{
  *(this + 48) = xmmword_273BA5510;
  *(this + 88) = 0;
  if (*(this + 8) == 1)
  {
    *(this + 80) = 0;
  }

  return this;
}

uint64_t webrtc::LegacyTransparentModeImpl::Update(uint64_t this, int a2, int a3, int a4, BOOL a5, char a6, int a7, int a8)
{
  v8 = *(this + 16) + 1;
  *(this + 16) = v8;
  v9 = *(this + 88) + (a7 & ~a8);
  *(this + 88) = v9;
  if (a2 <= 4 && a3)
  {
    *(this + 40) = 1;
    *(this + 32) = 0;
  }

  else if (a7)
  {
    ++*(this + 32);
  }

  if (*(this + 40))
  {
    v10 = *(this + 32) < 0x1D4DuLL;
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = v8 < 0x4E3;
    if (!a4)
    {
LABEL_8:
      v11 = *(this + 48) + 1;
      *(this + 48) = v11;
      if (v11 >= 0x1389)
      {
        *(this + 72) = 0;
      }

      if (a7)
      {
        v12 = *(this + 64) + 1;
        *(this + 64) = v12;
        if (v12 >= 0x3A99)
        {
          *(this + 80) = 0;
        }
      }

      if (a6)
      {
        goto LABEL_14;
      }

LABEL_20:
      *(this + 56) = 0;
      if (*(this + 64) >= 0x3A99uLL)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }
  }

  *(this + 80) = 1;
  *(this + 48) = 0;
  v14 = *(this + 72) + 1;
  *(this + 64) = 0;
  *(this + 72) = v14;
  if ((a6 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  v13 = *(this + 56) + 1;
  *(this + 56) = v13;
  if (v13 < 0x3C)
  {
    if (*(this + 64) < 0x3A99uLL)
    {
      goto LABEL_16;
    }

LABEL_23:
    *(this + 41) = 0;
    if (*(this + 72) >= 0x33uLL)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  *(this + 48) = 10000;
  if (*(this + 64) >= 0x3A99uLL)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (*(this + 72) >= 0x33uLL)
  {
LABEL_17:
    *(this + 41) = 1;
    *(this + 24) = 0;
    return this;
  }

LABEL_24:
  *(this + 24) = (*(this + 41) & 1) == 0 && (!v10 || (*(this + 80) & 1) == 0) && v9 > 0x5DC;
  return this;
}

uint64_t webrtc::internal::TransportAdapter::SendRtp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = atomic_load((a1 + 16));
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!a3)
  {
    a2 = 0;
  }

  return (**v4)(v4, a2);
}

uint64_t webrtc::internal::TransportAdapter::SendRtcp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = atomic_load((a1 + 16));
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!a3)
  {
    a2 = 0;
  }

  return (*(*v4 + 8))(v4, a2);
}

void webrtc::IceParameters::Validate(webrtc::IceParameters *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 23);
  if (v3 < 0)
  {
    if (!*(this + 1))
    {
      goto LABEL_5;
    }
  }

  else if (!*(this + 23))
  {
LABEL_5:
    if ((*(this + 47) & 0x8000000000000000) != 0)
    {
      if (*(this + 4))
      {
        goto LABEL_7;
      }
    }

    else if (*(this + 47))
    {
      goto LABEL_7;
    }

    *a2 = 0;
    *(a2 + 38) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(a2 + 29) = 0;
    return;
  }

LABEL_7:
  if ((v3 & 0x80000000) != 0)
  {
    v4 = *this;
    v3 = *(this + 1);
    if ((v3 - 257) <= 0xFFFFFFFFFFFFFF02)
    {
LABEL_9:
      operator new();
    }
  }

  else
  {
    v4 = this;
    if ((v3 - 257) <= 0xFFFFFFFFFFFFFF02)
    {
      goto LABEL_9;
    }
  }

  do
  {
    v6 = *v4;
    if ((v6 - 35) > 0x3C || ((1 << (v6 - 35)) & 0x1000000004000401) == 0)
    {
      if ((v6 & 0xFFFFFFFB) != 0x2B && (absl::ascii_internal::kPropertyBits[*v4] & 4) == 0)
      {
        operator new();
      }
    }

    else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\t\t\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/transport_description.cc");
    }

    v4 = (v4 + 1);
    --v3;
  }

  while (v3);
  v15 = *(this + 47);
  if (v15 < 0)
  {
    v16 = *(this + 3);
    v15 = *(this + 4);
    if ((v15 - 257) <= 0xFFFFFFFFFFFFFF14)
    {
LABEL_28:
      operator new();
    }
  }

  else
  {
    v16 = this + 24;
    if ((v15 - 257) <= 0xFFFFFFFFFFFFFF14)
    {
      goto LABEL_28;
    }
  }

  do
  {
    v18 = *v16;
    if ((v18 - 35) > 0x3C || ((1 << (v18 - 35)) & 0x1000000004000401) == 0)
    {
      if ((v18 & 0xFFFFFFFB) != 0x2B && (absl::ascii_internal::kPropertyBits[*v16] & 4) == 0)
      {
        operator new();
      }
    }

    else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t\t\t\t", v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/transport_description.cc");
    }

    ++v16;
    --v15;
  }

  while (v15);
  *a2 = 0;
  *(a2 + 38) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 29) = 0;
}

uint64_t webrtc::StringToConnectionRole(char *a1, uint64_t a2)
{
  if (a2 == 8)
  {
    v25 = *a1;
    if (v25 != 104)
    {
      if ((v25 - 65) < 0x1A)
      {
        LOBYTE(v25) = v25 + 32;
      }

      if (v25 != 104)
      {
        return 0;
      }
    }

    v26 = a1[1];
    if (v26 != 111)
    {
      if ((v26 - 65) < 0x1A)
      {
        LOBYTE(v26) = v26 + 32;
      }

      if (v26 != 111)
      {
        return 0;
      }
    }

    v27 = a1[2];
    if (v27 != 108)
    {
      if ((v27 - 65) < 0x1A)
      {
        LOBYTE(v27) = v27 + 32;
      }

      if (v27 != 108)
      {
        return 0;
      }
    }

    v28 = a1[3];
    if (v28 != 100)
    {
      if ((v28 - 65) < 0x1A)
      {
        LOBYTE(v28) = v28 + 32;
      }

      if (v28 != 100)
      {
        return 0;
      }
    }

    v29 = a1[4];
    if (v29 != 99)
    {
      if ((v29 - 65) < 0x1A)
      {
        LOBYTE(v29) = v29 + 32;
      }

      if (v29 != 99)
      {
        return 0;
      }
    }

    v30 = a1[5];
    if (v30 != 111)
    {
      if ((v30 - 65) < 0x1A)
      {
        LOBYTE(v30) = v30 + 32;
      }

      if (v30 != 111)
      {
        return 0;
      }
    }

    v31 = a1[6];
    if (v31 != 110)
    {
      if ((v31 - 65) < 0x1A)
      {
        LOBYTE(v31) = v31 + 32;
      }

      if (v31 != 110)
      {
        return 0;
      }
    }

    v32 = a1[7];
    if (v32 != 110)
    {
      if ((v32 - 65) < 0x1A)
      {
        LOBYTE(v32) = v32 + 32;
      }

      if (v32 != 110)
      {
        return 0;
      }
    }

    return 0x100000004;
  }

  if (a2 != 7)
  {
    if (a2 == 6)
    {
      v2 = *a1;
      if (v2 == 97)
      {
        goto LABEL_8;
      }

      if ((v2 - 65) < 0x1A)
      {
        LOBYTE(v2) = v2 + 32;
      }

      if (v2 == 97)
      {
LABEL_8:
        v3 = a1[1];
        if (v3 == 99)
        {
          goto LABEL_23;
        }

        if ((v3 - 65) < 0x1A)
        {
          LOBYTE(v3) = v3 + 32;
        }

        if (v3 == 99)
        {
LABEL_23:
          v4 = a1[2];
          if (v4 == 116)
          {
            goto LABEL_130;
          }

          if ((v4 - 65) < 0x1A)
          {
            LOBYTE(v4) = v4 + 32;
          }

          if (v4 == 116)
          {
LABEL_130:
            v5 = a1[3];
            if (v5 == 105)
            {
              goto LABEL_131;
            }

            if ((v5 - 65) < 0x1A)
            {
              LOBYTE(v5) = v5 + 32;
            }

            if (v5 == 105)
            {
LABEL_131:
              v6 = a1[4];
              if (v6 == 118)
              {
                goto LABEL_24;
              }

              if ((v6 - 65) < 0x1A)
              {
                LOBYTE(v6) = v6 + 32;
              }

              if (v6 == 118)
              {
LABEL_24:
                v7 = a1[5];
                if (v7 == 101)
                {
                  return 0x100000001;
                }

                if ((v7 - 65) < 0x1A)
                {
                  LOBYTE(v7) = v7 + 32;
                }

                if (v7 == 101)
                {
                  return 0x100000001;
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  v9 = *a1;
  if (v9 == 112 || ((v9 - 65) >= 0x1A ? (v10 = *a1) : (v10 = v9 + 32), v10 == 112))
  {
    v11 = a1[1];
    if (v11 == 97)
    {
      goto LABEL_35;
    }

    if ((v11 - 65) < 0x1A)
    {
      LOBYTE(v11) = v11 + 32;
    }

    if (v11 == 97)
    {
LABEL_35:
      v12 = a1[2];
      if (v12 == 115)
      {
        goto LABEL_54;
      }

      if ((v12 - 65) < 0x1A)
      {
        LOBYTE(v12) = v12 + 32;
      }

      if (v12 == 115)
      {
LABEL_54:
        v13 = a1[3];
        if (v13 == 115)
        {
          goto LABEL_127;
        }

        if ((v13 - 65) < 0x1A)
        {
          LOBYTE(v13) = v13 + 32;
        }

        if (v13 == 115)
        {
LABEL_127:
          v14 = a1[4];
          if (v14 == 105)
          {
            goto LABEL_128;
          }

          if ((v14 - 65) < 0x1A)
          {
            LOBYTE(v14) = v14 + 32;
          }

          if (v14 == 105)
          {
LABEL_128:
            v15 = a1[5];
            if (v15 == 118)
            {
              goto LABEL_129;
            }

            if ((v15 - 65) < 0x1A)
            {
              LOBYTE(v15) = v15 + 32;
            }

            if (v15 == 118)
            {
LABEL_129:
              v16 = 0x100000002;
              v17 = a1[6];
              if (v17 == 101)
              {
                return v16;
              }

              if ((v17 - 65) < 0x1A)
              {
                LOBYTE(v17) = v17 + 32;
              }

              if (v17 == 101)
              {
                return v16;
              }
            }
          }
        }
      }
    }
  }

  if (v9 == 97 || ((v9 - 65) >= 0x1A ? (v18 = *a1) : (v18 = v9 + 32), v18 == 97))
  {
    v19 = a1[1];
    if (v19 == 99)
    {
      goto LABEL_64;
    }

    if ((v19 - 65) < 0x1A)
    {
      LOBYTE(v19) = v19 + 32;
    }

    if (v19 == 99)
    {
LABEL_64:
      v20 = a1[2];
      if (v20 == 116)
      {
        goto LABEL_79;
      }

      if ((v20 - 65) < 0x1A)
      {
        LOBYTE(v20) = v20 + 32;
      }

      if (v20 == 116)
      {
LABEL_79:
        v21 = a1[3];
        if (v21 == 112)
        {
          goto LABEL_132;
        }

        if ((v21 - 65) < 0x1A)
        {
          LOBYTE(v21) = v21 + 32;
        }

        if (v21 == 112)
        {
LABEL_132:
          v22 = a1[4];
          if (v22 == 97)
          {
            goto LABEL_133;
          }

          if ((v22 - 65) < 0x1A)
          {
            LOBYTE(v22) = v22 + 32;
          }

          if (v22 == 97)
          {
LABEL_133:
            v23 = a1[5];
            if (v23 == 115)
            {
              goto LABEL_80;
            }

            if ((v23 - 65) < 0x1A)
            {
              LOBYTE(v23) = v23 + 32;
            }

            if (v23 == 115)
            {
LABEL_80:
              v24 = a1[6];
              if (v24 == 115)
              {
                return 0x100000003;
              }

              if ((v24 - 65) < 0x1A)
              {
                LOBYTE(v24) = v24 + 32;
              }

              if (v24 == 115)
              {
                return 0x100000003;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t webrtc::ConnectionRoleToString(int *a1, uint64_t *a2)
{
  result = 0;
  v4 = *a1;
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      if (*(a2 + 23) < 0)
      {
        a2[1] = 6;
        a2 = *a2;
      }

      else
      {
        *(a2 + 23) = 6;
      }

      qmemcpy(a2, "active", 6);
      v6 = a2 + 6;
      goto LABEL_23;
    }

    if (v4 != 2)
    {
      return result;
    }

    if (*(a2 + 23) < 0)
    {
      a2[1] = 7;
      a2 = *a2;
    }

    else
    {
      *(a2 + 23) = 7;
    }

    v5 = "passive";
    goto LABEL_22;
  }

  if (v4 == 3)
  {
    if (*(a2 + 23) < 0)
    {
      a2[1] = 7;
      a2 = *a2;
    }

    else
    {
      *(a2 + 23) = 7;
    }

    v5 = "actpass";
LABEL_22:
    *a2 = *v5;
    *(a2 + 3) = *(v5 + 3);
    v6 = a2 + 7;
    goto LABEL_23;
  }

  if (v4 != 4)
  {
    return result;
  }

  if (*(a2 + 23) < 0)
  {
    a2[1] = 8;
    a2 = *a2;
  }

  else
  {
    *(a2 + 23) = 8;
  }

  *a2 = 0x6E6E6F63646C6F68;
  v6 = a2 + 1;
LABEL_23:
  *v6 = 0;
  return 1;
}

uint64_t webrtc::TransportDescription::TransportDescription(uint64_t a1, void *a2, _BYTE *__src, size_t __len, _BYTE *a5, size_t a6, int a7, int a8, uint64_t a9)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v13 = a2[1];
  if (v13 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v13 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_24;
  }

  if (__len > 0x16)
  {
    operator new();
  }

  *(a1 + 47) = __len;
  v14 = (a1 + 24 + __len);
  if (a1 + 24 <= __src && v14 > __src)
  {
    goto LABEL_23;
  }

  if (__len)
  {
    memmove((a1 + 24), __src, __len);
  }

  *v14 = 0;
  if (a6 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_24:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a6 > 0x16)
  {
    operator new();
  }

  *(a1 + 71) = a6;
  v15 = (a1 + 48 + a6);
  if (a1 + 48 <= a5 && v15 > a5)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a6)
  {
    memmove((a1 + 48), a5, a6);
  }

  *v15 = 0;
  *(a1 + 72) = a7;
  *(a1 + 76) = a8;
  if (a9)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  return a1;
}

uint64_t webrtc::TransportDescription::TransportDescription(uint64_t a1, _BYTE *a2, size_t a3, _BYTE *__src, size_t __len)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_19;
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  v8 = (a1 + 24);
  *(a1 + 47) = a3;
  v9 = (a1 + 24 + a3);
  if (a1 + 24 <= a2 && v9 > a2)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    memmove(v8, a2, a3);
  }

  *v9 = 0;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_19:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  *(a1 + 71) = __len;
  v10 = (a1 + 48 + __len);
  if (a1 + 48 <= __src && v10 > __src)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (__len)
  {
    memmove((a1 + 48), __src, __len);
  }

  *v10 = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return a1;
}

std::string *webrtc::TransportDescription::TransportDescription(std::string *this, const webrtc::TransportDescription *a2)
{
  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  v4 = *(a2 + 1);
  if (v4 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
    if ((*(a2 + 71) & 0x80000000) == 0)
    {
LABEL_6:
      v6 = *(a2 + 3);
      this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
      *&this[2].__r_.__value_.__l.__data_ = v6;
      this[3].__r_.__value_.__r.__words[0] = *(a2 + 9);
      if (*(a2 + 10))
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
    if ((*(a2 + 71) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  this[3].__r_.__value_.__r.__words[0] = *(a2 + 9);
  if (*(a2 + 10))
  {
LABEL_7:
    operator new();
  }

LABEL_10:
  this[3].__r_.__value_.__l.__size_ = 0;
  return this;
}

void webrtc::TransportDescription::~TransportDescription(webrtc::TransportDescription *this)
{
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3 && atomic_fetch_add((v3 + 24), 0xFFFFFFFF) == 1)
    {
      v4 = *(v3 + 16);
      *(v3 + 16) = 0;
      if (v4)
      {
        MEMORY[0x2743DA520](v4, 0x1000C8077774924);
      }

      MEMORY[0x2743DA540](v3, 0x1010C40EE34DA14);
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x2743DA540](v2, 0x1032C40CD05A1E1);
  }

  if ((*(this + 71) & 0x80000000) == 0)
  {
    if ((*(this + 47) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    operator delete(*(this + 3));
    v5 = *this;
    if (!*this)
    {
      return;
    }

    goto LABEL_16;
  }

  operator delete(*(this + 6));
  if (*(this + 47) < 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v5 = *this;
  if (!*this)
  {
    return;
  }

LABEL_16:
  v6 = *(this + 1);
  v7 = v5;
  if (v6 != v5)
  {
    do
    {
      v8 = *(v6 - 1);
      v6 -= 3;
      if (v8 < 0)
      {
        operator delete(*v6);
      }
    }

    while (v6 != v5);
    v7 = *this;
  }

  *(this + 1) = v5;
  operator delete(v7);
}

uint64_t webrtc::TransportDescriptionFactory::SetSecurityInfo(webrtc::SSLFingerprint *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    webrtc::SSLFingerprint::CreateFromCertificate(a1, a2, &v20);
    v5 = v20;
    v20 = 0;
    v6 = *(a2 + 80);
    *(a2 + 80) = v5;
    if (v6)
    {
      v7 = *(v6 + 24);
      if (v7 && atomic_fetch_add((v7 + 24), 0xFFFFFFFF) == 1)
      {
        v8 = *(v7 + 16);
        *(v7 + 16) = 0;
        if (v8)
        {
          MEMORY[0x2743DA520](v8, 0x1000C8077774924);
        }

        MEMORY[0x2743DA540](v7, 0x1010C40EE34DA14);
      }

      if (*(v6 + 23) < 0)
      {
        operator delete(*v6);
      }

      MEMORY[0x2743DA540](v6, 0x1032C40CD05A1E1);
      v9 = v20;
      v20 = 0;
      if (v9)
      {
        v10 = *(v9 + 24);
        if (v10 && atomic_fetch_add((v10 + 24), 0xFFFFFFFF) == 1)
        {
          v11 = *(v10 + 16);
          *(v10 + 16) = 0;
          if (v11)
          {
            MEMORY[0x2743DA520](v11, 0x1000C8077774924);
          }

          MEMORY[0x2743DA540](v10, 0x1010C40EE34DA14);
        }

        if (*(v9 + 23) < 0)
        {
          operator delete(*v9);
        }

        MEMORY[0x2743DA540](v9, 0x1032C40CD05A1E1);
      }

      v5 = *(a2 + 80);
    }

    if (v5)
    {
      *(a2 + 76) = a3;
      return 1;
    }
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/transport_description_factory.cc");
  }

  return 0;
}

void webrtc::TransportDescriptionFactory::CreateAnswer(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (a1)
  {
    operator new();
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/p2p/base/transport_description_factory.cc");
  }

  *a2 = 0;
}

unsigned __int8 *webrtc::rtcp::TransportFeedback::LastChunk::Emit(unsigned __int8 *this, uint8x8_t a2)
{
  if (this[24] == 1)
  {
    v2 = *(this + 8) | (*this << 13);
LABEL_5:
    *(this + 2) = 0;
    *(this + 12) = 1;
    return v2;
  }

  v3 = *(this + 2);
  v4 = *this;
  if (v3 == 14)
  {
    v5.i32[1] = 589834;
    v6 = vshlq_u16(vmovl_u8(*(this + 1)), xmmword_273BA5560);
    v5.i32[0] = *(this + 9);
    v7 = vshl_u16(*&vmovl_u8(v5), 0x1000200030004);
    *v6.i8 = vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
    v2 = this[13] | v6.i16[0] | v7.i16[0] | v7.i16[2] | v6.i16[2] | ((v6.i32[0] | (v7.i32[0] | v7.i32[1]) | v6.i32[1]) >> 16) | (v4 << 13) | 0x8000;
    goto LABEL_5;
  }

  a2.i32[0] = *(this + 1);
  v8 = vshl_u16(*&vmovl_u8(a2), 0x400060008000ALL);
  v2 = v8.i16[0] | v8.i16[2] | ((v8.i32[0] | v8.i32[1]) >> 16) | (v4 << 12) | (4 * this[5]) | this[6] | 0xC000;
  *(this + 12) = 1;
  v9 = v3 - 7;
  *(this + 2) = v3 - 7;
  if (v3 == 7)
  {
    return v2;
  }

  v10 = this[7];
  *this = v10;
  this[25] = v10 == 2;
  if (v9 == 1)
  {
    return v2;
  }

  v11 = this[8];
  this[1] = this[8];
  this[24] = v11 == v10;
  v12 = v10 == 2 || v11 == 2;
  v13 = v12;
  this[25] = v13;
  if (v9 < 3)
  {
    return v2;
  }

  v14 = this[9];
  this[2] = this[9];
  v16 = v11 == v10 && v14 == v10;
  this[24] = v16;
  if (v14 == 2)
  {
    v13 = 1;
  }

  this[25] = v13;
  if (v9 == 3)
  {
    return v2;
  }

  v17 = this[10];
  this[3] = this[10];
  if (v17 != v10)
  {
    v16 = 0;
  }

  this[24] = v16;
  if (v17 == 2)
  {
    v13 = 1;
  }

  this[25] = v13;
  if (v9 < 5)
  {
    return v2;
  }

  v18 = this[11];
  this[4] = this[11];
  if (v18 != v10)
  {
    v16 = 0;
  }

  this[24] = v16;
  v19 = v18 == 2 ? 1 : v13;
  this[25] = v19;
  if (v9 == 5)
  {
    return v2;
  }

  v20 = this[12];
  this[5] = this[12];
  v21 = v20 == v10 && v16;
  this[24] = v21;
  v22 = v20 == 2 ? 1 : v19;
  this[25] = v22;
  if (v9 < 7)
  {
    return v2;
  }

  v23 = this[13];
  this[6] = this[13];
  v24 = v23 == v10 && v21;
  this[24] = v24;
  if (v23 == 2)
  {
    v25 = 1;
  }

  else
  {
    v25 = v22;
  }

  this[25] = v25;
  __break(1u);
  return this;
}

void webrtc::rtcp::TransportFeedback::~TransportFeedback(webrtc::rtcp::TransportFeedback *this)
{
  *this = &unk_2882A12F8;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }
}

{
  *this = &unk_2882A12F8;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::rtcp::TransportFeedback::AddReceivedPacket(webrtc::rtcp::TransportFeedback *this, unsigned int a2, Timestamp a3, __n128 a4)
{
  if (*(this + 25) != 1)
  {
    LOWORD(v15) = 0;
    goto LABEL_29;
  }

  v4 = 0x93FFFFFFFFLL;
  v5 = *(this + 4);
  if (v5 > a3.var0)
  {
    v6 = a3.var0 == 0x8000000000000000 || v5 == 0x7FFFFFFFFFFFFFFFLL;
    v7 = v5 - a3.var0 + 0xFA00000000;
    if (v6)
    {
      v7 = 0x800000F9FFFFFFFFLL;
    }

    v8 = ((v7 - 1) * 0x20C49BA5E353F7CFLL) >> 64;
    v9 = 0xFA00000000 * ((v8 >> 37) + (v8 >> 63));
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_25:
      v15 = (v4 - 0xFA0000007DLL) / 250;
      if (v15 != v15)
      {
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    v10 = v9 == 0x8000000000000000 || a3.var0 == 0x8000000000000000;
    v11 = v9 + a3.var0;
    if (v10)
    {
      a3.var0 = 0x8000000000000000;
    }

    else
    {
      a3.var0 = v11;
    }
  }

  if (v5 == 0x8000000000000000 || a3.var0 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_25;
  }

  v4 = a3.var0 - v5 - 0xFA00000000 * ((LODWORD(a3.var0) - v5) / 0);
  v13 = a3.var0 == 0x8000000000000000 || v5 == 0x7FFFFFFFFFFFFFFFLL;
  v14 = 0xFFFFFF6C00000000;
  if (!v13)
  {
    v14 = v4;
  }

  if (v14 >= 0x7D00000001)
  {
    goto LABEL_25;
  }

  v15 = (v14 + 125) / 250;
  if (v15 != v15)
  {
LABEL_26:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/transport_feedback.cc");
    }

    return 0;
  }

LABEL_29:
  v23 = *(this + 9);
  v24 = v23 + *(this + 8);
  if (a2 == v24)
  {
    goto LABEL_30;
  }

  v33 = v24 - 1;
  v34 = a2 - (v24 - 1);
  if (v34 == 0x8000)
  {
    if (a2 <= v33)
    {
      return 0;
    }
  }

  else
  {
    v35 = v34 & 0x8000;
    if (a2 == v33 || v35 != 0)
    {
      return 0;
    }
  }

  v37 = (a2 - v24);
  v23 += v37;
  if (v23 >> 16)
  {
    return 0;
  }

  v38 = this + 112;
  v39 = *(this + 16);
  if (!v39)
  {
    goto LABEL_98;
  }

  while (1)
  {
    if (v39 < 7)
    {
LABEL_60:
      v38[v39] = 0;
      v41 = *(this + 136);
      v39 = *(this + 16) + 1;
      *(this + 16) = v39;
      v40 = (v41 & 1) != 0 && *v38 == 0;
      goto LABEL_51;
    }

    if (v39 > 0xD)
    {
      if (v39 > 0x1FFE)
      {
        break;
      }
    }

    else if ((*(this + 137) & 1) == 0)
    {
      goto LABEL_60;
    }

    if (*(this + 136) != 1 || *v38)
    {
      break;
    }

    if (v39 <= 0xD)
    {
      goto LABEL_60;
    }

    *(this + 16) = ++v39;
    v40 = 1;
LABEL_51:
    *(this + 136) = v40;
    if (!--v37)
    {
      goto LABEL_133;
    }
  }

  v53 = this;
  v54 = a2;
  v83 = webrtc::rtcp::TransportFeedback::LastChunk::Emit(this + 112, a4.n128_u64[0]);
  std::vector<unsigned short>::push_back[abi:sn200100](v53 + 11, &v83);
  LOWORD(a2) = v54;
  this = v53;
LABEL_98:
  v55 = v37 / 0x1FFF;
  v56 = v37 % 0x1FFF;
  if (v37 % 0x1FFF)
  {
    v57 = v55 + 1;
  }

  else
  {
    v57 = v37 / 0x1FFF;
  }

  v58 = *(this + 18) + 2 * v57;
  if (v58 > 0x40000)
  {
    *(this + 9) = v23 - v37;
    return 0;
  }

  *(this + 18) = v58;
  if (v37 >= 0x1FFF)
  {
    v60 = *(this + 12);
    v59 = *(this + 13);
    if (v55 <= (v59 - v60) >> 1)
    {
      v66 = v60 + v55;
      if (-v60 >> 1 >= ((v55 - 1) & 0x7FFFFFFFFFFFFFFFLL))
      {
        v67 = (v55 - 1) & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v67 = -v60 >> 1;
      }

      v68 = *(this + 12);
      if (v67 >= 0x10)
      {
        v69 = 16;
        if (((v67 + 1) & 0xF) != 0)
        {
          v69 = (v67 + 1) & 0xF;
        }

        v68 = v60 + v67 + 1 - v69;
        v70 = v60 + 1;
        v71 = ~v67 + v69;
        a4.n128_u32[0] = -536813568;
        a4.n128_u16[2] = -8192;
        a4.n128_u16[3] = -8192;
        a4.n128_u16[4] = -8192;
        a4.n128_u16[5] = -8192;
        a4.n128_u16[6] = -8192;
        a4.n128_u16[7] = -8192;
        do
        {
          v70[-1] = a4;
          *v70 = a4;
          v70 += 2;
          v71 += 16;
        }

        while (v71);
      }

      do
      {
        if (!v68)
        {
          goto LABEL_134;
        }

        *v68++ = 0x1FFF;
      }

      while (v68 != v66);
      *(this + 12) = v66;
    }

    else
    {
      v61 = *(this + 11);
      v62 = (v60 - v61) >> 1;
      if ((v62 + v55) < 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v63 = v59 - v61;
      if (v63 <= v62 + v55)
      {
        v64 = v62 + v55;
      }

      else
      {
        v64 = v63;
      }

      if (v63 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v65 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v65 = v64;
      }

      if (v65)
      {
        if ((v65 & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_135:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v72 = 2 * v62;
      v73 = 2 * v55;
      v74 = (2 * v62 + 2 * v55);
      v75 = (2 * v62);
      do
      {
        if (!v75)
        {
          goto LABEL_134;
        }

        *v75++ = 0x1FFF;
        v73 -= 2;
      }

      while (v73);
      v76 = *(this + 12) - v60;
      v77 = this;
      v78 = a2;
      memcpy(v74, v60, v76);
      v79 = &v74[v76];
      *(v77 + 12) = v60;
      v80 = *(v77 + 11);
      v81 = v60 - v80;
      v82 = (v72 - (v60 - v80));
      memcpy(v82, v80, v81);
      LOWORD(a2) = v78;
      this = v77;
      *(v77 + 11) = v82;
      *(v77 + 12) = v79;
      *(v77 + 13) = 0;
      if (v80)
      {
        operator delete(v80);
        LOWORD(a2) = v78;
        this = v77;
      }
    }
  }

  *(v38 + 6) = 0;
  *v38 = 0;
  *(this + 16) = v56;
LABEL_133:
  *(this + 9) = v23;
LABEL_30:
  if (v15 <= 0xFFu)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  if (v23 == 0xFFFF)
  {
    return 0;
  }

  v26 = *(this + 16);
  v27 = 2 * (v26 == 0);
  v28 = *(this + 18);
  v29 = v28 + v25;
  if ((v29 + v27) > 0x40000)
  {
    return 0;
  }

  v30 = this + 112;
  if (v26 < 7)
  {
    goto LABEL_36;
  }

  if (v26 > 0xD)
  {
    if (v26 <= 0x1FFE)
    {
      goto LABEL_70;
    }
  }

  else
  {
    if (v15 <= 0xFFu && (*(this + 137) & 1) == 0)
    {
LABEL_36:
      *(this + 18) = v27 + v28;
      goto LABEL_37;
    }

LABEL_70:
    if (*(this + 136) == 1 && *v30 == v25)
    {
      if (v26 > 0xD)
      {
        *(this + 16) = v26 + 1;
        goto LABEL_38;
      }

LABEL_37:
      v30[v26] = v25;
      v31 = *(this + 136);
      ++*(this + 16);
      if (v31)
      {
        goto LABEL_38;
      }

LABEL_78:
      v32 = 0;
      goto LABEL_79;
    }
  }

  if ((v29 - 0x3FFFF) < 0xFFFFFFFFFFFBFFFFLL)
  {
    return 0;
  }

  v42 = a2;
  v43 = this;
  v84 = webrtc::rtcp::TransportFeedback::LastChunk::Emit(this + 112, a4.n128_u64[0]);
  std::vector<unsigned short>::push_back[abi:sn200100](v43 + 11, &v84);
  this = v43;
  *(v43 + 18) += 2;
  v44 = *(v43 + 16);
  if (v44 <= 0xD)
  {
    v30[v44] = v25;
    v44 = *(v43 + 16);
  }

  LOWORD(a2) = v42;
  *(v43 + 16) = v44 + 1;
  if (*(v43 + 136) != 1)
  {
    goto LABEL_78;
  }

LABEL_38:
  v32 = *v30 == v25;
LABEL_79:
  *(this + 136) = v32;
  *(this + 137) |= v15 > 0xFFu;
  ++*(this + 9);
  v45 = *(this + 6);
  v46 = *(this + 7);
  if (v45 >= v46)
  {
    v47 = *(this + 5);
    v48 = ((v45 - v47) >> 2) + 1;
    if (v48 >> 62)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v49 = v46 - v47;
    if (v49 >> 1 > v48)
    {
      v48 = v49 >> 1;
    }

    if (v49 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v48 = 0x3FFFFFFFFFFFFFFFLL;
    }

    if (v48)
    {
      if (!(v48 >> 62))
      {
        operator new();
      }

      goto LABEL_135;
    }

LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (!v45)
  {
    goto LABEL_134;
  }

  *v45 = a2;
  v45[1] = v15;
  *(this + 6) = v45 + 2;
  v50 = *(this + 4);
  v51 = v50 + 250 * v15;
  if (v50 == 0x8000000000000000)
  {
    v51 = 0x8000000000000000;
  }

  if (v50 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v51 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(this + 4) = v51;
  if (*(this + 25) == 1)
  {
    *(this + 18) += v25;
  }

  return 1;
}

uint64_t webrtc::rtcp::TransportFeedback::Parse(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) > 0x11u)
  {
    v9 = *(a2 + 8);
    *(a1 + 8) = bswap32(*v9);
    *(a1 + 12) = bswap32(*(v9 + 4));
    *(a1 + 16) = bswap32(*(v9 + 8)) >> 16;
    v10 = __rev16(*(v9 + 10));
    v11 = (*(v9 + 12) << 16) | (*(v9 + 13) << 8) | *(v9 + 14);
    *(a1 + 20) = v11;
    *(a1 + 24) = *(v9 + 15);
    *(a1 + 18) = 0;
    *(a1 + 32) = 64000 * v11 + 0xFA00000000;
    *(a1 + 48) = *(a1 + 40);
    *(a1 + 72) = *(a1 + 64);
    *(a1 + 96) = *(a1 + 88);
    *(a1 + 128) = 0;
    *(a1 + 136) = 1;
    *(a1 + 144) = 20;
    if (v10)
    {
      operator new();
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/transport_feedback.cc");
      return 0;
    }

    return 0;
  }

  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
  {
    return 0;
  }

  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long> const&)::t, v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/transport_feedback.cc");
  return 0;
}

uint64_t webrtc::rtcp::TransportFeedback::Create(_WORD *a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  if (!a1[9])
  {
    return 0;
  }

  v12 = *a3;
  if ((*(*a1 + 16))(a1) + v12 > a4)
  {
    while (*a3)
    {
      a6(a5, a2);
      *a3 = 0;
      if ((*(*a1 + 16))(a1) <= a4)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

LABEL_5:
  (*(*a1 + 16))(a1);
  v13 = (*(*a1 + 16))(a1);
  v14 = *(a1 + 18);
  result = (*(*a1 + 16))(a1);
  v16 = v13 - v14;
  if (v13 == v14)
  {
    v17 = -113;
  }

  else
  {
    v17 = -81;
  }

  *(a2 + *a3) = v17;
  *(a2 + *a3 + 1) = -51;
  *(a2 + *a3 + 2) = (result - 4) >> 10;
  *(a2 + *a3 + 3) = (result - 4) >> 2;
  v18 = *a3 + 4;
  *a3 = v18;
  v19 = (a2 + v18);
  *v19 = bswap32(*(a1 + 2));
  v19[1] = bswap32(*(a1 + 3));
  v20 = *a3 + 8;
  *a3 = v20;
  *(a2 + v20) = bswap32(a1[8]) >> 16;
  v21 = *a3 + 2;
  *a3 = v21;
  *(a2 + v21) = bswap32(a1[9]) >> 16;
  v22 = *a3 + 2;
  *a3 = v22;
  v23 = (a2 + v22);
  v24 = *(a1 + 5);
  *v23 = BYTE2(v24);
  v23[1] = BYTE1(v24);
  v23[2] = v24;
  v25 = *a3;
  LOBYTE(v24) = *(a1 + 24);
  *a3 += 4;
  *(a2 + v25 + 3) = v24;
  v26 = *(a1 + 11);
  v27 = *(a1 + 12);
  if (v26 != v27)
  {
    v28 = *a3;
    do
    {
      v29 = *v26++;
      *(a2 + v28) = bswap32(v29) >> 16;
      v28 = *a3 + 2;
      *a3 = v28;
    }

    while (v26 != v27);
  }

  v30 = *(a1 + 16);
  if (!v30)
  {
    goto LABEL_25;
  }

  v31 = (a1 + 56);
  if (*(a1 + 136) != 1)
  {
    if (v30 > 7)
    {
      if (v30 - 15 < 0xFFFFFFFFFFFFFFF2)
      {
        __break(1u);
        return result;
      }

      v33 = 0;
      v34 = 0x8000;
      do
      {
        v34 |= v31[v33] << (13 - v33);
        ++v33;
      }

      while (v30 != v33);
    }

    else
    {
      v32 = (*v31 << 12) | 0xC000;
      if (v30 == 1)
      {
        LOBYTE(v30) = 0;
        LODWORD(v31) = (v32 & 0xF000) >> 8;
        goto LABEL_24;
      }

      LOWORD(v31) = v32 | (*(a1 + 113) << 10);
      if (v30 == 2 || (LOWORD(v31) = v31 | (*(a1 + 114) << 8), v30 == 3))
      {
        LOBYTE(v30) = 0;
        goto LABEL_14;
      }

      LOWORD(v34) = *(a1 + 115) << 6;
      LOWORD(v31) = v31 | v34;
      if (v30 == 4)
      {
        LOBYTE(v31) = BYTE1(v31);
        goto LABEL_23;
      }

      LOWORD(v34) = v31 | (16 * *(a1 + 116));
      if (v30 != 5)
      {
        LOWORD(v34) = v34 | (4 * *(a1 + 117));
        LOBYTE(v31) = BYTE1(v34);
        if (v30 != 6)
        {
          LOBYTE(v30) = *(a1 + 118) | v34;
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    LOBYTE(v31) = BYTE1(v34);
LABEL_23:
    LOBYTE(v30) = v34;
    goto LABEL_24;
  }

  LOWORD(v31) = v30 | (*v31 << 13);
LABEL_14:
  LOBYTE(v31) = BYTE1(v31);
LABEL_24:
  v35 = (a2 + *a3);
  *v35 = v31;
  v35[1] = v30;
  *a3 += 2;
LABEL_25:
  if (*(a1 + 25) == 1)
  {
    v36 = *(a1 + 5);
    for (i = *(a1 + 6); v36 != i; v36 += 4)
    {
      while (1)
      {
        v39 = *(v36 + 2);
        if (v39 > 0xFF)
        {
          break;
        }

        v38 = (*a3)++;
        *(a2 + v38) = v39;
        v36 += 4;
        if (v36 == i)
        {
          goto LABEL_31;
        }
      }

      v40 = (a2 + *a3);
      *v40 = BYTE1(v39);
      v40[1] = v39;
      *a3 += 2;
    }
  }

LABEL_31:
  if (v13 != v14)
  {
    v41 = v16 - 1;
    if (v16 != 1)
    {
      do
      {
        v42 = (*a3)++;
        *(a2 + v42) = 0;
        --v41;
      }

      while (v41);
    }

    v43 = (*a3)++;
    *(a2 + v43) = v16;
  }

  return 1;
}

void webrtc::InFlightBytesTracker::RemoveInFlightPacketBytes(void *a1, uint64_t a2)
{
  if ((*(a2 + 8) - 0x7FFFFFFFFFFFFFFFLL) >= 2)
  {
    v4 = std::__tree<std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>,std::__map_value_compare<webrtc::NetworkRoute,std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>,webrtc::InFlightBytesTracker::NetworkRouteComparator,true>,std::allocator<std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>>>::find<webrtc::NetworkRoute>(a1, (a2 + 80));
    if (a1 + 1 != v4)
    {
      v5 = *(a2 + 16);
      v6 = *(v4 + 72);
      v7 = 0x7FFFFFFFFFFFFFFFLL;
      v8 = v6 == 0x7FFFFFFFFFFFFFFFLL || v5 == 0x8000000000000000;
      if (v8 || (v6 != 0x8000000000000000 ? (v9 = v5 == 0x7FFFFFFFFFFFFFFFLL) : (v9 = 1), v7 = 0x8000000000000000, v9))
      {
        *(v4 + 72) = v7;
      }

      else
      {
        v10 = v6 - v5;
        *(v4 + 72) = v10;
        if (!v10)
        {
          v11 = *(v4 + 8);
          if (v11)
          {
            do
            {
              v12 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            v13 = v4;
            do
            {
              v12 = v13[2];
              v8 = *v12 == v13;
              v13 = v12;
            }

            while (!v8);
          }

          v14 = v4;
          if (*a1 == v4)
          {
            *a1 = v12;
          }

          v15 = a1[1];
          --a1[2];
          v16 = v14;
          std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v15, v14);

          operator delete(v16);
        }
      }
    }
  }
}

void webrtc::TransportFeedbackAdapter::AddPacket(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + 152);
  if ((*(a2 + 160) & 1) == 0)
  {
    v7 = 0;
  }

  if (*(a1 + 34))
  {
    v8 = *(a1 + 32);
    v9 = v7 - v8;
    v10 = (v7 - v8);
    v11 = (v7 - v8);
    v12 = v7 >= v8;
    v13 = v7 - v8;
    v14 = v13 != 0 && v12;
    v15 = v10 >= 0;
    if (v13 == 0x8000)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    if (v16)
    {
      v17 = v11;
    }

    else
    {
      v17 = v9 | 0xFFFFFFFFFFFF0000;
    }

    v18 = v17 + *(a1 + 24);
  }

  else
  {
    v18 = v7;
  }

  *(a1 + 24) = v18;
  *(a1 + 32) = v7;
  *(a1 + 34) = 1;
  v19 = *(a2 + 12);
  v20 = *(a2 + 4);
  if (*(a1 + 176))
  {
    if (a5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      do
      {
        v22 = *(a1 + 160);
        if (*(v22 + 104) > *(a1 + 40))
        {
          webrtc::InFlightBytesTracker::RemoveInFlightPacketBytes((a1 + 48), v22 + 40);
          v22 = *(a1 + 160);
        }

        std::__tree<std::__value_type<webrtc::TransportFeedbackAdapter::SsrcAndRtpSequencenumber,long long>,std::__map_value_compare<webrtc::TransportFeedbackAdapter::SsrcAndRtpSequencenumber,std::__value_type<webrtc::TransportFeedbackAdapter::SsrcAndRtpSequencenumber,long long>,std::less<webrtc::TransportFeedbackAdapter::SsrcAndRtpSequencenumber>,true>,std::allocator<std::__value_type<webrtc::TransportFeedbackAdapter::SsrcAndRtpSequencenumber,long long>>>::__erase_unique<webrtc::TransportFeedbackAdapter::SsrcAndRtpSequencenumber>((a1 + 136), *(v22 + 156), *(v22 + 160));
        v23 = *(a1 + 160);
        v24 = v23[1];
        v25 = v23;
        if (v24)
        {
          do
          {
            v26 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v26 = v25[2];
            v39 = *v26 == v25;
            v25 = v26;
          }

          while (!v39);
        }

        *(a1 + 160) = v26;
        v21 = *(a1 + 168);
        --*(a1 + 176);
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v21, v23);
        operator delete(v23);
      }

      while (*(a1 + 176));
    }

    else
    {
      do
      {
        v28 = *(a1 + 160);
        v29 = *(v28 + 40);
        if (v29 != 0x8000000000000000)
        {
          if (a5 == 0x8000000000000000)
          {
            break;
          }

          if (v29 == 0x7FFFFFFFFFFFFFFFLL || a5 - v29 < 60000001)
          {
            break;
          }
        }

        if (*(v28 + 104) > *(a1 + 40))
        {
          webrtc::InFlightBytesTracker::RemoveInFlightPacketBytes((a1 + 48), v28 + 40);
          v28 = *(a1 + 160);
        }

        std::__tree<std::__value_type<webrtc::TransportFeedbackAdapter::SsrcAndRtpSequencenumber,long long>,std::__map_value_compare<webrtc::TransportFeedbackAdapter::SsrcAndRtpSequencenumber,std::__value_type<webrtc::TransportFeedbackAdapter::SsrcAndRtpSequencenumber,long long>,std::less<webrtc::TransportFeedbackAdapter::SsrcAndRtpSequencenumber>,true>,std::allocator<std::__value_type<webrtc::TransportFeedbackAdapter::SsrcAndRtpSequencenumber,long long>>>::__erase_unique<webrtc::TransportFeedbackAdapter::SsrcAndRtpSequencenumber>((a1 + 136), *(v28 + 156), *(v28 + 160));
        v31 = *(a1 + 160);
        v32 = v31[1];
        v33 = v31;
        if (v32)
        {
          do
          {
            v34 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v34 = v33[2];
            v39 = *v34 == v33;
            v33 = v34;
          }

          while (!v39);
        }

        *(a1 + 160) = v34;
        v27 = *(a1 + 168);
        --*(a1 + 176);
        std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v27, v31);
        operator delete(v31);
      }

      while (*(a1 + 176));
    }
  }

  v35 = *(a1 + 144);
  if (!v35)
  {
LABEL_60:
    operator new();
  }

  while (1)
  {
    v36 = v35;
    v37 = *(v35 + 8);
    if (v19 != v37)
    {
      break;
    }

    v38 = *(v36 + 18);
    if (v20 < v38)
    {
LABEL_44:
      v35 = *v36;
      if (!*v36)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v39 = v38 == v20;
      if (v38 >= v20)
      {
        v40 = 1;
      }

      else
      {
        v40 = -1;
      }

      if (v39)
      {
        v40 = 0;
      }

      if ((v40 & 0x80) == 0)
      {
        goto LABEL_61;
      }

LABEL_59:
      v35 = v36[1];
      if (!v35)
      {
        goto LABEL_60;
      }
    }
  }

  if (v19 < v37)
  {
    goto LABEL_44;
  }

  if (v37 >= v19)
  {
    v41 = 1;
  }

  else
  {
    v41 = -1;
  }

  if (v41 < 0)
  {
    goto LABEL_59;
  }

LABEL_61:
  v42 = *(a1 + 168);
  if (!v42)
  {
LABEL_67:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v43 = v42;
      v44 = v42[4];
      if (v18 >= v44)
      {
        break;
      }

      v42 = *v43;
      if (!*v43)
      {
        goto LABEL_67;
      }
    }

    if (v44 >= v18)
    {
      break;
    }

    v42 = v43[1];
    if (!v42)
    {
      goto LABEL_67;
    }
  }
}

uint64_t *webrtc::TransportFeedbackAdapter::ProcessSentPacket@<X0>(uint64_t *this@<X0>, const webrtc::SentPacketInfo *a2@<X1>, _BYTE *a3@<X8>)
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = 1000 * *(a2 + 1);
  if ((*(a2 + 16) & 1) == 0 && v3 == -1)
  {
    if (*(a2 + 17) == 1)
    {
      if (v4 < this[1])
      {
        v5 = a3;
        v6 = this;
        v7 = a2;
        v8 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
        a2 = v7;
        a3 = v5;
        v15 = v8;
        this = v6;
        if ((v15 & 1) == 0)
        {
          webrtc::webrtc_logging_impl::Log("\r\t", v7, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/rtp/transport_feedback_adapter.cc");
          a2 = v7;
          this = v6;
          a3 = v5;
        }
      }

      v16 = *(a2 + 4);
      v17 = *this;
      v18 = 0x8000000000000000;
      if (v16 != 0x8000000000000000 && v17 != 0x8000000000000000)
      {
        v18 = v17 + v16;
      }

      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = 0x7FFFFFFFFFFFFFFFLL;
      }

      *this = v20;
      v21 = this[2];
      if (v21 <= v4)
      {
        v21 = v4;
      }

      this[2] = v21;
    }

LABEL_62:
    v55 = 0;
    *a3 = 0;
    goto LABEL_63;
  }

  if (*(this + 34))
  {
    v22 = *(this + 16);
    v23 = v3 - v22;
    v24 = (v3 - v22);
    v25 = (v3 - v22);
    v26 = *a2 - v22;
    v27 = v22 < v3;
    v28 = v24 >= 0;
    if (v26 != 0x8000)
    {
      v27 = v28;
    }

    if (v27)
    {
      v29 = v25;
    }

    else
    {
      v29 = v23 | 0xFFFFFFFFFFFF0000;
    }

    v30 = v29 + this[3];
  }

  else
  {
    v30 = *a2;
  }

  v31 = this[21];
  this[3] = v30;
  *(this + 16) = v3;
  *(this + 34) = 1;
  if (!v31)
  {
    goto LABEL_62;
  }

  v32 = this + 21;
  do
  {
    if (v31[4] >= v30)
    {
      v32 = v31;
    }

    v31 = v31[v31[4] < v30];
  }

  while (v31);
  if (v32 == this + 21 || v30 < v32[4])
  {
    goto LABEL_62;
  }

  v33 = v32[6] + 0x7FFFFFFFFFFFFFFFLL;
  v32[6] = v4;
  v34 = *this;
  v35 = this[1];
  if (v35 <= v4)
  {
    v35 = v4;
  }

  this[1] = v35;
  if (v34)
  {
    if (v4 < this[2])
    {
      v36 = a3;
      v37 = this;
      v39 = webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>();
      this = v37;
      if ((v39 & 1) == 0)
      {
        v40 = *(v37 + 16);
        v41 = v40 - v4;
        if (v40 == 0x8000000000000000)
        {
          v41 = 0x8000000000000000;
        }

        if (v40 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v42 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v41;
        }

        webrtc::ToString(v42, v38, __p);
        webrtc::webrtc_logging_impl::Log("\r\t\n\t", v43, v44, v45, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/rtp/transport_feedback_adapter.cc");
        if (v87 < 0)
        {
          operator delete(__p[0]);
        }

        this = v37;
      }

      v34 = *this;
      a3 = v36;
    }

    v50 = v32[8];
    v51 = 0x8000000000000000;
    if (v34 != 0x8000000000000000 && v50 != 0x8000000000000000)
    {
      v51 = v50 + v34;
    }

    if (v50 == 0x7FFFFFFFFFFFFFFFLL || v34 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v54 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v54 = v51;
    }

    v32[8] = v54;
    *this = 0;
  }

  if (v33 < 0xFFFFFFFFFFFFFFFELL)
  {
    goto LABEL_62;
  }

  v85 = a3;
  if (v32[13] > this[5])
  {
    v56 = this;
    v57 = std::__tree<std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>,std::__map_value_compare<webrtc::NetworkRoute,std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>,webrtc::InFlightBytesTracker::NetworkRouteComparator,true>,std::allocator<std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>>>::find<webrtc::NetworkRoute>((this + 6), v32 + 120);
    this = v56;
    v58 = (v56 + 56);
    if (v56 + 56 != v57)
    {
      v59 = v32[7];
      v60 = *(v57 + 72);
      v61 = 0x8000000000000000;
      if (v59 != 0x8000000000000000 && v60 != 0x8000000000000000)
      {
        v61 = v60 + v59;
      }

      if (v60 == 0x7FFFFFFFFFFFFFFFLL || v59 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v64 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v64 = v61;
      }

      *(v57 + 72) = v64;
      goto LABEL_110;
    }

    v65 = *(v32 + 120);
    v66 = *(v32 + 64);
    v67 = *(v32 + 65);
    v68 = *(v32 + 132);
    v69 = *(v32 + 70);
    v70 = *(v32 + 71);
    v71 = *(v32 + 144);
    v72 = *(v32 + 145);
    *(__p + 7) = *(v32 + 38);
    __p[0] = v72;
    v73 = *v58;
    if (!*v58)
    {
LABEL_109:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v74 = v73;
        v75 = *(v73 + 21);
        if (v67 == v75)
        {
          break;
        }

        if (v67 < v75)
        {
          goto LABEL_80;
        }

        if (v75 >= v67)
        {
          goto LABEL_110;
        }

LABEL_108:
        v73 = v74[1];
        if (!v73)
        {
          goto LABEL_109;
        }
      }

      v76 = *(v74 + 27);
      if (v70 != v76)
      {
        if (v70 < v76)
        {
          goto LABEL_80;
        }

        if (v76 >= v70)
        {
          break;
        }

        goto LABEL_108;
      }

      v77 = *(v74 + 20);
      if (v66 != v77)
      {
        if (v66 < v77)
        {
          goto LABEL_80;
        }

        if (v77 >= v66)
        {
          break;
        }

        goto LABEL_108;
      }

      v78 = *(v74 + 26);
      if (v69 != v78)
      {
        if (v69 < v78)
        {
          goto LABEL_80;
        }

        if (v78 >= v69)
        {
          break;
        }

        goto LABEL_108;
      }

      v79 = *(v74 + 44);
      if ((v68 & 1) == v79)
      {
        v79 = *(v74 + 56);
        if ((v71 & 1) == v79)
        {
          v80 = *(v74 + 32);
          if (v65 >= v80)
          {
            if (v80 >= v65)
            {
              break;
            }

            goto LABEL_108;
          }
        }

        else if (((v71 ^ 1) & v79 & 1) == 0)
        {
          if ((v71 & 1) == 0)
          {
            break;
          }

LABEL_104:
          if (v79)
          {
            break;
          }

          goto LABEL_108;
        }
      }

      else if (((v68 ^ 1) & v79 & 1) == 0)
      {
        if ((v68 & 1) == 0)
        {
          break;
        }

        goto LABEL_104;
      }

LABEL_80:
      v73 = *v74;
      if (!*v74)
      {
        goto LABEL_109;
      }
    }
  }

LABEL_110:
  v81 = this;
  this = std::__tree<std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>,std::__map_value_compare<webrtc::NetworkRoute,std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>,webrtc::InFlightBytesTracker::NetworkRouteComparator,true>,std::allocator<std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>>>::find<webrtc::NetworkRoute>((this + 6), this + 72);
  if ((v81 + 56) == this)
  {
    v82 = 0;
  }

  else
  {
    v82 = this[9];
  }

  a3 = v85;
  v32[14] = v82;
  v83 = *(v32 + 6);
  *(v85 + 2) = *(v32 + 5);
  *(v85 + 3) = v83;
  v84 = *(v32 + 4);
  *v85 = *(v32 + 3);
  *(v85 + 1) = v84;
  *(v85 + 8) = v32[14];
  v55 = 1;
LABEL_63:
  a3[72] = v55;
  return this;
}

void webrtc::TransportFeedbackAdapter::ProcessTransportFeedback(webrtc::TransportFeedbackAdapter *this@<X0>, const webrtc::rtcp::TransportFeedback *a2@<X1>, Timestamp a3@<0:X2>, uint64_t a4@<X8>)
{
  if (!*(a2 + 9))
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/rtp/transport_feedback_adapter.cc");
    }

    *a4 = 0;
    *(a4 + 72) = 0;
    return;
  }

  v8 = *(this + 15);
  if ((v8 - 0x7FFFFFFFFFFFFFFFLL) > 1)
  {
    v16 = 64000 * *(a2 + 5) - v8;
    v17 = v16 + 0xFA00000000;
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    if (v16 == 0x7FFFFF05FFFFFFFFLL)
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v16;
    }

    if (v19 >= 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = -v19;
    }

    v21 = 0xFFFFFF0600000000 - v16;
    if (v17 >= 0)
    {
      v21 = v16 + 0xFA00000000;
    }

    v22 = v16 + 0x1F400000000;
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v22 >= 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = -v22;
    }

    if (v23 >= v21)
    {
      v22 = v17;
    }

    if (v20 < v21)
    {
      v22 = v19;
    }

    v24 = 1000 * (v22 / 1000);
    v25 = *(this + 14);
    v26 = 0x8000000000000000;
    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = 0x8000000000000000;
    }

    else
    {
      v27 = -v25;
    }

    if (v25 == 0x8000000000000000)
    {
      v27 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v24 >= v27)
    {
      if (v24 != 0x8000000000000000 && v25 != 0x8000000000000000)
      {
        v26 = v24 + v25;
      }

      if (v24 != 0x7FFFFFFFFFFFFFFFLL && v25 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = v26;
      }

      *(this + 14) = v18;
      goto LABEL_43;
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v28, v29, v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/rtp/transport_feedback_adapter.cc");
    }
  }

  *(this + 14) = a3;
LABEL_43:
  *(this + 15) = 64000 * *(a2 + 5) + 0xFA00000000;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v37 = *(a2 + 9);
  if (*(a2 + 9))
  {
    operator new();
  }

  v62 = 0;
  v63 = 0;
  v61[0] = this;
  v61[1] = &v63;
  v61[2] = &v64;
  v61[3] = &v62;
  if (v37)
  {
    v38 = 0;
    v39 = *(a2 + 5);
    v40 = *(a2 + 8);
    v41 = v37 + v40;
    do
    {
      while (v39 == *(a2 + 6) || *v39 != v40)
      {
        webrtc::FunctionView<void ()(unsigned short,webrtc::TimeDelta)>::CallVoidPtr<webrtc::TransportFeedbackAdapter::ProcessTransportFeedback(webrtc::rtcp::TransportFeedback const&,webrtc::Timestamp)::$_0>(v61, v40++, 0x7FFFFFFFFFFFFFFFLL);
        if (v40 == v41)
        {
          goto LABEL_55;
        }
      }

      v42 = v38 + 250 * v39[1];
      if (v38 == 0x8000000000000000)
      {
        v42 = 0x8000000000000000;
      }

      if (v38 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v38 = v42;
      }

      webrtc::FunctionView<void ()(unsigned short,webrtc::TimeDelta)>::CallVoidPtr<webrtc::TransportFeedbackAdapter::ProcessTransportFeedback(webrtc::rtcp::TransportFeedback const&,webrtc::Timestamp)::$_0>(v61, v40, v38);
      v39 += 2;
      ++v40;
    }

    while (v40 != v41);
LABEL_55:
    if (v63 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v43, v44, v45, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/rtp/transport_feedback_adapter.cc");
    }
  }

  if (v62 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)5,unsigned long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v50, v51, v52, v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/rtp/transport_feedback_adapter.cc");
  }

  v57 = v64;
  v58 = v65;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  if (v57 != v58)
  {
    v59 = std::__tree<std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>,std::__map_value_compare<webrtc::NetworkRoute,std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>,webrtc::InFlightBytesTracker::NetworkRouteComparator,true>,std::allocator<std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>>>::find<webrtc::NetworkRoute>(this + 48, this + 72);
    if ((this + 56) == v59)
    {
      v60 = 0;
    }

    else
    {
      v60 = v59[9];
    }

    *a4 = a3;
    *(a4 + 8) = v60;
    *(a4 + 16) = 0;
    if (0xAAAAAAAAAAAAAAABLL * ((v58 - v57) >> 5) < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *a4 = 0;
  *(a4 + 72) = 0;
  if (v57)
  {
    operator delete(v57);
  }

  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }
}

void webrtc::TransportFeedbackAdapter::ProcessCongestionControlFeedback(Timestamp *this@<X0>, const webrtc::rtcp::CongestionControlFeedback *a2@<X1>, Timestamp a3@<0:X2>, _BYTE *a4@<X8>, __n128 PacketFeedback@<Q0>)
{
  v103 = *MEMORY[0x277D85DE8];
  if (*(a2 + 3) != *(a2 + 2))
  {
    var0 = this[14].var0;
    if ((var0 - 0x7FFFFFFFFFFFFFFFLL) <= 1)
    {
      this[14].var0 = a3.var0;
      var0 = a3.var0;
    }

    if ((this[16].var0 & 0x100000000) != 0)
    {
      v9 = *(a2 + 10);
      v10 = (v9 - LODWORD(this[16].var0));
      v11 = v10 > 0x80000000;
      if (v10 > 0x80000000)
      {
        v10 |= 0x3FFFFFF00000000uLL;
      }

      v12 = 1000000 * v10;
      if (v11)
      {
        v33 = 0;
        v13 = -v12;
        if ((v13 & 0xFFC0) <= 0x8000)
        {
          v14 = 0;
        }

        else
        {
          v14 = -1;
        }

        v15 = (v14 - (v13 >> 16));
        v99 = v15;
        LODWORD(this[16].var0) = v9;
        BYTE4(this[16].var0) = 1;
        if (v15 < 0)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            *&v100 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/rtp/transport_feedback_adapter.cc";
            *(&v100 + 1) = 2226;
            v101 = &v97;
            v98[0] = "Unexpected feedback ntp time delta ";
            v98[1] = &v100;
            webrtc::webrtc_logging_impl::MakeVal<webrtc::TimeDelta,(void *)0>(&v99, v17, &v102);
            if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v82, v102.__r_.__value_.__l.__data_, v102.__r_.__value_.__l.__size_);
              size = v98;
              v83.__r_.__value_.__l.__size_ = v98;
              if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v102.__r_.__value_.__l.__data_);
                size = v83.__r_.__value_.__l.__size_;
              }
            }

            else
            {
              v82 = *&v102.__r_.__value_.__l.__data_;
              size = v98;
              v83.__r_.__value_.__r.__words[0] = v102.__r_.__value_.__r.__words[2];
              v83.__r_.__value_.__l.__size_ = v98;
            }

            webrtc::webrtc_logging_impl::Log("\r\t\n\t", v18, v19, v20, v21, v22, v23, v24, *size[1]);
            if (v83.__r_.__value_.__s.__data_[7] < 0)
            {
              operator delete(v82);
            }
          }

          this[14].var0 = a3.var0;
          v36 = *(a2 + 2);
          v35 = *(a2 + 3);
          v37 = v35 - v36;
          if (v35 == v36)
          {
            v38 = 0;
          }

          else
          {
            v38 = *(a2 + 2);
          }

          if (v35 == v36)
          {
            goto LABEL_98;
          }

          goto LABEL_29;
        }

LABEL_21:
        v34 = v33 + var0;
        if (var0 == 0x8000000000000000)
        {
          v34 = 0x8000000000000000;
        }

        if (var0 != 0x7FFFFFFFFFFFFFFFLL)
        {
          var0 = v34;
        }

        this[14].var0 = var0;
        v36 = *(a2 + 2);
        v35 = *(a2 + 3);
        v37 = v35 - v36;
        if (v35 == v36)
        {
          v38 = 0;
        }

        else
        {
          v38 = *(a2 + 2);
        }

        if (v35 == v36)
        {
          goto LABEL_98;
        }

LABEL_29:
        v39 = v38 + v37;
        v40 = this + 18;
        if (this[18].var0)
        {
          v81 = 0;
          v41 = 0;
          do
          {
            v42 = v40->var0;
            if (!v40->var0)
            {
              goto LABEL_31;
            }

            v43 = *v36;
            v44 = *(v36 + 4);
            v45 = this + 18;
            do
            {
              v48 = *(v42 + 8);
              v49 = v48 == v43;
              if (v48 >= v43)
              {
                v50 = 1;
              }

              else
              {
                v50 = -1;
              }

              if (v49)
              {
                v51 = *(v42 + 18);
                v52 = v51 == v44;
                v50 = v51 >= v44 ? 1 : -1;
                if (v52)
                {
                  v50 = 0;
                }
              }

              v46 = v50 & 0x80;
              v49 = v46 == 0;
              v47 = v46 >> 4;
              if (v49)
              {
                v45 = v42;
              }

              v42 = *&v42[v47];
            }

            while (v42);
            if (v45 == v40)
            {
              goto LABEL_31;
            }

            v53 = v45[4].var0;
            v54 = v43 == v53;
            if (v43 >= v53)
            {
              v55 = 1;
            }

            else
            {
              v55 = -1;
            }

            if (v54)
            {
              v56 = WORD2(v45[4].var0);
              v57 = v44 == v56;
              if (v44 >= v56)
              {
                v58 = 1;
              }

              else
              {
                v58 = -1;
              }

              if (v57)
              {
                v55 = 0;
              }

              else
              {
                v55 = v58;
              }
            }

            if (v55 < 0 || (PacketFeedback = webrtc::TransportFeedbackAdapter::RetrievePacketFeedback(&v82, this, v45[5].var0, (*(v36 + 8) + 0x7FFFFFFFFFFFFFFFLL) < 0xFFFFFFFFFFFFFFFELL), (v96 & 1) == 0))
            {
LABEL_31:
              ++v41;
            }

            else
            {
              if (v85 == LOBYTE(this[9].var0) && v86 == HIDWORD(this[9].var0) && v87 == LOWORD(this[10].var0) && v88 == WORD1(this[10].var0) && v89 == BYTE4(this[10].var0) && v90 == LODWORD(this[11].var0) && v91 == WORD2(this[11].var0) && v92 == HIWORD(this[11].var0) && v93 == LOBYTE(this[12].var0) && v95 == LODWORD(this[13].var0) && v94 == HIDWORD(this[12].var0))
              {
                v102 = v83;
                *&v100 = *v84;
                *(&v100 + 7) = *&v84[7];
                operator new();
              }

              ++v81;
            }

            v36 += 24;
          }

          while (v36 != v39);
          v59 = v81;
          if (v41 <= 0 || (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) != 0)
          {
            goto LABEL_79;
          }

          goto LABEL_78;
        }

        v74 = v38 + v35 - 2 * v36 - 24;
        if (v74 >= 0xA8)
        {
          v76 = v74 / 0x18 + 1;
          v36 += 24 * (v76 & 0x1FFFFFFFFFFFFFF8);
          v77 = 0uLL;
          v78.i64[0] = 0x100000001;
          v78.i64[1] = 0x100000001;
          v79 = v76 & 0x1FFFFFFFFFFFFFF8;
          v80 = 0uLL;
          do
          {
            v77 = vaddq_s32(v77, v78);
            v80 = vaddq_s32(v80, v78);
            v79 -= 8;
          }

          while (v79);
          v75 = vaddvq_s32(vpaddq_s32(v77, v80));
          if (v76 == (v76 & 0x1FFFFFFFFFFFFFF8))
          {
LABEL_88:
            v59 = 0;
            if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
            {
LABEL_79:
              if (v59 >= 1 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
              {
                webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v67, v68, v69, v70, v71, v72, v73, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/rtp/transport_feedback_adapter.cc");
              }

LABEL_98:
              std::__introsort<std::_ClassicAlgPolicy,webrtc::TransportFeedbackAdapter::ProcessCongestionControlFeedback(webrtc::rtcp::CongestionControlFeedback const&,webrtc::Timestamp)::$_0 &,webrtc::PacketResult *,false>(0, 0, 0, 1, PacketFeedback);
              *a4 = 0;
              a4[72] = 0;
              return;
            }

LABEL_78:
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v60, v61, v62, v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/rtp/transport_feedback_adapter.cc");
            goto LABEL_79;
          }
        }

        else
        {
          v75 = 0;
        }

        do
        {
          ++v75;
          v36 += 24;
        }

        while (v36 != v39);
        goto LABEL_88;
      }

      v33 = (((v12 >> 15) & 1) + (v12 >> 16));
      v99 = v33;
    }

    else
    {
      v33 = 0;
      v99 = 0;
      v9 = *(a2 + 10);
    }

    LODWORD(this[16].var0) = v9;
    BYTE4(this[16].var0) = 1;
    goto LABEL_21;
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v26, v27, v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/rtp/transport_feedback_adapter.cc");
  }

  *a4 = 0;
  a4[72] = 0;
}

__n128 webrtc::TransportFeedbackAdapter::RetrievePacketFeedback(webrtc::TransportFeedbackAdapter *this, uint64_t a2, uint64_t a3, int a4)
{
  v9 = (a2 + 168);
  v8 = *(a2 + 168);
  v10 = *(a2 + 40);
  if (v10 < a3)
  {
    v11 = (a2 + 168);
    if (v8)
    {
      v11 = (a2 + 168);
      v12 = *(a2 + 168);
      do
      {
        v13 = v12[4];
        v14 = v10 < v13;
        v15 = v10 >= v13;
        if (v14)
        {
          v11 = v12;
        }

        v12 = v12[v15];
      }

      while (v12);
    }

    while (1)
    {
      v16 = v9;
      if (v8)
      {
        v16 = v9;
        v17 = v8;
        do
        {
          if (v17[4] > a3)
          {
            v16 = v17;
          }

          v17 = v17[v17[4] <= a3];
        }

        while (v17);
      }

      if (v11 == v16)
      {
        break;
      }

      webrtc::InFlightBytesTracker::RemoveInFlightPacketBytes((a2 + 48), (v11 + 5));
      v19 = v11[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v11[2];
          v21 = *v20 == v11;
          v11 = v20;
        }

        while (!v21);
      }

      v8 = *v9;
      v11 = v20;
    }

    *(a2 + 40) = a3;
  }

  if (!v8)
  {
    goto LABEL_29;
  }

  v22 = v9;
  do
  {
    if (v8[4] >= a3)
    {
      v22 = v8;
    }

    v8 = v8[v8[4] < a3];
  }

  while (v8);
  if (v22 == v9 || v22[4] > a3)
  {
LABEL_29:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)3,long long>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/congestion_controller/rtp/transport_feedback_adapter.cc");
    }

    goto LABEL_31;
  }

  if ((v22[6] - 0x7FFFFFFFFFFFFFFFLL) <= 1)
  {
LABEL_31:
    *this = 0;
    *(this + 128) = 0;
    return result;
  }

  v42 = *(v22 + 13);
  v43 = *(v22 + 15);
  v44 = *(v22 + 17);
  v30 = *(v22 + 39);
  v45 = *(v22 + 38);
  v38 = *(v22 + 5);
  v39 = *(v22 + 7);
  v40 = *(v22 + 9);
  v41 = *(v22 + 11);
  v31 = *(v22 + 80);
  v37 = *(v22 + 83);
  v36 = *(v22 + 162);
  if (a4)
  {
    std::__tree<std::__value_type<webrtc::TransportFeedbackAdapter::SsrcAndRtpSequencenumber,long long>,std::__map_value_compare<webrtc::TransportFeedbackAdapter::SsrcAndRtpSequencenumber,std::__value_type<webrtc::TransportFeedbackAdapter::SsrcAndRtpSequencenumber,long long>,std::less<webrtc::TransportFeedbackAdapter::SsrcAndRtpSequencenumber>,true>,std::allocator<std::__value_type<webrtc::TransportFeedbackAdapter::SsrcAndRtpSequencenumber,long long>>>::__erase_unique<webrtc::TransportFeedbackAdapter::SsrcAndRtpSequencenumber>((a2 + 136), v30, v31);
    v32 = v22[1];
    if (v32)
    {
      do
      {
        v33 = v32;
        v32 = *v32;
      }

      while (v32);
    }

    else
    {
      v34 = v22;
      do
      {
        v33 = v34[2];
        v21 = *v33 == v34;
        v34 = v33;
      }

      while (!v21);
    }

    if (*(a2 + 160) == v22)
    {
      *(a2 + 160) = v33;
    }

    v35 = *(a2 + 168);
    --*(a2 + 176);
    std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v35, v22);
    operator delete(v22);
  }

  *(this + 4) = v42;
  *(this + 5) = v43;
  *(this + 6) = v44;
  *this = v38;
  *(this + 1) = v39;
  result = v40;
  *(this + 2) = v40;
  *(this + 3) = v41;
  *(this + 28) = v45;
  *(this + 29) = v30;
  *(this + 60) = v31;
  *(this + 122) = v36;
  *(this + 63) = v37;
  *(this + 128) = 1;
  return result;
}

uint64_t std::__tree<std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>,std::__map_value_compare<webrtc::NetworkRoute,std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>,webrtc::InFlightBytesTracker::NetworkRouteComparator,true>,std::allocator<std::__value_type<webrtc::NetworkRoute,webrtc::DataSize>>>::find<webrtc::NetworkRoute>(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 8);
  result = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return result;
  }

  v5 = *(a2 + 5);
  v6 = *(a2 + 11);
  v7 = *(a2 + 4);
  v8 = *(a2 + 10);
  v9 = a2[12];
  v10 = a2[24];
  v11 = result;
  v12 = *a2;
  do
  {
    while (1)
    {
      while (1)
      {
        v17 = *(v3 + 42);
        v13 = v17 >= v5;
        if (v17 != v5)
        {
          goto LABEL_4;
        }

        v18 = *(v3 + 54);
        v13 = v18 >= v6;
        if (v18 != v6)
        {
          goto LABEL_4;
        }

        v19 = *(v3 + 40);
        v13 = v19 >= v7;
        if (v19 != v7)
        {
          goto LABEL_4;
        }

        v20 = *(v3 + 52);
        v13 = v20 >= v8;
        if (v20 != v8)
        {
          goto LABEL_4;
        }

        v21 = *(v3 + 44);
        if ((v9 & 1) == v21)
        {
          break;
        }

        v22 = v9 & (v21 ^ 1);
        v23 = v22 == 0;
        if (v22)
        {
          v24 = 8;
        }

        else
        {
          v24 = 0;
        }

        if (v23)
        {
          v11 = v3;
        }

        v3 = *(v3 + v24);
        if (!v3)
        {
          goto LABEL_35;
        }
      }

      v25 = *(v3 + 56);
      if ((v10 & 1) == v25)
      {
        break;
      }

      v26 = v10 & (v25 ^ 1);
      v27 = v26 == 0;
      if (v26)
      {
        v28 = 8;
      }

      else
      {
        v28 = 0;
      }

      if (v27)
      {
        v11 = v3;
      }

      v3 = *(v3 + v28);
      if (!v3)
      {
        goto LABEL_35;
      }
    }

    v13 = *(v3 + 32) >= v12;
LABEL_4:
    v14 = !v13;
    v15 = v14 == 0;
    if (v14)
    {
      v16 = 8;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v11 = v3;
    }

    v3 = *(v3 + v16);
  }

  while (v3);
LABEL_35:
  if (v11 != result)
  {
    v29 = *(v11 + 42);
    v30 = v5 >= v29;
    if (v5 == v29 && (v31 = *(v11 + 54), v30 = v6 >= v31, v6 == v31) && (v32 = *(v11 + 40), v30 = v7 >= v32, v7 == v32) && (v33 = *(v11 + 52), v30 = v8 >= v33, v8 == v33))
    {
      v34 = *(v11 + 44);
      if ((v9 & 1) == v34)
      {
        v35 = *(v11 + 56);
        if ((v10 & 1) == v35)
        {
          if (v12 >= *(v11 + 32))
          {
            return v11;
          }
        }

        else if ((v10 & 1) != 0 || (v35 & 1) == 0)
        {
          return v11;
        }
      }

      else if ((v9 & 1) != 0 || (v34 & 1) == 0)
      {
        return v11;
      }
    }

    else if (v30)
    {
      return v11;
    }
  }

  return result;
}