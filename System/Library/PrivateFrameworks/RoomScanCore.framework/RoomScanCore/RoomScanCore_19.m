void sub_26232FC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *__p, uint64_t a13, uint64_t a14, char a15)
{
  __p = &a15;
  sub_2621E1D40(&__p);

  _Unwind_Resume(a1);
}

uint64_t *sub_26232FCDC(uint64_t *result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v10 = a2 - 1;
    v11 = v9;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = v11;
          v12 = a2 - v11;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                v86 = *v11;
                v87 = v11[1];
                v80 = **a3;
                v88 = *(v80 + 4 * v87);
                v89 = *(v80 + (*v11 << 32 >> 30));
                v90 = *v10;
                v91 = *(v80 + (*v10 << 32 >> 30));
                if (v88 > v89)
                {
                  if (v91 <= v88)
                  {
                    *v11 = v87;
                    v11[1] = v86;
                    if (*(v80 + (*v10 << 32 >> 30)) <= v89)
                    {
                      return result;
                    }

                    v11[1] = *v10;
                  }

                  else
                  {
                    *v11 = v90;
                  }

                  goto LABEL_169;
                }

                if (v91 <= v88)
                {
                  return result;
                }

                v11[1] = v90;
                *v10 = v87;
                v85 = *v11;
                v81 = v11[1];
                v83 = *(v80 + 4 * v81);
LABEL_157:
                if (v83 > *(v80 + 4 * v85))
                {
                  *v11 = v81;
                  v11[1] = v85;
                }

                return result;
              case 4:
                v92 = **a3;

                return sub_2623307A4(v11, v11 + 1, v11 + 2, a2 - 1, v92);
              case 5:
                result = sub_2623307A4(v11, v11 + 1, v11 + 2, v11 + 3, **a3);
                v79 = v11[3];
                v80 = **a3;
                if (*(v80 + (*v10 << 32 >> 30)) <= *(v80 + 4 * v79))
                {
                  return result;
                }

                v11[3] = *v10;
                *v10 = v79;
                v82 = v11[2];
                v81 = v11[3];
                v83 = *(v80 + 4 * v81);
                if (v83 <= *(v80 + 4 * v82))
                {
                  return result;
                }

                v11[2] = v81;
                v11[3] = v82;
                v84 = v11[1];
                if (v83 <= *(v80 + 4 * v84))
                {
                  return result;
                }

                v11[1] = v81;
                v11[2] = v84;
                v85 = *v11;
                goto LABEL_157;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return result;
            }

            if (v12 == 2)
            {
              v86 = *v11;
              if (*(**a3 + (*v10 << 32 >> 30)) <= *(**a3 + (*v11 << 32 >> 30)))
              {
                return result;
              }

              *v11 = *v10;
LABEL_169:
              *v10 = v86;
              return result;
            }
          }

          if (v12 <= 23)
          {
            if (a5)
            {
              if (v11 != a2)
              {
                v93 = v11 + 1;
                if (v11 + 1 != a2)
                {
                  v94 = **a3;
                  v95 = 8;
                  v96 = v11;
                  do
                  {
                    v98 = *v96;
                    v97 = v96[1];
                    v96 = v93;
                    v99 = *(v94 + 4 * v97);
                    if (v99 > *(v94 + 4 * v98))
                    {
                      v100 = v95;
                      while (1)
                      {
                        *(v11 + v100) = v98;
                        v101 = v100 - 8;
                        if (v100 == 8)
                        {
                          break;
                        }

                        v98 = *(v11 + v100 - 16);
                        v100 -= 8;
                        if (v99 <= *(v94 + 4 * v98))
                        {
                          v102 = (v11 + v101);
                          goto LABEL_123;
                        }
                      }

                      v102 = v11;
LABEL_123:
                      *v102 = v97;
                    }

                    v93 = v96 + 1;
                    v95 += 8;
                  }

                  while (v96 + 1 != a2);
                }
              }
            }

            else if (v11 != a2)
            {
              v138 = v11 + 1;
              if (v11 + 1 != a2)
              {
                v139 = **a3;
                do
                {
                  v141 = *v9;
                  v140 = v9[1];
                  v9 = v138;
                  v142 = *(v139 + 4 * v140);
                  if (v142 > *(v139 + 4 * v141))
                  {
                    do
                    {
                      *v138 = v141;
                      v141 = *(v138 - 2);
                      --v138;
                    }

                    while (v142 > *(v139 + 4 * v141));
                    *v138 = v140;
                  }

                  v138 = v9 + 1;
                }

                while (v9 + 1 != a2);
              }
            }

            return result;
          }

          if (!a4)
          {
            if (v11 != a2)
            {
              v103 = (v12 - 2) >> 1;
              v104 = *a3;
              v105 = v103;
              do
              {
                v106 = v105;
                if (v103 >= v105)
                {
                  v107 = (2 * v105) | 1;
                  v108 = &v11[v107];
                  v109 = 2 * v105 + 2;
                  v110 = *v104;
                  if (v109 < v12)
                  {
                    v111 = vshrq_n_s64(vshlq_n_s64(*v108, 0x20uLL), 0x1EuLL);
                    if (*(v110 + v111.i64[0]) > *(v110 + v111.i64[1]))
                    {
                      v108 = (v108 + 8);
                      v107 = 2 * v106 + 2;
                    }
                  }

                  result = &v11[v106];
                  v112 = v108->i64[0];
                  v113 = *result;
                  v114 = *(v110 + (*result << 32 >> 30));
                  if (*(v110 + (v108->i64[0] << 32 >> 30)) <= v114)
                  {
                    do
                    {
                      v115 = v108;
                      *result = v112;
                      if (v103 < v107)
                      {
                        break;
                      }

                      v116 = 2 * v107;
                      v107 = (2 * v107) | 1;
                      v108 = &v11[v107];
                      v117 = v116 + 2;
                      if (v117 < v12)
                      {
                        v118 = vshrq_n_s64(vshlq_n_s64(*v108, 0x20uLL), 0x1EuLL);
                        if (*(v110 + v118.i64[0]) > *(v110 + v118.i64[1]))
                        {
                          v108 = (v108 + 8);
                          v107 = v117;
                        }
                      }

                      v112 = v108->i64[0];
                      result = v115;
                    }

                    while (*(v110 + (v108->i64[0] << 32 >> 30)) <= v114);
                    *v115 = v113;
                  }
                }

                v105 = v106 - 1;
              }

              while (v106);
              do
              {
                v119 = 0;
                v120 = *v11;
                v121 = *a3;
                v122 = v11;
                do
                {
                  v123 = v122;
                  v124 = &v122->i8[8 * v119];
                  v122 = (v124 + 8);
                  v125 = 2 * v119;
                  v119 = (2 * v119) | 1;
                  v126 = v125 + 2;
                  if (v126 < v12)
                  {
                    v127 = vshrq_n_s64(vshlq_n_s64(*v122, 0x20uLL), 0x1EuLL);
                    result = v127.i64[1];
                    if (*(*v121 + v127.i64[0]) > *(*v121 + v127.i64[1]))
                    {
                      v122 = (v124 + 16);
                      v119 = v126;
                    }
                  }

                  *v123 = v122->i64[0];
                }

                while (v119 <= ((v12 - 2) >> 1));
                if (v122 == --a2)
                {
                  v122->i64[0] = v120;
                }

                else
                {
                  v122->i64[0] = *a2;
                  *a2 = v120;
                  v128 = (v122 - v11 + 8) >> 3;
                  v129 = v128 < 2;
                  v130 = v128 - 2;
                  if (!v129)
                  {
                    v131 = v130 >> 1;
                    v132 = &v11[v131];
                    v133 = *v132;
                    v134 = v122->i64[0];
                    v135 = *v121;
                    v136 = *(v135 + (v122->i64[0] << 32 >> 30));
                    if (*(v135 + (*v132 << 32 >> 30)) > v136)
                    {
                      do
                      {
                        v137 = v132;
                        v122->i64[0] = v133;
                        if (!v131)
                        {
                          break;
                        }

                        v131 = (v131 - 1) >> 1;
                        v132 = &v11[v131];
                        v133 = *v132;
                        v122 = v137;
                      }

                      while (*(v135 + (*v132 << 32 >> 30)) > v136);
                      v137->i64[0] = v134;
                    }
                  }
                }

                v129 = v12-- <= 2;
              }

              while (!v129);
            }

            return result;
          }

          v13 = &v11[v12 >> 1];
          v14 = v13;
          v15 = **a3;
          v16 = *v10;
          v17 = *(v15 + (*v10 << 32 >> 30));
          if (v12 >= 0x81)
          {
            v18 = *v13;
            v19 = *v11;
            v20 = *(v15 + (*v13 << 32 >> 30));
            v21 = *(v15 + (*v11 << 32 >> 30));
            if (v20 <= v21)
            {
              if (v17 > v20)
              {
                *v13 = v16;
                *v10 = v18;
                v26 = *v11;
                if (*(v15 + (*v13 << 32 >> 30)) > *(v15 + (*v11 << 32 >> 30)))
                {
                  *v11 = *v13;
                  *v13 = v26;
                }
              }
            }

            else
            {
              if (v17 <= v20)
              {
                *v11 = v18;
                *v13 = v19;
                if (*(v15 + (*v10 << 32 >> 30)) <= v21)
                {
                  goto LABEL_28;
                }

                *v13 = *v10;
              }

              else
              {
                *v11 = v16;
              }

              *v10 = v19;
            }

LABEL_28:
            v28 = v13 - 1;
            v29 = *(v13 - 1);
            v30 = v11[1];
            v31 = *(v15 + 4 * v29);
            v32 = *(v15 + 4 * v30);
            v33 = *(a2 - 2);
            v34 = *(v15 + 4 * v33);
            if (v31 <= v32)
            {
              if (v34 > v31)
              {
                *v28 = v33;
                *(a2 - 2) = v29;
                v35 = v11[1];
                if (*(v15 + (*v28 << 32 >> 30)) > *(v15 + 4 * v35))
                {
                  v11[1] = *v28;
                  *v28 = v35;
                }
              }
            }

            else
            {
              if (v34 <= v31)
              {
                v11[1] = v29;
                *v28 = v30;
                v36 = *(a2 - 2);
                if (*(v15 + 4 * v36) <= v32)
                {
                  goto LABEL_40;
                }

                *v28 = v36;
              }

              else
              {
                v11[1] = v33;
              }

              *(a2 - 2) = v30;
            }

LABEL_40:
            v39 = v13[1];
            v37 = v13 + 1;
            v38 = v39;
            v40 = v11[2];
            v41 = *(v15 + 4 * v39);
            v42 = *(v15 + 4 * v40);
            v43 = *(a2 - 3);
            v44 = *(v15 + 4 * v43);
            if (v41 <= v42)
            {
              if (v44 > v41)
              {
                *v37 = v43;
                *(a2 - 3) = v38;
                v45 = v11[2];
                if (*(v15 + (*v37 << 32 >> 30)) > *(v15 + 4 * v45))
                {
                  v11[2] = *v37;
                  *v37 = v45;
                }
              }
            }

            else
            {
              if (v44 <= v41)
              {
                v11[2] = v38;
                *v37 = v40;
                v46 = *(a2 - 3);
                if (*(v15 + 4 * v46) <= v42)
                {
                  goto LABEL_49;
                }

                *v37 = v46;
              }

              else
              {
                v11[2] = v43;
              }

              *(a2 - 3) = v40;
            }

LABEL_49:
            v47 = *v14;
            v48 = *v28;
            v49 = *(v15 + (*v14 << 32 >> 30));
            v50 = *(v15 + (*v28 << 32 >> 30));
            v51 = *v37;
            v52 = *(v15 + (*v37 << 32 >> 30));
            if (v49 <= v50)
            {
              if (v52 <= v49)
              {
                goto LABEL_56;
              }

              *v14 = v51;
              *v37 = v47;
              v37 = v14;
              v47 = v48;
              if (v52 <= v50)
              {
                v47 = v51;
                goto LABEL_56;
              }
            }

            else if (v52 <= v49)
            {
              *v28 = v47;
              *v14 = v48;
              v28 = v14;
              v47 = v51;
              if (v52 <= v50)
              {
                v47 = v48;
LABEL_56:
                v53 = *v11;
                *v11 = v47;
                *v14 = v53;
                goto LABEL_57;
              }
            }

            *v28 = v51;
            *v37 = v48;
            goto LABEL_56;
          }

          v22 = *v11;
          v23 = *v14;
          v24 = *(v15 + (*v11 << 32 >> 30));
          v25 = *(v15 + (*v14 << 32 >> 30));
          if (v24 <= v25)
          {
            if (v17 > v24)
            {
              *v11 = v16;
              *v10 = v22;
              v27 = *v14;
              if (*(v15 + (*v11 << 32 >> 30)) > *(v15 + (*v14 << 32 >> 30)))
              {
                *v14 = *v11;
                *v11 = v27;
              }
            }
          }

          else
          {
            if (v17 <= v24)
            {
              *v14 = v22;
              *v11 = v23;
              if (*(v15 + (*v10 << 32 >> 30)) <= v25)
              {
                goto LABEL_57;
              }

              *v11 = *v10;
            }

            else
            {
              *v14 = v16;
            }

            *v10 = v23;
          }

LABEL_57:
          --a4;
          v54 = *v11;
          v55 = *v11 << 32 >> 30;
          if (a5)
          {
            break;
          }

          v56 = *(v15 + v55);
          if (*(v15 + (*(v11 - 1) << 32 >> 30)) > v56)
          {
            goto LABEL_60;
          }

          if (v56 <= *(v15 + (*v10 << 32 >> 30)))
          {
            v71 = v11 + 1;
            do
            {
              v11 = v71;
              if (v71 >= a2)
              {
                break;
              }

              ++v71;
            }

            while (v56 <= *(v15 + (*v11 << 32 >> 30)));
          }

          else
          {
            do
            {
              v70 = v11[1];
              ++v11;
            }

            while (v56 <= *(v15 + 4 * v70));
          }

          v72 = a2;
          if (v11 < a2)
          {
            v72 = a2;
            do
            {
              v73 = *--v72;
            }

            while (v56 > *(v15 + 4 * v73));
          }

          if (v11 < v72)
          {
            v74 = *v11;
            v75 = *v72;
            do
            {
              *v11 = v75;
              *v72 = v74;
              do
              {
                v76 = v11[1];
                ++v11;
                v74 = v76;
              }

              while (v56 <= *(v15 + 4 * v76));
              do
              {
                v77 = *--v72;
                v75 = v77;
              }

              while (v56 > *(v15 + 4 * v77));
            }

            while (v11 < v72);
          }

          v78 = v11 - 1;
          if (v11 - 1 != v9)
          {
            *v9 = *v78;
          }

          a5 = 0;
          *v78 = v54;
        }

        v56 = *(v15 + v55);
LABEL_60:
        v57 = v11;
        do
        {
          v58 = v57;
          v60 = v57[1];
          ++v57;
          v59 = v60;
        }

        while (*(v15 + 4 * v60) > v56);
        v61 = a2;
        if (v58 == v11)
        {
          v61 = a2;
          do
          {
            if (v57 >= v61)
            {
              break;
            }

            v63 = *--v61;
          }

          while (*(v15 + 4 * v63) <= v56);
        }

        else
        {
          do
          {
            v62 = *--v61;
          }

          while (*(v15 + 4 * v62) <= v56);
        }

        if (v57 < v61)
        {
          v64 = *v61;
          v65 = v57;
          v66 = v61;
          do
          {
            *v65 = v64;
            *v66 = v59;
            do
            {
              v58 = v65;
              v67 = v65[1];
              ++v65;
              v59 = v67;
            }

            while (*(v15 + 4 * v67) > v56);
            do
            {
              v68 = *--v66;
              v64 = v68;
            }

            while (*(v15 + 4 * v68) <= v56);
          }

          while (v65 < v66);
        }

        if (v58 != v11)
        {
          *v11 = *v58;
        }

        *v58 = v54;
        if (v57 >= v61)
        {
          break;
        }

LABEL_79:
        result = sub_26232FCDC(v9, v58, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v58 + 1;
      }

      v69 = sub_2623308D8(v11, v58, a3);
      v11 = v58 + 1;
      result = sub_2623308D8(v58 + 1, a2, a3);
      if (result)
      {
        break;
      }

      if (!v69)
      {
        goto LABEL_79;
      }
    }

    a2 = v58;
    if (!v69)
    {
      continue;
    }

    return result;
  }
}

uint64_t *sub_2623307A4(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a2 << 32 >> 30;
  v8 = *(a5 + v7);
  v9 = *result << 32 >> 30;
  v10 = *(a5 + v9);
  v11 = *a3;
  v12 = *(a5 + (*a3 << 32 >> 30));
  if (v8 <= v10)
  {
    if (v12 <= v8)
    {
      v9 = *a3 << 32 >> 30;
      v5 = *a3;
    }

    else
    {
      *a2 = v11;
      *a3 = v5;
      v13 = *result;
      v9 = v7;
      if (*(a5 + (*a2 << 32 >> 30)) > *(a5 + (*result << 32 >> 30)))
      {
        *result = *a2;
        *a2 = v13;
        v5 = *a3;
        v9 = *a3 << 32 >> 30;
      }
    }
  }

  else
  {
    if (v12 <= v8)
    {
      *result = v5;
      *a2 = v6;
      v5 = *a3;
      if (*(a5 + (*a3 << 32 >> 30)) <= v10)
      {
        v9 = *a3 << 32 >> 30;
        goto LABEL_12;
      }

      *a2 = v5;
    }

    else
    {
      *result = v11;
    }

    *a3 = v6;
    v5 = v6;
  }

LABEL_12:
  if (*(a5 + (*a4 << 32 >> 30)) > *(a5 + v9))
  {
    *a3 = *a4;
    *a4 = v5;
    v14 = *a2;
    if (*(a5 + (*a3 << 32 >> 30)) > *(a5 + (*a2 << 32 >> 30)))
    {
      *a2 = *a3;
      *a3 = v14;
      v15 = *result;
      if (*(a5 + (*a2 << 32 >> 30)) > *(a5 + (*result << 32 >> 30)))
      {
        *result = *a2;
        *a2 = v15;
      }
    }
  }

  return result;
}

BOOL sub_2623308D8(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v8 = *a1;
        v17 = a1[1];
        v11 = **a3;
        v18 = *(v11 + 4 * v17);
        v19 = *(v11 + (*a1 << 32 >> 30));
        v20 = *(a2 - 1);
        v21 = *(v11 + 4 * v20);
        if (v18 > v19)
        {
          if (v21 > v18)
          {
            *a1 = v20;
            goto LABEL_41;
          }

          *a1 = v17;
          a1[1] = v8;
          v41 = *(a2 - 1);
          if (*(v11 + 4 * v41) > v19)
          {
            a1[1] = v41;
            goto LABEL_41;
          }

          return 1;
        }

        if (v21 <= v18)
        {
          return 1;
        }

        a1[1] = v20;
        *(a2 - 1) = v17;
        v16 = *a1;
        v12 = a1[1];
        v14 = *(v11 + 4 * v12);
        break;
      case 4:
        sub_2623307A4(a1, a1 + 1, a1 + 2, a2 - 1, **a3);
        return 1;
      case 5:
        sub_2623307A4(a1, a1 + 1, a1 + 2, a1 + 3, **a3);
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = **a3;
        if (*(v11 + 4 * v9) <= *(v11 + 4 * v10))
        {
          return 1;
        }

        a1[3] = v9;
        *(a2 - 1) = v10;
        v13 = a1[2];
        v12 = a1[3];
        v14 = *(v11 + 4 * v12);
        if (v14 <= *(v11 + 4 * v13))
        {
          return 1;
        }

        a1[2] = v12;
        a1[3] = v13;
        v15 = a1[1];
        if (v14 <= *(v11 + 4 * v15))
        {
          return 1;
        }

        a1[1] = v12;
        a1[2] = v15;
        v16 = *a1;
        break;
      default:
        goto LABEL_16;
    }

    if (v14 > *(v11 + 4 * v16))
    {
      *a1 = v12;
      a1[1] = v16;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *a1;
    if (*(**a3 + 4 * v7) > *(**a3 + (*a1 << 32 >> 30)))
    {
      *a1 = v7;
LABEL_41:
      *(a2 - 1) = v8;
      return 1;
    }

    return 1;
  }

LABEL_16:
  v23 = a1 + 2;
  v22 = a1[2];
  v24 = a1[1];
  v25 = *a1;
  v26 = **a3;
  v27 = *(v26 + 4 * v24);
  v28 = *(v26 + (*a1 << 32 >> 30));
  v29 = *(v26 + 4 * v22);
  if (v27 > v28)
  {
    v30 = a1;
    v31 = a1 + 2;
    if (v29 <= v27)
    {
      *a1 = v24;
      a1[1] = v25;
      v30 = a1 + 1;
      v31 = a1 + 2;
      if (v29 <= v28)
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    *v30 = v22;
    *v31 = v25;
    goto LABEL_28;
  }

  if (v29 > v27)
  {
    a1[1] = v22;
    *v23 = v24;
    v30 = a1;
    v31 = a1 + 1;
    if (v29 > v28)
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  v32 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v33 = 0;
  for (i = 24; ; i += 8)
  {
    v35 = *v32;
    v36 = *v23;
    v37 = *(v26 + (*v32 << 32 >> 30));
    if (v37 > *(v26 + 4 * v36))
    {
      v38 = i;
      while (1)
      {
        *(a1 + v38) = v36;
        v39 = v38 - 8;
        if (v38 == 8)
        {
          break;
        }

        v36 = *(a1 + v38 - 16);
        v38 -= 8;
        if (v37 <= *(v26 + 4 * v36))
        {
          v40 = (a1 + v39);
          goto LABEL_36;
        }
      }

      v40 = a1;
LABEL_36:
      *v40 = v35;
      if (++v33 == 8)
      {
        break;
      }
    }

    v23 = v32++;
    if (v32 == a2)
    {
      return 1;
    }
  }

  return v32 + 1 == a2;
}

float sub_262330BE4(float32x4_t *a1, uint64_t a2)
{
  *&v26[4] = *MEMORY[0x277D85DE8];
  v24 = 0x300000001;
  v25 = 4;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  sub_2621DD5D0(&v21, &v24, v26, 3uLL);
  if (v22 != v21)
  {
    LODWORD(v4) = HIDWORD(*a2);
    v5 = COERCE_FLOAT(*(a2 + 8));
    v6 = sqrt(v5 * v5 + COERCE_FLOAT(*a2) * COERCE_FLOAT(*a2) + v4 * v4);
    v7 = COERCE_FLOAT(*a2) / v6;
    v8 = v4 / v6;
    v9 = v5 / v6;
    v10 = v22 - v21;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v11 = 0.0;
    v12 = -1.0;
    v13 = v21;
    do
    {
      v14 = *v13++;
      v15 = vsubq_f32(*a1, a1[v14]);
      v16 = vcvtq_f64_f32(*v15.f32);
      v17 = sqrt(v15.f32[2] * v15.f32[2] + vaddvq_f64(vmulq_f64(v16, v16)));
      v18 = fabsf(((v8 * (v15.f32[1] / v17)) + ((v15.f32[0] / v17) * v7)) + ((v15.f32[2] / v17) * v9));
      if (v18 > v12)
      {
        v11 = v17;
        v12 = v18;
      }

      --v10;
    }

    while (v10);
    goto LABEL_10;
  }

  v11 = 0.0;
  if (v22)
  {
LABEL_10:
    operator delete(v21);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_262330D5C(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v13 = (v5 + 24 * a2);
      if (v4 != v13)
      {
        v14 = a1[1];
        do
        {
          v16 = *(v14 - 3);
          v14 -= 3;
          v15 = v16;
          if (v16)
          {
            *(v4 - 2) = v15;
            operator delete(v15);
          }

          v4 = v14;
        }

        while (v14 != v13);
      }

      a1[1] = v13;
    }
  }

  else
  {
    v9 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v4) >> 3) < v7)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v5) >> 3);
        v11 = 0x5555555555555556 * ((v9 - v5) >> 3);
        if (v11 <= a2)
        {
          v11 = a2;
        }

        if (v10 >= 0x555555555555555)
        {
          v12 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v12 = v11;
        }

        sub_2621E1EE4(v12);
      }

      sub_2621CBEB0();
    }

    v17 = &v4[3 * v7];
    v18 = 24 * a2 - 8 * ((v4 - *a1) >> 3);
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_2621C8E70(v4, *a3, a3[1], (a3[1] - *a3) >> 2);
      v4 += 3;
      v18 -= 24;
    }

    while (v18);
    a1[1] = v17;
  }
}

void sub_262330F28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26220AA90(va);
  _Unwind_Resume(a1);
}

void **sub_262330F4C(void **a1)
{
  v3 = a1 + 6;
  sub_2621E1D40(&v3);
  v3 = a1 + 3;
  sub_2621E1D40(&v3);
  v3 = a1;
  sub_2621E1D40(&v3);
  return a1;
}

_OWORD *sub_262330FA4(_OWORD *result, _OWORD *a2, float32x2_t **a3, float32x4_t a4)
{
  v4 = 0;
  v5 = a2[5];
  v28[4] = a2[4];
  v28[5] = v5;
  v6 = a2[7];
  v28[6] = a2[6];
  v28[7] = v6;
  v7 = a2[1];
  v28[0] = *a2;
  v28[1] = v7;
  v8 = a2[3];
  v28[2] = a2[2];
  v28[3] = v8;
  do
  {
    v9 = vsubq_f32(v28[v4], a4);
    DWORD2(v28[v4]) = v9.i32[2];
    *&v28[v4++] = v9.i64[0];
  }

  while (v4 != 8);
  v10 = 0;
  result[6] = 0u;
  result[7] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  result[2] = 0u;
  result[3] = 0u;
  *result = 0u;
  result[1] = 0u;
  v11 = **a3;
  v12 = (*a3)[1].i32[0];
  v13 = a3[3];
  v14 = a3[6];
  v15 = *v13;
  v16 = *v14;
  v17 = v13[1].i32[0];
  _S6 = v14[1].i32[0];
  do
  {
    _Q7 = v28[v10];
    v20 = &result[v10];
    __asm { FMLA            S17, S6, V7.S[2] }

    v20[1].i32[0] = _S17;
    *v20 = vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(v15, *_Q7.f32, 1), v11, _Q7.f32[0]), v16, _Q7, 2);
    ++v10;
  }

  while (v10 != 8);
  for (i = 0; i != 8; ++i)
  {
    v27 = vaddq_f32(result[i], a4);
    DWORD2(result[i]) = v27.i32[2];
    *&result[i] = v27.i64[0];
  }

  return result;
}

void sub_262331098(void *a1, float a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = __sincosf_stret(a2);
  v8[0] = LODWORD(v3.__cosval);
  v8[1] = LODWORD(v3.__sinval);
  v8[2] = 0;
  memset(v9, 0, sizeof(v9));
  sub_2621DC430(v9, v8, v9, 3uLL);
  v7[0] = -v3.__sinval;
  v7[1] = v3.__cosval;
  v7[2] = 0.0;
  memset(v10, 0, sizeof(v10));
  sub_2621DC430(v10, v7, v8, 3uLL);
  v4 = 0;
  v5 = 1065353216;
  memset(v11, 0, sizeof(v11));
  sub_2621DC430(v11, &v4, &v6, 3uLL);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_2622180B8(a1, v9, &v12, 3uLL);
}

void sub_2623311DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = &a22;
  v24 = -72;
  while (1)
  {
    v25 = *(v23 - 1);
    if (v25)
    {
      *v23 = v25;
      operator delete(v25);
    }

    v23 -= 3;
    v24 += 24;
    if (!v24)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_262331248(uint64_t *a1, uint64_t *a2, int *a3, int *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  if (a3 != a4)
  {
    v7 = a3;
    do
    {
      sub_2621C729C(v13, *v7++);
    }

    while (v7 != a4);
  }

  v8 = *a2;
  v9 = a2[1];
  if (v9 != *a2)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (!sub_2621C719C(v13, v11))
      {
        sub_262236B50(a1, (v8 + v10));
        v8 = *a2;
        v9 = a2[1];
      }

      ++v11;
      v10 += 192;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 6) > v11);
  }

  return sub_2621C74C4(v13);
}

void sub_262331330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_2621C74C4(&a9);
  sub_2621EAAB0(&a9);
  _Unwind_Resume(a1);
}

void sub_262331354(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = a1[1];
    do
    {
      v7 = *a1 + 24 * *(v2 + 4 * v5);
      if (v7 + 24 == v6)
      {
        v11 = v6;
        v6 = *a1 + 24 * *(v2 + 4 * v5);
      }

      else
      {
        do
        {
          v8 = *v7;
          if (*v7)
          {
            *(v7 + 8) = v8;
            operator delete(v8);
            *(v7 + 16) = 0;
          }

          v9 = v7 + 24;
          *v7 = *(v7 + 24);
          *(v7 + 16) = *(v7 + 40);
          *(v7 + 32) = 0;
          *(v7 + 40) = 0;
          *(v7 + 24) = 0;
          v10 = v7 + 48;
          v7 += 24;
        }

        while (v10 != v6);
        v11 = a1[1];
        v6 = v9;
      }

      if (v11 != v6)
      {
        v12 = v11;
        do
        {
          v14 = *(v12 - 24);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v11 - 16) = v13;
            operator delete(v13);
          }

          v11 = v12;
        }

        while (v12 != v6);
      }

      a1[1] = v6;
      ++v5;
      v2 = *a2;
      v15 = a2[1];
    }

    while (v5 < (v15 - *a2) >> 2);
    if (v15 != v2)
    {
      v16 = 0;
      v17 = *a1;
      v18 = v6;
      do
      {
        if (v18 == v17)
        {
          v18 = v17;
        }

        else
        {
          v19 = 0;
          v20 = 0;
          do
          {
            v21 = v17 + v19;
            v22 = *(v17 + v19 + 8);
            v23 = *(v17 + v19) + 4 * *(*a2 + 4 * v16);
            v24 = v22 - (v23 + 4);
            if (v22 != v23 + 4)
            {
              memmove((*(v17 + v19) + 4 * *(*a2 + 4 * v16)), (v23 + 4), v22 - (v23 + 4));
              v17 = *a1;
              v6 = a1[1];
            }

            *(v21 + 8) = v23 + v24;
            ++v20;
            v19 += 24;
          }

          while (v20 < 0xAAAAAAAAAAAAAAABLL * ((v6 - v17) >> 3));
          v2 = *a2;
          v15 = a2[1];
          v18 = v6;
        }

        ++v16;
      }

      while (v16 < (v15 - v2) >> 2);
    }
  }
}

uint64_t sub_262331500(void *a1, float32x4_t *a2)
{
  *&v16[4] = *MEMORY[0x277D85DE8];
  v2 = vsubq_f32(*a2, a2[1]);
  v3 = vsubq_f32(*a2, a2[3]);
  v4 = vsubq_f32(*a2, a2[4]);
  v5 = *&v4.i32[1] * *&v4.i32[1];
  v6.i32[0] = vextq_s8(v4, v4, 8uLL).u32[0];
  v6.i32[1] = v4.i32[0];
  v7 = vcvtq_f64_f32(v6);
  v8 = vmulq_f64(v7, v7);
  v8.f64[0] = sqrt(v8.f64[0] + v8.f64[1] + v5);
  v9 = vcvtq_f64_f32(vzip1_s32(*v2.i8, *v3.i8));
  v10 = vcvtq_f64_f32(vzip2_s32(*v2.i8, *v3.i8));
  v11 = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(v2, v2, 8uLL), *&vextq_s8(v3, v3, 8uLL)));
  v14 = vcvt_f32_f64(vsqrtq_f64(vaddq_f64(vmulq_f64(v11, v11), vaddq_f64(vmulq_f64(v9, v9), vmulq_f64(v10, v10)))));
  *v8.f64 = v8.f64[0];
  v15 = LODWORD(v8.f64[0]);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  result = sub_2621DC430(a1, &v14, v16, 3uLL);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_2623315EC(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = *(a2 - 1);
      v10 = *result;
      if (*(**a3 + 4 * v9) < *(**a3 + 4 * *result))
      {
        *result = v9;
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v22 = a5;
      v23 = a4 >> 1;
      v24 = &result[a4 >> 1];
      v25 = a4 >> 1;
      if (a4 <= a6)
      {
        sub_262331838(result, v24, a3, v25, a5);
        v26 = &v22[8 * v23];
        result = sub_262331838(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v26);
        v27 = &v22[8 * a4];
        v28 = *a3;
        v29 = v26;
        while (v29 != v27)
        {
          v30 = *v29;
          v31 = *(*v28 + 4 * *v29);
          v32 = *(*v28 + 4 * *v22);
          if (v31 >= v32)
          {
            v30 = *v22;
          }

          v22 += 8 * (v31 >= v32);
          v29 += v31 < v32;
          *v8++ = v30;
          if (v22 == v26)
          {
            while (v29 != v27)
            {
              v34 = *v29++;
              *v8++ = v34;
            }

            return result;
          }
        }

        while (v22 != v26)
        {
          v33 = *v22;
          v22 += 8;
          *v8++ = v33;
        }
      }

      else
      {
        sub_2623315EC(result, v24, a3, v25, a5, a6);
        sub_2623315EC(&v8[a4 >> 1], a2, a3, a4 - (a4 >> 1), v22, a6);

        return sub_262331A30(v8, &v8[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), v22, a6);
      }
    }

    else if (result != a2)
    {
      v12 = result + 1;
      if (result + 1 != a2)
      {
        v13 = 0;
        v14 = **a3;
        v15 = result;
        do
        {
          v16 = *v15;
          v15 = v12;
          v17 = *v12;
          v18 = *(v14 + 4 * v17);
          if (v18 < *(v14 + 4 * v16))
          {
            v19 = v13;
            while (1)
            {
              *(result + v19 + 8) = v16;
              if (!v19)
              {
                break;
              }

              v16 = *(result + v19 - 8);
              v19 -= 8;
              if (v18 >= *(v14 + 4 * v16))
              {
                v20 = (result + v19 + 8);
                goto LABEL_16;
              }
            }

            v20 = result;
LABEL_16:
            *v20 = v17;
          }

          v12 = v15 + 1;
          v13 += 8;
        }

        while (v15 + 1 != a2);
      }
    }
  }

  return result;
}

uint64_t *sub_262331838(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v5 = a5;
    v7 = result;
    if (a4 == 1)
    {
LABEL_8:
      *v5 = *v7;
      return result;
    }

    if (a4 == 2)
    {
      v10 = *(a2 - 1);
      v11 = **a3;
      v12 = *(v11 + 4 * v10);
      v13 = *(v11 + 4 * *result);
      if (v12 >= v13)
      {
        v10 = *result;
      }

      *a5 = v10;
      v5 = a5 + 1;
      if (v12 >= v13)
      {
        v7 = a2 - 1;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v24 = &result[a4 >> 1];
      sub_2623315EC(result, v24, a3, a4 >> 1, a5, a4 >> 1);
      result = sub_2623315EC(&v7[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
      v25 = *a3;
      v26 = &v7[a4 >> 1];
      while (v26 != a2)
      {
        v27 = *v26;
        v28 = *(*v25 + 4 * *v26);
        v29 = *(*v25 + 4 * *v7);
        if (v28 >= v29)
        {
          v27 = *v7;
        }

        v26 += v28 < v29;
        v7 += v28 >= v29;
        *v5++ = v27;
        if (v7 == v24)
        {
          while (v26 != a2)
          {
            v31 = *v26++;
            *v5++ = v31;
          }

          return result;
        }
      }

      while (v7 != v24)
      {
        v30 = *v7++;
        *v5++ = v30;
      }
    }

    else if (result != a2)
    {
      v14 = result + 1;
      *a5 = *result;
      if (result + 1 != a2)
      {
        v15 = 0;
        v16 = **a3;
        v17 = a5;
        v18 = a5;
        do
        {
          v20 = *v18++;
          v19 = v20;
          if (*(v16 + 4 * *v14) >= *(v16 + 4 * v20))
          {
            *v18 = *v14;
          }

          else
          {
            v17[1] = v19;
            v21 = a5;
            if (v17 != a5)
            {
              v22 = v15;
              while (1)
              {
                v21 = (a5 + v22);
                v23 = *(a5 + v22 - 8);
                if (*(v16 + 4 * *v14) >= *(v16 + 4 * v23))
                {
                  break;
                }

                *v21 = v23;
                v22 -= 8;
                if (!v22)
                {
                  v21 = a5;
                  break;
                }
              }
            }

            *v21 = *v14;
          }

          ++v14;
          v15 += 8;
          v17 = v18;
        }

        while (v14 != a2);
      }
    }
  }

  return result;
}

uint64_t *sub_262331A30(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t **a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (a6)
  {
    v8 = a6;
    v11 = result;
    while (v8 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v12 = **a4;
      while (1)
      {
        v13 = *v11;
        if (*(v12 + 4 * *a2) < *(v12 + 4 * *v11))
        {
          break;
        }

        ++v11;
        if (!--a5)
        {
          return result;
        }
      }

      if (a5 >= v8)
      {
        if (a5 == 1)
        {
          *v11 = *a2;
          *a2 = v13;
          return result;
        }

        v22 = a5 / 2;
        v16 = &v11[a5 / 2];
        v15 = a2;
        if (a2 != a3)
        {
          v23 = a3 - a2;
          v15 = a2;
          do
          {
            v24 = v23 >> 1;
            v25 = &v15[v23 >> 1];
            v27 = *v25;
            v26 = v25 + 1;
            v23 += ~(v23 >> 1);
            if (*(v12 + 4 * v27) < *(v12 + 4 * *v16))
            {
              v15 = v26;
            }

            else
            {
              v23 = v24;
            }
          }

          while (v23);
        }

        v14 = v15 - a2;
      }

      else
      {
        v14 = v8 / 2;
        v15 = &a2[v8 / 2];
        v16 = a2;
        if (a2 != v11)
        {
          v17 = a2 - v11;
          v16 = v11;
          do
          {
            v18 = v17 >> 1;
            v19 = &v16[v17 >> 1];
            v21 = *v19;
            v20 = v19 + 1;
            v17 += ~(v17 >> 1);
            if (*(v12 + 4 * *v15) < *(v12 + 4 * v21))
            {
              v17 = v18;
            }

            else
            {
              v16 = v20;
            }
          }

          while (v17);
        }

        v22 = v16 - v11;
      }

      v28 = v15;
      v29 = a2 - v16;
      if (a2 != v16)
      {
        v28 = v16;
        v30 = v15 - a2;
        if (v15 != a2)
        {
          if (v16 + 1 == a2)
          {
            v78 = *v16;
            v80 = v22;
            v31 = v15 - a2;
            v82 = a7;
            v32 = a3;
            v33 = a4;
            v34 = a8;
            v35 = v14;
            memmove(v16, a2, v15 - a2);
            v14 = v35;
            v22 = v80;
            a7 = v82;
            a8 = v34;
            a4 = v33;
            a3 = v32;
            v28 = (v16 + v31);
            *v28 = v78;
          }

          else if (a2 + 1 == v15)
          {
            v36 = *(v15 - 1);
            v28 = v16 + 1;
            if (v15 - 1 != v16)
            {
              v81 = v22;
              v83 = a7;
              v37 = a3;
              v38 = a4;
              v39 = a8;
              v40 = v14;
              v79 = *(v15 - 1);
              memmove(v16 + 1, v16, (v15 - 1) - v16);
              v14 = v40;
              v36 = v79;
              v22 = v81;
              a8 = v39;
              a4 = v38;
              a3 = v37;
              a7 = v83;
            }

            *v16 = v36;
          }

          else
          {
            v41 = v29 >> 3;
            if (v29 >> 3 == v30 >> 3)
            {
              v42 = v16 + 1;
              v43 = a2 + 1;
              do
              {
                v44 = *(v42 - 1);
                *(v42 - 1) = *(v43 - 1);
                *(v43 - 1) = v44;
                if (v42 == a2)
                {
                  break;
                }

                ++v42;
              }

              while (v43++ != v15);
              v28 = a2;
            }

            else
            {
              v46 = v30 >> 3;
              v47 = v29 >> 3;
              do
              {
                v48 = v47;
                v47 = v46;
                v46 = v48 % v46;
              }

              while (v46);
              v49 = &v16[v47];
              do
              {
                v51 = *--v49;
                v50 = v51;
                v52 = (v49 + v29);
                v53 = v49;
                do
                {
                  v54 = v52;
                  *v53 = *v52;
                  v55 = &v52[v41];
                  v56 = __OFSUB__(v41, v15 - v52);
                  v58 = v41 - (v15 - v52);
                  v57 = (v58 < 0) ^ v56;
                  v52 = &v16[v58];
                  if (v57)
                  {
                    v52 = v55;
                  }

                  v53 = v54;
                }

                while (v52 != v49);
                *v54 = v50;
              }

              while (v49 != v16);
              v28 = (v16 + v30);
            }
          }
        }
      }

      a5 -= v22;
      v8 -= v14;
      v59 = a4;
      if (v22 + v14 >= a5 + v8)
      {
        v63 = v14;
        v60 = a7;
        v61 = a8;
        result = sub_262331A30(v28, v15, a3);
        v15 = v16;
        v8 = v63;
        a5 = v22;
        a3 = v28;
      }

      else
      {
        v60 = a7;
        v61 = a8;
        v62 = a3;
        result = sub_262331A30(v11, v16, v28);
        a3 = v62;
        v11 = v28;
      }

      a2 = v15;
      a7 = v60;
      a4 = v59;
      a8 = v61;
      if (!v8)
      {
        return result;
      }
    }

    if (a5 <= v8)
    {
      if (a2 != v11)
      {
        v69 = a7;
        v70 = v11;
        do
        {
          v71 = *v70++;
          *v69 = v71;
          v69 += 8;
        }

        while (v70 != a2);
        v72 = *a4;
        while (a2 != a3)
        {
          v73 = *a2;
          v74 = *(*v72 + 4 * *a2);
          v75 = *(*v72 + 4 * *a7);
          if (v74 >= v75)
          {
            v73 = *a7;
          }

          a2 += v74 < v75;
          a7 += 8 * (v74 >= v75);
          *v11++ = v73;
          if (a7 == v69)
          {
            return result;
          }
        }

        return memmove(v11, a7, v69 - a7);
      }
    }

    else if (a2 != a3)
    {
      v64 = a7;
      v65 = a2;
      do
      {
        v66 = *v65++;
        *v64 = v66;
        v64 += 8;
      }

      while (v65 != a3);
      v67 = *a4;
      while (a2 != v11)
      {
        v68 = *(v64 - 1);
        if (*(*v67 + 4 * v68) >= *(*v67 + 4 * *(a2 - 1)))
        {
          v64 -= 8;
        }

        else
        {
          v68 = *--a2;
        }

        *--a3 = v68;
        if (v64 == a7)
        {
          return result;
        }
      }

      if (v64 != a7)
      {
        v76 = 0x1FFFFFFFFFFFFFFFLL;
        do
        {
          v77 = *(v64 - 1);
          v64 -= 8;
          a3[v76--] = v77;
        }

        while (v64 != a7);
      }
    }
  }

  return result;
}

void *sub_262331F00(void *result, void *a2, void *a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    while (1)
    {
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
      if (v7 == a3)
      {
        sub_2621C8EEC(result, v4);
      }
    }
  }

  return result;
}

void sub_262331FDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_262331FF8(uint64_t *a1, void *a2, int a3, void *a4, char **a5, uint64_t *a6, int a7)
{
  v7 = a7;
  v9 = a3;
  v11 = 0;
  v12 = (*a1 + 192 * a3);
  v13 = v12[5];
  v320[4] = v12[4];
  v320[5] = v13;
  v285 = a3;
  v14 = v12[7];
  v320[6] = v12[6];
  v320[7] = v14;
  v15 = v12[1];
  v320[0] = *v12;
  v320[1] = v15;
  v16 = v12[3];
  v320[2] = v12[2];
  v320[3] = v16;
  do
  {
    v290 = v11 + 1;
    v296 = v320[(v11 + 1) & 3];
    v299 = v320[v11];
    v17 = vsubq_f32(v320[v11 ^ 2], v296);
    v18 = vcvtq_f64_f32(*v17.f32);
    v18.f64[0] = sqrt(v17.f32[2] * v17.f32[2] + vaddvq_f64(vmulq_f64(v18, v18)));
    *v18.f64 = v18.f64[0];
    v303 = v17.f32[2] / *v18.f64;
    *__src = vdivq_f32(v17, vdupq_lane_s32(*&v18.f64[0], 0));
    v317 = 0;
    v318 = 0;
    v319 = 0;
    LODWORD(v330) = 0;
    v20 = *a1;
    v19 = a1[1];
    if (v19 != *a1)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        if (*(*a2 + 4 * v22) == v9)
        {
          v23 = vsubq_f32(v20[v21 + 1], v20[v21]);
          v24 = vcvtq_f64_f32(*v23.f32);
          *v24.f64 = sqrt(v23.f32[2] * v23.f32[2] + vaddvq_f64(vmulq_f64(v24, v24)));
          if ((((*(__src + 1) * (v23.f32[1] / *v24.f64)) + ((v23.f32[0] / *v24.f64) * *__src)) + ((v23.f32[2] / *v24.f64) * v303)) > 0.95)
          {
            sub_2621C7CD0(&v317, &v330);
            v20 = *a1;
            v19 = a1[1];
          }
        }

        LODWORD(v330) = ++v22;
        v21 += 12;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v19 - v20) >> 6) > v22);
    }

    v25 = v296;
    v26 = vsubq_f32(v296, v299);
    v27 = vcvtq_f64_f32(*v26.f32);
    v27.f64[0] = sqrt(v26.f32[2] * v26.f32[2] + vaddvq_f64(vmulq_f64(v27, v27)));
    *v27.f64 = v27.f64[0];
    v25.f32[0] = v26.f32[2] / *v27.f64;
    v289 = v26;
    v28 = vdivq_f32(v26, vdupq_lane_s32(*&v27.f64[0], 0));
    v292 = *v28.f32;
    v294 = v25;
    v28.i32[2] = v25.i32[0];
    v297 = v28;
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        v43 = *__src;
        *(&v43 + 2) = v303;
        *v304 = v43;
        v326 = v43;
        v330 = 0;
        v331 = 0;
        v332 = 0;
        v44 = *a5;
        v45 = a5[1];
        v329 = 0;
        v328 = 0uLL;
        v46 = v45 - v44;
        if (v45 != v44)
        {
          if (!((v46 >> 2) >> 62))
          {
            sub_2621C7F54(v46 >> 2);
          }

          sub_2621CBEB0();
        }

        v48 = *a6;
        v47 = a6[1];
        if (v47 != *a6)
        {
          v49 = 0;
          do
          {
            v50 = v328.i64[0];
            v51 = (v48 + 4 * v49);
            if (v328.i64[0] != v328.i64[1])
            {
              while (*v50 != *v51)
              {
                if (++v50 == v328.i64[1])
                {
                  goto LABEL_42;
                }
              }
            }

            if (v50 == v328.i64[1])
            {
LABEL_42:
              sub_2621C7CD0(&v328, v51);
              v48 = *a6;
              v47 = a6[1];
            }

            ++v49;
          }

          while (v49 < (v47 - v48) >> 2);
        }

        v52 = v317;
        if (v318 == v317)
        {
          v58 = 0;
        }

        else
        {
          v53 = 0;
          v54 = v328;
          v55 = (v318 - v317) >> 2;
          do
          {
            v56 = (v52 + 4 * v53);
            v57 = v54.i64[0];
            if (v54.i64[0] != v54.i64[1])
            {
              v57 = v54.i64[0];
              while (*v57 != *v56)
              {
                if (++v57 == v54.i64[1])
                {
                  goto LABEL_52;
                }
              }
            }

            if (v57 == v54.i64[1])
            {
LABEL_52:
              sub_2621C7CD0(&v330, v56);
            }

            ++v53;
          }

          while (v55 > v53);
          v58 = v330;
          if (v331 == v330)
          {
            v7 = a7;
          }

          else
          {
            v59 = 0;
            if (((v331 - v330) >> 2) <= 1)
            {
              v60 = 1;
            }

            else
            {
              v60 = (v331 - v330) >> 2;
            }

            v7 = a7;
            do
            {
              v61 = 0;
              v62 = (*a1 + 192 * *&v58[4 * v59]);
              v63 = 0;
              do
              {
                v63 = vadd_f32(v63, *v62[v61++].f32);
              }

              while (v61 != 8);
              v64 = sub_262330BE4(v62, &v326);
              v65 = 0;
              *v66.f32 = vmul_f32(v63, 0x3E0000003E000000);
              v66.i64[0] = vsubq_f32(v66, v299).u64[0];
              v67 = ((vmuls_lane_f32(*(__src + 1), *v66.f32, 1) + (v66.f32[0] * *__src)) + 0.0) + v64 * 0.5 * -0.300000012;
              v68 = vmulq_n_f32(*v304, v67);
              do
              {
                v69 = *a1 + 192 * *&v58[4 * v59];
                *(v69 + v65) = vsubq_f32(*(v69 + v65), v68);
                v65 += 16;
              }

              while (v65 != 128);
              ++v59;
            }

            while (v59 != v60);
          }
        }

        if (v328.i64[0])
        {
          operator delete(v328.i64[0]);
        }

        if (!v58)
        {
          goto LABEL_202;
        }

        v181 = v58;
        goto LABEL_201;
      }

      if (v7 == 4)
      {
        v325 = v28;
        v330 = 0;
        v331 = 0;
        v332 = 0;
        v29 = v317;
        v30 = v318 - v317;
        if (v318 == v317)
        {
          v36 = 0;
        }

        else
        {
          v31 = 0;
          v32 = v30 >> 2;
          do
          {
            v33 = *a5;
            v34 = a5[1];
            v35 = (v29 + 4 * v31);
            if (*a5 != v34)
            {
              while (*v33 != *v35)
              {
                v33 += 4;
                if (v33 == v34)
                {
                  goto LABEL_18;
                }
              }
            }

            if (v33 == v34)
            {
LABEL_18:
              sub_2621C7CD0(&v330, v35);
            }

            ++v31;
          }

          while (v32 > v31);
          v36 = v330;
          v30 = v331;
        }

        if ((v30 - v36) <= 4)
        {
          v314 = 0;
          v315 = 0;
          v316 = 0;
          if (v36)
          {
            goto LABEL_136;
          }
        }

        else
        {
          v328 = 0uLL;
          v329 = 0;
          v119 = sub_262330BE4((*a1 + 192 * *v36), &v325);
          v121 = *a1;
          v120 = a1[1];
          if (v120 == *a1)
          {
            v137 = 0;
            v138 = 0;
            v141 = 0;
            v133 = 0;
            v326 = 0uLL;
            v327 = 0;
          }

          else
          {
            v122 = 0;
            v123 = 0;
            v124 = 0;
            do
            {
              v125 = v330;
              if (v330 != v331)
              {
                while (v124 != *v125)
                {
                  v125 += 4;
                  if (v125 == v331)
                  {
                    goto LABEL_122;
                  }
                }
              }

              if (v125 != v331)
              {
                v126 = 0;
                v127 = &v121[v122];
                v128 = 0;
                v129 = 0.0;
                do
                {
                  v128 = vadd_f32(v128, *&v127[v126]);
                  v129 = v129 + COERCE_FLOAT(*(&v127[v126++] + 1));
                }

                while (v126 != 8);
                *&v118 = vmul_f32(v128, 0x3E0000003E000000);
                v130 = v123;
                v131 = (v123 >> 4) + 1;
                if (v131 >> 60)
                {
                  sub_2621CBEB0();
                }

                if (v123 >> 4 != -1)
                {
                  sub_2621CBF10(v131);
                }

                v132 = (16 * (v123 >> 4));
                *(&v118 + 2) = v129 * 0.125;
                *v132 = v118;
                v123 = (v132 + 1);
                memcpy(0, 0, v130);
                v121 = *a1;
                v120 = a1[1];
              }

LABEL_122:
              ++v124;
              v122 += 12;
            }

            while (0xAAAAAAAAAAAAAAABLL * ((v120 - v121) >> 6) > v124);
            v326 = 0uLL;
            v327 = 0;
            v133 = v123;
            if (v123)
            {
              v134 = v325.i64[0];
              if ((v123 >> 4) <= 1)
              {
                v135 = 1;
              }

              else
              {
                v135 = v123 >> 4;
              }

              v136 = 0;
              do
              {
                __p.f32[0] = ((COERCE_FLOAT(HIDWORD(*v136)) - v299.f32[1]) * *(&v134 + 1)) + ((COERCE_FLOAT(*v136) - v299.f32[0]) * *&v134);
                sub_2621C8F2C(&v326, &__p);
                ++v136;
                --v135;
              }

              while (v135);
              v138 = *(&v326 + 1);
              v137 = v326;
              v139 = (v326 + 4);
              _ZF = v326 == *(&v326 + 1) || v139 == *(&v326 + 1);
              v9 = a3;
              if (_ZF)
              {
                v141 = v326;
                v133 = v326;
              }

              else
              {
                v208 = *v326;
                v133 = v326;
                v209 = (v326 + 4);
                do
                {
                  v210 = *v209++;
                  v211 = v210;
                  if (v210 < v208)
                  {
                    v208 = v211;
                    v133 = v139;
                  }

                  v139 = v209;
                }

                while (v209 != *(&v326 + 1));
                v141 = v326;
              }
            }

            else
            {
              v137 = 0;
              v138 = 0;
              v141 = 0;
              v9 = a3;
            }
          }

          v212 = v133 - v141;
          v213 = v330;
          sub_2621C7CD0(&v328, &v330[(v133 - v141) << 30 >> 30]);
          if (v137 == v138)
          {
            v215 = v137;
          }

          else
          {
            v214 = v137 + 1;
            v215 = v137;
            if (v137 + 1 != v138)
            {
              v216 = *v137;
              v215 = v137;
              v217 = v137 + 1;
              do
              {
                v218 = *v217++;
                v219 = v218;
                if (v216 < v218)
                {
                  v216 = v219;
                  v215 = v214;
                }

                v214 = v217;
              }

              while (v217 != v138);
            }
          }

          v220 = v215 - v137;
          sub_2621C7CD0(&v328, &v213[(v215 - v137) << 30 >> 30]);
          v221 = v137[(v220 >> 2)] - v137[(v212 >> 2)];
          v222 = vcvtms_s32_f32(v221 / v119);
          v315 = 0;
          v316 = 0;
          v314 = 0;
          v223 = (v222 - 1);
          if (v222 > 1)
          {
            v293 = v222;
            __p = 0uLL;
            v324 = 0;
            v321 = 0uLL;
            v322 = 0;
            v306 = v213;
            v301 = v331;
            v295 = (v331 - v213) >> 2;
            sub_2621CA9DC(&v321, v213, v331, v295);
            v231 = v328.i64[0];
            v232 = v321.i64[1];
            v233 = v321.i64[0];
            if (v328.i64[1] != v328.i64[0])
            {
              v234 = 0;
              v235 = (v328.i64[1] - v328.i64[0]) >> 2;
              do
              {
                if (v233 == v232)
                {
                  v236 = v233;
                }

                else
                {
                  v236 = v233;
                  while (*v236 != v231[v234])
                  {
                    v236 += 4;
                    if (v236 == v232)
                    {
                      v236 = v232;
                      break;
                    }
                  }
                }

                if (v232 != v236)
                {
                  v237 = v232 - (v236 + 4);
                  if (v232 != v236 + 4)
                  {
                    memmove(v236, v236 + 4, v232 - (v236 + 4));
                  }

                  v232 = &v236[v237];
                }

                ++v234;
              }

              while (v235 > v234);
              v321.i64[1] = v232;
            }

            v238 = 0;
            v239 = (v232 - v233) >> 2;
            v240 = v233;
            do
            {
              if (v239 > v238)
              {
                sub_2621C7CD0(&__p, v240);
              }

              ++v238;
              v240 += 4;
            }

            while (v223 != v238);
            v241 = __p.i64[0];
            if (__p.i64[1] != __p.i64[0])
            {
              if (((__p.i64[1] - __p.i64[0]) >> 2) <= 1)
              {
                v242 = 1;
              }

              else
              {
                v242 = (__p.i64[1] - __p.i64[0]) >> 2;
              }

              do
              {
                sub_2621C7CD0(&v328, v241++);
                --v242;
              }

              while (v242);
              v231 = v328.i64[0];
            }

            v243 = 0;
            v244 = *a1 + 192 * *v231;
            v245 = 0;
            v246 = 0.0;
            do
            {
              v245 = vadd_f32(v245, *(v244 + v243));
              v246 = v246 + COERCE_FLOAT(*(v244 + v243 + 8));
              v243 += 16;
            }

            while (v243 != 128);
            v247 = v328.i64[1];
            if (v328.i64[1] - v231 > 8uLL)
            {
              *v229.f32 = vmul_f32(v245, 0x3E0000003E000000);
              v248 = v325;
              _S3 = v325.i32[2];
              v250 = (v328.i64[1] - v231) >> 2;
              if (v250 <= 3)
              {
                v250 = 3;
              }

              for (i = 2; i != v250; ++i)
              {
                v252 = 0;
                v253 = *a1 + 192 * v231[i];
                v230.i64[0] = 0;
                v254 = 0.0;
                do
                {
                  *v230.f32 = vadd_f32(*v230.f32, *(v253 + v252));
                  v254 = v254 + COERCE_FLOAT(*(v253 + v252 + 8));
                  v252 += 16;
                }

                while (v252 != 128);
                v255 = 0;
                *v230.f32 = vmul_f32(*v230.f32, 0x3E0000003E000000);
                v230.f32[2] = v254 * 0.125;
                v229.f32[2] = v246 * 0.125;
                _Q4 = vsubq_f32(vmlaq_n_f32(v229, v297, (v221 / v293) * (i - 1)), v230);
                __asm { FMLA            S5, S3, V4.S[2] }

                v258 = vmulq_n_f32(v248, _S5);
                do
                {
                  v259 = *a1 + 192 * v231[i];
                  v230 = vaddq_f32(v258, *(v259 + v255));
                  *(v259 + v255) = v230;
                  v255 += 16;
                }

                while (v255 != 128);
              }
            }

            sub_2621CA9DC(&v314, v306, v301, v295);
            if (v247 != v231)
            {
              v260 = 0;
              v262 = v314;
              v261 = v315;
              v307 = v328.i64[1];
              v302 = v328.i64[0];
              do
              {
                if (v262 == v261)
                {
                  v263 = v262;
                }

                else
                {
                  v263 = v262;
                  while (*v263 != v231[v260])
                  {
                    v263 += 4;
                    if (v263 == v261)
                    {
                      v263 = v261;
                      break;
                    }
                  }
                }

                if (v261 != v263)
                {
                  v264 = v261 - (v263 + 4);
                  if (v261 != v263 + 4)
                  {
                    memmove(v263, v263 + 4, v261 - (v263 + 4));
                    v231 = v302;
                    v247 = v307;
                  }

                  v261 = &v263[v264];
                }

                ++v260;
              }

              while (v260 < v247 - v231);
              v315 = v261;
              v233 = v321.i64[0];
            }

            if (v233)
            {
              operator delete(v233);
            }

            v7 = a7;
            v9 = a3;
            if (__p.i64[0])
            {
              operator delete(__p.i64[0]);
            }
          }

          else
          {
            __p = 0uLL;
            v324 = 0;
            if (v222 < 0)
            {
              v226 = v213;
              v227 = 0;
              v228 = 0;
            }

            else
            {
              v224 = (v222 + 1);
              v225 = v328.i64[0];
              do
              {
                sub_2621C7CD0(&__p, v225++);
                --v224;
              }

              while (v224);
              v226 = v213;
              v227 = __p.i64[1];
              v228 = __p.i64[0];
            }

            sub_2621CA9DC(&v328, v228, v227, (v227 - v228) >> 2);
            sub_2621CA9DC(&v314, v226, v331, (v331 - v226) >> 2);
            v266 = v328.i64[1];
            v265 = v328.i64[0];
            if (v328.i64[1] != v328.i64[0])
            {
              v267 = 0;
              v269 = v314;
              v268 = v315;
              v270 = v328;
              do
              {
                if (v269 == v268)
                {
                  v271 = v269;
                }

                else
                {
                  v271 = v269;
                  while (*v271 != *(v265 + 4 * v267))
                  {
                    v271 += 4;
                    if (v271 == v268)
                    {
                      v271 = v268;
                      break;
                    }
                  }
                }

                if (v268 != v271)
                {
                  v272 = v268 - (v271 + 4);
                  if (v268 != v271 + 4)
                  {
                    memmove(v271, v271 + 4, v268 - (v271 + 4));
                    v266 = v270.i64[1];
                    v265 = v270.i64[0];
                  }

                  v268 = &v271[v272];
                }

                ++v267;
              }

              while (v267 < (v266 - v265) >> 2);
              v315 = v268;
              v228 = __p.i64[0];
              v9 = a3;
            }

            if (v228)
            {
              __p.i64[1] = v228;
              operator delete(v228);
            }

            v7 = a7;
          }

          if (v326)
          {
            operator delete(v326);
          }

          if (v328.i64[0])
          {
            operator delete(v328.i64[0]);
          }

          v36 = v330;
          if (!v330)
          {
            goto LABEL_137;
          }

LABEL_136:
          v331 = v36;
          operator delete(v36);
        }

LABEL_137:
        v40 = v314;
        if (v315 != v314)
        {
          v142 = 0;
          v143 = (v315 - v314) >> 2;
          do
          {
            v144 = *a5;
            v145 = a5[1];
            v146 = &v40[4 * v142];
            if (*a5 != v145)
            {
              while (*v144 != *v146)
              {
                v144 += 4;
                if (v144 == v145)
                {
                  goto LABEL_144;
                }
              }
            }

            if (v144 == v145)
            {
LABEL_144:
              sub_2621C7CD0(a5, v146);
            }

            ++v142;
          }

          while (v143 > v142);
        }

        if (!v40)
        {
          goto LABEL_202;
        }

        v315 = v40;
        goto LABEL_190;
      }

      v321 = v28;
      v331 = 0;
      v332 = 0;
      v330 = &v331;
      v70 = v317;
      if (v318 == v317)
      {
        v77 = &v331;
      }

      else
      {
        v71 = 0;
        v72 = (v318 - v317) >> 2;
        do
        {
          v73 = *a5;
          v74 = a5[1];
          v75 = (v70 + 4 * v71);
          if (*a5 != v74)
          {
            v76 = *v75;
            while (*v73 != v76)
            {
              v73 += 4;
              if (v73 == v74)
              {
                goto LABEL_74;
              }
            }
          }

          if (v73 == v74)
          {
            v76 = *v75;
LABEL_74:
            sub_2621C8094(&v330, v76);
          }

          ++v71;
        }

        while (v72 > v71);
        v77 = v330;
      }

      sub_262331F00(&v328, v77, &v331);
      v147 = v328.i64[0];
      if (v328.i64[1] == v328.i64[0])
      {
        __p = 0uLL;
        v324 = 0;
        if (!v328.i64[0])
        {
          goto LABEL_179;
        }

        goto LABEL_178;
      }

      v326 = 0uLL;
      v327 = 0;
      sub_2621C8B60(&v326, v328.i64[0], v328.i64[1], (v328.i64[1] - v328.i64[0]) >> 2);
      v148 = sub_262330BE4((*a1 + 192 * *v328.i64[0]), &v321);
      v149.i32[0] = vextq_s8(v289, v289, 8uLL).u32[0];
      v149.i32[1] = v289.i32[0];
      v150 = vcvtq_f64_f32(v149);
      v151 = vmulq_f64(v150, v150);
      v152 = sqrt(v151.f64[0] + v151.f64[1] + *&v289.i32[1] * *&v289.i32[1]);
      v154 = *(&v326 + 1);
      v153 = v326;
      v155 = (*(&v326 + 1) - v326) >> 2;
      v156 = fmin(vcvtms_s32_f32(v152 / v148), v155);
      v157 = (__PAIR64__(v156, v152 - (v156 * v148)) - COERCE_UNSIGNED_INT(0.08)) >> 32;
      if (v157 < 1)
      {
        __p = v328;
        v324 = v329;
        v329 = 0;
        v328 = 0uLL;
        if (v326)
        {
LABEL_176:
          *(&v326 + 1) = v153;
          operator delete(v153);
        }
      }

      else
      {
        if (v155 > v157)
        {
          sub_2621C7F54((__PAIR64__(v156, v152 - (v156 * v148)) - COERCE_UNSIGNED_INT(0.08)) >> 32);
        }

        if (*(&v326 + 1) != v326)
        {
          v158 = 0;
          v159 = v152 / v157;
          v160.i64[0] = 0x3F0000003F000000;
          v160.i64[1] = 0x3F0000003F000000;
          v300 = vmlaq_f32(v299, v160, vmulq_n_f32(v297, v159));
          v161 = (*(&v326 + 1) - v326) >> 2;
          if (v161 <= 1)
          {
            v161 = 1;
          }

          do
          {
            v162 = 0;
            v163 = *a1 + 192 * v153[v158];
            v160.i64[0] = 0;
            v164 = 0.0;
            do
            {
              *v160.f32 = vadd_f32(*v160.f32, *(v163 + v162));
              v164 = v164 + COERCE_FLOAT(*(v163 + v162 + 8));
              v162 += 16;
            }

            while (v162 != 128);
            v165 = 0;
            *v160.f32 = vmul_f32(*v160.f32, 0x3E0000003E000000);
            v160.f32[2] = v164 * 0.125;
            _Q1 = vsubq_f32(vmlaq_n_f32(v300, v297, v159 * v158), v160);
            _S3 = v294.i32[0];
            __asm { FMLA            S2, S3, V1.S[2] }

            v169 = vmulq_n_f32(v297, _S2);
            do
            {
              v170 = *a1 + 192 * v153[v158];
              v160 = vaddq_f32(v169, *(v170 + v165));
              *(v170 + v165) = v160;
              v165 += 16;
            }

            while (v165 != 128);
            ++v158;
          }

          while (v158 != v161);
        }

        __p = 0uLL;
        v324 = 0;
        sub_2621C8B60(&__p, v328.i64[0], v328.i64[1], (v328.i64[1] - v328.i64[0]) >> 2);
        if (v154 != v153)
        {
          v171 = 0;
          v172 = __p.i64[1];
          v173 = __p.i64[0];
          __srca = *(&v326 + 1);
          v305 = v326;
          do
          {
            if (v173 == v172)
            {
              v174 = v173;
            }

            else
            {
              v174 = v173;
              while (*v174 != v153[v171])
              {
                v174 += 4;
                if (v174 == v172)
                {
                  v174 = v172;
                  break;
                }
              }
            }

            if (v172 != v174)
            {
              v175 = v172 - (v174 + 4);
              if (v172 != v174 + 4)
              {
                memmove(v174, v174 + 4, v172 - (v174 + 4));
                v153 = v305;
                v154 = __srca;
              }

              v172 = &v174[v175];
            }

            ++v171;
          }

          while (v171 < v154 - v153);
          __p.i64[1] = v172;
          v7 = a7;
        }

        v9 = a3;
        if (v153)
        {
          goto LABEL_176;
        }
      }

      v147 = v328.i64[0];
      if (!v328.i64[0])
      {
LABEL_179:
        sub_2621C6C04(v331);
        v40 = __p.i64[0];
        if (__p.i64[1] != __p.i64[0])
        {
          v176 = 0;
          v177 = (__p.i64[1] - __p.i64[0]) >> 2;
          do
          {
            v178 = *a5;
            v179 = a5[1];
            v180 = &v40[4 * v176];
            if (*a5 != v179)
            {
              while (*v178 != *v180)
              {
                v178 += 4;
                if (v178 == v179)
                {
                  goto LABEL_186;
                }
              }
            }

            if (v178 == v179)
            {
LABEL_186:
              sub_2621C7CD0(a5, v180);
            }

            ++v176;
          }

          while (v177 > v176);
        }

        if (!v40)
        {
          goto LABEL_202;
        }

        __p.i64[1] = v40;
        goto LABEL_190;
      }

LABEL_178:
      v328.i64[1] = v147;
      operator delete(v147);
      goto LABEL_179;
    }

    if (v7 == 1)
    {
      v312 = 0;
      v313 = 0;
      v311 = 0;
      sub_2621C8B60(&v311, v317, v318, (v318 - v317) >> 2);
      v37 = v311;
      v38 = v312;
      v39 = v312 - v311;
      if ((v312 - v311) > 4)
      {
        v298 = v311;
        v108 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
        v328.i32[0] = 0;
        sub_2621CD1D8(&v330, v108);
        if (a1[1] != *a1)
        {
          sub_26220F71C(*a1);
        }

        v314 = 0;
        v315 = 0;
        v316 = 0;
        v109 = v39 >> 2;
        LODWORD(v326) = 0;
        sub_2621CD1D8(&v328, v109);
        if (v38 == v298)
        {
          v113 = v328.i64[0];
        }

        else
        {
          v111 = 0;
          v112 = *a1;
          v113 = v328.i64[0];
          if (v109 <= 1)
          {
            v114 = 1;
          }

          else
          {
            v114 = v109;
          }

          do
          {
            v115 = 0;
            _Q2.i64[0] = 0;
            do
            {
              *_Q2.f32 = vadd_f32(*_Q2.f32, *&v112[12 * v298[v111] + v115++]);
            }

            while (v115 != 8);
            *_Q2.f32 = vmul_f32(*_Q2.f32, 0x3E0000003E000000);
            _Q2.i32[2] = v299.i32[2];
            _Q2 = vsubq_f32(_Q2, v299);
            _S4 = v303;
            __asm { FMLA            S3, S4, V2.S[2] }

            *(v113 + 4 * v111++) = _S3;
          }

          while (v111 != v114);
        }

        __p.i32[0] = 0;
        sub_2621CD1D8(&v326, (v328.i64[1] - v113) >> 2);
        v182 = v328.i64[0];
        if (v328.i64[1] != v328.i64[0])
        {
          v183 = (v328.i64[1] - v328.i64[0]) >> 2;
          v184 = v326;
          if (v183 <= 1)
          {
            v183 = 1;
          }

          do
          {
            v185 = *v182++;
            *v184++ = -v185;
            --v183;
          }

          while (v183);
        }

        sub_2621CD160(&__p, (*(&v326 + 1) - v326) >> 2);
        v186 = __p;
        if (__p.i64[0] != __p.i64[1])
        {
          v187 = 0;
          v188 = (__p.i64[1] - __p.i64[0] - 8) >> 3;
          v189 = vdupq_n_s64(v188);
          v190 = xmmword_2623A7620;
          do
          {
            v191 = vmovn_s64(vcgeq_u64(v189, v190));
            if (v191.i8[0])
            {
              *(v186.i64[0] + 8 * v187) = v187;
            }

            if (v191.i8[4])
            {
              *(v186.i64[0] + 8 * v187 + 8) = v187 + 1;
            }

            v187 += 2;
            v190 = vaddq_s64(v190, vdupq_n_s64(2uLL));
          }

          while (((v188 + 2) & 0x3FFFFFFFFFFFFFFELL) != v187);
        }

        v321.i64[0] = &v326;
        v192 = (v186.i64[1] - v186.i64[0]) >> 3;
        if (v192 < 129)
        {
          v195 = 0;
LABEL_226:
          sub_2623315EC(v186.i64[0], v186.i64[1], &v321, v192, 0, v195);
        }

        else
        {
          v193 = (v186.i64[1] - v186.i64[0]) >> 3;
          while (1)
          {
            v194 = operator new(8 * v193, MEMORY[0x277D826F0]);
            if (v194)
            {
              break;
            }

            v195 = v193 >> 1;
            v196 = v193 > 1;
            v193 >>= 1;
            if (!v196)
            {
              goto LABEL_226;
            }
          }

          v198 = v194;
          sub_2623315EC(v186.i64[0], v186.i64[1], &v321, v192, v194, v193);
          operator delete(v198);
        }

        v199 = __p.i64[0];
        v200 = v298;
        v201 = v298[*__p.i64[0]];
        v9 = a3;
        v7 = a7;
        if ((*(*(*a4 + 24 * v201) + 4 * v285) / *&v330[4 * v201]) <= 0.7)
        {
          goto LABEL_353;
        }

        v202 = *(v328.i64[0] + 4 * *__p.i64[0]);
        if (v202 <= 0.2 || (v202 - *(v328.i64[0] + 4 * *(__p.i64[0] + 8))) <= 0.1)
        {
          goto LABEL_353;
        }

        v321 = 0uLL;
        v322 = 0;
        v204 = *a1;
        v203 = a1[1];
        if (v203 == *a1)
        {
          v207 = 0;
        }

        else
        {
          v205 = 0;
          do
          {
            if (v38 != v200)
            {
              v206 = v200;
              while (v205 != *v206)
              {
                if (++v206 == v38)
                {
                  goto LABEL_240;
                }
              }

              if (v206 != v38)
              {
                sub_262236B50(&v321, &v204[12 * v205]);
                v204 = *a1;
                v203 = a1[1];
                v200 = v298;
              }
            }

LABEL_240:
            ++v205;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((v203 - v204) >> 6) > v205);
          v199 = __p.i64[0];
          v207 = v321.i64[0];
        }

        v273 = 0;
        v274 = *v199;
        v275 = 0;
        do
        {
          v275 = vadd_f32(v275, *(v207 + 192 * *v199 + v273));
          v273 += 16;
        }

        while (v273 != 128);
        if (v321.i64[1] != v207)
        {
          v276 = 0;
          *v197.f32 = vmul_f32(v275, 0x3E0000003E000000);
          v197.i32[2] = v299.i32[2];
          _Q3 = vsubq_f32(v197, v299);
          _Q4 = v294;
          __asm { FMLA            S2, S4, V3.S[2] }

          v280 = 0xAAAAAAAAAAAAAAABLL * ((v321.i64[1] - v207) >> 6);
          if (v280 <= 1)
          {
            v280 = 1;
          }

          v281 = 999.0;
          do
          {
            if (v276 != v274)
            {
              v282 = 0;
              _Q4.i64[0] = 0;
              do
              {
                *_Q4.f32 = vadd_f32(*_Q4.f32, *(v207 + v282));
                v282 += 16;
              }

              while (v282 != 128);
              *_Q4.f32 = vmul_f32(*_Q4.f32, 0x3E0000003E000000);
              _Q4.i32[2] = v299.i32[2];
              _Q4 = vsubq_f32(_Q4, v299);
              _S6 = v294.i32[0];
              __asm { FMLA            S5, S6, V4.S[2] }

              _Q4.f32[0] = vabds_f32(_S2, _S5);
              if (_Q4.f32[0] < v281)
              {
                v281 = _Q4.f32[0];
              }
            }

            ++v276;
            v207 += 192;
          }

          while (v276 != v280);
          if (v281 < 0.4)
          {
            sub_2621C7CD0(&v314, &v298[v274]);
          }
        }

        v325.i64[0] = &v321;
        sub_2621EAAB0(&v325);
        v199 = __p.i64[0];
        if (__p.i64[0])
        {
LABEL_353:
          __p.i64[1] = v199;
          operator delete(v199);
        }

        if (v326)
        {
          *(&v326 + 1) = v326;
          operator delete(v326);
        }

        if (v328.i64[0])
        {
          v328.i64[1] = v328.i64[0];
          operator delete(v328.i64[0]);
        }

        if (v330)
        {
          v331 = v330;
          operator delete(v330);
        }

        v37 = v298;
        if (!v298)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v314 = 0;
        v315 = 0;
        v316 = 0;
        if (!v311)
        {
          goto LABEL_25;
        }
      }

      v312 = v37;
      operator delete(v37);
LABEL_25:
      v40 = v314;
      if (v315 != v314)
      {
        if (((v315 - v314) >> 2) <= 1)
        {
          v41 = 1;
        }

        else
        {
          v41 = (v315 - v314) >> 2;
        }

        v42 = v314;
        do
        {
          sub_2621C7CD0(a5, v42);
          v42 += 4;
          --v41;
        }

        while (v41);
      }

      goto LABEL_95;
    }

    v78 = v317;
    if (v318 == v317)
    {
      goto LABEL_203;
    }

    v79 = 0;
    v330 = 0;
    v331 = 0;
    v80 = (v318 - v317) >> 2;
    v332 = 0;
    do
    {
      v81 = *a5;
      v82 = a5[1];
      v83 = &v78[4 * v79];
      if (*a5 != v82)
      {
        while (*v81 != *v83)
        {
          v81 += 4;
          if (v81 == v82)
          {
            goto LABEL_84;
          }
        }
      }

      if (v81 == v82)
      {
LABEL_84:
        sub_2621C7CD0(&v330, v83);
      }

      ++v79;
    }

    while (v80 > v79);
    v40 = v330;
    if (v331 - v330 != 8)
    {
      goto LABEL_95;
    }

    v84 = *(v330 + 1);
    if (*(*(*a4 + 24 * *v330) + 4 * v84) > 0.0)
    {
      v85 = *a1;
      v86 = (*a1 + 192 * *v330);
      v328 = v297;
      v87 = sub_262330BE4(v86, &v328);
      v88 = &v85[12 * v84];
      v89.f32[0] = sub_262330BE4(v88, &v328);
      v90 = 0;
      v91.i64[0] = 0;
      _Q1.i32[0] = 0;
      do
      {
        *v91.f32 = vadd_f32(*v91.f32, *v86[v90].f32);
        _Q1.f32[0] = _Q1.f32[0] + COERCE_FLOAT(v86[v90++].i64[1]);
      }

      while (v90 != 8);
      v93 = 0;
      *v91.f32 = vmul_f32(*v91.f32, 0x3E0000003E000000);
      v94 = 0;
      v95 = 0.0;
      do
      {
        v94 = vadd_f32(v94, *v88[v93].f32);
        v95 = v95 + COERCE_FLOAT(v88[v93++].i64[1]);
      }

      while (v93 != 8);
      v91.f32[2] = _Q1.f32[0] * 0.125;
      *_Q1.f32 = vmul_f32(v94, 0x3E0000003E000000);
      _Q1.f32[2] = v95 * 0.125;
      _Q2 = vsubq_f32(_Q1, v91);
      _Q3 = vcvtq_f64_f32(v292);
      *_Q3.f64 = sqrt(v294.f32[0] * v294.f32[0] + vaddvq_f64(vmulq_f64(_Q3, _Q3)));
      *_Q3.f64 = v294.f32[0] / *_Q3.f64;
      __asm { FMLA            S1, S3, V2.S[2] }

      v101 = (fabsf(_Q1.f32[0]) + -0.03);
      *&v101 = v87 * 0.5 + v89.f32[0] * 0.5 - v101;
      if (*&v101 >= 0.0)
      {
        v102 = 0;
        v89.i64[0] = 0;
        v103 = vdupq_lane_s32(*&vcgtq_f32(_Q1, v89), 0);
        v104 = vnegq_f32(v297);
        v105 = vbslq_s8(v103, v297, v104);
        *v104.i32 = *&v101 * -0.5;
        *&v101 = *&v101 * 0.5;
        v106 = vdupq_lane_s32(*v104.i8, 0);
        v107 = vdupq_lane_s32(*&v101, 0);
        do
        {
          v86[v102] = vmlaq_f32(v86[v102], v105, v106);
          v88[v102] = vmlaq_f32(v88[v102], v105, v107);
          ++v102;
        }

        while (v102 != 8);
      }

LABEL_95:
      if (!v40)
      {
        goto LABEL_202;
      }
    }

LABEL_190:
    v181 = v40;
LABEL_201:
    operator delete(v181);
LABEL_202:
    v78 = v317;
LABEL_203:
    if (v78)
    {
      operator delete(v78);
    }

    v11 = v290;
  }

  while (v290 != 4);
}

void sub_2623338C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  *(v64 - 256) = &a59;
  sub_2621EAAB0((v64 - 256));
  if (__p)
  {
    a64 = __p;
    operator delete(__p);
  }

  v66 = *(v64 - 240);
  if (v66)
  {
    *(v64 - 232) = v66;
    operator delete(v66);
  }

  v67 = *(v64 - 208);
  if (v67)
  {
    *(v64 - 200) = v67;
    operator delete(v67);
  }

  if (a37)
  {
    operator delete(a37);
  }

  v68 = *(v64 - 184);
  if (v68)
  {
    *(v64 - 176) = v68;
    operator delete(v68);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a40)
  {
    operator delete(a40);
  }

  _Unwind_Resume(a1);
}

void sub_262333B04(uint64_t a1, const char *a2, _DWORD *a3)
{
  v431 = *MEMORY[0x277D85DE8];
  v359 = 0uLL;
  v360 = 0;
  v357 = 0;
  v356 = 0;
  v358 = 0;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (*a2 == v4)
  {
    goto LABEL_102;
  }

  v5 = 0;
  do
  {
    if ((objc_msgSend_isEqualToString_(*(v3 + 16), a2, @"Chair") & 1) != 0 || (objc_msgSend_isEqualToString_(*(v3 + 16), v6, @"Table") & 1) != 0 || objc_msgSend_isEqualToString_(*(v3 + 16), v7, @"Storage"))
    {
      sub_262236B50(&v359, v3);
    }

    v5 += objc_msgSend_isEqualToString_(*(v3 + 16), v8, @"Chair");
    v3 += 12;
  }

  while (v3 != v4);
  if (!v5 || (v9 = v359, v359 == *(&v359 + 1)))
  {
LABEL_102:
    v54 = *a2;
    v55 = *(a2 + 1);
    while (v54 != v55)
    {
      sub_262236B50(&v356, v54);
      v54 += 12;
    }

    if (qword_27FF0C060 != -1)
    {
      dispatch_once(&qword_27FF0C060, &unk_2874EE100);
    }

    v56 = qword_27FF0C058;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2621C3000, v56, OS_LOG_TYPE_DEBUG, "Skip Chair Beautification since there is no chair.", buf, 2u);
    }

    memset(buf, 0, sizeof(buf));
    *v417 = 0;
    sub_2622395E8(buf, v356, v357, 0xAAAAAAAAAAAAAAABLL * ((v357 - v356) >> 6));
    *&v417[16] = 0;
    *a1 = *buf;
    v57 = *v417;
    *v417 = 0uLL;
    memset(buf, 0, sizeof(buf));
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = v57;
    v392[0] = buf;
    sub_2621EAAB0(v392);
    goto LABEL_110;
  }

  v411 = 0uLL;
  v412 = 0;
  memset(buf, 0, sizeof(buf));
  *v417 = 0;
  v392[1] = 0;
  v392[0] = 0;
  *&v393 = 0;
  v369[1] = 0;
  v369[0] = 0;
  v10 = v359;
  *&v370 = 0;
  do
  {
    v11 = *(v9 + 128);
    if (objc_msgSend_isEqualToString_(v11, v12, @"Chair"))
    {
      LODWORD(v361[0]) = -1431655765 * ((v10 - v359) >> 6);
      sub_2621C7CD0(buf, v361);
    }

    else if (objc_msgSend_isEqualToString_(v11, v13, @"Table"))
    {
      LODWORD(v361[0]) = -1431655765 * ((v10 - v359) >> 6);
      sub_2621C7CD0(v392, v361);
    }

    else if (objc_msgSend_isEqualToString_(v11, v14, @"Storage"))
    {
      LODWORD(v361[0]) = -1431655765 * ((v10 - v359) >> 6);
      sub_2621C7CD0(v369, v361);
    }

    v9 += 192;
    v10 += 192;
  }

  while (v9 != *(&v359 + 1));
  v15 = *buf;
  v361[1] = 0;
  v361[0] = 0;
  v362.i64[0] = 0;
  v381[1] = 0;
  v381[0] = 0;
  *&v382 = 0;
  v351[1] = 0;
  v351[0] = 0;
  *&v352 = 0;
  if (*&buf[8] != *buf)
  {
    if (((*&buf[8] - *buf) >> 2) <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = (*&buf[8] - *buf) >> 2;
    }

    v17 = *buf;
    do
    {
      sub_262329E20(v381, (v359 + 192 * *v17));
      sub_2621C8F2C(v351, (v359 + 192 * *v17++ + 136));
      --v16;
    }

    while (v16);
  }

  sub_26232F8A4(@"Chair", v381, v351, v361);
  v18 = v361[0];
  v19 = v361[1];
  if (v361[0] != v361[1])
  {
    v20 = v361[0];
    do
    {
      sub_262236B50(&v411, (v359 + 192 * v15[*v20++]));
    }

    while (v20 != v19);
  }

  v381[1] = v381[0];
  v351[1] = v351[0];
  v361[1] = v18;
  v21 = v392[0];
  if (v392[1] != v392[0])
  {
    if (((v392[1] - v392[0]) >> 2) <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = (v392[1] - v392[0]) >> 2;
    }

    v23 = v392[0];
    do
    {
      sub_262329E20(v381, (v359 + 192 * *v23));
      sub_2621C8F2C(v351, (v359 + 192 * *v23++ + 136));
      --v22;
    }

    while (v22);
  }

  sub_26232F8A4(@"Table", v381, v351, v361);
  v24 = v361[0];
  v25 = v361[1];
  if (v361[0] != v361[1])
  {
    v26 = v361[0];
    do
    {
      sub_262236B50(&v411, (v359 + 192 * v21[*v26++]));
    }

    while (v26 != v25);
  }

  v381[1] = v381[0];
  v351[1] = v351[0];
  v361[1] = v24;
  v27 = v369[0];
  if (v369[1] != v369[0])
  {
    if (((v369[1] - v369[0]) >> 2) <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = (v369[1] - v369[0]) >> 2;
    }

    v29 = v369[0];
    do
    {
      sub_262329E20(v381, (v359 + 192 * *v29));
      sub_26220F644(&__p, (v359 + 192 * *v29));
      *&v408 = (*(__p + 3) * *(__p + 4)) * *(__p + 5);
      sub_2621C8F2C(v351, &v408);
      if (*&__p != 0.0)
      {
        v414 = __p;
        operator delete(__p);
      }

      ++v29;
      --v28;
    }

    while (v28);
  }

  sub_26232F8A4(@"Storage", v381, v351, v361);
  v30 = v361[0];
  v31 = v361[1];
  if (v361[0] != v361[1])
  {
    v32 = v361[0];
    do
    {
      sub_262236B50(&v411, (v359 + 192 * v27[*v32++]));
    }

    while (v32 != v31);
  }

  if (v351[0])
  {
    v351[1] = v351[0];
    operator delete(v351[0]);
  }

  if (v381[0])
  {
    operator delete(v381[0]);
  }

  if (v30)
  {
    operator delete(v30);
  }

  if (v27)
  {
    operator delete(v27);
  }

  if (v21)
  {
    operator delete(v21);
  }

  if (v15)
  {
    operator delete(v15);
  }

  sub_2621EADF4(&v359);
  v359 = v411;
  v360 = v412;
  v412 = 0;
  v411 = 0uLL;
  *buf = &v411;
  sub_2621EAAB0(buf);
  v355 = 0;
  v353 = 0u;
  v354 = 0u;
  *v351 = 0u;
  v352 = 0u;
  v33 = *(&v359 + 1);
  v34 = v359;
  v35 = 0xAAAAAAAAAAAAAAABLL * ((*(&v359 + 1) - v359) >> 6);
  LODWORD(v392[0]) = 0;
  sub_2621CD1D8(buf, v35);
  sub_262330D5C(&v352 + 1, v35, buf);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  LODWORD(v392[0]) = 0;
  sub_2621CD1D8(buf, v35);
  sub_262330D5C(v351, v35, buf);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  LODWORD(v392[0]) = 0;
  sub_2621CD1D8(buf, v35);
  sub_262330D5C(&v354, v35, buf);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (v33 != v34)
  {
    v36 = 0;
    if (v35 <= 1)
    {
      v35 = 1;
    }

    do
    {
      v37 = 0;
      for (i = 0; i != v35; ++i)
      {
        memset(buf, 0, sizeof(buf));
        *v417 = 0;
        sub_26220FA14(buf, (v359 + 192 * v36), v359 + v37);
        *(*(v351[0] + 3 * v36) + 4 * i) = *buf;
        *(*(*(&v352 + 1) + 24 * v36) + 4 * i) = *&buf[4];
        *(*(v354 + 24 * v36) + 4 * i) = *&buf[8];
        v37 += 192;
      }

      ++v36;
    }

    while (v36 != v35);
  }

  v349 = 0;
  v348 = 0;
  v350 = 0;
  LODWORD(v392[0]) = 0;
  sub_2621CD1D8(buf, 0xAAAAAAAAAAAAAAABLL * ((*(&v359 + 1) - v359) >> 6));
  LODWORD(v369[0]) = 0;
  sub_2621CD1D8(v392, 0xAAAAAAAAAAAAAAABLL * ((*(&v359 + 1) - v359) >> 6));
  if (*(&v359 + 1) != v359)
  {
    sub_26220F71C(v359);
  }

  LODWORD(v369[0]) = 0;
  if (v392[0])
  {
    v392[1] = v392[0];
    operator delete(v392[0]);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  memset(v347, 0, sizeof(v347));
  sub_26220A888(v347, v351[0], v351[1], 0xAAAAAAAAAAAAAAABLL * ((v351[1] - v351[0]) >> 3));
  memset(v346, 0, sizeof(v346));
  sub_26220A888(v346, *(&v352 + 1), v353, 0xAAAAAAAAAAAAAAABLL * ((v353 - *(&v352 + 1)) >> 3));
  memset(v345, 0, sizeof(v345));
  sub_26220A888(v345, v354, *(&v354 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v354 + 1) - v354) >> 3));
  if (v348 != v349)
  {
    sub_262331248(buf, &v359, v348, v349);
    sub_2621EADF4(&v359);
    v359 = *buf;
    v360 = *v417;
    *v417 = 0;
    memset(buf, 0, sizeof(buf));
    v392[0] = buf;
    sub_2621EAAB0(v392);
    sub_262331354(v347, &v348);
    sub_262331354(v346, &v348);
    sub_262331354(v345, &v348);
  }

  *buf = 0;
  sub_2621DE86C(&v343, 0xAAAAAAAAAAAAAAABLL * ((*(&v359 + 1) - v359) >> 6));
  *buf = 0;
  sub_2621DE86C(v392, 0xAAAAAAAAAAAAAAABLL * ((*(&v359 + 1) - v359) >> 6));
  v41 = *(&v359 + 1);
  v42 = v359;
  if (*(&v359 + 1) != v359)
  {
    v43 = 0;
    do
    {
      if ((objc_msgSend_isEqualToString_(*(v42 + 192 * v43 + 128), v39, @"Chair") & 1) == 0 || (v44 = v359, *(&v359 + 1) == v359))
      {
        v48 = -1;
      }

      else
      {
        v45 = 0;
        v46 = 0;
        v47 = (v359 + 192 * v43);
        v48 = -1;
        v49 = 0.0;
        do
        {
          isEqualToString = objc_msgSend_isEqualToString_(*(v44 + v45 + 128), v39, @"Table");
          v44 = v359;
          if ((isEqualToString & 1) != 0 || (v52 = objc_msgSend_isEqualToString_(*(v359 + v45 + 128), v51, @"Storage"), v44 = v359, v52) && (v40.f32[0] = *(v359 + v45 + 72) - *(v359 + v45 + 8), v40.f32[0] < 1.3))
          {
            memset(buf, 0, sizeof(buf));
            *v417 = 0;
            sub_26220FA14(buf, v47, v44 + v45);
            v40.i32[0] = *buf;
            if (*buf > v49)
            {
              v48 = v46;
              v49 = *buf;
            }

            v44 = v359;
          }

          ++v46;
          v45 += 192;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((*(&v359 + 1) - v44) >> 6) > v46);
        if ((v48 & 0x80000000) == 0)
        {
          sub_26220F644(buf, (v44 + 192 * v48));
          sub_26220F644(v369, (v359 + 192 * v43));
          v53 = v369[0];
          if ((*(*buf + 12) * *(*buf + 16)) >= ((*(v369[0] + 3) * *(v369[0] + 4)) + (*(v369[0] + 3) * *(v369[0] + 4))) && vabds_f32(*(v359 + 192 * v43 + 8), *(v359 + 192 * v48 + 8)) <= 0.3)
          {
            ++*(v392[0] + v48);
          }

          else
          {
            v48 = -1;
          }

          v369[1] = v53;
          operator delete(v53);
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }
        }
      }

      if (v43 >= (v344 - v343) >> 2)
      {
        sub_262333AEC();
      }

      *(v343 + v43++) = v48;
      v41 = *(&v359 + 1);
      v42 = v359;
    }

    while (v43 < 0xAAAAAAAAAAAAAAABLL * ((*(&v359 + 1) - v359) >> 6));
  }

  if (v41 != v42)
  {
    v59 = 0;
    v60 = 0;
    do
    {
      if (objc_msgSend_isEqualToString_(*(v42 + v59 + 128), v39, @"Chair", *&v40))
      {
        if (v60 >= (v344 - v343) >> 2)
        {
          sub_262333AEC();
        }

        v61 = *(v343 + v60);
        if ((v61 & 0x80000000) == 0 && *(v392[0] + v61) == 1 && ((objc_msgSend_isEqualToString_(*(v359 + 192 * v61 + 128), v39, @"Cabinet") & 1) != 0 || objc_msgSend_isEqualToString_(*(v359 + 192 * v61 + 128), v39, @"Storage")))
        {
          v40 = vmul_f32(vsub_f32(*(v359 + v59 + 16), *(v359 + v59)), vsub_f32(vmul_f32(vadd_f32(*(v359 + 192 * v61), *(v359 + 192 * v61 + 32)), 0x3F0000003F000000), vmul_f32(vadd_f32(*(v359 + v59), *(v359 + v59 + 32)), 0x3F0000003F000000)));
          v40.f32[0] = vaddv_f32(v40);
          if (v40.f32[0] < 0.0)
          {
            if (v60 >= (v344 - v343) >> 2)
            {
              sub_262333AEC();
            }

            *(v343 + v60) = -1;
          }
        }
      }

      ++v60;
      v42 = v359;
      v59 += 192;
    }

    while (v60 < 0xAAAAAAAAAAAAAAABLL * ((*(&v359 + 1) - v359) >> 6));
  }

  if (v392[0])
  {
    v392[1] = v392[0];
    operator delete(v392[0]);
  }

  v62 = v343;
  v63 = v344;
  v342[1] = 0;
  v342[0] = 0;
  v341 = v342;
  if (v343 == v344)
  {
    v339 = 0;
    v338 = 0;
    v340 = 0;
  }

  else
  {
    do
    {
      sub_2621CB3E4(&v341, v342, *v62++);
    }

    while (v62 != v63);
    v64 = v341;
    v339 = 0;
    v338 = 0;
    v340 = 0;
    if (v341 != v342)
    {
      do
      {
        if ((*(v64 + 7) & 0x80000000) == 0)
        {
          sub_2621C7CD0(&v338, v64 + 7);
        }

        v65 = v64[1];
        if (v65)
        {
          do
          {
            v66 = v65;
            v65 = *v65;
          }

          while (v65);
        }

        else
        {
          do
          {
            v66 = v64[2];
            _ZF = *v66 == v64;
            v64 = v66;
          }

          while (!_ZF);
        }

        v64 = v66;
      }

      while (v66 != v342);
    }
  }

  v299 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (*(&v359 + 1) != v359)
  {
    v67 = 0;
    v68 = 0;
    do
    {
      v69 = *(v343 + v68);
      if ((v69 & 0x80000000) == 0)
      {
        v70 = 0;
        v71 = (v359 + 192 * v68);
        v72 = *v71;
        v73 = v71[1];
        v74 = v71[2];
        v418 = v71[3];
        *&v417[16] = v74;
        *v417 = v73;
        *buf = v72;
        v75 = v71[4];
        v76 = v71[5];
        v77 = v71[6];
        v422 = v71[7];
        v421 = v77;
        v420 = v76;
        v419 = v75;
        v78 = v359 + v67;
        v79 = 0;
        v80 = 0.0;
        do
        {
          v79 = vadd_f32(v79, *(v78 + v70));
          v80 = v80 + COERCE_FLOAT(*(v78 + v70 + 8));
          v70 += 16;
        }

        while (v70 != 128);
        v81 = (v359 + 192 * v69);
        v308 = v71[1];
        *objb = *v71;
        *v313 = v81[1];
        *v304 = v81[2];
        v306 = *v81;
        LODWORD(v392[0]) = 0;
        sub_2621CD1D8(v361, 2uLL);
        v82 = v361[0];
        v83 = vsub_f32(*&v308, objb[0]);
        v84 = vcvtq_f64_f32(v83);
        v84.f64[0] = sqrt(vaddvq_f64(vmulq_f64(v84, v84)));
        *v84.f64 = v84.f64[0];
        *v361[0] = vdiv_f32(v83, vdup_lane_s32(*&v84.f64[0], 0));
        v415 = 0;
        *&__p = 0.0;
        v414 = 0;
        sub_2621C8E70(&__p, v82, v361[1], (v361[1] - v82) >> 2);
        LODWORD(v392[0]) = 0;
        sub_2621CD1D8(v381, 2uLL);
        LODWORD(v369[0]) = 0;
        sub_2621CD1D8(v392, 2uLL);
        v85 = vsub_f32(v313[0], *&v306);
        v86 = vcvtq_f64_f32(v85);
        v86.f64[0] = sqrt(vaddvq_f64(vmulq_f64(v86, v86)));
        *v86.f64 = v86.f64[0];
        *v392[0] = vdiv_f32(v85, vdup_lane_s32(*&v86.f64[0], 0));
        LODWORD(v408) = 0;
        sub_2621CD1D8(v369, 2uLL);
        v87 = vsub_f32(v304[0], v313[0]);
        v88 = vcvtq_f64_f32(v87);
        v88.f64[0] = sqrt(vaddvq_f64(vmulq_f64(v88, v88)));
        *v88.f64 = v88.f64[0];
        v89 = v369[0];
        v90 = vdiv_f32(v87, vdup_lane_s32(*&v88.f64[0], 0));
        *v369[0] = v90;
        v91 = __p;
        *&v88.f64[0] = vdup_lane_s32(v90, 0);
        v90.i32[0] = *(v392[0] + 1);
        LODWORD(v88.f64[0]) = *v392[0];
        v92 = vabs_f32(vmla_n_f32(vmul_n_f32(v90, *(__p + 1)), *&v88.f64[0], *__p));
        v93 = vcgt_f32(v92, vdup_lane_s32(v92, 1)).u8[0];
        if (v93)
        {
          v94 = v392[0];
        }

        else
        {
          v94 = v89;
        }

        v95 = &v392[1];
        if ((v93 & 1) == 0)
        {
          v95 = &v369[1];
        }

        sub_2621CA9DC(v381, v94, *v95, (*v95 - v94) >> 2);
        if ((vmuls_lane_f32(v91[1], *v381[0], 1) + (*v91 * COERCE_FLOAT(*v381[0]))) < 0.0)
        {
          *v381[0] = vneg_f32(*v381[0]);
        }

        if (v369[0])
        {
          v369[1] = v369[0];
          operator delete(v369[0]);
        }

        if (v392[0])
        {
          v392[1] = v392[0];
          operator delete(v392[0]);
        }

        operator delete(v91);
        v97 = *v361[0];
        v96 = *(v361[0] + 1);
        v99 = *v381[0];
        v98 = *(v381[0] + 1);
        v381[1] = v381[0];
        operator delete(v381[0]);
        if (v361[0])
        {
          v361[1] = v361[0];
          operator delete(v361[0]);
        }

        v100 = fmin(fmax(((v96 * v98) + (v97 * v99)), -1.0), 1.0);
        v101 = acosf(v100);
        if (((v97 * v98) - (v96 * v99)) < 0.0)
        {
          v101 = -v101;
        }

        sub_262331098(v369, v101);
      }

      ++v68;
      v67 += 192;
    }

    while (v68 < 0xAAAAAAAAAAAAAAABLL * ((*(&v359 + 1) - v359) >> 6));
  }

  v336 = 0;
  v335 = 0;
  v337 = 0;
  v305 = v338;
  if (v339 == v338)
  {
    v236 = 0;
    v235 = 0;
    goto LABEL_291;
  }

  v102 = 0;
  v103 = v338;
  do
  {
    memset(v334, 0, sizeof(v334));
    memset(v333, 0, sizeof(v333));
    v104 = v103;
    sub_262331FF8(&v359, &v343, v103[v102], v346, &v335, v334, 1);
    v105 = v104[v102];
    *buf = 0;
    *&buf[8] = 0;
    v362.i64[0] = 0;
    v361[0] = 0;
    v361[1] = 0;
    sub_2621DC430(v361, buf, &buf[12], 3uLL);
    v302 = v102;
    v106 = *(&v359 + 1);
    v107 = v359;
    if (*(&v359 + 1) != v359)
    {
      v108 = 0;
      v109 = 0;
      v110 = v335;
      v111 = v336;
      v112 = 0.0;
      v113 = 0.0;
      v114 = 0.0;
      v115 = v361[0];
      v116 = 0.0;
      v117 = 0.0;
      v118 = 0.0;
      do
      {
        if (*(v343 + v108) == v105)
        {
          v119 = v110;
          if (v110 != v111)
          {
            v119 = v110;
            while (v108 != *v119)
            {
              if (++v119 == v111)
              {
                goto LABEL_171;
              }
            }
          }

          if (v119 == v111)
          {
LABEL_171:
            sub_262331500(buf, (v107 + 192 * v108));
            if (v115)
            {
              v361[1] = v115;
              operator delete(v115);
            }

            v115 = *buf;
            v361[0] = *buf;
            v362.i64[0] = *v417;
            v120 = *(*buf + 4);
            v114 = v114 + **buf;
            v113 = v113 + v120;
            v121 = *(*buf + 8);
            v112 = v112 + v121;
            if (**buf > v118)
            {
              v118 = **buf;
            }

            if (v120 > v117)
            {
              v117 = *(*buf + 4);
            }

            if (v121 > v116)
            {
              v116 = *(*buf + 8);
            }

            v361[1] = *buf;
            ++v109;
            v106 = *(&v359 + 1);
            v107 = v359;
          }
        }

        ++v108;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v106 - v107) >> 6) > v108);
    }

    if (v106 == v107)
    {
      v106 = v107;
    }

    else
    {
      v122 = 0;
      v123 = 0;
      do
      {
        if (*(v343 + v123) == v105)
        {
          v124 = v335;
          if (v335 != v336)
          {
            v124 = v335;
            while (v123 != *v124)
            {
              if (++v124 == v336)
              {
                goto LABEL_190;
              }
            }
          }

          if (v124 == v336)
          {
LABEL_190:
            v125 = 0;
            v126 = (v107 + 192 * v123);
            v127 = v107 + v122;
            v128 = 0;
            v129 = 0.0;
            do
            {
              v128 = vadd_f32(v128, *(v127 + v125));
              v129 = v129 + COERCE_FLOAT(*(v127 + v125 + 8));
              v125 += 16;
            }

            while (v125 != 128);
            v130 = v126[2];
            v131 = v126[3];
            v132 = *v126;
            v393 = v126[1];
            *v392 = v132;
            v395 = v131;
            v133 = v126[6];
            v134 = v126[7];
            v135 = v126[5];
            v396 = v126[4];
            v394 = v130;
            v399 = v134;
            v398 = v133;
            v397 = v135;
            __asm { FMOV            V13.2S, #-1.0 }

            v381[0] = _D13;
            LODWORD(v381[1]) = -1082130432;
            *v417 = 0;
            memset(buf, 0, sizeof(buf));
            sub_2621DC430(buf, v381, &v381[1] + 4, 3uLL);
            __asm { FMOV            V12.2S, #1.0 }

            *&__p = -*&_D12;
            LODWORD(v414) = -1082130432;
            memset(&v417[8], 0, 24);
            sub_2621DC430(&v417[8], &__p, &v414 + 4, 3uLL);
            *&v411 = _D12;
            DWORD2(v411) = -1082130432;
            *&v419 = 0;
            v418 = 0uLL;
            sub_2621DC430(&v418, &v411, &v411 + 12, 3uLL);
            v408 = -*&_D13;
            v409 = -1082130432;
            v420 = 0uLL;
            *(&v419 + 1) = 0;
            sub_2621DC430(&v419 + 8, &v408, &v410, 3uLL);
            v390 = _D13;
            LODWORD(v391) = 1065353216;
            *&v422 = 0;
            v421 = 0uLL;
            sub_2621DC430(&v421, &v390, &v391 + 4, 3uLL);
            *&v388 = -*&_D12;
            LODWORD(v389) = 1065353216;
            v423 = 0;
            v424 = 0;
            *(&v422 + 1) = 0;
            sub_2621DC430(&v422 + 8, &v388, &v389 + 4, 3uLL);
            v386[0] = _D12;
            LODWORD(v386[1]) = 1065353216;
            v426 = 0;
            v427 = 0;
            v425 = 0;
            sub_2621DC430(&v425, v386, &v386[1] + 4, 3uLL);
            v383 = -*&_D13;
            v384 = 1065353216;
            v429 = 0;
            v430 = 0;
            v428 = 0;
            sub_2621DC430(&v428, &v383, &v385, 3uLL);
            v369[1] = 0;
            v369[0] = 0;
            *&v370 = 0;
            sub_2622180B8(v369, buf, &v431, 8uLL);
          }
        }

        ++v123;
        v122 += 192;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v106 - v107) >> 6) > v123);
    }

    if (v361[0])
    {
      operator delete(v361[0]);
      v106 = *(&v359 + 1);
      v107 = v359;
    }

    v305 = v338;
    v141 = v302;
    v142 = v338[v302];
    if (v106 != v107)
    {
      v143 = 0;
      v144 = 0;
      v145 = v107 + 8;
      v146 = 0.0;
      v147 = 10000.0;
      do
      {
        if (*(v343 + v143) == v142)
        {
          v148 = v335;
          if (v335 != v336)
          {
            v148 = v335;
            while (v143 != *v148)
            {
              if (++v148 == v336)
              {
                goto LABEL_207;
              }
            }
          }

          if (v148 == v336)
          {
LABEL_207:
            v149 = 0;
            v150 = 0.0;
            do
            {
              v150 = v150 + *(v145 + v149);
              v149 += 16;
            }

            while (v149 != 128);
            v151 = v150 * 0.125;
            ++v144;
            v146 = v146 + v151;
            if (v151 < v147)
            {
              v147 = v151;
            }
          }
        }

        ++v143;
        v145 += 192;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v106 - v107) >> 6) > v143);
      if (v106 != v107)
      {
        v152 = 0;
        v153 = ((v146 / v144) + v147) * 0.5;
        v154 = v335;
        v155 = v336;
        v156 = 8;
        do
        {
          if (*(v343 + v152) == v142)
          {
            v157 = v154;
            if (v154 != v155)
            {
              v157 = v154;
              while (v152 != *v157)
              {
                if (++v157 == v155)
                {
                  goto LABEL_221;
                }
              }
            }

            if (v157 == v155)
            {
LABEL_221:
              v158 = 0;
              v159 = v107 + v156;
              v160 = 0.0;
              do
              {
                v160 = v160 + *(v159 + v158);
                v158 += 16;
              }

              while (v158 != 128);
              v161 = 0;
              v162 = (v160 * 0.125) - v153;
              do
              {
                *(v359 + v156 + v161) = *(v359 + v156 + v161) - v162;
                v161 += 16;
              }

              while (v161 != 128);
              v106 = *(&v359 + 1);
              v107 = v359;
            }
          }

          ++v152;
          v156 += 192;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((v106 - v107) >> 6) > v152);
        v142 = v305[v302];
      }
    }

    sub_262331FF8(&v359, &v343, v142, v346, &v335, v334, 2);
    if ((*a3 - 1) <= 1)
    {
      v164 = v305[v302];
      v165 = (v359 + 192 * v164);
      v166 = v165[2];
      v168 = *v165;
      v167 = v165[1];
      v418 = v165[3];
      *&v417[16] = v166;
      *buf = v168;
      *v417 = v167;
      v169 = v165[6];
      v171 = v165[4];
      v170 = v165[5];
      v422 = v165[7];
      v421 = v169;
      v419 = v171;
      v420 = v170;
      v423 = *(v165 + 16);
      LODWORD(v424) = *(v165 + 34);
      v425 = *(v165 + 18);
      v427 = 0;
      v428 = 0;
      v426 = 0;
      sub_2621C8E70(&v426, *(v165 + 19), *(v165 + 20), (*(v165 + 20) - *(v165 + 19)) >> 2);
      v172 = *(v165 + 22);
      v429 = v172;
      LOWORD(v430) = *(v165 + 92);
      v373 = v419;
      v374 = v420;
      v375 = v421;
      v376 = v422;
      *v369 = *buf;
      v370 = *v417;
      v371 = *&v417[16];
      v372 = v418;
      v414 = 0;
      *&__p = 0.0;
      v415 = 0;
      LODWORD(v392[0]) = 0;
      v173 = v344;
      v174 = v343;
      if (v344 == v343)
      {
        v177 = 0;
        v176 = 0;
        v178 = 0;
        v179 = 0;
      }

      else
      {
        v175 = 0;
        do
        {
          if (v174[v175] == v164)
          {
            sub_2621C7CD0(&__p, v392);
            v173 = v344;
            v174 = v343;
          }

          LODWORD(v392[0]) = ++v175;
        }

        while (v175 < v173 - v174);
        v176 = v414;
        v177 = __p;
        v178 = __p;
        v179 = v414;
      }

      LODWORD(v361[0]) = 0;
      sub_2621CD1D8(v392, 4uLL);
      sub_2621E1B50(&v411, (v179 - v178) >> 2);
      if (v392[0])
      {
        v392[1] = v392[0];
        operator delete(v392[0]);
      }

      LODWORD(v361[0]) = 0;
      sub_2621CD1D8(v392, 4uLL);
      v303 = v176 - v177;
      sub_2621E1B50(&v408, v303);
      v297 = v172;
      if (v392[0])
      {
        v392[1] = v392[0];
        operator delete(v392[0]);
      }

      v298 = v176;
      if (v176 != v177)
      {
        v180 = 0;
        v181 = v303;
        if (v303 <= 1)
        {
          v181 = 1;
        }

        v307 = v181;
        do
        {
          v182 = v177;
          v183 = v359 + 192 * v177[v180];
          v396 = *(v183 + 64);
          v397 = *(v183 + 80);
          v398 = *(v183 + 96);
          v399 = *(v183 + 112);
          *v392 = *v183;
          v393 = *(v183 + 16);
          v394 = *(v183 + 32);
          v395 = *(v183 + 48);
          v400 = *(v183 + 128);
          v401 = *(v183 + 136);
          v402 = *(v183 + 144);
          v404 = 0;
          v405 = 0;
          v403 = 0;
          sub_2621C8E70(&v403, *(v183 + 152), *(v183 + 160), (*(v183 + 160) - *(v183 + 152)) >> 2);
          v184 = *(v183 + 176);
          v185 = 0;
          v406 = v184;
          v407 = *(v183 + 184);
          v186 = *(v411 + 24 * v180);
          v187 = *(*&v408 + 24 * v180);
          v188 = vsubq_f32(v393, *v392);
          v189 = vcvtq_f64_f32(*v188.f32);
          v190 = vmulq_f64(v189, v189);
          v191 = sqrt(v188.f32[2] * v188.f32[2] + vaddvq_f64(v190));
          *&v191 = v191;
          *&v190.f64[0] = vdiv_f32(*v188.f32, vdup_lane_s32(*&v191, 0));
          v192 = v190;
          v192.f32[2] = v188.f32[2] / *&v191;
          v309 = v192;
          obj = LODWORD(v190.f64[0]);
          do
          {
            v193 = 0;
            v188.i64[0] = 0;
            do
            {
              *v188.f32 = vadd_f32(*v188.f32, v392[v193]);
              v193 += 2;
            }

            while (v193 != 16);
            v194 = v185 + 1;
            *v188.f32 = vmul_f32(*v188.f32, 0x3E0000003E000000);
            v195 = vsubq_f32(*&v369[2 * (v185 ^ 2)], *&v369[2 * ((v185 + 1) & 3)]);
            v196 = vcvtq_f64_f32(*v195.f32);
            v197 = vmulq_f64(v196, v196);
            v198 = sqrt(v195.f32[2] * v195.f32[2] + vaddvq_f64(v197));
            *&v198 = v198;
            *&v197.f64[0] = vdiv_f32(*v195.f32, vdup_lane_s32(*&v198, 0));
            v316 = HIDWORD(v197.f64[0]);
            v199 = v197;
            v199.f32[2] = v195.f32[2] / *&v198;
            v200 = vsubq_f32(v188, *&v369[2 * v185]).u64[0];
            *(v186 + 4 * v185) = fabsf((vmuls_lane_f32(*(&v200 + 1), *&v197.f64[0], 1) + (*&v200 * *v197.f64)) + 0.0);
            v201 = vmulq_f32(v199, v309);
            v188.f32[0] = acos(fmin(fmax((v201.f32[2] + vaddv_f32(*v201.f32)), -1.0), 1.0));
            _S2 = obj;
            _V3.S[1] = v316;
            __asm { FMLA            S1, S2, V3.S[1] }

            if (_S1 < 0.0)
            {
              v188.f32[0] = -v188.f32[0];
            }

            *(v187 + 4 * v185++) = v188.i32[0];
          }

          while (v194 != 4);

          v177 = v182;
          if (v403)
          {
            operator delete(v403);
          }

          ++v180;
        }

        while (v180 != v307);
      }

      LODWORD(v392[0]) = 0;
      v205 = v303;
      sub_2621DE86C(&v390, v303);
      LODWORD(v392[0]) = 0;
      sub_2621CD1D8(&v388, v303);
      if (v298 != v177)
      {
        v206 = 0;
        v207 = v411;
        v208 = v390;
        v209 = v408;
        v210 = v388;
        if (v303 <= 1)
        {
          v205 = 1;
        }

        while (1)
        {
          v211 = (v207 + 24 * v206);
          v212 = *v211;
          v213 = v211[1];
          v214 = v212 + 1;
          _ZF = v212 == v213 || v214 == v213;
          v216 = v212;
          if (!_ZF)
          {
            v217 = *v212;
            v216 = v212;
            v218 = v212 + 1;
            do
            {
              v219 = *v218++;
              v220 = v219;
              if (v219 < v217)
              {
                v217 = v220;
                v216 = v214;
              }

              v214 = v218;
            }

            while (v218 != v213);
          }

          v221 = v216 - v212;
          v208[v206] = v221 >> 2;
          v210[v206] = *(*(*&v209 + 24 * v206) + ((v221 << 30) >> 30));
          if (++v206 == v205)
          {
            v392[0] = 0;
            LODWORD(v392[1]) = 0;
            v387 = 0;
            v386[0] = 0;
            v386[1] = 0;
            sub_2621DC430(v386, v392, &v392[1] + 4, 3uLL);
            sub_262331500(v392, (v359 + 192 * *v177));
            if (v386[0])
            {
              operator delete(v386[0]);
            }

            *v386 = *v392;
            sub_2621C8F2C(v333, v388);
            v222 = (v359 + 192 * *v177);
            v223 = v222[2];
            v225 = *v222;
            v224 = v222[1];
            v395 = v222[3];
            v394 = v223;
            *v392 = v225;
            v393 = v224;
            v226 = v222[6];
            v228 = v222[4];
            v227 = v222[5];
            v399 = v222[7];
            v398 = v226;
            v396 = v228;
            v397 = v227;
            v400 = *(v222 + 16);
            v401 = *(v222 + 34);
            v402 = *(v222 + 18);
            v404 = 0;
            v405 = 0;
            v403 = 0;
            sub_2621C8E70(&v403, *(v222 + 19), *(v222 + 20), (*(v222 + 20) - *(v222 + 19)) >> 2);
            v229 = *(v222 + 22);
            v230 = 0;
            v406 = v229;
            v231 = *(v222 + 92);
            v365 = v396;
            v366 = v397;
            v367 = v398;
            v368 = v399;
            *v361 = *v392;
            v362 = v393;
            v363 = v394;
            v364 = v395;
            v232 = 0;
            v233 = 0.0;
            v407 = v231;
            do
            {
              v232 = vadd_f32(v232, v361[v230]);
              v233 = v233 + COERCE_FLOAT(v361[v230 + 1]);
              v230 += 2;
            }

            while (v230 != 16);
            sub_262331098(&v383, *v388);
          }
        }
      }

      if (*&v388 != 0.0)
      {
        v389 = v388;
        operator delete(v388);
      }

      if (v390)
      {
        v391 = v390;
        operator delete(v390);
      }

      v392[0] = &v408;
      sub_2621E1D40(v392);
      v392[0] = &v411;
      sub_2621E1D40(v392);
      if (v177)
      {
        operator delete(v177);
      }

      if (v426)
      {
        v427 = v426;
        operator delete(v426);
      }

      v141 = v302;
      sub_262331FF8(&v359, &v343, v305[v302], v346, &v335, v334, 3);
      if (*a3 == 1)
      {
        v234 = 4;
      }

      else
      {
        if (*a3 != 2)
        {
          goto LABEL_283;
        }

        v234 = 5;
      }

      sub_262331FF8(&v359, &v343, v305[v302], v346, &v335, v334, v234);
    }

LABEL_283:
    if (v333[0])
    {
      operator delete(v333[0]);
    }

    v102 = v141 + 1;
    v103 = v305;
  }

  while (v102 < (v339 - v305) >> 2);
  v235 = v335;
  v236 = v336;
  if (v335 != v336)
  {
    v237 = v335;
    do
    {
      objc_msgSend_addObject_(0, v163, *(v359 + 192 * *v237++ + 144));
    }

    while (v237 != v236);
  }

LABEL_291:
  sub_262331248(buf, &v359, v235, v236);
  sub_2621EADF4(&v359);
  v359 = *buf;
  v360 = *v417;
  *v417 = 0;
  memset(buf, 0, sizeof(buf));
  v392[0] = buf;
  sub_2621EAAB0(v392);
  for (j = *a2; j != *(a2 + 1); j += 12)
  {
    v241 = *(j + 16);
    if ((objc_msgSend_isEqualToString_(v241, v242, @"Chair") & 1) == 0 && (objc_msgSend_isEqualToString_(v241, v243, @"Table") & 1) == 0 && (objc_msgSend_isEqualToString_(v241, v244, @"Storage") & 1) == 0)
    {
      sub_262236B50(&v359, j);
    }
  }

  v331 = 0u;
  v332 = 0u;
  v329 = 0u;
  v330 = 0u;
  v245 = objc_msgSend_allValues(v299, v238, v239);
  obja = v245;
  v247 = objc_msgSend_countByEnumeratingWithState_objects_count_(v245, v246, &v329, v380, 16);
  if (v247)
  {
    v248 = 0;
    v314 = *v330;
    do
    {
      for (k = 0; k != v247; ++k)
      {
        if (*v330 != v314)
        {
          objc_enumerationMutation(obja);
        }

        v250 = *(*(&v329 + 1) + 8 * k);
        v325 = 0u;
        v326 = 0u;
        v327 = 0u;
        v328 = 0u;
        v251 = v250;
        v253 = objc_msgSend_countByEnumeratingWithState_objects_count_(v251, v252, &v325, v379, 16);
        if (v253)
        {
          v254 = 0;
          v255 = *v326;
          do
          {
            for (m = 0; m != v253; ++m)
            {
              if (*v326 != v255)
              {
                objc_enumerationMutation(v251);
              }

              v257 = *(*(&v325 + 1) + 8 * m);
              if ((objc_msgSend_containsObject_(0, v258, v257) & 1) == 0)
              {
                v260 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v259, v248);
                objc_msgSend_setObject_forKeyedSubscript_(0, v261, v260, v257);

                v254 = 1;
              }
            }

            v253 = objc_msgSend_countByEnumeratingWithState_objects_count_(v251, v262, &v325, v379, 16);
          }

          while (v253);
          v263 = v254 & 1;
        }

        else
        {
          v263 = 0;
        }

        v248 = (v248 + v263);
      }

      v245 = obja;
      v247 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v264, &v329, v380, 16);
    }

    while (v247);
  }

  v266 = *(&v359 + 1);
  for (n = v359; n != v266; n += 192)
  {
    sub_262236B50(&v356, n);
    if (objc_msgSend_isEqualToString_(*(n + 128), v267, @"Chair"))
    {
      v269 = objc_msgSend_objectForKeyedSubscript_(0, v268, *(n + 144));
      v270 = v269 == 0;

      if (!v270)
      {
        objc_storeStrong((v357 - 16), @"ChairGroup");
        v272 = objc_msgSend_objectForKeyedSubscript_(0, v271, *(n + 144));
        v275 = objc_msgSend_intValue(v272, v273, v274);
        *(v357 - 8) = v275;
      }
    }
  }

  v276 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v323 = 0u;
  v324 = 0u;
  v321 = 0u;
  v322 = 0u;
  v315 = v299;
  v279 = objc_msgSend_countByEnumeratingWithState_objects_count_(v315, v277, &v321, v378, 16);
  if (v279)
  {
    v280 = *v322;
    do
    {
      for (ii = 0; ii != v279; ++ii)
      {
        if (*v322 != v280)
        {
          objc_enumerationMutation(v315);
        }

        v282 = *(*(&v321 + 1) + 8 * ii);
        v283 = objc_msgSend_objectForKey_(v315, v278, v282);
        v319 = 0u;
        v320 = 0u;
        v317 = 0u;
        v318 = 0u;
        v284 = v283;
        v286 = objc_msgSend_countByEnumeratingWithState_objects_count_(v284, v285, &v317, v377, 16);
        if (v286)
        {
          v287 = *v318;
          do
          {
            for (jj = 0; jj != v286; ++jj)
            {
              if (*v318 != v287)
              {
                objc_enumerationMutation(v284);
              }

              v289 = *(*(&v317 + 1) + 8 * jj);
              if ((objc_msgSend_containsObject_(0, v290, v289) & 1) == 0)
              {
                objc_msgSend_setObject_forKeyedSubscript_(v276, v291, v282, v289);
              }
            }

            v286 = objc_msgSend_countByEnumeratingWithState_objects_count_(v284, v292, &v317, v377, 16);
          }

          while (v286);
        }
      }

      v279 = objc_msgSend_countByEnumeratingWithState_objects_count_(v315, v278, &v321, v378, 16);
    }

    while (v279);
  }

  memset(buf, 0, sizeof(buf));
  *v417 = 0;
  sub_2622395E8(buf, v356, v357, 0xAAAAAAAAAAAAAAABLL * ((v357 - v356) >> 6));
  v293 = v276;
  *&v417[8] = v293;
  v294 = v315;
  *&v417[16] = v294;
  *a1 = *buf;
  *(a1 + 16) = *v417;
  memset(buf, 0, sizeof(buf));
  v295 = *&v417[8];
  memset(v417, 0, 24);
  *(a1 + 24) = v295;
  v392[0] = buf;
  sub_2621EAAB0(v392);

  if (v335)
  {
    v336 = v335;
    operator delete(v335);
  }

  if (v305)
  {
    operator delete(v305);
  }

  sub_2621C6C04(v342[0]);
  if (v343)
  {
    v344 = v343;
    operator delete(v343);
  }

  *buf = v345;
  sub_2621E1D40(buf);
  *buf = v346;
  sub_2621E1D40(buf);
  *buf = v347;
  sub_2621E1D40(buf);
  if (v348)
  {
    operator delete(v348);
  }

  *buf = &v354;
  sub_2621E1D40(buf);
  *buf = &v352 + 8;
  sub_2621E1D40(buf);
  *buf = v351;
  sub_2621E1D40(buf);
LABEL_110:
  *buf = &v356;
  sub_2621EAAB0(buf);
  *buf = &v359;
  sub_2621EAAB0(buf);
  v58 = *MEMORY[0x277D85DE8];
}

void sub_262336498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (STACK[0x210])
  {
    operator delete(STACK[0x210]);
  }

  if (STACK[0x228])
  {
    operator delete(STACK[0x228]);
  }

  sub_2621C6C04(STACK[0x248]);
  v17 = STACK[0x258];
  if (STACK[0x258])
  {
    STACK[0x260] = v17;
    operator delete(v17);
  }

  STACK[0x820] = &STACK[0x270];
  sub_2621E1D40(&STACK[0x820]);
  STACK[0x820] = &STACK[0x288];
  sub_2621E1D40(&STACK[0x820]);
  STACK[0x820] = &STACK[0x2A0];
  sub_2621E1D40(&STACK[0x820]);
  if (STACK[0x2B8])
  {
    operator delete(STACK[0x2B8]);
  }

  STACK[0x820] = a10;
  sub_2621E1D40(&STACK[0x820]);
  STACK[0x820] = a11;
  sub_2621E1D40(&STACK[0x820]);
  STACK[0x820] = &STACK[0x2D0];
  sub_2621E1D40(&STACK[0x820]);
  STACK[0x2D0] = &STACK[0x318];
  sub_2621EAAB0(&STACK[0x2D0]);
  STACK[0x2D0] = &STACK[0x330];
  sub_2621EAAB0(&STACK[0x2D0]);
  _Unwind_Resume(a1);
}

uint64_t *sub_262336AC0(uint64_t a1, unsigned __int16 a2)
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
      v4 = *(v2 + 32);
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
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *sub_262336BAC(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v22 = a2;
  v21 = a3;
  v4 = &v22;
  if (a2 < a3)
  {
    v4 = &v21;
  }

  v23 = v4;
  v5 = sub_262336AC0(a1, *v4) + 5;
  do
  {
    v6 = v5;
    v5 = v5[1];
  }

  while (v5);
  v7 = *v6;
  if (v21 >= v22)
  {
    v8 = v22;
  }

  else
  {
    v8 = v21;
  }

  v9 = &v22;
  if (v21 < v22)
  {
    v9 = &v21;
  }

  v23 = v9;
  result = sub_262336AC0(a1, v8);
  v11 = result + 5;
  do
  {
    v12 = v11;
    v11 = v11[1];
  }

  while (v11);
  if (v7 != *v12)
  {
    if (v21 >= v22)
    {
      v13 = v22;
    }

    else
    {
      v13 = v21;
    }

    v14 = &v22;
    if (v21 < v22)
    {
      v14 = &v21;
    }

    v23 = v14;
    v15 = sub_262336AC0(a1, v13) + 5;
    do
    {
      v16 = v15;
      v15 = v15[1];
    }

    while (v15);
    if (v22 <= v21)
    {
      v17 = v21;
    }

    else
    {
      v17 = v22;
    }

    v18 = &v22;
    if (v22 < v21)
    {
      v18 = &v21;
    }

    v23 = v18;
    v19 = sub_262336AC0(a1, v17) + 5;
    do
    {
      v20 = v19;
      v19 = v19[1];
    }

    while (v19);
    v23 = v20;
    result = sub_262336AC0(a1, *v20);
    result[6] = v16;
  }

  return result;
}

uint64_t *sub_262336CE8(uint64_t a1, unsigned __int16 a2)
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
      v4 = *(v2 + 32);
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
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *sub_262336DD0(uint64_t a1, unsigned __int16 a2)
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
      v4 = *(v2 + 32);
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
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_262336EC0(uint64_t a1)
{
  free(*(a1 + 32));
  sub_2621C6C04(*(a1 + 88));
  sub_2621C6C04(*(a1 + 64));
  return a1;
}

void sub_262336EFC(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (*a1 == v2)
  {
    v32 = 0;
  }

  else
  {
    v36 = 1;
    do
    {
      if (*(v3 + 8) == -1)
      {
        v4 = *v3;
        sub_262337200(&v39, a1, *v3);
        v6 = v39;
        v5 = v40;
        v34 = v40 - v39;
        v35 = v3;
        v33 = *(a1 + 28);
        if (v34 >= v33)
        {
          if (v39 == v40)
          {
            v15 = 0;
          }

          else
          {
            v7 = 0;
            v8 = 0;
            v9 = *a1;
            v10 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 2);
            v11 = v39;
            do
            {
              v12 = *v11;
              if (v10 <= v12 || (*(v9 + 12 * v12 + 8) = v36, v13 = *v11, v10 <= v13))
              {
                sub_262333AEC();
              }

              v14 = (v9 + 12 * v13);
              if (*v14 == *&v4 && v14[1] == *(&v4 + 1))
              {
                v8 = v7;
              }

              ++v7;
              ++v11;
            }

            while (v11 != v5);
            v15 = 4 * v8;
          }

          v16 = &v6[v15];
          v17 = &v6[v15 + 4];
          v18 = v5 - v17;
          if (v5 != v17)
          {
            memmove(&v6[v15], v17, v5 - v17);
          }

          v40 = (v16 + v18);
          if ((v16 + v18) != v6)
          {
            v19 = 0;
            v20 = (v16 + v18 - v6) >> 2;
            while (1)
            {
              v21 = *&v6[4 * v19];
              if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 2) <= v21)
              {
                sub_262333AEC();
              }

              v22 = *a1 + 12 * v21;
              v16 = v16 & 0xFFFFFFFF00000000 | *(v22 + 8);
              sub_262337200(&v37, a1, *v22);
              v23 = v37;
              v24 = v38;
              if (*(a1 + 28) <= (v38 - v37) && v37 != v38)
              {
                break;
              }

LABEL_32:
              if (v23)
              {
                operator delete(v23);
              }

              if (++v19 >= v20)
              {
                goto LABEL_35;
              }
            }

            v27 = *a1;
            v26 = *(a1 + 8);
            v28 = v37;
            while (2)
            {
              v29 = *v28;
              if (0xAAAAAAAAAAAAAAABLL * ((v26 - v27) >> 2) <= v29)
              {
LABEL_44:
                sub_262333AEC();
              }

              v30 = *(v27 + 12 * v29 + 8);
              if (v30 == -2)
              {
LABEL_29:
                if (0xAAAAAAAAAAAAAAABLL * ((v26 - v27) >> 2) <= v29)
                {
                  goto LABEL_44;
                }

                *(v27 + 12 * v29 + 8) = v36;
              }

              else if (v30 == -1)
              {
                sub_2621C7CD0(&v39, v28);
                v6 = v39;
                v20 = v40 - v39;
                v29 = *v28;
                v27 = *a1;
                v26 = *(a1 + 8);
                goto LABEL_29;
              }

              if (++v28 == v24)
              {
                goto LABEL_32;
              }

              continue;
            }
          }
        }

LABEL_35:
        if (v6)
        {
          operator delete(v6);
        }

        v31 = v36;
        if (v34 >= v33)
        {
          v31 = v36 + 1;
        }

        v36 = v31;
        v2 = *(a1 + 8);
        v3 = v35;
      }

      v3 += 12;
    }

    while (v3 != v2);
    v32 = v36 - 1;
  }

  *(a1 + 36) = v32;
}

void sub_2623371C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_262337200(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v4 = *a2;
  v3 = *(a2 + 8);
  if (*a2 != v3)
  {
    v8 = 1;
    do
    {
      v9 = vcvtq_f64_f32(vsub_f32(a3, *v4));
      if (sqrt(vaddvq_f64(vmulq_f64(v9, v9))) <= *(a2 + 32))
      {
        sub_2621C7CD0(a1, &v10);
        v3 = *(a2 + 8);
      }

      v10 = v8;
      v4 = (v4 + 12);
      ++v8;
    }

    while (v4 != v3);
  }
}

void sub_2623372A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_262337358(float32x2_t *a1, void *a2, void *a3)
{
  v440 = *MEMORY[0x277D85DE8];
  v352 = a2;
  v5 = a3;
  v8 = v5;
  v349 = a1;
  if (a1)
  {
    v9 = objc_msgSend_walls(v5, v6, v7);
    v368 = v8;
    v12 = objc_msgSend_count(v9, v10, v11);
    v15 = objc_msgSend_curvedWalls(v8, v13, v14);
    v18 = objc_msgSend_count(v15, v16, v17) + v12;

    if (v18)
    {
      memset(v426, 0, sizeof(v426));
      v422 = 0u;
      v423 = 0u;
      v424 = 0u;
      v425 = 0u;
      v21 = objc_msgSend_walls(v8, v19, v20);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v422, v439, 16);
      if (v25)
      {
        v26 = *v423;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v423 != v26)
            {
              objc_enumerationMutation(v21);
            }

            v28 = *(*(&v422 + 1) + 8 * i);
            objc_msgSend_quad(v28, v23, v24);
            src[0] = v29;
            sub_2621CBA84(v426, src);
            objc_msgSend_quad(v28, v30, v31);
            src[0] = v32;
            sub_2621CBA84(v426, src);
          }

          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v422, v439, 16);
        }

        while (v25);
      }

      v421 = 0u;
      v420 = 0u;
      v419 = 0u;
      v418 = 0u;
      v35 = objc_msgSend_curvedWalls(v8, v33, v34);
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v418, v438, 16);
      if (v39)
      {
        v40 = *v419;
        do
        {
          for (j = 0; j != v39; ++j)
          {
            if (*v419 != v40)
            {
              objc_enumerationMutation(v35);
            }

            v42 = *(*(&v418 + 1) + 8 * j);
            objc_msgSend_quad(v42, v37, v38);
            src[0] = v43;
            sub_2621CBA84(v426, src);
            objc_msgSend_quad(v42, v44, v45);
            src[0] = v46;
            sub_2621CBA84(v426, src);
          }

          v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v37, &v418, v438, 16);
        }

        while (v39);
      }

      sub_262298008(v417, v349 + 1, v426, v18);
      v48 = v417[0];
      if ((v417[1] - v417[0]) == 32)
      {
        memset(v416, 0, sizeof(v416));
        v415 = 0uLL;
        v414 = 0;
        if (v8)
        {
          LODWORD(v47) = v8[4];
        }

        else
        {
          *&v47 = 0;
        }

        v347 = v47;
        v412 = 0u;
        v413 = 0u;
        v410 = 0u;
        v411 = 0u;
        obj = v352;
        v358 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v49, &v410, v437, 16);
        if (v358)
        {
          v356 = *v411;
          v362 = v52;
          do
          {
            for (k = 0; k != v358; ++k)
            {
              if (*v411 != v356)
              {
                objc_enumerationMutation(obj);
              }

              v364 = *(*(&v410 + 1) + 8 * k);
              for (m = 0; ; ++m)
              {
                v53 = objc_msgSend_floors(v364, v50, v51, v347);
                v56 = objc_msgSend_count(v53, v54, v55) > m;

                if (!v56)
                {
                  break;
                }

                v59 = objc_msgSend_floors(v364, v57, v58);
                v61 = objc_msgSend_objectAtIndexedSubscript_(v59, v60, m);
                if (objc_msgSend_polygonSize(v61, v62, v63))
                {
                  v66 = objc_msgSend_floors(v364, v64, v65);
                  v68 = objc_msgSend_objectAtIndexedSubscript_(v66, v67, m);
                  if (objc_msgSend_polygonSize(v68, v69, v70) != 4)
                  {

LABEL_56:
                    v120 = 0;
                    v121 = v362;
                    LOBYTE(v121) = 0;
                    v362 = v121;
                    v399 = 0uLL;
                    *&v400 = 0;
                    v394 = 0;
                    v395 = 0;
                    v396 = 0;
                    do
                    {
                      v122 = objc_msgSend_floors(v364, v93, v94);
                      v124 = objc_msgSend_objectAtIndexedSubscript_(v122, v123, m);
                      objc_msgSend_quad(v124, v125, v126);
                      LODWORD(src[1]) = v127;
                      DWORD2(v403) = v128;
                      DWORD2(v404) = v129;
                      DWORD2(v405) = v130;
                      src[0] = v131;
                      *&v403 = v132;
                      *&v404 = v133;
                      *&v405 = v134;
                      v135 = *&src[v120];
                      v427 = src[v120];
                      sub_2621CBA84(&v394, &v427);

                      v120 += 2;
                    }

                    while (v120 != 8);
                    v136 = 0;
                    v137 = 0;
                    v391 = 0;
                    v392 = 0;
                    v393 = 0;
                    while (1)
                    {
                      v138 = objc_msgSend_floors(v364, v93, v94);
                      v140 = objc_msgSend_objectAtIndexedSubscript_(v138, v139, m);
                      v143 = objc_msgSend_polygonSize(v140, v141, v142) < v136;

                      if (v143)
                      {
                        break;
                      }

                      v144 = objc_msgSend_floors(v364, v50, v51);
                      v146 = objc_msgSend_objectAtIndexedSubscript_(v144, v145, m);
                      v149 = objc_msgSend_polygonEdgeConfidence(v146, v147, v148);
                      v152 = objc_msgSend_floors(v364, v150, v151);
                      v154 = objc_msgSend_objectAtIndexedSubscript_(v152, v153, m);
                      v157 = *(v149 + 4 * (v136 % objc_msgSend_polygonSize(v154, v155, v156)));

                      if (v157 >= 0.5)
                      {
                        v159 = objc_msgSend_floors(v364, v93, v94);
                        v161 = objc_msgSend_objectAtIndexedSubscript_(v159, v160, m);
                        v164 = objc_msgSend_polygon(v161, v162, v163);
                        v167 = objc_msgSend_floors(v364, v165, v166);
                        v169 = objc_msgSend_objectAtIndexedSubscript_(v167, v168, m);
                        v371 = *(v164 + 16 * (v136 % objc_msgSend_polygonSize(v169, v170, v171)));

                        v432 = v371;
                        v173 = sub_262338FF0(&v432, v8, v172);
                        v158 = v93;
                        v427 = v173;
                        LOBYTE(v428) = v93;
                        if (v93)
                        {
                          sub_2621CBA84(&v391, &v427);
                          if (v137)
                          {
                            v175 = objc_alloc_init(MEMORY[0x277CCAD78]);
                            v178 = objc_msgSend_UUIDString(v175, v176, v177);
                            v179 = v178;
                            v182 = objc_msgSend_UTF8String(v178, v180, v181);
                            sub_2621D0F64(&v390, v182);
                            sub_2621CC174(src, &v390, 0, *&v362, *&v173);
                            if (SHIBYTE(v390.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v390.__r_.__value_.__l.__data_);
                            }

                            sub_2621CC20C(v416, src);
                            if (v405)
                            {
                              *(&v405 + 1) = v405;
                              operator delete(v405);
                            }

                            if (SBYTE7(v403) < 0)
                            {
                              operator delete(src[0]);
                            }
                          }
                        }

                        *&v174 = v173;
                        v362 = v174;
                      }

                      else if (v137)
                      {
                        v158 = 0;
                      }

                      else
                      {
                        v158 = v137;
                      }

                      ++v136;
                      v137 = v158;
                    }

                    v183 = v391;
                    v184 = v392;
                    if ((v392 - v391) > 0x18)
                    {
                      v185 = 0;
                      DWORD2(v400) = 5;
                      v186 = *v394;
                      v187 = vsub_f32(*(v394 + 8), *v394);
                      v188 = vmul_f32(v187, v187);
                      v188.f32[0] = sqrtf(vaddv_f32(v188));
                      DWORD2(v398) = v188.i32[0];
                      v189 = *(v394 + 24);
                      v190 = vdiv_f32(v187, vdup_lane_s32(v188, 0));
                      *&v397 = v186;
                      *(&v397 + 1) = v190;
                      v191 = vsub_f32(v189, v186);
                      v192 = vmul_f32(v191, v191);
                      v192.f32[0] = sqrtf(vaddv_f32(v192));
                      HIDWORD(v398) = v192.i32[0];
                      v193 = vdiv_f32(v191, vdup_lane_s32(v192, 0));
                      *&v398 = v193;
                      src[1] = 0;
                      src[0] = 0;
                      *&v403 = 0;
                      v194 = (v188.f32[0] / 5.0);
                      v195 = (v192.f32[0] / 5.0);
                      do
                      {
                        v196 = 0;
                        v197 = (v185 + 0.5) * v194;
                        v198 = vmla_n_f32(v186, v190, v197);
                        do
                        {
                          v199 = (v196 + 0.5) * v195;
                          v427 = vmla_n_f32(v198, v193, v199);
                          sub_2621CBA84(src, &v427);
                          ++v196;
                        }

                        while (v196 != 5);
                        ++v185;
                      }

                      while (v185 != 5);
                      v200 = src[0];
                      v201 = src[1];
                      for (n = src[0]; n != v201; ++n)
                      {
                        if (sub_26233D994(v183, v184, *n))
                        {
                          sub_2621CBA84(&v399, n);
                        }
                      }

                      if (v200)
                      {
                        operator delete(v200);
                      }

                      v203 = v415;
                      if (v415 >= *(&v415 + 1))
                      {
                        v205 = (v415 - v414) >> 6;
                        if ((v205 + 1) >> 58)
                        {
                          sub_2621CBEB0();
                        }

                        v206 = (*(&v415 + 1) - v414) >> 5;
                        if (v206 <= v205 + 1)
                        {
                          v206 = v205 + 1;
                        }

                        if (*(&v415 + 1) - v414 >= 0x7FFFFFFFFFFFFFC0uLL)
                        {
                          v207 = 0x3FFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v207 = v206;
                        }

                        *&v404 = &v414;
                        if (v207)
                        {
                          sub_2623398FC(v207);
                        }

                        v208 = (v205 << 6);
                        src[0] = 0;
                        src[1] = v208;
                        v403 = v208;
                        *v208 = v397;
                        v208[1] = v398;
                        *(v208 + 5) = 0;
                        *(v208 + 6) = 0;
                        *(v208 + 4) = 0;
                        sub_2621CC8B4((v208 + 2), v399, *(&v399 + 1), (*(&v399 + 1) - v399) >> 3);
                        *(v208 + 14) = DWORD2(v400);
                        *&v403 = v403 + 64;
                        v209 = v415;
                        v210 = v414;
                        v427 = &v414;
                        v428 = &v431;
                        v429 = &v432;
                        v430 = 0;
                        v211 = v414;
                        v212 = src[1] + &v414[-v415];
                        v432 = v212;
                        v431 = v212;
                        v213 = v212;
                        if (v414 == v415)
                        {
                          v430 = 1;
                        }

                        else
                        {
                          do
                          {
                            v214 = *(v211 + 1);
                            *v213 = *v211;
                            *(v213 + 16) = v214;
                            *(v213 + 40) = 0;
                            *(v213 + 48) = 0;
                            *(v213 + 32) = 0;
                            sub_2621CC8B4(v213 + 32, *(v211 + 4), *(v211 + 5), (*(v211 + 5) - *(v211 + 4)) >> 3);
                            *(v213 + 56) = *(v211 + 14);
                            v211 += 64;
                            v213 = (v432 + 64);
                            v432 += 64;
                          }

                          while (v211 != v209);
                          v430 = 1;
                          do
                          {
                            v215 = *(v210 + 4);
                            if (v215)
                            {
                              *(v210 + 5) = v215;
                              operator delete(v215);
                            }

                            v210 += 64;
                          }

                          while (v210 != v209);
                        }

                        sub_26233989C(&v427);
                        v216 = v414;
                        v217 = *(&v415 + 1);
                        v414 = v212;
                        v372 = v403;
                        v415 = v403;
                        *&v403 = v216;
                        *(&v403 + 1) = v217;
                        src[1] = v216;
                        src[0] = v216;
                        sub_262339944(src);
                        v204 = v372;
                        v183 = v391;
                      }

                      else
                      {
                        *v415 = v397;
                        *(v203 + 16) = v398;
                        *(v203 + 40) = 0;
                        *(v203 + 48) = 0;
                        *(v203 + 32) = 0;
                        sub_2621CC8B4(v203 + 32, v399, *(&v399 + 1), (*(&v399 + 1) - v399) >> 3);
                        *(v203 + 56) = DWORD2(v400);
                        v204 = v203 + 64;
                      }

                      *&v415 = v204;
                    }

                    if (v183)
                    {
                      v392 = v183;
                      operator delete(v183);
                    }

                    if (v394)
                    {
                      operator delete(v394);
                    }

                    if (v399)
                    {
                      operator delete(v399);
                    }

                    continue;
                  }

                  v73 = objc_msgSend_floors(v364, v71, v72);
                  v75 = objc_msgSend_objectAtIndexedSubscript_(v73, v74, m);
                  v78 = objc_msgSend_polygonEdgeConfidence(v75, v76, v77);
                  v81 = objc_msgSend_floors(v364, v79, v80);
                  v83 = objc_msgSend_objectAtIndexedSubscript_(v81, v82, m);
                  v86 = objc_msgSend_polygonEdgeConfidence(v83, v84, v85) + 16;
                  v369 = v73;
                  if (v78 != v86)
                  {
                    v87 = v78 + 1;
                    if (v78 + 1 != v86)
                    {
                      v88 = *v78;
                      v89 = v78 + 1;
                      do
                      {
                        v90 = *v89++;
                        v91 = v90;
                        if (v88 < v90)
                        {
                          v88 = v91;
                          v78 = v87;
                        }

                        v87 = v89;
                      }

                      while (v89 != v86);
                    }
                  }

                  v92 = *v78 < 0.5;

                  if (!v92)
                  {
                    goto LABEL_56;
                  }
                }

                else
                {
                }

                v408 = 0u;
                v409 = 0u;
                v406 = 0u;
                v407 = 0u;
                v95 = objc_msgSend_walls(v364, v93, v94);
                v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v96, &v406, v436, 16);
                if (v99)
                {
                  v100 = *v407;
                  do
                  {
                    for (ii = 0; ii != v99; ++ii)
                    {
                      if (*v407 != v100)
                      {
                        objc_enumerationMutation(v95);
                      }

                      v102 = *(*(&v406 + 1) + 8 * ii);
                      objc_msgSend_quad(v102, v97, v98);
                      v370 = v103;
                      objc_msgSend_quad(v102, v104, v105);
                      *&v106 = v370;
                      *(&v106 + 1) = v107;
                      v397 = v106;
                      *&v106 = vsub_f32(v370, v107);
                      if (sqrtf(vaddv_f32(vmul_f32(*&v106, *&v106))) >= 0.5)
                      {
                        *&v108 = COERCE_DOUBLE(sub_262338FF0(&v397, v8, v98));
                        if (v97)
                        {
                          v109 = *&v108;
                          *&v110 = COERCE_DOUBLE(sub_262338FF0(&v397 + 1, v8, v98));
                          if (v97)
                          {
                            v111 = *&v110;
                            v112 = objc_alloc_init(MEMORY[0x277CCAD78]);
                            v115 = objc_msgSend_UUIDString(v112, v113, v114);
                            v116 = v115;
                            v119 = objc_msgSend_UTF8String(v115, v117, v118);
                            sub_2621D0F64(&__p, v119);
                            sub_2621CC174(src, &__p, 0, v109, v111);
                            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(__p.__r_.__value_.__l.__data_);
                            }

                            sub_2621CC20C(v416, src);
                            if (v405)
                            {
                              *(&v405 + 1) = v405;
                              operator delete(v405);
                            }

                            if (SBYTE7(v403) < 0)
                            {
                              operator delete(src[0]);
                            }
                          }
                        }
                      }
                    }

                    v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v97, &v406, v436, 16);
                  }

                  while (v99);
                }
              }

              v388 = 0u;
              v389 = 0u;
              v386 = 0u;
              v387 = 0u;
              v218 = objc_msgSend_curvedWalls(v364, v57, v58);
              v222 = objc_msgSend_countByEnumeratingWithState_objects_count_(v218, v219, &v386, v435, 16);
              if (v222)
              {
                v223 = *v387;
                do
                {
                  for (jj = 0; jj != v222; ++jj)
                  {
                    if (*v387 != v223)
                    {
                      objc_enumerationMutation(v218);
                    }

                    v225 = *(*(&v386 + 1) + 8 * jj);
                    v226 = objc_msgSend_identifier(v225, v220, v221);
                    v229 = objc_msgSend_UUIDString(v226, v227, v228);
                    v230 = v229;
                    v233 = objc_msgSend_UTF8String(v229, v231, v232);

                    sub_2621D0F64(&v385, v233);
                    objc_msgSend_quad(v225, v234, v235);
                    v373 = v236;
                    objc_msgSend_quad(v225, v237, v238);
                    sub_2621CC174(src, &v385, 1, v373, v239);
                    if (SHIBYTE(v385.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v385.__r_.__value_.__l.__data_);
                    }

                    sub_2621CC20C(v416, src);
                    if (v405)
                    {
                      *(&v405 + 1) = v405;
                      operator delete(v405);
                    }

                    if (SBYTE7(v403) < 0)
                    {
                      operator delete(src[0]);
                    }
                  }

                  v222 = objc_msgSend_countByEnumeratingWithState_objects_count_(v218, v220, &v386, v435, 16);
                }

                while (v222);
              }
            }

            v358 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v50, &v410, v437, 16);
          }

          while (v358);
        }

        memset(v384, 0, sizeof(v384));
        *&v397 = v384;
        BYTE8(v397) = 0;
        v240 = v415 - v414;
        if (v415 != v414)
        {
          if (!((v240 >> 6) >> 58))
          {
            sub_2623398FC(v240 >> 6);
          }

          sub_2621CBEB0();
        }

        sub_262291970(&v427, v416, 0, v384);
        src[0] = v384;
        sub_2621CC514(src);
        v380 = 0u;
        v381 = 0u;
        v382 = 0u;
        v383 = 0u;
        v348 = obj;
        v351 = objc_msgSend_countByEnumeratingWithState_objects_count_(v348, v241, &v380, v434, 16);
        if (v351)
        {
          v350 = *v381;
          do
          {
            for (kk = 0; kk != v351; ++kk)
            {
              if (*v381 != v350)
              {
                objc_enumerationMutation(v348);
              }

              v244 = *(*(&v380 + 1) + 8 * kk);
              v376 = 0u;
              v377 = 0u;
              v378 = 0u;
              v379 = 0u;
              obja = objc_msgSend_curvedWalls(v244, v242, v243, v347);
              v246 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v245, &v376, v433, 16);
              if (v246)
              {
                v363 = *v377;
                do
                {
                  v365 = v246;
                  for (mm = 0; mm != v365; ++mm)
                  {
                    if (*v377 != v363)
                    {
                      objc_enumerationMutation(obja);
                    }

                    v250 = *(*(&v376 + 1) + 8 * mm);
                    v251 = objc_msgSend_identifier(v250, v247, v248);
                    v254 = objc_msgSend_UUIDString(v251, v252, v253);
                    v255 = v254;
                    v258 = objc_msgSend_UTF8String(v254, v256, v257);

                    v259 = v427;
                    if (v428 != v427)
                    {
                      v260 = 0;
                      v261 = 5;
                      v262 = 8;
                      while (1)
                      {
                        sub_2621D0F64(src, v258);
                        if (v259 + v262 + 8 == sub_26225E9A4(v259 + v262, src))
                        {
                          v266 = 0;
                        }

                        else
                        {
                          v263 = v428;
                          v264 = v427;
                          sub_2621D0F64(&v397, v258);
                          v265 = v264 + 40 * ((v260 + 1) % (0xCCCCCCCCCCCCCCCDLL * ((v263 - v264) >> 3)));
                          v266 = v265 + 16 != sub_26225E9A4(v265 + 8, &v397);
                          if (SBYTE7(v398) < 0)
                          {
                            operator delete(v397);
                          }
                        }

                        if (SBYTE7(v403) < 0)
                        {
                          operator delete(src[0]);
                        }

                        if (v266)
                        {
                          break;
                        }

                        ++v260;
                        v259 = v427;
                        v262 += 40;
                        v261 += 5;
                        if (v260 >= 0xCCCCCCCCCCCCCCCDLL * (v428 - v427))
                        {
                          goto LABEL_164;
                        }
                      }

                      objc_msgSend_startOrientation(v250, v247, v248);
                      v268 = v267;
                      objc_msgSend_endOrientation(v250, v269, v270);
                      v272 = v271;
                      v273 = (v268 * 3.1416) / 180.0;
                      v274 = cosf(v273);
                      objc_msgSend_radius(v250, v275, v276);
                      v278 = v277;
                      v279 = sinf(v273);
                      objc_msgSend_radius(v250, v280, v281);
                      v283 = v282;
                      objc_msgSend_circleCenter(v250, v284, v285);
                      v357 = v286;
                      v287 = v279;
                      v288 = v278;
                      v289 = v274;
                      v359 = v273;
                      v361 = (v272 * 3.1416) / 180.0;
                      v290 = cosf(v361);
                      objc_msgSend_radius(v250, v291, v292);
                      v294 = v293;
                      v295 = sinf(v361);
                      objc_msgSend_radius(v250, v296, v297);
                      v299 = v298;
                      objc_msgSend_circleCenter(v250, v300, v301);
                      v302.f32[0] = v289 * v288;
                      v302.f32[1] = v287 * v283;
                      v303.f32[0] = v290 * v294;
                      v303.f32[1] = v295 * v299;
                      v305 = vadd_f32(v303, v304);
                      v397 = 0uLL;
                      *&v398 = 0;
                      v306 = v427[5 * v260];
                      v307 = vsub_f32(vadd_f32(v302, v357), v306);
                      v308 = vmul_f32(v307, v307);
                      v309 = vsub_f32(v305, v306);
                      v310 = vmul_f32(v309, v309);
                      v311 = vsqrt_f32(vadd_f32(vzip1_s32(v308, v310), vzip2_s32(v308, v310)));
                      if (vcgt_f32(vdup_lane_s32(v311, 1), v311).u32[0])
                      {
                        v312 = v359 + 0.05236;
                        for (*src = v359 + 0.05236; v312 < (v361 + -0.017453); *src = v312)
                        {
                          sub_2621C8F2C(&v397, src);
                          v312 = v312 + 0.05236;
                        }
                      }

                      else
                      {
                        v313 = v361 + -0.05236;
                        for (*src = v361 + -0.05236; v313 > (v359 + 0.017453); *src = v313)
                        {
                          sub_2621C8F2C(&v397, src);
                          v313 = v313 + -0.05236;
                        }
                      }

                      v314 = v397;
                      for (nn = v397; nn != *(&v314 + 1); v261 += 5)
                      {
                        v316 = cosf(*nn);
                        objc_msgSend_radius(v250, v317, v318);
                        v320 = v319;
                        v321 = sinf(*nn);
                        objc_msgSend_radius(v250, v322, v323);
                        v325 = v324;
                        objc_msgSend_circleCenter(v250, v326, v327);
                        v329 = v328;
                        sub_2621D0F64(v374, v258);
                        v330.f32[0] = v316 * v320;
                        v330.f32[1] = v321 * v325;
                        sub_262292AA0(src, v374, 0, COERCE_DOUBLE(vadd_f32(v330, v329)));
                        if (v375 < 0)
                        {
                          operator delete(v374[0]);
                        }

                        sub_2623392A4(&v427, &v427[v261], src);
                        sub_2621CC7B4(v403);
                        ++nn;
                      }

                      if (v314)
                      {
                        operator delete(v314);
                      }
                    }

LABEL_164:
                    ;
                  }

                  v246 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v247, &v376, v433, 16);
                }

                while (v246);
              }
            }

            v351 = objc_msgSend_countByEnumeratingWithState_objects_count_(v348, v242, &v380, v434, 16);
          }

          while (v351);
        }

        v331 = objc_alloc_init(RS3DSurface);
        v332 = v331;
        if (v331)
        {
          v331->type = 5;
          sub_2622C533C(v331, *&v349[4]);
          v332->individualUpdate = 1;
          v332->confidence = 1.0;
        }

        else
        {
          sub_2622C533C(0, *&v349[4]);
        }

        v334 = 0;
        v335 = v417[0];
        do
        {
          *&v333 = v335[v334];
          DWORD2(v333) = v347;
          *(&v397 + v334++) = v333;
        }

        while (v334 != 4);
        HIDWORD(v336) = HIDWORD(v398);
        *src = v397;
        v403 = v398;
        v404 = v399;
        v405 = v400;
        v366 = v332;
        if (v332)
        {
          objc_copyStruct(&v332[1], src, 64, 1, 0);
        }

        src[1] = 0;
        src[0] = 0;
        *&v403 = 0;
        v394 = 0;
        v395 = 0;
        v396 = 0;
        v337 = v428;
        v338 = v427;
        if (0xCCCCCCCCCCCCCCCDLL * (v428 - v427) <= 3)
        {
          sub_2621CBF10(1uLL);
        }

        if (v427 == v428)
        {
          v339 = 0;
        }

        else
        {
          v339 = 0;
          do
          {
            *&v336 = *v338;
            DWORD2(v336) = v347;
            v340 = v339;
            v341 = v339 >> 4;
            if (((v339 >> 4) + 1) >> 60)
            {
              sub_2621CBEB0();
            }

            if (v339 >> 4 != -1)
            {
              sub_2621CBF10((v339 >> 4) + 1);
            }

            *(16 * v341) = v336;
            v339 = 16 * v341 + 16;
            memcpy(0, 0, v340);
            LOBYTE(v391) = 0;
            sub_262339540(src, &v391);
            LODWORD(v391) = 1065353216;
            sub_2621C8F2C(&v394, &v391);
            v338 += 5;
          }

          while (v338 != v337);
        }

        sub_2622C51B4(v366, 0, src[0], v394, v339 >> 4);
        v8 = v368;
        v344 = objc_msgSend_array(MEMORY[0x277CBEB18], v342, v343);
        objc_msgSend_addObject_(v344, v345, v366);
        sub_2622AE960(v368, v344);

        if (v394)
        {
          operator delete(v394);
        }

        if (src[0])
        {
          operator delete(src[0]);
        }

        src[0] = &v427;
        sub_2621CC5A0(src);
        src[0] = &v414;
        sub_2621CC514(src);
        src[0] = v416;
        sub_2621CC628(src);
        v48 = v417[0];
      }

      if (v48)
      {
        operator delete(v48);
      }

      if (v426[0])
      {
        operator delete(v426[0]);
      }
    }
  }

  v346 = *MEMORY[0x277D85DE8];
}

void sub_262338AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, _Unwind_Exception *exception_objecta, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (STACK[0x270])
  {
    operator delete(STACK[0x270]);
  }

  if (v73)
  {
    operator delete(v73);
  }

  STACK[0x210] = &STACK[0x428];
  sub_2621CC5A0(&STACK[0x210]);
  STACK[0x210] = &STACK[0x348];
  sub_2621CC514(&STACK[0x210]);
  STACK[0x210] = &STACK[0x360];
  sub_2621CC628(&STACK[0x210]);
  if (STACK[0x378])
  {
    operator delete(STACK[0x378]);
  }

  if (STACK[0x410])
  {
    operator delete(STACK[0x410]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_262338FF0(float32x2_t *a1, void *a2, uint64_t a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = objc_msgSend_walls(a2, a2, a3, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v41, v49, 16);
  if (!v10)
  {

LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

  v11 = *v42;
  v12 = 0;
  v3.i32[0] = 2139095039;
  v13 = 0;
  v4.i32[0] = 2139095039;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v42 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v15 = *(*(&v41 + 1) + 8 * i);
      v16 = &v47;
      v17 = 1;
      do
      {
        v18 = v17;
        objc_msgSend_quad(v15, v8, v9);
        v17 = 0;
        v46 = v19;
        v48 = v20;
        v47 = v21;
        v45 = v22;
        v23 = *v16->f32;
        v24 = vsub_f32(*a1, *v16);
        v25 = vmul_f32(v24, v24);
        v25.f32[0] = sqrtf(vaddv_f32(v25));
        v12 = vbsl_s8(vdup_lane_s32(vcgt_f32(v4, v25), 0), *v16, v12);
        if (v4.f32[0] > v25.f32[0])
        {
          v4.f32[0] = v25.f32[0];
        }

        v16 = &v45;
      }

      while ((v18 & 1) != 0);
      v26 = sub_26223FCEC(v15).n128_u64[0];
      v28 = vsub_f32(v27, v26);
      v29 = vaddv_f32(vmul_f32(vsub_f32(*a1, v26), v28));
      v30 = vaddv_f32(vmul_f32(v28, v28));
      if (v30 < 0.000001)
      {
        v30 = 0.000001;
      }

      v31 = vmla_n_f32(v26, v28, v29 / v30);
      v32 = vsub_f32(v31, v26);
      v33 = vsub_f32(v31, v27);
      if (vaddv_f32(vmul_f32(v32, v33)) > 0.00001)
      {
        v34 = vmul_f32(v32, v32);
        v35 = vmul_f32(v33, v33);
        v36 = vsqrt_f32(vadd_f32(vzip1_s32(v34, v35), vzip2_s32(v34, v35)));
        v31 = vbsl_s8(vdup_lane_s32(vmvn_s8(vcge_f32(vdup_lane_s32(v36, 1), v36)), 0), v27, v26);
      }

      v37 = vsub_f32(*a1, v31);
      v38 = vmul_f32(v37, v37);
      v38.f32[0] = sqrtf(vaddv_f32(v38));
      v13 = vbsl_s8(vdup_lane_s32(vcgt_f32(v3, v38), 0), v31, v13);
      if (v3.f32[0] > v38.f32[0])
      {
        v3.f32[0] = v38.f32[0];
      }
    }

    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v41, v49, 16);
  }

  while (v10);

  if (v4.f32[0] >= 0.35 && v3.f32[0] >= 0.2)
  {
    goto LABEL_23;
  }

  if (v4.f32[0] < 0.35)
  {
    v13 = v12;
  }

LABEL_24:
  v39 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_2623392A4(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v10 = *a1;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 3) + 1;
    if (v11 > 0x666666666666666)
    {
      sub_2621CBEB0();
    }

    v12 = a2 - v10;
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v10) >> 3);
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x333333333333333)
    {
      v14 = 0x666666666666666;
    }

    else
    {
      v14 = v11;
    }

    v22 = a1;
    if (v14)
    {
      sub_2622931B8(v14);
    }

    v15 = 8 * (v12 >> 3);
    v18 = 0;
    v19 = v15;
    v20 = v15;
    v21 = 0;
    if (!(0xCCCCCCCCCCCCCCCDLL * (v12 >> 3)))
    {
      if (v12 < 1)
      {
        if (v10 == a2)
        {
          v17 = 1;
        }

        else
        {
          v17 = 0x999999999999999ALL * (v12 >> 3);
        }

        v25 = a1;
        sub_2622931B8(v17);
      }

      v16 = 1 - 0x3333333333333333 * (v12 >> 3);
      v15 = sub_262339830(v15, v15, v15 - 40 * (v16 >> 1));
      v19 -= 40 * (v16 >> 1);
      v20 = v15;
    }

    sub_262292E28(v15, a3);
    v20 += 40;
    sub_262339774(a1, &v18, a2);
    sub_2622932BC(&v18);
  }

  else if (a2 == v7)
  {
    sub_262292E28(a1[1], a3);
    a1[1] = v7 + 40;
  }

  else
  {
    sub_262339630(a1, a2, a1[1], a2 + 40);
    v8 = a1[1] <= a3 || a2 > a3;
    v9 = 40;
    if (v8)
    {
      v9 = 0;
    }

    sub_262339704(v23, a2, a3 + v9);
    sub_2621CC7B4(v24);
  }
}

void sub_262339540(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_2621CBEB0();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
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

void sub_262339630(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = a2 + v7 - a4;
  if (v8 >= a3)
  {
    v10 = *(a1 + 8);
  }

  else
  {
    v10 = *(a1 + 8);
    do
    {
      sub_262292E28(v10, v8);
      v8 += 40;
      v10 += 40;
    }

    while (v8 < a3);
  }

  *(a1 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 40;
    v12 = a4 - v7;
    v13 = a2 + v7 - 40 - a4;
    do
    {
      sub_262339704(v14, v11, v13);
      sub_2621CC7B4(v15);
      v11 -= 40;
      v13 -= 40;
      v12 += 40;
    }

    while (v12);
  }
}

uint64_t sub_262339704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  if (a2 != a3)
  {
    sub_262292EA0((a2 + 8), *(a3 + 8), (a3 + 16));
  }

  *(a2 + 32) = *(a3 + 32);

  return sub_262292E28(a1, a2);
}

uint64_t sub_262339774(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_262293210(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_262293210(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_262339830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_262339704(v7, a3, v5);
      sub_2621CC7B4(v8);
      v5 += 40;
      a3 += 40;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t sub_26233989C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 32);
      if (v5)
      {
        *(v3 - 24) = v5;
        operator delete(v5);
      }

      v3 -= 64;
    }
  }

  return a1;
}

void sub_2623398FC(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_262339944(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 64;
    v4 = *(v2 - 32);
    if (v4)
    {
      *(v2 - 24) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 64;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2623399A8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v44 = 0;
  v5 = *a1;
  v4 = a1[1];
  if (v4 != *a1)
  {
    v41 = 0;
    v7 = *a2;
    v6 = a2[1];
    do
    {
      if (v6 == v7)
      {
        v6 = v7;
      }

      else
      {
        v8 = 0;
        do
        {
          v9 = *a3;
          v10 = (*a1 + 16 * v41);
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v42 = *(v9 + 8 * v8);
          v58 = 0;
          v59 = 0;
          v60 = 0;
          memset(v57, 0, sizeof(v57));
          v47 = &unk_2874EF0B8;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0;
          v55 = 0;
          v56 = 257;
          sub_262339DB8(v10, &v47, &v58, v57);
          v11 = 0;
          v12 = 0;
          v13 = (v7 + 16 * v8);
          v15 = v58;
          v14 = v59;
          v16 = *&v42 + 10.0;
          v17 = *(&v42 + 1) + -10.0;
          v18 = v58;
          do
          {
            v43 = vsub_f32(vrev64_s32(*v18), *v13);
            v19 = atan2f(v43.f32[0], v43.f32[1]) * 57.2957795;
            v20 = sqrtf(vaddv_f32(vmul_f32(v43, v43)));
            v45 = v20;
            v46 = v19;
            sub_2621C8F2C(&v64, &v45);
            sub_2621C8F2C(&v61, &v46);
            v21 = v13[1].f32[0];
            v22 = vabds_f32(v20, v21);
            if (v22 < 10.0)
            {
              v23 = *&v42 >= v19 || *(&v42 + 1) <= v19;
              if (!v23 || (*&v42 < (v19 + 360.0) ? (v24 = (v19 + 360.0) < *(&v42 + 1)) : (v24 = 0), v24))
              {
                ++v11;
              }
            }

            if (v22 < (v21 / 3.0))
            {
              v25 = v16 >= v19 || v17 <= v19;
              if (!v25 || (v16 < (v19 + 360.0) ? (v26 = (v19 + 360.0) < v17) : (v26 = 0), v26))
              {
                ++v12;
              }
            }

            ++v18;
          }

          while (v18 != v14);
          v27 = v64;
          v28 = v61;
          v29 = *v61;
          v30 = *(v62 - 4);
          if (*v61 >= 360.0)
          {
            v29 = *v61 + -360.0;
          }

          if (v30 >= 360.0)
          {
            v30 = v30 + -360.0;
          }

          if (v29 < 0.0)
          {
            v29 = v29 + 360.0;
          }

          if (v30 < 0.0)
          {
            v30 = v30 + 360.0;
          }

          if (v30 >= v29)
          {
            v31 = v30;
          }

          else
          {
            v31 = v29;
          }

          if (v30 < v29)
          {
            v29 = v30;
          }

          v32 = v31 - v29;
          v33 = (v29 + 360.0) - v31;
          if (v33 < v32)
          {
            v32 = v33;
          }

          v34 = (v14 - v15);
          v36 = 1;
          if ((v11 / v34) <= 0.15 || (vabds_f32(*v64, *(v65 - 4)) / v32) >= 4.0)
          {
            if ((v12 / v34) == 0.0 || (v35 = vsub_f32(*v10, v10[1]), sqrtf(vaddv_f32(vmul_f32(v35, v35))) >= 10.0))
            {
              v36 = 0;
            }
          }

          v47 = &unk_2874EF0B8;
          if (v55)
          {
            sub_2621D1B78(v55);
          }

          if (v57[0])
          {
            operator delete(v57[0]);
          }

          if (v15)
          {
            operator delete(v15);
          }

          operator delete(v28);
          operator delete(v27);
          if (v36)
          {
            sub_2621C9004(a4, &v44);
          }

          ++v8;
          v7 = *a2;
          v6 = a2[1];
        }

        while (v8 < (v6 - *a2) >> 4);
        v5 = *a1;
        v4 = a1[1];
      }

      v44 = ++v41;
    }

    while (v41 < (v4 - v5) >> 4);
  }
}

void sub_262339D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (a39)
  {
    sub_2621D1B78(a39);
  }

  v41 = *(v39 - 248);
  if (v41)
  {
    operator delete(v41);
  }

  v42 = *(v39 - 224);
  if (v42)
  {
    operator delete(v42);
  }

  v43 = *(v39 - 200);
  if (v43)
  {
    operator delete(v43);
  }

  v44 = *(v39 - 176);
  if (v44)
  {
    operator delete(v44);
  }

  _Unwind_Resume(exception_object);
}

void sub_262339DB8(float32x2_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a1[1];
  v7 = vsub_f32(*a1, v6);
  v8 = llroundf(sqrtf(vaddv_f32(vmul_f32(v7, v7))));
  if (v8 <= 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  sub_262267420(v40, v9, *a1, v6.f32[0]);
  LODWORD(v10) = a1->i32[1];
  sub_262267420(v38, v9, v10, a1[1].f32[1]);
  v44[0].__locale_ = 0;
  v11 = 1;
  v12 = v9;
  do
  {
    v36 = *sub_2622CB6CC(v40, v44);
    v13 = sub_2622CB6CC(v38, v44);
    LODWORD(v14) = v36;
    HIDWORD(v14) = *v13;
    *&v47 = v14;
    sub_2621CBA84(a3, &v47);
    v44[0].__locale_ = v11++;
    --v12;
  }

  while (v12);
  if ((*(a2 + 137) & 1) == 0)
  {
    v15 = 0;
    v16 = a2 + 8;
    v17 = MEMORY[0x277D82670];
    v18 = vadd_s32(vmovn_s64(*(a2 + 8)), -1);
    v19 = MEMORY[0x277D82680];
    v33 = a3;
    do
    {
      v20 = *(*a3 + 8 * v15);
      if (*(a2 + 137) == 1)
      {
        sub_2621D552C(v17, "runtime_err in ", 15);
        sub_2621D552C(v17, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v17, " ", 1);
        v21 = MEMORY[0x266727260](v17, 1159);
        sub_2621D552C(v21, " ", 1);
        sub_2621D552C(v21, "at", 2);
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v22 = std::locale::use_facet(v44, v19);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(v44);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D6874("err", "empty tensor");
        std::ios_base::getloc((v17 + *(*v17 - 24)));
        v23 = std::locale::use_facet(v44, v19);
        (v23->__vftable[2].~facet_0)(v23, 10);
        std::locale::~locale(v44);
        std::ostream::put();
        std::ostream::flush();
      }

      v37 = v15;
      v24 = 0;
      v25 = vmax_s32(vmin_s32(v18, vcvt_s32_f32(v20)), 0);
      *&v26 = v25.u32[0];
      *(&v26 + 1) = v25.u32[1];
      v46 = 0u;
      v47 = v26;
      v42 = 0;
      *&v44[0].__locale_ = 0u;
      v45 = 0u;
      v27 = 1;
      do
      {
        v28 = *(&v47 + v24);
        if (v28 >= *(v16 + v24))
        {
          sub_2621D552C(v17, "runtime_err in ", 15);
          sub_2621D552C(v17, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
          sub_2621D552C(v17, " ", 1);
          v29 = MEMORY[0x266727260](v17, 1167);
          sub_2621D552C(v29, " ", 1);
          sub_2621D552C(v29, "at", 2);
          std::ios_base::getloc((v29 + *(*v29 - 24)));
          v30 = std::locale::use_facet(&v43, v19);
          (v30->__vftable[2].~facet_0)(v30, 10);
          std::locale::~locale(&v43);
          std::ostream::put();
          std::ostream::flush();
          sub_2621DA198("err", "shape", &v42, "=", (&v47 + v24), "should smaller then", (v16 + v24));
          std::ios_base::getloc((v17 + *(*v17 - 24)));
          v31 = std::locale::use_facet(&v43, v19);
          (v31->__vftable[2].~facet_0)(v31, 10);
          std::locale::~locale(&v43);
          std::ostream::put();
          std::ostream::flush();
        }

        v42 = v27;
        v44[v24 / 8].__locale_ = v28;
        v24 += 8;
        ++v27;
      }

      while (v24 != 16);
      sub_2621C8F2C(a4, (*(a2 + 144) + 4 * *(a2 + 64) * v44[1].__locale_ + 4 * *(a2 + 56) * v44[0].__locale_));
      a3 = v33;
      v15 = v37 + 1;
    }

    while (v37 + 1 != v9);
  }

  v38[0] = &unk_2874EF6A8;
  if (v39)
  {
    sub_2621D1B78(v39);
  }

  v40[0] = &unk_2874EF6A8;
  if (v41)
  {
    sub_2621D1B78(v41);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_26233A304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, std::__shared_weak_count *a50)
{
  if (a50)
  {
    sub_2621D1B78(a50);
  }

  _Unwind_Resume(exception_object);
}

void sub_26233A3A4(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v6 = *sub_2621CD160(a1, (a2[1] - *a2) >> 2);
  v7 = a1[1];
  if (v6 != v7)
  {
    v8 = 0;
    v9 = (v7 - v6 - 8) >> 3;
    v10 = vdupq_n_s64(v9);
    v11 = (v9 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v12 = xmmword_2623A7620;
    v13 = vdupq_n_s64(2uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v10, v12));
      if (v14.i8[0])
      {
        *(v6 + 8 * v8) = v8;
      }

      if (v14.i8[4])
      {
        *(v6 + 8 * v8 + 8) = v8 + 1;
      }

      v8 += 2;
      v12 = vaddq_s64(v12, v13);
    }

    while (v11 != v8);
  }

  v15 = 126 - 2 * __clz((v7 - v6) >> 3);
  v26 = a2;
  if (v7 == v6)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  sub_26233A7D8(v6, v7, &v26, v16, 1);
  v17 = (a2[1] - *a2) >> 2;
  if (v17 >= a3)
  {
    v17 = a3;
  }

  v18 = *a1;
  v19 = a1[1];
  v20 = (v19 - *a1) >> 3;
  if (v17 <= v20)
  {
    if (v17 >= v20)
    {
      return;
    }

    v25 = v18 + 8 * v17;
  }

  else
  {
    v21 = v17 - v20;
    v22 = a1[2];
    if (v21 > (v22 - v19) >> 3)
    {
      if (!(v17 >> 61))
      {
        v23 = v22 - v18;
        if (v23 >> 2 > v17)
        {
          v17 = v23 >> 2;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v17;
        }

        sub_2621CBEC8(v24);
      }

      sub_2621CBEB0();
    }

    bzero(a1[1], 8 * v21);
    v25 = v19 + 8 * v21;
  }

  a1[1] = v25;
}

void sub_26233A594(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_26233A5B0(uint64_t a1, float32x2_t a2, float a3, float32x2_t a4)
{
  v18 = vsub_f32(a4, a2);
  v7 = a3;
  v8 = v18.f32[0] * v18.f32[0];
  v9 = pow(a3, 4.0) * 4.0 * v8;
  v10 = v9 / pow(v18.f32[1], 4.0) + v7 * v7 * ((v8 / (v18.f32[1] * v18.f32[1]) + 1.0) * -4.0) * (v7 * v7 / (v18.f32[1] * v18.f32[1]) + -1.0);
  if (v10 <= 0.0)
  {
    v17 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    v11 = sqrtf(v10);
    v12 = ((((a3 + a3) * a3) * v18.f32[0]) / v18.f32[1]) / v18.f32[1];
    v13 = vmul_f32(v18, v18).f32[0];
    v14 = (((v13 / v18.f32[1]) / v18.f32[1]) + 1.0) + (((v13 / v18.f32[1]) / v18.f32[1]) + 1.0);
    v15.f32[0] = (v12 + v11) / v14;
    v16.f32[0] = (v12 - v11) / v14;
    v15.f32[1] = ((a3 * a3) - (v18.f32[0] * v15.f32[0])) / v18.f32[1];
    v16.f32[1] = ((a3 * a3) - (v18.f32[0] * v16.f32[0])) / v18.f32[1];
    *(a1 + 8) = vadd_f32(v15, a2);
    *(a1 + 16) = vadd_f32(v16, a2);
    v17 = 1;
  }

  *a1 = v17;
}

BOOL sub_26233A708(float32x2_t *a1, uint64_t a2)
{
  if (*(a2 + 137))
  {
    return 0;
  }

  memset(__p, 0, sizeof(__p));
  v7 = 0;
  v8 = 0;
  v9 = 0;
  sub_262339DB8(a1, a2, __p, &v7);
  v3 = 0.0;
  if (v7 != v8)
  {
    v4 = v7;
    do
    {
      v5 = *v4++;
      v3 = v3 + v5;
    }

    while (v4 != v8);
  }

  v2 = (v3 / (v8 - v7)) > 0.1;
  if (v7)
  {
    operator delete(v7);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_26233A7B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26233A7D8(uint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v11 = v9;
  while (1)
  {
    v9 = v11;
    v12 = a2 - v11;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v79 = *v11;
        if (*(**a3 + 4 * *v10) < *(**a3 + 4 * *v11))
        {
          *v11 = *v10;
          *v10 = v79;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v87 = v11 + 1;
      v88 = v11[1];
      v89 = v11 + 2;
      v90 = v11[2];
      v91 = **a3;
      v92 = *(v91 + 4 * v88);
      v93 = *v11;
      v94 = *(v91 + 4 * *v11);
      v95 = *(v91 + 4 * v90);
      if (v92 >= v94)
      {
        if (v95 >= v92)
        {
          goto LABEL_169;
        }

        *v87 = v90;
        *v89 = v88;
        v96 = v11;
        v97 = (v11 + 1);
        result = v88;
        if (v95 < v94)
        {
          goto LABEL_160;
        }
      }

      else
      {
        v96 = v11;
        v97 = (v11 + 2);
        result = *v11;
        if (v95 >= v92)
        {
          *v11 = v88;
          v11[1] = v93;
          v96 = v11 + 1;
          v97 = (v11 + 2);
          result = v93;
          if (v95 >= v94)
          {
LABEL_169:
            v88 = v90;
            goto LABEL_170;
          }
        }

LABEL_160:
        *v96 = v90;
        *v97 = v93;
        v88 = result;
      }

LABEL_170:
      if (*(v91 + 4 * *v10) < *(v91 + 4 * v88))
      {
        *v89 = *v10;
        *v10 = v88;
        v149 = *v89;
        v150 = *v87;
        v151 = *(v91 + 4 * v149);
        if (v151 < *(v91 + 4 * v150))
        {
          v11[1] = v149;
          v11[2] = v150;
          v152 = *v11;
          if (v151 < *(v91 + 4 * *v11))
          {
            *v11 = v149;
            v11[1] = v152;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {
      v78 = **a3;

      return sub_26233B1FC(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, v78);
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {
        if (v11 != a2)
        {
          v98 = v11 + 1;
          if (v11 + 1 != a2)
          {
            v99 = **a3;
            v100 = 8;
            v101 = v11;
            do
            {
              v103 = *v101;
              v102 = v101[1];
              v101 = v98;
              v104 = *(v99 + 4 * v102);
              if (v104 < *(v99 + 4 * v103))
              {
                v105 = v100;
                while (1)
                {
                  *(v11 + v105) = v103;
                  v106 = v105 - 8;
                  if (v105 == 8)
                  {
                    break;
                  }

                  v103 = *(v11 + v105 - 16);
                  v105 -= 8;
                  if (v104 >= *(v99 + 4 * v103))
                  {
                    v107 = (v11 + v106);
                    goto LABEL_123;
                  }
                }

                v107 = v11;
LABEL_123:
                *v107 = v102;
              }

              v98 = v101 + 1;
              v100 += 8;
            }

            while (v101 + 1 != a2);
          }
        }
      }

      else if (v11 != a2)
      {
        v144 = v11 + 1;
        if (v11 + 1 != a2)
        {
          v145 = **a3;
          do
          {
            v147 = *v9;
            v146 = v9[1];
            v9 = v144;
            v148 = *(v145 + 4 * v146);
            if (v148 < *(v145 + 4 * v147))
            {
              do
              {
                *v144 = v147;
                v147 = *(v144 - 2);
                --v144;
              }

              while (v148 < *(v145 + 4 * v147));
              *v144 = v146;
            }

            v144 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v108 = (v12 - 2) >> 1;
        v109 = *a3;
        v110 = v108;
        do
        {
          v111 = v110;
          if (v108 >= v110)
          {
            v112 = (2 * v110) | 1;
            v113 = &v11[v112];
            v114 = 2 * v110 + 2;
            v115 = *v109;
            if (v114 < v12 && *(v115 + 4 * *v113) < *(v115 + 4 * v113[1]))
            {
              ++v113;
              v112 = 2 * v111 + 2;
            }

            result = &v11[v111];
            v116 = *v113;
            v117 = *result;
            v118 = *(v115 + 4 * *result);
            if (*(v115 + 4 * *v113) >= v118)
            {
              do
              {
                v119 = v113;
                *result = v116;
                if (v108 < v112)
                {
                  break;
                }

                v120 = 2 * v112;
                v112 = (2 * v112) | 1;
                v113 = &v11[v112];
                v121 = v120 + 2;
                if (v121 < v12 && *(v115 + 4 * *v113) < *(v115 + 4 * v113[1]))
                {
                  ++v113;
                  v112 = v121;
                }

                v116 = *v113;
                result = v119;
              }

              while (*(v115 + 4 * *v113) >= v118);
              *v119 = v117;
            }
          }

          v110 = v111 - 1;
        }

        while (v111);
        do
        {
          v122 = 0;
          v123 = *v11;
          v124 = *a3;
          v125 = v11;
          do
          {
            v126 = v125;
            v127 = &v125[v122];
            v125 = v127 + 1;
            v128 = 2 * v122;
            v122 = (2 * v122) | 1;
            v129 = v128 + 2;
            if (v129 < v12)
            {
              v131 = v127[2];
              v130 = v127 + 2;
              result = *(v130 - 1);
              if (*(*v124 + 4 * result) < *(*v124 + 4 * v131))
              {
                v125 = v130;
                v122 = v129;
              }
            }

            *v126 = *v125;
          }

          while (v122 <= ((v12 - 2) >> 1));
          if (v125 == --a2)
          {
            *v125 = v123;
          }

          else
          {
            *v125 = *a2;
            *a2 = v123;
            v132 = (v125 - v11 + 8) >> 3;
            v133 = v132 < 2;
            v134 = v132 - 2;
            if (!v133)
            {
              v135 = v134 >> 1;
              v136 = &v11[v135];
              v137 = *v136;
              v138 = *v125;
              v139 = *v124;
              v140 = *(v139 + 4 * *v125);
              if (*(v139 + 4 * *v136) < v140)
              {
                do
                {
                  v141 = v136;
                  *v125 = v137;
                  if (!v135)
                  {
                    break;
                  }

                  v135 = (v135 - 1) >> 1;
                  v136 = &v11[v135];
                  v137 = *v136;
                  v125 = v141;
                }

                while (*(v139 + 4 * *v136) < v140);
                *v141 = v138;
              }
            }
          }

          v133 = v12-- <= 2;
        }

        while (!v133);
      }

      return result;
    }

    v13 = &v11[v12 >> 1];
    v14 = v13;
    v15 = **a3;
    v16 = *v10;
    v17 = *(v15 + 4 * *v10);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v11;
      v20 = *(v15 + 4 * *v13);
      v21 = *(v15 + 4 * *v11);
      if (v20 >= v21)
      {
        if (v17 < v20)
        {
          *v13 = v16;
          *v10 = v18;
          v26 = *v11;
          if (*(v15 + 4 * *v13) < *(v15 + 4 * *v11))
          {
            *v11 = *v13;
            *v13 = v26;
          }
        }
      }

      else
      {
        if (v17 < v20)
        {
          *v11 = v16;
          goto LABEL_27;
        }

        *v11 = v18;
        *v13 = v19;
        if (*(v15 + 4 * *v10) < v21)
        {
          *v13 = *v10;
LABEL_27:
          *v10 = v19;
        }
      }

      v28 = v13 - 1;
      v29 = *(v13 - 1);
      v30 = v11[1];
      v31 = *(v15 + 4 * v29);
      v32 = *(v15 + 4 * v30);
      v33 = *(a2 - 2);
      v34 = *(v15 + 4 * v33);
      if (v31 >= v32)
      {
        if (v34 < v31)
        {
          *v28 = v33;
          *(a2 - 2) = v29;
          v35 = v11[1];
          if (*(v15 + 4 * *v28) < *(v15 + 4 * v35))
          {
            v11[1] = *v28;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v11[1] = v33;
          goto LABEL_39;
        }

        v11[1] = v29;
        *v28 = v30;
        v36 = *(a2 - 2);
        if (*(v15 + 4 * v36) < v32)
        {
          *v28 = v36;
LABEL_39:
          *(a2 - 2) = v30;
        }
      }

      v39 = v13[1];
      v37 = v13 + 1;
      v38 = v39;
      v40 = v11[2];
      v41 = *(v15 + 4 * v39);
      v42 = *(v15 + 4 * v40);
      v43 = *(a2 - 3);
      v44 = *(v15 + 4 * v43);
      if (v41 >= v42)
      {
        if (v44 < v41)
        {
          *v37 = v43;
          *(a2 - 3) = v38;
          v45 = v11[2];
          if (*(v15 + 4 * *v37) < *(v15 + 4 * v45))
          {
            v11[2] = *v37;
            *v37 = v45;
          }
        }
      }

      else
      {
        if (v44 < v41)
        {
          v11[2] = v43;
          goto LABEL_48;
        }

        v11[2] = v38;
        *v37 = v40;
        v46 = *(a2 - 3);
        if (*(v15 + 4 * v46) < v42)
        {
          *v37 = v46;
LABEL_48:
          *(a2 - 3) = v40;
        }
      }

      v47 = *v14;
      v48 = *v28;
      v49 = *(v15 + 4 * *v14);
      v50 = *(v15 + 4 * *v28);
      v51 = *v37;
      v52 = *(v15 + 4 * *v37);
      if (v49 >= v50)
      {
        if (v52 >= v49)
        {
          goto LABEL_56;
        }

        *v14 = v51;
        *v37 = v47;
        v37 = v14;
        v47 = v48;
        if (v52 >= v50)
        {
          v47 = v51;
          goto LABEL_56;
        }
      }

      else if (v52 >= v49)
      {
        *v28 = v47;
        *v14 = v48;
        v28 = v14;
        v47 = v51;
        if (v52 >= v50)
        {
          v47 = v48;
LABEL_56:
          v53 = *v11;
          *v11 = v47;
          *v14 = v53;
          goto LABEL_57;
        }
      }

      *v28 = v51;
      *v37 = v48;
      goto LABEL_56;
    }

    v22 = *v11;
    v23 = *v14;
    v24 = *(v15 + 4 * *v11);
    v25 = *(v15 + 4 * *v14);
    if (v24 >= v25)
    {
      if (v17 < v24)
      {
        *v11 = v16;
        *v10 = v22;
        v27 = *v14;
        if (*(v15 + 4 * *v11) < *(v15 + 4 * *v14))
        {
          *v14 = *v11;
          *v11 = v27;
        }
      }

      goto LABEL_57;
    }

    if (v17 < v24)
    {
      *v14 = v16;
LABEL_36:
      *v10 = v23;
      goto LABEL_57;
    }

    *v14 = v22;
    *v11 = v23;
    if (*(v15 + 4 * *v10) < v25)
    {
      *v11 = *v10;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v54 = *v11;
    if (a5)
    {
      v55 = *(v15 + 4 * v54);
LABEL_60:
      v56 = v11;
      do
      {
        v57 = v56;
        v59 = v56[1];
        ++v56;
        v58 = v59;
      }

      while (*(v15 + 4 * v59) < v55);
      v60 = a2;
      if (v57 == v11)
      {
        v60 = a2;
        do
        {
          if (v56 >= v60)
          {
            break;
          }

          v62 = *--v60;
        }

        while (*(v15 + 4 * v62) >= v55);
      }

      else
      {
        do
        {
          v61 = *--v60;
        }

        while (*(v15 + 4 * v61) >= v55);
      }

      if (v56 < v60)
      {
        v63 = *v60;
        v64 = v56;
        v65 = v60;
        do
        {
          *v64 = v63;
          *v65 = v58;
          do
          {
            v57 = v64;
            v66 = v64[1];
            ++v64;
            v58 = v66;
          }

          while (*(v15 + 4 * v66) < v55);
          do
          {
            v67 = *--v65;
            v63 = v67;
          }

          while (*(v15 + 4 * v67) >= v55);
        }

        while (v64 < v65);
      }

      if (v57 != v11)
      {
        *v11 = *v57;
      }

      *v57 = v54;
      if (v56 < v60)
      {
        goto LABEL_79;
      }

      v68 = sub_26233B370(v11, v57, *a3);
      v11 = v57 + 1;
      result = sub_26233B370(v57 + 1, a2, *a3);
      if (result)
      {
        a2 = v57;
        if (!v68)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v68)
      {
LABEL_79:
        result = sub_26233A7D8(v9, v57, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v57 + 1;
      }
    }

    else
    {
      v55 = *(v15 + 4 * v54);
      if (*(v15 + 4 * *(v11 - 1)) < v55)
      {
        goto LABEL_60;
      }

      if (v55 >= *(v15 + 4 * *v10))
      {
        v70 = v11 + 1;
        do
        {
          v11 = v70;
          if (v70 >= a2)
          {
            break;
          }

          ++v70;
        }

        while (v55 >= *(v15 + 4 * *v11));
      }

      else
      {
        do
        {
          v69 = v11[1];
          ++v11;
        }

        while (v55 >= *(v15 + 4 * v69));
      }

      v71 = a2;
      if (v11 < a2)
      {
        v71 = a2;
        do
        {
          v72 = *--v71;
        }

        while (v55 < *(v15 + 4 * v72));
      }

      if (v11 < v71)
      {
        v73 = *v11;
        v74 = *v71;
        do
        {
          *v11 = v74;
          *v71 = v73;
          do
          {
            v75 = v11[1];
            ++v11;
            v73 = v75;
          }

          while (v55 >= *(v15 + 4 * v75));
          do
          {
            v76 = *--v71;
            v74 = v76;
          }

          while (v55 < *(v15 + 4 * v76));
        }

        while (v11 < v71);
      }

      v77 = v11 - 1;
      if (v11 - 1 != v9)
      {
        *v9 = *v77;
      }

      a5 = 0;
      *v77 = v54;
    }
  }

  v80 = *v11;
  v81 = v11[1];
  v82 = **a3;
  v83 = *(v82 + 4 * v81);
  v84 = *(v82 + 4 * *v11);
  v85 = *v10;
  v86 = *(v82 + 4 * *v10);
  if (v83 >= v84)
  {
    if (v86 < v83)
    {
      v11[1] = v85;
      *v10 = v81;
      v143 = *v11;
      v142 = v11[1];
      if (*(v82 + 4 * v142) < *(v82 + 4 * *v11))
      {
        *v11 = v142;
        v11[1] = v143;
      }
    }
  }

  else
  {
    if (v86 >= v83)
    {
      *v11 = v81;
      v11[1] = v80;
      if (*(v82 + 4 * *v10) >= v84)
      {
        return result;
      }

      v11[1] = *v10;
    }

    else
    {
      *v11 = v85;
    }

    *v10 = v80;
  }

  return result;
}

uint64_t *sub_26233B1FC(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(a6 + 4 * *a2);
  v9 = *(a6 + 4 * *result);
  v10 = *a3;
  v11 = *(a6 + 4 * *a3);
  if (v8 >= v9)
  {
    if (v11 >= v8)
    {
      v6 = *a3;
    }

    else
    {
      *a2 = v10;
      *a3 = v6;
      v12 = *result;
      if (*(a6 + 4 * *a2) < *(a6 + 4 * *result))
      {
        *result = *a2;
        *a2 = v12;
        v6 = *a3;
      }
    }
  }

  else
  {
    if (v11 < v8)
    {
      *result = v10;
LABEL_9:
      *a3 = v7;
      v6 = v7;
      goto LABEL_11;
    }

    *result = v6;
    *a2 = v7;
    v6 = *a3;
    if (*(a6 + 4 * *a3) < v9)
    {
      *a2 = v6;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(a6 + 4 * *a4) < *(a6 + 4 * v6))
  {
    *a3 = *a4;
    *a4 = v6;
    v13 = *a2;
    if (*(a6 + 4 * *a3) < *(a6 + 4 * *a2))
    {
      *a2 = *a3;
      *a3 = v13;
      v14 = *result;
      if (*(a6 + 4 * *a2) < *(a6 + 4 * *result))
      {
        *result = *a2;
        *a2 = v14;
      }
    }
  }

  v15 = *a4;
  if (*(a6 + 4 * *a5) < *(a6 + 4 * *a4))
  {
    *a4 = *a5;
    *a5 = v15;
    v16 = *a3;
    if (*(a6 + 4 * *a4) < *(a6 + 4 * *a3))
    {
      *a3 = *a4;
      *a4 = v16;
      v17 = *a2;
      if (*(a6 + 4 * *a3) < *(a6 + 4 * *a2))
      {
        *a2 = *a3;
        *a3 = v17;
        v18 = *result;
        if (*(a6 + 4 * *a2) < *(a6 + 4 * *result))
        {
          *result = *a2;
          *a2 = v18;
        }
      }
    }
  }

  return result;
}

BOOL sub_26233B370(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *a3;
      v9 = *(*a3 + 4 * v7);
      v10 = *(*a3 + 4 * *a1);
      v11 = *(a2 - 1);
      v12 = *(*a3 + 4 * v11);
      if (v9 >= v10)
      {
        if (v12 < v9)
        {
          a1[1] = v11;
          *(a2 - 1) = v7;
          v36 = *a1;
          v35 = a1[1];
          if (*(v8 + 4 * v35) < *(v8 + 4 * *a1))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v12 >= v9)
      {
        *a1 = v7;
        a1[1] = v6;
        v51 = *(a2 - 1);
        if (*(v8 + 4 * v51) >= v10)
        {
          return 1;
        }

        a1[1] = v51;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_26233B1FC(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *a3);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = *a3;
    v28 = *(*a3 + 4 * v24);
    v29 = *a1;
    v30 = *(*a3 + 4 * *a1);
    v31 = *(*a3 + 4 * v26);
    if (v28 >= v30)
    {
      if (v31 >= v28)
      {
LABEL_41:
        v24 = v26;
        goto LABEL_42;
      }

      *v23 = v26;
      *v25 = v24;
      v32 = a1;
      v33 = a1 + 1;
      v34 = v24;
      if (v31 >= v30)
      {
LABEL_42:
        v46 = *(a2 - 1);
        if (*(v27 + 4 * v46) < *(v27 + 4 * v24))
        {
          *v25 = v46;
          *(a2 - 1) = v24;
          v47 = *v25;
          v48 = *v23;
          v49 = *(v27 + 4 * v47);
          if (v49 < *(v27 + 4 * v48))
          {
            a1[1] = v47;
            a1[2] = v48;
            v50 = *a1;
            if (v49 < *(v27 + 4 * *a1))
            {
              *a1 = v47;
              a1[1] = v50;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v32 = a1;
      v33 = a1 + 2;
      v34 = *a1;
      if (v31 >= v28)
      {
        *a1 = v24;
        a1[1] = v29;
        v32 = a1 + 1;
        v33 = a1 + 2;
        v34 = v29;
        if (v31 >= v30)
        {
          goto LABEL_41;
        }
      }
    }

    *v32 = v26;
    *v33 = v29;
    v24 = v34;
    goto LABEL_42;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 4 * v4) < *(*a3 + 4 * *a1))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v13 = a1[2];
  v15 = a1[1];
  v16 = *a3;
  v17 = *(*a3 + 4 * v15);
  v18 = *a1;
  v19 = *(*a3 + 4 * *a1);
  v20 = *(*a3 + 4 * v13);
  if (v17 < v19)
  {
    v21 = a1;
    v22 = a1 + 2;
    if (v20 >= v17)
    {
      *a1 = v15;
      a1[1] = v18;
      v21 = a1 + 1;
      v22 = a1 + 2;
      if (v20 >= v19)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    *v21 = v13;
    *v22 = v18;
    goto LABEL_27;
  }

  if (v20 < v17)
  {
    a1[1] = v13;
    *v14 = v15;
    v21 = a1;
    v22 = a1 + 1;
    if (v20 < v19)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 24; ; i += 8)
  {
    v40 = *v37;
    v41 = *v14;
    v42 = *(v16 + 4 * *v37);
    if (v42 < *(v16 + 4 * v41))
    {
      v43 = i;
      while (1)
      {
        *(a1 + v43) = v41;
        v44 = v43 - 8;
        if (v43 == 8)
        {
          break;
        }

        v41 = *(a1 + v43 - 16);
        v43 -= 8;
        if (v42 >= *(v16 + 4 * v41))
        {
          v45 = (a1 + v44);
          goto LABEL_35;
        }
      }

      v45 = a1;
LABEL_35:
      *v45 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v14 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

_OWORD *sub_26233B674(_OWORD *a1, __int128 *a2, __int128 *a3)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v5 = a1 + 3;
  v6 = *a2;
  v7 = a2[2];
  a1[4] = a2[1];
  a1[5] = v7;
  a1[3] = v6;
  sub_26222D2A8((a1 + 6), (a2 + 3));
  v8 = *a3;
  v9 = a3[2];
  *(a1 + 264) = a3[1];
  *(a1 + 280) = v9;
  *(a1 + 248) = v8;
  sub_26222D2A8(a1 + 296, (a3 + 3));
  v10 = 0;
  v11 = 1;
  do
  {
    v12 = *(v5 + v10);
    v13 = *(a1 + v10 + 31);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v11 = 0;
    v10 = 1;
  }

  while (v12 == v13);
  if (v12 != v13)
  {
    v14 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v15 = sub_2621D552C(v14, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/function/../expression/exp_element_binary.hpp", 127);
    sub_2621D552C(v15, " ", 1);
    v16 = MEMORY[0x277D82670];
    v17 = MEMORY[0x266727260](MEMORY[0x277D82670], 64);
    sub_2621D552C(v17, " ", 1);
    sub_2621D552C(v17, "TensorBinaryExp", 15);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D6B98("err", "Binary Exp shape should equal");
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v19 = std::locale::use_facet(&v22, MEMORY[0x277D82680]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
  }

  v20 = v5[1];
  *a1 = *v5;
  a1[1] = v20;
  a1[2] = v5[2];
  return a1;
}

void sub_26233B8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  v10[37] = &unk_2874EEC38;
  v12 = v10[53];
  if (v12)
  {
    sub_2621D1B78(v12);
  }

  v10[12] = &unk_2874EEC38;
  v13 = v10[28];
  if (v13)
  {
    sub_2621D1B78(v13);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_26233B93C(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8) * *a1;
  memset(v22, 0, sizeof(v22));
  if (*(a1 + 280) == 1 && *(a1 + 480) == 1)
  {
    v3 = *(a1 + 288);
    v4 = *(a1 + 488);
    v5 = *(a1 + 544);
    v6 = (*v4 + *v3) / v5;
    if (v2 >= 2)
    {
      v7 = v2 - 1;
      v8 = v4 + 1;
      v9 = v3 + 1;
      do
      {
        v11 = *v9++;
        v10 = v11;
        v12 = *v8++;
        v6 += (v12 + v10) / v5;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v13 = sub_26233BDF4(a1 + 48, 0, 0, 0);
    v14 = *(a1 + 544);
    v15 = 8;
    v6 = v13 / v14;
    do
    {
      v16 = *(v22 + v15) + 1;
      *(v22 + v15) = v16;
      if (v16 != *(a1 + v15))
      {
        break;
      }

      *(v22 + v15) = 0;
      v15 -= 8;
    }

    while (v15 != -8);
    if (v2 >= 2)
    {
      for (i = 1; i != v2; ++i)
      {
        v6 += sub_26233BDF4(a1 + 48, i, *&v22[0], *(&v22[0] + 1)) / v14;
        for (j = 8; j != -8; j -= 8)
        {
          v19 = *(v22 + j) + 1;
          *(v22 + j) = v19;
          if (v19 != *(a1 + j))
          {
            break;
          }

          *(v22 + j) = 0;
        }
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_26233BACC(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8) * *a1;
  memset(v17, 0, sizeof(v17));
  if (*(a1 + 184) == 1)
  {
    v3 = *(a1 + 192);
    result = *v3;
    if (v2 >= 2)
    {
      v5 = v2 - 1;
      v6 = v3 + 1;
      do
      {
        v7 = *v6++;
        result += v7;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v8 = *(a1 + 104);
    v9 = *(a1 + 112);
    v10 = *(a1 + 192);
    result = *v10;
    for (i = 8; i != -8; i -= 8)
    {
      v12 = *(v17 + i) + 1;
      *(v17 + i) = v12;
      if (v12 != *(a1 + i))
      {
        break;
      }

      *(v17 + i) = 0;
    }

    if (v2 >= 2)
    {
      for (j = 1; j != v2; ++j)
      {
        result += v10[v9 * *(&v17[0] + 1) + v8 * *&v17[0]];
        for (k = 8; k != -8; k -= 8)
        {
          v15 = *(v17 + k) + 1;
          *(v17 + k) = v15;
          if (v15 != *(a1 + k))
          {
            break;
          }

          *(v17 + k) = 0;
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26233BBFC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v6 = 0x86BCA1AF286BCA1BLL * ((v3 - *a1) >> 3);
    if (v6 + 1 > 0x1AF286BCA1AF286)
    {
      sub_2621CBEB0();
    }

    v7 = 0x86BCA1AF286BCA1BLL * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0xD79435E50D7943)
    {
      v9 = 0x1AF286BCA1AF286;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_26233BD98(v9);
    }

    v10 = 152 * v6;
    sub_26222D2A8(v10, a2);
    v5 = v10 + 152;
    v21 = (v10 + 152);
    v11 = *a1;
    v12 = a1[1];
    v13 = v10 + *a1 - v12;
    if (v12 != *a1)
    {
      v14 = *a1;
      v15 = v13;
      do
      {
        v16 = sub_26222D2A8(v15, v14);
        v14 += 152;
        v15 = v16 + 152;
      }

      while (v14 != v12);
      v17 = v11;
      v18 = v11;
      do
      {
        v19 = *v18;
        v18 += 19;
        (*v19)(v11);
        v17 += 19;
        v11 = v18;
      }

      while (v18 != v12);
    }

    v20 = *a1;
    *a1 = v13;
    *(a1 + 1) = v21;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v5 = sub_26222D2A8(v3, a2) + 152;
  }

  a1[1] = v5;
}

void sub_26233BD98(unint64_t a1)
{
  if (a1 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_26233BDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 232) == 1)
  {
    v4 = (*(a1 + 240) + a2);
  }

  else
  {
    v4 = (*(a1 + 240) + *(a1 + 160) * a4 + *(a1 + 152) * a3);
  }

  v5 = *v4;
  if (*(a1 + 432) == 1)
  {
    v6 = (*(a1 + 440) + a2);
  }

  else
  {
    v6 = (*(a1 + 440) + *(a1 + 360) * a4 + *(a1 + 352) * a3);
  }

  return *v6 + v5;
}

__int16 *sub_26233BE54(__int16 *result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = (a2 - 4);
    v9 = a2 - 2;
    v156 = a2 - 6;
    v10 = a2 - 10;
    v11 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v11;
          v12 = (a2 - v11) >> 2;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                v103 = (v11 + 3);
                v104 = v11[3];
                v105 = v11 + 1;
                v106 = v11[1];
                v107 = *v9;
                if (v104 <= v106)
                {
                  if (v107 <= v104)
                  {
                    return result;
                  }

                  v146 = v11[2];
                  v11[2] = *v8;
                  *v8 = v146;
                  v147 = v11[3];
                  v11[3] = *v9;
                  *v9 = v147;
                  if (v11[3] <= v11[1])
                  {
                    return result;
                  }

                  v148 = *v11;
                  *v11 = v11[2];
                  v11[2] = v148;
                }

                else
                {
                  v108 = *v11;
                  if (v107 <= v104)
                  {
                    *v11 = v11[2];
                    v11[2] = v108;
                    v11[1] = v104;
                    v11[3] = v106;
                    if (*v9 <= v106)
                    {
                      return result;
                    }

                    v11[2] = *v8;
                    *v8 = v108;
                    v105 = v11 + 3;
                  }

                  else
                  {
                    *v11 = *v8;
                    *v8 = v108;
                  }

                  v103 = a2 - 2;
                }

                v155 = *v105;
                *v105 = *v103;
                *v103 = v155;
                return result;
              case 4:

                return sub_26233CA24(v11, v11 + 2, v11 + 4, a2 - 2);
              case 5:
                result = sub_26233CA24(v11, v11 + 2, v11 + 4, v11 + 6);
                if (*v9 > v11[7])
                {
                  v91 = v11[6];
                  v11[6] = *v8;
                  *v8 = v91;
                  v92 = v11[7];
                  v11[7] = *v9;
                  *v9 = v92;
                  v93 = v11[7];
                  v94 = v11[5];
                  if (v93 > v94)
                  {
                    v95 = v11[4];
                    v96 = v11[6];
                    v11[4] = v96;
                    v11[6] = v95;
                    v11[5] = v93;
                    v11[7] = v94;
                    v97 = v11[3];
                    if (v93 > v97)
                    {
                      v98 = v11[2];
                      v11[2] = v96;
                      v11[4] = v98;
                      v11[3] = v93;
                      v11[5] = v97;
                      v99 = v11[1];
                      if (v93 > v99)
                      {
                        v100 = *v11;
                        *v11 = v96;
                        v11[2] = v100;
                        v11[1] = v93;
                        v11[3] = v99;
                      }
                    }
                  }
                }

                return result;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return result;
            }

            if (v12 == 2)
            {
              if (*v9 > v11[1])
              {
                v101 = *v11;
                *v11 = *v8;
                *v8 = v101;
                v102 = v11[1];
                v11[1] = *v9;
                *v9 = v102;
              }

              return result;
            }
          }

          if (v12 <= 23)
          {
            v109 = (v11 + 2);
            v111 = v11 == a2 || v109 == a2;
            if (a4)
            {
              if (!v111)
              {
                v112 = 0;
                v113 = v11;
                do
                {
                  v114 = *(v113 + 3);
                  v115 = *(v113 + 1);
                  v113 = v109;
                  if (v114 > v115)
                  {
                    v116 = *v109;
                    v117 = v112;
                    while (1)
                    {
                      *(v11 + v117 + 4) = *(v11 + v117);
                      if (!v117)
                      {
                        break;
                      }

                      v118 = *(v11 + v117 - 2);
                      v117 -= 4;
                      if (v118 >= HIWORD(v116))
                      {
                        v119 = (v11 + v117 + 4);
                        goto LABEL_138;
                      }
                    }

                    v119 = v11;
LABEL_138:
                    *v119 = v116;
                  }

                  v109 = v113 + 4;
                  v112 += 4;
                }

                while (v113 + 4 != a2);
              }
            }

            else if (!v111)
            {
              v149 = v11 + 1;
              do
              {
                v150 = v7[3];
                v151 = v7[1];
                v7 = v109;
                if (v150 > v151)
                {
                  v152 = *v109;
                  v153 = v149;
                  do
                  {
                    v154 = *(v153 - 2);
                    v153 -= 2;
                    *(v153 + 3) = *(v153 + 1);
                  }

                  while (v154 < HIWORD(v152));
                  *(v153 + 1) = v152;
                }

                v109 = (v7 + 2);
                v149 += 2;
              }

              while (v7 + 2 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v11 != a2)
            {
              v120 = (v12 - 2) >> 1;
              v121 = v120;
              do
              {
                v122 = v121;
                if (v120 >= v121)
                {
                  v123 = (2 * v121) | 1;
                  v124 = &v11[2 * v123];
                  if (2 * v122 + 2 < v12)
                  {
                    v125 = v124[1] > v124[3];
                    v124 += 2 * v125;
                    if (v125)
                    {
                      v123 = 2 * v122 + 2;
                    }
                  }

                  v126 = &v11[2 * v122];
                  if (v124[1] <= v126[1])
                  {
                    v127 = *v126;
                    do
                    {
                      v128 = v126;
                      v126 = v124;
                      *v128 = *v124;
                      v128[1] = v124[1];
                      if (v120 < v123)
                      {
                        break;
                      }

                      v129 = (2 * v123) | 1;
                      v124 = &v11[2 * v129];
                      v130 = 2 * v123 + 2;
                      if (v130 < v12)
                      {
                        v125 = v124[1] > v124[3];
                        v124 += 2 * v125;
                        if (v125)
                        {
                          v129 = v130;
                        }
                      }

                      v123 = v129;
                    }

                    while (v124[1] <= HIWORD(v127));
                    *v126 = v127;
                  }
                }

                v121 = v122 - 1;
              }

              while (v122);
              do
              {
                v131 = 0;
                v132 = *v11;
                v133 = v11;
                do
                {
                  v134 = &v133[4 * v131];
                  v135 = v134 + 4;
                  v136 = (2 * v131) | 1;
                  v131 = 2 * v131 + 2;
                  if (v131 >= v12)
                  {
                    v131 = v136;
                  }

                  else
                  {
                    v137 = *(v134 + 3);
                    v138 = *(v134 + 5);
                    v139 = v134 + 8;
                    if (v137 <= v138)
                    {
                      v131 = v136;
                    }

                    else
                    {
                      v135 = v139;
                    }
                  }

                  *v133 = *v135;
                  *(v133 + 1) = *(v135 + 1);
                  v133 = v135;
                }

                while (v131 <= ((v12 - 2) >> 1));
                if (v135 == a2 - 4)
                {
                  *v135 = v132;
                }

                else
                {
                  *v135 = *(a2 - 2);
                  *(v135 + 1) = *(a2 - 1);
                  *(a2 - 1) = v132;
                  v140 = (v135 - v11 + 4) >> 2;
                  v125 = v140 < 2;
                  v141 = v140 - 2;
                  if (!v125)
                  {
                    v142 = v141 >> 1;
                    v143 = &v11[2 * v142];
                    if (*(v143 + 1) > *(v135 + 1))
                    {
                      v144 = *v135;
                      do
                      {
                        v145 = v135;
                        v135 = v143;
                        *v145 = *v143;
                        *(v145 + 1) = *(v143 + 1);
                        if (!v142)
                        {
                          break;
                        }

                        v142 = (v142 - 1) >> 1;
                        v143 = &v11[2 * v142];
                      }

                      while (*(v143 + 1) > HIWORD(v144));
                      *v135 = v144;
                    }
                  }
                }

                a2 -= 4;
                v125 = v12-- <= 2;
              }

              while (!v125);
            }

            return result;
          }

          v13 = &v11[2 * (v12 >> 1)];
          v14 = *v9;
          if (v12 >= 0x81)
          {
            v15 = v13 + 1;
            v16 = v13[1];
            v17 = (v11 + 1);
            v18 = v11[1];
            if (v16 <= v18)
            {
              if (v14 <= v16 || (v25 = *v13, *v13 = *v8, *v8 = v25, v26 = v13[1], v13[1] = *v9, *v9 = v26, v13[1] <= *v17))
              {
LABEL_29:
                v33 = v13 - 1;
                v34 = *(v13 - 1);
                v35 = v13 - 2;
                v36 = v11 + 3;
                v37 = v11[3];
                v38 = *v156;
                if (v34 <= v37)
                {
                  if (v38 <= v34 || (v40 = *v35, *v35 = *(a2 - 4), *(a2 - 4) = v40, v41 = *(v13 - 1), *(v13 - 1) = *(a2 - 3), *(a2 - 3) = v41, *(v13 - 1) <= *v36))
                  {
LABEL_43:
                    v46 = v13[3];
                    v47 = v13 + 2;
                    v48 = (v11 + 5);
                    v49 = v11[5];
                    result = *v10;
                    if (v46 <= v49)
                    {
                      if (result <= v46 || (v51 = *v47, *v47 = *(a2 - 6), *(a2 - 6) = v51, v52 = v13[3], v13[3] = *(a2 - 5), *(a2 - 5) = v52, v46 = v13[3], v46 <= *v48))
                      {
LABEL_53:
                        v56 = *v15;
                        v57 = *v33;
                        if (v56 <= v57)
                        {
                          v58 = *v13;
                          if (v46 <= v56)
                          {
LABEL_63:
                            v61 = *v11;
                            *v11 = v58;
                            *v13 = v61;
                            v62 = v11[1];
                            v11[1] = v56;
                            v13[1] = v62;
                            goto LABEL_64;
                          }

                          v59 = *v47;
                          *v13 = *v47;
                          *v47 = v58;
                          v13[1] = v46;
                          v13[3] = v56;
                          if (v46 <= v57)
                          {
                            LOWORD(v56) = v46;
                            v58 = v59;
                            goto LABEL_63;
                          }

                          v60 = *v35;
                          *v35 = v59;
                          *v13 = v60;
                        }

                        else
                        {
                          v58 = *v35;
                          if (v46 <= v56)
                          {
                            *v35 = *v13;
                            *v13 = v58;
                            *(v13 - 1) = v56;
                            v13[1] = v57;
                            if (v46 <= v57)
                            {
                              LOWORD(v56) = v57;
                              goto LABEL_63;
                            }

                            *v13 = *v47;
                            *v47 = v58;
                            v33 = v13 + 1;
                          }

                          else
                          {
                            *v35 = *v47;
                            *v47 = v58;
                          }

                          v15 = v13 + 3;
                        }

                        *v33 = v46;
                        *v15 = v57;
                        v58 = *v13;
                        LOWORD(v56) = v13[1];
                        goto LABEL_63;
                      }

                      v53 = v11[4];
                      v11[4] = *v47;
                      *v47 = v53;
                      v54 = (v13 + 3);
                    }

                    else
                    {
                      v50 = v11[4];
                      if (result <= v46)
                      {
                        v11[4] = *v47;
                        *v47 = v50;
                        v11[5] = v46;
                        v13[3] = v49;
                        v46 = v49;
                        if (*v10 <= v49)
                        {
                          goto LABEL_53;
                        }

                        *v47 = *(a2 - 6);
                        *(a2 - 6) = v50;
                        v48 = (v13 + 3);
                      }

                      else
                      {
                        v11[4] = *(a2 - 6);
                        *(a2 - 6) = v50;
                      }

                      v54 = a2 - 10;
                    }

                    v55 = *v48;
                    *v48 = *v54;
                    *v54 = v55;
                    v46 = v13[3];
                    goto LABEL_53;
                  }

                  v42 = v11[2];
                  v11[2] = *v35;
                  *v35 = v42;
                  v43 = (v13 - 1);
                }

                else
                {
                  v39 = v11[2];
                  if (v38 <= v34)
                  {
                    v11[2] = *v35;
                    *v35 = v39;
                    v11[3] = v34;
                    *(v13 - 1) = v37;
                    if (*v156 <= v37)
                    {
                      goto LABEL_43;
                    }

                    *v35 = *(a2 - 4);
                    *(a2 - 4) = v39;
                    v36 = v13 - 1;
                  }

                  else
                  {
                    v11[2] = *(a2 - 4);
                    *(a2 - 4) = v39;
                  }

                  v43 = a2 - 6;
                }

                v45 = *v36;
                *v36 = *v43;
                *v43 = v45;
                goto LABEL_43;
              }

              v27 = *v11;
              *v11 = *v13;
              *v13 = v27;
              v28 = (v13 + 1);
            }

            else
            {
              v19 = *v11;
              if (v14 <= v16)
              {
                *v11 = *v13;
                *v13 = v19;
                v11[1] = v16;
                v13[1] = v18;
                if (*v9 <= v18)
                {
                  goto LABEL_29;
                }

                *v13 = *v8;
                *v8 = v19;
                v17 = (v13 + 1);
              }

              else
              {
                *v11 = *v8;
                *v8 = v19;
              }

              v28 = a2 - 2;
            }

            v32 = *v17;
            *v17 = *v28;
            *v28 = v32;
            goto LABEL_29;
          }

          v20 = (v11 + 1);
          v21 = v11[1];
          v22 = (v13 + 1);
          v23 = v13[1];
          if (v21 <= v23)
          {
            if (v14 > v21)
            {
              v29 = *v11;
              *v11 = *v8;
              *v8 = v29;
              v30 = v11[1];
              v11[1] = *v9;
              *v9 = v30;
              if (v11[1] > *v22)
              {
                v31 = *v13;
                *v13 = *v11;
                *v11 = v31;
LABEL_38:
                v44 = *v22;
                *v22 = *v20;
                *v20 = v44;
              }
            }
          }

          else
          {
            v24 = *v13;
            if (v14 > v21)
            {
              *v13 = *v8;
              *v8 = v24;
LABEL_37:
              v20 = a2 - 2;
              goto LABEL_38;
            }

            *v13 = *v11;
            *v11 = v24;
            v13[1] = v21;
            v11[1] = v23;
            if (*v9 > v23)
            {
              *v11 = *v8;
              *v8 = v24;
              v22 = (v11 + 1);
              goto LABEL_37;
            }
          }

LABEL_64:
          --a3;
          if ((a4 & 1) != 0 || *(v11 - 1) > v11[1])
          {
            break;
          }

          v78 = *v11;
          v79 = HIWORD(*v11);
          if (*v9 >= v79)
          {
            v82 = (v11 + 2);
            do
            {
              v11 = v82;
              if (v82 >= a2)
              {
                break;
              }

              v83 = *(v82 + 1);
              v82 += 4;
            }

            while (v83 >= v79);
          }

          else
          {
            v80 = v11;
            do
            {
              v11 = v80 + 2;
              v81 = v80[3];
              v80 += 2;
            }

            while (v81 >= v79);
          }

          v84 = a2;
          if (v11 < a2)
          {
            v85 = a2;
            do
            {
              v84 = v85 - 4;
              v86 = *(v85 - 1);
              v85 -= 4;
            }

            while (v86 < v79);
          }

          while (v11 < v84)
          {
            v87 = *v11;
            *v11 = *v84;
            *v84 = v87;
            v88 = v11[1];
            v11[1] = *(v84 + 1);
            *(v84 + 1) = v88;
            do
            {
              v89 = v11[3];
              v11 += 2;
            }

            while (v89 >= v79);
            do
            {
              v90 = *(v84 - 1);
              v84 -= 4;
            }

            while (v90 < v79);
          }

          if (v11 - 2 != v7)
          {
            *v7 = *(v11 - 2);
            v7[1] = *(v11 - 1);
          }

          a4 = 0;
          *(v11 - 2) = v78;
          *(v11 - 1) = v79;
        }

        v63 = *v11;
        v64 = HIWORD(*v11);
        v65 = v11;
        do
        {
          v66 = v65;
          v65 += 4;
        }

        while (v66[3] > v64);
        v67 = a2;
        if (v66 == v11)
        {
          v70 = a2;
          while (v65 < v70)
          {
            v68 = v70 - 4;
            v71 = *(v70 - 1);
            v70 -= 4;
            if (v71 > v64)
            {
              goto LABEL_76;
            }
          }

          v68 = v70;
        }

        else
        {
          do
          {
            v68 = v67 - 4;
            v69 = *(v67 - 1);
            v67 -= 4;
          }

          while (v69 <= v64);
        }

LABEL_76:
        v11 = v65;
        if (v65 < v68)
        {
          v72 = v68;
          do
          {
            v73 = *v11;
            *v11 = *v72;
            *v72 = v73;
            v74 = v11[1];
            v11[1] = v72[1];
            v72[1] = v74;
            do
            {
              v75 = v11[3];
              v11 += 2;
            }

            while (v75 > v64);
            do
            {
              v76 = *(v72 - 1);
              v72 -= 2;
            }

            while (v76 <= v64);
          }

          while (v11 < v72);
        }

        if (v11 - 2 != v7)
        {
          *v7 = *(v11 - 2);
          v7[1] = *(v11 - 1);
        }

        *(v11 - 2) = v63;
        *(v11 - 1) = v64;
        if (v65 >= v68)
        {
          break;
        }

LABEL_87:
        result = sub_26233BE54(v7, v11 - 2, a3, a4 & 1);
        a4 = 0;
      }

      v77 = sub_26233CB9C(v7, v11 - 4);
      result = sub_26233CB9C(v11, a2);
      if (result)
      {
        break;
      }

      if (!v77)
      {
        goto LABEL_87;
      }
    }

    a2 = (v11 - 2);
    if (!v77)
    {
      continue;
    }

    return result;
  }
}