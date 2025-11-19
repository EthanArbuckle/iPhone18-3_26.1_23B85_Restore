uint64_t sub_26232071C(uint64_t a1, float32x2_t a2)
{
  v4 = *(a1 + 24);
  v5 = (a1 + 32);
  if (v4 == (a1 + 32))
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      if (sub_2621DC76C(a2, v4[5], v4[6], 0.00001) <= 0.1)
      {
        result = 1;
        if (v6)
        {
          return result;
        }

        v6 = 1;
      }

      v8 = v4[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v4[2];
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
    }

    while (v9 != v5);
  }

  v11 = *(a1 + 48);
  v12 = (a1 + 56);
  if (v11 != v12)
  {
    do
    {
      if (sub_2621DC76C(a2, v11[5], v11[6], 0.00001) <= 0.1)
      {
        result = 1;
        if (v6)
        {
          return result;
        }

        v6 = 1;
      }

      v13 = v11[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v11[2];
          v10 = *v14 == v11;
          v11 = v14;
        }

        while (!v10);
      }

      v11 = v14;
    }

    while (v14 != v12);
  }

  return 0;
}

uint64_t sub_262320864(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_2621C67D4(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = i[2];
      if (v5 >= *&v6)
      {
        v8 = v5 % *&v6;
      }
    }

    else
    {
      v8 = (*&v6 - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        break;
      }

      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }
      }

      else
      {
        v11 &= *&v6 - 1;
      }

      if (v11 != v8)
      {
        goto LABEL_18;
      }

LABEL_17:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    if (v10[2] != v5)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

void sub_262320ADC(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a2;
      if (*&v2 <= a2)
      {
        v4 = a2 % *&v2;
      }
    }

    else
    {
      v4 = (*&v2 - 1) & a2;
    }

    v5 = *a1;
    v6 = *(*a1 + 8 * v4);
    if (v6)
    {
      v7 = *v6;
      if (v7)
      {
        v8 = *&v2 - 1;
        do
        {
          v9 = v7[1];
          if (v9 == a2)
          {
            if (v7[2] == a2)
            {
              v10 = v7[1];
              if (v3.u32[0] > 1uLL)
              {
                if (v10 >= *&v2)
                {
                  v10 %= *&v2;
                }
              }

              else
              {
                v10 &= v8;
              }

              v11 = *(v5 + 8 * v10);
              do
              {
                v12 = v11;
                v11 = *v11;
              }

              while (v11 != v7);
              if (v12 == a1 + 2)
              {
                goto LABEL_36;
              }

              v13 = v12[1];
              if (v3.u32[0] > 1uLL)
              {
                if (v13 >= *&v2)
                {
                  v13 %= *&v2;
                }
              }

              else
              {
                v13 &= v8;
              }

              if (v13 != v10)
              {
LABEL_36:
                if (!*v7)
                {
                  goto LABEL_37;
                }

                v14 = *(*v7 + 8);
                if (v3.u32[0] > 1uLL)
                {
                  if (v14 >= *&v2)
                  {
                    v14 %= *&v2;
                  }
                }

                else
                {
                  v14 &= v8;
                }

                if (v14 != v10)
                {
LABEL_37:
                  *(v5 + 8 * v10) = 0;
                }
              }

              v15 = *v7;
              if (*v7)
              {
                v16 = *(v15 + 8);
                if (v3.u32[0] > 1uLL)
                {
                  if (v16 >= *&v2)
                  {
                    v16 %= *&v2;
                  }
                }

                else
                {
                  v16 &= v8;
                }

                if (v16 != v10)
                {
                  *(*a1 + 8 * v16) = v12;
                  v15 = *v7;
                }
              }

              *v12 = v15;
              *v7 = 0;
              --a1[3];
              operator delete(v7);
              return;
            }
          }

          else
          {
            if (v3.u32[0] > 1uLL)
            {
              if (v9 >= *&v2)
              {
                v9 %= *&v2;
              }
            }

            else
            {
              v9 &= v8;
            }

            if (v9 != v4)
            {
              return;
            }
          }

          v7 = *v7;
        }

        while (v7);
      }
    }
  }
}

uint64_t sub_262320C88(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v164 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  v9 = *(a2 + 232);
  if (v7 == v8)
  {
    if (*(a2 + 232))
    {
      v150 = 0uLL;
      v151 = 0uLL;
      v149 = 0uLL;
      v10 = *(result + 104);
      v11 = *(result + 144);
      if (*(result + 136))
      {
        if (v10)
        {
          v12 = *(a2 + 240);
          do
          {
            v13 = *v12++;
            *v11++ = (v13 / *(a2 + 296)) * *(a2 + 352);
            --v10;
          }

          while (v10);
        }
      }

      else if (v10)
      {
        v82 = 0;
        v83 = *(result + 56);
        v84 = *(result + 64);
        v85 = *(a2 + 240);
        do
        {
          v86 = 0;
          v11[v84 * *(&v149 + 1) + v83 * v149] = (*(v85 + 4 * v82) / *(a2 + 296)) * *(a2 + 352);
          do
          {
            v87 = *(&v149 + v86 + 8) + 1;
            *(&v149 + v86 + 8) = v87;
            result = *(v3 + 16 + v86);
            if (v87 != result)
            {
              break;
            }

            *(&v149 + v86 + 8) = 0;
            v86 -= 8;
          }

          while (v86 != -16);
          ++v82;
        }

        while (v82 != v10);
      }
    }

    else
    {
      v150 = 0uLL;
      v151 = 0uLL;
      v149 = 0uLL;
      v42 = *(result + 104);
      v43 = *(result + 144);
      if (*(result + 136))
      {
        if (v42)
        {
          v44 = 0;
          v45 = *(a2 + 152);
          v46 = *(a2 + 160);
          v47 = *(a2 + 240);
          do
          {
            v48 = 0;
            *(v43 + 4 * v44) = (*(v47 + 4 * v46 * *(&v149 + 1) + 4 * v45 * v149) / *(a2 + 296)) * *(a2 + 352);
            do
            {
              v49 = *(&v149 + v48 + 8) + 1;
              *(&v149 + v48 + 8) = v49;
              result = *(v3 + 16 + v48);
              if (v49 != result)
              {
                break;
              }

              *(&v149 + v48 + 8) = 0;
              v48 -= 8;
            }

            while (v48 != -16);
            ++v44;
          }

          while (v44 != v42);
        }
      }

      else if (v42)
      {
        v88 = 0;
        v89 = *(result + 56);
        v90 = *(result + 64);
        v91 = *(a2 + 152);
        v92 = *(a2 + 160);
        v93 = *(a2 + 240);
        do
        {
          result = 0;
          *(v43 + 4 * v90 * *(&v149 + 1) + 4 * v89 * v149) = (*(v93 + 4 * v92 * *(&v149 + 1) + 4 * v91 * v149) / *(a2 + 296)) * *(a2 + 352);
          do
          {
            v94 = *(&v149 + result + 8) + 1;
            *(&v149 + result + 8) = v94;
            if (v94 != *(v3 + 16 + result))
            {
              break;
            }

            *(&v149 + result + 8) = 0;
            result -= 8;
          }

          while (result != -16);
          ++v88;
        }

        while (v88 != v42);
      }
    }
  }

  else
  {
    if (*(a2 + 232))
    {
      v162 = 0uLL;
      v163 = 0uLL;
      v160 = 0uLL;
      v161 = 0uLL;
      v158 = 0uLL;
      v159 = 0uLL;
      v156 = 0uLL;
      v157 = 0uLL;
      v154 = 0uLL;
      v155 = 0uLL;
      v152 = 0uLL;
      v153 = 0uLL;
      v150 = 0uLL;
      v151 = 0uLL;
      v149 = 0uLL;
      v141 = 0uLL;
      v142 = 0uLL;
      v140 = 0uLL;
      sub_2621D96E4(&v149, v5, a2, &v140);
      v14 = 0;
      v15 = &v140;
      v16 = 1;
      do
      {
        v17 = *v15;
        v18 = *(v5 + v14);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v16 = 0;
        v15 = &v140 + 1;
        v14 = 1;
      }

      while (v17 == v18);
      if (v17 != v18)
      {
        v19 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v20 = sub_2621D552C(v19, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Modules/StructurePostProcess/lcnn_spp/../../../Utilities/wTensor/core/tensor/tensor.hpp", 146);
        sub_2621D552C(v20, " ", 1);
        v21 = MEMORY[0x277D82670];
        v22 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v22, " ", 1);
        sub_2621D552C(v22, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v22 + *(*v22 - 24)));
        v23 = std::locale::use_facet(v146, MEMORY[0x277D82680]);
        (v23->__vftable[2].~facet_0)(v23, 10);
        std::locale::~locale(v146);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v24 = std::locale::use_facet(v146, MEMORY[0x277D82680]);
        (v24->__vftable[2].~facet_0)(v24, 10);
        std::locale::~locale(v146);
        std::ostream::put();
        std::ostream::flush();
      }

      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      *&v146[0].__locale_ = 0u;
      v143 = 0u;
      v144 = 0u;
      v25 = *(v3 + 104);
      v26 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v25)
        {
          v27 = 0;
          v29 = *(&v150 + 1);
          v28 = v151;
          v30 = (v151 - *(&v150 + 1)) >> 3;
          if (v30 <= 1)
          {
            v30 = 1;
          }

          v31 = *(a2 + 240);
          do
          {
            v143 = *&v146[0].__locale_;
            if (v28 != v29)
            {
              v32 = v29;
              v33 = v30;
              do
              {
                v34 = *v32++;
                *(&v143 + v34) = 0;
                --v33;
              }

              while (v33);
            }

            v35 = 0;
            v36 = 0;
            v37 = &v143;
            v38 = 1;
            do
            {
              v39 = v38;
              v36 += *(&v161 + v35) * *v37;
              v37 = (&v143 + 8);
              v35 = 1;
              v38 = 0;
            }

            while ((v39 & 1) != 0);
            *(v26 + 4 * v27) = (*(v31 + 4 * v36) / *(a2 + 296)) * *(a2 + 352);
            for (i = 1; i != -1; --i)
            {
              v41 = (v146[i].__locale_ + 1);
              v146[i].__locale_ = v41;
              if (v41 != *(&v140 + i * 8))
              {
                break;
              }

              v146[i].__locale_ = 0;
            }

            ++v27;
          }

          while (v27 != v25);
        }
      }

      else if (v25)
      {
        v95 = 0;
        v97 = *(&v150 + 1);
        v96 = v151;
        v98 = (v151 - *(&v150 + 1)) >> 3;
        if (v98 <= 1)
        {
          v98 = 1;
        }

        v99 = *(v3 + 56);
        v100 = *(v3 + 64);
        v101 = *(a2 + 240);
        do
        {
          locale = v146[0].__locale_;
          v103 = v146[1].__locale_;
          v143 = *&v146[0].__locale_;
          if (v96 != v97)
          {
            v104 = v97;
            v105 = v98;
            do
            {
              v106 = *v104++;
              *(&v143 + v106) = 0;
              --v105;
            }

            while (v105);
          }

          v107 = 0;
          v108 = 0;
          v109 = &v143;
          v110 = 1;
          do
          {
            v111 = v110;
            v108 += *(&v161 + v107) * *v109;
            v109 = (&v143 + 8);
            v107 = 1;
            v110 = 0;
          }

          while ((v111 & 1) != 0);
          *(v26 + 4 * v103 * v100 + 4 * locale * v99) = (*(v101 + 4 * v108) / *(a2 + 296)) * *(a2 + 352);
          for (j = 1; j != -1; --j)
          {
            v113 = (v146[j].__locale_ + 1);
            v146[j].__locale_ = v113;
            if (v113 != *(&v140 + j * 8))
            {
              break;
            }

            v146[j].__locale_ = 0;
          }

          ++v95;
        }

        while (v95 != v25);
      }
    }

    else
    {
      v162 = 0uLL;
      v163 = 0uLL;
      v160 = 0uLL;
      v161 = 0uLL;
      v158 = 0uLL;
      v159 = 0uLL;
      v156 = 0uLL;
      v157 = 0uLL;
      v154 = 0uLL;
      v155 = 0uLL;
      v152 = 0uLL;
      v153 = 0uLL;
      v150 = 0uLL;
      v151 = 0uLL;
      v149 = 0uLL;
      v141 = 0uLL;
      v142 = 0uLL;
      v140 = 0uLL;
      sub_2621D96E4(&v149, v5, a2, &v140);
      v50 = 0;
      v51 = &v140;
      v52 = 1;
      do
      {
        v53 = *v51;
        v54 = *(v5 + v50);
        if ((v52 & 1) == 0)
        {
          break;
        }

        v52 = 0;
        v51 = &v140 + 1;
        v50 = 1;
      }

      while (v53 == v54);
      if (v53 != v54)
      {
        v55 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v56 = sub_2621D552C(v55, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Modules/StructurePostProcess/lcnn_spp/../../../Utilities/wTensor/core/tensor/tensor.hpp", 146);
        sub_2621D552C(v56, " ", 1);
        v57 = MEMORY[0x277D82670];
        v58 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v58, " ", 1);
        sub_2621D552C(v58, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v58 + *(*v58 - 24)));
        v59 = std::locale::use_facet(v146, MEMORY[0x277D82680]);
        (v59->__vftable[2].~facet_0)(v59, 10);
        std::locale::~locale(v146);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v57 + *(*v57 - 24)));
        v60 = std::locale::use_facet(v146, MEMORY[0x277D82680]);
        (v60->__vftable[2].~facet_0)(v60, 10);
        std::locale::~locale(v146);
        std::ostream::put();
        std::ostream::flush();
      }

      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      *&v146[0].__locale_ = 0u;
      v143 = 0u;
      v144 = 0u;
      v61 = *(v3 + 104);
      v62 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v61)
        {
          v63 = 0;
          v65 = *(&v150 + 1);
          v64 = v151;
          v66 = (v151 - *(&v150 + 1)) >> 3;
          if (v66 <= 1)
          {
            v66 = 1;
          }

          v67 = *(a2 + 232);
          v68 = *(a2 + 152);
          v69 = *(a2 + 160);
          v70 = *(a2 + 240);
          do
          {
            v143 = *&v146[0].__locale_;
            if (v64 != v65)
            {
              v71 = v65;
              v72 = v66;
              do
              {
                v73 = *v71++;
                *(&v143 + v73) = 0;
                --v72;
              }

              while (v72);
            }

            v74 = 0;
            v75 = 0;
            v76 = &v143;
            v77 = 1;
            do
            {
              v78 = v77;
              v75 += *(&v161 + v74) * *v76;
              v76 = (&v143 + 8);
              v74 = 1;
              v77 = 0;
            }

            while ((v78 & 1) != 0);
            v79 = (v70 + 4 * v75);
            if (!v67)
            {
              v79 = (v70 + 4 * *(&v143 + 1) * v69 + 4 * v143 * v68);
            }

            *(v62 + 4 * v63) = (*v79 / *(a2 + 296)) * *(a2 + 352);
            for (k = 1; k != -1; --k)
            {
              v81 = (v146[k].__locale_ + 1);
              v146[k].__locale_ = v81;
              if (v81 != *(&v140 + k * 8))
              {
                break;
              }

              v146[k].__locale_ = 0;
            }

            ++v63;
          }

          while (v63 != v61);
        }
      }

      else if (v61)
      {
        v114 = 0;
        v116 = *(&v150 + 1);
        v115 = v151;
        v117 = (v151 - *(&v150 + 1)) >> 3;
        if (v117 <= 1)
        {
          v117 = 1;
        }

        v118 = *(v3 + 56);
        v119 = *(v3 + 64);
        v120 = *(a2 + 232);
        v121 = *(a2 + 152);
        v122 = *(a2 + 160);
        v123 = *(a2 + 240);
        do
        {
          v124 = v146[0].__locale_;
          v125 = v146[1].__locale_;
          v143 = *&v146[0].__locale_;
          if (v115 != v116)
          {
            v126 = v116;
            v127 = v117;
            do
            {
              v128 = *v126++;
              *(&v143 + v128) = 0;
              --v127;
            }

            while (v127);
          }

          v129 = 0;
          v130 = 0;
          v131 = &v143;
          v132 = 1;
          do
          {
            v133 = v132;
            v130 += *(&v161 + v129) * *v131;
            v131 = (&v143 + 8);
            v129 = 1;
            v132 = 0;
          }

          while ((v133 & 1) != 0);
          v134 = v124 * v118;
          v135 = v125 * v119;
          v136 = (v123 + 4 * v130);
          if (!v120)
          {
            v136 = (v123 + 4 * *(&v143 + 1) * v122 + 4 * v143 * v121);
          }

          *(v62 + 4 * v135 + 4 * v134) = (*v136 / *(a2 + 296)) * *(a2 + 352);
          for (m = 1; m != -1; --m)
          {
            v138 = (v146[m].__locale_ + 1);
            v146[m].__locale_ = v138;
            if (v138 != *(&v140 + m * 8))
            {
              break;
            }

            v146[m].__locale_ = 0;
          }

          ++v114;
        }

        while (v114 != v61);
      }
    }

    result = sub_2621C57C8(&v149);
  }

  v139 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_262321758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  std::locale::~locale(&a21);
  sub_2621C57C8(&a27);
  _Unwind_Resume(a1);
}

void sub_26232178C(void *a1)
{
  *a1 = &unk_2874EE9A8;
  v1 = a1[16];
  if (v1)
  {
    sub_2621D1B78(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_2623217F8(void *a1)
{
  *a1 = &unk_2874EE9A8;
  v2 = a1[16];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  return a1;
}

void sub_262321844(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 8);
  if (*(a1 + 8) == *a2 && *(a1 + 16) == *(a2 + 8) && *(a1 + 24) == *(a2 + 16))
  {
    if (*(a2 + 424) == 1 && *(a2 + 624) == 1)
    {
      v80 = 0u;
      v81 = 0u;
      v79 = 0u;
      v5 = *(a1 + 104);
      v6 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v5)
        {
          v7 = 0;
          v8 = a1 + 24;
          do
          {
            v9 = sub_262322374(a2, &v79);
            v10 = 0;
            *(v6 + 4 * v7) = v9;
            do
            {
              v11 = *(&v80 + v10) + 1;
              *(&v80 + v10) = v11;
              if (v11 != *(v8 + v10))
              {
                break;
              }

              *(&v80 + v10) = 0;
              v10 -= 8;
            }

            while (v10 != -24);
            ++v7;
          }

          while (v7 != v5);
        }
      }

      else if (v5)
      {
        v62 = 0;
        v63 = a1 + 56;
        v64 = a1 + 24;
        do
        {
          v65 = 0;
          v66 = 0;
          do
          {
            v66 += *(v63 + v65) * *(&v79 + v65);
            v65 += 8;
          }

          while (v65 != 24);
          v67 = sub_262322374(a2, &v79);
          v68 = 0;
          *(v6 + 4 * v66) = v67;
          do
          {
            v69 = *(&v80 + v68) + 1;
            *(&v80 + v68) = v69;
            if (v69 != *(v64 + v68))
            {
              break;
            }

            *(&v80 + v68) = 0;
            v68 -= 8;
          }

          while (v68 != -24);
          ++v62;
        }

        while (v62 != v5);
      }
    }

    else
    {
      v80 = 0u;
      v81 = 0u;
      v79 = 0u;
      v47 = *(a1 + 104);
      v48 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v47)
        {
          v49 = 0;
          v50 = a1 + 24;
          do
          {
            v51 = sub_26232219C(a2, &v79);
            v52 = 0;
            *(v48 + 4 * v49) = v51;
            do
            {
              v53 = *(&v80 + v52) + 1;
              *(&v80 + v52) = v53;
              if (v53 != *(v50 + v52))
              {
                break;
              }

              *(&v80 + v52) = 0;
              v52 -= 8;
            }

            while (v52 != -24);
            ++v49;
          }

          while (v49 != v47);
        }
      }

      else if (v47)
      {
        v54 = 0;
        v55 = a1 + 56;
        v56 = a1 + 24;
        do
        {
          v57 = 0;
          v58 = 0;
          do
          {
            v58 += *(v55 + v57) * *(&v79 + v57);
            v57 += 8;
          }

          while (v57 != 24);
          v59 = sub_26232219C(a2, &v79);
          v60 = 0;
          *(v48 + 4 * v58) = v59;
          do
          {
            v61 = *(&v80 + v60) + 1;
            *(&v80 + v60) = v61;
            if (v61 != *(v56 + v60))
            {
              break;
            }

            *(&v80 + v60) = 0;
            v60 -= 8;
          }

          while (v60 != -24);
          ++v54;
        }

        while (v54 != v47);
      }
    }
  }

  else
  {
    if (*(a2 + 424) == 1 && *(a2 + 624) == 1)
    {
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v79 = 0u;
      v72 = 0u;
      memset(v71, 0, sizeof(v71));
      sub_2622063F0(&v79, v4, a2, v71);
      if (*&v71[0] != *v4 || *(v71 + 8) != *(a1 + 16))
      {
        v12 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v13 = sub_2621D552C(v12, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Modules/StructurePostProcess/lcnn_spp/../../../Utilities/wTensor/core/tensor/tensor.hpp", 146);
        sub_2621D552C(v13, " ", 1);
        v14 = MEMORY[0x277D82670];
        v15 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v15, " ", 1);
        sub_2621D552C(v15, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v15 + *(*v15 - 24)));
        v16 = std::locale::use_facet(v76, MEMORY[0x277D82680]);
        (v16->__vftable[2].~facet_0)(v16, 10);
        std::locale::~locale(v76);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v14 + *(*v14 - 24)));
        v17 = std::locale::use_facet(v76, MEMORY[0x277D82680]);
        (v17->__vftable[2].~facet_0)(v17, 10);
        std::locale::~locale(v76);
        std::ostream::put();
        std::ostream::flush();
      }

      v78 = 0u;
      *&v76[0].__locale_ = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
      v18 = *(a1 + 104);
      v19 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v18)
        {
          for (i = 0; i != v18; ++i)
          {
            v70 = 0;
            sub_2622066E4(&v79, v76, &v70, &v73);
            *(v19 + 4 * i) = sub_262322374(a2, &v73);
            for (j = 2; j != -1; --j)
            {
              v22 = (v76[j].__locale_ + 1);
              v76[j].__locale_ = v22;
              if (v22 != *(v71 + j * 8))
              {
                break;
              }

              v76[j].__locale_ = 0;
            }
          }
        }
      }

      else if (v18)
      {
        v40 = 0;
        v41 = a1 + 56;
        do
        {
          v70 = 0;
          sub_2622066E4(&v79, v76, &v70, &v73);
          v42 = 0;
          v43 = 0;
          do
          {
            v43 += *(v41 + v42 * 8) * v76[v42].__locale_;
            ++v42;
          }

          while (v42 != 3);
          *(v19 + 4 * v43) = sub_262322374(a2, &v73);
          for (k = 2; k != -1; --k)
          {
            v45 = (v76[k].__locale_ + 1);
            v76[k].__locale_ = v45;
            if (v45 != *(v71 + k * 8))
            {
              break;
            }

            v76[k].__locale_ = 0;
          }

          ++v40;
        }

        while (v40 != v18);
      }
    }

    else
    {
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v79 = 0u;
      v72 = 0u;
      memset(v71, 0, sizeof(v71));
      sub_2622063F0(&v79, v4, a2, v71);
      if (*&v71[0] != *v4 || *(v71 + 8) != *(a1 + 16))
      {
        v23 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v24 = sub_2621D552C(v23, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Modules/StructurePostProcess/lcnn_spp/../../../Utilities/wTensor/core/tensor/tensor.hpp", 146);
        sub_2621D552C(v24, " ", 1);
        v25 = MEMORY[0x277D82670];
        v26 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v26, " ", 1);
        sub_2621D552C(v26, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v26 + *(*v26 - 24)));
        v27 = std::locale::use_facet(v76, MEMORY[0x277D82680]);
        (v27->__vftable[2].~facet_0)(v27, 10);
        std::locale::~locale(v76);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v25 + *(*v25 - 24)));
        v28 = std::locale::use_facet(v76, MEMORY[0x277D82680]);
        (v28->__vftable[2].~facet_0)(v28, 10);
        std::locale::~locale(v76);
        std::ostream::put();
        std::ostream::flush();
      }

      v78 = 0u;
      *&v76[0].__locale_ = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
      v29 = *(a1 + 104);
      v30 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v29)
        {
          for (m = 0; m != v29; ++m)
          {
            v70 = 0;
            sub_2622066E4(&v79, v76, &v70, &v73);
            *(v30 + 4 * m) = sub_26232219C(a2, &v73);
            for (n = 2; n != -1; --n)
            {
              v33 = (v76[n].__locale_ + 1);
              v76[n].__locale_ = v33;
              if (v33 != *(v71 + n * 8))
              {
                break;
              }

              v76[n].__locale_ = 0;
            }
          }
        }
      }

      else if (v29)
      {
        v34 = 0;
        v35 = a1 + 56;
        do
        {
          v70 = 0;
          sub_2622066E4(&v79, v76, &v70, &v73);
          v36 = 0;
          v37 = 0;
          do
          {
            v37 += *(v35 + v36 * 8) * v76[v36].__locale_;
            ++v36;
          }

          while (v36 != 3);
          *(v30 + 4 * v37) = sub_26232219C(a2, &v73);
          for (ii = 2; ii != -1; --ii)
          {
            v39 = (v76[ii].__locale_ + 1);
            v76[ii].__locale_ = v39;
            if (v39 != *(v71 + ii * 8))
            {
              break;
            }

            v76[ii].__locale_ = 0;
          }

          ++v34;
        }

        while (v34 != v29);
      }
    }

    sub_2621C57C8(&v79);
  }

  v46 = *MEMORY[0x277D85DE8];
}

void sub_262322168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::locale a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::locale::~locale(&a23);
  sub_2621C57C8(&a29);
  _Unwind_Resume(a1);
}

float sub_26232219C(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = 0;
  sub_262322294(a1 + 48, a2, &v11, v13, &v10, v12);
  if (*(a1 + 424))
  {
    v4 = v11;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    do
    {
      v4 += *(a1 + 344 + v5) * *&v13[v5];
      v5 += 8;
    }

    while (v5 != 24);
  }

  if (*(a1 + 624))
  {
    v6 = v10;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    do
    {
      v6 += *(a1 + 544 + v7) * *&v12[v7];
      v7 += 8;
    }

    while (v7 != 24);
  }

  v8 = *MEMORY[0x277D85DE8];
  LOBYTE(v3) = *(*(a1 + 632) + v6);
  return *(*(a1 + 432) + 4 * v4) * v3;
}

uint64_t sub_262322294(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v6 = 0;
  *a5 = 0;
  *a3 = 0;
  v7 = *(result + 24);
  v8 = *(result + 32);
  v9 = *result;
  v10 = *(result + 8);
  do
  {
    *(a6 + v6) = *(a2 + v6);
    v6 += 8;
  }

  while (v6 != 24);
  v11 = 0;
  v12 = v10 - v9;
  do
  {
    *(a4 + v11) = *(a2 + v11);
    v11 += 8;
  }

  while (v11 != 24);
  v13 = v8 - v7;
  if (v13)
  {
    v14 = v13 >> 3;
    if (v14 <= 1)
    {
      v14 = 1;
    }

    do
    {
      v15 = *v7++;
      *(a6 + 8 * v15) = 0;
      --v14;
    }

    while (v14);
  }

  if (v10 != v9)
  {
    v16 = v12 >> 3;
    if ((v12 >> 3) <= 1)
    {
      v16 = 1;
    }

    do
    {
      v17 = *v9;
      v9 += 8;
      *(a4 + 8 * v17) = 0;
      --v16;
    }

    while (v16);
  }

  v18 = 0;
  v19 = *a5;
  do
  {
    v19 += *(result + 192 + v18) * *(a6 + v18);
    *a5 = v19;
    v18 += 8;
  }

  while (v18 != 24);
  v20 = 0;
  v21 = *a3;
  do
  {
    v21 += *(result + 144 + v20) * *(a4 + v20);
    *a3 = v21;
    v20 += 8;
  }

  while (v20 != 24);
  return result;
}

float sub_262322374(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = 0;
  sub_262322294(a1 + 48, a2, &v7, v9, &v6, v8);
  v4 = *MEMORY[0x277D85DE8];
  LOBYTE(v3) = *(*(a1 + 632) + v6);
  return *(*(a1 + 432) + 4 * v7) * v3;
}

void sub_262322400(void *a1)
{
  *a1 = &unk_2874EE930;
  v1 = a1[16];
  if (v1)
  {
    sub_2621D1B78(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_26232246C(void *a1)
{
  *a1 = &unk_2874EE930;
  v2 = a1[16];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  return a1;
}

void sub_262322560(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_262322578(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v164 = *MEMORY[0x277D85DE8];
  v5 = (result + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  v9 = *(a2 + 184);
  if (v7 == v8)
  {
    if (*(a2 + 184))
    {
      v150 = 0uLL;
      v151 = 0uLL;
      v149 = 0uLL;
      v10 = *(result + 104);
      v11 = *(result + 144);
      if (*(result + 136))
      {
        if (v10)
        {
          v12 = *(a2 + 192);
          do
          {
            v13 = *v12++;
            *v11++ = *(a2 + 248) * v13;
            --v10;
          }

          while (v10);
        }
      }

      else if (v10)
      {
        v82 = 0;
        v83 = *(result + 56);
        v84 = *(result + 64);
        v85 = *(a2 + 192);
        do
        {
          v86 = 0;
          v11[v84 * *(&v149 + 1) + v83 * v149] = *(a2 + 248) * *(v85 + 4 * v82);
          do
          {
            v87 = *(&v149 + v86 + 8) + 1;
            *(&v149 + v86 + 8) = v87;
            result = *(v3 + 16 + v86);
            if (v87 != result)
            {
              break;
            }

            *(&v149 + v86 + 8) = 0;
            v86 -= 8;
          }

          while (v86 != -16);
          ++v82;
        }

        while (v82 != v10);
      }
    }

    else
    {
      v150 = 0uLL;
      v151 = 0uLL;
      v149 = 0uLL;
      v42 = *(result + 104);
      v43 = *(result + 144);
      if (*(result + 136))
      {
        if (v42)
        {
          v44 = 0;
          v45 = *(a2 + 104);
          v46 = *(a2 + 112);
          v47 = *(a2 + 192);
          do
          {
            v48 = 0;
            *(v43 + 4 * v44) = *(a2 + 248) * *(v47 + 4 * v46 * *(&v149 + 1) + 4 * v45 * v149);
            do
            {
              v49 = *(&v149 + v48 + 8) + 1;
              *(&v149 + v48 + 8) = v49;
              result = *(v3 + 16 + v48);
              if (v49 != result)
              {
                break;
              }

              *(&v149 + v48 + 8) = 0;
              v48 -= 8;
            }

            while (v48 != -16);
            ++v44;
          }

          while (v44 != v42);
        }
      }

      else if (v42)
      {
        v88 = 0;
        v89 = *(result + 56);
        v90 = *(result + 64);
        v91 = *(a2 + 104);
        v92 = *(a2 + 112);
        v93 = *(a2 + 192);
        do
        {
          result = 0;
          *(v43 + 4 * v90 * *(&v149 + 1) + 4 * v89 * v149) = *(a2 + 248) * *(v93 + 4 * v92 * *(&v149 + 1) + 4 * v91 * v149);
          do
          {
            v94 = *(&v149 + result + 8) + 1;
            *(&v149 + result + 8) = v94;
            if (v94 != *(v3 + 16 + result))
            {
              break;
            }

            *(&v149 + result + 8) = 0;
            result -= 8;
          }

          while (result != -16);
          ++v88;
        }

        while (v88 != v42);
      }
    }
  }

  else
  {
    if (*(a2 + 184))
    {
      v162 = 0uLL;
      v163 = 0uLL;
      v160 = 0uLL;
      v161 = 0uLL;
      v158 = 0uLL;
      v159 = 0uLL;
      v156 = 0uLL;
      v157 = 0uLL;
      v154 = 0uLL;
      v155 = 0uLL;
      v152 = 0uLL;
      v153 = 0uLL;
      v150 = 0uLL;
      v151 = 0uLL;
      v149 = 0uLL;
      v141 = 0uLL;
      v142 = 0uLL;
      v140 = 0uLL;
      sub_2621D96E4(&v149, v5, a2, &v140);
      v14 = 0;
      v15 = &v140;
      v16 = 1;
      do
      {
        v17 = *v15;
        v18 = *(v5 + v14);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v16 = 0;
        v15 = &v140 + 1;
        v14 = 1;
      }

      while (v17 == v18);
      if (v17 != v18)
      {
        v19 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v20 = sub_2621D552C(v19, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Modules/StructurePostProcess/lcnn_spp/../../../Utilities/wTensor/core/tensor/tensor.hpp", 146);
        sub_2621D552C(v20, " ", 1);
        v21 = MEMORY[0x277D82670];
        v22 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v22, " ", 1);
        sub_2621D552C(v22, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v22 + *(*v22 - 24)));
        v23 = std::locale::use_facet(v146, MEMORY[0x277D82680]);
        (v23->__vftable[2].~facet_0)(v23, 10);
        std::locale::~locale(v146);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v24 = std::locale::use_facet(v146, MEMORY[0x277D82680]);
        (v24->__vftable[2].~facet_0)(v24, 10);
        std::locale::~locale(v146);
        std::ostream::put();
        std::ostream::flush();
      }

      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      *&v146[0].__locale_ = 0u;
      v143 = 0u;
      v144 = 0u;
      v25 = *(v3 + 104);
      v26 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v25)
        {
          v27 = 0;
          v29 = *(&v150 + 1);
          v28 = v151;
          v30 = (v151 - *(&v150 + 1)) >> 3;
          if (v30 <= 1)
          {
            v30 = 1;
          }

          v31 = *(a2 + 192);
          do
          {
            v143 = *&v146[0].__locale_;
            if (v28 != v29)
            {
              v32 = v29;
              v33 = v30;
              do
              {
                v34 = *v32++;
                *(&v143 + v34) = 0;
                --v33;
              }

              while (v33);
            }

            v35 = 0;
            v36 = 0;
            v37 = &v143;
            v38 = 1;
            do
            {
              v39 = v38;
              v36 += *(&v161 + v35) * *v37;
              v37 = (&v143 + 8);
              v35 = 1;
              v38 = 0;
            }

            while ((v39 & 1) != 0);
            *(v26 + 4 * v27) = *(a2 + 248) * *(v31 + 4 * v36);
            for (i = 1; i != -1; --i)
            {
              v41 = (v146[i].__locale_ + 1);
              v146[i].__locale_ = v41;
              if (v41 != *(&v140 + i * 8))
              {
                break;
              }

              v146[i].__locale_ = 0;
            }

            ++v27;
          }

          while (v27 != v25);
        }
      }

      else if (v25)
      {
        v95 = 0;
        v97 = *(&v150 + 1);
        v96 = v151;
        v98 = (v151 - *(&v150 + 1)) >> 3;
        if (v98 <= 1)
        {
          v98 = 1;
        }

        v99 = *(v3 + 56);
        v100 = *(v3 + 64);
        v101 = *(a2 + 192);
        do
        {
          locale = v146[0].__locale_;
          v103 = v146[1].__locale_;
          v143 = *&v146[0].__locale_;
          if (v96 != v97)
          {
            v104 = v97;
            v105 = v98;
            do
            {
              v106 = *v104++;
              *(&v143 + v106) = 0;
              --v105;
            }

            while (v105);
          }

          v107 = 0;
          v108 = 0;
          v109 = &v143;
          v110 = 1;
          do
          {
            v111 = v110;
            v108 += *(&v161 + v107) * *v109;
            v109 = (&v143 + 8);
            v107 = 1;
            v110 = 0;
          }

          while ((v111 & 1) != 0);
          *(v26 + 4 * v103 * v100 + 4 * locale * v99) = *(a2 + 248) * *(v101 + 4 * v108);
          for (j = 1; j != -1; --j)
          {
            v113 = (v146[j].__locale_ + 1);
            v146[j].__locale_ = v113;
            if (v113 != *(&v140 + j * 8))
            {
              break;
            }

            v146[j].__locale_ = 0;
          }

          ++v95;
        }

        while (v95 != v25);
      }
    }

    else
    {
      v162 = 0uLL;
      v163 = 0uLL;
      v160 = 0uLL;
      v161 = 0uLL;
      v158 = 0uLL;
      v159 = 0uLL;
      v156 = 0uLL;
      v157 = 0uLL;
      v154 = 0uLL;
      v155 = 0uLL;
      v152 = 0uLL;
      v153 = 0uLL;
      v150 = 0uLL;
      v151 = 0uLL;
      v149 = 0uLL;
      v141 = 0uLL;
      v142 = 0uLL;
      v140 = 0uLL;
      sub_2621D96E4(&v149, v5, a2, &v140);
      v50 = 0;
      v51 = &v140;
      v52 = 1;
      do
      {
        v53 = *v51;
        v54 = *(v5 + v50);
        if ((v52 & 1) == 0)
        {
          break;
        }

        v52 = 0;
        v51 = &v140 + 1;
        v50 = 1;
      }

      while (v53 == v54);
      if (v53 != v54)
      {
        v55 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v56 = sub_2621D552C(v55, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Modules/StructurePostProcess/lcnn_spp/../../../Utilities/wTensor/core/tensor/tensor.hpp", 146);
        sub_2621D552C(v56, " ", 1);
        v57 = MEMORY[0x277D82670];
        v58 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v58, " ", 1);
        sub_2621D552C(v58, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v58 + *(*v58 - 24)));
        v59 = std::locale::use_facet(v146, MEMORY[0x277D82680]);
        (v59->__vftable[2].~facet_0)(v59, 10);
        std::locale::~locale(v146);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v57 + *(*v57 - 24)));
        v60 = std::locale::use_facet(v146, MEMORY[0x277D82680]);
        (v60->__vftable[2].~facet_0)(v60, 10);
        std::locale::~locale(v146);
        std::ostream::put();
        std::ostream::flush();
      }

      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      *&v146[0].__locale_ = 0u;
      v143 = 0u;
      v144 = 0u;
      v61 = *(v3 + 104);
      v62 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v61)
        {
          v63 = 0;
          v65 = *(&v150 + 1);
          v64 = v151;
          v66 = (v151 - *(&v150 + 1)) >> 3;
          if (v66 <= 1)
          {
            v66 = 1;
          }

          v67 = *(a2 + 184);
          v68 = *(a2 + 104);
          v69 = *(a2 + 112);
          v70 = *(a2 + 192);
          do
          {
            v143 = *&v146[0].__locale_;
            if (v64 != v65)
            {
              v71 = v65;
              v72 = v66;
              do
              {
                v73 = *v71++;
                *(&v143 + v73) = 0;
                --v72;
              }

              while (v72);
            }

            v74 = 0;
            v75 = 0;
            v76 = &v143;
            v77 = 1;
            do
            {
              v78 = v77;
              v75 += *(&v161 + v74) * *v76;
              v76 = (&v143 + 8);
              v74 = 1;
              v77 = 0;
            }

            while ((v78 & 1) != 0);
            v79 = (v70 + 4 * v75);
            if (!v67)
            {
              v79 = (v70 + 4 * *(&v143 + 1) * v69 + 4 * v143 * v68);
            }

            *(v62 + 4 * v63) = *(a2 + 248) * *v79;
            for (k = 1; k != -1; --k)
            {
              v81 = (v146[k].__locale_ + 1);
              v146[k].__locale_ = v81;
              if (v81 != *(&v140 + k * 8))
              {
                break;
              }

              v146[k].__locale_ = 0;
            }

            ++v63;
          }

          while (v63 != v61);
        }
      }

      else if (v61)
      {
        v114 = 0;
        v116 = *(&v150 + 1);
        v115 = v151;
        v117 = (v151 - *(&v150 + 1)) >> 3;
        if (v117 <= 1)
        {
          v117 = 1;
        }

        v118 = *(v3 + 56);
        v119 = *(v3 + 64);
        v120 = *(a2 + 184);
        v121 = *(a2 + 104);
        v122 = *(a2 + 112);
        v123 = *(a2 + 192);
        do
        {
          v124 = v146[0].__locale_;
          v125 = v146[1].__locale_;
          v143 = *&v146[0].__locale_;
          if (v115 != v116)
          {
            v126 = v116;
            v127 = v117;
            do
            {
              v128 = *v126++;
              *(&v143 + v128) = 0;
              --v127;
            }

            while (v127);
          }

          v129 = 0;
          v130 = 0;
          v131 = &v143;
          v132 = 1;
          do
          {
            v133 = v132;
            v130 += *(&v161 + v129) * *v131;
            v131 = (&v143 + 8);
            v129 = 1;
            v132 = 0;
          }

          while ((v133 & 1) != 0);
          v134 = v124 * v118;
          v135 = v125 * v119;
          v136 = (v123 + 4 * v130);
          if (!v120)
          {
            v136 = (v123 + 4 * *(&v143 + 1) * v122 + 4 * v143 * v121);
          }

          *(v62 + 4 * v135 + 4 * v134) = *(a2 + 248) * *v136;
          for (m = 1; m != -1; --m)
          {
            v138 = (v146[m].__locale_ + 1);
            v146[m].__locale_ = v138;
            if (v138 != *(&v140 + m * 8))
            {
              break;
            }

            v146[m].__locale_ = 0;
          }

          ++v114;
        }

        while (v114 != v61);
      }
    }

    result = sub_2621C57C8(&v149);
  }

  v139 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_262323008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  std::locale::~locale(&a21);
  sub_2621C57C8(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_262323040(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v1 = result;
    result = *(result + 24);
    if (result)
    {
      result = MEMORY[0x266727400](result, 0x1000C8052888210);
      *(v1 + 24) = 0;
    }
  }

  return result;
}

void sub_262323090(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2874EE970;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x266727420);
}

void sub_262323104(void *a1)
{
  *a1 = &unk_2874EE950;
  v1 = a1[16];
  if (v1)
  {
    sub_2621D1B78(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_262323170(void *a1)
{
  *a1 = &unk_2874EE950;
  v2 = a1[16];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  return a1;
}

id sub_2623231BC(uint64_t a1, char a2)
{
  if (*(a1 + 8))
  {
    v4 = objc_alloc(MEMORY[0x277CBEB18]);
    v8 = objc_msgSend_initWithCapacity_(v4, v5, *(a1 + 8));
    v9 = *(a1 + 8);
    if (v9)
    {
      v10 = *a1;
      v11 = *a1 + 16 * v9;
      do
      {
        v12 = objc_alloc_init(RS3DSurface);
        v14 = v12;
        *&v15 = *v10;
        *&v16 = v10[1];
        v17 = v15;
        HIDWORD(v17) = HIDWORD(v21);
        v18 = v16;
        HIDWORD(v18) = v24;
        HIDWORD(v16) = v25;
        HIDWORD(v15) = v26;
        v22 = v24;
        v23 = v17;
        src[0] = v17;
        src[1] = v18;
        src[2] = v16;
        src[3] = v15;
        if (v12)
        {
          objc_copyStruct(&v12[1], src, 64, 1, 0);
          *(v14 + 108) = 1065353216;
          *(v14 + 104) = a2;
        }

        objc_msgSend_addObject_(v8, v13, v14, v21);

        v10 += 2;
        v21 = v23;
        v24 = v22;
      }

      while (v10 != v11);
    }

    v19 = objc_msgSend_copy(v8, v6, v7, v21);
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  return v19;
}

uint64_t sub_262323774(uint64_t a1, int *a2, int *a3)
{
  v33[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 137) == 1)
  {
    v5 = a1;
    v6 = MEMORY[0x277D82670];
    v7 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v8 = sub_2621D552C(v7, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = MEMORY[0x266727260](v9, 1125);
    v11 = sub_2621D552C(v10, " ", 1);
    v12 = sub_2621D552C(v11, "at", 2);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(v30, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(v30);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6874("err", "empty tensor");
    std::ios_base::getloc((v6 + *(*v6 - 24)));
    v14 = std::locale::use_facet(v30, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(v30);
    std::ostream::put();
    std::ostream::flush();
    a1 = v5;
  }

  v15 = 0;
  v16 = MEMORY[0x277D82670];
  v27 = a1;
  v28 = 0;
  v17 = a1 + 8;
  v18 = *a3;
  v33[0] = *a2;
  v33[1] = v18;
  v19 = 1;
  v20 = MEMORY[0x277D82680];
  v31 = 0u;
  v32 = 0u;
  *&v30[0].__locale_ = 0u;
  do
  {
    v21 = v33[v15];
    if (v21 >= *(v17 + v15 * 8))
    {
      sub_2621D552C(v16, "runtime_err in ", 15);
      sub_2621D552C(v16, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
      sub_2621D552C(v16, " ", 1);
      v22 = MEMORY[0x266727260](v16, 1133);
      sub_2621D552C(v22, " ", 1);
      sub_2621D552C(v22, "at", 2);
      std::ios_base::getloc((v22 + *(*v22 - 24)));
      v23 = std::locale::use_facet(&v29, v20);
      (v23->__vftable[2].~facet_0)(v23, 10);
      std::locale::~locale(&v29);
      std::ostream::put();
      std::ostream::flush();
      sub_2621DA198("err", "shape", &v28, "=", &v33[v15], "should smaller then", (v17 + v15 * 8));
      std::ios_base::getloc((v16 + *(*v16 - 24)));
      v24 = std::locale::use_facet(&v29, v20);
      (v24->__vftable[2].~facet_0)(v24, 10);
      std::locale::~locale(&v29);
      std::ostream::put();
      std::ostream::flush();
    }

    v28 = v19;
    v30[v15++].__locale_ = v21;
    ++v19;
  }

  while (v15 != 2);
  v25 = *MEMORY[0x277D85DE8];
  return v27[18] + v27[8] * v30[1].__locale_ + v27[7] * v30[0].__locale_;
}

void sub_262323BB0(void *a1, uint64_t a2, int a3, float a4, float a5)
{
  v118 = &unk_2874EEB10;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v126 = 0;
  v127 = 0;
  v128 = 257;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v130 = &unk_2874EEC38;
  v138 = 0;
  v139 = 0;
  v140 = 257;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v147 = 0;
  __src = 0;
  v148 = 0;
  v114 = a3;
  v115 = a4;
  v116 = a5;
  v162.i32[0] = 180;
  v7 = a1[1];
  v8 = a1 + 1;
  HIDWORD(v163) = ((2 * (a1[2] + v7)) | 1);
  v117 = xmmword_2623A7C90;
  v145 = (HIDWORD(v163) - 1) / 2;
  sub_2622D4838(v149, &v162, &v163 + 1);
  v99 = a2;
  sub_2622125F8(&__p, v149);
  v122 = v154;
  v123 = v155;
  v124 = v156;
  v125 = v157;
  v119 = v151;
  v120 = v152;
  v121 = v153;
  v9 = v158;
  v10 = v159;
  if (v159)
  {
    atomic_fetch_add_explicit(&v159->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v126 = v9;
  v127 = v10;
  v129 = v161;
  v128 = v160;
  __p = &unk_2874EEB10;
  if (v159)
  {
    sub_2621D1B78(v159);
  }

  sub_26220A5F0(&v142, 0x168uLL);
  v11 = 0;
  v12 = *(&v117 + 1);
  v13 = v142;
  do
  {
    v15 = __sincos_stret(v12 * v11);
    v14.f64[0] = v15.__cosval;
    v14.f64[1] = v15.__sinval;
    v13[v11++] = vcvt_f32_f64(v14);
  }

  while (v11 != 180);
  sub_26225F17C(&__p, 0, v8);
  v135 = v155;
  v136 = v156;
  v137 = v157;
  v131 = v151;
  v132 = v152;
  v133 = v153;
  v134 = v154;
  v16 = v158;
  v17 = v159;
  if (v159)
  {
    atomic_fetch_add_explicit(&v159->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v139;
  v138 = v16;
  v139 = v17;
  if (v18)
  {
    sub_2621D1B78(v18);
  }

  v141 = v161;
  v140 = v160;
  __p = &unk_2874EEC38;
  if (v159)
  {
    sub_2621D1B78(v159);
  }

  sub_26220F5A0(&__src, 0x1000uLL);
  v19 = a1[13];
  if (v19)
  {
    v20 = 0;
    v21 = a1[18];
    do
    {
      if (*(v21 + v20))
      {
        LODWORD(v22) = v20 % v7;
        HIDWORD(v22) = v20 / v7;
        v23 = v147;
        if (v147 >= v148)
        {
          v25 = (v147 - __src) >> 3;
          if ((v25 + 1) >> 61)
          {
            sub_2621CBEB0();
          }

          v26 = (v148 - __src) >> 2;
          if (v26 <= v25 + 1)
          {
            v26 = v25 + 1;
          }

          if (v148 - __src >= 0x7FFFFFFFFFFFFFF8)
          {
            v27 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v27 = v26;
          }

          if (v27)
          {
            sub_2621CBEC8(v27);
          }

          *(8 * v25) = v22;
          v24 = 8 * v25 + 8;
          v28 = (8 * v25 - (v147 - __src));
          memcpy(v28, __src, v147 - __src);
          v29 = __src;
          __src = v28;
          v147 = v24;
          v148 = 0;
          if (v29)
          {
            operator delete(v29);
          }
        }

        else
        {
          *v147 = v22;
          v24 = (v23 + 8);
        }

        v147 = v24;
        *(v141 + v20) = 1;
        v19 = a1[13];
      }

      ++v20;
    }

    while (v19 > v20);
  }

  v151 = 0uLL;
  __p = 0;
  sub_26220F5A0(&__p, 0x1000uLL);
  if (((v147 - __src) >> 3) >= 1)
  {
    v31 = ((v147 - __src) >> 3) & 0x7FFFFFFF;
    v32 = -1;
    do
    {
      v32 = HIDWORD(v32) + 4164903690 * v32;
      v33 = v114;
      *&v30 = *(__src + v32 % v31);
      v34 = v31 - 1;
      *(__src + v32 % v31) = *(__src + v31 - 1);
      LODWORD(v149[0]) = DWORD1(v30);
      v35 = v30;
      v108 = v30;
      v162.i32[0] = v30;
      if (*sub_262323774(&v130, v149, &v162))
      {
        v36 = v33 - 1;
        *(&v37 + 1) = *(&v108 + 1);
        v38 = DWORD1(v108);
        v39 = v119;
        LODWORD(v149[0]) = 0;
        v102 = v31 - 1;
        v103 = v32;
        if (v119)
        {
          v40 = v31;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          do
          {
            v162.i32[0] = v145 + llroundf((*(v142 + v41 + 4) * SDWORD1(v108)) + (v35 * *(v142 + v41)));
            v44 = sub_262212AA8(&v118, v149, &v162);
            v45 = (*v44)++;
            if (v45 >= v36)
            {
              v36 = v45 + 1;
              v43 = v42;
            }

            LODWORD(v149[0]) = ++v42;
            v41 += 8;
          }

          while (v39 > v42);
          v46 = 2 * v43;
          v31 = v40;
          v34 = v102;
          v32 = v103;
          v38 = DWORD1(v108);
        }

        else
        {
          v46 = 0;
        }

        if (v36 >= v114)
        {
          v101 = v31;
          v47 = (v142 + 4 * v46);
          v49 = *v47;
          v48 = v47[1];
          v50 = fabsf(*v47);
          v51.i32[1] = DWORD1(v108);
          v52.i32[0] = v108;
          v53 = llroundf((v48 * -65536.0) / v50);
          if (v49 > 0.0)
          {
            v54 = 1;
          }

          else
          {
            v54 = -1;
          }

          v55 = COERCE_DOUBLE(__PAIR64__(v54, v53));
          v56 = fabsf(v48);
          if (v48 < 0.0)
          {
            v57 = 1;
          }

          else
          {
            v57 = -1;
          }

          v58 = llroundf((v49 * 65536.0) / v56);
          if (v56 > v50)
          {
            v59 = COERCE_DOUBLE(__PAIR64__(v58, v57));
          }

          else
          {
            v59 = v55;
          }

          if (v56 > v50)
          {
            v52.i32[1] = (v38 << 16) | 0x8000;
            v60 = v52;
          }

          else
          {
            v51.i32[0] = (v35 << 16) | 0x8000;
            v60 = v51;
          }

          v61 = v56 > v50;
          v62 = v131;
          v113 = v60;
          *(&v113 | (4 * v61)) = *((&v113 | (4 * v61)) + 2);
          *&v37 = v113;
          v104 = v37;
          v63 = v113.i32[0];
          v64 = v113.i32[0] >= 0 && *(&v62 + 1) > v113.u32[0];
          v65 = vneg_s32(*&v59);
          v66 = v64;
          v106 = v66;
          v67 = v149;
          v68 = 1;
          v69 = *&v59;
          do
          {
            v70 = v68;
            if (v106)
            {
              v71 = 0;
              v72 = v63;
              v37 = v104;
              v73 = v60;
              do
              {
                if (v62 <= SDWORD1(v37))
                {
                  break;
                }

                v109 = v37;
                v163 = __PAIR64__(DWORD1(v37), v72);
                if (*sub_262323774(&v130, &v163 + 1, &v163))
                {
                  v71 = 0;
                  *(&v37 + 1) = *(&v109 + 1);
                  *v67 = v109;
                }

                else if (v116 < ++v71)
                {
                  break;
                }

                v73 = vadd_s32(v73, v69);
                v112 = v73;
                *(&v112 & 0xFFFFFFFFFFFFFFFBLL | (4 * v61)) = *((&v112 | (4 * v61)) + 2);
                *&v37 = v112;
                v72 = v112.i32[0];
                if (v112.i32[0] < 0)
                {
                  break;
                }
              }

              while (*(&v62 + 1) > v112.u32[0]);
            }

            v68 = 0;
            v67 = &v162;
            v69 = v65;
          }

          while ((v70 & 1) != 0);
          *&v30 = v162;
          v105 = *&v149[0];
          v100 = v30;
          v74 = vsub_s32(*&v149[0], v162);
          v75 = v74.i32[0];
          if (v74.i32[0] < 0)
          {
            v75 = -v74.i32[0];
          }

          if (v115 <= v75)
          {
            v77 = 1;
          }

          else
          {
            v76 = v74.u32[1];
            if (v74.i32[1] < 0)
            {
              v76 = -v74.i32[1];
            }

            v77 = v115 <= v76;
          }

          v78 = v149;
          v79 = 1;
          do
          {
            v107 = v79;
            v80 = v60;
            do
            {
              v111 = v80;
              *(&v111 & 0xFFFFFFFFFFFFFFFBLL | (4 * v61)) = *((&v111 | (4 * v61)) + 2);
              *&v37 = v111;
              v81 = v111.i32[0];
              v110 = v37;
              v163 = v111;
              if (*sub_262323774(&v130, &v163 + 1, &v163))
              {
                if (v77)
                {
                  v82 = v119;
                  HIDWORD(v163) = 0;
                  if (v119)
                  {
                    v83 = 0;
                    v84 = 0;
                    do
                    {
                      LODWORD(v163) = v145 + llroundf((*(v142 + v83 + 4) * SDWORD1(v110)) + (v81 * *(v142 + v83)));
                      v85 = sub_262212AA8(&v118, &v163 + 1, &v163);
                      --*v85;
                      HIDWORD(v163) = ++v84;
                      v83 += 8;
                    }

                    while (v82 > v84);
                  }
                }

                v163 = __PAIR64__(DWORD1(v110), v81);
                *sub_262323774(&v130, &v163 + 1, &v163) = 0;
              }

              *(&v30 + 1) = *(&v110 + 1);
              v86 = vceq_s32(*&v110, *v78);
              v80 = vadd_s32(v80, *&v59);
            }

            while ((vpmin_u32(v86, v86).u32[0] & 0x80000000) == 0);
            v79 = 0;
            v78 = &v162;
            v59 = *&v65;
          }

          while ((v107 & 1) != 0);
          v31 = v101;
          v34 = v102;
          v32 = v103;
          if (v77)
          {
            *&v87 = v105;
            *(&v30 + 1) = *(&v100 + 1);
            *(&v87 + 1) = v100;
            v89 = *(v99 + 8);
            v88 = *(v99 + 16);
            if (v89 >= v88)
            {
              v91 = (v89 - *v99) >> 4;
              if ((v91 + 1) >> 60)
              {
                sub_2621CBEB0();
              }

              v92 = v88 - *v99;
              v93 = v92 >> 3;
              if (v92 >> 3 <= (v91 + 1))
              {
                v93 = v91 + 1;
              }

              if (v92 >= 0x7FFFFFFFFFFFFFF0)
              {
                v94 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v94 = v93;
              }

              if (v94)
              {
                sub_2621CBF10(v94);
              }

              v95 = (16 * v91);
              *v95 = v87;
              v90 = 16 * v91 + 16;
              v96 = *(v99 + 8) - *v99;
              v97 = v95 - v96;
              memcpy(v95 - v96, *v99, v96);
              v98 = *v99;
              *v99 = v97;
              *(v99 + 8) = v90;
              *(v99 + 16) = 0;
              if (v98)
              {
                operator delete(v98);
              }
            }

            else
            {
              *v89 = v87;
              v90 = (v89 + 1);
            }

            *(v99 + 8) = v90;
          }
        }
      }

      v64 = v31 > 1;
      v31 = v34;
    }

    while (v64);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (__src)
  {
    v147 = __src;
    operator delete(__src);
  }

  if (v142)
  {
    v143 = v142;
    operator delete(v142);
  }

  v130 = &unk_2874EEC38;
  if (v139)
  {
    sub_2621D1B78(v139);
  }

  v118 = &unk_2874EEB10;
  if (v127)
  {
    sub_2621D1B78(v127);
  }
}

void sub_26232450C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (STACK[0x250])
  {
    operator delete(STACK[0x250]);
  }

  sub_2623245AC(&a28);
  _Unwind_Resume(a1);
}

void *sub_2623245AC(void *a1)
{
  v2 = a1[46];
  if (v2)
  {
    a1[47] = v2;
    operator delete(v2);
  }

  v3 = a1[42];
  if (v3)
  {
    a1[43] = v3;
    operator delete(v3);
  }

  a1[23] = &unk_2874EEC38;
  v4 = a1[39];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  a1[4] = &unk_2874EEB10;
  v5 = a1[20];
  if (v5)
  {
    sub_2621D1B78(v5);
  }

  return a1;
}

id sub_2623248BC(__n128 a1, double a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v17 = a1.n128_f64[1];
  v5 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a4, a5);
  v18[0] = v5;
  v8 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v6, v7, v17);
  v18[1] = v8;
  v11 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v9, v10, a2);
  v18[2] = v11;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v18, 3);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void sub_2623249D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = (a1 + 32);
  if (v8 != v10)
  {
    v11 = v8 - 4;
    v12 = v8 - 4;
    v13 = v8 - 4;
    do
    {
      v14 = *v13;
      v13 -= 4;
      (*v14)(v12);
      v11 -= 4;
      v15 = v12 == v10;
      v12 = v13;
    }

    while (!v15);
  }

  *(a1 + 40) = v10;
  sub_26220883C(v9, a2);
  sub_26220883C(v9, a3);
  if ((*(a4 + 137) & 1) == 0)
  {

    sub_262324ACC(a1, a4);
  }
}

void sub_262324ACC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = vcvt_f32_s32(v2[1]);
  v4 = vcvt_f32_s32(v2[5]);
  v5 = vsub_f32(v3, v4);
  v6 = vmul_f32(v5, v5);
  v6.f32[0] = sqrtf(vaddv_f32(v6));
  if (v6.f32[0] > 0.0)
  {
    v9 = a1 + 64;
    v8 = *(a1 + 64);
    *(a1 + 56) = 0;
    v10 = (v6.f32[0] + 0.5);
    *(a1 + 72) = v8;
    if ((v10 & 0x80000000) == 0)
    {
      v12 = 0;
      v13 = vdiv_f32(vsub_f32(v4, v3), vdup_lane_s32(v6, 0));
      do
      {
        v14 = vmla_n_f32(v3, v13, v12);
        v15 = vcvtms_s32_f32(v14.f32[0]);
        v16 = vcvtms_s32_f32(v14.f32[1]);
        v17 = *(a2 + 16);
        v18 = v16 + v15 * v17;
        v19 = 0.0;
        v20 = v15;
        do
        {
          v21 = 1.0 - vabds_f32(v14.f32[0], v20);
          v22 = v18;
          v23 = v16;
          do
          {
            if ((v20 & 0x80000000) == 0 && v20 < *(a2 + 8) && (v23 & 0x80000000) == 0 && v23 < v17)
            {
              v19 = v19 + ((v21 * (1.0 - vabds_f32(v14.f32[1], v23))) * *(*(a2 + 144) + 4 * v22));
            }

            ++v22;
            v24 = v23++ <= v16;
          }

          while (v24);
          v18 += v17;
          v24 = v20++ <= v15;
        }

        while (v24);
        v31 = v19;
        sub_2621C8F2C(v9, &v31);
      }

      while (v12++ != v10);
      v26 = *v9;
      v27 = *(v9 + 8);
      v28 = *v9;
      if (v27 != *v9)
      {
        v29 = 0.0;
        do
        {
          v30 = *v28++;
          v29 = v29 + v30;
        }

        while (v28 != v27);
        *(a1 + 56) = v29 / ((v27 - *v9) >> 2);
      }
    }
  }
}

uint64_t *sub_262324C6C(uint64_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 4);
    v8 = v7 + 1;
    if (v7 + 1 > 0x555555555555555)
    {
      sub_2621CBEB0();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x2AAAAAAAAAAAAAALL)
    {
      v10 = 0x555555555555555;
    }

    else
    {
      v10 = v8;
    }

    v24[4] = v2;
    if (v10)
    {
      sub_2622E989C(v10);
    }

    v11 = 48 * v7;
    *v11 = &unk_2874EEFE0;
    v12 = *(a2 + 16);
    *(v11 + 32) = *(a2 + 32);
    *(v11 + 16) = v12;
    v13 = *v2;
    v14 = v2[1];
    v15 = 48 * v7 - (v14 - *v2);
    v6 = 48 * v7 + 48;
    if (v14 != *v2)
    {
      v16 = 48 * v7 - 16 * ((v14 - *v2) >> 4);
      v17 = *v2;
      v18 = v11 - (v14 - *v2);
      do
      {
        *v18 = &unk_2874EEFE0;
        v19 = *(v17 + 16);
        *(v18 + 32) = *(v17 + 32);
        *(v18 + 16) = v19;
        v17 += 48;
        v18 += 48;
        v16 += 48;
      }

      while (v17 != v14);
      v20 = v13;
      v21 = v13;
      do
      {
        v22 = *v21;
        v21 += 6;
        (*v22)();
        v20 += 6;
      }

      while (v21 != v14);
      v13 = *v2;
    }

    *v2 = v15;
    v2[1] = v6;
    v23 = v2[2];
    v2[2] = 0;
    v24[2] = v13;
    v24[3] = v23;
    v24[0] = v13;
    v24[1] = v13;
    result = sub_262325000(v24);
  }

  else
  {
    *v3 = &unk_2874EEFE0;
    v5 = *(a2 + 16);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 16) = v5;
    v6 = v3 + 48;
  }

  v2[1] = v6;
  return result;
}

uint64_t sub_262324E74(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2622E94A4(a1, a2);
  }

  else
  {
    sub_2622E9338(a1[1], a2);
    result = v3 + 120;
    a1[1] = v3 + 120;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_262324EC8(uint64_t a1)
{
  *a1 = &unk_2874EEA70;
  v3 = (a1 + 64);
  sub_262324F40(&v3);
  v3 = (a1 + 40);
  sub_262324F40(&v3);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_262324F40(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 120;
      v7 = v4 - 120;
      v8 = v4 - 120;
      do
      {
        v9 = *v8;
        v8 -= 120;
        (*v9)(v7);
        v6 -= 120;
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

uint64_t sub_262325000(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 48);
    *(a1 + 16) = i - 48;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_26232506C(uint64_t a1)
{
  sub_262324EC8(a1);

  JUMPOUT(0x266727420);
}

size_t sub_2623250A8(_BYTE *a1, double a2, double a3)
{
  v8 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x100uLL, "%d_%d_%d_%d", LODWORD(a2), HIDWORD(a2), LODWORD(a3), HIDWORD(a3));
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2621CC980();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, __str, result);
  }

  a1[v5] = 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2623251AC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_262207B04(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2623251F8(void ***a1)
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
        v4 -= 3;
        v6 = v4;
        sub_262206D98(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_26232528C(uint64_t a1, uint64_t *a2)
{
  v6 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  if (v4 != v6)
  {
    v7 = v4 - 14;
    v8 = v4 - 14;
    v9 = v4 - 14;
    do
    {
      v10 = *v9;
      v9 -= 14;
      (*v10)(v8);
      v7 -= 14;
      v11 = v8 == v6;
      v8 = v9;
    }

    while (!v11);
  }

  *(a1 + 16) = v6;
  v13 = *a2;
  v12 = a2[1];
  while (v13 != v12)
  {
    sub_262206F74(v5, v13);
    v13 += 112;
  }

  return sub_262325754(a1);
}

uint64_t sub_262325354(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a1[2];
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *a1) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v8)
      {
        v11 = v9 - 112;
        v12 = (v9 - 112);
        v13 = (v9 - 112);
        do
        {
          v14 = *v13;
          v13 -= 14;
          (*v14)(v12);
          v11 -= 112;
          v15 = v12 == v8;
          v12 = v13;
        }

        while (!v15);
        v10 = *a1;
      }

      a1[1] = v8;
      operator delete(v10);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x249249249249249)
    {
      v16 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 4);
      v17 = 2 * v16;
      if (2 * v16 <= a4)
      {
        v17 = a4;
      }

      if (v16 >= 0x124924924924924)
      {
        v18 = 0x249249249249249;
      }

      else
      {
        v18 = v17;
      }

      sub_262325700(a1, v18);
    }

    sub_2621CBEB0();
  }

  v19 = a1[1] - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v19 >> 4) >= a4)
  {
    result = sub_26232555C(a2, a3, v8);
    v23 = v22;
    v24 = a1[1];
    if (v24 != v22)
    {
      v25 = v24 - 112;
      v26 = (v24 - 112);
      v27 = (v24 - 112);
      do
      {
        v28 = *v27;
        v27 -= 14;
        result = (*v28)(v26);
        v25 -= 112;
        v15 = v26 == v23;
        v26 = v27;
      }

      while (!v15);
    }

    a1[1] = v23;
  }

  else
  {
    v20 = sub_26232555C(a2, a2 + v19, v8);
    result = sub_262325634(v20, a3, a1[1]);
    a1[1] = result;
  }

  return result;
}

uint64_t sub_26232555C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = a2;
  v6 = 0;
  do
  {
    v7 = a3 + v6;
    v8 = a1 + v6;
    v9 = *(a1 + v6 + 8);
    *(v7 + 21) = *(a1 + v6 + 21);
    *(v7 + 8) = v9;
    if (a1 == a3)
    {
      *(v7 + 56) = *(v8 + 56);
    }

    else
    {
      sub_26220676C((v7 + 32), *(v8 + 32), *(v8 + 40), (*(v8 + 40) - *(v8 + 32)) >> 5);
      *(v7 + 56) = *(v8 + 56);
      sub_2621CA9DC((v7 + 64), *(v8 + 64), *(v8 + 72), (*(v8 + 72) - *(v8 + 64)) >> 2);
      sub_2622069E0((v7 + 88), *(v8 + 88), *(v8 + 96), (*(v8 + 96) - *(v8 + 88)) >> 4);
    }

    v6 += 112;
  }

  while (a1 + v6 != v5);
  return v5;
}

uint64_t sub_262325634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v4 = a1;
  v5 = 0;
  v6 = a3 - 112;
  v7 = a3;
  do
  {
    sub_2622072FC(v7, v4);
    v4 += 112;
    v7 += 112;
    v5 -= 112;
    v6 += 112;
  }

  while (v4 != a2);
  return v7;
}

void sub_262325700(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    sub_2622073F8(a2);
  }

  sub_2621CBEB0();
}

uint64_t sub_262325754(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  v3 = *(result + 8);
  if (v2 != v3)
  {
    v4 = 0;
    v5 = 0.0;
    do
    {
      v6 = vsub_f32(vcvt_f32_s32(*(*(v3 + 32) + 8)), vcvt_f32_s32(*(*(v3 + 32) + 40)));
      v7 = (sqrtf(vaddv_f32(vmul_f32(v6, v6))) + 0.5) + 1;
      v8 = (*(v3 + 56) * v7) + (v5 * v4);
      v4 += v7;
      v5 = v8 / v4;
      v3 += 112;
    }

    while (v3 != v2);
    *(result + 32) = v5;
  }

  return result;
}

void sub_2623257D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x666666666666667)
    {
      sub_262325A40(a4);
    }

    sub_2621CBEB0();
  }
}

uint64_t sub_26232595C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    sub_262207B54(&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2623259BC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_262325700(result, a4);
  }

  return result;
}

void sub_262325A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_2621FF4B4(&a9);
  _Unwind_Resume(a1);
}

void sub_262325A40(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_262325A98(uint64_t result, uint64_t (***a2)(void), uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = a3 + v6 * 8;
      *v7 = &unk_2874EEB30;
      *(a3 + v6 * 8 + 8) = 0;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      sub_2623259BC(a3 + v6 * 8 + 8, v5[v6 + 1], v5[v6 + 2], 0x6DB6DB6DB6DB6DB7 * ((v5[v6 + 2] - v5[v6 + 1]) >> 4));
      *(v7 + 32) = v5[v6 + 4];
      v6 += 5;
    }

    while (&v5[v6] != a2);
    v8 = v5;
    v9 = v5;
    do
    {
      v10 = *v9;
      v9 += 5;
      result = (*v10)(v5);
      v8 += 5;
      v5 = v9;
    }

    while (v9 != a2);
  }

  return result;
}

uint64_t sub_262325BE8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 40);
    *(a1 + 16) = i - 40;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_262325C54(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    sub_262206D98(&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_262325CB4(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24) < *(a3 + 24))
  {
    v4 = a1[1];
    for (i = a1[2]; v4 != i; v4 += 32)
    {
      v8 = *(v4 + 24);
      if (v8 > *(a2 + 24) && v8 < *(a3 + 24))
      {
        sub_262325CB4(a1, a2, v4);
        sub_262325CB4(a1, v4, a3);
        v10 = a1[10];
        v11 = *(v4 + 24);
        v12 = *(v10 + 24 * *(a2 + 24));
        v13 = v12 + 40 * v11;
        if (*(v13 + 16) != *(v13 + 8))
        {
          v14 = *(a3 + 24);
          v15 = *(v10 + 24 * v11) + 40 * v14;
          if (*(v15 + 16) != *(v15 + 8))
          {
            memset(v27, 0, sizeof(v27));
            v16 = *(v13 + 8);
            v17 = *(v13 + 16);
            while (v16 != v17)
            {
              sub_262206F74(v27, v16);
              v16 += 112;
            }

            v18 = *(v15 + 8);
            v19 = *(v15 + 16);
            while (v18 != v19)
            {
              sub_262206F74(v27, v18);
              v18 += 112;
            }

            v22 = &unk_2874EEB30;
            v24 = 0;
            v25 = 0;
            v23 = 0;
            v26 = 0.0;
            sub_26232528C(&v22, v27);
            v20 = v12 + 40 * v14;
            if (*(v20 + 16) == *(v20 + 8) || *(v20 + 32) < v26)
            {
              v21 = *(a1[10] + 24 * *(a2 + 24)) + 40 * *(a3 + 24);
              if (v21 != &v22)
              {
                sub_262325354((v21 + 8), v23, v24, 0x6DB6DB6DB6DB6DB7 * ((v24 - v23) >> 4));
              }

              *(v21 + 32) = v26;
            }

            v22 = &unk_2874EEB30;
            v28 = &v23;
            sub_2621FF4B4(&v28);
            v22 = v27;
            sub_2621FF4B4(&v22);
          }
        }
      }
    }
  }
}

void sub_262325EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = a9;
  sub_2621FF4B4(&a18);
  a10 = &a15;
  sub_2621FF4B4(&a10);
  _Unwind_Resume(a1);
}

void sub_262325F28(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = a2;
  v125 = a3;
  sub_2622C5BB4(*(a1 + 8));
  v10 = *(a1 + 8);
  if (v10 && *(v10 + 64) == 1)
  {
    v11 = *(v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  CVPixelBufferLockBaseAddress(v11, 0);
  v122 = a5;
  v12 = sub_2622C5800(*(a1 + 8));
  v13 = v9;
  v17 = v13;
  v19 = *(a4 + 224);
  v18 = *(a4 + 232);
  v20 = v18 - v19;
  v21 = *(v19 + 24);
  if (v21 < *(v19 + 40))
  {
    v21 = *(v19 + 40);
  }

  if ((v20 >> 6) >= 5)
  {
    v22 = (v20 >> 6) - 3 - 1;
    v23 = (v19 + 104);
    do
    {
      if (v21 < *(v23 - 4))
      {
        v21 = *(v23 - 4);
      }

      v24 = *v23;
      v23 += 16;
      v25 = v24;
      if (v21 < v24)
      {
        v21 = v25;
      }

      --v22;
    }

    while (v22);
  }

  if (v18 == v19)
  {
    *(a4 + 16) = xmmword_2623A7CB0;
    *(a4 + 32) = xmmword_2623A7CA0;
    v138 = (a4 + 32);
    v139 = (a4 + 16);
    *(a4 + 48) = 12;
    *(a4 + 80) = 0;
    v137 = (a4 + 80);
    *(a4 + 64) = 0;
    *(a4 + 72) = 0;
    *(a4 + 108) = 0x803CF5C28FLL;
    v135 = (a4 + 112);
    v136 = (a4 + 108);
  }

  else
  {
    v26 = vsubq_f32(*(v18 - 112), *(v18 - 96));
    v27 = vdiv_f32(vcvt_f32_u32(vmax_s32(__PAIR64__(vcvtps_s32_f32((((v21 - COERCE_FLOAT(*(v18 - 104))) + 0.3) * 0.0078125) * 100.0), vcvtps_s32_f32(((sqrtf(vaddv_f32(*&vmulq_f32(v26, v26))) + 0.3) * 0.0039062) * 100.0)), 0x300000003)), vdup_n_s32(0x42C80000u));
    LODWORD(v16) = 1028443341;
    *(&v16 + 4) = v27;
    *(a4 + 16) = v16;
    *(a4 + 32) = xmmword_2623A7CA0;
    v138 = (a4 + 32);
    v139 = (a4 + 16);
    *(a4 + 48) = 12;
    *(a4 + 80) = 0;
    *(a4 + 64) = 0;
    *(a4 + 72) = 0;
    v28 = *(v18 - 104);
    *(a4 + 108) = v27.i32[1];
    v136 = (a4 + 108);
    v137 = (a4 + 80);
    *(a4 + 80) = v28;
    *(a4 + 112) = 128;
    v135 = (a4 + 112);
    if (v20 >= 0x100)
    {
      v29 = *(v19 + 16);
      v30 = *(v18 - 224);
      v31 = vsub_f32(*&v30, *&v29);
      v32 = vmul_f32(v31, v31);
      v32.f32[0] = sqrtf(vaddv_f32(v32));
      v33 = vdiv_f32(v31, vdup_lane_s32(v32, 0));
      v32.i32[0] = vdup_lane_s32(v33, 1).u32[0];
      v32.f32[1] = -*v33.i32;
      *&v29 = vmul_f32(vadd_f32(*&v29, *&v30), 0x3F0000003F000000);
      *(&v29 + 2) = v28 + (vmuls_lane_f32(12.0, v27, 1) * 0.5);
      *(a4 + 64) = v29;
      *(a4 + 88) = v33;
      *(a4 + 96) = v32;
    }
  }

  v127 = *(v18 - 112);
  v124 = *(v18 - 96);
  v126 = v13;
  v34 = objc_msgSend_points(v13, v14, v15, v9);
  v130 = objc_msgSend_semanticLabels(v17, v35, v36);
  v133 = objc_msgSend_semanticVotes(v17, v37, v38);
  v39 = *v138;
  LODWORD(v152) = *(v138 + 1);
  v131 = v39;
  LODWORD(v140) = DWORD1(v39);
  sub_2622D4838(v164, &v152, &v140);
  sub_2622125F8(__p, v164);
  sub_26222D214(a4 + 256, __p);
  __p[0] = &unk_2874EEB10;
  if (*(&v191 + 1))
  {
    sub_2621D1B78(*(&v191 + 1));
  }

  sub_2622D4838(v164, &v152, &v140);
  sub_2622125F8(__p, v164);
  sub_26222D214(a4 + 408, __p);
  __p[0] = &unk_2874EEB10;
  if (*(&v191 + 1))
  {
    sub_2621D1B78(*(&v191 + 1));
  }

  sub_2622D4838(v164, &v152, &v140);
  sub_2622125F8(__p, v164);
  sub_26222D214(a4 + 560, __p);
  __p[0] = &unk_2874EEB10;
  if (*(&v191 + 1))
  {
    sub_2621D1B78(*(&v191 + 1));
  }

  sub_26230974C(v164, &unk_2623A86A4, &v152, &v140);
  v134 = DWORD1(v131);
  v40 = DWORD2(v131) * DWORD1(v131);
  v41 = (v12 + 8 * DWORD2(v131) * DWORD1(v131));
  sub_262294264(__p, v164);
  sub_26222D214(a4 + 720, __p);
  __p[0] = &unk_2874EEDA0;
  if (*(&v191 + 1))
  {
    sub_2621D1B78(*(&v191 + 1));
  }

  v216[0] = 3;
  sub_26230974C(v164, v216, &v152, &v140);
  v42 = (v12 + 2 * v40);
  sub_262294264(__p, v164);
  v123 = a1;
  v43 = vsubq_f32(v127, v124);
  v44 = sqrtf(vaddv_f32(*&vmulq_f32(v43, v43)));
  v45 = v131 + (v131 >> 31);
  v46 = DWORD1(v131) + (DWORD1(v131) >> 31);
  v47 = v40;
  sub_26222D214(a4 + 872, __p);
  __p[0] = &unk_2874EEDA0;
  if (*(&v191 + 1))
  {
    sub_2621D1B78(*(&v191 + 1));
  }

  v50 = 0;
  v132 = *(a4 + 400);
  v129 = *(a4 + 552);
  v128 = *(a4 + 704);
  v51 = v34 + 8;
  LOWORD(v52) = COERCE_UNSIGNED_INT(-1.0);
  __p[1] = 0;
  __p[0] = 0;
  *&v184 = 0;
  LOWORD(v53) = COERCE_UNSIGNED_INT(1.0);
  while (v50 < objc_msgSend_count(v126, v48, v49))
  {
    v54 = vsub_f32(*(v51 - 8), *(a4 + 64));
    v55 = vaddv_f32(vmul_f32(v54, *(a4 + 96)));
    v56 = vaddv_f32(vmul_f32(v54, *(a4 + 88)));
    v57 = fabsf(v56);
    if (fabsf(v55) < ((21.0 * 0.05) * 0.5) && v57 < (v44 * 0.5))
    {
      LODWORD(v164[0]) = DWORD2(*(v51 + 16));
      sub_2621C8F2C(__p, v164);
      v59 = *v139;
      *v60.i32 = v55 / COERCE_FLOAT(*v139);
      v61 = -*v60.i32;
      if (*v60.i32 >= 0.0)
      {
        v61 = v55 / COERCE_FLOAT(*v139);
      }

      v62 = v61;
      v63 = v61 - v61;
      if (v63 < 0.5)
      {
        v64 = v62;
      }

      else
      {
        v64 = v62 + 1;
      }

      v65 = (v62 & 1) + v62;
      if (v63 != 0.5)
      {
        v65 = v64;
      }

      if (*v60.i32 < 0.0)
      {
        v65 = -v65;
      }

      v66 = -(v56 / *(&v59 + 1));
      if ((v56 / *(&v59 + 1)) >= 0.0)
      {
        v66 = v56 / *(&v59 + 1);
      }

      v67 = v66;
      v68 = v65 + (v45 >> 1);
      v69 = v66 - v66;
      if (v69 < 0.5)
      {
        v70 = v67;
      }

      else
      {
        v70 = v67 + 1;
      }

      v71 = (v67 & 1) + v67;
      if (v69 != 0.5)
      {
        v71 = v70;
      }

      if ((v56 / *(&v59 + 1)) < 0.0)
      {
        v71 = -v71;
      }

      if ((v68 & 0x80000000) == 0 && v68 < *v138)
      {
        v72 = v71 + (v46 >> 1);
        if ((v72 & 0x80000000) == 0 && v72 <= HIDWORD(*v138))
        {
          v73 = *v135;
          v74 = (*v51 - *v137) / *v136;
          v75 = -v74;
          if (v74 >= 0.0)
          {
            v75 = (*v51 - *v137) / *v136;
          }

          v76 = v75;
          v77 = v75 - v75;
          if (v77 < 0.5)
          {
            v78 = v76;
          }

          else
          {
            v78 = v76 + 1;
          }

          v79 = (v76 & 1) + v76;
          if (v77 != 0.5)
          {
            v79 = v78;
          }

          if (v74 < 0.0)
          {
            v79 = -v79;
          }

          v80 = v73 + ~v79;
          if (v80 >= 0 && v80 < v73)
          {
            v81 = *(v133 + 8 * v50);
            v82 = v81;
            if (v81)
            {
              v60.i32[0] = *(v130 + 4 * v50);
              v83 = vmovl_u8(v60);
              v84 = v83.i8[0];
              if (v83.u16[1] < v83.u8[0])
              {
                v84 = v83.u8[2];
              }

              if (v81 != WORD1(v81))
              {
                v84 = v83.i8[0];
              }

              v85 = v83.i8[4];
              if (v83.u16[2] >= v84)
              {
                v85 = v84;
              }

              if (v81 == WORD2(v81))
              {
                v86 = v85;
              }

              else
              {
                v86 = v84;
              }

              if (v86 == 2)
              {
                v87 = 1;
              }

              else
              {
                v87 = 2 * (v86 == 3);
              }

              v88 = (v86 & 0xFE) == 6;
              v89 = v86 == 11;
              v82 = v86 == 12;
            }

            else
            {
              v88 = 0;
              v89 = 0;
              v87 = 0;
            }

            v90 = v72 + v134 * v80;
            v91 = *(v12 + v90) + v53;
            *(v12 + v90) = v91;
            if (v52 < v91)
            {
              v52 = v91;
            }

            v42[v90 + v87 * v47] = v42[v90 + v87 * v47] + v53;
            v41[v90 + v68 * v47] = v41[v90 + v68 * v47] + v53;
            if (v88)
            {
              ++*(v132 + 4 * v90);
              if (!v89)
              {
                goto LABEL_87;
              }
            }

            else if (!v89)
            {
LABEL_87:
              if (!v82)
              {
                goto LABEL_89;
              }

LABEL_88:
              ++*(v128 + 4 * v90);
              goto LABEL_89;
            }

            ++*(v129 + 4 * v90);
            if (v82)
            {
              goto LABEL_88;
            }
          }
        }
      }
    }

LABEL_89:
    ++v50;
    v51 += 16;
  }

  v92 = __p[0];
  if (__p[1] == __p[0])
  {
    v95 = 1.2;
    v93 = v123;
  }

  else
  {
    sub_2621CD2EC(__p, 99.0);
    v93 = v123;
    *(a4 + 104) = v94;
    v95 = v94 - *(a4 + 80);
  }

  *(a4 + 712) = v95;
  __asm { FCMP            H8, #0 }

  if (_NF ^ _VF | _ZF)
  {
    goto LABEL_104;
  }

  if (v47 >= 1)
  {
    LODWORD(v101) = 21 * v47;
    v102 = v47;
    do
    {
      *v12 = *v12 / _H8;
      v12 = (v12 + 2);
      --v102;
    }

    while (v102);
    if (v101 <= 1)
    {
      v101 = 1;
    }

    else
    {
      v101 = v101;
    }

    do
    {
      *v41 = *v41 / _H8;
      ++v41;
      --v101;
    }

    while (v101);
LABEL_104:
    if (v47 >= 1)
    {
      v103 = 2 * v47;
      v104 = &v42[v47];
      do
      {
        _H0 = *v42;
        __asm { FCVT            S1, H0 }

        _H2 = *v104;
        __asm { FCVT            S2, H2 }

        v109 = _S1 + _S2;
        *&_S2 = v42[v103];
        __asm { FCVT            S2, H2 }

        _S1 = v109 + _S2;
        __asm
        {
          FCVT            H1, S1
          FCMP            H1, #0
        }

        if (!(_NF ^ _VF | _ZF))
        {
          *v42 = _H0 / _H1;
          *v104 = *v104 / _H1;
          v42[v103] = v42[v103] / _H1;
        }

        ++v42;
        ++v104;
        --v47;
      }

      while (v47);
    }
  }

  if (v92)
  {
    operator delete(v92);
  }

  kdebug_trace();
  kdebug_trace();
  v113 = *(v93 + 288);
  sub_2622A0078();
  v114 = *(v93 + 8);
  if (v114 && *(v114 + 64) == 1)
  {
    v115 = *(v114 + 8);
  }

  else
  {
    v115 = 0;
  }

  CVPixelBufferUnlockBaseAddress(v115, 1uLL);
  sub_2621D0F64(__p, "406");
  v164[0] = __p;
  v116 = sub_2622F3150(v93 + 368, __p);
  sub_26222AE80(v216, v116 + 56);
  if (SBYTE7(v184) < 0)
  {
    operator delete(__p[0]);
  }

  sub_2621D0F64(__p, "406");
  v164[0] = __p;
  v117 = *(sub_2622F30B0(v93 + 344, __p) + 56);
  sub_2621D0F64(v164, "406");
  v118 = sub_2622A0200(v93 + 272, v164);
  sub_2623272F0(v117, v118, v218);
  if (SBYTE7(v165) < 0)
  {
    operator delete(v164[0]);
  }

  if (SBYTE7(v184) < 0)
  {
    operator delete(__p[0]);
  }

  sub_2621D0F64(__p, "417");
  v164[0] = __p;
  v119 = sub_2622F3150(v93 + 368, __p);
  sub_26222AE80(v213, v119 + 56);
  if (SBYTE7(v184) < 0)
  {
    operator delete(__p[0]);
  }

  sub_2621D0F64(__p, "417");
  v164[0] = __p;
  v120 = *(sub_2622F30B0(v93 + 344, __p) + 56);
  sub_2621D0F64(v164, "417");
  v121 = sub_2622A0200(v93 + 272, v164);
  sub_2623272F0(v120, v121, v215);
  if (SBYTE7(v165) < 0)
  {
    operator delete(v164[0]);
  }

  if (SBYTE7(v184) < 0)
  {
    operator delete(__p[0]);
  }

  sub_262224E88(v211, v216, 0);
  sub_262224E88(v209, v213, 0);
  v146 = 0;
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  sub_262223F30(&v147, v211);
  v140 = v148;
  v141 = v149;
  v142 = v150;
  v152 = 0u;
  v153 = 0u;
  v158 = v143;
  v159 = v144;
  v160 = v145;
  v161 = v146;
  v154 = 0u;
  v155 = v148;
  v156 = v149;
  v157 = v150;
  sub_262223F30(v162, &v147);
  v152 = v155;
  v153 = v156;
  v171 = v155;
  v174 = v155;
  v154 = v157;
  *v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v173 = v157;
  v172 = v156;
  v175 = v156;
  v176 = v157;
  v170 = 1065353216;
  v180 = v161;
  v179 = v160;
  v178 = v159;
  v177 = v158;
  sub_262223F30(v181, v162);
  v189 = 1065353216;
  v196 = v170;
  v165 = v172;
  v166 = v173;
  *v164 = v171;
  *__p = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v190 = v171;
  v191 = v172;
  v192 = v173;
  v195 = v169;
  v194 = v168;
  v193 = v167;
  v198 = v172;
  v197 = v171;
  v202 = v176;
  v201 = v175;
  v199 = v173;
  v200 = v174;
  v206 = v180;
  v205 = v179;
  v204 = v178;
  v203 = v177;
  sub_262223F30(v207, v181);
  *__p = v190;
  v184 = v191;
  v185 = v192;
  sub_2623273B4(v211, __p);
  v207[0] = &unk_2874EF0B8;
  if (v208)
  {
    sub_2621D1B78(v208);
  }

  v181[0] = &unk_2874EF0B8;
  if (v182)
  {
    sub_2621D1B78(v182);
  }

  v162[0] = &unk_2874EF0B8;
  if (v163)
  {
    sub_2621D1B78(v163);
  }

  v147 = &unk_2874EF0B8;
  if (v151)
  {
    sub_2621D1B78(v151);
  }

  v146 = 0;
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  sub_262223F30(&v147, v209);
  v140 = v148;
  v141 = v149;
  v142 = v150;
  v152 = 0u;
  v153 = 0u;
  v158 = v143;
  v159 = v144;
  v160 = v145;
  v161 = v146;
  v154 = 0u;
  v155 = v148;
  v156 = v149;
  v157 = v150;
  sub_262223F30(v162, &v147);
  v152 = v155;
  v153 = v156;
  v171 = v155;
  v174 = v155;
  v154 = v157;
  *v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v173 = v157;
  v172 = v156;
  v175 = v156;
  v176 = v157;
  v170 = 1065353216;
  v180 = v161;
  v179 = v160;
  v178 = v159;
  v177 = v158;
  sub_262223F30(v181, v162);
  v189 = 1065353216;
  v196 = v170;
  v165 = v172;
  v166 = v173;
  *v164 = v171;
  *__p = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v190 = v171;
  v191 = v172;
  v192 = v173;
  v195 = v169;
  v194 = v168;
  v193 = v167;
  v198 = v172;
  v197 = v171;
  v202 = v176;
  v201 = v175;
  v199 = v173;
  v200 = v174;
  v206 = v180;
  v205 = v179;
  v204 = v178;
  v203 = v177;
  sub_262223F30(v207, v181);
  *__p = v190;
  v184 = v191;
  v185 = v192;
  sub_2623273B4(v209, __p);
  v207[0] = &unk_2874EF0B8;
  if (v208)
  {
    sub_2621D1B78(v208);
  }

  v181[0] = &unk_2874EF0B8;
  if (v182)
  {
    sub_2621D1B78(v182);
  }

  v162[0] = &unk_2874EF0B8;
  if (v163)
  {
    sub_2621D1B78(v163);
  }

  v147 = &unk_2874EF0B8;
  if (v151)
  {
    sub_2621D1B78(v151);
  }

  kdebug_trace();
  *v122 = 1;
  sub_262223F30((v122 + 8), v211);
  sub_262223F30((v122 + 160), v209);
  v209[0] = &unk_2874EF0B8;
  if (v210)
  {
    sub_2621D1B78(v210);
  }

  v211[0] = &unk_2874EF0B8;
  if (v212)
  {
    sub_2621D1B78(v212);
  }

  v213[0] = &unk_2874EF0D8;
  if (v214)
  {
    sub_2621D1B78(v214);
  }

  *v216 = &unk_2874EF0D8;
  if (v217)
  {
    sub_2621D1B78(v217);
  }
}

void sub_262327060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  if (v16)
  {
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2623272F0(__CVBuffer *a1, _DWORD *a2, _DWORD *a3)
{
  v5 = *(*a2 + 16) * *(*a2 + 8) * *(*a2 + 24);
  IOSurface = CVPixelBufferGetIOSurface(a1);
  IOSurfaceLock(IOSurface, 1u, 0);
  v7 = a2[7];
  if (v7 == 3)
  {
    for (i = IOSurfaceGetBaseAddress(IOSurface); v5; --v5)
    {
      v11 = *i++;
      _H0 = v11;
      __asm { FCVT            S0, H0 }

      *a3++ = _S0;
    }
  }

  else if (v7 == 6)
  {
    for (j = IOSurfaceGetBaseAddress(IOSurface); v5; --v5)
    {
      v9 = *j++;
      *a3++ = v9;
    }
  }

  return IOSurfaceUnlock(IOSurface, 1u, 0);
}

uint64_t sub_2623273B4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 497) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 664);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "operator=", 9);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(v20, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(v20);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D8074("err", "empty tensor in");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(v20, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(v20);
    std::ostream::put();
    std::ostream::flush();
  }

  if (*(a1 + 137) == 1)
  {
    v14 = *(a2 + 16);
    v13 = *(a2 + 32);
    *(a1 + 8) = *a2;
    v15 = *(a1 + 16);
    *(a1 + 104) = *(a1 + 8) * v15;
    *(a1 + 24) = v14;
    *(a1 + 40) = v13;
    *(a1 + 56) = v15;
    *(a1 + 64) = 1;
    *(a1 + 112) = 0;
    sub_262224B84();
  }

  if (*(a2 + 480) != *(a1 + 120) || (v16 = sub_2621D9A90(a2 + 368, a1 + 8), v17 = sub_2621D9A90(a2 + 368, a1 + 8), v18 = sub_2621D9A90(a2 + 368, a1 + 8)) && v18 && v17 && v16)
  {
    sub_2623276F4(a1, a2);
  }

  else
  {
    sub_262224008(v20, a2);
    sub_2623276F4(v20, a2);
    sub_262224104(a1, v20);
    *&v20[0] = &unk_2874EF0B8;
    if (v21)
    {
      sub_2621D1B78(v21);
    }
  }

  return a1;
}

void sub_2623276AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  _Unwind_Resume(exception_object);
}

void sub_2623276F4(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v194 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  v6 = 1;
  do
  {
    v7 = *(v5 + v4);
    v8 = *(a2 + 8 * v4);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v6 = 0;
    v4 = 1;
  }

  while (v7 == v8);
  if (v7 == v8)
  {
    if (*(a2 + 496))
    {
      v180 = 0uLL;
      v181 = 0uLL;
      v179 = 0uLL;
      v9 = *(a1 + 104);
      v10 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v9)
        {
          v11 = *(a2 + 504);
          do
          {
            v12 = *(a2 + 96);
            v13 = *(a2 + 200);
            v14 = *v11++;
            *v10++ = v12 / (v13 + expf(*(a2 + 352) - v14));
            --v9;
          }

          while (v9);
        }
      }

      else if (v9)
      {
        v85 = 0;
        v86 = *(a1 + 64);
        v168 = *(a1 + 56);
        v87 = *(a2 + 504);
        v88 = a1 + 16;
        do
        {
          v89 = v168 * v179;
          v90 = &v10[v86 * *(&v179 + 1)];
          v91 = *(a2 + 96);
          v92 = *(a2 + 200);
          v93 = expf(*(a2 + 352) - *(v87 + 4 * v85));
          v94 = 0;
          v90[v89] = v91 / (v92 + v93);
          do
          {
            v95 = *(&v179 + v94 + 8) + 1;
            *(&v179 + v94 + 8) = v95;
            if (v95 != *(v88 + v94))
            {
              break;
            }

            *(&v179 + v94 + 8) = 0;
            v94 -= 8;
          }

          while (v94 != -16);
          ++v85;
        }

        while (v85 != v9);
      }
    }

    else
    {
      v180 = 0uLL;
      v181 = 0uLL;
      v179 = 0uLL;
      v43 = *(a1 + 104);
      v44 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v43)
        {
          v45 = 0;
          v46 = *(a2 + 416);
          v47 = *(a2 + 424);
          v48 = *(a2 + 504);
          v49 = a1 + 16;
          do
          {
            v50 = *(a2 + 96);
            v51 = *(a2 + 200);
            v52 = expf(*(a2 + 352) - *(v48 + 4 * v47 * *(&v179 + 1) + 4 * v46 * v179));
            v53 = 0;
            *(v44 + 4 * v45) = v50 / (v51 + v52);
            do
            {
              v54 = *(&v179 + v53 + 8) + 1;
              *(&v179 + v53 + 8) = v54;
              if (v54 != *(v49 + v53))
              {
                break;
              }

              *(&v179 + v53 + 8) = 0;
              v53 -= 8;
            }

            while (v53 != -16);
            ++v45;
          }

          while (v45 != v43);
        }
      }

      else if (v43)
      {
        v96 = 0;
        v164 = *(a1 + 64);
        v169 = *(a1 + 56);
        v97 = *(a2 + 424);
        v159 = *(a2 + 416);
        v98 = a1 + 16;
        v99 = *(a2 + 504);
        do
        {
          v100 = v169 * v179;
          v101 = v44 + 4 * v164 * *(&v179 + 1);
          v102 = *(a2 + 96);
          v103 = *(a2 + 200);
          v104 = expf(*(a2 + 352) - *(v99 + 4 * v97 * *(&v179 + 1) + 4 * v159 * v179));
          v105 = 0;
          *(v101 + 4 * v100) = v102 / (v103 + v104);
          do
          {
            v106 = *(&v179 + v105 + 8) + 1;
            *(&v179 + v105 + 8) = v106;
            if (v106 != *(v98 + v105))
            {
              break;
            }

            *(&v179 + v105 + 8) = 0;
            v105 -= 8;
          }

          while (v105 != -16);
          ++v96;
        }

        while (v96 != v43);
      }
    }
  }

  else
  {
    if (*(a2 + 496))
    {
      v192 = 0uLL;
      v193 = 0uLL;
      v190 = 0uLL;
      v191 = 0uLL;
      v188 = 0uLL;
      v189 = 0uLL;
      v186 = 0uLL;
      v187 = 0uLL;
      v184 = 0uLL;
      v185 = 0uLL;
      v182 = 0uLL;
      v183 = 0uLL;
      v180 = 0uLL;
      v181 = 0uLL;
      v179 = 0uLL;
      v171 = 0uLL;
      v172 = 0uLL;
      v170 = 0uLL;
      sub_2621D96E4(&v179, v5, a2, &v170);
      v15 = 0;
      v16 = &v170;
      v17 = 1;
      do
      {
        v18 = *v16;
        v19 = *(v5 + v15);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v17 = 0;
        v16 = &v170 + 1;
        v15 = 1;
      }

      while (v18 == v19);
      if (v18 != v19)
      {
        v20 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v21 = sub_2621D552C(v20, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v21, " ", 1);
        v22 = MEMORY[0x277D82670];
        v23 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v23, " ", 1);
        sub_2621D552C(v23, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v23 + *(*v23 - 24)));
        v24 = std::locale::use_facet(v176, MEMORY[0x277D82680]);
        (v24->__vftable[2].~facet_0)(v24, 10);
        std::locale::~locale(v176);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v22 + *(*v22 - 24)));
        v25 = std::locale::use_facet(v176, MEMORY[0x277D82680]);
        (v25->__vftable[2].~facet_0)(v25, 10);
        std::locale::~locale(v176);
        std::ostream::put();
        std::ostream::flush();
      }

      v177 = 0u;
      v178 = 0u;
      v175 = 0u;
      *&v176[0].__locale_ = 0u;
      v173 = 0u;
      v174 = 0u;
      v26 = *(a1 + 104);
      v166 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v26)
        {
          v27 = 0;
          v28 = *(&v180 + 1);
          v162 = v181;
          v29 = (v181 - *(&v180 + 1)) >> 3;
          if (v29 <= 1)
          {
            v29 = 1;
          }

          v157 = v29;
          v30 = *(a2 + 504);
          do
          {
            v173 = *&v176[0].__locale_;
            if (v162 != v28)
            {
              v31 = v28;
              v32 = v157;
              do
              {
                v33 = *v31++;
                *(&v173 + v33) = 0;
                --v32;
              }

              while (v32);
            }

            v34 = 0;
            v35 = 0;
            v36 = &v173;
            v37 = 1;
            do
            {
              v38 = v37;
              v35 += *(&v191 + v34) * *v36;
              v36 = (&v173 + 8);
              v34 = 1;
              v37 = 0;
            }

            while ((v38 & 1) != 0);
            v39 = *(a2 + 96);
            v40 = *(a2 + 200);
            *(v166 + 4 * v27) = v39 / (v40 + expf(*(a2 + 352) - *(v30 + 4 * v35)));
            for (i = 1; i != -1; --i)
            {
              v42 = (v176[i].__locale_ + 1);
              v176[i].__locale_ = v42;
              if (v42 != *(&v170 + i * 8))
              {
                break;
              }

              v176[i].__locale_ = 0;
            }

            ++v27;
          }

          while (v27 != v26);
        }
      }

      else if (v26)
      {
        v107 = 0;
        v160 = v181;
        v165 = *(&v180 + 1);
        if (((v181 - *(&v180 + 1)) >> 3) <= 1)
        {
          v108 = 1;
        }

        else
        {
          v108 = (v181 - *(&v180 + 1)) >> 3;
        }

        v152 = *(a1 + 64);
        v155 = *(a1 + 56);
        v146 = v108;
        v149 = *(a2 + 504);
        do
        {
          locale = v176[0].__locale_;
          v110 = v176[1].__locale_;
          v173 = *&v176[0].__locale_;
          if (v160 != v165)
          {
            v111 = v165;
            v112 = v146;
            do
            {
              v113 = *v111++;
              *(&v173 + v113) = 0;
              --v112;
            }

            while (v112);
          }

          v114 = 0;
          v115 = 0;
          v116 = &v173;
          v117 = 1;
          do
          {
            v118 = v117;
            v115 += *(&v191 + v114) * *v116;
            v116 = (&v173 + 8);
            v114 = 1;
            v117 = 0;
          }

          while ((v118 & 1) != 0);
          v119 = *(a2 + 96);
          v120 = *(a2 + 200);
          *(v166 + 4 * v110 * v152 + 4 * locale * v155) = v119 / (v120 + expf(*(a2 + 352) - *(v149 + 4 * v115)));
          for (j = 1; j != -1; --j)
          {
            v122 = (v176[j].__locale_ + 1);
            v176[j].__locale_ = v122;
            if (v122 != *(&v170 + j * 8))
            {
              break;
            }

            v176[j].__locale_ = 0;
          }

          ++v107;
        }

        while (v107 != v26);
      }
    }

    else
    {
      v192 = 0uLL;
      v193 = 0uLL;
      v190 = 0uLL;
      v191 = 0uLL;
      v188 = 0uLL;
      v189 = 0uLL;
      v186 = 0uLL;
      v187 = 0uLL;
      v184 = 0uLL;
      v185 = 0uLL;
      v182 = 0uLL;
      v183 = 0uLL;
      v180 = 0uLL;
      v181 = 0uLL;
      v179 = 0uLL;
      v171 = 0uLL;
      v172 = 0uLL;
      v170 = 0uLL;
      sub_2621D96E4(&v179, v5, a2, &v170);
      v55 = 0;
      v56 = &v170;
      v57 = 1;
      do
      {
        v58 = *v56;
        v59 = *(v5 + v55);
        if ((v57 & 1) == 0)
        {
          break;
        }

        v57 = 0;
        v56 = &v170 + 1;
        v55 = 1;
      }

      while (v58 == v59);
      if (v58 != v59)
      {
        v60 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v61 = sub_2621D552C(v60, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v61, " ", 1);
        v62 = MEMORY[0x277D82670];
        v63 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v63, " ", 1);
        sub_2621D552C(v63, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v63 + *(*v63 - 24)));
        v64 = std::locale::use_facet(v176, MEMORY[0x277D82680]);
        (v64->__vftable[2].~facet_0)(v64, 10);
        std::locale::~locale(v176);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v62 + *(*v62 - 24)));
        v65 = std::locale::use_facet(v176, MEMORY[0x277D82680]);
        (v65->__vftable[2].~facet_0)(v65, 10);
        std::locale::~locale(v176);
        std::ostream::put();
        std::ostream::flush();
      }

      v177 = 0u;
      v178 = 0u;
      v175 = 0u;
      *&v176[0].__locale_ = 0u;
      v173 = 0u;
      v174 = 0u;
      v66 = *(a1 + 104);
      v163 = *(a1 + 144);
      v167 = v66;
      if (*(a1 + 136))
      {
        if (v66)
        {
          v67 = 0;
          v68 = *(&v180 + 1);
          v158 = v181;
          if (((v181 - *(&v180 + 1)) >> 3) <= 1)
          {
            v69 = 1;
          }

          else
          {
            v69 = (v181 - *(&v180 + 1)) >> 3;
          }

          v154 = *(a2 + 496);
          v70 = *(a2 + 424);
          v148 = v69;
          v151 = *(a2 + 416);
          v71 = *(a2 + 504);
          do
          {
            v173 = *&v176[0].__locale_;
            if (v158 != v68)
            {
              v72 = v68;
              v73 = v148;
              do
              {
                v74 = *v72++;
                *(&v173 + v74) = 0;
                --v73;
              }

              while (v73);
            }

            v75 = 0;
            v76 = 0;
            v77 = &v173;
            v78 = 1;
            do
            {
              v79 = v78;
              v76 += *(&v191 + v75) * *v77;
              v77 = (&v173 + 8);
              v75 = 1;
              v78 = 0;
            }

            while ((v79 & 1) != 0);
            v82 = (v71 + 4 * v76);
            if (!v154)
            {
              v82 = (v71 + 4 * *(&v173 + 1) * v70 + 4 * v173 * v151);
            }

            v80 = *(a2 + 96);
            v81 = *(a2 + 200);
            *(v163 + 4 * v67) = v80 / (v81 + expf(*(a2 + 352) - *v82));
            for (k = 1; k != -1; --k)
            {
              v84 = (v176[k].__locale_ + 1);
              v176[k].__locale_ = v84;
              if (v84 != *(&v170 + k * 8))
              {
                break;
              }

              v176[k].__locale_ = 0;
            }

            ++v67;
          }

          while (v67 != v167);
        }
      }

      else if (v66)
      {
        v123 = 0;
        v156 = v181;
        v161 = *(&v180 + 1);
        if (((v181 - *(&v180 + 1)) >> 3) <= 1)
        {
          v124 = 1;
        }

        else
        {
          v124 = (v181 - *(&v180 + 1)) >> 3;
        }

        v150 = *(a1 + 64);
        v153 = *(a1 + 56);
        v147 = *(a2 + 496);
        v145 = *(a2 + 416);
        v143 = v124;
        v144 = *(a2 + 424);
        v125 = *(a2 + 504);
        do
        {
          v126 = v176[0].__locale_;
          v127 = v176[1].__locale_;
          v173 = *&v176[0].__locale_;
          if (v156 != v161)
          {
            v128 = v161;
            v129 = v143;
            do
            {
              v130 = *v128++;
              *(&v173 + v130) = 0;
              --v129;
            }

            while (v129);
          }

          v131 = 0;
          v132 = 0;
          v133 = &v173;
          v134 = 1;
          do
          {
            v135 = v134;
            v132 += *(&v191 + v131) * *v133;
            v133 = (&v173 + 8);
            v131 = 1;
            v134 = 0;
          }

          while ((v135 & 1) != 0);
          v136 = v126 * v153;
          v139 = (v125 + 4 * v132);
          if (!v147)
          {
            v139 = (v125 + 4 * *(&v173 + 1) * v144 + 4 * v173 * v145);
          }

          v137 = *(a2 + 96);
          v138 = *(a2 + 200);
          *(v163 + 4 * v127 * v150 + 4 * v136) = v137 / (v138 + expf(*(a2 + 352) - *v139));
          for (m = 1; m != -1; --m)
          {
            v141 = (v176[m].__locale_ + 1);
            v176[m].__locale_ = v141;
            if (v141 != *(&v170 + m * 8))
            {
              break;
            }

            v176[m].__locale_ = 0;
          }

          ++v123;
        }

        while (v123 != v167);
      }
    }

    sub_2621C57C8(&v179);
  }

  v142 = *MEMORY[0x277D85DE8];
}

void sub_2623282E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::locale a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  std::locale::~locale(&a31);
  sub_2621C57C8(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_262328314(uint64_t a1, const void **a2)
{
  v48[1] = *MEMORY[0x277D85DE8];
  sub_26229F95C(a1 + 272, a2);
  v3 = *(a1 + 8);
  if (v3 && *(v3 + 64) == 1)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  sub_2622A00B8(*(a1 + 280), *(a1 + 144), v4);
  v5 = *(a1 + 168);
  v6 = *(a1 + 176);
  if (v5 != v6)
  {
    v29 = *MEMORY[0x277CC4DE8];
    v7 = *MEMORY[0x277CBECE8];
    do
    {
      v8 = sub_2622A0200(a1 + 272, v5);
      v10 = *v8;
      v11 = *(*v8 + 8);
      v12 = *(*v8 + 16);
      v45 = v12;
      v46 = v11;
      v13 = *(v10 + 24);
      pixelBufferOut = 0;
      v44 = v13;
      if (v8[7] == 3)
      {
        v14 = 1278226536;
      }

      else
      {
        v14 = 1278226534;
      }

      v47 = v29;
      v48[0] = MEMORY[0x277CBEC10];
      v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v48, &v47, 1, v29);
      CVPixelBufferCreate(v7, v13, v12 * v11, v14, v15, &pixelBufferOut);
      v16 = pixelBufferOut;
      v31 = v5;
      *(sub_2622EB800(a1 + 344, v5) + 56) = v16;
      sub_2622A015C(*(a1 + 280), v5, pixelBufferOut);
      sub_262293FD4(v30, &v46, &v45, &v44);
      sub_262226244(&v31, v30);
      *&v30[0] = v5;
      v17 = sub_2622EB8C8(a1 + 368, v5);
      v18 = v17;
      v19 = v33;
      *(v17 + 64) = v32;
      *(v17 + 80) = v19;
      *(v17 + 96) = v34;
      v20 = v38;
      *(v17 + 144) = v37;
      *(v17 + 160) = v20;
      v21 = v36;
      *(v17 + 112) = v35;
      *(v17 + 128) = v21;
      v23 = v39;
      v22 = v40;
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = *(v17 + 184);
      *(v18 + 176) = v23;
      *(v18 + 184) = v22;
      if (v24)
      {
        sub_2621D1B78(v24);
      }

      *(v18 + 200) = v42;
      *(v18 + 192) = v41;
      v31 = &unk_2874EF0D8;
      if (v40)
      {
        sub_2621D1B78(v40);
      }

      v5 += 3;
    }

    while (v5 != v6);
  }

  v25 = *(a1 + 280);
  v26 = *(a1 + 288);
  sub_2622A002C();
  v27 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_2623285CC(uint64_t a1)
{
  sub_2621DEEDC(a1);

  JUMPOUT(0x266727420);
}

void sub_262328608(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *(a1 + 16);
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      sub_2621DED6C(a1);
      operator delete(*a1);
      v8 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= a4)
    {
      v11 = a4;
    }

    if (v10 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v11;
    }

    sub_2622CA938(a1, v12);
  }

  v13 = *(a1 + 8);
  v14 = v13 - v9;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v9) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v9++, v6++);
      }

      while (v6 != a3);
      v13 = *(a1 + 8);
    }

    while (v13 != v9)
    {
      v16 = *(v13 - 1);
      v13 -= 3;
      if (v16 < 0)
      {
        operator delete(*v13);
      }
    }

    *(a1 + 8) = v9;
  }

  else
  {
    if (v13 == v9)
    {
      v15 = __str;
    }

    else
    {
      v15 = (__str + v14);
      do
      {
        std::string::operator=(v9++, v6++);
        v14 -= 24;
      }

      while (v14);
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = sub_2622CA988(a1, v15, a3, v13);
  }
}

void *sub_2623287AC(void *result, float32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[1].i32[0];
  v5 = result[5];
  v6 = result[6];
  if (v5 != v6)
  {
    do
    {
      v7 = *(v5 + 40);
      v8 = *(v7 + 16);
      v9 = vsub_f32(a2[1], *a2);
      v10 = vaddv_f32(vmul_f32(vsub_f32(*&v8, *a2), v9));
      v11 = vaddv_f32(vmul_f32(v9, v9));
      if (v11 < 0.000001)
      {
        v11 = 0.000001;
      }

      v12 = vmla_n_f32(*a2, v9, v10 / v11);
      *(v7 + 24) = DWORD2(v8);
      *(v7 + 16) = v12;
      v13 = *(v5 + 40);
      v14 = *(v13 + 64);
      v15 = vsub_f32(a2[1], *a2);
      v16 = vaddv_f32(vmul_f32(vsub_f32(*&v14, *a2), v15));
      v17 = vaddv_f32(vmul_f32(v15, v15));
      if (v17 < 0.000001)
      {
        v17 = 0.000001;
      }

      v18 = vmla_n_f32(*a2, v15, v16 / v17);
      *(v13 + 72) = DWORD2(v14);
      *(v13 + 64) = v18;
      v5 += 120;
    }

    while (v5 != v6);
    v5 = result[5];
  }

  *(*(v5 + 40) + 16) = v2;
  *(*(result[6] - 80) + 64) = v3;
  *(*(result[8] + 40) + 16) = v3;
  *(*(result[8] + 40) + 64) = v3;
  *(*(result[8] + 160) + 16) = v3;
  *(*(result[8] + 160) + 64) = v2;
  *(*(result[8] + 280) + 16) = v2;
  *(*(result[8] + 280) + 64) = v2;
  return result;
}

uint64_t sub_2623288BC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (v7 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_2621CBEB0();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x155555555555555)
    {
      v10 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v27 = a1;
    if (v10)
    {
      if (v10 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v24 = 0;
    v25 = 96 * v7;
    v26 = 96 * v7;
    sub_26232B028(96 * v7, a2);
    v11 = *a1;
    v12 = a1[1];
    v13 = 96 * v7 - &v12[-*a1];
    *&v26 = 96 * v7 + 96;
    if (v12 != v11)
    {
      v14 = 0;
      v15 = v25 - 32 * ((v12 - v11) >> 5) - 96;
      v16 = v11;
      v17 = v13;
      do
      {
        sub_26232B028(v17, v16);
        v16 += 96;
        v17 += 96;
        v14 -= 96;
        v15 += 96;
      }

      while (v16 != v12);
      v18 = v11;
      v19 = v11;
      do
      {
        v20 = *v19;
        v19 += 96;
        (*v20)(v11);
        v18 += 96;
        v11 = v19;
      }

      while (v19 != v12);
    }

    v21 = *a1;
    *a1 = v13;
    v22 = a1[2];
    v23 = v26;
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    result = sub_26232C670(&v24);
    v6 = v23;
  }

  else
  {
    result = sub_26232B028(a1[1], a2);
    v6 = v4 + 96;
    a1[1] = v4 + 96;
  }

  a1[1] = v6;
  return result;
}

void sub_262328AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_26232C670(va);
  _Unwind_Resume(a1);
}

void sub_262328B1C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v236 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  v164[0] = &unk_2874EEA90;
  v176 = &unk_2874EEAB0;
  v177 = &unk_2874EEAD0;
  v180 = &unk_2874EEAF0;
  v184 = 0;
  v183 = 0u;
  v185 = &unk_2874EEB10;
  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v192 = 0u;
  v193 = 257;
  v194 = &unk_2874EEB10;
  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  v195 = 0u;
  v196 = 0u;
  v201 = 0u;
  v202 = 257;
  v203 = &unk_2874EEB10;
  v208 = 0u;
  v209 = 0u;
  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v210 = 0u;
  v211 = 257;
  v212 = &unk_2874EEDA0;
  v217 = 0u;
  v218 = 0u;
  v215 = 0u;
  v216 = 0u;
  v213 = 0u;
  v214 = 0u;
  v219 = 0u;
  v220 = 257;
  v221 = &unk_2874EEDA0;
  v226 = 0u;
  v227 = 0u;
  v224 = 0u;
  v225 = 0u;
  v222 = 0u;
  v223 = 0u;
  v228 = 0u;
  v229 = 257;
  v8 = v7;
  objc_msgSend_quad(v8, v9, v10);
  v129 = v11;
  objc_msgSend_quad(v8, v12, v13);
  v178 = v129;
  v179 = v14;
  memset(v140, 0, 18);
  v181 = 0;
  v182[0] = 0;
  *(v182 + 6) = *&v140[10];
  objc_msgSend_quad(v8, v15, v16);
  v130 = v17;
  objc_msgSend_quad(v8, v18, v19);
  v147 = &unk_2874EE848;
  *&v148 = 0.0;
  v139 = &unk_2874EE868;
  v142 = &unk_2874EE848;
  *&v140[8] = v130;
  v141 = v20;
  v143 = 0;
  sub_262309468(&v183, &v139);
  objc_msgSend_quad(v8, v21, v22);
  v131 = v23;
  objc_msgSend_quad(v8, v24, v25);
  v147 = &unk_2874EE848;
  v148 = 2;
  v139 = &unk_2874EE868;
  v142 = &unk_2874EE848;
  *&v140[8] = v131;
  v141 = v26;
  v143 = 2;
  sub_262309468(&v183, &v139);
  objc_msgSend_quad(v8, v27, v28);
  v132 = v29;
  objc_msgSend_quad(v8, v30, v31);
  v147 = &unk_2874EE848;
  v148 = 2;
  v139 = &unk_2874EE868;
  v142 = &unk_2874EE848;
  *&v140[8] = v132;
  v141 = v32;
  v143 = 2;
  sub_262309468(&v183, &v139);
  objc_msgSend_quad(v8, v33, v34);
  v133 = v35;
  objc_msgSend_quad(v8, v36, v37);
  v147 = &unk_2874EE848;
  v148 = 2;
  v139 = &unk_2874EE868;
  v142 = &unk_2874EE848;
  *&v140[8] = v133;
  v141 = v38;
  v143 = 2;
  sub_262309468(&v183, &v139);

  (*(*a2 + 24))(&v139, a2, v6, v8, v164);
  if (v139)
  {
    kdebug_trace();
    v126 = v8;
    sub_2621F6C88(&v136, a2 + 16, v140, &v145, v164);
    *(a1 + 40) = 0u;
    *a1 = &unk_2874EEA70;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0xFFFFFFFF00000000;
    *(a1 + 32) = 0;
    *(a1 + 36) = 0;
    v40 = v137;
    v39 = v138;
    if (v137 != v138)
    {
      v127 = v167 / 2;
      do
      {
        v41 = *(v40 + 32);
        if ((*(v40 + 40) - v41) >= 0x21)
        {
          v42 = *(v41 + 40);
          HIDWORD(v43) = v169;
          *&v42 = (v127 - v167 / 2) * v165.f32[0];
          *&v43 = vadd_f32(v170, vmla_n_f32(vmul_n_f32(v172, vmuls_lane_f32((HIDWORD(*(v41 + 8)) - v168 / 2), v165, 1)), v173, *&v42));
          *&v44 = vadd_f32(v170, vmla_n_f32(vmul_n_f32(v172, vmuls_lane_f32((HIDWORD(v42) - v168 / 2), v165, 1)), v173, *&v42));
          *&v42 = v171 + ((v175 + ~*(v41 + 40)) * v174);
          *(&v43 + 2) = v171 + ((v175 + ~*(v41 + 8)) * v174);
          v233[0] = &unk_2874EEFE0;
          v234 = v43;
          v235 = *(v41 + 16);
          v230[0] = &unk_2874EEFE0;
          *(&v44 + 1) = __PAIR64__(v166, v42);
          v231 = v44;
          v232 = *(v41 + 48);
          v147 = &unk_2874EF000;
          LOBYTE(v148) = 0;
          v149 = 0;
          LOBYTE(v150) = 0;
          v151 = 0;
          LOBYTE(v152) = 0;
          v153 = 0;
          v154 = 0;
          v155 = 0;
          v157 = 0;
          v158 = 0;
          v156 = 0;
          v159 = 0;
          v160 = 0u;
          v161 = 0u;
          v162 = 0u;
          sub_262324C6C(&v156, v233);
          sub_262324C6C(&v156, v230);
          v45 = v39;
          v159 = *(v40 + 56);
          v46 = *(&v161 + 1);
          *(&v160 + 1) = v160;
          if (v162 != *(&v161 + 1))
          {
            v47 = v162 - 16;
            v48 = (v162 - 16);
            v49 = (v162 - 16);
            do
            {
              v50 = *v49;
              v49 -= 2;
              (*v50)(v48);
              v47 -= 16;
              v51 = v48 == v46;
              v48 = v49;
            }

            while (!v51);
          }

          *&v162 = v46;
          v53 = *(v40 + 64);
          v52 = *(v40 + 72);
          while (v53 != v52)
          {
            sub_2621C8F2C(&v160, v53++);
          }

          v55 = *(v40 + 88);
          v54 = *(v40 + 96);
          if (v55 != v54)
          {
            v56 = v162;
            do
            {
              if (v56 >= *(&v162 + 1))
              {
                v58 = (v56 - *(&v161 + 1)) >> 4;
                if ((v58 + 1) >> 60)
                {
                  sub_2621CBEB0();
                }

                v59 = (*(&v162 + 1) - *(&v161 + 1)) >> 3;
                if (v59 <= v58 + 1)
                {
                  v59 = v58 + 1;
                }

                if (*(&v162 + 1) - *(&v161 + 1) >= 0x7FFFFFFFFFFFFFF0uLL)
                {
                  v60 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v60 = v59;
                }

                v163[4] = &v161 + 8;
                if (v60)
                {
                  sub_2622053EC(v60);
                }

                v61 = 16 * v58;
                v163[0] = 0;
                v163[1] = v61;
                v163[3] = 0;
                *v61 = &unk_2874EF020;
                v62 = *(v55 + 8);
                *(v61 + 11) = *(v55 + 11);
                *(v61 + 8) = v62;
                v163[2] = 16 * v58 + 16;
                sub_262205434(&v161 + 1, v163);
                v56 = v162;
                sub_262205544(v163);
              }

              else
              {
                *v56 = &unk_2874EF020;
                v57 = *(v55 + 8);
                *(v56 + 11) = *(v55 + 11);
                *(v56 + 8) = v57;
                v56 += 16;
              }

              *&v162 = v56;
              v55 += 16;
            }

            while (v55 != v54);
          }

          if (*(v40 + 12) == 1)
          {
            *&v148 = v171 + ((v175 + ~*(v40 + 8)) * v174);
            v149 = 1;
          }

          v39 = v45;
          if (*(v40 + 20) == 1)
          {
            v150 = v171 + ((v175 + ~*(v40 + 16)) * v174);
            v151 = 1;
          }

          if (*(v40 + 28) == 1)
          {
            v152 = v171 + ((v175 + ~*(v40 + 24)) * v174);
            v153 = 1;
          }

          sub_262324E74((a1 + 40), &v147);
          sub_2622E92D4(a1);
          sub_2622E992C(&v147);
        }

        v40 += 112;
      }

      while (v40 != v39);
      v64 = *(a1 + 40);
      v63 = *(a1 + 48);
      if (v63 != v64)
      {
        v65 = *(v64 + 40);
        v66 = *(v63 - 80);
        v68 = *(a1 + 64);
        v67 = *(a1 + 72);
        v69 = (a1 + 64);
        if (v67 != v68)
        {
          v70 = v67 - 15;
          v71 = v67 - 15;
          v72 = v67 - 15;
          do
          {
            v73 = *v72;
            v72 -= 15;
            (*v73)(v71);
            v70 -= 15;
            v51 = v71 == v68;
            v71 = v72;
          }

          while (!v51);
        }

        *(a1 + 72) = v68;
        v233[0] = &unk_2874EEFE0;
        v234 = *(v66 + 64);
        v74 = v234;
        v235 = *(v66 + 80);
        *(&v74 + 2) = v171;
        v230[0] = &unk_2874EEFE0;
        v231 = v74;
        v232 = 1065353216;
        v147 = &unk_2874EF000;
        LOBYTE(v148) = 0;
        v149 = 0;
        LOBYTE(v150) = 0;
        v151 = 0;
        LOBYTE(v152) = 0;
        v153 = 0;
        v154 = 0;
        v155 = 0;
        v157 = 0;
        v158 = 0;
        v156 = 0;
        v159 = 0;
        v160 = 0u;
        v161 = 0u;
        v162 = 0u;
        sub_262324C6C(&v156, v233);
        sub_262324C6C(&v156, v230);
        sub_262324E74(v69, &v147);
        sub_2622E992C(&v147);
        v233[0] = &unk_2874EEFE0;
        v75 = *(v66 + 64);
        *(&v75 + 2) = v171;
        v234 = v75;
        v235 = 1065353216;
        v230[0] = &unk_2874EEFE0;
        v76 = *(v65 + 16);
        *(&v76 + 2) = v171;
        v231 = v76;
        v232 = 1065353216;
        v147 = &unk_2874EF000;
        LOBYTE(v148) = 0;
        v149 = 0;
        LOBYTE(v150) = 0;
        v151 = 0;
        LOBYTE(v152) = 0;
        v153 = 0;
        v154 = 0;
        v155 = 0;
        v157 = 0;
        v158 = 0;
        v156 = 0;
        v159 = 0;
        v160 = 0u;
        v161 = 0u;
        v162 = 0u;
        sub_262324C6C(&v156, v233);
        sub_262324C6C(&v156, v230);
        sub_262324E74(v69, &v147);
        sub_2622E992C(&v147);
        v77 = *(v65 + 16);
        v78 = v77;
        *(&v78 + 2) = v171;
        v233[0] = &unk_2874EEFE0;
        v234 = v78;
        v235 = 1065353216;
        v230[0] = &unk_2874EEFE0;
        v231 = v77;
        v232 = *(v65 + 32);
        v147 = &unk_2874EF000;
        LOBYTE(v148) = 0;
        v149 = 0;
        LOBYTE(v150) = 0;
        v151 = 0;
        LOBYTE(v152) = 0;
        v153 = 0;
        v154 = 0;
        v155 = 0;
        v157 = 0;
        v158 = 0;
        v156 = 0;
        v159 = 0;
        v160 = 0u;
        v161 = 0u;
        v162 = 0u;
        sub_262324C6C(&v156, v233);
        sub_262324C6C(&v156, v230);
        sub_262324E74(v69, &v147);
        sub_2622E992C(&v147);
      }
    }

    v79 = v183;
    if (*(&v183 + 1) - v183 < 0x100uLL)
    {
      goto LABEL_67;
    }

    v80 = *(&v183 + 1);
    v81 = *(v183 + 16);
    v82 = *(*(&v183 + 1) - 224);
    v83 = *(a1 + 40);
    v84 = *(a1 + 48);
    if (v83 != v84)
    {
      v85 = vsub_f32(*&v82, *&v81);
      v86 = vaddv_f32(vmul_f32(v85, v85));
      if (v86 < 0.000001)
      {
        v86 = 0.000001;
      }

      do
      {
        v87 = *(v83 + 40);
        v88 = *(v83 + 48);
        while (v87 != v88)
        {
          v89 = *(v87 + 16);
          *(v87 + 24) = DWORD2(v89);
          *(v87 + 16) = vmla_n_f32(*&v81, v85, vaddv_f32(vmul_f32(vsub_f32(*&v89, *&v81), v85)) / v86);
          v87 += 48;
        }

        v83 += 120;
      }

      while (v83 != v84);
    }

    v90 = *(a1 + 64);
    v91 = *(a1 + 72);
    if (v90 != v91)
    {
      v92 = vsub_f32(*&v82, *&v81);
      v93 = vaddv_f32(vmul_f32(v92, v92));
      if (v93 < 0.000001)
      {
        v93 = 0.000001;
      }

      do
      {
        v94 = *(v90 + 40);
        v95 = *(v90 + 48);
        while (v94 != v95)
        {
          v96 = *(v94 + 16);
          *(v94 + 24) = DWORD2(v96);
          *(v94 + 16) = vmla_n_f32(*&v81, v92, vaddv_f32(vmul_f32(vsub_f32(*&v96, *&v81), v92)) / v93);
          v94 += 48;
        }

        v90 += 120;
      }

      while (v90 != v91);
    }

    v128 = v82;
    v134 = v81;
    v97 = sub_26233D780(v164, *(v80 - 224));
    v98 = *(a1 + 40);
    v99 = *(a1 + 48);
    if (v99 == v98)
    {
      goto LABEL_67;
    }

    v100 = HIDWORD(v97);
    v101 = sub_26233D780(v164, v79[2]) >> 32;
    v102 = *(v98 + 40);
    if ((sub_26233D780(v164, *v102[4].f32) >> 32) >= v101)
    {
      if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 72) - *(a1 + 64)) >> 3) < 2)
      {
LABEL_67:
        kdebug_trace();
        v136 = &unk_2874EEB30;
        v147 = &v137;
        sub_2621FF4B4(&v147);
        v8 = v126;
        goto LABEL_69;
      }

      v103 = v102[1];
      v104 = COERCE_FLOAT(v102[1].i64[1]);
      v105 = COERCE_FLOAT(v102[4].i64[1]);
      v106 = vsubq_f32(v102[4], v103).f32[0];
      v107 = fabsf(v106);
      v108 = v104 + (((*&v134 - v103.f32[0]) * (v105 - v104)) / v106);
      v109 = (v104 + v105) * 0.5;
      v102[1].i32[2] = v103.i32[2];
      if (v107 < 0.000001)
      {
        v110 = v109;
      }

      else
      {
        v110 = v108;
      }

      v102[1].i64[0] = v134;
      *(*(*(a1 + 40) + 40) + 24) = v110;
      v111 = *(a1 + 64);
      v112 = 0xEEEEEEEF00000000 * ((*(a1 + 72) - v111) >> 3);
      *(*(v111 + 120 * ((v112 - 0x200000000) >> 32) + 40) + 64) = v134;
      v113 = ((v112 - 0x100000000) >> 25) - ((v112 - 0x100000000) >> 29);
      *(*(*(a1 + 64) + v113 + 40) + 16) = v134;
      *(*(*(a1 + 64) + v113 + 40) + 64) = v134;
      *(*(*(a1 + 64) + v113 + 40) + 72) = v110;
      v98 = *(a1 + 40);
      v99 = *(a1 + 48);
    }

    v114 = -286331153 * ((v99 - v98) >> 3) - 1;
    v115 = *(v98 + 120 * v114 + 40);
    if ((sub_26233D780(v164, *v115[1].f32) >> 32) <= v100)
    {
      v116 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 72) - *(a1 + 64)) >> 3);
      if (v116 >= 3)
      {
        v117 = v115[1];
        v118 = COERCE_FLOAT(v115[1].i64[1]);
        v119 = v115[4];
        v120 = COERCE_FLOAT(v115[4].i64[1]);
        v121 = vsubq_f32(v119, v117).f32[0];
        v122 = v118 + (((*&v128 - v117.f32[0]) * (v120 - v118)) / v121);
        v123 = (v118 + v120) * 0.5;
        v115[4].i32[2] = v119.i32[2];
        if (fabsf(v121) < 0.000001)
        {
          v122 = v123;
        }

        v115[4].i64[0] = v128;
        *(*(*(a1 + 40) + 120 * v114 + 40) + 72) = v122;
        *(*(*(a1 + 64) + 120 * (((v116 << 32) - 0x200000000) >> 32) + 40) + 16) = v128;
        v124 = (((v116 << 32) - 0x300000000) >> 25) - (((v116 << 32) - 0x300000000) >> 29);
        *(*(*(a1 + 64) + v124 + 40) + 16) = v128;
        *(*(*(a1 + 64) + v124 + 40) + 24) = v122;
        *(*(*(a1 + 64) + v124 + 40) + 64) = v128;
      }
    }

    goto LABEL_67;
  }

  *a1 = &unk_2874EEA70;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0xFFFFFFFF00000000;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
LABEL_69:
  v145 = &unk_2874EF0B8;
  if (v146)
  {
    sub_2621D1B78(v146);
  }

  *v140 = &unk_2874EF0B8;
  if (v144)
  {
    sub_2621D1B78(v144);
  }

  sub_26232C2BC(v164);

  v125 = *MEMORY[0x277D85DE8];
}

void sub_262329D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void **a63)
{
  sub_262324EC8(a17);
  sub_2621FF4B4(&a63);
  sub_26232C410(&a23);
  sub_26232C2BC(&STACK[0x250]);

  _Unwind_Resume(a1);
}

void sub_262329E20(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v12 = (v3 - *a1) >> 7;
    v13 = v12 + 1;
    if ((v12 + 1) >> 57)
    {
      sub_2621CBEB0();
    }

    v14 = v4 - *a1;
    if (v14 >> 6 > v13)
    {
      v13 = v14 >> 6;
    }

    if (v14 >= 0x7FFFFFFFFFFFFF80)
    {
      v15 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      sub_26220F9CC(v15);
    }

    v16 = (v12 << 7);
    v17 = *a2;
    v18 = a2[1];
    v19 = a2[3];
    v16[2] = a2[2];
    v16[3] = v19;
    *v16 = v17;
    v16[1] = v18;
    v20 = a2[4];
    v21 = a2[5];
    v22 = a2[7];
    v16[6] = a2[6];
    v16[7] = v22;
    v16[4] = v20;
    v16[5] = v21;
    v11 = (v12 << 7) + 128;
    v23 = *(a1 + 8) - *a1;
    v24 = v16 - v23;
    memcpy(v16 - v23, *a1, v23);
    v25 = *a1;
    *a1 = v24;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    v3[2] = a2[2];
    v3[3] = v7;
    *v3 = v5;
    v3[1] = v6;
    v8 = a2[4];
    v9 = a2[5];
    v10 = a2[7];
    v3[6] = a2[6];
    v3[7] = v10;
    v3[4] = v8;
    v3[5] = v9;
    v11 = (v3 + 8);
  }

  *(a1 + 8) = v11;
}

void sub_262329F24(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7, double a8, int8x16_t a9)
{
  if (a2 != a3)
  {
    v9 = a3;
    v10 = a2;
LABEL_3:
    v11 = v10[5];
    if (v10[6] - v11 == 240)
    {
      v12 = *(v11 + 40);
      v13 = *(v12 + 72);
      if (vabds_f32(*(v12 + 24), v13) < 0.05)
      {
        v14 = *(v11 + 160);
        v15 = *(v14 + 24);
        if (vabds_f32(v15, *(v14 + 72)) < 0.05)
        {
          if (v13 < v15 && *(v11 + 64) < 0.5)
          {
            *(v12 + 24) = v15;
            *(*(v11 + 40) + 72) = v15;
              ;
            }
          }

          else if (v15 < v13 && *(v11 + 184) < 0.5)
          {
            *(v14 + 24) = v13;
            *(*(v11 + 160) + 72) = v13;
              ;
            }
          }
        }
      }
    }

    v18 = v10[5];
    if (0xEEEEEEEEEEEEEEEFLL * ((v10[6] - v18) >> 3) < 2)
    {
      goto LABEL_198;
    }

    v19 = 224;
    v20 = 1;
    while (1)
    {
      v21 = v18 + v19;
      v22 = *(v18 + v19 - 184);
      v23 = (v18 + v19 - 104);
      v24 = (v18 + v19 - 224);
      v25 = *(v22 + 24);
      v26 = *(v22 + 72);
      v27 = *(v18 + v19 - 64);
      v28 = *(v27 + 24);
      v29 = *(v27 + 72);
      v213 = &unk_2874EF000;
      v214[0] = 0;
      v214[4] = 0;
      v214[8] = 0;
      v214[12] = 0;
      v214[16] = 0;
      v214[20] = 0;
      v214[24] = 0;
      v214[28] = 0;
      memset(v215, 0, sizeof(v215));
      v216 = 0;
      HIDWORD(v30) = 0;
      memset(v217, 0, sizeof(v217));
      v206 = &unk_2874EF000;
      v207[0] = 0;
      v207[4] = 0;
      v207[8] = 0;
      v207[12] = 0;
      v207[16] = 0;
      v207[20] = 0;
      v207[24] = 0;
      v207[28] = 0;
      memset(v208, 0, sizeof(v208));
      v209 = 0.0;
      v31 = vabds_f32(v25, v26);
      v210 = 0u;
      v211 = 0u;
      v212 = 0u;
      if (v31 < 0.001)
      {
        v30 = vabds_f32(v28, v29);
        if (v30 > 0.1)
        {
          a9.i32[0] = *(a1 + 20);
          if (vabds_f32(v26, v28) < *a9.i32)
          {
            break;
          }
        }
      }

      if (v31 > 0.1 && vabds_f32(v28, v29) < 0.001 && vabds_f32(v26, v28) < *(a1 + 20))
      {
        v34 = v18 + v19;
        v35 = *(v18 + v19 - 216);
        *&v214[13] = *(v18 + v19 - 203);
        *v214 = v35;
        if (v24 == &v213)
        {
          v216 = *(v34 - 160);
        }

        else
        {
          sub_262349150(v215, *(v21 - 184), *(v34 - 176), 0xAAAAAAAAAAAAAAABLL * ((*(v34 - 176) - *(v21 - 184)) >> 4));
          v216 = *(v18 + v19 - 160);
          sub_2621CA9DC(v217, *(v18 + v19 - 152), *(v18 + v19 - 144), (*(v18 + v19 - 144) - *(v18 + v19 - 152)) >> 2);
          sub_2622069E0(&v217[1] + 1, *(v18 + v19 - 128), *(v18 + v19 - 120), (*(v18 + v19 - 120) - *(v18 + v19 - 128)) >> 4);
        }

        v40 = *(v18 + v19 - 96);
        *&v207[13] = *(v18 + v19 - 83);
        *v207 = v40;
        if (v23 != &v206)
        {
          sub_262349150(v208, *(v21 - 64), *(v18 + v19 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v18 + v19 - 56) - *(v21 - 64)) >> 4));
          v209 = *(v18 + v19 - 40);
          sub_2621CA9DC(&v210, *(v18 + v19 - 32), *(v18 + v19 - 24), (*(v18 + v19 - 24) - *(v18 + v19 - 32)) >> 2);
          v38 = 96;
          v37 = 104;
LABEL_39:
          sub_2622069E0(&v211 + 1, *(v18 + v19 + v38 - 104), *(v18 + v19 + v37 - 104), (*(v18 + v19 + v37 - 104) - *(v18 + v19 + v38 - 104)) >> 4);
LABEL_42:
          v41 = *(v215[0] + 1);
          v42 = COERCE_FLOAT(*(v215[0] + 3));
          v44 = *(v215[0] + 4);
          v43 = *(v208[0] + 6);
          *&v30 = v43 - v42;
          *v44.f32 = vsub_f32(*v44.f32, *&v41);
          v45 = vmla_n_f32(*(v215[0] + 16), *v44.f32, (v43 - v42) / ((COERCE_FLOAT(*(v215[0] + 9)) - v42) + 0.00000011921));
          v46 = vsub_f32(v45, *(v215[0] + 64));
          if (vaddv_f32(vmul_f32(vsub_f32(v45, *&v41), v46)) <= 0.0 || (v46 = vsub_f32(v45, *(v208[0] + 64)), vaddv_f32(vmul_f32(vsub_f32(v45, *(v208[0] + 16)), v46)) <= 0.0))
          {
            v201 = *(*(v21 - 184) + 64);
            v202 = v45;
            sub_2623493F4(&v204, a1, *(&v211 + 1), v212, *&v201, *&v46, v44, *&v45, v30, a9);
            v47 = vsub_f32(*&v201, v202);
            if (sqrtf(vaddv_f32(vmul_f32(v47, v47))) <= 0.5 || (v205 & 1) == 0 && v209 <= 0.5)
            {
              *(*(v21 - 184) + 64) = v202;
              *(*(v21 - 184) + 72) = v43;
              *(*(v21 - 64) + 16) = v202;
              *(*(v21 - 64) + 24) = v43;
            }
          }

          goto LABEL_48;
        }

        v39 = 64;
LABEL_41:
        v209 = *(v18 + v19 + v39 - 104);
        goto LABEL_42;
      }

LABEL_48:
      sub_2622E992C(&v206);
      sub_2622E992C(&v213);
      ++v20;
      v18 = v10[5];
      v53 = v10[6];
      v54 = 0xEEEEEEEEEEEEEEEFLL * ((v53 - v18) >> 3);
      v19 += 120;
      if (v54 <= v20)
      {
        if (v54 < 2 || v53 == v18)
        {
          goto LABEL_80;
        }

        v55 = 0;
        v56 = 0;
        v57 = 0;
        while (2)
        {
          v58 = v18 + v55;
          v59 = *(v18 + v55 + 40);
          v49.i32[0] = v59[4].i32[2];
          v48.f32[0] = vabds_f32(v59[1].f32[2], v49.f32[0]);
          if (v48.f32[0] < 0.05)
          {
            v49 = v59[4];
            v48 = vsubq_f32(v59[1], v49);
            v48.i64[0] = vmulq_f32(v48, v48).u64[0];
            v48.f32[0] = sqrtf(vaddv_f32(*v48.f32));
            v49.i32[0] = *(v58 + 64);
            if (v48.f32[0] <= 0.5 || v49.f32[0] <= 0.5)
            {
              sub_2623493F4(&v213, a1, *(v18 + v55 + 96), *(v18 + v55 + 104), *v48.i64, *v49.i64, v50, *v51.i64, v52, a9);
              if (v214[0] != 1 || (v48.i32[0] = *(v58 + 64), v48.f32[0] <= 0.5))
              {
                if (v56)
                {
                  if (v56 == v54 - 1)
                  {
                    v61 = *(v18 + v55 - 80);
                    v48 = v61[1];
                    v50 = v61[4];
                    v62 = *(v58 + 40);
                    v51 = v62[1];
                    v49 = v62[4];
                    v63 = vsub_f32(*v48.f32, *v50.f32);
                    v64 = vmul_f32(v63, v63);
                    v65 = vsub_f32(*v51.f32, *v49.f32);
                    v66 = vmul_f32(v65, v65);
                    v67 = vsqrt_f32(vadd_f32(vzip1_s32(v64, v66), vzip2_s32(v64, v66)));
                    *a9.i8 = vdup_lane_s32(v67, 1);
                    v52 = COERCE_DOUBLE(vmvn_s8(vcgt_f32(v67, *a9.i8)));
                    if ((LOBYTE(v52) & 1) == 0)
                    {
                      v52 = COERCE_DOUBLE(vmovn_s32(vmvnq_s8(vcgtq_f32(v48, v50))));
                      if ((BYTE4(v52) & 1) == 0)
                      {
                        *v51.f32 = vmovn_s32(vmvnq_s8(vcgeq_f32(v50, v51)));
                        if ((v51.i8[4] & 1) == 0)
                        {
                          LODWORD(v52) = v50.i32[2];
                          v50 = vsubq_f32(v50, v48);
                          *a9.i64 = fabsf(v50.f32[0]);
                          v48.i64[0] = vsubq_f32(v49, v48).u64[0];
                          v48.f32[0] = v48.f32[2] + (((*&v52 - v48.f32[2]) * v48.f32[0]) / v50.f32[0]);
                          v49.f32[0] = (v48.f32[2] + *&v52) * 0.5;
                          if (*a9.i64 < 0.000001)
                          {
                            v51.f32[0] = (v48.f32[2] + *&v52) * 0.5;
                          }

                          else
                          {
                            v51.f32[0] = v48.f32[0];
                          }

                          goto LABEL_74;
                        }
                      }
                    }
                  }
                }

                else
                {
                  v68 = *(v18 + 160);
                  v48 = v68[1];
                  v50 = v68[4];
                  v62 = *(v58 + 40);
                  v49 = v62[1];
                  v51 = v62[4];
                  v69 = vsub_f32(*v49.f32, *v51.f32);
                  v70 = vmul_f32(v69, v69);
                  v71 = vsub_f32(*v48.f32, *v50.f32);
                  v72 = vmul_f32(v71, v71);
                  v73 = vsqrt_f32(vadd_f32(vzip1_s32(v72, v70), vzip2_s32(v72, v70)));
                  *a9.i8 = vdup_lane_s32(v73, 1);
                  v52 = COERCE_DOUBLE(vcgt_f32(v73, *a9.i8));
                  if (LOBYTE(v52))
                  {
                    *v51.f32 = vmovn_s32(vcgeq_f32(v48, v51));
                    if (v51.i8[4])
                    {
                      *v51.f32 = vmovn_s32(vcgtq_f32(v50, v48));
                      if (v51.i8[4])
                      {
                        v51.i32[0] = v48.i32[2];
                        v74 = v50.f32[2];
                        v50 = vsubq_f32(v50, v48);
                        *a9.i64 = fabsf(v50.f32[0]);
                        v48.i64[0] = vsubq_f32(v49, v48).u64[0];
                        v48.f32[0] = v51.f32[0] + (((v74 - v51.f32[0]) * v48.f32[0]) / v50.f32[0]);
                        v49.f32[0] = (v48.f32[2] + v74) * 0.5;
                        if (*a9.i64 < 0.000001)
                        {
                          *&v52 = (v48.f32[2] + v74) * 0.5;
                        }

                        else
                        {
                          *&v52 = v48.f32[0];
                        }

LABEL_74:
                        v62[1].i32[2] = LODWORD(v52);
                        *(*(v58 + 40) + 72) = v51.i32[0];
                        v57 = 1;
                      }
                    }
                  }
                }
              }

              v18 = v10[5];
              v53 = v10[6];
            }
          }

          ++v56;
          v54 = 0xEEEEEEEEEEEEEEEFLL * ((v53 - v18) >> 3);
          v55 += 120;
          if (v54 > v56)
          {
            continue;
          }

          break;
        }

        if (v57)
        {
            ;
          }

          v18 = v10[5];
          v53 = v10[6];
          v54 = 0xEEEEEEEEEEEEEEEFLL * ((v53 - v18) >> 3);
        }

LABEL_80:
        if (v54 >= 2 && v53 != v18)
        {
          v76 = 0;
          v77 = 0;
          do
          {
            sub_2623493F4(&v213, a1, *(v18 + v76 + 96), *(v18 + v76 + 104), *v48.i64, *v49.i64, v50, *v51.i64, v52, a9);
            v78 = *(v18 + v76 + 40);
            v48.i32[0] = *(v78 + 24);
            v50.i32[0] = *(v78 + 72);
            v49.f32[0] = vabds_f32(v48.f32[0], v50.f32[0]);
            if (v49.f32[0] < 0.05 && (v214[0] & 1) == 0)
            {
              if (v77)
              {
                if (v77 != v54 - 1)
                {
                  goto LABEL_111;
                }

                v79 = *(v18 + v76 - 80);
                v50.i32[0] = *(v79 + 24);
                v49.i32[0] = *(v79 + 72);
                v51.f32[0] = vabds_f32(v50.f32[0], v49.f32[0]);
                LODWORD(v52) = *(v18 + v76 - 56);
                v80 = v51.f32[0] < 0.05 || *&v52 <= 0.5;
                v81 = !v80 && v50.f32[0] < v49.f32[0];
                if (!v81 || v49.f32[0] >= v48.f32[0])
                {
                  goto LABEL_111;
                }
              }

              else
              {
                v83 = *(v18 + 160);
                v49.i32[0] = *(v83 + 24);
                v48.i32[0] = *(v83 + 72);
                v51.f32[0] = vabds_f32(v49.f32[0], v48.f32[0]);
                LODWORD(v52) = *(v18 + 184);
                if (v51.f32[0] < 0.05 || *&v52 <= 0.5 || v50.f32[0] <= v49.f32[0] || v49.f32[0] <= v48.f32[0])
                {
                  goto LABEL_111;
                }
              }

              *(v78 + 24) = v49.i32[0];
              *(*(v18 + v76 + 40) + 72) = v49.i32[0];
            }

LABEL_111:
            ++v77;
            v18 = v10[5];
            v53 = v10[6];
            v54 = 0xEEEEEEEEEEEEEEEFLL * ((v53 - v18) >> 3);
            v76 += 120;
          }

          while (v54 > v77);
        }

        v9 = a3;
        if (v54 >= 2 && v53 != v18)
        {
          v88 = 0;
          v89 = 0;
          do
          {
            v90 = v18 + v88;
            v91 = *(v18 + v88 + 40);
            v92 = *(v91 + 24);
            v93 = *(v91 + 72);
            if (vabds_f32(v92, v93) < 0.05)
            {
              if (v89 < v54 - 1)
              {
                v94 = v18 + v88;
                v95 = *(v18 + v88 + 160);
                v96 = v95[1].f32[2];
                v97 = v95[4].f32[2];
                if (vabds_f32(v96, v97) >= 0.05)
                {
                  v98 = *(v94 + 184) <= 0.3 || v93 <= v96;
                  if (!v98 && v96 > v97)
                  {
                    v100 = v95[1];
                    v101 = vsubq_f32(v95[4], v100);
                    v102 = vmla_n_f32(*v100.f32, *v101.f32, (v92 - COERCE_FLOAT(v95[1].i64[1])) / (v101.f32[2] + 0.00000011921));
                    v103 = *(v91 + 64);
                    if (vaddv_f32(vmul_f32(vsub_f32(v102, *(v91 + 16)), vsub_f32(v102, *&v103))) <= 0.0)
                    {
                      *(v91 + 72) = DWORD2(v103);
                      *(v91 + 64) = v102;
                      *(*(v90 + 40) + 72) = v92;
                      *(*(v94 + 160) + 16) = v102;
                      *(*(v94 + 160) + 24) = v92;
                      v18 = v10[5];
                    }
                  }
                }
              }

              if (v88)
              {
                v104 = v18 + v88;
                v105 = *(v18 + v88 - 80);
                v106 = v105[1].f32[2];
                v107 = v105[4].f32[2];
                if (vabds_f32(v106, v107) >= 0.05 && *(v104 - 56) > 0.3 && v106 < v107)
                {
                  v109 = *(v90 + 40);
                  v110 = *(v109 + 24);
                  if (v107 < v110)
                  {
                    v111 = v105[1];
                    v112 = vsubq_f32(v105[4], v111);
                    v113 = vmla_n_f32(*v111.f32, *v112.f32, (v110 - COERCE_FLOAT(v105[1].i64[1])) / (v112.f32[2] + 0.00000011921));
                    v114 = *(v109 + 16);
                    if (vaddv_f32(vmul_f32(vsub_f32(v113, *&v114), vsub_f32(v113, *(v109 + 64)))) <= 0.0)
                    {
                      *(v109 + 24) = DWORD2(v114);
                      *(v109 + 16) = v113;
                      *(*(v90 + 40) + 24) = v110;
                      *(*(v104 - 80) + 64) = v113;
                      *(*(v104 - 80) + 72) = v110;
                      v18 = v10[5];
                    }
                  }
                }
              }
            }

            ++v89;
            v53 = v10[6];
            v54 = 0xEEEEEEEEEEEEEEEFLL * ((v53 - v18) >> 3);
            v88 += 120;
          }

          while (v54 > v89);
          v54 = 0xEEEEEEEEEEEEEEEFLL * ((v53 - v18) >> 3);
        }

        if (v54 >= 3)
        {
          if (v53 != v18)
          {
            v115 = 0;
            for (i = 0; i < v54; ++i)
            {
              v117 = v18 + v115;
              v118 = *(v18 + v115 + 40);
              v119 = v118[1].f32[2];
              v120 = v118[4].f32[2];
              if (vabds_f32(v119, v120) >= 0.05)
              {
                if (i < v54 - 2)
                {
                  v121 = v18 + v115;
                  v122 = *(v18 + v115 + 160);
                  if (vabds_f32(v122[1].f32[2], v122[4].f32[2]) < 0.05)
                  {
                    v123 = *(v121 + 280);
                    v124 = v123[3].f32[0];
                    v125 = vabds_f32(v124, v123[9].f32[0]) < 0.05 && v119 < v120;
                    if (v125 && v120 < v124)
                    {
                      v127 = vsubq_f32(v122[1], v122[4]);
                      v128 = sqrtf(vaddv_f32(*&vmulq_f32(v127, v127)));
                      if (v128 <= 0.5 && (v129 = v118[1], v130 = v118[4], v131 = vsubq_f32(v129, v130), v128 <= sqrtf(vaddv_f32(*&vmulq_f32(v131, v131)))))
                      {
                        LODWORD(v119) = DWORD2(*(&v118[1] + 8));
                      }

                      else
                      {
                        if (*(v18 + v115 + 184) > 0.3)
                        {
                          goto LABEL_171;
                        }

                        v129 = v118[1];
                        LODWORD(v119) = v118[1].i64[1];
                        v130 = v118[4];
                      }

                      v120 = v130.f32[2];
                      v132 = vmla_n_f32(*v129.f32, vsub_f32(*v130.f32, *v129.f32), (v124 - v119) / ((v130.f32[2] - v119) + 0.00000011921));
                      v133 = vsub_f32(v132, v123[2]);
                      v134 = vsub_f32(v132, v123[8]);
                      if (vaddv_f32(vmul_f32(v133, v134)) <= 0.0 || (v135 = vmul_f32(v133, v133), v136 = vmul_f32(v134, v134), v137 = vsqrt_f32(vadd_f32(vzip1_s32(v135, v136), vzip2_s32(v135, v136))), (vcgt_f32(vdup_lane_s32(v137, 1), v137).u8[0] & 1) != 0))
                      {
                        v118[4].i32[2] = v130.i32[2];
                        *v118[4].f32 = v132;
                        *(*(v117 + 40) + 72) = v124;
                        *(*(v121 + 280) + 16) = v132;
                        *(*(v121 + 280) + 24) = v124;
                        v213 = 0;
                        *v214 = 0;
                        *&v214[8] = 0;
                        v195 = v10[5];
                        v196 = 120 * i;
                        v197 = 120 * i + v195 + 120;
                        v204 = &v213;
                        do
                        {
                          sub_2623490EC(&v204, v195);
                          v195 += 120;
                        }

                        while (v195 != v197);
                        v198 = v10[6];
                        v199 = v196 + v10[5] + 240;
                        v204 = &v213;
                        while (v199 != v198)
                        {
                          sub_2623490EC(&v204, v199);
                          v199 += 120;
                        }

                        goto LABEL_212;
                      }
                    }
                  }
                }

                if (i < 2)
                {
                  goto LABEL_171;
                }

                v138 = v18 + v115;
                v139 = *(v18 + v115 - 80);
                if (vabds_f32(v139[1].f32[2], v139[4].f32[2]) >= 0.05)
                {
                  goto LABEL_171;
                }

                v140 = *(v138 - 200);
                v141 = v140[3].f32[0];
                v142 = v140[9].f32[0];
                v143 = vabds_f32(v141, v142) < 0.05 && v120 < v119;
                if (!v143 || v119 >= v141)
                {
                  goto LABEL_171;
                }

                v145 = vsubq_f32(v139[1], v139[4]);
                v146 = sqrtf(vaddv_f32(*&vmulq_f32(v145, v145)));
                if (v146 <= 0.5 && (v147 = v118[1], v148 = v118[4], v149 = vsubq_f32(v147, v148), v146 <= sqrtf(vaddv_f32(*&vmulq_f32(v149, v149)))))
                {
                  LODWORD(v150) = DWORD2(*(&v118[1] + 8));
                }

                else
                {
                  if (*(v18 + v115 - 56) > 0.3)
                  {
                    goto LABEL_171;
                  }

                  v147 = v118[1];
                  LODWORD(v150) = v118[1].i64[1];
                  v148 = v118[4];
                }

                v151 = vmla_n_f32(*v147.f32, vsub_f32(*v148.f32, *v147.f32), (v142 - v150) / ((v148.f32[2] - v150) + 0.00000011921));
                v152 = vsub_f32(v151, v140[2]);
                v153 = vsub_f32(v151, v140[8]);
                if (vaddv_f32(vmul_f32(v152, v153)) <= 0.0 || (v154 = vmul_f32(v153, v153), v155 = vmul_f32(v152, v152), v156 = vsqrt_f32(vadd_f32(vzip1_s32(v154, v155), vzip2_s32(v154, v155))), (vcgt_f32(vdup_lane_s32(v156, 1), v156).u8[0] & 1) != 0))
                {
                  v118[1].i32[2] = v147.i32[2];
                  *v118[1].f32 = v151;
                  *(*(v117 + 40) + 24) = v142;
                  *(*(v138 - 200) + 64) = v151;
                  *(*(v138 - 200) + 72) = v142;
                  v213 = 0;
                  *v214 = 0;
                  *&v214[8] = 0;
                  v157 = v10[5];
                  v158 = 120 * i;
                  v159 = 120 * i + v157 - 120;
                  v204 = &v213;
                  do
                  {
                    sub_2623490EC(&v204, v157);
                    v157 += 120;
                  }

                  while (v157 != v159);
                  v160 = v10[6];
                  v161 = v158 + v10[5];
                  v204 = &v213;
                  while (v161 != v160)
                  {
                    sub_2623490EC(&v204, v161);
                    v161 += 120;
                  }

                  goto LABEL_212;
                }
              }

LABEL_171:
              v54 = 0xEEEEEEEEEEEEEEEFLL * ((v53 - v18) >> 3);
              v115 += 120;
            }
          }

          if (v53 != v18)
          {
            v162 = 0;
            v163 = 0;
            v164 = 0xEEEEEEEEEEEEEEEFLL * ((v53 - v18) >> 3);
            while (1)
            {
              v165 = (v18 + v162);
              v166 = *(v18 + v162 + 40);
              v167 = v166[1].f32[2];
              v168 = v166[4].f32[2];
              v169 = v164 - 2;
              if (vabds_f32(v167, v168) >= 0.05 && v163 < v169 && vabds_f32(*(v165[20] + 24), *(v165[20] + 72)) < 0.05)
              {
                v171 = v165[35];
                v172 = v171[4].f32[2];
                v173 = v171[1].f32[2];
                if (vabds_f32(v173, v172) >= 0.05 && vabds_f32(v168, v173) > 0.1 && ((v168 - v167) * (v172 - v173)) <= 0.0)
                {
                  v174 = v166[1];
                  v175 = v166[4];
                  v176.i32[0] = 0;
                  v176.i32[1] = vextq_s8(v174, v174, 8uLL).u32[0];
                  v177 = vsubq_f32(v175, v174);
                  v178 = sqrtf(vaddv_f32(*&vmulq_f32(v177, v177)));
                  v179.f32[0] = v178;
                  v179.i32[1] = v166[4].i64[1];
                  v180 = vsubq_f32(v171[1], v174);
                  v181.f32[0] = sqrtf(vaddv_f32(*&vmulq_f32(v180, v180)));
                  v181.i32[1] = v171[1].i64[1];
                  v182 = vsubq_f32(v171[4], v174);
                  v182.f32[0] = sqrtf(vaddv_f32(*&vmulq_f32(v182, v182)));
                  v182.i32[1] = v171[4].i64[1];
                  v183 = vsub_f32(v179, v176);
                  v184 = vsub_f32(*v182.f32, v181);
                  v179.f32[0] = -*&v183.i32[1];
                  v185 = vzip1_s32(v179, v183);
                  v186 = vmul_f32(v184, v185);
                  if (vaddv_f32(v186) != 0.0)
                  {
                    break;
                  }
                }
              }

              ++v163;
              v164 = 0xEEEEEEEEEEEEEEEFLL * ((v53 - v18) >> 3);
              v162 += 120;
              if (v164 <= v163)
              {
                goto LABEL_198;
              }
            }

            v187 = vmul_f32(vsub_f32(v176, v181), v185);
            v188 = vmla_n_f32(v181, v184, vdiv_f32(vadd_f32(v187, vdup_lane_s32(v187, 1)), vadd_f32(v186, vdup_lane_s32(v186, 1))).f32[0]);
            v189 = vmlaq_n_f32(v174, v177, sqrtf(vmul_f32(v188, v188).f32[0]) / (v178 + 0.00000011921)).u64[0];
            v166[4].i32[2] = v175.i32[2];
            v166[4].i64[0] = v189;
            *(v165[5] + 72) = v188.i32[1];
            *(v165[35] + 16) = v189;
            *(v165[35] + 24) = v188.i32[1];
            v213 = 0;
            *v214 = 0;
            *&v214[8] = 0;
            v190 = v10[5];
            v191 = 120 * v163;
            v192 = 120 * v163 + v190 + 120;
            v204 = &v213;
            do
            {
              sub_2623490EC(&v204, v190);
              v190 += 120;
            }

            while (v190 != v192);
            v193 = v10[6];
            v194 = v191 + v10[5] + 240;
            v204 = &v213;
            while (v194 != v193)
            {
              sub_2623490EC(&v204, v194);
              v194 += 120;
            }

LABEL_212:
            sub_2622E9198(v10, &v213);
            v206 = &v213;
            sub_262324F40(&v206);
          }
        }

LABEL_198:
          ;
        }

        sub_26232C110(v10);
        v10 += 12;
        if (v10 == v9)
        {
          return;
        }

        goto LABEL_3;
      }
    }

    v32 = v18 + v19;
    v33 = *(v18 + v19 - 96);
    *&v214[13] = *(v18 + v19 - 83);
    *v214 = v33;
    if (v23 == &v213)
    {
      v216 = *(v32 - 40);
    }

    else
    {
      sub_262349150(v215, *(v21 - 64), *(v32 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v32 - 56) - *(v21 - 64)) >> 4));
      v216 = *(v18 + v19 - 40);
      sub_2621CA9DC(v217, *(v18 + v19 - 32), *(v18 + v19 - 24), (*(v18 + v19 - 24) - *(v18 + v19 - 32)) >> 2);
      sub_2622069E0(&v217[1] + 1, *(v18 + v19 - 8), *(v18 + v19), (*(v18 + v19) - *(v18 + v19 - 8)) >> 4);
    }

    v36 = *(v18 + v19 - 216);
    *&v207[13] = *(v18 + v19 - 203);
    *v207 = v36;
    if (v24 != &v206)
    {
      sub_262349150(v208, *(v21 - 184), *(v18 + v19 - 176), 0xAAAAAAAAAAAAAAABLL * ((*(v18 + v19 - 176) - *(v21 - 184)) >> 4));
      v209 = *(v18 + v19 - 160);
      sub_2621CA9DC(&v210, *(v18 + v19 - 152), *(v18 + v19 - 144), (*(v18 + v19 - 144) - *(v18 + v19 - 152)) >> 2);
      v37 = -16;
      v38 = -24;
      goto LABEL_39;
    }

    v39 = -56;
    goto LABEL_41;
  }
}

void sub_26232AFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  a18 = &a33;
  sub_262324F40(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_26232B028(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2874EEA70;
  if (*(a2 + 31) < 0)
  {
    sub_2621CC810((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  v5 = *(a2 + 32);
  *(a1 + 40) = 0;
  *(a1 + 32) = v5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_26232C18C(a1 + 40, *(a2 + 40), *(a2 + 48), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_26232C18C(a1 + 64, *(a2 + 64), *(a2 + 72), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 72) - *(a2 + 64)) >> 3));
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

void sub_26232B10C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_262324F40(va);
  if (*(v2 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

float sub_26232B13C(uint64_t a1, uint64_t a2, void *a3, float result)
{
  if (*(a2 + 96) != 1)
  {
    return result;
  }

  v86 = (a2 + 40);
  if (!sub_2622E8CD0(*(a2 + 40), *(a2 + 48)))
  {
    goto LABEL_25;
  }

  sub_2622E8DD0(&v89, a3[5], a3[6]);
  v8 = v89;
  v7 = v90;
  if (v90 == v89)
  {
    v10 = 0.0;
    v9 = 0.0;
    if (!v89)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v9 = 3.4028e38;
  v10 = -3.4028e38;
  v11 = v89;
  do
  {
    v12 = *v11++;
    v14 = *(&v12 + 1);
    v13 = *&v12;
    if (*&v12 >= *(&v12 + 1))
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    if (v10 < v15)
    {
      v10 = v15;
    }

    if (v14 < v13)
    {
      v13 = v14;
    }

    if (v13 < v9)
    {
      v9 = v13;
    }
  }

  while (v11 != v90);
  if (v89)
  {
LABEL_16:
    operator delete(v89);
  }

LABEL_17:
  if (v7 != v8)
  {
    v16 = *(a1 + 8);
    if ((v10 - v9) < v16)
    {
      v17 = a3[5];
      v18 = a3[6];
      if (v17 == v18)
      {
LABEL_23:
        if (0xEEEEEEEEEEEEEEEFLL * ((v18 - v17) >> 3) < 3)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v19 = a3[5];
        while (vabds_f32(*(*(v19 + 40) + 24), *(*(v19 + 40) + 72)) <= v16)
        {
          v19 += 120;
          if (v19 == v18)
          {
            goto LABEL_23;
          }
        }
      }

      sub_2622E8D88(a3, v10);
    }
  }

LABEL_25:
  v87 = a1;
  v88 = a2;
  v21 = a3[5];
  v20 = a3[6];
  if (v21 != v20)
  {
    v22 = vsubq_f32(*(*(v20 - 80) + 64), *(*(v21 + 40) + 16));
    do
    {
      v23 = vsubq_f32(*(*(v21 + 40) + 64), *(*(v21 + 40) + 16));
      v24 = sqrtf(vaddv_f32(*&vmulq_f32(v23, v23)));
      if (v24 >= 0.03 && (0 * 0.03) <= v24)
      {
        sub_2621CBF10(1uLL);
      }

      v21 += 120;
    }

    while (v21 != v20);
  }

  v25 = *(v88 + 40);
  if (*(v88 + 48) == v25)
  {
    goto LABEL_43;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    v28 = v25 + v26;
    v29 = *(v25 + v26 + 40);
    v30 = *(v29 + 24);
    if (vabds_f32(v30, *(v29 + 72)) >= 0.05 && *(v28 + 64) >= 0.3)
    {
      v31 = *(v29 + 16);
      v89 = *(v29 + 16);
      v32 = sub_2622E8E60(&v89, 0, 0);
      v33 = *(v28 + 40);
      v34 = *(v33 + 72);
      v35 = *(v33 + 64);
      v89 = *(v33 + 64);
      v36 = sub_2622E8E60(&v89, 0, 0);
      if (HIDWORD(v32))
      {
        if (HIDWORD(v36) && (vabds_f32(v30, *&v32) >= 0.3 || vabds_f32(v34, *&v36) >= 0.3) && vabds_f32(*&v32, *&v36) <= 0.1)
        {
          break;
        }
      }
    }

    ++v27;
    v25 = *(v88 + 40);
    v26 += 120;
    if (0xEEEEEEEEEEEEEEEFLL * ((*(v88 + 48) - v25) >> 3) <= v27)
    {
      goto LABEL_43;
    }
  }

  if (*(v88 + 31) < 0)
  {
    if (!*(v88 + 16))
    {
      goto LABEL_65;
    }
  }

  else if (!*(v88 + 31))
  {
    goto LABEL_65;
  }

  if (sub_26225E7AC(*(v87 + 24), (v88 + 8)))
  {
    v89 = (v88 + 8);
    if (*(sub_26226C7A4(v87 + 16, (v88 + 8)) + 14) >= 2)
    {
      v89 = (v88 + 8);
      *(sub_26226C7A4(v87 + 16, (v88 + 8)) + 14) = 0;
      goto LABEL_43;
    }
  }

LABEL_65:
  v57 = *(v88 + 40);
  v58 = *(v88 + 48);
  v59 = *(v57 + 40);
  v60 = *v59[2].f32;
  v61 = *(*(a3[5] + 40) + 16);
  v62 = vsubq_f32(v60, v61);
  v63 = sqrtf(vaddv_f32(*&vmulq_f32(v62, v62)));
  v64 = *(v58 - 80);
  v65 = *v64[8].f32;
  v66 = *(*(a3[6] - 80) + 64);
  v67 = vsubq_f32(v65, v66);
  v68 = sqrtf(vaddv_f32(*&vmulq_f32(v67, v67)));
  if (v63 >= 0.1 || v68 >= 0.1)
  {
    if (v27 || v63 >= 0.1 || vabds_f32(v64[3].f32[0], v65.f32[2]) >= 0.05)
    {
      if (-286331153 * ((v58 - v57) >> 3) - 1 != v27)
      {
        goto LABEL_68;
      }

      if (v68 >= 0.1)
      {
        goto LABEL_68;
      }

      if (vabds_f32(v60.f32[2], v59[9].f32[0]) >= 0.05)
      {
        goto LABEL_68;
      }

      v78 = vsub_f32(*v61.f32, v59[2]);
      v79 = vsub_f32(*v61.f32, v59[8]);
      if (vaddv_f32(vmul_f32(v78, v79)) > 0.0)
      {
        v80 = vmul_f32(v78, v78);
        v81 = vmul_f32(v79, v79);
        v82 = vsqrt_f32(vadd_f32(vzip1_s32(v80, v81), vzip2_s32(v80, v81)));
        if ((vcgt_f32(vdup_lane_s32(v82, 1), v82).u8[0] & 1) == 0)
        {
          goto LABEL_68;
        }
      }
    }

    else
    {
      v69 = vsub_f32(*v66.f32, v64[2]);
      v70 = vsub_f32(*v66.f32, v64[8]);
      if (vaddv_f32(vmul_f32(v69, v70)) > 0.0)
      {
        v71 = vmul_f32(v70, v70);
        v72 = vmul_f32(v69, v69);
        v73 = vsqrt_f32(vadd_f32(vzip1_s32(v71, v72), vzip2_s32(v71, v72)));
        if ((vcgt_f32(vdup_lane_s32(v73, 1), v73).u8[0] & 1) == 0)
        {
          goto LABEL_68;
        }
      }
    }
  }

  sub_2622E8FE4(v88, a3);
  sub_2622E9198(a3, v86);
LABEL_68:
  if (*(v88 + 31) < 0)
  {
    if (!*(v88 + 16))
    {
      goto LABEL_43;
    }
  }

  else if (!*(v88 + 31))
  {
    goto LABEL_43;
  }

  v83 = v87;
  if (!sub_26225E7AC(*(v87 + 24), (v88 + 8)))
  {
    v89 = (v88 + 8);
    *(sub_26226C7A4(v87 + 16, (v88 + 8)) + 14) = 0;
    v83 = v87;
  }

  v89 = (v88 + 8);
  v84 = sub_26226C7A4(v83 + 16, (v88 + 8));
  ++*(v84 + 14);
LABEL_43:
  v37 = *(v88 + 40);
  v38 = *(v88 + 48);
  if (0xEEEEEEEEEEEEEEEFLL * ((v38 - v37) >> 3) > 1)
  {
    goto LABEL_99;
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a3[6] - a3[5]) >> 3) < 2)
  {
    goto LABEL_99;
  }

  if (sub_2622E8CD0(v37, v38))
  {
    goto LABEL_99;
  }

  v40 = *(v88 + 40);
  v39 = *(v88 + 48);
  if (v39 == v40)
  {
    goto LABEL_99;
  }

  v41 = *(*(v40 + 40) + 16);
  v42 = *(*(v39 - 80) + 64);
  v43 = a3[5];
  v44 = a3[6];
  v45 = *(v43 + 40);
  v46 = *v45[2].f32;
  v47 = vsubq_f32(v41, v46);
  v48 = vaddv_f32(vmul_f32(vsub_f32(*v46.f32, *v41.f32), vsub_f32(*v46.f32, *v42.f32))) > 0.0;
  if (sqrtf(vaddv_f32(*&vmulq_f32(v47, v47))) < 0.1)
  {
    v48 = 0;
  }

  v49 = *(*(v44 - 80) + 64);
  v50 = vsubq_f32(v42, v49);
  v51 = vaddv_f32(vmul_f32(vsub_f32(*v49.f32, *v41.f32), vsub_f32(*v49.f32, *v42.f32))) > 0.0;
  if (sqrtf(vaddv_f32(*&vmulq_f32(v50, v50))) < 0.1)
  {
    v51 = 0;
  }

  if (v44 - v43 != 240 || v48 || v51)
  {
    goto LABEL_99;
  }

  v52 = *(v43 + 160);
  v46.f32[0] = vabds_f32(v52[3].f32[0], v52[9].f32[0]);
  if (vabds_f32(v46.f32[2], v45[9].f32[0]) >= 0.05)
  {
    if (v46.f32[0] < 0.05)
    {
      v74 = vsub_f32(v45[2], v45[8]);
      v54 = vmul_f32(v74, v74);
      v55 = v52[8];
      v56 = v52[2];
      goto LABEL_79;
    }
  }

  else if (v46.f32[0] >= 0.05)
  {
    v53 = vsub_f32(v52[2], v52[8]);
    v54 = vmul_f32(v53, v53);
    v55 = v45[8];
    v56 = v45[2];
LABEL_79:
    v75 = vsub_f32(v56, v55);
    v76 = vmul_f32(v75, v75);
    v77 = vsqrt_f32(vadd_f32(vzip1_s32(v76, v54), vzip2_s32(v76, v54)));
    if (v77.f32[0] < 0.5 && (vcgt_f32(vdup_lane_s32(v77, 1), v77).u8[0] & 1) != 0)
    {
      if (sub_2622EA214((v88 + 8), "") || !sub_26225E7AC(*(v87 + 24), (v88 + 8)) || (v89 = (v88 + 8), *(sub_26226C7A4(v87 + 16, (v88 + 8)) + 14) < 2))
      {
        sub_2622E8FE4(v88, a3);
        sub_2622E9198(a3, v86);
        if (!sub_2622EA214((v88 + 8), ""))
        {
          if (!sub_26225E7AC(*(v87 + 24), (v88 + 8)))
          {
            v89 = (v88 + 8);
            *(sub_26226C7A4(v87 + 16, (v88 + 8)) + 14) = 0;
          }

          v89 = (v88 + 8);
          v85 = sub_26226C7A4(v87 + 16, (v88 + 8));
          ++*(v85 + 14);
        }
      }

      else
      {
        v89 = (v88 + 8);
        *(sub_26226C7A4(v87 + 16, (v88 + 8)) + 14) = 0;
      }
    }
  }

LABEL_99:

  return sub_26232C110(a3);
}

void sub_26232BAB4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_26232BAE8(void *a1, void *a2)
{
  v70 = a2;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v69 = a1;
    do
    {
      v6 = objc_msgSend_walls(v70, v3, v4, v69);
      v8 = objc_msgSend_objectAtIndexedSubscript_(v6, v7, v5);

      v9 = *a1;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      objc_msgSend_quad(v8, v10, v11);
      v71 = v12;
      v13 = (v9 + 96 * v5);
      src = 0uLL;
      *&v86 = 0;
      sub_2622E924C(v13[5], v13[6], &src);
      sub_2622E924C(v13[8], v13[9], &src);
      v14 = src;
      v72 = v5;
      if (*(&src + 1) == src)
      {
        v24 = 0;
        v23 = 0;
      }

      else
      {
        v15 = 0;
        v16 = 0xEEEEEEEEEEEEEEEFLL * ((*(&src + 1) - src) >> 3);
        v17 = 40;
        do
        {
          sub_2621D9F60(&v82, (*(v14 + v17) + 16));
          ++v15;
          v18 = *(v14 + v17);
          v20 = v18[4];
          f32 = v18[4].f32;
          v21 = vsubq_f32(v20, *(*(v14 + 120 * (v15 % v16) + 40) + 16));
          v22 = vmulq_f32(v21, v21);
          if (sqrtf(v22.f32[2] + vaddv_f32(*v22.f32)) >= 0.01)
          {
            sub_2621D9F60(&v82, f32);
          }

          v14 = src;
          v16 = 0xEEEEEEEEEEEEEEEFLL * ((*(&src + 1) - src) >> 3);
          v17 += 120;
        }

        while (v16 > v15);
        v24 = v82;
        v23 = v83;
      }

      v25 = v23 - v24;
      v26 = (v23 - v24) >> 4;
      if (v26 >= 2)
      {
        v27 = ((v25 >> 4) - 2);
        if (v26 > v27)
        {
          v28 = 0;
          v29 = v26 - v27;
          v30 = (v26 - v27 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v31 = vdupq_n_s64(v29 - 1);
          v32 = &v24[4 * v27 + 10];
          do
          {
            v33 = vdupq_n_s64(v28);
            v34 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_2623A7620)));
            if (vuzp1_s16(v34, __PAIR64__(DWORD1(v71), DWORD2(v71))).u8[0])
            {
              *(v32 - 8) = *(&v71 + 2);
            }

            if (vuzp1_s16(v34, __PAIR64__(*(&v71 + 4), *(&v71 + 8))).i8[2])
            {
              *(v32 - 4) = *(&v71 + 2);
            }

            if (vuzp1_s16(__PAIR64__(*(&v71 + 4), *(&v71 + 8)), vmovn_s64(vcgeq_u64(v31, vorrq_s8(v33, xmmword_2623A7630)))).i32[1])
            {
              *v32 = *(&v71 + 2);
              v32[4] = *(&v71 + 2);
            }

            v28 += 4;
            v32 += 16;
          }

          while (v30 != v28);
        }

        if ((v25 >> 4) >= 3)
        {
          v35 = v24 + 2;
          do
          {
            v36 = *v35;
            if (*v35 < (*(&v71 + 2) + 0.03))
            {
              v36 = *(&v71 + 2) + 0.03;
            }

            *v35 = v36;
            v35 += 4;
            --v27;
          }

          while (v27);
        }

        v37 = v24[2];
        for (i = v24; i != v23; i += 4)
        {
          if (v37 < i[2])
          {
            v37 = i[2];
          }
        }

        v39 = *(v23 - 1);
        v77 = *(v23 - 2);
        v40 = v77;
        v79 = v39;
        *(&v39 + 2) = v37;
        *(&v40 + 2) = v37;
        v73 = v39;
        v75 = v40;
      }

      __p[0] = &src;
      sub_262324F40(__p);
      if (v25 > 0x20)
      {
        v66 = v77;
        v65 = v79;
        v68 = v73;
        v67 = v75;
      }

      else
      {
        v83 = v24;
        objc_msgSend_quad(v8, v41, v42);
        v46 = v45;
        v47 = 0;
        HIDWORD(v46) = HIDWORD(v73);
        HIDWORD(v48) = HIDWORD(v75);
        v74 = v46;
        v76 = v48;
        HIDWORD(v49) = HIDWORD(v77);
        HIDWORD(v50) = HIDWORD(v79);
        v78 = v49;
        v80 = v50;
        v23 = v24;
        v51 = v84;
        do
        {
          objc_msgSend_quad(v8, v43, v44);
          DWORD2(src) = v52;
          DWORD2(v86) = v53;
          *&src = v54;
          *&v86 = v55;
          DWORD2(v87) = v56;
          DWORD2(v88) = v57;
          *&v87 = v58;
          *&v88 = v59;
          if (v23 >= v51)
          {
            v60 = v23 - v24;
            v61 = (v23 - v24) >> 4;
            v62 = v61 + 1;
            if ((v61 + 1) >> 60)
            {
              v82 = v24;
              sub_2621CBEB0();
            }

            if ((v51 - v24) >> 3 > v62)
            {
              v62 = (v51 - v24) >> 3;
            }

            if (v51 - v24 >= 0x7FFFFFFFFFFFFFF0)
            {
              v63 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v63 = v62;
            }

            if (v63)
            {
              sub_2621CBF10(v63);
            }

            v64 = (16 * v61);
            v51 = 0;
            *v64 = *(&src + v47);
            v23 = (v64 + 1);
            memcpy(0, v24, v60);
            if (v24)
            {
              operator delete(v24);
            }

            v24 = 0;
          }

          else
          {
            *v23 = *(&src + v47);
            v23 += 4;
          }

          v47 += 16;
        }

        while (v47 != 64);
        v83 = v23;
        v84 = v51;
        v66 = v78;
        v65 = v80;
        v68 = v74;
        v67 = v76;
        v82 = v24;
      }

      v73 = v68;
      v75 = v67;
      src = v68;
      v86 = v67;
      v77 = v66;
      v79 = v65;
      v87 = v66;
      v88 = v65;
      if (v8)
      {
        objc_copyStruct((v8 + 272), &src, 64, 1, 0);
      }

      LOBYTE(__p[0]) = 0;
      sub_26232C090(&src, (v23 - v24) >> 4);
      sub_2621CD1D8(__p, (v23 - v24) >> 4);
      sub_2622C51B4(v8, v24, src, __p[0], (v23 - v24) >> 4);
      a1 = v69;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (src)
      {
        *(&src + 1) = src;
        operator delete(src);
      }

      if (v82)
      {
        operator delete(v82);
      }

      ++v5;
    }

    while (v72 + 1 < 0xAAAAAAAAAAAAAAABLL * ((v69[1] - *v69) >> 5));
  }
}

void sub_26232BFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_26232C090(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_262236A0C(result, a2);
  }

  return result;
}

void sub_26232C0F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float sub_26232C110(void *a1)
{
  v1 = a1[5];
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[6] - v1) >> 3);
  v3 = a1[8];
  v4 = 0xEEEEEEEEEEEEEEEFLL * ((a1[9] - v3) >> 3);
  if (v2 >= 1 && v4 >= 3)
  {
    *(*(v3 + 120 * (v4 - 1) + 40) + 72) = *(*(v1 + 40) + 24);
    result = *(*(a1[5] + 120 * (v2 - 1) + 40) + 72);
    *(*(a1[8] + 120 * (v4 - 3) + 40) + 24) = result;
  }

  return result;
}

void sub_26232C18C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x222222222222223)
    {
      sub_2622E96B0(a4);
    }

    sub_2621CBEB0();
  }
}

uint64_t sub_26232C2BC(uint64_t a1)
{
  *a1 = &unk_2874EEA90;
  *(a1 + 872) = &unk_2874EEDA0;
  v2 = *(a1 + 1000);
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  *(a1 + 720) = &unk_2874EEDA0;
  v3 = *(a1 + 848);
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  *(a1 + 560) = &unk_2874EEB10;
  v4 = *(a1 + 688);
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  *(a1 + 408) = &unk_2874EEB10;
  v5 = *(a1 + 536);
  if (v5)
  {
    sub_2621D1B78(v5);
  }

  *(a1 + 256) = &unk_2874EEB10;
  v6 = *(a1 + 384);
  if (v6)
  {
    sub_2621D1B78(v6);
  }

  *(a1 + 128) = &unk_2874EEAB0;
  v8 = (a1 + 224);
  sub_26232C48C(&v8);
  return a1;
}

void *sub_26232C410(void *a1)
{
  a1[20] = &unk_2874EF0B8;
  v2 = a1[36];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[1] = &unk_2874EF0B8;
  v3 = a1[17];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  return a1;
}

void sub_26232C48C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 64;
      v7 = v4 - 64;
      v8 = v4 - 64;
      do
      {
        v9 = *v8;
        v8 -= 64;
        (*v9)(v7);
        v6 -= 64;
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

void sub_26232C54C(uint64_t a1)
{
  *a1 = &unk_2874EEAB0;
  v1 = (a1 + 96);
  sub_26232C48C(&v1);

  JUMPOUT(0x266727420);
}

uint64_t sub_26232C5C4(uint64_t a1)
{
  *a1 = &unk_2874EEAB0;
  v3 = (a1 + 96);
  sub_26232C48C(&v3);
  return a1;
}

void sub_26232C61C(uint64_t a1)
{
  sub_26232C2BC(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_26232C670(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 96);
    *(a1 + 16) = i - 96;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

id sub_26232C744(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v418[1] = *MEMORY[0x277D85DE8];
  v281 = a2;
  v313 = a4;
  if (a1)
  {
    if (*(a3 + 137))
    {
      v9 = 0;
      v280 = v281;
      goto LABEL_328;
    }

    v280 = objc_msgSend_copy(v281, v7, v8);
    memset(v340, 0, sizeof(v340));
    memset(v339, 0, sizeof(v339));
    memset(v338, 0, sizeof(v338));
    memset(v337, 0, sizeof(v337));
    v279 = *(a3 + 8);
    v335 = 0u;
    v336 = 0u;
    v333 = 0u;
    v334 = 0u;
    v12 = objc_msgSend_walls(v281, v10, v11);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v333, v416, 16);
    if (v14)
    {
      *v15.i32 = v279;
      v16 = *v334;
      v319 = v15;
      v17 = vdup_lane_s32(v15, 0);
      do
      {
        v18 = 0;
        do
        {
          if (*v334 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v333 + 1) + 8 * v18);
          v20 = sub_26223FCEC(v19).n128_u64[0];
          if (v313)
          {
            v22 = v313[8];
            v23 = v313[1].f32[1];
          }

          else
          {
            v23 = 0.0;
            v22 = 0;
          }

          v24.i32[1] = v319.i32[1];
          *v24.i32 = (v23 * *v319.i32) * 0.5;
          v25 = 1.0 / v23;
          v26 = vsub_f32(vdup_lane_s32(v24, 0), v22);
          *&v369 = vminnm_f32(vmaxnm_f32(vmul_n_f32(vadd_f32(v20, v26), v25), 0), v17);
          *(&v369 + 1) = vminnm_f32(vmaxnm_f32(vmul_n_f32(vadd_f32(v26, v21), v25), 0), v17);
          sub_2621DE070(v340, &v369);
          objc_msgSend_confidence(v19, v27, v28);
          LODWORD(v356[0]) = v29;
          sub_2621C8F2C(v338, v356);
          ++v18;
        }

        while (v14 != v18);
        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v30, &v333, v416, 16);
        v14 = v31;
      }

      while (v31);
    }

    v331 = 0u;
    v332 = 0u;
    v329 = 0u;
    v330 = 0u;
    v34 = objc_msgSend_openings(v281, v32, v33);
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v329, v415, 16);
    if (v36)
    {
      *v37.i32 = v279;
      v38 = *v330;
      v320 = v37;
      v39 = vdup_lane_s32(v37, 0);
      do
      {
        v40 = 0;
        do
        {
          if (*v330 != v38)
          {
            objc_enumerationMutation(v34);
          }

          v41 = *(*(&v329 + 1) + 8 * v40);
          v42 = sub_26223FCEC(v41).n128_u64[0];
          if (v313)
          {
            v44 = v313[8];
            v45 = v313[1].f32[1];
          }

          else
          {
            v45 = 0.0;
            v44 = 0;
          }

          v46.i32[1] = v320.i32[1];
          *v46.i32 = (v45 * *v320.i32) * 0.5;
          v47 = 1.0 / v45;
          v48 = vsub_f32(vdup_lane_s32(v46, 0), v44);
          *&v369 = vminnm_f32(vmaxnm_f32(vmul_n_f32(vadd_f32(v42, v48), v47), 0), v39);
          *(&v369 + 1) = vminnm_f32(vmaxnm_f32(vmul_n_f32(vadd_f32(v48, v43), v47), 0), v39);
          sub_2621DE070(v339, &v369);
          objc_msgSend_confidence(v41, v49, v50);
          LODWORD(v356[0]) = v51;
          sub_2621C8F2C(v337, v356);
          ++v40;
        }

        while (v36 != v40);
        v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v52, &v329, v415, 16);
        v36 = v53;
      }

      while (v53);
    }

    if (v313)
    {
      v54 = v313[1].i32[1];
    }

    v306 = a3;
    if (*(a3 + 137) != 1)
    {
      v413 = 0;
      __p = 0;
      v414 = 0;
      v342 = 0u;
      *v343 = 0u;
      v341 = 0u;
      sub_262223F30(&v344, a3);
      v351 = 0u;
      v350 = 0u;
      v349 = 0u;
      LODWORD(v352) = 1132396544;
      v341 = v345;
      v342 = v346;
      *v343 = v347;
      *v356 = 0u;
      *v357 = 0u;
      *v360 = v346;
      v361 = v347;
      v358 = 0u;
      *v359 = v345;
      sub_262223F30(v362, &v344);
      v365 = v350;
      v366 = v351;
      v364 = v349;
      v367 = v352;
      *v356 = *v359;
      *v357 = *v360;
      v369 = 0u;
      *v370 = 0u;
      v371 = 0u;
      v372 = *v359;
      v358 = v361;
      *v373 = *v360;
      v374 = v361;
      v377 = v361;
      *v376 = *v360;
      v375 = *v359;
      sub_262223F30(v378, v362);
      v380 = v364;
      v381 = v365;
      v382 = v366;
      v383 = v367;
      v369 = v372;
      *v370 = *v373;
      v371 = v374;
      sub_2622B8150(v389, &v369);
    }

    *v325 = 0u;
    memset(v326, 0, sizeof(v326));
    v327 = 0u;
    v328 = 0;
    v370[0] = 0;
    v369 = 0uLL;
    v356[0] = &v369;
    sub_26232F788(v356);
    if (v325[0] != v325[1])
    {
      v55 = v325[1] - v325[0];
      v56 = (v325[1] - v325[0]) >> 4;
      if (v56 >= 2)
      {
        v57 = 0uLL;
        *v353 = 0u;
        v354 = 0u;
        v355 = 1065353216;
        v309 = (v55 >> 4) & 0x7FFFFFFF;
        v291 = v55 >> 4;
        if ((v55 >> 4) > 1)
        {
          v58 = 0;
          v293 = (v56 - 1);
          v59 = 1;
          v60 = 152;
          do
          {
            v314 = v58;
            v302 = v58 + 1;
            v296 = v60;
            v299 = v59;
            do
            {
              v341 = v57;
              v342 = v57;
              *v343 = v57;
              sub_26222D2A8(&v344, v327 + 152 * v314);
              v341 = v345;
              v342 = v346;
              *v343 = v347;
              *v389 = 0u;
              v390 = 0u;
              v391 = 0u;
              sub_26222D2A8(&v392, v327 + v60);
              *v389 = v393;
              v390 = v394;
              v391 = v395;
              sub_26233B674(v356, &v341, v389);
              v371 = 0u;
              *v370 = 0u;
              v369 = 0u;
              v372 = *v356;
              *v373 = *v357;
              v374 = v358;
              v375 = *v359;
              *v376 = *v360;
              v377 = v361;
              sub_26222D2A8(v378, v362);
              v380 = v364;
              v381 = v365;
              v382 = v366;
              sub_26222D2A8(&v383, &v367);
              v386 = 0u;
              v387 = 0u;
              v385 = 0u;
              v388 = 2;
              v369 = v372;
              *v370 = *v373;
              v371 = v374;
              v61 = sub_26233B93C(&v369);
              v383 = &unk_2874EEC38;
              if (v384)
              {
                sub_2621D1B78(v384);
              }

              v378[0] = &unk_2874EEC38;
              if (v379)
              {
                sub_2621D1B78(v379);
              }

              v367 = &unk_2874EEC38;
              if (v368)
              {
                sub_2621D1B78(v368);
              }

              v362[0] = &unk_2874EEC38;
              if (v363)
              {
                sub_2621D1B78(v363);
              }

              if (v61 >= 0x65)
              {
                v62 = sub_26233BACC(&v341);
                if (v62 <= sub_26233BACC(v389))
                {
                  *&v369 = v314;
                  sub_262295210(v353, v314);
                }

                else
                {
                  *&v369 = v59;
                  sub_262295210(v353, v59);
                }
              }

              v392 = &unk_2874EEC38;
              if (v396)
              {
                sub_2621D1B78(v396);
              }

              v344 = &unk_2874EEC38;
              if (v348)
              {
                sub_2621D1B78(v348);
              }

              ++v59;
              v60 += 152;
              v57 = 0uLL;
            }

            while (v309 != v59);
            v59 = v299 + 1;
            v60 = v296 + 152;
            v58 = v302;
          }

          while (v302 != v293);
        }

        v370[0] = 0;
        v63 = 0uLL;
        v369 = 0u;
        v357[0] = 0;
        *v356 = 0u;
        *&v342 = 0;
        v341 = 0u;
        if (v291 < 1)
        {
          v71 = 0;
          v69 = 0;
          v68 = 0;
          v70 = 0uLL;
        }

        else
        {
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v67 = 0;
          do
          {
            if (!sub_262295160(v353, v67))
            {
              sub_2621DE070(&v369, v325[0] + v64);
              sub_2621CBA84(v356, v326[1] + v65);
              sub_26233BBFC(&v341, v327 + v66);
            }

            ++v67;
            v66 += 152;
            v65 += 8;
            v64 += 16;
          }

          while (v309 != v67);
          v63 = v369;
          v68 = v370[0];
          v57 = *v356;
          v69 = v357[0];
          v70 = v341;
          v71 = v342;
        }

        v72 = v326[0];
        v73 = v326[1];
        v326[0] = v68;
        v321 = *v325;
        *v325 = v63;
        v369 = v321;
        v370[0] = v72;
        *&v326[1] = v57;
        v326[3] = v69;
        v74 = v327;
        v327 = v70;
        v341 = v74;
        v75 = v328;
        v328 = v71;
        *&v342 = v75;
        v389[0] = &v341;
        sub_26232F788(v389);
        if (v73)
        {
          operator delete(v73);
        }

        if (v321)
        {
          operator delete(v321);
        }

        sub_2621C74C4(v353);
      }

      sub_26233CFA4(v356, v340, v338, v339, v337, v325, &v326[1], 1);
      v403 = 0;
      v402 = 0;
      v404 = 0;
      memset(v401, 0, sizeof(v401));
      v77 = v325[0];
      if (v325[1] != v325[0])
      {
        v78 = 0;
        v79 = 30.0;
        while (1)
        {
          v399 = 0;
          v398 = 0;
          v400 = 0;
          v310 = v326[1];
          v322 = *(v326[1] + v78);
          v341 = 0uLL;
          *&v342 = 0;
          v80 = v356[0];
          if (v356[1] != v356[0])
          {
            v81 = 0;
            v82 = (v356[1] - v356[0]) >> 4;
            do
            {
              sub_2621CBA84(&v341, v80);
              sub_2621CBA84(&v341, v80 + 1);
              ++v81;
              v80 += 2;
            }

            while (v81 < v82);
          }

          v83 = v359[0];
          if (v359[1] != v359[0])
          {
            v84 = 0;
            v85 = (v359[1] - v359[0]) >> 4;
            do
            {
              sub_2621CBA84(&v341, v83);
              sub_2621CBA84(&v341, v83 + 1);
              ++v84;
              v83 += 2;
            }

            while (v84 < v85);
          }

          v86 = *(&v341 + 1);
          v87 = v341;
          v88 = ((*(&v341 + 1) - v341) >> 3) >= 3 ? 3 : (*(&v341 + 1) - v341) >> 3;
          *&v76 = v310[v78];
          v397 = v76;
          if (*(&v341 + 1) != v341)
          {
            break;
          }

LABEL_168:
          if (v87)
          {
            operator delete(v87);
          }

          sub_2621DE070(&v402, v325[0] + v78);
          sub_2621CBA84(v401, &v397);
          v156 = v398;
          if (v399 != v398)
          {
            if (((v399 - v398) >> 4) <= 1)
            {
              v157 = 1;
            }

            else
            {
              v157 = (v399 - v398) >> 4;
            }

            v158 = v398;
            do
            {
              sub_2621DE070(v356, v158);
              LODWORD(v341) = 1065353216;
              sub_2621C8F2C(&v357[1], &v341);
              ++v158;
              --v157;
            }

            while (v157);
          }

          if (v156)
          {
            operator delete(v156);
          }

          ++v78;
          v77 = v325[0];
          if (v78 >= (v325[1] - v325[0]) >> 4)
          {
            goto LABEL_179;
          }
        }

        v89 = &v77[16 * v78];
        v297 = v76;
        v90 = *(&v76 + 1);
        v91 = *&v322 * 3.14159265 / 180.0;
        LODWORD(v303) = *(v89 + 1);
        v92 = vrev64_s32(*v89);
        v93 = __sincosf_stret(v91);
        v94 = vmla_n_f32(v92, __PAIR64__(LODWORD(v93.__sinval), LODWORD(v93.__cosval)), v303);
        v389[1] = 0;
        v389[0] = 0;
        *&v390 = 0;
        v95 = v87;
        do
        {
          v96 = vsub_f32(*v95, v94);
          LODWORD(v353[0]) = vaddv_f32(vmul_f32(v96, v96));
          sub_2621C8F2C(v389, v353);
          ++v95;
        }

        while (v95 != v86);
        v294 = v90;
        v285 = v78;
        sub_26233A3A4(v353, v389, v88);
        v97 = v353[0];
        v98 = *v353[0];
        v99 = vrev64_s32(*v89);
        v100 = *(v89 + 2);
        v101 = v389[0];
        if (v88 <= 1)
        {
          v102 = 1;
        }

        else
        {
          v102 = v88;
        }

        v103 = v102;
        do
        {
          v105 = *v97++;
          v104 = v105;
          v106 = v87[v105];
          sub_26233A5B0(&__p, v99, v100, v106);
          if (__p == 1 && sqrtf(v101[v104]) < v79)
          {
            goto LABEL_88;
          }

          --v103;
        }

        while (v103);
        v106 = v87[v98];
        v104 = v98;
LABEL_88:
        v107 = *(&v322 + 1) * 3.14159265 / 180.0;
        LODWORD(v287) = *(v89 + 1);
        v108 = __sincosf_stret(v107);
        v109 = vmla_n_f32(v99, __PAIR64__(LODWORD(v108.__sinval), LODWORD(v108.__cosval)), v287);
        v413 = 0;
        __p = 0;
        v414 = 0;
        v110 = v87;
        do
        {
          v111 = vsub_f32(*v110, v109);
          LODWORD(v409) = vaddv_f32(vmul_f32(v111, v111));
          sub_2621C8F2C(&__p, &v409);
          ++v110;
        }

        while (v110 != v86);
        sub_26233A3A4(&v409, &__p, v88);
        v112 = v409;
        v113 = *v409;
        v114 = vrev64_s32(*v89);
        v115 = *(v89 + 2);
        v116 = __p;
        do
        {
          v118 = *v112++;
          v117 = v118;
          v119 = v87[v118];
          sub_26233A5B0(&v406, v114, v115, v119);
          if (v406 == 1 && sqrtf(v116[v117]) < v79)
          {
            goto LABEL_95;
          }

          --v102;
        }

        while (v102);
        v119 = v87[v113];
        v117 = v113;
LABEL_95:
        v407 = 0;
        v406 = 0;
        v408 = 0;
        v120 = vsub_f32(v106, v119);
        v78 = v285;
        if (sqrtf(vaddv_f32(vmul_f32(v120, v120))) >= 0.001)
        {
          __src = xmmword_2623A7620;
          sub_2622C7154(&v406, &__src, v418, 2uLL);
        }

        else
        {
          *&__src = *(v389[0] + v104) >= v116[v117];
          sub_2621C9004(&v406, &__src);
        }

        v121 = 0;
        v122 = 1;
        v123 = v406;
        v124 = v407;
        v304 = v94;
        v300 = v106;
        while (1)
        {
          v125 = v122;
          v126 = v123;
          if (v123 != v124)
          {
            v126 = v123;
            while (*v126 != v121)
            {
              if (++v126 == v124)
              {
                goto LABEL_153;
              }
            }
          }

          if (v126 == v124)
          {
            goto LABEL_153;
          }

          if (v125)
          {
            v127 = -1;
          }

          else
          {
            v127 = 0;
          }

          v128 = vbsl_s8(vdup_n_s32(v127), v106, v119);
          v129 = *v89;
          sub_26233A5B0(&__src, vrev64_s32(*v89), *(v89 + 2), v128);
          v405 = 0uLL;
          if (__src != 1)
          {
            if (v125)
            {
              v138 = -1;
            }

            else
            {
              v138 = 0;
            }

            *&v405 = v128;
            *(&v405 + 1) = vbsl_s8(vdup_n_s32(v138), v94, v109);
            if (sub_26233A708(&v405, v306))
            {
              sub_2621DE070(&v398, &v405);
            }

            goto LABEL_153;
          }

          v130 = *(&__src + 8);
          v131 = vsub_f32(vrev64_s32(*(&__src + 8)), v129);
          v132 = *(&v310[v285] + (v121 & 1));
          v133 = atan2f(v131.f32[0], v131.f32[1]) * 57.2957795;
          v134 = v133 + 360.0;
          v135 = *&v322 >= v133 || *(&v322 + 1) <= v133;
          if (!v135 || (*&v322 < v134 ? (_NF = v134 < *(&v322 + 1)) : (_NF = 0), _NF))
          {
            v139 = vabds_f32(v132, v133);
            v140 = vabds_f32(v132, v134);
            if (v140 >= v139)
            {
              v140 = v139;
            }

            v137 = v140 < 30.0;
          }

          else
          {
            v137 = 0;
          }

          v141 = v418[0];
          v142 = vsub_f32(vrev64_s32(v418[0]), v129);
          v143 = atan2f(v142.f32[0], v142.f32[1]) * 57.2957795;
          v144 = v143 + 360.0;
          v145 = *&v322 >= v143 || *(&v322 + 1) <= v143;
          if (!v145 || (*&v322 < v144 ? (v146 = v144 < *(&v322 + 1)) : (v146 = 0), v146))
          {
            v150 = vabds_f32(v132, v143);
            v151 = vabds_f32(v132, v144);
            if (v151 >= v150)
            {
              v151 = v150;
            }

            v79 = 30.0;
            v147 = v151 < 30.0;
            v149 = v151 >= 30.0;
            v148 = !v137;
            if (v137 && v151 < 30.0)
            {
LABEL_146:
              *&v405 = v128;
LABEL_147:
              v94 = v304;
              v106 = v300;
              *(&v405 + 1) = v141;
              if (sub_26233A708(&v405, v306))
              {
                sub_2621DE070(&v398, &v405);
                v152 = v294;
                if (v121)
                {
                  v152 = v143;
                }

                v294 = v152;
                v153 = v297;
                if ((v121 & 1) == 0)
                {
                  *&v153 = v143;
                }

                v297 = v153;
              }

              goto LABEL_153;
            }
          }

          else
          {
            v147 = 0;
            v148 = !v137;
            v149 = 1;
            v79 = 30.0;
          }

          if (!v147 && !v148)
          {
            *&v405 = v128;
            v141 = v130;
            v143 = v133;
            goto LABEL_147;
          }

          if (!v137 && !v149)
          {
            goto LABEL_146;
          }

          v94 = v304;
          v106 = v300;
LABEL_153:
          v122 = 0;
          v121 = 1;
          if ((v125 & 1) == 0)
          {
            v397 = __PAIR64__(LODWORD(v294), v297);
            v154 = __PAIR64__(LODWORD(v294), v297);
            v155 = v294;
            if (*&v297 > v294)
            {
              v155 = v294 + 360.0;
              *(&v154 + 1) = v294 + 360.0;
              v397 = v154;
            }

            if ((v155 - *&v297) >= 360.0)
            {
              *&v154 = *&v297 + 360.0;
              v397 = v154;
            }

            if (v123)
            {
              operator delete(v123);
            }

            if (v409)
            {
              v410 = v409;
              operator delete(v409);
            }

            if (__p)
            {
              v413 = __p;
              operator delete(__p);
            }

            if (v353[0])
            {
              v353[1] = v353[0];
              operator delete(v353[0]);
            }

            if (v389[0])
            {
              v389[1] = v389[0];
              operator delete(v389[0]);
            }

            goto LABEL_168;
          }
        }
      }

LABEL_179:
      sub_26233CFA4(&v341, v356, &v357[1], v359, &v360[1], v325, v401, 2);
      v407 = 0;
      v406 = 0;
      v408 = 0;
      v160 = v341;
      if (v341 != *(&v341 + 1))
      {
        v161 = v341;
        do
        {
          sub_2621DE070(&v406, v161++);
        }

        while (v161 != *(&v160 + 1));
      }

      __src = 0uLL;
      v418[0] = 0;
      v162 = v403;
      v163 = v402;
      v278 = v403 - v402;
      if (v403 != v402)
      {
        v276 = v403;
        v277 = v160;
        v164 = 0;
        v284 = (v403 - v402) >> 4;
        v286 = v401[0];
        v289 = v406;
        v165 = v407;
        v166 = vdup_n_s32(0x43B40000u);
        v282 = v407;
        v283 = v402;
        while (1)
        {
          *&v159 = vrev64_s32(*&v286[8 * v164]);
          v323 = v159;
          v389[1] = 0;
          v389[0] = 0;
          *&v390 = 0;
          v167 = v289;
          if (v289 != v165)
          {
            v168 = &v163[16 * v164];
            do
            {
              sub_2621DE070(v389, v167++);
            }

            while (v167 != v165);
            v288 = v164;
            v170 = v389[0];
            if (v389[1] != v389[0])
            {
              v171 = 0;
              v172 = vrev64_s32(*v168);
              v317 = *v168;
              v173 = vdup_lane_s32(*v168, 1);
              if (((v389[1] - v389[0]) >> 4) <= 1)
              {
                v174 = 1;
              }

              else
              {
                v174 = (v389[1] - v389[0]) >> 4;
              }

              while (1)
              {
                v175 = &v170[16 * v171];
                v176 = vsub_f32(*v175, v172);
                v180 = vsub_f32(v175[1], v172);
                *v175 = v176;
                v175[1] = v180;
                v177 = vsub_f32(v180, v176);
                v178 = v180.f32[1] - v176.f32[1];
                v179 = sqrtf((v178 * v178) + (v177.f32[0] * v177.f32[0]));
                v180.f32[0] = vmuls_lane_f32(-v180.f32[0], v176, 1);
                v181 = v180.f32[0] + (v176.f32[0] * v180.f32[1]);
                v182 = (((v168[2] * v168[2]) * v179) * v179) - (v181 * v181);
                if (v182 > 0.0)
                {
                  break;
                }

LABEL_232:
                if (++v171 == v174)
                {
                  goto LABEL_235;
                }
              }

              v180.f32[0] = -(v180.f32[0] + (v176.f32[0] * v180.f32[1]));
              v176.f32[0] = -v177.f32[0];
              if (v178 >= 0.0)
              {
                v176.f32[0] = v177.f32[0];
              }

              v295 = v176.i32[0];
              v298 = sqrtf(v182);
              v307 = v181;
              v311 = v180.f32[1] - v176.f32[1];
              v169.f32[0] = v179 * v179;
              v183.f32[0] = ((v176.f32[0] * v298) + (v181 * v178)) / (v179 * v179);
              v292 = fabsf(v178);
              v315 = v177;
              v301 = v180.i32[0];
              v305 = v169;
              v353[1] = 0;
              v353[0] = 0;
              *&v354 = 0;
              v183.f32[1] = ((v292 * v298) + (v180.f32[0] * v177.f32[0])) / (v179 * v179);
              __p = vadd_f32(v172, v183);
              sub_2621CBA84(v353, &__p);
              v184 = vdup_lane_s32(v315, 0);
              v184.f32[0] = v311;
              __p = vadd_f32(v172, vdiv_f32(vmla_f32(vmul_n_f32(vneg_f32(__PAIR64__(LODWORD(v292), v295)), v298), v184, __PAIR64__(v301, LODWORD(v307))), vdup_lane_s32(v305, 0)));
              sub_2621CBA84(v353, &__p);
              v186 = v168;
              v413 = 0;
              __p = 0;
              v414 = 0;
              v410 = 0;
              v409 = 0;
              v411 = 0;
              v187 = v353[0];
              v188 = v353[1];
              if (v353[0] == v353[1])
              {
                v198 = 0;
                v197 = 0;
              }

              else
              {
                v189 = &v289[v171];
                v190 = v353[0];
                do
                {
                  v169 = vsub_f32(*v190, v189[1]);
                  if (vaddv_f32(vmul_f32(vsub_f32(*v190, *v189), v169)) <= 0.00001)
                  {
                    v191 = atan2f(vsub_f32(vdup_lane_s32(*v190, 1), v317).f32[0], vsub_f32(*v190, v173).f32[0]) / 3.14159265 * 180.0;
                    *&v405 = v191;
                    v169.i32[1] = DWORD1(v323);
                    v192 = *&v323 > v191 && *(&v323 + 1) < v191;
                    v193 = v192;
                    v194 = v191 + 360.0;
                    v195 = v194 < *&v323 && *(&v323 + 1) < v194;
                    v196 = v195;
                    if (v193 || v196)
                    {
                      sub_2621C8F2C(&__p, &v405);
                      sub_2621CBA84(&v409, v190);
                    }
                  }

                  ++v190;
                }

                while (v190 != v188);
                v197 = v410;
                v198 = v409;
              }

              if (v197 - v198 != 8)
              {
                goto LABEL_226;
              }

              v199 = vcge_f32(*&v323, v166);
              v200 = vadd_f32(*&v323, vdup_n_s32(0xC3B40000));
              *v185.i32 = *__p + -360.0;
              if (*__p < 360.0)
              {
                v185.i32[0] = *__p;
              }

              if (*v185.i32 < 0.0)
              {
                *v185.i32 = *v185.i32 + 360.0;
              }

              v201 = vbsl_s8(v199, v200, *&v323);
              v202 = vdup_lane_s32(v185, 0);
              v203 = vbsl_s8(vcltz_f32(v201), vadd_f32(v201, v166), v201);
              v204 = vcgt_f32(v203, v202);
              v205 = vbsl_s8(v204, v203, v202);
              v206 = vbsl_s8(v204, v202, v203);
              v169 = vsub_f32(v205, v206);
              v207 = vsub_f32(vadd_f32(v206, v166), v205);
              v208 = vbsl_s8(vcgt_f32(v169, v207), v207, v169);
              if (v208.f32[1] < 0.1)
              {
                goto LABEL_226;
              }

              if (v208.f32[0] < 0.1)
              {
                goto LABEL_226;
              }

              v209 = vmaxnm_f32(v208, vdup_n_s32(0x3A83126Fu));
              __asm { FMOV            V3.2S, #10.0 }

              v214 = vcgt_f32(vdiv_f32(v209, vrev64_s32(v209)), _D3);
              v169 = vorr_s8(vdup_lane_s32(v214, 1), v214);
              if (v169.i8[0])
              {
                v215 = v323;
                v216.i32[1] = DWORD1(v323);
                v216.i32[0] = *__p;
                DWORD1(v215) = *__p;
                *&v215 = vbsl_s8(vdup_lane_s32(vcgt_f32(vdup_lane_s32(v209, 1), v209), 0), v216, *&v215);
                v323 = v215;
                v217 = &v289[v171];
                v218 = *v198;
                v219 = vsub_f32(*v217, *v198);
                v220 = sqrtf(vaddv_f32(vmul_f32(v219, v219)));
                if (v220 < 0.01)
                {
                  v168 = v186;
                }

                else
                {
                  v221 = vsub_f32(v217[1], v218);
                  v222 = sqrtf(vaddv_f32(vmul_f32(v221, v221)));
                  v168 = v186;
                  if (v222 >= 0.01)
                  {
                    v217[v220 > v222] = v218;
                  }
                }

LABEL_227:
                operator delete(v198);
              }

              else
              {
LABEL_226:
                v168 = v186;
                if (v198)
                {
                  goto LABEL_227;
                }
              }

              if (__p)
              {
                operator delete(__p);
              }

              if (v187)
              {
                operator delete(v187);
              }

              goto LABEL_232;
            }

LABEL_235:
            if (v170)
            {
              operator delete(v170);
            }

            v165 = v282;
            v163 = v283;
            v164 = v288;
          }

          LODWORD(v223) = DWORD1(v323);
          v224 = *&v323 + 360.0;
          if (*(&v323 + 1) <= *&v323)
          {
            v224 = *&v323;
          }

          if ((v224 - *(&v323 + 1)) >= 360.0)
          {
            *&v223 = *(&v323 + 1) + 360.0;
          }

          *(&v223 + 1) = v224;
          v398 = v223;
          sub_2621CBA84(&__src, &v398);
          if (++v164 >= v284)
          {
            v225 = v289;
            v162 = v276;
            goto LABEL_245;
          }
        }
      }

      v225 = v406;
      v165 = v407;
LABEL_245:
      v369 = 0uLL;
      v370[0] = 0;
      v290 = v225;
      sub_2621DE214(&v369, v225, v165, (v165 - v225) >> 4);
      v371 = 0uLL;
      v370[1] = 0;
      v226 = *(&v342 + 1);
      sub_2621C8E70(&v370[1], *(&v342 + 1), v343[0], (v343[0] - *(&v342 + 1)) >> 2);
      v372 = 0uLL;
      v373[0] = 0;
      v227 = v344;
      sub_2621DE214(&v372, v344, v345, (v345 - v344) >> 4);
      v374 = 0uLL;
      v373[1] = 0;
      v228 = v346;
      sub_2621C8E70(&v373[1], v346, *(&v346 + 1), (*(&v346 + 1) - v346) >> 2);
      v375 = 0uLL;
      v376[0] = 0;
      sub_26233CF0C(&v375, v163, v162, v278 >> 4);
      v377 = 0uLL;
      v376[1] = 0;
      v229 = __src;
      sub_2621CC8B4(&v376[1], __src, *(&__src + 1), (*(&__src + 1) - __src) >> 3);
      if (v229)
      {
        operator delete(v229);
      }

      if (v290)
      {
        operator delete(v290);
      }

      if (v228)
      {
        operator delete(v228);
      }

      if (v227)
      {
        operator delete(v227);
      }

      if (v226)
      {
        operator delete(v226);
      }

      if (v160)
      {
        operator delete(v160);
      }

      if (v401[0])
      {
        operator delete(v401[0]);
      }

      if (v163)
      {
        operator delete(v163);
      }

      if (v360[1])
      {
        operator delete(v360[1]);
      }

      if (v359[0])
      {
        operator delete(v359[0]);
      }

      if (v357[1])
      {
        operator delete(v357[1]);
      }

      if (v356[0])
      {
        operator delete(v356[0]);
      }

      v324 = objc_msgSend_array(MEMORY[0x277CBEB18], v230, v231, v276, v277);
      v316 = v369;
      if (*(&v369 + 1) != v369)
      {
        v235 = 0;
        *v234.i32 = vcvts_n_f32_u64(v279, 1uLL);
        v236 = vdup_lane_s32(v234, 0);
        v237 = (*(&v369 + 1) - v369) >> 4;
        v238 = (v369 + 8);
        do
        {
          v239 = objc_alloc_init(RS3DSurface);
          v240 = vsub_f32(v238[-1], v236);
          if (v313)
          {
            v241 = v313[1].f32[1];
            v242 = *v313[8].f32;
            v243 = vmla_n_f32(v313[8], v240, v241);
            v244 = vsub_f32(*v238, v236);
          }

          else
          {
            v243 = vmla_f32(0, 0, v240);
            v244 = vsub_f32(*v238, v236);
            *&v242 = 0;
            v241 = 0.0;
          }

          v356[0] = v243;
          v356[1] = vmla_n_f32(*&v242, v244, v241);
          sub_26223FD48(v356, v239);
          if (v239)
          {
            v239->type = 0;
            v239->confidence = *(v370[1] + v235);
          }

          objc_msgSend_addObject_(v324, v245, v239);

          ++v235;
          v238 += 2;
        }

        while (v235 < v237);
      }

      v318 = objc_msgSend_array(MEMORY[0x277CBEB18], v232, v233);
      v312 = v372;
      if (*(&v372 + 1) != v372)
      {
        v249 = 0;
        *v248.i32 = vcvts_n_f32_u64(v279, 1uLL);
        v250 = vdup_lane_s32(v248, 0);
        v251 = (*(&v372 + 1) - v372) >> 4;
        v252 = (v372 + 8);
        do
        {
          v253 = objc_alloc_init(RS3DSurface);
          v254 = vsub_f32(v252[-1], v250);
          if (v313)
          {
            v255 = v313[1].f32[1];
            v256 = *v313[8].f32;
            v257 = vmla_n_f32(v313[8], v254, v255);
            v258 = vsub_f32(*v252, v250);
          }

          else
          {
            v257 = vmla_f32(0, 0, v254);
            v258 = vsub_f32(*v252, v250);
            *&v256 = 0;
            v255 = 0.0;
          }

          v356[0] = v257;
          v356[1] = vmla_n_f32(*&v256, v258, v255);
          sub_26223FD48(v356, v253);
          if (v253)
          {
            v253->type = 3;
            v253->confidence = *(v373[1] + v249);
          }

          objc_msgSend_addObject_(v318, v259, v253);

          ++v249;
          v252 += 2;
        }

        while (v249 < v251);
      }

      v260 = objc_msgSend_array(MEMORY[0x277CBEB18], v246, v247);
      v308 = v375;
      if (*(&v375 + 1) != v375)
      {
        v262 = 0;
        *v261.i32 = vcvts_n_f32_u64(v279, 1uLL);
        v263 = (*(&v375 + 1) - v375) >> 4;
        v264 = (v375 + 8);
        v265 = 4;
        v266 = vdup_lane_s32(v261, 0);
        while (1)
        {
          v267 = objc_alloc_init(RS3DCurvedSurface);
          v268 = v267;
          if (v313)
          {
            break;
          }

          v269 = 0.0;
          if (v267)
          {
            goto LABEL_291;
          }

LABEL_292:
          if (!v313)
          {
            *&v271 = 0;
            v270 = 0.0;
            if (!v267)
            {
              goto LABEL_295;
            }

LABEL_294:
            *&v267->_circleCenter[4] = vmla_n_f32(*&v271, vsub_f32(vrev64_s32(*(v264 - 2)), v266), v270);
            v272 = v376[1];
            LODWORD(v267->_startOrientation) = *(v376[1] + v262);
            v267->_endOrientation = *&v272[v265];
            goto LABEL_295;
          }

          v270 = v313[1].f32[1];
          v271 = *v313[8].f32;
          if (v267)
          {
            goto LABEL_294;
          }

LABEL_295:
          sub_2622F85D0(v267);
          if (v268)
          {
            v268->super.type = 0;
          }

          objc_msgSend_addObject_(v260, v273, v268);

          ++v262;
          v265 += 8;
          v264 += 4;
          if (v262 >= v263)
          {
            goto LABEL_303;
          }
        }

        v269 = v313[1].f32[1];
        if (!v267)
        {
          goto LABEL_292;
        }

LABEL_291:
        v267->_radius = *v264 * v269;
        goto LABEL_292;
      }

LABEL_303:
      sub_2622AE900(v280, v324);
      sub_2622AE920(v280, v318);
      sub_2622AE930(v280, v260);
      sub_2622B1630(v280);

      if (v376[1])
      {
        operator delete(v376[1]);
      }

      if (v308)
      {
        operator delete(v308);
      }

      if (v373[1])
      {
        operator delete(v373[1]);
      }

      if (v312)
      {
        operator delete(v312);
      }

      if (v370[1])
      {
        operator delete(v370[1]);
      }

      if (v316)
      {
        operator delete(v316);
      }
    }

    *&v369 = &v327;
    sub_26232F788(&v369);
    if (v326[1])
    {
      v326[2] = v326[1];
      operator delete(v326[1]);
    }

    if (v325[0])
    {
      v325[1] = v325[0];
      operator delete(v325[0]);
    }

    if (v337[0])
    {
      operator delete(v337[0]);
    }

    if (v338[0])
    {
      operator delete(v338[0]);
    }

    if (v339[0])
    {
      operator delete(v339[0]);
    }

    if (v340[0])
    {
      operator delete(v340[0]);
    }
  }

  else
  {
    v280 = 0;
  }

  v9 = v281;
LABEL_328:

  v274 = *MEMORY[0x277D85DE8];

  return v280;
}

void sub_26232F14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  STACK[0x540] = v71 - 192;
  sub_26232F788(&STACK[0x540]);
  if (STACK[0x898])
  {
    operator delete(STACK[0x898]);
  }

  if (STACK[0x8B0])
  {
    operator delete(STACK[0x8B0]);
  }

  STACK[0x770] = &unk_2874EF0B8;
  if (STACK[0x7F0])
  {
    sub_2621D1B78(STACK[0x7F0]);
  }

  if (STACK[0x8C8])
  {
    operator delete(STACK[0x8C8]);
  }

  if (a71)
  {
    operator delete(a71);
  }

  if (STACK[0x208])
  {
    operator delete(STACK[0x208]);
  }

  if (STACK[0x220])
  {
    operator delete(STACK[0x220]);
  }

  if (STACK[0x238])
  {
    operator delete(STACK[0x238]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_26232F704(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

void sub_26232F788(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 152;
      v7 = v4 - 152;
      v8 = v4 - 152;
      do
      {
        v9 = *v8;
        v8 -= 152;
        (*v9)(v7);
        v6 -= 152;
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

uint64_t sub_26232F848(uint64_t a1)
{
  v5 = (a1 + 48);
  sub_26232F788(&v5);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_26232F8A4(void *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v6 = a1;
  v7 = (a2[1] - *a2) >> 7;
  LODWORD(v56) = -1082130432;
  sub_2621CD1D8(&__p, v7);
  sub_2621E1B50(v55, v7);
  v49 = a3;
  if (__p)
  {
    v53 = __p;
    operator delete(__p);
  }

  v8 = *a2;
  v9 = a2[1];
  if (v9 != *a2)
  {
    v10 = 0;
    v11 = 128;
    v12 = 24;
    while (1)
    {
      v13 = v10++;
      if (v10 < (v9 - v8) >> 7)
      {
        break;
      }

      v22 = (v9 - v8) >> 7;
LABEL_16:
      v12 += 24;
      v11 += 128;
      if (v10 >= v22)
      {
        goto LABEL_17;
      }
    }

    v14 = v11;
    v15 = v12;
    v50 = v10;
    while (1)
    {
      __p = 0;
      v53 = 0;
      v54 = 0;
      sub_26220FA14(&__p, (v8 + (v13 << 7)), v8 + v14);
      if ((objc_msgSend_isEqualToString_(v6, v16, @"Chair") & 1) != 0 || objc_msgSend_isEqualToString_(v6, v17, @"Table"))
      {
        v19 = v54;
      }

      else
      {
        if (!objc_msgSend_isEqualToString_(v6, v18, @"Storage"))
        {
          goto LABEL_11;
        }

        v19 = __p;
      }

      v20 = v55[0];
      *(*(v55[0] + v15) + 4 * v13) = v19;
      *(*(v20 + 24 * v13) + 4 * v10) = v19;
LABEL_11:
      ++v10;
      v8 = *a2;
      v9 = a2[1];
      v21 = v9 - *a2;
      v15 += 24;
      v14 += 128;
      if (v10 >= v21 >> 7)
      {
        v22 = v21 >> 7;
        v10 = v50;
        goto LABEL_16;
      }
    }
  }

LABEL_17:
  sub_2621CD160(&__p, (v49[1] - *v49) >> 2);
  v23 = __p;
  v24 = v53;
  if (__p != v53)
  {
    v25 = 0;
    v26 = (v53 - __p - 8) >> 3;
    v27 = vdupq_n_s64(v26);
    v28 = (v26 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v29 = xmmword_2623A7620;
    v30 = vdupq_n_s64(2uLL);
    do
    {
      v31 = vmovn_s64(vcgeq_u64(v27, v29));
      if (v31.i8[0])
      {
        v23[v25] = v25;
      }

      if (v31.i8[4])
      {
        v23[v25 + 1] = v25 + 1;
      }

      v25 += 2;
      v29 = vaddq_s64(v29, v30);
    }

    while (v28 != v25);
  }

  v56 = v49;
  v32 = 126 - 2 * __clz(v24 - v23);
  if (v23 == v24)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  sub_26232FCDC(v23, v24, &v56, v33, 1);
  v34 = __p;
  a4[1] = *a4;
  if (v34 != v53)
  {
    do
    {
      v35 = *v34;
      LODWORD(v56) = *v34;
      sub_2621C7CD0(a4, &v56);
      v36 = __p;
      v37 = v53;
      if ((v53 - __p) < 9)
      {
        v34 = 0;
        v38 = 0;
        if (!__p)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v34 = 0;
        v38 = 0;
        v39 = 24 * v35;
        v40 = 1;
        do
        {
          v41 = v36[v40];
          if (*(*(v55[0] + v39) + 4 * v41) <= 0.25)
          {
            v42 = v38 - v34;
            v43 = (v38 - v34) >> 3;
            v44 = v43 + 1;
            if ((v43 + 1) >> 61)
            {
              sub_2621CBEB0();
            }

            if (-v34 >> 2 > v44)
            {
              v44 = -v34 >> 2;
            }

            if (-v34 >= 0x7FFFFFFFFFFFFFF8)
            {
              v45 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v45 = v44;
            }

            if (v45)
            {
              sub_2621CBEC8(v45);
            }

            v46 = (v38 - v34) >> 3;
            v47 = (8 * v43);
            v48 = (8 * v43 - 8 * v46);
            *v47 = v41;
            v38 = v47 + 1;
            memcpy(v48, v34, v42);
            if (v34)
            {
              operator delete(v34);
            }

            v34 = v48;
            v36 = __p;
            v37 = v53;
          }

          ++v40;
        }

        while (v40 < v37 - v36);
        if (!v36)
        {
          goto LABEL_45;
        }
      }

      v53 = v36;
      operator delete(v36);
LABEL_45:
      __p = v34;
      v53 = v38;
      v54 = 0;
    }

    while (v34 != v38);
  }

  if (v34)
  {
    v53 = v34;
    operator delete(v34);
  }

  __p = v55;
  sub_2621E1D40(&__p);
}