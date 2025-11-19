void _TIBeginMockingAssetManager()
{
  __isMocking = 1;
  v0 = objc_alloc_init(TIAssetManagerMock);
  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x277D6FE38] performSelector:sel_setSharedAssetManager_ withObject:v0];
  }
}

void _TIEndMockingAssetManager()
{
  if (__isMocking == 1)
  {
    __isMocking = 0;
    if (objc_opt_respondsToSelector())
    {
      v0 = MEMORY[0x277D6FE38];

      [v0 performSelector:sel_setSharedAssetManager_ withObject:0];
    }
  }
}

void std::__tree<std::__value_type<std::string,long>,std::__map_value_compare<std::string,std::__value_type<std::string,long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,long>,std::__map_value_compare<std::string,std::__value_type<std::string,long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,long>,std::__map_value_compare<std::string,std::__value_type<std::string,long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void sub_26D4927C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__split_buffer<std::string> *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, id a22)
{
  a21 = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&a21);

  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(std::string const&,std::string const&),std::string*,false>(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, char a5)
{
  while (2)
  {
    v9 = (a2 - 24);
    v135 = a2;
    v137 = a2 - 3;
    v10 = (a2 - 72);
    v11 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v11;
          v12 = a2 - v11;
          v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 3);
          if (v13 > 2)
          {
            switch(v13)
            {
              case 3:
                v86 = (*(*a3 + 16))();
                v87 = (*(*a3 + 16))();
                if (v86)
                {
                  if (v87)
                  {
                    goto LABEL_118;
                  }

                  v191 = *(v11 + 16);
                  v166 = *v11;
                  *v11 = *(v11 + 24);
                  *(v11 + 16) = *(v11 + 40);
                  *(v11 + 24) = v166;
                  *(v11 + 40) = v191;
                  if (!(*(*a3 + 16))())
                  {
                    return;
                  }

                  v89 = *(v11 + 24);
                  v90 = *(v11 + 40);
                  v134 = *(a2 - 1);
                  *(v11 + 24) = *v9;
                  *(v11 + 40) = v134;
LABEL_119:
                  *(a2 - 1) = v90;
                  *v9 = v89;
                  return;
                }

                if (!v87)
                {
                  return;
                }

                v122 = *(v11 + 24);
                v123 = *(v11 + 40);
                v124 = *(a2 - 1);
                *(v11 + 24) = *v9;
                *(v11 + 40) = v124;
                *(a2 - 1) = v123;
                *v9 = v122;
LABEL_182:
                if ((*(*a3 + 16))())
                {
                  v189 = *(v11 + 16);
                  v164 = *v11;
                  *v11 = *(v11 + 24);
                  *(v11 + 16) = *(v11 + 40);
                  *(v11 + 24) = v164;
                  *(v11 + 40) = v189;
                }

                return;
              case 4:

                std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(std::string const&,std::string const&),std::string*,0>(v11, (v11 + 24), (v11 + 48), (a2 - 24), a3);
                return;
              case 5:
                v78 = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(std::string const&,std::string const&),std::string*,0>(v11, (v11 + 24), (v11 + 48), (v11 + 72), a3);
                if (!(*(*a3 + 16))(v78))
                {
                  return;
                }

                v79 = *(v11 + 72);
                v80 = *(v11 + 88);
                v81 = *(a2 - 1);
                *(v11 + 72) = *v9;
                *(v11 + 88) = v81;
                *(a2 - 1) = v80;
                *v9 = v79;
                if (!(*(*a3 + 16))())
                {
                  return;
                }

                v82 = *(v11 + 64);
                v83 = *(v11 + 48);
                *(v11 + 48) = *(v11 + 72);
                *(v11 + 64) = *(v11 + 88);
                *(v11 + 72) = v83;
                *(v11 + 88) = v82;
                if (!(*(*a3 + 16))())
                {
                  return;
                }

                v84 = *(v11 + 40);
                v85 = *(v11 + 24);
                *(v11 + 24) = *(v11 + 48);
                *(v11 + 40) = *(v11 + 64);
                *(v11 + 48) = v85;
                *(v11 + 64) = v84;
                goto LABEL_182;
            }
          }

          else
          {
            if (v13 < 2)
            {
              return;
            }

            if (v13 == 2)
            {
              if (!(*(*a3 + 16))())
              {
                return;
              }

LABEL_118:
              v185 = *(v11 + 16);
              v160 = *v11;
              v88 = *v9;
              *(v11 + 16) = *(a2 - 1);
              *v11 = v88;
              v89 = v160;
              v90 = v185;
              goto LABEL_119;
            }
          }

          if (v12 <= 575)
          {
            if (a5)
            {
              if (v11 != a2)
              {
                v91 = v11 + 24;
                if ((v11 + 24) != a2)
                {
                  v92 = 0;
                  do
                  {
                    v93 = v91;
                    if ((*(*a3 + 16))())
                    {
                      v186 = *(v93 + 16);
                      v161 = *v93;
                      *(v93 + 8) = 0;
                      *(v93 + 16) = 0;
                      *v93 = 0;
                      v94 = v92;
                      do
                      {
                        v95 = v11 + v94;
                        if (*(v11 + v94 + 47) < 0)
                        {
                          operator delete(*(v95 + 24));
                        }

                        *(v95 + 24) = *v95;
                        *(v95 + 40) = *(v95 + 16);
                        *(v95 + 23) = 0;
                        *v95 = 0;
                        if (!v94)
                        {
                          v96 = v11;
                          goto LABEL_133;
                        }

                        v94 -= 24;
                      }

                      while (((*(*a3 + 16))() & 1) != 0);
                      v96 = v11 + v94 + 24;
                      if (*(v11 + v94 + 47) < 0)
                      {
                        operator delete(*v96);
                      }

LABEL_133:
                      *(v96 + 16) = v186;
                      *v96 = v161;
                      a2 = v135;
                    }

                    v91 = v93 + 24;
                    v92 += 24;
                  }

                  while ((v93 + 24) != a2);
                }
              }
            }

            else if (v11 != a2)
            {
              v125 = v11 + 24;
              if ((v11 + 24) != a2)
              {
                v126 = (v11 + 47);
                do
                {
                  v127 = v125;
                  if ((*(*a3 + 16))())
                  {
                    v190 = *(v127 + 16);
                    v165 = *v127;
                    *(v127 + 8) = 0;
                    *(v127 + 16) = 0;
                    *v127 = 0;
                    v128 = v126;
                    do
                    {
                      v129 = v128;
                      v130 = v128 - 23;
                      v131 = v128 - 47;
                      if (*v128 < 0)
                      {
                        operator delete(*v130);
                      }

                      *v130 = *v131;
                      *(v130 + 2) = *(v131 + 2);
                      *(v129 - 24) = 0;
                      *(v129 - 47) = 0;
                      v132 = (*(*a3 + 16))();
                      v128 = v129 - 24;
                    }

                    while ((v132 & 1) != 0);
                    v133 = (v129 - 47);
                    if (*(v129 - 24) < 0)
                    {
                      operator delete(*v133);
                    }

                    *(v129 - 31) = v190;
                    *v133 = v165;
                    a2 = v135;
                  }

                  v125 = v127 + 24;
                  v126 += 24;
                }

                while ((v127 + 24) != a2);
              }
            }

            return;
          }

          if (!a4)
          {
            if (v11 != a2)
            {
              v97 = (v13 - 2) >> 1;
              v138 = v97;
              v141 = v11;
              do
              {
                v98 = v97;
                if (v138 >= v97)
                {
                  v99 = (2 * v97) | 1;
                  v100 = a1 + 24 * v99;
                  if (2 * v97 + 2 < v13 && (*(*a3 + 16))())
                  {
                    v100 += 24;
                    v99 = 2 * v98 + 2;
                  }

                  v101 = a1 + 24 * v98;
                  a2 = v135;
                  if (((*(*a3 + 16))() & 1) == 0)
                  {
                    v187 = *(v101 + 16);
                    v162 = *v101;
                    *(v101 + 8) = 0;
                    *(v101 + 16) = 0;
                    *v101 = 0;
                    while (1)
                    {
                      v102 = v100;
                      if (*(v101 + 23) < 0)
                      {
                        operator delete(*v101);
                      }

                      v103 = *v100;
                      *(v101 + 16) = *(v100 + 16);
                      *v101 = v103;
                      *(v100 + 23) = 0;
                      *v100 = 0;
                      if (v138 < v99)
                      {
                        break;
                      }

                      v104 = a1;
                      v105 = (2 * v99) | 1;
                      v100 = v104 + 24 * v105;
                      v99 = 2 * v99 + 2;
                      if (v99 >= v13)
                      {
                        v99 = v105;
                      }

                      else if ((*(*a3 + 16))())
                      {
                        v100 += 24;
                      }

                      else
                      {
                        v99 = v105;
                      }

                      v101 = v102;
                      a1 = v141;
                      if ((*(*a3 + 16))())
                      {
                        if (*(v102 + 23) < 0)
                        {
                          operator delete(*v102);
                        }

                        break;
                      }
                    }

                    *(v102 + 16) = v187;
                    *v102 = v162;
                  }
                }

                v97 = v98 - 1;
              }

              while (v98);
              v106 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
              do
              {
                v107 = 0;
                v108 = a2;
                v136 = *a1;
                *v194 = *(a1 + 8);
                *&v194[7] = *(a1 + 15);
                v139 = *(a1 + 23);
                *(a1 + 8) = 0;
                *(a1 + 16) = 0;
                *a1 = 0;
                do
                {
                  v109 = a1;
                  v110 = a1 + 24 * v107;
                  a1 = v110 + 24;
                  v111 = 2 * v107;
                  v107 = (2 * v107) | 1;
                  v112 = v111 + 2;
                  if (v111 + 2 < v106)
                  {
                    v113 = v110 + 48;
                    if ((*(*a3 + 16))())
                    {
                      a1 = v113;
                      v107 = v112;
                    }

                    if (*(v109 + 23) < 0)
                    {
                      operator delete(*v109);
                    }
                  }

                  v114 = *a1;
                  *(v109 + 16) = *(a1 + 16);
                  *v109 = v114;
                  *(a1 + 23) = 0;
                  *a1 = 0;
                }

                while (v107 <= (v106 - 2) / 2);
                a2 = (v108 - 24);
                if (a1 == (v108 - 24))
                {
                  *a1 = v136;
                  *(a1 + 8) = *v194;
                  *(a1 + 15) = *&v194[7];
                  *(a1 + 23) = v139;
                }

                else
                {
                  v115 = *a2;
                  *(a1 + 16) = *(v108 - 1);
                  *a1 = v115;
                  *(v108 - 3) = v136;
                  *(v108 - 9) = *&v194[7];
                  *(v108 - 2) = *v194;
                  *(v108 - 1) = v139;
                  v116 = a1 - v141 + 24;
                  if (v116 >= 25)
                  {
                    v117 = (-2 - 0x5555555555555555 * (v116 >> 3)) >> 1;
                    v118 = v141 + 24 * v117;
                    if ((*(*a3 + 16))())
                    {
                      v188 = *(a1 + 16);
                      v163 = *a1;
                      *(a1 + 8) = 0;
                      *(a1 + 16) = 0;
                      *a1 = 0;
                      while (1)
                      {
                        v119 = v118;
                        if (*(a1 + 23) < 0)
                        {
                          operator delete(*a1);
                        }

                        v120 = *v118;
                        *(a1 + 16) = *(v118 + 16);
                        *a1 = v120;
                        *(v118 + 23) = 0;
                        *v118 = 0;
                        if (!v117)
                        {
                          break;
                        }

                        v117 = (v117 - 1) >> 1;
                        v118 = v141 + 24 * v117;
                        a1 = v119;
                        if (((*(*a3 + 16))() & 1) == 0)
                        {
                          if (*(v119 + 23) < 0)
                          {
                            operator delete(*v119);
                          }

                          break;
                        }
                      }

                      *(v119 + 16) = v188;
                      *v119 = v163;
                    }
                  }
                }

                v121 = v106-- <= 2;
                a1 = v141;
              }

              while (!v121);
            }

            return;
          }

          v14 = v13 >> 1;
          v15 = v11 + 24 * v14;
          v16 = *(*a3 + 16);
          if (v12 >= 0xC01)
          {
            v17 = v16();
            v18 = (*(*a3 + 16))();
            if (v17)
            {
              if (v18)
              {
                v167 = *(a1 + 16);
                v142 = *a1;
                v19 = *v9;
                *(a1 + 16) = *(a2 - 1);
                *a1 = v19;
              }

              else
              {
                v173 = *(a1 + 16);
                v148 = *a1;
                v27 = *v15;
                *(a1 + 16) = *(v15 + 16);
                *a1 = v27;
                *(v15 + 16) = v173;
                *v15 = v148;
                if (!(*(*a3 + 16))())
                {
                  goto LABEL_27;
                }

                v167 = *(v15 + 16);
                v142 = *v15;
                v28 = *v9;
                *(v15 + 16) = *(a2 - 1);
                *v15 = v28;
              }

              *(a2 - 1) = v167;
              *v9 = v142;
            }

            else if (v18)
            {
              v169 = *(v15 + 16);
              v144 = *v15;
              v23 = *v9;
              *(v15 + 16) = *(a2 - 1);
              *v15 = v23;
              *(a2 - 1) = v169;
              *v9 = v144;
              if ((*(*a3 + 16))())
              {
                v170 = *(a1 + 16);
                v145 = *a1;
                v24 = *v15;
                *(a1 + 16) = *(v15 + 16);
                *a1 = v24;
                *(v15 + 16) = v170;
                *v15 = v145;
              }
            }

LABEL_27:
            v29 = a1 + 24 * v14 - 24;
            v30 = (*(*a3 + 16))();
            v31 = (*(*a3 + 16))();
            if (v30)
            {
              if (v31)
              {
                v32 = *(a1 + 24);
                v33 = *(a1 + 40);
                v34 = *(a2 - 4);
                *(a1 + 24) = *v137;
                *(a1 + 40) = v34;
                *(a2 - 4) = v33;
                *v137 = v32;
              }

              else
              {
                v41 = *(a1 + 24);
                v42 = *(a1 + 40);
                v43 = *(a1 + 24 * v14 - 8);
                *(a1 + 24) = *v29;
                *(a1 + 40) = v43;
                *(a1 + 24 * v14 - 8) = v42;
                *v29 = v41;
                if ((*(*a3 + 16))())
                {
                  v176 = *(a1 + 24 * v14 - 8);
                  v151 = *v29;
                  v44 = *v137;
                  *(a1 + 24 * v14 - 8) = *(a2 - 4);
                  *v29 = v44;
                  *(a2 - 4) = v176;
                  *v137 = v151;
                }
              }
            }

            else if (v31)
            {
              v174 = *(a1 + 24 * v14 - 8);
              v149 = *v29;
              v35 = *v137;
              *(a1 + 24 * v14 - 8) = *(a2 - 4);
              *v29 = v35;
              *(a2 - 4) = v174;
              *v137 = v149;
              if ((*(*a3 + 16))())
              {
                v36 = *(a1 + 24);
                v37 = *(a1 + 40);
                v38 = *(a1 + 24 * v14 - 8);
                *(a1 + 24) = *v29;
                *(a1 + 40) = v38;
                *(a1 + 24 * v14 - 8) = v37;
                *v29 = v36;
              }
            }

            v45 = a1 + 24 * v14;
            v46 = (*(*a3 + 16))();
            v47 = (*(*a3 + 16))();
            if (v46)
            {
              if (v47)
              {
                v48 = *(a1 + 48);
                v49 = *(a1 + 64);
                v50 = *(a2 - 7);
                *(a1 + 48) = *v10;
                *(a1 + 64) = v50;
              }

              else
              {
                v55 = *(a1 + 48);
                v56 = *(a1 + 64);
                v57 = *(v45 + 40);
                *(a1 + 48) = *(v45 + 24);
                *(a1 + 64) = v57;
                *(v45 + 40) = v56;
                *(v45 + 24) = v55;
                if (!(*(*a3 + 16))())
                {
                  goto LABEL_47;
                }

                v178 = *(v45 + 40);
                v153 = *(v45 + 24);
                v58 = *v10;
                *(v45 + 40) = *(a2 - 7);
                *(v45 + 24) = v58;
                v48 = v153;
                v49 = v178;
              }

              *(a2 - 7) = v49;
              *v10 = v48;
            }

            else if (v47)
            {
              v177 = *(v45 + 40);
              v152 = *(v45 + 24);
              v51 = *v10;
              *(v45 + 40) = *(a2 - 7);
              *(v45 + 24) = v51;
              *(a2 - 7) = v177;
              *v10 = v152;
              if ((*(*a3 + 16))())
              {
                v52 = *(a1 + 48);
                v53 = *(a1 + 64);
                v54 = *(v45 + 40);
                *(a1 + 48) = *(v45 + 24);
                *(a1 + 64) = v54;
                *(v45 + 40) = v53;
                *(v45 + 24) = v52;
              }
            }

LABEL_47:
            v59 = (*(*a3 + 16))();
            v60 = (*(*a3 + 16))();
            if ((v59 & 1) == 0)
            {
              if (v60)
              {
                v180 = *(v15 + 16);
                v155 = *v15;
                *v15 = *(v45 + 24);
                *(v15 + 16) = *(v45 + 40);
                *(v45 + 40) = v180;
                *(v45 + 24) = v155;
                if ((*(*a3 + 16))())
                {
                  v181 = *(v29 + 16);
                  v156 = *v29;
                  *v29 = *v15;
                  *(v29 + 16) = *(v15 + 16);
                  *(v15 + 16) = v181;
                  *v15 = v156;
                }
              }

              goto LABEL_56;
            }

            if (v60)
            {
              v179 = *(v29 + 16);
              v154 = *v29;
              *v29 = *(v45 + 24);
              *(v29 + 16) = *(v45 + 40);
            }

            else
            {
              v182 = *(v29 + 16);
              v157 = *v29;
              *v29 = *v15;
              *(v29 + 16) = *(v15 + 16);
              *(v15 + 16) = v182;
              *v15 = v157;
              if (!(*(*a3 + 16))())
              {
LABEL_56:
                v183 = *(a1 + 16);
                v158 = *a1;
                v61 = *v15;
                *(a1 + 16) = *(v15 + 16);
                *a1 = v61;
                *(v15 + 16) = v183;
                *v15 = v158;
                goto LABEL_57;
              }

              v179 = *(v15 + 16);
              v154 = *v15;
              *v15 = *(v45 + 24);
              *(v15 + 16) = *(v45 + 40);
            }

            *(v45 + 40) = v179;
            *(v45 + 24) = v154;
            goto LABEL_56;
          }

          v20 = v16();
          v21 = (*(*a3 + 16))();
          if (v20)
          {
            if (v21)
            {
              v168 = *(v15 + 16);
              v143 = *v15;
              v22 = *v9;
              *(v15 + 16) = *(a2 - 1);
              *v15 = v22;
LABEL_35:
              *(a2 - 1) = v168;
              *v9 = v143;
              goto LABEL_57;
            }

            v175 = *(v15 + 16);
            v150 = *v15;
            v39 = *a1;
            *(v15 + 16) = *(a1 + 16);
            *v15 = v39;
            *(a1 + 16) = v175;
            *a1 = v150;
            if ((*(*a3 + 16))())
            {
              v168 = *(a1 + 16);
              v143 = *a1;
              v40 = *v9;
              *(a1 + 16) = *(a2 - 1);
              *a1 = v40;
              goto LABEL_35;
            }
          }

          else if (v21)
          {
            v171 = *(a1 + 16);
            v146 = *a1;
            v25 = *v9;
            *(a1 + 16) = *(a2 - 1);
            *a1 = v25;
            *(a2 - 1) = v171;
            *v9 = v146;
            if ((*(*a3 + 16))())
            {
              v172 = *(v15 + 16);
              v147 = *v15;
              v26 = *a1;
              *(v15 + 16) = *(a1 + 16);
              *v15 = v26;
              *(a1 + 16) = v172;
              *a1 = v147;
            }
          }

LABEL_57:
          --a4;
          if (a5 & 1) != 0 || ((*(*a3 + 16))())
          {
            break;
          }

          v196 = *(a1 + 16);
          v193 = *a1;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          if ((*(*a3 + 16))())
          {
            v11 = a1;
            do
            {
              v11 += 24;
            }

            while (((*(*a3 + 16))() & 1) == 0);
          }

          else
          {
            v71 = a1 + 24;
            do
            {
              v11 = v71;
              if (v71 >= a2)
              {
                break;
              }

              v72 = (*(*a3 + 16))();
              v71 = v11 + 24;
            }

            while (!v72);
          }

          v73 = a2;
          if (v11 < a2)
          {
            v73 = a2;
            do
            {
              v73 = (v73 - 24);
            }

            while (((*(*a3 + 16))() & 1) != 0);
          }

          while (v11 < v73)
          {
            v184 = *(v11 + 16);
            v159 = *v11;
            v74 = *v73;
            *(v11 + 16) = v73[1].n128_u64[0];
            *v11 = v74;
            v73[1].n128_u64[0] = v184;
            *v73 = v159;
            do
            {
              v11 += 24;
            }

            while (!(*(*a3 + 16))());
            do
            {
              v73 = (v73 - 24);
            }

            while (((*(*a3 + 16))() & 1) != 0);
          }

          v75 = (v11 - 24);
          if (v11 - 24 == a1)
          {
            if (*(v11 - 1) < 0)
            {
              operator delete(*v75);
            }
          }

          else
          {
            if (*(a1 + 23) < 0)
            {
              operator delete(*a1);
            }

            v76 = *v75;
            *(a1 + 16) = *(v11 - 8);
            *a1 = v76;
            *(v11 - 1) = 0;
            *(v11 - 24) = 0;
          }

          a5 = 0;
          *(v11 - 8) = v196;
          *v75 = v193;
        }

        v195 = *(a1 + 16);
        v192 = *a1;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        v62 = a1;
        do
        {
          v62 += 24;
        }

        while (((*(*a3 + 16))() & 1) != 0);
        v63 = a2;
        if (v62 - 24 == a1)
        {
          v63 = a2;
          do
          {
            if (v62 >= v63)
            {
              break;
            }

            v63 = (v63 - 24);
          }

          while (((*(*a3 + 16))() & 1) == 0);
        }

        else
        {
          do
          {
            v63 = (v63 - 24);
          }

          while (!(*(*a3 + 16))());
        }

        v11 = v62;
        if (v62 < v63)
        {
          v64 = v63;
          do
          {
            v65 = *v11;
            v66 = *(v11 + 16);
            v67 = *(v64 + 16);
            *v11 = *v64;
            *(v11 + 16) = v67;
            *(v64 + 16) = v66;
            *v64 = v65;
            do
            {
              v11 += 24;
            }

            while (((*(*a3 + 16))() & 1) != 0);
            do
            {
              v64 -= 24;
            }

            while (!(*(*a3 + 16))());
          }

          while (v11 < v64);
        }

        v68 = (v11 - 24);
        if (v11 - 24 == a1)
        {
          if (*(v11 - 1) < 0)
          {
            operator delete(*v68);
          }
        }

        else
        {
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          v69 = *v68;
          *(a1 + 16) = *(v11 - 8);
          *a1 = v69;
          *(v11 - 1) = 0;
          *(v11 - 24) = 0;
        }

        *(v11 - 8) = v195;
        *v68 = v192;
        if (v62 >= v63)
        {
          break;
        }

LABEL_82:
        std::__introsort<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(std::string const&,std::string const&),std::string*,false>(a1, v11 - 24, a3, a4, a5 & 1);
        a5 = 0;
      }

      v70 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(std::string const&,std::string const&),std::string*>(a1, v11 - 24, a3);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(std::string const&,std::string const&),std::string*>(v11, a2, a3))
      {
        break;
      }

      if (!v70)
      {
        goto LABEL_82;
      }
    }

    a2 = (v11 - 24);
    if (!v70)
    {
      continue;
    }

    break;
  }
}

void sub_26D493C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::__tree<std::__value_type<std::string,long>,std::__map_value_compare<std::string,std::__value_type<std::string,long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void *a2)
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
      v4 = v2;
      if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v2 + 4) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v4 + 4, a2) & 0x80) == 0)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,long>,void *>>>::operator()[abi:nn200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::vector<std::string>::clear[abi:nn200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(std::string const&,std::string const&),std::string*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, uint64_t a5)
{
  v10 = (*(*a5 + 16))();
  v11 = (*(*a5 + 16))();
  if (v10)
  {
    if (v11)
    {
      v12 = a1[1].n128_u64[0];
      v13 = *a1;
      v14 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v14;
LABEL_9:
      *a3 = v13;
      a3[1].n128_u64[0] = v12;
      goto LABEL_10;
    }

    v21 = a1[1].n128_u64[0];
    v22 = *a1;
    v23 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v23;
    *a2 = v22;
    a2[1].n128_u64[0] = v21;
    if ((*(*a5 + 16))())
    {
      v12 = a2[1].n128_u64[0];
      v13 = *a2;
      v24 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v24;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v15 = a2[1].n128_u64[0];
    v16 = *a2;
    v17 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v17;
    *a3 = v16;
    a3[1].n128_u64[0] = v15;
    if ((*(*a5 + 16))())
    {
      v18 = a1[1].n128_u64[0];
      v19 = *a1;
      v20 = a2[1].n128_u64[0];
      *a1 = *a2;
      a1[1].n128_u64[0] = v20;
      *a2 = v19;
      a2[1].n128_u64[0] = v18;
    }
  }

LABEL_10:
  if ((*(*a5 + 16))())
  {
    v26 = a3[1].n128_i64[0];
    v27 = *a3;
    v28 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v28;
    *a4 = v27;
    a4[1].n128_u64[0] = v26;
    if ((*(*a5 + 16))())
    {
      v29 = a2[1].n128_u64[0];
      v30 = *a2;
      v31 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v31;
      *a3 = v30;
      a3[1].n128_u64[0] = v29;
      if ((*(*a5 + 16))())
      {
        v32 = a1[1].n128_u64[0];
        result = *a1;
        v33 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v33;
        *a2 = result;
        a2[1].n128_u64[0] = v32;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(std::string const&,std::string const&),std::string*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v20 = a2 - 24;
        v21 = (*(*a3 + 16))();
        v22 = (*(*a3 + 16))();
        if (v21)
        {
          if (v22)
          {
            v23 = *(a1 + 16);
            v24 = *a1;
            v25 = *(v20 + 16);
            *a1 = *v20;
            *(a1 + 16) = v25;
          }

          else
          {
            v40 = *(a1 + 16);
            v41 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v41;
            *(a1 + 40) = v40;
            if (!(*(*a3 + 16))())
            {
              return 1;
            }

            v23 = *(a1 + 40);
            v24 = *(a1 + 24);
            v42 = *(v20 + 16);
            *(a1 + 24) = *v20;
            *(a1 + 40) = v42;
          }

          *v20 = v24;
          *(v20 + 16) = v23;
          return 1;
        }

        if (!v22)
        {
          return 1;
        }

        v31 = *(a1 + 40);
        v32 = *(a1 + 24);
        v33 = *(v20 + 16);
        *(a1 + 24) = *v20;
        *(a1 + 40) = v33;
        *v20 = v32;
        *(v20 + 16) = v31;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(std::string const&,std::string const&),std::string*,0>(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
        return 1;
      case 5:
        v11 = a2 - 24;
        v12 = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL({block_pointer} {__strong}&)(std::string const&,std::string const&),std::string*,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        if (!(*(*a3 + 16))(v12))
        {
          return 1;
        }

        v13 = *(a1 + 88);
        v14 = *(a1 + 72);
        v15 = *(v11 + 16);
        *(a1 + 72) = *v11;
        *(a1 + 88) = v15;
        *v11 = v14;
        *(v11 + 16) = v13;
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        v16 = *(a1 + 64);
        v17 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v17;
        *(a1 + 88) = v16;
        if (!(*(*a3 + 16))())
        {
          return 1;
        }

        v18 = *(a1 + 40);
        v19 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v19;
        *(a1 + 64) = v18;
        break;
      default:
        goto LABEL_16;
    }

    if ((*(*a3 + 16))())
    {
      v34 = *(a1 + 16);
      v35 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v35;
      *(a1 + 40) = v34;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 24);
    if ((*(*a3 + 16))())
    {
      v8 = *(a1 + 16);
      v9 = *a1;
      v10 = *(a2 - 8);
      *a1 = *v7;
      *(a1 + 16) = v10;
      *v7 = v9;
      *(a2 - 8) = v8;
    }

    return 1;
  }

LABEL_16:
  v26 = (a1 + 48);
  v27 = (*(*a3 + 16))();
  v28 = (*(*a3 + 16))();
  if (v27)
  {
    if (v28)
    {
      v29 = *(a1 + 16);
      v30 = *a1;
      *a1 = *v26;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v43 = *(a1 + 16);
      v44 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v44;
      *(a1 + 40) = v43;
      if (!(*(*a3 + 16))())
      {
        goto LABEL_33;
      }

      v29 = *(a1 + 40);
      v30 = *(a1 + 24);
      *(a1 + 24) = *v26;
      *(a1 + 40) = *(a1 + 64);
    }

    *v26 = v30;
    *(a1 + 64) = v29;
  }

  else if (v28)
  {
    v36 = *(a1 + 40);
    v37 = *(a1 + 24);
    *(a1 + 24) = *v26;
    *(a1 + 40) = *(a1 + 64);
    *v26 = v37;
    *(a1 + 64) = v36;
    if ((*(*a3 + 16))())
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
    }
  }

LABEL_33:
  v45 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (1)
  {
    if ((*(*a3 + 16))())
    {
      v52 = *v45;
      v53 = *(v45 + 16);
      *(v45 + 8) = 0;
      *(v45 + 16) = 0;
      *v45 = 0;
      v48 = v46;
      do
      {
        v49 = a1 + v48;
        if (*(a1 + v48 + 95) < 0)
        {
          operator delete(*(v49 + 72));
        }

        *(v49 + 72) = *(v49 + 48);
        *(v49 + 88) = *(v49 + 64);
        *(v49 + 71) = 0;
        *(v49 + 48) = 0;
        if (v48 == -48)
        {
          v50 = a1;
          goto LABEL_44;
        }

        v48 -= 24;
      }

      while (((*(*a3 + 16))() & 1) != 0);
      v50 = a1 + v48 + 72;
      if (*(v50 + 23) < 0)
      {
        operator delete(*v50);
      }

LABEL_44:
      *v50 = v52;
      *(v50 + 16) = v53;
      if (++v47 == 8)
      {
        return v45 + 24 == a2;
      }
    }

    v46 += 24;
    v45 += 24;
    if (v45 == a2)
    {
      return 1;
    }
  }
}

void sub_26D494960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26D494B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_26D494D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_26D49529C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void _TIBeginMockingUserDictionaryServerWithPairs(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(TIUserDictionaryServerMock);
  [(TIUserDictionaryServerMock *)v2 setPairs:v1];

  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x277D6FEF0] performSelector:sel_setSharedInstance_ withObject:v2];
  }
}

uint64_t _TIEndMockingUserDictionaryServer()
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v1 = MEMORY[0x277D6FEF0];

    return [v1 performSelector:sel_setSharedInstance_ withObject:0];
  }

  return result;
}

void KB::LikelihoodInfo::~LikelihoodInfo(void **this)
{
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

uint64_t KB::LexiconInfo::LexiconInfo(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x26D6C0680]();
  MEMORY[0x26D6C0680](v4 + 32, a2 + 32);
  MEMORY[0x26D6C0680](a1 + 64, a2 + 64);
  MEMORY[0x26D6C0680](a1 + 96, a2 + 96);
  MEMORY[0x26D6C0680](a1 + 128, a2 + 128);
  v5 = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = v5;
  return a1;
}

void sub_26D496170(_Unwind_Exception *a1)
{
  KB::String::~String((v1 + 96));
  KB::String::~String((v1 + 64));
  KB::String::~String((v1 + 32));
  KB::String::~String(v1);
  _Unwind_Resume(a1);
}

void KB::LexiconInfo::~LexiconInfo(KB::LexiconInfo *this)
{
  KB::String::~String((this + 128));
  KB::String::~String((this + 96));
  KB::String::~String((this + 64));
  KB::String::~String((this + 32));

  KB::String::~String(this);
}

void std::vector<KB::LexiconInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        KB::String::~String((v4 - 48));
        KB::String::~String((v4 - 80));
        KB::String::~String((v4 - 112));
        KB::String::~String((v4 - 144));
        KB::String::~String((v4 - 176));
        v4 -= 176;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void KB::LanguageModelConfig::~LanguageModelConfig(KB::LanguageModelConfig *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 6) = 0;
  v3 = *(this + 5);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 5) = 0;
  v4 = *(this + 4);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 4) = 0;
  v5 = *(this + 3);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 3) = 0;
  v6 = *(this + 2);
  if (v6)
  {
    CFRelease(v6);
  }

  *(this + 2) = 0;
  v7 = *(this + 1);
  if (v7)
  {
    CFRelease(v7);
  }

  *(this + 1) = 0;
  if (*this)
  {
    CFRelease(*this);
  }

  *this = 0;
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void KB::LanguageModelContext::~LanguageModelContext(KB::LanguageModelContext *this)
{
  v4 = (this + 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 72));
  language_modeling::v1::LinguisticContext::~LinguisticContext((this + 64));
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void __createDirectoryAtPath(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = *MEMORY[0x277CCA180];
  v9[0] = &unk_287ED49A0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v7 = 0;
  v4 = [v2 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:v3 error:&v7];
  v5 = v7;

  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    NSLog(&cfstr_FailedToCreate.isa, v5);
  }
}

void sub_26D4972AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id TIOptimalSequenceAlignment(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v51 = a3;
  v52 = v5;
  if ([v5 count] > 0xFFFE || objc_msgSend(v6, "count") > 0xFFFE || (v7 = (objc_msgSend(v5, "count") + 1), v8 = (objc_msgSend(v6, "count") + 1), v7 <= 1) && v8 < 2)
  {
    v9 = MEMORY[0x277CBEBF8];
    goto LABEL_6;
  }

  v9 = MEMORY[0x277CBEBF8];
  if (v7 && v8)
  {
    v45 = v7 - 1;
    v11 = malloc_type_malloc(8 * (v8 * v7), 0x100004000313F17uLL);
    *v11 = 0;
    if (v7 >= 2)
    {
      v12 = v11;
      for (i = 1; i != v7; ++i)
      {
        if (i == 1)
        {
          v14 = 1.0;
        }

        else
        {
          v14 = 0.8;
        }

        v15 = v14 + *v12;
        v12 += 2 * v8;
        *v12 = v15;
        *(v12 + 2) = i;
        *(v12 + 3) = 1;
      }
    }

    v46 = v11;
    if (v8 >= 2)
    {
      v16 = v11 + 7;
      v17 = *v11;
      for (j = 1; j != v8; ++j)
      {
        if (j == 1)
        {
          v19 = 1.0;
        }

        else
        {
          v19 = 0.8;
        }

        v17 = v19 + v17;
        *(v16 - 3) = v17;
        *(v16 - 1) = j;
        *v16 = 2;
        v16 += 4;
      }

      v20 = v7 - 1;
      v21 = 2 * v8;
      v49 = 1;
      v50 = v11;
      v47 = v7;
      for (k = v8; k != v49; LODWORD(v8) = k)
      {
        if (v7 >= 2)
        {
          v22 = 0;
          v23 = v50;
          do
          {
            v24 = [v52 objectAtIndex:v22];
            v25 = v6;
            v26 = [v6 objectAtIndex:v49 - 1];
            v27 = v51[2](v51, v24, v26);

            if (v27)
            {
              v28 = 0.0;
            }

            else
            {
              v28 = 1.0;
            }

            v29 = v28 + *v23;
            if (*(v23 + 7) == 1)
            {
              v30 = 0.8;
            }

            else
            {
              v30 = 1.0;
            }

            v31 = v23[2] + v30;
            v32 = &v23[v21];
            if (HIWORD(v23[v21 + 1]) == 2)
            {
              v33 = 0.8;
            }

            else
            {
              v33 = 1.0;
            }

            v34 = v23[v21] + v33;
            if (v29 > v31 || v29 > v34)
            {
              if (v31 <= v34)
              {
                v32[2] = v31;
                *(v32 + 6) = *(v23 + 6) + 1;
                *(v32 + 7) = 1;
              }

              else
              {
                v32[2] = v34;
                *(v32 + 6) = LOWORD(v23[v21 + 1]) + 1;
                *(v32 + 7) = 2;
              }
            }

            else
            {
              v32[2] = v29;
              *(v32 + 6) = *(v23 + 2) + 1;
              *(v32 + 7) = 0;
            }

            v6 = v25;
            ++v22;
            v23 = (v23 + v21 * 4);
          }

          while (v20 != v22);
        }

        ++v49;
        v50 += 2;
        LODWORD(v7) = v47;
      }
    }

    v36 = v8 - 1;
    v37 = v45;
    v38 = LOWORD(v46[2 * (v8 - 1 + v8 * v45) + 1]);
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v38];
    if (v38)
    {
      v39 = 0;
      do
      {
        v40 = objc_alloc_init(TIAlignedIndexes);
        [v9 addObject:v40];

        ++v39;
      }

      while (v39 < v38);
      v41 = v38 + 1;
      while (1)
      {
        v42 = [v9 objectAtIndex:v41 - 2];
        v43 = v42;
        v44 = HIWORD(v46[2 * v8 * v37 + 1 + 2 * v36]);
        if (v44 == 2)
        {
          break;
        }

        if (v44 == 1)
        {
          [v42 setIndex1:v37 - 1];
          [v43 setIndex2:0xFFFFLL];
          --v37;
        }

        else if (!HIWORD(v46[2 * v8 * v37 + 1 + 2 * v36]))
        {
          [v42 setIndex1:v37 - 1];
          [v43 setIndex2:v36 - 1];
          --v37;
LABEL_55:
          --v36;
        }

        if (--v41 <= 1)
        {
          goto LABEL_57;
        }
      }

      [v42 setIndex1:0xFFFFLL];
      [v43 setIndex2:v36 - 1];
      goto LABEL_55;
    }

LABEL_57:
    free(v46);
  }

LABEL_6:

  return v9;
}

void TITargetKeyRangesForSourceTokens(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v86 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if ([v14 count])
  {
    v16 = 0;
    v85 = xmmword_26D4EC000;
    do
    {
      *(a6 + 16 * v16++) = v85;
    }

    while (v16 < [v14 count]);
  }

  if ([v14 count] && objc_msgSend(v15, "count"))
  {
    v80 = v15;
    v81 = v13;
    if ([v14 count])
    {
      v17 = 0;
      v85 = xmmword_26D4EC000;
      do
      {
        *(a6 + 16 * v17++) = v85;
      }

      while (v17 < [v14 count]);
    }

    v84 = a6;
    v79 = v11;
    v18 = v11;
    v78 = v12;
    v19 = v12;
    v77 = v14;
    v20 = v14;
    v83 = v20;
    if ([v20 count])
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v82 = v19;
      do
      {
        *&v85 = v23;
        v25 = [v20 objectAtIndex:{v23, v77}];
        v26 = [MEMORY[0x277CCAB68] string];
        v27 = [v26 length];
        v28 = [v25 length];
        while (v27 < v28)
        {
          v29 = v24 + 1;
          v30 = [v19 objectAtIndex:v24];
          [v26 appendString:v30];

          v27 = [v26 length];
          v28 = [v25 length];
          v24 = v29;
        }

        if (v21 >= v24)
        {
          v31 = 0;
          v32 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = 0;
          v32 = 0x7FFFFFFFFFFFFFFFLL;
          do
          {
            v33 = [v18 objectAtIndex:v22];
            if ([v33 index1] == v21)
            {
              v34 = v33;
            }

            else
            {
              do
              {
                v34 = [v18 objectAtIndex:++v22];

                v33 = v34;
              }

              while ([v34 index1] != v21);
            }

            v35 = [v34 index2];
            v36 = v31 + v32 - v35;
            if (v31 + v32 <= v35)
            {
              v37 = v35 - v32 + 1;
            }

            else
            {
              v37 = v31;
            }

            if (v35 < v32)
            {
              v38 = v35;
            }

            else
            {
              v38 = v32;
            }

            if (v35 >= v32)
            {
              v36 = v37;
            }

            if (v32 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v39 = v35;
            }

            else
            {
              v39 = v38;
            }

            if (v32 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v36 = 1;
            }

            if (v35 != 0xFFFF)
            {
              v32 = v39;
              v31 = v36;
            }

            ++v21;
          }

          while (v21 != v24);
        }

        v40 = v85;
        v41 = (v84 + 16 * v85);
        *v41 = v32;
        v41[1] = v31;

        v23 = v40 + 1;
        v20 = v83;
        v21 = v24;
        v19 = v82;
      }

      while (v23 < [v83 count]);
    }

    v42 = v80;
    [v80 count];
    v43 = &v77 - 2 * MEMORY[0x28223BE20]();
    v44 = v81;
    v45 = v42;
    if ([v45 count])
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      do
      {
        v49 = [v45 objectAtIndex:{v47, v77}];
        v50 = [MEMORY[0x277CCAB68] string];
        v51 = [v50 length];
        if (v51 < [v49 length])
        {
          v52 = v46;
          do
          {
            v48 = v52 + 1;
            v53 = [v44 objectAtIndex:?];
            [v50 appendString:v53];

            v54 = [v50 length];
            v55 = [v49 length];
            v52 = v48;
          }

          while (v54 < v55);
        }

        v56 = &v43[2 * v47];
        *v56 = v46;
        v56[1] = (v48 - v46);

        ++v47;
        v46 = v48;
      }

      while (v47 < [v45 count]);
    }

    v57 = [v83 count];
    v58 = [v45 count];
    v59 = &v43[2 * v58];
    v60 = *(v59 - 2) + *(v59 - 1);
    v61 = 0;
    if (v57)
    {
      v62 = 0;
      v63 = v57 - 1;
      v64 = v84;
      v65 = (v84 + 16);
      v12 = v78;
      v11 = v79;
      v14 = v77;
      do
      {
        v66 = (v64 + 16 * v62);
        v67 = *v66;
        if (*v66 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v68 = 0;
          *v66 = v61;
          v66[1] = 0;
          v67 = v61;
        }

        else
        {
          v68 = v66[1];
        }

        ++v62;
        v69 = v65;
        v70 = v63;
        v71 = v60;
        if (v62 < v57)
        {
          while (1)
          {
            v72 = *v69;
            v69 += 2;
            v71 = v72;
            if (v72 != 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            if (!--v70)
            {
              v71 = v60;
              break;
            }
          }
        }

        v73 = v68 + v67;
        if (v67 != v61)
        {
          v68 = v73 - v61;
          *v66 = v61;
          v66[1] = v73 - v61;
        }

        if (v71 != v73)
        {
          v74 = v43;
          if (v58 < 1)
          {
            goto LABEL_65;
          }

          while (1)
          {
            v75 = *v74;
            if (*v74 >= v73)
            {
              break;
            }

            v74 += 2;
            if (v74 >= v59)
            {
              goto LABEL_65;
            }
          }

          if (v75 > v71 || v75 == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_65:
            v75 = v71;
          }

          v68 = v75 - v61;
          v66[1] = v75 - v61;
        }

        v61 += v68;
        --v63;
        v65 += 2;
      }

      while (v62 != v57);
    }

    else
    {
      v12 = v78;
      v11 = v79;
      v64 = v84;
      v14 = v77;
    }

    v15 = v80;
    v13 = v81;
    if (v61 < v60)
    {
      *(v64 + 16 * v57 - 8) = v60 - *(v64 + 16 * v57 - 16);
    }
  }
}

id TITokenAlignmentForKeyAlignment(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (![v12 count])
  {
    v33 = [v11 componentsJoinedByString:&stru_287EC4808];
    v34 = objc_alloc_init(TIAlignedTokens);
    [(TIAlignedTokens *)v34 setSource:&stru_287EC4808];
    [(TIAlignedTokens *)v34 setTarget:v33];
    v49[0] = v34;
    v35 = MEMORY[0x277CBEA60];
    v36 = v49;
LABEL_18:
    v47 = [v35 arrayWithObjects:v36 count:1];

    goto LABEL_19;
  }

  if (![v13 count])
  {
    v33 = [v10 componentsJoinedByString:&stru_287EC4808];
    v34 = objc_alloc_init(TIAlignedTokens);
    [(TIAlignedTokens *)v34 setSource:v33];
    [(TIAlignedTokens *)v34 setTarget:&stru_287EC4808];
    v48 = v34;
    v35 = MEMORY[0x277CBEA60];
    v36 = &v48;
    goto LABEL_18;
  }

  v14 = [v12 count];
  v39 = &v39;
  v15 = &v39 - 2 * MEMORY[0x28223BE20](v14);
  v43 = v10;
  v44 = v9;
  v40 = v13;
  TITargetKeyRangesForSourceTokens(v9, v10, v11, v12, v13, v15);
  v41 = v12;
  v16 = v12;
  v42 = v11;
  v17 = v11;
  v47 = [MEMORY[0x277CBEB18] array];
  if ([v16 count])
  {
    v18 = 0;
    v45 = v15 + 1;
    v46 = v15;
    v19 = &stru_287EC4808;
    do
    {
      v20 = [v16 objectAtIndex:v18];
      v21 = [v20 copy];

      v22 = &v15[2 * v18];
      v23 = *v22;
      v24 = v19;
      if (*v22 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = v19;
        v26 = v22[1];
        if (v26 + v23 > [v17 count])
        {
          v27 = [MEMORY[0x277CCAB68] string];
          [v27 appendFormat:@"WARNING! targetKeyRange [%lu, %lu] for token '%@' is out of bounds.", v23, v26 + v23, v21];
          [v27 appendFormat:@"\nsourceTokens:\n%@", v16];
          [v27 appendFormat:@"\ntargetKeys:\n%@", v17];
          [v27 appendFormat:@"\ntargetKeyRangeForSourceTokens = "];
          if ([v16 count])
          {
            v28 = 0;
            v29 = v45;
            do
            {
              [v27 appendFormat:@"[%lu, %lu]", *(v29 - 1), *v29 + *(v29 - 1)];
              ++v28;
              v29 += 2;
            }

            while (v28 < [v16 count]);
          }

          NSLog(&stru_287EC4E08.isa, v27);
          v30 = [v17 count];
          if (v23 >= v30)
          {
            v23 = v30;
          }

          v26 = [v17 count] - v23;
        }

        v31 = [v17 subarrayWithRange:{v23, v26}];
        v19 = v25;
        v24 = [v31 componentsJoinedByString:v25];

        v15 = v46;
      }

      v32 = objc_alloc_init(TIAlignedTokens);
      [(TIAlignedTokens *)v32 setSource:v21];
      [(TIAlignedTokens *)v32 setTarget:v24];
      [v47 addObject:v32];

      ++v18;
    }

    while (v18 < [v16 count]);
  }

  v13 = v40;
  v10 = v43;
  v9 = v44;
  v12 = v41;
  v11 = v42;
LABEL_19:

  v37 = v47;

  return v37;
}

id TICharSequenceForTokenSequence(void *a1)
{
  v1 = MEMORY[0x277CBEB18];
  v2 = a1;
  v3 = [v1 array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __TICharSequenceForTokenSequence_block_invoke;
  v6[3] = &unk_279DA07A8;
  v4 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v6];

  return v4;
}

void __TICharSequenceForTokenSequence_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 length];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __TICharSequenceForTokenSequence_block_invoke_2;
  v5[3] = &unk_279DA05B8;
  v6 = *(a1 + 32);
  [v3 enumerateSubstringsInRange:0 options:v4 usingBlock:{2, v5}];
}

id TIAlignedTypingSequenceForAlignedTokenSequence(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v40 = a3;
  v39 = a4;
  v38 = a5;
  v37 = a6;
  v13 = [MEMORY[0x277CBEB18] array];
  if ([v11 count])
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = [v11 objectAtIndex:v14];
      v17 = [v16 source];
      if (![v17 length])
      {
        break;
      }

      v18 = [v12 count];

      if (v15 >= v18)
      {
        goto LABEL_7;
      }

      v19 = objc_alloc_init(TIAlignedTyping);
      v20 = [v16 source];
      [(TIAlignedTokens *)v19 setSource:v20];

      v21 = [v40 objectAtIndex:v15];
      [(TIAlignedTyping *)v19 setTouched:v21];

      v22 = [v39 objectAtIndex:v15];
      [(TIAlignedTyping *)v19 setPredicted:v22];

      v23 = [v38 objectAtIndex:v15];
      [(TIAlignedTyping *)v19 setInlineCompletions:v23];

      v24 = [v37 objectAtIndex:v15];
      [(TIAlignedTyping *)v19 setDocumentStates:v24];

      v25 = [v12 objectAtIndex:v15];
      [(TIAlignedTyping *)v19 setInserted:v25];

      v26 = [v16 target];
      [(TIAlignedTokens *)v19 setTarget:v26];

      [v13 addObject:v19];
      ++v15;
LABEL_8:

      if (++v14 >= [v11 count])
      {
        goto LABEL_11;
      }
    }

LABEL_7:
    v19 = objc_alloc_init(TIAlignedTyping);
    v27 = [v16 source];
    [(TIAlignedTokens *)v19 setSource:v27];

    v28 = [MEMORY[0x277CBEA60] array];
    [(TIAlignedTyping *)v19 setTouched:v28];

    v29 = [MEMORY[0x277CBEA60] array];
    [(TIAlignedTyping *)v19 setDocumentStates:v29];

    v30 = [MEMORY[0x277CBEA60] array];
    [(TIAlignedTyping *)v19 setInserted:v30];

    v31 = [v16 target];
    [(TIAlignedTokens *)v19 setTarget:v31];

    [v13 addObject:v19];
    goto LABEL_8;
  }

  v15 = 0;
LABEL_11:
  if (v15 == [v12 count] || v15 == objc_msgSend(v12, "count") - 1 && (objc_msgSend(v12, "objectAtIndex:", v15), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "componentsJoinedByString:", &stru_287EC4808), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isEqualToString:", &stru_287EC4808), v34, v33, v35))
  {
    v32 = v13;
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

id TIConcatenateAlignedTypingAtBoundaryErrors(void *a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v33 = [MEMORY[0x277CBEB18] array];
  v2 = [MEMORY[0x277CCAB68] string];
  v42 = [MEMORY[0x277CBEB18] array];
  v41 = [MEMORY[0x277CBEB18] array];
  v40 = [MEMORY[0x277CBEB18] array];
  v39 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277CBEB18] array];
  v37 = [MEMORY[0x277CCAB68] string];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v1;
  v38 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v38)
  {
    v35 = *v44;
    v36 = v2;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v44 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v43 + 1) + 8 * i);
        v6 = [v5 target];
        v7 = v37;
        v8 = v6;
        if ([v7 length])
        {
          v9 = [v7 characterAtIndex:{objc_msgSend(v7, "length") - 1}];
        }

        else
        {
          v9 = 0;
        }

        if ([v8 length])
        {
          v10 = [v8 characterAtIndex:0];
        }

        else
        {
          v10 = 0;
        }

        v11 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        if ([v11 characterIsMember:v9])
        {
          v12 = 0;
        }

        else
        {
          v13 = [MEMORY[0x277CCA900] punctuationCharacterSet];
          v12 = [v13 characterIsMember:v9] ^ 1;
        }

        v14 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        if ([v14 characterIsMember:v10])
        {
          v15 = 0;
        }

        else
        {
          v16 = [MEMORY[0x277CCA900] punctuationCharacterSet];
          v15 = [v16 characterIsMember:v10] ^ 1;
        }

        if ((v12 & v15) == 1)
        {
          v17 = [v5 source];
          v2 = v36;
          [v36 appendString:v17];

          v18 = [v5 touched];
          [v42 addObjectsFromArray:v18];

          v19 = [v5 predicted];
          [v41 addObjectsFromArray:v19];

          v20 = [v5 inlineCompletions];
          [v40 addObjectsFromArray:v20];

          v21 = [v5 documentStates];
          [v39 addObjectsFromArray:v21];

          v22 = [v5 inserted];
          [v3 addObjectsFromArray:v22];

          v23 = [v5 target];
          [v7 appendString:v23];
        }

        else
        {
          v2 = v36;
          if ([v36 length] || objc_msgSend(v3, "count") || objc_msgSend(v7, "length"))
          {
            v24 = objc_alloc_init(TIAlignedTyping);
            [(TIAlignedTokens *)v24 setSource:v36];
            [(TIAlignedTyping *)v24 setTouched:v42];
            [(TIAlignedTyping *)v24 setPredicted:v41];
            [(TIAlignedTyping *)v24 setInlineCompletions:v40];
            [(TIAlignedTyping *)v24 setDocumentStates:v39];
            [(TIAlignedTyping *)v24 setInserted:v3];
            [(TIAlignedTokens *)v24 setTarget:v7];
            [v33 addObject:v24];
          }

          v25 = [v5 source];
          [v36 setString:v25];

          [v42 removeAllObjects];
          v26 = [v5 touched];
          [v42 addObjectsFromArray:v26];

          [v41 removeAllObjects];
          v27 = [v5 predicted];
          [v41 addObjectsFromArray:v27];

          [v40 removeAllObjects];
          v28 = [v5 inlineCompletions];
          [v40 addObjectsFromArray:v28];

          [v39 removeAllObjects];
          v29 = [v5 documentStates];
          [v39 addObjectsFromArray:v29];

          [v3 removeAllObjects];
          v30 = [v5 inserted];
          [v3 addObjectsFromArray:v30];

          v23 = [v5 target];
          [v7 setString:v23];
        }
      }

      v38 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v38);
  }

  if ([v2 length] || objc_msgSend(v3, "count") || objc_msgSend(v37, "length"))
  {
    v31 = objc_alloc_init(TIAlignedTyping);
    [(TIAlignedTokens *)v31 setSource:v2];
    [(TIAlignedTyping *)v31 setTouched:v42];
    [(TIAlignedTyping *)v31 setPredicted:v41];
    [(TIAlignedTyping *)v31 setInlineCompletions:v40];
    [(TIAlignedTyping *)v31 setDocumentStates:v39];
    [(TIAlignedTyping *)v31 setInserted:v3];
    [(TIAlignedTokens *)v31 setTarget:v37];
    [v33 addObject:v31];
  }

  return v33;
}

void __plistFormattedTouchSequence_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  [v2 addObject:v3];
}

uint64_t TIAutoCorrectionTypeCorrectedIsNotIntended(void *a1)
{
  v6[6] = *MEMORY[0x277D85DE8];
  v6[0] = @"RightInput_WrongAutocorrection";
  v6[1] = @"RightInput_WrongAutocorrection_WrongManualCorrection";
  v6[2] = @"WrongInput_NoAutocorrection";
  v6[3] = @"WrongInput_WrongAutocorrection";
  v6[4] = @"WrongInput_WrongManualCorrection";
  v6[5] = @"WrongInput_WrongAutocorrection_RightManualCorrection";
  v1 = MEMORY[0x277CBEA60];
  v2 = a1;
  v3 = [v1 arrayWithObjects:v6 count:6];
  v4 = [v3 containsObject:v2];

  return v4;
}

uint64_t TIAutoCorrectionTypeCorrectedIsNotIntendedAndInserted(void *a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v6[0] = @"RightInput_WrongAutocorrection";
  v6[1] = @"WrongInput_WrongAutocorrection";
  v6[2] = @"RightInput_WrongAutocorrection_WrongManualCorrection";
  v6[3] = @"WrongInput_WrongAutocorrection_RightManualCorrection";
  v1 = MEMORY[0x277CBEA60];
  v2 = a1;
  v3 = [v1 arrayWithObjects:v6 count:4];
  v4 = [v3 containsObject:v2];

  return v4;
}

uint64_t TIAutoCorrectionTypeCorrectedIsNotInserted(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = @"WrongInput_RightAutocorrection";
  v7 = @"RightInput_WrongAutocorrection";
  v8 = @"WrongInput_WrongAutocorrection";
  v9 = @"RightInput_WrongAutocorrection_WrongManualCorrection";
  v10 = @"WrongInput_WrongAutocorrection_RightManualCorrection";
  v1 = MEMORY[0x277CBEA60];
  v2 = a1;
  v3 = [v1 arrayWithObjects:&v6 count:5];
  v4 = [v3 containsObject:{v2, v6, v7, v8, v9, v10, v11}];

  return v4;
}

id TIPlistFormattedAlignedTypingSequence(void *a1, char a2, char a3, char a4)
{
  v7 = a1;
  v8 = [MEMORY[0x277CBEB18] array];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __TIPlistFormattedAlignedTypingSequence_block_invoke;
  v14[3] = &unk_279DA05E0;
  v15 = v7;
  v17 = a3;
  v18 = a2;
  v19 = a4;
  v9 = v8;
  v16 = v9;
  v10 = v7;
  [v10 enumerateObjectsUsingBlock:v14];
  v11 = v16;
  v12 = v9;

  return v9;
}

void __TIPlistFormattedAlignedTypingSequence_block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v70[5] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 source];
  v7 = [v5 inserted];
  v66 = [v7 componentsJoinedByString:&stru_287EC4808];

  v8 = [v5 target];
  if ([*(a1 + 32) count] - 1 <= a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(a1 + 32) objectAtIndexedSubscript:a3 + 1];
  }

  v64 = a1;
  v62 = v9;
  v65 = v6;
  v63 = v8;
  if ([v9 isAutocompleteTriggerForPreviousEntry] & 1) != 0 || (objc_msgSend(v5, "isRevisedAutocompleteEntry"))
  {
    v10 = v8;
    v11 = v66;
    v12 = v6;
    v13 = [v11 isEqualToString:v12];
    v14 = [v10 isEqualToString:v12];

    v15 = [v10 isEqualToString:v11];
    v16 = [v11 containsString:@"\\b"];

    v17 = v14 ^ 1;
    if (((v13 ^ 1) & 1) != 0 || v17)
    {
      if ((v13 | v17))
      {
        v18 = @"UnknownType";
        v19 = @"WrongInput_WrongAutocorrection";
        if (v15)
        {
          v19 = @"WrongInput_NoAutocorrection";
        }

        if (v16)
        {
          v19 = @"WrongInput_WrongManualCorrection";
        }

        if ((v13 | v14))
        {
          v20 = @"UnknownType";
        }

        else
        {
          v20 = v19;
        }

        if (!v15)
        {
          v18 = @"RightInput_WrongAutocorrection";
        }

        if (v16)
        {
          v18 = @"RightInput_WrongAutocorrection_WrongManualCorrection";
        }

        if ((v13 ^ 1 | v14))
        {
          v21 = v20;
        }

        else
        {
          v21 = v18;
        }
      }

      else
      {
        v21 = @"WrongInput_RightAutocorrection";
        if (v16)
        {
          v21 = @"WrongInput_WrongAutocorrection_RightManualCorrection";
        }
      }

      goto LABEL_45;
    }

LABEL_25:
    v21 = @"RightInput_NoAutocorrection";
    goto LABEL_45;
  }

  v22 = v8;
  v23 = v66;
  v24 = v6;
  v25 = [v23 isEqualToString:v24];
  v26 = [v22 isEqualToString:v24];

  v27 = [v22 isEqualToString:v23];
  v28 = [v23 containsString:@"\\b"];

  v29 = v26 ^ 1;
  if (((v25 ^ 1) & 1) == 0 && !v29)
  {
    goto LABEL_25;
  }

  v30 = v25 | v29;
  v31 = @"WrongInput_NoAutocorrection_WrongManualCorrection";
  if (!v28)
  {
    v31 = @"WrongInput_NoAutocorrection_NoManualCorrection";
  }

  if ((v25 | v26))
  {
    v32 = @"UnknownType";
  }

  else
  {
    v32 = v31;
  }

  v33 = @"RightInput_NoAutocorrection_WrongManualCorrection";
  if (v27)
  {
    v33 = @"UnknownType";
  }

  if (v28)
  {
    v33 = @"RightInput_NoAutocorrection_But_WrongResult";
  }

  if ((v25 ^ 1 | v26))
  {
    v21 = v32;
  }

  else
  {
    v21 = v33;
  }

  v34 = @"WrongInput_NoAutocorrection_RightManualCorrection";
  if (!v28)
  {
    v34 = @"WrongInput_NoAutocorrection_NoManualCorrection";
  }

  if ((v30 & 1) == 0)
  {
    v21 = v34;
  }

LABEL_45:
  v35 = v21;
  v60 = MEMORY[0x277CBEB38];
  v69[0] = @"intended";
  v36 = [v5 source];
  v37 = [v36 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  v70[0] = v37;
  v69[1] = @"touched";
  v38 = [v5 touched];
  v39 = MEMORY[0x277CBEB18];
  v40 = v38;
  v41 = [v39 array];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __plistFormattedTouchSequence_block_invoke;
  v67[3] = &unk_279DA07A8;
  v42 = v41;
  v68 = v42;
  [v40 enumerateObjectsUsingBlock:v67];

  v70[1] = v42;
  v69[2] = @"inserted";
  v43 = [v66 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  v70[2] = v43;
  v69[3] = @"corrected";
  v44 = [v5 target];
  v45 = [v44 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
  v69[4] = @"autocorrectionType";
  v70[3] = v45;
  v70[4] = v35;
  v61 = v35;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:5];
  v47 = [v60 dictionaryWithDictionary:v46];

  if (*(v64 + 48) == 1)
  {
    v48 = [v5 documentStates];
    [v47 setObject:v48 forKeyedSubscript:@"documentStates"];
  }

  v49 = [v5 sourceTransliteration];

  if (v49)
  {
    v50 = [v5 sourceTransliteration];
    v51 = [v50 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];
    [v47 setObject:v51 forKeyedSubscript:@"intendedTransliteration"];
  }

  if (*(v64 + 49) == 1)
  {
    v52 = [v5 predicted];
    v53 = v52;
    if (v52)
    {
      v54 = v52;
    }

    else
    {
      v54 = [MEMORY[0x277CBEB18] array];
    }

    v55 = v54;

    [v47 setObject:v55 forKeyedSubscript:@"predicted"];
  }

  if (*(v64 + 50) == 1)
  {
    v56 = [v5 inlineCompletions];
    v57 = v56;
    if (v56)
    {
      v58 = v56;
    }

    else
    {
      v58 = [MEMORY[0x277CBEB18] array];
    }

    v59 = v58;

    [v47 setObject:v59 forKeyedSubscript:@"inlineCompletions"];
  }

  [*(v64 + 40) addObject:v47];
}

void sub_26D49AAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>,void *>>>>::~unique_ptr[abi:nn200100](&a12);
  std::pair<KB::String const,std::shared_ptr<KB::AddressBookTrieLoader>>::~pair(&a15);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  KB::String::~String(&a33);
  KB::String::~String((v33 - 160));

  KB::String::~String((v33 - 128));
  _Unwind_Resume(a1);
}

void sub_26D49B224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>,void *>>>>::~unique_ptr[abi:nn200100](&a12);
  std::pair<KB::String const,std::shared_ptr<KB::AddressBookTrieLoader>>::~pair(&a15);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  KB::String::~String(&a33);
  KB::String::~String((v33 - 160));

  KB::String::~String((v33 - 128));
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>>>::find<KB::String>(void *a1, void *a2)
{
  if (a2[1])
  {
    v4 = a2[1];
  }

  else
  {
    v4 = (a2 + 2);
  }

  v5 = KB::String::hash(v4, *a2);
  v6 = a1[1];
  if (!v6)
  {
    return 0;
  }

  v7 = v5;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v6 <= v5)
    {
      v10 = v5 % v6;
    }
  }

  else
  {
    v10 = (v6 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    do
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        if (v12 + 2 == a2 || (KB::String::equal((v12 + 2), a2) & 1) != 0)
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v13 >= v6)
          {
            v13 %= v6;
          }
        }

        else
        {
          v13 &= v6 - 1;
        }

        if (v13 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void std::pair<KB::String const,std::shared_ptr<KB::AddressBookTrieLoader>>::~pair(KB::String *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  KB::String::~String(this);
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<KB::String,std::shared_ptr<KB::AddressBookTrieLoader>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::pair<KB::String const,std::shared_ptr<KB::AddressBookTrieLoader>>::~pair((v2 + 16));
    }

    operator delete(v2);
  }

  return a1;
}

void sub_26D49B72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose((v11 - 96), 8);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL46getLXLexiconEnumerateEntriesForStringSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = LexiconLibrary();
  result = dlsym(v2, "LXLexiconEnumerateEntriesForString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getLXLexiconEnumerateEntriesForStringSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t LexiconLibrary(void)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!LexiconLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = ___ZL18LexiconLibraryCorePPc_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279DA0678;
    v5 = 0;
    LexiconLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = LexiconLibraryCore(char **)::frameworkLibrary;
    if (LexiconLibraryCore(char **)::frameworkLibrary)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return LexiconLibraryCore(char **)::frameworkLibrary;
}

uint64_t ___ZL18LexiconLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  LexiconLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL29getLXEntryCopyStringSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = LexiconLibrary();
  result = dlsym(v2, "LXEntryCopyString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getLXEntryCopyStringSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_26D49BB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_26D49BEDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TITransientLexiconManagerMock;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id getkLXLexiconNameKey(void)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkLXLexiconNameKeySymbolLoc(void)::ptr;
  v8 = getkLXLexiconNameKeySymbolLoc(void)::ptr;
  if (!getkLXLexiconNameKeySymbolLoc(void)::ptr)
  {
    v1 = LexiconLibrary();
    v6[3] = dlsym(v1, "kLXLexiconNameKey");
    getkLXLexiconNameKeySymbolLoc(void)::ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getkLXLexiconLocaleKey(void)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkLXLexiconLocaleKeySymbolLoc(void)::ptr;
  v8 = getkLXLexiconLocaleKeySymbolLoc(void)::ptr;
  if (!getkLXLexiconLocaleKeySymbolLoc(void)::ptr)
  {
    v1 = LexiconLibrary();
    v6[3] = dlsym(v1, "kLXLexiconLocaleKey");
    getkLXLexiconLocaleKeySymbolLoc(void)::ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t __LXLexiconCreateTransient(const __CFDictionary *a1, __CFError **a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getLXLexiconCreateTransientSymbolLoc(void)::ptr;
  v11 = getLXLexiconCreateTransientSymbolLoc(void)::ptr;
  if (!getLXLexiconCreateTransientSymbolLoc(void)::ptr)
  {
    v5 = LexiconLibrary();
    v9[3] = dlsym(v5, "LXLexiconCreateTransient");
    getLXLexiconCreateTransientSymbolLoc(void)::ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
    dlerror();
    v7 = abort_report_np();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  return v4(a1, a2);
}

void *___ZL36getLXLexiconCreateTransientSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = LexiconLibrary();
  result = dlsym(v2, "LXLexiconCreateTransient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getLXLexiconCreateTransientSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL31getkLXLexiconLocaleKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = LexiconLibrary();
  result = dlsym(v2, "kLXLexiconLocaleKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkLXLexiconLocaleKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL29getkLXLexiconNameKeySymbolLocv_block_invoke(uint64_t a1)
{
  v2 = LexiconLibrary();
  result = dlsym(v2, "kLXLexiconNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkLXLexiconNameKeySymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_26D49CA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *___ZL24getLXLexiconAddSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = LexiconLibrary();
  result = dlsym(v2, "LXLexiconAdd");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getLXLexiconAddSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL40getLXLexiconIncrementUsageCountSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = LexiconLibrary();
  result = dlsym(v2, "LXLexiconIncrementUsageCount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getLXLexiconIncrementUsageCountSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void _TIBeginMockingTransientLexiconManagerWithData(void *a1, void *a2)
{
  v7 = a1;
  v3 = a2;
  if ((__missingTransientLexiconManager & 1) == 0)
  {
    v4 = NSClassFromString(&cfstr_Titransientlex_0.isa);
    if (v4)
    {
      v5 = [[TITransientLexiconManagerMock alloc] initWithTransientData:v7 namedEntities:v3];
      v6 = __transientLexiconManagerMock;
      __transientLexiconManagerMock = v5;

      [(objc_class *)v4 setSharedTITransientLexiconManager:__transientLexiconManagerMock];
    }

    else
    {
      __missingTransientLexiconManager = 1;
    }
  }
}

void _TIEndMockingTransientLexiconManager()
{
  if ((__missingTransientLexiconManager & 1) == 0)
  {
    [NSClassFromString(&cfstr_Titransientlex_0.isa) setSharedTITransientLexiconManager:0, v0];
    v2 = __transientLexiconManagerMock;
    __transientLexiconManagerMock = 0;
  }
}

id _TIConvertTIMockContactCollection(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = a1;
  v1 = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v16;
  v2 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v2)
  {
    v3 = *v19;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v19 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v18 + 1) + 8 * i);
        v6 = objc_alloc(MEMORY[0x277D1C0A8]);
        v7 = [v5 firstName];
        v8 = [v5 middleName];
        v9 = [v5 lastName];
        v10 = [v5 nickName];
        [v5 relevancyScore];
        v12 = [v6 initWithFirstName:v7 phoneticFirstName:0 middleName:v8 phoneticMiddleName:0 lastName:v9 phoneticLastName:0 organizationName:v11 jobTitle:0 nickname:0 relations:v10 streets:0 cities:0 score:0];

        v13 = [MEMORY[0x277CCAD78] UUID];
        v14 = [v13 UUIDString];
        [v1 setObject:v12 forKey:v14];
      }

      v2 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v2);
  }

  return v1;
}

void sub_26D49F22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__718(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void sub_26D4A014C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(a27);
  std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(a32);
  std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(*(v32 - 112));
  _Unwind_Resume(a1);
}

void sub_26D4A0824(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x26D6C07C0](v3, 0x1020C40FAF5D19FLL);

  _Unwind_Resume(a1);
}

void sub_26D4A09D8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_26D4A1120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, void *a28, void *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, void *a37, void *a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, void *a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, void *a57, void *a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a67, 8);

  _Block_object_dispose((v73 - 184), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__784(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id TITestTyperTokensForString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB18] array];
  if ([(__CFString *)v3 length])
  {
    v6 = *MEMORY[0x277CBECE8];
    v22.length = [(__CFString *)v3 length];
    v22.location = 0;
    v7 = CFStringTokenizerCreate(v6, v3, v22, 4uLL, v4);
    v8 = 0;
    while (CFStringTokenizerAdvanceToNextToken(v7))
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v7);
      while (v8 < CurrentTokenRange.location)
      {
        v10 = [(__CFString *)v3 rangeOfComposedCharacterSequenceAtIndex:v8];
        v12 = v10;
        if ((v10 + v11) <= CurrentTokenRange.location)
        {
          v13 = v11;
        }

        else
        {
          v13 = CurrentTokenRange.location - v10;
        }

        v14 = [(__CFString *)v3 substringWithRange:v10, v13];
        [v5 addObject:v14];
        v8 = v13 + v12;
      }

      v15 = [(__CFString *)v3 substringWithRange:CurrentTokenRange.location, CurrentTokenRange.length];
      [v5 addObject:v15];
      v8 = CurrentTokenRange.location + CurrentTokenRange.length;
    }

    while (v8 < [(__CFString *)v3 length])
    {
      v16 = [(__CFString *)v3 rangeOfComposedCharacterSequenceAtIndex:v8];
      v18 = v17;
      v19 = [(__CFString *)v3 substringWithRange:v16, v17];
      [v5 addObject:v19];
      v8 = v16 + v18;
    }

    CFRelease(v7);
  }

  return v5;
}

uint64_t TITestTyperWritePropertyListToFile(void *a1, void *a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 URLByDeletingLastPathComponent];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v22 = 0;
  v7 = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v22];
  v8 = v22;

  if (v7 && ([MEMORY[0x277CCAA00] defaultManager], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "path"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBEA90], "data"), v11 = objc_claimAutoreleasedReturnValue(), v23 = *MEMORY[0x277CCA1B0], v24[0] = *MEMORY[0x277CCA1B8], objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v24, &v23, 1), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v9, "createFileAtPath:contents:attributes:", v10, v11, v12), v12, v11, v10, v9, v13) && ((objc_msgSend(MEMORY[0x277CBEB78], "outputStreamWithURL:append:", v4, 1), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "open"), objc_msgSend(v14, "streamError"), v15 = objc_claimAutoreleasedReturnValue(), v8, !v15) ? (v21 = 0, v17 = objc_msgSend(MEMORY[0x277CCAAA0], "writeJSONObject:toStream:options:error:", v3, v14, 0, &v21), v8 = v21, v16 = v17 != 0) : (v16 = 0, v8 = v15), (objc_msgSend(v14, "close"), v14, v16) && !v8))
  {
    v18 = 1;
  }

  else
  {
    v19 = [v4 path];
    NSLog(&cfstr_ErrorSerializi.isa, v19, v8);

    v18 = 0;
  }

  return v18;
}

KB::LanguageModelContext *KB::LanguageModelContext::LanguageModelContext(KB::LanguageModelContext *this, const KB::LanguageModelContext *a2)
{
  v4 = *(a2 + 1);
  *this = *a2;
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 2);
  v5 = *(a2 + 3);
  if (v5 != v6)
  {
    if (v5 - v6 >= 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = *(a2 + 40);
  *(this + 7) = *(a2 + 7);
  *(this + 40) = v7;
  language_modeling::v1::LinguisticContext::LinguisticContext();
  language_modeling::v1::LinguisticContext::LinguisticContext();
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  v8 = *(a2 + 10);
  v9 = *(a2 + 11);
  if (v9 != v8)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
    if (v10 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return this;
}

void sub_26D4A4760(_Unwind_Exception *a1)
{
  language_modeling::v1::LinguisticContext::~LinguisticContext((v1 + 9));
  language_modeling::v1::LinguisticContext::~LinguisticContext((v1 + 8));
  v4 = *v2;
  if (*v2)
  {
    v1[3] = v4;
    operator delete(v4);
  }

  v5 = v1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  _Unwind_Resume(a1);
}

void TI::CP::Path::~Path(TI::CP::Path *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

unsigned int *WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(unsigned int *result)
{
  v1 = result;
  v2 = atomic_load(result);
  if (v2 == 1)
  {
    KB::String::~String((result + 52));
    std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(*(v1 + 23));
    std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(*(v1 + 20));
    v3 = *(v1 + 11);
    while (v3)
    {
      v4 = v3;
      v3 = *v3;
      v5 = v4[4];
      if (v5)
      {
        WTF::RefCounted<TI::Favonius::Key>::deref(v5);
      }

      if (*(v4 + 8) >= 0xFu)
      {
        v6 = v4[3];
        if (v6)
        {
          MEMORY[0x26D6C07A0](v6, 0x1000C8077774924);
        }
      }

      operator delete(v4);
    }

    v7 = *(v1 + 9);
    *(v1 + 9) = 0;
    if (v7)
    {
      operator delete(v7);
    }

    v8 = *(v1 + 6);
    if (v8)
    {
      do
      {
        v9 = *v8;
        v10 = v8[3];
        if (v10)
        {
          WTF::RefCounted<TI::Favonius::Key>::deref(v10);
        }

        operator delete(v8);
        v8 = v9;
      }

      while (v9);
    }

    v11 = *(v1 + 4);
    *(v1 + 4) = 0;
    if (v11)
    {
      operator delete(v11);
    }

    v12 = *(v1 + 1);
    if (v12)
    {
      v13 = *(v1 + 2);
      v14 = *(v1 + 1);
      if (v13 != v12)
      {
        do
        {
          v16 = *(v13 - 8);
          v13 -= 8;
          v15 = v16;
          if (v16)
          {
            WTF::RefCounted<TI::Favonius::Key>::deref(v15);
          }
        }

        while (v13 != v12);
        v14 = *(v1 + 1);
      }

      *(v1 + 2) = v12;
      operator delete(v14);
    }

    JUMPOUT(0x26D6C07C0);
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

uint64_t WTF::RefCounted<TI::Favonius::Key>::deref(uint64_t result)
{
  v1 = result;
  v2 = atomic_load(result);
  if (v2 == 1)
  {
    if (*(result + 40) >= 0xFu)
    {
      v3 = *(result + 48);
      if (v3)
      {
        MEMORY[0x26D6C07A0](v3, 0x1000C8077774924);
      }
    }

    KB::String::~String((v1 + 8));

    JUMPOUT(0x26D6C07C0);
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

void TI::CP::TestCaseConverter::TestCaseConverter(std::string *this, __int128 *a2, std::string::size_type *a3, int a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v8;
  }

  this[1].__r_.__value_.__r.__words[0] = *a3;
  v9 = a3[1];
  this[1].__r_.__value_.__l.__size_ = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  this[3].__r_.__value_.__r.__words[0] = 0;
  *&this[2].__r_.__value_.__r.__words[1] = 0u;
  LODWORD(this[3].__r_.__value_.__r.__words[1]) = 1065353216;
  if (a4)
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
    __createAndLoadDictionaryContainer(v11, 0);
  }

  if (*(a2 + 23) >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
  KB::String::String(v18);
  KB::String::String(&v19);
  KB::String::String(&v20);
  KB::String::String(&v21);
  KB::String::String(v22);
  v14 = UIKeyboardStaticUnigramsFile();
  KB::utf8_string(v17, v14, v15);
  KB::String::operator=();
  KB::String::~String(v17);

  v16 = v13;
  [v13 UTF8String];
  v22[8] = TILexiconIDForLocaleIdentifier();
  KB::LexiconInfo::LexiconInfo(v17, v18);
  std::vector<KB::LexiconInfo>::__init_with_size[abi:nn200100]<KB::LexiconInfo const*,KB::LexiconInfo const*>();
}

void sub_26D4A4C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  std::vector<KB::LexiconInfo>::__destroy_vector::operator()[abi:nn200100](&a13);
  KB::LexiconInfo::~LexiconInfo(&a14);
  KB::LexiconInfo::~LexiconInfo(&a36);

  std::__hash_table<std::__hash_value_type<KB::String,WTF::RefPtr<TI::Favonius::KeyboardLayout>>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,WTF::RefPtr<TI::Favonius::KeyboardLayout>>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,WTF::RefPtr<TI::Favonius::KeyboardLayout>>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,WTF::RefPtr<TI::Favonius::KeyboardLayout>>>>::~__hash_table((v38 + 1));
  if (*v38)
  {
    WTF::RefCounted<KB::DictionaryContainer>::deref(*v38);
  }

  v40 = *(v36 + 32);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v40);
  }

  if (*(v36 + 23) < 0)
  {
    operator delete(*v36);
  }

  _Unwind_Resume(a1);
}

unsigned int *WTF::RefCounted<KB::DictionaryContainer>::deref(unsigned int *result)
{
  v2 = atomic_load(result);
  if (v2 == 1)
  {
    MEMORY[0x26D6C0610](result);

    JUMPOUT(0x26D6C07C0);
  }

  atomic_fetch_add(result, 0xFFFFFFFF);
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<KB::String,WTF::RefPtr<TI::Favonius::KeyboardLayout>>,std::__unordered_map_hasher<KB::String,std::__hash_value_type<KB::String,WTF::RefPtr<TI::Favonius::KeyboardLayout>>,std::hash<KB::String>,std::equal_to<KB::String>,true>,std::__unordered_map_equal<KB::String,std::__hash_value_type<KB::String,WTF::RefPtr<TI::Favonius::KeyboardLayout>>,std::equal_to<KB::String>,std::hash<KB::String>,true>,std::allocator<std::__hash_value_type<KB::String,WTF::RefPtr<TI::Favonius::KeyboardLayout>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<KB::String const,WTF::RefPtr<TI::Favonius::KeyboardLayout>>,0>((v2 + 2));
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

void std::__destroy_at[abi:nn200100]<std::pair<KB::String const,WTF::RefPtr<TI::Favonius::KeyboardLayout>>,0>(KB::String *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v2);
  }

  KB::String::~String(this);
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<KB::String,WTF::RefPtr<TI::Favonius::KeyboardLayout>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<KB::String,WTF::RefPtr<TI::Favonius::KeyboardLayout>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<KB::String const,WTF::RefPtr<TI::Favonius::KeyboardLayout>>,0>((v2 + 16));
    }

    operator delete(v2);
  }

  return a1;
}

void *WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::~Vector(void *a1)
{
  if (*a1)
  {
    v2 = a1[1];
    v3 = 8 * *a1;
    do
    {
      if (*v2)
      {
        WTF::RefCounted<TI::Favonius::Key>::deref(*v2);
      }

      ++v2;
      v3 -= 8;
    }

    while (v3);
    *a1 = 0;
  }

  v4 = a1[1];
  a1[1] = 0;
  a1[2] = 0;
  free(v4);
  return a1;
}

__n128 __Block_byref_object_copy__34(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t ___ZN2TI2CPL23rangeOfLastWordInStringEP8NSString_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v7 = *(*(result + 32) + 8);
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *a7 = 1;
  return result;
}

__n128 __Block_byref_object_copy__1061(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v4 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v4;
  language_modeling::v1::LinguisticContext::LinguisticContext();
  language_modeling::v1::LinguisticContext::LinguisticContext();
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  result = *(a2 + 128);
  *(a1 + 128) = result;
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  return result;
}

void __Block_byref_object_dispose__1062(uint64_t a1)
{
  v4 = (a1 + 128);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v4);
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 120));
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 112));
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

KB::LanguageModelContext *std::pair<KB::LanguageModelContext,KB::String>::pair[abi:nn200100]<KB::LanguageModelContext&,KB::String,0>(KB::LanguageModelContext *a1, const KB::LanguageModelContext *a2)
{
  KB::LanguageModelContext::LanguageModelContext(a1, a2);
  KB::String::String();
  return a1;
}

void ___ZNK2TI2CP17TestCaseConverter35compute_linguistic_context_and_stemEP8NSString_block_invoke(uint64_t a1, NSString *a2, uint64_t a3, int a4)
{
  v8[4] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    LODWORD(v5) = a4;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a2 length:a3 encoding:4];
    KB::String::String(v8);
    token_id_for_word = KB::LanguageModel::find_token_id_for_word();
    KB::String::~String(v8);

    v5 = HIDWORD(token_id_for_word);
  }

  if (v5 != 2)
  {
    KB::utf8_string(v8, *(a1 + 40), a2);
    KB::LanguageModelContext::append();
    KB::String::~String(v8);
  }
}

void sub_26D4A51B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  KB::String::~String(va);

  _Unwind_Resume(a1);
}

uint64_t std::pair<KB::LanguageModelContext,KB::String>::~pair(uint64_t a1)
{
  KB::String::~String((a1 + 104));
  v5 = (a1 + 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v5);
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 72));
  language_modeling::v1::LinguisticContext::~LinguisticContext((a1 + 64));
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<KB::LanguageModelStr *,std::shared_ptr<KB::LanguageModel>::__shared_ptr_default_delete<KB::LanguageModel,KB::LanguageModelStr>,std::allocator<KB::LanguageModelStr>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<KB::LanguageModelStr *,std::shared_ptr<KB::LanguageModel>::__shared_ptr_default_delete<KB::LanguageModel,KB::LanguageModelStr>,std::allocator<KB::LanguageModelStr>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6C07C0);
}

void sub_26D4A5C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1144(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26D4A6A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x280], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Unwind_Resume(a1);
}

void sub_26D4A8248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

void sub_26D4ABA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41, char a42)
{
  _Block_object_dispose(&a36, 8);

  _Block_object_dispose(&a42, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1432(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id conversationTestsFromJsonArray(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [TTKConversationTest fromJsonDict:*(*(&v10 + 1) + 8 * i), v10];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

uint64_t __Block_byref_object_copy__1597(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _TIBeginMockingProactiveQuickTypeManager()
{
  v0 = objc_alloc_init(TIProactiveQuickTypeManagerMock);
  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x277D6FEC0] performSelector:sel_setSharedTIProactiveQuickTypeManager_ withObject:v0];
  }
}

uint64_t _TIEndMockingProactiveQuickTypeManager()
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v1 = MEMORY[0x277D6FEC0];

    return [v1 performSelector:sel_setSharedTIProactiveQuickTypeManager_ withObject:0];
  }

  return result;
}

void _TIBeginMockingLanguageLikelihoodModel()
{
  v0 = objc_alloc_init(TILanguageLikelihoodModelStub);
  _TIBeginMockingLanguageLikelihoodModelWithModel(v0);
}

void _TIBeginMockingLanguageLikelihoodModelWithModel(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x277D6FF20] performSelector:sel_setSharedLanguageLikelihoodModel_ withObject:v1];
  }
}

uint64_t _TIEndMockingLanguageLikelihoodModel()
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v1 = MEMORY[0x277D6FF20];

    return [v1 performSelector:sel_setSharedLanguageLikelihoodModel_ withObject:0];
  }

  return result;
}

uint64_t isInputModeAvailable()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x26D6C0490]();
  v1 = MEMORY[0x26D6C04A0]();

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        v7 = availableInputModes();
        LOBYTE(v6) = [v7 containsObject:{v6, v9}];

        if (v6)
        {
          v3 = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

id read_unigrams_dictionary(void *a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v34 = v3;
  v31 = v4;
  v5 = MEMORY[0x26D6C0490]();
  v6 = MEMORY[0x26D6C04A0]();

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unigrams-%@.words", *(*(&v38 + 1) + 8 * i)];
        v13 = [v34 stringByAppendingPathComponent:v12];
        v14 = [MEMORY[0x277CCAA00] defaultManager];
        v15 = [v14 fileExistsAtPath:v13];

        if (v15)
        {
          v16 = v13;

          v9 = v16;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v17 = [MEMORY[0x277CBEB18] array];
    v37 = 0;
    v18 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v9 encoding:4 error:&v37];
    v30 = v37;
    obja = v18;
    v19 = [MEMORY[0x277CCAC80] scannerWithString:v18];
    if (([v19 isAtEnd] & 1) == 0)
    {
      do
      {
        v36 = 0;
        [v19 scanUpToString:@" : " intoString:&v36];
        v20 = v36;
        v35 = 0;
        [v19 scanUpToString:@"\n" intoString:&v35];
        v21 = v35;
        v22 = v20;
        v23 = [v21 rangeOfString:@"s="];
        v25 = v22;
        if (v23 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = [v21 substringWithRange:{v23 + 2, objc_msgSend(v21, "length") - (v23 + v24)}];
        }

        v42 = v25;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
        v27 = [AutocorrectionTest testWithInput:v22 expectedOutput:v26];

        [v17 addObject:v27];
      }

      while (![v19 isAtEnd]);
    }

    v28 = obja;
  }

  else
  {
    v17 = 0;
    v28 = 0;
  }

  return v17;
}

id read_textfile(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:a1 encoding:4 error:a2];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __read_textfile_block_invoke;
    v6[3] = &unk_279DA0CA8;
    v4 = v3;
    v7 = v4;
    [v2 enumerateLinesUsingBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id read_typologyInfo(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:a1];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = v3;
  v30 = v2;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = v1;
    v8 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v29 = v1;
      v10 = 0;
      v31 = *v33;
      do
      {
        v11 = 0;
        v12 = v10;
        do
        {
          if (*v33 != v31)
          {
            objc_enumerationMutation(v7);
          }

          v10 = [v7 objectForKey:*(*(&v32 + 1) + 8 * v11)];

          v13 = [v10 objectForKey:@"TouchKey"];
          if ([v13 isEqual:@" "])
          {
            v14 = [v4 copy];
            v15 = [v6 copy];
            v16 = [AutocorrectionTest testWithTouches:v14 expectedOutput:v15];

            [v30 addObject:v16];
            [v6 setString:&stru_287EC4808];
            [v4 removeAllObjects];
          }

          else
          {
            [v6 appendString:v13];
            v17 = [v10 valueForKeyPath:@"TouchPoint.X"];
            [v17 floatValue];
            v19 = v18;
            [v10 valueForKeyPath:@"TouchPoint.Y"];
            v20 = v7;
            v21 = v9;
            v22 = v6;
            v24 = v23 = v4;
            [v24 floatValue];
            v16 = [TIPointError errorWithErrorVector:v19, v25];

            v4 = v23;
            v6 = v22;
            v9 = v21;
            v7 = v20;

            [v4 addObject:v16];
          }

          ++v11;
          v12 = v10;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v9);

      v1 = v29;
    }

    if ([v4 count])
    {
      v36 = v6;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
      v27 = [AutocorrectionTest testWithTouches:v4 expectedOutput:v26];

      [v30 addObject:v27];
    }
  }

  return v30;
}

id read_candidates(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v1 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:a1 encoding:4 error:&v33];
  v2 = v33;
  v3 = v2;
  if (v1)
  {
    v24 = v2;
    v25 = v1;
    v4 = [v1 componentsSeparatedByString:@"\n"];
    v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = v6;
    v8 = &stru_287EC4808;
    v9 = *v30;
    v10 = @"|";
    v11 = 0x277CCA000uLL;
    v26 = *v30;
    while (1)
    {
      v12 = 0;
      v27 = v7;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v29 + 1) + 8 * v12);
        if (([v13 isEqualToString:v8] & 1) == 0)
        {
          v14 = [*(v11 + 2304) characterSetWithCharactersInString:v10];
          v15 = [v13 componentsSeparatedByCharactersInSet:v14];

          if ([v15 count] == 2)
          {
            [v15 objectAtIndex:0];
            v16 = v8;
            v17 = v5;
            v19 = v18 = v10;
            [v15 objectAtIndex:1];
            v21 = v20 = v11;
            v22 = [AutocorrectionTest testWithInput:v19 expectedOutput:v21];

            v11 = v20;
            v10 = v18;
            v5 = v17;
            v8 = v16;
            v9 = v26;
            v7 = v27;
            goto LABEL_12;
          }

          if ([v15 count] == 1)
          {
            v22 = [AutocorrectionTest testWithInput:@"\n" expectedOutput:&unk_287ED4B20];
LABEL_12:
            [v28 addObject:v22];
          }
        }

        ++v12;
      }

      while (v7 != v12);
      v7 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (!v7)
      {
LABEL_16:

        v3 = v24;
        v1 = v25;
        goto LABEL_18;
      }
    }
  }

  v28 = 0;
LABEL_18:

  return v28;
}

id availableInputModes()
{
  if (availableInputModes_onceToken != -1)
  {
    dispatch_once(&availableInputModes_onceToken, &__block_literal_global_1999);
  }

  v1 = availableInputModes_modes;

  return v1;
}

void __availableInputModes_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"ja_JP-50On", @"ja_JP", @"zh_Hant-HWR", @"zh_Hans-HWR", @"zh_CN", @"zh_Hant-Cangjie", @"zh_Hans-Wubihua", @"zh_Hant-Wubihua", @"zh_TW", 0}];
  v1 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v2 = availableInputModes_modes;
  availableInputModes_modes = v1;

  v3 = [MEMORY[0x277D6F380] sharedInputModeController];
  v4 = [v3 supportedInputModeIdentifiers];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __availableInputModes_block_invoke_2;
  v6[3] = &unk_279DA0C48;
  v7 = v0;
  v5 = v0;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __availableInputModes_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [availableInputModes_modes addObject:v3];
  }
}

void __read_textfile_block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCA900];
  v4 = a2;
  v5 = [v3 whitespaceAndNewlineCharacterSet];
  v7 = [v4 stringByTrimmingCharactersInSet:v5];

  if ([v7 length])
  {
    v6 = [AutocorrectionTest testWithInput:v7];
    [*(a1 + 32) addObject:v6];
  }
}

void __read_nefile_block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCA900];
  v4 = a2;
  v5 = [v3 whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  if ([v6 length])
  {
    [*(a1 + 32) addObject:v6];
  }
}

void __read_mock_contactsfile_block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCA900];
  v4 = a2;
  v5 = [v3 whitespaceAndNewlineCharacterSet];
  v12 = [v4 stringByTrimmingCharactersInSet:v5];

  if ([v12 length])
  {
    v6 = [v12 componentsSeparatedByString:{@", "}];
    v7 = objc_alloc_init(TIMockContact);
    v8 = [v6 objectAtIndex:0];
    [(TIMockContact *)v7 setFirstName:v8];

    v9 = [v6 objectAtIndex:1];
    [(TIMockContact *)v7 setLastName:v9];

    v10 = [v6 objectAtIndex:2];
    [v10 doubleValue];
    *&v11 = v11;
    [(TIMockContact *)v7 setRelevancyScore:v11];

    [*(a1 + 32) addObject:v7];
  }
}

void _TIBeginMockingKeyboardActivityController()
{
  v1 = objc_alloc_init(TIKeyboardAssertionManagerMock);
  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x277D6FE58] performSelector:sel_setSharedAssertionManager_ withObject:v1];
  }

  v0 = objc_alloc_init(TIKeyboardActivityControllerMock);
  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x277D6FE50] performSelector:sel_setSharedController_ withObject:v0];
  }
}

uint64_t _TIEndMockingKeyboardActivityController()
{
  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x277D6FE50] performSelector:sel_setSharedController_ withObject:0];
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    v1 = MEMORY[0x277D6FE58];

    return [v1 performSelector:sel_setSharedAssertionManager_ withObject:0];
  }

  return result;
}

id TTKLogFacility()
{
  if (TTKLogFacility_onceToken != -1)
  {
    dispatch_once(&TTKLogFacility_onceToken, &__block_literal_global_2902);
  }

  v1 = TTKLogFacility_logFacility;

  return v1;
}

uint64_t __TTKLogFacility_block_invoke()
{
  TTKLogFacility_logFacility = os_log_create("com.apple.TextInput", "TTKLog");

  return MEMORY[0x2821F96F8]();
}

void sub_26D4BC280(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

BOOL _isNumberPunctationKey(NSString *a1)
{
  v1 = a1;
  v2 = [(NSString *)v1 _rangeOfLongCharacterAtIndex:0];
  if (v2 + v3 == [(NSString *)v1 length])
  {
    v4 = [(NSString *)v1 _firstLongCharacter];
    if (u_ispunct(v4))
    {
      v5 = 1;
    }

    else
    {
      v5 = u_isdigit(v4) != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t _isControlKey(NSString *a1)
{
  v1 = a1;
  v2 = [(NSString *)v1 isEqualToString:@"Shift"]|| [(NSString *)v1 isEqualToString:@"More"]|| [(NSString *)v1 isEqualToString:@"Delete"]|| [(NSString *)v1 isEqualToString:@"\n"];

  return v2;
}

void sub_26D4BCD2C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_26D4BD11C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

std::string *TI::CP::TTKTestCaseConverter::TTKTestCaseConverter(std::string *this, __int128 *a2, std::string::size_type *a3, atomic_uint **a4)
{
  v6 = *a4;
  if (*a4)
  {
    atomic_fetch_add(v6, 1u);
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  v8 = a3[1];
  this[1].__r_.__value_.__r.__words[0] = *a3;
  this[1].__r_.__value_.__l.__size_ = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  this[1].__r_.__value_.__r.__words[2] = v6;
  if (v6)
  {
    atomic_fetch_add(v6, 1u);
    *&this[2].__r_.__value_.__l.__data_ = 0u;
    *&this[2].__r_.__value_.__r.__words[2] = 0u;
    LODWORD(this[3].__r_.__value_.__r.__words[1]) = 1065353216;
    WTF::RefCounted<KB::DictionaryContainer>::deref(v6);
  }

  else
  {
    *&this[2].__r_.__value_.__l.__data_ = 0u;
    *&this[2].__r_.__value_.__r.__words[2] = 0u;
    LODWORD(this[3].__r_.__value_.__r.__words[1]) = 1065353216;
  }

  return this;
}

void sub_26D4BD218(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    WTF::RefCounted<KB::DictionaryContainer>::deref(v1);
  }

  _Unwind_Resume(exception_object);
}

void TI::CP::TTKTestCaseConverter::add_layout(TI::CP::TTKTestCaseConverter *this, TTKSimpleKeyboardPlane *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v33 = a2;
  v3 = [(TTKSimpleKeyboardPlane *)v33 keys];
  v4 = [v3 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (!v4)
  {
    goto LABEL_31;
  }

  v5 = *v35;
  do
  {
    v6 = 0;
    do
    {
      if (*v35 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v34 + 1) + 8 * v6);
      [v7 frame];
      v8 = [v7 string];
      KB::utf8_string(v45, v8, v9);

      KB::CollatorWrapper::sortkey_for_string(&v42, (*(*(this + 5) + 8) + 72), v45);
      [v7 keyCode];
      TI::Favonius::LayoutKey::create();
      v10 = v38;
      if (v38 != v40)
      {
        v16 = v39;
LABEL_22:
        v16[v10] = v41;
        v38 = v10 + 1;
        goto LABEL_23;
      }

      v11 = v38 + (v38 >> 1);
      if (v38 < 0x100)
      {
        v11 = 2 * v38;
      }

      if (v11 <= v38 + 1)
      {
        v12 = v38 + 1;
      }

      else
      {
        v12 = v11;
      }

      if (v38 < v12)
      {
        v13 = v39;
        v14 = malloc_type_malloc(8 * v12, 0x2004093837F09uLL);
        v39 = v14;
        v40 = v12;
        if (v14)
        {
          memcpy(v14, v13, 8 * v10);
          v15 = v39;
        }

        else
        {
          v15 = 0;
        }

        if (v15 == v13)
        {
          v39 = 0;
          v40 = 0;
        }

        free(v13);
      }

      v16 = v39;
      if (v39)
      {
        v10 = v38;
        goto LABEL_22;
      }

      if (v41)
      {
        WTF::RefCounted<TI::Favonius::Key>::deref(v41);
      }

LABEL_23:
      if (v42 >= 0xFu && v43)
      {
        MEMORY[0x26D6C07A0](v43, 0x1000C8077774924);
      }

      KB::String::~String(v45);
      ++v6;
    }

    while (v4 != v6);
    v17 = [v3 countByEnumeratingWithState:&v34 objects:v46 count:16];
    v4 = v17;
  }

  while (v17);
LABEL_31:

  v18 = [(TTKSimpleKeyboardPlane *)v33 name];
  KB::utf8_string(v45, v18, v19);

  TI::Favonius::KeyboardLayout::create();
  v20 = v42;
  KB::String::operator=();
  v32 = [(TTKSimpleKeyboardPlane *)v33 name];
  KB::utf8_string(&v42, v32, v21);
  if (v43)
  {
    v22 = v43;
  }

  else
  {
    v22 = &v44;
  }

  v23 = KB::String::hash(v22, v42);
  v24 = v23;
  v25 = *(this + 7);
  if (!v25)
  {
    goto LABEL_52;
  }

  v26 = vcnt_s8(v25);
  v26.i16[0] = vaddlv_u8(v26);
  v27 = v26.u32[0];
  if (v26.u32[0] > 1uLL)
  {
    v28 = v23;
    if (v25 <= v23)
    {
      v28 = v23 % v25;
    }
  }

  else
  {
    v28 = (v25 - 1) & v23;
  }

  v29 = *(*(this + 6) + 8 * v28);
  if (!v29 || (v30 = *v29) == 0)
  {
LABEL_52:
    operator new();
  }

  while (2)
  {
    v31 = v30[1];
    if (v31 != v24)
    {
      if (v27 > 1)
      {
        if (v31 >= v25)
        {
          v31 %= v25;
        }
      }

      else
      {
        v31 &= v25 - 1;
      }

      if (v31 != v28)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    if (v30 + 2 != &v42 && (KB::String::equal((v30 + 2), &v42) & 1) == 0)
    {
LABEL_51:
      v30 = *v30;
      if (!v30)
      {
        goto LABEL_52;
      }

      continue;
    }

    break;
  }

  KB::String::~String(&v42);

  if (v20)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v20);
  }

  KB::String::~String(v45);
  WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::~Vector(&v38);
}

void sub_26D4BD968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int16 a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<KB::String,WTF::RefPtr<TI::Favonius::KeyboardLayout>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<KB::String,WTF::RefPtr<TI::Favonius::KeyboardLayout>>,void *>>>>::~unique_ptr[abi:nn200100](&a22);
  KB::String::~String(&a25);

  if (v29)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v29);
  }

  KB::String::~String(&a29);
  WTF::Vector<WTF::RefPtr<TI::Favonius::LayoutKey>,0ul>::~Vector(&a19);

  _Unwind_Resume(a1);
}

void TI::CP::TTKTestCaseConverter::convert(TI::CP::TTKTestCaseConverter *this@<X0>, TTKTestCaseRecord *a2@<X1>, atomic_uint **a3@<X8>)
{
  v115 = *MEMORY[0x277D85DE8];
  v61 = a2;
  v5 = [(TTKTestCaseRecord *)v61 layoutName];
  KB::utf8_string(&v102, v5, v6);

  if (v103)
  {
    v7 = v103;
  }

  else
  {
    v7 = &v104;
  }

  v8 = KB::String::hash(v7, v102);
  v9 = v8;
  v10 = *(this + 7);
  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = v8;
    if (v10 <= v8)
    {
      v12 = v8 % v10;
    }
  }

  else
  {
    v12 = (v10 - 1) & v8;
  }

  v13 = *(*(this + 6) + 8 * v12);
  do
  {
    do
    {
      v13 = *v13;
    }

    while (v13[1] != v9);
  }

  while (v13 + 2 != &v102 && !KB::String::equal((v13 + 2), &v102));
  v14 = v13[6];
  if (v14)
  {
    atomic_fetch_add(v14, 1u);
  }

  v15 = [(TTKTestCaseRecord *)v61 touchDataCollection];
  v60 = [v15 objectAtIndexedSubscript:0];

  *v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  *v73 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v16 = [v60 samples];
  v17 = [v16 countByEnumeratingWithState:&v69 objects:v101 count:16];
  if (v17)
  {
    v18 = *v70;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v70 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v69 + 1) + 8 * i);
        [v20 point];
        v22 = v21;
        v24 = v23;
        [v20 timeStamp];
        v26 = v25;
        [v20 force];
        v28 = v27;
        v116.x = v22;
        v116.y = v24;
        TI::CP::Path::append(v73, v116, v26, v28, -1.0, 0.0);
      }

      v17 = [v16 countByEnumeratingWithState:&v69 objects:v101 count:16];
    }

    while (v17);
  }

  v29 = [(TTKTestCaseRecord *)v61 primaryIntendedText];
  KB::utf8_string(v100, v29, v30);

  memset(v64, 0, sizeof(v64));
  v62 = 0u;
  *v63 = 0u;
  language_modeling::v1::LinguisticContext::LinguisticContext(&v65);
  language_modeling::v1::LinguisticContext::LinguisticContext(&v66);
  v67[0] = 0;
  v67[1] = 0;
  v68 = 0;
  KB::String::String(v99);
  v31 = [(TTKTestCaseRecord *)v61 context];
  v32 = v31 == 0;

  if (!v32)
  {
    v33 = [(TTKTestCaseRecord *)v61 context];
    v76 = 0;
    v77 = &v76;
    v78 = 0x4012000000;
    v79 = __Block_byref_object_copy__34;
    v80 = __Block_byref_object_dispose__35;
    v81 = &unk_26D4F599A;
    v82 = xmmword_26D4EC000;
    v34 = [v33 length];
    v106 = MEMORY[0x277D85DD0];
    v107 = 3221225472;
    v108 = ___ZN2TI2CPL23rangeOfLastWordInStringEP8NSString_block_invoke;
    v109 = &unk_279DA08C0;
    v110 = &v76;
    [v33 enumerateSubstringsInRange:0 options:v34 usingBlock:{771, &v106}];
    v36 = v77[6];
    v35 = v77[7];
    _Block_object_dispose(&v76, 8);

    if (v36 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v59 = 0;
      v37 = v33;
    }

    else if ((v36 + v35) == [v33 length])
    {
      v38 = [v33 substringWithRange:{v36, v35}];
      v39 = [v38 lowercaseString];
      v40 = [&unk_287ED4AA8 containsObject:v39];

      if (v40)
      {
        v59 = 0;
        v37 = v33;
      }

      else
      {
        v41 = v38;
        v37 = [v33 substringToIndex:v36];
        v59 = v41;
      }
    }

    else
    {
      v59 = 0;
      v37 = v33;
    }

    v76 = 0;
    v77 = &v76;
    v78 = 0x9812000000;
    v79 = __Block_byref_object_copy__1061;
    v80 = __Block_byref_object_dispose__1062;
    v81 = &unk_26D4F599A;
    v82 = 0u;
    __p = 0u;
    v84 = 0u;
    v85 = 0u;
    language_modeling::v1::LinguisticContext::LinguisticContext(&v86);
    language_modeling::v1::LinguisticContext::LinguisticContext(&v87);
    memset(v88, 0, sizeof(v88));
    if (*(this + 3))
    {
      v43 = v37;
      v44 = [v37 UTF8String];
      v45 = this;
      if (*(this + 23) < 0)
      {
        v45 = *this;
      }

      v46 = MEMORY[0x277CBEAF8];
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:v45];
      v58 = [v46 localeWithLocaleIdentifier:v47];

      v48 = TILexiconIDForLocaleIdentifier();
      if ([v37 length])
      {
        LMStreamTokenizerCreate();
        strlen(v44);
        v106 = MEMORY[0x277D85DD0];
        v107 = 3221225472;
        v108 = ___ZNK2TI2CP17TestCaseConverter35compute_linguistic_context_and_stemEP8NSString_block_invoke;
        v109 = &unk_279DA0898;
        v112 = &v76;
        v113 = this;
        v110 = v58;
        v114 = v48;
        v111 = v37;
        LMStreamTokenizerPushBytes();
        LMStreamTokenizerRelease();
      }

      else
      {
        MEMORY[0x26D6C0670](&v106, "");
        KB::LanguageModelContext::append();
        KB::String::~String(&v106);
      }

      v51 = v77;
      KB::utf8_string(v105, v59, v49);
      std::pair<KB::LanguageModelContext,KB::String>::pair[abi:nn200100]<KB::LanguageModelContext&,KB::String,0>(&v89, (v51 + 6));
      KB::String::~String(v105);
    }

    else
    {
      v50 = v77;
      KB::utf8_string(&v106, v59, v42);
      std::pair<KB::LanguageModelContext,KB::String>::pair[abi:nn200100]<KB::LanguageModelContext&,KB::String,0>(&v89, (v50 + 6));
      KB::String::~String(&v106);
    }

    _Block_object_dispose(&v76, 8);
    v105[0] = v88;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](v105);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v87);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v86);
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    if (*(&v82 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v82 + 1));
    }

    v52 = v89;
    v89 = 0uLL;
    v53 = *(&v62 + 1);
    v62 = v52;
    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v53);
    }

    if (v63[0])
    {
      v63[1] = v63[0];
      operator delete(v63[0]);
    }

    *v63 = *v90;
    *&v64[0] = v91;
    v90[1] = 0;
    v91 = 0;
    v90[0] = 0;
    *(v64 + 8) = v92;
    *(&v64[1] + 1) = v93;
    language_modeling::v1::LinguisticContext::operator=();
    language_modeling::v1::LinguisticContext::operator=();
    v54 = v67[0];
    if (v67[0])
    {
      v55 = v67[1];
      v56 = v67[0];
      if (v67[1] != v67[0])
      {
        do
        {
          v57 = *(v55 - 1);
          v55 -= 3;
          if (v57 < 0)
          {
            operator delete(*v55);
          }
        }

        while (v55 != v54);
        v56 = v67[0];
      }

      v67[1] = v54;
      operator delete(v56);
    }

    *v67 = v96;
    v68 = v97;
    v97 = 0;
    v96 = 0uLL;
    KB::String::operator=();
    KB::String::~String(&v98);
    v76 = &v96;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v76);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v95);
    language_modeling::v1::LinguisticContext::~LinguisticContext(&v94);
    if (v90[0])
    {
      v90[1] = v90[0];
      operator delete(v90[0]);
    }

    if (*(&v89 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v89 + 1));
    }
  }

  if (v14)
  {
    atomic_fetch_add(v14, 1u);
    *a3 = v14;
    atomic_fetch_add(v14, 1u);
  }

  else
  {
    *a3 = 0;
  }

  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0;
  if (v73[1] != v73[0])
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v73[1] - v73[0]) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  a3[4] = 0;
  a3[5] = 0;
  a3[6] = 0;
  if (v75 != v74[1])
  {
    if ((v75 - v74[1]) >= 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  MEMORY[0x26D6C0680](a3 + 7, v100);
  KB::LanguageModelContext::LanguageModelContext((a3 + 11), &v62);
  MEMORY[0x26D6C0680](a3 + 24, v99);
  if (v14)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v14);
  }

  KB::String::~String(v99);
  v76 = v67;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v76);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v66);
  language_modeling::v1::LinguisticContext::~LinguisticContext(&v65);
  if (v63[0])
  {
    v63[1] = v63[0];
    operator delete(v63[0]);
  }

  if (*(&v62 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v62 + 1));
  }

  KB::String::~String(v100);
  if (v74[1])
  {
    *&v75 = v74[1];
    operator delete(v74[1]);
  }

  if (v73[0])
  {
    v73[1] = v73[0];
    operator delete(v73[0]);
  }

  if (v14)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v14);
  }

  KB::String::~String(&v102);
}

void sub_26D4BE420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  KB::String::~String((v47 - 208));

  _Block_object_dispose(&a44, 8);
  KB::LanguageModelContext::~LanguageModelContext((v46 + 48));

  KB::String::~String(&STACK[0x240]);
  KB::LanguageModelContext::~LanguageModelContext(&a15);
  KB::String::~String(&STACK[0x260]);
  TI::CP::Path::~Path(&a37);

  if (v44)
  {
    WTF::RefCounted<TI::Favonius::KeyboardLayout>::deref(v44);
  }

  KB::String::~String(&STACK[0x300]);

  _Unwind_Resume(a1);
}

void _TIBeginMockingCryptographer()
{
  v0 = objc_alloc_init(TICryptographerMock);
  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x277D6FE40] performSelector:sel_setSharedCryptographer_ withObject:v0];
  }
}

uint64_t _TIEndMockingCryptographer()
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v1 = MEMORY[0x277D6FE40];

    return [v1 performSelector:sel_setSharedCryptographer_ withObject:0];
  }

  return result;
}

void _TIBeginMockingAggdReporter()
{
  if ((__missingTIAggdReporter & 1) == 0)
  {
    v0 = NSClassFromString(&cfstr_Tiaggdreporter.isa);
    if (v0)
    {
      v1 = v0;
      v2 = objc_alloc_init(TIAggdReporterMock);
      v3 = __aggdReportMock;
      __aggdReportMock = v2;

      v4 = __aggdReportMock;

      [(objc_class *)v1 setSharedAggdReporter:v4];
    }

    else
    {
      __missingTIAggdReporter = 1;
    }
  }
}

void _TIEndMockingAggdReporter()
{
  if ((__missingTIAggdReporter & 1) == 0)
  {
    [NSClassFromString(&cfstr_Tiaggdreporter.isa) setSharedAggdReporter:0, v0];
    v2 = __aggdReportMock;
    __aggdReportMock = 0;
  }
}

uint64_t _TIGetMockingAggdReporterScalar(uint64_t a1)
{
  if (__missingTIAggdReporter)
  {
    return 0;
  }

  else
  {
    return [__aggdReportMock getScalar:a1];
  }
}

id _TIGetMockingAggdReporterDistribution(uint64_t a1)
{
  if (__missingTIAggdReporter)
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v3 = [__aggdReportMock getDistributionObject:{a1, v1}];
  }

  return v3;
}

id unigramsFilePathForInputMode()
{
  v0 = UIKeyboardStaticUnigramsFile();

  return v0;
}

id phrasesFilePathForInputMode(uint64_t a1)
{
  v1 = [MEMORY[0x277D6FE48] inputModeWithIdentifier:a1];
  v2 = UIKeyboardPhraseLexiconPathForInputMode();

  return v2;
}

id dynamicFilePathForInputMode(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 length];
  v6 = 0;
  if (v4 && v5)
  {
    if ([v3 isEqualToString:@"en_US"])
    {
      v7 = @"dynamic-text.dat";
    }

    else
    {
      v8 = TIInputModeGetLanguageWithRegion();
      v7 = [v8 stringByAppendingString:@"-dynamic-text.dat"];
    }

    if ([(__CFString *)v7 length])
    {
      v6 = [v4 stringByAppendingPathComponent:v7];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void sub_26D4BF638(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id deltaUnigramsFilePathForInputMode(uint64_t a1)
{
  v1 = [MEMORY[0x277D6FE48] inputModeWithIdentifier:a1];
  v2 = UIKeyboardDeltaLexiconPathForInputMode();

  return v2;
}

void __createAndLoadDictionaryContainer(NSString *a1, NSString *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v4 = UIKeyboardDynamicDictionaryFile();
  }

  __getLexiconInfo(v3, v4, 1.0, v6);
  KB::LexiconInfo::LexiconInfo(v5, v6);
  std::vector<KB::LexiconInfo>::__init_with_size[abi:nn200100]<KB::LexiconInfo const*,KB::LexiconInfo const*>();
}

void sub_26D4BFB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void **a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  KB::String::~String((v59 - 136));
  KB::String::~String(&a36);
  a32 = &a17;
  std::vector<KB::LexiconInfo>::__destroy_vector::operator()[abi:nn200100](&a32);
  KB::LexiconInfo::~LexiconInfo(&a58);

  _Unwind_Resume(a1);
}

void __getLexiconInfo(NSString *a1@<X0>, NSString *a2@<X1>, float a3@<S0>, uint64_t a4@<X8>)
{
  v18 = a1;
  v7 = a2;
  v8 = UIKeyboardStaticUnigramsFile();
  v9 = deltaUnigramsFilePathForInputMode(v18);
  v10 = phrasesFilePathForInputMode(v18);
  v11 = dynamicFilePathForInputMode(v18, v7);
  [(NSString *)v18 UTF8String];
  v12 = TILexiconIDForLocaleIdentifier();
  KB::utf8_string(a4, v18, v13);
  KB::utf8_string((a4 + 32), v8, v14);
  KB::utf8_string((a4 + 64), v9, v15);
  KB::utf8_string((a4 + 96), v10, v16);
  KB::utf8_string((a4 + 128), v11, v17);
  *(a4 + 160) = v12;
  *(a4 + 164) = 0;
  *(a4 + 168) = a3;
}

void sub_26D4BFDDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  KB::String::~String((v13 + 96));
  KB::String::~String((v13 + 64));
  KB::String::~String((v13 + 32));
  KB::String::~String(v13);

  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:nn200100]<KB::LexiconInfo,KB::String const&,KB::String,KB::String,KB::String,KB::String,unsigned int const&,BOOL,int,KB::LexiconInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, int *a8)
{
  MEMORY[0x26D6C0680]();
  KB::String::String();
  KB::String::String();
  KB::String::String();
  KB::String::String();
  *(a1 + 160) = -2;
  *(a1 + 164) = *a7;
  *(a1 + 168) = *a8;
  return a1;
}

void sub_26D4BFF08(_Unwind_Exception *a1)
{
  KB::String::~String((v1 + 96));
  KB::String::~String((v1 + 64));
  KB::String::~String((v1 + 32));
  KB::String::~String(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<KB::LexiconInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 176;
    KB::LexiconInfo::~LexiconInfo((i - 176));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void __createAndLoadLanguageModel(NSString *a1@<X0>, NSString *a2@<X1>, void *a3@<X8>)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  *a3 = 0;
  a3[1] = 0;
  v7[0] = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v5];
  [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  objc_claimAutoreleasedReturnValue();
  [MEMORY[0x277D6FE48] inputModeWithIdentifier:v5];
  [objc_claimAutoreleasedReturnValue() doesSupportInlineCompletion];
  KB::LanguageModelConfig::LanguageModelConfig();
  operator new();
}

void sub_26D4C0224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  KB::LanguageModelConfig::~LanguageModelConfig(va);

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(a1);
}

void _TIBeginMockingAppAutofillManager()
{
  v0 = objc_alloc_init(TIAppAutofillManagerMock);
  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x277D6FE30] performSelector:sel_setSharedAppAutofillManager_ withObject:v0];
  }
}

uint64_t _TIEndMockingAppAutofillManager()
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v1 = MEMORY[0x277D6FE30];

    return [v1 performSelector:sel_setSharedAppAutofillManager_ withObject:0];
  }

  return result;
}

void _TIBeginMockingAnalyticsService()
{
  if ((__missingTIAnalyticsService & 1) == 0)
  {
    v0 = NSClassFromString(&cfstr_Tianalyticsser.isa);
    if (v0)
    {
      v1 = v0;
      v2 = objc_alloc(MEMORY[0x277D6F318]);
      v3 = objc_opt_new();
      v4 = [v2 initWithProvider:v3];
      v5 = __analyticsServiceMock;
      __analyticsServiceMock = v4;

      v6 = __analyticsServiceMock;

      [(objc_class *)v1 setMockInstance:v6];
    }

    else
    {
      __missingTIAnalyticsService = 1;
    }
  }
}

void _TIEndMockingAnalyticsService()
{
  if ((__missingTIAnalyticsService & 1) == 0)
  {
    [NSClassFromString(&cfstr_Tianalyticsser.isa) setMockInstance:0, v0];
    v2 = __analyticsServiceMock;
    __analyticsServiceMock = 0;
  }
}

id _TIGetMockingAnalyticsServiceAllEvents()
{
  v0 = [__analyticsServiceMock provider];
  v1 = [v0 allEvents];

  return v1;
}

id _TIGetMockingAnalyticsServiceEvents(void *a1)
{
  v1 = __analyticsServiceMock;
  v2 = a1;
  v3 = [v1 provider];
  v4 = [*MEMORY[0x277D6F588] stringByAppendingFormat:@".%@", v2];

  v5 = [v3 eventsWithName:v4];

  return v5;
}

id _TIGetMockingAnalyticsInputAnalyticsServiceEvents(void *a1)
{
  v1 = __analyticsServiceMock;
  v2 = a1;
  v3 = [v1 provider];
  v4 = [*MEMORY[0x277D6F580] stringByAppendingFormat:@".%@", v2];

  v5 = [v3 eventsWithName:v4];

  return v5;
}

id _TIGetMockingAnalyticsServiceEventsForMultipleEventNames(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    v6 = *MEMORY[0x277D6F588];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [__analyticsServiceMock provider];
        v10 = [v6 stringByAppendingFormat:@".%@", v8];
        v11 = [v9 eventsWithName:v10];

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v20;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v20 != v15)
              {
                objc_enumerationMutation(v12);
              }

              [v2 addObject:*(*(&v19 + 1) + 8 * j)];
            }

            v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v14);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }

  return v2;
}

uint64_t _TIGetMockingAnalyticsServiceCountEvent(void *a1)
{
  v1 = __analyticsServiceMock;
  v2 = a1;
  v3 = [v1 provider];
  v4 = [*MEMORY[0x277D6F588] stringByAppendingFormat:@".%@", v2];

  v5 = [v3 countEvent:v4];
  return v5;
}

uint64_t _TIGetMockingAnalyticsServiceCountEventWithPredicate(void *a1, void *a2)
{
  v3 = __analyticsServiceMock;
  v4 = a2;
  v5 = a1;
  v6 = [v3 provider];
  v7 = [*MEMORY[0x277D6F588] stringByAppendingFormat:@".%@", v5];

  v8 = [v6 countEvent:v7 filteredWithPredicate:v4];
  return v8;
}

uint64_t _TIGetMockingAnalyticsServiceSumIntegerField(void *a1, void *a2)
{
  v3 = __analyticsServiceMock;
  v4 = a2;
  v5 = a1;
  v6 = [v3 provider];
  v7 = [*MEMORY[0x277D6F588] stringByAppendingFormat:@".%@", v5];

  v8 = [v6 sumIntegerField:v4 forEvent:v7];
  return v8;
}

uint64_t _TIGetMockingAnalyticsServiceSumIntegerFieldWithPredicate(void *a1, void *a2, void *a3)
{
  v5 = __analyticsServiceMock;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = [v5 provider];
  v10 = [*MEMORY[0x277D6F588] stringByAppendingFormat:@".%@", v8];

  v11 = [v9 sumIntegerField:v7 forEvent:v10 filteredWithPredicate:v6];
  return v11;
}

double _TIGetMockingAnalyticsServiceSumFloatField(void *a1, void *a2)
{
  v3 = __analyticsServiceMock;
  v4 = a2;
  v5 = a1;
  v6 = [v3 provider];
  v7 = [*MEMORY[0x277D6F588] stringByAppendingFormat:@".%@", v5];

  [v6 sumFloatField:v4 forEvent:v7];
  v9 = v8;

  return v9;
}

double _TIGetMockingAnalyticsServiceSumFloatFieldWithPredicate(void *a1, void *a2, void *a3)
{
  v5 = __analyticsServiceMock;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = [v5 provider];
  v10 = [*MEMORY[0x277D6F588] stringByAppendingFormat:@".%@", v8];

  [v9 sumFloatField:v7 forEvent:v10 filteredWithPredicate:v6];
  v12 = v11;

  return v12;
}

double std::gamma_distribution<double>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this, double *a2)
{
  v4 = *a2;
  if (*a2 == 1.0)
  {
    v5 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
    v6 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
    v7 = -log((v5 + v6 * 4294967300.0) * -5.42101086e-20 + 1.0);
  }

  else if (*a2 <= 1.0)
  {
    v20 = 1.0 - v4;
    do
    {
      while (1)
      {
        v21 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
        v22 = (v21 + std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this) * 4294967300.0) * 5.42101086e-20;
        v23 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
        v24 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
        v25 = -log(1.0 - (v23 + v24 * 4294967300.0) * 5.42101086e-20);
        if (v22 <= v20)
        {
          break;
        }

        v26 = log((1.0 - (v22 + 0.0)) / v4);
        v7 = pow(v20 - v4 * v26, 1.0 / v4);
        if (v7 <= v25 - v26)
        {
          return v7 * a2[1];
        }
      }

      v27 = pow(v22 + 0.0, 1.0 / v4);
    }

    while (v27 > v25);
    v7 = v27;
  }

  else
  {
    v9 = v4 + -1.0;
    v28 = v4 * 3.0 + -0.75;
    while (1)
    {
      do
      {
        v10 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
        v11 = (v10 + std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this) * 4294967300.0) * 5.42101086e-20 + 0.0;
        v12 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
        v13 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
        v14 = v11 * (1.0 - v11);
      }

      while (v14 == 0.0);
      v15 = (v11 + -0.5) * sqrt(v28 / v14);
      v7 = v9 + v15;
      if (v9 + v15 >= 0.0)
      {
        v16 = (v12 + v13 * 4294967300.0) * 5.42101086e-20 + 0.0;
        v17 = v16 * (v16 * (v14 * (v14 * (v14 * 64.0))));
        if (v17 <= 1.0 - v15 * (v15 + v15) / v7)
        {
          break;
        }

        v18 = log(v17);
        v19 = log(v7 / v9);
        if (v18 <= -(v15 - v9 * v19) - (v15 - v9 * v19))
        {
          break;
        }
      }
    }
  }

  return v7 * a2[1];
}

void sub_26D4C6400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v11;

  _Unwind_Resume(a1);
}

void sub_26D4C65CC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_26D4C6898(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void sub_26D4C8808(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void _TIBeginMockingUserModelDataStore()
{
  v0 = objc_alloc_init(TIUserModelDataStoreMock);
  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x277D6F548] performSelector:sel_setSharedTIUserModelDataStore_ withObject:v0];
  }
}

uint64_t _TIEndMockingUserModelDataStore()
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v1 = MEMORY[0x277D6F548];

    return [v1 performSelector:sel_setSharedUserModelDataStore_ withObject:0];
  }

  return result;
}

void _TIMockingUserModelDataStoreClear()
{
  v0 = [MEMORY[0x277D6F548] sharedUserModelDataStore];
  if (objc_opt_respondsToSelector())
  {
    [v0 performSelector:sel_clear withObject:0];
  }
}

void sub_26D4CB438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _TIBeginMockingTrialManager()
{
  v0 = MEMORY[0x277D6FEE0];
  v1 = objc_alloc_init(MockTITrialManager);
  [v0 setSharedManager:v1];
}

void sub_26D4D1E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5458(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _isLetterKey(void *a1)
{
  v1 = a1;
  if ([v1 length] && (v2 = objc_msgSend(v1, "_rangeOfLongCharacterAtIndex:", 0), v2 + v3 == objc_msgSend(v1, "length")))
  {
    v4 = [v1 _firstLongCharacter];
    v5 = [MEMORY[0x277CCA900] letterCharacterSet];
    v6 = [v5 longCharacterIsMember:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL _isWordEndingKey(void *a1)
{
  v1 = a1;
  if ([v1 length] == 1)
  {
    v2 = [v1 _firstLongCharacter];
  }

  else
  {
    v2 = 0;
  }

  if (u_ispunct(v2))
  {
    v3 = 1;
  }

  else
  {
    v3 = u_isWhitespace(v2) != 0;
  }

  return v3;
}

BOOL _isSpaceKey(void *a1)
{
  v1 = a1;
  if ([v1 length] == 1)
  {
    v2 = [v1 _firstLongCharacter];
  }

  else
  {
    v2 = 0;
  }

  v3 = u_isspace(v2) != 0;

  return v3;
}

void _TIBeginMockingSingletonsWithData(void *a1, void *a2, void *a3, void *a4, int a5, char a6)
{
  v17 = a4;
  v11 = a3;
  v12 = a2;
  v13 = a1;
  if (objc_opt_respondsToSelector())
  {
    [MEMORY[0x277D6FEA0] disableForTesting:1];
  }

  _TIBeginMockingKeyboardActivityController();
  _TIBeginMockingTransientLexiconManagerWithData(v13, v12);

  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  _TIBeginMockingUserDictionaryServerWithPairs(v14);

  if (v17)
  {
    _TIBeginMockingLanguageLikelihoodModelWithModel(v17);
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  _TIBeginMockingLanguageLikelihoodModel();
  if (a5)
  {
LABEL_8:
    _TIBeginMockingAssetManager();
  }

LABEL_9:
  _TIBeginMockingAggdReporter();
  _TIBeginMockingAnalyticsService();
  _TIBeginMockingCryptographer();
  _TIBeginMockingUserModelDataStore();
  v15 = MEMORY[0x277D6FEE0];
  v16 = objc_alloc_init(MockTITrialManager);
  [v15 setSharedManager:v16];

  if ((a6 & 1) == 0)
  {
    _TIBeginMockingProactiveQuickTypeManager();
    _TIBeginMockingAppAutofillManager();
  }
}

void _TIBeginMockingSingletonsWithMockData(void *a1, void *a2, void *a3, void *a4, int a5, char a6)
{
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = _TIConvertTIMockContactCollection(a1);
  _TIBeginMockingSingletonsWithData(v14, v13, v12, v11, a5, a6);
}

uint64_t _TIEndMockingSingletonsWithData(char a1)
{
  TIDispatchWaitForAllBlocks();
  _TIEndMockingUserModelDataStore();
  _TIEndMockingCryptographer();
  _TIEndMockingAnalyticsService();
  _TIEndMockingAggdReporter();
  _TIEndMockingAssetManager();
  _TIEndMockingLanguageLikelihoodModel();
  _TIEndMockingUserDictionaryServer();
  _TIEndMockingTransientLexiconManager();
  _TIEndMockingKeyboardActivityController();
  [MEMORY[0x277D6FEE0] setSharedManager:0];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [MEMORY[0x277D6FEA0] disableForTesting:0];
  }

  if ((a1 & 1) == 0)
  {
    _TIEndMockingProactiveQuickTypeManager();

    return _TIEndMockingAppAutofillManager();
  }

  return result;
}

void sub_26D4D9928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6070(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26D4D9BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26D4DAAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26D4DC420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26D4DD8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26D4DDD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26D4DE680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26D4E0914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_26D4E0D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 208), 8);
  _Unwind_Resume(a1);
}

void *actDslensure_buffer_stack()
{
  result = yy_buffer_stack;
  if (!yy_buffer_stack)
  {
    result = malloc_type_malloc(8uLL, 0x9D2437DFuLL);
    yy_buffer_stack = result;
    if (result)
    {
      *result = 0;
      v2 = 1;
      goto LABEL_7;
    }

LABEL_9:
    yy_fatal_error("out of dynamic memory in yyensure_buffer_stack()");
  }

  if (yy_buffer_stack_max != 1)
  {
    return result;
  }

  result = malloc_type_realloc(yy_buffer_stack, 0x48uLL, 0xDBF5D2BBuLL);
  yy_buffer_stack = result;
  if (!result)
  {
    goto LABEL_9;
  }

  v1 = &result[yy_buffer_stack_max];
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v2 = 9;
LABEL_7:
  yy_buffer_stack_max = v2;
  return result;
}

uint64_t actDsl_create_buffer(FILE *a1)
{
  v2 = malloc_type_malloc(0x48uLL, 0x9D2437DFuLL);
  if (!v2 || (v3 = v2, v2[6] = 0x4000, v4 = malloc_type_malloc(0x4002uLL, 0x9D2437DFuLL), (*(v3 + 8) = v4) == 0))
  {
    yy_fatal_error("out of dynamic memory in yy_create_buffer()");
  }

  *(v3 + 40) = 1;
  actDsl_init_buffer(v3, a1);
  return v3;
}

_DWORD *yy_push_state(int a1)
{
  v2 = yy_start_stack_ptr;
  v3 = yy_start_stack_depth;
  result = yy_start_stack;
  if (yy_start_stack_ptr >= yy_start_stack_depth)
  {
    v5 = yy_start_stack_depth + 25;
    yy_start_stack_depth += 25;
    if (yy_start_stack)
    {
      result = malloc_type_realloc(yy_start_stack, 4 * (v3 + 25), 0xDBF5D2BBuLL);
    }

    else
    {
      result = malloc_type_malloc(4 * v5, 0x9D2437DFuLL);
    }

    yy_start_stack = result;
    if (!result)
    {
      yy_fatal_error("out of memory expanding start-condition stack");
    }

    v2 = yy_start_stack_ptr;
  }

  yy_start_stack_ptr = v2 + 1;
  result[v2] = (yy_start - 1) / 2;
  yy_start = (2 * a1) | 1;
  return result;
}

void yy_pop_state()
{
  v0 = yy_start_stack_ptr;
  v1 = --yy_start_stack_ptr;
  if (v0 <= 0)
  {
    yy_fatal_error("start-condition stack underflow");
  }

  yy_start = (2 * *(yy_start_stack + 4 * v1)) | 1;
}

uint64_t yy_get_previous_state()
{
  result = (*(*yy_buffer_stack + 48) + yy_start);
  v1 = actDsltext;
  if (actDsltext < yy_c_buf_p)
  {
    do
    {
      if (*v1)
      {
        v2 = yy_ec[*v1];
      }

      else
      {
        v2 = 1u;
      }

      if (yy_accept[result])
      {
        yy_last_accepting_state = result;
        yy_last_accepting_cpos = v1;
      }

      v3 = result;
      v4 = yy_base[result] + v2;
      if (result != yy_chk[v4])
      {
        do
        {
          v3 = yy_def[v3];
          if (v3 >= 82)
          {
            v2 = *(&yy_meta + v2);
          }

          v4 = yy_base[v3] + v2;
        }

        while (yy_chk[v4] != v3);
      }

      result = yy_nxt[v4];
      ++v1;
    }

    while (v1 != yy_c_buf_p);
  }

  return result;
}

int *actDsl_init_buffer(uint64_t a1, FILE *a2)
{
  v4 = *__error();
  *(a1 + 32) = 0;
  **(a1 + 8) = 0;
  *(*(a1 + 8) + 1) = 0;
  *(a1 + 16) = *(a1 + 8);
  *(a1 + 48) = 1;
  *(a1 + 64) = 0;
  v5 = yy_buffer_stack;
  if (!yy_buffer_stack)
  {
    if (a1)
    {
      v6 = 0;
      *a1 = a2;
      *(a1 + 60) = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (*yy_buffer_stack == a1)
  {
LABEL_6:
    v7 = *yy_buffer_stack;
    yy_n_chars = *(*yy_buffer_stack + 32);
    yy_c_buf_p = v7[2];
    actDsltext = yy_c_buf_p;
    actDslin = *v7;
    yy_hold_char = *yy_c_buf_p;
  }

  *a1 = a2;
  *(a1 + 60) = 1;
  v6 = *v5;
LABEL_8:
  if (v6 != a1)
  {
    *(a1 + 52) = 1;
  }

  if (a2)
  {
    v8 = fileno(a2);
    v9 = isatty(v8) > 0;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 44) = v9;
  result = __error();
  *result = v4;
  return result;
}

void actDslparse(void *a1)
{
  v159 = *MEMORY[0x277D85DE8];
  v1 = &unk_280502000;
  if (actDsldebug)
  {
    fwrite("Starting parse\n", 0xFuLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  v149 = 0;
  v145 = 0;
  v2 = 0;
  actDslnerrs = 0;
  actDslchar = -2;
  __src = v156;
  v3 = 200;
  v142 = v158;
  v137 = 128;
  v4 = v157;
  v5 = v157;
  v6 = v156;
  while (1)
  {
    *v5 = v2;
    v155 = v2;
    if (&v4[v3 - 1] <= v5)
    {
      if (v3 >> 4 > 0x270 || (2 * v3 >= 0x2710 ? (v8 = 10000) : (v8 = 2 * v3), (v9 = malloc_type_malloc(10 * v8 + 7, 0x1000040BDFB0063uLL)) == 0))
      {
LABEL_329:
        handleErrorWithLineNumber(a1, "memory exhausted", actDsllineno);
        goto LABEL_315;
      }

      v7 = v9;
      v10 = v8;
      v11 = ((v5 - v4) >> 1) + 1;
      memcpy(v9, v4, 2 * v11);
      v154 = v10;
      v12 = v7 + ((2 * v10 + 7) & 0x7FFFFFFFFFFFFFF8);
      memcpy(v12, __src, 8 * v11);
      if (v4 != v157)
      {
        free(v4);
      }

      if (v1[734])
      {
        fprintf(*MEMORY[0x277D85DF8], "Stack size increased to %lu\n", v10);
      }

      v5 = &v7[v11 - 1];
      v6 = &v12[8 * v11 - 8];
      __src = v12;
      LODWORD(v2) = v155;
      if (v154 <= v11)
      {
        v4 = v7;
        goto LABEL_315;
      }
    }

    else
    {
      v154 = v3;
      v7 = v4;
    }

    v4 = v7;
    if (v1[734])
    {
      fprintf(*MEMORY[0x277D85DF8], "Entering state %d\n", v2);
      LODWORD(v2) = v155;
    }

    if ((0x2FF8FA79F0uLL >> v2))
    {
      goto LABEL_228;
    }

    v143 = yypact[v2];
    v13 = actDslchar;
    if (actDslchar == -2)
    {
      if (v1[734])
      {
        fwrite("Reading a token: ", 0x11uLL, 1uLL, *MEMORY[0x277D85DF8]);
      }

      if ((yy_init & 1) == 0)
      {
        yy_init = 1;
        if (!yy_start)
        {
          yy_start = 1;
        }

        if (!actDslin)
        {
          actDslin = *MEMORY[0x277D85E00];
        }

        if (!actDslout)
        {
          actDslout = *MEMORY[0x277D85E08];
        }

        if (!yy_buffer_stack || (buffer = *yy_buffer_stack) == 0)
        {
          actDslensure_buffer_stack();
          buffer = actDsl_create_buffer(actDslin);
          *yy_buffer_stack = buffer;
        }

        yy_n_chars = buffer[4];
        yy_c_buf_p = buffer[2];
        actDsltext = yy_c_buf_p;
        actDslin = *buffer;
        yy_hold_char = *yy_c_buf_p;
      }

      v151 = v7;
LABEL_34:
      v15 = yy_c_buf_p;
      *yy_c_buf_p = yy_hold_char;
      LODWORD(v16) = *(*yy_buffer_stack + 48) + yy_start;
      v141 = v15;
      do
      {
LABEL_35:
        v17 = yy_ec[*v15];
        if (yy_accept[v16])
        {
          yy_last_accepting_state = v16;
          yy_last_accepting_cpos = v15;
        }

        v18 = v16;
        v19 = yy_base[v16] + v17;
        if (v16 != yy_chk[v19])
        {
          do
          {
            v18 = yy_def[v18];
            if (v18 >= 82)
            {
              v17 = *(&yy_meta + v17);
            }

            v19 = yy_base[v18] + v17;
          }

          while (yy_chk[v19] != v18);
        }

        v16 = yy_nxt[v19];
        ++v15;
      }

      while (yy_base[v16] != 139);
LABEL_42:
      v20 = yy_accept[v16];
      if (!yy_accept[v16])
      {
        v15 = yy_last_accepting_cpos;
        v20 = yy_accept[yy_last_accepting_state];
      }

      v21 = v20;
      actDsltext = v141;
      actDslleng = &v15[-v141];
      yy_hold_char = *v15;
      *v15 = 0;
      yy_c_buf_p = v15;
      if (v20 != 29 && ((0x1EFEFF9DuLL >> v20) & 1) == 0)
      {
        v22 = actDslleng;
        if (actDslleng)
        {
          v23 = actDsllineno;
          v24 = actDsltext;
          do
          {
            v25 = *v24++;
            if (v25 == 10)
            {
              actDsllineno = ++v23;
            }

            --v22;
          }

          while (v22);
        }
      }

      while (1)
      {
        switch(v21)
        {
          case 0:
            *v15 = yy_hold_char;
            v15 = yy_last_accepting_cpos;
            LODWORD(v16) = yy_last_accepting_state;
            goto LABEL_42;
          case 1:
          case 7:
          case 20:
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            goto LABEL_34;
          case 2:
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            yy_push_state(1);
            v13 = 0x106u;
            goto LABEL_206;
          case 3:
            v77 = actDsltext;
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            if (!strcasecmp(v77, "set"))
            {
              v13 = 0x107u;
            }

            else if (!strcasecmp(v77, "yes"))
            {
              v13 = 0x104u;
            }

            else if (!strcasecmp(v77, "no"))
            {
              v13 = 0x105u;
            }

            else
            {
              actDsllval = strdup(v77);
              v13 = 272;
            }

            goto LABEL_206;
          case 4:
            v74 = actDsltext;
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            LODWORD(actDsllval) = atoi(v74);
            v13 = 0x10Au;
            goto LABEL_206;
          case 5:
          case 6:
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            yy_pop_state();
            v13 = 0x108u;
            goto LABEL_206;
          case 8:
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            v59 = 4;
            goto LABEL_155;
          case 9:
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            yy_pop_state();
            actDsllval = strndup(stringBuf, stringLen);
            stringLen = 0;
            v13 = 0x10Du;
            goto LABEL_206;
          case 10:
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            v59 = 3;
            goto LABEL_155;
          case 11:
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            yy_pop_state();
            actDsllval = strndup(stringBuf, stringLen);
            stringLen = 0;
            v13 = 0x10Eu;
            goto LABEL_206;
          case 12:
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            v59 = 5;
            goto LABEL_155;
          case 13:
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            yy_pop_state();
            actDsllval = strndup(stringBuf, stringLen);
            stringLen = 0;
            v13 = 0x10Fu;
            goto LABEL_206;
          case 14:
          case 15:
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            yy_pop_state();
            actDsllval = strndup(stringBuf, stringLen);
            stringLen = 0;
            v13 = 0x10Cu;
            goto LABEL_206;
          case 16:
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            v60 = (yy_start - 1) / 2 - 2;
            if (v60 <= 5)
            {
              handleErrorWithLineNumber(a1, off_279DA1120[v60], (actDsllineno - 1));
            }

            yy_pop_state();
            stringLen = 0;
            goto LABEL_34;
          case 17:
            v61 = actDslleng;
            v62 = actDsltext;
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            if (*v62 != 92)
            {
              goto LABEL_157;
            }

            v63 = v62[1];
            if (v63 == 116)
            {
              if (v62[2])
              {
                goto LABEL_157;
              }

              v64 = stringLen++;
              v65 = 9;
LABEL_159:
              stringBuf[v64] = v65;
            }

            else
            {
              if (v63 == 110 && !v62[2])
              {
                v64 = stringLen++;
                v65 = 10;
                goto LABEL_159;
              }

LABEL_157:
              v71 = v1;
              v72 = stringLen;
              memcpy(&stringBuf[stringLen], v62 + 1, v61 - 1);
              v73 = v61 + v72;
              v1 = v71;
              stringLen = v73 - 1;
            }

            goto LABEL_34;
          case 18:
            v68 = actDslleng;
            v69 = actDsltext;
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            v70 = stringLen;
            memcpy(&stringBuf[stringLen], v69, v68);
            stringLen = v70 + v68;
            v1 = &unk_280502000;
            goto LABEL_34;
          case 19:
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            yy_push_state(2);
            v13 = 0x102u;
            goto LABEL_206;
          case 21:
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            v13 = 0x109u;
            goto LABEL_206;
          case 22:
            v75 = actDsltext;
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            actDsllval = strdup(v75);
            v13 = 0x110u;
            goto LABEL_206;
          case 23:
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            yy_pop_state();
            v13 = 0x103u;
            goto LABEL_206;
          case 24:
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            v13 = 264;
            goto LABEL_206;
          case 25:
            v76 = actDsltext;
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            actDsllval = strdup(v76);
            v13 = 0x10Bu;
            goto LABEL_206;
          case 26:
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            v59 = 7;
            goto LABEL_155;
          case 27:
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            v59 = 6;
LABEL_155:
            yy_push_state(v59);
            goto LABEL_34;
          case 28:
            v66 = actDslleng;
            v67 = actDsltext;
            if (actDslleng)
            {
              *(*yy_buffer_stack + 48) = *(actDsltext + actDslleng - 1) == 10;
            }

            fwrite(v67, v66, 1uLL, actDslout);
            goto LABEL_34;
          case 29:
            v139 = actDsltext;
            *v15 = yy_hold_char;
            v26 = yy_buffer_stack;
            v27 = *yy_buffer_stack;
            if (*(*yy_buffer_stack + 64))
            {
              v28 = yy_n_chars;
            }

            else
            {
              v28 = *(v27 + 32);
              yy_n_chars = v28;
              *v27 = actDslin;
              v27 = *v26;
              *(*v26 + 64) = 1;
            }

            LODWORD(v29) = yy_c_buf_p;
            v30 = *(v27 + 8);
            if (yy_c_buf_p <= &v30[v28])
            {
              v141 = actDsltext;
              v15 = (actDsltext + ~v139 + v15);
              yy_c_buf_p = v15;
              LODWORD(v16) = yy_get_previous_state();
              if (yy_accept[v16])
              {
                yy_last_accepting_state = v16;
                yy_last_accepting_cpos = v15;
              }

              v55 = v16;
              v56 = yy_base[v16] + 1;
              v4 = v151;
              if (v16 != yy_chk[v56])
              {
                do
                {
                  v57 = yy_def[v55];
                  v55 = v57;
                  v56 = yy_base[v57] + 1;
                }

                while (v57 != yy_chk[v56]);
              }

              if (!v56)
              {
                goto LABEL_42;
              }

              v58 = yy_nxt[v56];
              if (v58 == 81)
              {
                goto LABEL_42;
              }

              LODWORD(v16) = v58;
              yy_c_buf_p = ++v15;
              goto LABEL_35;
            }

            if (yy_c_buf_p > &v30[v28 + 1])
            {
              yy_fatal_error("fatal flex scanner internal error--end of buffer missed");
            }

            v31 = actDsltext;
            if (!*(v27 + 60))
            {
              if (yy_c_buf_p - actDsltext != 1)
              {
                goto LABEL_110;
              }

              goto LABEL_106;
            }

            v32 = ~actDsltext + yy_c_buf_p;
            if (v32 >= 1)
            {
              v33 = ~actDsltext + yy_c_buf_p;
              do
              {
                v34 = *v31++;
                *v30++ = v34;
                --v33;
              }

              while (v33);
              v27 = *v26;
            }

            v150 = v32;
            if (*(v27 + 64) == 2)
            {
              yy_n_chars = 0;
LABEL_64:
              *(v27 + 32) = 0;
              goto LABEL_95;
            }

            v35 = ~v32;
            v36 = *(v27 + 24);
            v37 = v36 + ~v32;
            v135 = v32;
            if (!v37)
            {
              do
              {
                if (!*(v27 + 40))
                {
                  *(v27 + 8) = 0;
LABEL_332:
                  yy_fatal_error("fatal error - scanner input buffer overflow");
                }

                v38 = *(v27 + 8);
                v39 = 2 * v36;
                *(v27 + 24) = v39;
                v40 = malloc_type_realloc(v38, v39 + 2, 0xDBF5D2BBuLL);
                *(v27 + 8) = v40;
                if (!v40)
                {
                  goto LABEL_332;
                }

                v29 = v40 + v29 - v38;
                yy_c_buf_p = v29;
                v27 = *yy_buffer_stack;
                v36 = *(*yy_buffer_stack + 24);
                v37 = v36 + v35;
              }

              while (!(v36 + v35));
            }

            if (v37 >= 0x2000)
            {
              v41 = 0x2000;
            }

            else
            {
              v41 = v37;
            }

            v147 = v41;
            v1 = &unk_280502000;
            if (!*(v27 + 44))
            {
              *__error() = 0;
              while (1)
              {
                v46 = fread((*(*yy_buffer_stack + 8) + v150), 1uLL, v147, actDslin);
                v42 = v46;
                yy_n_chars = v46;
                if (v46 << 32)
                {
                  goto LABEL_93;
                }

                if (!ferror(actDslin))
                {
                  break;
                }

                if (*__error() != 4)
                {
                  goto LABEL_333;
                }

                *__error() = 0;
                clearerr(actDslin);
              }

              v26 = yy_buffer_stack;
              v27 = *yy_buffer_stack;
              v32 = v135;
              goto LABEL_64;
            }

            v42 = 0;
            do
            {
              v43 = getc(actDslin);
              v44 = v43 == -1 || v43 == 10;
              if (v44)
              {
                goto LABEL_82;
              }

              *(*(*yy_buffer_stack + 8) + v150 + v42++) = v43;
            }

            while (v147 != v42);
            v42 = v147;
LABEL_82:
            if (v43 == -1)
            {
              v47 = ferror(actDslin);
              v45 = &unk_280502000;
              if (v47)
              {
LABEL_333:
                yy_fatal_error("input in flex scanner failed");
              }
            }

            else
            {
              if (v43 == 10)
              {
                *(*(*yy_buffer_stack + 8) + v150 + v42++) = 10;
              }

              v45 = &unk_280502000;
            }

            v45[363] = v42;
LABEL_93:
            v26 = yy_buffer_stack;
            v27 = *yy_buffer_stack;
            *(*yy_buffer_stack + 32) = v42;
            v32 = v135;
            if (v42)
            {
              v48 = 0;
              goto LABEL_101;
            }

LABEL_95:
            if (v32)
            {
              v42 = 0;
              v48 = 2;
              *(v27 + 64) = 2;
            }

            else
            {
              v49 = actDslin;
              if (!yy_buffer_stack || (v50 = *yy_buffer_stack) == 0)
              {
                actDslensure_buffer_stack();
                v50 = actDsl_create_buffer(actDslin);
                *yy_buffer_stack = v50;
              }

              actDsl_init_buffer(v50, v49);
              v26 = yy_buffer_stack;
              v27 = *yy_buffer_stack;
              v42 = *(*yy_buffer_stack + 32);
              yy_n_chars = v42;
              yy_c_buf_p = *(v27 + 16);
              actDsltext = yy_c_buf_p;
              actDslin = *v27;
              yy_hold_char = *yy_c_buf_p;
              v48 = 1;
              v32 = 0;
            }

LABEL_101:
            v51 = v42 + v32;
            if (v51 <= *(v27 + 24))
            {
              v54 = *(v27 + 8);
            }

            else
            {
              v52 = v51 + (v42 >> 1);
              v53 = malloc_type_realloc(*(v27 + 8), v52, 0xDBF5D2BBuLL);
              v26 = yy_buffer_stack;
              *(*yy_buffer_stack + 8) = v53;
              v54 = *(*v26 + 8);
              if (!v54)
              {
                yy_fatal_error("out of dynamic memory in yy_get_next_buffer()");
              }

              *(*v26 + 24) = v52 - 2;
              v51 = yy_n_chars + v150;
            }

            yy_n_chars = v51;
            *(v54 + v51) = 0;
            *(*(*v26 + 8) + v51 + 1) = 0;
            v31 = *(*v26 + 8);
            actDsltext = v31;
            if (v48 != 1)
            {
              if (!v48)
              {
                v15 = &v31[~v139 + v15];
                yy_c_buf_p = v15;
                LODWORD(v16) = yy_get_previous_state();
                v141 = v31;
                v4 = v151;
                goto LABEL_35;
              }

              v30 = *(*yy_buffer_stack + 8);
              v28 = yy_n_chars;
LABEL_110:
              v15 = &v30[v28];
              yy_c_buf_p = &v30[v28];
              LODWORD(v16) = yy_get_previous_state();
              v141 = v31;
              v4 = v151;
              goto LABEL_42;
            }

LABEL_106:
            yy_c_buf_p = v31;
            v21 = (yy_start - 1) / 2 + 30;
            v4 = v151;
            break;
          case 30:
          case 31:
          case 32:
          case 33:
          case 34:
          case 35:
          case 36:
          case 37:
            v13 = 0;
LABEL_206:
            actDslchar = v13;
            goto LABEL_207;
          default:
            yy_fatal_error("fatal flex scanner internal error--no action found");
        }
      }
    }

LABEL_207:
    if (v13 <= 0)
    {
      actDslchar = 0;
      if (v1[734])
      {
        fwrite("Now at end of input.\n", 0x15uLL, 1uLL, *MEMORY[0x277D85DF8]);
      }

      v79 = 0;
    }

    else
    {
      v78 = v1;
      v79 = yytranslate[v13];
      if (v78[734])
      {
        v80 = MEMORY[0x277D85DF8];
        fprintf(*MEMORY[0x277D85DF8], "%s ", "Next token is");
        v81 = *v80;
        fprintf(*v80, "token %s (", yytname[v79]);
        fputc(41, v81);
        fputc(10, *v80);
      }
    }

    LODWORD(v2) = v155;
    v82 = v79 + v143;
    v149 = v79;
    if (v82 > 0x27 || v79 != yycheck[v82])
    {
      v1 = &unk_280502000;
LABEL_228:
      if (((0x100705060FuLL >> v2) & 1) == 0)
      {
        v144 = v5;
        v152 = v4;
        v86 = yydefact[v2];
        goto LABEL_230;
      }

      goto LABEL_246;
    }

    v83 = yytable[v82];
    v1 = &unk_280502000;
    if (((0x7400000001uLL >> v82) & 1) == 0)
    {
      break;
    }

    if (((0x7400000000uLL >> v82) & 1) == 0)
    {
      v144 = v5;
      v152 = v4;
      v86 = -v83;
LABEL_230:
      v87 = v86;
      v155 = yyr2[v86];
      v140 = v6[1 - v155];
      v148 = v140;
      if (v1[734])
      {
        fprintf(*MEMORY[0x277D85DF8], "Reducing stack by rule %d (line %lu):\n", v86 - 1, yyrline[v86]);
        v88 = v87;
        if (v87)
        {
          if (v155 <= 1)
          {
            v89 = 1;
          }

          else
          {
            v89 = v155;
          }

          v90 = 1;
          v91 = &yyrhs;
          v92 = MEMORY[0x277D85DF8];
          do
          {
            fprintf(*v92, "   $%d = ", v90);
            v93 = *v92;
            if (v91[yyprhs[v87]] < 18)
            {
              fprintf(v93, "token %s (");
            }

            else
            {
              fprintf(v93, "nterm %s (");
            }

            fputc(41, v93);
            fputc(10, *v92);
            ++v91;
            ++v90;
            --v89;
          }

          while (v89);
          goto LABEL_240;
        }

        v1 = &unk_280502000;
        v94 = v144;
      }

      else
      {
LABEL_240:
        v94 = v144;
        v88 = v87;
        v1 = &unk_280502000;
        switch(v87)
        {
          case 5:
            v116 = *v6;
            v117 = MEMORY[0x277CCACA8];
            v114 = a1;
            v115 = [v117 stringWithUTF8String:v116];
            [v114 handleTyping:v115];
            goto LABEL_297;
          case 6:
            v118 = *v6;
            v119 = MEMORY[0x277CCACA8];
            v114 = a1;
            v115 = [v119 stringWithUTF8String:v118];
            [v114 handleCorrectionMatch:v115 lineNumber:actDsllineno];
            goto LABEL_297;
          case 7:
            v112 = *v6;
            v113 = MEMORY[0x277CCACA8];
            v114 = a1;
            v115 = [v113 stringWithUTF8String:v112];
            [v114 handlePredictionMatch:v115 lineNumber:actDsllineno];
            goto LABEL_297;
          case 8:
            v126 = *v6;
            v127 = MEMORY[0x277CCACA8];
            v114 = a1;
            v115 = [v127 stringWithUTF8String:v126];
            [v114 handleDocumentMatch:v115 lineNumber:actDsllineno];
            goto LABEL_297;
          case 11:
            [a1 handleNewLine];
            break;
          case 12:
            yy_start = 1;
            stringLen = 0;
            break;
          case 16:
            v120 = *(v6 - 1);
            v121 = *v6;
            v122 = MEMORY[0x277CCACA8];
            v114 = a1;
            v115 = [v122 stringWithUTF8String:v120];
            v44 = v121 == 0;
            v1 = &unk_280502000;
            v123 = !v44;
            [v114 handleBoolConfig:v115 withValue:v123 lineNumber:actDsllineno];
            goto LABEL_297;
          case 17:
            v136 = *(v6 - 1);
            v124 = *v6;
            v125 = MEMORY[0x277CCACA8];
            v114 = a1;
            v115 = [v125 stringWithUTF8String:v136];
            [v114 handleIntConfig:v115 withValue:v124 lineNumber:actDsllineno];
LABEL_297:

            break;
          case 18:
          case 19:
            handleStringConfig(a1, *(v6 - 1), *v6);
            break;
          case 23:
          case 24:
            v95 = *(v6 - 1);
            v96 = *v6;
            v97 = a1;
            goto LABEL_285;
          case 25:
            v95 = *v6;
            v97 = a1;
            v96 = 0;
LABEL_285:
            handleBracketCommand(v97, v95, v96);
            break;
          case 26:
            v148 = 1;
            break;
          case 27:
            v148 = 0;
            break;
          default:
            break;
        }
      }

      if (v1[734])
      {
        v128 = MEMORY[0x277D85DF8];
        fprintf(*MEMORY[0x277D85DF8], "%s ", "-> $$ =");
        v129 = *v128;
        v130 = yyr1[v88];
        if (v88)
        {
          fprintf(v129, "nterm %s (");
        }

        else
        {
          fprintf(v129, "token %s (");
        }

        fputc(41, v129);
        fputc(10, *v128);
        v131 = &v6[-v155];
        v5 = &v94[-2 * v155];
        v4 = v152;
        if (v1[734])
        {
          yy_stack_print(v152, v5);
        }
      }

      else
      {
        v131 = &v6[-v155];
        v130 = yyr1[v88];
        v5 = &v94[-2 * v155];
        v4 = v152;
      }

      v131[1] = v148 | v140 & 0xFFFFFFFF00000000;
      v6 = v131 + 1;
      v132 = *v5 + yypgoto[v130 - 18];
      if (v132 <= 0x27 && *v5 == yycheck[v132])
      {
        v83 = yytable[v132];
      }

      else
      {
        v83 = yydefgoto[v130 - 18];
      }

      goto LABEL_309;
    }

LABEL_246:
    if (v145 == 3)
    {
      if (actDslchar <= 0)
      {
        if (!actDslchar)
        {
          goto LABEL_320;
        }
      }

      else
      {
        yydestruct("Error: discarding", v149, &actDsllval);
        LODWORD(v2) = v155;
        actDslchar = -2;
      }
    }

    else if (!v145)
    {
      ++actDslnerrs;
      v98 = yysyntax_error(0, v2, actDslchar);
      v99 = v98;
      v100 = v137;
      if (v137 < v98)
      {
        if (v98 < 0)
        {
          v101 = -1;
        }

        else
        {
          v101 = 2 * v98;
        }

        if (v142 != v158)
        {
          free(v142);
        }

        v102 = malloc_type_malloc(v101, 0x100004077774924uLL);
        v103 = v158;
        if (v102)
        {
          v103 = v102;
        }

        v142 = v103;
        if (v102)
        {
          v100 = v101;
        }

        else
        {
          v100 = 128;
        }
      }

      v137 = v100;
      if (v99 - 1 >= v100)
      {
        handleErrorWithLineNumber(a1, "syntax error", actDsllineno);
        LODWORD(v2) = v155;
        if (v99)
        {
          goto LABEL_329;
        }
      }

      else
      {
        v104 = v155;
        yysyntax_error(v142, v155, actDslchar);
        handleErrorWithLineNumber(a1, v142, actDsllineno);
        LODWORD(v2) = v104;
      }
    }

    for (i = (v5 - 2); ; --i)
    {
      v5 = (i + 1);
      if ((0x2FF8FA79F0uLL >> v2) & 1) == 0 && ((0x100304060FuLL >> v2))
      {
        v106 = yypact[v2] + 1;
        if (!yypact[v2] || v106 == 11)
        {
          break;
        }
      }

      if (v5 == v4)
      {
        v5 = (i + 1);
        goto LABEL_315;
      }

      yydestruct("Error: popping", yystos[v2], v6);
      LODWORD(v2) = *i;
      if (v1[734])
      {
        v108 = *i;
        yy_stack_print(v4, i);
        LODWORD(v2) = v108;
      }

      --v6;
    }

    v83 = yytable[v106];
    v6[1] = actDsllval;
    ++v6;
    if (v1[734])
    {
      v153 = v4;
      v109 = MEMORY[0x277D85DF8];
      fprintf(*MEMORY[0x277D85DF8], "%s ", "Shifting");
      v110 = *v109;
      if ((0x1BE3ECC1FFuLL >> v83))
      {
        fprintf(v110, "token %s (");
      }

      else
      {
        fprintf(v110, "nterm %s (");
      }

      fputc(41, v110);
      v111 = *v109;
      v4 = v153;
      fputc(10, v111);
    }

    v145 = 3;
LABEL_309:
    v5 += 2;
    v2 = v83;
    v3 = v154;
  }

  if (v82 != 23)
  {
    v84 = v145 - 1;
    if (!v145)
    {
      v84 = 0;
    }

    v145 = v84;
    if (actDsldebug)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s ", "Shifting");
      v85 = *MEMORY[0x277D85DF8];
      if (v149 >= 0x12)
      {
        fprintf(v85, "nterm %s (");
      }

      else
      {
        fprintf(v85, "token %s (");
      }

      fputc(41, v85);
      fputc(10, *MEMORY[0x277D85DF8]);
    }

    if (actDslchar)
    {
      actDslchar = -2;
    }

    v6[1] = actDsllval;
    ++v6;
    goto LABEL_309;
  }

LABEL_315:
  if (actDslchar != -2 && actDslchar != 0)
  {
    yydestruct("Cleanup: discarding lookahead", v149, &actDsllval);
  }

LABEL_320:
  if (v1[734])
  {
    yy_stack_print(v4, v5);
  }

  for (; v5 != v4; --v6)
  {
    v134 = *v5;
    v5 -= 2;
    yydestruct("Cleanup: popping", yystos[v134], v6);
  }

  if (v4 != v157)
  {
    free(v4);
  }

  if (v142 != v158)
  {
    free(v142);
  }
}

void handleStringConfig(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a1;
  v8 = [v5 stringWithUTF8String:a2];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
  [v6 handleStringConfig:v8 withValue:v7 lineNumber:actDsllineno];
}

void handleBracketCommand(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a1;
  v8 = [v5 stringWithUTF8String:a2];
  if (a3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
  }

  else
  {
    v7 = 0;
  }

  [v6 handleCommand:v8 withValue:v7 lineNumber:actDsllineno];

  if (a3)
  {
  }
}

uint64_t yy_stack_print(__int16 *a1, unint64_t a2)
{
  v4 = MEMORY[0x277D85DF8];
  fwrite("Stack now", 9uLL, 1uLL, *MEMORY[0x277D85DF8]);
  while (a1 <= a2)
  {
    v5 = *a1++;
    fprintf(*v4, " %d", v5);
  }

  v6 = *v4;

  return fputc(10, v6);
}

uint64_t yysyntax_error(_BYTE *a1, int a2, unsigned int a3)
{
  v40 = *MEMORY[0x277D85DE8];
  if ((0x100705860FuLL >> a2))
  {
    v5 = a2;
    v6 = yypact[a2];
    if (a3 > 0x110)
    {
      v7 = 2;
    }

    else
    {
      v7 = yytranslate[a3];
    }

    v8 = yytname[v7];
    v9 = yytnamerr(0, v8);
    v39 = 0u;
    v38 = 0u;
    v37 = v8;
    strcpy(v36, "syntax error, unexpected %s");
    if ((0x2FFCFBF9F0uLL >> v5))
    {
      v10 = -v6;
    }

    else
    {
      v10 = 0;
    }

    if (40 - v6 >= 18)
    {
      v11 = 18;
    }

    else
    {
      v11 = 40 - v6;
    }

    if (v10 < v11)
    {
      v12 = 0;
      v13 = &v36[27];
      v14 = v10;
      v15 = v6;
      v16 = v11;
      v17 = v9;
      v18 = ", expecting %s";
      v19 = 1;
      v35 = v9;
      while (1)
      {
        if (v14 == 1 || v14 != yycheck[v14 + v15])
        {
          v21 = v17;
        }

        else
        {
          if (v19 == 5)
          {
            v36[27] = 0;
            v19 = 1;
            v21 = v35;
            goto LABEL_25;
          }

          v20 = yytname[v14];
          (&v37)[v19] = v20;
          v21 = yytnamerr(0, v20) + v17;
          --v13;
          do
          {
            v22 = *v18++;
            *++v13 = v22;
          }

          while (v22);
          ++v19;
          v12 |= v21 < v17;
          v18 = " or %s";
        }

        ++v14;
        v17 = v21;
        if (v14 == v16)
        {
          goto LABEL_25;
        }
      }
    }

    v12 = 0;
    v19 = 1;
    v21 = v9;
LABEL_25:
    v23 = 0;
    do
    {
      v24 = v23;
    }

    while (v36[v23++]);
    v3 = v24 + v21;
    v26 = __CFADD__(v24, v21);
    if (v12 | v26)
    {
      return -1;
    }

    if (!a1)
    {
      return v3;
    }

    v28 = 0;
    for (i = v36; ; i += v33)
    {
      v30 = *i;
      *a1 = v30;
      if (v30 != 37)
      {
        break;
      }

      if (i[1] != 115 || v28 >= v19)
      {
        goto LABEL_42;
      }

      v34 = v28 + 1;
      v32 = yytnamerr(a1, (&v37)[v28]);
      v33 = 2;
      v28 = v34;
LABEL_44:
      a1 += v32;
    }

    if (!v30)
    {
      return v3;
    }

LABEL_42:
    v32 = 1;
    v33 = 1;
    goto LABEL_44;
  }

  return 0;
}

void handleErrorWithLineNumber(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a1;
  v7 = [v5 stringWithUTF8String:a2];
  [v6 reportSyntaxErrors:v7 lineNumber:a3];
}

void yydestruct(const char *a1, int a2, void **a3)
{
  if (actDsldebug)
  {
    v5 = "Deleting";
    if (a1)
    {
      v5 = a1;
    }

    v6 = MEMORY[0x277D85DF8];
    fprintf(*MEMORY[0x277D85DF8], "%s ", v5);
    v7 = *v6;
    if (a2 >= 18)
    {
      fprintf(v7, "nterm %s (");
    }

    else
    {
      fprintf(v7, "token %s (");
    }

    fputc(41, v7);
    fputc(10, *v6);
  }

  if ((a2 - 12) <= 5)
  {
    v8 = *a3;

    free(v8);
  }
}

uint64_t yytnamerr(uint64_t a1, _BYTE *a2)
{
  if (*a2 != 34)
  {
LABEL_13:
    if (a1)
    {
      v9 = a1 - 1;
      do
      {
        v10 = *a2++;
        *++v9 = v10;
      }

      while (v10);
      return v9 - a1;
    }

    else
    {
      v11 = 0;
        ;
      }

      return v11 - 1;
    }
  }

  v2 = 0;
  v3 = a2;
  for (i = a2; ; v3 = i)
  {
    v6 = *++i;
    v5 = v6;
    if (v6 > 91)
    {
      if (v5 == 92)
      {
        v8 = v3[2];
        v7 = v3 + 2;
        if (v8 != 92)
        {
          goto LABEL_13;
        }

        i = v7;
      }

      goto LABEL_10;
    }

    if (v5 == 34)
    {
      break;
    }

    if (v5 == 39 || v5 == 44)
    {
      goto LABEL_13;
    }

LABEL_10:
    if (a1)
    {
      *(a1 + v2) = v5;
    }

    ++v2;
  }

  if (a1)
  {
    *(a1 + v2) = 0;
  }

  return v2;
}

void _GLOBAL__sub_I_TIUnitTestUtils_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_26D490000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TITestUserPersona_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_26D490000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_CPUtilities_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_26D490000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_CPParamTrainer_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_26D490000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_CPTestCaseEval_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_26D490000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TTKTestCaseConverter_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_26D490000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TILanguageResourcesUtil_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_26D490000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TICPEval_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_26D490000);

  objc_autoreleasePoolPop(v0);
}

void _GLOBAL__sub_I_TICPTrainer_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(KB::LikelihoodInfo::~LikelihoodInfo, &KB::k_invalid_likelihood_value, &dword_26D490000);

  objc_autoreleasePoolPop(v0);
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x28210FEB8](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

uint64_t language_modeling::v1::LinguisticContext::LinguisticContext()
{
  return MEMORY[0x282181B98]();
}

{
  return MEMORY[0x282181BA0]();
}

uint64_t KB::String::operator=()
{
  return MEMORY[0x2821D6B28]();
}

{
  return MEMORY[0x2821D6B30]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}