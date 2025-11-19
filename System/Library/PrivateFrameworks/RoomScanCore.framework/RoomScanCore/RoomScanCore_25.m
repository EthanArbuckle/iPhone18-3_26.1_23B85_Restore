void *sub_262383D20(void *a1)
{
  *a1 = &unk_2874EF080;
  a1[96] = &unk_2874EF6A8;
  v2 = a1[112];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[77] = &unk_2874EF6A8;
  v3 = a1[93];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  a1[58] = &unk_2874EF6A8;
  v4 = a1[74];
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  a1[39] = &unk_2874EF0B8;
  v5 = a1[55];
  if (v5)
  {
    sub_2621D1B78(v5);
  }

  a1[20] = &unk_2874EF0B8;
  v6 = a1[36];
  if (v6)
  {
    sub_2621D1B78(v6);
  }

  a1[1] = &unk_2874EF0B8;
  v7 = a1[17];
  if (v7)
  {
    sub_2621D1B78(v7);
  }

  return a1;
}

uint64_t sub_262383E6C(uint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
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
        if (*(**a3 + 12 * *v10 + 8) <= *(**a3 + 12 * *v11 + 8))
        {
          return result;
        }

        *v11 = *v10;
LABEL_176:
        *v10 = v79;
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
      v86 = v11 + 1;
      v87 = v11[1];
      v88 = v11 + 2;
      v89 = v11[2];
      v90 = *v11;
      v91 = **a3;
      v92 = *(v91 + 12 * v87 + 8);
      v93 = *(v91 + 12 * *v11 + 8);
      v94 = *(v91 + 12 * v89 + 8);
      if (v92 <= v93)
      {
        if (v94 <= v92)
        {
          goto LABEL_169;
        }

        *v86 = v89;
        *v88 = v87;
        v95 = v11;
        v96 = v11 + 1;
        result = v87;
        if (v94 > v93)
        {
          goto LABEL_160;
        }
      }

      else
      {
        v95 = v11;
        v96 = v11 + 2;
        result = *v11;
        if (v94 <= v92)
        {
          *v11 = v87;
          v11[1] = v90;
          v95 = v11 + 1;
          v96 = v11 + 2;
          result = v90;
          if (v94 <= v93)
          {
LABEL_169:
            v87 = v89;
            goto LABEL_170;
          }
        }

LABEL_160:
        *v95 = v89;
        *v96 = v90;
        v87 = result;
      }

LABEL_170:
      if (*(v91 + 12 * *v10 + 8) > *(v91 + 12 * v87 + 8))
      {
        *v88 = *v10;
        *v10 = v87;
        v149 = *v88;
        v150 = *v86;
        v151 = *(v91 + 12 * v149 + 8);
        if (v151 > *(v91 + 12 * v150 + 8))
        {
          v11[1] = v149;
          v11[2] = v150;
          v152 = *v11;
          if (v151 > *(v91 + 12 * *v11 + 8))
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

      return sub_2623849E8(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, v78);
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {
        if (v11 != a2)
        {
          v97 = v11 + 1;
          if (v11 + 1 != a2)
          {
            v98 = **a3;
            v99 = 8;
            v100 = v11;
            do
            {
              v102 = *v100;
              v101 = v100[1];
              v100 = v97;
              v103 = *(v98 + 12 * v101 + 8);
              if (v103 > *(v98 + 12 * v102 + 8))
              {
                v104 = v99;
                while (1)
                {
                  *(v11 + v104) = v102;
                  v105 = v104 - 8;
                  if (v104 == 8)
                  {
                    break;
                  }

                  v102 = *(v11 + v104 - 16);
                  v104 -= 8;
                  if (v103 <= *(v98 + 12 * v102 + 8))
                  {
                    v106 = (v11 + v105);
                    goto LABEL_123;
                  }
                }

                v106 = v11;
LABEL_123:
                *v106 = v101;
              }

              v97 = v100 + 1;
              v99 += 8;
            }

            while (v100 + 1 != a2);
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
            v148 = *(v145 + 12 * v146 + 8);
            if (v148 > *(v145 + 12 * v147 + 8))
            {
              do
              {
                *v144 = v147;
                v147 = *(v144 - 2);
                --v144;
              }

              while (v148 > *(v145 + 12 * v147 + 8));
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
        v107 = (v12 - 2) >> 1;
        v108 = *a3;
        v109 = v107;
        do
        {
          v110 = v109;
          if (v107 >= v109)
          {
            v111 = (2 * v109) | 1;
            v112 = &v11[v111];
            v113 = 2 * v109 + 2;
            v114 = *v108;
            if (v113 < v12 && *(v114 + 12 * *v112 + 8) > *(v114 + 12 * v112[1] + 8))
            {
              ++v112;
              v111 = 2 * v110 + 2;
            }

            v115 = &v11[v110];
            v116 = *v112;
            v117 = *v115;
            v118 = *(v114 + 12 * *v115 + 8);
            if (*(v114 + 12 * *v112 + 8) <= v118)
            {
              do
              {
                v119 = v112;
                *v115 = v116;
                if (v107 < v111)
                {
                  break;
                }

                v120 = 2 * v111;
                v111 = (2 * v111) | 1;
                v112 = &v11[v111];
                v121 = v120 + 2;
                if (v121 < v12 && *(v114 + 12 * *v112 + 8) > *(v114 + 12 * v112[1] + 8))
                {
                  ++v112;
                  v111 = v121;
                }

                v116 = *v112;
                v115 = v119;
              }

              while (*(v114 + 12 * *v112 + 8) <= v118);
              *v119 = v117;
            }
          }

          v109 = v110 - 1;
        }

        while (v110);
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
            result = (2 * v122) | 1;
            v122 = result;
            v129 = v128 + 2;
            if (v129 < v12)
            {
              v131 = v127[2];
              v130 = v127 + 2;
              result = *v124 + 12 * v131;
              if (*(*v124 + 12 * *(v130 - 1) + 8) > *(result + 8))
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
              v140 = *(v139 + 12 * *v125 + 8);
              if (*(v139 + 12 * *v136 + 8) > v140)
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

                while (*(v139 + 12 * *v136 + 8) > v140);
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
    v17 = *(v15 + 12 * *v10 + 8);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v11;
      v20 = *(v15 + 12 * *v13 + 8);
      v21 = *(v15 + 12 * *v11 + 8);
      if (v20 <= v21)
      {
        if (v17 > v20)
        {
          *v13 = v16;
          *v10 = v18;
          v26 = *v11;
          if (*(v15 + 12 * *v13 + 8) > *(v15 + 12 * *v11 + 8))
          {
            *v11 = *v13;
            *v13 = v26;
          }
        }
      }

      else
      {
        if (v17 > v20)
        {
          *v11 = v16;
          goto LABEL_27;
        }

        *v11 = v18;
        *v13 = v19;
        if (*(v15 + 12 * *v10 + 8) > v21)
        {
          *v13 = *v10;
LABEL_27:
          *v10 = v19;
        }
      }

      v28 = v13 - 1;
      v29 = *(v13 - 1);
      v30 = v11[1];
      v31 = *(v15 + 12 * v29 + 8);
      v32 = *(v15 + 12 * v30 + 8);
      v33 = *(a2 - 2);
      v34 = *(v15 + 12 * v33 + 8);
      if (v31 <= v32)
      {
        if (v34 > v31)
        {
          *v28 = v33;
          *(a2 - 2) = v29;
          v35 = v11[1];
          if (*(v15 + 12 * *v28 + 8) > *(v15 + 12 * v35 + 8))
          {
            v11[1] = *v28;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v34 > v31)
        {
          v11[1] = v33;
          goto LABEL_39;
        }

        v11[1] = v29;
        *v28 = v30;
        v36 = *(a2 - 2);
        if (*(v15 + 12 * v36 + 8) > v32)
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
      v41 = *(v15 + 12 * v39 + 8);
      v42 = *(v15 + 12 * v40 + 8);
      v43 = *(a2 - 3);
      v44 = *(v15 + 12 * v43 + 8);
      if (v41 <= v42)
      {
        if (v44 > v41)
        {
          *v37 = v43;
          *(a2 - 3) = v38;
          v45 = v11[2];
          if (*(v15 + 12 * *v37 + 8) > *(v15 + 12 * v45 + 8))
          {
            v11[2] = *v37;
            *v37 = v45;
          }
        }
      }

      else
      {
        if (v44 > v41)
        {
          v11[2] = v43;
          goto LABEL_48;
        }

        v11[2] = v38;
        *v37 = v40;
        v46 = *(a2 - 3);
        if (*(v15 + 12 * v46 + 8) > v42)
        {
          *v37 = v46;
LABEL_48:
          *(a2 - 3) = v40;
        }
      }

      v47 = *v14;
      v48 = *v28;
      v49 = *(v15 + 12 * *v14 + 8);
      v50 = *(v15 + 12 * *v28 + 8);
      v51 = *v37;
      v52 = *(v15 + 12 * *v37 + 8);
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
    v24 = *(v15 + 12 * *v11 + 8);
    v25 = *(v15 + 12 * *v14 + 8);
    if (v24 <= v25)
    {
      if (v17 > v24)
      {
        *v11 = v16;
        *v10 = v22;
        v27 = *v14;
        if (*(v15 + 12 * *v11 + 8) > *(v15 + 12 * *v14 + 8))
        {
          *v14 = *v11;
          *v11 = v27;
        }
      }

      goto LABEL_57;
    }

    if (v17 > v24)
    {
      *v14 = v16;
LABEL_36:
      *v10 = v23;
      goto LABEL_57;
    }

    *v14 = v22;
    *v11 = v23;
    if (*(v15 + 12 * *v10 + 8) > v25)
    {
      *v11 = *v10;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v54 = *v11;
    if (a5)
    {
      v55 = *(v15 + 12 * v54 + 8);
LABEL_60:
      v56 = v11;
      do
      {
        v57 = v56;
        v59 = v56[1];
        ++v56;
        v58 = v59;
      }

      while (*(v15 + 12 * v59 + 8) > v55);
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

        while (*(v15 + 12 * v62 + 8) <= v55);
      }

      else
      {
        do
        {
          v61 = *--v60;
        }

        while (*(v15 + 12 * v61 + 8) <= v55);
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

          while (*(v15 + 12 * v66 + 8) > v55);
          do
          {
            v67 = *--v65;
            v63 = v67;
          }

          while (*(v15 + 12 * v67 + 8) <= v55);
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

      v68 = sub_262384BD4(v11, v57, *a3);
      v11 = v57 + 1;
      result = sub_262384BD4(v57 + 1, a2, *a3);
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
        result = sub_262383E6C(v9, v57, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v57 + 1;
      }
    }

    else
    {
      v55 = *(v15 + 12 * v54 + 8);
      if (*(v15 + 12 * *(v11 - 1) + 8) > v55)
      {
        goto LABEL_60;
      }

      if (v55 <= *(v15 + 12 * *v10 + 8))
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

        while (v55 <= *(v15 + 12 * *v11 + 8));
      }

      else
      {
        do
        {
          v69 = v11[1];
          ++v11;
        }

        while (v55 <= *(v15 + 12 * v69 + 8));
      }

      v71 = a2;
      if (v11 < a2)
      {
        v71 = a2;
        do
        {
          v72 = *--v71;
        }

        while (v55 > *(v15 + 12 * v72 + 8));
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

          while (v55 <= *(v15 + 12 * v75 + 8));
          do
          {
            v76 = *--v71;
            v74 = v76;
          }

          while (v55 > *(v15 + 12 * v76 + 8));
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

  v79 = *v11;
  v80 = v11[1];
  v81 = **a3;
  v82 = *(v81 + 12 * v80 + 8);
  v83 = *(v81 + 12 * *v11 + 8);
  v84 = *v10;
  v85 = *(v81 + 12 * *v10 + 8);
  if (v82 > v83)
  {
    if (v85 <= v82)
    {
      *v11 = v80;
      v11[1] = v79;
      if (*(v81 + 12 * *v10 + 8) <= v83)
      {
        return result;
      }

      v11[1] = *v10;
    }

    else
    {
      *v11 = v84;
    }

    goto LABEL_176;
  }

  if (v85 > v82)
  {
    v11[1] = v84;
    *v10 = v80;
    v143 = *v11;
    v142 = v11[1];
    if (*(v81 + 12 * v142 + 8) > *(v81 + 12 * *v11 + 8))
    {
      *v11 = v142;
      v11[1] = v143;
    }
  }

  return result;
}

uint64_t *sub_2623849E8(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(a6 + 12 * *a2 + 8);
  v9 = *(a6 + 12 * *result + 8);
  v10 = *a3;
  v11 = *(a6 + 12 * *a3 + 8);
  if (v8 <= v9)
  {
    if (v11 <= v8)
    {
      v6 = *a3;
    }

    else
    {
      *a2 = v10;
      *a3 = v6;
      v12 = *result;
      if (*(a6 + 12 * *a2 + 8) > *(a6 + 12 * *result + 8))
      {
        *result = *a2;
        *a2 = v12;
        v6 = *a3;
      }
    }
  }

  else
  {
    if (v11 > v8)
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
    if (*(a6 + 12 * *a3 + 8) > v9)
    {
      *a2 = v6;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(a6 + 12 * *a4 + 8) > *(a6 + 12 * v6 + 8))
  {
    *a3 = *a4;
    *a4 = v6;
    v13 = *a2;
    if (*(a6 + 12 * *a3 + 8) > *(a6 + 12 * *a2 + 8))
    {
      *a2 = *a3;
      *a3 = v13;
      v14 = *result;
      if (*(a6 + 12 * *a2 + 8) > *(a6 + 12 * *result + 8))
      {
        *result = *a2;
        *a2 = v14;
      }
    }
  }

  v15 = *a4;
  if (*(a6 + 12 * *a5 + 8) > *(a6 + 12 * *a4 + 8))
  {
    *a4 = *a5;
    *a5 = v15;
    v16 = *a3;
    if (*(a6 + 12 * *a4 + 8) > *(a6 + 12 * *a3 + 8))
    {
      *a3 = *a4;
      *a4 = v16;
      v17 = *a2;
      if (*(a6 + 12 * *a3 + 8) > *(a6 + 12 * *a2 + 8))
      {
        *a2 = *a3;
        *a3 = v17;
        v18 = *result;
        if (*(a6 + 12 * *a2 + 8) > *(a6 + 12 * *result + 8))
        {
          *result = *a2;
          *a2 = v18;
        }
      }
    }
  }

  return result;
}

BOOL sub_262384BD4(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *a3;
      v8 = *(*a3 + 12 * v6 + 8);
      v9 = *(*a3 + 12 * *a1 + 8);
      v10 = *(a2 - 1);
      v11 = *(*a3 + 12 * v10 + 8);
      if (v8 <= v9)
      {
        if (v11 > v8)
        {
          a1[1] = v10;
          *(a2 - 1) = v6;
          v35 = *a1;
          v34 = a1[1];
          if (*(v7 + 12 * v34 + 8) > *(v7 + 12 * *a1 + 8))
          {
            *a1 = v34;
            a1[1] = v35;
          }
        }

        return 1;
      }

      if (v11 > v8)
      {
        *a1 = v10;
        goto LABEL_48;
      }

      *a1 = v6;
      a1[1] = v5;
      v50 = *(a2 - 1);
      if (*(v7 + 12 * v50 + 8) > v9)
      {
        a1[1] = v50;
        goto LABEL_48;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_2623849E8(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *a3);
        return 1;
      }

      goto LABEL_13;
    }

    v22 = a1 + 1;
    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = *a1;
    v27 = *a3;
    v28 = *(*a3 + 12 * v23 + 8);
    v29 = *(*a3 + 12 * *a1 + 8);
    v30 = *(*a3 + 12 * v25 + 8);
    if (v28 <= v29)
    {
      if (v30 <= v28)
      {
LABEL_41:
        v23 = v25;
        goto LABEL_42;
      }

      *v22 = v25;
      *v24 = v23;
      v31 = a1;
      v32 = a1 + 1;
      v33 = v23;
      if (v30 <= v29)
      {
LABEL_42:
        v45 = *(a2 - 1);
        if (*(v27 + 12 * v45 + 8) > *(v27 + 12 * v23 + 8))
        {
          *v24 = v45;
          *(a2 - 1) = v23;
          v46 = *v24;
          v47 = *v22;
          v48 = *(v27 + 12 * v46 + 8);
          if (v48 > *(v27 + 12 * v47 + 8))
          {
            a1[1] = v46;
            a1[2] = v47;
            v49 = *a1;
            if (v48 > *(v27 + 12 * *a1 + 8))
            {
              *a1 = v46;
              a1[1] = v49;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v31 = a1;
      v32 = a1 + 2;
      v33 = *a1;
      if (v30 <= v28)
      {
        *a1 = v23;
        a1[1] = v26;
        v31 = a1 + 1;
        v32 = a1 + 2;
        v33 = v26;
        if (v30 <= v29)
        {
          goto LABEL_41;
        }
      }
    }

    *v31 = v25;
    *v32 = v26;
    v23 = v33;
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
    if (*(*a3 + 12 * v4 + 8) > *(*a3 + 12 * *a1 + 8))
    {
      *a1 = v4;
LABEL_48:
      *(a2 - 1) = v5;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v12 = a1[2];
  v14 = a1[1];
  v15 = *a1;
  v16 = *a3;
  v17 = *(*a3 + 12 * v14 + 8);
  v18 = *(*a3 + 12 * *a1 + 8);
  v19 = *(*a3 + 12 * v12 + 8);
  if (v17 > v18)
  {
    v20 = a1;
    v21 = a1 + 2;
    if (v19 <= v17)
    {
      *a1 = v14;
      a1[1] = v15;
      v20 = a1 + 1;
      v21 = a1 + 2;
      if (v19 <= v18)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    *v20 = v12;
    *v21 = v15;
    goto LABEL_27;
  }

  if (v19 > v17)
  {
    a1[1] = v12;
    *v13 = v14;
    v20 = a1;
    v21 = a1 + 1;
    if (v19 > v18)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v36 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v37 = 0;
  for (i = 24; ; i += 8)
  {
    v39 = *v36;
    v40 = *v13;
    v41 = *(v16 + 12 * *v36 + 8);
    if (v41 > *(v16 + 12 * v40 + 8))
    {
      v42 = i;
      while (1)
      {
        *(a1 + v42) = v40;
        v43 = v42 - 8;
        if (v42 == 8)
        {
          break;
        }

        v40 = *(a1 + v42 - 16);
        v42 -= 8;
        if (v41 <= *(v16 + 12 * v40 + 8))
        {
          v44 = (a1 + v43);
          goto LABEL_35;
        }
      }

      v44 = a1;
LABEL_35:
      *v44 = v39;
      if (++v37 == 8)
      {
        break;
      }
    }

    v13 = v36++;
    if (v36 == a2)
    {
      return 1;
    }
  }

  return v36 + 1 == a2;
}

void sub_262384F54(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  v3 = fopen(v2, "rb");
  if (!v3)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/io/wnpy.hpp", 93);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 191);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "load_npy", 8);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v13, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v13);
    std::ostream::put();
    std::ostream::flush();
    std::operator+<char>();
    sub_262386940(&v13);
    if (v14 < 0)
    {
      operator delete(v13.__locale_);
    }

    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(&v13, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v13);
    std::ostream::put();
    std::ostream::flush();
  }

  memset(v18, 0, sizeof(v18));
  v17 = 0;
  v16 = 0;
  memset(&v15, 0, sizeof(v15));
  sub_262386A40(v3, v18, &v15, &v17, &v16);
}

void sub_262385B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_26238888C(&a16);
  *v38 = &unk_2874EF0B8;
  v41 = v38[16];
  if (v41)
  {
    sub_2621D1B78(v41);
  }

  if (a38 < 0)
  {
    operator delete(__p);
  }

  v42 = *(v39 - 104);
  if (v42)
  {
    operator delete(v42);
  }

  _Unwind_Resume(a1);
}

void sub_262385C5C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  v3 = fopen(v2, "rb");
  if (!v3)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/io/wnpy.hpp", 93);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 191);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "load_npy", 8);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v13, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v13);
    std::ostream::put();
    std::ostream::flush();
    std::operator+<char>();
    sub_262386940(&v13);
    if (v14 < 0)
    {
      operator delete(v13.__locale_);
    }

    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(&v13, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v13);
    std::ostream::put();
    std::ostream::flush();
  }

  memset(v18, 0, sizeof(v18));
  v17 = 0;
  v16 = 0;
  memset(&v15, 0, sizeof(v15));
  sub_262386A40(v3, v18, &v15, &v17, &v16);
}

void sub_262386844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_26238888C(&a16);
  *v38 = &unk_2874EF6A8;
  v41 = v38[16];
  if (v41)
  {
    sub_2621D1B78(v41);
  }

  if (a38 < 0)
  {
    operator delete(__p);
  }

  v42 = *(v39 - 104);
  if (v42)
  {
    operator delete(v42);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_262386940(uint64_t a1)
{
  v2 = sub_2621D552C(MEMORY[0x277D82670], "err", 3);
  v3 = sub_2621D552C(v2, " ", 1);
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v7 = sub_2621D552C(v3, v5, v6);
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(&v10, MEMORY[0x277D82680]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v10);
  std::ostream::put();
  return std::ostream::flush();
}

void sub_262386A40(FILE *__stream, uint64_t a2, uint64_t a3, uint64_t a4, BOOL *a5)
{
  v84 = *MEMORY[0x277D85DE8];
  if (fread(__ptr, 1uLL, 0xAuLL, __stream) != 10)
  {
    v7 = MEMORY[0x277D82670];
    v8 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v9 = sub_2621D552C(v8, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/io/wnpy.hpp", 93);
    v10 = sub_2621D552C(v9, " ", 1);
    v11 = MEMORY[0x266727260](v10, 61);
    v12 = sub_2621D552C(v11, " ", 1);
    v13 = sub_2621D552C(v12, "parse_npy_header", 16);
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v14 = std::locale::use_facet(&__dst, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&__dst);
    std::ostream::put();
    std::ostream::flush();
    sub_2622FF040("err", "parse_npy_header: fread failed");
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v15 = std::locale::use_facet(&__dst, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(&__dst);
    std::ostream::put();
    std::ostream::flush();
  }

  v16 = fgets(__ptr, 256, __stream);
  sub_2621D0F64(&__str, v16);
  v17 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v18 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  size = __str.__r_.__value_.__l.__size_;
  v20 = __str.__r_.__value_.__r.__words[0];
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = __str.__r_.__value_.__l.__size_;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if (p_str->__r_.__value_.__s.__data_[v21 - 1] != 10)
  {
    v23 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v24 = sub_2621D552C(v23, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/io/wnpy.hpp", 93);
    v25 = sub_2621D552C(v24, " ", 1);
    v26 = MEMORY[0x266727260](v25, 63);
    sub_2621D552C(v26, " ", 1);
    sub_2621D552C(v26, "parse_npy_header", 16);
    std::ios_base::getloc((v26 + *(*v26 - 24)));
    v27 = std::locale::use_facet(&__dst, MEMORY[0x277D82680]);
    (v27->__vftable[2].~facet_0)(v27, 10);
    std::locale::~locale(&__dst);
    std::ostream::put();
    std::ostream::flush();
    v28 = sub_2621D552C(MEMORY[0x277D82670], "err", 3);
    v29 = sub_2621D552C(v28, " ", 1);
    v30 = sub_2621D552C(v29, " ", 1);
    std::ios_base::getloc((v30 + *(*v30 - 24)));
    v31 = std::locale::use_facet(&__dst, MEMORY[0x277D82680]);
    (v31->__vftable[2].~facet_0)(v31, 10);
    std::locale::~locale(&__dst);
    std::ostream::put();
    v32 = MEMORY[0x277D82670];
    std::ostream::flush();
    std::ios_base::getloc((v32 + *(*v32 - 24)));
    v33 = std::locale::use_facet(&__dst, MEMORY[0x277D82680]);
    (v33->__vftable[2].~facet_0)(v33, 10);
    std::locale::~locale(&__dst);
    std::ostream::put();
    std::ostream::flush();
    v17 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    size = __str.__r_.__value_.__l.__size_;
    v20 = __str.__r_.__value_.__r.__words[0];
    v18 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  if (v18 >= 0)
  {
    v34 = &__str;
  }

  else
  {
    v34 = v20;
  }

  if (v18 < 0)
  {
    v17 = size;
  }

  if (v17 < 13)
  {
    goto LABEL_27;
  }

  v35 = v34 + v17;
  v36 = v34;
  while (1)
  {
    v37 = memchr(v36, 102, v17 - 12);
    if (!v37)
    {
      goto LABEL_27;
    }

    if (*v37 == 0x5F6E617274726F66 && *(v37 + 5) == 0x726564726F5F6E61)
    {
      break;
    }

    v36 = (v37 + 1);
    v17 = v35 - v36;
    if (v35 - v36 < 13)
    {
      goto LABEL_27;
    }
  }

  if (v37 == v35 || (v39 = v37 - v34, v37 - v34 == -1))
  {
LABEL_27:
    v40 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v41 = sub_2621D552C(v40, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/io/wnpy.hpp", 93);
    v42 = sub_2621D552C(v41, " ", 1);
    v43 = MEMORY[0x266727260](v42, 69);
    sub_2621D552C(v43, " ", 1);
    sub_2621D552C(v43, "parse_npy_header", 16);
    std::ios_base::getloc((v43 + *(*v43 - 24)));
    v44 = std::locale::use_facet(&__dst, MEMORY[0x277D82680]);
    (v44->__vftable[2].~facet_0)(v44, 10);
    std::locale::~locale(&__dst);
    std::ostream::put();
    std::ostream::flush();
    v45 = sub_2621D552C(MEMORY[0x277D82670], "err", 3);
    v46 = sub_2621D552C(v45, " ", 1);
    v47 = sub_2621D552C(v46, "parse_npy_header: failed to find 'fortran_order'", 48);
    std::ios_base::getloc((v47 + *(*v47 - 24)));
    v48 = std::locale::use_facet(&__dst, MEMORY[0x277D82680]);
    (v48->__vftable[2].~facet_0)(v48, 10);
    std::locale::~locale(&__dst);
    std::ostream::put();
    v49 = MEMORY[0x277D82670];
    std::ostream::flush();
    std::ios_base::getloc((v49 + *(*v49 - 24)));
    v50 = std::locale::use_facet(&__dst, MEMORY[0x277D82680]);
    (v50->__vftable[2].~facet_0)(v50, 10);
    std::locale::~locale(&__dst);
    std::ostream::put();
    std::ostream::flush();
    v39 = -1;
  }

  std::string::basic_string(&__dst, &__str, v39 + 16, 4uLL, &v76);
  v51 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__dst.__r_.__value_.__l.__size_ != 4)
    {
      *a5 = 0;
LABEL_37:
      operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_38:
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = &__str;
      }

      else
      {
        v53 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v54 = __str.__r_.__value_.__l.__size_;
      }

      if (v54 < 1)
      {
        v63 = -1;
      }

      else
      {
        v55 = v53;
        v56 = v53 + v54;
        v57 = v54;
        v58 = v53;
        do
        {
          v59 = memchr(v58, 40, v57);
          if (!v59)
          {
            break;
          }

          v60 = v59;
          if (*v59 == 40)
          {
            goto LABEL_50;
          }

          v58 = (v59 + 1);
          v57 = v56 - (v60 + 1);
        }

        while (v57 > 0);
        v60 = v53 + v54;
LABEL_50:
        v61 = v60 - v53;
        do
        {
          v62 = memchr(v55, 41, v54);
          if (!v62)
          {
            break;
          }

          if (*v62 == 41)
          {
            goto LABEL_55;
          }

          v55 = (v62 + 1);
          v54 = v56 - (v62 + 1);
        }

        while (v54 > 0);
        v62 = v56;
LABEL_55:
        if (v62 == v56)
        {
          v63 = -1;
        }

        else
        {
          v63 = v62 - v53;
        }

        if (v60 != v56 && v61 != -1)
        {
LABEL_63:
          if (v63 == -1)
          {
            v70 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
            v71 = sub_2621D552C(v70, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/io/wnpy.hpp", 93);
            sub_2621D552C(v71, " ", 1);
            v72 = MEMORY[0x277D82670];
            v73 = MEMORY[0x266727260](MEMORY[0x277D82670], 77);
            sub_2621D552C(v73, " ", 1);
            sub_2621D552C(v73, "parse_npy_header", 16);
            std::ios_base::getloc((v73 + *(*v73 - 24)));
            v74 = std::locale::use_facet(&__dst, MEMORY[0x277D82680]);
            (v74->__vftable[2].~facet_0)(v74, 10);
            std::locale::~locale(&__dst);
            std::ostream::put();
            std::ostream::flush();
            sub_262388970("parse_npy_header: failed to find ')'");
            std::ios_base::getloc((v72 + *(*v72 - 24)));
            v75 = std::locale::use_facet(&__dst, MEMORY[0x277D82680]);
            (v75->__vftable[2].~facet_0)(v75, 10);
            std::locale::~locale(&__dst);
            std::ostream::put();
            std::ostream::flush();
          }

          std::string::basic_string(&v80, &__str, v61 + 1, v63 + ~v61, &__dst);
          sub_26238AD98(&v76);
          v79 = 0;
          v78 = 0u;
          v77 = 0u;
          sub_26238ADF8();
        }
      }

      v64 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
      v65 = sub_2621D552C(v64, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/io/wnpy.hpp", 93);
      sub_2621D552C(v65, " ", 1);
      v66 = MEMORY[0x277D82670];
      v67 = MEMORY[0x266727260](MEMORY[0x277D82670], 76);
      sub_2621D552C(v67, " ", 1);
      sub_2621D552C(v67, "parse_npy_header", 16);
      std::ios_base::getloc((v67 + *(*v67 - 24)));
      v68 = std::locale::use_facet(&__dst, MEMORY[0x277D82680]);
      (v68->__vftable[2].~facet_0)(v68, 10);
      std::locale::~locale(&__dst);
      std::ostream::put();
      std::ostream::flush();
      sub_262388970("parse_npy_header: failed to find '('");
      std::ios_base::getloc((v66 + *(*v66 - 24)));
      v69 = std::locale::use_facet(&__dst, MEMORY[0x277D82680]);
      (v69->__vftable[2].~facet_0)(v69, 10);
      std::locale::~locale(&__dst);
      std::ostream::put();
      std::ostream::flush();
      v61 = -1;
      goto LABEL_63;
    }

    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) != 4)
    {
      *a5 = 0;
      goto LABEL_38;
    }

    p_dst = &__dst;
  }

  *a5 = LODWORD(p_dst->__r_.__value_.__l.__data_) == 1702195796;
  if ((v51 & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  goto LABEL_37;
}

void sub_262387E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::locale a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, std::locale a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  std::locale::~locale(&a43);
  if (a42 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_262387FC8(uint64_t a1, char *__src, void *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_2621CBEB0();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    if (v14)
    {
      sub_2621CBEC8(v14);
    }

    v16 = (8 * v15);
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == __src)
        {
          v21 = 1;
        }

        else
        {
          v21 = v12 >> 2;
        }

        sub_2621CBEC8(v21);
      }

      v16 = (v16 - (((v12 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }

    *v16 = *a3;
    memcpy(v16 + 1, __src, *(a1 + 8) - __src);
    v17 = *a1;
    v22 = v16 + *(a1 + 8) - __src + 8;
    *(a1 + 8) = __src;
    v18 = (__src - v17);
    v19 = v16 - (__src - v17);
    memcpy(v19, v17, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v22;
    if (v20)
    {

      operator delete(v20);
    }
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    *(a1 + 8) = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    *(a1 + 8) = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
    }

    *__src = *a3;
  }
}

void sub_2623881DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2623881F4(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *a1 = 0u;
  sub_262234B80(a1 + 16, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 40) = a3;
  *(a1 + 48) = a4;
  *(a1 + 56) = 1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24) - v7;
  if (v8)
  {
    v9 = v8 >> 3;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    v10 = 1;
    do
    {
      v11 = *v7++;
      v10 *= v11;
      *(a1 + 56) = v10;
      --v9;
    }

    while (v9);
  }

  operator new();
}

void sub_262388340(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  MEMORY[0x266727420](v3, 0x10C402FEFCB83);
  v6 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 8);
  if (v7)
  {
    sub_2621D1B78(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2623883B0()
{
  v0 = sub_2621D552C(MEMORY[0x277D82670], "err", 3);
  v1 = sub_2621D552C(v0, " ", 1);
  v2 = sub_2621D552C(v1, "load: fread failed", 18);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v5, MEMORY[0x277D82680]);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v5);
  std::ostream::put();
  return std::ostream::flush();
}

void sub_2623884A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      operator new();
    }

    sub_2621CBEB0();
  }
}

void sub_262388524(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262388540(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_262236A0C(result, a4);
  }

  return result;
}

void sub_262388598(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2623885B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2621CBEB0();
  }
}

void sub_262388634(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_262388650(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      operator new();
    }

    sub_2621CBEB0();
  }
}

void sub_2623886D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2623886F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_2622AD2C4(result, a4);
  }

  return result;
}

void sub_262388748(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_262388764(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 62))
    {
      operator new();
    }

    sub_2621CBEB0();
  }
}

void sub_2623887E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_262388804(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_2621DC9F8(result, a4);
  }

  return result;
}

void sub_262388874(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_26238888C(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  return a1;
}

void **sub_2623888CC(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v1[1] = v2;
      operator delete(v2);
    }

    JUMPOUT(0x266727420);
  }

  return result;
}

void sub_262388934(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_262388970(const char *a1)
{
  v2 = MEMORY[0x277D82670];
  v3 = sub_2621D552C(MEMORY[0x277D82670], "err", 3);
  sub_2621D552C(v3, " ", 1);
  v4 = strlen(a1);
  sub_2621D552C(v2, a1, v4);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v5 = std::locale::use_facet(&v7, MEMORY[0x277D82680]);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(&v7);
  std::ostream::put();
  return std::ostream::flush();
}

void sub_262388A68(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    sub_2621D1B78(locale);
  }

  std::locale::~locale(this);
}

uint64_t sub_262388AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {

    return sub_262389C84(a1, a2, a3, a4, a5, a6);
  }

  if (!*(a1 + 28))
  {
    memset(v120, 0, 48);
    v60 = *(a1 + 40);
    if (!v60)
    {
LABEL_173:
      sub_26238AC18(v120);
      return v60;
    }

    *v125 = 0;
    memset(&v125[8], 0, 32);
    v126 = 0uLL;
    memset(v127, 0, 37);
    sub_26238A830(v120, v125);
    if (v127[0])
    {
      operator delete(v127[0]);
    }

    if (*&v125[32])
    {
      operator delete(*&v125[32]);
    }

    v114 = a4;
    v62 = *&v120[8];
    v63 = *&v120[40] + *&v120[32] - 1;
    v64 = v63 / 0x2A;
    v65 = *(*&v120[8] + 8 * (v63 / 0x2A));
    v66 = 3 * (v63 % 0x2A);
    v67 = v65 + 32 * v66;
    *v67 = 0;
    *(v67 + 8) = a2;
    *(*(v62 + 8 * v64) + 32 * v66 + 16) = a2;
    *(*(v62 + 8 * v64) + 32 * v66 + 24) = a3;
    sub_26238A3E4((*(v62 + 8 * v64) + 32 * v66 + 56), *(a1 + 32));
    v117 = 0;
    v68 = 0;
    v115 = 0;
    v69 = a3 - a2;
    v70 = *&v120[40];
    v71 = *&v120[8];
    v72 = *&v120[40] + *&v120[32] - 1;
    v73 = v72 / 0x2A;
    v74 = 3 * (v72 % 0x2A);
    *(*(*&v120[8] + 8 * v73) + 32 * v74 + 80) = v60;
    v75 = *(v71 + 8 * v73) + 32 * v74;
    v76 = a5;
    *(v75 + 88) = a5;
    *(v75 + 92) = a6;
    v77 = 0xC30C30C30C30C30DLL;
    while (1)
    {
      if ((++v68 & 0xFFF) == 0 && (v68 >> 12) >= v69)
      {
        sub_26238A4E4();
      }

      v79 = v70 + *&v120[32] - 1;
      v80 = (((v79 >> 1) * v77) >> 64) >> 4;
      v81 = *(*&v120[8] + 8 * v80) - 4032 * v80 + 96 * v79;
      v83 = (v81 + 80);
      v82 = *(v81 + 80);
      if (v82)
      {
        (*(*v82 + 16))(v82, v81);
      }

      v84 = *v81;
      if (*v81 <= -995)
      {
        switch(v84)
        {
          case -1000:
            v89 = *(v81 + 16);
            if ((v76 & 0x20) != 0 && v89 == a2)
            {
              goto LABEL_168;
            }

            v90 = v89 - *(v81 + 8);
            v91 = v115;
            if (v115 <= v90)
            {
              v91 = v90;
            }

            if (v117)
            {
              v90 = v91;
            }

            if (v90 == v69)
            {
              v92 = *&v120[8];
              v93 = *&v120[16];
              if (*&v120[16] == *&v120[8])
              {
                v93 = *&v120[8];
              }

              else
              {
                v94 = (((*&v120[32] >> 1) * v77) >> 64) >> 4;
                v95 = (*&v120[8] + 8 * v94);
                v96 = (*v95 - 4032 * v94 + 96 * *&v120[32]);
                v97 = v77;
                v98 = ((((*&v120[40] + *&v120[32]) >> 1) * v77) >> 64) >> 4;
                v99 = *(*&v120[8] + 8 * v98) - 4032 * v98 + 96 * (*&v120[40] + *&v120[32]);
                if (v96 != v99)
                {
                  do
                  {
                    sub_26238A580(v96);
                    v96 += 12;
                    if ((v96 - *v95) == 4032)
                    {
                      v100 = v95[1];
                      ++v95;
                      v96 = v100;
                    }
                  }

                  while (v96 != v99);
                  v92 = *&v120[8];
                  v93 = *&v120[16];
                }

                v76 = a5;
                v77 = v97;
              }

              *&v120[40] = 0;
              v103 = (v93 - v92) >> 3;
              if (v103 >= 3)
              {
                do
                {
                  operator delete(*v92);
                  v92 = (*&v120[8] + 8);
                  *&v120[8] = v92;
                  v103 = (*&v120[16] - v92) >> 3;
                }

                while (v103 > 2);
              }

              if (v103 == 1)
              {
                v104 = 21;
LABEL_159:
                *&v120[32] = v104;
              }

              else if (v103 == 2)
              {
                v104 = 42;
                goto LABEL_159;
              }

              v117 = 1;
              v115 = v69;
              break;
            }

            v115 = v90;
            sub_26238AB64(v120);
            v117 = 1;
            break;
          case -999:
            break;
          case -995:
            v85 = *&v120[32];
            v86 = *&v120[8];
            v87 = *&v120[16];
            if (!*&v120[32])
            {
              v88 = 42 * ((*&v120[16] - *&v120[8]) >> 3) - 1;
              if (*&v120[16] == *&v120[8])
              {
                v88 = 0;
              }

              if ((v88 - *&v120[40]) < 0x2A)
              {
                if (*&v120[16] - *&v120[8] < *&v120[24] - *v120)
                {
                  if (*&v120[8] != *v120)
                  {
                    operator new();
                  }

                  operator new();
                }

                if (*&v120[24] == *v120)
                {
                  v105 = 1;
                }

                else
                {
                  v105 = (*&v120[24] - *v120) >> 2;
                }

                *&v125[32] = v120;
                sub_26223B6E4(v105);
              }

              *&v120[32] = 42;
              *v125 = *(*&v120[16] - 8);
              *&v120[16] -= 8;
              sub_26223B5DC(v120, v125);
              v85 = *&v120[32];
              v86 = *&v120[8];
              v87 = *&v120[16];
            }

            v106 = (((v85 >> 1) * v77) >> 64) >> 4;
            v107 = (v86 + 8 * v106);
            v108 = *v107 - 4032 * v106 + 96 * v85;
            if (v87 == v86)
            {
              v109 = 0;
            }

            else
            {
              v109 = v108;
            }

            if (v109 == *v107)
            {
              v109 = *(v107 - 1) + 4032;
            }

            v110 = *(v81 + 16);
            *(v109 - 96) = *v81;
            *(v109 - 80) = v110;
            *(v109 - 56) = 0;
            *(v109 - 48) = 0;
            *(v109 - 64) = 0;
            *(v109 - 64) = *(v81 + 32);
            *(v109 - 48) = *(v81 + 48);
            *(v81 + 32) = 0;
            *(v81 + 40) = 0;
            *(v81 + 48) = 0;
            *(v109 - 40) = 0;
            *(v109 - 32) = 0;
            *(v109 - 24) = 0;
            *(v109 - 40) = *(v81 + 56);
            *(v109 - 24) = *(v81 + 72);
            *(v81 + 56) = 0;
            *(v81 + 64) = 0;
            *(v81 + 72) = 0;
            v111 = *v83;
            *(v109 - 11) = *(v81 + 85);
            *(v109 - 16) = v111;
            *&v120[32] = vaddq_s64(*&v120[32], xmmword_2623A7860);
            goto LABEL_168;
          default:
            goto LABEL_176;
        }
      }

      else
      {
        if (v84 > -993)
        {
          if (v84 == -992)
          {
            v101 = *(v81 + 16);
            *v125 = *v81;
            *&v125[16] = v101;
            v126 = 0uLL;
            *&v125[32] = 0;
            sub_26238A5D8(&v125[32], *(v81 + 32), *(v81 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v81 + 40) - *(v81 + 32)) >> 3));
            memset(v127, 0, 24);
            sub_26238A658(v127, *(v81 + 56), *(v81 + 64), (*(v81 + 64) - *(v81 + 56)) >> 4);
            v102 = *v83;
            *(&v127[3] + 5) = *(v81 + 85);
            v127[3] = v102;
            (*(**(v81 + 80) + 24))(*(v81 + 80), 1, v81);
            (*(*v127[3] + 24))(v127[3], 0, v125);
            sub_26238A830(v120, v125);
            if (v127[0])
            {
              v127[1] = v127[0];
              operator delete(v127[0]);
            }

            if (*&v125[32])
            {
              *&v126 = *&v125[32];
              operator delete(*&v125[32]);
            }
          }

          else if (v84 != -991)
          {
LABEL_176:
            sub_26238A6CC();
          }

          goto LABEL_169;
        }

        if (v84 != -994)
        {
          if (v84 != -993)
          {
            goto LABEL_176;
          }

LABEL_168:
          sub_26238AB64(v120);
        }
      }

LABEL_169:
      v70 = *&v120[40];
      if (!*&v120[40])
      {
        if (v117)
        {
          v112 = *v114;
          *v112 = a2;
          *(v112 + 8) = a2 + v115;
          v60 = 1;
          *(v112 + 16) = 1;
        }

        else
        {
          v60 = 0;
        }

        goto LABEL_173;
      }
    }
  }

  v128 = 0;
  v129 = 0;
  v130 = 0;
  *v125 = 0;
  memset(&v125[8], 0, 32);
  v126 = 0u;
  memset(v127, 0, 37);
  v12 = *(a1 + 40);
  if (!v12)
  {
LABEL_91:
    v60 = 0;
    goto LABEL_92;
  }

  *&v123 = a3;
  *(&v123 + 1) = a3;
  v124 = 0;
  *v120 = 0;
  memset(&v120[8], 0, 48);
  *__p = 0uLL;
  memset(v122, 0, 21);
  sub_26238A014(&v128, v120);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v120[32])
  {
    operator delete(*&v120[32]);
  }

  v118 = a5;
  v113 = a4;
  v13 = v129;
  *(v129 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  sub_26238A250(v13 - 8, *(a1 + 28), &v123);
  sub_26238A3E4(v129 - 5, *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v116 = a2;
  v17 = a3 - a2;
  v18 = v129;
  *(v129 - 2) = v12;
  *(v18 - 2) = v118;
  *(v18 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v17;
    if (!v19)
    {
      sub_26238A4E4();
    }

    v21 = v18 - 2;
    v20 = *(v18 - 2);
    v22 = v18 - 12;
    if (v20)
    {
      (*(*v20 + 16))(v20, v18 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_38;
        case -992:
          v36 = *(v18 - 5);
          *v120 = *v22;
          *&v120[16] = v36;
          memset(&v120[32], 0, 24);
          sub_26238A5D8(&v120[32], *(v18 - 8), *(v18 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v18 - 7) - *(v18 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v122[0] = 0;
          sub_26238A658(__p, *(v18 - 5), *(v18 - 4), (*(v18 - 4) - *(v18 - 5)) >> 4);
          v37 = *v21;
          *(&v122[1] + 5) = *(v18 - 11);
          v122[1] = v37;
          (*(**v21 + 24))(*v21, 1, v18 - 12);
          (*(*v122[1] + 24))(v122[1], 0, v120);
          sub_26238A014(&v128, v120);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v120[32])
          {
            *&v120[40] = *&v120[32];
            operator delete(*&v120[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_175:
          sub_26238A6CC();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_82;
      }

      if (v23 != -1000)
      {
        goto LABEL_175;
      }

      v24 = *(v18 - 10);
      if ((v118 & 0x20) != 0 && v24 == v116)
      {
LABEL_38:
        v35 = v129 - 12;
        sub_26238A580(v129 - 12);
        v129 = v35;
        goto LABEL_82;
      }

      v25 = v24 - *(v18 - 11);
      if ((v15 & (v14 >= v25)) == 0)
      {
        v26 = *(v18 - 5);
        *v125 = *v22;
        *&v125[16] = v26;
        if (v125 != v22)
        {
          v27 = *(v18 - 8);
          v28 = *(v18 - 7);
          v29 = v28 - v27;
          v30 = *(&v126 + 1);
          v31 = *&v125[32];
          if (*(&v126 + 1) - *&v125[32] < (v28 - v27))
          {
            if (*&v125[32])
            {
              *&v126 = *&v125[32];
              operator delete(*&v125[32]);
              v30 = 0;
              *&v125[32] = 0;
              v126 = 0uLL;
            }

            v32 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 3);
            if (v32 <= 0xAAAAAAAAAAAAAAALL)
            {
              v33 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3);
              if (2 * v33 > v32)
              {
                v32 = 2 * v33;
              }

              if (v33 >= 0x555555555555555)
              {
                v34 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v34 = v32;
              }

              if (v34 <= 0xAAAAAAAAAAAAAAALL)
              {
                sub_262389C2C(v34);
              }
            }

            sub_2621CBEB0();
          }

          v38 = v126;
          if (v126 - *&v125[32] >= v29)
          {
            while (v27 != v28)
            {
              *v31 = *v27;
              *(v31 + 16) = *(v27 + 16);
              v27 = (v27 + 24);
              v31 += 24;
            }
          }

          else
          {
            if (v126 != *&v125[32])
            {
              v39 = (v27 + v126 - *&v125[32]);
              do
              {
                *v31 = *v27;
                *(v31 + 16) = *(v27 + 16);
                v27 = (v27 + 24);
                v31 += 24;
              }

              while (v27 != v39);
              v27 = v39;
            }

            while (v27 != v28)
            {
              v40 = *v27;
              *(v38 + 16) = *(v27 + 2);
              *v38 = v40;
              v38 += 24;
              v27 = (v27 + 24);
            }

            v31 = v38;
          }

          *&v126 = v31;
          v41 = *(v18 - 5);
          v42 = *(v18 - 4);
          v43 = v42 - v41;
          v44 = v127[2];
          v45 = v127[0];
          if ((v127[2] - v127[0]) < (v42 - v41))
          {
            if (v127[0])
            {
              v127[1] = v127[0];
              operator delete(v127[0]);
              v44 = 0;
              memset(v127, 0, 24);
            }

            v46 = v43 >> 4;
            if (!((v43 >> 4) >> 60))
            {
              if (v44 >> 3 > v46)
              {
                v46 = v44 >> 3;
              }

              if (v44 >= 0x7FFFFFFFFFFFFFF0)
              {
                v47 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v47 = v46;
              }

              if (!(v47 >> 60))
              {
                sub_26238A7E8(v47);
              }
            }

            sub_2621CBEB0();
          }

          v48 = v127[1];
          if ((v127[1] - v127[0]) >= v43)
          {
            while (v41 != v42)
            {
              *v45 = *v41;
              v45[1] = *(v41 + 1);
              v41 += 16;
              v45 += 2;
            }
          }

          else
          {
            if (v127[1] != v127[0])
            {
              v49 = &v41[v127[1] - v127[0]];
              do
              {
                *v45 = *v41;
                v45[1] = *(v41 + 1);
                v41 += 16;
                v45 += 2;
              }

              while (v41 != v49);
              v41 = v49;
            }

            while (v41 != v42)
            {
              *v48 = *v41;
              v48[1] = *(v41 + 1);
              v41 += 16;
              v48 += 2;
            }

            v45 = v48;
          }

          v127[1] = v45;
        }

        v50 = *v21;
        *(&v127[3] + 5) = *(v21 + 5);
        v127[3] = v50;
        v14 = v25;
      }

      v51 = v129;
      if (v14 == v17)
      {
        v52 = v128;
        while (v51 != v52)
        {
          v51 -= 12;
          sub_26238A580(v51);
        }

        v129 = v52;
        v15 = 1;
        v14 = v17;
      }

      else
      {
        v53 = v129 - 12;
        sub_26238A580(v129 - 12);
        v129 = v53;
        v15 = 1;
      }
    }

LABEL_82:
    v18 = v129;
  }

  while (v128 != v129);
  if ((v15 & 1) == 0)
  {
    goto LABEL_91;
  }

  v54 = *v113;
  *v54 = v116;
  *(v54 + 8) = v116 + v14;
  *(v54 + 16) = 1;
  if (v126 != *&v125[32])
  {
    v55 = 0xAAAAAAAAAAAAAAABLL * ((v126 - *&v125[32]) >> 3);
    v56 = (*&v125[32] + 16);
    v57 = 1;
    do
    {
      v58 = v54 + 24 * v57;
      *v58 = *(v56 - 1);
      v59 = *v56;
      v56 += 24;
      *(v58 + 16) = v59;
      v19 = v55 > v57++;
    }

    while (v19);
  }

  v60 = 1;
LABEL_92:
  if (v127[0])
  {
    v127[1] = v127[0];
    operator delete(v127[0]);
  }

  if (*&v125[32])
  {
    *&v126 = *&v125[32];
    operator delete(*&v125[32]);
  }

  *v125 = &v128;
  sub_26238A724(v125);
  return v60;
}

void sub_2623899A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  operator delete(v38);
  if (__p)
  {
    operator delete(__p);
  }

  sub_26238AC18(&a17);
  _Unwind_Resume(a1);
}

char *sub_262389A78(char **a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 3) < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      sub_262389BDC(a1, v9);
    }

    sub_2621CBEB0();
  }

  v10 = a1[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  }

  if (v12)
  {
    v13 = *a3;
    v14 = *(a3 + 16);
    v15 = result;
    do
    {
      *v15 = v13;
      v15[16] = v14;
      v15 += 24;
      --v12;
    }

    while (v12);
  }

  if (a2 <= v11)
  {
    a1[1] = &result[24 * a2];
  }

  else
  {
    v16 = &v10[24 * (a2 - v11)];
    v17 = 24 * a2 - 8 * ((v10 - result) >> 3);
    do
    {
      v18 = *a3;
      *(v10 + 2) = *(a3 + 2);
      *v10 = v18;
      v10 += 24;
      v17 -= 24;
    }

    while (v17);
    a1[1] = v16;
  }

  return result;
}

void sub_262389BDC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_262389C2C(a2);
  }

  sub_2621CBEB0();
}

void sub_262389C2C(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_262389C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_27:
    v25 = 0;
    goto LABEL_28;
  }

  *&v40 = a3;
  *(&v40 + 1) = a3;
  v41 = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  sub_26238A014(&v42, v36);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    operator delete(*&v36[32]);
  }

  v13 = v43;
  *(v43 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  sub_26238A250((v13 - 64), *(a1 + 28), &v40);
  sub_26238A3E4((v43 - 40), *(a1 + 32));
  v14 = v43;
  *(v43 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = a3 - a2;
  v16 = 1;
  while (1)
  {
    if ((v16 & 0xFFF) == 0 && (v16 >> 12) >= v15)
    {
      sub_26238A4E4();
    }

    v18 = (v14 - 16);
    v17 = *(v14 - 16);
    v19 = (v14 - 96);
    if (v17)
    {
      (*(*v17 + 16))(v17, v14 - 96);
    }

    v20 = *v19;
    if (*v19 > -994)
    {
      if (v20 != -993)
      {
        if (v20 == -992)
        {
          v23 = *(v14 - 80);
          *v36 = *v19;
          *&v36[16] = v23;
          v37 = 0uLL;
          *&v36[32] = 0;
          sub_26238A5D8(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          sub_26238A658(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v24 = *v18;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v24;
          (*(**v18 + 24))(*v18, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          sub_26238A014(&v42, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v20 != -991)
        {
LABEL_34:
          sub_26238A6CC();
        }

        goto LABEL_26;
      }

      goto LABEL_21;
    }

    if ((v20 + 995) >= 2)
    {
      break;
    }

LABEL_26:
    v14 = v43;
    ++v16;
    if (v42 == v43)
    {
      goto LABEL_27;
    }
  }

  if (v20 != -1000)
  {
    goto LABEL_34;
  }

  v21 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v21 == a2)
  {
LABEL_21:
    v22 = v43 - 96;
    sub_26238A580((v43 - 96));
    v43 = v22;
    goto LABEL_26;
  }

  v27 = *a4;
  *v27 = a2;
  *(v27 + 8) = v21;
  *(v27 + 16) = 1;
  v28 = *(v14 - 64);
  v29 = *(v14 - 56) - v28;
  if (v29)
  {
    v30 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 3);
    v31 = (v28 + 16);
    v32 = 1;
    do
    {
      v33 = v27 + 24 * v32;
      *v33 = *(v31 - 1);
      v34 = *v31;
      v31 += 24;
      *(v33 + 16) = v34;
    }

    while (v30 > v32++);
  }

  v25 = 1;
LABEL_28:
  *v36 = &v42;
  sub_26238A724(v36);
  return v25;
}

void sub_262389FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  sub_26238A53C(&a9);
  a9 = v14 - 104;
  sub_26238A724(&a9);
  _Unwind_Resume(a1);
}

void sub_26238A014(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_2621CBEB0();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x155555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v12 = 96 * v8;
    v13 = *(a2 + 16);
    *v12 = *a2;
    *(v12 + 16) = v13;
    *(v12 + 32) = *(a2 + 32);
    *(v12 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v12 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v12 + 85) = *(a2 + 85);
    *(v12 + 72) = v14;
    *(v12 + 80) = v15;
    v7 = 96 * v8 + 96;
    v24 = (v12 + 96);
    v16 = *a1;
    v17 = a1[1];
    v18 = v12 + *a1 - v17;
    if (*a1 != v17)
    {
      v19 = *a1;
      v20 = v12 + *a1 - v17;
      do
      {
        v21 = *(v19 + 1);
        *v20 = *v19;
        *(v20 + 16) = v21;
        *(v20 + 40) = 0;
        *(v20 + 48) = 0;
        *(v20 + 32) = 0;
        *(v20 + 32) = *(v19 + 2);
        *(v20 + 48) = v19[6];
        v19[4] = 0;
        v19[5] = 0;
        v19[6] = 0;
        *(v20 + 56) = 0;
        *(v20 + 64) = 0;
        *(v20 + 72) = 0;
        *(v20 + 56) = *(v19 + 7);
        *(v20 + 72) = v19[9];
        v19[7] = 0;
        v19[8] = 0;
        v19[9] = 0;
        v22 = v19[10];
        *(v20 + 85) = *(v19 + 85);
        *(v20 + 80) = v22;
        v19 += 12;
        v20 += 96;
      }

      while (v19 != v17);
      do
      {
        sub_26238A580(v16);
        v16 += 12;
      }

      while (v16 != v17);
    }

    v23 = *a1;
    *a1 = v18;
    *(a1 + 1) = v24;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v6;
    v7 = v3 + 96;
  }

  a1[1] = v7;
}

uint64_t *sub_26238A250(uint64_t *result, unint64_t a2, __int128 *a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = v3 - *result;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 >= v6)
    {
      return result;
    }

    v12 = v4 + 24 * a2;
  }

  else
  {
    v8 = result[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v3) >> 3) < v7)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v4) >> 3);
        v10 = 0x5555555555555556 * ((v8 - v4) >> 3);
        if (v10 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        sub_262389C2C(v11);
      }

      sub_2621CBEB0();
    }

    v12 = v3 + 24 * v7;
    v13 = 24 * a2 - 8 * (v5 >> 3);
    do
    {
      v14 = *a3;
      *(v3 + 16) = *(a3 + 2);
      *v3 = v14;
      v3 += 24;
      v13 -= 24;
    }

    while (v13);
  }

  result[1] = v12;
  return result;
}

void sub_26238A3E4(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 16 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_26238A7E8(v10);
      }

      sub_2621CBEB0();
    }

    bzero(a1[1], 16 * v6);
    v11 = v4 + 16 * v6;
  }

  a1[1] = v11;
}

void sub_26238A4E4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x266727160](exception, 12);
  __cxa_throw(exception, &unk_2874EF288, MEMORY[0x277D82628]);
}

void *sub_26238A53C(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_26238A580(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

uint64_t sub_26238A5D8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_262389BDC(result, a4);
  }

  return result;
}

void sub_26238A63C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26238A658(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_26238A7A8(result, a4);
  }

  return result;
}

void sub_26238A6B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_26238A6CC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x266727160](exception, 16);
  __cxa_throw(exception, &unk_2874EF288, MEMORY[0x277D82628]);
}

void sub_26238A724(void ***a1)
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
        v4 -= 12;
        sub_26238A580(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_26238A7A8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_26238A7E8(a2);
  }

  sub_2621CBEB0();
}

void sub_26238A7E8(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_2621C6A34();
}

__n128 sub_26238A830(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = v5 - v6;
  if (v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 42 * ((v5 - v6) >> 3) - 1;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40) + v9;
  if (v8 == v10)
  {
    if (v9 < 0x2A)
    {
      v11 = *(a1 + 24);
      v12 = &v11[-*a1];
      if (v7 < v12)
      {
        if (v11 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v11 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12 >> 2;
      }

      v19 = a1;
      sub_26223B6E4(v13);
    }

    *(a1 + 32) = v9 - 42;
    *&v18 = *v6;
    *(a1 + 8) = v6 + 8;
    sub_26223B72C(a1, &v18);
    v6 = *(a1 + 8);
    v10 = *(a1 + 40) + *(a1 + 32);
  }

  v14 = *&v6[8 * (v10 / 0x2A)] - 4032 * (v10 / 0x2A) + 96 * v10;
  v15 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = v15;
  *(v14 + 40) = 0;
  *(v14 + 48) = 0;
  *(v14 + 32) = 0;
  *(v14 + 32) = *(a2 + 32);
  *(v14 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  result = *(a2 + 56);
  *(v14 + 56) = result;
  *(v14 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v17 = *(a2 + 80);
  *(v14 + 85) = *(a2 + 85);
  *(v14 + 80) = v17;
  ++*(a1 + 40);
  return result;
}

void sub_26238AB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_26238AB64(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_26238A580((*(a1[1] + 8 * (v2 / 0x2A)) - 4032 * (v2 / 0x2A) + 96 * v2));
  v4 = a1[1];
  v3 = a1[2];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 42 * ((v3 - v4) >> 3) - 1;
  }

  v6 = a1[4];
  v7 = a1[5] - 1;
  a1[5] = v7;
  if ((v5 - (v7 + v6)) >= 0x54)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

uint64_t sub_26238AC18(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x2A];
    v7 = *v6 + 96 * v5 + -4032 * (v5 / 0x2A);
    v8 = v3[(*(a1 + 40) + v5) / 0x2A] + 96 * *(a1 + 40) + 96 * v5 + -4032 * ((*(a1 + 40) + v5) / 0x2A);
    if (v7 != v8)
    {
      do
      {
        sub_26238A580(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const std::locale *sub_26238AD98(const std::locale *a1)
{
  v2 = MEMORY[0x266727340]();
  a1[1].__locale_ = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  a1[2].__locale_ = std::locale::use_facet(a1, MEMORY[0x277D826A0]);
  return a1;
}

void sub_26238B228(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void sub_26238B28C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x266727160](exception, 17);
  __cxa_throw(exception, &unk_2874EF288, MEMORY[0x277D82628]);
}

unsigned __int8 *sub_26238B2E4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = sub_262390B5C(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3 && *v7 == 124)
  {
    v9 = *(a1 + 56);
    v10 = v7 + 1;
    v11 = v7 + 1;
    do
    {
      v12 = v11;
      v11 = sub_262390B5C(a1, v11, a3);
    }

    while (v11 != v12);
    if (v12 == v10)
    {
      operator new();
    }

    sub_26238B600();
  }

  return v7;
}

unsigned __int8 *sub_26238B454(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      sub_26238BD18();
    }

    if (a2 != a3)
    {
      do
      {
        v6 = v3;
        v7 = sub_26239076C(a1, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        sub_26238BD9C();
      }
    }

    if (v3 != a3)
    {
      sub_26238B9E8();
    }
  }

  return v3;
}

unsigned __int8 *sub_26238B508(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  result = sub_26238B988(a1, a2, a3);
  if (result == a2)
  {
LABEL_7:
    sub_26238B9E8();
  }

  if (result != a3 && *result == 124)
  {
    v8 = *(a1 + 56);
    if (sub_26238B988(a1, result + 1, a3) != result + 1)
    {
      sub_26238B600();
    }

    goto LABEL_7;
  }

  return result;
}

void sub_26238B5A8()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x266727160](exception, 14);
  __cxa_throw(exception, &unk_2874EF288, MEMORY[0x277D82628]);
}

uint64_t sub_26238B704(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

uint64_t sub_26238B730(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

void sub_26238B760(void *a1)
{
  sub_26238B798(a1);

  JUMPOUT(0x266727420);
}

void *sub_26238B798(void *a1)
{
  *a1 = &unk_2874EF4C0;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_2874EF190;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_26238B850(void *a1)
{
  *a1 = &unk_2874EF190;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_26238B8DC(void *a1)
{
  *a1 = &unk_2874EF190;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_26238B948(void *a1)
{
  sub_26238B798(a1);

  JUMPOUT(0x266727420);
}

unsigned __int8 *sub_26238B988(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_26238BA40(a1, a2, a3);
  if (v6 == a2)
  {
    sub_26238B9E8();
  }

  do
  {
    v7 = v6;
    v6 = sub_26238BA40(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

void sub_26238B9E8()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x266727160](exception, 15);
  __cxa_throw(exception, &unk_2874EF288, MEMORY[0x277D82628]);
}

unsigned __int8 *sub_26238BA40(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 == a3)
  {
LABEL_24:
    v11 = sub_26238CBF0(a1, a2, a3);
    goto LABEL_25;
  }

  v8 = *a2;
  v9 = (v8 - 36);
  if (v9 > 0x3A)
  {
    goto LABEL_13;
  }

  if (((1 << (v8 - 36)) & 0x5800000080004D1) == 0)
  {
    if (v9 == 5)
    {
      if (*(a1 + 36))
      {
        goto LABEL_4;
      }

LABEL_14:
      sub_26238E560(a1);
    }

LABEL_13:
    if ((v8 - 123) < 2)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

LABEL_4:
  v10 = a2 + 1;
  v11 = a2;
  if (a2 + 1 == a3)
  {
    goto LABEL_21;
  }

  v12 = *a2;
  if (v12 != 92)
  {
    goto LABEL_22;
  }

  v13 = *v10;
  if ((v13 - 36) <= 0x3A && ((1 << (v13 - 36)) & 0x5800000080004F1) != 0 || (v13 - 123) < 3)
  {
    sub_26238E560(a1);
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    v11 = sub_26238DD80(a1, v10, a3, 0);
  }

  else
  {
    v14 = sub_26238FFB8(a1, *v10);
    v15 = 2;
    if (!v14)
    {
      v15 = 0;
    }

    v11 = &a2[v15];
  }

  if (v11 == a2)
  {
LABEL_21:
    v12 = *v11;
LABEL_22:
    if (v12 == 46)
    {
      operator new();
    }

    goto LABEL_24;
  }

LABEL_25:
  if (v11 == a2 && v11 != a3)
  {
    v16 = *v11;
    switch(v16)
    {
      case '$':
        sub_26238BD9C();
      case '(':
        sub_26238BE20(a1);
        v17 = *(a1 + 28);
        ++*(a1 + 36);
        v18 = sub_26238B508(a1, v11 + 1, a3);
        if (v18 == a3 || (v19 = v18, *v18 != 41))
        {
          sub_26238BEA8();
        }

        sub_26238BF00(a1);
        --*(a1 + 36);
        v11 = v19 + 1;
        break;
      case '^':
        sub_26238BD18();
    }
  }

  if (v11 == a2)
  {
    return v11;
  }

  v20 = (*(a1 + 28) + 1);

  return sub_26238BF80(a1, v11, a3);
}

uint64_t sub_26238BE20(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

void sub_26238BEA8()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x266727160](exception, 6);
  __cxa_throw(exception, &unk_2874EF288, MEMORY[0x277D82628]);
}

uint64_t sub_26238BF00(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

unsigned __int8 *sub_26238BF80(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = *(a1 + 24) & 0x1F0;
  v5 = *a2;
  if (v5 > 0x3E)
  {
    if (v5 == 63)
    {
      v13 = a2 + 1;
      if (v4)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13 == a3;
      }

      if (!v14)
      {
        *v13;
      }
    }

    else
    {
      if (v5 != 123)
      {
        return a2;
      }

      v7 = a2 + 1;
      v8 = sub_26238C40C(a2 + 1, a3, &v20);
      if (v8 == v7)
      {
        goto LABEL_47;
      }

      if (v8 == a3)
      {
        goto LABEL_48;
      }

      v9 = *v8;
      if (v9 != 44)
      {
        if (v9 == 125)
        {
          v10 = v8 + 1;
          if (!v4 && v10 != a3)
          {
            *v10;
          }

          goto LABEL_37;
        }

LABEL_47:
        sub_26238C4A4();
      }

      v15 = v8 + 1;
      if (v8 + 1 == a3)
      {
        goto LABEL_47;
      }

      if (*v15 == 125)
      {
        v16 = v8 + 2;
        if (!v4 && v16 != a3)
        {
          *v16;
        }

        goto LABEL_37;
      }

      v19 = -1;
      v18 = sub_26238C40C(v8 + 1, a3, &v19);
      if (v18 == v15 || v18 == a3 || *v18 != 125)
      {
LABEL_48:
        sub_26238C4FC();
      }

      if (v19 < v20)
      {
        goto LABEL_47;
      }

      if (!v4 && v18 + 1 != a3)
      {
        v12 = v18[1] == 63;
      }
    }

LABEL_37:
    sub_26238C27C();
  }

  if (v5 == 42)
  {
    v11 = a2 + 1;
    if (v4)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11 == a3;
    }

    if (!v12)
    {
      *v11;
    }

    goto LABEL_37;
  }

  if (v5 == 43)
  {
    v6 = a2 + 1;
    if (!v4 && v6 != a3)
    {
      *v6;
    }

    goto LABEL_37;
  }

  return a2;
}

unsigned __int8 *sub_26238C40C(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result != a2)
      {
        do
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            sub_26238C4A4();
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          ++result;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

void sub_26238C4A4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x266727160](exception, 8);
  __cxa_throw(exception, &unk_2874EF288, MEMORY[0x277D82628]);
}

void sub_26238C4FC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x266727160](exception, 7);
  __cxa_throw(exception, &unk_2874EF288, MEMORY[0x277D82628]);
}

uint64_t sub_26238C554(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned int *sub_26238C580(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return sub_26238C5B0(result, a3);
  }

  return result;
}

unsigned int *sub_26238C5B0(unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

unsigned int *sub_26238C600(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return sub_26238C5B0(result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

void sub_26238C6B0(void *a1)
{
  sub_26238B798(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_26238C6EC(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_26238C724(void *a1)
{
  *a1 = &unk_2874EF190;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_26238C7B0(void *a1)
{
  *a1 = &unk_2874EF190;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_26238C81C(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_26238C84C(void *a1)
{
  *a1 = &unk_2874EF190;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_26238C8D8(void *a1)
{
  *a1 = &unk_2874EF190;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_26238C944(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

void sub_26238C998(void *a1)
{
  *a1 = &unk_2874EF190;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_26238CA24(void *a1)
{
  *a1 = &unk_2874EF190;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_26238CA90(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void sub_26238CAF8(void *a1)
{
  *a1 = &unk_2874EF190;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_26238CB84(void *a1)
{
  *a1 = &unk_2874EF190;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

_BYTE *sub_26238CBF0(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 != a3)
    {
      v3 = a2[1] == 94;
      sub_26238D7FC();
    }

    sub_26238D7A4();
  }

  return a2;
}

void sub_26238D690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void sub_26238D7A4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x266727160](exception, 5);
  __cxa_throw(exception, &unk_2874EF288, MEMORY[0x277D82628]);
}

void sub_26238D97C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  sub_2621DED18(&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  sub_26238F214(&a10);
  v16 = v10[8].__locale_;
  if (v16)
  {
    v10[9].__locale_ = v16;
    operator delete(v16);
  }

  v17 = *v13;
  if (*v13)
  {
    v10[6].__locale_ = v17;
    operator delete(v17);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v12;
  v18 = v10[1].__locale_;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  MEMORY[0x266727420](v10, v11);
  _Unwind_Resume(a1);
}

void sub_26238DA20(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    sub_262339540(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_262339540(a1 + 40, &v7);
}

_BYTE *sub_26238DABC(uint64_t a1, _BYTE *__src, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - __src - 2;
  if (a3 - __src < 2)
  {
    goto LABEL_14;
  }

  v6 = __src;
  for (i = __src; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    sub_26238D7A4();
  }

  sub_26238EFAC(&v12, a1, __src, v6);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    sub_26238F164();
  }

  return v6 + 2;
}

unsigned __int8 *sub_26238DB8C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_26238E508();
  }

  v7 = *a2;
  if (v7 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v7 != 115)
      {
        if (v7 != 119)
        {
          goto LABEL_26;
        }

        *(a5 + 160) |= 0x500u;
        sub_26238DA20(a5, 95);
        return a2 + 1;
      }

      v9 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v7 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          *(a4 + 8) = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      if (v7 != 100)
      {
        goto LABEL_26;
      }

      v9 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v9;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (!*a2)
    {
      if (*(a4 + 23) < 0)
      {
        *(a4 + 8) = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    if (v7 == 68)
    {
      v8 = *(a5 + 164) | 0x400;
LABEL_23:
      *(a5 + 164) = v8;
      return a2 + 1;
    }

    goto LABEL_26;
  }

  if (v7 == 83)
  {
    v8 = *(a5 + 164) | 0x4000;
    goto LABEL_23;
  }

  if (v7 == 87)
  {
    *(a5 + 164) |= 0x500u;
    v15 = 95;
    if (*(a5 + 169) == 1)
    {
      v14 = (*(**(a5 + 24) + 40))(*(a5 + 24), 95);
      v10 = a5 + 64;
      v11 = &v14;
    }

    else
    {
      if (*(a5 + 170) != 1)
      {
        sub_262339540(a5 + 64, &v15);
        return a2 + 1;
      }

      v13 = 95;
      v10 = a5 + 64;
      v11 = &v13;
    }

    sub_262339540(v10, v11);
    return a2 + 1;
  }

LABEL_26:

  return sub_26238EBD0(a1, a2, a3, a4);
}

unsigned __int8 *sub_26238DD80(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_71:
    sub_26238E508();
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 12;
          goto LABEL_66;
        }

        goto LABEL_50;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 10;
          goto LABEL_66;
        }

        goto LABEL_50;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 13;
            goto LABEL_66;
          }

          goto LABEL_50;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 9;
            goto LABEL_66;
          }

          goto LABEL_50;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 11;
            goto LABEL_66;
          }

          goto LABEL_50;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    goto LABEL_50;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 7;
        goto LABEL_66;
      }

LABEL_50:
      sub_26238E560(a1);
    case 'b':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 8;
LABEL_66:
        *a4 = v9;
        return a2 + 1;
      }

      goto LABEL_50;
  }

LABEL_39:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_71;
  }

  v6 = v5 - 48;
  v7 = a2 + 1;
  if (a2 + 1 != a3 && (*v7 & 0xF8) == 0x30)
  {
    v6 = *v7 + 8 * v6 - 48;
    v7 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v8 = *v7 + 8 * v6 - 48;
      if ((*v7 & 0xF8) == 0x30)
      {
        v7 = a2 + 3;
        v6 = v8;
      }
    }
  }

  if (!a4)
  {
    sub_26238E560(a1);
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = v6;
  *(a4 + 1) = 0;
  return v7;
}

void sub_26238E064(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  sub_26238E140(v6, v7);
}

void sub_26238E140(uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      sub_2621CBEB0();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v12 = (2 * v8);
    v13 = &v12[-(v7 >> 1)];
    *v12 = *a2;
    v5 = v12 + 1;
    memcpy(v13, v6, v7);
    *a1 = v13;
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

void sub_26238E238(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  sub_26238FCAC(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_26238E2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26238E2FC(void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      sub_2621CBEB0();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x555555555555555)
      {
        operator new();
      }

      sub_2621C6A34();
    }

    v12 = 48 * v8;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 24);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(v12 + 40) = *(a2 + 5);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v7 = 48 * v8 + 48;
    v14 = *a1;
    v15 = a1[1] - *a1;
    *(v12 + 24) = v13;
    v16 = 48 * v8 - v15;
    memcpy((v12 - v15), v14, v15);
    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = (v3 + 48);
  }

  a1[1] = v7;
}

uint64_t sub_26238E46C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_26238E4B0()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x266727160](exception, 9);
  __cxa_throw(exception, &unk_2874EF288, MEMORY[0x277D82628]);
}

void sub_26238E508()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x266727160](exception, 3);
  __cxa_throw(exception, &unk_2874EF288, MEMORY[0x277D82628]);
}

void sub_26238E560(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_26238E6D8(_Unwind_Exception *a1)
{
  std::locale::~locale(v2 + 2);
  v2->__locale_ = &unk_2874EF190;
  locale = v2[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  MEMORY[0x266727420](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t sub_26238E744(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void sub_26238E78C(void *a1)
{
  *a1 = &unk_2874EF190;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_26238E818(void *a1)
{
  *a1 = &unk_2874EF190;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_26238E884(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void sub_26238E8CC(std::locale *a1)
{
  a1->__locale_ = &unk_2874EF310;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2874EF190;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x266727420);
}

std::locale *sub_26238E978(std::locale *a1)
{
  a1->__locale_ = &unk_2874EF310;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2874EF190;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t sub_26238EA04(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

void sub_26238EA98(std::locale *a1)
{
  a1->__locale_ = &unk_2874EF2E0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2874EF190;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x266727420);
}

std::locale *sub_26238EB44(std::locale *a1)
{
  a1->__locale_ = &unk_2874EF2E0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2874EF190;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

unsigned __int8 *sub_26238EBD0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 > 0x71)
  {
    if (*a2 > 0x74u)
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_95;
        }

        v7 = a2[1];
        if ((v7 & 0xF8) != 0x30 && (v7 & 0xFE) != 0x38 && (v7 | 0x20u) - 97 >= 6)
        {
          goto LABEL_95;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_95;
        }

        v8 = *v4;
        if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38 && (v8 | 0x20u) - 97 >= 6)
        {
          goto LABEL_95;
        }

LABEL_43:
        if (v4 + 1 == a3)
        {
          goto LABEL_95;
        }

        v9 = v4[1];
        v10 = -48;
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
        {
          v9 |= 0x20u;
          if ((v9 - 97) >= 6u)
          {
            goto LABEL_95;
          }

          v10 = -87;
        }

        if (v4 + 2 == a3)
        {
LABEL_95:
          sub_26238E508();
        }

        v11 = v4[2];
        v12 = -48;
        if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
        {
          v11 |= 0x20u;
          if ((v11 - 97) >= 6u)
          {
            goto LABEL_95;
          }

          v12 = -87;
        }

        if (!a4)
        {
          sub_26238E560(a1);
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = v12 + v11 + 16 * (v10 + v9);
        *(a4 + 1) = 0;
        v4 += 3;
        return v4;
      }

      if (v5 != 118)
      {
        if (v5 != 120)
        {
          goto LABEL_70;
        }

        goto LABEL_43;
      }

      if (!a4)
      {
        goto LABEL_75;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v13 = 11;
LABEL_88:
      *a4 = v13;
      return a2 + 1;
    }

    if (v5 == 114)
    {
      if (!a4)
      {
        goto LABEL_75;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v13 = 13;
      goto LABEL_88;
    }

    if (v5 == 116)
    {
      if (!a4)
      {
        goto LABEL_75;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v13 = 9;
      goto LABEL_88;
    }

    goto LABEL_70;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (!a4)
      {
        goto LABEL_75;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v13 = 12;
      goto LABEL_88;
    }

    if (v5 == 110)
    {
      if (!a4)
      {
        goto LABEL_75;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v13 = 10;
      goto LABEL_88;
    }

LABEL_70:
    if (v5 < 0 || (*(*(*(a1 + 8) + 16) + 4 * *a2) & 0x500) == 0)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = v5;
        *(a4 + 1) = 0;
        return a2 + 1;
      }

LABEL_75:
      sub_26238E560(a1);
    }

    goto LABEL_95;
  }

  if (v5 == 48)
  {
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    goto LABEL_75;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_95;
    }

    goto LABEL_70;
  }

  if (a2 + 1 == a3)
  {
    goto LABEL_95;
  }

  v6 = a2[1];
  if (((v6 & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_95;
  }

  if (!a4)
  {
    sub_26238E560(a1);
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = v6 & 0x1F;
  *(a4 + 1) = 0;
  return a2 + 2;
}

void sub_26238EFAC(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  sub_26238FCAC(&__s, __src, a4, a4 - __src);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a1 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a2 + 16) + 32))(&v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v9 = *(a1 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a1, &__s);
    goto LABEL_9;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_26238F130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26238F164()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x266727160](exception, 1);
  __cxa_throw(exception, &unk_2874EF288, MEMORY[0x277D82628]);
}

void sub_26238F1BC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x266727160](exception, 2);
  __cxa_throw(exception, &unk_2874EF288, MEMORY[0x277D82628]);
}

void sub_26238F214(void ***a1)
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
        sub_2621CD70C(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_26238F298(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v9 = 0;
    v10 = *(a1 + 168);
    goto LABEL_61;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_38;
  }

  LOBYTE(__src) = *v4;
  v6 = v4[1];
  HIBYTE(__src) = v4[1];
  if (*(a1 + 169) == 1)
  {
    LOBYTE(__src) = (*(**(a1 + 24) + 40))(*(a1 + 24));
    HIBYTE(__src) = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  __s.__r_.__value_.__s.__data_[2] = 0;
  std::__get_collation_name(&v75, &__s);
  __p = v75;
  size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v75.__r_.__value_.__r.__words[2]);
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v75.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    goto LABEL_14;
  }

  (*(**(a1 + 32) + 32))(&v75);
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v75;
  if ((SHIBYTE(v75.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v75.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(v75.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_167;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_167:
    std::string::operator=(&__p, &__s);
    goto LABEL_9;
  }

  *__p.__r_.__value_.__l.__data_ = 0;
  __p.__r_.__value_.__l.__size_ = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }

LABEL_38:
    v10 = 0;
    v9 = 1;
    goto LABEL_39;
  }

  v23 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v23)
  {
    goto LABEL_38;
  }

LABEL_16:
  v11 = *(a1 + 112);
  v12 = *(a1 + 120) - v11;
  if (v12)
  {
    v13 = v12 >> 1;
    if ((v12 >> 1) <= 1)
    {
      v13 = 1;
    }

    v14 = (v11 + 1);
    while (__src != *(v14 - 1) || HIBYTE(__src) != *v14)
    {
      v14 += 2;
      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_163;
  }

LABEL_25:
  if (*(a1 + 170) == 1 && *(a1 + 88) != *(a1 + 96))
  {
    sub_26238FACC(&__s, a1 + 16, &__src, &v75);
    v16 = *(a1 + 88);
    v17 = *(a1 + 96) - v16;
    if (v17)
    {
      v18 = 0;
      v19 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 4);
      while (sub_26225E3EC(v16, &__s) > 0 || sub_26225E3EC(&__s, v16 + 3) >= 1)
      {
        ++v18;
        v16 += 6;
        if (v18 >= v19)
        {
          goto LABEL_32;
        }
      }

      v21 = 5;
      v20 = 1;
    }

    else
    {
LABEL_32:
      v20 = 0;
      v21 = 0;
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v20)
    {
      v22 = 1;
      goto LABEL_143;
    }
  }

  if (*(a1 + 136) == *(a1 + 144))
  {
    v22 = 0;
    goto LABEL_145;
  }

  sub_26238FB90(&__s, a1 + 16, &__src, &v75);
  v38 = *(a1 + 136);
  v39 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v40 = *(a1 + 144) - v38;
  if (v40)
  {
    v41 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s = &__s;
    }

    else
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if (v41 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
    }

    v45 = 1;
    v46 = 1;
    while (1)
    {
      v47 = *(v38 + 23);
      v48 = v47;
      if ((v47 & 0x80u) != 0)
      {
        v47 = *(v38 + 8);
      }

      if (v42 == v47)
      {
        v49 = v48 >= 0 ? v38 : *v38;
        if (!memcmp(p_s, v49, v42))
        {
          break;
        }
      }

      v46 = v45++ < v41;
      v38 += 24;
      if (!--v44)
      {
        goto LABEL_140;
      }
    }

    v22 = 1;
    v21 = 5;
    if (v39 < 0)
    {
LABEL_141:
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v46 = 0;
LABEL_140:
    v21 = 0;
    v22 = 0;
    if (v39 < 0)
    {
      goto LABEL_141;
    }
  }

  if (!v46)
  {
LABEL_145:
    if (__src < 0)
    {
      v70 = *(a1 + 164);
    }

    else
    {
      v67 = *(a1 + 160);
      v68 = *(*(a1 + 24) + 16);
      v69 = *(v68 + 4 * __src);
      if (((v69 & v67) != 0 || __src == 95 && (v67 & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((*(v68 + 4 * SHIBYTE(__src)) & v67) != 0 || (v67 & 0x80) != 0 && SHIBYTE(__src) == 95))
      {
        goto LABEL_163;
      }

      v70 = *(a1 + 164);
      if ((v69 & v70) != 0 || __src == 95 && (v70 & 0x80) != 0)
      {
LABEL_162:
        v10 = v22;
LABEL_164:
        v9 = 2;
        goto LABEL_61;
      }
    }

    if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
    {
      if ((*(*(*(a1 + 24) + 16) + 4 * SHIBYTE(__src)) & v70) == 0)
      {
        v10 = 1;
        if (SHIBYTE(__src) != 95 || (v70 & 0x80) == 0)
        {
          goto LABEL_164;
        }
      }

      goto LABEL_162;
    }

LABEL_163:
    v10 = 1;
    goto LABEL_164;
  }

LABEL_143:
  v9 = 2;
  v10 = v22;
  if (v21)
  {
    goto LABEL_61;
  }

LABEL_39:
  v24 = **(a2 + 16);
  v75.__r_.__value_.__s.__data_[0] = **(a2 + 16);
  if (*(a1 + 169) == 1)
  {
    LODWORD(v24) = (*(**(a1 + 24) + 40))(*(a1 + 24), v24);
    v75.__r_.__value_.__s.__data_[0] = v24;
  }

  v25 = *(a1 + 40);
  v26 = *(a1 + 48) - v25;
  if (v26)
  {
    if (v26 <= 1)
    {
      v26 = 1;
    }

    do
    {
      v27 = *v25++;
      if (v27 == v24)
      {
        goto LABEL_60;
      }
    }

    while (--v26);
  }

  v28 = *(a1 + 164);
  if (v28 || *(a1 + 64) != *(a1 + 72))
  {
    if ((v24 & 0x80000000) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v24) & v28) == 0)
    {
      v29 = (v24 == 95) & (v28 >> 7);
    }

    else
    {
      LOBYTE(v29) = 1;
    }

    v30 = *(a1 + 72);
    v31 = memchr(*(a1 + 64), v24, v30 - *(a1 + 64));
    v32 = !v31 || v31 == v30;
    v33 = !v32;
    if ((v29 & 1) == 0 && !v33)
    {
LABEL_60:
      v10 = 1;
      goto LABEL_61;
    }
  }

  v37 = *(a1 + 88);
  v36 = *(a1 + 96);
  if (v37 == v36)
  {
    goto LABEL_99;
  }

  if (*(a1 + 170) == 1)
  {
    sub_26238FACC(&__s, a1 + 16, &v75, &v75.__r_.__value_.__s.__data_[1]);
    v37 = *(a1 + 88);
    v36 = *(a1 + 96);
  }

  else
  {
    *(&__s.__r_.__value_.__s + 23) = 1;
    LOWORD(__s.__r_.__value_.__l.__data_) = v24;
  }

  v50 = v36 - v37;
  if (v50)
  {
    v51 = 0;
    v52 = 0xAAAAAAAAAAAAAAABLL * (v50 >> 4);
    while (sub_26225E3EC(v37, &__s) > 0 || sub_26225E3EC(&__s, v37 + 3) >= 1)
    {
      ++v51;
      v37 += 48;
      if (v51 >= v52)
      {
        goto LABEL_95;
      }
    }

    v53 = 1;
    v10 = 1;
  }

  else
  {
LABEL_95:
    v53 = 0;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if ((v53 & 1) == 0)
  {
LABEL_99:
    if (*(a1 + 136) == *(a1 + 144))
    {
LABEL_134:
      v65 = *(a1 + 160);
      if ((v75.__r_.__value_.__s.__data_[0] & 0x8000000000000000) == 0 && (*(*(*(a1 + 24) + 16) + 4 * v75.__r_.__value_.__s.__data_[0]) & v65) != 0)
      {
        goto LABEL_60;
      }

      v66 = (v65 >> 7) & 1;
      if (v75.__r_.__value_.__s.__data_[0] != 95)
      {
        LOBYTE(v66) = 0;
      }

      v10 |= v66;
      goto LABEL_61;
    }

    v54 = &__s;
    sub_26238FB90(&__s, a1 + 16, &v75, &v75.__r_.__value_.__s.__data_[1]);
    v55 = *(a1 + 136);
    v56 = *(a1 + 144) - v55;
    if (v56)
    {
      v71 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      v72 = v9;
      v57 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 3);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v58 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v54 = __s.__r_.__value_.__r.__words[0];
      }

      if (v57 <= 1)
      {
        v59 = 1;
      }

      else
      {
        v59 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 3);
      }

      v60 = 1;
      v61 = 1;
      while (1)
      {
        v62 = *(v55 + 23);
        v63 = v62;
        if ((v62 & 0x80u) != 0)
        {
          v62 = *(v55 + 8);
        }

        if (v58 == v62)
        {
          v64 = v63 >= 0 ? v55 : *v55;
          if (!memcmp(v54, v64, v58))
          {
            break;
          }
        }

        v61 = v60++ < v57;
        v55 += 24;
        if (!--v59)
        {
          goto LABEL_131;
        }
      }

      v10 = 1;
LABEL_131:
      v9 = v72;
      if ((v71 & 0x80) == 0)
      {
LABEL_133:
        if (v61)
        {
          goto LABEL_61;
        }

        goto LABEL_134;
      }
    }

    else
    {
      v61 = 0;
      if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_133;
      }
    }

    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_133;
  }

LABEL_61:
  if (*(a1 + 168) == (v10 & 1))
  {
    v34 = 0;
    v35 = -993;
  }

  else
  {
    *(a2 + 16) += v9;
    v34 = *(a1 + 8);
    v35 = -995;
  }

  *a2 = v35;
  *(a2 + 80) = v34;
}

void sub_26238FA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_26238FACC(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  sub_26238FCAC(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_26238FB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_26238FB90(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  sub_26238FCAC(__p, __src, a4, a4 - __src);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_26238FC90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_26238FCAC(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2621CC980();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

void sub_26238FD5C(std::locale *a1)
{
  sub_26238FD94(a1);

  JUMPOUT(0x266727420);
}

std::locale *sub_26238FD94(std::locale *a1)
{
  a1->__locale_ = &unk_2874EF400;
  v7 = a1 + 17;
  sub_2621DED18(&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  sub_26238F214(&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2874EF190;
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

uint64_t sub_26238FE80(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void sub_26238FEC0(void *a1)
{
  *a1 = &unk_2874EF190;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_26238FF4C(void *a1)
{
  *a1 = &unk_2874EF190;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_26238FFB8(uint64_t a1, unsigned __int8 a2)
{
  if (((a2 & 0xF8) == 0x30 || (a2 & 0xFE) == 0x38) && a2 - 49 <= 8)
  {
    if (a2 - 48 <= *(a1 + 28))
    {
      sub_262390070(a1);
    }

    sub_262390018();
  }

  return 0;
}

void sub_262390018()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x266727160](exception, 4);
  __cxa_throw(exception, &unk_2874EF288, MEMORY[0x277D82628]);
}

void sub_262390070(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 1) == 0)
  {
    if ((v1 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

unsigned int *sub_2623901A0(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_262390018();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void sub_26239025C(void *a1)
{
  *a1 = &unk_2874EF190;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_2623902E8(void *a1)
{
  *a1 = &unk_2874EF190;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_262390354(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = v4;
      v8 = *(a2 + 16);
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v8++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void sub_2623903E0(std::locale *a1)
{
  a1->__locale_ = &unk_2874EF3A0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2874EF190;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x266727420);
}

std::locale *sub_26239048C(std::locale *a1)
{
  a1->__locale_ = &unk_2874EF3A0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2874EF190;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t sub_262390518(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      v8 = *(v3 + 8) != *v3;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v9 = 0;
      while (1)
      {
        v10 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v9));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v9));
        if (v10 != result)
        {
          break;
        }

        if (v4 == ++v9)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void sub_262390634(std::locale *a1)
{
  a1->__locale_ = &unk_2874EF370;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2874EF190;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x266727420);
}

std::locale *sub_2623906E0(std::locale *a1)
{
  a1->__locale_ = &unk_2874EF370;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2874EF190;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

unsigned __int8 *sub_26239076C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 28);
    v8 = *a2;
    if ((a2 + 1 != a3 || v8 != 36) && ((v8 - 46) > 0x2E || ((1 << (v8 - 46)) & 0x600000000001) == 0))
    {
      sub_26238E560(a1);
    }

    v10 = sub_262390AE4(a1, a2, a3);
    v11 = v10;
    if (v10 == v3)
    {
      if (*v10 == 46)
      {
        operator new();
      }

      v11 = sub_26238CBF0(a1, v3, a3);
    }

    if (v11 == v3 && v11 != a3 && v11 + 1 != a3 && *v11 == 92)
    {
      v12 = v11[1];
      if (v12 == 40)
      {
        v13 = v11 + 2;
        sub_26238BE20(a1);
        v14 = *(a1 + 28);
        do
        {
          v15 = v13;
          v16 = sub_26239076C(a1, v13, a3);
          v13 = v16;
        }

        while (v16 != v15);
        if (v15 == a3 || v16 + 1 == a3 || *v16 != 92 || v16[1] != 41)
        {
          sub_26238BEA8();
        }

        v11 = v16 + 2;
        sub_26238BF00(a1);
      }

      else
      {
        v17 = sub_26238FFB8(a1, v12);
        v18 = 2;
        if (!v17)
        {
          v18 = 0;
        }

        v11 += v18;
      }
    }

    if (v11 != v3)
    {
      if (v11 != a3)
      {
        v19 = (*(a1 + 28) + 1);
        v20 = *v11;
        if (v20 == 42)
        {
          v21 = (*(a1 + 28) + 1);
          sub_26238C27C();
        }

        if (v11 + 1 != a3 && v20 == 92 && v11[1] == 123)
        {
          v28 = 0;
          v22 = sub_26238C40C(v11 + 2, a3, &v28);
          if (v22 == v11 + 2)
          {
            goto LABEL_54;
          }

          if (v22 != a3)
          {
            v23 = v22 + 1;
            v24 = *v22;
            if (v24 == 44)
            {
              v27 = -1;
              v25 = sub_26238C40C(v22 + 1, a3, &v27);
              if (v25 != a3 && v25 + 1 != a3 && *v25 == 92 && v25[1] == 125)
              {
                if (v27 == -1 || v27 >= v28)
                {
                  sub_26238C27C();
                }

LABEL_54:
                sub_26238C4A4();
              }
            }

            else if (v23 != a3 && v24 == 92 && *v23 == 125)
            {
              sub_26238C27C();
            }
          }

          sub_26238C4FC();
        }
      }

      return v11;
    }
  }

  return v3;
}

_BYTE *sub_262390AE4(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  if (a2 != a3 && a2 + 1 != a3 && *a2 == 92)
  {
    v3 = a2[1];
    if ((v3 - 36) <= 0x3A && ((1 << (v3 - 36)) & 0x580000000000441) != 0)
    {
      sub_26238E560(a1);
    }
  }

  return a2;
}

unsigned __int8 *sub_262390B5C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *a2;
  if (v6 > 0x5B)
  {
    if (v6 == 92)
    {
      if (a2 + 1 == a3)
      {
        v12 = *(a1 + 56);
        v13 = *(a1 + 28);
        goto LABEL_32;
      }

      v9 = a2[1];
      if (v9 == 66 || v9 == 98)
      {
        sub_2623912A8();
      }

      goto LABEL_23;
    }

    if (v6 == 94)
    {
      sub_26238BD18();
    }

LABEL_24:
    v15 = *(a1 + 56);
    v13 = *(a1 + 28);
    if (v6 <= 62)
    {
      if (v6 > 40)
      {
        if (v6 != 41)
        {
          if (v6 == 46)
          {
            operator new();
          }

          if ((v6 - 42) < 2)
          {
LABEL_86:
            sub_262391158();
          }

LABEL_74:
          sub_26238E560(a1);
        }

        return a2;
      }

      if (v6 != 36)
      {
        if (v6 != 40)
        {
          goto LABEL_74;
        }

        goto LABEL_37;
      }

      return a2;
    }

    v16 = (v6 - 92);
    if (v16 <= 0x21)
    {
      if (((1 << (v6 - 92)) & 0x300000006) != 0)
      {
        return a2;
      }

      if (v6 == 92)
      {
LABEL_32:
        v17 = a2 + 1;
        if (a2 + 1 == a3)
        {
          sub_26238E508();
        }

        v18 = *v17;
        if (v18 == 48)
        {
          sub_26238E560(a1);
        }

        if ((v18 - 49) <= 8)
        {
          v26 = (v18 - 48);
          v27 = a2 + 2;
          if (a2 + 2 == a3)
          {
            goto LABEL_57;
          }

          do
          {
            v28 = *v27;
            if ((v28 - 48) > 9)
            {
              break;
            }

            if (v26 >= 0x19999999)
            {
              goto LABEL_85;
            }

            v26 = v28 + 10 * v26 - 48;
            ++v27;
          }

          while (v27 != a3);
          if (v26)
          {
LABEL_57:
            if (v26 <= v13)
            {
              sub_262390070(a1);
            }
          }

LABEL_85:
          sub_262390018();
        }

        if (*v17 > 0x63u)
        {
          if (v18 == 119)
          {
            goto LABEL_76;
          }

          if (v18 == 115)
          {
            goto LABEL_80;
          }

          if (v18 != 100)
          {
            goto LABEL_77;
          }
        }

        else if (v18 != 68)
        {
          if (v18 != 83)
          {
            if (v18 == 87)
            {
LABEL_76:
              sub_26238D7FC();
            }

LABEL_77:
            v29 = sub_26238EBD0(a1, a2 + 1, a3, 0);
            if (v29 == v17)
            {
              v25 = a2;
            }

            else
            {
              v25 = v29;
            }

            goto LABEL_49;
          }

LABEL_80:
          sub_26238D7FC();
        }

        sub_26238D7FC();
      }

      if (v16 == 31)
      {
        goto LABEL_86;
      }
    }

    if (v6 != 91)
    {
      if (v6 == 63)
      {
        goto LABEL_86;
      }

      goto LABEL_74;
    }

    v25 = sub_26238CBF0(a1, a2, a3);
    goto LABEL_49;
  }

  if (v6 == 36)
  {
    sub_26238BD9C();
  }

  if (v6 != 40)
  {
    goto LABEL_24;
  }

  if (a2 + 1 != a3)
  {
    if (a2[1] == 63 && a2 + 2 != a3)
    {
      v7 = a2[2];
      if (v7 == 33)
      {
        sub_26238AD98(v31);
        v32 = 0u;
        v34 = 0;
        v33 = 0u;
        LODWORD(v32) = *(a1 + 24);
        sub_26238ADF8(v31, a2 + 3, a3);
        v14 = *(a1 + 28);
        sub_26239133C();
      }

      if (v7 == 61)
      {
        sub_26238AD98(v31);
        v32 = 0u;
        v34 = 0;
        v33 = 0u;
        LODWORD(v32) = *(a1 + 24);
        sub_26238ADF8(v31, a2 + 3, a3);
        v8 = *(a1 + 28);
        sub_26239133C();
      }
    }

LABEL_23:
    v6 = *a2;
    goto LABEL_24;
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 28);
LABEL_37:
  if (a2 + 1 == a3)
  {
    goto LABEL_84;
  }

  if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
  {
    v19 = (a1 + 36);
    ++*(a1 + 36);
    v20 = sub_26238B2E4(a1, a2 + 3, a3);
    if (v20 == a3)
    {
      goto LABEL_84;
    }

    v21 = v20;
    if (*v20 != 41)
    {
      goto LABEL_84;
    }
  }

  else
  {
    sub_26238BE20(a1);
    v23 = *(a1 + 28);
    v19 = (a1 + 36);
    ++*(a1 + 36);
    v24 = sub_26238B2E4(a1, a2 + 1, a3);
    if (v24 == a3 || (v21 = v24, *v24 != 41))
    {
LABEL_84:
      sub_26238BEA8();
    }

    sub_26238BF00(a1);
  }

  --*v19;
  v25 = v21 + 1;
LABEL_49:
  result = a2;
  if (v25 != a2)
  {
    v30 = (*(a1 + 28) + 1);

    return sub_26238BF80(a1, v25, a3);
  }

  return result;
}

void sub_262391158()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x266727160](exception, 11);
  __cxa_throw(exception, &unk_2874EF288, MEMORY[0x277D82628]);
}

void sub_2623911B0(void *a1)
{
  *a1 = &unk_2874EF190;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_26239123C(void *a1)
{
  *a1 = &unk_2874EF190;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_26239140C(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0uLL;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  v20 = 0;
  v4 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v21 = 0;
  *&v22 = v5;
  *(&v22 + 1) = v5;
  v23 = 0;
  sub_262389A78(&__p, v4, &v22);
  v24 = v6;
  v25 = v6;
  v26 = 0;
  v27 = v22;
  v28 = v23;
  v30 = v6;
  v29 = 1;
  v7 = *(a2 + 88) & 0xFFF;
  v8 = *(a2 + 16);
  if (v8 == *(a2 + 8))
  {
    v9 = *(a2 + 92);
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 84) == sub_262389C84(a1 + 16, v8, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v9))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v10 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v10 = __p;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v20 - __p) >> 3);
  if (v11 < 2)
  {
LABEL_10:
    if (!v10)
    {
      return;
    }

    goto LABEL_11;
  }

  v12 = *(a1 + 80);
  v13 = *(a2 + 32);
  v14 = 2;
  v15 = 1;
  do
  {
    v16 = &v10[24 * v15];
    v17 = v13 + 24 * (v12 + v14 - 2);
    *v17 = *v16;
    *(v17 + 16) = v16[16];
    v15 = v14;
  }

  while (v11 > v14++);
LABEL_11:

  operator delete(v10);
}

void sub_262391594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2623915B0(std::locale *a1)
{
  a1->__locale_ = &unk_2874EF250;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_2621D1B78(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2874EF190;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x266727420);
}

std::locale *sub_26239166C(std::locale *a1)
{
  a1->__locale_ = &unk_2874EF250;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_2621D1B78(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2874EF190;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t sub_262391708(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

void sub_26239181C(std::locale *a1)
{
  a1->__locale_ = &unk_2874EF220;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2874EF190;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x266727420);
}

std::locale *sub_2623918C8(std::locale *a1)
{
  a1->__locale_ = &unk_2874EF220;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2874EF190;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

uint64_t sub_262391958(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_262391988(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x266727420);
}

uint64_t sub_2623919C4(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_2623919D8(void *a1)
{
  *a1 = &unk_2874EF190;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x266727420);
}

void *sub_262391A64(void *a1)
{
  *a1 = &unk_2874EF190;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_262391AF4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  sub_262229F7C(a1 + 152, a2);
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  *(a1 + 88) = *(a2 + 40);
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  v8 = *a3;
  if (!*a3)
  {
    v9 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v10 = sub_2621D552C(v9, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/expression/../common/tile_helper.hpp", 118);
    sub_2621D552C(v10, " ", 1);
    v11 = MEMORY[0x277D82670];
    v12 = MEMORY[0x266727260](MEMORY[0x277D82670], 167);
    sub_2621D552C(v12, " ", 1);
    sub_2621D552C(v12, "init", 4);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    sub_262395374();
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v14 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    v8 = *a3;
  }

  *a1 = v8;
  v15 = a3[1];
  if (!v15)
  {
    v16 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v17 = sub_2621D552C(v16, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/expression/../common/tile_helper.hpp", 118);
    sub_2621D552C(v17, " ", 1);
    v18 = MEMORY[0x277D82670];
    v19 = MEMORY[0x266727260](MEMORY[0x277D82670], 171);
    sub_2621D552C(v19, " ", 1);
    sub_2621D552C(v19, "init", 4);
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v20 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    sub_262395374();
    std::ios_base::getloc((v18 + *(*v18 - 24)));
    v21 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v21->__vftable[2].~facet_0)(v21, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    v15 = a3[1];
  }

  *(a1 + 8) = *(a2 + 8) * v15;
  *(a1 + 48) = a3[1];
  *(a1 + 104) = 1;
  return a1;
}

void sub_262391EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  *(v10 + 152) = &unk_2874EF6A8;
  v12 = *(v10 + 280);
  if (v12)
  {
    sub_2621D1B78(v12);
  }

  _Unwind_Resume(a1);
}

void sub_262391EF0(uint64_t a1, _OWORD *a2)
{
  *a1 = &unk_2874EF0B8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 128) = 0;
  v3 = a2[1];
  v2 = a2[2];
  *(a1 + 8) = *a2;
  *(a1 + 40) = v2;
  *(a1 + 24) = v3;
  v4 = *(a1 + 16);
  *(a1 + 56) = v4;
  *(a1 + 64) = 1;
  *(a1 + 104) = *(a1 + 8) * v4;
  *(a1 + 112) = 0;
  sub_262224B84();
}

void sub_2623923E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  v27 = *(v25 + 128);
  if (v27)
  {
    sub_2621D1B78(v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26239244C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 185) == 1)
  {
    v4 = MEMORY[0x277D82670];
    v5 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
    v6 = sub_2621D552C(v5, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
    v7 = sub_2621D552C(v6, " ", 1);
    v8 = MEMORY[0x266727260](v7, 664);
    v9 = sub_2621D552C(v8, " ", 1);
    v10 = sub_2621D552C(v9, "operator=", 9);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(v17, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(v17);
    std::ostream::put();
    std::ostream::flush();
    sub_2621D8074("err", "empty tensor in");
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v12 = std::locale::use_facet(v17, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(v17);
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

  if (*(a2 + 168) != *(a1 + 120) || sub_2621D9A90(a2 + 56, a1 + 8))
  {
    sub_262393E48(a1, a2);
  }

  else
  {
    sub_262224008(v17, a2);
    sub_262393E48(v17, a2);
    sub_262224104(a1, v17);
    *&v17[0] = &unk_2874EF0B8;
    if (v18)
    {
      sub_2621D1B78(v18);
    }
  }

  return a1;
}

void sub_262392708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_2621D1B78(a25);
  }

  _Unwind_Resume(exception_object);
}

void *sub_262392750(void *a1)
{
  a1[55] = &unk_2874EF0B8;
  v2 = a1[71];
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  a1[36] = &unk_2874EF0B8;
  v3 = a1[52];
  if (v3)
  {
    sub_2621D1B78(v3);
  }

  sub_2621C57C8((a1 + 6));
  return a1;
}

void sub_2623927D4(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v139 = *MEMORY[0x277D85DE8];
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
  v9 = *(a2 + 424);
  if (v7 == v8)
  {
    if (*(a2 + 424) && *(a2 + 576) == 1)
    {
      v125 = 0u;
      v126 = 0u;
      v124 = 0u;
      v10 = *(a1 + 104);
      v11 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v10)
        {
          v12 = 0;
          v13 = a1 + 16;
          do
          {
            v14 = sub_26239328C(a2, &v124);
            v15 = 0;
            *(v11 + 4 * v12) = v14;
            do
            {
              v16 = *(&v124 + v15 + 8) + 1;
              *(&v124 + v15 + 8) = v16;
              if (v16 != *(v13 + v15))
              {
                break;
              }

              *(&v124 + v15 + 8) = 0;
              v15 -= 8;
            }

            while (v15 != -16);
            ++v12;
          }

          while (v12 != v10);
        }
      }

      else if (v10)
      {
        v87 = 0;
        v88 = *(a1 + 56);
        v89 = *(a1 + 64);
        v90 = a1 + 16;
        do
        {
          v91 = v88 * v124;
          v92 = v11 + 4 * v89 * *(&v124 + 1);
          v93 = sub_26239328C(a2, &v124);
          v94 = 0;
          *(v92 + 4 * v91) = v93;
          do
          {
            v95 = *(&v124 + v94 + 8) + 1;
            *(&v124 + v94 + 8) = v95;
            if (v95 != *(v90 + v94))
            {
              break;
            }

            *(&v124 + v94 + 8) = 0;
            v94 -= 8;
          }

          while (v94 != -16);
          ++v87;
        }

        while (v87 != v10);
      }
    }

    else
    {
      v125 = 0u;
      v126 = 0u;
      v124 = 0u;
      v39 = *(a1 + 104);
      v40 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v39)
        {
          v41 = 0;
          v42 = a1 + 16;
          do
          {
            v43 = sub_2623931A8(a2, &v124);
            v44 = 0;
            *(v40 + 4 * v41) = v43;
            do
            {
              v45 = *(&v124 + v44 + 8) + 1;
              *(&v124 + v44 + 8) = v45;
              if (v45 != *(v42 + v44))
              {
                break;
              }

              *(&v124 + v44 + 8) = 0;
              v44 -= 8;
            }

            while (v44 != -16);
            ++v41;
          }

          while (v41 != v39);
        }
      }

      else if (v39)
      {
        v68 = 0;
        v69 = *(a1 + 56);
        v70 = *(a1 + 64);
        v71 = a1 + 16;
        do
        {
          v72 = v69 * v124;
          v73 = v40 + 4 * v70 * *(&v124 + 1);
          v74 = sub_2623931A8(a2, &v124);
          v75 = 0;
          *(v73 + 4 * v72) = v74;
          do
          {
            v76 = *(&v124 + v75 + 8) + 1;
            *(&v124 + v75 + 8) = v76;
            if (v76 != *(v71 + v75))
            {
              break;
            }

            *(&v124 + v75 + 8) = 0;
            v75 -= 8;
          }

          while (v75 != -16);
          ++v68;
        }

        while (v68 != v39);
      }
    }
  }

  else
  {
    if (*(a2 + 424) && *(a2 + 576) == 1)
    {
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v124 = 0u;
      v116 = 0u;
      v117 = 0u;
      v115 = 0u;
      sub_2621D96E4(&v124, v5, a2, &v115);
      v17 = 0;
      v18 = &v115;
      v19 = 1;
      do
      {
        v20 = *v18;
        v21 = *(v5 + v17);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v19 = 0;
        v18 = &v115 + 1;
        v17 = 1;
      }

      while (v20 == v21);
      if (v20 != v21)
      {
        v22 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v23 = sub_2621D552C(v22, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v23, " ", 1);
        v24 = MEMORY[0x277D82670];
        v25 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v25, " ", 1);
        sub_2621D552C(v25, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v25 + *(*v25 - 24)));
        v26 = std::locale::use_facet(v121, MEMORY[0x277D82680]);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(v121);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v24 + *(*v24 - 24)));
        v27 = std::locale::use_facet(v121, MEMORY[0x277D82680]);
        (v27->__vftable[2].~facet_0)(v27, 10);
        std::locale::~locale(v121);
        std::ostream::put();
        std::ostream::flush();
      }

      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      *&v121[0].__locale_ = 0u;
      v118 = 0u;
      v119 = 0u;
      v28 = *(a1 + 104);
      v29 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v28)
        {
          v30 = 0;
          v32 = *(&v125 + 1);
          v31 = v126;
          if (((v126 - *(&v125 + 1)) >> 3) <= 1)
          {
            v33 = 1;
          }

          else
          {
            v33 = (v126 - *(&v125 + 1)) >> 3;
          }

          do
          {
            v118 = *&v121[0].__locale_;
            if (v31 != v32)
            {
              v34 = v32;
              v35 = v33;
              do
              {
                v36 = *v34++;
                *(&v118 + v36) = 0;
                --v35;
              }

              while (v35);
            }

            *(v29 + 4 * v30) = sub_26239328C(a2, &v118);
            for (i = 1; i != -1; --i)
            {
              v38 = (v121[i].__locale_ + 1);
              v121[i].__locale_ = v38;
              if (v38 != *(&v115 + i * 8))
              {
                break;
              }

              v121[i].__locale_ = 0;
            }

            ++v30;
          }

          while (v30 != v28);
        }
      }

      else if (v28)
      {
        v96 = 0;
        v97 = *(&v125 + 1);
        v114 = v126;
        if (((v126 - *(&v125 + 1)) >> 3) <= 1)
        {
          v98 = 1;
        }

        else
        {
          v98 = (v126 - *(&v125 + 1)) >> 3;
        }

        v112 = *(a1 + 56);
        v108 = v98;
        v110 = *(a1 + 64);
        do
        {
          locale = v121[0].__locale_;
          v99 = v121[1].__locale_;
          v118 = *&v121[0].__locale_;
          if (v114 != v97)
          {
            v101 = v97;
            v102 = v108;
            do
            {
              v103 = *v101++;
              *(&v118 + v103) = 0;
              --v102;
            }

            while (v102);
          }

          *(v29 + 4 * v110 * v99 + 4 * v112 * locale) = sub_26239328C(a2, &v118);
          for (j = 1; j != -1; --j)
          {
            v105 = (v121[j].__locale_ + 1);
            v121[j].__locale_ = v105;
            if (v105 != *(&v115 + j * 8))
            {
              break;
            }

            v121[j].__locale_ = 0;
          }

          ++v96;
        }

        while (v96 != v28);
      }
    }

    else
    {
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v124 = 0u;
      v116 = 0u;
      v117 = 0u;
      v115 = 0u;
      sub_2621D96E4(&v124, v5, a2, &v115);
      v46 = 0;
      v47 = &v115;
      v48 = 1;
      do
      {
        v49 = *v47;
        v50 = *(v5 + v46);
        if ((v48 & 1) == 0)
        {
          break;
        }

        v48 = 0;
        v47 = &v115 + 1;
        v46 = 1;
      }

      while (v49 == v50);
      if (v49 != v50)
      {
        v51 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v52 = sub_2621D552C(v51, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v52, " ", 1);
        v53 = MEMORY[0x277D82670];
        v54 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v54, " ", 1);
        sub_2621D552C(v54, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v54 + *(*v54 - 24)));
        v55 = std::locale::use_facet(v121, MEMORY[0x277D82680]);
        (v55->__vftable[2].~facet_0)(v55, 10);
        std::locale::~locale(v121);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v53 + *(*v53 - 24)));
        v56 = std::locale::use_facet(v121, MEMORY[0x277D82680]);
        (v56->__vftable[2].~facet_0)(v56, 10);
        std::locale::~locale(v121);
        std::ostream::put();
        std::ostream::flush();
      }

      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      *&v121[0].__locale_ = 0u;
      v118 = 0u;
      v119 = 0u;
      v57 = *(a1 + 104);
      v58 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v57)
        {
          v59 = 0;
          v61 = *(&v125 + 1);
          v60 = v126;
          if (((v126 - *(&v125 + 1)) >> 3) <= 1)
          {
            v62 = 1;
          }

          else
          {
            v62 = (v126 - *(&v125 + 1)) >> 3;
          }

          do
          {
            v118 = *&v121[0].__locale_;
            if (v60 != v61)
            {
              v63 = v61;
              v64 = v62;
              do
              {
                v65 = *v63++;
                *(&v118 + v65) = 0;
                --v64;
              }

              while (v64);
            }

            *(v58 + 4 * v59) = sub_2623931A8(a2, &v118);
            for (k = 1; k != -1; --k)
            {
              v67 = (v121[k].__locale_ + 1);
              v121[k].__locale_ = v67;
              if (v67 != *(&v115 + k * 8))
              {
                break;
              }

              v121[k].__locale_ = 0;
            }

            ++v59;
          }

          while (v59 != v57);
        }
      }

      else if (v57)
      {
        v77 = 0;
        v78 = *(&v125 + 1);
        v113 = v126;
        if (((v126 - *(&v125 + 1)) >> 3) <= 1)
        {
          v79 = 1;
        }

        else
        {
          v79 = (v126 - *(&v125 + 1)) >> 3;
        }

        v111 = *(a1 + 56);
        v107 = v79;
        v109 = *(a1 + 64);
        do
        {
          v81 = v121[0].__locale_;
          v80 = v121[1].__locale_;
          v118 = *&v121[0].__locale_;
          if (v113 != v78)
          {
            v82 = v78;
            v83 = v107;
            do
            {
              v84 = *v82++;
              *(&v118 + v84) = 0;
              --v83;
            }

            while (v83);
          }

          *(v58 + 4 * v109 * v80 + 4 * v111 * v81) = sub_2623931A8(a2, &v118);
          for (m = 1; m != -1; --m)
          {
            v86 = (v121[m].__locale_ + 1);
            v121[m].__locale_ = v86;
            if (v86 != *(&v115 + m * 8))
            {
              break;
            }

            v121[m].__locale_ = 0;
          }

          ++v77;
        }

        while (v77 != v57);
      }
    }

    sub_2621C57C8(&v124);
  }

  v106 = *MEMORY[0x277D85DE8];
}

void sub_262393174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::locale a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::locale::~locale(&a25);
  sub_2621C57C8(&a31);
  _Unwind_Resume(a1);
}

float sub_2623931A8(uint64_t a1, void *a2)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = 0;
  sub_26223494C(a1 + 48, a2, &v12, v14, &v11, v13);
  if (*(a1 + 424) == 1)
  {
    v3 = v12;
    v4 = *(a1 + 432);
  }

  else
  {
    v3 = *(a1 + 344) * v14[0];
    v4 = *(a1 + 432) + 4 * *(a1 + 352) * v14[1];
  }

  v5 = (v4 + 4 * v3);
  if (*(a1 + 576) == 1)
  {
    v6 = v11;
    v7 = *(a1 + 584);
  }

  else
  {
    v6 = *(a1 + 496) * v13[0];
    v7 = *(a1 + 584) + 4 * *(a1 + 504) * v13[1];
  }

  v8 = *(v7 + 4 * v6);
  v9 = *MEMORY[0x277D85DE8];
  return *v5 / v8;
}

float sub_26239328C(uint64_t a1, void *a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = 0;
  sub_26223494C(a1 + 48, a2, &v6, v8, &v5, v7);
  v3 = *MEMORY[0x277D85DE8];
  return *(*(a1 + 432) + 4 * v6) / *(*(a1 + 584) + 4 * v5);
}

void sub_262393314(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v177 = *MEMORY[0x277D85DE8];
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
    if (*(a2 + 184))
    {
      v163 = 0uLL;
      v164 = 0uLL;
      v162 = 0uLL;
      v9 = *(a1 + 104);
      v10 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v9)
        {
          v11 = *(a2 + 192);
          do
          {
            v12 = *v11++;
            *v10++ = expf(v12);
            --v9;
          }

          while (v9);
        }
      }

      else if (v9)
      {
        v78 = 0;
        v79 = *(a1 + 56);
        v80 = *(a1 + 64);
        v81 = *(a2 + 192);
        v82 = a1 + 16;
        do
        {
          v83 = v79 * v162;
          v84 = &v10[v80 * *(&v162 + 1)];
          v85 = expf(*(v81 + 4 * v78));
          v86 = 0;
          v84[v83] = v85;
          do
          {
            v87 = *(&v162 + v86 + 8) + 1;
            *(&v162 + v86 + 8) = v87;
            if (v87 != *(v82 + v86))
            {
              break;
            }

            *(&v162 + v86 + 8) = 0;
            v86 -= 8;
          }

          while (v86 != -16);
          ++v78;
        }

        while (v78 != v9);
      }
    }

    else
    {
      v163 = 0uLL;
      v164 = 0uLL;
      v162 = 0uLL;
      v40 = *(a1 + 104);
      v41 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v40)
        {
          v42 = 0;
          v43 = *(a2 + 104);
          v44 = *(a2 + 112);
          v45 = *(a2 + 192);
          do
          {
            v46 = expf(*(v45 + 4 * v44 * *(&v162 + 1) + 4 * v43 * v162));
            v47 = 0;
            *(v41 + 4 * v42) = v46;
            do
            {
              v48 = *(&v162 + v47 + 8) + 1;
              *(&v162 + v47 + 8) = v48;
              if (v48 != *(a1 + 16 + v47))
              {
                break;
              }

              *(&v162 + v47 + 8) = 0;
              v47 -= 8;
            }

            while (v47 != -16);
            ++v42;
          }

          while (v42 != v40);
        }
      }

      else if (v40)
      {
        v88 = 0;
        v148 = *(a1 + 64);
        v152 = *(a1 + 56);
        v89 = *(a2 + 104);
        v90 = *(a2 + 112);
        v91 = a1 + 16;
        v92 = *(a2 + 192);
        do
        {
          v93 = v152 * v162;
          v94 = v41 + 4 * v148 * *(&v162 + 1);
          v95 = expf(*(v92 + 4 * v90 * *(&v162 + 1) + 4 * v89 * v162));
          v96 = 0;
          *(v94 + 4 * v93) = v95;
          do
          {
            v97 = *(&v162 + v96 + 8) + 1;
            *(&v162 + v96 + 8) = v97;
            if (v97 != *(v91 + v96))
            {
              break;
            }

            *(&v162 + v96 + 8) = 0;
            v96 -= 8;
          }

          while (v96 != -16);
          ++v88;
        }

        while (v88 != v40);
      }
    }
  }

  else
  {
    if (*(a2 + 184))
    {
      v175 = 0uLL;
      v176 = 0uLL;
      v173 = 0uLL;
      v174 = 0uLL;
      v171 = 0uLL;
      v172 = 0uLL;
      v169 = 0uLL;
      v170 = 0uLL;
      v167 = 0uLL;
      v168 = 0uLL;
      v165 = 0uLL;
      v166 = 0uLL;
      v163 = 0uLL;
      v164 = 0uLL;
      v162 = 0uLL;
      v154 = 0uLL;
      v155 = 0uLL;
      v153 = 0uLL;
      sub_2621D96E4(&v162, v5, a2, &v153);
      v13 = 0;
      v14 = &v153;
      v15 = 1;
      do
      {
        v16 = *v14;
        v17 = *(v5 + v13);
        if ((v15 & 1) == 0)
        {
          break;
        }

        v15 = 0;
        v14 = &v153 + 1;
        v13 = 1;
      }

      while (v16 == v17);
      if (v16 != v17)
      {
        v18 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v19 = sub_2621D552C(v18, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v19, " ", 1);
        v20 = MEMORY[0x277D82670];
        v21 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v21, " ", 1);
        sub_2621D552C(v21, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v22 = std::locale::use_facet(v159, MEMORY[0x277D82680]);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(v159);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v20 + *(*v20 - 24)));
        v23 = std::locale::use_facet(v159, MEMORY[0x277D82680]);
        (v23->__vftable[2].~facet_0)(v23, 10);
        std::locale::~locale(v159);
        std::ostream::put();
        std::ostream::flush();
      }

      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      *&v159[0].__locale_ = 0u;
      v156 = 0u;
      v157 = 0u;
      v24 = *(a1 + 104);
      v150 = *(a1 + 144);
      if (*(a1 + 136))
      {
        if (v24)
        {
          v25 = 0;
          v27 = *(&v163 + 1);
          v26 = v164;
          v28 = (v164 - *(&v163 + 1)) >> 3;
          if (v28 <= 1)
          {
            v28 = 1;
          }

          v146 = v28;
          v29 = *(a2 + 192);
          do
          {
            v156 = *&v159[0].__locale_;
            if (v26 != v27)
            {
              v30 = v27;
              v31 = v146;
              do
              {
                v32 = *v30++;
                *(&v156 + v32) = 0;
                --v31;
              }

              while (v31);
            }

            v33 = 0;
            v34 = 0;
            v35 = &v156;
            v36 = 1;
            do
            {
              v37 = v36;
              v34 += *(&v174 + v33) * *v35;
              v35 = (&v156 + 8);
              v33 = 1;
              v36 = 0;
            }

            while ((v37 & 1) != 0);
            *(v150 + 4 * v25) = expf(*(v29 + 4 * v34));
            for (i = 1; i != -1; --i)
            {
              v39 = (v159[i].__locale_ + 1);
              v159[i].__locale_ = v39;
              if (v39 != *(&v153 + i * 8))
              {
                break;
              }

              v159[i].__locale_ = 0;
            }

            ++v25;
          }

          while (v25 != v24);
        }
      }

      else if (v24)
      {
        v98 = 0;
        v99 = *(&v163 + 1);
        v149 = v164;
        if (((v164 - *(&v163 + 1)) >> 3) <= 1)
        {
          v100 = 1;
        }

        else
        {
          v100 = (v164 - *(&v163 + 1)) >> 3;
        }

        v141 = *(a1 + 64);
        v144 = *(a1 + 56);
        v135 = v100;
        v138 = *(a2 + 192);
        do
        {
          locale = v159[0].__locale_;
          v101 = v159[1].__locale_;
          v156 = *&v159[0].__locale_;
          if (v149 != v99)
          {
            v103 = v99;
            v104 = v135;
            do
            {
              v105 = *v103++;
              *(&v156 + v105) = 0;
              --v104;
            }

            while (v104);
          }

          v106 = 0;
          v107 = 0;
          v108 = &v156;
          v109 = 1;
          do
          {
            v110 = v109;
            v107 += *(&v174 + v106) * *v108;
            v108 = (&v156 + 8);
            v106 = 1;
            v109 = 0;
          }

          while ((v110 & 1) != 0);
          *(v150 + 4 * v101 * v141 + 4 * locale * v144) = expf(*(v138 + 4 * v107));
          for (j = 1; j != -1; --j)
          {
            v112 = (v159[j].__locale_ + 1);
            v159[j].__locale_ = v112;
            if (v112 != *(&v153 + j * 8))
            {
              break;
            }

            v159[j].__locale_ = 0;
          }

          ++v98;
        }

        while (v98 != v24);
      }
    }

    else
    {
      v175 = 0uLL;
      v176 = 0uLL;
      v173 = 0uLL;
      v174 = 0uLL;
      v171 = 0uLL;
      v172 = 0uLL;
      v169 = 0uLL;
      v170 = 0uLL;
      v167 = 0uLL;
      v168 = 0uLL;
      v165 = 0uLL;
      v166 = 0uLL;
      v163 = 0uLL;
      v164 = 0uLL;
      v162 = 0uLL;
      v154 = 0uLL;
      v155 = 0uLL;
      v153 = 0uLL;
      sub_2621D96E4(&v162, v5, a2, &v153);
      v49 = 0;
      v50 = &v153;
      v51 = 1;
      do
      {
        v52 = *v50;
        v53 = *(v5 + v49);
        if ((v51 & 1) == 0)
        {
          break;
        }

        v51 = 0;
        v50 = &v153 + 1;
        v49 = 1;
      }

      while (v52 == v53);
      if (v52 != v53)
      {
        v54 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v55 = sub_2621D552C(v54, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v55, " ", 1);
        v56 = MEMORY[0x277D82670];
        v57 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v57, " ", 1);
        sub_2621D552C(v57, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v57 + *(*v57 - 24)));
        v58 = std::locale::use_facet(v159, MEMORY[0x277D82680]);
        (v58->__vftable[2].~facet_0)(v58, 10);
        std::locale::~locale(v159);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v56 + *(*v56 - 24)));
        v59 = std::locale::use_facet(v159, MEMORY[0x277D82680]);
        (v59->__vftable[2].~facet_0)(v59, 10);
        std::locale::~locale(v159);
        std::ostream::put();
        std::ostream::flush();
      }

      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      *&v159[0].__locale_ = 0u;
      v156 = 0u;
      v157 = 0u;
      v60 = *(a1 + 104);
      v147 = *(a1 + 144);
      v151 = v60;
      if (*(a1 + 136))
      {
        if (v60)
        {
          v61 = 0;
          v62 = *(&v163 + 1);
          v143 = v164;
          v63 = (v164 - *(&v163 + 1)) >> 3;
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v137 = v63;
          v140 = *(a2 + 184);
          v64 = *(a2 + 104);
          v65 = *(a2 + 112);
          v66 = *(a2 + 192);
          do
          {
            v156 = *&v159[0].__locale_;
            if (v143 != v62)
            {
              v67 = v62;
              v68 = v137;
              do
              {
                v69 = *v67++;
                *(&v156 + v69) = 0;
                --v68;
              }

              while (v68);
            }

            v70 = 0;
            v71 = 0;
            v72 = &v156;
            v73 = 1;
            do
            {
              v74 = v73;
              v71 += *(&v174 + v70) * *v72;
              v72 = (&v156 + 8);
              v70 = 1;
              v73 = 0;
            }

            while ((v74 & 1) != 0);
            v75 = (v66 + 4 * v71);
            if (!v140)
            {
              v75 = (v66 + 4 * *(&v156 + 1) * v65 + 4 * v156 * v64);
            }

            *(v147 + 4 * v61) = expf(*v75);
            for (k = 1; k != -1; --k)
            {
              v77 = (v159[k].__locale_ + 1);
              v159[k].__locale_ = v77;
              if (v77 != *(&v153 + k * 8))
              {
                break;
              }

              v159[k].__locale_ = 0;
            }

            ++v61;
          }

          while (v61 != v151);
        }
      }

      else if (v60)
      {
        v113 = 0;
        v114 = *(&v163 + 1);
        v145 = v164;
        if (((v164 - *(&v163 + 1)) >> 3) <= 1)
        {
          v115 = 1;
        }

        else
        {
          v115 = (v164 - *(&v163 + 1)) >> 3;
        }

        v139 = *(a1 + 64);
        v142 = *(a1 + 56);
        v136 = *(a2 + 184);
        v134 = *(a2 + 104);
        v132 = v115;
        v133 = *(a2 + 112);
        v116 = *(a2 + 192);
        do
        {
          v117 = v159[0].__locale_;
          v118 = v159[1].__locale_;
          v156 = *&v159[0].__locale_;
          if (v145 != v114)
          {
            v119 = v114;
            v120 = v132;
            do
            {
              v121 = *v119++;
              *(&v156 + v121) = 0;
              --v120;
            }

            while (v120);
          }

          v122 = 0;
          v123 = 0;
          v124 = &v156;
          v125 = 1;
          do
          {
            v126 = v125;
            v123 += *(&v174 + v122) * *v124;
            v124 = (&v156 + 8);
            v122 = 1;
            v125 = 0;
          }

          while ((v126 & 1) != 0);
          v127 = v117 * v142;
          v128 = (v116 + 4 * v123);
          if (!v136)
          {
            v128 = (v116 + 4 * *(&v156 + 1) * v133 + 4 * v156 * v134);
          }

          *(v147 + 4 * v118 * v139 + 4 * v127) = expf(*v128);
          for (m = 1; m != -1; --m)
          {
            v130 = (v159[m].__locale_ + 1);
            v159[m].__locale_ = v130;
            if (v130 != *(&v153 + m * 8))
            {
              break;
            }

            v159[m].__locale_ = 0;
          }

          ++v113;
        }

        while (v113 != v151);
      }
    }

    sub_2621C57C8(&v162);
  }

  v131 = *MEMORY[0x277D85DE8];
}

void sub_262393E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::locale a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  std::locale::~locale(&a31);
  sub_2621C57C8(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_262393E48(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v174 = *MEMORY[0x277D85DE8];
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
      v160 = 0uLL;
      v161 = 0uLL;
      v159 = 0uLL;
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
            v14 = v13;
            if (v13 < *(a2 + 248))
            {
              v14 = *(a2 + 248);
            }

            *v11++ = v14;
            --v10;
          }

          while (v10);
        }
      }

      else if (v10)
      {
        v86 = 0;
        v87 = *(result + 56);
        v88 = *(result + 64);
        v89 = *(a2 + 192);
        do
        {
          v90 = 0;
          v91 = *(v89 + 4 * v86);
          if (v91 < *(a2 + 248))
          {
            v91 = *(a2 + 248);
          }

          v11[v88 * *(&v159 + 1) + v87 * v159] = v91;
          do
          {
            v92 = *(&v159 + v90 + 8) + 1;
            *(&v159 + v90 + 8) = v92;
            result = *(v3 + 16 + v90);
            if (v92 != result)
            {
              break;
            }

            *(&v159 + v90 + 8) = 0;
            v90 -= 8;
          }

          while (v90 != -16);
          ++v86;
        }

        while (v86 != v10);
      }
    }

    else
    {
      v160 = 0uLL;
      v161 = 0uLL;
      v159 = 0uLL;
      v44 = *(result + 104);
      v45 = *(result + 144);
      if (*(result + 136))
      {
        if (v44)
        {
          v46 = 0;
          v47 = *(a2 + 104);
          v48 = *(a2 + 112);
          v49 = *(a2 + 192);
          do
          {
            v50 = 0;
            v51 = *(v49 + 4 * v48 * *(&v159 + 1) + 4 * v47 * v159);
            if (v51 < *(a2 + 248))
            {
              v51 = *(a2 + 248);
            }

            *(v45 + 4 * v46) = v51;
            do
            {
              v52 = *(&v159 + v50 + 8) + 1;
              *(&v159 + v50 + 8) = v52;
              result = *(v3 + 16 + v50);
              if (v52 != result)
              {
                break;
              }

              *(&v159 + v50 + 8) = 0;
              v50 -= 8;
            }

            while (v50 != -16);
            ++v46;
          }

          while (v46 != v44);
        }
      }

      else if (v44)
      {
        v93 = 0;
        v94 = *(result + 56);
        v95 = *(result + 64);
        v96 = *(a2 + 104);
        v97 = *(a2 + 112);
        v98 = *(a2 + 192);
        do
        {
          result = 0;
          v99 = *(v98 + 4 * v97 * *(&v159 + 1) + 4 * v96 * v159);
          if (v99 < *(a2 + 248))
          {
            v99 = *(a2 + 248);
          }

          *(v45 + 4 * v95 * *(&v159 + 1) + 4 * v94 * v159) = v99;
          do
          {
            v100 = *(&v159 + result + 8) + 1;
            *(&v159 + result + 8) = v100;
            if (v100 != *(v3 + 16 + result))
            {
              break;
            }

            *(&v159 + result + 8) = 0;
            result -= 8;
          }

          while (result != -16);
          ++v93;
        }

        while (v93 != v44);
      }
    }
  }

  else
  {
    if (*(a2 + 184))
    {
      v172 = 0uLL;
      v173 = 0uLL;
      v170 = 0uLL;
      v171 = 0uLL;
      v168 = 0uLL;
      v169 = 0uLL;
      v166 = 0uLL;
      v167 = 0uLL;
      v164 = 0uLL;
      v165 = 0uLL;
      v162 = 0uLL;
      v163 = 0uLL;
      v160 = 0uLL;
      v161 = 0uLL;
      v159 = 0uLL;
      v151 = 0uLL;
      v152 = 0uLL;
      v150 = 0uLL;
      sub_2621D96E4(&v159, v5, a2, &v150);
      v15 = 0;
      v16 = &v150;
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
        v16 = &v150 + 1;
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
        v24 = std::locale::use_facet(v156, MEMORY[0x277D82680]);
        (v24->__vftable[2].~facet_0)(v24, 10);
        std::locale::~locale(v156);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v22 + *(*v22 - 24)));
        v25 = std::locale::use_facet(v156, MEMORY[0x277D82680]);
        (v25->__vftable[2].~facet_0)(v25, 10);
        std::locale::~locale(v156);
        std::ostream::put();
        std::ostream::flush();
      }

      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      *&v156[0].__locale_ = 0u;
      v153 = 0u;
      v154 = 0u;
      v26 = *(v3 + 104);
      v27 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v26)
        {
          v28 = 0;
          v30 = *(&v160 + 1);
          v29 = v161;
          v31 = (v161 - *(&v160 + 1)) >> 3;
          if (v31 <= 1)
          {
            v31 = 1;
          }

          v32 = *(a2 + 192);
          do
          {
            v153 = *&v156[0].__locale_;
            if (v29 != v30)
            {
              v33 = v30;
              v34 = v31;
              do
              {
                v35 = *v33++;
                *(&v153 + v35) = 0;
                --v34;
              }

              while (v34);
            }

            v36 = 0;
            v37 = 0;
            v38 = &v153;
            v39 = 1;
            do
            {
              v40 = v39;
              v37 += *(&v171 + v36) * *v38;
              v38 = (&v153 + 8);
              v36 = 1;
              v39 = 0;
            }

            while ((v40 & 1) != 0);
            v41 = *(v32 + 4 * v37);
            if (v41 < *(a2 + 248))
            {
              v41 = *(a2 + 248);
            }

            *(v27 + 4 * v28) = v41;
            for (i = 1; i != -1; --i)
            {
              v43 = (v156[i].__locale_ + 1);
              v156[i].__locale_ = v43;
              if (v43 != *(&v150 + i * 8))
              {
                break;
              }

              v156[i].__locale_ = 0;
            }

            ++v28;
          }

          while (v28 != v26);
        }
      }

      else if (v26)
      {
        v101 = 0;
        v103 = *(&v160 + 1);
        v102 = v161;
        v104 = (v161 - *(&v160 + 1)) >> 3;
        if (v104 <= 1)
        {
          v104 = 1;
        }

        v105 = *(v3 + 56);
        v106 = *(v3 + 64);
        v107 = *(a2 + 192);
        do
        {
          locale = v156[0].__locale_;
          v109 = v156[1].__locale_;
          v153 = *&v156[0].__locale_;
          if (v102 != v103)
          {
            v110 = v103;
            v111 = v104;
            do
            {
              v112 = *v110++;
              *(&v153 + v112) = 0;
              --v111;
            }

            while (v111);
          }

          v113 = 0;
          v114 = 0;
          v115 = &v153;
          v116 = 1;
          do
          {
            v117 = v116;
            v114 += *(&v171 + v113) * *v115;
            v115 = (&v153 + 8);
            v113 = 1;
            v116 = 0;
          }

          while ((v117 & 1) != 0);
          v118 = locale * v105;
          v119 = v109 * v106;
          v120 = *(v107 + 4 * v114);
          if (v120 < *(a2 + 248))
          {
            v120 = *(a2 + 248);
          }

          *(v27 + 4 * v119 + 4 * v118) = v120;
          for (j = 1; j != -1; --j)
          {
            v122 = (v156[j].__locale_ + 1);
            v156[j].__locale_ = v122;
            if (v122 != *(&v150 + j * 8))
            {
              break;
            }

            v156[j].__locale_ = 0;
          }

          ++v101;
        }

        while (v101 != v26);
      }
    }

    else
    {
      v172 = 0uLL;
      v173 = 0uLL;
      v170 = 0uLL;
      v171 = 0uLL;
      v168 = 0uLL;
      v169 = 0uLL;
      v166 = 0uLL;
      v167 = 0uLL;
      v164 = 0uLL;
      v165 = 0uLL;
      v162 = 0uLL;
      v163 = 0uLL;
      v160 = 0uLL;
      v161 = 0uLL;
      v159 = 0uLL;
      v151 = 0uLL;
      v152 = 0uLL;
      v150 = 0uLL;
      sub_2621D96E4(&v159, v5, a2, &v150);
      v53 = 0;
      v54 = &v150;
      v55 = 1;
      do
      {
        v56 = *v54;
        v57 = *(v5 + v53);
        if ((v55 & 1) == 0)
        {
          break;
        }

        v55 = 0;
        v54 = &v150 + 1;
        v53 = 1;
      }

      while (v56 == v57);
      if (v56 != v57)
      {
        v58 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v59 = sub_2621D552C(v58, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v59, " ", 1);
        v60 = MEMORY[0x277D82670];
        v61 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v61, " ", 1);
        sub_2621D552C(v61, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v61 + *(*v61 - 24)));
        v62 = std::locale::use_facet(v156, MEMORY[0x277D82680]);
        (v62->__vftable[2].~facet_0)(v62, 10);
        std::locale::~locale(v156);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v60 + *(*v60 - 24)));
        v63 = std::locale::use_facet(v156, MEMORY[0x277D82680]);
        (v63->__vftable[2].~facet_0)(v63, 10);
        std::locale::~locale(v156);
        std::ostream::put();
        std::ostream::flush();
      }

      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      *&v156[0].__locale_ = 0u;
      v153 = 0u;
      v154 = 0u;
      v64 = *(v3 + 104);
      v65 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v64)
        {
          v66 = 0;
          v68 = *(&v160 + 1);
          v67 = v161;
          v69 = (v161 - *(&v160 + 1)) >> 3;
          if (v69 <= 1)
          {
            v69 = 1;
          }

          v70 = *(a2 + 184);
          v71 = *(a2 + 104);
          v72 = *(a2 + 112);
          v73 = *(a2 + 192);
          do
          {
            v153 = *&v156[0].__locale_;
            if (v67 != v68)
            {
              v74 = v68;
              v75 = v69;
              do
              {
                v76 = *v74++;
                *(&v153 + v76) = 0;
                --v75;
              }

              while (v75);
            }

            v77 = 0;
            v78 = 0;
            v79 = &v153;
            v80 = 1;
            do
            {
              v81 = v80;
              v78 += *(&v171 + v77) * *v79;
              v79 = (&v153 + 8);
              v77 = 1;
              v80 = 0;
            }

            while ((v81 & 1) != 0);
            v82 = (v73 + 4 * v78);
            if (!v70)
            {
              v82 = (v73 + 4 * *(&v153 + 1) * v72 + 4 * v153 * v71);
            }

            v83 = *v82;
            if (*v82 < *(a2 + 248))
            {
              v83 = *(a2 + 248);
            }

            *(v65 + 4 * v66) = v83;
            for (k = 1; k != -1; --k)
            {
              v85 = (v156[k].__locale_ + 1);
              v156[k].__locale_ = v85;
              if (v85 != *(&v150 + k * 8))
              {
                break;
              }

              v156[k].__locale_ = 0;
            }

            ++v66;
          }

          while (v66 != v64);
        }
      }

      else if (v64)
      {
        v123 = 0;
        v125 = *(&v160 + 1);
        v124 = v161;
        v126 = (v161 - *(&v160 + 1)) >> 3;
        if (v126 <= 1)
        {
          v126 = 1;
        }

        v127 = *(v3 + 56);
        v128 = *(v3 + 64);
        v129 = *(a2 + 184);
        v130 = *(a2 + 104);
        v131 = *(a2 + 112);
        v132 = *(a2 + 192);
        do
        {
          v133 = v156[0].__locale_;
          v134 = v156[1].__locale_;
          v153 = *&v156[0].__locale_;
          if (v124 != v125)
          {
            v135 = v125;
            v136 = v126;
            do
            {
              v137 = *v135++;
              *(&v153 + v137) = 0;
              --v136;
            }

            while (v136);
          }

          v138 = 0;
          v139 = 0;
          v140 = &v153;
          v141 = 1;
          do
          {
            v142 = v141;
            v139 += *(&v171 + v138) * *v140;
            v140 = (&v153 + 8);
            v138 = 1;
            v141 = 0;
          }

          while ((v142 & 1) != 0);
          v143 = v133 * v127;
          v144 = v134 * v128;
          v145 = (v132 + 4 * v139);
          if (!v129)
          {
            v145 = (v132 + 4 * *(&v153 + 1) * v131 + 4 * v153 * v130);
          }

          v146 = *v145;
          if (*v145 < *(a2 + 248))
          {
            v146 = *(a2 + 248);
          }

          *(v65 + 4 * v144 + 4 * v143) = v146;
          for (m = 1; m != -1; --m)
          {
            v148 = (v156[m].__locale_ + 1);
            v156[m].__locale_ = v148;
            if (v148 != *(&v150 + m * 8))
            {
              break;
            }

            v156[m].__locale_ = 0;
          }

          ++v123;
        }

        while (v123 != v64);
      }
    }

    result = sub_2621C57C8(&v159);
  }

  v149 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2623948F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  std::locale::~locale(&a21);
  sub_2621C57C8(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_26239492C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v153 = *MEMORY[0x277D85DE8];
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
  v9 = *(a2 + 288);
  if (v7 == v8)
  {
    if (*(a2 + 288))
    {
      v139 = 0uLL;
      v140 = 0uLL;
      v138 = 0uLL;
      v10 = *(result + 104);
      v11 = *(result + 144);
      if (*(result + 136))
      {
        if (v10)
        {
          v12 = 0;
          v13 = *(a2 + 56);
          v14 = *(a2 + 104);
          v15 = *(a2 + 296);
          do
          {
            v16 = 0;
            *(v11 + 4 * v12) = *(v15 + 4 * v14 * (*(&v138 + 1) % v13));
            do
            {
              v17 = *(&v138 + v16 + 8) + 1;
              *(&v138 + v16 + 8) = v17;
              result = *(v3 + 16 + v16);
              if (v17 != result)
              {
                break;
              }

              *(&v138 + v16 + 8) = 0;
              v16 -= 8;
            }

            while (v16 != -16);
            ++v12;
          }

          while (v12 != v10);
        }
      }

      else if (v10)
      {
        v79 = 0;
        v80 = *(result + 56);
        v81 = *(result + 64);
        v82 = *(a2 + 56);
        v83 = *(a2 + 104);
        v84 = *(a2 + 296);
        do
        {
          result = 0;
          *(v11 + 4 * v81 * *(&v138 + 1) + 4 * v80 * v138) = *(v84 + 4 * v83 * (*(&v138 + 1) % v82));
          do
          {
            v85 = *(&v138 + result + 8) + 1;
            *(&v138 + result + 8) = v85;
            if (v85 != *(v3 + 16 + result))
            {
              break;
            }

            *(&v138 + result + 8) = 0;
            result -= 8;
          }

          while (result != -16);
          ++v79;
        }

        while (v79 != v10);
      }
    }

    else
    {
      v139 = 0uLL;
      v140 = 0uLL;
      v138 = 0uLL;
      v44 = *(result + 104);
      v45 = *(result + 144);
      if (*(result + 136))
      {
        if (v44)
        {
          v46 = 0;
          v47 = *(a2 + 56);
          v48 = *(a2 + 208);
          v49 = *(a2 + 296);
          do
          {
            v50 = 0;
            *(v45 + 4 * v46) = *(v49 + 4 * v48 * (*(&v138 + 1) % v47));
            do
            {
              v51 = *(&v138 + v50 + 8) + 1;
              *(&v138 + v50 + 8) = v51;
              result = *(v3 + 16 + v50);
              if (v51 != result)
              {
                break;
              }

              *(&v138 + v50 + 8) = 0;
              v50 -= 8;
            }

            while (v50 != -16);
            ++v46;
          }

          while (v46 != v44);
        }
      }

      else if (v44)
      {
        v86 = 0;
        v87 = *(result + 56);
        v88 = *(result + 64);
        v89 = *(a2 + 56);
        v90 = *(a2 + 208);
        v91 = *(a2 + 296);
        do
        {
          result = 0;
          *(v45 + 4 * v88 * *(&v138 + 1) + 4 * v87 * v138) = *(v91 + 4 * v90 * (*(&v138 + 1) % v89));
          do
          {
            v92 = *(&v138 + result + 8) + 1;
            *(&v138 + result + 8) = v92;
            if (v92 != *(v3 + 16 + result))
            {
              break;
            }

            *(&v138 + result + 8) = 0;
            result -= 8;
          }

          while (result != -16);
          ++v86;
        }

        while (v86 != v44);
      }
    }
  }

  else
  {
    if (*(a2 + 288))
    {
      v151 = 0uLL;
      v152 = 0uLL;
      v149 = 0uLL;
      v150 = 0uLL;
      v147 = 0uLL;
      v148 = 0uLL;
      v145 = 0uLL;
      v146 = 0uLL;
      v143 = 0uLL;
      v144 = 0uLL;
      v141 = 0uLL;
      v142 = 0uLL;
      v139 = 0uLL;
      v140 = 0uLL;
      v138 = 0uLL;
      v130 = 0uLL;
      v131 = 0uLL;
      v129 = 0uLL;
      sub_2621D96E4(&v138, v5, a2, &v129);
      v18 = 0;
      v19 = &v129;
      v20 = 1;
      do
      {
        v21 = *v19;
        v22 = *(v5 + v18);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v20 = 0;
        v19 = &v129 + 1;
        v18 = 1;
      }

      while (v21 == v22);
      if (v21 != v22)
      {
        v23 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v24 = sub_2621D552C(v23, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v24, " ", 1);
        v25 = MEMORY[0x277D82670];
        v26 = MEMORY[0x266727260](MEMORY[0x277D82670], 190);
        sub_2621D552C(v26, " ", 1);
        sub_2621D552C(v26, "broadcast_assign_continue", 25);
        std::ios_base::getloc((v26 + *(*v26 - 24)));
        v27 = std::locale::use_facet(v135, MEMORY[0x277D82680]);
        (v27->__vftable[2].~facet_0)(v27, 10);
        std::locale::~locale(v135);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v25 + *(*v25 - 24)));
        v28 = std::locale::use_facet(v135, MEMORY[0x277D82680]);
        (v28->__vftable[2].~facet_0)(v28, 10);
        std::locale::~locale(v135);
        std::ostream::put();
        std::ostream::flush();
      }

      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      *&v135[0].__locale_ = 0u;
      v132 = 0u;
      v133 = 0u;
      v29 = *(v3 + 104);
      v30 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v29)
        {
          v31 = 0;
          v33 = *(&v139 + 1);
          v32 = v140;
          v34 = (v140 - *(&v139 + 1)) >> 3;
          if (v34 <= 1)
          {
            v34 = 1;
          }

          v35 = *(a2 + 56);
          v36 = *(a2 + 104);
          v37 = *(a2 + 296);
          do
          {
            locale = v135[1].__locale_;
            *(&v132 + 1) = v135[1];
            v39 = v33;
            v40 = v34;
            if (v32 != v33)
            {
              do
              {
                v41 = *v39++;
                *(&v132 + v41) = 0;
                --v40;
              }

              while (v40);
              locale = *(&v132 + 1);
            }

            *(v30 + 4 * v31) = *(v37 + 4 * locale % v35 * v36);
            for (i = 1; i != -1; --i)
            {
              v43 = (v135[i].__locale_ + 1);
              v135[i].__locale_ = v43;
              if (v43 != *(&v129 + i * 8))
              {
                break;
              }

              v135[i].__locale_ = 0;
            }

            ++v31;
          }

          while (v31 != v29);
        }
      }

      else if (v29)
      {
        v93 = 0;
        v95 = *(&v139 + 1);
        v94 = v140;
        v96 = (v140 - *(&v139 + 1)) >> 3;
        if (v96 <= 1)
        {
          v96 = 1;
        }

        v97 = *(v3 + 56);
        v98 = *(v3 + 64);
        v99 = *(a2 + 56);
        v100 = *(a2 + 104);
        v101 = *(a2 + 296);
        do
        {
          v102 = v135[0].__locale_;
          v103 = v135[1].__locale_;
          *(&v132 + 1) = v135[1];
          v104 = v95;
          v105 = v96;
          if (v94 == v95)
          {
            v107 = v135[1].__locale_;
          }

          else
          {
            do
            {
              v106 = *v104++;
              *(&v132 + v106) = 0;
              --v105;
            }

            while (v105);
            v107 = *(&v132 + 1);
          }

          *(v30 + 4 * v103 * v98 + 4 * v102 * v97) = *(v101 + 4 * v107 % v99 * v100);
          for (j = 1; j != -1; --j)
          {
            v109 = (v135[j].__locale_ + 1);
            v135[j].__locale_ = v109;
            if (v109 != *(&v129 + j * 8))
            {
              break;
            }

            v135[j].__locale_ = 0;
          }

          ++v93;
        }

        while (v93 != v29);
      }
    }

    else
    {
      v151 = 0uLL;
      v152 = 0uLL;
      v149 = 0uLL;
      v150 = 0uLL;
      v147 = 0uLL;
      v148 = 0uLL;
      v145 = 0uLL;
      v146 = 0uLL;
      v143 = 0uLL;
      v144 = 0uLL;
      v141 = 0uLL;
      v142 = 0uLL;
      v139 = 0uLL;
      v140 = 0uLL;
      v138 = 0uLL;
      v130 = 0uLL;
      v131 = 0uLL;
      v129 = 0uLL;
      sub_2621D96E4(&v138, v5, a2, &v129);
      v52 = 0;
      v53 = &v129;
      v54 = 1;
      do
      {
        v55 = *v53;
        v56 = *(v5 + v52);
        if ((v54 & 1) == 0)
        {
          break;
        }

        v54 = 0;
        v53 = &v129 + 1;
        v52 = 1;
      }

      while (v55 == v56);
      if (v55 != v56)
      {
        v57 = sub_2621D552C(MEMORY[0x277D82670], "runtime_err in ", 15);
        v58 = sub_2621D552C(v57, "/Library/Caches/com.apple.xbs/Sources/RoomScanCore/Sources/Utilities/wTensor/core/tensor/tensor.hpp", 99);
        sub_2621D552C(v58, " ", 1);
        v59 = MEMORY[0x277D82670];
        v60 = MEMORY[0x266727260](MEMORY[0x277D82670], 239);
        sub_2621D552C(v60, " ", 1);
        sub_2621D552C(v60, "broadcast_assign_stride", 23);
        std::ios_base::getloc((v60 + *(*v60 - 24)));
        v61 = std::locale::use_facet(v135, MEMORY[0x277D82680]);
        (v61->__vftable[2].~facet_0)(v61, 10);
        std::locale::~locale(v135);
        std::ostream::put();
        std::ostream::flush();
        sub_2621D58EC("err", "broadcast assign issue");
        std::ios_base::getloc((v59 + *(*v59 - 24)));
        v62 = std::locale::use_facet(v135, MEMORY[0x277D82680]);
        (v62->__vftable[2].~facet_0)(v62, 10);
        std::locale::~locale(v135);
        std::ostream::put();
        std::ostream::flush();
      }

      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      *&v135[0].__locale_ = 0u;
      v132 = 0u;
      v133 = 0u;
      v63 = *(v3 + 104);
      v64 = *(v3 + 144);
      if (*(v3 + 136))
      {
        if (v63)
        {
          v65 = 0;
          v67 = *(&v139 + 1);
          v66 = v140;
          v68 = (v140 - *(&v139 + 1)) >> 3;
          if (v68 <= 1)
          {
            v68 = 1;
          }

          v69 = *(a2 + 56);
          v70 = 208;
          if (*(a2 + 288))
          {
            v70 = 104;
          }

          v71 = *(a2 + v70);
          v72 = *(a2 + 296);
          do
          {
            v73 = v135[1].__locale_;
            *(&v132 + 1) = v135[1];
            v74 = v67;
            v75 = v68;
            if (v66 != v67)
            {
              do
              {
                v76 = *v74++;
                *(&v132 + v76) = 0;
                --v75;
              }

              while (v75);
              v73 = *(&v132 + 1);
            }

            *(v64 + 4 * v65) = *(v72 + 4 * v73 % v69 * v71);
            for (k = 1; k != -1; --k)
            {
              v78 = (v135[k].__locale_ + 1);
              v135[k].__locale_ = v78;
              if (v78 != *(&v129 + k * 8))
              {
                break;
              }

              v135[k].__locale_ = 0;
            }

            ++v65;
          }

          while (v65 != v63);
        }
      }

      else if (v63)
      {
        v110 = 0;
        v112 = *(&v139 + 1);
        v111 = v140;
        v113 = (v140 - *(&v139 + 1)) >> 3;
        if (v113 <= 1)
        {
          v113 = 1;
        }

        v114 = *(v3 + 56);
        v115 = *(v3 + 64);
        v116 = *(a2 + 56);
        v117 = 208;
        if (*(a2 + 288))
        {
          v117 = 104;
        }

        v118 = *(a2 + v117);
        v119 = *(a2 + 296);
        do
        {
          v120 = v135[0].__locale_;
          v121 = v135[1].__locale_;
          *(&v132 + 1) = v135[1];
          v122 = v112;
          v123 = v113;
          if (v111 == v112)
          {
            v125 = v135[1].__locale_;
          }

          else
          {
            do
            {
              v124 = *v122++;
              *(&v132 + v124) = 0;
              --v123;
            }

            while (v123);
            v125 = *(&v132 + 1);
          }

          *(v64 + 4 * v121 * v115 + 4 * v120 * v114) = *(v119 + 4 * v125 % v116 * v118);
          for (m = 1; m != -1; --m)
          {
            v127 = (v135[m].__locale_ + 1);
            v135[m].__locale_ = v127;
            if (v127 != *(&v129 + m * 8))
            {
              break;
            }

            v135[m].__locale_ = 0;
          }

          ++v110;
        }

        while (v110 != v63);
      }
    }

    result = sub_2621C57C8(&v138);
  }

  v128 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_262395340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::locale a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  std::locale::~locale(&a21);
  sub_2621C57C8(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_262395374()
{
  v0 = sub_2621D552C(MEMORY[0x277D82670], "err", 3);
  v1 = sub_2621D552C(v0, " ", 1);
  v2 = sub_2621D552C(v1, "tile param should larger 0", 26);
  std::ios_base::getloc((v2 + *(*v2 - 24)));
  v3 = std::locale::use_facet(&v5, MEMORY[0x277D82680]);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&v5);
  std::ostream::put();
  return std::ostream::flush();
}

BOOL sub_262395464(float32x2_t *a1, uint64_t a2, float32x2_t a3)
{
  v5 = 0;
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  v7 = v6;
  v8 = a1;
  while (v6 != v5)
  {
    ++v5;
    v9 = *v8;
    v8 += 5;
    if (sub_2621DC76C(a3, v9, a1[5 * (v5 % v6)], 0.00001) < 0.07)
    {
      v7 = v5 - 1;
      return v6 > v7;
    }
  }

  return v6 > v7;
}

uint64_t sub_26239551C(float32x2_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v2 < 4)
  {
    return 0;
  }

  v5 = 0;
  v6 = a1 + 10;
  v7 = 3;
  v8 = v2 - 3;
  v13 = v2 - 3;
  v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  do
  {
    if (v2 > v5 + 2)
    {
      v9 = v6;
      v10 = v7;
      v11 = v8;
      while (v5 | v11)
      {
        if (v11)
        {
          v12 = v10;
        }

        else
        {
          v12 = 0;
        }

        if (sub_2621DCE38(a1[5 * v5], a1[5 * v5 + 5], *v9, a1[5 * v12]))
        {
          return 0;
        }

        --v11;
        ++v10;
        v9 += 5;
        if (v11 == -1)
        {
          break;
        }
      }
    }

    ++v5;
    --v8;
    ++v7;
    v6 += 5;
    v2 = v14;
  }

  while (v5 != v13);
  return 1;
}

void sub_262395638(uint64_t *a1)
{
  v1 = a1[1];
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((v1 - *a1) >> 3);
  if (v2 >= 2)
  {
    v4 = v2 & 0x7FFFFFFF;
    v5 = 40 * (v2 - 2);
    v6 = v2 - 1;
    do
    {
      v7 = v4--;
      v8 = *a1;
      v9 = (*a1 + 40 * v4);
      v10 = (*a1 + v5);
      v11 = v6;
      while (1)
      {
        v12 = vsub_f32(*v9, *v10);
        if (sqrtf(vaddv_f32(vmul_f32(v12, v12))) < 0.07)
        {
          break;
        }

        v10 -= 5;
        if (--v11 < 1)
        {
          goto LABEL_18;
        }
      }

      v13 = v9[1];
      v14 = v9 + 2;
      if (v13 != &v9[2])
      {
        do
        {
          sub_262361530(&v10[1], &v10[2], &v13[4]);
          v15 = v13[1];
          if (v15)
          {
            do
            {
              v16 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v16 = v13[2];
              v17 = *v16 == v13;
              v13 = v16;
            }

            while (!v17);
          }

          v13 = v16;
        }

        while (v16 != v14);
        v8 = *a1;
        v1 = a1[1];
      }

      v1 = sub_262339830(v8 + 40 * v4 + 40, v1, v8 + 40 * v4);
      v18 = a1[1];
      if (v18 != v1)
      {
        do
        {
          v19 = v18 - 40;
          sub_2621CC7B4(*(v18 - 24));
          v18 = v19;
        }

        while (v19 != v1);
      }

      a1[1] = v1;
LABEL_18:
      v5 -= 40;
      --v6;
    }

    while (v7 > 2);
  }
}

void sub_2623957B4(uint64_t *a1, float32x2_t **a2)
{
  sub_262396D98(a1, a2);
  sub_262397224(a1, a2);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_262397354(a1, a2, 0, &v4, 0);
  v7 = &v4;
  sub_2621CC514(&v7);
  sub_262397224(a1, a2);
  sub_26239975C(a1, a2, 0.0);
  sub_262397224(a1, a2);
  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_262397354(a1, a2, 0, &v4, 0);
  v7 = &v4;
  sub_2621CC514(&v7);
  sub_26239A110(a1);
}

void sub_262395888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, void **a12)
{
  sub_2621CC514(&a12);
  sub_2621CC5A0(&a9);
  _Unwind_Resume(a1);
}

void sub_2623958B8(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v27 = 0;
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3)
  {
    v6 = 0;
    v7 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 3);
    do
    {
      sub_262292E28(v25, v2 + 40 * v6);
      sub_262292E28(v23, *a2 + 40 * ((v6 + 1) % v7));
      if (!sub_262395F0C(v25, v23))
      {
        sub_262396ACC(v20, v25, v23, &v27);
        v9 = a1[1];
        v8 = a1[2];
        if (v9 >= v8)
        {
          v11 = 0x2E8BA2E8BA2E8BA3 * ((v9 - *a1) >> 3);
          v12 = v11 + 1;
          if ((v11 + 1) > 0x2E8BA2E8BA2E8BALL)
          {
            sub_2621CBEB0();
          }

          v13 = 0x2E8BA2E8BA2E8BA3 * ((v8 - *a1) >> 3);
          if (2 * v13 > v12)
          {
            v12 = 2 * v13;
          }

          if (v13 >= 0x1745D1745D1745DLL)
          {
            v14 = 0x2E8BA2E8BA2E8BALL;
          }

          else
          {
            v14 = v12;
          }

          v31 = a1;
          if (v14)
          {
            sub_262396B80(v14);
          }

          v28 = 0;
          v29 = 88 * v11;
          v30 = (88 * v11);
          sub_262396B2C(88 * v11, v20);
          *&v30 = v30 + 88;
          v15 = a1[1];
          v16 = v29 + *a1 - v15;
          sub_262396BDC(a1, *a1, v15, v16);
          v17 = *a1;
          *a1 = v16;
          v18 = a1[2];
          v19 = v30;
          *(a1 + 1) = v30;
          *&v30 = v17;
          *(&v30 + 1) = v18;
          v28 = v17;
          v29 = v17;
          sub_262396CCC(&v28);
          v10 = v19;
        }

        else
        {
          sub_262396B2C(a1[1], v20);
          v10 = v9 + 88;
        }

        a1[1] = v10;
        sub_2621CC7B4(v22);
        sub_2621CC7B4(v21);
      }

      sub_2621CC7B4(v24);
      sub_2621CC7B4(v26);
      v6 = v27 + 1;
      v27 = v6;
      v2 = *a2;
      v7 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
    }

    while (v6 < v7);
  }
}

void sub_262395AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char *a29)
{
  sub_2621CC7B4(a18);
  sub_2621CC7B4(a13);
  sub_2621CC7B4(a24);
  sub_2621CC7B4(a29);
  sub_262395EB8(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_262395B58(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0x666666666666666)
    {
      sub_2621CBEB0();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x333333333333333)
    {
      v10 = 0x666666666666666;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      sub_2622931B8(v10);
    }

    v16 = 0;
    v17 = 40 * v7;
    sub_262292E28(40 * v7, a2);
    v18 = 40 * v7 + 40;
    v11 = a1[1];
    v12 = 40 * v7 + *a1 - v11;
    sub_262293210(a1, *a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = a1[2];
    v15 = v18;
    *(a1 + 1) = v18;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v16 = v13;
    v17 = v13;
    result = sub_2622932BC(&v16);
    v6 = v15;
  }

  else
  {
    result = sub_262292E28(a1[1], a2);
    v6 = v4 + 40;
    a1[1] = v4 + 40;
  }

  a1[1] = v6;
  return result;
}

void sub_262395CB4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 3)) >= a5)
    {
      v15 = v10 - a2;
      if ((0xCCCCCCCCCCCCCCCDLL * ((v10 - a2) >> 3)) >= a5)
      {
        v17 = 5 * a5;
        sub_262339630(a1, a2, a1[1], a2 + 40 * a5);
        v16 = v6 + 8 * v17;
      }

      else
      {
        a1[1] = sub_262292D88(a1, v15 + a3, a4, a1[1]);
        if (v15 < 1)
        {
          return;
        }

        sub_262339630(a1, a2, v10, a2 + 40 * a5);
        v16 = v15 + v6;
      }

      sub_262396A60(v6, v16, a2);
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x3333333333333333 * ((v10 - *a1) >> 3);
      if (v12 > 0x666666666666666)
      {
        sub_2621CBEB0();
      }

      v13 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v11) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x333333333333333)
      {
        v14 = 0x666666666666666;
      }

      else
      {
        v14 = v12;
      }

      v24 = a1;
      if (v14)
      {
        sub_2622931B8(v14);
      }

      v18 = 8 * ((a2 - v11) >> 3);
      v21[0] = 0;
      v21[1] = v18;
      v22 = v18;
      v23 = 0;
      v19 = v18 + 40 * a5;
      v20 = 40 * a5;
      do
      {
        sub_262292E28(v18, v6);
        v18 += 40;
        v6 += 40;
        v20 -= 40;
      }

      while (v20);
      v22 = v19;
      sub_262339774(a1, v21, a2);
      sub_2622932BC(v21);
    }
  }
}

void sub_262395EB8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_262396858(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

BOOL sub_262395F0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = (a1 + 16);
  if (v2 == (a1 + 16))
  {
    return 0;
  }

  v5 = a2 + 16;
  while (1)
  {
    if (*(v2 + 55) < 0)
    {
      sub_2621CC810(__p, v2[4], v2[5]);
    }

    else
    {
      *__p = *(v2 + 2);
      v13 = v2[6];
    }

    v6 = sub_26225E9A4(a2 + 8, __p);
    v7 = v5 != v6;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (v5 != v6)
    {
      break;
    }

    v8 = v2[1];
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
        v9 = v2[2];
        v10 = *v9 == v2;
        v2 = v9;
      }

      while (!v10);
    }

    v2 = v9;
    if (v9 == v3)
    {
      return 0;
    }
  }

  return v7;
}

void sub_262395FF0(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 5;
        sub_2621CC7B4(*(v3 - 3));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_26239605C(uint64_t *a1)
{
  sub_2623958B8(&v78, a1);
  v2 = v78;
  v3 = v79;
  v4 = 0x2E8BA2E8BA2E8BA3 * ((v79 - v78) >> 3);
  if (v4 > 0)
  {
    v5 = v4 & 0x7FFFFFFF;
    v6 = 1 - v5;
    v7 = 88 * v5 - 8;
    while (1)
    {
      v8 = 0x2E8BA2E8BA2E8BA3 * ((v3 - v2) >> 3);
      if (v8 < 2)
      {
        break;
      }

      v9 = v5 - 1;
      v10 = a1[1];
      v11 = (v2 + 88 * (v5 - 1));
      v12 = v11[10];
      v13 = (v2 + 88 * ((v5 - 1171354717 * ((v3 - v2) >> 3) - 2) % (-1171354717 * ((v3 - v2) >> 3))));
      if ((*&v12 - 0x3333333333333333 * ((v10 - *a1) >> 3) - 1) % (0xCCCCCCCCCCCCCCCDLL * ((v10 - *a1) >> 3)) == *&v13[10])
      {
        v15 = v11[5];
        v14 = &v11[5];
        if (sub_2623966FC(*a1, v10, vmul_f32(vadd_f32(v15, *v13), 0x3F0000003F000000)))
        {
          sub_262339704(v72, &v13[5], v14);
          sub_2621CC7B4(v73);
          v16 = v79;
          v17 = v78 + 88 * v9;
          if (v17 + 88 != v79)
          {
            do
            {
              v18 = v17 + 88;
              sub_2623967E0(v17, v17 + 88);
              v17 = v18;
            }

            while (v18 + 88 != v16);
            v17 = v18;
          }

          sub_262396858(&v78, v17);
          v19 = sub_262339830(*a1 + 40 * *&v12 + 40, a1[1], *a1 + 40 * *&v12);
          v20 = a1[1];
          if (v20 != v19)
          {
            do
            {
              v21 = v20 - 40;
              sub_2621CC7B4(*(v20 - 24));
              v20 = v21;
            }

            while (v21 != v19);
          }

          a1[1] = v19;
          v2 = v78;
          v3 = v79;
          v22 = 0x2E8BA2E8BA2E8BA3 * ((v79 - v78) >> 3);
          if (v22 > v9)
          {
            v23 = v22 + v6;
            v24 = v7;
            do
            {
              --*(v2 + v24);
              v24 += 88;
              --v23;
            }

            while (v23);
          }
        }
      }

      ++v6;
      v7 -= 88;
      if (v5-- <= 1)
      {
        v8 = 0x2E8BA2E8BA2E8BA3 * ((v3 - v2) >> 3);
        break;
      }
    }

    if (v8 >= 1)
    {
      v26 = v8 & 0x7FFFFFFF;
      v27 = v26 + 1;
      v28 = 88 * v26 - 88;
      do
      {
        sub_2623968B4(v72, v78 + v28);
        v29 = v77;
        if ((v74 & 1) != 0 || v76 == 1)
        {
          v30 = vsub_f32(v72[0], v75[0]);
          if (sqrtf(vaddv_f32(vmul_f32(v30, v30))) < 0.5)
          {
            goto LABEL_51;
          }
        }

        v31 = v77 - 1;
        v32 = sub_262395F0C(*a1 + 40 * ((v77 - 1 - 0x3333333333333333 * ((a1[1] - *a1) >> 3)) % (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3))), v72);
        v33 = sub_262395F0C(*a1 + 40 * ((v29 + 2) % (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3))), v75);
        if (!v32 && !v33)
        {
          goto LABEL_51;
        }

        v34 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
        v35 = *(*a1 + 40 * ((v31 + v34) % v34));
        v36 = *(*a1 + 40 * ((v29 + 2) % v34));
        v37 = v75[0];
        v71[0] = v72[0];
        v71[1] = v75[0];
        v38 = v32 && v33;
        if (v32 && v33)
        {
          v39 = vsub_f32(v36, v75[0]);
          v40 = vmul_f32(v39, v39);
          v41 = vsub_f32(v35, v72[0]);
          v42 = vmul_f32(v41, v41);
          v43 = vsqrt_f32(vadd_f32(vzip1_s32(v40, v42), vzip2_s32(v40, v42)));
          if ((vcgt_f32(v43, vdup_lane_s32(v43, 1)).u8[0] & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else if (v32)
        {
LABEL_25:
          v44 = v35;
          v45 = v72[0];
          goto LABEL_28;
        }

        v44 = v36;
        v45 = v75[0];
        v36 = v35;
        v37 = v72[0];
LABEL_28:
        v70[0] = v44;
        v70[1] = v45;
        v69[0] = v36;
        v69[1] = v37;
        v46 = sub_2621C92AC(v70, v71, 0);
        if ((180.0 - v46) < v46)
        {
          v46 = 180.0 - v46;
        }

        if (v46 < 2.5 || v46 > 87.5)
        {
          goto LABEL_51;
        }

        v47 = sub_2621C92AC(v69, v71, 0);
        if ((180.0 - v47) < v47)
        {
          v47 = 180.0 - v47;
        }

        if (v38)
        {
          v48 = vsub_f32(v36, v37);
          v49 = vsub_f32(v44, v45);
          if (sqrtf(vaddv_f32(vmul_f32(v49, v49))) * 0.5 < sqrtf(vaddv_f32(vmul_f32(v48, v48))) && (v47 < 2.5 || v47 > 87.5))
          {
            goto LABEL_51;
          }
        }

        v50 = vsub_f32(v45, v44);
        v51 = vaddv_f32(vmul_f32(vsub_f32(v37, v44), v50));
        v52 = vaddv_f32(vmul_f32(v50, v50));
        if (v52 < 0.000001)
        {
          v52 = 0.000001;
        }

        v53 = vmla_n_f32(v44, v50, v51 / v52);
        v54 = *a1;
        v55 = a1[1];
        if (vaddv_f32(vmul_f32(v50, vsub_f32(v53, v45))) >= 0.0 && sub_2623966FC(*a1, a1[1], v53) && (*v56.f32 = v53, sub_262396908(v54, v55, v29 + 1, v56, v57, v58)))
        {
          sub_2621D0F64(__p, "");
          sub_262292AA0(v67, __p, 0, *&v53);
          if (v66 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v59 = vadd_f32(vsub_f32(v45, v53), v37);
          if (!sub_2623966FC(v54, v55, v59))
          {
            goto LABEL_51;
          }

          *v60.f32 = v59;
          if (!sub_262396908(v54, v55, v29 + 1, v60, v61, v62))
          {
            goto LABEL_51;
          }

          sub_2621D0F64(v63, "");
          sub_262292AA0(v67, v63, 0, *&v59);
          if (v64 < 0)
          {
            operator delete(v63[0]);
          }
        }

        sub_2623392A4(a1, *a1 + 40 * v29 + 40, v67);
        sub_2621CC7B4(v68);
LABEL_51:
        sub_2621CC7B4(*&v75[2]);
        sub_2621CC7B4(v73);
        --v27;
        v28 -= 88;
      }

      while (v27 > 1);
    }
  }

  v72[0] = &v78;
  sub_262395EB8(v72);
}

void sub_26239666C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char *a39)
{
  sub_2621CC7B4(a23);
  sub_2621CC7B4(a39);
  sub_2621CC7B4(a34);
  a21 = v39 - 176;
  sub_262395EB8(&a21);
  _Unwind_Resume(a1);
}

BOOL sub_2623966FC(float32x2_t *a1, uint64_t a2, float32x2_t a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v3 < 1)
  {
    v7 = 0.0;
  }

  else
  {
    v6 = -(v3 & 0x7FFFFFFF);
    v7 = 0.0;
    v8 = 1;
    v9 = a1;
    do
    {
      v10 = *v9;
      v9 += 5;
      v11 = vsub_f32(v10, a3);
      v12 = v8;
      if (!(v6 + v8))
      {
        v12 = 0;
      }

      v13 = vsub_f32(a1[5 * v12], a3);
      v7 = v7 + atan2f((-v11.f32[1] * v13.f32[0]) + (v11.f32[0] * v13.f32[1]), vmuls_lane_f32(v11.f32[1], v13, 1) + (v11.f32[0] * v13.f32[0]));
      ++v8;
    }

    while (v6 + v8 != 1);
  }

  return fabsf(v7) < 0.1;
}

void sub_2623967E0(uint64_t a1, uint64_t a2)
{
  sub_262339704(v5, a1, a2);
  sub_262339704(v4, a1 + 40, a2 + 40);
  *(a1 + 80) = *(a2 + 80);
  sub_2621CC7B4(v4[2]);
  sub_2621CC7B4(v6);
}

void sub_262396858(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 88)
  {
    sub_2621CC7B4(*(i - 32));
    sub_2621CC7B4(*(i - 72));
  }

  *(a1 + 8) = a2;
}

uint64_t sub_2623968B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_262292E28(a1, a2);
  sub_262292E28(v4 + 40, a2 + 40);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

BOOL sub_262396908(uint64_t a1, uint64_t a2, unint64_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 >= a3 && v6 >= 3)
  {
    if (v6 == 2)
    {
      return 1;
    }

    else
    {
      v10 = a4.i64[0];
      v11 = 0;
      v8 = 0;
      v12 = a3 % v6;
      v13 = *(a1 + 40 * ((v6 + a3 % v6 - 1) % v6));
      v14 = *(a1 + 40 * (a3 % v6));
      for (i = 2; i != v6; ++i)
      {
        v16 = (v11 + v12) % v6;
        a6.i64[0] = *(a1 + 40 * v16);
        if (v16 + 1 == v6)
        {
          v17 = 0;
        }

        else
        {
          v17 = v16 + 1;
        }

        a4.i64[0] = v13;
        a5.i64[0] = v10;
        if (sub_2621DD0C0(a4, a5, a6, *(a1 + 40 * v17)))
        {
          break;
        }

        v21 = (v11 + v12 + 1) % v6;
        v20.i64[0] = *(a1 + 40 * v21);
        v22 = v21 + 1 == v6 ? 0 : v21 + 1;
        v18.i64[0] = v10;
        v19.i64[0] = v14;
        if (sub_2621DD0C0(v18, v19, v20, *(a1 + 40 * v22)))
        {
          break;
        }

        ++v11;
        v8 = v6 - 2 <= i - 1;
      }
    }
  }

  else
  {
    return 0;
  }

  return v8;
}

void sub_262396A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v10 = v3;
    v11 = v4;
    v7 = a1;
    do
    {
      sub_262339704(v8, a3, v7);
      sub_2621CC7B4(v9);
      v7 += 40;
      a3 += 40;
    }

    while (v7 != a2);
  }
}

uint64_t sub_262396ACC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_262292E28(a1, a2);
  sub_262292E28(v7 + 40, a3);
  *(a1 + 80) = *a4;
  return a1;
}

uint64_t sub_262396B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_262292E28(a1, a2);
  sub_262292E28(v4 + 40, a2 + 40);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

void sub_262396B80(unint64_t a1)
{
  if (a1 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_2621C6A34();
}

uint64_t sub_262396BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      sub_262292E28(v4, v7);
      sub_262292E28(v4 + 40, v7 + 40);
      *(v4 + 80) = *(v7 + 80);
      v7 += 88;
      v4 = v12 + 88;
      v12 += 88;
    }

    while (v7 != a3);
    v10 = 1;
    do
    {
      sub_2621CC7B4(*(v6 + 56));
      sub_2621CC7B4(*(v6 + 16));
      v6 += 88;
    }

    while (v6 != a3);
  }

  return sub_262396D30(v9);
}

uint64_t sub_262396CCC(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    sub_2621CC7B4(*(i - 32));
    sub_2621CC7B4(*(i - 72));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_262396D30(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 88)
    {
      sub_2621CC7B4(*(v4 - 32));
      sub_2621CC7B4(*(v4 - 72));
    }
  }

  return a1;
}

void sub_262396D98(uint64_t *a1, float32x2_t **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * (v5 - v4));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_2623A23F0(v4, v5, v7, 1);
  v8 = *a2;
  v9 = a2[1];
  memset(v55, 0, 24);
  v10 = 0uLL;
  if (v8 == v9)
  {
    v28 = 0;
  }

  else
  {
    do
    {
      v12 = *(&v55[0] + 1);
      v11 = *&v55[0];
      v13 = *(&v55[0] + 1) - *&v55[0];
      if (0xCCCCCCCCCCCCCCCDLL * ((*(&v55[0] + 1) - *&v55[0]) >> 3) >= 2)
      {
        v14 = *(&v55[0] + 1);
        while (1)
        {
          v15 = *(v11 + v13 - 40);
          v16 = *(v11 + v13 - 80);
          v17 = vsub_f32(v15, v16);
          v18 = vsub_f32(*v8, v16);
          v19 = v17.f32[0] * v18.f32[1] - v17.f32[1] * v18.f32[0];
          v20 = vsub_f32(v16, v15);
          v21 = vmul_f32(v20, v20);
          v22 = vsub_f32(v16, *v8);
          v23 = vmul_f32(v22, v22);
          v24 = vsqrt_f32(vadd_f32(vzip1_s32(v21, v23), vzip2_s32(v21, v23)));
          v25 = vmul_lane_f32(v24, v24, 1).f32[0];
          if (v25 < 0.000001)
          {
            v25 = 0.000001;
          }

          v26 = v19 / v25;
          if (fabs(v26) < 0.000000999999997 || v26 <= 0.0)
          {
            break;
          }

          sub_2621CC7B4(*(v12 - 24));
          v12 -= 40;
          *(&v55[0] + 1) = v12;
          v11 = *&v55[0];
          v13 = v12 - *&v55[0];
          v14 -= 40;
          if (0xCCCCCCCCCCCCCCCDLL * ((v14 - *&v55[0]) >> 3) <= 1)
          {
            v13 = v14 - *&v55[0];
            break;
          }
        }
      }

      if (v11 == v12 || (v27 = vmvn_s8(vceq_f32(*(v11 + v13 - 40), *v8)), ((v27.i32[0] | v27.i32[1]) & 1) != 0))
      {
        sub_262395B58(v55, v8);
        v12 = *(&v55[0] + 1);
        v11 = *&v55[0];
      }

      *&v56 = v11;
      *(&v56 + 1) = v12;
      v57 = *&v55[1];
      memset(v55, 0, 24);
      sub_262395FF0(v55);
      v55[0] = v56;
      *&v55[1] = v57;
      v57 = 0;
      v56 = 0uLL;
      v53 = &v56;
      sub_2621CC5A0(&v53);
      v8 += 5;
    }

    while (v8 != v9);
    v10 = v55[0];
    v28 = *&v55[1];
  }

  *a1 = v10;
  a1[2] = v28;
  memset(v55, 0, 24);
  *&v56 = v55;
  sub_2621CC5A0(&v56);
  v29 = 0uLL;
  v32 = a2;
  v30 = *a2;
  v31 = v32[1];
  memset(v52, 0, sizeof(v52));
  if (v31 == v30)
  {
    v50 = 0;
  }

  else
  {
    do
    {
      v31 -= 5;
      v34 = *&v52[8];
      v33 = *v52;
      v35 = *&v52[8] - *v52;
      if (0xCCCCCCCCCCCCCCCDLL * ((*&v52[8] - *v52) >> 3) >= 2)
      {
        v36 = *&v52[8];
        while (1)
        {
          v37 = *(v33 + v35 - 40);
          v38 = *(v33 + v35 - 80);
          v39 = vsub_f32(v37, v38);
          v40 = vsub_f32(*v31, v38);
          v41 = v39.f32[0] * v40.f32[1] - v39.f32[1] * v40.f32[0];
          v42 = vsub_f32(v38, v37);
          v43 = vmul_f32(v42, v42);
          v44 = vsub_f32(v38, *v31);
          v45 = vmul_f32(v44, v44);
          v46 = vsqrt_f32(vadd_f32(vzip1_s32(v43, v45), vzip2_s32(v43, v45)));
          v47 = vmul_lane_f32(v46, v46, 1).f32[0];
          if (v47 < 0.000001)
          {
            v47 = 0.000001;
          }

          v48 = v41 / v47;
          if (fabs(v48) < 0.000000999999997 || v48 <= 0.0)
          {
            break;
          }

          sub_2621CC7B4(*(v34 - 24));
          v34 -= 40;
          *&v52[8] = v34;
          v33 = *v52;
          v35 = v34 - *v52;
          v36 -= 40;
          if (0xCCCCCCCCCCCCCCCDLL * ((v36 - *v52) >> 3) <= 1)
          {
            v35 = v36 - *v52;
            break;
          }
        }
      }

      if (v33 == v34 || (v49 = vmvn_s8(vceq_f32(*(v33 + v35 - 40), *v31)), ((v49.i32[0] | v49.i32[1]) & 1) != 0))
      {
        sub_262395B58(v52, v31);
        v34 = *&v52[8];
        v33 = *v52;
      }

      *&v56 = v33;
      *(&v56 + 1) = v34;
      v57 = *&v52[16];
      memset(v52, 0, sizeof(v52));
      sub_262395FF0(v52);
      *v52 = v56;
      *&v52[16] = v57;
      v57 = 0;
      v56 = 0uLL;
      v58 = &v56;
      sub_2621CC5A0(&v58);
    }

    while (v31 != v30);
    v50 = *v52;
    v29 = *&v52[8];
  }

  v51 = v29;
  v53 = v50;
  v54 = v29;
  memset(v52, 0, sizeof(v52));
  *&v56 = v52;
  sub_2621CC5A0(&v56);
  if (0xCCCCCCCCCCCCCCCDLL * ((v51 - v50) >> 3) >= 2)
  {
    sub_262395CB4(a1, a1[1], (v50 + 5), v51 - 40, 0xCCCCCCCCCCCCCCCDLL * ((v51 - 40 - (v50 + 5)) >> 3));
  }

  *&v56 = &v53;
  sub_2621CC5A0(&v56);
}

void sub_2623971E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  a21 = &a14;
  sub_2621CC5A0(&a21);
  sub_2621CC5A0(&a21);
  _Unwind_Resume(a1);
}

void sub_262397224(float32x2_t **a1, void *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
  if (v2 >= 1)
  {
    v5 = v2 & 0x7FFFFFFF;
    do
    {
      sub_262292E28(v13, *a2 + 40 * (v5 - 1));
      v6 = *a1;
      v7 = a1[1];
      if (*a1 != v7)
      {
        while (1)
        {
          v8 = vsub_f32(v13[0], *v6);
          if (sqrtf(vaddv_f32(vmul_f32(v8, v8))) < 0.07)
          {
            break;
          }

          v6 += 5;
          if (v6 == v7)
          {
            goto LABEL_10;
          }
        }

        v9 = sub_262339830(*a2 + 40 * (v5 - 1) + 40, a2[1], *a2 + 40 * (v5 - 1));
        v10 = a2[1];
        if (v10 != v9)
        {
          do
          {
            v11 = v10 - 40;
            sub_2621CC7B4(*(v10 - 24));
            v10 = v11;
          }

          while (v11 != v9);
        }

        a2[1] = v9;
      }

LABEL_10:
      sub_2621CC7B4(*&v13[2]);
    }

    while (v5-- > 1);
  }
}

void sub_262397354(uint64_t *a1, uint64_t *a2, int a3, __int128 **a4, int a5)
{
  v6 = a1;
  sub_2623958B8(&v247, a1);
  v244 = 0;
  v245 = 0;
  v246 = 0;
  v7 = v247;
  v220 = v248;
  v228 = v6;
  if (v247 != v248)
  {
    v225 = a2;
    while (1)
    {
      v224 = v7;
      sub_2623968B4(v242, v7);
      v240 = 0u;
      v241 = 0u;
      v239 = 0u;
      if (!a5)
      {
        sub_2623968B4(v230, v242);
        v287 = 0u;
        v288 = 0u;
        v286 = 0u;
        sub_262395B58(a2, v232);
        v26 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
        v265 = 0;
        v264 = 0;
        sub_26239C408(&v279, v230, v26, &v264);
        v27 = *(&v286 + 1);
        v28 = 8 * (v287 - *(&v286 + 1)) - 1;
        v29 = v288.i64[1] + v288.i64[0];
        if (v287 == *(&v286 + 1))
        {
          v28 = 0;
        }

        if (v28 == v29)
        {
          sub_26239D14C(&v286);
          v27 = *(&v286 + 1);
          v29 = v288.i64[1] + v288.i64[0];
        }

        v30 = (*(v27 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v29 & 0x3F) << 6));
        *v30 = v279;
        sub_262292E28((v30 + 1), &v279 + 8);
        v30[6] = v282;
        v31 = v283;
        v30[7] = v283;
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        ++v288.i64[1];
        sub_262292E28(&v260, *v6 + 40 * ((v232[5] - 0x3333333333333333 * ((v6[1] - *v6) >> 3) - 1) % (0xCCCCCCCCCCCCCCCDLL * ((v6[1] - *v6) >> 3))));
        *(&v236 + 1) = 0;
        *&v237 = 0;
        *&v236 = &v236 + 8;
        if (v288.i64[1])
        {
          v32 = *(*(&v286 + 1) + (((v288.i64[1] + v288.i64[0] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8));
          operator new();
        }

        v33 = a2[1];
        sub_2621CC7B4(*(v33 - 24));
        a2[1] = v33 - 40;
        v267 = 0u;
        v268 = 0u;
        v269 = 0u;
        sub_2621C6C04(*(&v236 + 1));
        sub_2621CC7B4(v262);
        if (v283)
        {
          sub_2621D1B78(v283);
        }

        sub_2621CC7B4(*(&v280 + 1));
        sub_26239C8DC(&v286);
        sub_26239C240(&v239, &v267);
        sub_26239C068(&v267);
        sub_2621CC7B4(v232[2]);
        v39 = v231;
        goto LABEL_107;
      }

      sub_2623968B4(v233, v242);
      sub_2623968B4(&v279, v233);
      sub_26239B884(&v284, &v279, a2, *v6, v6[1], 1);
      sub_2621CC7B4(v283);
      sub_2621CC7B4(v280);
      sub_2623968B4(&v272, v233);
      sub_26239B884(&v277, &v272, a2, *v6, v6[1], 0);
      sub_2621CC7B4(v276);
      sub_2621CC7B4(v274);
      v287 = 0u;
      v288 = 0u;
      v286 = 0u;
      v8 = v277;
      if (v278 == v277)
      {
LABEL_40:
        v237 = 0u;
        v238 = 0u;
        v236 = 0u;
        goto LABEL_106;
      }

      v9 = 0;
      while (1)
      {
        sub_262292E28(v270, v8 + 48 * v9 + 8);
        LOBYTE(v267) = 0;
        BYTE8(v269) = 0;
        if (v9)
        {
          sub_26239BED0(&v267, v277 + 48 * v9 - 40);
        }

        v10 = v284;
        if (v285 != v284)
        {
          break;
        }

LABEL_37:
        if (BYTE8(v269) == 1)
        {
          sub_2621CC7B4(v268);
        }

        sub_2621CC7B4(v271);
        ++v9;
        v8 = v277;
        if (0xAAAAAAAAAAAAAAABLL * ((v278 - v277) >> 4) <= v9)
        {
          goto LABEL_40;
        }
      }

      v11 = 0;
      v12 = -40;
      while (1)
      {
        sub_262292E28(&v264, v10 + v12 + 48);
        LOBYTE(v260) = 0;
        v263 = 0;
        if (v11)
        {
          sub_26239BED0(&v260, v284 + v12);
        }

        v258 = 0;
        v259 = 0;
        v257 = &v258;
        v13 = vsub_f32(v270[0], v264);
        v14 = sqrtf(vaddv_f32(vmul_f32(v13, v13)));
        _ZF = v14 >= 0.65 || (v11 | v9) == 0;
        v16 = _ZF;
        if (!_ZF)
        {
          if (v14 < 0.07)
          {
            if (!v11)
            {
              goto LABEL_81;
            }

            v34 = 0;
            v35 = 1;
            v20 = 0;
            v36 = -1;
            goto LABEL_56;
          }

          v34 = 0;
          v20 = 0;
          if (!v11)
          {
            goto LABEL_68;
          }

          v36 = -1;
LABEL_55:
          v35 = 0;
          goto LABEL_56;
        }

        if (BYTE8(v269) == 1 && sub_262395F0C(v270, &v267))
        {
          if ((BYTE8(v269) & 1) == 0)
          {
            sub_2622386B8();
          }

          v17 = vsub_f32(*&v267, v270[0]);
          v18 = vaddv_f32(vmul_f32(vsub_f32(v264, v270[0]), v17));
          v19 = vaddv_f32(vmul_f32(v17, v17));
          if (v19 < 0.000001)
          {
            v19 = 0.000001;
          }

          v20 = vmla_n_f32(v270[0], v17, v18 / v19);
          if (vaddv_f32(vmul_f32(vsub_f32(v20, v270[0]), vsub_f32(v20, *&v267))) <= 0.0)
          {
            v21 = vsub_f32(v264, v20);
            if (sqrtf(vaddv_f32(vmul_f32(v21, v21))) < 0.65)
            {
              break;
            }
          }
        }

        if (v263 == 1 && sub_262395F0C(&v264, &v260))
        {
          if ((v263 & 1) == 0)
          {
            sub_2622386B8();
          }

          v22 = vsub_f32(v260, v264);
          v23 = vaddv_f32(vmul_f32(vsub_f32(v270[0], v264), v22));
          v24 = vaddv_f32(vmul_f32(v22, v22));
          if (v24 < 0.000001)
          {
            v24 = 0.000001;
          }

          v20 = vmla_n_f32(v264, v22, v23 / v24);
          if (vaddv_f32(vmul_f32(vsub_f32(v20, v264), vsub_f32(v20, v260))) <= 0.0)
          {
            v25 = vsub_f32(v270[0], v20);
            if (sqrtf(vaddv_f32(vmul_f32(v25, v25))) < 0.65)
            {
              sub_262361124(&v249, v265, &v266, v261, &v262, &v257, v257);
              v34 = 0;
              if (!v11)
              {
                goto LABEL_70;
              }

              v36 = 1;
              goto LABEL_55;
            }
          }
        }

        sub_2621CC7B4(v258);
        if (v263 == 1)
        {
          sub_2621CC7B4(v262);
        }

        sub_2621CC7B4(v266);
        ++v11;
        v10 = v284;
        v12 += 48;
        if (0xAAAAAAAAAAAAAAABLL * ((v285 - v284) >> 4) <= v11)
        {
          goto LABEL_37;
        }
      }

      sub_262361124(&v249, v270[1], &v271, *(&v267 + 1), &v268, &v257, v257);
      v34 = 1;
      if (!v11)
      {
        goto LABEL_68;
      }

      v36 = 0;
      v35 = 0;
LABEL_56:
      v37 = 0;
      v38 = v11;
      do
      {
        sub_26239BF38(&v286, (v284 + v37));
        v37 += 48;
        --v38;
      }

      while (v38);
      a2 = v225;
      if (v36 == -1)
      {
        if (v35)
        {
          goto LABEL_69;
        }
      }

      else if (v36)
      {
        goto LABEL_69;
      }

LABEL_68:
      sub_26239BF38(&v286, (v284 + 48 * v11));
LABEL_69:
      if (!v16)
      {
        goto LABEL_80;
      }

LABEL_70:
      sub_2621D0F64(__p, "");
      sub_262292AA0(&v255, __p, 0, *&v20);
      if (v254 < 0)
      {
        operator delete(__p[0]);
      }

      if (v259)
      {
        sub_262292EA0(v256, v257, &v258);
      }

      v249 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3);
      sub_262292E28(&v250, &v255);
      v40 = *(&v286 + 1);
      if (v287 == *(&v286 + 1))
      {
        v41 = 0;
      }

      else
      {
        v41 = 85 * ((v287 - *(&v286 + 1)) >> 3) - 1;
      }

      v42 = v288.i64[1] + v288.i64[0];
      if (v41 == v288.i64[1] + v288.i64[0])
      {
        sub_2623A2280(&v286);
        v40 = *(&v286 + 1);
        v42 = v288.i64[1] + v288.i64[0];
      }

      v43 = (*(v40 + 8 * (v42 / 0x55)) - 4080 * (v42 / 0x55) + 48 * v42);
      *v43 = v249;
      sub_262292E28((v43 + 1), &v250);
      ++v288.i64[1];
      sub_2621CC7B4(v252);
      sub_2621CC7B4(v256[1]);
LABEL_80:
      if (v34)
      {
        goto LABEL_82;
      }

LABEL_81:
      sub_26239BF38(&v286, (v277 + 48 * v9));
LABEL_82:
      v44 = 48 * v9 - 48;
      v45 = v9 + 1;
      while (1)
      {
        v46 = v45-- <= 1;
        if (v46)
        {
          break;
        }

        v47 = v44 - 48;
        sub_26239BF38(&v286, (v277 + v44));
        v44 = v47;
      }

      v48 = v288.u64[1];
      if (v288.i64[1] <= 3uLL)
      {
LABEL_95:
        if (v48 < 3)
        {
          v237 = 0u;
          v238 = 0u;
          v236 = 0u;
        }

        else
        {
          sub_2621CC7B4(*(*(*(&v286 + 1) + 8 * (v288.i64[0] / 0x55uLL)) - 4080 * (v288.i64[0] / 0x55uLL) + 48 * v288.i64[0] + 24));
          v288 = vaddq_s64(v288, xmmword_2623A7BE0);
          if (v288.i64[0] >= 0xAAuLL)
          {
            operator delete(**(&v286 + 1));
            *(&v286 + 1) += 8;
            v288.i64[0] -= 85;
          }

          sub_26239BFE8(&v286);
          v236 = v286;
          v237 = v287;
          v286 = 0u;
          v287 = 0u;
          v238 = v288;
          v288 = 0uLL;
        }
      }

      else
      {
        v250 = 0;
        v249 = 0;
        v251 = 0;
        if (v287 == *(&v286 + 1) || (v49 = (*(&v286 + 1) + 8 * (v288.i64[0] / 0x55uLL)), v50 = *v49 - 4080 * (v288.i64[0] / 0x55uLL) + 48 * v288.i64[0], v51 = *(*(&v286 + 1) + 8 * ((v288.i64[0] + v288.i64[1]) / 0x55uLL)) - 4080 * ((v288.i64[0] + v288.i64[1]) / 0x55uLL) + 48 * (v288.i64[0] + v288.i64[1]), v50 == v51))
        {
          v54 = 0;
          v53 = 0;
        }

        else
        {
          do
          {
            sub_262395B58(&v249, v50 + 8);
            v50 += 48;
            if (v50 - *v49 == 4080)
            {
              v52 = v49[1];
              ++v49;
              v50 = v52;
            }
          }

          while (v50 != v51);
          v53 = v249;
          v54 = v250;
        }

        if (sub_26239551C(v53, v54))
        {
          v255 = &v249;
          sub_2621CC5A0(&v255);
          v48 = v288.u64[1];
          goto LABEL_95;
        }

        v237 = 0u;
        v238 = 0u;
        v236 = 0u;
        v255 = &v249;
        sub_2621CC5A0(&v255);
      }

      sub_2621CC7B4(v258);
      if (v263 == 1)
      {
        sub_2621CC7B4(v262);
      }

      sub_2621CC7B4(v266);
      if (BYTE8(v269) == 1)
      {
        sub_2621CC7B4(v268);
      }

      sub_2621CC7B4(v271);
LABEL_106:
      v55 = sub_26239C068(&v286);
      *&v286 = &v277;
      sub_26239C1B8(v55);
      *&v286 = &v284;
      sub_26239C1B8(&v286);
      sub_26239C240(&v239, &v236);
      sub_26239C068(&v236);
      sub_2621CC7B4(v235);
      v39 = v234;
LABEL_107:
      sub_2621CC7B4(v39);
      if (a3)
      {
        v261 = 0;
        v260 = 0;
        v262 = 0;
        sub_262395B58(&v260, v242);
        if (v240 != v239.i64[1])
        {
          v56 = (v239.i64[1] + 8 * (v241.i64[0] / 0x55uLL));
          v57 = *v56 - 4080 * (v241.i64[0] / 0x55uLL) + 48 * v241.i64[0];
          v58 = *(v239.i64[1] + 8 * ((v241.i64[1] + v241.i64[0]) / 0x55uLL)) - 4080 * ((v241.i64[1] + v241.i64[0]) / 0x55uLL) + 48 * (v241.i64[1] + v241.i64[0]);
          while (v57 != v58)
          {
            sub_262395B58(&v260, v57 + 8);
            v57 += 48;
            if (v57 - *v56 == 4080)
            {
              v59 = v56[1];
              ++v56;
              v57 = v59;
            }
          }
        }

        sub_262395B58(&v260, v243);
        v64 = v261;
        v65 = v260;
        v250 = 0;
        v249 = 0;
        v251 = 0;
        sub_262292CB0(&v249, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
        sub_262397224(&v260, &v249);
        v66 = -4080;
        v67 = v249;
        v68 = v250;
        if (v249 == v250)
        {
LABEL_122:
          v71 = (v64 - *&v65) >> 3;
          v72 = -858993459 * v71;
          if (-858993459 * v71 < 1)
          {
            goto LABEL_210;
          }

          v73 = 0;
          v74 = v72 & 0x7FFFFFFF;
          v75 = 5;
          v219 = -858993459 * v71;
          while (1)
          {
            v76 = v73 + 1;
            if (v73 + 2 < v74)
            {
              break;
            }

LABEL_145:
            v75 += 5;
            ++v73;
            v74 = v72 & 0x7FFFFFFF;
            if (v76 == v74)
            {
              goto LABEL_210;
            }
          }

          while (1)
          {
            v77 = v74--;
            v78 = &v260[5 * v73];
            v79 = *v78;
            v80 = 0.0;
            if (v73 < v74)
            {
              v81 = &v260[v75];
              v80 = 0.0;
              v82 = *v78;
              v83 = v73;
              do
              {
                ++v83;
                v84 = *v81;
                v81 += 5;
                v85 = vsub_f32(v82, v84);
                v80 = v80 + sqrtf(vaddv_f32(vmul_f32(v85, v85)));
                v82 = v84;
              }

              while (v83 < v74);
            }

            v86 = &v260[5 * v74];
            v87 = *v86;
            v88 = vsub_f32(v79, *v86);
            v89 = sqrtf(vaddv_f32(vmul_f32(v88, v88)));
            *(&v236 + 1) = 0;
            *&v237 = 0;
            *&v236 = &v236 + 8;
            v90 = v80 <= (v89 * 5.0) || v89 >= 0.65;
            if (!v90)
            {
              v96 = v66 & 0xFFFFFFFFFFFFFF00;
              goto LABEL_168;
            }

            v91 = v77 - 2;
            v92 = v260[5 * v91];
            v93 = vsub_f32(*v86, v92);
            v94 = vaddv_f32(vmul_f32(vsub_f32(v79, v92), v93));
            v95 = vaddv_f32(vmul_f32(v93, v93));
            if (v95 < 0.000001)
            {
              v95 = 0.000001;
            }

            v96 = vmla_n_f32(v92, v93, v94 / v95);
            if (vaddv_f32(vmul_f32(vsub_f32(v96, v92), vsub_f32(v96, *v86))) <= 0.0)
            {
              v97 = vsub_f32(v79, v96);
              v98 = vmul_f32(v97, v97);
              if (sqrtf(vaddv_f32(v98)) < 0.65)
              {
                v99 = vsub_f32(v96, v87);
                v100 = vmul_f32(v99, v99);
                v101 = vsqrt_f32(vadd_f32(vzip1_s32(v100, v98), vzip2_s32(v100, v98)));
                __asm { FMOV            V4.2S, #5.0 }

                _D4.f32[0] = v80;
                v106.i32[0] = vsub_f32(_D4, v101).u32[0];
                v107 = vmul_f32(_D4, v101);
                v106.i32[1] = v107.i32[1];
                if (vcgt_f32(v106, vdup_lane_s32(v107, 1)).u8[0])
                {
                  sub_262361124(&v279, *&v260[5 * v91 + 1], &v260[5 * v91 + 2], *&v260[5 * v74 + 1], &v260[5 * v74 + 2], &v236, &v236 + 8);
                  goto LABEL_168;
                }
              }
            }

            v108 = *v78;
            v109 = v260[5 * v76];
            v110 = vsub_f32(v109, *v78);
            v111 = vaddv_f32(vmul_f32(vsub_f32(v87, *v78), v110));
            v112 = vaddv_f32(vmul_f32(v110, v110));
            if (v112 < 0.000001)
            {
              v112 = 0.000001;
            }

            v96 = vmla_n_f32(v108, v110, v111 / v112);
            if (vaddv_f32(vmul_f32(vsub_f32(v96, v108), vsub_f32(v96, v109))) > 0.0 || (v113 = vsub_f32(v87, v96), v114 = vmul_f32(v113, v113), sqrtf(vaddv_f32(v114)) >= 0.65))
            {
              v66 = 0;
            }

            else
            {
              v115 = vsub_f32(v96, v79);
              v116 = vmul_f32(v115, v115);
              v117 = vsqrt_f32(vadd_f32(vzip1_s32(v116, v114), vzip2_s32(v116, v114)));
              __asm { FMOV            V2.2S, #5.0 }

              _D2.f32[0] = v80;
              v119.i32[0] = vsub_f32(_D2, v117).u32[0];
              v120 = vmul_f32(_D2, v117);
              v119.i32[1] = v120.i32[1];
              if (vcgt_f32(v119, vdup_lane_s32(v120, 1)).u8[0])
              {
                sub_262361124(&v279, *&v260[5 * v73 + 1], &v260[5 * v73 + 2], *&v260[5 * v76 + 1], &v260[5 * v76 + 2], &v236, &v236 + 8);
LABEL_168:
                v280 = 0u;
                *v281 = 0u;
                v279 = 0u;
                if (v73)
                {
                  v138 = v241.i64[0];
                  v139 = v73;
                  do
                  {
                    sub_26239BF38(&v279, (*(v239.i64[1] + 8 * (v138 / 0x55)) - 4080 * (v138 / 0x55) + 48 * v138));
                    sub_2621CC7B4(*(*(v239.i64[1] + 8 * (v241.i64[0] / 0x55uLL)) - 4080 * (v241.i64[0] / 0x55uLL) + 48 * v241.i64[0] + 24));
                    v241 = vaddq_s64(v241, xmmword_2623A7BE0);
                    v138 = v241.i64[0];
                    if (v241.i64[0] >= 0xAAuLL)
                    {
                      operator delete(*v239.i64[1]);
                      v138 = v241.i64[0] - 85;
                      v239.i64[1] += 8;
                      v241.i64[0] -= 85;
                    }

                    --v139;
                  }

                  while (v139);
                }

                for (i = v73 + 1; i < v74; ++i)
                {
                  sub_2621CC7B4(*(*(v239.i64[1] + 8 * (v241.i64[0] / 0x55uLL)) - 4080 * (v241.i64[0] / 0x55uLL) + 48 * v241.i64[0] + 24));
                  v241 = vaddq_s64(v241, xmmword_2623A7BE0);
                  if (v241.i64[0] > 0xA9uLL)
                  {
                    operator delete(*v239.i64[1]);
                    v239.i64[1] += 8;
                    v241.i64[0] -= 85;
                  }
                }

                if (v90)
                {
                  sub_2621D0F64(v270, "");
                  sub_262292AA0(&v267, v270, 0, *&v96);
                  if (SHIBYTE(v271) < 0)
                  {
                    operator delete(v270[0]);
                  }

                  if (v237)
                  {
                    sub_262292EA0(&v267 + 1, v236, &v236 + 1);
                  }

                  LODWORD(v286) = v219;
                  sub_262292E28(&v286 + 8, &v267);
                  v272 = v286;
                  sub_262292E28(&v273, &v286 + 8);
                  sub_26239C4B4(&v239, &v272);
                  sub_2621CC7B4(v275);
                  sub_2621CC7B4(*(&v287 + 1));
                  sub_2621CC7B4(v268);
                }

                while (v281[1])
                {
                  v141 = v281[1] + v281[0] - 1;
                  v142 = *(*(&v279 + 1) + 8 * (v141 / 0x55));
                  v143 = v241.i64[0];
                  if (!v241.i64[0])
                  {
                    sub_26239CF10(&v239);
                    v143 = v241.i64[0];
                  }

                  v144 = (v239.i64[1] + 8 * (v143 / 0x55));
                  v145 = *v144 - 4080 * (v143 / 0x55) + 48 * v143;
                  if (v240 == v239.i64[1])
                  {
                    v145 = 0;
                  }

                  if (v145 == *v144)
                  {
                    v145 = *(v144 - 1) + 4080;
                  }

                  v146 = (v142 - 4080 * (v141 / 0x55) + 48 * v141);
                  *(v145 - 48) = *v146;
                  sub_262292E28(v145 - 40, (v146 + 1));
                  v241 = vaddq_s64(v241, xmmword_2623A7860);
                  sub_26239BFE8(&v279);
                }

                sub_26239C068(&v279);
                sub_2621CC7B4(*(&v236 + 1));
                goto LABEL_210;
              }

              v66 = v96;
            }

            sub_2621CC7B4(0);
            if (v74 <= v73 + 2)
            {
              goto LABEL_145;
            }
          }
        }

        v69 = v260;
        v70 = v261;
        while (!sub_26239CA38(v69, v70, *v67))
        {
          v67 += 5;
          if (v67 == v68)
          {
            goto LABEL_122;
          }
        }

        v132 = v239.i64[1];
        v133 = v240;
        if (v240 == v239.i64[1])
        {
          v133 = v239.i64[1];
        }

        else
        {
          v134 = (v239.i64[1] + 8 * (v241.i64[0] / 0x55uLL));
          v135 = *v134 - 4080 * (v241.i64[0] / 0x55uLL) + 48 * v241.i64[0];
          v136 = *(v239.i64[1] + 8 * ((v241.i64[1] + v241.i64[0]) / 0x55uLL)) - 4080 * ((v241.i64[1] + v241.i64[0]) / 0x55uLL) + 48 * (v241.i64[1] + v241.i64[0]);
          if (v135 != v136)
          {
            do
            {
              sub_2621CC7B4(*(v135 + 24));
              v135 += 48;
              if (v135 - *v134 == 4080)
              {
                v137 = v134[1];
                ++v134;
                v135 = v137;
              }
            }

            while (v135 != v136);
            v132 = v239.i64[1];
            v133 = v240;
          }
        }

        v241.i64[1] = 0;
        v149 = (v133 - v132) >> 3;
        if (v149 >= 3)
        {
          do
          {
            operator delete(*v132);
            v132 = (v239.i64[1] + 8);
            v239.i64[1] = v132;
            v149 = (v240 - v132) >> 3;
          }

          while (v149 > 2);
        }

        if (v149 == 1)
        {
          v150 = 42;
        }

        else
        {
          if (v149 != 2)
          {
            goto LABEL_210;
          }

          v150 = 85;
        }

        v241.i64[0] = v150;
LABEL_210:
        *&v279 = &v249;
        sub_2621CC5A0(&v279);
        *&v279 = &v260;
        sub_2621CC5A0(&v279);
        a2 = v225;
      }

      else
      {
        v279 = 0uLL;
        *&v280 = 0;
        sub_262395B58(&v279, v242);
        if (v240 != v239.i64[1])
        {
          v60 = (v239.i64[1] + 8 * (v241.i64[0] / 0x55uLL));
          v61 = *v60 - 4080 * (v241.i64[0] / 0x55uLL) + 48 * v241.i64[0];
          v62 = *(v239.i64[1] + 8 * ((v241.i64[1] + v241.i64[0]) / 0x55uLL)) - 4080 * ((v241.i64[1] + v241.i64[0]) / 0x55uLL) + 48 * (v241.i64[1] + v241.i64[0]);
          while (v61 != v62)
          {
            sub_262395B58(&v279, v61 + 8);
            v61 += 48;
            if (v61 - *v60 == 4080)
            {
              v63 = v60[1];
              ++v60;
              v61 = v63;
            }
          }
        }

        sub_262395B58(&v279, v243);
        v273 = 0;
        v272 = 0;
        v274 = 0;
        sub_262292CB0(&v272, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
        sub_262397224(&v279, &v272);
        v121 = v272;
        v122 = v273;
        while (v121 != v122)
        {
          v124 = *(&v279 + 1);
          v123 = v279;
          if (sub_26239CA38(v279, *(&v279 + 1), *v121))
          {
            while (v123 != v124)
            {
              if (sub_262395F0C(v121, v123))
              {
                v125 = vsub_f32(*v121, *v123);
                if (sqrtf(vaddv_f32(vmul_f32(v125, v125))) < 0.65)
                {
                  goto LABEL_154;
                }
              }

              v123 += 5;
            }

            v126 = v239.i64[1];
            v127 = v240;
            if (v240 == v239.i64[1])
            {
              v127 = v239.i64[1];
            }

            else
            {
              v128 = (v239.i64[1] + 8 * (v241.i64[0] / 0x55uLL));
              v129 = *v128 - 4080 * (v241.i64[0] / 0x55uLL) + 48 * v241.i64[0];
              v130 = *(v239.i64[1] + 8 * ((v241.i64[1] + v241.i64[0]) / 0x55uLL)) - 4080 * ((v241.i64[1] + v241.i64[0]) / 0x55uLL) + 48 * (v241.i64[1] + v241.i64[0]);
              if (v129 != v130)
              {
                do
                {
                  sub_2621CC7B4(*(v129 + 24));
                  v129 += 48;
                  if (v129 - *v128 == 4080)
                  {
                    v131 = v128[1];
                    ++v128;
                    v129 = v131;
                  }
                }

                while (v129 != v130);
                v126 = v239.i64[1];
                v127 = v240;
              }
            }

            v241.i64[1] = 0;
            v147 = (v127 - v126) >> 3;
            if (v147 >= 3)
            {
              do
              {
                operator delete(*v126);
                v126 = (v239.i64[1] + 8);
                v239.i64[1] = v126;
                v147 = (v240 - v126) >> 3;
              }

              while (v147 > 2);
            }

            if (v147 == 1)
            {
              v148 = 42;
            }

            else
            {
              if (v147 != 2)
              {
                break;
              }

              v148 = 85;
            }

            v241.i64[0] = v148;
            break;
          }

LABEL_154:
          v121 += 5;
        }

        *&v286 = &v272;
        sub_2621CC5A0(&v286);
        v272 = &v279;
        sub_2621CC5A0(&v272);
      }

      if (a4[1] != *a4)
      {
        v273 = 0;
        v272 = 0;
        v274 = 0;
        sub_2621CBA84(&v272, v242);
        if (v240 != v239.i64[1])
        {
          v151 = (v239.i64[1] + 8 * (v241.i64[0] / 0x55uLL));
          v152 = *v151 - 4080 * (v241.i64[0] / 0x55uLL) + 48 * v241.i64[0];
          v153 = *(v239.i64[1] + 8 * ((v241.i64[1] + v241.i64[0]) / 0x55uLL)) - 4080 * ((v241.i64[1] + v241.i64[0]) / 0x55uLL) + 48 * (v241.i64[1] + v241.i64[0]);
          while (v152 != v153)
          {
            sub_2621CBA84(&v272, (v152 + 8));
            v152 += 48;
            if (v152 - *v151 == 4080)
            {
              v154 = v151[1];
              ++v151;
              v152 = v154;
            }
          }
        }

        sub_2621CBA84(&v272, v243);
        v155 = *a4;
        v156 = a4[1];
        v157 = v272;
        if (*a4 != v156)
        {
          v158 = v273;
          v159 = (v273 - v272) >> 3;
          while (2)
          {
            v279 = *v155;
            v280 = v155[1];
            v281[1] = 0;
            v282 = 0;
            v281[0] = 0;
            sub_2621CC8B4(v281, *(v155 + 4), *(v155 + 5), (*(v155 + 5) - *(v155 + 4)) >> 3);
            v160 = 0;
            v161 = 0;
            v162 = 0;
            do
            {
              if (v159 == v160)
              {
                v172 = v281[0];
                goto LABEL_244;
              }

              v163 = v160;
              v164 = vsub_f32(*&v157[8 * v160], *&v279);
              v165 = vaddv_f32(vmul_f32(*(&v279 + 8), v164));
              if (v165 >= 0.0)
              {
                v166 = v165 > *(&v280 + 2);
              }

              else
              {
                v166 = -1;
              }

              v167 = vaddv_f32(vmul_f32(v164, *&v280));
              if (v167 >= 0.0)
              {
                v168 = v167 > *(&v280 + 3);
              }

              else
              {
                v168 = -1;
              }

              v162 += v166;
              v161 += v168;
              if (v162 >= 0)
              {
                v169 = v162;
              }

              else
              {
                v169 = -v162;
              }

              v160 = v163 + 1;
              if (v161 >= 0)
              {
                v170 = v161;
              }

              else
              {
                v170 = -v161;
              }
            }

            while (v160 == v169 || v160 == v170);
            v172 = v281[0];
            if (v159 > v163)
            {
              v173 = v281[1];
              if (v281[0] == v281[1])
              {
                goto LABEL_242;
              }

              v174 = 0;
              v175 = v281[0];
              do
              {
                v176 = *v175++;
                v174 += sub_26233D994(v157, v158, v176);
              }

              while (v175 != v173);
              if ((v174 / ((v173 - v172) >> 3)) <= 0.3)
              {
LABEL_242:
                a2 = v225;
                goto LABEL_244;
              }

              v184 = v239.i64[1];
              v185 = v240;
              a2 = v225;
              if (v240 == v239.i64[1])
              {
                v185 = v239.i64[1];
              }

              else
              {
                v186 = (v239.i64[1] + 8 * (v241.i64[0] / 0x55uLL));
                v187 = *v186 - 4080 * (v241.i64[0] / 0x55uLL) + 48 * v241.i64[0];
                v188 = *(v239.i64[1] + 8 * ((v241.i64[1] + v241.i64[0]) / 0x55uLL)) - 4080 * ((v241.i64[1] + v241.i64[0]) / 0x55uLL) + 48 * (v241.i64[1] + v241.i64[0]);
                if (v187 != v188)
                {
                  do
                  {
                    sub_2621CC7B4(*(v187 + 24));
                    v187 += 48;
                    if (v187 - *v186 == 4080)
                    {
                      v189 = v186[1];
                      ++v186;
                      v187 = v189;
                    }
                  }

                  while (v187 != v188);
                  v184 = v239.i64[1];
                  v185 = v240;
                }
              }

              v241.i64[1] = 0;
              v190 = (v185 - v184) >> 3;
              if (v190 >= 3)
              {
                do
                {
                  operator delete(*v184);
                  v184 = (v239.i64[1] + 8);
                  v239.i64[1] = v184;
                  v190 = (v240 - v184) >> 3;
                }

                while (v190 > 2);
              }

              if (v190 == 1)
              {
                v191 = 42;
LABEL_280:
                v241.i64[0] = v191;
              }

              else if (v190 == 2)
              {
                v191 = 85;
                goto LABEL_280;
              }

              if (v172)
              {
                operator delete(v172);
              }

              break;
            }

LABEL_244:
            if (v172)
            {
              operator delete(v172);
            }

            v155 += 4;
            if (v155 != v156)
            {
              continue;
            }

            break;
          }
        }

        if (v157)
        {
          operator delete(v157);
        }
      }

      v177 = v245;
      if (v245 >= v246)
      {
        v179 = 0xAAAAAAAAAAAAAAABLL * ((v245 - v244) >> 4) + 1;
        if (v179 > 0x555555555555555)
        {
          sub_2621CBEB0();
        }

        if (0x5555555555555556 * ((v246 - v244) >> 4) > v179)
        {
          v179 = 0x5555555555555556 * ((v246 - v244) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v246 - v244) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v180 = 0x555555555555555;
        }

        else
        {
          v180 = v179;
        }

        v281[0] = &v244;
        if (v180)
        {
          if (v180 <= 0x555555555555555)
          {
            operator new();
          }

          sub_2621C6A34();
        }

        *&v279 = 0;
        *(&v279 + 1) = 16 * ((v245 - v244) >> 4);
        v280 = *(&v279 + 1);
        sub_26239CA8C(*(&v279 + 1), &v239);
        v178 = (v280 + 48);
        v181 = (*(&v279 + 1) - (v245 - v244));
        memcpy(v181, v244, v245 - v244);
        v182 = v244;
        v183 = v246;
        v244 = v181;
        v245 = v178;
        v246 = *(&v280 + 1);
        *&v280 = v182;
        *(&v280 + 1) = v183;
        *(&v279 + 1) = v182;
        *&v279 = v182;
        sub_26239CEC0(&v279);
      }

      else
      {
        sub_26239CA8C(v245, &v239);
        v178 = v177 + 48;
      }

      v245 = v178;
      sub_26239C068(&v239);
      sub_2621CC7B4(v243[2]);
      sub_2621CC7B4(v242[2]);
      v7 = v224 + 88;
      v6 = v228;
      if (v224 + 88 == v220)
      {
        v7 = v247;
        v192 = v248;
        goto LABEL_284;
      }
    }
  }

  v192 = v247;
LABEL_284:
  v193 = 0x2E8BA2E8BA2E8BA3 * ((v192 - v7) >> 3);
  if (v193 >= 1)
  {
    v227 = v193 - 1;
    v194 = v193 & 0x7FFFFFFF;
    v226 = v194;
    v229 = 0x2E8BA2E8BA2E8BA3 * ((v192 - v7) >> 3);
    do
    {
      v195 = v194 - 1;
      v196 = &v244[48 * v194 - 48];
      if (v196[2].i64[1])
      {
        v197 = v247 + 88 * v195;
        v200 = *(v197 + 80);
        v198 = (v197 + 80);
        v199 = v200;
        v201 = v200 + 1;
        LOBYTE(v279) = 0;
        LOBYTE(v282) = 0;
        if (v193 >= 2)
        {
          v202 = (v227 + v195) % v226;
          if ((*(v247 + 88 * v202 + 80) + 1) % v193 == *v198)
          {
            v203 = &v244[48 * v202];
            v204 = v203[5];
            if (v204)
            {
              v205 = 0;
              while (1)
              {
                v206 = (*(v196->i64[1] + 8 * (v196[2].i64[0] / 0x55uLL)) - 4080 * (v196[2].i64[0] / 0x55uLL) + 48 * v196[2].i64[0]);
                if (*v206 != *(*(v203[1] + 8 * ((v204 + v203[4] - 1) / 0x55uLL)) - 4080 * ((v204 + v203[4] - 1) / 0x55uLL) + 48 * (v204 + v203[4] - 1)))
                {
                  break;
                }

                *&v279 = *v206;
                if (v282 == 1)
                {
                  sub_262339704(&v272, &v279 + 8, (v206 + 1));
                  sub_2621CC7B4(v274);
                }

                else
                {
                  sub_262292E28(&v279 + 8, (v206 + 1));
                  LOBYTE(v282) = 1;
                }

                sub_2621CC7B4(*(*(v196->i64[1] + 8 * (v196[2].i64[0] / 0x55uLL)) - 4080 * (v196[2].i64[0] / 0x55uLL) + 48 * v196[2].i64[0] + 24));
                v196[2] = vaddq_s64(v196[2], xmmword_2623A7BE0);
                sub_2623A21B0(v196, 1);
                sub_26239BFE8(v203);
                if (v196[2].i64[1])
                {
                  v204 = v203[5];
                  v205 = 1;
                  if (v204)
                  {
                    continue;
                  }
                }

                goto LABEL_299;
              }

              if ((v205 & 1) == 0)
              {
                goto LABEL_302;
              }

LABEL_299:
              v207 = *v228 + 40 * *(v247 + 88 * v195 + 80);
              v208 = sub_262339830(v207 + 40, v228[1], v207);
              v209 = v228[1];
              if (v209 != v208)
              {
                do
                {
                  v210 = v209 - 40;
                  sub_2621CC7B4(*(v209 - 24));
                  v209 = v210;
                }

                while (v210 != v208);
              }

              v228[1] = v208;
              v201 = v199;
            }
          }
        }

LABEL_302:
        if (v282 == 1)
        {
          sub_2623392A4(v228, *v228 + 40 * v201++, &v279 + 8);
        }

        v211 = v196->i64[1];
        if (v196[1].i64[0] != v211)
        {
          v212 = v196[2].u64[0];
          v213 = v196[2].i64[1];
          v214 = (v211 + 8 * (v212 / 0x55));
          v215 = (*v214 - 4080 * (v212 / 0x55) + 48 * v212);
          v216 = *(v211 + 8 * ((v213 + v212) / 0x55)) - 4080 * ((v213 + v212) / 0x55) + 48 * (v213 + v212);
          if (v215 != v216)
          {
            v217 = 40 * v201;
            do
            {
              v272 = *v215;
              sub_262292E28(&v273, (v215 + 1));
              sub_2623392A4(v228, v217 + *v228, &v273);
              sub_2621CC7B4(v275);
              v215 += 6;
              if ((v215 - *v214) == 4080)
              {
                v218 = v214[1];
                ++v214;
                v215 = v218;
              }

              v217 += 40;
            }

            while (v215 != v216);
          }
        }

        if (v282 == 1)
        {
          sub_2621CC7B4(*(&v280 + 1));
        }

        v193 = v229;
      }

      v46 = v194-- <= 1;
    }

    while (!v46);
  }

  *&v279 = &v244;
  sub_26239CE3C(&v279);
  *&v279 = &v247;
  sub_262395EB8(&v279);
}

void sub_262399394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_2621CC7B4(a46);
  STACK[0x350] = &STACK[0x210];
  sub_2621CC5A0(&STACK[0x350]);
  STACK[0x350] = &STACK[0x298];
  sub_2621CC5A0(&STACK[0x350]);
  sub_26239C068(&a51);
  sub_2621CC7B4(a65);
  sub_2621CC7B4(a60);
  a58 = &a69;
  sub_26239CE3C(&a58);
  a58 = &a72;
  sub_262395EB8(&a58);
  _Unwind_Resume(a1);
}

void sub_26239975C(uint64_t *a1, uint64_t *a2, float a3)
{
  v72[10] = *MEMORY[0x277D85DE8];
  sub_2623958B8(v66, a1);
  v4 = -1171354717 * ((v66[1] - v66[0]) >> 3);
  if (v4 >= 1)
  {
    do
    {
      v5 = v4 - 1;
      sub_2623968B4(v63, v66[0] + 88 * (v4 - 1));
      v59 = 0;
      v60 = 0;
      v58 = 0;
      sub_262292CB0(&v58, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
      v55 = 0;
      v56 = 0uLL;
      v7 = v63[0];
      v8 = v64[0];
      v10 = v58;
      v9 = v59;
      if (v58 == v59)
      {
        v31 = 0;
        v30 = 0;
      }

      else
      {
        do
        {
          v11 = vsub_f32(v7, *v10);
          v12 = vsub_f32(v8, *v10);
          v6 = vaddv_f32(vmul_f32(v11, v12));
          if (v6 <= 0.0)
          {
            v13 = vmul_f32(v11, v11);
            v14 = vmul_f32(v12, v12);
            v15 = vsqrt_f32(vadd_f32(vzip1_s32(v13, v14), vzip2_s32(v13, v14)));
            v16 = vmul_lane_f32(v15, v15, 1).f32[0];
            if (v16 < 0.000001)
            {
              v16 = 0.000001;
            }

            v6 = v6 / v16;
            if (v6 < a3)
            {
              *&v71 = v6;
              sub_262292E28(v72, v10);
              v17 = v56;
              if (v56 >= *(&v56 + 1))
              {
                v19 = 0xAAAAAAAAAAAAAAABLL * ((v56 - v55) >> 4);
                v20 = v19 + 1;
                if (v19 + 1 > 0x555555555555555)
                {
                  sub_2621CBEB0();
                }

                if (0x5555555555555556 * ((*(&v56 + 1) - v55) >> 4) > v20)
                {
                  v20 = 0x5555555555555556 * ((*(&v56 + 1) - v55) >> 4);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((*(&v56 + 1) - v55) >> 4) >= 0x2AAAAAAAAAAAAAALL)
                {
                  v21 = 0x555555555555555;
                }

                else
                {
                  v21 = v20;
                }

                v70 = &v55;
                if (v21)
                {
                  if (v21 <= 0x555555555555555)
                  {
                    operator new();
                  }

                  sub_2621C6A34();
                }

                v67 = 0;
                v68 = (16 * ((v56 - v55) >> 4));
                v69 = v68;
                v68->i32[0] = v71;
                sub_262292E28(48 * v19 + 8, v72);
                v23 = v55;
                v22 = v56;
                v24 = (v68 - (v56 - v55));
                *&v69 = v69 + 48;
                if (v56 != v55)
                {
                  v25 = 0;
                  v26 = (v68 - (v56 - v55));
                  v27 = v55;
                  do
                  {
                    v26->i32[0] = v27->i32[0];
                    sub_262292E28(&v26[1], &v27[1]);
                    v27 += 6;
                    v26 += 6;
                    v25 -= 48;
                  }

                  while (v27 != v22);
                  do
                  {
                    sub_2621CC7B4(*&v23[3]);
                    v23 += 6;
                  }

                  while (v23 != v22);
                }

                v28 = v55;
                v29 = *(&v56 + 1);
                v55 = v24;
                v54 = v69;
                v56 = v69;
                *&v69 = v28;
                *(&v69 + 1) = v29;
                v67 = v28;
                v68 = v28;
                sub_2623A03E0(&v67);
                v18 = v54;
              }

              else
              {
                *v56 = v71;
                sub_262292E28(v17 + 8, v72);
                v18 = v17 + 48;
              }

              *&v56 = v18;
              sub_2621CC7B4(v72[2]);
            }
          }

          v10 += 5;
        }

        while (v10 != v9);
        v30 = v55;
        v31 = v56;
      }

      v32 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 4));
      if (v31 == v30)
      {
        v33 = 0;
      }

      else
      {
        v33 = v32;
      }

      sub_26239A3CC(v30, v31, v33, 1, v6);
      v35 = v55;
      v34 = v56;
LABEL_31:
      if (v35 == v34)
      {
        v39 = 0;
        v61[0].i8[0] = 0;
      }

      else
      {
        v36 = v58;
        v37 = v59;
        while (v36 != v37)
        {
          v38 = vsub_f32(*v36, v35[1]);
          if (fabsf(sqrtf(vaddv_f32(vmul_f32(v38, v38)))) >= 0.07 && !sub_262395F0C(v36, &v35[1]) && (sub_262395F0C(v36, v63) && sub_2621DCE38(v7, *v36, v8, v35[1]) || sub_262395F0C(v36, v64) && sub_2621DCE38(v8, *v36, v7, v35[1])))
          {
            v35 += 6;
            goto LABEL_31;
          }

          v36 += 5;
        }

        sub_262292E28(v61, &v35[1]);
        v39 = 1;
      }

      v62 = v39;
      v71 = &v55;
      sub_26239C1B8(&v71);
      v71 = &v58;
      sub_2621CC5A0(&v71);
      if (v62 == 1)
      {
        v40 = v65 + 1;
        v41 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
        if (v41 >= v65 + 1 && v41 >= 3)
        {
          v43 = v40 % v41;
          v44 = v40 % v41 + 1 == v41 ? 0 : v43 + 1;
          v45 = sub_262395F0C(v61, *a1 + 40 * v43);
          v46 = *a1;
          if (!v45 || (v47 = sub_262395F0C(v61, v46 + 40 * v44), v46 = *a1, !v47) || vaddv_f32(vmul_f32(vsub_f32(*(v46 + 40 * v43), v61[0]), vsub_f32(*(v46 + 40 * v43), *(v46 + 40 * v44)))) <= 0.00001)
          {
            v48 = v43 + v41;
            v49 = (v43 + v41 - 1) % v41;
            if (!sub_262395F0C(v61, v46 + 40 * v49) || (v50 = (v48 - 2) % v41, !sub_262395F0C(v61, *a1 + 40 * v50)) || vaddv_f32(vmul_f32(vsub_f32(*(*a1 + 40 * v49), v61[0]), vsub_f32(*(*a1 + 40 * v49), *(*a1 + 40 * v50)))) <= 0.00001)
            {
              if (v62)
              {
                sub_262292E28(&v71, v61);
                memset(v57, 0, sizeof(v57));
                v67 = v57;
                LOBYTE(v68) = 0;
                operator new();
              }

              sub_2622386B8();
            }
          }
        }
      }

      v4 = v5;
      if (v62 == 1)
      {
        sub_2621CC7B4(*&v61[2]);
      }

      sub_2621CC7B4(v64[2]);
      sub_2621CC7B4(v63[2]);
    }

    while (v5 > 0);
  }

  v63[0] = v66;
  sub_262395EB8(v63);
  v51 = *MEMORY[0x277D85DE8];
}

void sub_26239A110(uint64_t *a1)
{
  v1 = a1[1];
  v2 = -858993459 * ((v1 - *a1) >> 3);
  if (v2 >= 4)
  {
    v4 = 0;
    do
    {
      v5 = *a1;
      v6 = *(*a1 + 40 * v4);
      v7 = vsub_f32(*(*a1 + 40 * ((v2 - 1 + v4) % v2)), v6);
      v8 = vsub_f32(*(*a1 + 40 * ((v4 + 1) % v2)), v6);
      v9 = vaddv_f32(vmul_f32(v7, v8));
      v10 = vmul_f32(v7, v7);
      v11 = vmul_f32(v8, v8);
      v12 = vsqrt_f32(vadd_f32(vzip1_s32(v10, v11), vzip2_s32(v10, v11)));
      v13 = v9 / fmaxf(vmul_lane_f32(v12, v12, 1).f32[0], 1.1755e-38);
      if (v13 <= 1.0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 1.0;
      }

      if (v13 >= -1.0)
      {
        v15 = v14;
      }

      else
      {
        v15 = -1.0;
      }

      v16 = acosf(v15) * 180.0 / 3.14159274;
      if (v16 <= 2.5)
      {
        v1 = sub_262339830(v5 + 40 * v4 + 40, v1, v5 + 40 * v4);
        v17 = a1[1];
        if (v17 != v1)
        {
          do
          {
            v18 = v17 - 40;
            sub_2621CC7B4(*(v17 - 24));
            v17 = v18;
          }

          while (v18 != v1);
        }

        a1[1] = v1;
        if (v2 < 5)
        {
          return;
        }

        --v2;
      }

      else
      {
        ++v4;
      }
    }

    while (v4 < v2);
    if (v2 >= 4)
    {
      v19 = v2;
      do
      {
        v20 = v19 - 1;
        v21 = v2 - 1;
        v22 = (v2 - 1 + v19 - 1) % v2;
        if (sub_262395F0C(*a1 + 40 * (v19 % v2), *a1 + 40 * v22))
        {
          v23 = *a1;
          if (v2 == 4)
          {
            v24 = *(v23 + 40 * v20);
            v25 = *(v23 + 40 * (v19 % 4u));
            v26 = vsub_f32(v24, v25);
            v27 = vmul_f32(v26, v26);
            v28 = *(v23 + 40 * v22);
            v29 = vsub_f32(v24, v28);
            v30 = vmul_f32(v29, v29);
            v31 = vadd_f32(vzip1_s32(v27, v30), vzip2_s32(v27, v30));
            v32 = *(v23 + 40 * ((v19 + 1) & 3));
            v33 = vsqrt_f32(v31);
            v34 = vsub_f32(v32, v25);
            v35 = vmul_f32(v34, v34);
            v36 = vsub_f32(v32, v28);
            v37 = vmul_f32(v36, v36);
            v38 = vsqrt_f32(vadd_f32(vzip1_s32(v35, v37), vzip2_s32(v35, v37)));
            v39 = vadd_f32(vzip1_s32(v33, v38), vzip2_s32(v33, v38));
            if (vcgt_f32(v39, vdup_lane_s32(v39, 1)).u8[0])
            {
              v20 = (v19 + 1) & 3;
            }
          }

          v40 = sub_262339830(v23 + 40 * v20 + 40, a1[1], v23 + 40 * v20);
          v41 = a1[1];
          if (v41 != v40)
          {
            do
            {
              v42 = v41 - 40;
              sub_2621CC7B4(*(v41 - 24));
              v41 = v42;
            }

            while (v42 != v40);
          }

          a1[1] = v40;
          v19 = v21;
          v2 = v21;
        }

        else
        {
          --v19;
        }
      }

      while (v2 >= 4 && v19 > 0);
    }
  }
}

float sub_26239A3CC(int *a1, float *a2, uint64_t a3, char a4, float result)
{
LABEL_1:
  v8 = a2;
  v9 = (a2 - 12);
  v119 = (a2 - 36);
  v120 = (a2 - 24);
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = v8 - v10;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v10) >> 4);
    v13 = v12 - 2;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    v8 = a2;
    if (v12 == 2)
    {
      v69 = a2 - 12;
      result = *(a2 - 12);
      if (result >= *a1)
      {
        return result;
      }

LABEL_111:
      v72 = a1;
      v73 = v69;
      goto LABEL_112;
    }

LABEL_9:
    if (v11 <= 1151)
    {
      if (a4)
      {
        if (a1 != v8)
        {
          v74 = a1 + 12;
          if (a1 + 12 != a2)
          {
            v75 = 0;
            v76 = a1;
            do
            {
              v77 = v74;
              result = v76[12];
              if (result < *v76)
              {
                v126 = v76[12];
                sub_262292E28(&v127, (v76 + 14));
                v78 = *v76;
                v79 = v75;
                while (1)
                {
                  *(a1 + v79 + 48) = v78;
                  v80 = a1 + v79 + 8;
                  sub_262339704(&v122, a1 + v79 + 56, v80);
                  sub_2621CC7B4(v124);
                  if (!v79)
                  {
                    break;
                  }

                  v81 = v126;
                  v78 = *(a1 + v79 - 48);
                  v79 -= 48;
                  if (v126 >= v78)
                  {
                    v82 = (a1 + v79 + 48);
                    v80 = a1 + v79 + 56;
                    goto LABEL_124;
                  }
                }

                v81 = v126;
                v82 = a1;
LABEL_124:
                *v82 = v81;
                sub_262339704(&v122, v80, &v127);
                sub_2621CC7B4(v124);
                sub_2621CC7B4(v129);
              }

              v74 = v77 + 12;
              v75 += 48;
              v76 = v77;
            }

            while (v77 + 12 != a2);
          }
        }
      }

      else if (a1 != v8)
      {
        v113 = a1 + 12;
        if (a1 + 12 != a2)
        {
          v114 = a1 + 14;
          do
          {
            v115 = v113;
            result = *(a1 + 12);
            if (result < *a1)
            {
              v126 = *(a1 + 12);
              sub_262292E28(&v127, (a1 + 14));
              v116 = *a1;
              v117 = v114;
              do
              {
                *(v117 - 8) = v116;
                v118 = v117 - 48;
                sub_262339704(&v122, v117, v117 - 48);
                sub_2621CC7B4(v124);
                v116 = *(v117 - 104);
                v117 -= 48;
              }

              while (v126 < v116);
              *(v118 - 8) = v126;
              sub_262339704(&v122, v118, &v127);
              sub_2621CC7B4(v124);
              sub_2621CC7B4(v129);
            }

            v113 = v115 + 12;
            v114 += 12;
            a1 = v115;
          }

          while (v115 + 12 != a2);
        }
      }

      return result;
    }

    if (!a3)
    {
      if (a1 == v8)
      {
        return result;
      }

      v83 = v13 >> 1;
      v84 = v13 >> 1;
      do
      {
        v85 = v84;
        if (v83 >= v84)
        {
          v86 = (2 * v84) | 1;
          v87 = &a1[12 * v86];
          if (2 * v84 + 2 < v12 && *v87 < v87[12])
          {
            v87 += 12;
            v86 = 2 * v84 + 2;
          }

          v88 = &a1[12 * v84];
          if (*v87 >= *v88)
          {
            v126 = *v88;
            sub_262292E28(&v127, (v88 + 2));
            v89 = *v87;
            while (1)
            {
              v90 = v87;
              *v88 = v89;
              sub_262339704(&v122, (v88 + 2), (v87 + 2));
              sub_2621CC7B4(v124);
              if (v83 < v86)
              {
                break;
              }

              v91 = 2 * v86;
              v86 = (2 * v86) | 1;
              v87 = &a1[12 * v86];
              v92 = v91 + 2;
              if (v92 < v12 && *v87 < v87[12])
              {
                v87 += 12;
                v86 = v92;
              }

              v89 = *v87;
              v93 = v126;
              v88 = v90;
              if (*v87 < v126)
              {
                goto LABEL_142;
              }
            }

            v93 = v126;
LABEL_142:
            *v90 = v93;
            sub_262339704(&v122, (v90 + 2), &v127);
            sub_2621CC7B4(v124);
            sub_2621CC7B4(v129);
          }
        }

        v84 = v85 - 1;
      }

      while (v85);
      v94 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 4);
      while (2)
      {
        v95 = a2;
        v122 = *a1;
        sub_262292E28(&v123, (a1 + 2));
        v96 = 0;
        v97 = a1;
        do
        {
          v98 = &v97[12 * v96];
          v99 = v98 + 12;
          v100 = 2 * v96;
          v96 = (2 * v96) | 1;
          v101 = v100 + 2;
          if (v101 < v94)
          {
            v103 = *(v98 + 24);
            v102 = v98 + 24;
            if (*(v102 - 12) < v103)
            {
              v99 = v102;
              v96 = v101;
            }
          }

          *v97 = *v99;
          sub_262339704(&v126, (v97 + 2), (v99 + 2));
          sub_2621CC7B4(v128);
          v97 = v99;
        }

        while (v96 <= ((v94 - 2) >> 1));
        a2 -= 12;
        if (v99 != (v95 - 12))
        {
          *v99 = *(v95 - 12);
          v104 = (v95 - 10);
          sub_262339704(&v126, (v99 + 2), v104);
          sub_2621CC7B4(v128);
          *a2 = v122;
          sub_262339704(&v126, v104, &v123);
          sub_2621CC7B4(v128);
          v105 = v99 - a1 + 48;
          if (v105 >= 49)
          {
            v106 = (0xAAAAAAAAAAAAAAABLL * (v105 >> 4) - 2) >> 1;
            v107 = &a1[12 * v106];
            if (*v107 < *v99)
            {
              v126 = *v99;
              sub_262292E28(&v127, (v99 + 2));
              v108 = *v107;
              while (1)
              {
                v109 = v107;
                *v99 = v108;
                sub_262339704(v130, (v99 + 2), (v107 + 2));
                sub_2621CC7B4(v131);
                if (!v106)
                {
                  break;
                }

                v106 = (v106 - 1) >> 1;
                v107 = &a1[12 * v106];
                v108 = *v107;
                v110 = v126;
                v99 = v109;
                if (*v107 >= v126)
                {
                  goto LABEL_159;
                }
              }

              v110 = v126;
LABEL_159:
              *v109 = v110;
              sub_262339704(v130, (v109 + 2), &v127);
              sub_2621CC7B4(v131);
              v111 = v129;
LABEL_160:
              sub_2621CC7B4(v111);
            }
          }

          sub_2621CC7B4(v125);
          if (v94-- <= 2)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v99 = v122;
      sub_262339704(&v126, (v99 + 2), &v123);
      v111 = v128;
      goto LABEL_160;
    }

    v14 = v12 >> 1;
    v15 = &a1[12 * (v12 >> 1)];
    v16 = *v9;
    if (v11 >= 0x1801)
    {
      v17 = *v15;
      if (*v15 >= *a1)
      {
        if (v16 < v17)
        {
          sub_26239B394(v15, v9);
          if (*v15 < *a1)
          {
            v18 = a1;
            v19 = v15;
            goto LABEL_25;
          }
        }
      }

      else
      {
        v18 = a1;
        if (v16 < v17)
        {
          goto LABEL_16;
        }

        sub_26239B394(a1, v15);
        if (*v9 < *v15)
        {
          v18 = v15;
LABEL_16:
          v19 = (a2 - 12);
LABEL_25:
          sub_26239B394(v18, v19);
        }
      }

      v23 = &a1[12 * v14];
      v25 = *(v23 - 12);
      v24 = v23 - 12;
      v26 = v25;
      v27 = *v120;
      if (v25 >= *(a1 + 12))
      {
        if (v27 < v26)
        {
          sub_26239B394(v24, v120);
          if (*v24 < *(a1 + 12))
          {
            v28 = a1 + 12;
            v29 = v24;
            goto LABEL_38;
          }
        }
      }

      else
      {
        v28 = a1 + 12;
        if (v27 < v26)
        {
          goto LABEL_30;
        }

        sub_26239B394(v28, v24);
        if (*v120 < *v24)
        {
          v28 = v24;
LABEL_30:
          v29 = (a2 - 24);
LABEL_38:
          sub_26239B394(v28, v29);
        }
      }

      v30 = &a1[12 * v14];
      v32 = *(v30 + 12);
      v31 = v30 + 12;
      v33 = v32;
      v34 = *v119;
      if (v32 >= *(a1 + 24))
      {
        if (v34 < v33)
        {
          sub_26239B394(v31, v119);
          if (*v31 < *(a1 + 24))
          {
            v35 = a1 + 24;
            v36 = v31;
            goto LABEL_47;
          }
        }
      }

      else
      {
        v35 = a1 + 24;
        if (v34 < v33)
        {
          goto LABEL_43;
        }

        sub_26239B394(v35, v31);
        if (*v119 < *v31)
        {
          v35 = v31;
LABEL_43:
          v36 = (a2 - 36);
LABEL_47:
          sub_26239B394(v35, v36);
        }
      }

      v37 = *v15;
      v38 = *v31;
      if (*v15 >= *v24)
      {
        if (v38 < v37)
        {
          sub_26239B394(v15, v31);
          if (*v15 < *v24)
          {
            v39 = v24;
            v40 = v15;
            goto LABEL_56;
          }
        }
      }

      else
      {
        v39 = v24;
        if (v38 < v37)
        {
          goto LABEL_52;
        }

        sub_26239B394(v24, v15);
        if (*v31 < *v15)
        {
          v39 = v15;
LABEL_52:
          v40 = v31;
LABEL_56:
          sub_26239B394(v39, v40);
        }
      }

      v41 = *a1;
      *a1 = *v15;
      *v15 = v41;
      v42 = (v15 + 2);
      sub_262292E28(&v126, (a1 + 2));
      sub_262339704(&v122, (a1 + 2), v42);
      sub_2621CC7B4(v124);
      sub_262339704(v130, v42, &v126);
      sub_2621CC7B4(v131);
      sub_2621CC7B4(v128);
      goto LABEL_58;
    }

    v20 = *a1;
    if (*a1 >= *v15)
    {
      if (v16 >= v20)
      {
        goto LABEL_58;
      }

      sub_26239B394(a1, v9);
      if (*a1 >= *v15)
      {
        goto LABEL_58;
      }

      v21 = v15;
      v22 = a1;
      goto LABEL_34;
    }

    v21 = v15;
    if (v16 < v20)
    {
      goto LABEL_21;
    }

    sub_26239B394(v15, a1);
    if (*v9 < *a1)
    {
      v21 = a1;
LABEL_21:
      v22 = (a2 - 12);
LABEL_34:
      sub_26239B394(v21, v22);
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v43 = *a1;
LABEL_61:
      v126 = *&v43;
      sub_262292E28(&v127, (a1 + 2));
      v44 = v126;
      v45 = a1;
      do
      {
        v46 = v45;
        v47 = *(v45 + 12);
        v45 += 12;
      }

      while (v47 < v126);
      v48 = v8;
      if (v46 == a1)
      {
        v48 = v8;
        do
        {
          if (v45 >= v48)
          {
            break;
          }

          v50 = *(v48 - 12);
          v48 -= 12;
        }

        while (v50 >= v126);
      }

      else
      {
        do
        {
          v49 = *(v48 - 12);
          v48 -= 12;
        }

        while (v49 >= v126);
      }

      if (v45 >= v48)
      {
        v10 = v45;
      }

      else
      {
        v51 = v48;
        v10 = v45;
        do
        {
          sub_26239B394(v10, v51);
          v44 = v126;
          do
          {
            v52 = *(v10 + 12);
            v10 += 12;
          }

          while (v52 < v126);
          do
          {
            v53 = *(v51 - 12);
            v51 -= 12;
          }

          while (v53 >= v126);
        }

        while (v10 < v51);
      }

      if (v10 - 12 != a1)
      {
        *a1 = *(v10 - 12);
        sub_262339704(&v122, (a1 + 2), (v10 - 10));
        sub_2621CC7B4(v124);
        v44 = v126;
      }

      *(v10 - 12) = v44;
      sub_262339704(&v122, (v10 - 10), &v127);
      sub_2621CC7B4(v124);
      sub_2621CC7B4(v129);
      if (v45 < v48)
      {
        goto LABEL_82;
      }

      v54 = sub_26239B540(a1, v10 - 12);
      if (sub_26239B540(v10, v8))
      {
        a2 = (v10 - 12);
        if (v54)
        {
          return result;
        }

        goto LABEL_1;
      }

      if ((v54 & 1) == 0)
      {
LABEL_82:
        sub_26239A3CC(a1, v10 - 12, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v43 = *a1;
      if (*(a1 - 12) < *a1)
      {
        goto LABEL_61;
      }

      v126 = *a1;
      sub_262292E28(&v127, (a1 + 2));
      v55 = v126;
      if (v126 >= *v9)
      {
        v57 = a1 + 12;
        do
        {
          v10 = v57;
          if (v57 >= v8)
          {
            break;
          }

          v57 += 12;
        }

        while (v126 >= *v10);
      }

      else
      {
        v10 = a1;
        do
        {
          v56 = *(v10 + 12);
          v10 += 12;
        }

        while (v126 >= v56);
      }

      v58 = v8;
      if (v10 < v8)
      {
        v58 = v8;
        do
        {
          v59 = *(v58 - 12);
          v58 -= 12;
        }

        while (v126 < v59);
      }

      while (v10 < v58)
      {
        sub_26239B394(v10, v58);
        v55 = v126;
        do
        {
          v60 = *(v10 + 12);
          v10 += 12;
        }

        while (v126 >= v60);
        do
        {
          v61 = *(v58 - 12);
          v58 -= 12;
        }

        while (v126 < v61);
      }

      if (v10 - 12 != a1)
      {
        *a1 = *(v10 - 12);
        sub_262339704(&v122, (a1 + 2), (v10 - 10));
        sub_2621CC7B4(v124);
        v55 = v126;
      }

      *(v10 - 12) = v55;
      sub_262339704(&v122, (v10 - 10), &v127);
      sub_2621CC7B4(v124);
      sub_2621CC7B4(v129);
      a4 = 0;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {
      sub_26239B428(a1, a1 + 12, a1 + 24, v9);
      return result;
    }

    if (v12 == 5)
    {
      v62 = (a1 + 12);
      v63 = (a1 + 24);
      v64 = (a1 + 36);
      sub_26239B428(a1, a1 + 12, a1 + 24, a1 + 36);
      v66 = *(v8 - 12);
      v65 = (v8 - 12);
      result = v66;
      if (v66 < *(a1 + 36))
      {
        sub_26239B394(a1 + 36, v65);
        result = *v64;
        if (*v64 < *v63)
        {
          sub_26239B394(a1 + 24, a1 + 36);
          result = *v63;
          if (*v63 < *v62)
          {
            v67 = a1 + 12;
            v68 = a1 + 24;
            goto LABEL_166;
          }
        }
      }

      return result;
    }

    goto LABEL_9;
  }

  v62 = (a1 + 12);
  result = *(a1 + 12);
  v70 = *(v8 - 12);
  v69 = v8 - 12;
  v71 = v70;
  if (result < *a1)
  {
    if (v71 < result)
    {
      goto LABEL_111;
    }

    sub_26239B394(a1, a1 + 12);
    result = *v69;
    if (*v69 >= *(a1 + 12))
    {
      return result;
    }

    v73 = v69;
    v72 = a1 + 12;
LABEL_112:
    sub_26239B394(v72, v73);
    return result;
  }

  if (v71 < result)
  {
    v67 = a1 + 12;
    v68 = v69;
LABEL_166:
    sub_26239B394(v67, v68);
    result = *(a1 + 12);
    if (result < *a1)
    {
      v72 = a1;
      v73 = v62;
      goto LABEL_112;
    }
  }

  return result;
}

void sub_26239B04C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v11 = *a1;
    v12 = 0x2E8BA2E8BA2E8BA3 * ((v7 - *a1) >> 3) + 1;
    if (v12 > 0x2E8BA2E8BA2E8BALL)
    {
      sub_2621CBEB0();
    }

    v13 = a2 - v11;
    v14 = 0x2E8BA2E8BA2E8BA3 * ((v6 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x1745D1745D1745DLL)
    {
      v15 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v15 = v12;
    }

    v28 = a1;
    if (v15)
    {
      sub_262396B80(v15);
    }

    v16 = 8 * (v13 >> 3);
    v25 = 0;
    v26 = v16;
    v27 = v16;
    if (!(0x2E8BA2E8BA2E8BA3 * (v13 >> 3)))
    {
      if (v13 < 1)
      {
        if (v11 == a2)
        {
          v19 = 1;
        }

        else
        {
          v19 = 0x5D1745D1745D1746 * (v13 >> 3);
        }

        v29 = a1;
        sub_262396B80(v19);
      }

      v16 -= 88 * ((0x2E8BA2E8BA2E8BA3 * (v13 >> 3) + 1) >> 1);
      v26 = v16;
      *&v27 = v16;
    }

    sub_262396B2C(v16, a3);
    *&v27 = v27 + 88;
    sub_262396BDC(a1, a2, a1[1], v27);
    v20 = *a1;
    v21 = v26;
    *&v27 = v27 + a1[1] - a2;
    a1[1] = a2;
    v22 = v21 + v20 - a2;
    sub_262396BDC(a1, v20, a2, v22);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    *(a1 + 1) = v27;
    *&v27 = v23;
    *(&v27 + 1) = v24;
    v25 = v23;
    v26 = v23;
    sub_262396CCC(&v25);
  }

  else if (a2 == v7)
  {
    sub_262396B2C(a1[1], a3);
    a1[1] = v7 + 88;
  }

  else
  {
    v8 = v7 - 88;
    if (v7 < 0x58)
    {
      v10 = a1[1];
    }

    else
    {
      v9 = v7 - 88;
      v10 = a1[1];
      do
      {
        sub_262396B2C(v10, v9);
        v9 += 88;
        v10 += 88;
      }

      while (v9 < v7);
    }

    a1[1] = v10;
    if (v7 != a2 + 88)
    {
      v17 = a2 - v7 + 88;
      v18 = v7 - 176;
      do
      {
        sub_2623967E0(v8, v18);
        v8 -= 88;
        v18 -= 88;
        v17 += 88;
      }

      while (v17);
    }

    sub_2623967E0(a2, a3);
  }
}

void sub_26239B394(int *a1, int *a2)
{
  v2 = *a1;
  *a1 = *a2;
  v3 = (a1 + 2);
  *a2 = v2;
  v4 = (a2 + 2);
  sub_262292E28(v9, (a1 + 2));
  sub_262339704(v7, v3, v4);
  sub_2621CC7B4(v8);
  sub_262339704(v5, v4, v9);
  sub_2621CC7B4(v6);
  sub_2621CC7B4(v10);
}

void sub_26239B428(int *a1, int *a2, int *a3, int *a4)
{
  v7 = a1;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *a1)
  {
    if (v9 < v8)
    {
      sub_26239B394(a2, a3);
      if (*a2 < *v7)
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      sub_26239B394(a1, v10);
      goto LABEL_10;
    }

    sub_26239B394(a1, a2);
    if (*a3 < *a2)
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    sub_26239B394(a3, a4);
    if (*a3 < *a2)
    {
      sub_26239B394(a2, a3);
      if (*a2 < *v7)
      {

        sub_26239B394(v7, a2);
      }
    }
  }
}

uint64_t sub_26239B540(int *a1, float *a2)
{
  v3 = a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v6 = (a1 + 12);
        v13 = *(a1 + 12);
        v5 = a2 - 12;
        v14 = *(a2 - 12);
        if (v13 < *a1)
        {
          if (v14 >= v13)
          {
            sub_26239B394(a1, a1 + 12);
            if (*v5 >= *(v3 + 12))
            {
              return 1;
            }

            a1 = v3 + 12;
          }

          goto LABEL_15;
        }

        if (v14 >= v13)
        {
          return 1;
        }

        v11 = a1 + 12;
        v12 = (a2 - 12);
        break;
      case 4:
        sub_26239B428(a1, a1 + 12, a1 + 24, a2 - 12);
        return 1;
      case 5:
        v6 = (a1 + 12);
        v7 = (a1 + 24);
        v8 = (a1 + 36);
        sub_26239B428(a1, a1 + 12, a1 + 24, a1 + 36);
        v10 = *(a2 - 12);
        v9 = (a2 - 12);
        if (v10 >= *(v3 + 36))
        {
          return 1;
        }

        sub_26239B394(v3 + 36, v9);
        if (*v8 >= *v7)
        {
          return 1;
        }

        sub_26239B394(v3 + 24, v3 + 36);
        if (*v7 >= *v6)
        {
          return 1;
        }

        v11 = v3 + 12;
        v12 = v3 + 24;
        break;
      default:
        goto LABEL_17;
    }

    sub_26239B394(v11, v12);
    if (*(v3 + 12) >= *v3)
    {
      return 1;
    }

    a1 = v3;
    v15 = v6;
    goto LABEL_16;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 12;
    if (*(a2 - 12) >= *a1)
    {
      return 1;
    }

LABEL_15:
    v15 = v5;
LABEL_16:
    sub_26239B394(a1, v15);
    return 1;
  }

LABEL_17:
  v16 = (a1 + 24);
  v17 = *(a1 + 24);
  v18 = *(a1 + 12);
  if (v18 < *a1)
  {
    if (v17 >= v18)
    {
      sub_26239B394(a1, a1 + 12);
      if (*(v3 + 24) >= *(v3 + 12))
      {
        goto LABEL_31;
      }

      a1 = v3 + 12;
    }

    v19 = v3 + 24;
    goto LABEL_30;
  }

  if (v17 < v18)
  {
    sub_26239B394(a1 + 12, a1 + 24);
    if (*(v3 + 12) < *v3)
    {
      a1 = v3;
      v19 = v3 + 12;
LABEL_30:
      sub_26239B394(a1, v19);
    }
  }

LABEL_31:
  v20 = (v3 + 36);
  if (v3 + 36 != a2)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      if (*v20 < *v16)
      {
        v30 = *v20;
        sub_262292E28(v31, (v20 + 2));
        v23 = *v16;
        v24 = v21;
        while (1)
        {
          *(v3 + v24 + 144) = v23;
          v25 = v3 + v24 + 104;
          sub_262339704(v33, v3 + v24 + 152, v25);
          sub_2621CC7B4(v34);
          if (v24 == -96)
          {
            break;
          }

          v26 = v30;
          v23 = *(v3 + v24 + 48);
          v24 -= 48;
          if (v30 >= v23)
          {
            v27 = (v3 + v24 + 144);
            v25 = v3 + v24 + 152;
            goto LABEL_39;
          }
        }

        v26 = v30;
        v27 = v3;
LABEL_39:
        *v27 = v26;
        sub_262339704(v33, v25, v31);
        sub_2621CC7B4(v34);
        if (++v22 == 8)
        {
          v28 = v20 + 12 == a2;
          sub_2621CC7B4(v32);
          return v28;
        }

        sub_2621CC7B4(v32);
      }

      v16 = v20;
      v21 += 48;
      v20 += 12;
    }

    while (v20 != a2);
  }

  return 1;
}

void sub_26239B884(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = 0xCCCCCCCCCCCCCCCDLL * ((a5 - a4) >> 3);
  v73[0] = 0;
  v73[1] = 0;
  v72 = v73;
  v11 = v10 - 1;
  if (!a6)
  {
    v11 = 2;
  }

  sub_262292E28(v71, a4 + 40 * ((v11 + *(a2 + 80)) % v10));
  v12 = 40;
  if (a6)
  {
    v12 = 0;
  }

  sub_262292E28(v70, a2 + v12);
  v13 = 40;
  if (!a6)
  {
    v13 = 0;
  }

  sub_262292E28(v69, a2 + v13);
  sub_262395B58(a3, v69);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v64 = 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3);
  sub_262292E28(&v65, v70);
  sub_2623A0168(a1, &v64);
  sub_2621CC7B4(v67);
  v14 = vsub_f32(v70[0], v69[0]);
  if (fabsf(sqrtf(vaddv_f32(vmul_f32(v14, v14)))) < 0.07)
  {
    goto LABEL_57;
  }

  while (2)
  {
    sub_26239C624(v63, v70, v71, a3, a6);
    v15 = v63[0];
    v16 = v63[1];
    while (v15 != v16)
    {
      v64 = *v15;
      sub_262292E28(&v65, (v15 + 1));
      v17 = v73[0];
      if (!v73[0])
      {
        goto LABEL_39;
      }

      v18 = v73;
      do
      {
        v19 = v17;
        v20 = v18;
        v21 = v17[4];
        if (v21 >= v64)
        {
          v18 = v17;
        }

        v17 = v17[v21 < v64];
      }

      while (v17);
      if (v18 == v73)
      {
        goto LABEL_39;
      }

      if (v21 < v64)
      {
        v19 = v20;
      }

      if (v64 < v19[4])
      {
LABEL_39:
        v37 = *(a1 + 8);
        v36 = *(a1 + 16);
        if (v37 >= v36)
        {
          v39 = 0xAAAAAAAAAAAAAAABLL * ((v37 - *a1) >> 4);
          v40 = v39 + 1;
          if (v39 + 1 > 0x555555555555555)
          {
            sub_2621CBEB0();
          }

          v41 = 0xAAAAAAAAAAAAAAABLL * ((v36 - *a1) >> 4);
          if (2 * v41 > v40)
          {
            v40 = 2 * v41;
          }

          if (v41 >= 0x2AAAAAAAAAAAAAALL)
          {
            v42 = 0x555555555555555;
          }

          else
          {
            v42 = v40;
          }

          v57 = a1;
          if (v42)
          {
            sub_2623A02D4(v42);
          }

          v54 = 0;
          v55 = 48 * v39;
          v56 = 48 * v39;
          *v55 = v64;
          sub_262292E28(48 * v39 + 8, &v65);
          *&v56 = v56 + 48;
          v43 = *(a1 + 8);
          v44 = (v55 + *a1 - v43);
          sub_2623A032C(a1, *a1, v43, v44);
          v45 = *a1;
          *a1 = v44;
          v46 = *(a1 + 16);
          v49 = v56;
          *(a1 + 8) = v56;
          *&v56 = v45;
          *(&v56 + 1) = v46;
          v54 = v45;
          v55 = v45;
          sub_2623A03E0(&v54);
          v38 = v49;
        }

        else
        {
          *v37 = v64;
          sub_262292E28((v37 + 1), &v65);
          v38 = v37 + 6;
        }

        *(a1 + 8) = v38;
        sub_262339704(v61, v71, v70);
        sub_2621CC7B4(v62);
        sub_262339704(v59, v70, &v65);
        sub_2621CC7B4(v60);
        sub_26239C558(&v72, v64);
        v35 = v67;
LABEL_51:
        sub_2621CC7B4(v35);
        goto LABEL_52;
      }

      sub_2621CC7B4(v67);
      v15 += 6;
    }

    LOBYTE(v64) = 0;
    v68 = 0;
    v58 = 0;
    v23 = *a3;
    v22 = a3[1];
    if (v22 == *a3)
    {
LABEL_56:
      v64 = v63;
      sub_26239C1B8(&v64);
      break;
    }

    v24 = 0;
    v25 = 0;
    v26 = INFINITY;
    do
    {
      v27 = v73[0];
      if (!v73[0])
      {
        goto LABEL_31;
      }

      v28 = v73;
      do
      {
        v29 = v27;
        v30 = v28;
        v31 = v27[4];
        if (v31 >= v25)
        {
          v28 = v27;
        }

        v27 = v27[v31 < v25];
      }

      while (v27);
      if (v28 == v73)
      {
        goto LABEL_31;
      }

      if (v31 < v25)
      {
        v29 = v30;
      }

      if (v25 < v29[4])
      {
LABEL_31:
        v32 = (v23 + 40 * v25);
        v33 = vsub_f32(v70[0], *v32);
        v34 = sqrtf(vaddv_f32(vmul_f32(v33, v33)));
        if (v34 < v26)
        {
          sub_26239BED0(&v64, v32);
          v58 = v25;
          v24 = v25;
          v26 = v34;
          v23 = *a3;
          v22 = a3[1];
        }
      }

      ++v25;
    }

    while (v25 < 0xCCCCCCCCCCCCCCCDLL * ((v22 - v23) >> 3));
    if (v26 >= 0.65)
    {
      if (v68)
      {
        sub_2621CC7B4(v66);
      }

      goto LABEL_56;
    }

    if ((v68 & 1) == 0)
    {
      sub_2622386B8();
    }

    v54 = v24;
    sub_262292E28(&v55, &v64);
    sub_2623A0168(a1, &v54);
    sub_2621CC7B4(*(&v56 + 1));
    sub_262339704(v52, v71, v70);
    sub_2621CC7B4(v53);
    if ((v68 & 1) == 0)
    {
      sub_2622386B8();
    }

    sub_262339704(v50, v70, &v64);
    sub_2621CC7B4(v51);
    sub_26239C558(&v72, v24);
    if (v68)
    {
      v35 = v66;
      goto LABEL_51;
    }

LABEL_52:
    v64 = v63;
    sub_26239C1B8(&v64);
    v47 = vsub_f32(v70[0], v69[0]);
    if (fabsf(sqrtf(vaddv_f32(vmul_f32(v47, v47)))) >= 0.07)
    {
      continue;
    }

    break;
  }

LABEL_57:
  v48 = a3[1];
  sub_2621CC7B4(*(v48 - 24));
  a3[1] = v48 - 40;
  sub_2621CC7B4(*&v69[2]);
  sub_2621CC7B4(*&v70[2]);
  sub_2621CC7B4(*&v71[2]);
  sub_2621C6C04(v73[0]);
}

void sub_26239BDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void **a42, uint64_t a43, uint64_t a44, char *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char *a50)
{
  sub_2621CC7B4(a45);
  sub_26239C1B8(&a42);
  sub_2621CC7B4(a50);
  sub_2621CC7B4(*(v50 - 208));
  sub_2621CC7B4(*(v50 - 168));
  sub_2621C6C04(*(v50 - 136));
  _Unwind_Resume(a1);
}

uint64_t sub_26239BED0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == 1)
  {
    sub_262339704(v4, a1, a2);
    sub_2621CC7B4(v5);
  }

  else
  {
    sub_262292E28(a1, a2);
    *(a1 + 40) = 1;
  }

  return a1;
}

uint64_t sub_26239BF38(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 85 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    sub_2623A2280(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = (*(v6 + 8 * (v8 / 0x55)) - 4080 * (v8 / 0x55) + 48 * v8);
  *v9 = *a2;
  result = sub_262292E28((v9 + 1), (a2 + 1));
  ++*(a1 + 40);
  return result;
}

void sub_26239BFE8(void *a1)
{
  v2 = a1[5] + a1[4];
  sub_2621CC7B4(*(*(a1[1] + 8 * ((v2 - 1) / 0x55uLL)) - 4080 * ((v2 - 1) / 0x55uLL) + 48 * v2 - 24));
  --a1[5];

  sub_2623A220C(a1, 1);
}

uint64_t sub_26239C068(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x55];
    v7 = *v6 + 48 * v5 + -4080 * (v5 / 0x55);
    v8 = v2[(a1[5] + v5) / 0x55] + 48 * a1[5] + 48 * v5 + -4080 * ((a1[5] + v5) / 0x55);
    if (v7 != v8)
    {
      do
      {
        sub_2621CC7B4(*(v7 + 24));
        v7 += 48;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 42;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 85;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return sub_262231840(a1);
}

void sub_26239C1B8(void ***a1)
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
        v6 = v4 - 6;
        sub_2621CC7B4(*(v4 - 3));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

double sub_26239C240(void *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 == v5)
  {
    v6 = a1 + 5;
    v12 = a1[1];
  }

  else
  {
    v6 = a1 + 5;
    v7 = a1[4];
    v8 = &v5[v7 / 0x55];
    v9 = *v8 + 48 * v7 + -4080 * (v7 / 0x55);
    v10 = v5[(a1[5] + v7) / 0x55] + 48 * a1[5] + 48 * v7 + -4080 * ((a1[5] + v7) / 0x55);
    if (v9 != v10)
    {
      do
      {
        sub_2621CC7B4(*(v9 + 24));
        v9 += 48;
        if (v9 - *v8 == 4080)
        {
          v11 = v8[1];
          ++v8;
          v9 = v11;
        }
      }

      while (v9 != v10);
      v5 = a1[1];
      v4 = a1[2];
    }

    v12 = v4;
  }

  *v6 = 0;
  v13 = (v12 - v5) >> 3;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v5);
      v4 = a1[2];
      v5 = (a1[1] + 8);
      a1[1] = v5;
      v13 = (v4 - v5) >> 3;
    }

    while (v13 > 2);
  }

  if (v13 == 1)
  {
    v14 = 42;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_16;
    }

    v14 = 85;
  }

  a1[4] = v14;
LABEL_16:
  if (a1[5])
  {
    sub_2623A21B0(a1, 0);
    sub_2623A220C(a1, 0);
  }

  else
  {
    while (v4 != v5)
    {
      operator delete(*(v4 - 8));
      v5 = a1[1];
      v4 = a1[2] - 8;
      a1[2] = v4;
    }

    a1[4] = 0;
  }

  sub_2623A20D4(a1);
  v16 = a1[1];
  v15 = a1[2];
  if (v15 != v16)
  {
    a1[2] = v15 + ((v16 - v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_2623A20D4(a1);
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 16);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void *sub_26239C408(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = a1 + 3;
  a1[6] = 0;
  a1[7] = 0;
  sub_262339704(v11, (a1 + 1), a2);
  sub_2621CC7B4(v12);
  *a1 = a3;
  v8 = *a4;
  v7 = a4[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = a1[7];
  a1[6] = v8;
  a1[7] = v7;
  if (v9)
  {
    sub_2621D1B78(v9);
  }

  return a1;
}

void sub_26239C494(_Unwind_Exception *a1)
{
  v4 = *(v1 + 56);
  if (v4)
  {
    sub_2621D1B78(v4);
  }

  sub_2621CC7B4(*v2);
  _Unwind_Resume(a1);
}

int64x2_t sub_26239C4B4(int64x2_t *a1, void *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_26239CF10(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x55));
  v7 = *v6 - 4080 * (v4 / 0x55) + 48 * v4;
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4080;
  }

  *(v7 - 48) = *a2;
  sub_262292E28(v7 - 40, (a2 + 1));
  result = vaddq_s64(a1[2], xmmword_2623A7860);
  a1[2] = result;
  return result;
}

uint64_t sub_26239C558(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
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
      v4 = v2[4];
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
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_26239C624(uint64_t a1, float32x2_t *a2, float32x2_t *a3, uint64_t *a4, char a5)
{
  *(a1 + 16) = 0;
  v8 = 0uLL;
  *a1 = 0u;
  v9 = vsub_f32(*a3, *a2);
  v28 = vcvtq_f64_f32(v9);
  v10 = *a4;
  if (a4[1] != *a4)
  {
    v13 = 0;
    v14 = 0;
    v15 = sqrtf(vaddv_f32(vmul_f32(v9, v9)));
    do
    {
      sub_262292E28(v27, v10 + v13);
      if (sub_262395F0C(a2, v27))
      {
        v16 = vsub_f32(*a2, v27[0]);
        if (fabsf(sqrtf(vaddv_f32(vmul_f32(v16, v16)))) >= 0.07)
        {
          v17 = vsub_f32(v27[0], *a2);
          v18 = vaddv_f32(vmul_f32(v9, v17)) / fmaxf(v15 * sqrtf(vaddv_f32(vmul_f32(v17, v17))), 1.1755e-38);
          v19 = v18 <= 1.0 ? v18 : 1.0;
          v20 = v18 >= -1.0 ? v19 : -1.0;
          v21 = acosf(v20) * 180.0 / 3.14159274;
          if (v21 > 15.0 || !sub_262395F0C(a2, a3) || sub_262395F0C(a3, v27))
          {
            v24 = v14;
            sub_262292E28(v25, v27);
            sub_2623A0168(a1, &v24);
            sub_2621CC7B4(v26);
          }
        }
      }

      sub_2621CC7B4(*&v27[2]);
      ++v14;
      v10 = *a4;
      v13 += 40;
    }

    while (v14 < 0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 3));
    v8 = *a1;
  }

  v22 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((*(&v8 + 1) - v8) >> 4));
  v24 = &v28;
  v25[0] = a2;
  v25[1] = a2;
  LOBYTE(v26) = a5;
  if (*(&v8 + 1) == v8)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  sub_26239D600(v8, *(&v8 + 1), &v24, v23, 1);
}

void sub_26239C860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_26239C1B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_26239C8A4(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  sub_2621CC7B4(*(a1 + 24));
  return a1;
}

uint64_t sub_26239C8DC(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 6];
    v7 = *v6 + 64 * (v5 & 0x3F);
    v8 = *(v3 + (((*(a1 + 40) + v5) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 64 * ((*(a1 + 40) + v5) & 0x3F);
    if (v7 != v8)
    {
      do
      {
        sub_26239D10C(v7);
        v7 += 64;
        if (v7 - *v6 == 4096)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 32;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 64;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_OWORD *sub_26239CA8C(_OWORD *result, void *a2)
{
  result[1] = 0u;
  result[2] = 0u;
  *result = 0u;
  v2 = a2[1];
  if (a2[2] != v2)
  {
    v3 = a2[4];
    v4 = v3 / 0x55;
    v5 = *(v2 + 8 * (v3 / 0x55));
    v6 = v5 - 4080 * (v3 / 0x55) + 48 * v3;
    v7 = a2[5] + v3;
    v8 = v7 / 0x55;
    v9 = *(v2 + 8 * (v7 / 0x55));
    v10 = v9 - 4080 * (v7 / 0x55) + 48 * v7;
    if (v10 != v6)
    {
      v11 = 85 * ((8 * v8 - 8 * v4) >> 3) - 0x5555555555555555 * ((v10 - v9) >> 4) + 0x5555555555555555 * ((v6 - v5) >> 4);
      if (v11)
      {
        v12 = (v11 + 1) / 0x55uLL;
        if ((v11 ^ (-85 * v12)) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v13 = (v11 + 1) / 0x55uLL;
        }

        else
        {
          v13 = v12 + 1;
        }

        sub_26223B6E4(v13);
      }
    }
  }

  return result;
}

void sub_26239CE3C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_26239C068((v4 - 48));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_26239CEC0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_26239C068((i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **sub_26239CF10(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = v3 - v2;
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 85 * ((v3 - v2) >> 3) - 1;
  }

  v6 = *(a1 + 32);
  if ((v5 - (*(a1 + 40) + v6)) < 0x55)
  {
    v8 = *(a1 + 24);
    v9 = *a1;
    v10 = &v8[-*a1];
    if (v4 < v10)
    {
      if (v2 != v9)
      {
        operator new();
      }

      operator new();
    }

    if (v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10 >> 2;
    }

    v12[4] = a1;
    sub_26223B6E4(v11);
  }

  *(a1 + 32) = v6 + 85;
  v12[0] = *(v3 - 1);
  *(a1 + 16) = v3 - 8;
  return sub_26223B5DC(a1, v12);
}

void sub_26239D0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  operator delete(v10);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_26239D10C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    sub_2621D1B78(v2);
  }

  v3 = *(a1 + 24);

  sub_2621CC7B4(v3);
}

void *sub_26239D14C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x40;
  v3 = v1 - 64;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    sub_26223B6E4(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return sub_26223B72C(a1, &v10);
}

void sub_26239D5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void sub_26239D600(uint64_t *a1, uint64_t *a2, float64x2_t **a3, uint64_t a4, char a5)
{
LABEL_1:
  j = a1;
  v8 = a2 - 6;
  while (1)
  {
    v9 = j;
    v10 = a2 - j;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - j) >> 4);
    v12 = v11 - 2;
    a1 = v9;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          sub_2623A04C8(v9, v9 + 6, v8, a3);
          return;
        case 4:
          sub_2623A0C7C(v9, v9 + 6, v9 + 12, v8, a3);
          return;
        case 5:
          sub_2623A1214(v9, v9 + 6, v9 + 12, v9 + 18, v8, a3);
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
        v250 = *(a2 - 5);
        v251 = *&a3[1]->f64[0];
        v732 = vcvtq_f64_f32(vsub_f32(v250, v251));
        v710 = **a3;
        v723 = -(*a3)->f64[1];
        v252 = *(a3 + 24);
        v253 = v9[1];
        v697 = vcvtq_f64_f32(vsub_f32(v253, v251));
        v254 = vaddvq_f64(vmulq_f64(v710, v697));
        v671 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v710, v710), vmulq_f64(v697, v697)));
        v255 = vaddvq_f64(vmulq_f64(v710, v732)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v732, v732))) * v671.f64[0], 2.22507386e-308);
        if (v255 <= 1.0)
        {
          v256 = v255;
        }

        else
        {
          v256 = 1.0;
        }

        if (v255 >= -1.0)
        {
          v257 = v256;
        }

        else
        {
          v257 = -1.0;
        }

        v684 = acos(v257);
        v258 = v254 / fmax(vmulq_laneq_f64(v671, v671, 1).f64[0], 2.22507386e-308);
        if (v258 <= 1.0)
        {
          v259 = v258;
        }

        else
        {
          v259 = 1.0;
        }

        if (v258 >= -1.0)
        {
          v260 = v259;
        }

        else
        {
          v260 = -1.0;
        }

        v261 = acos(v260);
        v262.f64[0] = v684;
        v262.f64[1] = v261;
        v263 = vdivq_f64(vmulq_f64(v262, vdupq_n_s64(0x4066800000000000uLL)), vdupq_n_s64(0x400921FB54442D18uLL));
        v264 = vdupq_n_s64(0x4076800000000000uLL);
        v265 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v732, v697), v723), vzip2q_s64(v732, v697), v710.f64[0])), v263, vsubq_f64(v264, v263));
        *&v262.f64[0] = vdup_n_s32(v252);
        v266.i64[0] = LODWORD(v262.f64[0]);
        v266.i64[1] = HIDWORD(v262.f64[0]);
        v267 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v266, 0x3FuLL)), v265, vsubq_f64(v264, v265));
        __asm { FMOV            V1.2D, #15.0 }

        v269 = vbslq_s8(vcgtq_f64(_Q1, v267), vaddq_f64(v267, v264), v267);
        if (vabdd_f64(*v269.i64, *&v269.i64[1]) >= 0.100000001)
        {
          if (*v269.i64 >= *&v269.i64[1])
          {
            return;
          }
        }

        else
        {
          v270 = *&a3[2]->f64[0];
          v271 = vsub_f32(v270, v250);
          v272 = vmul_f32(v271, v271);
          v273 = vsub_f32(v270, v253);
          v274 = vmul_f32(v273, v273);
          v275 = vsqrt_f32(vadd_f32(vzip1_s32(v272, v274), vzip2_s32(v272, v274)));
          if ((vcgt_f32(vdup_lane_s32(v275, 1), v275).u32[0] & 1) == 0)
          {
            return;
          }
        }

        sub_2623A0434(v9, v8);
        return;
      }
    }

    if (v10 <= 1151)
    {
      break;
    }

    __asm
    {
      FMOV            V1.2D, #-1.0
      FMOV            V0.2D, #15.0
    }

    v722 = _Q1;
    v731 = _Q0;
    if (!a4)
    {
      if (v9 == a2)
      {
        return;
      }

      v654 = vdupq_n_s64(0x400921FB54442D18uLL);
      v612 = vdupq_n_s64(0x4076800000000000uLL);
      v620 = vdupq_n_s64(0x4066800000000000uLL);
      v603 = vdupq_n_s64(0x10000000000000uLL);
      v607 = v12 >> 1;
      v336 = v12 >> 1;
      while (1)
      {
        v337 = v336;
        if (v607 < v336)
        {
          goto LABEL_374;
        }

        v338 = (2 * v336) | 1;
        v339 = &a1[6 * v338];
        if (2 * v336 + 2 >= v11)
        {
          v340 = *&a3[1]->f64[0];
          v353 = **a3;
          v366 = sqrt(vaddvq_f64(vmulq_f64(v353, v353)));
          v701 = vdupq_lane_s64(COERCE__INT64(-(*a3)->f64[1]), 0);
          v356 = vdup_n_s32(*(a3 + 24));
          goto LABEL_327;
        }

        v340 = *&a3[1]->f64[0];
        v341 = v339[1];
        v674 = vcvtq_f64_f32(vsub_f32(v341, v340));
        v713 = **a3;
        v662 = -v713.f64[1];
        v342 = *(a3 + 24);
        v343 = v339[7];
        v639 = vcvtq_f64_f32(vsub_f32(v343, v340));
        v344 = vaddvq_f64(vmulq_f64(v713, v639));
        v687 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v713, v713), vmulq_f64(v639, v639)));
        v345 = vaddvq_f64(vmulq_f64(v713, v674)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v674, v674))) * v687.f64[0], 2.22507386e-308);
        v346 = v345 <= 1.0 ? v345 : 1.0;
        v347 = v345 >= -1.0 ? v346 : -1.0;
        v700 = acos(v347);
        v348 = v344 / fmax(vmulq_laneq_f64(v687, v687, 1).f64[0], 2.22507386e-308);
        v349 = v348 <= 1.0 ? v348 : 1.0;
        v350 = v348 >= -1.0 ? v349 : -1.0;
        v351 = acos(v350);
        v352.f64[0] = v700;
        v353 = v713;
        v352.f64[1] = v351;
        v354 = vdivq_f64(vmulq_f64(v352, v620), v654);
        v355 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v674, v639), v662), vzip2q_s64(v674, v639), v713.f64[0])), v354, vsubq_f64(v612, v354));
        v356 = vdup_n_s32(v342);
        v357.i64[0] = v356.u32[0];
        v357.i64[1] = v356.u32[1];
        v358 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v357, 0x3FuLL)), v355, vsubq_f64(v612, v355));
        v359 = vbslq_s8(vcgtq_f64(v731, v358), vaddq_f64(v358, v612), v358);
        v701 = vdupq_lane_s64(*&v662, 0);
        if (vabdd_f64(*v359.i64, *&v359.i64[1]) < 0.100000001)
        {
          break;
        }

        if (*v359.i64 < *&v359.i64[1])
        {
          goto LABEL_325;
        }

LABEL_326:
        v366 = v687.f64[0];
LABEL_327:
        v714 = v353.f64[0];
        v367 = &a1[6 * v337];
        v368 = v339[1];
        v688 = vcvtq_f64_f32(vsub_f32(v368, v340));
        v369 = v367[1];
        v675 = vcvtq_f64_f32(vsub_f32(v369, v340));
        v370 = vdivq_f64(vpaddq_f64(vmulq_f64(v353, v675), vmulq_f64(v353, v688)), vmaxnmq_f64(vmulq_n_f64(vsqrtq_f64(vpaddq_f64(vmulq_f64(v675, v675), vmulq_f64(v688, v688))), v366), v603));
        v371 = v370.f64[1];
        if (v370.f64[1] > 1.0)
        {
          v371 = 1.0;
        }

        v372 = vmovn_s64(vcgtq_f64(v722, v370));
        v629 = v372.i8[0];
        v640 = v370.f64[0];
        if (v372.i8[4])
        {
          v371 = -1.0;
        }

        v663 = acos(v371);
        v373 = v640;
        if (v640 > 1.0)
        {
          v373 = 1.0;
        }

        if (v629)
        {
          v373 = -1.0;
        }

        v374 = acos(v373);
        v375.f64[0] = v663;
        v375.f64[1] = v374;
        v376 = vdivq_f64(vmulq_f64(v375, v620), v654);
        v377 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_f64(v701, vzip1q_s64(v688, v675)), vzip2q_s64(v688, v675), v714)), v376, vsubq_f64(v612, v376));
        v378.i64[0] = v356.u32[0];
        v378.i64[1] = v356.u32[1];
        v379 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v378, 0x3FuLL)), v377, vsubq_f64(v612, v377));
        v380 = vbslq_s8(vcgtq_f64(v731, v379), vaddq_f64(v379, v612), v379);
        if (vabdd_f64(*v380.i64, *&v380.i64[1]) >= 0.100000001)
        {
          if (*v380.i64 < *&v380.i64[1])
          {
            goto LABEL_374;
          }

LABEL_339:
          v741 = *v367;
          sub_262292E28(&v742, (v367 + 1));
          while (2)
          {
            v387 = v339;
            v388 = (v339 + 1);
            *v367 = *v339;
            sub_262339704(&v737, (v367 + 1), (v339 + 1));
            sub_2621CC7B4(v739);
            if (v607 < v338)
            {
LABEL_373:
              *v387 = v741;
              sub_262339704(&v737, v388, &v742);
              sub_2621CC7B4(v739);
              sub_2621CC7B4(v744);
              goto LABEL_374;
            }

            v389 = 2 * v338;
            v338 = (2 * v338) | 1;
            v339 = &a1[6 * v338];
            v390 = v389 + 2;
            v391 = *&a3[1]->f64[0];
            v392 = **a3;
            v393 = *(a3 + 24);
            if (v389 + 2 < v11)
            {
              v394 = v339[1];
              v676 = vcvtq_f64_f32(vsub_f32(v394, v391));
              v664 = -v392.f64[1];
              v395 = v339[7];
              v641 = vcvtq_f64_f32(vsub_f32(v395, v391));
              v396 = vaddvq_f64(vmulq_f64(v392, v641));
              v689 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v392, v392), vmulq_f64(v641, v641)));
              v397 = vaddvq_f64(vmulq_f64(v392, v676)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v676, v676))) * v689.f64[0], 2.22507386e-308);
              if (v397 <= 1.0)
              {
                v398 = v397;
              }

              else
              {
                v398 = 1.0;
              }

              if (v397 >= -1.0)
              {
                v399 = v398;
              }

              else
              {
                v399 = -1.0;
              }

              v715 = **a3;
              v702 = acos(v399);
              v400 = v396 / fmax(vmulq_laneq_f64(v689, v689, 1).f64[0], 2.22507386e-308);
              if (v400 <= 1.0)
              {
                v401 = v400;
              }

              else
              {
                v401 = 1.0;
              }

              if (v400 >= -1.0)
              {
                v402 = v401;
              }

              else
              {
                v402 = -1.0;
              }

              v403 = acos(v402);
              v404.f64[0] = v702;
              v392 = v715;
              v404.f64[1] = v403;
              v405 = vdivq_f64(vmulq_f64(v404, v620), v654);
              v406 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v676, v641), v664), vzip2q_s64(v676, v641), v715.f64[0])), v405, vsubq_f64(v612, v405));
              v407 = vdup_n_s32(v393);
              v408.i64[0] = v407.u32[0];
              v408.i64[1] = v407.u32[1];
              v409 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v408, 0x3FuLL)), v406, vsubq_f64(v612, v406));
              v410 = vbslq_s8(vcgtq_f64(v731, v409), vaddq_f64(v409, v612), v409);
              v703 = vdupq_lane_s64(*&v664, 0);
              if (vabdd_f64(*v410.i64, *&v410.i64[1]) >= 0.100000001)
              {
                if (*v410.i64 >= *&v410.i64[1])
                {
                  goto LABEL_360;
                }
              }

              else
              {
                v411 = *&a3[2]->f64[0];
                v412 = vsub_f32(v411, v394);
                v413 = vmul_f32(v412, v412);
                v414 = vsub_f32(v411, v395);
                v415 = vmul_f32(v414, v414);
                v416 = vsqrt_f32(vadd_f32(vzip1_s32(v413, v415), vzip2_s32(v413, v415)));
                if ((vcgt_f32(vdup_lane_s32(v416, 1), v416).u8[0] & 1) == 0)
                {
LABEL_360:
                  v417 = v689.f64[0];
LABEL_361:
                  v716 = v392.f64[0];
                  v418 = v339[1];
                  v690 = vcvtq_f64_f32(vsub_f32(v418, v391));
                  v419 = v742;
                  v677 = vcvtq_f64_f32(vsub_f32(v742, v391));
                  v420 = vdivq_f64(vpaddq_f64(vmulq_f64(v392, v677), vmulq_f64(v392, v690)), vmaxnmq_f64(vmulq_n_f64(vsqrtq_f64(vpaddq_f64(vmulq_f64(v677, v677), vmulq_f64(v690, v690))), v417), v603));
                  v421 = v420.f64[1];
                  if (v420.f64[1] > 1.0)
                  {
                    v421 = 1.0;
                  }

                  v422 = vmovn_s64(vcgtq_f64(v722, v420));
                  v630 = v422.i8[0];
                  v642 = v420.f64[0];
                  if (v422.i8[4])
                  {
                    v421 = -1.0;
                  }

                  v665 = acos(v421);
                  v423 = v642;
                  if (v642 > 1.0)
                  {
                    v423 = 1.0;
                  }

                  if (v630)
                  {
                    v423 = -1.0;
                  }

                  v424 = acos(v423);
                  v425.f64[0] = v665;
                  v425.f64[1] = v424;
                  v426 = vdivq_f64(vmulq_f64(v425, v620), v654);
                  v427 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_f64(v703, vzip1q_s64(v690, v677)), vzip2q_s64(v690, v677), v716)), v426, vsubq_f64(v612, v426));
                  v428.i64[0] = v407.u32[0];
                  v428.i64[1] = v407.u32[1];
                  v429 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v428, 0x3FuLL)), v427, vsubq_f64(v612, v427));
                  v430 = vbslq_s8(vcgtq_f64(v731, v429), vaddq_f64(v429, v612), v429);
                  if (vabdd_f64(*v430.i64, *&v430.i64[1]) >= 0.100000001)
                  {
                    v367 = v387;
                    if (*v430.i64 < *&v430.i64[1])
                    {
                      goto LABEL_373;
                    }
                  }

                  else
                  {
                    v431 = *&a3[2]->f64[0];
                    v432 = vsub_f32(v431, v418);
                    v433 = vmul_f32(v432, v432);
                    v434 = vsub_f32(v431, v419);
                    v435 = vmul_f32(v434, v434);
                    v436 = vsqrt_f32(vadd_f32(vzip1_s32(v433, v435), vzip2_s32(v433, v435)));
                    v367 = v387;
                    if (vcgt_f32(vdup_lane_s32(v436, 1), v436).u8[0])
                    {
                      goto LABEL_373;
                    }
                  }

                  continue;
                }
              }

              v339 += 6;
              v338 = v390;
              goto LABEL_360;
            }

            break;
          }

          v417 = sqrt(vaddvq_f64(vmulq_f64(v392, v392)));
          v703 = vdupq_lane_s64(COERCE__INT64(-v392.f64[1]), 0);
          v407 = vdup_n_s32(v393);
          goto LABEL_361;
        }

        v381 = *&a3[2]->f64[0];
        v382 = vsub_f32(v381, v368);
        v383 = vmul_f32(v382, v382);
        v384 = vsub_f32(v381, v369);
        v385 = vmul_f32(v384, v384);
        v386 = vsqrt_f32(vadd_f32(vzip1_s32(v383, v385), vzip2_s32(v383, v385)));
        if ((vcgt_f32(vdup_lane_s32(v386, 1), v386).u8[0] & 1) == 0)
        {
          goto LABEL_339;
        }

LABEL_374:
        v336 = v337 - 1;
        if (!v337)
        {
          v437 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 4);
          v631 = vdupq_n_s64(0x4076800000000000uLL);
          v643 = vdupq_n_s64(0x4066800000000000uLL);
          while (1)
          {
            v438 = a1;
            v621 = a2;
            v737 = *a1;
            sub_262292E28(&v738, (a1 + 1));
            v439 = 0;
            do
            {
              v440 = &v438[6 * v439];
              v441 = v440 + 6;
              v442 = 2 * v439;
              v439 = (2 * v439) | 1;
              v443 = v442 + 2;
              if (v442 + 2 >= v437)
              {
                goto LABEL_395;
              }

              v444 = *&a3[1]->f64[0];
              v445 = v440[7];
              v726 = vcvtq_f64_f32(vsub_f32(v445, v444));
              v704 = **a3;
              v717 = -(*a3)->f64[1];
              v446 = *(a3 + 24);
              v447 = v440[13];
              v691 = vcvtq_f64_f32(vsub_f32(v447, v444));
              v448 = vaddvq_f64(vmulq_f64(v704, v691));
              v666 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v704, v704), vmulq_f64(v691, v691)));
              v449 = vaddvq_f64(vmulq_f64(v704, v726)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v726, v726))) * v666.f64[0], 2.22507386e-308);
              if (v449 <= 1.0)
              {
                v450 = v449;
              }

              else
              {
                v450 = 1.0;
              }

              if (v449 >= -1.0)
              {
                v451 = v450;
              }

              else
              {
                v451 = -1.0;
              }

              v678 = acos(v451);
              v452 = v448 / fmax(vmulq_laneq_f64(v666, v666, 1).f64[0], 2.22507386e-308);
              if (v452 <= 1.0)
              {
                v453 = v452;
              }

              else
              {
                v453 = 1.0;
              }

              if (v452 >= -1.0)
              {
                v454 = v453;
              }

              else
              {
                v454 = -1.0;
              }

              v455 = acos(v454);
              v456.f64[0] = v678;
              v456.f64[1] = v455;
              v457 = vdivq_f64(vmulq_f64(v456, v643), v654);
              v458 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v726, v691), v717), vzip2q_s64(v726, v691), v704.f64[0])), v457, vsubq_f64(v631, v457));
              v459 = vdup_n_s32(v446);
              v460.i64[0] = v459.u32[0];
              v460.i64[1] = v459.u32[1];
              v461 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v460, 0x3FuLL)), v458, vsubq_f64(v631, v458));
              v462 = vbslq_s8(vcgtq_f64(v731, v461), vaddq_f64(v461, v631), v461);
              if (vabdd_f64(*v462.i64, *&v462.i64[1]) >= 0.100000001)
              {
                if (*v462.i64 >= *&v462.i64[1])
                {
                  goto LABEL_395;
                }

LABEL_394:
                v441 = v440 + 12;
                v439 = v443;
                goto LABEL_395;
              }

              v463 = *&a3[2]->f64[0];
              v464 = vsub_f32(v463, v445);
              v465 = vmul_f32(v464, v464);
              v466 = vsub_f32(v463, v447);
              v467 = vmul_f32(v466, v466);
              v468 = vsqrt_f32(vadd_f32(vzip1_s32(v465, v467), vzip2_s32(v465, v467)));
              if (vcgt_f32(vdup_lane_s32(v468, 1), v468).u8[0])
              {
                goto LABEL_394;
              }

LABEL_395:
              v469 = v441 + 1;
              *v438 = *v441;
              sub_262339704(&v741, (v438 + 1), &v441[1]);
              sub_2621CC7B4(v743);
              v438 = v441;
            }

            while (v439 <= ((v437 - 2) >> 1));
            a2 -= 6;
            if (v441 == (v621 - 6))
            {
              *v441 = v737;
              sub_262339704(&v741, &v441[1], &v738);
              v498 = v743;
              goto LABEL_434;
            }

            *v441 = *(v621 - 6);
            sub_262339704(&v741, &v441[1], (v621 - 5));
            sub_2621CC7B4(v743);
            *a2 = v737;
            sub_262339704(&v741, (v621 - 5), &v738);
            sub_2621CC7B4(v743);
            v470 = v441 - a1 + 48;
            if (v470 < 49)
            {
              goto LABEL_435;
            }

            v471 = (-2 - 0x5555555555555555 * (v470 >> 4)) >> 1;
            v472 = *&a3[1]->f64[0];
            v473 = &a1[6 * v471];
            v474 = v473[1];
            v727 = vcvtq_f64_f32(vsub_f32(v474, v472));
            v705 = **a3;
            v718 = -(*a3)->f64[1];
            v475 = *(a3 + 24);
            v476 = *v469;
            v692 = vcvtq_f64_f32(vsub_f32(*v469, v472));
            v477 = vaddvq_f64(vmulq_f64(v705, v692));
            v667 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v705, v705), vmulq_f64(v692, v692)));
            v478 = vaddvq_f64(vmulq_f64(v705, v727)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v727, v727))) * v667.f64[0], 2.22507386e-308);
            if (v478 <= 1.0)
            {
              v479 = v478;
            }

            else
            {
              v479 = 1.0;
            }

            if (v478 >= -1.0)
            {
              v480 = v479;
            }

            else
            {
              v480 = -1.0;
            }

            v679 = acos(v480);
            v481 = v477 / fmax(vmulq_laneq_f64(v667, v667, 1).f64[0], 2.22507386e-308);
            if (v481 <= 1.0)
            {
              v482 = v481;
            }

            else
            {
              v482 = 1.0;
            }

            if (v481 >= -1.0)
            {
              v483 = v482;
            }

            else
            {
              v483 = -1.0;
            }

            v484 = acos(v483);
            v485.f64[0] = v679;
            v485.f64[1] = v484;
            v486 = vdivq_f64(vmulq_f64(v485, v643), v654);
            v487 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v727, v692), v718), vzip2q_s64(v727, v692), v705.f64[0])), v486, vsubq_f64(v631, v486));
            v488 = vdup_n_s32(v475);
            v489.i64[0] = v488.u32[0];
            v489.i64[1] = v488.u32[1];
            v490 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v489, 0x3FuLL)), v487, vsubq_f64(v631, v487));
            v491 = vbslq_s8(vcgtq_f64(v731, v490), vaddq_f64(v490, v631), v490);
            if (vabdd_f64(*v491.i64, *&v491.i64[1]) >= 0.100000001)
            {
              if (*v491.i64 >= *&v491.i64[1])
              {
                goto LABEL_435;
              }

LABEL_415:
              v741 = *v441;
              sub_262292E28(&v742, &v441[1]);
              while (1)
              {
                v499 = v473;
                v500 = (v473 + 1);
                *v441 = *v473;
                sub_262339704(v745, &v441[1], (v473 + 1));
                sub_2621CC7B4(v746);
                if (!v471)
                {
                  break;
                }

                v471 = (v471 - 1) >> 1;
                v501 = *&a3[1]->f64[0];
                v473 = &a1[6 * v471];
                v502 = v473[1];
                v728 = vcvtq_f64_f32(vsub_f32(v502, v501));
                v706 = **a3;
                v719 = -(*a3)->f64[1];
                v503 = *(a3 + 24);
                v504 = v742;
                v693 = vcvtq_f64_f32(vsub_f32(v742, v501));
                v505 = vaddvq_f64(vmulq_f64(v706, v693));
                v668 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v706, v706), vmulq_f64(v693, v693)));
                v506 = vaddvq_f64(vmulq_f64(v706, v728)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v728, v728))) * v668.f64[0], 2.22507386e-308);
                if (v506 <= 1.0)
                {
                  v507 = v506;
                }

                else
                {
                  v507 = 1.0;
                }

                if (v506 >= -1.0)
                {
                  v508 = v507;
                }

                else
                {
                  v508 = -1.0;
                }

                v680 = acos(v508);
                v509 = v505 / fmax(vmulq_laneq_f64(v668, v668, 1).f64[0], 2.22507386e-308);
                if (v509 <= 1.0)
                {
                  v510 = v509;
                }

                else
                {
                  v510 = 1.0;
                }

                if (v509 >= -1.0)
                {
                  v511 = v510;
                }

                else
                {
                  v511 = -1.0;
                }

                v512 = acos(v511);
                v513.f64[0] = v680;
                v513.f64[1] = v512;
                v514 = vdivq_f64(vmulq_f64(v513, v643), v654);
                v515 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v728, v693), v719), vzip2q_s64(v728, v693), v706.f64[0])), v514, vsubq_f64(v631, v514));
                v516 = vdup_n_s32(v503);
                v517.i64[0] = v516.u32[0];
                v517.i64[1] = v516.u32[1];
                v518 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v517, 0x3FuLL)), v515, vsubq_f64(v631, v515));
                v519 = vbslq_s8(vcgtq_f64(v731, v518), vaddq_f64(v518, v631), v518);
                if (vabdd_f64(*v519.i64, *&v519.i64[1]) >= 0.100000001)
                {
                  v441 = v499;
                  if (*v519.i64 >= *&v519.i64[1])
                  {
                    break;
                  }
                }

                else
                {
                  v520 = *&a3[2]->f64[0];
                  v521 = vsub_f32(v520, v502);
                  v522 = vmul_f32(v521, v521);
                  v523 = vsub_f32(v520, v504);
                  v524 = vmul_f32(v523, v523);
                  v525 = vsqrt_f32(vadd_f32(vzip1_s32(v522, v524), vzip2_s32(v522, v524)));
                  v441 = v499;
                  if ((vcgt_f32(vdup_lane_s32(v525, 1), v525).u8[0] & 1) == 0)
                  {
                    break;
                  }
                }
              }

              *v499 = v741;
              sub_262339704(v745, v500, &v742);
              sub_2621CC7B4(v746);
              v498 = v744;
LABEL_434:
              sub_2621CC7B4(v498);
              goto LABEL_435;
            }

            v492 = *&a3[2]->f64[0];
            v493 = vsub_f32(v492, v474);
            v494 = vmul_f32(v493, v493);
            v495 = vsub_f32(v492, v476);
            v496 = vmul_f32(v495, v495);
            v497 = vsqrt_f32(vadd_f32(vzip1_s32(v494, v496), vzip2_s32(v494, v496)));
            if (vcgt_f32(vdup_lane_s32(v497, 1), v497).u8[0])
            {
              goto LABEL_415;
            }

LABEL_435:
            sub_2621CC7B4(v740);
            if (v437-- <= 2)
            {
              return;
            }
          }
        }
      }

      v360 = *&a3[2]->f64[0];
      v361 = vsub_f32(v360, v341);
      v362 = vmul_f32(v361, v361);
      v363 = vsub_f32(v360, v343);
      v364 = vmul_f32(v363, v363);
      v365 = vsqrt_f32(vadd_f32(vzip1_s32(v362, v364), vzip2_s32(v362, v364)));
      if ((vcgt_f32(vdup_lane_s32(v365, 1), v365).u8[0] & 1) == 0)
      {
        goto LABEL_326;
      }

LABEL_325:
      v339 += 6;
      v338 = 2 * v337 + 2;
      goto LABEL_326;
    }

    v18 = &v9[6 * (v11 >> 1)];
    if (v10 < 0x1801)
    {
      sub_2623A04C8(v18, v9, v8, a3);
    }

    else
    {
      sub_2623A04C8(v9, v18, v8, a3);
      sub_2623A04C8(v9 + 6, v18 - 6, a2 - 12, a3);
      sub_2623A04C8(v9 + 12, v18 + 6, a2 - 18, a3);
      sub_2623A04C8(v18 - 6, v18, v18 + 6, a3);
      v19 = *v9;
      *v9 = *v18;
      *v18 = v19;
      v20 = (v18 + 1);
      sub_262292E28(&v741, (v9 + 1));
      sub_262339704(&v737, (v9 + 1), v20);
      sub_2621CC7B4(v739);
      sub_262339704(v745, v20, &v741);
      sub_2621CC7B4(v746);
      sub_2621CC7B4(v743);
    }

    --a4;
    v696 = vdupq_n_s64(0x400921FB54442D18uLL);
    v709 = vdupq_n_s64(0x4066800000000000uLL);
    v670 = vdupq_n_s64(0x10000000000000uLL);
    v683 = vdupq_n_s64(0x4076800000000000uLL);
    if (a5)
    {
      goto LABEL_45;
    }

    v21 = *&a3[1]->f64[0];
    v22 = *(v9 - 5);
    v656 = vcvtq_f64_f32(vsub_f32(v22, v21));
    v633 = **a3;
    v645 = -(*a3)->f64[1];
    v23 = *(a3 + 24);
    v24 = v9[1];
    v622 = vcvtq_f64_f32(vsub_f32(v24, v21));
    v25 = vaddvq_f64(vmulq_f64(v633, v622));
    v608 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v633, v633), vmulq_f64(v622, v622)));
    v26 = vaddvq_f64(vmulq_f64(v633, v656)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v656, v656))) * v608.f64[0], 2.22507386e-308);
    if (v26 <= 1.0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 1.0;
    }

    if (v26 >= -1.0)
    {
      v28 = v27;
    }

    else
    {
      v28 = -1.0;
    }

    v613 = acos(v28);
    v29 = v25 / fmax(vmulq_laneq_f64(v608, v608, 1).f64[0], 2.22507386e-308);
    if (v29 <= 1.0)
    {
      v30 = v29;
    }

    else
    {
      v30 = 1.0;
    }

    if (v29 >= -1.0)
    {
      v31 = v30;
    }

    else
    {
      v31 = -1.0;
    }

    v32 = acos(v31);
    v33.f64[0] = v613;
    v33.f64[1] = v32;
    v34 = vdivq_f64(vmulq_f64(v33, v709), v696);
    v35 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v656, v622), v645), vzip2q_s64(v656, v622), v633.f64[0])), v34, vsubq_f64(v683, v34));
    v36 = vdup_n_s32(v23);
    v37.i64[0] = v36.u32[0];
    v37.i64[1] = v36.u32[1];
    v38 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v37, 0x3FuLL)), v35, vsubq_f64(v683, v35));
    v39 = vbslq_s8(vcgtq_f64(v731, v38), vaddq_f64(v38, v683), v38);
    if (vabdd_f64(*v39.i64, *&v39.i64[1]) >= 0.100000001)
    {
      if (*v39.i64 >= *&v39.i64[1])
      {
        goto LABEL_29;
      }

      goto LABEL_45;
    }

    v40 = *&a3[2]->f64[0];
    v41 = vsub_f32(v40, v22);
    v42 = vmul_f32(v41, v41);
    v43 = vsub_f32(v40, v24);
    v44 = vmul_f32(v43, v43);
    v45 = vsqrt_f32(vadd_f32(vzip1_s32(v42, v44), vzip2_s32(v42, v44)));
    if (vcgt_f32(vdup_lane_s32(v45, 1), v45).u8[0])
    {
LABEL_45:
      v73 = v9 + 6;
      v741 = *v9;
      sub_262292E28(&v742, (v9 + 1));
      v74 = **a3;
      v75 = -(*a3)->f64[1];
      v76 = *(a3 + 24);
      v77 = a3[2];
      v78 = *&a3[1]->f64[0];
      v625 = v742;
      v647 = vcvtq_f64_f32(vsub_f32(v742, v78));
      v658 = v74;
      v635 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v74, v74), vmulq_f64(v647, v647)));
      v79 = vaddvq_f64(vmulq_f64(v74, v647)) / fmax(vmulq_laneq_f64(v635, v635, 1).f64[0], 2.22507386e-308);
      if (v79 <= 1.0)
      {
        v80 = v79;
      }

      else
      {
        v80 = 1.0;
      }

      if (v79 >= -1.0)
      {
        v81 = v80;
      }

      else
      {
        v81 = -1.0;
      }

      v82 = acos(v81) * 180.0 / 3.14159265;
      if (v75 * v647.f64[0] + v658.f64[0] * v647.f64[1] > 0.0)
      {
        v82 = 360.0 - v82;
      }

      if (!v76)
      {
        v82 = 360.0 - v82;
      }

      if (v82 >= 15.0)
      {
        v83 = v82;
      }

      else
      {
        v83 = v82 + 360.0;
      }

      while (1)
      {
        v84 = v73[1];
        v648 = vcvtq_f64_f32(vsub_f32(v84, v78));
        v85 = vaddvq_f64(vmulq_f64(v658, v648)) / fmax(v635.f64[0] * sqrt(vaddvq_f64(vmulq_f64(v648, v648))), 2.22507386e-308);
        if (v85 <= 1.0)
        {
          v86 = v85;
        }

        else
        {
          v86 = 1.0;
        }

        if (v85 >= -1.0)
        {
          v87 = v86;
        }

        else
        {
          v87 = -1.0;
        }

        v88 = acos(v87) * 180.0 / 3.14159265;
        _V3.D[1] = v648.f64[1];
        _D2 = v658.f64[0];
        __asm { FMLA            D1, D2, V3.D[1] }

        if (_D1 > 0.0)
        {
          v88 = 360.0 - v88;
        }

        if (!v76)
        {
          v88 = 360.0 - v88;
        }

        if (v88 < 15.0)
        {
          v88 = v88 + 360.0;
        }

        if (vabdd_f64(v88, v83) >= 0.100000001)
        {
          break;
        }

        v92 = vsub_f32(*v77, v84);
        v93 = vmul_f32(v92, v92);
        v94 = vsub_f32(*v77, v625);
        v95 = vmul_f32(v94, v94);
        v96 = vsqrt_f32(vadd_f32(vzip1_s32(v93, v95), vzip2_s32(v93, v95)));
        if ((vcgt_f32(vdup_lane_s32(v96, 1), v96).u8[0] & 1) == 0)
        {
          goto LABEL_75;
        }

LABEL_74:
        v73 += 6;
      }

      if (v88 < v83)
      {
        goto LABEL_74;
      }

LABEL_75:
      i = a2 - 6;
      if (v73 - 6 != v9)
      {
        while (1)
        {
          v98 = i[1];
          v649 = vcvtq_f64_f32(vsub_f32(v98, v78));
          v99 = vaddvq_f64(vmulq_f64(v658, v649)) / fmax(v635.f64[0] * sqrt(vaddvq_f64(vmulq_f64(v649, v649))), 2.22507386e-308);
          if (v99 <= 1.0)
          {
            v100 = v99;
          }

          else
          {
            v100 = 1.0;
          }

          if (v99 >= -1.0)
          {
            v101 = v100;
          }

          else
          {
            v101 = -1.0;
          }

          v102 = acos(v101) * 180.0 / 3.14159265;
          _V3.D[1] = v649.f64[1];
          _D2 = v658.f64[0];
          __asm { FMLA            D1, D2, V3.D[1] }

          if (_D1 > 0.0)
          {
            v102 = 360.0 - v102;
          }

          if (!v76)
          {
            v102 = 360.0 - v102;
          }

          if (v102 < 15.0)
          {
            v102 = v102 + 360.0;
          }

          if (vabdd_f64(v102, v83) >= 0.100000001)
          {
            if (v102 < v83)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v106 = vsub_f32(*v77, v98);
            v107 = vmul_f32(v106, v106);
            v108 = vsub_f32(*v77, v625);
            v109 = vmul_f32(v108, v108);
            v110 = vsqrt_f32(vadd_f32(vzip1_s32(v107, v109), vzip2_s32(v107, v109)));
            if (vcgt_f32(vdup_lane_s32(v110, 1), v110).u8[0])
            {
              goto LABEL_116;
            }
          }

          i -= 6;
        }
      }

      i = a2;
      if (v73 < a2)
      {
        for (i = a2 - 6; ; i -= 6)
        {
          v111 = i[1];
          v650 = vcvtq_f64_f32(vsub_f32(v111, v78));
          v112 = vaddvq_f64(vmulq_f64(v658, v650)) / fmax(v635.f64[0] * sqrt(vaddvq_f64(vmulq_f64(v650, v650))), 2.22507386e-308);
          if (v112 <= 1.0)
          {
            v113 = v112;
          }

          else
          {
            v113 = 1.0;
          }

          if (v112 >= -1.0)
          {
            v114 = v113;
          }

          else
          {
            v114 = -1.0;
          }

          v115 = acos(v114) * 180.0 / 3.14159265;
          _V3.D[1] = v650.f64[1];
          _D2 = v658.f64[0];
          __asm { FMLA            D1, D2, V3.D[1] }

          if (_D1 > 0.0)
          {
            v115 = 360.0 - v115;
          }

          if (!v76)
          {
            v115 = 360.0 - v115;
          }

          if (v115 < 15.0)
          {
            v115 = v115 + 360.0;
          }

          if (vabdd_f64(v115, v83) >= 0.100000001)
          {
            if (v115 < v83 || v73 >= i)
            {
              break;
            }
          }

          else
          {
            v119 = vsub_f32(*v77, v111);
            v120 = vmul_f32(v119, v119);
            v121 = vsub_f32(*v77, v625);
            v122 = vmul_f32(v121, v121);
            v123 = vsqrt_f32(vadd_f32(vzip1_s32(v120, v122), vzip2_s32(v120, v122)));
            if ((vmvn_s8(vcgt_f32(vdup_lane_s32(v123, 1), v123)).u8[0] & 1) == 0 || v73 >= i)
            {
              break;
            }
          }
        }
      }

LABEL_116:
      j = v73;
      if (v73 < i)
      {
        j = v73;
        v125 = i;
        do
        {
          sub_2623A0434(j, v125);
          v126 = a3[1];
          v127 = v742;
          v128 = a3[2];
          v129 = **a3;
          v651 = sqrt(vaddvq_f64(vmulq_f64(v129, v129)));
          v659 = v129;
          v636 = -v129.f64[1];
          v130 = vdup_n_s32(*(a3 + 24));
          v131 = *v126;
          v615 = vcvtq_f64_f32(vsub_f32(v742, *v126));
          v626 = vdupq_lane_s64(*&v129.f64[0], 0);
          v605 = vmulq_f64(v615, v615);
          v610 = vmulq_f64(v129, v615);
          do
          {
            while (1)
            {
              j += 6;
              v132 = j[1];
              v599 = vcvtq_f64_f32(vsub_f32(v132, v131));
              v133 = vdivq_f64(vpaddq_f64(v610, vmulq_f64(v659, v599)), vmaxnmq_f64(vmulq_n_f64(vsqrtq_f64(vpaddq_f64(v605, vmulq_f64(v599, v599))), v651), v670));
              v134 = v133.f64[1];
              if (v133.f64[1] > 1.0)
              {
                v134 = 1.0;
              }

              v135 = vmovn_s64(vcgtq_f64(v722, v133));
              v587 = v135.i8[0];
              v591 = v133.f64[0];
              if (v135.i8[4])
              {
                v134 = -1.0;
              }

              v595 = acos(v134);
              v136 = v591;
              if (v591 > 1.0)
              {
                v136 = 1.0;
              }

              if (v587)
              {
                v136 = -1.0;
              }

              v137 = acos(v136);
              v138.f64[0] = v595;
              v138.f64[1] = v137;
              v139 = vdivq_f64(vmulq_f64(v138, v709), v696);
              v140 = vbslq_s8(vclezq_f64(vmlaq_f64(vmulq_n_f64(vzip1q_s64(v599, v615), v636), vzip2q_s64(v599, v615), v626)), v139, vsubq_f64(v683, v139));
              v141.i64[0] = v130.u32[0];
              v141.i64[1] = v130.u32[1];
              v142 = vcltzq_s64(vshlq_n_s64(v141, 0x3FuLL));
              v143 = vbslq_s8(v142, v140, vsubq_f64(v683, v140));
              v144 = vbslq_s8(vcgtq_f64(v731, v143), vaddq_f64(v143, v683), v143);
              if (vabdd_f64(*v144.i64, *&v144.i64[1]) >= 0.100000001)
              {
                break;
              }

              v145 = vsub_f32(*v128, v132);
              v146 = vmul_f32(v145, v145);
              v147 = vsub_f32(*v128, v127);
              v148 = vmul_f32(v147, v147);
              v149 = vsqrt_f32(vadd_f32(vzip1_s32(v146, v148), vzip2_s32(v146, v148)));
              if ((vcgt_f32(vdup_lane_s32(v149, 1), v149).u8[0] & 1) == 0)
              {
                goto LABEL_131;
              }
            }
          }

          while (*v144.i64 < *&v144.i64[1]);
LABEL_131:
          v585 = v142;
          do
          {
            while (1)
            {
              v125 -= 6;
              v150 = v125[1];
              v600 = vcvtq_f64_f32(vsub_f32(v150, v131));
              v151 = vdivq_f64(vpaddq_f64(v610, vmulq_f64(v659, v600)), vmaxnmq_f64(vmulq_n_f64(vsqrtq_f64(vpaddq_f64(v605, vmulq_f64(v600, v600))), v651), v670));
              v152 = v151.f64[1];
              if (v151.f64[1] > 1.0)
              {
                v152 = 1.0;
              }

              v153 = vmovn_s64(vcgtq_f64(v722, v151));
              v588 = v153.i8[0];
              v592 = v151.f64[0];
              if (v153.i8[4])
              {
                v152 = -1.0;
              }

              v596 = acos(v152);
              v154 = v592;
              if (v592 > 1.0)
              {
                v154 = 1.0;
              }

              if (v588)
              {
                v154 = -1.0;
              }

              v155 = acos(v154);
              v156.f64[0] = v596;
              v156.f64[1] = v155;
              v157 = vdivq_f64(vmulq_f64(v156, v709), v696);
              v158 = vbslq_s8(vclezq_f64(vmlaq_f64(vmulq_n_f64(vzip1q_s64(v600, v615), v636), vzip2q_s64(v600, v615), v626)), v157, vsubq_f64(v683, v157));
              v159 = vbslq_s8(v585, v158, vsubq_f64(v683, v158));
              v160 = vbslq_s8(vcgtq_f64(v731, v159), vaddq_f64(v159, v683), v159);
              if (vabdd_f64(*v160.i64, *&v160.i64[1]) >= 0.100000001)
              {
                break;
              }

              v161 = vsub_f32(*v128, v150);
              v162 = vmul_f32(v161, v161);
              v163 = vsub_f32(*v128, v127);
              v164 = vmul_f32(v163, v163);
              v165 = vsqrt_f32(vadd_f32(vzip1_s32(v162, v164), vzip2_s32(v162, v164)));
              if (vcgt_f32(vdup_lane_s32(v165, 1), v165).u8[0])
              {
                goto LABEL_144;
              }
            }
          }

          while (*v160.i64 >= *&v160.i64[1]);
LABEL_144:
          ;
        }

        while (j < v125);
      }

      if (j - 6 != a1)
      {
        *a1 = *(j - 6);
        sub_262339704(&v737, (a1 + 1), (j - 5));
        sub_2621CC7B4(v739);
      }

      *(j - 6) = v741;
      sub_262339704(&v737, (j - 5), &v742);
      sub_2621CC7B4(v739);
      sub_2621CC7B4(v744);
      if (v73 < i)
      {
LABEL_150:
        sub_26239D600(a1, j - 6, a3, a4, a5 & 1);
        a5 = 0;
      }

      else
      {
        v166 = sub_2623A1944(a1, j - 6, a3);
        if (sub_2623A1944(j, a2, a3))
        {
          a2 = j - 6;
          if (v166)
          {
            return;
          }

          goto LABEL_1;
        }

        if ((v166 & 1) == 0)
        {
          goto LABEL_150;
        }
      }
    }

    else
    {
LABEL_29:
      v47 = *v9;
      v46 = (v9 + 1);
      v741 = v47;
      sub_262292E28(&v742, v46);
      v48 = *&a3[1]->f64[0];
      v614 = v742;
      v623 = vcvtq_f64_f32(vsub_f32(v742, v48));
      v646 = -(*a3)->f64[1];
      v657 = **a3;
      v49 = *(a3 + 24);
      v50 = *(a2 - 5);
      v609 = vcvtq_f64_f32(vsub_f32(v50, v48));
      v51 = vaddvq_f64(vmulq_f64(v657, v609));
      v634 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v657, v657), vmulq_f64(v609, v609)));
      v52 = vaddvq_f64(vmulq_f64(v657, v623)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v623, v623))) * v634.f64[0], 2.22507386e-308);
      if (v52 <= 1.0)
      {
        v53 = v52;
      }

      else
      {
        v53 = 1.0;
      }

      if (v52 >= -1.0)
      {
        v54 = v53;
      }

      else
      {
        v54 = -1.0;
      }

      v604 = acos(v54);
      v55 = v51 / fmax(vmulq_laneq_f64(v634, v634, 1).f64[0], 2.22507386e-308);
      if (v55 <= 1.0)
      {
        v56 = v55;
      }

      else
      {
        v56 = 1.0;
      }

      if (v55 >= -1.0)
      {
        v57 = v56;
      }

      else
      {
        v57 = -1.0;
      }

      v58 = acos(v57);
      v59.f64[0] = v604;
      v59.f64[1] = v58;
      v60 = vdivq_f64(vmulq_f64(v59, v709), v696);
      v61 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v623, v609), v646), vzip2q_s64(v623, v609), v657.f64[0])), v60, vsubq_f64(v683, v60));
      v62 = vdup_n_s32(v49);
      v63.i64[0] = v62.u32[0];
      v63.i64[1] = v62.u32[1];
      v64 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v63, 0x3FuLL)), v61, vsubq_f64(v683, v61));
      v65 = vbslq_s8(vcgtq_f64(v731, v64), vaddq_f64(v64, v683), v64);
      v624 = *v65.i64;
      if (vabdd_f64(*v65.i64, *&v65.i64[1]) >= 0.100000001)
      {
        v67 = v614;
        if (*v65.i64 < *&v65.i64[1])
        {
          v66 = a3[2];
LABEL_153:
          for (j = a1 + 6; ; j += 6)
          {
            v167 = j[1];
            v616 = vcvtq_f64_f32(vsub_f32(v167, v48));
            v168 = vaddvq_f64(vmulq_f64(v657, v616)) / fmax(v634.f64[0] * sqrt(vaddvq_f64(vmulq_f64(v616, v616))), 2.22507386e-308);
            if (v168 <= 1.0)
            {
              v169 = v168;
            }

            else
            {
              v169 = 1.0;
            }

            if (v168 >= -1.0)
            {
              v170 = v169;
            }

            else
            {
              v170 = -1.0;
            }

            v171 = acos(v170) * 180.0 / 3.14159265;
            _D2 = v657.f64[0];
            _V3.D[1] = v616.f64[1];
            __asm { FMLA            D1, D2, V3.D[1] }

            if (_D1 > 0.0)
            {
              v171 = 360.0 - v171;
            }

            if (!v49)
            {
              v171 = 360.0 - v171;
            }

            if (v171 < 15.0)
            {
              v171 = v171 + 360.0;
            }

            if (vabdd_f64(v624, v171) >= 0.100000001)
            {
              if (v624 < v171)
              {
                goto LABEL_190;
              }
            }

            else
            {
              v175 = vsub_f32(*v66, v67);
              v176 = vmul_f32(v175, v175);
              v177 = vsub_f32(*v66, v167);
              v178 = vmul_f32(v177, v177);
              v179 = vsqrt_f32(vadd_f32(vzip1_s32(v176, v178), vzip2_s32(v176, v178)));
              if (vcgt_f32(vdup_lane_s32(v179, 1), v179).u8[0])
              {
                goto LABEL_190;
              }
            }
          }
        }
      }

      else
      {
        v66 = a3[2];
        v67 = v614;
        v68 = vsub_f32(*v66, v614);
        v69 = vmul_f32(v68, v68);
        v70 = vsub_f32(*v66, v50);
        v71 = vmul_f32(v70, v70);
        v72 = vsqrt_f32(vadd_f32(vzip1_s32(v69, v71), vzip2_s32(v69, v71)));
        if (vcgt_f32(vdup_lane_s32(v72, 1), v72).u8[0])
        {
          goto LABEL_153;
        }
      }

      j = a1 + 6;
      if (a1 + 6 < a2)
      {
        v180 = a3[2];
        do
        {
          v181 = j[1];
          v617 = vcvtq_f64_f32(vsub_f32(v181, v48));
          v182 = vaddvq_f64(vmulq_f64(v657, v617)) / fmax(v634.f64[0] * sqrt(vaddvq_f64(vmulq_f64(v617, v617))), 2.22507386e-308);
          if (v182 <= 1.0)
          {
            v183 = v182;
          }

          else
          {
            v183 = 1.0;
          }

          if (v182 >= -1.0)
          {
            v184 = v183;
          }

          else
          {
            v184 = -1.0;
          }

          v185 = acos(v184) * 180.0 / 3.14159265;
          _D2 = v657.f64[0];
          _V3.D[1] = v617.f64[1];
          __asm { FMLA            D1, D2, V3.D[1] }

          if (_D1 > 0.0)
          {
            v185 = 360.0 - v185;
          }

          if (!v49)
          {
            v185 = 360.0 - v185;
          }

          if (v185 < 15.0)
          {
            v185 = v185 + 360.0;
          }

          if (vabdd_f64(v624, v185) >= 0.100000001)
          {
            if (v624 < v185)
            {
              break;
            }
          }

          else
          {
            v189 = vsub_f32(*v180, v67);
            v190 = vmul_f32(v189, v189);
            v191 = vsub_f32(*v180, v181);
            v192 = vmul_f32(v191, v191);
            v193 = vsqrt_f32(vadd_f32(vzip1_s32(v190, v192), vzip2_s32(v190, v192)));
            if (vcgt_f32(vdup_lane_s32(v193, 1), v193).u8[0])
            {
              break;
            }
          }

          j += 6;
        }

        while (j < a2);
      }

LABEL_190:
      v194 = a2;
      if (j >= a2)
      {
        goto LABEL_236;
      }

      v195 = a3[2];
      for (k = a2 - 11; ; k -= 6)
      {
        v618 = vcvtq_f64_f32(vsub_f32(v50, v48));
        v197 = vaddvq_f64(vmulq_f64(v657, v618)) / fmax(v634.f64[0] * sqrt(vaddvq_f64(vmulq_f64(v618, v618))), 2.22507386e-308);
        if (v197 <= 1.0)
        {
          v198 = v197;
        }

        else
        {
          v198 = 1.0;
        }

        if (v197 >= -1.0)
        {
          v199 = v198;
        }

        else
        {
          v199 = -1.0;
        }

        v200 = acos(v199) * 180.0 / 3.14159265;
        _D2 = v657.f64[0];
        _V3.D[1] = v618.f64[1];
        __asm { FMLA            D1, D2, V3.D[1] }

        if (_D1 > 0.0)
        {
          v200 = 360.0 - v200;
        }

        if (!v49)
        {
          v200 = 360.0 - v200;
        }

        if (v200 < 15.0)
        {
          v200 = v200 + 360.0;
        }

        if (vabdd_f64(v624, v200) >= 0.100000001)
        {
          break;
        }

        v204 = vsub_f32(*v195, v67);
        v205 = vmul_f32(v204, v204);
        v206 = vsub_f32(*v195, v50);
        v207 = vmul_f32(v206, v206);
        v208 = vsqrt_f32(vadd_f32(vzip1_s32(v205, v207), vzip2_s32(v205, v207)));
        if ((vcgt_f32(vdup_lane_s32(v208, 1), v208).u8[0] & 1) == 0)
        {
          goto LABEL_209;
        }

LABEL_208:
        v209 = *k;
        v50 = v209;
      }

      if (v624 < v200)
      {
        goto LABEL_208;
      }

LABEL_209:
      v194 = k + 5;
LABEL_236:
      while (j < v194)
      {
        sub_2623A0434(j, v194);
        v210 = v742;
        v211 = a3[1];
        v212 = a3[2];
        v213 = **a3;
        v652 = sqrt(vaddvq_f64(vmulq_f64(v213, v213)));
        v660 = v213;
        v637 = -v213.f64[1];
        v214 = vdup_n_s32(*(a3 + 24));
        v215 = *v211;
        v619 = vcvtq_f64_f32(vsub_f32(v742, *v211));
        v627 = vdupq_lane_s64(*&v213.f64[0], 0);
        v606 = vmulq_f64(v619, v619);
        v611 = vmulq_f64(v213, v619);
        do
        {
          while (1)
          {
            j += 6;
            v216 = j[1];
            v601 = vcvtq_f64_f32(vsub_f32(v216, v215));
            v217 = vdivq_f64(vpaddq_f64(vmulq_f64(v660, v601), v611), vmaxnmq_f64(vmulq_n_f64(vsqrtq_f64(vpaddq_f64(vmulq_f64(v601, v601), v606)), v652), v670));
            v218 = v217.f64[1];
            if (v217.f64[1] > 1.0)
            {
              v218 = 1.0;
            }

            v219 = vmovn_s64(vcgtq_f64(v722, v217));
            v589 = v219.i8[0];
            v593 = v217.f64[0];
            if (v219.i8[4])
            {
              v218 = -1.0;
            }

            v597 = acos(v218);
            v220 = v593;
            if (v593 > 1.0)
            {
              v220 = 1.0;
            }

            if (v589)
            {
              v220 = -1.0;
            }

            v221 = acos(v220);
            v222.f64[0] = v597;
            v222.f64[1] = v221;
            v223 = vdivq_f64(vmulq_f64(v222, v709), v696);
            v224 = vbslq_s8(vclezq_f64(vmlaq_f64(vmulq_n_f64(vzip1q_s64(v619, v601), v637), vzip2q_s64(v619, v601), v627)), v223, vsubq_f64(v683, v223));
            v225.i64[0] = v214.u32[0];
            v225.i64[1] = v214.u32[1];
            v226 = vcltzq_s64(vshlq_n_s64(v225, 0x3FuLL));
            v227 = vbslq_s8(v226, v224, vsubq_f64(v683, v224));
            v228 = vbslq_s8(vcgtq_f64(v731, v227), vaddq_f64(v227, v683), v227);
            if (vabdd_f64(*v228.i64, *&v228.i64[1]) >= 0.100000001)
            {
              break;
            }

            v229 = vsub_f32(*v212, v210);
            v230 = vmul_f32(v229, v229);
            v231 = vsub_f32(*v212, v216);
            v232 = vmul_f32(v231, v231);
            v233 = vsqrt_f32(vadd_f32(vzip1_s32(v230, v232), vzip2_s32(v230, v232)));
            if (vcgt_f32(vdup_lane_s32(v233, 1), v233).u8[0])
            {
              goto LABEL_223;
            }
          }
        }

        while (*v228.i64 >= *&v228.i64[1]);
LABEL_223:
        v586 = v226;
        do
        {
          while (1)
          {
            v194 -= 6;
            v234 = v194[1];
            v602 = vcvtq_f64_f32(vsub_f32(v234, v215));
            v235 = vdivq_f64(vpaddq_f64(vmulq_f64(v660, v602), v611), vmaxnmq_f64(vmulq_n_f64(vsqrtq_f64(vpaddq_f64(vmulq_f64(v602, v602), v606)), v652), v670));
            v236 = v235.f64[1];
            if (v235.f64[1] > 1.0)
            {
              v236 = 1.0;
            }

            v237 = vmovn_s64(vcgtq_f64(v722, v235));
            v590 = v237.i8[0];
            v594 = v235.f64[0];
            if (v237.i8[4])
            {
              v236 = -1.0;
            }

            v598 = acos(v236);
            v238 = v594;
            if (v594 > 1.0)
            {
              v238 = 1.0;
            }

            if (v590)
            {
              v238 = -1.0;
            }

            v239 = acos(v238);
            v240.f64[0] = v598;
            v240.f64[1] = v239;
            v241 = vdivq_f64(vmulq_f64(v240, v709), v696);
            v242 = vbslq_s8(vclezq_f64(vmlaq_f64(vmulq_n_f64(vzip1q_s64(v619, v602), v637), vzip2q_s64(v619, v602), v627)), v241, vsubq_f64(v683, v241));
            v243 = vbslq_s8(v586, v242, vsubq_f64(v683, v242));
            v244 = vbslq_s8(vcgtq_f64(v731, v243), vaddq_f64(v243, v683), v243);
            if (vabdd_f64(*v244.i64, *&v244.i64[1]) >= 0.100000001)
            {
              break;
            }

            v245 = vsub_f32(*v212, v210);
            v246 = vmul_f32(v245, v245);
            v247 = vsub_f32(*v212, v234);
            v248 = vmul_f32(v247, v247);
            v249 = vsqrt_f32(vadd_f32(vzip1_s32(v246, v248), vzip2_s32(v246, v248)));
            if ((vcgt_f32(vdup_lane_s32(v249, 1), v249).u8[0] & 1) == 0)
            {
              goto LABEL_236;
            }
          }
        }

        while (*v244.i64 < *&v244.i64[1]);
      }

      if (j - 6 != a1)
      {
        *a1 = *(j - 6);
        sub_262339704(&v737, v46, (j - 5));
        sub_2621CC7B4(v739);
      }

      *(j - 6) = v741;
      sub_262339704(&v737, (j - 5), &v742);
      sub_2621CC7B4(v739);
      sub_2621CC7B4(v744);
      a5 = 0;
    }
  }

  if ((a5 & 1) == 0)
  {
    if (v9 == a2)
    {
      return;
    }

    v527 = v9 + 6;
    if (v9 + 6 == a2)
    {
      return;
    }

    v655 = vdupq_n_s64(0x400921FB54442D18uLL);
    v669 = vdupq_n_s64(0x4066800000000000uLL);
    __asm { FMOV            V0.2D, #15.0 }

    v632 = _Q0;
    v644 = vdupq_n_s64(0x4076800000000000uLL);
    while (1)
    {
      v529 = a1;
      v530 = v527;
      v531 = *&a3[1]->f64[0];
      v532 = a1[7];
      v735 = vcvtq_f64_f32(vsub_f32(v532, v531));
      v720 = **a3;
      v729 = -(*a3)->f64[1];
      v533 = *(a3 + 24);
      v534 = a1[1];
      v707 = vcvtq_f64_f32(vsub_f32(v534, v531));
      v535 = vaddvq_f64(vmulq_f64(v720, v707));
      v681 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v720, v720), vmulq_f64(v707, v707)));
      v536 = vaddvq_f64(vmulq_f64(v720, v735)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v735, v735))) * v681.f64[0], 2.22507386e-308);
      if (v536 <= 1.0)
      {
        v537 = v536;
      }

      else
      {
        v537 = 1.0;
      }

      if (v536 >= -1.0)
      {
        v538 = v537;
      }

      else
      {
        v538 = -1.0;
      }

      v694 = acos(v538);
      v539 = v535 / fmax(vmulq_laneq_f64(v681, v681, 1).f64[0], 2.22507386e-308);
      if (v539 <= 1.0)
      {
        v540 = v539;
      }

      else
      {
        v540 = 1.0;
      }

      if (v539 >= -1.0)
      {
        v541 = v540;
      }

      else
      {
        v541 = -1.0;
      }

      v542 = acos(v541);
      v543.f64[0] = v694;
      v543.f64[1] = v542;
      v544 = vdivq_f64(vmulq_f64(v543, v669), v655);
      v545 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v735, v707), v729), vzip2q_s64(v735, v707), v720.f64[0])), v544, vsubq_f64(v644, v544));
      v546 = vdup_n_s32(v533);
      v547.i64[0] = v546.u32[0];
      v547.i64[1] = v546.u32[1];
      v548 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v547, 0x3FuLL)), v545, vsubq_f64(v644, v545));
      v549 = vbslq_s8(vcgtq_f64(v632, v548), vaddq_f64(v548, v644), v548);
      if (vabdd_f64(*v549.i64, *&v549.i64[1]) >= 0.100000001)
      {
        if (*v549.i64 >= *&v549.i64[1])
        {
          goto LABEL_477;
        }
      }

      else
      {
        v550 = *&a3[2]->f64[0];
        v551 = vsub_f32(v550, v532);
        v552 = vmul_f32(v551, v551);
        v553 = vsub_f32(v550, v534);
        v554 = vmul_f32(v553, v553);
        v555 = vsqrt_f32(vadd_f32(vzip1_s32(v552, v554), vzip2_s32(v552, v554)));
        if ((vcgt_f32(vdup_lane_s32(v555, 1), v555).u32[0] & 1) == 0)
        {
          goto LABEL_477;
        }
      }

      v741 = *v530;
      sub_262292E28(&v742, (a1 + 7));
      do
      {
        while (1)
        {
          v556 = v529;
          v529[6] = *v529;
          sub_262339704(&v737, (v529 + 7), (v529 + 1));
          sub_2621CC7B4(v739);
          v557 = *&a3[1]->f64[0];
          v529 -= 6;
          v558 = v742;
          v736 = vcvtq_f64_f32(vsub_f32(v742, v557));
          v721 = **a3;
          v730 = -(*a3)->f64[1];
          v559 = *(a3 + 24);
          v560 = *(v556 - 5);
          v708 = vcvtq_f64_f32(vsub_f32(v560, v557));
          v561 = vaddvq_f64(vmulq_f64(v721, v708));
          v682 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v721, v721), vmulq_f64(v708, v708)));
          v562 = vaddvq_f64(vmulq_f64(v721, v736)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v736, v736))) * v682.f64[0], 2.22507386e-308);
          v563 = v562 <= 1.0 ? v562 : 1.0;
          v564 = v562 >= -1.0 ? v563 : -1.0;
          v695 = acos(v564);
          v565 = v561 / fmax(vmulq_laneq_f64(v682, v682, 1).f64[0], 2.22507386e-308);
          v566 = v565 <= 1.0 ? v565 : 1.0;
          v567 = v565 >= -1.0 ? v566 : -1.0;
          v568 = acos(v567);
          v569.f64[0] = v695;
          v569.f64[1] = v568;
          v570 = vdivq_f64(vmulq_f64(v569, v669), v655);
          v571 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v736, v708), v730), vzip2q_s64(v736, v708), v721.f64[0])), v570, vsubq_f64(v644, v570));
          v572 = vdup_n_s32(v559);
          v573.i64[0] = v572.u32[0];
          v573.i64[1] = v572.u32[1];
          v574 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v573, 0x3FuLL)), v571, vsubq_f64(v644, v571));
          v575 = vbslq_s8(vcgtq_f64(v632, v574), vaddq_f64(v574, v644), v574);
          if (vabdd_f64(*v575.i64, *&v575.i64[1]) >= 0.100000001)
          {
            break;
          }

          v576 = *&a3[2]->f64[0];
          v577 = vsub_f32(v576, v558);
          v578 = vmul_f32(v577, v577);
          v579 = vsub_f32(v576, v560);
          v580 = vmul_f32(v579, v579);
          v581 = vsqrt_f32(vadd_f32(vzip1_s32(v578, v580), vzip2_s32(v578, v580)));
          if ((vcgt_f32(vdup_lane_s32(v581, 1), v581).u8[0] & 1) == 0)
          {
            goto LABEL_476;
          }
        }
      }

      while (*v575.i64 < *&v575.i64[1]);
LABEL_476:
      *v556 = v741;
      sub_262339704(&v737, (v556 + 1), &v742);
      sub_2621CC7B4(v739);
      sub_2621CC7B4(v744);
LABEL_477:
      a1 = v530;
      v527 = v530 + 6;
      if (v530 + 6 == a2)
      {
        return;
      }
    }
  }

  if (v9 == a2)
  {
    return;
  }

  v276 = v9 + 6;
  if (v9 + 6 == a2)
  {
    return;
  }

  v277 = 0;
  v653 = vdupq_n_s64(0x400921FB54442D18uLL);
  v661 = vdupq_n_s64(0x4066800000000000uLL);
  __asm { FMOV            V0.2D, #15.0 }

  v628 = _Q0;
  v638 = vdupq_n_s64(0x4076800000000000uLL);
  v279 = v9;
  while (2)
  {
    v280 = *&a3[1]->f64[0];
    v281 = v279;
    v279 = v276;
    v283 = v281[7];
    v282 = &v281[7];
    v284 = v283;
    v733 = vcvtq_f64_f32(vsub_f32(v283, v280));
    v711 = **a3;
    v724 = -(*a3)->f64[1];
    v285 = *(a3 + 24);
    v286 = *(v282 - 48);
    v698 = vcvtq_f64_f32(vsub_f32(v286, v280));
    v287 = vaddvq_f64(vmulq_f64(v711, v698));
    v672 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v711, v711), vmulq_f64(v698, v698)));
    v288 = vaddvq_f64(vmulq_f64(v711, v733)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v733, v733))) * v672.f64[0], 2.22507386e-308);
    if (v288 <= 1.0)
    {
      v289 = v288;
    }

    else
    {
      v289 = 1.0;
    }

    if (v288 >= -1.0)
    {
      v290 = v289;
    }

    else
    {
      v290 = -1.0;
    }

    v685 = acos(v290);
    v291 = v287 / fmax(vmulq_laneq_f64(v672, v672, 1).f64[0], 2.22507386e-308);
    if (v291 <= 1.0)
    {
      v292 = v291;
    }

    else
    {
      v292 = 1.0;
    }

    if (v291 >= -1.0)
    {
      v293 = v292;
    }

    else
    {
      v293 = -1.0;
    }

    v294 = acos(v293);
    v295.f64[0] = v685;
    v295.f64[1] = v294;
    v296 = vdivq_f64(vmulq_f64(v295, v661), v653);
    v297 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v733, v698), v724), vzip2q_s64(v733, v698), v711.f64[0])), v296, vsubq_f64(v638, v296));
    v298 = vdup_n_s32(v285);
    v299.i64[0] = v298.u32[0];
    v299.i64[1] = v298.u32[1];
    v300 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v299, 0x3FuLL)), v297, vsubq_f64(v638, v297));
    v301 = vbslq_s8(vcgtq_f64(v628, v300), vaddq_f64(v300, v638), v300);
    if (vabdd_f64(*v301.i64, *&v301.i64[1]) >= 0.100000001)
    {
      if (*v301.i64 >= *&v301.i64[1])
      {
        goto LABEL_302;
      }
    }

    else
    {
      v302 = *&a3[2]->f64[0];
      v303 = vsub_f32(v302, v284);
      v304 = vmul_f32(v303, v303);
      v305 = vsub_f32(v302, v286);
      v306 = vmul_f32(v305, v305);
      v307 = vsqrt_f32(vadd_f32(vzip1_s32(v304, v306), vzip2_s32(v304, v306)));
      if ((vcgt_f32(vdup_lane_s32(v307, 1), v307).u32[0] & 1) == 0)
      {
        goto LABEL_302;
      }
    }

    v741 = *v279;
    sub_262292E28(&v742, v282);
    v308 = v277;
    while (2)
    {
      *(v9 + v308 + 48) = *(v9 + v308);
      sub_262339704(&v737, v9 + v308 + 56, v9 + v308 + 8);
      sub_2621CC7B4(v739);
      if (!v308)
      {
        v334 = (v9 + 1);
        v335 = v9;
        goto LABEL_301;
      }

      v309 = v742;
      v310 = *&a3[1]->f64[0];
      v734 = vcvtq_f64_f32(vsub_f32(v742, v310));
      v712 = **a3;
      v725 = -(*a3)->f64[1];
      v311 = *(a3 + 24);
      v312 = *(v9 + v308 - 40);
      v699 = vcvtq_f64_f32(vsub_f32(v312, v310));
      v313 = vaddvq_f64(vmulq_f64(v712, v699));
      v673 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v712, v712), vmulq_f64(v699, v699)));
      v314 = vaddvq_f64(vmulq_f64(v712, v734)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v734, v734))) * v673.f64[0], 2.22507386e-308);
      if (v314 <= 1.0)
      {
        v315 = v314;
      }

      else
      {
        v315 = 1.0;
      }

      if (v314 >= -1.0)
      {
        v316 = v315;
      }

      else
      {
        v316 = -1.0;
      }

      v686 = acos(v316);
      v317 = v313 / fmax(vmulq_laneq_f64(v673, v673, 1).f64[0], 2.22507386e-308);
      if (v317 <= 1.0)
      {
        v318 = v317;
      }

      else
      {
        v318 = 1.0;
      }

      if (v317 >= -1.0)
      {
        v319 = v318;
      }

      else
      {
        v319 = -1.0;
      }

      v320 = acos(v319);
      v321.f64[0] = v686;
      v321.f64[1] = v320;
      v322 = vdivq_f64(vmulq_f64(v321, v661), v653);
      v323 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v734, v699), v725), vzip2q_s64(v734, v699), v712.f64[0])), v322, vsubq_f64(v638, v322));
      v324 = vdup_n_s32(v311);
      v325.i64[0] = v324.u32[0];
      v325.i64[1] = v324.u32[1];
      v326 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v325, 0x3FuLL)), v323, vsubq_f64(v638, v323));
      v327 = vbslq_s8(vcgtq_f64(v628, v326), vaddq_f64(v326, v638), v326);
      if (vabdd_f64(*v327.i64, *&v327.i64[1]) < 0.100000001)
      {
        v328 = *&a3[2]->f64[0];
        v329 = vsub_f32(v328, v309);
        v330 = vmul_f32(v329, v329);
        v331 = vsub_f32(v328, v312);
        v332 = vmul_f32(v331, v331);
        v333 = vsqrt_f32(vadd_f32(vzip1_s32(v330, v332), vzip2_s32(v330, v332)));
        if ((vcgt_f32(vdup_lane_s32(v333, 1), v333).u8[0] & 1) == 0)
        {
          break;
        }

        goto LABEL_298;
      }

      if (*v327.i64 < *&v327.i64[1])
      {
LABEL_298:
        v308 -= 48;
        continue;
      }

      break;
    }

    v335 = (v9 + v308);
    v334 = v9 + v308 + 8;
LABEL_301:
    *v335 = v741;
    sub_262339704(&v737, v334, &v742);
    sub_2621CC7B4(v739);
    sub_2621CC7B4(v744);
LABEL_302:
    v276 = v279 + 6;
    v277 += 48;
    if (v279 + 6 != a2)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_2623A0168(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (v7 + 1 > 0x555555555555555)
    {
      sub_2621CBEB0();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v10 = 0x555555555555555;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      sub_2623A02D4(v10);
    }

    v16 = 0;
    v17 = 48 * v7;
    v18 = 48 * v7;
    *v17 = *a2;
    sub_262292E28(48 * v7 + 8, (a2 + 1));
    *&v18 = v18 + 48;
    v11 = *(a1 + 8);
    v12 = (v17 + *a1 - v11);
    sub_2623A032C(a1, *a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = *(a1 + 16);
    v15 = v18;
    *(a1 + 8) = v18;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v16 = v13;
    v17 = v13;
    result = sub_2623A03E0(&v16);
    v6 = v15;
  }

  else
  {
    *v4 = *a2;
    result = sub_262292E28((v4 + 1), (a2 + 1));
    v6 = v4 + 6;
    *(a1 + 8) = v4 + 6;
  }

  *(a1 + 8) = v6;
  return result;
}

void sub_2623A02D4(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  sub_2621C6A34();
}

void sub_2623A032C(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    v8 = a2;
    do
    {
      *a4 = *v8;
      sub_262292E28((a4 + 1), (v8 + 1));
      v8 += 6;
      a4 += 6;
      v6 -= 48;
    }

    while (v8 != a3);
    do
    {
      sub_2621CC7B4(v5[3]);
      v5 += 6;
    }

    while (v5 != a3);
  }
}

uint64_t sub_2623A03E0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_2621CC7B4(*(i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2623A0434(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;
  v3 = (a1 + 1);
  *a2 = v2;
  v4 = (a2 + 1);
  sub_262292E28(v9, (a1 + 1));
  sub_262339704(v7, v3, v4);
  sub_2621CC7B4(v8);
  sub_262339704(v5, v4, v9);
  sub_2621CC7B4(v6);
  sub_2621CC7B4(v10);
}

void sub_2623A04C8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v8 = a2[1];
  v9 = **(a4 + 8);
  v131 = vcvtq_f64_f32(vsub_f32(v8, v9));
  v135 = **a4;
  v10 = *(a4 + 24);
  v11 = a1[1];
  v129 = vcvtq_f64_f32(vsub_f32(v11, v9));
  v12 = vaddvq_f64(vmulq_f64(v135, v129));
  v138 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v135, v135), vmulq_f64(v129, v129)));
  v13 = vaddvq_f64(vmulq_f64(v135, v131)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v131, v131))) * v138.f64[0], 2.22507386e-308);
  if (v13 <= 1.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1.0;
  }

  if (v13 >= -1.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = -1.0;
  }

  v127 = acos(v15);
  v16 = v12 / fmax(vmulq_laneq_f64(v138, v138, 1).f64[0], 2.22507386e-308);
  if (v16 <= 1.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1.0;
  }

  if (v16 >= -1.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = -1.0;
  }

  v19 = acos(v18);
  v20.f64[0] = v127;
  v20.f64[1] = v19;
  v128 = vdupq_n_s64(0x400921FB54442D18uLL);
  v21 = vdivq_f64(vmulq_f64(v20, vdupq_n_s64(0x4066800000000000uLL)), v128);
  v22 = vdupq_n_s64(0x4076800000000000uLL);
  v23 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v131, v129), -v135.f64[1]), vzip2q_s64(v131, v129), v135.f64[0])), v21, vsubq_f64(v22, v21));
  v24 = vdup_n_s32(v10);
  v25.i64[0] = v24.u32[0];
  v25.i64[1] = v24.u32[1];
  v26 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v25, 0x3FuLL)), v23, vsubq_f64(v22, v23));
  __asm { FMOV            V1.2D, #15.0 }

  v130 = _Q1;
  v32 = vbslq_s8(vcgtq_f64(_Q1, v26), vaddq_f64(v26, v22), v26);
  v132 = *v32.i64;
  if (vabdd_f64(*v32.i64, *&v32.i64[1]) >= 0.100000001)
  {
    if (*v32.i64 >= *&v32.i64[1])
    {
      goto LABEL_15;
    }

LABEL_30:
    v53 = a3[1];
    v124 = vcvtq_f64_f32(vsub_f32(v53, v9));
    v54 = vaddvq_f64(vmulq_f64(v135, v124)) / fmax(v138.f64[0] * sqrt(vaddvq_f64(vmulq_f64(v124, v124))), 2.22507386e-308);
    v55 = 1.0;
    if (v54 <= 1.0)
    {
      v55 = v54;
    }

    if (v54 >= -1.0)
    {
      v56 = v55;
    }

    else
    {
      v56 = -1.0;
    }

    v57 = acos(v56) * 180.0 / 3.14159265;
    _V3.D[1] = v124.f64[1];
    _D2 = v135.f64[0];
    __asm { FMLA            D1, D2, V3.D[1] }

    if (_D1 > 0.0)
    {
      v57 = 360.0 - v57;
    }

    if (!v10)
    {
      v57 = 360.0 - v57;
    }

    if (v57 < 15.0)
    {
      v57 = v57 + 360.0;
    }

    if (vabdd_f64(v57, v132) >= 0.100000001)
    {
      if (v57 >= v132)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v61 = **(a4 + 16);
      v62 = vsub_f32(v61, v53);
      v63 = vmul_f32(v62, v62);
      v64 = vsub_f32(v61, v8);
      v65 = vmul_f32(v64, v64);
      v66 = vsqrt_f32(vadd_f32(vzip1_s32(v63, v65), vzip2_s32(v63, v65)));
      if ((vcgt_f32(vdup_lane_s32(v66, 1), v66).u8[0] & 1) == 0)
      {
LABEL_43:
        sub_2623A0434(a1, a2);
        v67 = a3[1];
        v68 = **(a4 + 8);
        v141 = vcvtq_f64_f32(vsub_f32(v67, v68));
        v136 = **a4;
        v139 = -*(*a4 + 8);
        v69 = *(a4 + 24);
        v70 = a2[1];
        v133 = vcvtq_f64_f32(vsub_f32(v70, v68));
        v71 = vaddvq_f64(vmulq_f64(v136, v133));
        v121 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v136, v136), vmulq_f64(v133, v133)));
        v72 = vaddvq_f64(vmulq_f64(v136, v141)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v141, v141))) * v121.f64[0], 2.22507386e-308);
        if (v72 <= 1.0)
        {
          v73 = v72;
        }

        else
        {
          v73 = 1.0;
        }

        if (v72 >= -1.0)
        {
          v74 = v73;
        }

        else
        {
          v74 = -1.0;
        }

        v125 = acos(v74);
        v75 = v71 / fmax(vmulq_laneq_f64(v121, v121, 1).f64[0], 2.22507386e-308);
        if (v75 <= 1.0)
        {
          v76 = v75;
        }

        else
        {
          v76 = 1.0;
        }

        if (v75 >= -1.0)
        {
          v77 = v76;
        }

        else
        {
          v77 = -1.0;
        }

        v78 = acos(v77);
        v79.f64[0] = v125;
        v79.f64[1] = v78;
        v80 = vdivq_f64(vmulq_f64(v79, vdupq_n_s64(0x4066800000000000uLL)), v128);
        v81 = vdupq_n_s64(0x4076800000000000uLL);
        v82 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v141, v133), v139), vzip2q_s64(v141, v133), v136.f64[0])), v80, vsubq_f64(v81, v80));
        v83 = vdup_n_s32(v69);
        v84.i64[0] = v83.u32[0];
        v84.i64[1] = v83.u32[1];
        v85 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v84, 0x3FuLL)), v82, vsubq_f64(v81, v82));
        v86 = vbslq_s8(vcgtq_f64(v130, v85), vaddq_f64(v85, v81), v85);
        if (vabdd_f64(*v86.i64, *&v86.i64[1]) >= 0.100000001)
        {
          if (*v86.i64 >= *&v86.i64[1])
          {
            return;
          }
        }

        else
        {
          v87 = **(a4 + 16);
          v88 = vsub_f32(v87, v67);
          v89 = vmul_f32(v88, v88);
          v90 = vsub_f32(v87, v70);
          v91 = vmul_f32(v90, v90);
          v92 = vsqrt_f32(vadd_f32(vzip1_s32(v89, v91), vzip2_s32(v89, v91)));
          if ((vcgt_f32(vdup_lane_s32(v92, 1), v92).u32[0] & 1) == 0)
          {
            return;
          }
        }

        v119 = a2;
        goto LABEL_78;
      }
    }

    v119 = a1;
LABEL_78:
    v120 = a3;
    goto LABEL_81;
  }

  v33 = **(a4 + 16);
  v34 = vsub_f32(v33, v8);
  v35 = vmul_f32(v34, v34);
  v36 = vsub_f32(v33, v11);
  v37 = vmul_f32(v36, v36);
  v38 = vsqrt_f32(vadd_f32(vzip1_s32(v35, v37), vzip2_s32(v35, v37)));
  if (vcgt_f32(vdup_lane_s32(v38, 1), v38).u8[0])
  {
    goto LABEL_30;
  }

LABEL_15:
  v39 = a3[1];
  v123 = vcvtq_f64_f32(vsub_f32(v39, v9));
  v40 = vaddvq_f64(vmulq_f64(v135, v123)) / fmax(v138.f64[0] * sqrt(vaddvq_f64(vmulq_f64(v123, v123))), 2.22507386e-308);
  v41 = 1.0;
  if (v40 <= 1.0)
  {
    v41 = v40;
  }

  if (v40 >= -1.0)
  {
    v42 = v41;
  }

  else
  {
    v42 = -1.0;
  }

  v43 = acos(v42) * 180.0 / 3.14159265;
  _V3.D[1] = v123.f64[1];
  _D2 = v135.f64[0];
  __asm { FMLA            D1, D2, V3.D[1] }

  if (_D1 > 0.0)
  {
    v43 = 360.0 - v43;
  }

  if (!v10)
  {
    v43 = 360.0 - v43;
  }

  if (v43 < 15.0)
  {
    v43 = v43 + 360.0;
  }

  if (vabdd_f64(v43, v132) >= 0.100000001)
  {
    if (v43 >= v132)
    {
      return;
    }
  }

  else
  {
    v47 = **(a4 + 16);
    v48 = vsub_f32(v47, v39);
    v49 = vmul_f32(v48, v48);
    v50 = vsub_f32(v47, v8);
    v51 = vmul_f32(v50, v50);
    v52 = vsqrt_f32(vadd_f32(vzip1_s32(v49, v51), vzip2_s32(v49, v51)));
    if ((vcgt_f32(vdup_lane_s32(v52, 1), v52).u32[0] & 1) == 0)
    {
      return;
    }
  }

  sub_2623A0434(a2, a3);
  v93 = a2[1];
  v94 = **(a4 + 8);
  v142 = vcvtq_f64_f32(vsub_f32(v93, v94));
  v137 = **a4;
  v140 = -*(*a4 + 8);
  v95 = *(a4 + 24);
  v96 = a1[1];
  v134 = vcvtq_f64_f32(vsub_f32(v96, v94));
  v97 = vaddvq_f64(vmulq_f64(v137, v134));
  v122 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v137, v137), vmulq_f64(v134, v134)));
  v98 = vaddvq_f64(vmulq_f64(v137, v142)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v142, v142))) * v122.f64[0], 2.22507386e-308);
  if (v98 <= 1.0)
  {
    v99 = v98;
  }

  else
  {
    v99 = 1.0;
  }

  if (v98 >= -1.0)
  {
    v100 = v99;
  }

  else
  {
    v100 = -1.0;
  }

  v126 = acos(v100);
  v101 = v97 / fmax(vmulq_laneq_f64(v122, v122, 1).f64[0], 2.22507386e-308);
  if (v101 <= 1.0)
  {
    v102 = v101;
  }

  else
  {
    v102 = 1.0;
  }

  if (v101 >= -1.0)
  {
    v103 = v102;
  }

  else
  {
    v103 = -1.0;
  }

  v104 = acos(v103);
  v105.f64[0] = v126;
  v105.f64[1] = v104;
  v106 = vdivq_f64(vmulq_f64(v105, vdupq_n_s64(0x4066800000000000uLL)), v128);
  v107 = vdupq_n_s64(0x4076800000000000uLL);
  v108 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v142, v134), v140), vzip2q_s64(v142, v134), v137.f64[0])), v106, vsubq_f64(v107, v106));
  v109 = vdup_n_s32(v95);
  v110.i64[0] = v109.u32[0];
  v110.i64[1] = v109.u32[1];
  v111 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v110, 0x3FuLL)), v108, vsubq_f64(v107, v108));
  v112 = vbslq_s8(vcgtq_f64(v130, v111), vaddq_f64(v111, v107), v111);
  if (vabdd_f64(*v112.i64, *&v112.i64[1]) >= 0.100000001)
  {
    if (*v112.i64 >= *&v112.i64[1])
    {
      return;
    }
  }

  else
  {
    v113 = **(a4 + 16);
    v114 = vsub_f32(v113, v93);
    v115 = vmul_f32(v114, v114);
    v116 = vsub_f32(v113, v96);
    v117 = vmul_f32(v116, v116);
    v118 = vsqrt_f32(vadd_f32(vzip1_s32(v115, v117), vzip2_s32(v115, v117)));
    if ((vcgt_f32(vdup_lane_s32(v118, 1), v118).u32[0] & 1) == 0)
    {
      return;
    }
  }

  v119 = a1;
  v120 = a2;
LABEL_81:

  sub_2623A0434(v119, v120);
}

void sub_2623A0C7C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, float64x2_t **a5)
{
  sub_2623A04C8(a1, a2, a3, a5);
  v10 = a4[1];
  v11 = *&a5[1]->f64[0];
  v112 = vcvtq_f64_f32(vsub_f32(v10, v11));
  v106 = **a5;
  v109 = -(*a5)->f64[1];
  v12 = *(a5 + 24);
  v13 = a3[1];
  v103 = vcvtq_f64_f32(vsub_f32(v13, v11));
  v14 = vaddvq_f64(vmulq_f64(v106, v103));
  v98 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v106, v106), vmulq_f64(v103, v103)));
  v15 = vaddvq_f64(vmulq_f64(v106, v112)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v112, v112))) * v98.f64[0], 2.22507386e-308);
  if (v15 <= 1.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1.0;
  }

  if (v15 >= -1.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = -1.0;
  }

  v101 = acos(v17);
  v18 = v14 / fmax(vmulq_laneq_f64(v98, v98, 1).f64[0], 2.22507386e-308);
  if (v18 <= 1.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1.0;
  }

  if (v18 >= -1.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = -1.0;
  }

  v21 = acos(v20);
  v22.f64[0] = v101;
  v22.f64[1] = v21;
  v23 = vdupq_n_s64(0x400921FB54442D18uLL);
  v24 = vdivq_f64(vmulq_f64(v22, vdupq_n_s64(0x4066800000000000uLL)), v23);
  v25 = vdupq_n_s64(0x4076800000000000uLL);
  v26 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v112, v103), v109), vzip2q_s64(v112, v103), v106.f64[0])), v24, vsubq_f64(v25, v24));
  v27 = vdup_n_s32(v12);
  v28.i64[0] = v27.u32[0];
  v28.i64[1] = v27.u32[1];
  v29 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v28, 0x3FuLL)), v26, vsubq_f64(v25, v26));
  __asm { FMOV            V3.2D, #15.0 }

  v35 = vbslq_s8(vcgtq_f64(_Q3, v29), vaddq_f64(v29, v25), v29);
  if (vabdd_f64(*v35.i64, *&v35.i64[1]) >= 0.100000001)
  {
    if (*v35.i64 >= *&v35.i64[1])
    {
      return;
    }
  }

  else
  {
    v36 = *&a5[2]->f64[0];
    v37 = vsub_f32(v36, v10);
    v38 = vmul_f32(v37, v37);
    v39 = vsub_f32(v36, v13);
    v40 = vmul_f32(v39, v39);
    v41 = vsqrt_f32(vadd_f32(vzip1_s32(v38, v40), vzip2_s32(v38, v40)));
    if ((vcgt_f32(vdup_lane_s32(v41, 1), v41).u32[0] & 1) == 0)
    {
      return;
    }
  }

  v102 = v23;
  v113 = _Q3;
  sub_2623A0434(a3, a4);
  v42 = a3[1];
  v43 = *&a5[1]->f64[0];
  v110 = vcvtq_f64_f32(vsub_f32(v42, v43));
  v104 = **a5;
  v107 = -(*a5)->f64[1];
  v44 = *(a5 + 24);
  v45 = a2[1];
  v99 = vcvtq_f64_f32(vsub_f32(v45, v43));
  v46 = vaddvq_f64(vmulq_f64(v104, v99));
  v94 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v104, v104), vmulq_f64(v99, v99)));
  v47 = vaddvq_f64(vmulq_f64(v104, v110)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v110, v110))) * v94.f64[0], 2.22507386e-308);
  if (v47 <= 1.0)
  {
    v48 = v47;
  }

  else
  {
    v48 = 1.0;
  }

  if (v47 >= -1.0)
  {
    v49 = v48;
  }

  else
  {
    v49 = -1.0;
  }

  v96 = acos(v49);
  v50 = v46 / fmax(vmulq_laneq_f64(v94, v94, 1).f64[0], 2.22507386e-308);
  if (v50 <= 1.0)
  {
    v51 = v50;
  }

  else
  {
    v51 = 1.0;
  }

  if (v50 >= -1.0)
  {
    v52 = v51;
  }

  else
  {
    v52 = -1.0;
  }

  v53 = acos(v52);
  v54.f64[0] = v96;
  v54.f64[1] = v53;
  v55 = vdivq_f64(vmulq_f64(v54, vdupq_n_s64(0x4066800000000000uLL)), v102);
  v56 = vdupq_n_s64(0x4076800000000000uLL);
  v57 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v110, v99), v107), vzip2q_s64(v110, v99), v104.f64[0])), v55, vsubq_f64(v56, v55));
  v58 = vdup_n_s32(v44);
  v59.i64[0] = v58.u32[0];
  v59.i64[1] = v58.u32[1];
  v60 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v59, 0x3FuLL)), v57, vsubq_f64(v56, v57));
  v61 = vbslq_s8(vcgtq_f64(v113, v60), vaddq_f64(v60, v56), v60);
  if (vabdd_f64(*v61.i64, *&v61.i64[1]) >= 0.100000001)
  {
    if (*v61.i64 >= *&v61.i64[1])
    {
      return;
    }
  }

  else
  {
    v62 = *&a5[2]->f64[0];
    v63 = vsub_f32(v62, v42);
    v64 = vmul_f32(v63, v63);
    v65 = vsub_f32(v62, v45);
    v66 = vmul_f32(v65, v65);
    v67 = vsqrt_f32(vadd_f32(vzip1_s32(v64, v66), vzip2_s32(v64, v66)));
    if ((vcgt_f32(vdup_lane_s32(v67, 1), v67).u32[0] & 1) == 0)
    {
      return;
    }
  }

  sub_2623A0434(a2, a3);
  v68 = a2[1];
  v69 = *&a5[1]->f64[0];
  v111 = vcvtq_f64_f32(vsub_f32(v68, v69));
  v105 = **a5;
  v108 = -(*a5)->f64[1];
  v70 = *(a5 + 24);
  v71 = a1[1];
  v100 = vcvtq_f64_f32(vsub_f32(v71, v69));
  v72 = vaddvq_f64(vmulq_f64(v105, v100));
  v95 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v105, v105), vmulq_f64(v100, v100)));
  v73 = vaddvq_f64(vmulq_f64(v105, v111)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v111, v111))) * v95.f64[0], 2.22507386e-308);
  if (v73 <= 1.0)
  {
    v74 = v73;
  }

  else
  {
    v74 = 1.0;
  }

  if (v73 >= -1.0)
  {
    v75 = v74;
  }

  else
  {
    v75 = -1.0;
  }

  v97 = acos(v75);
  v76 = v72 / fmax(vmulq_laneq_f64(v95, v95, 1).f64[0], 2.22507386e-308);
  if (v76 <= 1.0)
  {
    v77 = v76;
  }

  else
  {
    v77 = 1.0;
  }

  if (v76 >= -1.0)
  {
    v78 = v77;
  }

  else
  {
    v78 = -1.0;
  }

  v79 = acos(v78);
  v80.f64[0] = v97;
  v80.f64[1] = v79;
  v81 = vdivq_f64(vmulq_f64(v80, vdupq_n_s64(0x4066800000000000uLL)), v102);
  v82 = vdupq_n_s64(0x4076800000000000uLL);
  v83 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v111, v100), v108), vzip2q_s64(v111, v100), v105.f64[0])), v81, vsubq_f64(v82, v81));
  v84 = vdup_n_s32(v70);
  v85.i64[0] = v84.u32[0];
  v85.i64[1] = v84.u32[1];
  v86 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v85, 0x3FuLL)), v83, vsubq_f64(v82, v83));
  v87 = vbslq_s8(vcgtq_f64(v113, v86), vaddq_f64(v86, v82), v86);
  if (vabdd_f64(*v87.i64, *&v87.i64[1]) >= 0.100000001)
  {
    if (*v87.i64 >= *&v87.i64[1])
    {
      return;
    }
  }

  else
  {
    v88 = *&a5[2]->f64[0];
    v89 = vsub_f32(v88, v68);
    v90 = vmul_f32(v89, v89);
    v91 = vsub_f32(v88, v71);
    v92 = vmul_f32(v91, v91);
    v93 = vsqrt_f32(vadd_f32(vzip1_s32(v90, v92), vzip2_s32(v90, v92)));
    if ((vcgt_f32(vdup_lane_s32(v93, 1), v93).u32[0] & 1) == 0)
    {
      return;
    }
  }

  sub_2623A0434(a1, a2);
}

void sub_2623A1214(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, float64x2_t **a6)
{
  sub_2623A0C7C(a1, a2, a3, a4, a6);
  v12 = a5[1];
  v13 = *&a6[1]->f64[0];
  v146 = vcvtq_f64_f32(vsub_f32(v12, v13));
  v138 = **a6;
  v142 = -(*a6)->f64[1];
  v14 = *(a6 + 24);
  v15 = a4[1];
  v134 = vcvtq_f64_f32(vsub_f32(v15, v13));
  v16 = vaddvq_f64(vmulq_f64(v138, v134));
  v128 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v138, v138), vmulq_f64(v134, v134)));
  v17 = vaddvq_f64(vmulq_f64(v138, v146)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v146, v146))) * v128.f64[0], 2.22507386e-308);
  if (v17 <= 1.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1.0;
  }

  if (v17 >= -1.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = -1.0;
  }

  v132 = acos(v19);
  v20 = v16 / fmax(vmulq_laneq_f64(v128, v128, 1).f64[0], 2.22507386e-308);
  if (v20 <= 1.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1.0;
  }

  if (v20 >= -1.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = -1.0;
  }

  v23 = acos(v22);
  v24.f64[0] = v132;
  v24.f64[1] = v23;
  v25 = vdupq_n_s64(0x400921FB54442D18uLL);
  v26 = vdivq_f64(vmulq_f64(v24, vdupq_n_s64(0x4066800000000000uLL)), v25);
  v27 = vdupq_n_s64(0x4076800000000000uLL);
  v28 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v146, v134), v142), vzip2q_s64(v146, v134), v138.f64[0])), v26, vsubq_f64(v27, v26));
  v29 = vdup_n_s32(v14);
  v30.i64[0] = v29.u32[0];
  v30.i64[1] = v29.u32[1];
  v31 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v30, 0x3FuLL)), v28, vsubq_f64(v27, v28));
  __asm { FMOV            V3.2D, #15.0 }

  v37 = vbslq_s8(vcgtq_f64(_Q3, v31), vaddq_f64(v31, v27), v31);
  if (vabdd_f64(*v37.i64, *&v37.i64[1]) >= 0.100000001)
  {
    if (*v37.i64 >= *&v37.i64[1])
    {
      return;
    }
  }

  else
  {
    v38 = *&a6[2]->f64[0];
    v39 = vsub_f32(v38, v12);
    v40 = vmul_f32(v39, v39);
    v41 = vsub_f32(v38, v15);
    v42 = vmul_f32(v41, v41);
    v43 = vsqrt_f32(vadd_f32(vzip1_s32(v40, v42), vzip2_s32(v40, v42)));
    if ((vcgt_f32(vdup_lane_s32(v43, 1), v43).u32[0] & 1) == 0)
    {
      return;
    }
  }

  v133 = v25;
  v147 = _Q3;
  sub_2623A0434(a4, a5);
  v44 = a4[1];
  v45 = *&a6[1]->f64[0];
  v143 = vcvtq_f64_f32(vsub_f32(v44, v45));
  v135 = **a6;
  v139 = -(*a6)->f64[1];
  v46 = *(a6 + 24);
  v47 = a3[1];
  v129 = vcvtq_f64_f32(vsub_f32(v47, v45));
  v48 = vaddvq_f64(vmulq_f64(v135, v129));
  v122 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v135, v135), vmulq_f64(v129, v129)));
  v49 = vaddvq_f64(vmulq_f64(v135, v143)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v143, v143))) * v122.f64[0], 2.22507386e-308);
  if (v49 <= 1.0)
  {
    v50 = v49;
  }

  else
  {
    v50 = 1.0;
  }

  if (v49 >= -1.0)
  {
    v51 = v50;
  }

  else
  {
    v51 = -1.0;
  }

  v125 = acos(v51);
  v52 = v48 / fmax(vmulq_laneq_f64(v122, v122, 1).f64[0], 2.22507386e-308);
  if (v52 <= 1.0)
  {
    v53 = v52;
  }

  else
  {
    v53 = 1.0;
  }

  if (v52 >= -1.0)
  {
    v54 = v53;
  }

  else
  {
    v54 = -1.0;
  }

  v55 = acos(v54);
  v56.f64[0] = v125;
  v56.f64[1] = v55;
  v57 = vdivq_f64(vmulq_f64(v56, vdupq_n_s64(0x4066800000000000uLL)), v133);
  v58 = vdupq_n_s64(0x4076800000000000uLL);
  v59 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v143, v129), v139), vzip2q_s64(v143, v129), v135.f64[0])), v57, vsubq_f64(v58, v57));
  v60 = vdup_n_s32(v46);
  v61.i64[0] = v60.u32[0];
  v61.i64[1] = v60.u32[1];
  v62 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v61, 0x3FuLL)), v59, vsubq_f64(v58, v59));
  v63 = vbslq_s8(vcgtq_f64(v147, v62), vaddq_f64(v62, v58), v62);
  if (vabdd_f64(*v63.i64, *&v63.i64[1]) >= 0.100000001)
  {
    if (*v63.i64 >= *&v63.i64[1])
    {
      return;
    }
  }

  else
  {
    v64 = *&a6[2]->f64[0];
    v65 = vsub_f32(v64, v44);
    v66 = vmul_f32(v65, v65);
    v67 = vsub_f32(v64, v47);
    v68 = vmul_f32(v67, v67);
    v69 = vsqrt_f32(vadd_f32(vzip1_s32(v66, v68), vzip2_s32(v66, v68)));
    if ((vcgt_f32(vdup_lane_s32(v69, 1), v69).u32[0] & 1) == 0)
    {
      return;
    }
  }

  sub_2623A0434(a3, a4);
  v70 = a3[1];
  v71 = *&a6[1]->f64[0];
  v144 = vcvtq_f64_f32(vsub_f32(v70, v71));
  v136 = **a6;
  v140 = -(*a6)->f64[1];
  v72 = *(a6 + 24);
  v73 = a2[1];
  v130 = vcvtq_f64_f32(vsub_f32(v73, v71));
  v74 = vaddvq_f64(vmulq_f64(v136, v130));
  v123 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v136, v136), vmulq_f64(v130, v130)));
  v75 = vaddvq_f64(vmulq_f64(v136, v144)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v144, v144))) * v123.f64[0], 2.22507386e-308);
  if (v75 <= 1.0)
  {
    v76 = v75;
  }

  else
  {
    v76 = 1.0;
  }

  if (v75 >= -1.0)
  {
    v77 = v76;
  }

  else
  {
    v77 = -1.0;
  }

  v126 = acos(v77);
  v78 = v74 / fmax(vmulq_laneq_f64(v123, v123, 1).f64[0], 2.22507386e-308);
  if (v78 <= 1.0)
  {
    v79 = v78;
  }

  else
  {
    v79 = 1.0;
  }

  if (v78 >= -1.0)
  {
    v80 = v79;
  }

  else
  {
    v80 = -1.0;
  }

  v81 = acos(v80);
  v82.f64[0] = v126;
  v82.f64[1] = v81;
  v83 = vdivq_f64(vmulq_f64(v82, vdupq_n_s64(0x4066800000000000uLL)), v133);
  v84 = vdupq_n_s64(0x4076800000000000uLL);
  v85 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v144, v130), v140), vzip2q_s64(v144, v130), v136.f64[0])), v83, vsubq_f64(v84, v83));
  v86 = vdup_n_s32(v72);
  v87.i64[0] = v86.u32[0];
  v87.i64[1] = v86.u32[1];
  v88 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v87, 0x3FuLL)), v85, vsubq_f64(v84, v85));
  v89 = vbslq_s8(vcgtq_f64(v147, v88), vaddq_f64(v88, v84), v88);
  if (vabdd_f64(*v89.i64, *&v89.i64[1]) >= 0.100000001)
  {
    if (*v89.i64 >= *&v89.i64[1])
    {
      return;
    }
  }

  else
  {
    v90 = *&a6[2]->f64[0];
    v91 = vsub_f32(v90, v70);
    v92 = vmul_f32(v91, v91);
    v93 = vsub_f32(v90, v73);
    v94 = vmul_f32(v93, v93);
    v95 = vsqrt_f32(vadd_f32(vzip1_s32(v92, v94), vzip2_s32(v92, v94)));
    if ((vcgt_f32(vdup_lane_s32(v95, 1), v95).u32[0] & 1) == 0)
    {
      return;
    }
  }

  sub_2623A0434(a2, a3);
  v96 = a2[1];
  v97 = *&a6[1]->f64[0];
  v145 = vcvtq_f64_f32(vsub_f32(v96, v97));
  v137 = **a6;
  v141 = -(*a6)->f64[1];
  v98 = *(a6 + 24);
  v99 = a1[1];
  v131 = vcvtq_f64_f32(vsub_f32(v99, v97));
  v100 = vaddvq_f64(vmulq_f64(v137, v131));
  v124 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v137, v137), vmulq_f64(v131, v131)));
  v101 = vaddvq_f64(vmulq_f64(v137, v145)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v145, v145))) * v124.f64[0], 2.22507386e-308);
  if (v101 <= 1.0)
  {
    v102 = v101;
  }

  else
  {
    v102 = 1.0;
  }

  if (v101 >= -1.0)
  {
    v103 = v102;
  }

  else
  {
    v103 = -1.0;
  }

  v127 = acos(v103);
  v104 = v100 / fmax(vmulq_laneq_f64(v124, v124, 1).f64[0], 2.22507386e-308);
  if (v104 <= 1.0)
  {
    v105 = v104;
  }

  else
  {
    v105 = 1.0;
  }

  if (v104 >= -1.0)
  {
    v106 = v105;
  }

  else
  {
    v106 = -1.0;
  }

  v107 = acos(v106);
  v108.f64[0] = v127;
  v108.f64[1] = v107;
  v109 = vdivq_f64(vmulq_f64(v108, vdupq_n_s64(0x4066800000000000uLL)), v133);
  v110 = vdupq_n_s64(0x4076800000000000uLL);
  v111 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v145, v131), v141), vzip2q_s64(v145, v131), v137.f64[0])), v109, vsubq_f64(v110, v109));
  v112 = vdup_n_s32(v98);
  v113.i64[0] = v112.u32[0];
  v113.i64[1] = v112.u32[1];
  v114 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v113, 0x3FuLL)), v111, vsubq_f64(v110, v111));
  v115 = vbslq_s8(vcgtq_f64(v147, v114), vaddq_f64(v114, v110), v114);
  if (vabdd_f64(*v115.i64, *&v115.i64[1]) >= 0.100000001)
  {
    if (*v115.i64 >= *&v115.i64[1])
    {
      return;
    }
  }

  else
  {
    v116 = *&a6[2]->f64[0];
    v117 = vsub_f32(v116, v96);
    v118 = vmul_f32(v117, v117);
    v119 = vsub_f32(v116, v99);
    v120 = vmul_f32(v119, v119);
    v121 = vsqrt_f32(vadd_f32(vzip1_s32(v118, v120), vzip2_s32(v118, v120)));
    if ((vcgt_f32(vdup_lane_s32(v121, 1), v121).u32[0] & 1) == 0)
    {
      return;
    }
  }

  sub_2623A0434(a1, a2);
}

uint64_t sub_2623A1944(uint64_t *a1, uint64_t *a2, float64x2_t **a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_2623A04C8(a1, a1 + 6, a2 - 6, a3);
        return 1;
      case 4:
        sub_2623A0C7C(a1, a1 + 6, a1 + 12, a2 - 6, a3);
        return 1;
      case 5:
        sub_2623A1214(a1, a1 + 6, a1 + 12, a1 + 18, a2 - 6, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 5);
      v8 = *&a3[1]->f64[0];
      v117 = vcvtq_f64_f32(vsub_f32(v7, v8));
      v111 = **a3;
      v114 = -(*a3)->f64[1];
      v9 = *(a3 + 24);
      v10 = a1[1];
      v108 = vcvtq_f64_f32(vsub_f32(v10, v8));
      v11 = vaddvq_f64(vmulq_f64(v111, v108));
      v102 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v111, v111), vmulq_f64(v108, v108)));
      v12 = vaddvq_f64(vmulq_f64(v111, v117)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v117, v117))) * v102.f64[0], 2.22507386e-308);
      if (v12 <= 1.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 1.0;
      }

      if (v12 >= -1.0)
      {
        v14 = v13;
      }

      else
      {
        v14 = -1.0;
      }

      v105 = acos(v14);
      v15 = v11 / fmax(vmulq_laneq_f64(v102, v102, 1).f64[0], 2.22507386e-308);
      if (v15 <= 1.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 1.0;
      }

      if (v15 >= -1.0)
      {
        v17 = v16;
      }

      else
      {
        v17 = -1.0;
      }

      v18 = acos(v17);
      v19.f64[0] = v105;
      v19.f64[1] = v18;
      v20 = vdivq_f64(vmulq_f64(v19, vdupq_n_s64(0x4066800000000000uLL)), vdupq_n_s64(0x400921FB54442D18uLL));
      v21 = vdupq_n_s64(0x4076800000000000uLL);
      v22 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v117, v108), v114), vzip2q_s64(v117, v108), v111.f64[0])), v20, vsubq_f64(v21, v20));
      v23 = vdup_n_s32(v9);
      v24.i64[0] = v23.u32[0];
      v24.i64[1] = v23.u32[1];
      v25 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v24, 0x3FuLL)), v22, vsubq_f64(v21, v22));
      __asm { FMOV            V1.2D, #15.0 }

      v31 = vbslq_s8(vcgtq_f64(_Q1, v25), vaddq_f64(v25, v21), v25);
      if (vabdd_f64(*v31.i64, *&v31.i64[1]) < 0.100000001)
      {
        v32 = *&a3[2]->f64[0];
        v33 = vsub_f32(v32, v7);
        v34 = vmul_f32(v33, v33);
        v35 = vsub_f32(v32, v10);
        v36 = vmul_f32(v35, v35);
        v37 = vsqrt_f32(vadd_f32(vzip1_s32(v34, v36), vzip2_s32(v34, v36)));
        if ((vcgt_f32(vdup_lane_s32(v37, 1), v37).u32[0] & 1) == 0)
        {
          return 1;
        }

        goto LABEL_69;
      }

      if (*v31.i64 < *&v31.i64[1])
      {
LABEL_69:
        sub_2623A0434(a1, a2 - 6);
      }

      return 1;
    }
  }

  v38 = (a1 + 12);
  sub_2623A04C8(a1, a1 + 6, a1 + 12, a3);
  v39 = a1 + 18;
  if (a1 + 18 == a2)
  {
    return 1;
  }

  v40 = 0;
  v41 = 0;
  v100 = vdupq_n_s64(0x400921FB54442D18uLL);
  v101 = vdupq_n_s64(0x4066800000000000uLL);
  v99 = vdupq_n_s64(0x4076800000000000uLL);
  __asm { FMOV            V0.2D, #15.0 }

  v98 = _Q0;
  while (1)
  {
    v43 = *&a3[1]->f64[0];
    v44 = v39[1];
    v118 = vcvtq_f64_f32(vsub_f32(v44, v43));
    v112 = **a3;
    v115 = -(*a3)->f64[1];
    v45 = *(a3 + 24);
    v46 = v38[1];
    v109 = vcvtq_f64_f32(vsub_f32(v46, v43));
    v47 = vaddvq_f64(vmulq_f64(v112, v109));
    v103 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v112, v112), vmulq_f64(v109, v109)));
    v48 = vaddvq_f64(vmulq_f64(v112, v118)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v118, v118))) * v103.f64[0], 2.22507386e-308);
    v49 = v48 <= 1.0 ? v48 : 1.0;
    v50 = v48 >= -1.0 ? v49 : -1.0;
    v106 = acos(v50);
    v51 = v47 / fmax(vmulq_laneq_f64(v103, v103, 1).f64[0], 2.22507386e-308);
    v52 = v51 <= 1.0 ? v51 : 1.0;
    v53 = v51 >= -1.0 ? v52 : -1.0;
    v54 = acos(v53);
    v55.f64[0] = v106;
    v55.f64[1] = v54;
    v56 = vdivq_f64(vmulq_f64(v55, v101), v100);
    v57 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v118, v109), v115), vzip2q_s64(v118, v109), v112.f64[0])), v56, vsubq_f64(v99, v56));
    v58 = vdup_n_s32(v45);
    v59.i64[0] = v58.u32[0];
    v59.i64[1] = v58.u32[1];
    v60 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v59, 0x3FuLL)), v57, vsubq_f64(v99, v57));
    v61 = vbslq_s8(vcgtq_f64(v98, v60), vaddq_f64(v60, v99), v60);
    if (vabdd_f64(*v61.i64, *&v61.i64[1]) >= 0.100000001)
    {
      break;
    }

    v62 = *&a3[2]->f64[0];
    v63 = vsub_f32(v62, v44);
    v64 = vmul_f32(v63, v63);
    v65 = vsub_f32(v62, v46);
    v66 = vmul_f32(v65, v65);
    v67 = vsqrt_f32(vadd_f32(vzip1_s32(v64, v66), vzip2_s32(v64, v66)));
    if (vcgt_f32(vdup_lane_s32(v67, 1), v67).u32[0])
    {
      goto LABEL_42;
    }

LABEL_65:
    v38 = v39;
    v40 += 48;
    v39 += 6;
    if (v39 == a2)
    {
      return 1;
    }
  }

  if (*v61.i64 >= *&v61.i64[1])
  {
    goto LABEL_65;
  }

LABEL_42:
  v120 = *v39;
  sub_262292E28(v121, (v39 + 1));
  for (i = v40; ; i -= 48)
  {
    *(a1 + i + 144) = *(a1 + i + 96);
    sub_262339704(v123, a1 + i + 152, a1 + i + 104);
    sub_2621CC7B4(v124);
    if (i == -96)
    {
      v94 = (a1 + 1);
      v95 = a1;
      goto LABEL_63;
    }

    v69 = v121[0];
    v70 = *&a3[1]->f64[0];
    v119 = vcvtq_f64_f32(vsub_f32(v121[0], v70));
    v113 = **a3;
    v116 = -(*a3)->f64[1];
    v71 = *(a3 + 24);
    v72 = *(a1 + i + 56);
    v110 = vcvtq_f64_f32(vsub_f32(v72, v70));
    v73 = vaddvq_f64(vmulq_f64(v113, v110));
    v104 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v113, v113), vmulq_f64(v110, v110)));
    v74 = vaddvq_f64(vmulq_f64(v113, v119)) / fmax(sqrt(vaddvq_f64(vmulq_f64(v119, v119))) * v104.f64[0], 2.22507386e-308);
    v75 = v74 <= 1.0 ? v74 : 1.0;
    v76 = v74 >= -1.0 ? v75 : -1.0;
    v107 = acos(v76);
    v77 = v73 / fmax(vmulq_laneq_f64(v104, v104, 1).f64[0], 2.22507386e-308);
    v78 = v77 <= 1.0 ? v77 : 1.0;
    v79 = v77 >= -1.0 ? v78 : -1.0;
    v80 = acos(v79);
    v81.f64[0] = v107;
    v81.f64[1] = v80;
    v82 = vdivq_f64(vmulq_f64(v81, v101), v100);
    v83 = vbslq_s8(vclezq_f64(vmlaq_n_f64(vmulq_n_f64(vzip1q_s64(v119, v110), v116), vzip2q_s64(v119, v110), v113.f64[0])), v82, vsubq_f64(v99, v82));
    v84 = vdup_n_s32(v71);
    v85.i64[0] = v84.u32[0];
    v85.i64[1] = v84.u32[1];
    v86 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v85, 0x3FuLL)), v83, vsubq_f64(v99, v83));
    v87 = vbslq_s8(vcgtq_f64(v98, v86), vaddq_f64(v86, v99), v86);
    if (vabdd_f64(*v87.i64, *&v87.i64[1]) >= 0.100000001)
    {
      break;
    }

    v88 = *&a3[2]->f64[0];
    v89 = vsub_f32(v88, v69);
    v90 = vmul_f32(v89, v89);
    v91 = vsub_f32(v88, v72);
    v92 = vmul_f32(v91, v91);
    v93 = vsqrt_f32(vadd_f32(vzip1_s32(v90, v92), vzip2_s32(v90, v92)));
    if ((vcgt_f32(vdup_lane_s32(v93, 1), v93).u8[0] & 1) == 0)
    {
      goto LABEL_62;
    }

LABEL_60:
    ;
  }

  if (*v87.i64 < *&v87.i64[1])
  {
    goto LABEL_60;
  }

LABEL_62:
  v95 = (a1 + i + 96);
  v94 = a1 + i + 104;
LABEL_63:
  *v95 = v120;
  sub_262339704(v123, v94, v121);
  sub_2621CC7B4(v124);
  if (++v41 != 8)
  {
    sub_2621CC7B4(v122);
    goto LABEL_65;
  }

  v96 = v39 + 6 == a2;
  sub_2621CC7B4(v122);
  return v96;
}

void sub_2623A2060(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2874EF600;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x266727420);
}

void sub_2623A20D4(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_26223B6E4((v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_2623A21B0(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (v3 < 0x55)
  {
    a2 = 1;
  }

  if (v3 > 0xA9 || (a2 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 85;
  }
}

void sub_2623A220C(void *a1, char a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 85 * ((v3 - v4) >> 3) - 1;
  }

  v6 = v5 - (a1[5] + a1[4]);
  if (v6 < 0x55)
  {
    a2 = 1;
  }

  if (v6 > 0xA9 || (a2 & 1) == 0)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

void *sub_2623A2280(void *a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x55;
  v4 = v2 - 85;
  if (!v3)
  {
    v7 = a1[2];
    v8 = a1[3];
    v9 = v8 - *a1;
    if (v7 - a1[1] < v9)
    {
      if (v8 != v7)
      {
        operator new();
      }

      operator new();
    }

    if (v8 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v12 = a1;
    sub_26223B6E4(v10);
  }

  a1[4] = v4;
  v5 = a1[1];
  *&v11 = *v5;
  a1[1] = v5 + 1;
  return sub_26223B72C(a1, &v11);
}

void sub_2623A23C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2623A23F0(float32x2_t *a1, float32x2_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a2 - 5;
  v266 = a2 - 15;
  v267 = a2 - 10;
  v9 = a1;
  v268 = a2;
  while (1)
  {
    a1 = v9;
    v10 = a2 - v9;
    v11 = 0xCCCCCCCCCCCCCCCDLL * (a2 - v9);
    v12 = v11 - 2;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v174 = a2[-5];
        v173 = a2 - 5;
        v175 = v174;
        LODWORD(v176) = HIDWORD(*a1);
        v177 = v174.f32[1] == v176;
        v178 = v174.f32[1] < v176;
        v179 = vcgt_f32(*a1, v175).u8[0];
        if (v177)
        {
          v178 = v179;
        }

        if (!v178)
        {
          return;
        }

        goto LABEL_192;
      }

      goto LABEL_9;
    }

    if (v11 == 3)
    {
      v180 = a1[5];
      v181 = a2[-5];
      v173 = a2 - 5;
      v182 = v181;
      LODWORD(v183) = HIDWORD(*a1);
      v184 = vcgt_f32(*a1, v180).u8[0];
      if (v180.f32[1] != v183)
      {
        v184 = v180.f32[1] < v183;
      }

      v185 = v182.f32[1] < v180.f32[1];
      v186 = vcgt_f32(v180, v182).u8[0];
      if (v182.f32[1] == v180.f32[1])
      {
        v185 = v186;
      }

      if ((v184 & 1) == 0)
      {
        if (v185)
        {
          sub_2623A3414(&a1[5], v173);
          LODWORD(v248) = HIDWORD(*&a1[5]);
          LODWORD(v249) = HIDWORD(*a1);
          v250 = v248 < v249;
          v251 = vcgt_f32(*a1, a1[5]).u8[0];
          if (v248 == v249)
          {
            v250 = v251;
          }

          if (v250)
          {
            v172 = a1;
            v171 = &a1[5];
            goto LABEL_194;
          }
        }

        return;
      }

      if (!v185)
      {
        sub_2623A3414(a1, &a1[5]);
        LODWORD(v262) = HIDWORD(*v173);
        LODWORD(v263) = HIDWORD(*&a1[5]);
        v264 = v262 < v263;
        v265 = vcgt_f32(a1[5], *v173).u8[0];
        if (v262 == v263)
        {
          v264 = v265;
        }

        if (!v264)
        {
          return;
        }

        v172 = &a1[5];
LABEL_193:
        v171 = v173;
        goto LABEL_194;
      }

LABEL_192:
      v172 = a1;
      goto LABEL_193;
    }

    if (v11 == 4)
    {
      sub_2623A3498(a1, a1 + 5, a1 + 10, v8);
      return;
    }

    if (v11 == 5)
    {
      break;
    }

LABEL_9:
    if (v10 <= 959)
    {
      if (a4)
      {
        if (a1 != a2)
        {
          v187 = a1 + 5;
          if (&a1[5] != a2)
          {
            v188 = 0;
            v189 = a1;
            do
            {
              v190 = v189[5];
              v191 = *v189;
              v189 = v187;
              v192 = v190.f32[1] < v191.f32[1];
              v193 = vcgt_f32(v191, v190).u8[0];
              if (v190.f32[1] == v191.f32[1])
              {
                v192 = v193;
              }

              if (v192)
              {
                sub_262292E28(&v279, v189);
                v194 = v188;
                while (1)
                {
                  sub_262339704(v277, &a1[5] + v194, a1 + v194);
                  sub_2621CC7B4(v278);
                  if (!v194)
                  {
                    break;
                  }

                  LODWORD(v195) = HIDWORD(*(&a1[-5] + v194));
                  v196 = v279.f32[1] < v195;
                  v197 = vcgt_f32(*(a1 + v194 - 40), v279).u8[0];
                  if (v279.f32[1] == v195)
                  {
                    v196 = v197;
                  }

                  v194 -= 40;
                  if (!v196)
                  {
                    v198 = &a1[5] + v194;
                    goto LABEL_210;
                  }
                }

                v198 = a1;
LABEL_210:
                sub_262339704(v275, v198, &v279);
                sub_2621CC7B4(v276);
                sub_2621CC7B4(v280);
              }

              v187 = v189 + 5;
              v188 += 40;
            }

            while (&v189[5] != a2);
          }
        }
      }

      else if (a1 != a2)
      {
        v252 = a1 + 5;
        while (v252 != a2)
        {
          v253 = v252;
          LODWORD(v254) = HIDWORD(*&a1[5]);
          LODWORD(v255) = HIDWORD(*a1);
          v256 = v254 < v255;
          v257 = vcgt_f32(*a1, a1[5]).u8[0];
          if (v254 == v255)
          {
            v256 = v257;
          }

          if (v256)
          {
            sub_262292E28(&v279, v253);
            do
            {
              v258 = a1;
              sub_262339704(v277, &a1[5], a1);
              sub_2621CC7B4(v278);
              a1 -= 5;
              LODWORD(v259) = HIDWORD(*(v258 - 40));
              v260 = v279.f32[1] < v259;
              v261 = vcgt_f32(*(v258 - 40), v279).u8[0];
              if (v279.f32[1] == v259)
              {
                v260 = v261;
              }
            }

            while (v260);
            sub_262339704(v275, v258, &v279);
            sub_2621CC7B4(v276);
            sub_2621CC7B4(v280);
          }

          v252 = (v253 + 40);
          a1 = v253;
        }
      }

      return;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return;
      }

      v199 = v12 >> 1;
      v200 = v12 >> 1;
      do
      {
        v201 = v200;
        if (v199 >= v200)
        {
          v202 = (2 * v200) | 1;
          v203 = &a1[5 * v202];
          if (2 * v200 + 2 >= v11)
          {
            v210 = *v203;
          }

          else
          {
            LODWORD(v204) = HIDWORD(*v203);
            v205 = v203[5];
            v206 = v204 < v205.f32[1];
            v207 = vcgt_f32(v205, *v203).u8[0];
            if (v204 == v205.f32[1])
            {
              v206 = v207;
            }

            v208 = !v206;
            if (v206)
            {
              v209 = -1;
            }

            else
            {
              v209 = 0;
            }

            v210 = vbsl_s8(vdup_n_s32(v209), v205, *v203);
            if (!v208)
            {
              v203 += 5;
              v202 = 2 * v200 + 2;
            }
          }

          v211 = &a1[5 * v200];
          LODWORD(v212) = HIDWORD(*v211);
          v213 = v210.f32[1] < v212;
          v214 = vcgt_f32(*v211, v210).u8[0];
          if (v210.f32[1] == v212)
          {
            v213 = v214;
          }

          if (!v213)
          {
            sub_262292E28(&v279, &a1[5 * v201]);
            do
            {
              v215 = v203;
              sub_262339704(v277, v211, v203);
              sub_2621CC7B4(v278);
              if (v199 < v202)
              {
                break;
              }

              v203 = &a1[5 * ((2 * v202) | 1)];
              if (2 * v202 + 2 >= v11)
              {
                v222 = *v203;
                v202 = (2 * v202) | 1;
              }

              else
              {
                LODWORD(v216) = HIDWORD(*v203);
                v217 = v203[5];
                v218 = v216 < v217.f32[1];
                v219 = vcgt_f32(v217, *v203).u8[0];
                if (v216 == v217.f32[1])
                {
                  v218 = v219;
                }

                v220 = !v218;
                v221 = v218 ? -1 : 0;
                v222 = vbsl_s8(vdup_n_s32(v221), v217, *v203);
                if (v220)
                {
                  v202 = (2 * v202) | 1;
                }

                else
                {
                  v203 += 5;
                  v202 = 2 * v202 + 2;
                }
              }

              v223 = v222.f32[1] < v279.f32[1];
              v224 = vcgt_f32(v279, v222).u8[0];
              if (v222.f32[1] == v279.f32[1])
              {
                v223 = v224;
              }

              v211 = v215;
            }

            while (!v223);
            sub_262339704(v275, v215, &v279);
            sub_2621CC7B4(v276);
            sub_2621CC7B4(v280);
          }
        }

        v200 = v201 - 1;
      }

      while (v201);
      v225 = 0xCCCCCCCCCCCCCCCDLL * (v10 >> 3);
      v226 = v268;
      while (2)
      {
        sub_262292E28(v273, a1);
        v227 = 0;
        v228 = a1;
        do
        {
          v229 = (v228 + 40 * v227);
          v230 = v229 + 5;
          if (2 * v227 + 2 >= v225)
          {
            v227 = (2 * v227) | 1;
          }

          else
          {
            v232 = v229[10];
            v231 = v229 + 10;
            LODWORD(v233) = HIDWORD(*&v231[-5]);
            v234 = v233 < v232.f32[1];
            v235 = vcgt_f32(v232, v231[-5]).u8[0];
            if (v233 == v232.f32[1])
            {
              v234 = v235;
            }

            if (v234)
            {
              v230 = v231;
              v227 = 2 * v227 + 2;
            }

            else
            {
              v227 = (2 * v227) | 1;
            }
          }

          sub_262339704(&v279, v228, v230);
          sub_2621CC7B4(v280);
          v228 = v230;
        }

        while (v227 <= ((v225 - 2) >> 1));
        v226 -= 40;
        if (v230 != v226)
        {
          sub_262339704(v271, v230, v226);
          sub_2621CC7B4(v272);
          sub_262339704(v269, v226, v273);
          sub_2621CC7B4(v270);
          v236 = v230 - a1 + 40;
          if (v236 >= 41)
          {
            v237 = (-2 - 0x3333333333333333 * (v236 >> 3)) >> 1;
            v238 = &a1[5 * v237];
            LODWORD(v239) = HIDWORD(*v238);
            LODWORD(v240) = HIDWORD(*v230);
            v241 = v239 < v240;
            v242 = vcgt_f32(*v230, *v238).u8[0];
            if (v239 == v240)
            {
              v241 = v242;
            }

            if (v241)
            {
              sub_262292E28(&v279, v230);
              do
              {
                v243 = v238;
                sub_262339704(v277, v230, v238);
                sub_2621CC7B4(v278);
                if (!v237)
                {
                  break;
                }

                v237 = (v237 - 1) >> 1;
                v238 = &a1[5 * v237];
                LODWORD(v244) = HIDWORD(*v238);
                v245 = v244 < v279.f32[1];
                v246 = vcgt_f32(v279, *v238).u8[0];
                if (v244 == v279.f32[1])
                {
                  v245 = v246;
                }

                v230 = v243;
              }

              while (v245);
              sub_262339704(v275, v243, &v279);
              sub_2621CC7B4(v276);
LABEL_268:
              sub_2621CC7B4(v280);
            }
          }

          sub_2621CC7B4(v274);
          if (v225-- <= 2)
          {
            return;
          }

          continue;
        }

        break;
      }

      sub_262339704(&v279, v230, v273);
      goto LABEL_268;
    }

    v13 = v11 >> 1;
    v14 = &a1[5 * (v11 >> 1)];
    v15 = *v8;
    LODWORD(v16) = HIDWORD(*v8);
    if (v10 >= 0x1401)
    {
      LODWORD(v17) = HIDWORD(*v14);
      LODWORD(v18) = HIDWORD(*a1);
      v19 = vcgt_f32(*a1, *v14).u8[0];
      if (v17 != v18)
      {
        v19 = v17 < v18;
      }

      v20 = v16 < v17;
      v21 = vcgt_f32(*v14, v15).u8[0];
      if (v16 == v17)
      {
        v20 = v21;
      }

      if (v19)
      {
        v22 = a1;
        if (v20)
        {
LABEL_22:
          v27 = v8;
LABEL_39:
          sub_2623A3414(v22, v27);
          goto LABEL_40;
        }

        sub_2623A3414(a1, v14);
        LODWORD(v23) = HIDWORD(*v8);
        LODWORD(v24) = HIDWORD(*v14);
        v25 = v23 < v24;
        v26 = vcgt_f32(*v14, *v8).u8[0];
        if (v23 == v24)
        {
          v25 = v26;
        }

        if (v25)
        {
          v22 = v14;
          goto LABEL_22;
        }
      }

      else if (v20)
      {
        sub_2623A3414(v14, v8);
        LODWORD(v39) = HIDWORD(*v14);
        LODWORD(v40) = HIDWORD(*a1);
        v41 = v39 < v40;
        v42 = vcgt_f32(*a1, *v14).u8[0];
        if (v39 == v40)
        {
          v41 = v42;
        }

        if (v41)
        {
          v22 = a1;
          v27 = v14;
          goto LABEL_39;
        }
      }

LABEL_40:
      v43 = a1 + 5;
      v44 = &a1[5 * v13];
      v46 = v44[-5];
      v45 = v44 - 5;
      v47 = v46;
      v48 = v46.f32[1];
      LODWORD(v49) = HIDWORD(*&a1[5]);
      v50 = v46.f32[1] < v49;
      v51 = vcgt_f32(a1[5], v46).u8[0];
      if (v46.f32[1] != v49)
      {
        v51 = v50;
      }

      LODWORD(v52) = HIDWORD(*v267);
      v53 = v52 < v48;
      v54 = vcgt_f32(v47, *v267).u8[0];
      if (v52 == v48)
      {
        v53 = v54;
      }

      if (v51)
      {
        v55 = &a1[5];
        if (v53)
        {
LABEL_50:
          v60 = v267;
LABEL_62:
          sub_2623A3414(v55, v60);
          goto LABEL_63;
        }

        sub_2623A3414(v55, v45);
        LODWORD(v56) = HIDWORD(*v267);
        LODWORD(v57) = HIDWORD(*v45);
        v58 = v56 < v57;
        v59 = vcgt_f32(*v45, *v267).u8[0];
        if (v56 == v57)
        {
          v58 = v59;
        }

        if (v58)
        {
          v55 = v45;
          goto LABEL_50;
        }
      }

      else if (v53)
      {
        sub_2623A3414(v45, v267);
        LODWORD(v65) = HIDWORD(*v45);
        LODWORD(v66) = HIDWORD(*v43);
        v67 = v65 < v66;
        v68 = vcgt_f32(*v43, *v45).u8[0];
        if (v65 == v66)
        {
          v67 = v68;
        }

        if (v67)
        {
          v55 = &a1[5];
          v60 = v45;
          goto LABEL_62;
        }
      }

LABEL_63:
      v69 = a1 + 10;
      v70 = &a1[5 * v13];
      v72 = v70[5];
      v71 = v70 + 5;
      v73 = v72;
      v74 = v72.f32[1];
      LODWORD(v75) = HIDWORD(*&a1[10]);
      v76 = v72.f32[1] < v75;
      v77 = vcgt_f32(a1[10], v72).u8[0];
      if (v72.f32[1] != v75)
      {
        v77 = v76;
      }

      LODWORD(v78) = HIDWORD(*v266);
      v79 = v78 < v74;
      v80 = vcgt_f32(v73, *v266).u8[0];
      if (v78 == v74)
      {
        v79 = v80;
      }

      if (v77)
      {
        v81 = &a1[10];
        if (v79)
        {
LABEL_73:
          v86 = v266;
LABEL_79:
          sub_2623A3414(v81, v86);
          goto LABEL_80;
        }

        sub_2623A3414(v81, v71);
        LODWORD(v82) = HIDWORD(*v266);
        LODWORD(v83) = HIDWORD(*v71);
        v84 = v82 < v83;
        v85 = vcgt_f32(*v71, *v266).u8[0];
        if (v82 == v83)
        {
          v84 = v85;
        }

        if (v84)
        {
          v81 = v71;
          goto LABEL_73;
        }
      }

      else if (v79)
      {
        sub_2623A3414(v71, v266);
        LODWORD(v87) = HIDWORD(*v71);
        LODWORD(v88) = HIDWORD(*v69);
        v89 = v87 < v88;
        v90 = vcgt_f32(*v69, *v71).u8[0];
        if (v87 == v88)
        {
          v89 = v90;
        }

        if (v89)
        {
          v81 = &a1[10];
          v86 = v71;
          goto LABEL_79;
        }
      }

LABEL_80:
      LODWORD(v91) = HIDWORD(*v14);
      LODWORD(v92) = HIDWORD(*v45);
      v93 = vcgt_f32(*v45, *v14).u8[0];
      if (v91 != v92)
      {
        v93 = v91 < v92;
      }

      LODWORD(v94) = HIDWORD(*v71);
      v95 = v94 < v91;
      v96 = vcgt_f32(*v14, *v71).u8[0];
      if (v94 == v91)
      {
        v95 = v96;
      }

      if (v93)
      {
        v97 = v45;
        if (!v95)
        {
          sub_2623A3414(v45, v14);
          LODWORD(v98) = HIDWORD(*v71);
          LODWORD(v99) = HIDWORD(*v14);
          v100 = v98 < v99;
          v101 = vcgt_f32(*v14, *v71).u8[0];
          if (v98 == v99)
          {
            v100 = v101;
          }

          if (!v100)
          {
            goto LABEL_97;
          }

          v97 = v14;
        }

        v102 = v71;
      }

      else
      {
        if (!v95)
        {
          goto LABEL_97;
        }

        sub_2623A3414(v14, v71);
        LODWORD(v103) = HIDWORD(*v14);
        LODWORD(v104) = HIDWORD(*v45);
        v105 = v103 < v104;
        v106 = vcgt_f32(*v45, *v14).u8[0];
        if (v103 == v104)
        {
          v105 = v106;
        }

        if (!v105)
        {
          goto LABEL_97;
        }

        v97 = v45;
        v102 = v14;
      }

      sub_2623A3414(v97, v102);
LABEL_97:
      sub_262292E28(&v279, a1);
      sub_262339704(v277, a1, v14);
      sub_2621CC7B4(v278);
      sub_262339704(v275, v14, &v279);
      sub_2621CC7B4(v276);
      sub_2621CC7B4(v280);
      a2 = v268;
      goto LABEL_98;
    }

    LODWORD(v28) = HIDWORD(*a1);
    LODWORD(v29) = HIDWORD(*v14);
    v30 = vcgt_f32(*v14, *a1).u8[0];
    if (v28 != v29)
    {
      v30 = v28 < v29;
    }

    v31 = v16 < v28;
    v32 = vcgt_f32(*a1, v15).u8[0];
    if (v16 == v28)
    {
      v31 = v32;
    }

    if (v30)
    {
      v33 = v14;
      if (!v31)
      {
        sub_2623A3414(v14, a1);
        LODWORD(v34) = HIDWORD(*v8);
        LODWORD(v35) = HIDWORD(*a1);
        v36 = v34 < v35;
        v37 = vcgt_f32(*a1, *v8).u8[0];
        if (v34 == v35)
        {
          v36 = v37;
        }

        if (!v36)
        {
          goto LABEL_98;
        }

        v33 = a1;
      }

      v38 = v8;
    }

    else
    {
      if (!v31)
      {
        goto LABEL_98;
      }

      sub_2623A3414(a1, v8);
      LODWORD(v61) = HIDWORD(*a1);
      LODWORD(v62) = HIDWORD(*v14);
      v63 = v61 < v62;
      v64 = vcgt_f32(*v14, *a1).u8[0];
      if (v61 == v62)
      {
        v63 = v64;
      }

      if (!v63)
      {
        goto LABEL_98;
      }

      v33 = v14;
      v38 = a1;
    }

    sub_2623A3414(v33, v38);
LABEL_98:
    --a3;
    if (a4)
    {
      goto LABEL_102;
    }

    LODWORD(v107) = HIDWORD(*&a1[-5]);
    LODWORD(v108) = HIDWORD(*a1);
    v109 = v107 < v108;
    v110 = vcgt_f32(*a1, a1[-5]).u8[0];
    if (v107 == v108)
    {
      v109 = v110;
    }

    if (v109)
    {
LABEL_102:
      sub_262292E28(&v279, a1);
      v111 = a1;
      do
      {
        v112 = v111;
        v113 = v111[5];
        v111 += 5;
        v114 = v113.f32[1] < v279.f32[1];
        v115 = vcgt_f32(v279, v113).u8[0];
        if (v113.f32[1] == v279.f32[1])
        {
          v114 = v115;
        }
      }

      while (v114);
      if (v112 == a1)
      {
        a2 = v268;
        if (v111 < v268)
        {
          v119 = v8;
          v120 = v8;
          do
          {
            v121 = *v120;
            v120 -= 5;
            v122 = v121.f32[1] >= v279.f32[1];
            v123 = vmvn_s8(vcgt_f32(v279, v121)).u8[0];
            if (v121.f32[1] == v279.f32[1])
            {
              v122 = v123;
            }

            if (!v122)
            {
              break;
            }

            v124 = v111 >= v119;
            v119 = v120;
          }

          while (!v124);
          a2 = v120 + 5;
        }
      }

      else
      {
        do
        {
          v116 = a2[-5];
          a2 -= 5;
          v117 = v116.f32[1] < v279.f32[1];
          v118 = vcgt_f32(v279, v116).u8[0];
          if (v116.f32[1] == v279.f32[1])
          {
            v117 = v118;
          }
        }

        while (!v117);
      }

      if (v111 < a2)
      {
        v125 = a2;
        v126 = v111;
        do
        {
          sub_2623A3414(v126, v125);
          do
          {
            v112 = v126;
            v127 = *(v126 + 40);
            v126 += 40;
            v128 = v127.f32[1] < v279.f32[1];
            v129 = vcgt_f32(v279, v127).u8[0];
            if (v127.f32[1] == v279.f32[1])
            {
              v128 = v129;
            }
          }

          while (v128);
          do
          {
            v130 = *(v125 - 40);
            v125 -= 40;
            v131 = v130.f32[1] < v279.f32[1];
            v132 = vcgt_f32(v279, v130).u8[0];
            if (v130.f32[1] == v279.f32[1])
            {
              v131 = v132;
            }
          }

          while (!v131);
        }

        while (v126 < v125);
      }

      if (v112 != a1)
      {
        sub_262339704(v277, a1, v112);
        sub_2621CC7B4(v278);
      }

      sub_262339704(v275, v112, &v279);
      sub_2621CC7B4(v276);
      sub_2621CC7B4(v280);
      v124 = v111 >= a2;
      a2 = v268;
      if (!v124)
      {
        goto LABEL_135;
      }

      v133 = sub_2623A3650(a1, v112);
      v9 = v112 + 5;
      if (sub_2623A3650(v112 + 5, v268))
      {
        a2 = v112;
        if (v133)
        {
          return;
        }

        goto LABEL_1;
      }

      if ((v133 & 1) == 0)
      {
LABEL_135:
        sub_2623A23F0(a1, v112, a3, a4 & 1);
        a4 = 0;
        v9 = v112 + 5;
      }
    }

    else
    {
      sub_262292E28(&v279, a1);
      LODWORD(v134) = HIDWORD(*v8);
      v135 = v279.f32[1] < v134;
      v136 = vcgt_f32(*v8, v279).u8[0];
      if (v279.f32[1] == v134)
      {
        v135 = v136;
      }

      if (v135)
      {
        v9 = a1;
        do
        {
          v137 = v9[5];
          v9 += 5;
          v138 = v279.f32[1] < v137.f32[1];
          v139 = vcgt_f32(v137, v279).u8[0];
          if (v279.f32[1] == v137.f32[1])
          {
            v138 = v139;
          }
        }

        while (!v138);
      }

      else
      {
        v140 = a1 + 5;
        do
        {
          v9 = v140;
          if (v140 >= a2)
          {
            break;
          }

          v140 += 5;
          LODWORD(v141) = HIDWORD(*v9);
          v142 = v279.f32[1] < v141;
          v143 = vcgt_f32(*v9, v279).u8[0];
          if (v279.f32[1] == v141)
          {
            v142 = v143;
          }
        }

        while (!v142);
      }

      v144 = a2;
      if (v9 < a2)
      {
        v144 = a2;
        do
        {
          v145 = *(v144 - 40);
          v144 -= 40;
          v146 = v279.f32[1] < v145.f32[1];
          v147 = vcgt_f32(v145, v279).u8[0];
          if (v279.f32[1] == v145.f32[1])
          {
            v146 = v147;
          }
        }

        while (v146);
      }

      while (v9 < v144)
      {
        sub_2623A3414(v9, v144);
        do
        {
          v148 = v9[5];
          v9 += 5;
          v149 = v279.f32[1] < v148.f32[1];
          v150 = vcgt_f32(v148, v279).u8[0];
          if (v279.f32[1] == v148.f32[1])
          {
            v149 = v150;
          }
        }

        while (!v149);
        do
        {
          v151 = *(v144 - 40);
          v144 -= 40;
          v152 = v279.f32[1] < v151.f32[1];
          v153 = vcgt_f32(v151, v279).u8[0];
          if (v279.f32[1] == v151.f32[1])
          {
            v152 = v153;
          }
        }

        while (v152);
      }

      if (&v9[-5] != a1)
      {
        sub_262339704(v277, a1, &v9[-5]);
        sub_2621CC7B4(v278);
      }

      sub_262339704(v275, &v9[-5], &v279);
      sub_2621CC7B4(v276);
      sub_2621CC7B4(v280);
      a4 = 0;
    }
  }

  sub_2623A3498(a1, a1 + 5, a1 + 10, a1 + 15);
  v155 = a2[-5];
  v154 = &a2[-5];
  LODWORD(v156) = HIDWORD(*&a1[15]);
  v157 = v155.f32[1] < v156;
  v158 = vcgt_f32(a1[15], v155).u8[0];
  if (v155.f32[1] == v156)
  {
    v157 = v158;
  }

  if (v157)
  {
    sub_2623A3414(&a1[15], v154);
    LODWORD(v159) = HIDWORD(*&a1[15]);
    LODWORD(v160) = HIDWORD(*&a1[10]);
    v161 = v159 < v160;
    v162 = vcgt_f32(a1[10], a1[15]).u8[0];
    if (v159 == v160)
    {
      v161 = v162;
    }

    if (v161)
    {
      sub_2623A3414(&a1[10], &a1[15]);
      LODWORD(v163) = HIDWORD(*&a1[10]);
      LODWORD(v164) = HIDWORD(*&a1[5]);
      v165 = v163 < v164;
      v166 = vcgt_f32(a1[5], a1[10]).u8[0];
      if (v163 == v164)
      {
        v165 = v166;
      }

      if (v165)
      {
        sub_2623A3414(&a1[5], &a1[10]);
        LODWORD(v167) = HIDWORD(*&a1[5]);
        LODWORD(v168) = HIDWORD(*a1);
        v169 = v167 < v168;
        v170 = vcgt_f32(*a1, a1[5]).u8[0];
        if (v167 == v168)
        {
          v169 = v170;
        }

        if (v169)
        {
          v171 = &a1[5];
          v172 = a1;
LABEL_194:
          sub_2623A3414(v172, v171);
        }
      }
    }
  }
}

void sub_2623A3414(uint64_t a1, uint64_t a2)
{
  sub_262292E28(v8, a1);
  sub_262339704(v6, a1, a2);
  sub_2621CC7B4(v7);
  sub_262339704(v4, a2, v8);
  sub_2621CC7B4(v5);
  sub_2621CC7B4(v9);
}

void sub_2623A3498(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4)
{
  v7 = a1;
  LODWORD(v8) = HIDWORD(*a2);
  LODWORD(v9) = HIDWORD(*a1);
  v10 = vcgt_f32(*a1, *a2).u8[0];
  if (v8 != v9)
  {
    v10 = v8 < v9;
  }

  LODWORD(v11) = HIDWORD(*a3);
  v12 = v11 < v8;
  v13 = vcgt_f32(*a2, *a3).u8[0];
  if (v11 == v8)
  {
    v12 = v13;
  }

  if (v10)
  {
    if (v12)
    {
LABEL_11:
      v18 = a3;
LABEL_17:
      sub_2623A3414(a1, v18);
      goto LABEL_18;
    }

    sub_2623A3414(a1, a2);
    LODWORD(v14) = HIDWORD(*a3);
    LODWORD(v15) = HIDWORD(*a2);
    v16 = v14 < v15;
    v17 = vcgt_f32(*a2, *a3).u8[0];
    if (v14 == v15)
    {
      v16 = v17;
    }

    if (v16)
    {
      a1 = a2;
      goto LABEL_11;
    }
  }

  else if (v12)
  {
    sub_2623A3414(a2, a3);
    LODWORD(v19) = HIDWORD(*a2);
    LODWORD(v20) = HIDWORD(*v7);
    v21 = v19 < v20;
    v22 = vcgt_f32(*v7, *a2).u8[0];
    if (v19 == v20)
    {
      v21 = v22;
    }

    if (v21)
    {
      a1 = v7;
      v18 = a2;
      goto LABEL_17;
    }
  }

LABEL_18:
  LODWORD(v23) = HIDWORD(*a4);
  LODWORD(v24) = HIDWORD(*a3);
  v25 = v23 < v24;
  v26 = vcgt_f32(*a3, *a4).u8[0];
  if (v23 == v24)
  {
    v25 = v26;
  }

  if (v25)
  {
    sub_2623A3414(a3, a4);
    LODWORD(v27) = HIDWORD(*a3);
    LODWORD(v28) = HIDWORD(*a2);
    v29 = v27 < v28;
    v30 = vcgt_f32(*a2, *a3).u8[0];
    if (v27 == v28)
    {
      v29 = v30;
    }

    if (v29)
    {
      sub_2623A3414(a2, a3);
      LODWORD(v31) = HIDWORD(*a2);
      LODWORD(v32) = HIDWORD(*v7);
      v33 = v31 < v32;
      v34 = vcgt_f32(*v7, *a2).u8[0];
      if (v31 == v32)
      {
        v33 = v34;
      }

      if (v33)
      {

        sub_2623A3414(v7, a2);
      }
    }
  }
}

uint64_t sub_2623A3650(float32x2_t *a1, float32x2_t *a2)
{
  v3 = a1;
  v4 = 0xCCCCCCCCCCCCCCCDLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v28 = a1[5];
        v5 = a2 - 5;
        v29 = a2[-5];
        LODWORD(v30) = HIDWORD(*a1);
        v31 = vcgt_f32(*a1, v28).u8[0];
        if (v28.f32[1] != v30)
        {
          v31 = v28.f32[1] < v30;
        }

        v32 = v29.f32[1] < v28.f32[1];
        v33 = vcgt_f32(v28, v29).u8[0];
        if (v29.f32[1] == v28.f32[1])
        {
          v32 = v33;
        }

        if ((v31 & 1) == 0)
        {
          if (!v32)
          {
            return 1;
          }

          sub_2623A3414(&a1[5], v5);
          LODWORD(v46) = HIDWORD(*&v3[5]);
          LODWORD(v47) = HIDWORD(*v3);
          v48 = v46 < v47;
          v49 = vcgt_f32(*v3, v3[5]).u8[0];
          if (v46 == v47)
          {
            v48 = v49;
          }

          if (!v48)
          {
            return 1;
          }

          a1 = v3;
          v27 = &v3[5];
          goto LABEL_31;
        }

        if (!v32)
        {
          sub_2623A3414(a1, &a1[5]);
          LODWORD(v66) = HIDWORD(*v5);
          LODWORD(v67) = HIDWORD(*&v3[5]);
          v68 = v66 < v67;
          v69 = vcgt_f32(v3[5], *v5).u8[0];
          if (v66 == v67)
          {
            v68 = v69;
          }

          if (!v68)
          {
            return 1;
          }

          a1 = v3 + 5;
        }

LABEL_30:
        v27 = v5;
LABEL_31:
        sub_2623A3414(a1, v27);
        return 1;
      case 4:
        sub_2623A3498(a1, a1 + 5, a1 + 10, a2 - 5);
        return 1;
      case 5:
        sub_2623A3498(a1, a1 + 5, a1 + 10, a1 + 15);
        v11 = a2[-5];
        v10 = &a2[-5];
        LODWORD(v12) = HIDWORD(*&v3[15]);
        v13 = v11.f32[1] < v12;
        v14 = vcgt_f32(v3[15], v11).u8[0];
        if (v11.f32[1] == v12)
        {
          v13 = v14;
        }

        if (!v13)
        {
          return 1;
        }

        sub_2623A3414(&v3[15], v10);
        LODWORD(v15) = HIDWORD(*&v3[15]);
        LODWORD(v16) = HIDWORD(*&v3[10]);
        v17 = v15 < v16;
        v18 = vcgt_f32(v3[10], v3[15]).u8[0];
        if (v15 == v16)
        {
          v17 = v18;
        }

        if (!v17)
        {
          return 1;
        }

        sub_2623A3414(&v3[10], &v3[15]);
        LODWORD(v19) = HIDWORD(*&v3[10]);
        LODWORD(v20) = HIDWORD(*&v3[5]);
        v21 = v19 < v20;
        v22 = vcgt_f32(v3[5], v3[10]).u8[0];
        if (v19 == v20)
        {
          v21 = v22;
        }

        if (!v21)
        {
          return 1;
        }

        sub_2623A3414(&v3[5], &v3[10]);
        LODWORD(v23) = HIDWORD(*&v3[5]);
        LODWORD(v24) = HIDWORD(*v3);
        v25 = v23 < v24;
        v26 = vcgt_f32(*v3, v3[5]).u8[0];
        if (v23 == v24)
        {
          v25 = v26;
        }

        if (!v25)
        {
          return 1;
        }

        v27 = &v3[5];
        a1 = v3;
        goto LABEL_31;
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
      v5 = a2 - 5;
      v6 = a2[-5];
      LODWORD(v7) = HIDWORD(*a1);
      v8 = v6.f32[1] < v7;
      v9 = vcgt_f32(*a1, v6).u8[0];
      if (v6.f32[1] == v7)
      {
        v8 = v9;
      }

      if (!v8)
      {
        return 1;
      }

      goto LABEL_30;
    }
  }

  v34 = a1 + 10;
  v35 = a1[10];
  v36 = a1[5];
  LODWORD(v37) = HIDWORD(*a1);
  v38 = vcgt_f32(*a1, v36).u8[0];
  if (v36.f32[1] != v37)
  {
    v38 = v36.f32[1] < v37;
  }

  v39 = v35.f32[1] < v36.f32[1];
  v40 = vcgt_f32(v36, v35).u8[0];
  if (v35.f32[1] == v36.f32[1])
  {
    v39 = v40;
  }

  if (v38)
  {
    if (v39)
    {
LABEL_42:
      v45 = &v3[10];
LABEL_54:
      sub_2623A3414(a1, v45);
      goto LABEL_55;
    }

    sub_2623A3414(a1, &a1[5]);
    LODWORD(v41) = HIDWORD(*&v3[10]);
    LODWORD(v42) = HIDWORD(*&v3[5]);
    v43 = v41 < v42;
    v44 = vcgt_f32(v3[5], v3[10]).u8[0];
    if (v41 == v42)
    {
      v43 = v44;
    }

    if (v43)
    {
      a1 = v3 + 5;
      goto LABEL_42;
    }
  }

  else if (v39)
  {
    sub_2623A3414(&a1[5], &a1[10]);
    LODWORD(v50) = HIDWORD(*&v3[5]);
    LODWORD(v51) = HIDWORD(*v3);
    v52 = v50 < v51;
    v53 = vcgt_f32(*v3, v3[5]).u8[0];
    if (v50 == v51)
    {
      v52 = v53;
    }

    if (v52)
    {
      a1 = v3;
      v45 = &v3[5];
      goto LABEL_54;
    }
  }

LABEL_55:
  v54 = v3 + 15;
  if (&v3[15] != a2)
  {
    v55 = 0;
    v56 = 0;
    do
    {
      LODWORD(v57) = HIDWORD(*v54);
      LODWORD(v58) = HIDWORD(*v34);
      v59 = v57 < v58;
      v60 = vcgt_f32(*v34, *v54).u8[0];
      if (v57 == v58)
      {
        v59 = v60;
      }

      if (v59)
      {
        sub_262292E28(&v76, v54);
        v61 = v55;
        while (1)
        {
          sub_262339704(v74, &v3[15] + v61, &v3[10] + v61);
          sub_2621CC7B4(v75);
          if (v61 == -80)
          {
            break;
          }

          LODWORD(v62) = HIDWORD(*(&v3[5] + v61));
          v63 = v76.f32[1] < v62;
          v64 = vcgt_f32(*(v3 + v61 + 40), v76).u8[0];
          if (v76.f32[1] == v62)
          {
            v63 = v64;
          }

          v61 -= 40;
          if (!v63)
          {
            v65 = &v3[15] + v61;
            goto LABEL_67;
          }
        }

        v65 = v3;
LABEL_67:
        sub_262339704(v72, v65, &v76);
        sub_2621CC7B4(v73);
        if (++v56 == 8)
        {
          v70 = &v54[5] == a2;
          sub_2621CC7B4(v77);
          return v70;
        }

        sub_2621CC7B4(v77);
      }

      v34 = v54;
      v55 += 40;
      v54 += 5;
    }

    while (v54 != a2);
  }

  return 1;
}

uint64_t sub_2623A3AD0(float32x2_t *a1, float32x2_t *a2, uint64_t a3)
{
  __p = 0;
  v25 = 0;
  v26 = 0;
  sub_2621CBA84(&__p, a1);
  sub_2621CBA84(&__p, a2);
  v6 = vmul_f32(vadd_f32(*a1, *a2), 0x3F0000003F000000);
  v7 = v25;
  if (v25 >= v26)
  {
    v10 = __p;
    v11 = v25 - __p;
    v12 = (v25 - __p) >> 3;
    v13 = v12 + 1;
    if ((v12 + 1) >> 61)
    {
      sub_2621CBEB0();
    }

    v14 = v26 - __p;
    if ((v26 - __p) >> 2 > v13)
    {
      v13 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      sub_2621CBEC8(v15);
    }

    v9 = 0;
    v16 = (8 * v12);
    *v16 = v6;
    v8 = v16 + 1;
    memcpy(0, v10, v11);
    __p = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v25 = v6;
    v8 = v7 + 1;
    v9 = __p;
  }

  if (v9 == v8)
  {
LABEL_20:
    v22 = 1;
    if (v9)
    {
      goto LABEL_21;
    }

    return v22;
  }

  v17 = 0;
  v19 = *a3;
  v18 = *(a3 + 8);
  v20 = v9;
  while (1)
  {
    v21 = *v20;
    if (!sub_262395464(v19, v18, *v20))
    {
      break;
    }

    if (v17)
    {
      goto LABEL_23;
    }

    v17 = 1;
LABEL_19:
    if (++v20 == v8)
    {
      goto LABEL_20;
    }
  }

  if (sub_2623966FC(v19, v18, v21))
  {
    goto LABEL_19;
  }

LABEL_23:
  v22 = 0;
  if (!v9)
  {
    return v22;
  }

LABEL_21:
  operator delete(v9);
  return v22;
}

void sub_2623A3C58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2623A3C7C(void *a1, float32x4_t *a2, double a3)
{
  LODWORD(a3) = a2[2].i32[1];
  sub_262267420(v12, (roundf(a2[2].f32[2] - *&a3) / 5.0), a3, a2[2].f32[2]);
  v5 = v14;
  v6 = v12[1];
  a1[1] = 0;
  a1[2] = 0;
  for (*a1 = 0; v6; --v6)
  {
    v7 = a2[2].f32[0];
    v8 = __sincosf_stret((*v5 / 180.0) * 3.1416);
    *&v9 = v7 * v8.__cosval;
    *(&v9 + 1) = v7 * v8.__sinval;
    v10 = a2[1];
    v10.i32[2] = 0;
    v11 = vaddq_f32(v10, v9);
    sub_2621D9F60(a1, &v11);
    ++v5;
  }

  sub_2621D9F60(a1, a2[1].f32);
  v12[0] = &unk_2874EF6A8;
  if (v13)
  {
    sub_2621D1B78(v13);
  }
}

void sub_2623A3D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  v30 = *v28;
  if (*v28)
  {
    *(v28 + 8) = v30;
    operator delete(v30);
  }

  if (a28)
  {
    sub_2621D1B78(a28);
  }

  _Unwind_Resume(exception_object);
}

float sub_2623A3DE4(float32x4_t a1, double a2, float32x4_t a3)
{
  v3 = vsubq_f32(a3, a1);
  v4 = vmulq_f32(v3, v3);
  v4.f32[0] = sqrtf(v4.f32[2] + vaddv_f32(*v4.f32));
  if (v4.f32[0] < 0.000001)
  {
    v4.f32[0] = 0.000001;
  }

  v5 = vdivq_f32(v3, vdupq_lane_s32(*v4.f32, 0));
  v6 = vdivq_f32(vsubq_f32(vmlaq_f32(vmlaq_n_f32(a1, v5, *&a2), 0, v5), a1), vdupq_lane_s32(*&a2, 0)).u64[0];
  if (fabsf(*&v6) < 0.000001)
  {
    LODWORD(v6) = dword_2623A8318[*&v6 < 0.0];
  }

  result = (atan2f(*(&v6 + 1), *&v6) * 180.0) / 3.1416;
  if (result < 0.0)
  {
    return result + 360.0;
  }

  return result;
}

BOOL sub_2623A3EA4(float32x4_t *a1, float32x4_t a2, double a3)
{
  v3 = *&a3;
  *&v17[4] = *MEMORY[0x277D85DE8];
  LODWORD(a3) = a1[2].i32[0];
  v5 = sub_2623A3DE4(a1[1], a3, a2);
  v15 = 0xFFFFFFFFLL;
  v16 = 1;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  sub_2621DD5D0(&v12, &v15, v17, 3uLL);
  if (v12 == v13)
  {
    v9 = 0;
    if (!v12)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = 0;
  v7 = v12;
  do
  {
    v8 = v5 + (360 * *v7);
    if ((a1[2].f32[1] - v3) <= v8 && (a1[2].f32[2] + v3) > v8)
    {
      ++v6;
    }

    ++v7;
  }

  while (v7 != v13);
  v9 = v6 > 0;
  if (v12)
  {
LABEL_8:
    operator delete(v12);
  }

LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7918]();
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

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2822043A0](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
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