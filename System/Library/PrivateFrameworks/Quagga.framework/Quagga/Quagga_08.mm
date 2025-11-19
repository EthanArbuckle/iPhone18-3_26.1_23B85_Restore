void sub_2615104E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  sub_2614705CC(v29);
  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (v28)
  {
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_26151055C(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v75 = *v9;
        if (*(*v8 + 28) > *(*v9 + 28))
        {
          *v9 = *v8;
          *v8 = v75;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v82 = v9 + 1;
      v83 = v9[1];
      v84 = v9 + 2;
      v85 = v9[2];
      v86 = *v9;
      v87 = *(v83 + 7);
      v88 = *(*v9 + 28);
      v89 = *(v85 + 28);
      if (v87 <= v88)
      {
        if (v89 <= v87)
        {
          goto LABEL_172;
        }

        *v82 = v85;
        *v84 = v83;
        v90 = v9;
        v91 = (v9 + 1);
        result = v83;
        if (v89 > v88)
        {
          goto LABEL_165;
        }
      }

      else
      {
        v90 = v9;
        v91 = (v9 + 2);
        result = *v9;
        if (v89 <= v87)
        {
          *v9 = v83;
          v9[1] = v86;
          v90 = v9 + 1;
          v91 = (v9 + 2);
          result = v86;
          if (v89 <= v88)
          {
LABEL_172:
            v83 = v85;
            goto LABEL_173;
          }
        }

LABEL_165:
        *v90 = v85;
        *v91 = v86;
        v83 = result;
      }

LABEL_173:
      if (*(*v8 + 28) > *(v83 + 7))
      {
        *v84 = *v8;
        *v8 = v83;
        v138 = *v84;
        v139 = *v82;
        v140 = *(v138 + 28);
        if (v140 > *(v139 + 28))
        {
          v9[1] = v138;
          v9[2] = v139;
          v141 = *v9;
          if (v140 > *(*v9 + 28))
          {
            *v9 = v138;
            v9[1] = v141;
          }
        }
      }

      return result;
    }

    if (v10 == 5)
    {

      return sub_261510F0C(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1);
    }

LABEL_10:
    if (v10 <= 23)
    {
      v92 = v9 + 1;
      v94 = v9 == a2 || v92 == a2;
      if (a4)
      {
        if (!v94)
        {
          v95 = 8;
          v96 = v9;
          do
          {
            v98 = *v96;
            v97 = v96[1];
            v96 = v92;
            v99 = *(v97 + 28);
            if (v99 > *(v98 + 28))
            {
              v100 = v95;
              while (1)
              {
                *(v9 + v100) = v98;
                v101 = v100 - 8;
                if (v100 == 8)
                {
                  break;
                }

                v98 = *(v9 + v100 - 16);
                v100 -= 8;
                if (v99 <= *(v98 + 28))
                {
                  v102 = (v9 + v101);
                  goto LABEL_128;
                }
              }

              v102 = v9;
LABEL_128:
              *v102 = v97;
            }

            v92 = v96 + 1;
            v95 += 8;
          }

          while (v96 + 1 != a2);
        }
      }

      else if (!v94)
      {
        do
        {
          v136 = *v7;
          v135 = v7[1];
          v7 = v92;
          v137 = *(v135 + 28);
          if (v137 > *(v136 + 28))
          {
            do
            {
              *v92 = v136;
              v136 = *(v92 - 2);
              --v92;
            }

            while (v137 > *(v136 + 28));
            *v92 = v135;
          }

          v92 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v103 = (v10 - 2) >> 1;
        v104 = v103;
        do
        {
          v105 = v104;
          if (v103 >= v104)
          {
            v106 = (2 * v104) | 1;
            v107 = &v9[v106];
            if (2 * v105 + 2 < v10 && *(*v107 + 28) > *(v107[1] + 28))
            {
              ++v107;
              v106 = 2 * v105 + 2;
            }

            v108 = &v9[v105];
            v109 = *v107;
            v110 = *v108;
            v111 = *(*v108 + 28);
            if (*(*v107 + 28) <= v111)
            {
              do
              {
                v112 = v107;
                *v108 = v109;
                if (v103 < v106)
                {
                  break;
                }

                v113 = 2 * v106;
                v106 = (2 * v106) | 1;
                v107 = &v9[v106];
                v114 = v113 + 2;
                if (v114 < v10)
                {
                  result = v107[1];
                  if (*(*v107 + 28) > *(result + 28))
                  {
                    ++v107;
                    v106 = v114;
                  }
                }

                v109 = *v107;
                v108 = v112;
              }

              while (*(*v107 + 28) <= v111);
              *v112 = v110;
            }
          }

          v104 = v105 - 1;
        }

        while (v105);
        do
        {
          v115 = 0;
          v116 = *v9;
          v117 = v9;
          do
          {
            v118 = v117;
            v119 = &v117[v115];
            v117 = v119 + 1;
            v120 = 2 * v115;
            v115 = (2 * v115) | 1;
            v121 = v120 + 2;
            if (v121 < v10)
            {
              v123 = v119[2];
              v122 = v119 + 2;
              if (*(*(v122 - 1) + 28) > *(v123 + 28))
              {
                v117 = v122;
                v115 = v121;
              }
            }

            *v118 = *v117;
          }

          while (v115 <= ((v10 - 2) >> 1));
          if (v117 == --a2)
          {
            *v117 = v116;
          }

          else
          {
            *v117 = *a2;
            *a2 = v116;
            v124 = (v117 - v9 + 8) >> 3;
            v125 = v124 < 2;
            v126 = v124 - 2;
            if (!v125)
            {
              v127 = v126 >> 1;
              v128 = &v9[v127];
              v129 = *v128;
              v130 = *v117;
              v131 = *(*v117 + 28);
              if (*(*v128 + 28) > v131)
              {
                do
                {
                  v132 = v128;
                  *v117 = v129;
                  if (!v127)
                  {
                    break;
                  }

                  v127 = (v127 - 1) >> 1;
                  v128 = &v9[v127];
                  v129 = *v128;
                  v117 = v132;
                }

                while (*(*v128 + 28) > v131);
                *v132 = v130;
              }
            }
          }

          v125 = v10-- <= 2;
        }

        while (!v125);
      }

      return result;
    }

    v11 = &v9[v10 >> 1];
    v12 = v11;
    v13 = *v8;
    v14 = *(*v8 + 28);
    if (v10 >= 0x81)
    {
      v15 = *v11;
      v16 = *v9;
      v17 = *(*v11 + 28);
      v18 = *(*v9 + 28);
      if (v17 <= v18)
      {
        if (v14 > v17)
        {
          *v11 = v13;
          *v8 = v15;
          v23 = *v9;
          if (*(*v11 + 28) > *(*v9 + 28))
          {
            *v9 = *v11;
            *v11 = v23;
          }
        }
      }

      else
      {
        if (v14 > v17)
        {
          *v9 = v13;
          goto LABEL_27;
        }

        *v9 = v15;
        *v11 = v16;
        if (*(*v8 + 28) > v18)
        {
          *v11 = *v8;
LABEL_27:
          *v8 = v16;
        }
      }

      v25 = v11 - 1;
      v26 = *(v11 - 1);
      v27 = v9[1];
      v28 = *(v26 + 28);
      v29 = *(v27 + 28);
      v30 = *(a2 - 2);
      v31 = *(v30 + 28);
      if (v28 <= v29)
      {
        if (v31 > v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v9[1];
          if (*(*v25 + 28) > *(v32 + 28))
          {
            v9[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 > v28)
        {
          v9[1] = v30;
          goto LABEL_39;
        }

        v9[1] = v26;
        *v25 = v27;
        v33 = *(a2 - 2);
        if (*(v33 + 28) > v29)
        {
          *v25 = v33;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v36 = v11[1];
      v34 = v11 + 1;
      v35 = v36;
      v37 = v9[2];
      v38 = *(v36 + 28);
      v39 = *(v37 + 28);
      v40 = *(a2 - 3);
      v41 = *(v40 + 28);
      if (v38 <= v39)
      {
        if (v41 > v38)
        {
          *v34 = v40;
          *(a2 - 3) = v35;
          v42 = v9[2];
          if (*(*v34 + 28) > *(v42 + 28))
          {
            v9[2] = *v34;
            *v34 = v42;
          }
        }
      }

      else
      {
        if (v41 > v38)
        {
          v9[2] = v40;
          goto LABEL_48;
        }

        v9[2] = v35;
        *v34 = v37;
        v43 = *(a2 - 3);
        if (*(v43 + 28) > v39)
        {
          *v34 = v43;
LABEL_48:
          *(a2 - 3) = v37;
        }
      }

      v44 = *v12;
      v45 = *v25;
      v46 = *(*v12 + 28);
      v47 = *(*v25 + 28);
      v48 = *v34;
      v49 = *(*v34 + 28);
      if (v46 <= v47)
      {
        if (v49 <= v46)
        {
          goto LABEL_56;
        }

        *v12 = v48;
        *v34 = v44;
        v34 = v12;
        v44 = v45;
        if (v49 <= v47)
        {
          v44 = v48;
          goto LABEL_56;
        }
      }

      else if (v49 <= v46)
      {
        *v25 = v44;
        *v12 = v45;
        v25 = v12;
        v44 = v48;
        if (v49 <= v47)
        {
          v44 = v45;
LABEL_56:
          v50 = *v9;
          *v9 = v44;
          *v12 = v50;
          goto LABEL_57;
        }
      }

      *v25 = v48;
      *v34 = v45;
      goto LABEL_56;
    }

    v19 = *v9;
    v20 = *v12;
    v21 = *(*v9 + 28);
    v22 = *(*v12 + 28);
    if (v21 <= v22)
    {
      if (v14 > v21)
      {
        *v9 = v13;
        *v8 = v19;
        v24 = *v12;
        if (*(*v9 + 28) > *(*v12 + 28))
        {
          *v12 = *v9;
          *v9 = v24;
        }
      }

      goto LABEL_57;
    }

    if (v14 > v21)
    {
      *v12 = v13;
LABEL_36:
      *v8 = v20;
      goto LABEL_57;
    }

    *v12 = v19;
    *v9 = v20;
    if (*(*v8 + 28) > v22)
    {
      *v9 = *v8;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v51 = *v9;
    if (a4)
    {
      v52 = *(v51 + 28);
LABEL_60:
      v53 = v9;
      do
      {
        v54 = v53;
        v56 = v53[1];
        ++v53;
        v55 = v56;
      }

      while (*(v56 + 28) > v52);
      v57 = a2;
      if (v54 == v9)
      {
        v57 = a2;
        do
        {
          if (v53 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 28) <= v52);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 28) <= v52);
      }

      if (v53 < v57)
      {
        v60 = *v57;
        v61 = v53;
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v54 = v61;
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*(v63 + 28) > v52);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 28) <= v52);
        }

        while (v61 < v62);
      }

      if (v54 != v9)
      {
        *v9 = *v54;
      }

      *v54 = v51;
      if (v53 < v57)
      {
        goto LABEL_79;
      }

      v65 = sub_261511080(v9, v54);
      v9 = v54 + 1;
      result = sub_261511080(v54 + 1, a2);
      if (result)
      {
        a2 = v54;
        if (!v65)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v65)
      {
LABEL_79:
        result = sub_26151055C(v7, v54, a3, a4 & 1);
        a4 = 0;
        v9 = v54 + 1;
      }
    }

    else
    {
      v52 = *(v51 + 28);
      if (*(*(v9 - 1) + 28) > v52)
      {
        goto LABEL_60;
      }

      if (v52 <= *(*v8 + 28))
      {
        v67 = v9 + 1;
        do
        {
          v9 = v67;
          if (v67 >= a2)
          {
            break;
          }

          ++v67;
        }

        while (v52 <= *(*v9 + 28));
      }

      else
      {
        do
        {
          v66 = v9[1];
          ++v9;
        }

        while (v52 <= *(v66 + 28));
      }

      v68 = a2;
      if (v9 < a2)
      {
        v68 = a2;
        do
        {
          v69 = *--v68;
        }

        while (v52 > *(v69 + 28));
      }

      if (v9 < v68)
      {
        v70 = *v9;
        v71 = *v68;
        do
        {
          *v9 = v71;
          *v68 = v70;
          do
          {
            v72 = v9[1];
            ++v9;
            v70 = v72;
          }

          while (v52 <= *(v72 + 28));
          do
          {
            v73 = *--v68;
            v71 = v73;
          }

          while (v52 > *(v73 + 28));
        }

        while (v9 < v68);
      }

      v74 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v74;
      }

      a4 = 0;
      *v74 = v51;
    }
  }

  v76 = *v9;
  v77 = v9[1];
  v78 = *(v77 + 28);
  v79 = *(*v9 + 28);
  v80 = *v8;
  v81 = *(*v8 + 28);
  if (v78 <= v79)
  {
    if (v81 > v78)
    {
      v9[1] = v80;
      *v8 = v77;
      v134 = *v9;
      v133 = v9[1];
      if (*(v133 + 28) > *(*v9 + 28))
      {
        *v9 = v133;
        v9[1] = v134;
      }
    }
  }

  else
  {
    if (v81 <= v78)
    {
      *v9 = v77;
      v9[1] = v76;
      if (*(*v8 + 28) <= v79)
      {
        return result;
      }

      v9[1] = *v8;
    }

    else
    {
      *v9 = v80;
    }

    *v8 = v76;
  }

  return result;
}

uint64_t *sub_261510F0C(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 28);
  v8 = *(*result + 28);
  v9 = *a3;
  v10 = *(*a3 + 28);
  if (v7 <= v8)
  {
    if (v10 <= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 28) > *(*result + 28))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 > v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 28) > v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 28) > *(v5 + 28))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 28) > *(*a2 + 28))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 28) > *(*result + 28))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 28) > *(*a4 + 28))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 28) > *(*a3 + 28))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 28) > *(*a2 + 28))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 28) > *(*result + 28))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL sub_261511080(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 28);
      v8 = *(*a1 + 28);
      v9 = *(a2 - 1);
      v10 = *(v9 + 28);
      if (v7 <= v8)
      {
        if (v10 > v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 28) > *(*a1 + 28))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 <= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 28) <= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_261510F0C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 28);
    v26 = *(*a1 + 28);
    v27 = *(v23 + 28);
    if (v25 <= v26)
    {
      if (v27 <= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 <= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 28) > *(v21 + 28))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 28);
          if (v45 > *(v44 + 28))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 > *(*a1 + 28))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 <= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 <= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 28) > *(*a1 + 28))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 28);
  v16 = *(*a1 + 28);
  v17 = *(v11 + 28);
  if (v15 > v16)
  {
    v18 = a1;
    v19 = a1 + 2;
    if (v17 <= v15)
    {
      *a1 = v13;
      a1[1] = v14;
      v18 = a1 + 1;
      v19 = a1 + 2;
      if (v17 <= v16)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    *v18 = v11;
    *v19 = v14;
    goto LABEL_27;
  }

  if (v17 > v15)
  {
    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
    if (v17 > v16)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 28);
    if (v38 > *(v37 + 28))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 <= *(v37 + 28))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

uint64_t sub_261511370(uint64_t a1, float *a2, int a3, float a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v8 = 4 * a3;
  *(a1 + 48) = malloc_type_malloc(v8, 0x100004052888210uLL);
  *(a1 + 16) = malloc_type_malloc(v8, 0x100004052888210uLL);
  *(a1 + 56) = 0;
  *(a1 + 32) = 0;
  sub_261511488(a2, a3, 0, 0, *(a1 + 48), v9);
  if (fabsf(a4 + -0.5) <= 0.001)
  {
    v10 = *(a1 + 48);
  }

  else
  {
    v10 = *(a1 + 48);
    if (a3 >= 1)
    {
      v11 = 0;
      do
      {
        v10[v11] = (0.5 / (1.0 - a4)) * v10[v11];
        ++v11;
      }

      while (a3 != v11);
    }
  }

  result = sub_2615115A0(a3, a2, v10, *(a1 + 16));
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_261511488(uint64_t result, int a2, uint64_t a3, int a4, uint64_t a5, double a6)
{
  if ((a4 & 0x80000000) == 0)
  {
    v6 = 0;
    v7 = 0;
    *&a6 = a2;
    do
    {
      v8 = *&a6;
      if (v6 != a4)
      {
        v8 = ceilf(*(a3 + 4 * v6));
      }

      v9 = v8;
      v10 = v8 - v7;
      if (v8 > v7)
      {
        v11 = v7;
        v12 = v9 - v7;
        v13 = 4 * v7;
        v14 = 0.0;
        v15 = (result + v13);
        do
        {
          v16 = *v15++;
          v14 = v14 + v16;
          --v12;
        }

        while (v12);
        v17 = 0;
        v18 = v14 / v10;
        v19 = v9 - v11;
        v20 = (v19 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v21 = vdupq_n_s64(v19 - 1);
        v22 = (a5 + 8 + v13);
        do
        {
          v23 = vdupq_n_s64(v17);
          v24 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v23, xmmword_261560F00)));
          if (vuzp1_s16(v24, *&a6).u8[0])
          {
            *(v22 - 2) = v18;
          }

          if (vuzp1_s16(v24, *&a6).i8[2])
          {
            *(v22 - 1) = v18;
          }

          if (vuzp1_s16(*&a6, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v23, xmmword_261560F30)))).i32[1])
          {
            *v22 = v18;
            v22[1] = v18;
          }

          v17 += 4;
          v22 += 4;
        }

        while (v20 != v17);
      }

      ++v6;
      v7 = v9;
    }

    while (v6 != a4 + 1);
  }

  return result;
}

uint64_t sub_2615115A0(int a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 < 2)
  {
    return 0;
  }

  result = 0;
  v6 = *a2 - *a3;
  v7 = v6 > 0.0;
  for (i = 1; i != a1; ++i)
  {
    v9 = a2[i] - a3[i];
    if (v7 != v9 > 0.0)
    {
      *(a4 + 4 * result) = ((v9 / (v6 - v9)) + i) + 0.5;
      result = (result + 1);
      v7 = v9 > 0.0;
    }

    v6 = v9;
  }

  return result;
}

uint64_t sub_26151162C(uint64_t a1, double a2)
{
  if (*&a2 < 0.5)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *&a2 * 0.4;
  *&a2 = (*&a2 * 0.4) * 6.0;
  v5 = *&a2 | 1u;
  if (*(a1 + 8) < v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 32);
  if (v6 && (*(a1 + 40) == v5 || (free(v6), *(a1 + 32))))
  {
    v7 = *(a1 + 56);
  }

  else
  {
    *(a1 + 40) = v5;
    v8 = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
    v9 = v8;
    *(a1 + 32) = v8;
    v10 = (v5 / 2);
    v8[v10] = 1.0;
    v11 = 1.0;
    if (v5 > 1)
    {
      v12 = (v4 * v4) + (v4 * v4);
      v13 = &v8[v5 - 1];
      v14 = v8;
      do
      {
        v15 = expf(-(v10 * v10) / v12);
        *v13-- = v15;
        *v14++ = v15;
        v11 = v11 + (v15 + v15);
        --v10;
      }

      while (v10);
    }

    if (v5 >= 1)
    {
      v16 = v5;
      do
      {
        *v9 = *v9 / v11;
        ++v9;
        --v16;
      }

      while (v16);
    }

    v7 = malloc_type_malloc(4 * *(a1 + 8), 0x100004052888210uLL);
    *(a1 + 56) = v7;
  }

  sub_261511488(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), v7, a2);
  v17 = *(a1 + 8);
  v18 = *(a1 + 48);
  if (v17 >= 1)
  {
    v19 = *(a1 + 56);
    v20 = *(a1 + 48);
    v21 = *(a1 + 8);
    do
    {
      v22 = *v19++;
      *v20 = (v22 * 0.4) + (*v20 * 0.6);
      ++v20;
      --v21;
    }

    while (v21);
  }

  vDSP_conv(v18, 1, *(a1 + 32), 1, v18, 1, v17 - v5 + 1, v5);
  v23 = v17 + ~(v5 / 2);
  if (v23 >= v5 / 2)
  {
    v24 = v5 / 2;
    v25 = v23 + 1;
    v26 = &v18[v23];
    do
    {
      *v26 = v26[-v24];
      --v26;
      --v25;
    }

    while (v25 > v24);
  }

  result = sub_2615115A0(*(a1 + 8), *a1, *(a1 + 48), *(a1 + 16));
  *(a1 + 24) = result;
  return result;
}

void sub_261511878(uint64_t a1)
{
  free(*(a1 + 48));
  free(*(a1 + 16));
  free(*(a1 + 32));
  v2 = *(a1 + 56);

  free(v2);
}

std::logic_error *sub_2615118C4(std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "Unsupported rotation");
  result->__vftable = (MEMORY[0x277D828F8] + 16);
  return result;
}

void sub_261511900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*a5)
  {
    (*(**a5 + 16))(*a5);
    (*(**a5 + 24))();
  }

  else
  {
    (*(**a3 + 16))();
    (*(**a2 + 16))();
    (*(**a4 + 16))();
    (*(**a3 + 24))();
    (*(**a2 + 24))();
    (*(**a4 + 24))();
  }

  (*(**a2 + 16))();
  (*(**a2 + 24))();
  (*(**a3 + 16))();
  (*(**a3 + 24))();
  (*(**a4 + 16))();
  (*(**a4 + 24))();
  sub_2614C6060();
}

void sub_261511C2C(void *a1)
{
  *a1 = &unk_2873D1350;
  v2 = a1[3];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_2614705CC(v3);
  }

  JUMPOUT(0x2667045D0);
}

void *sub_261511CA4(void *a1)
{
  *a1 = &unk_2873D1350;
  v2 = a1[3];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_2614705CC(v3);
  }

  return a1;
}

uint64_t sub_261511CFC(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2873D1350;
  *(a1 + 16) = 0;
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
    v4 = *(a1 + 16);
    if (v4)
    {
      sub_2614705CC(v4);
    }
  }

  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  return a1;
}

atomic_uint *sub_261511D68(void *a1, uint64_t a2, uint64_t a3, float *a4, int *a5)
{
  v6 = *a3;
  v7 = *(*a3 + 52);
  v8 = *(*a3 + 53);
  v9 = *(*a3 + 24);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
    v6 = *a3;
  }

  v10 = v6[4];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
    v6 = *a3;
  }

  v11 = v6[2];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
    v6 = *a3;
  }

  v12 = v6[5];
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1u, memory_order_relaxed);
  }

  v50 = v12;
  if (*(v9 + 20) < 1.0 || *(v10 + 20) < 1.0 || *(v11 + 20) < 1.0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614EB5DC(exception, "bad module size");
    *exception = &unk_2873D19D8;
    __cxa_throw(exception, &unk_2873D2BF8, sub_26152411C);
  }

  atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
  atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
  atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
  atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
  v53[0] = v9;
  atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
  v60[0] = v10;
  sub_261516868(a2, v53, v60, v7, v8);
  v14 = v13;
  sub_2614705CC(v10);
  sub_2614705CC(v9);
  atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
  v58 = v11;
  *buf = v9;
  atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
  sub_261516868(a2, buf, &v58, v7, v8);
  v16 = v15;
  sub_2614705CC(v11);
  sub_2614705CC(v9);
  v17 = (v14 + v16) * 0.5;
  sub_2614705CC(v11);
  sub_2614705CC(v10);
  sub_2614705CC(v9);
  atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
  atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
  atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
  v47 = a5;
  v18 = v14;
  atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
  v53[0] = v9;
  atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
  v60[0] = v10;
  v19 = sub_26151839C(v53, v60);
  sub_2614705CC(v10);
  sub_2614705CC(v9);
  atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
  v58 = v11;
  *buf = v9;
  atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
  v20 = sub_26151839C(buf, &v58);
  sub_2614705CC(v11);
  sub_2614705CC(v9);
  v21 = llroundf(v19 / v18);
  v22 = llroundf(v20 / v16);
  if ((v21 - v22) >= 0)
  {
    v23 = v21 - v22;
  }

  else
  {
    v23 = v22 - v21;
  }

  if (v23 <= 8)
  {
    v49 = v17;
    v26 = (*(*v9 + 16))(v9);
    v27 = (v22 + v21) / 2;
    v28 = v27;
    if ((vabds_f32(v26, (*(*v10 + 16))(v10)) >= v27 || (v29 = (*(*v9 + 16))(v9), vabds_f32(v29, (*(*v11 + 16))(v11)) >= v28)) && ((v30 = (*(*v9 + 24))(v9), vabds_f32(v30, (*(*v10 + 24))(v10)) >= v28) || (v31 = (*(*v9 + 24))(v9), vabds_f32(v31, (*(*v11 + 24))(v11)) >= v28)) && (atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed), atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed), v56 = v11, v57 = v10, v32 = sub_26151839C(&v57, &v56), sub_2614705CC(v11), sub_2614705CC(v10), v32 >= v28) && (v46 = (*(*v9 + 16))(v9), v45 = (*(*v10 + 24))(v10), v44 = (*(*v10 + 16))(v10), v43 = (*(*v11 + 24))(v11), v42 = (*(*v9 + 24))(v9), v41 = (*(*v11 + 16))(v11), v40 = (*(*v9 + 16))(v9), v33 = (*(*v11 + 24))(v11), v34 = (*(*v9 + 24))(v9), v35 = (*(*v10 + 16))(v10), v36 = (*(*v10 + 24))(v10), fabsf((((((v44 * v43) + (v46 * v45)) + (v42 * v41)) - (v40 * v33)) - (v34 * v35)) - (v36 * (*(*v11 + 16))(v11))) >= (v27 * v27)))
    {
      v24 = v27 + 7;
      v38 = (v27 + 7) & 3;
      if (v23 > 4 || v38 == 3)
      {
        atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
        v54 = v10;
        v55 = v9;
        atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
        sub_261516330(a2, &v55, &v54);
      }

      v25 = v11;
      v17 = v49;
      if (v38 == 2)
      {
        --v24;
      }

      else if (!v38)
      {
        ++v24;
      }
    }

    else
    {
      v24 = -1;
      v25 = v11;
      v17 = v49;
    }
  }

  else
  {
    v24 = -1;
    v25 = v11;
  }

  sub_2614705CC(v25);
  sub_2614705CC(v10);
  sub_2614705CC(v9);
  sub_26151C908((v24 - 17) >> 2);
  *a1 = 0;
  if (v50)
  {
    operator new();
  }

  *a4 = v17;
  *v47 = v24;
  result = sub_2614705CC(v25);
  if (v10)
  {
    result = sub_2614705CC(v10);
  }

  if (v9)
  {
    return sub_2614705CC(v9);
  }

  return result;
}

void sub_261512BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, atomic_uint *a18, uint64_t a19, uint64_t a20, atomic_uint *a21)
{
  sub_2614705CC(v22);
  sub_2614705CC(v21);
  sub_2614705CC(a21);
  sub_2614705CC(v23);
  sub_2614705CC(v21);
  if (a18)
  {
    sub_2614705CC(a18);
  }

  if (a21)
  {
    sub_2614705CC(a21);
  }

  if (v23)
  {
    sub_2614705CC(v23);
  }

  if (v21)
  {
    sub_2614705CC(v21);
  }

  _Unwind_Resume(a1);
}

void sub_261512DE8(float a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, atomic_uint **a6)
{
  v71 = *MEMORY[0x277D85DE8];
  v10 = *a4;
  v11 = *(*a4 + 24);
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 2, 1u, memory_order_relaxed);
    v10 = *a4;
  }

  v12 = v10[4];
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 2, 1u, memory_order_relaxed);
    v10 = *a4;
  }

  v13 = v10[2];
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 2, 1u, memory_order_relaxed);
    v10 = *a4;
  }

  v14 = v10[5];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1u, memory_order_relaxed);
  }

  v49 = v11;
  v48 = v14;
  if ((a5 & 0x80000003) != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614EB5DC(exception, "Dimension must be 1 mod 4");
    *exception = &unk_2873D19D8;
    __cxa_throw(exception, &unk_2873D2BF8, sub_26152411C);
  }

  v15 = *(sub_26151C908((a5 - 17) >> 2) + 16);
  v62 = 0;
  v63 = 0;
  v61 = 0;
  sub_26148FAA8(&v61, *v15, v15[1], (v15[1] - *v15) >> 2);
  v16 = (v62 - v61) >> 2;
  if (v16 <= 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16 * v16 - 3;
  }

  memset(v60, 0, sizeof(v60));
  v50 = v17;
  v18 = 2 * v17;
  sub_2614F047C(v60, v18);
  LODWORD(v64) = -1082130432;
  sub_26148EFE8(&v59, v18);
  LODWORD(v64) = -1082130432;
  sub_26148EFE8(&__p, v18);
  if (v50 < 1)
  {
    sub_2614BCA58(&v64, 3uLL);
    v39 = v64;
    if (v13)
    {
      atomic_fetch_add_explicit(v13 + 2, 1u, memory_order_relaxed);
    }

    v40 = v39;
    if (*v39)
    {
      sub_2614705CC(*v39);
      v40 = v64;
    }

    *v39 = v13;
    if (v49)
    {
      atomic_fetch_add_explicit(v49 + 2, 1u, memory_order_relaxed);
    }

    v41 = v40[1];
    v42 = v40;
    if (v41)
    {
      sub_2614705CC(v41);
      v42 = v64;
    }

    v40[1] = v49;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 2, 1u, memory_order_relaxed);
    }

    v43 = v42[2];
    if (v43)
    {
      sub_2614705CC(v43);
    }

    v42[2] = v12;
    if (v48)
    {
      operator new();
    }

    v67 = 0;
    v68 = 0;
    v69 = 0;
    v44 = sub_2615146CC(&v67, v60);
    v45 = v44;
    v68 = v44;
    if (v44 >= v69)
    {
      v46 = sub_2615146CC(&v67, &__p);
    }

    else
    {
      *v44 = 0;
      v44[1] = 0;
      v44[2] = 0;
      sub_26149087C(v44, __p, v58, (v58 - __p) >> 2);
      v46 = (v45 + 3);
    }

    v68 = v46;
    operator new();
  }

  v19 = *a6;
  if (v19)
  {
    atomic_fetch_add_explicit(v19 + 2, 1u, memory_order_relaxed);
    v56 = v19;
    sub_261514454(&v61, v60, &v56, &v59);
    v20 = v19;
  }

  else
  {
    if (v11)
    {
      atomic_fetch_add_explicit(v11 + 2, 1u, memory_order_relaxed);
    }

    v55 = v11;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 2, 1u, memory_order_relaxed);
    }

    v54 = v12;
    if (v13)
    {
      atomic_fetch_add_explicit(v13 + 2, 1u, memory_order_relaxed);
    }

    v52 = 0;
    v53 = v13;
    (*(*a3 + 16))(&v64, a3, &v55, &v54, &v53, &v52, a5);
    if (v52)
    {
      sub_2614705CC(v52);
    }

    if (v53)
    {
      sub_2614705CC(v53);
    }

    if (v54)
    {
      sub_2614705CC(v54);
    }

    if (v55)
    {
      sub_2614705CC(v55);
    }

    v21 = v64;
    if (v64)
    {
      atomic_fetch_add_explicit(v64 + 2, 1u, memory_order_relaxed);
    }

    v51 = v21;
    sub_261514454(&v61, v60, &v51, &v59);
    if (v21)
    {
      sub_2614705CC(v21);
    }

    v20 = v64;
    if (!v64)
    {
LABEL_37:
      v22 = a1 * 3.0;
      v23 = *v59;
      v24 = *(v59 + 1);
      v70 = 0x500000003;
      v25 = v24;
      v26 = (3 * a1);
      v27 = a3[2];
      v28 = *(v27 + 56);
      v29 = -v28;
      v30 = *(v27 + 32);
      v31 = v30 & -v28;
      v32 = v28 - 1;
      v33 = *(v27 + 16);
      v34 = (v33 & v32 | v31) - 1;
      if (v26 + v23 < v34)
      {
        v34 = v26 + v23;
      }

      if (v22 <= (v34 - ((v23 - v26) & ~((v23 - v26) >> 31))))
      {
        v35 = (v25 - v26) & ~((v25 - v26) >> 31);
        v36 = (v30 & v32 | v33 & v29) - 1;
        v37 = v26 + v25;
        if (v37 >= v36)
        {
          v37 = v36;
        }

        if (v22 <= (v37 - v35))
        {
          atomic_fetch_add_explicit((v27 + 8), 1u, memory_order_relaxed);
          LODWORD(v65) = 0;
          v64 = &unk_2873D1398;
          v66 = 0;
          atomic_fetch_add_explicit((v27 + 8), 1u, memory_order_relaxed);
          if (v66)
          {
            sub_2614705CC(v66);
          }

          v66 = v27;
          operator new();
        }
      }

      v38 = __cxa_allocate_exception(0x20uLL);
      sub_2614EB5DC(v38, "region too small to hold alignment pattern");
      *v38 = &unk_2873D19D8;
      __cxa_throw(v38, &unk_2873D2BF8, sub_26152411C);
    }
  }

  sub_2614705CC(v20);
  goto LABEL_37;
}

void sub_261513C64()
{
  if (v1)
  {
    operator delete(v1);
  }

  if (v2)
  {
    operator delete(v2);
  }

  if (v3)
  {
    operator delete(v3);
  }

  if (v4)
  {
    operator delete(v4);
  }

  if (v0)
  {
    sub_2614705CC(v0);
  }

  JUMPOUT(0x26151440CLL);
}

void sub_261513CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void **a44)
{
  *(v45 - 224) = v44;
  a44 = (v45 - 232);
  sub_26147086C(&a44);
  JUMPOUT(0x2615143A8);
}

void sub_261513D08(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  if (v3)
  {
    sub_2614705CC(v3);
  }

  if (v4)
  {
    sub_2614705CC(v4);
  }

  if (v5)
  {
    sub_2614705CC(v5);
  }

  if (v6)
  {
    sub_2614705CC(v6);
  }

  _Unwind_Resume(a1);
}

void sub_261513D18(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_uint **a9, uint64_t a10, int a11, int a12, uint64_t a13, atomic_uint *a14, atomic_uint *a15, atomic_uint *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, atomic_uint *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    if (v67)
    {
      sub_2614705CC(v67);
    }

    v72 = *(v69 - 176);
    if (v72)
    {
      sub_2614705CC(v72);
    }

    if (a39)
    {
      sub_2614705CC(a39);
    }

    if (a40)
    {
      sub_2614705CC(a40);
    }

    if (a41)
    {
      sub_2614705CC(a41);
    }

    if (a42)
    {
      sub_2614705CC(a42);
    }

    if (v68)
    {
      sub_2614705CC(v68);
    }

    __cxa_begin_catch(a1);
    v73 = sub_2615149E4(&a67, &a61);
    v74 = v73;
    if (v70 > 2.5 && a21 <= 1)
    {
      if (qword_280CB3630 != -1)
      {
        dispatch_once(&qword_280CB3630, &unk_2873D0640);
      }

      v75 = qword_280CB3628;
      if (os_log_type_enabled(qword_280CB3628, OS_LOG_TYPE_DEBUG))
      {
        *(v69 - 176) = 0;
        _os_log_debug_impl(&dword_26146F000, v75, OS_LOG_TYPE_DEBUG, "QR with 0 or 1 alignment pattern: try to search 12 finder pattern corners and estimate polynomial transform.", (v69 - 176), 2u);
      }

      *(v69 - 176) = 0;
      *(v69 - 168) = 0;
      *(v69 - 160) = 0;
      __p = 0;
      a37 = 0;
      a38 = 0;
      v76 = *(a22 + 16);
      if (v76)
      {
        atomic_fetch_add_explicit(v76 + 2, 1u, memory_order_relaxed);
      }

      a35 = v76;
      v77 = *a9;
      if (*a9)
      {
        atomic_fetch_add_explicit(v77 + 2, 1u, memory_order_relaxed);
      }

      a34 = v77;
      v78 = sub_261514B78(&a35, &a34);
      if (v77)
      {
        sub_2614705CC(v77);
      }

      if (v76)
      {
        sub_2614705CC(v76);
      }

      if (v78 <= 8)
      {
        if (a16)
        {
          atomic_fetch_add_explicit(a16 + 2, 1u, memory_order_relaxed);
        }

        a33 = a16;
        if (a15)
        {
          atomic_fetch_add_explicit(a15 + 2, 1u, memory_order_relaxed);
        }

        a32 = a15;
        if (a14)
        {
          atomic_fetch_add_explicit(a14 + 2, 1u, memory_order_relaxed);
        }

        a31 = a14;
        sub_26151595C((v69 - 176), &__p, &a33, &a32, &a31, a12);
        if (a14)
        {
          sub_2614705CC(a14);
        }

        if (a15)
        {
          sub_2614705CC(a15);
        }

        if (a16)
        {
          sub_2614705CC(a16);
        }
      }

      if (v74 == 1)
      {
        if (a23)
        {
          atomic_fetch_add_explicit(a23 + 2, 1u, memory_order_relaxed);
        }

        a30 = a23;
        sub_261515B28(v69 - 176, &__p, &a30, a12);
        if (a23)
        {
          sub_2614705CC(a23);
        }
      }

      sub_261515C0C();
    }

    if (a21 == 6 && v73 >= 4)
    {
      if (qword_280CB3630 != -1)
      {
        dispatch_once(&qword_280CB3630, &unk_2873D0640);
      }

      v79 = qword_280CB3628;
      if (os_log_type_enabled(qword_280CB3628, OS_LOG_TYPE_DEBUG))
      {
        *(v69 - 176) = 67240192;
        *(v69 - 172) = v74;
        _os_log_debug_impl(&dword_26146F000, v79, OS_LOG_TYPE_DEBUG, "QR with 6 algiment patterns: try estimate polynomial transform using %{public}d valid alignment patterns.", (v69 - 176), 8u);
      }

      if (a16)
      {
        atomic_fetch_add_explicit(a16 + 2, 1u, memory_order_relaxed);
      }

      a29 = a16;
      if (a15)
      {
        atomic_fetch_add_explicit(a15 + 2, 1u, memory_order_relaxed);
      }

      a28 = a15;
      if (a14)
      {
        atomic_fetch_add_explicit(a14 + 2, 1u, memory_order_relaxed);
      }

      a27 = a14;
      sub_26151595C(&a67, &a61, &a29, &a28, &a27, a12);
    }

    else
    {
      if (a21 < 13 || v73 < 6)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        sub_2614EB5DC(exception, "transform for this case not implemented.");
        *exception = &unk_2873D19D8;
        __cxa_throw(exception, &unk_2873D2BF8, sub_26152411C);
      }

      if (a16)
      {
        atomic_fetch_add_explicit(a16 + 2, 1u, memory_order_relaxed);
      }

      a26 = a16;
      if (a15)
      {
        atomic_fetch_add_explicit(a15 + 2, 1u, memory_order_relaxed);
      }

      a25 = a15;
      if (a14)
      {
        atomic_fetch_add_explicit(a14 + 2, 1u, memory_order_relaxed);
      }

      a24 = a14;
      sub_26151595C(&a67, &a61, &a26, &a25, &a24, a12);
    }

    if (a14)
    {
      sub_2614705CC(a14);
    }

    if (a15)
    {
      sub_2614705CC(a15);
    }

    if (a16)
    {
      sub_2614705CC(a16);
    }

    sub_261515C0C();
  }

  JUMPOUT(0x26151444CLL);
}

void sub_261514200(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, atomic_uint *a53)
{
  __cxa_free_exception(v53);
  __cxa_end_catch();
  if (a53)
  {
    sub_2614705CC(a53);
  }

  a44 = v54 - 232;
  sub_26147086C(&a44);
  JUMPOUT(0x2615143A8);
}

void sub_2615142F4(void *a1, int a2)
{
  if (a2)
  {
    sub_261470E34(a1);
  }

  JUMPOUT(0x26151444CLL);
}

void sub_261514304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void **a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, char a50)
{
  sub_261470CC4(&a44);
  a44 = &a47;
  sub_26147086C(&a44);
  a44 = &a50;
  sub_261470CC4(&a44);
  MEMORY[0x2667045D0](v50, 0x10A1C400C341749);
  a44 = (v51 - 232);
  sub_26147086C(&a44);
  JUMPOUT(0x2615143A8);
}

uint64_t sub_261514454(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a1[1] - *a1;
  if ((v5 >> 2) >= 1)
  {
    v7 = 0;
    v8 = (v5 >> 2) - 1;
    v9 = (v5 >> 2) & 0x7FFFFFFF;
    do
    {
      v10 = 0;
      do
      {
        if (v10 | v7)
        {
          v11 = v7 == v8 && v10 == 0;
          v12 = v11;
          v13 = v8 == v10 && v7 == 0;
          if (!v13 && !v12)
          {
            v14 = *(*a1 + 4 * v10) + 0.5;
            v15 = *(a2 + 8);
            v16 = *(a2 + 16);
            if (v15 >= v16)
            {
              v18 = *a2;
              v19 = v15 - *a2;
              v20 = (v19 >> 2) + 1;
              if (v20 >> 62)
              {
                goto LABEL_48;
              }

              if ((v16 - v18) >> 1 > v20)
              {
                v20 = (v16 - v18) >> 1;
              }

              if (v16 - v18 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v21 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v21 = v20;
              }

              if (v21)
              {
                sub_261472B30(v21);
              }

              v22 = (4 * (v19 >> 2));
              v16 = 0;
              *v22 = v14;
              v17 = v22 + 1;
              memcpy(0, v18, v19);
              v23 = *a2;
              *a2 = 0;
              *(a2 + 8) = v17;
              *(a2 + 16) = 0;
              if (v23)
              {
                operator delete(v23);
                v16 = *(a2 + 16);
              }
            }

            else
            {
              *v15 = v14;
              v17 = v15 + 1;
            }

            *(a2 + 8) = v17;
            v24 = *(*a1 + 4 * v7) + 0.5;
            if (v17 >= v16)
            {
              v26 = *a2;
              v27 = v17 - *a2;
              v28 = (v27 >> 2) + 1;
              if (v28 >> 62)
              {
LABEL_48:
                sub_2614709BC();
              }

              if ((v16 - v26) >> 1 > v28)
              {
                v28 = (v16 - v26) >> 1;
              }

              if (v16 - v26 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v29 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v29 = v28;
              }

              if (v29)
              {
                sub_261472B30(v29);
              }

              v30 = (4 * (v27 >> 2));
              *v30 = v24;
              v25 = v30 + 1;
              memcpy(0, v26, v27);
              v31 = *a2;
              *a2 = 0;
              *(a2 + 8) = v25;
              *(a2 + 16) = 0;
              if (v31)
              {
                operator delete(v31);
              }
            }

            else
            {
              *v17 = v24;
              v25 = v17 + 1;
            }

            *(a2 + 8) = v25;
          }
        }

        ++v10;
      }

      while (v9 != v10);
      ++v7;
    }

    while (v7 != v9);
  }

  if (a4 != a2)
  {
    sub_2614DD330(a4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  }

  v32 = *(**a3 + 16);

  return v32();
}

uint64_t sub_2615146CC(const void **a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_2614709BC();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    sub_2614C0B34(v5);
  }

  v6 = 24 * v2;
  v13 = 0;
  v14 = v6;
  v15 = 24 * v2;
  v16 = 0;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  sub_26149087C(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v7 = v15 + 24;
  v8 = a1[1] - *a1;
  v9 = &v14[-v8];
  memcpy(&v14[-v8], *a1, v8);
  v10 = *a1;
  *a1 = v9;
  a1[1] = v7;
  v11 = a1[2];
  a1[2] = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  sub_2615161DC(&v13);
  return v7;
}

void sub_2615147E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2615161DC(va);
  _Unwind_Resume(a1);
}

void sub_2615147F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a2)
  {
    atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
  }

  v7 = a2;
  v5 = *a4;
  if (*a4)
  {
    atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
  }

  v6 = v5;
  sub_261516240(&v8, &v7, a5, &v6);
}

void sub_2615149AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2614705CC(v1);
    sub_2614705CC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2615149E4(int64x2_t *a1, void **a2)
{
  v2 = *a1;
  if (vmovn_s64(vceqq_s64(*a1, vdupq_laneq_s64(*a1, 1))).u8[0])
  {
    return 0;
  }

  v5 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    return 0;
  }

  v20 = 0;
  v7 = 0uLL;
  v19 = 0u;
  v18 = 0;
  v17 = 0u;
  if ((v4 - v5) >= 5)
  {
    v12 = 0;
    v10 = 0;
    v13 = 0;
    do
    {
      if (*&v5[v12] >= 0.0 && *&v5[v12 + 4] >= 0.0)
      {
        sub_2614DE064(&v19, (a1->i64[0] + v12));
        sub_2614DE064(&v19, (a1->i64[0] + v12 + 4));
        sub_2614DE064(&v17, *a2 + v12);
        sub_2614DE064(&v17, *a2 + v12 + 4);
        v10 = (v10 + 1);
        v5 = *a2;
        v4 = a2[1];
      }

      ++v13;
      v12 += 8;
    }

    while (v13 < ((v4 - v5) >> 2) >> 1);
    v2 = *a1;
    v7 = v19;
    v9 = v20;
    v11 = v17;
    v8 = v18;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0uLL;
  }

  *a1 = v7;
  a1[1].i64[0] = v9;
  v14 = *a2;
  *a2 = v11;
  v15 = v2.i64[0];
  a2[2] = v8;
  if (v14)
  {
    operator delete(v14);
  }

  if (v15)
  {
    operator delete(v15);
  }

  return v10;
}

void sub_261514B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_261514B78(uint64_t *a1, uint64_t *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  sub_2614DCF90(v18, a1, *(*a2 + 52));
  v3 = *a2;
  v4 = *(*a2 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed);
    v3 = *a2;
  }

  v5 = *(v3 + 32);
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 2, 1u, memory_order_relaxed);
    v3 = *a2;
  }

  v17 = v5;
  v6 = *(v3 + 16);
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 2, 1u, memory_order_relaxed);
  }

  v16 = v6;
  v7 = (*(*v4 + 16))(v4);
  v8 = (*(*v17 + 16))(v17);
  v9 = (*(*v4 + 16))(v4);
  v10 = (*(*v16 + 16))(v16);
  v11 = (*(*v4 + 24))(v4);
  v12 = (*(*v17 + 24))(v17);
  v13 = (*(*v4 + 24))(v4);
  v14 = (*(*v16 + 24))(v16);
  if (sqrtf(((((v11 - v12) + v13) - v14) * (((v11 - v12) + v13) - v14)) + ((((v7 - v8) + v9) - v10) * (((v7 - v8) + v9) - v10))) >= 0.00000011921)
  {
    operator new();
  }

  sub_2614705CC(v16);
  sub_2614705CC(v17);
  sub_2614705CC(v4);
  if (v19)
  {
    sub_2614705CC(v19);
  }

  return 0;
}

void sub_26151585C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10, atomic_uint *a11, uint64_t a12, char **__p, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, atomic_uint *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  __p = &a17;
  sub_26147086C(&__p);
  a17 = &a20;
  sub_26147086C(&a17);
  MEMORY[0x2667045D0](v28, 0x1060C40B96495EDLL);
  if (a10)
  {
    sub_2614705CC(a10);
  }

  if (a11)
  {
    sub_2614705CC(a11);
  }

  sub_2614705CC(v27);
  if (a26)
  {
    sub_2614705CC(a26);
  }

  _Unwind_Resume(a1);
}

void sub_26151595C(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v21 = *MEMORY[0x277D85DE8];
  v10 = a1[1];
  LODWORD(v17) = 1080033280;
  *(&v17 + 1) = a6 + -3.5;
  __asm { FMOV            V1.2S, #3.5 }

  v18 = _D1;
  v19 = *(&v17 + 1);
  v20 = 3.5;
  sub_261515FB8(a1, v10, &v17, &v21);
  v16 = a2[1];
  LODWORD(v17) = (*(**a5 + 16))();
  HIDWORD(v17) = (*(**a5 + 24))(*a5);
  LODWORD(v18) = (*(**a3 + 16))();
  HIDWORD(v18) = (*(**a3 + 24))();
  v19 = (*(**a4 + 16))();
  v20 = (*(**a4 + 24))();
  sub_261515FB8(a2, v16, &v17, &v21);
}

void sub_261515B28(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*a3)
  {
    v7 = a4 + -6.5;
    v8 = v7;
    sub_2614DE064(a1, &v8);
    v8 = v7;
    sub_2614DE064(a1, &v8);
    v8 = (*(**a3 + 16))();
    sub_2614DE064(a2, &v8);
    v8 = (*(**a3 + 24))();
    sub_2614DE064(a2, &v8);
  }
}

void sub_261515F68(_Unwind_Exception *a1)
{
  sub_2614705CC(v1);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_261515FB8(void *a1, char *__dst, void *__src, int *a4)
{
  v8 = a1[1];
  v7 = a1[2];
  if (v7 - v8 >= 24)
  {
    v15 = (v8 - __dst) >> 2;
    if (v15 > 5)
    {
      v19 = __dst + 24;
      v20 = v8 - 6;
      v21 = a1[1];
      while (v20 < v8)
      {
        v22 = *v20++;
        *v21++ = v22;
      }

      a1[1] = v21;
      if (v8 != v19)
      {
        memmove(__dst + 24, __dst, v8 - v19);
      }

      v27 = *__src;
      *(__dst + 2) = __src[2];
      *__dst = v27;
    }

    else
    {
      v16 = (__src + v8 - __dst);
      v17 = a1[1];
      while (v16 != a4)
      {
        v18 = *v16++;
        *v17 = v18;
        v17 += 4;
      }

      a1[1] = v17;
      if (v15 >= 1)
      {
        v23 = __dst + 24;
        v24 = (v17 - 24);
        v25 = v17;
        while (v24 < v8)
        {
          v26 = *v24++;
          *v25 = v26;
          v25 += 4;
        }

        a1[1] = v25;
        if (v17 != v23)
        {
          memmove(__dst + 24, __dst, v17 - v23);
        }

        if (v8 != __dst)
        {

          memmove(__dst, __src, v8 - __dst);
        }
      }
    }
  }

  else
  {
    v9 = *a1;
    v10 = ((v8 - *a1) >> 2) + 6;
    if (v10 >> 62)
    {
      sub_2614709BC();
    }

    v11 = __dst - v9;
    v12 = v7 - v9;
    v13 = v12 >> 1;
    if (v12 >> 1 <= v10)
    {
      v13 = ((v8 - *a1) >> 2) + 6;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      sub_261472B30(v14);
    }

    v28 = 0;
    v29 = 4 * (v11 >> 2);
    do
    {
      *(v29 + v28) = *(__src + v28);
      v28 += 4;
    }

    while (v28 != 24);
    memcpy((v29 + 24), __dst, a1[1] - __dst);
    v30 = *a1;
    v31 = v29 + 24 + a1[1] - __dst;
    a1[1] = __dst;
    v32 = (__dst - v30);
    v33 = (v29 - (__dst - v30));
    memcpy(v33, v30, v32);
    v34 = *a1;
    *a1 = v33;
    a1[1] = v31;
    a1[2] = 0;
    if (v34)
    {

      operator delete(v34);
    }
  }
}

uint64_t sub_2615161DC(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_261516240(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  sub_2614C26BC();
  v8 = *a2;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
  }

  v9 = *a4;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
  }

  v10 = v9;
  sub_2614C21B0(a1, v8, a3, &v10);
}

void sub_26151630C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_2614705CC(v2);
  }

  if (v1)
  {
    sub_2614705CC(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_261516330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(**a2 + 16))();
  v7 = (*(**a2 + 24))();
  sub_261470964(*(a1 + 16), v6, v7);
  (*(**a3 + 16))();
  (*(**a3 + 24))();
  operator new();
}

void sub_26151680C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_261516868(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, int a5)
{
  v9 = (*(**a2 + 16))();
  v10 = (*(**a2 + 24))();
  v11 = (*(**a3 + 16))();
  v12 = (*(**a3 + 24))();
  v13 = *a3;
  v14 = *(**a3 + 16);
  if (a5)
  {
    sub_261516B80(a1, v9, v10, v11, v12, a4);
    v15 = v14(v13);
    v16 = (*(**a3 + 24))();
    v17 = (*(**a2 + 16))();
    v18 = (*(**a2 + 24))();
    sub_261516B80(a1, v15, v16, v17, v18, a4);
  }

  else
  {
    sub_261516CE8(a1, v9, v10, v11, v12, a4);
    v19 = v14(v13);
    v20 = (*(**a3 + 24))();
    v21 = (*(**a2 + 16))();
    v22 = (*(**a2 + 24))();
    sub_261516CE8(a1, v19, v20, v21, v22, a4);
  }
}

float sub_261516B80(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  if (a5 - a3 >= 0)
  {
    v6 = a5 - a3;
  }

  else
  {
    v6 = a3 - a5;
  }

  if (a4 - a2 >= 0)
  {
    v7 = a4 - a2;
  }

  else
  {
    v7 = a2 - a4;
  }

  if (v6 > v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v34 = v8;
  if (v6 > v7)
  {
    v9 = a4 - a2;
  }

  else
  {
    v9 = a5 - a3;
  }

  if (v6 > v7)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v6 > v7)
  {
    v11 = a4;
  }

  else
  {
    v11 = a5;
  }

  if (v6 > v7)
  {
    v12 = a5;
  }

  else
  {
    v12 = a4;
  }

  if (v6 > v7)
  {
    v13 = a2;
  }

  else
  {
    v13 = a3;
  }

  if (v6 > v7)
  {
    v14 = a3;
  }

  else
  {
    v14 = a2;
  }

  if (v14 < v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = -1;
  }

  if (v13 < v11)
  {
    v16 = 1;
  }

  else
  {
    v16 = -1;
  }

  v32 = v16;
  v33 = v11;
  v17 = v15 + v12;
  v18 = v15 + v12 - v14;
  if (v17 == v14)
  {
    return NAN;
  }

  v29 = v18;
  v30 = v9;
  v19 = 0;
  v31 = v10;
  v20 = -v10 >> 1;
  v21 = *(a1 + 16);
  v27 = v14;
  v28 = v13;
  do
  {
    if (v6 <= v7)
    {
      v22 = v14;
    }

    else
    {
      v22 = v13;
    }

    if (v6 <= v7)
    {
      v23 = v13;
    }

    else
    {
      v23 = v14;
    }

    if ((((v19 == 1) ^ a6 ^ sub_261470964(v21, v22, v23)) & 1) == 0)
    {
      if (v19 == 2)
      {
        v24 = v14 - v27;
        v25 = v13 - v28;
        return sqrt((v24 * v24 + v25 * v25));
      }

      ++v19;
    }

    v20 += v34;
    if (v20 >= 1)
    {
      if (v13 == v33)
      {
        break;
      }

      v13 += v32;
      v20 -= v31;
    }

    v14 += v15;
  }

  while (v17 != v14);
  if (v19 != 2)
  {
    return NAN;
  }

  v25 = v29;
  v24 = v30;
  return sqrt((v24 * v24 + v25 * v25));
}

void sub_261516CE8(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  if (sub_261516B80(a1, a2, a3, a4, a5, a6) > 0.0)
  {
    v12 = a2 - a4 + a2;
    v13 = *(a1 + 16);
    v14 = v13[14];
    v15 = -v14;
    v16 = v13[8];
    v17 = v14 - 1;
    v18 = v13[4];
    v19 = a2;
    if (v12 < 0)
    {
      v12 = 0;
      v21 = v19 / (a4 - a2);
    }

    else
    {
      v20 = v18 & v17 | v16 & v15;
      if (v12 >= v20)
      {
        v12 = v20 - 1;
        v21 = (v20 - 1 - a2) / (a2 - a4);
      }

      else
      {
        v21 = 1.0;
      }
    }

    v22 = (a3 + ((a3 - a5) * v21));
    if (v22 < 0)
    {
      v25 = a3 - v22;
      v22 = 0;
      v24 = a3 / v25;
    }

    else
    {
      v23 = v16 & v17 | v18 & v15;
      if (v22 >= v23)
      {
        v26 = v22 - a3;
        v22 = v23 - 1;
        v24 = (v23 - 1 - a3) / v26;
      }

      else
      {
        v24 = 1.0;
      }
    }

    sub_261516B80(a1, a2, a3, (v19 + ((v12 - a2) * v24)), v22, a6);
  }
}

float sub_261516E64(uint64_t a1, int a2, signed int a3)
{
  v3 = (a3 - 1);
  v4 = v3 >> 1;
  result = a2;
  if (((v3 >> 1) + 1) < a3)
  {
    v6 = v3 >> 1;
    v7 = ~(v3 >> 1) + a3;
    v8 = (a1 + 4 * v6 + 4);
    do
    {
      v9 = *v8++;
      result = result - v9;
      --v7;
    }

    while (v7);
  }

  if ((a3 & 0x80000001) == 1)
  {
    return result + (*(a1 + 4 * v4) * -0.5);
  }

  return result;
}

uint64_t sub_261516ECC(uint64_t result, __n128 a2)
{
  v2 = 0;
  v3 = 0;
  v26 = *MEMORY[0x277D85DE8];
  a2.n128_u32[0] = -10.0;
  while (1)
  {
    v4 = *(result + v2);
    if (!v4)
    {
      break;
    }

    v3 += v4;
    v2 += 4;
    if (v2 == 20)
    {
      if (v3 >= 5)
      {
        result = MEMORY[0x28223BE20](a2);
        for (i = 0; i != 20; i += 4)
        {
          *(&v21 + i) = *(result + i);
        }

        v9 = v7;
        if ((v6 & 1) != 0 && ((v10 = (v9 - v21) / 6.0, v21 >= (v10 + v10)) && (v11 = v10 * 0.5, vabds_f32(v10, v22) < (v10 * 0.5)) && fabsf(-(v23 - (v10 * 3.0))) < (v11 + v11) && vabds_f32(v10, v24) < v11 && vabds_f32(v10, v25) < v11 || (v10 = (v9 - v25) / 6.0, v12 = v10 * 0.5, vabds_f32(v10, v21) < (v10 * 0.5)) && vabds_f32(v10, v22) < v12 && fabsf(-(v23 - (v10 * 3.0))) < (v12 + v12) && ((v13 = vabds_f32(v10, v24), v25 >= (v10 + v10)) ? (v14 = v13 < v12) : (v14 = 0), v14)))
        {
          if (v5)
          {
            *v5 = v10;
          }
        }

        else
        {
          v15 = 0;
          v16 = 0.0;
          do
          {
            v16 = v16 + (*(&v21 + v15 * 4) * *&dword_261573668[v15]);
            ++v15;
          }

          while (v15 != 5);
          v17 = 0;
          v18 = 0.0;
          do
          {
            v18 = v18 + (*(&v21 + v17) * *(&v21 + v17));
            v17 += 4;
          }

          while (v17 != 20);
          v19 = 0;
          v20 = 0.0;
          do
          {
            v20 = v20 + (*&dword_261573668[v19] * *&dword_261573668[v19]);
            ++v19;
          }

          while (v19 != 5);
          if (v5)
          {
            *v5 = v9 / 7.0;
          }
        }
      }

      return result;
    }
  }

  return result;
}

float sub_2615170EC(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v30 = *MEMORY[0x277D85DE8];
  result = -10.0;
  while (1)
  {
    v4 = *(a1 + v1);
    if (!v4)
    {
      break;
    }

    v2 += v4;
    v1 += 4;
    if (v1 == 36)
    {
      if (v2 >= 9)
      {
        v5 = 0;
        v29 = 1065353216;
        v28[0] = xmmword_26157367C;
        v28[1] = unk_26157368C;
        do
        {
          *&v27[v5] = *(a1 + v5);
          v5 += 4;
        }

        while (v5 != 36);
        v6 = 0.0;
        v7 = 1u;
        do
        {
          v6 = v6 + (*&dword_2615736A0[v7] * *&dword_2615736A0[v7]);
          ++v7;
        }

        while (v7 != 8);
        v8 = 0.0;
        v9 = 1u;
        do
        {
          v8 = v8 + (*(v28 + v9 * 4) * *&dword_2615736A0[v9]);
          ++v9;
        }

        while (v9 != 8);
        v10 = 0.0;
        v11 = 1u;
        do
        {
          v10 = v10 + (*&v27[v11 * 4] * *&dword_2615736A0[v11]);
          ++v11;
        }

        while (v11 != 8);
        v12 = 0.0;
        for (i = 4; i != 32; i += 4)
        {
          v12 = v12 + (*&v27[i] * *&v27[i]);
        }

        v14 = 0.0;
        for (j = 4; j != 32; j += 4)
        {
          v14 = v14 + (*&v27[j] * *(v28 + j));
        }

        v16 = ((v10 * v14) - (v8 * v12)) / ((v6 * v12) - (v10 * v10));
        result = -10.0;
        if (fabsf(v16) <= 0.5)
        {
          for (k = 0; k != 9; ++k)
          {
            *(v28 + k * 4) = *(v28 + k * 4) + (v16 * *&dword_2615736A0[k]);
          }

          v18 = 0.0;
          for (m = 4; m != 32; m += 4)
          {
            v18 = v18 + (*&v27[m] * *(v28 + m));
          }

          v20 = 0.0;
          for (n = 4; n != 32; n += 4)
          {
            v20 = v20 + (*&v27[n] * *&v27[n]);
          }

          v22 = 0.0;
          for (ii = 4; ii != 32; ii += 4)
          {
            v22 = v22 + (*(v28 + ii) * *(v28 + ii));
          }

          v24 = 0;
          v25 = -v20;
          v26 = 0.0;
          do
          {
            v26 = v26 + (*&v27[v24] * *&v27[v24]);
            v24 += 4;
          }

          while (v24 != 36);
          return ((v22 * v25) + (v18 * v18)) / (v26 + v26);
        }
      }

      return result;
    }
  }

  return result;
}

float sub_261517334(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  for (i = 4; i != 32; i += 4)
  {
    v2 += *(a1 + i) * *(a1 + i);
  }

  v4 = 0;
  for (j = 4; j != 32; j += 4)
  {
    v4 += *(a2 + j);
  }

  v6 = 0;
  for (k = 4; k != 32; k += 4)
  {
    v6 += *(a2 + k) * *(a2 + k);
  }

  v8 = 0;
  for (m = 4; m != 32; m += 4)
  {
    v8 += *(a1 + m);
  }

  result = ((v4 * v2) - (v8 * v6)) / ((v4 * v2) + (v8 * v6));
  if (result > 0.0)
  {
    return -result;
  }

  return result;
}

float sub_2615173D0(void *a1, int a2, uint64_t a3, unint64_t a4, int *a5, unsigned int a6, unsigned __int8 a7)
{
  v12 = (a6 - 1) >> 1;
  v33 = a6 - 1;
  v13 = (a7 ^ ((a6 - 1) >> 1)) & 1;
  v34 = a1[4] & (a1[7] - 1) | a1[2] & -a1[7];
  bzero(a5, 4 * a6);
  v14 = v12;
  LODWORD(v15) = a2;
  v35 = v12;
  while (1)
  {
    if ((v15 & 0x80000000) != 0)
    {
LABEL_18:
      if (v14 > 1)
      {
        return NAN;
      }
    }

    else
    {
      v16 = v14 == v12 || v14 == 0;
      v17 = !v16;
      v15 = v15;
      while (((sub_261470964(a1, a3, v15) ^ v14) & 1) != v13)
      {
        v18 = a5[v14];
        if (v18 > a4 && v17)
        {
          break;
        }

        a5[v14] = v18 + 1;
        v20 = v15-- <= 0;
        if (v20)
        {
          LODWORD(v15) = -1;
          v12 = v35;
          goto LABEL_18;
        }
      }

      v12 = v35;
    }

    if (v14 && v14 < v12 && a5[v14] > a4)
    {
      return NAN;
    }

    v20 = v14-- <= 0;
    if (v20)
    {
      v21 = a2 + 1;
      v22 = a6 - 2;
      v23 = v12;
      while (1)
      {
        if (v21 < v34)
        {
          if ((v23 & 0x80000000) == 0)
          {
            v24 = v23 & 1;
          }

          else
          {
            v24 = -(v23 & 1);
          }

          v26 = v23 != v12 && v23 != v33;
          v27 = v21;
          while (1)
          {
            v28 = sub_261470964(a1, a3, v27);
            if (v24 == v13)
            {
              if ((v28 & 1) == 0)
              {
                break;
              }
            }

            else if (v28)
            {
              break;
            }

            v29 = a5[v23];
            if (v29 > a4 && v26)
            {
              break;
            }

            a5[v23] = v29 + 1;
            if (v34 == ++v27)
            {
              v21 = v34;
              goto LABEL_49;
            }
          }

          v21 = v27;
LABEL_49:
          v12 = v35;
          v22 = a6 - 2;
        }

        if (v23 < v22 && v21 == v34 || v23 > v12 && v23 < v33 && a5[v23] > a4)
        {
          return NAN;
        }

        if (++v23 == a6)
        {

          return sub_261516E64(a5, v21, a6);
        }
      }
    }
  }
}

float sub_261517644(void *a1, int a2, uint64_t a3, unint64_t a4, int *a5, unsigned int a6, unsigned __int8 a7)
{
  v12 = (a6 - 1) >> 1;
  v33 = a6 - 1;
  v13 = (a7 ^ ((a6 - 1) >> 1)) & 1;
  v34 = a1[2] & (a1[7] - 1) | a1[4] & -a1[7];
  bzero(a5, 4 * a6);
  v14 = v12;
  LODWORD(v15) = a2;
  v35 = v12;
  while (1)
  {
    if ((v15 & 0x80000000) != 0)
    {
LABEL_18:
      if (v14 > 1)
      {
        return NAN;
      }
    }

    else
    {
      v16 = v14 == v12 || v14 == 0;
      v17 = !v16;
      v15 = v15;
      while (((sub_261470964(a1, v15, a3) ^ v14) & 1) != v13)
      {
        v18 = a5[v14];
        if (v18 > a4 && v17)
        {
          break;
        }

        a5[v14] = v18 + 1;
        v20 = v15-- <= 0;
        if (v20)
        {
          LODWORD(v15) = -1;
          v12 = v35;
          goto LABEL_18;
        }
      }

      v12 = v35;
    }

    if (v14 && v14 < v12 && a5[v14] > a4)
    {
      return NAN;
    }

    v20 = v14-- <= 0;
    if (v20)
    {
      v21 = a2 + 1;
      v22 = a6 - 2;
      v23 = v12;
      while (1)
      {
        if (v21 < v34)
        {
          if ((v23 & 0x80000000) == 0)
          {
            v24 = v23 & 1;
          }

          else
          {
            v24 = -(v23 & 1);
          }

          v26 = v23 != v12 && v23 != v33;
          v27 = v21;
          while (1)
          {
            v28 = sub_261470964(a1, v27, a3);
            if (v24 == v13)
            {
              if ((v28 & 1) == 0)
              {
                break;
              }
            }

            else if (v28)
            {
              break;
            }

            v29 = a5[v23];
            if (v29 > a4 && v26)
            {
              break;
            }

            a5[v23] = v29 + 1;
            if (v34 == ++v27)
            {
              v21 = v34;
              goto LABEL_49;
            }
          }

          v21 = v27;
LABEL_49:
          v12 = v35;
          v22 = a6 - 2;
        }

        if (v23 < v22 && v21 == v34 || v23 > v12 && v23 < v33 && a5[v23] > a4)
        {
          return NAN;
        }

        if (++v23 == a6)
        {

          return sub_261516E64(a5, v21, a6);
        }
      }
    }
  }
}

float sub_2615178B8(uint64_t a1, int a2, unsigned int a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, __n128 a9, char a10)
{
  v13 = a9.n128_f32[0];
  v14 = 0;
  v15 = (a7 - 1) >> 1;
  v16 = *a1;
  v17 = *(*a1 + 56);
  v18 = -v17;
  v19 = *(*a1 + 16);
  v20 = v19 & -v17;
  LODWORD(v17) = v17 - 1;
  v21 = *(*a1 + 32);
  v73 = v21 & v17 | v20;
  v78 = a8 ^ ((a7 - 1) >> 1);
  v74 = (a7 - 1);
  v75 = v19 & v17 | v21 & v18;
  do
  {
    *(a5 + 4 * v14) = 0;
    *(a6 + 4 * v14++) = 0;
  }

  while (a7 != v14);
  a9.n128_u32[0] = -1.0;
  v22 = v13 + -1.0;
  v80 = v78 & 1;
  v23 = (a7 - 1) >> 1;
  v24 = a3;
  LODWORD(v25) = a2;
  while (1)
  {
    if ((v25 & 0x80000000) == 0 && (v24 & 0x80000000) == 0)
    {
      v27 = v23 != v15 && v23 != 0;
      v28 = v24;
      v25 = v25;
      while (1)
      {
        v29 = sub_261470964(v16, v28, v25);
        if ((v78 ^ v23))
        {
          if (v29)
          {
            break;
          }
        }

        else if ((v29 & 1) == 0)
        {
          break;
        }

        v30 = *(a5 + 4 * v23);
        if (v30 > a4 && v27)
        {
          break;
        }

        *(a5 + 4 * v23) = v30 + 1;
        v24 = v28 - 1;
        v32 = v25-- < 1;
        if (!v32)
        {
          v32 = v28-- <= 0;
          if (!v32)
          {
            continue;
          }
        }

        goto LABEL_26;
      }

      v24 = v28;
    }

LABEL_26:
    if (v23 >= 2 && ((v24 | v25) & 0x80000000) != 0 || v23 && v23 < v15 && *(a5 + 4 * v23) > a4)
    {
      return v22;
    }

    v32 = v23-- <= 0;
    if (v32)
    {
      LODWORD(v33) = a2 + 1;
      v34 = v15;
      LODWORD(v15) = a3 + 1;
      v76 = (a7 - 2);
      v36 = v74;
      v35 = v75;
      v37 = v73;
      v79 = v34;
      while (1)
      {
        if (v33 < v37 && v15 < v35)
        {
          if ((v34 & 0x80000000) == 0)
          {
            v38 = v34 & 1;
          }

          else
          {
            v38 = -(v34 & 1);
          }

          v40 = v34 != v79 && v34 != v36;
          v15 = v15;
          v33 = v33;
          do
          {
            v41 = sub_261470964(v16, v15, v33);
            if (v38 == v80)
            {
              if ((v41 & 1) == 0)
              {
                break;
              }
            }

            else if (v41)
            {
              break;
            }

            v42 = *(a5 + 4 * v34);
            if (v42 > a4 && v40)
            {
              break;
            }

            *(a5 + 4 * v34) = v42 + 1;
            ++v33;
            ++v15;
            if (v33 >= v73)
            {
              break;
            }
          }

          while (v15 < v75);
          v37 = v73;
          v36 = v74;
          v35 = v75;
        }

        if (v34 < v76 && (v33 == v37 || v15 == v35) || v34 > v79 && v34 < v36 && *(a5 + 4 * v34) > a4)
        {
          return v22;
        }

        if (++v34 == a7)
        {
          if (a10)
          {
            v44.n128_f32[0] = sub_2615170EC(a5);
          }

          else
          {
            sub_261516ECC(a5, a9);
          }

          v45 = v44.n128_f32[0];
          v46 = v79;
          if (v44.n128_f32[0] >= v13)
          {
            v48 = v79;
            LODWORD(v50) = a2;
            LODWORD(v49) = a3;
            v51 = v75;
            while (1)
            {
              if ((v50 & 0x80000000) == 0 && v49 < v51)
              {
                v53 = v48 != v46 && v48 != 0;
                v49 = v49;
                v50 = v50;
                v54 = *a1;
                do
                {
                  v55 = sub_261470964(v54, v49, v50);
                  if ((v78 ^ v48))
                  {
                    if (v55)
                    {
                      break;
                    }
                  }

                  else if ((v55 & 1) == 0)
                  {
                    break;
                  }

                  v56 = *(a6 + 4 * v48);
                  if (v56 > a4 && v53)
                  {
                    break;
                  }

                  *(a6 + 4 * v48) = v56 + 1;
                  ++v49;
                  v32 = v50-- < 1;
                  if (v32)
                  {
                    break;
                  }
                }

                while (v49 < v75);
                v36 = v74;
                v51 = v75;
                v46 = v79;
              }

              if (v48 >= 2 && ((v50 & 0x80000000) != 0 || v49 == v51))
              {
                break;
              }

              if (v48)
              {
                if (v48 < v46)
                {
                  v51 = v75;
                  if (*(a6 + 4 * v48) > a4)
                  {
                    break;
                  }
                }
              }

              v32 = v48-- <= 0;
              if (v32)
              {
                v58 = a3 - 1;
                v59 = v46;
                LODWORD(v60) = a2 + 1;
                while (1)
                {
                  if (v60 < v37 && (v58 & 0x80000000) == 0)
                  {
                    if ((v59 & 0x80000000) == 0)
                    {
                      v61 = v59 & 1;
                    }

                    else
                    {
                      v61 = -(v59 & 1);
                    }

                    v63 = v59 != v46 && v59 != v36;
                    v64 = v58;
                    v60 = v60;
                    v65 = *a1;
                    while (1)
                    {
                      v66 = sub_261470964(v65, v64, v60);
                      if (v61 == v80)
                      {
                        if ((v66 & 1) == 0)
                        {
                          break;
                        }
                      }

                      else if (v66)
                      {
                        break;
                      }

                      v67 = *(a6 + 4 * v59);
                      if (v67 > a4 && v63)
                      {
                        break;
                      }

                      *(a6 + 4 * v59) = v67 + 1;
                      ++v60;
                      v58 = v64 - 1;
                      if (v60 < v73)
                      {
                        v32 = v64-- <= 0;
                        if (!v32)
                        {
                          continue;
                        }
                      }

                      goto LABEL_124;
                    }

                    v58 = v64;
LABEL_124:
                    v37 = v73;
                  }

                  if (v59 < v76 && (v60 == v37 || (v58 & 0x80000000) != 0) || v59 > v46 && v59 < v36 && *(a6 + 4 * v59) > a4)
                  {
                    return v22;
                  }

                  if (++v59 == a7)
                  {
                    if (a10)
                    {
                      v69 = sub_2615170EC(a6);
                    }

                    else
                    {
                      sub_261516ECC(a6, v44);
                    }

                    return v45 + v69;
                  }
                }
              }
            }
          }

          return v22;
        }
      }
    }
  }
}

BOOL sub_261518104(uint64_t a1, atomic_uint **a2, uint64_t a3)
{
  v4 = *(*a2 + 5);
  if (v4 > 0.0)
  {
    v7 = (*(**a2 + 16))(*a2);
    (*(**a2 + 24))();
    v9 = *(a3 + 8);
    if (v9 != *a3)
    {
      v10 = v8;
      v11 = 0;
      v12 = *(*a2 + 6);
      v13 = (v9 - *a3) >> 3;
      if (v13 <= 1)
      {
        v13 = 1;
      }

      v14 = v13 - 1;
      do
      {
        v15 = *(*a3 + 8 * v11);
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1u, memory_order_relaxed);
        }

        if (sub_2614EB750(v15, v4, v10, v7))
        {
          v22 = 0;
          v23 = 0;
          v21 = 0;
          sub_2614EB81C(v15, &v23, &v22 + 1, &v22, &v21, &v23 + 1, v10, v7, v4, v12);
          operator new();
        }

        if (v15)
        {
          sub_2614705CC(v15);
        }
      }

      while (v14 != v11++);
      v9 = *(a3 + 8);
    }

    if (v9 >= *(a3 + 16))
    {
      v18 = sub_2614FAFDC(a3, a2);
    }

    else
    {
      sub_2614FAF84(a3, a2);
      v18 = v9 + 8;
    }

    *(a3 + 8) = v18;
    v19 = *(a1 + 112);
    if (v19)
    {
      (*(*v19 + 16))(v19, *a2);
    }
  }

  return v4 > 0.0;
}

void sub_261518380(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2614705CC(v1);
  }

  _Unwind_Resume(exception_object);
}

float sub_26151839C(void *a1, uint64_t a2)
{
  v4 = (*(**a1 + 16))(*a1);
  v5 = v4 - (*(**a2 + 16))();
  v6 = (*(**a1 + 24))();
  v7 = (*(**a2 + 24))();
  return sqrtf(((v6 - v7) * (v6 - v7)) + (v5 * v5));
}

uint64_t sub_261518484(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0;
  v5 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
    v6 = *a1;
    if (*a1)
    {
      sub_2614705CC(v6);
    }
  }

  *a1 = v5;
  *(a1 + 112) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  v7 = *a3;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
    v8 = *(a1 + 112);
    if (v8)
    {
      sub_2614705CC(v8);
    }
  }

  *(a1 + 112) = v7;
  return a1;
}

uint64_t sub_261518524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, simd_float3x3 a9, __n128 a10, __n128 a11, __n128 a12, uint64_t a13, char a14)
{
  *a1 = a14;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 48) = a5;
  *(a1 + 56) = a6;
  *(a1 + 64) = a7;
  *(a1 + 72) = a8;
  *(a1 + 80) = a13;
  *(a1 + 96) = a9;
  *(a1 + 144) = a10;
  *(a1 + 160) = a11;
  *(a1 + 176) = a12;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  v30 = __invert_f3(a9);
  v15 = 0;
  *(a1 + 248) = v30.columns[0].i32[2];
  *(a1 + 240) = v30.columns[0].i64[0];
  *(a1 + 264) = v30.columns[1].i32[2];
  *(a1 + 256) = v30.columns[1].i64[0];
  *(a1 + 280) = v30.columns[2].i32[2];
  *(a1 + 272) = v30.columns[2].i64[0];
  v16 = *(a1 + 240);
  v17 = *(a1 + 256);
  v18 = *(a1 + 272);
  v19 = *(a1 + 160);
  v20 = *(a1 + 176);
  v25[0] = *(a1 + 144);
  v25[1] = v19;
  v25[2] = v20;
  do
  {
    *(&v26 + v15 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(v25[v15])), v17, *&v25[v15], 1), v18, v25[v15], 2);
    ++v15;
  }

  while (v15 != 3);
  v21 = v26;
  v22 = v28;
  v23 = v29;
  *(a1 + 200) = v27;
  *(a1 + 192) = v21;
  *(a1 + 216) = DWORD2(v22);
  *(a1 + 208) = v22;
  *(a1 + 232) = DWORD2(v23);
  *(a1 + 224) = v23;
  return a1;
}

uint64_t sub_261518788(void *a1, uint64_t a2, uint64_t *a3)
{
  (*(**(a2 + 288) + 16))(*(a2 + 288), a3);
  result = sub_2614838A0(a1, ((a3[1] - *a3) >> 2) >> 1);
  v8 = *a3;
  if ((a3[1] - *a3) >= 5)
  {
    v9 = 0;
    v10 = 0;
    v38 = 0;
    do
    {
      v11 = (v8 + 4 * v10);
      v12 = vld1q_dup_f32(v11++);
      *v7.i32 = *v11;
      v13 = *(a2 + 96);
      v14 = *(a2 + 112);
      v15 = *(a2 + 128);
      v35 = *(a2 + 144);
      v36 = v7;
      v16 = vzip2q_s32(v13, v15);
      v17 = vzip1q_s32(vzip1q_s32(v13, v15), v14);
      v18 = vtrn2q_s32(v13, v14);
      v18.i32[2] = HIDWORD(*(a2 + 128));
      v37 = v12;
      v19 = vaddq_f32(vzip1q_s32(v16, vdupq_laneq_s32(v14, 2)), vmlaq_n_f32(vmulq_f32(v12, v17), v18, *v11));
      v33 = *(a2 + 176);
      v34 = *(a2 + 160);
      if (sub_2615189A8(*(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48), &v38 + 1, COERCE_DOUBLE(vdiv_f32(*v19.i8, vdup_laneq_s32(v19, 2))), *(a2 + 176), *v34.i64, *v17.i64, *v16.i64, v12.f32[0], *v11) && (v21 = vtrn2q_s32(v35, v34), v21.i32[2] = v33.i32[1], v22 = vmlaq_f32(vmulq_f32(v37, vzip1q_s32(vzip1q_s32(v35, v33), v34)), vdupq_lane_s32(v36, 0), v21), v23 = vaddq_f32(vzip1q_s32(vzip2q_s32(v35, v33), vdupq_laneq_s32(v34, 2)), v22), v24 = vdup_laneq_s32(v23, 2), result = sub_2615189A8(*(a2 + 56), *(a2 + 64), *(a2 + 72), *(a2 + 80), &v38, COERCE_DOUBLE(vdiv_f32(*v23.i8, v24)), *&v24, *v22.i64, *v21.i64, *v37.i64, *v33.i32, v20), result))
      {
        v25 = *a1;
        v26 = v10 >> 7;
        v27 = 1 << v9;
        if (HIBYTE(v38) > v38)
        {
          goto LABEL_8;
        }
      }

      else
      {
        result = rand();
        v25 = *a1;
        v26 = v10 >> 7;
        v27 = 1 << v9;
        if ((result & 1) == 0)
        {
LABEL_8:
          v28 = v25[v26] & ~v27;
          goto LABEL_9;
        }
      }

      v28 = v25[v26] | v27;
LABEL_9:
      v25[v26] = v28;
      v29 = v10 + 3;
      v10 += 2;
      v8 = *a3;
      ++v9;
    }

    while (v29 < (a3[1] - *a3) >> 2);
  }

  if (*a2)
  {
    v30 = a1[1];
    if (v30)
    {
      v31 = ((v30 - 1) >> 6) + 1;
      v32 = *a1;
      do
      {
        *v32 = ~*v32;
        ++v32;
        --v31;
      }

      while (v31);
    }
  }

  return result;
}

void sub_261518990(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2615189A8(uint64_t a1, int a2, signed int a3, int a4, _BYTE *a5, double a6, double a7, double a8, double a9, double a10, float a11, float a12)
{
  v12 = 0;
  v13 = *(&a6 + 1);
  if ((*(&a6 + 1) & 0x80000000) == 0 && v13 < a3)
  {
    v14 = *&a6;
    if ((*&a6 & 0x80000000) == 0 && v14 < a2)
    {
      v15 = *(&a6 + 1) - (v13 + 0.5);
      v16 = v14 + 0.5;
      v17 = *&a6 - v16;
      if (v15 <= 0.0)
      {
        v28 = 0;
        v29 = v13 - 1;
        v18 = &v29;
        if (!v13)
        {
          v18 = &v28;
        }
      }

      else
      {
        v28 = a3 - 1;
        v29 = v13 + 1;
        v18 = &v28;
        if (a3 - 1 > v13)
        {
          v18 = &v29;
        }
      }

      v19 = *v18;
      if (v17 <= 0.0)
      {
        v28 = 0;
        v29 = v14 - 1;
        v20 = &v29;
        if (!v14)
        {
          v20 = &v28;
        }
      }

      else
      {
        v28 = a2 - 1;
        v29 = v14 + 1;
        v20 = &v28;
        if (v14 + 1 < a2)
        {
          v20 = &v29;
        }
      }

      v21 = *v20;
      v22 = fabsf(v15);
      LOBYTE(v16) = *(a1 + v21 + v19 * a4);
      v23 = fabsf(v17);
      LOBYTE(a11) = *(a1 + v14 + v19 * a4);
      *&v24 = (1.0 - v23) * LODWORD(a11);
      v25 = *&v24 + (v23 * LODWORD(v16));
      v26 = (v13 * a4);
      LOBYTE(v24) = *(a1 + v21 + v26);
      LOBYTE(a12) = *(a1 + v26 + v14);
      *a5 = (((1.0 - v22) * (((1.0 - v23) * LODWORD(a12)) + (v23 * v24))) + (v22 * v25));
      return 1;
    }
  }

  return v12;
}

BOOL sub_261518AF8(int32x4_t *a1, double a2)
{
  v2 = a1->u8[0];
  if ((LODWORD(a2) & 0x80000000) == 0 && SLODWORD(a2) < a1[2].i32[0] && (HIDWORD(a2) & 0x80000000) == 0 && SHIDWORD(a2) < a1[2].i32[2])
  {
    v3 = a1[3].i64[1];
    v4 = *(a1[1].i64[1] + a1[3].i64[0] * HIDWORD(a2) + LODWORD(a2));
    v15 = 0;
    v5 = a1[12];
    v6 = a1[13];
    v7 = a1[14];
    v8 = vzip2q_s32(v5, v7);
    v9 = vzip1q_s32(vzip1q_s32(v5, v7), v6);
    v10 = vtrn2q_s32(v5, v6);
    v10.i32[2] = HIDWORD(a1[14].i64[0]);
    v11 = vzip1q_s32(v8, vdupq_laneq_s32(v6, 2));
    v12 = vaddq_f32(v11, vmlaq_n_f32(vmulq_n_f32(v9, LODWORD(a2)), v10, HIDWORD(a2)));
    v13 = vdup_laneq_s32(v12, 2);
    if (sub_2615189A8(v3, a1[4].i32[0], a1[4].i32[2], a1[5].i32[0], &v15, COERCE_DOUBLE(vdiv_f32(*v12.i8, v13)), *&v13, *v10.i64, *v11.i64, *v7.i64, v9.f32[0], *v8.i32))
    {
      return v2 != v4 <= v15;
    }
  }

  return v2;
}

uint64_t sub_261518BD0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_261518C48(void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_261518CF0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_2614709BC();
  }

  return result;
}

uint64_t sub_261518D9C(uint64_t a1)
{
  sub_261518FB4(*(a1 + 104));
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

int32x4_t *sub_261518DE8(int32x4_t *result, int a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v4 = result;
    if (!result->i32[0])
    {
      if (a4 != 1)
      {
        tan(a2 * 3.14159265 / 180.0);
        sub_2614C1A00(v4[6].i64);
        sub_2614C1A70();
      }

      v5 = vrev64q_s32(result[3]);
      result[2] = vrev64q_s32(result[2]);
      result[3] = v5;
    }
  }

  return result;
}

void sub_261518FB4(void *a1)
{
  if (a1)
  {
    sub_261518FB4(*a1);
    sub_261518FB4(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      sub_26149E780(v2);
    }

    operator delete(a1);
  }
}

void sub_26151900C(void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_2615190B4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0x1E1E1E1E1E1E1E2)
    {
      operator new();
    }

    sub_2614709BC();
  }

  return result;
}

void sub_261519360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_261519E00(va);
  _Unwind_Resume(a1);
}

void sub_2615193C0(void *a1, uint64_t *a2, uint64_t a3, int a4)
{
  sub_261518CF0(v54, (a2[1] - *a2) >> 2);
  v8 = (*(*a3 + 16))(a3);
  v9 = (*(*a3 + 24))(a3);
  if (a4)
  {
    v10 = 8;
  }

  else
  {
    v10 = 5;
  }

  v11 = v9 >> v10;
  if (a4)
  {
    v12 = v9;
  }

  else
  {
    v12 = 15;
  }

  v35 = v12;
  v36 = v9;
  if (v11 <= 1)
  {
    v11 = 1;
  }

  v34 = v11;
  sub_261483200(&v52, v8);
  sub_261483200(&v50, v8);
  v13 = v36;
  if (v35 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = v14 + 1;
      if (v14)
      {
        v16 = -((v14 + 1) >> 1);
      }

      else
      {
        v16 = (v14 + 1) >> 1;
      }

      v17 = (v36 >> 1) + v16 * v34;
      if (v17 < 0 || v17 >= v13)
      {
        break;
      }

      v37 = v15;
      if ((*(*a3 + 32))(a3))
      {
        v18 = 0;
        do
        {
          v38 = v18;
          if (v18)
          {
            v19 = v53 - 1;
            if (v52 != v53 && v19 > v52)
            {
              v21 = v52 + 1;
              do
              {
                v22 = *(v21 - 1);
                *(v21 - 1) = *v19;
                *v19-- = v22;
                v23 = v21++ >= v19;
              }

              while (!v23);
            }

            v24 = v51 - 1;
            if (v50 != v51 && v24 > v50)
            {
              v26 = v50 + 1;
              do
              {
                v27 = *(v26 - 1);
                *(v26 - 1) = *v24;
                *v24-- = v27;
                v23 = v26++ >= v24;
              }

              while (!v23);
            }
          }

          v29 = *a2;
          v28 = a2[1];
          if (v28 != *a2)
          {
            v30 = 0;
            do
            {
              if (*(*a1 + 136 * v30))
              {
                (*(**(v29 + 8 * v30) + 16))(&v39);
                if (!v39)
                {
                  v31 = v18;
                  if (v18)
                  {
                    sub_2614C1A70();
                  }

                  v32 = *a1 + 136 * v30;
                  *v32 = v39;
                  std::wstring::operator=((v32 + 8), &v40);
                  v33 = v42;
                  *(v32 + 32) = v41;
                  *(v32 + 48) = v33;
                  if (v32 == &v39)
                  {
                    *(v32 + 88) = v45;
                  }

                  else
                  {
                    sub_261519838((v32 + 64), __p, v44, v44 - __p);
                    *(v32 + 88) = v45;
                    sub_261519968(v32 + 96, v46, &v47);
                  }

                  *(v32 + 120) = v48;
                  *(v32 + 124) = v49;
                  v18 = v31;
                }

                sub_261518FB4(v47);
                if (__p)
                {
                  v44 = __p;
                  operator delete(__p);
                }

                if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v40.__r_.__value_.__l.__data_);
                }

                v29 = *a2;
                v28 = a2[1];
              }

              ++v30;
            }

            while (v30 < (v28 - v29) >> 3);
          }

          v18 = 1;
        }

        while ((v38 & 1) == 0);
      }

      v14 = v37;
      v13 = v36;
    }

    while (v37 != v35);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  v39 = v54;
  sub_26151900C(&v39);
}

void sub_2615197B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v38 = *(v36 - 136);
  if (v38)
  {
    *(v36 - 128) = v38;
    operator delete(v38);
  }

  a20 = v36 - 112;
  sub_26151900C(&a20);
  _Unwind_Resume(a1);
}

void *sub_261519838(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v10 = 2 * v8;
      if (2 * v8 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_261483280(v7, v11);
    }

    sub_2614709BC();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (v12 - v9 >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void sub_261519968(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_35;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v12 = 0;
LABEL_34:
    sub_261518FB4(v12);
    goto LABEL_35;
  }

  v10 = sub_26151A2C4(v9);
  if (a2 == a3)
  {
    v11 = v9;
  }

  else
  {
    v13 = a2;
    do
    {
      v11 = v10;
      *(v9 + 32) = *(v13 + 8);
      v15 = v13[5];
      v14 = v13[6];
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v16 = *(v9 + 48);
      *(v9 + 40) = v15;
      *(v9 + 48) = v14;
      if (v16)
      {
        sub_26149E780(v16);
      }

      v17 = *v8;
      v18 = (a1 + 8);
      v19 = (a1 + 8);
      if (*v8)
      {
        do
        {
          while (1)
          {
            v18 = v17;
            if (*(v9 + 32) >= *(v17 + 8))
            {
              break;
            }

            v17 = *v17;
            v19 = v18;
            if (!*v18)
            {
              goto LABEL_20;
            }
          }

          v17 = v17[1];
        }

        while (v17);
        v19 = v18 + 1;
      }

LABEL_20:
      sub_2614805A0(a1, v18, v19, v9);
      if (v10)
      {
        v10 = sub_26151A2C4(v10);
      }

      else
      {
        v10 = 0;
      }

      v20 = v13[1];
      if (v20)
      {
        do
        {
          a2 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          a2 = v13[2];
          v21 = *a2 == v13;
          v13 = a2;
        }

        while (!v21);
      }

      if (!v11)
      {
        break;
      }

      v9 = v11;
      v13 = a2;
    }

    while (a2 != a3);
  }

  sub_261518FB4(v11);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    v12 = v10;
    goto LABEL_34;
  }

LABEL_35:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_261519BD0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = *a1;
  if (*a1 != v2)
  {
    while (!*v3)
    {
      v3 += 136;
      if (v3 == v2)
      {
        return;
      }
    }

    if (v3 != v2)
    {
      v4 = v3 + 136;
      if (v3 + 136 != v2)
      {
        do
        {
          if (!*v4)
          {
            *v3 = *v4;
            if (*(v3 + 31) < 0)
            {
              operator delete(*(v3 + 8));
            }

            v5 = *(v4 + 8);
            *(v3 + 24) = *(v4 + 24);
            *(v3 + 8) = v5;
            *(v4 + 31) = 0;
            *(v4 + 8) = 0;
            v6 = *(v4 + 48);
            v7 = *(v3 + 64);
            *(v3 + 32) = *(v4 + 32);
            *(v3 + 48) = v6;
            if (v7)
            {
              *(v3 + 72) = v7;
              operator delete(v7);
              *(v3 + 64) = 0;
              *(v3 + 72) = 0;
              *(v3 + 80) = 0;
            }

            *(v3 + 64) = *(v4 + 64);
            *(v3 + 80) = *(v4 + 80);
            *(v4 + 64) = 0;
            *(v4 + 72) = 0;
            *(v4 + 80) = 0;
            *(v3 + 88) = *(v4 + 88);
            sub_26151A258((v3 + 96), (v4 + 96));
            *(v3 + 120) = *(v4 + 120);
            *(v3 + 124) = *(v4 + 124);
            *(v3 + 128) = *(v4 + 128);
            v3 += 136;
          }

          v4 += 136;
        }

        while (v4 != v2);
        v2 = a1[1];
      }
    }
  }

  if (v3 != v2)
  {

    sub_26151A1E8(a1, v3);
  }
}

void sub_261519E00(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_26151A1E8(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_261519E54(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v44 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    return 0;
  }

  v10 = (*(*a4 + 24))(a4);
  if (v10 < 10)
  {
    return 0;
  }

  v12 = 0;
  v13 = v10 / 0xAu;
  if (v10 / 0xAu >= 0xA)
  {
    v13 = 10;
  }

  v43[0] = v13;
  v43[1] = -v13;
  v14 = a3 * 3.14159265 / 180.0;
  while (1)
  {
    v15 = v43[v12];
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    if ((*(*a4 + 48))(a4, v15, &v40, &v37, v14))
    {
      if (a5)
      {
        v16 = v41 - 1;
        if (v40 != v41 && v16 > v40)
        {
          v18 = v40 + 1;
          do
          {
            v19 = *(v18 - 1);
            *(v18 - 1) = *v16;
            *v16-- = v19;
          }

          while (v18++ < v16);
        }
      }

      v36 = 0;
      v21 = *a1;
      v22 = (*(*a4 + 24))(a4);
      (*(*v21 + 16))(&v30, v21, (v15 + v22 / 2), &v40, &v37, 0, &v36);
      if (v30)
      {
        goto LABEL_32;
      }

      if ((v32 & 0x80u) == 0)
      {
        v23 = v32;
      }

      else
      {
        v23 = v31[1];
      }

      v24 = *(a2 + 31);
      v25 = v24;
      if ((v24 & 0x80u) != 0)
      {
        v24 = *(a2 + 16);
      }

      if (v23 == v24 && (!v23 || (v25 >= 0 ? (v26 = (a2 + 8)) : (v26 = *(a2 + 8)), (v32 & 0x80u) == 0 ? (v27 = v31) : (v27 = v31[0]), !wmemcmp(v27, v26, v23))))
      {
        v28 = 1;
      }

      else
      {
LABEL_32:
        v28 = 0;
      }

      sub_261518FB4(v35);
      if (__p)
      {
        v34 = __p;
        operator delete(__p);
      }

      if (v32 < 0)
      {
        operator delete(v31[0]);
      }

      v29 = v36;
      v36 = 0;
      if (v29)
      {
        (*(*v29 + 8))(v29);
      }
    }

    else
    {
      v28 = 3;
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    if (v28 != 3 && v28)
    {
      return 1;
    }

    if (++v12 == 2)
    {
      return 0;
    }
  }
}

void sub_26151A184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  v31 = *(v29 - 144);
  if (v31)
  {
    *(v29 - 136) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void sub_26151A1E8(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 136)
  {
    sub_261518FB4(*(i - 32));
    v5 = *(i - 72);
    if (v5)
    {
      *(i - 64) = v5;
      operator delete(v5);
    }

    if (*(i - 105) < 0)
    {
      operator delete(*(i - 128));
    }
  }

  *(a1 + 8) = a2;
}

void sub_26151A258(void *a1, void *a2)
{
  v4 = a1 + 1;
  sub_261518FB4(a1[1]);
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  a1[2] = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void *sub_26151A2C4(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

void sub_26151A318(void *a1)
{
  *a1 = &unk_2873D13D8;
  v2 = a1[5];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_2614705CC(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    sub_2614705CC(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    sub_2614705CC(v5);
  }

  JUMPOUT(0x2667045D0);
}

void *sub_26151A3A8(void *a1)
{
  *a1 = &unk_2873D13D8;
  v2 = a1[5];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_2614705CC(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    sub_2614705CC(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    sub_2614705CC(v5);
  }

  return a1;
}

uint64_t sub_26151A418(uint64_t a1, int a2, int a3, char *__s)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_261481038();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  v8 = (a1 + 8);
  *(a1 + 31) = v6;
  if (v6)
  {
    memmove(v8, __s, v6);
  }

  *(v8 + v7) = 0;
  return a1;
}

uint64_t sub_26151A4D4(unsigned int a1)
{
  if (a1 >= 4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_261524120(exception, "Illegal error correction level bits");
    __cxa_throw(exception, &unk_2873D2BF8, sub_26152411C);
  }

  if (atomic_load_explicit(qword_280CB3298, memory_order_acquire) != -1)
  {
    v4 = &v5;
    v5 = sub_26151A5A4;
    std::__call_once(qword_280CB3298, &v4, sub_2614AD020);
  }

  return qword_280CB3570[a1];
}

atomic_uint *sub_26151A754(uint64_t a1, unsigned int a2, unsigned int a3)
{
  sub_26151A7F8(&v8, a2, a3);
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 2, 1u, memory_order_relaxed);
    *a1 = v6;
    *(a1 + 8) = v9;

    return sub_2614705CC(v6);
  }

  else
  {

    return sub_26151A7F8(a1, a2 ^ 0x5412, a3 ^ 0x5412);
  }
}

uint64_t sub_26151A7F8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = 0x7FFFFFFF;
  v7 = 32;
  v8 = &dword_261573720;
  do
  {
    v9 = *v8;
    if (*v8 == a2 || v9 == a3)
    {
      operator new();
    }

    result = sub_26151A6E8(a2, *v8);
    if (result < v6)
    {
      v6 = result;
    }

    if (a2 != a3)
    {
      result = sub_26151A6E8(a3, v9);
      if (result < v6)
      {
        v6 = result;
      }
    }

    v8 += 2;
    --v7;
  }

  while (v7);
  if (v6 <= 3)
  {
    operator new();
  }

  *a1 = 0;
  *(a1 + 8) = v6;
  return result;
}

atomic_ullong *sub_26151A9E4(atomic_ullong *a1, uint64_t a2, atomic_ullong *a3, void *a4, void *a5)
{
  v70 = *MEMORY[0x277D85DE8];
  if (atomic_load_explicit(a3, memory_order_acquire))
  {
    Value = CFDictionaryGetValue(atomic_load_explicit(a3, memory_order_acquire), @"MRCDescriptorPayloadDecodingOptionDefaultEncoding");
    if (Value)
    {
      v10 = Value;
      v11 = CFGetTypeID(Value);
      if (v11 != CFStringGetTypeID())
      {
        _os_assumes_log();
      }

      Value = CFRetain(v10);
    }
  }

  else
  {
    Value = 0;
  }

  v54 = Value;
  v55 = 0;
  v12 = sub_26151BF18(a3, @"MRCDescriptorPayloadDecodingOptionShouldForceInProcessDecoding");
  if (v12 >= 0x100u)
  {
    LOBYTE(v55) = v12;
  }

  v13 = sub_26151BF18(a3, @"_MRCDescriptorPayloadDecodingOptionShouldDecodeSupplementalPayload");
  if (v13 >= 0x100u)
  {
    HIBYTE(v55) = v13;
  }

  if (!atomic_load_explicit(a3, memory_order_acquire) || !CFDictionaryContainsKey(atomic_load_explicit(a3, memory_order_acquire), @"_MRCDescriptorPayloadDecodingOptionShouldDecodeSupplementalPayload"))
  {
    HIBYTE(v55) = a4 != 0;
  }

  v53 = 0;
  LOBYTE(v51[0]) = 0;
  v52 = 0;
  if (qword_27FEB41D0 != -1)
  {
    dispatch_once(&qword_27FEB41D0, &unk_2873D0780);
  }

  v49 = os_signpost_id_make_with_pointer(qword_27FEB41C8, a2);
  v50 = 1;
  v62[0] = &unk_2873D0CA0;
  v63 = v62;
  v61[0] = &unk_2873D0C48;
  v61[3] = v61;
  v64 = &v49;
  sub_261489C64(v65, v61);
  if (*(v64 + 8) == 1 && v63)
  {
    sub_261489CFC(v63, *v64);
  }

  sub_261489D4C(v61);
  sub_261489D4C(v62);
  sub_2615449EC();
  if (!atomic_load_explicit(a2, memory_order_acquire) || (v14 = (a2 + 8), !atomic_load_explicit((a2 + 8), memory_order_acquire)))
  {
    *&buf = -3001;
    v57.__locale_ = @"Missing symbology and/or raw payload data.";
    sub_261476754(v51, &buf, &v57.__locale_);
LABEL_47:
    *a1 = 0;
    goto LABEL_48;
  }

  if (v50 == 1)
  {
    if (qword_27FEB41D0 != -1)
    {
      dispatch_once(&qword_27FEB41D0, &unk_2873D0780);
    }

    v15 = v49;
    if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = qword_27FEB41C8;
      if (os_signpost_enabled(qword_27FEB41C8))
      {
        explicit = atomic_load_explicit(a2, memory_order_acquire);
        LODWORD(buf) = 138543362;
        *(&buf + 4) = explicit;
        _os_signpost_emit_with_name_impl(&dword_26146F000, v16, OS_SIGNPOST_EVENT, v15, "PayloadDecoding", "symbology=%{public, signpost.description:attribute}@", &buf, 0xCu);
      }
    }
  }

  BytePtr = CFDataGetBytePtr(atomic_load_explicit(v14, memory_order_acquire));
  Length = CFDataGetLength(atomic_load_explicit(v14, memory_order_acquire));
  v20 = atomic_load_explicit(&v54, memory_order_acquire);
  if (v20)
  {
    CStringPtr = CFStringGetCStringPtr(v20, 0x8000100u);
    if (CStringPtr)
    {
      v22 = 0;
      v23 = 0;
      if (!BytePtr)
      {
LABEL_46:
        *&buf = -3001;
        v57.__locale_ = @"Empty or bogus raw payload data.";
        sub_261476754(v51, &buf, &v57.__locale_);
        goto LABEL_47;
      }
    }

    else
    {
      v24 = CFStringGetLength(v20);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v24, 0x8000100u);
      v23 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
      CString = CFStringGetCString(v20, v23, MaximumSizeForEncoding + 1, 0x8000100u);
      v22 = CString != 1;
      if (CString == 1)
      {
        CStringPtr = v23;
      }

      else
      {
        CStringPtr = 0;
      }

      if (!BytePtr)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    v22 = 0;
    v23 = 0;
    CStringPtr = 0;
    if (!BytePtr)
    {
      goto LABEL_46;
    }
  }

  if (!Length || v22)
  {
    goto LABEL_46;
  }

  v27 = CStringPtr;
  *a1 = 0;
  v60 = 0;
  if (sub_26154543C(atomic_load_explicit(a2, memory_order_acquire), &v60))
  {
    LOBYTE(buf) = 0;
    BYTE8(buf) = 0;
    if (*(a2 + 192) == 1)
    {
      *&buf = *(a2 + 160);
      BYTE8(buf) = 1;
    }

    sub_26151B9E0(&v57, v60, &buf, (a2 + 8), v27);
    v28 = atomic_exchange(a1, atomic_exchange(&v57, 0));
    if (v28)
    {
      CFRelease(v28);
    }

    sub_26148E848(&v57);
    goto LABEL_75;
  }

  if (sub_261497334(a2) == 0x100000002)
  {
    v30 = atomic_exchange(a1, CFStringCreateFromExternalRepresentation(*MEMORY[0x277CBECE8], atomic_load_explicit(v14, memory_order_acquire), 0x8000100u));
    if (v30)
    {
      CFRelease(v30);
    }

    goto LABEL_75;
  }

  if (!atomic_load_explicit(a2, memory_order_acquire) || CFStringCompare(atomic_load_explicit(a2, memory_order_acquire), @"AppClipCode", 0))
  {
    *(&buf + 1) = 0;
    v68 = 0;
    *&buf = &buf + 8;
    LODWORD(numBytes) = 0;
    v57.__locale_ = &unk_2873D12B8;
    v59 = 0;
    operator new();
  }

  if (atomic_load_explicit(v14, memory_order_acquire))
  {
    v31 = CFDataGetBytePtr(atomic_load_explicit(v14, memory_order_acquire));
    v32 = CFDataGetLength(atomic_load_explicit(v14, memory_order_acquire));
    sub_2614E946C(&buf);
    if (v32 >= 1)
    {
      do
      {
        v33 = v68;
        v34 = v68;
        *&v69[*(v68 - 24) + 16] = 2;
        v35 = &v69[*(v34 - 24) - 8];
        if (v35[1].__fmtflags_ == -1)
        {
          std::ios_base::getloc(v35);
          v36 = std::locale::use_facet(&v57, MEMORY[0x277D82680]);
          (v36->__vftable[2].~facet_0)(v36, 32);
          std::locale::~locale(&v57);
          v33 = v68;
        }

        v35[1].__fmtflags_ = 48;
        *&v69[*(v33 - 24)] = *&v69[*(v33 - 24)] & 0xFFFFFFB5 | 8;
        MEMORY[0x266704420](&v68, *v31++);
        --v32;
      }

      while (v32);
    }

    sub_2614C1FCC(&v57, v69);
    v37 = SHIBYTE(v59);
    if ((SHIBYTE(v59) & 0x8000000000000000) != 0)
    {
      v37 = numBytes;
      if (!numBytes)
      {
LABEL_116:
        operator delete(v57.__locale_);
        goto LABEL_117;
      }

      locale = v57.__locale_;
    }

    else
    {
      if (!HIBYTE(v59))
      {
LABEL_117:
        sub_2614E97B8(&buf);
        goto LABEL_75;
      }

      locale = &v57;
    }

    v56[0] = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], locale, v37, 0x8000100u, 0);
    v47 = atomic_exchange(a1, atomic_exchange(v56, 0));
    if (v47)
    {
      CFRelease(v47);
    }

    sub_26148E848(v56);
    if ((SHIBYTE(v59) & 0x80000000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_116;
  }

LABEL_75:
  if (HIBYTE(v55) == 1 && *(a2 + 192) == 1)
  {
    if (*(a2 + 176))
    {
LABEL_80:
      v39 = *(a2 + 168) - 3;
      if (v39 >= 3)
      {
        if (qword_27FEB41D0 != -1)
        {
          dispatch_once(&qword_27FEB41D0, &unk_2873D0780);
        }

        v43 = qword_27FEB41C8;
        if (os_log_type_enabled(qword_27FEB41C8, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&dword_26146F000, v43, OS_LOG_TYPE_ERROR, "Invalid supplemental composite flag.", &buf, 2u);
        }

        *&buf = -3001;
        v57.__locale_ = @"Invalid supplemental composite flag.";
        sub_261476754(v51, &buf, &v57.__locale_);
      }

      else
      {
        v40 = dword_261573B14[v39];
        v41 = (a2 + 184);
        if (atomic_load_explicit((a2 + 184), memory_order_acquire))
        {
          if (CFDataGetLength(atomic_load_explicit(v41, memory_order_acquire)))
          {
            *&buf = *(a2 + 168);
            BYTE8(buf) = 1;
            sub_26151B9E0(&v57, v40, &buf, v41, v27);
            v42 = atomic_exchange(&v53, atomic_exchange(&v57, 0));
            if (v42)
            {
              CFRelease(v42);
            }

            sub_26148E848(&v57);
          }

          else
          {
            if (qword_27FEB41D0 != -1)
            {
              dispatch_once(&qword_27FEB41D0, &unk_2873D0780);
            }

            v46 = qword_27FEB41C8;
            if (os_log_type_enabled(qword_27FEB41C8, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_error_impl(&dword_26146F000, v46, OS_LOG_TYPE_ERROR, "Empty supplemental raw payload data.", &buf, 2u);
            }

            *&buf = -3001;
            v57.__locale_ = @"Empty supplemental raw payload data.";
            sub_261476754(v51, &buf, &v57.__locale_);
          }
        }

        else
        {
          if (qword_27FEB41D0 != -1)
          {
            dispatch_once(&qword_27FEB41D0, &unk_2873D0780);
          }

          v45 = qword_27FEB41C8;
          if (os_log_type_enabled(qword_27FEB41C8, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&dword_26146F000, v45, OS_LOG_TYPE_ERROR, "Missing supplemental raw payload data.", &buf, 2u);
          }

          *&buf = -3001;
          v57.__locale_ = @"Missing supplemental raw payload data.";
          sub_261476754(v51, &buf, &v57.__locale_);
        }
      }

      goto LABEL_106;
    }

    if (atomic_load_explicit((a2 + 184), memory_order_acquire))
    {
      if ((*(a2 + 176) & 1) == 0)
      {
        if (qword_27FEB41D0 != -1)
        {
          dispatch_once(&qword_27FEB41D0, &unk_2873D0780);
        }

        v44 = qword_27FEB41C8;
        if (os_log_type_enabled(qword_27FEB41C8, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&dword_26146F000, v44, OS_LOG_TYPE_ERROR, "Missing supplemental composite flag.", &buf, 2u);
        }

        *&buf = -3001;
        v57.__locale_ = @"Missing supplemental composite flag.";
        sub_261476754(v51, &buf, &v57.__locale_);
        goto LABEL_106;
      }

      goto LABEL_80;
    }
  }

LABEL_106:
  if (v23)
  {
    free(v23);
  }

  if (!atomic_load_explicit(a1, memory_order_acquire) && (v52 & 1) == 0)
  {
    *&buf = -3001;
    v57.__locale_ = @"Unable to decode the raw payload data as string value.";
    sub_261476754(v51, &buf, &v57.__locale_);
  }

LABEL_48:
  if (*(v64 + 8) == 1 && v66)
  {
    sub_261489CFC(v66, *v64);
  }

  sub_261489D4C(v65);
  if (a4 && (v55 & 0x100) != 0)
  {
    *a4 = atomic_exchange(&v53, 0);
  }

  if (a5 && v52)
  {
    sub_261501518(&buf, v51);
    *a5 = atomic_exchange(&buf, 0);
    sub_261476C54(&buf);
    if ((v52 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (v52)
  {
LABEL_59:
    sub_261501098(v51);
  }

LABEL_60:
  sub_26148E848(&v53);
  return sub_26148E848(&v54);
}

void sub_26151B7AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, atomic_ullong *a11, uint64_t a12, uint64_t a13, atomic_ullong a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, atomic_ullong a28, atomic_ullong a29, uint64_t a30, void *a31, uint64_t a32, atomic_uint *a33, char a34, void *__p, uint64_t a36, atomic_uint *a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, void *a53)
{
  a31 = &unk_2873D12B8;
  if (a33)
  {
    sub_2614705CC(a33);
  }

  a33 = 0;
  __p = a10;
  if (a37)
  {
    sub_2614705CC(a37);
  }

  sub_2614802C0(a53);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x26151B3C8);
  }

  sub_26148E848(a11);
  sub_2614D6380(&a47);
  if (a26 == 1)
  {
    sub_261501098(&a14);
  }

  sub_26148E848(&a28);
  sub_26148E848(&a29);
  _Unwind_Resume(a1);
}

void sub_26151B9E0(atomic_ullong *a1, int a2, uint64_t a3, atomic_ullong *a4, uint64_t a5)
{
  BytePtr = CFDataGetBytePtr(atomic_load_explicit(a4, memory_order_acquire));
  Length = CFDataGetLength(atomic_load_explicit(a4, memory_order_acquire));
  *a1 = 0;
  v29 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v22 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v12 = malloc_type_malloc(0x58uLL, 0x1080040FF0494E1uLL);
  v25 = v12;
  v23 = 0u;
  v24 = 0u;
  *(v12 + 8) = 0;
  *(v12 + 18) = 0;
  *(v12 + 10) = 0;
  *(v12 + 44) = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *v12 = 0u;
  if (*(a3 + 8) == 1 && (*a3 - 3) <= 2)
  {
    HIDWORD(v19) = *a3 - 2;
  }

  LODWORD(v19) = a2;
  v20 = Length;
  v21 = BytePtr;
  v13 = (4 * Length) | 1;
  v14 = malloc_type_malloc(v13, 0x100004077774924uLL);
  v15 = v14;
  numBytes = 0x7FFFFFFFLL;
  if (a2 < 0 || dword_280CB3638 <= a2)
  {
    *v14 = 0;
    goto LABEL_12;
  }

  (*&dword_280CB3640[16 * a2 + 8])(&v19, v14, v13, &numBytes, a5);
  if (!v15)
  {
    goto LABEL_17;
  }

  if (numBytes)
  {
    if (numBytes != 0x7FFFFFFF)
    {
      v17 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v15, numBytes, 0x8000100u, 0, *MEMORY[0x277CBECF0]);
      v16 = atomic_exchange(a1, atomic_exchange(&v17, 0));
      if (v16)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }

LABEL_12:
    v17 = CFStringCreateWithCStringNoCopy(*MEMORY[0x277CBECE8], v15, 0x8000100u, *MEMORY[0x277CBECF0]);
    v16 = atomic_exchange(a1, atomic_exchange(&v17, 0));
    if (v16)
    {
LABEL_13:
      CFRelease(v16);
    }

LABEL_14:
    sub_26148E848(&v17);
  }

  if (!atomic_load_explicit(a1, memory_order_acquire))
  {
    free(v15);
  }

LABEL_17:
  v20 = 0;
  v21 = 0;
  sub_261544BD8(&v19);
}

void sub_26151BC00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26148E848(va);
  sub_26148E848(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_26151BC3C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc10Descriptor13decodePayloadERKNS0_22PayloadDecodingOptionsERNS_5CFRefIPK10__CFStringEERNSt3__18optionalINS_5ErrorEEERKNSB_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26151BC78(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_27FEB41D0 != -1)
  {
    dispatch_once(&qword_27FEB41D0, &unk_2873D0780);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_27FEB41C8;
    if (os_signpost_enabled(qword_27FEB41C8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "Descriptor::decodePayload", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_26151BDB0(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc10Descriptor13decodePayloadERKNS0_22PayloadDecodingOptionsERNS_5CFRefIPK10__CFStringEERNSt3__18optionalINS_5ErrorEEERKNSB_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26151BDEC(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_27FEB41D0 != -1)
  {
    dispatch_once(&qword_27FEB41D0, &unk_2873D0780);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_27FEB41C8;
    if (os_signpost_enabled(qword_27FEB41C8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Descriptor::decodePayload", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_26151BF18(atomic_ullong *a1, const void *a2)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if (explicit)
  {
    Value = CFDictionaryGetValue(atomic_load_explicit(a1, memory_order_acquire), a2);
    if (Value)
    {
      v4 = Value;
      v5 = CFGetTypeID(Value);
      if (v5 != CFBooleanGetTypeID())
      {
        _os_assumes_log();
      }

      LODWORD(explicit) = CFBooleanGetValue(v4) != 0;
      v6 = 1;
    }

    else
    {
      LODWORD(explicit) = 0;
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return explicit | (v6 << 8);
}

uint64_t sub_26151BFB4()
{
  result = MGIsQuestionValid();
  if (result)
  {
    result = MGGetBoolAnswer();
  }

  byte_280CB3EA0 = result;
  return result;
}

void sub_26151BFEC()
{
  if (qword_280CB3E98 != -1)
  {
    dispatch_once_f(&qword_280CB3E98, 0, sub_26151BFB4);
  }

  if (byte_280CB3EA0 == 1)
  {
    byte_280CB3490 = 1;
  }
}

uint64_t sub_26151C060(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference25YpCbCrToRGBImageConverter7prepareERKNSt3__18optionalImEES6_RNS3_INS_5ErrorEEERKNS3_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26151C09C(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3ED8;
    if (os_signpost_enabled(qword_280CB3ED8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "YpCbCrToRGBImageConverter::prepare", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_26151C1D4(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference25YpCbCrToRGBImageConverter7prepareERKNSt3__18optionalImEES6_RNS3_INS_5ErrorEEERKNS3_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26151C210(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3ED8;
    if (os_signpost_enabled(qword_280CB3ED8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "YpCbCrToRGBImageConverter::prepare", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_26151C348(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc9inference25YpCbCrToRGBImageConverter7convertEjRK13vImage_BufferS4_jS4_RNSt3__18optionalINS_5ErrorEEERKNS6_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26151C384(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3ED8;
    if (os_signpost_enabled(qword_280CB3ED8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "YpCbCrToRGBImageConverter::convert", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_26151C4BC(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc9inference25YpCbCrToRGBImageConverter7convertEjRK13vImage_BufferS4_jS4_RNSt3__18optionalINS_5ErrorEEERKNS6_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26151C4F8(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3ED8;
    if (os_signpost_enabled(qword_280CB3ED8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "YpCbCrToRGBImageConverter::convert", &unk_26159692B, v4, 2u);
    }
  }
}

void sub_26151C624(void *a1)
{
  sub_26151C65C(a1);

  JUMPOUT(0x2667045D0);
}

void *sub_26151C65C(void *a1)
{
  *a1 = &unk_2873D1378;
  v2 = a1[2];
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x2667045D0](v2, 0x10C402FEFCB83);
  }

  v4 = a1[3];
  v5 = a1[4];
  if (v5 != v4)
  {
    v6 = 0;
    do
    {
      v7 = v4[v6];
      if (v7)
      {
        v8 = *(v7 + 8);
        v9 = *(v7 + 16);
        if (v9 != v8)
        {
          v10 = 0;
          do
          {
            if (v8[v10])
            {
              MEMORY[0x2667045D0](v8[v10], 0x1000C4000313F17);
              v8 = *(v7 + 8);
              v9 = *(v7 + 16);
            }

            ++v10;
          }

          while (v10 < (v9 - v8) >> 3);
        }

        if (v8)
        {
          *(v7 + 16) = v8;
          operator delete(v8);
        }

        MEMORY[0x2667045D0](v7, 0x1080C406BDE4C18);
        v4 = a1[3];
        v5 = a1[4];
      }

      ++v6;
    }

    while (v6 < (v5 - v4) >> 3);
  }

  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_26151C788(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_26151C7E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_26151C8EC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26151C908(int a1)
{
  if (atomic_load_explicit(&qword_280CB3280, memory_order_acquire) != -1)
  {
    v4 = &v5;
    v5 = sub_26151C9F0;
    std::__call_once(&qword_280CB3280, &v4, sub_2614E4110);
  }

  if (a1 < 1 || a1 > ((*(qword_280CB3558 + 8) - *qword_280CB3558) >> 3))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_261524120(exception, "versionNumber must be between 1 and 40");
    __cxa_throw(exception, &unk_2873D2BF8, sub_26152411C);
  }

  return *(*qword_280CB3558 + 8 * a1 - 8);
}

void sub_261522B40(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 12) = a2;
  *a1 = &unk_2873D1378;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  operator new();
}

void sub_261522C24(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_261522C40(unsigned int a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0x7FFFFFFF;
  do
  {
    v5 = dword_261573FF8[v2];
    if (v5 == a1)
    {
      v3 = v2 + 7;
      goto LABEL_9;
    }

    v6 = sub_26151A6E8(a1, v5);
    if (v6 < v4)
    {
      v3 = v2 + 7;
      v4 = v6;
    }

    ++v2;
  }

  while (v2 != 34);
  if (v4 > 3)
  {
    return 0;
  }

LABEL_9:

  return sub_26151C908(v3);
}

atomic_uint *sub_261522CEC(uint64_t a1, atomic_uint **a2)
{
  v3 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v3 + 2, 1u, memory_order_relaxed);
  }

  v11 = v3;
  v4 = sub_2614EB10C();
  v5 = *v4;
  v9 = *(v4 + 16);
  v8 = v5;
  v6 = *(v4 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 2, 1u, memory_order_relaxed);
  }

  v10 = v6;
  (*(*a1 + 24))(a1, &v11, &v8);
  if (v10)
  {
    sub_2614705CC(v10);
  }

  result = v11;
  if (v11)
  {
    return sub_2614705CC(v11);
  }

  return result;
}

void sub_261522DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12)
{
  if (a12)
  {
    sub_2614705CC(a12);
  }

  v14 = *(v12 - 24);
  if (v14)
  {
    sub_2614705CC(v14);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *sub_261522EAC(void *a1, uint64_t a2)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
    atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
  }

  v24 = a2;
  v26 = 0u;
  v25 = 0u;
  LODWORD(v26) = 3;
  v27 = 0;
  v4 = *(a2 + 16);
  if ((v4 - 18) < 0xFFFFFFFFFFFFFFF9 || (*(a2 + 16) & 1) == 0)
  {
    if (qword_27FEB4210 != -1)
    {
      dispatch_once(&qword_27FEB4210, &unk_2873CF668);
    }

    v6 = qword_27FEB4208;
    if (os_log_type_enabled(qword_27FEB4208, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v28) = 134217984;
      *(&v28 + 4) = v4;
      _os_log_debug_impl(&dword_26146F000, v6, OS_LOG_TYPE_DEBUG, "Invalid BitMatrixParser intialization: dimension = %zu", &v28, 0xCu);
    }
  }

  sub_2614705CC(a2);
  sub_2615247D4(&v23, &v24);
  if (DWORD2(v23) != 3)
  {
    v7 = v25;
    if (!v25)
    {
      sub_2615247D4(&v28, &v24);
      if (DWORD2(v28) == 3)
      {
        goto LABEL_13;
      }

      v7 = v28;
      *&v25 = v28;
      v16 = v24[4];
      if ((*v28 - 5) < 0xFFFFFFFC)
      {
        v17 = -1;
      }

      else
      {
        v17 = 2 * *v28 + 9;
      }

      if (v17 != v16)
      {
        if (v17 >= v16)
        {
          goto LABEL_13;
        }

        if (qword_27FEB4210 != -1)
        {
          dispatch_once(&qword_27FEB4210, &unk_2873CF668);
        }

        v18 = qword_27FEB4208;
        if (os_log_type_enabled(qword_27FEB4208, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109376;
          *&buf[4] = v17;
          v30 = 1024;
          v31 = v16;
          _os_log_debug_impl(&dword_26146F000, v18, OS_LOG_TYPE_DEBUG, "Using read dimension %d instead of geometry dimension %d", buf, 0xEu);
        }
      }
    }

    if (v26 == 3)
    {
      v21 = 0;
      v20[3] = &unk_2873D12B8;
      v22 = 0;
      sub_261482FFC(v20);
    }

    v8 = BYTE8(v26);
    if (BYTE8(v26) >= 4u)
    {
      if (qword_27FEB4210 != -1)
      {
        dispatch_once(&qword_27FEB4210, &unk_2873CF668);
      }

      v9 = qword_27FEB4208;
      if (os_log_type_enabled(qword_27FEB4208, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v28) = 67109120;
        DWORD1(v28) = v8;
        _os_log_debug_impl(&dword_26146F000, v9, OS_LOG_TYPE_DEBUG, "Invalid DataMask intialization: reference = %d", &v28, 8u);
      }
    }

    v10 = v24;
    if (*(v24 + 2) >= 1)
    {
      v11 = 0;
      v12 = off_2873D31E8[v8];
      v13 = *(v24 + 2) & 0x7FFFFFFFLL;
      do
      {
        v14 = 0;
        do
        {
          if ((v12)(v11, v14))
          {
            *(*(v10 + 6) + (((v14 + v11 * *(v10 + 3)) >> 3) & 0x1FFFFFFFFFFFFFFCLL)) ^= 1 << (v14 + v11 * *(v10 + 3));
          }

          ++v14;
        }

        while (v13 != v14);
        ++v11;
      }

      while (v11 != v13);
    }

    if ((*v7 - 5) < 0xFFFFFFFC)
    {
      v15 = -1;
    }

    else
    {
      v15 = 2 * *v7 + 9;
    }

    sub_26149A360(&v28, v15);
  }

LABEL_13:
  *a1 = 0;
  result = v24;
  if (v24)
  {
    return sub_2614705CC(v24);
  }

  return result;
}

void sub_2615238C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, atomic_uint *a36)
{
  *(v36 - 192) = &unk_2873D1228;
  v38 = *(v36 - 144);
  if (v38)
  {
    MEMORY[0x2667045B0](v38, 0x1000C8052888210);
  }

  if (a36)
  {
    sub_2614705CC(a36);
  }

  _Unwind_Resume(exception_object);
}

void sub_261523AF0(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v16[0] = 0;
  v16[1] = 0;
  v15 = v16;
  if (a4)
  {
    *&v17 = &unk_2615740A8;
    v8 = sub_26150DEE0(&v15);
    sub_26150BC4C((v8 + 5), a4);
  }

  sub_2614830DC(&v13, a2);
  *&v17 = &unk_26157A1B0;
  v9 = sub_261480070(a3, 12);
  v10 = sub_26150F760(*(v9 + 8));
  *&v17 = &unk_26157A1B4;
  v11 = sub_261480070(a3, 13)[4] & 3;
  if (v10)
  {
    v12 = v11 == 2;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    operator new();
  }

  *a1 = 0;
  v13 = &unk_2873D12B8;
  if (v14)
  {
    sub_2614705CC(v14);
  }

  v14 = 0;
  sub_26150DFD8(v16[0]);
}

void sub_261523FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, atomic_uint *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, atomic_uint *a30)
{
  MEMORY[0x2667045D0](v32, 0x1093C40E92185C3);
  if (a25)
  {
    sub_2614705CC(a25);
  }

  MEMORY[0x2667045D0](v31, 0x10B3C40E71DBE67);
  if (a30)
  {
    sub_2614705CC(a30);
  }

  if (*(v33 - 81) < 0)
  {
    operator delete(*(v33 - 104));
  }

  sub_2614705CC(v30);
  if (v35)
  {
    sub_2614705CC(v35);
  }

  sub_26150DFD8(v36);
  _Unwind_Resume(a1);
}

void sub_2615240E4(std::exception *a1)
{
  sub_2614EB578(a1);

  JUMPOUT(0x2667045D0);
}

void *sub_261524120(uint64_t a1, char *a2)
{
  result = sub_2614EB5DC(a1, a2);
  *result = &unk_2873D19D8;
  return result;
}

uint64_t sub_261524154(uint64_t a1, int a2, int a3, float *a4, float *a5, float *a6)
{
  result = 0;
  if (a1)
  {
    if ((a2 & 0x80000000) == 0)
    {
      result = 0;
      if (a3 >= a2 && a4 && a5 && a6)
      {
        v14 = (a3 - a2) / 2;
        v15 = a3 - a2;
        v9 = v14 + a2;
        if (a3 - a2 >= 2)
        {
          sub_261472B30(1uLL);
        }

        v10 = 0.0;
        v11 = 0.0;
        if (v9 < a3)
        {
          v12 = v9;
          do
          {
            v13 = *(a1 + 4 * v12);
            if (MEMORY[0] > v13)
            {
              MEMORY[0xFFFFFFFFFFFFFFFC] = *(a1 + 4 * v12);
              memcpy(0, 0, 0xFFFFFFFFFFFFFFFCLL);
              operator delete(0);
              sub_261524584(0, 0, 0);
            }

            v10 = v10 + v13;
            v11 = v11 + (v13 * v13);
            ++v12;
          }

          while (v12 != a3);
        }

        *a6 = 0.0 / v14;
        *a5 = (v10 - 0.0) / (v15 - v14);
        *a4 = (v11 / v15) - ((v10 / v15) * (v10 / v15));
        return 1;
      }
    }
  }

  return result;
}

void sub_261524560(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_261524584(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = (a3 - 2) >> 1;
    v4 = (result + 4 * v3);
    v6 = *(a2 - 4);
    v5 = (a2 - 4);
    v7 = v6;
    v8 = *v4;
    if (*v4 < v6)
    {
      do
      {
        *v5 = v8;
        v5 = v4;
        if (!v3)
        {
          break;
        }

        v3 = (v3 - 1) >> 1;
        v4 = (result + 4 * v3);
        v8 = *v4;
      }

      while (*v4 < v7);
      *v5 = v7;
    }
  }

  return result;
}

void sub_2615245D0(uint64_t a1)
{
  sub_261524608(a1);

  JUMPOUT(0x2667045D0);
}

uint64_t sub_261524608(uint64_t a1)
{
  *a1 = &unk_2873D15A8;
  sub_2614802C0(*(a1 + 88));
  v5 = (a1 + 48);
  sub_261470CC4(&v5);
  *(a1 + 24) = &unk_2873D12B8;
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_2614705CC(v2);
  }

  *(a1 + 40) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2614705CC(v3);
  }

  return a1;
}

uint64_t sub_2615246A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, int a5, void *a6)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2873D15A8;
  *(a1 + 16) = 0;
  v11 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
    v12 = *(a1 + 16);
    if (v12)
    {
      sub_2614705CC(v12);
    }
  }

  *(a1 + 16) = v11;
  sub_2614830DC(a1 + 24, a3);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_261470BE0(a1 + 48, *a4, a4[1], (a4[1] - *a4) >> 3);
  *(a1 + 72) = a5;
  sub_26148012C((a1 + 80), a6);
  return a1;
}

void sub_26152477C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_261470CC4(va);
  v2[3] = &unk_2873D12B8;
  v4 = v2[5];
  if (v4)
  {
    sub_2614705CC(v4);
  }

  v2[5] = 0;
  v5 = v2[2];
  if (v5)
  {
    sub_2614705CC(v5);
  }

  _Unwind_Resume(a1);
}

__int128 *sub_2615247D4(__int128 *result, uint64_t *a2)
{
  v3 = result;
  if (*(a2 + 6) != 3)
  {
    goto LABEL_17;
  }

  v4 = 0;
  for (i = 1; i != 9; ++i)
  {
    v6 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed);
      v4 = sub_261470964(v6, i, 8) | (2 * v4);
      sub_2614705CC(v6);
    }

    else
    {
      v4 = sub_261470964(0, i, 8) | (2 * v4);
    }
  }

  v7 = 7;
  do
  {
    v8 = *a2;
    v9 = 2 * v4;
    if (*a2)
    {
      atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
      v10 = sub_261470964(v8, 8, v7) & 1 | (2 * v4);
      sub_2614705CC(v8);
      v4 = v10;
    }

    else
    {
      v4 = sub_261470964(0, 8, v7) & 1 | (2 * v4);
    }
  }

  while (v7-- > 1);
  result = sub_2614E5A74(&v20, v4);
  v12 = v22;
  if (v22)
  {
    v13.i32[0] = v9 >> 8;
    v13.i32[1] = v4;
    v14 = vand_s8(v13, 0xFF000000FFLL);
    v15 = vand_s8(vshl_u32(vmul_s32(vorr_s8(vand_s8(vmul_s32(v14, 0x80200008020), 0x2211000088440), vand_s8(vmul_s32(v14, 0x802000000802), 0x8844000022110)), vdup_n_s32(0x10101u)), 0xFFFFFFF7FFFFFFEFLL), 0x7F800000007FLL);
    result = sub_2614E5A74(&v17, vorr_s8(v15, vdup_lane_s32(v15, 1)).i32[0]);
    if (v19 >= v12)
    {
      *(a2 + 1) = v20;
      *(a2 + 32) = v21;
    }

    else
    {
      *(a2 + 1) = v17;
      *(a2 + 32) = v18;
      *(a2 + 40) = 1;
    }

LABEL_17:
    v16 = *(a2 + 1);
    goto LABEL_18;
  }

  *(a2 + 32) = v21;
  v16 = v20;
  *(a2 + 1) = v20;
LABEL_18:
  *v3 = v16;
  *(v3 + 2) = a2[4];
  return result;
}

float sub_261524A00(void *a1, uint64_t a2)
{
  v4 = (*(**a1 + 16))(*a1);
  v5 = (*(**a1 + 24))();
  v6 = (*(**a2 + 16))();
  v7 = (*(**a2 + 24))();
  return sqrtf(((v5 - v7) * (v5 - v7)) + ((v4 - v6) * (v4 - v6)));
}

void sub_261524AF4(_BYTE *a1, atomic_ullong *a2, int *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
LABEL_7:
    *a1 = 0;
    a1[8] = 0;
    return;
  }

  v6 = objc_autoreleasePoolPush();
  atomic_load_explicit(a2, memory_order_acquire);
  *a3 = e5rt_compute_gpu_device_retain_from_mtl_device();
  objc_autoreleasePoolPop(v6);
  v7 = *a3;
  if (*a3)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v8 = qword_280CB3ED8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_261483F20();
      v10 = (*v9)(*a3);
      v11 = "";
      if (v10)
      {
        v11 = v10;
      }

      *buf = 67240450;
      *&buf[4] = v7;
      v13 = 2082;
      v14 = v11;
      _os_log_error_impl(&dword_26146F000, v8, OS_LOG_TYPE_ERROR, "e5rt_compute_gpu_device_retain_from_mtl_device failed: (%{public}d): %{public}s", buf, 0x12u);
    }

    goto LABEL_7;
  }

  *buf = 0;
  *a1 = 0;
  a1[8] = 1;
  sub_26148D970(buf);
}

void sub_261524C6C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_261470E34(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t MRCContextCopySupportedComputeDevicesForDecoderUsingOptions(CFTypeRef a1)
{
  if (a1)
  {
    a1 = CFRetain(a1);
  }

  v11[0] = a1;
  sub_2614E6BE8(v10, v11);
  sub_26148D93C(v11);
  LOBYTE(v11[0]) = 0;
  BYTE4(v11[0]) = 0;
  if ((sub_2614E9390(v10, @"AppClipCode", v11) & 1) == 0 && (!_os_feature_enabled_impl() || v10[7] < 196608) && (sub_2614EABCC(v10) & 1) == 0)
  {
    v8 = CFArrayCreate(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF128]);
    goto LABEL_11;
  }

  v1 = objc_autoreleasePoolPush();
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v2 = off_280CB3230;
  v16 = off_280CB3230;
  if (!off_280CB3230)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_261524E7C;
    v11[3] = &unk_279AD9260;
    v12 = &v13;
    v3 = sub_261524ECC();
    v4 = dlsym(v3, "MLAllComputeDevices");
    *(v12[1] + 24) = v4;
    off_280CB3230 = *(v12[1] + 24);
    v2 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (v2)
  {
    v5 = v2();
    v8 = objc_msgSend_copy(v5, v6, v7);

    objc_autoreleasePoolPop(v1);
LABEL_11:
    sub_2614E68C0(v10);
    return v8;
  }

  dlerror();
  result = abort_report_np();
  __break(1u);
  return result;
}

void sub_261524E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose((v3 - 64), 8);
  sub_2614E68C0(va);
  _Unwind_Resume(a1);
}

void *sub_261524E7C(uint64_t a1)
{
  v2 = sub_261524ECC();
  result = dlsym(v2, "MLAllComputeDevices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_280CB3230 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_261524ECC()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!qword_280CB3248)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = sub_261524FDC;
    v3[4] = &unk_279AD9298;
    v3[5] = v3;
    v4 = xmmword_279AD9280;
    v5 = 0;
    qword_280CB3248 = _sl_dlopen();
    v1 = v3[0];
    v0 = qword_280CB3248;
    if (qword_280CB3248)
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

  return qword_280CB3248;
}

uint64_t sub_261524FDC()
{
  result = _sl_dlopen();
  qword_280CB3248 = result;
  return result;
}

unint64_t sub_261525050(void *a1)
{
  v1 = a1 + 2;
  explicit = atomic_load_explicit(a1 + 2, memory_order_acquire);
  v3 = *a1;
  if (explicit)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = atomic_load_explicit(v1, memory_order_acquire);
    sub_261525118();
    if (objc_opt_isKindOfClass())
    {
      v7 = 50331652;
    }

    else
    {
      sub_2615251F8();
      if (objc_opt_isKindOfClass())
      {
        v7 = 0x1000000;
      }

      else
      {
        sub_2615252D8();
        objc_opt_isKindOfClass();
        v7 = 1;
      }
    }

    v3 = v3 & 0xFFFFFFFFFCFFFFF8 | v7;

    objc_autoreleasePoolPop(v5);
  }

  return v3;
}

id sub_261525118()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_280CB3240;
  v7 = qword_280CB3240;
  if (!qword_280CB3240)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_261525498;
    v3[3] = &unk_279AD9260;
    v3[4] = &v4;
    sub_261525498(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2615251E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_2615251F8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_280CB3238;
  v7 = qword_280CB3238;
  if (!qword_280CB3238)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_261525428;
    v3[3] = &unk_279AD9260;
    v3[4] = &v4;
    sub_261525428(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2615252C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_2615252D8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_280CB3220;
  v7 = qword_280CB3220;
  if (!qword_280CB3220)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = sub_2615253B8;
    v3[3] = &unk_279AD9260;
    v3[4] = &v4;
    sub_2615253B8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2615253A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_2615253B8(uint64_t a1)
{
  sub_261524ECC();
  result = objc_getClass("MLNeuralEngineComputeDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_280CB3220 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return sub_261525428(v3);
  }

  return result;
}

Class sub_261525428(uint64_t a1)
{
  sub_261524ECC();
  result = objc_getClass("MLGPUComputeDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_280CB3238 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return sub_261525498(v3);
  }

  return result;
}

Class sub_261525498(uint64_t a1)
{
  sub_261524ECC();
  result = objc_getClass("MLCPUComputeDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_280CB3240 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return sub_261525508(v3);
  }

  return result;
}

void sub_261525508(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  if (!atomic_load_explicit((a2 + 16), memory_order_acquire))
  {
LABEL_2:
    explicit = atomic_load_explicit((a2 + 8), memory_order_acquire);
    if (explicit)
    {
      explicit = CFRetain(explicit);
    }

    *a1 = explicit;
    return;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = atomic_load_explicit(v4, memory_order_acquire);
  sub_2615251F8();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    objc_autoreleasePoolPop(v6);
    goto LABEL_2;
  }

  *a1 = objc_msgSend_metalDevice(v7, v8, v9);

  objc_autoreleasePoolPop(v6);
}

void sub_2615255D4()
{
  v0 = objc_autoreleasePoolPush();
  v1 = MEMORY[0x277CCA8D8];
  v2 = objc_opt_class();
  v4 = objc_msgSend_bundleForClass_(v1, v3, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_bundleURL(v4, v5, v6);

    if (v8)
    {
      v11 = *MEMORY[0x277CBECE8];
      v12 = objc_msgSend_bundleURL(v7, v9, v10);
      v8 = CFBundleCreate(v11, v12);
    }
  }

  else
  {
    v8 = 0;
  }

  qword_280CB3F28 = v8;

  objc_autoreleasePoolPop(v0);
}

void sub_26152569C()
{
  if (os_variant_has_internal_content())
  {
    v2 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v0, v1);
    v5 = objc_msgSend_environment(v2, v3, v4);
    v7 = objc_msgSend_objectForKey_(v5, v6, @"_MRC_OVERRIDDEN_RESOURCE_BASE_PATH");
    v8 = qword_280CB3258;
    qword_280CB3258 = v7;

    v9 = sub_26152583C(qword_280CB3258);
    v10 = qword_280CB3258;
    qword_280CB3258 = v9;

    if (!v9)
    {
      v11 = CFPreferencesCopyAppValue(@"_MRCOverriddenResourceBasePath", *MEMORY[0x277CBF028]);
      if (v11)
      {
        v12 = v11;
        v13 = CFGetTypeID(v11);
        if (v13 == CFStringGetTypeID())
        {
          v14 = sub_26152583C(v12);
          v15 = qword_280CB3258;
          qword_280CB3258 = v14;

          if (v14)
          {
            return;
          }
        }

        else
        {
          CFRelease(v12);
        }
      }

      v16 = CFPreferencesCopyAppValue(@"_MRCOverriddenResourceBasePath", @"com.apple.Quagga");
      if (v16)
      {
        cf = v16;
        v17 = CFGetTypeID(v16);
        if (v17 == CFStringGetTypeID())
        {
          v18 = sub_26152583C(cf);
          v19 = qword_280CB3258;
          qword_280CB3258 = v18;
        }

        else
        {

          CFRelease(cf);
        }
      }
    }
  }
}

id sub_26152583C(void *a1)
{
  v1 = a1;
  v4 = v1;
  if (v1 && objc_msgSend_length(v1, v2, v3))
  {
    v15 = 0;
    v7 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v5, v6);
    isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v7, v8, v4, &v15);
    v10 = v15;

    v13 = 0;
    if (isDirectory && (v10 & 1) != 0)
    {
      v13 = objc_msgSend_copy(v4, v11, v12);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t MRCSampleWriteOpaqueRepresentationToFile(void *ptr, const __CFURL *a2, void *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  LOBYTE(v43[0]) = 0;
  v45 = 0;
  if (qword_27FEB41B0 != -1)
  {
    dispatch_once(&qword_27FEB41B0, &unk_2873D06A0);
  }

  os_signpost_id_make_with_pointer(qword_27FEB41A8, ptr);
  sub_2615263D8(__p, a2);
  if (!ptr)
  {
    error[0] = -2006;
    v54.value = @"Invalid sample.";
    sub_261476754(v43, error, &v54);
LABEL_17:
    v12 = 0;
    goto LABEL_77;
  }

  v6 = v42;
  if ((v42 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  if (!v6)
  {
    error[0] = -2006;
    v54.value = @"Invalid file URL.";
    sub_261476754(v43, error, &v54);
    goto LABEL_17;
  }

  v7 = CFGetTypeID(ptr);
  if (qword_280CB34F0 != -1)
  {
    dispatch_once_f(&qword_280CB34F0, 0, sub_2614E9EE4);
  }

  if (v7 != qword_280CB35E8)
  {
    _os_assumes_log();
  }

  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  sub_2615265C8(error, *(ptr + 2));
  if (v52 != 1)
  {
    goto LABEL_55;
  }

  v9 = sub_2614F7C48(@"pixelBuffer");
  if (!v9)
  {
    goto LABEL_55;
  }

  v10 = sub_261526A88(error);
  if (v10)
  {
    v11 = sub_2614F7E18(&Mutable, v9, v10);
    CFRelease(v9);
  }

  else
  {
    v11 = 0;
    v10 = v9;
  }

  CFRelease(v10);
  if ((v11 & 1) == 0)
  {
    goto LABEL_55;
  }

  valuePtr.value = CFRetain(@"MRCSampleAttributeRegionOfInterest");
  sub_2614F4AC8(&v54, ptr + 16, &valuePtr.value);
  explicit = atomic_load_explicit(&v54.value, memory_order_acquire);
  sub_26148D890(&v54.value);
  sub_26148E848(&valuePtr.value);
  if (explicit)
  {
    v38 = *(ptr + 3);
    v39 = *(ptr + 2);
    if (sub_2614F7C48(@"regionOfInterest"))
    {
      for (i = 0; i != 4; ++i)
      {
        v40[0] = v39;
        v40[1] = v38;
        *(&v54.value + i) = *(v40 + (i & 3));
      }

      operator new[]();
    }

    goto LABEL_55;
  }

  if (atomic_load_explicit(ptr + 8, memory_order_acquire))
  {
    memset(&valuePtr, 0, sizeof(valuePtr));
    v15 = *(ptr + 9);
    if (v15)
    {
      v16 = 0x84BDA12F684BDA13 * ((v15[1] - *v15) >> 3);
    }

    else
    {
      v16 = 0;
    }

    sub_261526FD0(&valuePtr.value, v16);
    v17 = 0;
    for (j = 8; ; j += 216)
    {
      v19 = *(ptr + 9);
      v20 = v19 ? 0x84BDA12F684BDA13 * ((v19[1] - *v19) >> 3) : 0;
      if (v17 >= v20)
      {
        break;
      }

      sub_2615265C8(&v54.value, (*v19 + j));
      if ((v58 & 1) == 0)
      {
        goto LABEL_87;
      }

      sub_261527084(&valuePtr.value, &v54.value);
      if (v58)
      {
        sub_2615271F0(&v56);
        sub_26148D93C(v55);
      }

      ++v17;
    }

    v21 = *&valuePtr.value;
    v22 = sub_2614F7C48(@"pyramid");
    if (v22)
    {
      if (*(&v21 + 1) != v21)
      {
        operator new[]();
      }

      v23 = CFArrayCreate(v8, 0, 0, MEMORY[0x277CBF128]);
      if (v23)
      {
        v24 = sub_2614F7E18(&Mutable, v22, v23);
        CFRelease(v22);
      }

      else
      {
        v24 = 0;
        v23 = v22;
      }

      CFRelease(v23);
      if (v24)
      {
        sub_261527258(&valuePtr);
        goto LABEL_46;
      }
    }

LABEL_87:
    v46 = 0;
    sub_261527258(&valuePtr);
  }

  else
  {
LABEL_46:
    sub_2614F51D8(&v54, ptr + 16);
    if (LOBYTE(v55[0]) == 1)
    {
      sub_2614F51D8(&v54, ptr + 16);
      valuePtr = v54;
      v47 = CMTimeCopyAsDictionary(&valuePtr, v8);
      if (!atomic_load_explicit(&v47, memory_order_acquire) || (v54.value = atomic_load_explicit(&v47, memory_order_acquire), (sub_2615272C8(&Mutable, @"presentationTimeStamp", &v54) & 1) == 0))
      {
        v46 = 0;
        sub_26148D93C(&v47);
        goto LABEL_56;
      }

      sub_26148D93C(&v47);
    }

    sub_2614F528C(&v54, ptr + 16);
    if (v57 == 1)
    {
      sub_2614F528C(&v54, ptr + 16);
      if ((sub_261527350(&Mutable, @"cameraIntrinsicMatrix", &v54) & 1) == 0)
      {
LABEL_55:
        v46 = 0;
        goto LABEL_56;
      }
    }

    if (Mutable)
    {
      Copy = CFDictionaryCreateCopy(v8, Mutable);
    }

    else
    {
      Copy = 0;
    }

    v46 = Copy;
  }

LABEL_56:
  if (v52 == 1)
  {
    sub_2615271F0(&v51);
    sub_26148D93C(v50);
  }

  sub_2614F7DE4(&Mutable);
  if (atomic_load_explicit(&v46, memory_order_acquire))
  {
    error[0] = 0;
    v54.value = CFPropertyListCreateData(v8, atomic_load_explicit(&v46, memory_order_acquire), kCFPropertyListBinaryFormat_v1_0, 0, error);
    if (atomic_load_explicit(&v54.value, memory_order_acquire))
    {
      if ((v42 & 0x80u) == 0)
      {
        v26 = __p;
      }

      else
      {
        v26 = __p[0];
      }

      v27 = fopen(v26, "wb");
      if (v27)
      {
        BytePtr = CFDataGetBytePtr(atomic_load_explicit(&v54.value, memory_order_acquire));
        Length = CFDataGetLength(atomic_load_explicit(&v54.value, memory_order_acquire));
        v30 = fwrite(BytePtr, Length, 1uLL, v27);
        v12 = v30 == 1;
        if (v30 != 1)
        {
          v31 = *__error();
          valuePtr.value = -2007;
          Mutable = @"Unable to write to file.";
          sub_261476754(v43, &valuePtr.value, &Mutable);
          sub_26152763C(&valuePtr.value, __p, v31);
          v32 = atomic_exchange(v44, atomic_exchange(&valuePtr.value, 0));
          if (v32)
          {
            CFRelease(v32);
          }

          sub_261476C54(&valuePtr.value);
        }

        fclose(v27);
        goto LABEL_75;
      }

      v34 = *__error();
      valuePtr.value = -2007;
      Mutable = @"Unable to open file for writing.";
      sub_261476754(v43, &valuePtr.value, &Mutable);
      sub_26152763C(&valuePtr.value, __p, v34);
      v33 = atomic_exchange(v44, atomic_exchange(&valuePtr.value, 0));
      if (v33)
      {
        goto LABEL_73;
      }
    }

    else
    {
      valuePtr.value = -2008;
      Mutable = @"Unable to serialize sample.";
      sub_261476754(v43, &valuePtr.value, &Mutable);
      valuePtr.value = error[0];
      v33 = atomic_exchange(v44, atomic_exchange(&valuePtr.value, 0));
      if (v33)
      {
LABEL_73:
        CFRelease(v33);
      }
    }

    sub_261476C54(&valuePtr.value);
    v12 = 0;
LABEL_75:
    sub_2614BF7E0(&v54.value);
    goto LABEL_76;
  }

  error[0] = -2008;
  v54.value = @"Unable to serialize sample.";
  sub_261476754(v43, error, &v54);
  v12 = 0;
LABEL_76:
  sub_26148D93C(&v46);
LABEL_77:
  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  v35 = v45;
  if (v12)
  {
    v36 = 1;
  }

  else
  {
    v36 = 0;
    if (a3 && (v45 & 1) != 0)
    {
      sub_261501518(error, v43);
      *a3 = atomic_exchange(error, 0);
      sub_261476C54(error);
      v36 = 0;
      v35 = v45;
    }
  }

  if (v35)
  {
    sub_261501098(v43);
  }

  return v36;
}

void sub_26152624C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, atomic_ullong a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, int a36, __int16 a37, char a38, char a39, int a40, __int16 a41, char a42, char a43, int a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  MEMORY[0x2667045B0](v49, 0x60C8044C4A2DFLL);
  sub_261527258(&a45);
  sub_261527044(&a49);
  sub_2614F7DE4((v50 - 168));
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a35 == 1)
  {
    sub_261501098(&a23);
  }

  _Unwind_Resume(a1);
}

atomic_ullong *sub_2615263D8(atomic_ullong *result, const __CFURL *a2)
{
  v2 = result;
  if (a2 && (result = _CFURLIsFileURL(), result))
  {
    v5 = CFURLCopyAbsoluteURL(a2);
    if (atomic_load_explicit(&v5, memory_order_acquire))
    {
      v4 = CFURLCopyFileSystemPath(atomic_load_explicit(&v5, memory_order_acquire), kCFURLPOSIXPathStyle);
      if (atomic_load_explicit(&v4, memory_order_acquire))
      {
        CFStringGetMaximumSizeOfFileSystemRepresentation(atomic_load_explicit(&v4, memory_order_acquire));
        operator new[]();
      }

      *v2 = 0;
      v2[1] = 0;
      v2[2] = 0;
      sub_26148E848(&v4);
    }

    else
    {
      *v2 = 0;
      v2[1] = 0;
      v2[2] = 0;
    }

    return sub_2614E9EB0(&v5);
  }

  else
  {
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
  }

  return result;
}

void sub_261526588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  MEMORY[0x2667045B0](v5, v6);
  sub_26148E848(va);
  sub_2614E9EB0(va1);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_2615265C8(atomic_ullong *result, atomic_ullong *a2)
{
  v2 = result;
  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    *result = 0;
    *(result + 64) = 0;
    return result;
  }

  Width = CVPixelBufferGetWidth(atomic_load_explicit(a2, memory_order_acquire));
  Height = CVPixelBufferGetHeight(atomic_load_explicit(a2, memory_order_acquire));
  PixelFormatType = CVPixelBufferGetPixelFormatType(atomic_load_explicit(a2, memory_order_acquire));
  v51[0] = CVPixelBufferCopyCreationAttributes(atomic_load_explicit(a2, memory_order_acquire));
  IsPlanar = CVPixelBufferIsPlanar(atomic_load_explicit(a2, memory_order_acquire));
  v49 = 0uLL;
  v50 = 0;
  explicit = atomic_load_explicit(a2, memory_order_acquire);
  context.version = 0;
  context.info = explicit;
  context.retain = j__CVPixelBufferRetain;
  context.release = j__CVPixelBufferRelease;
  memset(&context.copyDescription, 0, 24);
  context.deallocate = sub_261527C30;
  context.preferredSize = 0;
  v9 = *MEMORY[0x277CBECE8];
  v47 = CFAllocatorCreate(*MEMORY[0x277CBECE8], &context);
  if (!atomic_load_explicit(&v47, memory_order_acquire))
  {
    goto LABEL_22;
  }

  v10 = atomic_load_explicit(a2, memory_order_acquire);
  if (IsPlanar)
  {
    v36 = IsPlanar;
    v37 = PixelFormatType;
    v38 = Height;
    v39 = Width;
    PlaneCount = CVPixelBufferGetPlaneCount(v10);
    if (PlaneCount)
    {
      v12 = 0;
      do
      {
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(atomic_load_explicit(a2, memory_order_acquire), v12);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(atomic_load_explicit(a2, memory_order_acquire), v12);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(atomic_load_explicit(a2, memory_order_acquire), v12);
        if (CVPixelBufferLockBaseAddress(atomic_load_explicit(a2, memory_order_acquire), 1uLL))
        {
          goto LABEL_22;
        }

        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(atomic_load_explicit(a2, memory_order_acquire), v12);
        if (!BaseAddressOfPlane)
        {
          goto LABEL_22;
        }

        v46 = CFDataCreateWithBytesNoCopy(v9, BaseAddressOfPlane, BytesPerRowOfPlane * HeightOfPlane, atomic_load_explicit(&v47, memory_order_acquire));
        if (!atomic_load_explicit(&v46, memory_order_acquire))
        {
          CFAllocatorDeallocate(atomic_load_explicit(&v47, memory_order_acquire), BaseAddressOfPlane);
          goto LABEL_29;
        }

        v17 = atomic_exchange(&v46, 0);
        v18 = *(&v49 + 1);
        if (*(&v49 + 1) >= v50)
        {
          v20 = (*(&v49 + 1) - v49) >> 5;
          v21 = v20 + 1;
          if ((v20 + 1) >> 59)
          {
            sub_2614709BC();
          }

          v22 = v50 - v49;
          if ((v50 - v49) >> 4 > v21)
          {
            v21 = v22 >> 4;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFE0)
          {
            v23 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          sub_261527A50(&v40, v23, v20, &v49);
          v24 = v41;
          *v41 = WidthOfPlane;
          v24[1] = HeightOfPlane;
          v24[2] = BytesPerRowOfPlane;
          v24[3] = v17;
          v41 = v24 + 4;
          sub_261527AC8(&v49, &v40);
          v19 = *(&v49 + 1);
          sub_261527BA8(&v40);
        }

        else
        {
          **(&v49 + 1) = WidthOfPlane;
          v18[1] = HeightOfPlane;
          v19 = v18 + 4;
          v18[2] = BytesPerRowOfPlane;
          v18[3] = v17;
        }

        *(&v49 + 1) = v19;
        sub_2614BF7E0(&v46);
      }

      while (PlaneCount != ++v12);
    }

LABEL_38:
    v42 = atomic_exchange(v51, 0);
    v43 = v36 != 0;
    v44 = v49;
    v45 = v50;
    v49 = 0u;
    v50 = 0;
    v40 = 0u;
    *v2 = v39;
    v2[1] = v38;
    LODWORD(v41) = 0;
    *(v2 + 4) = v37;
    v2[3] = atomic_exchange(&v42, 0);
    v35 = v43;
    v43 = 0;
    *(v2 + 32) = v35;
    *(v2 + 5) = v44;
    v2[7] = v45;
    v44 = 0u;
    v45 = 0;
    *(v2 + 64) = 1;
    sub_2615271F0(&v44);
    sub_26148D93C(&v42);
    goto LABEL_39;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(v10);
  if (!CVPixelBufferLockBaseAddress(atomic_load_explicit(a2, memory_order_acquire), 1uLL))
  {
    BaseAddress = CVPixelBufferGetBaseAddress(atomic_load_explicit(a2, memory_order_acquire));
    if (BaseAddress)
    {
      v46 = CFDataCreateWithBytesNoCopy(v9, BaseAddress, Height * BytesPerRow, atomic_load_explicit(&v47, memory_order_acquire));
      if (!atomic_load_explicit(&v46, memory_order_acquire))
      {
        CFAllocatorDeallocate(atomic_load_explicit(&v47, memory_order_acquire), BaseAddress);
LABEL_29:
        *v2 = 0;
        *(v2 + 64) = 0;
        sub_2614BF7E0(&v46);
        goto LABEL_39;
      }

      v27 = atomic_exchange(&v46, 0);
      v28 = *(&v49 + 1);
      v38 = Height;
      v39 = Width;
      v36 = 0;
      v37 = PixelFormatType;
      if (*(&v49 + 1) >= v50)
      {
        v30 = (*(&v49 + 1) - v49) >> 5;
        v31 = v30 + 1;
        if ((v30 + 1) >> 59)
        {
          sub_2614709BC();
        }

        v32 = v50 - v49;
        if ((v50 - v49) >> 4 > v31)
        {
          v31 = v32 >> 4;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFE0)
        {
          v33 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v31;
        }

        sub_261527A50(&v40, v33, v30, &v49);
        v34 = v41;
        *v41 = Width;
        v34[1] = Height;
        v34[2] = BytesPerRow;
        v34[3] = v27;
        v41 = v34 + 4;
        sub_261527AC8(&v49, &v40);
        v29 = *(&v49 + 1);
        sub_261527BA8(&v40);
      }

      else
      {
        **(&v49 + 1) = Width;
        v28[1] = Height;
        v29 = v28 + 4;
        v28[2] = BytesPerRow;
        v28[3] = v27;
      }

      *(&v49 + 1) = v29;
      sub_2614BF7E0(&v46);
      goto LABEL_38;
    }
  }

LABEL_22:
  *v2 = 0;
  *(v2 + 64) = 0;
LABEL_39:
  sub_261527BFC(&v47);
  sub_2615271F0(&v49);
  return sub_26148D93C(v51);
}

void sub_261526A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va1, a14);
  va_start(va, a14);
  v16 = va_arg(va1, void);
  sub_2614BF7E0(va);
  sub_261527BFC(va1);
  sub_2615271F0((v14 - 128));
  sub_26148D93C((v14 - 96));
  _Unwind_Resume(a1);
}

CFDictionaryRef sub_261526A88(uint64_t *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v25 = *a1;
  theDict = Mutable;
  if (!sub_261527964(&theDict, "width", 5, &v25))
  {
    goto LABEL_29;
  }

  v24 = sub_261527A24(a1);
  if (!sub_261527964(&theDict, "height", 6, &v24))
  {
    goto LABEL_29;
  }

  v4 = sub_261527A48(a1);
  v5 = sub_2614F7C14("pixelFormatType", 15);
  if (!v5)
  {
    goto LABEL_29;
  }

  valuePtr = v4;
  v6 = CFNumberCreate(v2, kCFNumberSInt64Type, &valuePtr);
  if (v6)
  {
    v7 = sub_2614F7E18(&theDict, v5, v6);
    CFRelease(v5);
  }

  else
  {
    v7 = 0;
    v6 = v5;
  }

  CFRelease(v6);
  if (!v7)
  {
    goto LABEL_29;
  }

  v8 = sub_261527A10(a1);
  v9 = sub_2614F7C14("pixelBufferAttributes", 21);
  if (!v9)
  {
    goto LABEL_29;
  }

  v10 = sub_2614F7CB0(v8);
  if (v10)
  {
    v11 = sub_2614F7E18(&theDict, v9, v10);
    CFRelease(v9);
  }

  else
  {
    v11 = 0;
    v10 = v9;
  }

  CFRelease(v10);
  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = sub_261527A40(a1);
  v13 = sub_2614F7C14("isPlanar", 8);
  if (!v13)
  {
    goto LABEL_29;
  }

  v14 = MEMORY[0x277CBED28];
  if (!v12)
  {
    v14 = MEMORY[0x277CBED10];
  }

  v15 = CFRetain(*v14);
  if (v15)
  {
    v16 = sub_2614F7E18(&theDict, v13, v15);
    CFRelease(v13);
  }

  else
  {
    v16 = 0;
    v15 = v13;
  }

  CFRelease(v15);
  if (!v16)
  {
    goto LABEL_29;
  }

  sub_261527A2C(a1);
  v18 = v17;
  v19 = sub_2614F7C14("planes", 6);
  if (!v19)
  {
    goto LABEL_29;
  }

  if (v18)
  {
    operator new[]();
  }

  v20 = CFArrayCreate(v2, 0, 0, MEMORY[0x277CBF128]);
  if (v20)
  {
    v21 = sub_2614F7E18(&theDict, v19, v20);
    CFRelease(v19);
  }

  else
  {
    v21 = 0;
    v20 = v19;
  }

  CFRelease(v20);
  if (v21 && theDict)
  {
    Copy = CFDictionaryCreateCopy(v2, theDict);
  }

  else
  {
LABEL_29:
    Copy = 0;
  }

  sub_2614F7DE4(&theDict);
  return Copy;
}

void sub_261526F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x2667045B0](v4, 0x60C8044C4A2DFLL);
  sub_2614F7DE4(va);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_261526FD0(atomic_ullong *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (a2 >> 58)
    {
      sub_2614709BC();
    }

    v2 = result;
    sub_261527774(v3, a2, (result[1] - *result) >> 6, result);
    sub_2615277EC(v2, v3);
    return sub_261527900(v3);
  }

  return result;
}

uint64_t sub_261527044(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    sub_2615271F0((a1 + 40));
    sub_26148D93C((a1 + 24));
  }

  return a1;
}

atomic_ullong *sub_261527084(atomic_ullong *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v9 = (v4 - *result) >> 6;
    v10 = v9 + 1;
    if ((v9 + 1) >> 58)
    {
      sub_2614709BC();
    }

    v11 = v5 - *result;
    if (v11 >> 5 > v10)
    {
      v10 = v11 >> 5;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFC0)
    {
      v12 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    sub_261527774(v16, v12, v9, result);
    v13 = v17;
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    v15 = a2[1];
    a2[1] = 0;
    *(v13 + 8) = v15;
    LODWORD(v15) = *(a2 + 4);
    *(a2 + 4) = 0;
    *(v13 + 16) = v15;
    *(v13 + 24) = atomic_exchange(a2 + 3, 0);
    LOBYTE(v15) = *(a2 + 32);
    *(a2 + 32) = 0;
    *(v13 + 32) = v15;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 40) = 0;
    *(v13 + 40) = *(a2 + 5);
    *(v13 + 56) = a2[7];
    a2[5] = 0;
    a2[6] = 0;
    a2[7] = 0;
    v17 += 64;
    sub_2615277EC(v3, v16);
    v8 = v3[1];
    result = sub_261527900(v16);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v4 = v6;
    v7 = a2[1];
    a2[1] = 0;
    *(v4 + 8) = v7;
    LODWORD(v7) = *(a2 + 4);
    *(a2 + 4) = 0;
    *(v4 + 16) = v7;
    *(v4 + 24) = atomic_exchange(a2 + 3, 0);
    LOBYTE(v7) = *(a2 + 32);
    *(a2 + 32) = 0;
    *(v4 + 32) = v7;
    *(v4 + 48) = 0;
    *(v4 + 56) = 0;
    *(v4 + 40) = 0;
    *(v4 + 40) = *(a2 + 5);
    *(v4 + 56) = a2[7];
    a2[5] = 0;
    a2[6] = 0;
    a2[7] = 0;
    v8 = v4 + 64;
  }

  v3[1] = v8;
  return result;
}

void **sub_2615271F0(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 4;
        sub_2614BF7E0(v3 - 1);
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_261527258(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        sub_2615271F0(v3 - 3);
        sub_26148D93C(v3 - 5);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_2615272C8(CFDictionaryRef *a1, const __CFString *a2, const void **a3)
{
  v5 = sub_2614F7C48(a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = sub_2614F7CB0(*a3);
  if (v7)
  {
    v8 = v7;
    v9 = sub_2614F7E18(a1, v6, v7);
    CFRelease(v6);
    v6 = v8;
  }

  else
  {
    v9 = 0;
  }

  CFRelease(v6);
  return v9;
}

uint64_t sub_261527350(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  if (sub_2614F7C48(a2))
  {
    v4 = 0;
    while (1)
    {
      v5 = 0;
      v6 = *(a3 + 16 * v4);
      v7 = &v12[v4 + 1];
      v8 = *v7;
      do
      {
        v11 = v6;
        v9 = *(&v11 & 0xFFFFFFFFFFFFFFF3 | (4 * (v5 & 3)));
        v12[0] = v8;
        *(v12 & 0xFFFFFFFFFFFFFFF3 | (4 * (v5 & 3))) = v9;
        v8 = v12[0];
        ++v5;
      }

      while (v5 != 3);
      *(v7 + 2) = DWORD2(v12[0]);
      *v7 = v8;
      if (++v4 == 3)
      {
        operator new[]();
      }
    }
  }

  return 0;
}

atomic_ullong *sub_26152763C(atomic_ullong *result, uint64_t a2, int a3)
{
  v3 = result;
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v7 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (atomic_load_explicit(&Mutable, memory_order_acquire))
    {
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      v11 = CFStringCreateWithFileSystemRepresentation(v7, v8);
      if (atomic_load_explicit(&v11, memory_order_acquire))
      {
        explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
        CFDictionarySetValue(explicit, *MEMORY[0x277CBEE50], atomic_load_explicit(&v11, memory_order_acquire));
        v10 = CFErrorCreate(v7, *MEMORY[0x277CBEE48], a3, atomic_load_explicit(&Mutable, memory_order_acquire));
      }

      else
      {
        v10 = 0;
      }

      *v3 = v10;
      sub_26148E848(&v11);
    }

    else
    {
      *v3 = 0;
    }

    return sub_2614769A4(&Mutable);
  }

  else
  {
    *result = 0;
  }

  return result;
}

void sub_261527750(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2614769A4(va);
  _Unwind_Resume(a1);
}

void *sub_261527774(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (!(a2 >> 58))
    {
      operator new();
    }

    sub_2614709D4();
  }

  *result = 0;
  result[1] = a3 << 6;
  result[2] = a3 << 6;
  result[3] = 0;
  return result;
}

atomic_ullong *sub_2615277EC(atomic_ullong *result, void *a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  v6 = a2[1] + *result - v5;
  if (v5 != *result)
  {
    v7 = a2[1] + *result - v5;
    v8 = *result;
    do
    {
      v9 = *v8;
      *v8 = 0;
      *v7 = v9;
      v10 = *(v8 + 8);
      *(v8 + 8) = 0;
      *(v7 + 8) = v10;
      LODWORD(v10) = *(v8 + 16);
      *(v8 + 16) = 0;
      *(v7 + 16) = v10;
      *(v7 + 24) = atomic_exchange((v8 + 24), 0);
      LOBYTE(v10) = *(v8 + 32);
      *(v8 + 32) = 0;
      *(v7 + 32) = v10;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 40) = 0;
      *(v7 + 40) = *(v8 + 40);
      *(v7 + 56) = *(v8 + 56);
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      v8 += 64;
      v7 += 64;
    }

    while (v8 != v5);
    do
    {
      sub_2615271F0((v4 + 40));
      result = sub_26148D93C((v4 + 24));
      v4 += 64;
    }

    while (v4 != v5);
    v4 = *v3;
  }

  a2[1] = v6;
  *v3 = v6;
  v3[1] = v4;
  a2[1] = v4;
  v11 = v3[1];
  v3[1] = a2[2];
  a2[2] = v11;
  v12 = v3[2];
  v3[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

uint64_t sub_261527900(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    sub_2615271F0((i - 24));
    sub_26148D93C((i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_261527964(CFDictionaryRef *a1, UInt8 *bytes, CFIndex numBytes, uint64_t *a4)
{
  v6 = sub_2614F7C14(bytes, numBytes);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *a4;
  v13[0] = 0;
  v13[1] = v8;
  v9 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberMaxType|kCFNumberSInt8Type, v13);
  if (v9)
  {
    v10 = v9;
    v11 = sub_2614F7E18(a1, v7, v9);
    CFRelease(v7);
    v7 = v10;
  }

  else
  {
    v11 = 0;
  }

  CFRelease(v7);
  return v11;
}

void *sub_261527A50(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    sub_2614709D4();
  }

  *result = 0;
  result[1] = 32 * a3;
  result[2] = 32 * a3;
  result[3] = 0;
  return result;
}

atomic_ullong *sub_261527AC8(atomic_ullong *result, void *a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  v6 = a2[1] + *result - v5;
  if (v5 != *result)
  {
    v7 = *result;
    v8 = (a2[1] + *result - v5);
    do
    {
      v9 = *v7;
      *v7 = 0;
      *v8 = v9;
      v10 = v7[1];
      v7[1] = 0;
      v8[1] = v10;
      v11 = v7[2];
      v7[2] = 0;
      v8[2] = v11;
      v8[3] = atomic_exchange(v7 + 3, 0);
      v7 += 4;
      v8 += 4;
    }

    while (v7 != v5);
    do
    {
      result = sub_2614BF7E0((v4 + 24));
      v4 += 32;
    }

    while (v4 != v5);
    v4 = *v3;
  }

  a2[1] = v6;
  *v3 = v6;
  v3[1] = v4;
  a2[1] = v4;
  v12 = v3[1];
  v3[1] = a2[2];
  a2[2] = v12;
  v13 = v3[2];
  v3[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
  return result;
}

uint64_t sub_261527BA8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    sub_2614BF7E0((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

atomic_ullong *sub_261527BFC(atomic_ullong *a1)
{
  v2 = atomic_exchange(a1, 0);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_261527C30(int a1, CVPixelBufferRef pixelBuffer)
{
  if (pixelBuffer)
  {
    return CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  }

  return result;
}

unint64_t MRCSampleCreateByReadingOpaqueRepresentationFromFile(void *ptr, void *a2)
{
  LOBYTE(v24[0]) = 0;
  v26 = 0;
  if (qword_27FEB41B0 != -1)
  {
    dispatch_once(&qword_27FEB41B0, &unk_2873D06A0);
  }

  os_signpost_id_make_with_pointer(qword_27FEB41A8, ptr);
  sub_2615263D8(v21, ptr);
  if ((v22 & 0x80000000) == 0)
  {
    if (v22)
    {
      v4 = v21;
      goto LABEL_8;
    }

LABEL_12:
    *&v35.st_dev = -2006;
    context.version = @"Invalid file URL.";
    sub_261476754(v24, &v35.st_dev, &context);
LABEL_37:
    v23 = 0;
    goto LABEL_38;
  }

  if (!v21[1])
  {
    goto LABEL_12;
  }

  v4 = v21[0];
LABEL_8:
  v5 = open(v4, 0);
  v6 = v5;
  if (v5 < 0)
  {
    v9 = *__error();
    *&v35.st_dev = -2007;
    context.version = @"Unable to open file for reading.";
    sub_261476754(v24, &v35.st_dev, &context);
    sub_26152763C(&v35.st_dev, v21, v9);
    v10 = atomic_exchange(v25, atomic_exchange(&v35.st_dev, 0));
    if (v10)
    {
      CFRelease(v10);
    }

    p_context = &v35;
    goto LABEL_36;
  }

  fcntl(v5, 48, 1);
  if (fstat(v6, &v35))
  {
    v7 = *__error();
    close(v6);
    context.version = -2007;
    v34 = @"Unable to get file status.";
    sub_261476754(v24, &context.version, &v34);
    sub_26152763C(&context.version, v21, v7);
    v8 = atomic_exchange(v25, atomic_exchange(&context.version, 0));
    if (v8)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v12 = v35.st_mode & 0xF000;
  if (v12 != 0x8000)
  {
    if (v12 == 0x4000)
    {
      v16 = 21;
    }

    else
    {
      v16 = 13;
    }

    close(v6);
    context.version = -2007;
    v34 = @"Unexpected file type.";
    sub_261476754(v24, &context.version, &v34);
    sub_26152763C(&context.version, v21, v16);
    v8 = atomic_exchange(v25, atomic_exchange(&context.version, 0));
    if (!v8)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v35.st_size < 0)
  {
    close(v6);
    context.version = -2007;
    v34 = @"Unexpected file size.";
    sub_261476754(v24, &context.version, &v34);
    sub_26152763C(&context.version, v21, 12);
    v8 = atomic_exchange(v25, atomic_exchange(&context.version, 0));
    if (v8)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (!v35.st_size)
  {
    close(v6);
    context.version = -2007;
    v34 = @"Empty file.";
    sub_261476754(v24, &context.version, &v34);
    goto LABEL_37;
  }

  v13 = mmap(0, v35.st_size, 1, 2, v6, 0);
  if (v13 == -1)
  {
    v17 = *__error();
    close(v6);
    context.version = -2007;
    v34 = @"Unable to map file.";
    sub_261476754(v24, &context.version, &v34);
    sub_26152763C(&context.version, v21, v17);
    v8 = atomic_exchange(v25, atomic_exchange(&context.version, 0));
    if (v8)
    {
LABEL_34:
      CFRelease(v8);
    }

LABEL_35:
    p_context = &context;
LABEL_36:
    sub_261476C54(p_context);
    goto LABEL_37;
  }

  close(v6);
  context.version = 0;
  context.info = v35.st_size;
  memset(&context.retain, 0, 40);
  context.deallocate = j__munmap;
  context.preferredSize = 0;
  v14 = *MEMORY[0x277CBECE8];
  v34 = CFAllocatorCreate(*MEMORY[0x277CBECE8], &context);
  if (atomic_load_explicit(&v34, memory_order_acquire))
  {
    v32 = CFDataCreateWithBytesNoCopy(v14, v13, v35.st_size, atomic_load_explicit(&v34, memory_order_acquire));
    if (atomic_load_explicit(&v32, memory_order_acquire))
    {
      error = 0;
      v30 = CFPropertyListCreateWithData(v14, atomic_load_explicit(&v32, memory_order_acquire), 0, 0, &error);
      if (atomic_load_explicit(&v30, memory_order_acquire))
      {
        sub_2615282D4(&v29, &v30);
        if (atomic_load_explicit(&v29, memory_order_acquire))
        {
          v15 = atomic_exchange(&v29, 0);
        }

        else
        {
          v27 = @"Unable to deserialize sample.";
          v28 = -2009;
          sub_261476754(v24, &v28, &v27);
          v15 = 0;
        }

        v23 = v15;
        sub_261528E58(&v29);
      }

      else
      {
        v28 = @"Unable to deserialize sample.";
        v29 = -2009;
        sub_261476754(v24, &v29, &v28);
        v29 = error;
        v20 = atomic_exchange(v25, atomic_exchange(&v29, 0));
        if (v20)
        {
          CFRelease(v20);
        }

        sub_261476C54(&v29);
        v23 = 0;
      }

      sub_26148D890(&v30);
    }

    else
    {
      CFAllocatorDeallocate(atomic_load_explicit(&v34, memory_order_acquire), v13);
      v30 = @"Unable to create data.";
      error = -2003;
      sub_261476754(v24, &error, &v30);
      v23 = 0;
    }

    sub_2614BF7E0(&v32);
  }

  else
  {
    munmap(v13, v35.st_size);
    error = @"Unable to create bytes deallocator.";
    v32 = -2003;
    sub_261476754(v24, &v32, &error);
    v23 = 0;
  }

  sub_261527BFC(&v34);
LABEL_38:
  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (atomic_load_explicit(&v23, memory_order_acquire))
  {
    v18 = atomic_exchange(&v23, 0);
  }

  else
  {
    v18 = 0;
    if (a2 && (v26 & 1) != 0)
    {
      sub_261501518(&v35, v24);
      *a2 = atomic_exchange(&v35.st_dev, 0);
      sub_261476C54(&v35.st_dev);
      v18 = 0;
    }
  }

  sub_261528E58(&v23);
  if (v26 == 1)
  {
    sub_261501098(v24);
  }

  return v18;
}

void sub_261528200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, atomic_ullong a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, atomic_ullong a33, atomic_ullong a34, uint64_t a35, atomic_ullong a36, __int16 a37, char a38, char a39)
{
  sub_261528E58(&a33);
  sub_26148D890(&a34);
  sub_2614BF7E0(&a36);
  sub_261527BFC((v39 - 184));
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a30 == 1)
  {
    sub_261501098(&a18);
  }

  _Unwind_Resume(a1);
}

atomic_ullong *sub_2615282D4(atomic_ullong *result, atomic_ullong *a2)
{
  v5 = result;
  v106 = *MEMORY[0x277D85DE8];
  if (!atomic_load_explicit(a2, memory_order_acquire) || (v7 = CFGetTypeID(atomic_load_explicit(a2, memory_order_acquire)), result = CFDictionaryGetTypeID(), v7 != result))
  {
    *v5 = 0;
    return result;
  }

  explicit = atomic_load_explicit(a2, memory_order_acquire);
  if (explicit)
  {
    explicit = CFRetain(explicit);
  }

  v82 = explicit;
  sub_2614F7EBC(&v93, atomic_load_explicit(&v82, memory_order_acquire));
  v91 = 0;
  v92 = 0;
  v90 = 0;
  bytes[0] = 0;
  v101 = 0;
  v9 = sub_2614F7C48(@"pixelBuffer");
  if (!v9 || (v10 = sub_2614F7F5C(&v93, v9), CFRelease(v9), !v10))
  {
    LOBYTE(v86[0]) = 0;
    v89 = 0;
LABEL_23:
    *v5 = 0;
    goto LABEL_24;
  }

  sub_261528E8C(v86, v10);
  CFRelease(v10);
  if ((v89 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_261529768(v102, v86);
  v11 = atomic_exchange(&v92, atomic_exchange(v102, 0));
  if (v11)
  {
    CFRelease(v11);
  }

  sub_2614776F0(v102);
  if (!atomic_load_explicit(&v92, memory_order_acquire))
  {
    goto LABEL_23;
  }

  v12 = sub_2614F7C48(@"regionOfInterest");
  v13 = 0.0;
  if (v12 && (v14 = sub_2614F7F5C(&v93, v12), CFRelease(v12), v14))
  {
    v15 = CFGetTypeID(v14);
    if (v15 == CFArrayGetTypeID() && CFArrayGetCount(v14) == 4)
    {
      v16 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, v16);
        v18 = sub_2614F7ADC(ValueAtIndex);
        if ((v19 & 1) == 0)
        {
          break;
        }

        *(v94 + v16++) = v18;
        if (v16 == 4)
        {
          v20 = 0;
          *v102 = v94[0];
          *&v102[16] = v94[1];
          v21 = 0uLL;
          v22 = 0uLL;
          do
          {
            v23 = *&v102[8 * v20];
            v80 = v21;
            v81 = v22;
            *(&v80 + (v20 & 3)) = v23;
            v21 = v80;
            v22 = v81;
            ++v20;
          }

          while (v20 != 4);
          v72 = v81;
          *otherNumber = v80;
          v76 = 1;
          goto LABEL_29;
        }
      }
    }

    v76 = 0;
    v72 = 0u;
    *otherNumber = 0u;
LABEL_29:
    CFRelease(v14);
    if (v76)
    {
      v13 = *otherNumber;
    }

    else
    {
      v13 = 0.0;
    }

    if (v76)
    {
      v2 = *&otherNumber[1];
    }

    else
    {
      v2 = 0.0;
    }

    if (v76)
    {
      v3 = *&v72;
    }

    else
    {
      v3 = 0.0;
    }

    if (v76)
    {
      v4 = *(&v72 + 1);
    }

    else
    {
      v4 = 0.0;
    }
  }

  else
  {
    v76 = 0;
  }

  v24 = sub_2614F7C48(@"pyramid");
  if (v24 && (v25 = sub_2614F7F5C(&v93, v24), CFRelease(v24), v25))
  {
    v26 = CFGetTypeID(v25);
    if (v26 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v25);
      if (Count)
      {
        memset(v94, 0, 24);
        sub_261526FD0(v94, Count);
        if (Count < 1)
        {
LABEL_51:
          v83 = v94[0];
          v84 = *&v94[1];
          memset(v94, 0, 24);
          v85 = 1;
        }

        else
        {
          v28 = 0;
          while (1)
          {
            v29 = CFArrayGetValueAtIndex(v25, v28);
            sub_261528E8C(v102, v29);
            if ((v105 & 1) == 0)
            {
              break;
            }

            sub_261527084(v94, v102);
            if (v105)
            {
              sub_2615271F0(&v103 + 1);
              sub_26148D93C(&v102[24]);
            }

            if (Count == ++v28)
            {
              goto LABEL_51;
            }
          }

          v85 = 0;
          LOBYTE(v83) = 0;
        }

        v30 = v94;
      }

      else
      {
        v84 = 0;
        v83 = 0uLL;
        memset(v102, 0, 24);
        v85 = 1;
        v30 = v102;
      }

      sub_261527258(v30);
    }

    else
    {
      LOBYTE(v83) = 0;
      v85 = 0;
    }

    CFRelease(v25);
    if (v85)
    {
      v31 = *MEMORY[0x277CBECE8];
      *v102 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], (*(&v83 + 1) - v83) >> 6, MEMORY[0x277CBF128]);
      v33 = *(&v83 + 1);
      for (i = v83; i != v33; i += 64)
      {
        sub_261529768(v94, i);
        if (!atomic_load_explicit(v94, memory_order_acquire))
        {
          *v5 = 0;
          sub_2614776F0(v94);
          sub_26147743C(v102);
          goto LABEL_122;
        }

        CFArrayAppendValue(atomic_load_explicit(v102, memory_order_acquire), atomic_load_explicit(v94, memory_order_acquire));
        sub_2614776F0(v94);
      }

      *&v94[0] = CFArrayCreateCopy(v31, atomic_load_explicit(v102, memory_order_acquire));
      v34 = atomic_exchange(&v91, atomic_exchange(v94, 0));
      if (v34)
      {
        CFRelease(v34);
      }

      sub_261476A0C(v94);
      sub_26147743C(v102);
    }
  }

  else
  {
    LOBYTE(v83) = 0;
    v85 = 0;
  }

  v35 = sub_2614F7C48(@"presentationTimeStamp");
  if (v35)
  {
    v36 = sub_2614F7F5C(&v93, v35);
    CFRelease(v35);
    if (v36)
    {
      v35 = sub_2614F7D28(v36);
      CFRelease(v36);
    }

    else
    {
      v35 = 0;
    }
  }

  *v102 = v35;
  v37 = atomic_exchange(&v90, atomic_exchange(v102, 0));
  if (v37)
  {
    CFRelease(v37);
  }

  sub_26148D93C(v102);
  if (atomic_load_explicit(&v90, memory_order_acquire))
  {
    CMTimeMakeFromDictionary(v102, atomic_load_explicit(&v90, memory_order_acquire));
    if ((v102[12] & 1) == 0)
    {
LABEL_73:
      *v5 = 0;
      goto LABEL_122;
    }
  }

  v38 = sub_2614F7C48(@"cameraIntrinsicMatrix");
  if (!v38 || (v39 = sub_2614F7F5C(&v93, v38), CFRelease(v38), !v39))
  {
    bytes[0] = 0;
    *&bytes[1] = v98;
    *&bytes[17] = v99[0];
    *&bytes[32] = *(v99 + 15);
    v101 = 0;
    goto LABEL_113;
  }

  v40 = CFGetTypeID(v39);
  if (v40 != CFArrayGetTypeID() || CFArrayGetCount(v39) != 3)
  {
LABEL_110:
    v65 = 0;
    v64 = 0;
    goto LABEL_111;
  }

  v41 = 0;
  v42 = *MEMORY[0x277CBF000];
  otherNumbera = *MEMORY[0x277CBEFF8];
  v71 = *MEMORY[0x277CBEFF0];
  do
  {
    v73 = v41;
    v43 = CFArrayGetValueAtIndex(v39, v41);
    v44 = v43;
    if (!v43)
    {
      goto LABEL_110;
    }

    v45 = CFGetTypeID(v43);
    if (v45 != CFArrayGetTypeID() || CFArrayGetCount(v44) != 3)
    {
      goto LABEL_110;
    }

    for (j = 0; j != 3; ++j)
    {
      v47 = CFArrayGetValueAtIndex(v44, j);
      v48 = v47;
      if (!v47 || (v49 = CFGetTypeID(v47), v49 != CFNumberGetTypeID()))
      {
LABEL_95:
        v53 = 0;
        v52 = 0;
        goto LABEL_99;
      }

      if (v42 == v48 || CFNumberCompare(v48, v42, 0) == kCFCompareEqualTo)
      {
        v53 = 0x100000000;
        v52 = 2139095040;
      }

      else if (otherNumbera == v48 || CFNumberCompare(v48, otherNumbera, 0) == kCFCompareEqualTo)
      {
        v53 = 0x100000000;
        v52 = -8388608;
      }

      else if (v71 == v48 || CFNumberCompare(v48, v71, 0) == kCFCompareEqualTo)
      {
        v53 = 0x100000000;
        v52 = 2143289344;
      }

      else
      {
        if (!CFNumberGetValue(v48, kCFNumberFloatType, &valuePtr))
        {
          goto LABEL_95;
        }

        v50 = valuePtr;
        v51 = fabsf(valuePtr);
        if (v51 > 3.4028e38)
        {
          v50 = 0.0;
        }

        v52 = LODWORD(v50);
        v53 = (v51 <= 3.4028e38) << 32;
      }

LABEL_99:
      if (!HIDWORD(v53))
      {
        goto LABEL_110;
      }

      *(&v95 + j) = v52 | v53;
    }

    v54 = 0;
    *v102 = v95;
    v102[12] = 1;
    *&v102[8] = v96;
    v55 = 0uLL;
    do
    {
      v56 = *&v102[4 * v54];
      v79 = v55;
      *(&v79 & 0xFFFFFFFFFFFFFFF3 | (4 * (v54 & 3))) = v56;
      v57 = v79;
      HIDWORD(v57) = HIDWORD(v55);
      ++v54;
      v55 = v57;
    }

    while (v54 != 3);
    v94[v73] = v79;
    v41 = v73 + 1;
  }

  while (v73 != 2);
  v58 = 0;
  *v102 = v94[0];
  *&v102[16] = v94[1];
  v103 = v94[2];
  v104 = 1;
  memset(v94, 0, sizeof(v94));
  do
  {
    v59 = 0;
    v60 = *&v102[16 * v58];
    v61 = &v94[v58];
    v62 = *v61;
    do
    {
      v77 = v60;
      v63 = *(&v77 & 0xFFFFFFFFFFFFFFF3 | (4 * (v59 & 3)));
      v78 = v62;
      *(&v78 & 0xFFFFFFFFFFFFFFF3 | (4 * (v59 & 3))) = v63;
      v62 = v78;
      ++v59;
    }

    while (v59 != 3);
    *(v61 + 2) = DWORD2(v78);
    *v61 = v62;
    ++v58;
  }

  while (v58 != 3);
  v64 = v94[0];
  v98 = *(v94 + 1);
  v99[0] = *(&v94[1] + 1);
  *(v99 + 15) = v94[2];
  v65 = 1;
LABEL_111:
  CFRelease(v39);
  bytes[0] = v64;
  *&bytes[1] = v98;
  *&bytes[17] = v99[0];
  *&bytes[32] = *(v99 + 15);
  v101 = v65;
  if (v65)
  {
    v66.i64[0] = 0x3400000034000000;
    v66.i64[1] = 0x3400000034000000;
    v67 = vandq_s8(vandq_s8(vcgeq_f32(v66, vabsq_f32(*&bytes[16])), vcgeq_f32(v66, vabsq_f32(*bytes))), vcgeq_f32(v66, vabsq_f32(*&bytes[32])));
    v67.i32[3] = v67.i32[2];
    if ((vminvq_u32(v67) & 0x80000000) != 0)
    {
      goto LABEL_73;
    }
  }

LABEL_113:
  v68 = *MEMORY[0x277CBECE8];
  *v102 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v76)
  {
    v69 = atomic_load_explicit(v102, memory_order_acquire);
    v107.origin.x = v13;
    v107.origin.y = v2;
    v107.size.width = v3;
    v107.size.height = v4;
    *&v94[0] = CGRectCreateDictionaryRepresentation(v107);
    CFDictionarySetValue(v69, @"MRCSampleAttributeRegionOfInterest", atomic_load_explicit(v94, memory_order_acquire));
    sub_26148D93C(v94);
  }

  if (atomic_load_explicit(&v91, memory_order_acquire))
  {
    CFDictionarySetValue(atomic_load_explicit(v102, memory_order_acquire), @"MRCSampleAttributePyramid", atomic_load_explicit(&v91, memory_order_acquire));
  }

  if (atomic_load_explicit(&v90, memory_order_acquire))
  {
    CFDictionarySetValue(atomic_load_explicit(v102, memory_order_acquire), @"MRCSampleAttributePresentationTimeStamp", atomic_load_explicit(&v90, memory_order_acquire));
  }

  if (v101 == 1)
  {
    v70 = atomic_load_explicit(v102, memory_order_acquire);
    *&v94[0] = CFDataCreate(v68, bytes, 48);
    CFDictionarySetValue(v70, @"MRCSampleAttributeCameraIntrinsicMatrix", atomic_load_explicit(v94, memory_order_acquire));
    sub_2614BF7E0(v94);
  }

  *v5 = MRCSampleCreateWithCVPixelBufferAndAttributes(atomic_load_explicit(&v92, memory_order_acquire), atomic_load_explicit(v102, memory_order_acquire));
  sub_2614769A4(v102);
LABEL_122:
  if (v85 == 1)
  {
    sub_261527258(&v83);
  }

LABEL_24:
  if (v89 == 1)
  {
    sub_2615271F0(&v88);
    sub_26148D93C(v87);
  }

  sub_26148D93C(&v90);
  sub_261476A0C(&v91);
  sub_2614776F0(&v92);
  sub_2614F7F28(&v93);
  return sub_26148D93C(&v82);
}