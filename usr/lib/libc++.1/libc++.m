char *std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,char *,true>(char *result, char *a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v7 = v6;
LABEL_3:
  v8 = 1 - a3;
  while (1)
  {
    v6 = v7;
    v9 = v8;
    v10 = a2 - v7;
    if (a2 - v7 > 2)
    {
      switch(v10)
      {
        case 3:
          v59 = v7[1];
          v60 = *(a2 - 1);
          if (v59 >= v60)
          {
            v61 = *(a2 - 1);
          }

          else
          {
            v61 = v7[1];
          }

          if (v59 <= v60)
          {
            LOBYTE(v59) = *(a2 - 1);
          }

          *(a2 - 1) = v59;
          v7[1] = v61;
          v62 = *(a2 - 1);
          v63 = *v7;
          if (v62 >= v63)
          {
            v64 = *v7;
          }

          else
          {
            v64 = *(a2 - 1);
          }

          if (v62 <= v63)
          {
            LOBYTE(v62) = *v7;
          }

          *(a2 - 1) = v62;
          v65 = v7[1];
          v66 = *v7;
          if (v64 >= v65)
          {
            v66 = v7[1];
          }

          *v7 = v66;
          if (v64 > v65)
          {
            LOBYTE(v65) = v64;
          }

          v7[1] = v65;
          return result;
        case 4:
          v91 = *v7;
          v92 = v7[2];
          if (v91 >= v92)
          {
            v93 = v7[2];
          }

          else
          {
            v93 = *v7;
          }

          if (v91 <= v92)
          {
            LOBYTE(v91) = v7[2];
          }

          v7[2] = v91;
          *v7 = v93;
          v94 = v7[1];
          v95 = *(a2 - 1);
          if (v94 >= v95)
          {
            v96 = *(a2 - 1);
          }

          else
          {
            v96 = v7[1];
          }

          if (v94 <= v95)
          {
            LOBYTE(v94) = *(a2 - 1);
          }

          *(a2 - 1) = v94;
          v97 = *v7;
          if (v97 >= v96)
          {
            v98 = v96;
          }

          else
          {
            v98 = *v7;
          }

          if (v97 <= v96)
          {
            LOBYTE(v97) = v96;
          }

          v7[1] = v97;
          *v7 = v98;
          v99 = v7[2];
          v100 = *(a2 - 1);
          if (v99 >= v100)
          {
            v101 = *(a2 - 1);
          }

          else
          {
            v101 = v7[2];
          }

          if (v99 <= v100)
          {
            LOBYTE(v99) = *(a2 - 1);
          }

          *(a2 - 1) = v99;
          v102 = v7[1];
          if (v102 >= v101)
          {
            v103 = v101;
          }

          else
          {
            v103 = v7[1];
          }

          if (v102 <= v101)
          {
            LOBYTE(v102) = v101;
          }

          v7[2] = v102;
          v7[1] = v103;
          return result;
        case 5:
          v67 = *v7;
          v68 = v7[1];
          if (v67 >= v68)
          {
            v69 = v7[1];
          }

          else
          {
            v69 = *v7;
          }

          if (v67 <= v68)
          {
            LOBYTE(v67) = v7[1];
          }

          v7[1] = v67;
          *v7 = v69;
          v70 = v7[3];
          v71 = *(a2 - 1);
          if (v70 >= v71)
          {
            v72 = *(a2 - 1);
          }

          else
          {
            v72 = v7[3];
          }

          if (v70 <= v71)
          {
            LOBYTE(v70) = *(a2 - 1);
          }

          *(a2 - 1) = v70;
          v7[3] = v72;
          v73 = *(a2 - 1);
          v74 = v7[2];
          if (v73 >= v74)
          {
            v75 = v7[2];
          }

          else
          {
            v75 = *(a2 - 1);
          }

          if (v73 <= v74)
          {
            LOBYTE(v73) = v7[2];
          }

          *(a2 - 1) = v73;
          v76 = v7[3];
          v77 = v7[2];
          if (v75 >= v76)
          {
            v77 = v7[3];
          }

          v7[2] = v77;
          if (v75 > v76)
          {
            LOBYTE(v76) = v75;
          }

          v7[3] = v76;
          v78 = v7[1];
          v79 = *(a2 - 1);
          if (v78 >= v79)
          {
            v80 = *(a2 - 1);
          }

          else
          {
            v80 = v7[1];
          }

          if (v78 <= v79)
          {
            LOBYTE(v78) = *(a2 - 1);
          }

          *(a2 - 1) = v78;
          v81 = v7[3];
          v82 = *v7;
          if (v81 >= v82)
          {
            v83 = *v7;
          }

          else
          {
            v83 = v7[3];
          }

          if (v81 <= v82)
          {
            v81 = *v7;
          }

          v84 = v7[2];
          if (v83 >= v84)
          {
            LOBYTE(v82) = v7[2];
          }

          *v7 = v82;
          if (v83 <= v84)
          {
            v85 = v84;
          }

          else
          {
            v85 = v83;
          }

          if (v81 >= v80)
          {
            v86 = v80;
          }

          else
          {
            v86 = v81;
          }

          if (v81 <= v80)
          {
            LOBYTE(v81) = v80;
          }

          v7[3] = v81;
          if (v86 >= v85)
          {
            v87 = v85;
          }

          else
          {
            v87 = v80;
          }

          v7[1] = v87;
          if (v86 <= v85)
          {
            v88 = v85;
          }

          else
          {
            v88 = v86;
          }

          v7[2] = v88;
          return result;
      }
    }

    else
    {
      if ((a2 - v7) < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v89 = *(a2 - 1);
        v90 = *v7;
        if (v89 < v90)
        {
          *v7 = v89;
          *(a2 - 1) = v90;
        }

        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (v9 == 1)
    {
      if (v7 != a2)
      {
        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,char *,char *>(v7, a2, a2, &v115);
      }

      return result;
    }

    v11 = v10 >> 1;
    v12 = *(a2 - 1);
    if (v10 < 0x81)
    {
      v47 = *v7;
      v48 = v47 <= v12;
      if (v47 >= v12)
      {
        v49 = *(a2 - 1);
      }

      else
      {
        v49 = *v7;
      }

      if (v48)
      {
        LOBYTE(v47) = *(a2 - 1);
      }

      *(a2 - 1) = v47;
      *v7 = v49;
      v50 = *(a2 - 1);
      v51 = v7[v11];
      if (v50 >= v51)
      {
        v52 = v7[v11];
      }

      else
      {
        v52 = *(a2 - 1);
      }

      if (v50 <= v51)
      {
        LOBYTE(v50) = v7[v11];
      }

      *(a2 - 1) = v50;
      v53 = *v7;
      v54 = v52 < v53;
      if (v52 < v53)
      {
        LOBYTE(v53) = v7[v11];
      }

      v7[v11] = v53;
      v55 = *v7;
      if (!v54)
      {
        v55 = v52;
      }

      *v7 = v55;
      if (a4)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v13 = &v7[v11];
      v14 = v7[v11];
      v15 = v14 <= v12;
      if (v14 >= v12)
      {
        v16 = *(a2 - 1);
      }

      else
      {
        v16 = v14;
      }

      if (v15)
      {
        LOBYTE(v14) = *(a2 - 1);
      }

      *(a2 - 1) = v14;
      *v13 = v16;
      v17 = *(a2 - 1);
      v18 = *v7;
      if (v17 >= v18)
      {
        v19 = *v7;
      }

      else
      {
        v19 = *(a2 - 1);
      }

      if (v17 <= v18)
      {
        LOBYTE(v17) = *v7;
      }

      *(a2 - 1) = v17;
      v20 = *v13;
      v21 = v19 < v20;
      if (v19 < v20)
      {
        LOBYTE(v20) = *v7;
      }

      *v7 = v20;
      v22 = *v13;
      if (!v21)
      {
        v22 = v19;
      }

      *v13 = v22;
      v23 = *(v13 - 1);
      v24 = *(a2 - 2);
      if (v23 >= v24)
      {
        v25 = *(a2 - 2);
      }

      else
      {
        v25 = *(v13 - 1);
      }

      if (v23 <= v24)
      {
        LOBYTE(v23) = *(a2 - 2);
      }

      *(a2 - 2) = v23;
      *(v13 - 1) = v25;
      v26 = *(a2 - 2);
      v27 = v7[1];
      if (v26 >= v27)
      {
        v28 = v7[1];
      }

      else
      {
        v28 = *(a2 - 2);
      }

      if (v26 <= v27)
      {
        LOBYTE(v26) = v7[1];
      }

      *(a2 - 2) = v26;
      v29 = *(v13 - 1);
      v30 = v28 < v29;
      if (v28 < v29)
      {
        LOBYTE(v29) = v7[1];
      }

      v7[1] = v29;
      v31 = *(v13 - 1);
      if (!v30)
      {
        v31 = v28;
      }

      *(v13 - 1) = v31;
      v32 = v13[1];
      v33 = *(a2 - 3);
      if (v32 >= v33)
      {
        v34 = *(a2 - 3);
      }

      else
      {
        v34 = v13[1];
      }

      if (v32 <= v33)
      {
        LOBYTE(v32) = *(a2 - 3);
      }

      *(a2 - 3) = v32;
      v13[1] = v34;
      v35 = *(a2 - 3);
      v36 = v7[2];
      if (v35 >= v36)
      {
        v37 = v7[2];
      }

      else
      {
        v37 = *(a2 - 3);
      }

      if (v35 <= v36)
      {
        LOBYTE(v35) = v7[2];
      }

      *(a2 - 3) = v35;
      v38 = v13[1];
      v39 = v37 < v38;
      if (v37 < v38)
      {
        LOBYTE(v38) = v7[2];
      }

      v7[2] = v38;
      LOBYTE(v38) = v13[1];
      if (!v39)
      {
        LOBYTE(v38) = v37;
      }

      v40 = v38;
      v41 = *v13;
      v42 = v41 <= v38;
      if (v41 >= v38)
      {
        v38 = v38;
      }

      else
      {
        v38 = *v13;
      }

      if (!v42)
      {
        v40 = *v13;
      }

      v43 = *(v13 - 1);
      if (v40 >= v43)
      {
        v44 = *(v13 - 1);
      }

      else
      {
        v44 = v40;
      }

      if (v40 <= v43)
      {
        LOBYTE(v40) = *(v13 - 1);
      }

      v13[1] = v40;
      if (v43 >= v38)
      {
        v45 = v38;
      }

      else
      {
        v45 = v43;
      }

      *(v13 - 1) = v45;
      if (v43 >= v38)
      {
        LOBYTE(v38) = v44;
      }

      *v13 = v38;
      v46 = *v7;
      *v7 = v38;
      *v13 = v46;
      if (a4)
      {
        goto LABEL_91;
      }
    }

    if (*(v7 - 1) >= *v7)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,char *,std::ranges::less &>(v7, a2);
      v7 = result;
      goto LABEL_96;
    }

LABEL_91:
    v56 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,char *,std::ranges::less>(v7, a2);
    if ((v57 & 1) == 0)
    {
      goto LABEL_94;
    }

    v58 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,char *>(v7, v56);
    v7 = v56 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,char *>(v56 + 1, a2);
    if (result)
    {
      a3 = -v9;
      a2 = v56;
      if (v58)
      {
        return result;
      }

      goto LABEL_2;
    }

    v8 = v9 + 1;
    if (!v58)
    {
LABEL_94:
      result = std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,char *,true>(v6, v56, -v9, a4 & 1);
      v7 = v56 + 1;
LABEL_96:
      a4 = 0;
      a3 = -v9;
      goto LABEL_3;
    }
  }

  v104 = v7 + 1;
  v106 = v7 == a2 || v104 == a2;
  if (a4)
  {
    if (!v106)
    {
      v107 = 0;
      v108 = v7;
      do
      {
        v109 = v108[1];
        v110 = *v108;
        v108 = v104;
        if (v109 < v110)
        {
          v111 = v107;
          while (1)
          {
            v7[v111 + 1] = v110;
            if (!v111)
            {
              break;
            }

            v110 = v7[--v111];
            if (v109 >= v110)
            {
              v112 = &v7[v111 + 1];
              goto LABEL_203;
            }
          }

          v112 = v7;
LABEL_203:
          *v112 = v109;
        }

        v104 = v108 + 1;
        ++v107;
      }

      while (v108 + 1 != a2);
    }
  }

  else if (!v106)
  {
    do
    {
      v113 = v6[1];
      v114 = *v6;
      v6 = v104;
      if (v113 < v114)
      {
        do
        {
          *v104 = v114;
          v114 = *(v104 - 2);
          --v104;
        }

        while (v113 < v114);
        *v104 = v113;
      }

      v104 = v6 + 1;
    }

    while (v6 + 1 != a2);
  }

  return result;
}

int *std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,wchar_t *,true>(int *result, int *a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v7 = v6;
LABEL_3:
  v8 = 1 - a3;
  while (1)
  {
    v6 = v7;
    v9 = v8;
    v10 = a2 - v7;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v57 = v7[1];
          v58 = *(a2 - 1);
          if (v57 >= v58)
          {
            v59 = *(a2 - 1);
          }

          else
          {
            v59 = v7[1];
          }

          if (v57 <= v58)
          {
            v57 = *(a2 - 1);
          }

          *(a2 - 1) = v57;
          v7[1] = v59;
          v60 = *(a2 - 1);
          if (v60 >= *v7)
          {
            v61 = *v7;
          }

          else
          {
            v61 = *(a2 - 1);
          }

          if (v60 <= *v7)
          {
            v60 = *v7;
          }

          *(a2 - 1) = v60;
          v63 = *v7;
          v62 = v7[1];
          if (v61 >= v62)
          {
            v63 = v7[1];
          }

          if (v61 > v62)
          {
            v62 = v61;
          }

          *v7 = v63;
          v7[1] = v62;
          return result;
        case 4:
          v87 = v7[1];
          v86 = v7[2];
          if (*v7 >= v86)
          {
            v88 = v7[2];
          }

          else
          {
            v88 = *v7;
          }

          if (*v7 > v86)
          {
            v86 = *v7;
          }

          v7[2] = v86;
          *v7 = v88;
          v89 = *(a2 - 1);
          if (v87 >= v89)
          {
            v90 = *(a2 - 1);
          }

          else
          {
            v90 = v87;
          }

          if (v87 > v89)
          {
            v89 = v87;
          }

          *(a2 - 1) = v89;
          v91 = *v7;
          if (*v7 >= v90)
          {
            v92 = v90;
          }

          else
          {
            v92 = *v7;
          }

          if (v91 <= v90)
          {
            v91 = v90;
          }

          *v7 = v92;
          v7[1] = v91;
          v93 = v7[2];
          v94 = *(a2 - 1);
          if (v93 >= v94)
          {
            v95 = *(a2 - 1);
          }

          else
          {
            v95 = v7[2];
          }

          if (v93 <= v94)
          {
            v93 = *(a2 - 1);
          }

          *(a2 - 1) = v93;
          v96 = v7[1];
          if (v96 >= v95)
          {
            v97 = v95;
          }

          else
          {
            v97 = v7[1];
          }

          if (v96 <= v95)
          {
            v96 = v95;
          }

          v7[1] = v97;
          v7[2] = v96;
          return result;
        case 5:
          v64 = *v7;
          v65 = v7[1];
          if (*v7 >= v65)
          {
            v66 = v7[1];
          }

          else
          {
            v66 = *v7;
          }

          if (v64 <= v65)
          {
            v64 = v7[1];
          }

          *v7 = v66;
          v7[1] = v64;
          v67 = v7[3];
          v68 = *(a2 - 1);
          if (v67 >= v68)
          {
            v69 = *(a2 - 1);
          }

          else
          {
            v69 = v7[3];
          }

          if (v67 <= v68)
          {
            v67 = *(a2 - 1);
          }

          *(a2 - 1) = v67;
          v7[3] = v69;
          v70 = *(a2 - 1);
          v71 = v7[2];
          if (v70 >= v71)
          {
            v72 = v7[2];
          }

          else
          {
            v72 = *(a2 - 1);
          }

          if (v70 <= v71)
          {
            v70 = v7[2];
          }

          *(a2 - 1) = v70;
          v74 = v7[2];
          v73 = v7[3];
          v75 = v7[1];
          if (v72 >= v73)
          {
            v74 = v7[3];
          }

          if (v72 > v73)
          {
            v73 = v72;
          }

          v7[2] = v74;
          v7[3] = v73;
          v76 = *(a2 - 1);
          if (v75 >= v76)
          {
            v77 = *(a2 - 1);
          }

          else
          {
            v77 = v75;
          }

          if (v75 > v76)
          {
            v76 = v75;
          }

          *(a2 - 1) = v76;
          v78 = *v7;
          v80 = v7[2];
          v79 = v7[3];
          if (v79 >= *v7)
          {
            v81 = *v7;
          }

          else
          {
            v81 = v7[3];
          }

          if (v79 <= v78)
          {
            v79 = *v7;
          }

          if (v81 >= v80)
          {
            v78 = v7[2];
          }

          if (v81 > v80)
          {
            v80 = v81;
          }

          if (v79 >= v77)
          {
            v82 = v77;
          }

          else
          {
            v82 = v79;
          }

          if (v79 <= v77)
          {
            v79 = v77;
          }

          if (v82 >= v80)
          {
            v77 = v80;
          }

          *v7 = v78;
          v7[1] = v77;
          if (v82 <= v80)
          {
            v83 = v80;
          }

          else
          {
            v83 = v82;
          }

          v7[2] = v83;
          v7[3] = v79;
          return result;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v84 = *(a2 - 1);
        v85 = *v7;
        if (v84 < *v7)
        {
          *v7 = v84;
          *(a2 - 1) = v85;
        }

        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (v9 == 1)
    {
      if (v7 != a2)
      {
        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,wchar_t *,wchar_t *>(v7, a2, a2, &v109);
      }

      return result;
    }

    v11 = v10 >> 1;
    v12 = *(a2 - 1);
    if (v10 < 0x81)
    {
      v46 = *v7;
      if (*v7 >= v12)
      {
        v47 = *(a2 - 1);
      }

      else
      {
        v47 = *v7;
      }

      if (v46 <= v12)
      {
        v46 = *(a2 - 1);
      }

      *(a2 - 1) = v46;
      *v7 = v47;
      v48 = *(a2 - 1);
      v49 = v7[v11];
      if (v48 >= v49)
      {
        v50 = v7[v11];
      }

      else
      {
        v50 = *(a2 - 1);
      }

      if (v48 <= v49)
      {
        v48 = v7[v11];
      }

      *(a2 - 1) = v48;
      v51 = *v7;
      v52 = v50 < *v7;
      if (v50 < *v7)
      {
        v51 = v7[v11];
      }

      v7[v11] = v51;
      v53 = *v7;
      if (!v52)
      {
        v53 = v50;
      }

      *v7 = v53;
      if (a4)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v13 = &v7[v11];
      v14 = *v13;
      if (*v13 >= v12)
      {
        v15 = *(a2 - 1);
      }

      else
      {
        v15 = *v13;
      }

      if (v14 <= v12)
      {
        v14 = *(a2 - 1);
      }

      *(a2 - 1) = v14;
      *v13 = v15;
      v16 = *(a2 - 1);
      if (v16 >= *v7)
      {
        v17 = *v7;
      }

      else
      {
        v17 = *(a2 - 1);
      }

      if (v16 <= *v7)
      {
        v16 = *v7;
      }

      *(a2 - 1) = v16;
      v18 = *v13;
      v19 = v17 < *v13;
      if (v17 < *v13)
      {
        v18 = *v7;
      }

      *v7 = v18;
      v20 = *v13;
      if (!v19)
      {
        v20 = v17;
      }

      *v13 = v20;
      v21 = *(v13 - 1);
      v22 = *(a2 - 2);
      if (v21 >= v22)
      {
        v23 = *(a2 - 2);
      }

      else
      {
        v23 = *(v13 - 1);
      }

      if (v21 <= v22)
      {
        v21 = *(a2 - 2);
      }

      *(a2 - 2) = v21;
      *(v13 - 1) = v23;
      v24 = *(a2 - 2);
      v25 = v7[1];
      if (v24 >= v25)
      {
        v26 = v7[1];
      }

      else
      {
        v26 = *(a2 - 2);
      }

      if (v24 <= v25)
      {
        v24 = v7[1];
      }

      *(a2 - 2) = v24;
      v27 = *(v13 - 1);
      v28 = v26 < v27;
      if (v26 < v27)
      {
        v27 = v7[1];
      }

      v7[1] = v27;
      v29 = *(v13 - 1);
      if (!v28)
      {
        v29 = v26;
      }

      *(v13 - 1) = v29;
      v30 = v13[1];
      v31 = *(a2 - 3);
      if (v30 >= v31)
      {
        v32 = *(a2 - 3);
      }

      else
      {
        v32 = v13[1];
      }

      if (v30 <= v31)
      {
        v30 = *(a2 - 3);
      }

      *(a2 - 3) = v30;
      v13[1] = v32;
      v33 = *(a2 - 3);
      v34 = v7[2];
      if (v33 >= v34)
      {
        v35 = v7[2];
      }

      else
      {
        v35 = *(a2 - 3);
      }

      if (v33 <= v34)
      {
        v33 = v7[2];
      }

      *(a2 - 3) = v33;
      v36 = v13[1];
      v37 = v35 < v36;
      if (v35 < v36)
      {
        v36 = v7[2];
      }

      v7[2] = v36;
      v39 = *v13;
      v38 = v13[1];
      if (!v37)
      {
        v38 = v35;
      }

      if (v39 >= v38)
      {
        v40 = v38;
      }

      else
      {
        v40 = *v13;
      }

      if (v39 > v38)
      {
        v38 = *v13;
      }

      v41 = *(v13 - 1);
      if (v38 >= v41)
      {
        v42 = *(v13 - 1);
      }

      else
      {
        v42 = v38;
      }

      if (v38 <= v41)
      {
        v38 = *(v13 - 1);
      }

      v13[1] = v38;
      if (v41 >= v40)
      {
        v43 = v40;
      }

      else
      {
        v43 = v41;
      }

      if (v41 >= v40)
      {
        v44 = v42;
      }

      else
      {
        v44 = v40;
      }

      *(v13 - 1) = v43;
      *v13 = v44;
      v45 = *v7;
      *v7 = v44;
      *v13 = v45;
      if (a4)
      {
        goto LABEL_90;
      }
    }

    if (*(v7 - 1) >= *v7)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,wchar_t *,std::ranges::less &>(v7, a2);
      v7 = result;
      goto LABEL_95;
    }

LABEL_90:
    v54 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,wchar_t *,std::ranges::less>(v7, a2);
    if ((v55 & 1) == 0)
    {
      goto LABEL_93;
    }

    v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,wchar_t *>(v7, v54);
    v7 = v54 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,wchar_t *>(v54 + 1, a2);
    if (result)
    {
      a3 = -v9;
      a2 = v54;
      if (v56)
      {
        return result;
      }

      goto LABEL_2;
    }

    v8 = v9 + 1;
    if (!v56)
    {
LABEL_93:
      result = std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,wchar_t *,true>(v6, v54, -v9, a4 & 1);
      v7 = v54 + 1;
LABEL_95:
      a4 = 0;
      a3 = -v9;
      goto LABEL_3;
    }
  }

  v98 = v7 + 1;
  v100 = v7 == a2 || v98 == a2;
  if (a4)
  {
    if (!v100)
    {
      v101 = 0;
      v102 = v7;
      do
      {
        v104 = *v102;
        v103 = v102[1];
        v102 = v98;
        if (v103 < v104)
        {
          v105 = v101;
          while (1)
          {
            *(v7 + v105 + 4) = v104;
            if (!v105)
            {
              break;
            }

            v104 = *(v7 + v105 - 4);
            v105 -= 4;
            if (v103 >= v104)
            {
              v106 = (v7 + v105 + 4);
              goto LABEL_200;
            }
          }

          v106 = v7;
LABEL_200:
          *v106 = v103;
        }

        v98 = v102 + 1;
        v101 += 4;
      }

      while (v102 + 1 != a2);
    }
  }

  else if (!v100)
  {
    do
    {
      v108 = *v6;
      v107 = v6[1];
      v6 = v98;
      if (v107 < v108)
      {
        do
        {
          *v98 = v108;
          v108 = *(v98 - 2);
          --v98;
        }

        while (v107 < v108);
        *v98 = v107;
      }

      v98 = v6 + 1;
    }

    while (v6 + 1 != a2);
  }

  return result;
}

unsigned __int8 *std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,unsigned char *,true>(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v7 = v6;
LABEL_3:
  v8 = 1 - a3;
  while (1)
  {
    v6 = v7;
    v9 = v8;
    v10 = a2 - v7;
    if (a2 - v7 > 2)
    {
      switch(v10)
      {
        case 3:
          v57 = v7[1];
          v58 = *(a2 - 1);
          if (v57 >= v58)
          {
            v59 = *(a2 - 1);
          }

          else
          {
            v59 = v7[1];
          }

          if (v57 <= v58)
          {
            LOBYTE(v57) = *(a2 - 1);
          }

          *(a2 - 1) = v57;
          v7[1] = v59;
          v60 = *(a2 - 1);
          v61 = *v7;
          if (v60 >= v61)
          {
            v62 = *v7;
          }

          else
          {
            v62 = *(a2 - 1);
          }

          if (v60 <= v61)
          {
            LOBYTE(v60) = *v7;
          }

          *(a2 - 1) = v60;
          v63 = v7[1];
          v64 = *v7;
          if (v62 >= v63)
          {
            v64 = v7[1];
          }

          *v7 = v64;
          if (v62 > v63)
          {
            LOBYTE(v63) = v62;
          }

          v7[1] = v63;
          return result;
        case 4:
          v89 = *v7;
          v90 = v7[2];
          if (v89 >= v90)
          {
            v91 = v7[2];
          }

          else
          {
            v91 = *v7;
          }

          if (v89 <= v90)
          {
            LOBYTE(v89) = v7[2];
          }

          v7[2] = v89;
          *v7 = v91;
          v92 = v7[1];
          v93 = *(a2 - 1);
          if (v92 >= v93)
          {
            v94 = *(a2 - 1);
          }

          else
          {
            v94 = v7[1];
          }

          if (v92 <= v93)
          {
            LOBYTE(v92) = *(a2 - 1);
          }

          *(a2 - 1) = v92;
          v95 = *v7;
          if (v95 >= v94)
          {
            v96 = v94;
          }

          else
          {
            v96 = *v7;
          }

          if (v95 <= v94)
          {
            LOBYTE(v95) = v94;
          }

          v7[1] = v95;
          *v7 = v96;
          v97 = v7[2];
          v98 = *(a2 - 1);
          if (v97 >= v98)
          {
            v99 = *(a2 - 1);
          }

          else
          {
            v99 = v7[2];
          }

          if (v97 <= v98)
          {
            LOBYTE(v97) = *(a2 - 1);
          }

          *(a2 - 1) = v97;
          v100 = v7[1];
          if (v100 >= v99)
          {
            v101 = v99;
          }

          else
          {
            v101 = v7[1];
          }

          if (v100 <= v99)
          {
            LOBYTE(v100) = v99;
          }

          v7[2] = v100;
          v7[1] = v101;
          return result;
        case 5:
          v65 = *v7;
          v66 = v7[1];
          if (v65 >= v66)
          {
            v67 = v7[1];
          }

          else
          {
            v67 = *v7;
          }

          if (v65 <= v66)
          {
            LOBYTE(v65) = v7[1];
          }

          v7[1] = v65;
          *v7 = v67;
          v68 = v7[3];
          v69 = *(a2 - 1);
          if (v68 >= v69)
          {
            v70 = *(a2 - 1);
          }

          else
          {
            v70 = v7[3];
          }

          if (v68 <= v69)
          {
            LOBYTE(v68) = *(a2 - 1);
          }

          *(a2 - 1) = v68;
          v7[3] = v70;
          v71 = *(a2 - 1);
          v72 = v7[2];
          if (v71 >= v72)
          {
            v73 = v7[2];
          }

          else
          {
            v73 = *(a2 - 1);
          }

          if (v71 <= v72)
          {
            LOBYTE(v71) = v7[2];
          }

          *(a2 - 1) = v71;
          v74 = v7[3];
          v75 = v7[2];
          if (v73 >= v74)
          {
            v75 = v7[3];
          }

          v7[2] = v75;
          if (v73 > v74)
          {
            LOBYTE(v74) = v73;
          }

          v7[3] = v74;
          v76 = v7[1];
          v77 = *(a2 - 1);
          if (v76 >= v77)
          {
            v78 = *(a2 - 1);
          }

          else
          {
            v78 = v7[1];
          }

          if (v76 <= v77)
          {
            LOBYTE(v76) = *(a2 - 1);
          }

          *(a2 - 1) = v76;
          v79 = v7[3];
          v80 = *v7;
          if (v79 >= v80)
          {
            v81 = *v7;
          }

          else
          {
            v81 = v7[3];
          }

          if (v79 <= v80)
          {
            v79 = *v7;
          }

          v82 = v7[2];
          if (v81 >= v82)
          {
            LOBYTE(v80) = v7[2];
          }

          *v7 = v80;
          if (v81 <= v82)
          {
            v83 = v82;
          }

          else
          {
            v83 = v81;
          }

          if (v79 >= v78)
          {
            v84 = v78;
          }

          else
          {
            v84 = v79;
          }

          if (v79 <= v78)
          {
            LOBYTE(v79) = v78;
          }

          v7[3] = v79;
          if (v84 >= v83)
          {
            v85 = v83;
          }

          else
          {
            v85 = v78;
          }

          v7[1] = v85;
          if (v84 <= v83)
          {
            v86 = v83;
          }

          else
          {
            v86 = v84;
          }

          v7[2] = v86;
          return result;
      }
    }

    else
    {
      if ((a2 - v7) < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v87 = *(a2 - 1);
        v88 = *v7;
        if (v87 < v88)
        {
          *v7 = v87;
          *(a2 - 1) = v88;
        }

        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (v9 == 1)
    {
      if (v7 != a2)
      {
        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,unsigned char *,unsigned char *>(v7, a2, a2, &v113);
      }

      return result;
    }

    v11 = v10 >> 1;
    v12 = *(a2 - 1);
    if (v10 < 0x81)
    {
      v46 = *v7;
      if (v46 >= v12)
      {
        v47 = *(a2 - 1);
      }

      else
      {
        v47 = *v7;
      }

      if (v46 <= v12)
      {
        LOBYTE(v46) = *(a2 - 1);
      }

      *(a2 - 1) = v46;
      *v7 = v47;
      v48 = *(a2 - 1);
      v49 = v7[v11];
      if (v48 >= v49)
      {
        v50 = v7[v11];
      }

      else
      {
        v50 = *(a2 - 1);
      }

      if (v48 <= v49)
      {
        LOBYTE(v48) = v7[v11];
      }

      *(a2 - 1) = v48;
      v51 = *v7;
      v52 = v50 >= v51;
      if (v50 < v51)
      {
        LOBYTE(v51) = v7[v11];
      }

      v7[v11] = v51;
      v53 = *v7;
      if (v52)
      {
        v53 = v50;
      }

      *v7 = v53;
      if (a4)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v13 = &v7[v11];
      v14 = v7[v11];
      if (v14 >= v12)
      {
        v15 = *(a2 - 1);
      }

      else
      {
        v15 = v14;
      }

      if (v14 <= v12)
      {
        LOBYTE(v14) = *(a2 - 1);
      }

      *(a2 - 1) = v14;
      *v13 = v15;
      v16 = *(a2 - 1);
      v17 = *v7;
      if (v16 >= v17)
      {
        v18 = *v7;
      }

      else
      {
        v18 = *(a2 - 1);
      }

      if (v16 <= v17)
      {
        LOBYTE(v16) = *v7;
      }

      *(a2 - 1) = v16;
      v19 = *v13;
      v20 = v18 >= v19;
      if (v18 < v19)
      {
        LOBYTE(v19) = *v7;
      }

      *v7 = v19;
      v21 = *v13;
      if (v20)
      {
        v21 = v18;
      }

      *v13 = v21;
      v22 = *(v13 - 1);
      v23 = *(a2 - 2);
      if (v22 >= v23)
      {
        v24 = *(a2 - 2);
      }

      else
      {
        v24 = *(v13 - 1);
      }

      if (v22 <= v23)
      {
        LOBYTE(v22) = *(a2 - 2);
      }

      *(a2 - 2) = v22;
      *(v13 - 1) = v24;
      v25 = *(a2 - 2);
      v26 = v7[1];
      if (v25 >= v26)
      {
        v27 = v7[1];
      }

      else
      {
        v27 = *(a2 - 2);
      }

      if (v25 <= v26)
      {
        LOBYTE(v25) = v7[1];
      }

      *(a2 - 2) = v25;
      v28 = *(v13 - 1);
      v29 = v27 >= v28;
      if (v27 < v28)
      {
        LOBYTE(v28) = v7[1];
      }

      v7[1] = v28;
      v30 = *(v13 - 1);
      if (v29)
      {
        v30 = v27;
      }

      *(v13 - 1) = v30;
      v31 = v13[1];
      v32 = *(a2 - 3);
      if (v31 >= v32)
      {
        v33 = *(a2 - 3);
      }

      else
      {
        v33 = v13[1];
      }

      if (v31 <= v32)
      {
        LOBYTE(v31) = *(a2 - 3);
      }

      *(a2 - 3) = v31;
      v13[1] = v33;
      v34 = *(a2 - 3);
      v35 = v7[2];
      if (v34 >= v35)
      {
        v36 = v7[2];
      }

      else
      {
        v36 = *(a2 - 3);
      }

      if (v34 <= v35)
      {
        LOBYTE(v34) = v7[2];
      }

      *(a2 - 3) = v34;
      v37 = v13[1];
      v38 = v36 >= v37;
      if (v36 < v37)
      {
        LOBYTE(v37) = v7[2];
      }

      v7[2] = v37;
      LOBYTE(v37) = v13[1];
      if (v38)
      {
        LOBYTE(v37) = v36;
      }

      v39 = v37;
      v40 = *v13;
      v41 = v40 > v37;
      if (v40 >= v37)
      {
        v37 = v37;
      }

      else
      {
        v37 = *v13;
      }

      if (v41)
      {
        v39 = *v13;
      }

      v42 = *(v13 - 1);
      if (v39 >= v42)
      {
        v43 = *(v13 - 1);
      }

      else
      {
        v43 = v39;
      }

      if (v39 <= v42)
      {
        LOBYTE(v39) = *(v13 - 1);
      }

      v13[1] = v39;
      if (v42 >= v37)
      {
        v44 = v37;
      }

      else
      {
        v44 = v42;
      }

      *(v13 - 1) = v44;
      if (v42 >= v37)
      {
        LOBYTE(v37) = v43;
      }

      *v13 = v37;
      v45 = *v7;
      *v7 = v37;
      *v13 = v45;
      if (a4)
      {
        goto LABEL_93;
      }
    }

    if (*(v7 - 1) >= *v7)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned char *,std::ranges::less &>(v7, a2);
      v7 = result;
      goto LABEL_98;
    }

LABEL_93:
    v54 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,unsigned char *,std::ranges::less>(v7, a2);
    if ((v55 & 1) == 0)
    {
      goto LABEL_96;
    }

    v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,unsigned char *>(v7, v54);
    v7 = v54 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,unsigned char *>(v54 + 1, a2);
    if (result)
    {
      a3 = -v9;
      a2 = v54;
      if (v56)
      {
        return result;
      }

      goto LABEL_2;
    }

    v8 = v9 + 1;
    if (!v56)
    {
LABEL_96:
      result = std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,unsigned char *,true>(v6, v54, -v9, a4 & 1);
      v7 = v54 + 1;
LABEL_98:
      a4 = 0;
      a3 = -v9;
      goto LABEL_3;
    }
  }

  v102 = v7 + 1;
  v104 = v7 == a2 || v102 == a2;
  if (a4)
  {
    if (!v104)
    {
      v105 = 0;
      v106 = v7;
      do
      {
        v107 = v106[1];
        v108 = *v106;
        v106 = v102;
        if (v107 < v108)
        {
          v109 = v105;
          while (1)
          {
            v7[v109 + 1] = v108;
            if (!v109)
            {
              break;
            }

            v108 = v7[--v109];
            if (v107 >= v108)
            {
              v110 = &v7[v109 + 1];
              goto LABEL_205;
            }
          }

          v110 = v7;
LABEL_205:
          *v110 = v107;
        }

        v102 = v106 + 1;
        ++v105;
      }

      while (v106 + 1 != a2);
    }
  }

  else if (!v104)
  {
    do
    {
      v111 = v6[1];
      v112 = *v6;
      v6 = v102;
      if (v111 < v112)
      {
        do
        {
          *v102 = v112;
          v112 = *(v102 - 2);
          --v102;
        }

        while (v111 < v112);
        *v102 = v111;
      }

      v102 = v6 + 1;
    }

    while (v6 + 1 != a2);
  }

  return result;
}

__int16 *std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,short *,true>(__int16 *result, __int16 *a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v7 = v6;
LABEL_3:
  v8 = 1 - a3;
  while (1)
  {
    v6 = v7;
    v9 = v8;
    v10 = a2 - v7;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v59 = v7[1];
          v60 = *(a2 - 1);
          if (v59 >= v60)
          {
            v61 = *(a2 - 1);
          }

          else
          {
            v61 = v7[1];
          }

          if (v59 <= v60)
          {
            LOWORD(v59) = *(a2 - 1);
          }

          *(a2 - 1) = v59;
          v7[1] = v61;
          v62 = *(a2 - 1);
          v63 = *v7;
          if (v62 >= v63)
          {
            v64 = *v7;
          }

          else
          {
            v64 = *(a2 - 1);
          }

          if (v62 <= v63)
          {
            LOWORD(v62) = *v7;
          }

          *(a2 - 1) = v62;
          v65 = v7[1];
          v66 = *v7;
          if (v64 >= v65)
          {
            v66 = v7[1];
          }

          *v7 = v66;
          if (v64 > v65)
          {
            LOWORD(v65) = v64;
          }

          v7[1] = v65;
          return result;
        case 4:
          v91 = *v7;
          v92 = v7[2];
          if (v91 >= v92)
          {
            v93 = v7[2];
          }

          else
          {
            v93 = *v7;
          }

          if (v91 <= v92)
          {
            LOWORD(v91) = v7[2];
          }

          v7[2] = v91;
          *v7 = v93;
          v94 = v7[1];
          v95 = *(a2 - 1);
          if (v94 >= v95)
          {
            v96 = *(a2 - 1);
          }

          else
          {
            v96 = v7[1];
          }

          if (v94 <= v95)
          {
            LOWORD(v94) = *(a2 - 1);
          }

          *(a2 - 1) = v94;
          v97 = *v7;
          if (v97 >= v96)
          {
            v98 = v96;
          }

          else
          {
            v98 = *v7;
          }

          if (v97 <= v96)
          {
            LOWORD(v97) = v96;
          }

          v7[1] = v97;
          *v7 = v98;
          v99 = v7[2];
          v100 = *(a2 - 1);
          if (v99 >= v100)
          {
            v101 = *(a2 - 1);
          }

          else
          {
            v101 = v7[2];
          }

          if (v99 <= v100)
          {
            LOWORD(v99) = *(a2 - 1);
          }

          *(a2 - 1) = v99;
          v102 = v7[1];
          if (v102 >= v101)
          {
            v103 = v101;
          }

          else
          {
            v103 = v7[1];
          }

          if (v102 <= v101)
          {
            LOWORD(v102) = v101;
          }

          v7[2] = v102;
          v7[1] = v103;
          return result;
        case 5:
          v67 = *v7;
          v68 = v7[1];
          if (v67 >= v68)
          {
            v69 = v7[1];
          }

          else
          {
            v69 = *v7;
          }

          if (v67 <= v68)
          {
            LOWORD(v67) = v7[1];
          }

          v7[1] = v67;
          *v7 = v69;
          v70 = v7[3];
          v71 = *(a2 - 1);
          if (v70 >= v71)
          {
            v72 = *(a2 - 1);
          }

          else
          {
            v72 = v7[3];
          }

          if (v70 <= v71)
          {
            LOWORD(v70) = *(a2 - 1);
          }

          *(a2 - 1) = v70;
          v7[3] = v72;
          v73 = *(a2 - 1);
          v74 = v7[2];
          if (v73 >= v74)
          {
            v75 = v7[2];
          }

          else
          {
            v75 = *(a2 - 1);
          }

          if (v73 <= v74)
          {
            LOWORD(v73) = v7[2];
          }

          *(a2 - 1) = v73;
          v76 = v7[3];
          v77 = v7[2];
          if (v75 >= v76)
          {
            v77 = v7[3];
          }

          v7[2] = v77;
          if (v75 > v76)
          {
            LOWORD(v76) = v75;
          }

          v7[3] = v76;
          v78 = v7[1];
          v79 = *(a2 - 1);
          if (v78 >= v79)
          {
            v80 = *(a2 - 1);
          }

          else
          {
            v80 = v7[1];
          }

          if (v78 <= v79)
          {
            LOWORD(v78) = *(a2 - 1);
          }

          *(a2 - 1) = v78;
          v81 = v7[3];
          v82 = *v7;
          if (v81 >= v82)
          {
            v83 = *v7;
          }

          else
          {
            v83 = v7[3];
          }

          if (v81 <= v82)
          {
            v81 = *v7;
          }

          v84 = v7[2];
          if (v83 >= v84)
          {
            LOWORD(v82) = v7[2];
          }

          *v7 = v82;
          if (v83 <= v84)
          {
            v85 = v84;
          }

          else
          {
            v85 = v83;
          }

          if (v81 >= v80)
          {
            v86 = v80;
          }

          else
          {
            v86 = v81;
          }

          if (v81 <= v80)
          {
            LOWORD(v81) = v80;
          }

          v7[3] = v81;
          if (v86 >= v85)
          {
            v87 = v85;
          }

          else
          {
            v87 = v80;
          }

          v7[1] = v87;
          if (v86 <= v85)
          {
            v88 = v85;
          }

          else
          {
            v88 = v86;
          }

          v7[2] = v88;
          return result;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v89 = *(a2 - 1);
        v90 = *v7;
        if (v89 < v90)
        {
          *v7 = v89;
          *(a2 - 1) = v90;
        }

        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (v9 == 1)
    {
      if (v7 != a2)
      {
        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,short *,short *>(v7, a2, a2, &v115);
      }

      return result;
    }

    v11 = v10 >> 1;
    v12 = *(a2 - 1);
    if (v10 < 0x81)
    {
      v47 = *v7;
      v48 = v47 <= v12;
      if (v47 >= v12)
      {
        v49 = *(a2 - 1);
      }

      else
      {
        v49 = *v7;
      }

      if (v48)
      {
        LOWORD(v47) = *(a2 - 1);
      }

      *(a2 - 1) = v47;
      *v7 = v49;
      v50 = *(a2 - 1);
      v51 = v7[v11];
      if (v50 >= v51)
      {
        v52 = v7[v11];
      }

      else
      {
        v52 = *(a2 - 1);
      }

      if (v50 <= v51)
      {
        LOWORD(v50) = v7[v11];
      }

      *(a2 - 1) = v50;
      v53 = *v7;
      v54 = v52 < v53;
      if (v52 < v53)
      {
        LOWORD(v53) = v7[v11];
      }

      v7[v11] = v53;
      v55 = *v7;
      if (!v54)
      {
        v55 = v52;
      }

      *v7 = v55;
      if (a4)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v13 = &v7[v11];
      v14 = *v13;
      v15 = v14 <= v12;
      if (v14 >= v12)
      {
        v16 = *(a2 - 1);
      }

      else
      {
        v16 = *v13;
      }

      if (v15)
      {
        LOWORD(v14) = *(a2 - 1);
      }

      *(a2 - 1) = v14;
      *v13 = v16;
      v17 = *(a2 - 1);
      v18 = *v7;
      if (v17 >= v18)
      {
        v19 = *v7;
      }

      else
      {
        v19 = *(a2 - 1);
      }

      if (v17 <= v18)
      {
        LOWORD(v17) = *v7;
      }

      *(a2 - 1) = v17;
      v20 = *v13;
      v21 = v19 < v20;
      if (v19 < v20)
      {
        LOWORD(v20) = *v7;
      }

      *v7 = v20;
      v22 = *v13;
      if (!v21)
      {
        v22 = v19;
      }

      *v13 = v22;
      v23 = *(v13 - 1);
      v24 = *(a2 - 2);
      if (v23 >= v24)
      {
        v25 = *(a2 - 2);
      }

      else
      {
        v25 = *(v13 - 1);
      }

      if (v23 <= v24)
      {
        LOWORD(v23) = *(a2 - 2);
      }

      *(a2 - 2) = v23;
      *(v13 - 1) = v25;
      v26 = *(a2 - 2);
      v27 = v7[1];
      if (v26 >= v27)
      {
        v28 = v7[1];
      }

      else
      {
        v28 = *(a2 - 2);
      }

      if (v26 <= v27)
      {
        LOWORD(v26) = v7[1];
      }

      *(a2 - 2) = v26;
      v29 = *(v13 - 1);
      v30 = v28 < v29;
      if (v28 < v29)
      {
        LOWORD(v29) = v7[1];
      }

      v7[1] = v29;
      v31 = *(v13 - 1);
      if (!v30)
      {
        v31 = v28;
      }

      *(v13 - 1) = v31;
      v32 = v13[1];
      v33 = *(a2 - 3);
      if (v32 >= v33)
      {
        v34 = *(a2 - 3);
      }

      else
      {
        v34 = v13[1];
      }

      if (v32 <= v33)
      {
        LOWORD(v32) = *(a2 - 3);
      }

      *(a2 - 3) = v32;
      v13[1] = v34;
      v35 = *(a2 - 3);
      v36 = v7[2];
      if (v35 >= v36)
      {
        v37 = v7[2];
      }

      else
      {
        v37 = *(a2 - 3);
      }

      if (v35 <= v36)
      {
        LOWORD(v35) = v7[2];
      }

      *(a2 - 3) = v35;
      v38 = v13[1];
      v39 = v37 < v38;
      if (v37 < v38)
      {
        LOWORD(v38) = v7[2];
      }

      v7[2] = v38;
      LOWORD(v38) = v13[1];
      if (!v39)
      {
        LOWORD(v38) = v37;
      }

      v40 = v38;
      v41 = *v13;
      v42 = v41 <= v38;
      if (v41 >= v38)
      {
        v38 = v38;
      }

      else
      {
        v38 = *v13;
      }

      if (!v42)
      {
        v40 = *v13;
      }

      v43 = *(v13 - 1);
      if (v40 >= v43)
      {
        v44 = *(v13 - 1);
      }

      else
      {
        v44 = v40;
      }

      if (v40 <= v43)
      {
        LOWORD(v40) = *(v13 - 1);
      }

      v13[1] = v40;
      if (v43 >= v38)
      {
        v45 = v38;
      }

      else
      {
        v45 = v43;
      }

      *(v13 - 1) = v45;
      if (v43 >= v38)
      {
        LOWORD(v38) = v44;
      }

      *v13 = v38;
      v46 = *v7;
      *v7 = v38;
      *v13 = v46;
      if (a4)
      {
        goto LABEL_91;
      }
    }

    if (*(v7 - 1) >= *v7)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,short *,std::ranges::less &>(v7, a2);
      v7 = result;
      goto LABEL_96;
    }

LABEL_91:
    v56 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,short *,std::ranges::less>(v7, a2);
    if ((v57 & 1) == 0)
    {
      goto LABEL_94;
    }

    v58 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,short *>(v7, v56);
    v7 = v56 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,short *>(v56 + 1, a2);
    if (result)
    {
      a3 = -v9;
      a2 = v56;
      if (v58)
      {
        return result;
      }

      goto LABEL_2;
    }

    v8 = v9 + 1;
    if (!v58)
    {
LABEL_94:
      result = std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,short *,true>(v6, v56, -v9, a4 & 1);
      v7 = v56 + 1;
LABEL_96:
      a4 = 0;
      a3 = -v9;
      goto LABEL_3;
    }
  }

  v104 = v7 + 1;
  v106 = v7 == a2 || v104 == a2;
  if (a4)
  {
    if (!v106)
    {
      v107 = 0;
      v108 = v7;
      do
      {
        v109 = v108[1];
        v110 = *v108;
        v108 = v104;
        if (v109 < v110)
        {
          v111 = v107;
          while (1)
          {
            *(v7 + v111 + 2) = v110;
            if (!v111)
            {
              break;
            }

            v110 = *(v7 + v111 - 2);
            v111 -= 2;
            if (v109 >= v110)
            {
              v112 = (v7 + v111 + 2);
              goto LABEL_203;
            }
          }

          v112 = v7;
LABEL_203:
          *v112 = v109;
        }

        v104 = v108 + 1;
        v107 += 2;
      }

      while (v108 + 1 != a2);
    }
  }

  else if (!v106)
  {
    do
    {
      v113 = v6[1];
      v114 = *v6;
      v6 = v104;
      if (v113 < v114)
      {
        do
        {
          *v104 = v114;
          v114 = *(v104 - 2);
          --v104;
        }

        while (v113 < v114);
        *v104 = v113;
      }

      v104 = v6 + 1;
    }

    while (v6 + 1 != a2);
  }

  return result;
}

unsigned __int16 *std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,unsigned short *,true>(unsigned __int16 *result, unsigned __int16 *a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v7 = v6;
LABEL_3:
  v8 = 1 - a3;
  while (1)
  {
    v6 = v7;
    v9 = v8;
    v10 = a2 - v7;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v57 = v7[1];
          v58 = *(a2 - 1);
          if (v57 >= v58)
          {
            v59 = *(a2 - 1);
          }

          else
          {
            v59 = v7[1];
          }

          if (v57 <= v58)
          {
            LOWORD(v57) = *(a2 - 1);
          }

          *(a2 - 1) = v57;
          v7[1] = v59;
          v60 = *(a2 - 1);
          v61 = *v7;
          if (v60 >= v61)
          {
            v62 = *v7;
          }

          else
          {
            v62 = *(a2 - 1);
          }

          if (v60 <= v61)
          {
            LOWORD(v60) = *v7;
          }

          *(a2 - 1) = v60;
          v63 = v7[1];
          v64 = *v7;
          if (v62 >= v63)
          {
            v64 = v7[1];
          }

          *v7 = v64;
          if (v62 > v63)
          {
            LOWORD(v63) = v62;
          }

          v7[1] = v63;
          return result;
        case 4:
          v89 = *v7;
          v90 = v7[2];
          if (v89 >= v90)
          {
            v91 = v7[2];
          }

          else
          {
            v91 = *v7;
          }

          if (v89 <= v90)
          {
            LOWORD(v89) = v7[2];
          }

          v7[2] = v89;
          *v7 = v91;
          v92 = v7[1];
          v93 = *(a2 - 1);
          if (v92 >= v93)
          {
            v94 = *(a2 - 1);
          }

          else
          {
            v94 = v7[1];
          }

          if (v92 <= v93)
          {
            LOWORD(v92) = *(a2 - 1);
          }

          *(a2 - 1) = v92;
          v95 = *v7;
          if (v95 >= v94)
          {
            v96 = v94;
          }

          else
          {
            v96 = *v7;
          }

          if (v95 <= v94)
          {
            LOWORD(v95) = v94;
          }

          v7[1] = v95;
          *v7 = v96;
          v97 = v7[2];
          v98 = *(a2 - 1);
          if (v97 >= v98)
          {
            v99 = *(a2 - 1);
          }

          else
          {
            v99 = v7[2];
          }

          if (v97 <= v98)
          {
            LOWORD(v97) = *(a2 - 1);
          }

          *(a2 - 1) = v97;
          v100 = v7[1];
          if (v100 >= v99)
          {
            v101 = v99;
          }

          else
          {
            v101 = v7[1];
          }

          if (v100 <= v99)
          {
            LOWORD(v100) = v99;
          }

          v7[2] = v100;
          v7[1] = v101;
          return result;
        case 5:
          v65 = *v7;
          v66 = v7[1];
          if (v65 >= v66)
          {
            v67 = v7[1];
          }

          else
          {
            v67 = *v7;
          }

          if (v65 <= v66)
          {
            LOWORD(v65) = v7[1];
          }

          v7[1] = v65;
          *v7 = v67;
          v68 = v7[3];
          v69 = *(a2 - 1);
          if (v68 >= v69)
          {
            v70 = *(a2 - 1);
          }

          else
          {
            v70 = v7[3];
          }

          if (v68 <= v69)
          {
            LOWORD(v68) = *(a2 - 1);
          }

          *(a2 - 1) = v68;
          v7[3] = v70;
          v71 = *(a2 - 1);
          v72 = v7[2];
          if (v71 >= v72)
          {
            v73 = v7[2];
          }

          else
          {
            v73 = *(a2 - 1);
          }

          if (v71 <= v72)
          {
            LOWORD(v71) = v7[2];
          }

          *(a2 - 1) = v71;
          v74 = v7[3];
          v75 = v7[2];
          if (v73 >= v74)
          {
            v75 = v7[3];
          }

          v7[2] = v75;
          if (v73 > v74)
          {
            LOWORD(v74) = v73;
          }

          v7[3] = v74;
          v76 = v7[1];
          v77 = *(a2 - 1);
          if (v76 >= v77)
          {
            v78 = *(a2 - 1);
          }

          else
          {
            v78 = v7[1];
          }

          if (v76 <= v77)
          {
            LOWORD(v76) = *(a2 - 1);
          }

          *(a2 - 1) = v76;
          v79 = v7[3];
          v80 = *v7;
          if (v79 >= v80)
          {
            v81 = *v7;
          }

          else
          {
            v81 = v7[3];
          }

          if (v79 <= v80)
          {
            v79 = *v7;
          }

          v82 = v7[2];
          if (v81 >= v82)
          {
            LOWORD(v80) = v7[2];
          }

          *v7 = v80;
          if (v81 <= v82)
          {
            v83 = v82;
          }

          else
          {
            v83 = v81;
          }

          if (v79 >= v78)
          {
            v84 = v78;
          }

          else
          {
            v84 = v79;
          }

          if (v79 <= v78)
          {
            LOWORD(v79) = v78;
          }

          v7[3] = v79;
          if (v84 >= v83)
          {
            v85 = v83;
          }

          else
          {
            v85 = v78;
          }

          v7[1] = v85;
          if (v84 <= v83)
          {
            v86 = v83;
          }

          else
          {
            v86 = v84;
          }

          v7[2] = v86;
          return result;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v87 = *(a2 - 1);
        v88 = *v7;
        if (v87 < v88)
        {
          *v7 = v87;
          *(a2 - 1) = v88;
        }

        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (v9 == 1)
    {
      if (v7 != a2)
      {
        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,unsigned short *,unsigned short *>(v7, a2, a2, &v113);
      }

      return result;
    }

    v11 = v10 >> 1;
    v12 = *(a2 - 1);
    if (v10 < 0x81)
    {
      v46 = *v7;
      if (v46 >= v12)
      {
        v47 = *(a2 - 1);
      }

      else
      {
        v47 = *v7;
      }

      if (v46 <= v12)
      {
        LOWORD(v46) = *(a2 - 1);
      }

      *(a2 - 1) = v46;
      *v7 = v47;
      v48 = *(a2 - 1);
      v49 = v7[v11];
      if (v48 >= v49)
      {
        v50 = v7[v11];
      }

      else
      {
        v50 = *(a2 - 1);
      }

      if (v48 <= v49)
      {
        LOWORD(v48) = v7[v11];
      }

      *(a2 - 1) = v48;
      v51 = *v7;
      v52 = v50 >= v51;
      if (v50 < v51)
      {
        LOWORD(v51) = v7[v11];
      }

      v7[v11] = v51;
      v53 = *v7;
      if (v52)
      {
        v53 = v50;
      }

      *v7 = v53;
      if (a4)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v13 = &v7[v11];
      v14 = *v13;
      if (v14 >= v12)
      {
        v15 = *(a2 - 1);
      }

      else
      {
        v15 = *v13;
      }

      if (v14 <= v12)
      {
        LOWORD(v14) = *(a2 - 1);
      }

      *(a2 - 1) = v14;
      *v13 = v15;
      v16 = *(a2 - 1);
      v17 = *v7;
      if (v16 >= v17)
      {
        v18 = *v7;
      }

      else
      {
        v18 = *(a2 - 1);
      }

      if (v16 <= v17)
      {
        LOWORD(v16) = *v7;
      }

      *(a2 - 1) = v16;
      v19 = *v13;
      v20 = v18 >= v19;
      if (v18 < v19)
      {
        LOWORD(v19) = *v7;
      }

      *v7 = v19;
      v21 = *v13;
      if (v20)
      {
        v21 = v18;
      }

      *v13 = v21;
      v22 = *(v13 - 1);
      v23 = *(a2 - 2);
      if (v22 >= v23)
      {
        v24 = *(a2 - 2);
      }

      else
      {
        v24 = *(v13 - 1);
      }

      if (v22 <= v23)
      {
        LOWORD(v22) = *(a2 - 2);
      }

      *(a2 - 2) = v22;
      *(v13 - 1) = v24;
      v25 = *(a2 - 2);
      v26 = v7[1];
      if (v25 >= v26)
      {
        v27 = v7[1];
      }

      else
      {
        v27 = *(a2 - 2);
      }

      if (v25 <= v26)
      {
        LOWORD(v25) = v7[1];
      }

      *(a2 - 2) = v25;
      v28 = *(v13 - 1);
      v29 = v27 >= v28;
      if (v27 < v28)
      {
        LOWORD(v28) = v7[1];
      }

      v7[1] = v28;
      v30 = *(v13 - 1);
      if (v29)
      {
        v30 = v27;
      }

      *(v13 - 1) = v30;
      v31 = v13[1];
      v32 = *(a2 - 3);
      if (v31 >= v32)
      {
        v33 = *(a2 - 3);
      }

      else
      {
        v33 = v13[1];
      }

      if (v31 <= v32)
      {
        LOWORD(v31) = *(a2 - 3);
      }

      *(a2 - 3) = v31;
      v13[1] = v33;
      v34 = *(a2 - 3);
      v35 = v7[2];
      if (v34 >= v35)
      {
        v36 = v7[2];
      }

      else
      {
        v36 = *(a2 - 3);
      }

      if (v34 <= v35)
      {
        LOWORD(v34) = v7[2];
      }

      *(a2 - 3) = v34;
      v37 = v13[1];
      v38 = v36 >= v37;
      if (v36 < v37)
      {
        LOWORD(v37) = v7[2];
      }

      v7[2] = v37;
      LOWORD(v37) = v13[1];
      if (v38)
      {
        LOWORD(v37) = v36;
      }

      v39 = v37;
      v40 = *v13;
      v41 = v40 > v37;
      if (v40 >= v37)
      {
        v37 = v37;
      }

      else
      {
        v37 = *v13;
      }

      if (v41)
      {
        v39 = *v13;
      }

      v42 = *(v13 - 1);
      if (v39 >= v42)
      {
        v43 = *(v13 - 1);
      }

      else
      {
        v43 = v39;
      }

      if (v39 <= v42)
      {
        LOWORD(v39) = *(v13 - 1);
      }

      v13[1] = v39;
      if (v42 >= v37)
      {
        v44 = v37;
      }

      else
      {
        v44 = v42;
      }

      *(v13 - 1) = v44;
      if (v42 >= v37)
      {
        LOWORD(v37) = v43;
      }

      *v13 = v37;
      v45 = *v7;
      *v7 = v37;
      *v13 = v45;
      if (a4)
      {
        goto LABEL_93;
      }
    }

    if (*(v7 - 1) >= *v7)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned short *,std::ranges::less &>(v7, a2);
      v7 = result;
      goto LABEL_98;
    }

LABEL_93:
    v54 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,unsigned short *,std::ranges::less>(v7, a2);
    if ((v55 & 1) == 0)
    {
      goto LABEL_96;
    }

    v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,unsigned short *>(v7, v54);
    v7 = v54 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,unsigned short *>(v54 + 1, a2);
    if (result)
    {
      a3 = -v9;
      a2 = v54;
      if (v56)
      {
        return result;
      }

      goto LABEL_2;
    }

    v8 = v9 + 1;
    if (!v56)
    {
LABEL_96:
      result = std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,unsigned short *,true>(v6, v54, -v9, a4 & 1);
      v7 = v54 + 1;
LABEL_98:
      a4 = 0;
      a3 = -v9;
      goto LABEL_3;
    }
  }

  v102 = v7 + 1;
  v104 = v7 == a2 || v102 == a2;
  if (a4)
  {
    if (!v104)
    {
      v105 = 0;
      v106 = v7;
      do
      {
        v107 = v106[1];
        v108 = *v106;
        v106 = v102;
        if (v107 < v108)
        {
          v109 = v105;
          while (1)
          {
            *(v7 + v109 + 2) = v108;
            if (!v109)
            {
              break;
            }

            v108 = *(v7 + v109 - 2);
            v109 -= 2;
            if (v107 >= v108)
            {
              v110 = (v7 + v109 + 2);
              goto LABEL_205;
            }
          }

          v110 = v7;
LABEL_205:
          *v110 = v107;
        }

        v102 = v106 + 1;
        v105 += 2;
      }

      while (v106 + 1 != a2);
    }
  }

  else if (!v104)
  {
    do
    {
      v111 = v6[1];
      v112 = *v6;
      v6 = v102;
      if (v111 < v112)
      {
        do
        {
          *v102 = v112;
          v112 = *(v102 - 2);
          --v102;
        }

        while (v111 < v112);
        *v102 = v111;
      }

      v102 = v6 + 1;
    }

    while (v6 + 1 != a2);
  }

  return result;
}

unsigned int *std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,unsigned int *,true>(unsigned int *result, unsigned int *a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v7 = v6;
LABEL_3:
  v8 = 1 - a3;
  while (1)
  {
    v6 = v7;
    v9 = v8;
    v10 = a2 - v7;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v57 = v7[1];
          v58 = *(a2 - 1);
          if (v57 >= v58)
          {
            v59 = *(a2 - 1);
          }

          else
          {
            v59 = v7[1];
          }

          if (v57 <= v58)
          {
            v57 = *(a2 - 1);
          }

          *(a2 - 1) = v57;
          v7[1] = v59;
          v60 = *(a2 - 1);
          if (v60 >= *v7)
          {
            v61 = *v7;
          }

          else
          {
            v61 = *(a2 - 1);
          }

          if (v60 <= *v7)
          {
            v60 = *v7;
          }

          *(a2 - 1) = v60;
          v63 = *v7;
          v62 = v7[1];
          if (v61 >= v62)
          {
            v63 = v7[1];
          }

          if (v61 > v62)
          {
            v62 = v61;
          }

          *v7 = v63;
          v7[1] = v62;
          return result;
        case 4:
          v87 = v7[1];
          v86 = v7[2];
          if (*v7 >= v86)
          {
            v88 = v7[2];
          }

          else
          {
            v88 = *v7;
          }

          if (*v7 > v86)
          {
            v86 = *v7;
          }

          v7[2] = v86;
          *v7 = v88;
          v89 = *(a2 - 1);
          if (v87 >= v89)
          {
            v90 = *(a2 - 1);
          }

          else
          {
            v90 = v87;
          }

          if (v87 > v89)
          {
            v89 = v87;
          }

          *(a2 - 1) = v89;
          v91 = *v7;
          if (*v7 >= v90)
          {
            v92 = v90;
          }

          else
          {
            v92 = *v7;
          }

          if (v91 <= v90)
          {
            v91 = v90;
          }

          *v7 = v92;
          v7[1] = v91;
          v93 = v7[2];
          v94 = *(a2 - 1);
          if (v93 >= v94)
          {
            v95 = *(a2 - 1);
          }

          else
          {
            v95 = v7[2];
          }

          if (v93 <= v94)
          {
            v93 = *(a2 - 1);
          }

          *(a2 - 1) = v93;
          v96 = v7[1];
          if (v96 >= v95)
          {
            v97 = v95;
          }

          else
          {
            v97 = v7[1];
          }

          if (v96 <= v95)
          {
            v96 = v95;
          }

          v7[1] = v97;
          v7[2] = v96;
          return result;
        case 5:
          v64 = *v7;
          v65 = v7[1];
          if (*v7 >= v65)
          {
            v66 = v7[1];
          }

          else
          {
            v66 = *v7;
          }

          if (v64 <= v65)
          {
            v64 = v7[1];
          }

          *v7 = v66;
          v7[1] = v64;
          v67 = v7[3];
          v68 = *(a2 - 1);
          if (v67 >= v68)
          {
            v69 = *(a2 - 1);
          }

          else
          {
            v69 = v7[3];
          }

          if (v67 <= v68)
          {
            v67 = *(a2 - 1);
          }

          *(a2 - 1) = v67;
          v7[3] = v69;
          v70 = *(a2 - 1);
          v71 = v7[2];
          if (v70 >= v71)
          {
            v72 = v7[2];
          }

          else
          {
            v72 = *(a2 - 1);
          }

          if (v70 <= v71)
          {
            v70 = v7[2];
          }

          *(a2 - 1) = v70;
          v74 = v7[2];
          v73 = v7[3];
          v75 = v7[1];
          if (v72 >= v73)
          {
            v74 = v7[3];
          }

          if (v72 > v73)
          {
            v73 = v72;
          }

          v7[2] = v74;
          v7[3] = v73;
          v76 = *(a2 - 1);
          if (v75 >= v76)
          {
            v77 = *(a2 - 1);
          }

          else
          {
            v77 = v75;
          }

          if (v75 > v76)
          {
            v76 = v75;
          }

          *(a2 - 1) = v76;
          v78 = *v7;
          v80 = v7[2];
          v79 = v7[3];
          if (v79 >= *v7)
          {
            v81 = *v7;
          }

          else
          {
            v81 = v7[3];
          }

          if (v79 <= v78)
          {
            v79 = *v7;
          }

          if (v81 >= v80)
          {
            v78 = v7[2];
          }

          if (v81 > v80)
          {
            v80 = v81;
          }

          if (v79 >= v77)
          {
            v82 = v77;
          }

          else
          {
            v82 = v79;
          }

          if (v79 <= v77)
          {
            v79 = v77;
          }

          if (v82 >= v80)
          {
            v77 = v80;
          }

          *v7 = v78;
          v7[1] = v77;
          if (v82 <= v80)
          {
            v83 = v80;
          }

          else
          {
            v83 = v82;
          }

          v7[2] = v83;
          v7[3] = v79;
          return result;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v84 = *(a2 - 1);
        v85 = *v7;
        if (v84 < *v7)
        {
          *v7 = v84;
          *(a2 - 1) = v85;
        }

        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (v9 == 1)
    {
      if (v7 != a2)
      {
        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,unsigned int *,unsigned int *>(v7, a2, a2, &v109);
      }

      return result;
    }

    v11 = v10 >> 1;
    v12 = *(a2 - 1);
    if (v10 < 0x81)
    {
      v46 = *v7;
      if (*v7 >= v12)
      {
        v47 = *(a2 - 1);
      }

      else
      {
        v47 = *v7;
      }

      if (v46 <= v12)
      {
        v46 = *(a2 - 1);
      }

      *(a2 - 1) = v46;
      *v7 = v47;
      v48 = *(a2 - 1);
      v49 = v7[v11];
      if (v48 >= v49)
      {
        v50 = v7[v11];
      }

      else
      {
        v50 = *(a2 - 1);
      }

      if (v48 <= v49)
      {
        v48 = v7[v11];
      }

      *(a2 - 1) = v48;
      v51 = *v7;
      v52 = v50 >= *v7;
      if (v50 < *v7)
      {
        v51 = v7[v11];
      }

      v7[v11] = v51;
      v53 = *v7;
      if (v52)
      {
        v53 = v50;
      }

      *v7 = v53;
      if (a4)
      {
        goto LABEL_94;
      }
    }

    else
    {
      v13 = &v7[v11];
      v14 = *v13;
      if (*v13 >= v12)
      {
        v15 = *(a2 - 1);
      }

      else
      {
        v15 = *v13;
      }

      if (v14 <= v12)
      {
        v14 = *(a2 - 1);
      }

      *(a2 - 1) = v14;
      *v13 = v15;
      v16 = *(a2 - 1);
      if (v16 >= *v7)
      {
        v17 = *v7;
      }

      else
      {
        v17 = *(a2 - 1);
      }

      if (v16 <= *v7)
      {
        v16 = *v7;
      }

      *(a2 - 1) = v16;
      v18 = *v13;
      v19 = v17 >= *v13;
      if (v17 < *v13)
      {
        v18 = *v7;
      }

      *v7 = v18;
      v20 = *v13;
      if (v19)
      {
        v20 = v17;
      }

      *v13 = v20;
      v21 = *(v13 - 1);
      v22 = *(a2 - 2);
      if (v21 >= v22)
      {
        v23 = *(a2 - 2);
      }

      else
      {
        v23 = *(v13 - 1);
      }

      if (v21 <= v22)
      {
        v21 = *(a2 - 2);
      }

      *(a2 - 2) = v21;
      *(v13 - 1) = v23;
      v24 = *(a2 - 2);
      v25 = v7[1];
      if (v24 >= v25)
      {
        v26 = v7[1];
      }

      else
      {
        v26 = *(a2 - 2);
      }

      if (v24 <= v25)
      {
        v24 = v7[1];
      }

      *(a2 - 2) = v24;
      v27 = *(v13 - 1);
      v28 = v26 >= v27;
      if (v26 < v27)
      {
        v27 = v7[1];
      }

      v7[1] = v27;
      v29 = *(v13 - 1);
      if (v28)
      {
        v29 = v26;
      }

      *(v13 - 1) = v29;
      v30 = v13[1];
      v31 = *(a2 - 3);
      if (v30 >= v31)
      {
        v32 = *(a2 - 3);
      }

      else
      {
        v32 = v13[1];
      }

      if (v30 <= v31)
      {
        v30 = *(a2 - 3);
      }

      *(a2 - 3) = v30;
      v13[1] = v32;
      v33 = *(a2 - 3);
      v34 = v7[2];
      if (v33 >= v34)
      {
        v35 = v7[2];
      }

      else
      {
        v35 = *(a2 - 3);
      }

      if (v33 <= v34)
      {
        v33 = v7[2];
      }

      *(a2 - 3) = v33;
      v36 = v13[1];
      v37 = v35 >= v36;
      if (v35 < v36)
      {
        v36 = v7[2];
      }

      v7[2] = v36;
      v39 = *v13;
      v38 = v13[1];
      if (v37)
      {
        v38 = v35;
      }

      if (v39 >= v38)
      {
        v40 = v38;
      }

      else
      {
        v40 = *v13;
      }

      if (v39 > v38)
      {
        v38 = *v13;
      }

      v41 = *(v13 - 1);
      if (v38 >= v41)
      {
        v42 = *(v13 - 1);
      }

      else
      {
        v42 = v38;
      }

      if (v38 <= v41)
      {
        v38 = *(v13 - 1);
      }

      v13[1] = v38;
      if (v41 >= v40)
      {
        v43 = v40;
      }

      else
      {
        v43 = v41;
      }

      if (v41 >= v40)
      {
        v44 = v42;
      }

      else
      {
        v44 = v40;
      }

      *(v13 - 1) = v43;
      *v13 = v44;
      v45 = *v7;
      *v7 = v44;
      *v13 = v45;
      if (a4)
      {
        goto LABEL_94;
      }
    }

    if (*(v7 - 1) >= *v7)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,std::ranges::less &>(v7, a2);
      v7 = result;
      goto LABEL_99;
    }

LABEL_94:
    v54 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,std::ranges::less>(v7, a2);
    if ((v55 & 1) == 0)
    {
      goto LABEL_97;
    }

    v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,unsigned int *>(v7, v54);
    v7 = v54 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,unsigned int *>(v54 + 1, a2);
    if (result)
    {
      a3 = -v9;
      a2 = v54;
      if (v56)
      {
        return result;
      }

      goto LABEL_2;
    }

    v8 = v9 + 1;
    if (!v56)
    {
LABEL_97:
      result = std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,unsigned int *,true>(v6, v54, -v9, a4 & 1);
      v7 = v54 + 1;
LABEL_99:
      a4 = 0;
      a3 = -v9;
      goto LABEL_3;
    }
  }

  v98 = v7 + 1;
  v100 = v7 == a2 || v98 == a2;
  if (a4)
  {
    if (!v100)
    {
      v101 = 0;
      v102 = v7;
      do
      {
        v104 = *v102;
        v103 = v102[1];
        v102 = v98;
        if (v103 < v104)
        {
          v105 = v101;
          while (1)
          {
            *(v7 + v105 + 4) = v104;
            if (!v105)
            {
              break;
            }

            v104 = *(v7 + v105 - 4);
            v105 -= 4;
            if (v103 >= v104)
            {
              v106 = (v7 + v105 + 4);
              goto LABEL_204;
            }
          }

          v106 = v7;
LABEL_204:
          *v106 = v103;
        }

        v98 = v102 + 1;
        v101 += 4;
      }

      while (v102 + 1 != a2);
    }
  }

  else if (!v100)
  {
    do
    {
      v108 = *v6;
      v107 = v6[1];
      v6 = v98;
      if (v107 < v108)
      {
        do
        {
          *v98 = v108;
          v108 = *(v98 - 2);
          --v98;
        }

        while (v107 < v108);
        *v98 = v107;
      }

      v98 = v6 + 1;
    }

    while (v6 + 1 != a2);
  }

  return result;
}

uint64_t *std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,long *,true>(uint64_t *result, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v7 = v6;
LABEL_3:
  v8 = 1 - a3;
  while (1)
  {
    v6 = v7;
    v9 = v8;
    v10 = a2 - v7;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v56 = v7[1];
          v57 = *(a2 - 1);
          if (v56 >= v57)
          {
            v58 = *(a2 - 1);
          }

          else
          {
            v58 = v7[1];
          }

          if (v56 <= v57)
          {
            v56 = *(a2 - 1);
          }

          *(a2 - 1) = v56;
          v7[1] = v58;
          v59 = *(a2 - 1);
          if (v59 >= *v7)
          {
            v60 = *v7;
          }

          else
          {
            v60 = *(a2 - 1);
          }

          if (v59 <= *v7)
          {
            v59 = *v7;
          }

          *(a2 - 1) = v59;
          v62 = *v7;
          v61 = v7[1];
          if (v60 >= v61)
          {
            v62 = v7[1];
          }

          if (v60 > v61)
          {
            v61 = v60;
          }

          *v7 = v62;
          v7[1] = v61;
          return result;
        case 4:
          v86 = v7[1];
          v85 = v7[2];
          if (*v7 >= v85)
          {
            v87 = v7[2];
          }

          else
          {
            v87 = *v7;
          }

          if (*v7 > v85)
          {
            v85 = *v7;
          }

          v7[2] = v85;
          *v7 = v87;
          v88 = *(a2 - 1);
          if (v86 >= v88)
          {
            v89 = *(a2 - 1);
          }

          else
          {
            v89 = v86;
          }

          if (v86 > v88)
          {
            v88 = v86;
          }

          *(a2 - 1) = v88;
          v90 = *v7;
          if (*v7 >= v89)
          {
            v91 = v89;
          }

          else
          {
            v91 = *v7;
          }

          if (*v7 <= v89)
          {
            v90 = v89;
          }

          *v7 = v91;
          v7[1] = v90;
          v92 = v7[2];
          v93 = *(a2 - 1);
          if (v92 >= v93)
          {
            v94 = *(a2 - 1);
          }

          else
          {
            v94 = v7[2];
          }

          if (v92 <= v93)
          {
            v92 = *(a2 - 1);
          }

          *(a2 - 1) = v92;
          v95 = v7[1];
          if (v95 >= v94)
          {
            v96 = v94;
          }

          else
          {
            v96 = v7[1];
          }

          if (v95 <= v94)
          {
            v95 = v94;
          }

          v7[1] = v96;
          v7[2] = v95;
          return result;
        case 5:
          v63 = *v7;
          v64 = v7[1];
          if (*v7 >= v64)
          {
            v65 = v7[1];
          }

          else
          {
            v65 = *v7;
          }

          if (*v7 <= v64)
          {
            v63 = v7[1];
          }

          *v7 = v65;
          v7[1] = v63;
          v66 = v7[3];
          v67 = *(a2 - 1);
          if (v66 >= v67)
          {
            v68 = *(a2 - 1);
          }

          else
          {
            v68 = v7[3];
          }

          if (v66 <= v67)
          {
            v66 = *(a2 - 1);
          }

          *(a2 - 1) = v66;
          v7[3] = v68;
          v69 = *(a2 - 1);
          v70 = v7[2];
          if (v69 >= v70)
          {
            v71 = v7[2];
          }

          else
          {
            v71 = *(a2 - 1);
          }

          if (v69 <= v70)
          {
            v69 = v7[2];
          }

          *(a2 - 1) = v69;
          v73 = v7[2];
          v72 = v7[3];
          v74 = v7[1];
          if (v71 >= v72)
          {
            v73 = v7[3];
          }

          if (v71 > v72)
          {
            v72 = v71;
          }

          v7[2] = v73;
          v7[3] = v72;
          v75 = *(a2 - 1);
          if (v74 >= v75)
          {
            v76 = *(a2 - 1);
          }

          else
          {
            v76 = v74;
          }

          if (v74 > v75)
          {
            v75 = v74;
          }

          *(a2 - 1) = v75;
          v77 = *v7;
          v79 = v7[2];
          v78 = v7[3];
          if (v78 >= *v7)
          {
            v80 = *v7;
          }

          else
          {
            v80 = v7[3];
          }

          if (v78 <= *v7)
          {
            v78 = *v7;
          }

          if (v80 >= v79)
          {
            v77 = v7[2];
          }

          if (v80 > v79)
          {
            v79 = v80;
          }

          if (v78 >= v76)
          {
            v81 = v76;
          }

          else
          {
            v81 = v78;
          }

          if (v78 <= v76)
          {
            v78 = v76;
          }

          if (v81 >= v79)
          {
            v76 = v79;
          }

          *v7 = v77;
          v7[1] = v76;
          if (v81 <= v79)
          {
            v82 = v79;
          }

          else
          {
            v82 = v81;
          }

          v7[2] = v82;
          v7[3] = v78;
          return result;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v83 = *(a2 - 1);
        v84 = *v7;
        if (v83 < *v7)
        {
          *v7 = v83;
          *(a2 - 1) = v84;
        }

        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (v9 == 1)
    {
      if (v7 != a2)
      {
        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,long *,long *>(v7, a2, a2, &v108);
      }

      return result;
    }

    v11 = v10 >> 1;
    v12 = *(a2 - 1);
    if (v10 < 0x81)
    {
      v45 = *v7;
      if (*v7 >= v12)
      {
        v46 = *(a2 - 1);
      }

      else
      {
        v46 = *v7;
      }

      if (*v7 <= v12)
      {
        v45 = *(a2 - 1);
      }

      *(a2 - 1) = v45;
      *v7 = v46;
      v47 = *(a2 - 1);
      v48 = v7[v11];
      if (v47 >= v48)
      {
        v49 = v7[v11];
      }

      else
      {
        v49 = *(a2 - 1);
      }

      if (v47 <= v48)
      {
        v47 = v7[v11];
      }

      *(a2 - 1) = v47;
      v50 = *v7;
      v51 = v49 < *v7;
      if (v49 < *v7)
      {
        v50 = v7[v11];
      }

      v7[v11] = v50;
      v52 = *v7;
      if (!v51)
      {
        v52 = v49;
      }

      *v7 = v52;
      if (a4)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v13 = &v7[v11];
      v14 = *v13;
      if (*v13 >= v12)
      {
        v15 = *(a2 - 1);
      }

      else
      {
        v15 = *v13;
      }

      if (*v13 <= v12)
      {
        v14 = *(a2 - 1);
      }

      *(a2 - 1) = v14;
      *v13 = v15;
      v16 = *(a2 - 1);
      if (v16 >= *v7)
      {
        v17 = *v7;
      }

      else
      {
        v17 = *(a2 - 1);
      }

      if (v16 <= *v7)
      {
        v16 = *v7;
      }

      *(a2 - 1) = v16;
      v18 = *v13;
      v19 = v17 < *v13;
      if (v17 < *v13)
      {
        v18 = *v7;
      }

      *v7 = v18;
      v21 = *(v13 - 1);
      v20 = *v13;
      if (!v19)
      {
        v20 = v17;
      }

      *v13 = v20;
      v22 = *(a2 - 2);
      if (v21 >= v22)
      {
        v23 = *(a2 - 2);
      }

      else
      {
        v23 = v21;
      }

      if (v21 > v22)
      {
        v22 = v21;
      }

      *(a2 - 2) = v22;
      *(v13 - 1) = v23;
      v24 = *(a2 - 2);
      v25 = v7[1];
      if (v24 >= v25)
      {
        v26 = v7[1];
      }

      else
      {
        v26 = *(a2 - 2);
      }

      if (v24 <= v25)
      {
        v24 = v7[1];
      }

      *(a2 - 2) = v24;
      v27 = *(v13 - 1);
      v28 = v26 < v27;
      if (v26 < v27)
      {
        v27 = v7[1];
      }

      v7[1] = v27;
      v29 = *(v13 - 1);
      if (!v28)
      {
        v29 = v26;
      }

      *(v13 - 1) = v29;
      v30 = v13[1];
      v31 = *(a2 - 3);
      if (v30 >= v31)
      {
        v32 = *(a2 - 3);
      }

      else
      {
        v32 = v13[1];
      }

      if (v30 <= v31)
      {
        v30 = *(a2 - 3);
      }

      *(a2 - 3) = v30;
      v13[1] = v32;
      v33 = *(a2 - 3);
      v34 = v7[2];
      if (v33 >= v34)
      {
        v35 = v7[2];
      }

      else
      {
        v35 = *(a2 - 3);
      }

      if (v33 <= v34)
      {
        v33 = v7[2];
      }

      *(a2 - 3) = v33;
      v36 = v13[1];
      v37 = v35 < v36;
      if (v35 < v36)
      {
        v36 = v7[2];
      }

      v7[2] = v36;
      v39 = *v13;
      v38 = v13[1];
      if (!v37)
      {
        v38 = v35;
      }

      v40 = *(v13 - 1);
      if (v39 >= v38)
      {
        v41 = v38;
      }

      else
      {
        v41 = *v13;
      }

      if (v39 > v38)
      {
        v38 = *v13;
      }

      if (v38 >= v40)
      {
        v42 = *(v13 - 1);
      }

      else
      {
        v42 = v38;
      }

      if (v38 <= v40)
      {
        v38 = *(v13 - 1);
      }

      v13[1] = v38;
      if (v40 >= v41)
      {
        v43 = v41;
      }

      else
      {
        v43 = v40;
      }

      if (v40 < v41)
      {
        v42 = v41;
      }

      *(v13 - 1) = v43;
      *v13 = v42;
      v44 = *v7;
      *v7 = v42;
      *v13 = v44;
      if (a4)
      {
        goto LABEL_89;
      }
    }

    if (*(v7 - 1) >= *v7)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,long *,std::ranges::less &>(v7, a2);
      v7 = result;
      goto LABEL_94;
    }

LABEL_89:
    v53 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,long *,std::ranges::less>(v7, a2);
    if ((v54 & 1) == 0)
    {
      goto LABEL_92;
    }

    v55 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,long *>(v7, v53);
    v7 = v53 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,long *>(v53 + 1, a2);
    if (result)
    {
      a3 = -v9;
      a2 = v53;
      if (v55)
      {
        return result;
      }

      goto LABEL_2;
    }

    v8 = v9 + 1;
    if (!v55)
    {
LABEL_92:
      result = std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,long *,true>(v6, v53, -v9, a4 & 1);
      v7 = v53 + 1;
LABEL_94:
      a4 = 0;
      a3 = -v9;
      goto LABEL_3;
    }
  }

  v97 = v7 + 1;
  v99 = v7 == a2 || v97 == a2;
  if (a4)
  {
    if (!v99)
    {
      v100 = 0;
      v101 = v7;
      do
      {
        v103 = *v101;
        v102 = v101[1];
        v101 = v97;
        if (v102 < v103)
        {
          v104 = v100;
          while (1)
          {
            *(v7 + v104 + 8) = v103;
            if (!v104)
            {
              break;
            }

            v103 = *(v7 + v104 - 8);
            v104 -= 8;
            if (v102 >= v103)
            {
              v105 = (v7 + v104 + 8);
              goto LABEL_199;
            }
          }

          v105 = v7;
LABEL_199:
          *v105 = v102;
        }

        v97 = v101 + 1;
        v100 += 8;
      }

      while (v101 + 1 != a2);
    }
  }

  else if (!v99)
  {
    do
    {
      v107 = *v6;
      v106 = v6[1];
      v6 = v97;
      if (v106 < v107)
      {
        do
        {
          *v97 = v107;
          v107 = *(v97 - 2);
          --v97;
        }

        while (v106 < v107);
        *v97 = v106;
      }

      v97 = v6 + 1;
    }

    while (v6 + 1 != a2);
  }

  return result;
}

unint64_t *std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,unsigned long *,true>(unint64_t *result, unint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v7 = v6;
LABEL_3:
  v8 = 1 - a3;
  while (1)
  {
    v6 = v7;
    v9 = v8;
    v10 = a2 - v7;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v56 = v7[1];
          v57 = *(a2 - 1);
          if (v56 >= v57)
          {
            v58 = *(a2 - 1);
          }

          else
          {
            v58 = v7[1];
          }

          if (v56 <= v57)
          {
            v56 = *(a2 - 1);
          }

          *(a2 - 1) = v56;
          v7[1] = v58;
          v59 = *(a2 - 1);
          if (v59 >= *v7)
          {
            v60 = *v7;
          }

          else
          {
            v60 = *(a2 - 1);
          }

          if (v59 <= *v7)
          {
            v59 = *v7;
          }

          *(a2 - 1) = v59;
          v62 = *v7;
          v61 = v7[1];
          if (v60 >= v61)
          {
            v62 = v7[1];
          }

          if (v60 > v61)
          {
            v61 = v60;
          }

          *v7 = v62;
          v7[1] = v61;
          return result;
        case 4:
          v86 = v7[1];
          v85 = v7[2];
          if (*v7 >= v85)
          {
            v87 = v7[2];
          }

          else
          {
            v87 = *v7;
          }

          if (*v7 > v85)
          {
            v85 = *v7;
          }

          v7[2] = v85;
          *v7 = v87;
          v88 = *(a2 - 1);
          if (v86 >= v88)
          {
            v89 = *(a2 - 1);
          }

          else
          {
            v89 = v86;
          }

          if (v86 > v88)
          {
            v88 = v86;
          }

          *(a2 - 1) = v88;
          v90 = *v7;
          if (*v7 >= v89)
          {
            v91 = v89;
          }

          else
          {
            v91 = *v7;
          }

          if (*v7 <= v89)
          {
            v90 = v89;
          }

          *v7 = v91;
          v7[1] = v90;
          v92 = v7[2];
          v93 = *(a2 - 1);
          if (v92 >= v93)
          {
            v94 = *(a2 - 1);
          }

          else
          {
            v94 = v7[2];
          }

          if (v92 <= v93)
          {
            v92 = *(a2 - 1);
          }

          *(a2 - 1) = v92;
          v95 = v7[1];
          if (v95 >= v94)
          {
            v96 = v94;
          }

          else
          {
            v96 = v7[1];
          }

          if (v95 <= v94)
          {
            v95 = v94;
          }

          v7[1] = v96;
          v7[2] = v95;
          return result;
        case 5:
          v63 = *v7;
          v64 = v7[1];
          if (*v7 >= v64)
          {
            v65 = v7[1];
          }

          else
          {
            v65 = *v7;
          }

          if (*v7 <= v64)
          {
            v63 = v7[1];
          }

          *v7 = v65;
          v7[1] = v63;
          v66 = v7[3];
          v67 = *(a2 - 1);
          if (v66 >= v67)
          {
            v68 = *(a2 - 1);
          }

          else
          {
            v68 = v7[3];
          }

          if (v66 <= v67)
          {
            v66 = *(a2 - 1);
          }

          *(a2 - 1) = v66;
          v7[3] = v68;
          v69 = *(a2 - 1);
          v70 = v7[2];
          if (v69 >= v70)
          {
            v71 = v7[2];
          }

          else
          {
            v71 = *(a2 - 1);
          }

          if (v69 <= v70)
          {
            v69 = v7[2];
          }

          *(a2 - 1) = v69;
          v73 = v7[2];
          v72 = v7[3];
          v74 = v7[1];
          if (v71 >= v72)
          {
            v73 = v7[3];
          }

          if (v71 > v72)
          {
            v72 = v71;
          }

          v7[2] = v73;
          v7[3] = v72;
          v75 = *(a2 - 1);
          if (v74 >= v75)
          {
            v76 = *(a2 - 1);
          }

          else
          {
            v76 = v74;
          }

          if (v74 > v75)
          {
            v75 = v74;
          }

          *(a2 - 1) = v75;
          v77 = *v7;
          v79 = v7[2];
          v78 = v7[3];
          if (v78 >= *v7)
          {
            v80 = *v7;
          }

          else
          {
            v80 = v7[3];
          }

          if (v78 <= *v7)
          {
            v78 = *v7;
          }

          if (v80 >= v79)
          {
            v77 = v7[2];
          }

          if (v80 > v79)
          {
            v79 = v80;
          }

          if (v78 >= v76)
          {
            v81 = v76;
          }

          else
          {
            v81 = v78;
          }

          if (v78 <= v76)
          {
            v78 = v76;
          }

          if (v81 >= v79)
          {
            v76 = v79;
          }

          *v7 = v77;
          v7[1] = v76;
          if (v81 <= v79)
          {
            v82 = v79;
          }

          else
          {
            v82 = v81;
          }

          v7[2] = v82;
          v7[3] = v78;
          return result;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v83 = *(a2 - 1);
        v84 = *v7;
        if (v83 < *v7)
        {
          *v7 = v83;
          *(a2 - 1) = v84;
        }

        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (v9 == 1)
    {
      if (v7 != a2)
      {
        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,unsigned long *,unsigned long *>(v7, a2, a2, &v108);
      }

      return result;
    }

    v11 = v10 >> 1;
    v12 = *(a2 - 1);
    if (v10 < 0x81)
    {
      v45 = *v7;
      if (*v7 >= v12)
      {
        v46 = *(a2 - 1);
      }

      else
      {
        v46 = *v7;
      }

      if (*v7 <= v12)
      {
        v45 = *(a2 - 1);
      }

      *(a2 - 1) = v45;
      *v7 = v46;
      v47 = *(a2 - 1);
      v48 = v7[v11];
      if (v47 >= v48)
      {
        v49 = v7[v11];
      }

      else
      {
        v49 = *(a2 - 1);
      }

      if (v47 <= v48)
      {
        v47 = v7[v11];
      }

      *(a2 - 1) = v47;
      v50 = *v7;
      v51 = v49 >= *v7;
      if (v49 < *v7)
      {
        v50 = v7[v11];
      }

      v7[v11] = v50;
      v52 = *v7;
      if (v51)
      {
        v52 = v49;
      }

      *v7 = v52;
      if (a4)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v13 = &v7[v11];
      v14 = *v13;
      if (*v13 >= v12)
      {
        v15 = *(a2 - 1);
      }

      else
      {
        v15 = *v13;
      }

      if (*v13 <= v12)
      {
        v14 = *(a2 - 1);
      }

      *(a2 - 1) = v14;
      *v13 = v15;
      v16 = *(a2 - 1);
      if (v16 >= *v7)
      {
        v17 = *v7;
      }

      else
      {
        v17 = *(a2 - 1);
      }

      if (v16 <= *v7)
      {
        v16 = *v7;
      }

      *(a2 - 1) = v16;
      v18 = *v13;
      v19 = v17 >= *v13;
      if (v17 < *v13)
      {
        v18 = *v7;
      }

      *v7 = v18;
      v21 = *(v13 - 1);
      v20 = *v13;
      if (v19)
      {
        v20 = v17;
      }

      *v13 = v20;
      v22 = *(a2 - 2);
      if (v21 >= v22)
      {
        v23 = *(a2 - 2);
      }

      else
      {
        v23 = v21;
      }

      if (v21 > v22)
      {
        v22 = v21;
      }

      *(a2 - 2) = v22;
      *(v13 - 1) = v23;
      v24 = *(a2 - 2);
      v25 = v7[1];
      if (v24 >= v25)
      {
        v26 = v7[1];
      }

      else
      {
        v26 = *(a2 - 2);
      }

      if (v24 <= v25)
      {
        v24 = v7[1];
      }

      *(a2 - 2) = v24;
      v27 = *(v13 - 1);
      v28 = v26 >= v27;
      if (v26 < v27)
      {
        v27 = v7[1];
      }

      v7[1] = v27;
      v29 = *(v13 - 1);
      if (v28)
      {
        v29 = v26;
      }

      *(v13 - 1) = v29;
      v30 = v13[1];
      v31 = *(a2 - 3);
      if (v30 >= v31)
      {
        v32 = *(a2 - 3);
      }

      else
      {
        v32 = v13[1];
      }

      if (v30 <= v31)
      {
        v30 = *(a2 - 3);
      }

      *(a2 - 3) = v30;
      v13[1] = v32;
      v33 = *(a2 - 3);
      v34 = v7[2];
      if (v33 >= v34)
      {
        v35 = v7[2];
      }

      else
      {
        v35 = *(a2 - 3);
      }

      if (v33 <= v34)
      {
        v33 = v7[2];
      }

      *(a2 - 3) = v33;
      v36 = v13[1];
      v37 = v35 >= v36;
      if (v35 < v36)
      {
        v36 = v7[2];
      }

      v7[2] = v36;
      v39 = *v13;
      v38 = v13[1];
      if (v37)
      {
        v38 = v35;
      }

      v40 = *(v13 - 1);
      if (v39 >= v38)
      {
        v41 = v38;
      }

      else
      {
        v41 = *v13;
      }

      if (v39 > v38)
      {
        v38 = *v13;
      }

      if (v38 >= v40)
      {
        v42 = *(v13 - 1);
      }

      else
      {
        v42 = v38;
      }

      if (v38 <= v40)
      {
        v38 = *(v13 - 1);
      }

      v13[1] = v38;
      if (v40 >= v41)
      {
        v43 = v41;
      }

      else
      {
        v43 = v40;
      }

      if (v40 < v41)
      {
        v42 = v41;
      }

      *(v13 - 1) = v43;
      *v13 = v42;
      v44 = *v7;
      *v7 = v42;
      *v13 = v44;
      if (a4)
      {
        goto LABEL_93;
      }
    }

    if (*(v7 - 1) >= *v7)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,std::ranges::less &>(v7, a2);
      v7 = result;
      goto LABEL_98;
    }

LABEL_93:
    v53 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,std::ranges::less>(v7, a2);
    if ((v54 & 1) == 0)
    {
      goto LABEL_96;
    }

    v55 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,unsigned long *>(v7, v53);
    v7 = v53 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,unsigned long *>(v53 + 1, a2);
    if (result)
    {
      a3 = -v9;
      a2 = v53;
      if (v55)
      {
        return result;
      }

      goto LABEL_2;
    }

    v8 = v9 + 1;
    if (!v55)
    {
LABEL_96:
      result = std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,unsigned long *,true>(v6, v53, -v9, a4 & 1);
      v7 = v53 + 1;
LABEL_98:
      a4 = 0;
      a3 = -v9;
      goto LABEL_3;
    }
  }

  v97 = v7 + 1;
  v99 = v7 == a2 || v97 == a2;
  if (a4)
  {
    if (!v99)
    {
      v100 = 0;
      v101 = v7;
      do
      {
        v103 = *v101;
        v102 = v101[1];
        v101 = v97;
        if (v102 < v103)
        {
          v104 = v100;
          while (1)
          {
            *(v7 + v104 + 8) = v103;
            if (!v104)
            {
              break;
            }

            v103 = *(v7 + v104 - 8);
            v104 -= 8;
            if (v102 >= v103)
            {
              v105 = (v7 + v104 + 8);
              goto LABEL_203;
            }
          }

          v105 = v7;
LABEL_203:
          *v105 = v102;
        }

        v97 = v101 + 1;
        v100 += 8;
      }

      while (v101 + 1 != a2);
    }
  }

  else if (!v99)
  {
    do
    {
      v107 = *v6;
      v106 = v6[1];
      v6 = v97;
      if (v106 < v107)
      {
        do
        {
          *v97 = v107;
          v107 = *(v97 - 2);
          --v97;
        }

        while (v106 < v107);
        *v97 = v106;
      }

      v97 = v6 + 1;
    }

    while (v6 + 1 != a2);
  }

  return result;
}

uint64_t *std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,long long *,true>(uint64_t *result, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v7 = v6;
LABEL_3:
  v8 = 1 - a3;
  while (1)
  {
    v6 = v7;
    v9 = v8;
    v10 = a2 - v7;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v56 = v7[1];
          v57 = *(a2 - 1);
          if (v56 >= v57)
          {
            v58 = *(a2 - 1);
          }

          else
          {
            v58 = v7[1];
          }

          if (v56 <= v57)
          {
            v56 = *(a2 - 1);
          }

          *(a2 - 1) = v56;
          v7[1] = v58;
          v59 = *(a2 - 1);
          if (v59 >= *v7)
          {
            v60 = *v7;
          }

          else
          {
            v60 = *(a2 - 1);
          }

          if (v59 <= *v7)
          {
            v59 = *v7;
          }

          *(a2 - 1) = v59;
          v62 = *v7;
          v61 = v7[1];
          if (v60 >= v61)
          {
            v62 = v7[1];
          }

          if (v60 > v61)
          {
            v61 = v60;
          }

          *v7 = v62;
          v7[1] = v61;
          return result;
        case 4:
          v86 = v7[1];
          v85 = v7[2];
          if (*v7 >= v85)
          {
            v87 = v7[2];
          }

          else
          {
            v87 = *v7;
          }

          if (*v7 > v85)
          {
            v85 = *v7;
          }

          v7[2] = v85;
          *v7 = v87;
          v88 = *(a2 - 1);
          if (v86 >= v88)
          {
            v89 = *(a2 - 1);
          }

          else
          {
            v89 = v86;
          }

          if (v86 > v88)
          {
            v88 = v86;
          }

          *(a2 - 1) = v88;
          v90 = *v7;
          if (*v7 >= v89)
          {
            v91 = v89;
          }

          else
          {
            v91 = *v7;
          }

          if (*v7 <= v89)
          {
            v90 = v89;
          }

          *v7 = v91;
          v7[1] = v90;
          v92 = v7[2];
          v93 = *(a2 - 1);
          if (v92 >= v93)
          {
            v94 = *(a2 - 1);
          }

          else
          {
            v94 = v7[2];
          }

          if (v92 <= v93)
          {
            v92 = *(a2 - 1);
          }

          *(a2 - 1) = v92;
          v95 = v7[1];
          if (v95 >= v94)
          {
            v96 = v94;
          }

          else
          {
            v96 = v7[1];
          }

          if (v95 <= v94)
          {
            v95 = v94;
          }

          v7[1] = v96;
          v7[2] = v95;
          return result;
        case 5:
          v63 = *v7;
          v64 = v7[1];
          if (*v7 >= v64)
          {
            v65 = v7[1];
          }

          else
          {
            v65 = *v7;
          }

          if (*v7 <= v64)
          {
            v63 = v7[1];
          }

          *v7 = v65;
          v7[1] = v63;
          v66 = v7[3];
          v67 = *(a2 - 1);
          if (v66 >= v67)
          {
            v68 = *(a2 - 1);
          }

          else
          {
            v68 = v7[3];
          }

          if (v66 <= v67)
          {
            v66 = *(a2 - 1);
          }

          *(a2 - 1) = v66;
          v7[3] = v68;
          v69 = *(a2 - 1);
          v70 = v7[2];
          if (v69 >= v70)
          {
            v71 = v7[2];
          }

          else
          {
            v71 = *(a2 - 1);
          }

          if (v69 <= v70)
          {
            v69 = v7[2];
          }

          *(a2 - 1) = v69;
          v73 = v7[2];
          v72 = v7[3];
          v74 = v7[1];
          if (v71 >= v72)
          {
            v73 = v7[3];
          }

          if (v71 > v72)
          {
            v72 = v71;
          }

          v7[2] = v73;
          v7[3] = v72;
          v75 = *(a2 - 1);
          if (v74 >= v75)
          {
            v76 = *(a2 - 1);
          }

          else
          {
            v76 = v74;
          }

          if (v74 > v75)
          {
            v75 = v74;
          }

          *(a2 - 1) = v75;
          v77 = *v7;
          v79 = v7[2];
          v78 = v7[3];
          if (v78 >= *v7)
          {
            v80 = *v7;
          }

          else
          {
            v80 = v7[3];
          }

          if (v78 <= *v7)
          {
            v78 = *v7;
          }

          if (v80 >= v79)
          {
            v77 = v7[2];
          }

          if (v80 > v79)
          {
            v79 = v80;
          }

          if (v78 >= v76)
          {
            v81 = v76;
          }

          else
          {
            v81 = v78;
          }

          if (v78 <= v76)
          {
            v78 = v76;
          }

          if (v81 >= v79)
          {
            v76 = v79;
          }

          *v7 = v77;
          v7[1] = v76;
          if (v81 <= v79)
          {
            v82 = v79;
          }

          else
          {
            v82 = v81;
          }

          v7[2] = v82;
          v7[3] = v78;
          return result;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v83 = *(a2 - 1);
        v84 = *v7;
        if (v83 < *v7)
        {
          *v7 = v83;
          *(a2 - 1) = v84;
        }

        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (v9 == 1)
    {
      if (v7 != a2)
      {
        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,long *,long *>(v7, a2, a2, &v108);
      }

      return result;
    }

    v11 = v10 >> 1;
    v12 = *(a2 - 1);
    if (v10 < 0x81)
    {
      v45 = *v7;
      if (*v7 >= v12)
      {
        v46 = *(a2 - 1);
      }

      else
      {
        v46 = *v7;
      }

      if (*v7 <= v12)
      {
        v45 = *(a2 - 1);
      }

      *(a2 - 1) = v45;
      *v7 = v46;
      v47 = *(a2 - 1);
      v48 = v7[v11];
      if (v47 >= v48)
      {
        v49 = v7[v11];
      }

      else
      {
        v49 = *(a2 - 1);
      }

      if (v47 <= v48)
      {
        v47 = v7[v11];
      }

      *(a2 - 1) = v47;
      v50 = *v7;
      v51 = v49 < *v7;
      if (v49 < *v7)
      {
        v50 = v7[v11];
      }

      v7[v11] = v50;
      v52 = *v7;
      if (!v51)
      {
        v52 = v49;
      }

      *v7 = v52;
      if (a4)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v13 = &v7[v11];
      v14 = *v13;
      if (*v13 >= v12)
      {
        v15 = *(a2 - 1);
      }

      else
      {
        v15 = *v13;
      }

      if (*v13 <= v12)
      {
        v14 = *(a2 - 1);
      }

      *(a2 - 1) = v14;
      *v13 = v15;
      v16 = *(a2 - 1);
      if (v16 >= *v7)
      {
        v17 = *v7;
      }

      else
      {
        v17 = *(a2 - 1);
      }

      if (v16 <= *v7)
      {
        v16 = *v7;
      }

      *(a2 - 1) = v16;
      v18 = *v13;
      v19 = v17 < *v13;
      if (v17 < *v13)
      {
        v18 = *v7;
      }

      *v7 = v18;
      v21 = *(v13 - 1);
      v20 = *v13;
      if (!v19)
      {
        v20 = v17;
      }

      *v13 = v20;
      v22 = *(a2 - 2);
      if (v21 >= v22)
      {
        v23 = *(a2 - 2);
      }

      else
      {
        v23 = v21;
      }

      if (v21 > v22)
      {
        v22 = v21;
      }

      *(a2 - 2) = v22;
      *(v13 - 1) = v23;
      v24 = *(a2 - 2);
      v25 = v7[1];
      if (v24 >= v25)
      {
        v26 = v7[1];
      }

      else
      {
        v26 = *(a2 - 2);
      }

      if (v24 <= v25)
      {
        v24 = v7[1];
      }

      *(a2 - 2) = v24;
      v27 = *(v13 - 1);
      v28 = v26 < v27;
      if (v26 < v27)
      {
        v27 = v7[1];
      }

      v7[1] = v27;
      v29 = *(v13 - 1);
      if (!v28)
      {
        v29 = v26;
      }

      *(v13 - 1) = v29;
      v30 = v13[1];
      v31 = *(a2 - 3);
      if (v30 >= v31)
      {
        v32 = *(a2 - 3);
      }

      else
      {
        v32 = v13[1];
      }

      if (v30 <= v31)
      {
        v30 = *(a2 - 3);
      }

      *(a2 - 3) = v30;
      v13[1] = v32;
      v33 = *(a2 - 3);
      v34 = v7[2];
      if (v33 >= v34)
      {
        v35 = v7[2];
      }

      else
      {
        v35 = *(a2 - 3);
      }

      if (v33 <= v34)
      {
        v33 = v7[2];
      }

      *(a2 - 3) = v33;
      v36 = v13[1];
      v37 = v35 < v36;
      if (v35 < v36)
      {
        v36 = v7[2];
      }

      v7[2] = v36;
      v39 = *v13;
      v38 = v13[1];
      if (!v37)
      {
        v38 = v35;
      }

      v40 = *(v13 - 1);
      if (v39 >= v38)
      {
        v41 = v38;
      }

      else
      {
        v41 = *v13;
      }

      if (v39 > v38)
      {
        v38 = *v13;
      }

      if (v38 >= v40)
      {
        v42 = *(v13 - 1);
      }

      else
      {
        v42 = v38;
      }

      if (v38 <= v40)
      {
        v38 = *(v13 - 1);
      }

      v13[1] = v38;
      if (v40 >= v41)
      {
        v43 = v41;
      }

      else
      {
        v43 = v40;
      }

      if (v40 < v41)
      {
        v42 = v41;
      }

      *(v13 - 1) = v43;
      *v13 = v42;
      v44 = *v7;
      *v7 = v42;
      *v13 = v44;
      if (a4)
      {
        goto LABEL_89;
      }
    }

    if (*(v7 - 1) >= *v7)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,long *,std::ranges::less &>(v7, a2);
      v7 = result;
      goto LABEL_94;
    }

LABEL_89:
    v53 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,long long *,std::ranges::less>(v7, a2);
    if ((v54 & 1) == 0)
    {
      goto LABEL_92;
    }

    v55 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,long *>(v7, v53);
    v7 = v53 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,long *>(v53 + 1, a2);
    if (result)
    {
      a3 = -v9;
      a2 = v53;
      if (v55)
      {
        return result;
      }

      goto LABEL_2;
    }

    v8 = v9 + 1;
    if (!v55)
    {
LABEL_92:
      result = std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,long long *,true>(v6, v53, -v9, a4 & 1);
      v7 = v53 + 1;
LABEL_94:
      a4 = 0;
      a3 = -v9;
      goto LABEL_3;
    }
  }

  v97 = v7 + 1;
  v99 = v7 == a2 || v97 == a2;
  if (a4)
  {
    if (!v99)
    {
      v100 = 0;
      v101 = v7;
      do
      {
        v103 = *v101;
        v102 = v101[1];
        v101 = v97;
        if (v102 < v103)
        {
          v104 = v100;
          while (1)
          {
            *(v7 + v104 + 8) = v103;
            if (!v104)
            {
              break;
            }

            v103 = *(v7 + v104 - 8);
            v104 -= 8;
            if (v102 >= v103)
            {
              v105 = (v7 + v104 + 8);
              goto LABEL_199;
            }
          }

          v105 = v7;
LABEL_199:
          *v105 = v102;
        }

        v97 = v101 + 1;
        v100 += 8;
      }

      while (v101 + 1 != a2);
    }
  }

  else if (!v99)
  {
    do
    {
      v107 = *v6;
      v106 = v6[1];
      v6 = v97;
      if (v106 < v107)
      {
        do
        {
          *v97 = v107;
          v107 = *(v97 - 2);
          --v97;
        }

        while (v106 < v107);
        *v97 = v106;
      }

      v97 = v6 + 1;
    }

    while (v6 + 1 != a2);
  }

  return result;
}

unint64_t *std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,unsigned long long *,true>(unint64_t *result, unint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v7 = v6;
LABEL_3:
  v8 = 1 - a3;
  while (1)
  {
    v6 = v7;
    v9 = v8;
    v10 = a2 - v7;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v56 = v7[1];
          v57 = *(a2 - 1);
          if (v56 >= v57)
          {
            v58 = *(a2 - 1);
          }

          else
          {
            v58 = v7[1];
          }

          if (v56 <= v57)
          {
            v56 = *(a2 - 1);
          }

          *(a2 - 1) = v56;
          v7[1] = v58;
          v59 = *(a2 - 1);
          if (v59 >= *v7)
          {
            v60 = *v7;
          }

          else
          {
            v60 = *(a2 - 1);
          }

          if (v59 <= *v7)
          {
            v59 = *v7;
          }

          *(a2 - 1) = v59;
          v62 = *v7;
          v61 = v7[1];
          if (v60 >= v61)
          {
            v62 = v7[1];
          }

          if (v60 > v61)
          {
            v61 = v60;
          }

          *v7 = v62;
          v7[1] = v61;
          return result;
        case 4:
          v86 = v7[1];
          v85 = v7[2];
          if (*v7 >= v85)
          {
            v87 = v7[2];
          }

          else
          {
            v87 = *v7;
          }

          if (*v7 > v85)
          {
            v85 = *v7;
          }

          v7[2] = v85;
          *v7 = v87;
          v88 = *(a2 - 1);
          if (v86 >= v88)
          {
            v89 = *(a2 - 1);
          }

          else
          {
            v89 = v86;
          }

          if (v86 > v88)
          {
            v88 = v86;
          }

          *(a2 - 1) = v88;
          v90 = *v7;
          if (*v7 >= v89)
          {
            v91 = v89;
          }

          else
          {
            v91 = *v7;
          }

          if (*v7 <= v89)
          {
            v90 = v89;
          }

          *v7 = v91;
          v7[1] = v90;
          v92 = v7[2];
          v93 = *(a2 - 1);
          if (v92 >= v93)
          {
            v94 = *(a2 - 1);
          }

          else
          {
            v94 = v7[2];
          }

          if (v92 <= v93)
          {
            v92 = *(a2 - 1);
          }

          *(a2 - 1) = v92;
          v95 = v7[1];
          if (v95 >= v94)
          {
            v96 = v94;
          }

          else
          {
            v96 = v7[1];
          }

          if (v95 <= v94)
          {
            v95 = v94;
          }

          v7[1] = v96;
          v7[2] = v95;
          return result;
        case 5:
          v63 = *v7;
          v64 = v7[1];
          if (*v7 >= v64)
          {
            v65 = v7[1];
          }

          else
          {
            v65 = *v7;
          }

          if (*v7 <= v64)
          {
            v63 = v7[1];
          }

          *v7 = v65;
          v7[1] = v63;
          v66 = v7[3];
          v67 = *(a2 - 1);
          if (v66 >= v67)
          {
            v68 = *(a2 - 1);
          }

          else
          {
            v68 = v7[3];
          }

          if (v66 <= v67)
          {
            v66 = *(a2 - 1);
          }

          *(a2 - 1) = v66;
          v7[3] = v68;
          v69 = *(a2 - 1);
          v70 = v7[2];
          if (v69 >= v70)
          {
            v71 = v7[2];
          }

          else
          {
            v71 = *(a2 - 1);
          }

          if (v69 <= v70)
          {
            v69 = v7[2];
          }

          *(a2 - 1) = v69;
          v73 = v7[2];
          v72 = v7[3];
          v74 = v7[1];
          if (v71 >= v72)
          {
            v73 = v7[3];
          }

          if (v71 > v72)
          {
            v72 = v71;
          }

          v7[2] = v73;
          v7[3] = v72;
          v75 = *(a2 - 1);
          if (v74 >= v75)
          {
            v76 = *(a2 - 1);
          }

          else
          {
            v76 = v74;
          }

          if (v74 > v75)
          {
            v75 = v74;
          }

          *(a2 - 1) = v75;
          v77 = *v7;
          v79 = v7[2];
          v78 = v7[3];
          if (v78 >= *v7)
          {
            v80 = *v7;
          }

          else
          {
            v80 = v7[3];
          }

          if (v78 <= *v7)
          {
            v78 = *v7;
          }

          if (v80 >= v79)
          {
            v77 = v7[2];
          }

          if (v80 > v79)
          {
            v79 = v80;
          }

          if (v78 >= v76)
          {
            v81 = v76;
          }

          else
          {
            v81 = v78;
          }

          if (v78 <= v76)
          {
            v78 = v76;
          }

          if (v81 >= v79)
          {
            v76 = v79;
          }

          *v7 = v77;
          v7[1] = v76;
          if (v81 <= v79)
          {
            v82 = v79;
          }

          else
          {
            v82 = v81;
          }

          v7[2] = v82;
          v7[3] = v78;
          return result;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v83 = *(a2 - 1);
        v84 = *v7;
        if (v83 < *v7)
        {
          *v7 = v83;
          *(a2 - 1) = v84;
        }

        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (v9 == 1)
    {
      if (v7 != a2)
      {
        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,unsigned long *,unsigned long *>(v7, a2, a2, &v108);
      }

      return result;
    }

    v11 = v10 >> 1;
    v12 = *(a2 - 1);
    if (v10 < 0x81)
    {
      v45 = *v7;
      if (*v7 >= v12)
      {
        v46 = *(a2 - 1);
      }

      else
      {
        v46 = *v7;
      }

      if (*v7 <= v12)
      {
        v45 = *(a2 - 1);
      }

      *(a2 - 1) = v45;
      *v7 = v46;
      v47 = *(a2 - 1);
      v48 = v7[v11];
      if (v47 >= v48)
      {
        v49 = v7[v11];
      }

      else
      {
        v49 = *(a2 - 1);
      }

      if (v47 <= v48)
      {
        v47 = v7[v11];
      }

      *(a2 - 1) = v47;
      v50 = *v7;
      v51 = v49 >= *v7;
      if (v49 < *v7)
      {
        v50 = v7[v11];
      }

      v7[v11] = v50;
      v52 = *v7;
      if (v51)
      {
        v52 = v49;
      }

      *v7 = v52;
      if (a4)
      {
        goto LABEL_93;
      }
    }

    else
    {
      v13 = &v7[v11];
      v14 = *v13;
      if (*v13 >= v12)
      {
        v15 = *(a2 - 1);
      }

      else
      {
        v15 = *v13;
      }

      if (*v13 <= v12)
      {
        v14 = *(a2 - 1);
      }

      *(a2 - 1) = v14;
      *v13 = v15;
      v16 = *(a2 - 1);
      if (v16 >= *v7)
      {
        v17 = *v7;
      }

      else
      {
        v17 = *(a2 - 1);
      }

      if (v16 <= *v7)
      {
        v16 = *v7;
      }

      *(a2 - 1) = v16;
      v18 = *v13;
      v19 = v17 >= *v13;
      if (v17 < *v13)
      {
        v18 = *v7;
      }

      *v7 = v18;
      v21 = *(v13 - 1);
      v20 = *v13;
      if (v19)
      {
        v20 = v17;
      }

      *v13 = v20;
      v22 = *(a2 - 2);
      if (v21 >= v22)
      {
        v23 = *(a2 - 2);
      }

      else
      {
        v23 = v21;
      }

      if (v21 > v22)
      {
        v22 = v21;
      }

      *(a2 - 2) = v22;
      *(v13 - 1) = v23;
      v24 = *(a2 - 2);
      v25 = v7[1];
      if (v24 >= v25)
      {
        v26 = v7[1];
      }

      else
      {
        v26 = *(a2 - 2);
      }

      if (v24 <= v25)
      {
        v24 = v7[1];
      }

      *(a2 - 2) = v24;
      v27 = *(v13 - 1);
      v28 = v26 >= v27;
      if (v26 < v27)
      {
        v27 = v7[1];
      }

      v7[1] = v27;
      v29 = *(v13 - 1);
      if (v28)
      {
        v29 = v26;
      }

      *(v13 - 1) = v29;
      v30 = v13[1];
      v31 = *(a2 - 3);
      if (v30 >= v31)
      {
        v32 = *(a2 - 3);
      }

      else
      {
        v32 = v13[1];
      }

      if (v30 <= v31)
      {
        v30 = *(a2 - 3);
      }

      *(a2 - 3) = v30;
      v13[1] = v32;
      v33 = *(a2 - 3);
      v34 = v7[2];
      if (v33 >= v34)
      {
        v35 = v7[2];
      }

      else
      {
        v35 = *(a2 - 3);
      }

      if (v33 <= v34)
      {
        v33 = v7[2];
      }

      *(a2 - 3) = v33;
      v36 = v13[1];
      v37 = v35 >= v36;
      if (v35 < v36)
      {
        v36 = v7[2];
      }

      v7[2] = v36;
      v39 = *v13;
      v38 = v13[1];
      if (v37)
      {
        v38 = v35;
      }

      v40 = *(v13 - 1);
      if (v39 >= v38)
      {
        v41 = v38;
      }

      else
      {
        v41 = *v13;
      }

      if (v39 > v38)
      {
        v38 = *v13;
      }

      if (v38 >= v40)
      {
        v42 = *(v13 - 1);
      }

      else
      {
        v42 = v38;
      }

      if (v38 <= v40)
      {
        v38 = *(v13 - 1);
      }

      v13[1] = v38;
      if (v40 >= v41)
      {
        v43 = v41;
      }

      else
      {
        v43 = v40;
      }

      if (v40 < v41)
      {
        v42 = v41;
      }

      *(v13 - 1) = v43;
      *v13 = v42;
      v44 = *v7;
      *v7 = v42;
      *v13 = v44;
      if (a4)
      {
        goto LABEL_93;
      }
    }

    if (*(v7 - 1) >= *v7)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,std::ranges::less &>(v7, a2);
      v7 = result;
      goto LABEL_98;
    }

LABEL_93:
    v53 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long long *,std::ranges::less>(v7, a2);
    if ((v54 & 1) == 0)
    {
      goto LABEL_96;
    }

    v55 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,unsigned long *>(v7, v53);
    v7 = v53 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,unsigned long *>(v53 + 1, a2);
    if (result)
    {
      a3 = -v9;
      a2 = v53;
      if (v55)
      {
        return result;
      }

      goto LABEL_2;
    }

    v8 = v9 + 1;
    if (!v55)
    {
LABEL_96:
      result = std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,unsigned long long *,true>(v6, v53, -v9, a4 & 1);
      v7 = v53 + 1;
LABEL_98:
      a4 = 0;
      a3 = -v9;
      goto LABEL_3;
    }
  }

  v97 = v7 + 1;
  v99 = v7 == a2 || v97 == a2;
  if (a4)
  {
    if (!v99)
    {
      v100 = 0;
      v101 = v7;
      do
      {
        v103 = *v101;
        v102 = v101[1];
        v101 = v97;
        if (v102 < v103)
        {
          v104 = v100;
          while (1)
          {
            *(v7 + v104 + 8) = v103;
            if (!v104)
            {
              break;
            }

            v103 = *(v7 + v104 - 8);
            v104 -= 8;
            if (v102 >= v103)
            {
              v105 = (v7 + v104 + 8);
              goto LABEL_203;
            }
          }

          v105 = v7;
LABEL_203:
          *v105 = v102;
        }

        v97 = v101 + 1;
        v100 += 8;
      }

      while (v101 + 1 != a2);
    }
  }

  else if (!v99)
  {
    do
    {
      v107 = *v6;
      v106 = v6[1];
      v6 = v97;
      if (v106 < v107)
      {
        do
        {
          *v97 = v107;
          v107 = *(v97 - 2);
          --v97;
        }

        while (v106 < v107);
        *v97 = v106;
      }

      v97 = v6 + 1;
    }

    while (v6 + 1 != a2);
  }

  return result;
}

float *std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,float *,true>(float *result, float *a2, uint64_t a3, char a4, double a5)
{
  v7 = result;
LABEL_2:
  v8 = v7;
LABEL_3:
  v9 = 1 - a3;
  while (1)
  {
    v7 = v8;
    v10 = v9;
    v11 = a2 - v8;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          v55 = v8[1];
          v56 = *(a2 - 1);
          if (v55 < v56)
          {
            v57 = *(v8 + 1);
          }

          else
          {
            v57 = *(a2 - 1);
          }

          if (v55 < v56)
          {
            v55 = *(a2 - 1);
          }

          *(a2 - 1) = v55;
          *(v8 + 1) = v57;
          v58 = *(a2 - 1);
          if (v58 < *v8)
          {
            v59 = *(a2 - 1);
          }

          else
          {
            v59 = *v8;
          }

          if (v58 < *v8)
          {
            v58 = *v8;
          }

          *(a2 - 1) = v58;
          v61 = *v8;
          v60 = v8[1];
          if (v59 >= v60)
          {
            v61 = v8[1];
            v60 = v59;
          }

          *v8 = v61;
          v8[1] = v60;
          return result;
        case 4:
          v85 = v8[1];
          v84 = v8[2];
          if (*v8 < v84)
          {
            v86 = *v8;
          }

          else
          {
            v86 = v8[2];
          }

          if (*v8 >= v84)
          {
            v84 = *v8;
          }

          v8[2] = v84;
          *v8 = v86;
          v87 = *(a2 - 1);
          if (v85 < v87)
          {
            v88 = v85;
          }

          else
          {
            v88 = *(a2 - 1);
          }

          if (v85 >= v87)
          {
            v87 = v85;
          }

          *(a2 - 1) = v87;
          v89 = *v8;
          if (*v8 < v88)
          {
            v90 = *v8;
          }

          else
          {
            v90 = v88;
          }

          if (*v8 < v88)
          {
            v89 = v88;
          }

          *v8 = v90;
          v8[1] = v89;
          v91 = v8[2];
          v92 = *(a2 - 1);
          if (v91 < v92)
          {
            v93 = v8[2];
          }

          else
          {
            v93 = *(a2 - 1);
          }

          if (v91 < v92)
          {
            v91 = *(a2 - 1);
          }

          *(a2 - 1) = v91;
          v94 = v8[1];
          if (v94 < v93)
          {
            v95 = v8[1];
          }

          else
          {
            v95 = v93;
          }

          if (v94 < v93)
          {
            v94 = v93;
          }

          v8[1] = v95;
          v8[2] = v94;
          return result;
        case 5:
          v62 = *v8;
          v63 = v8[1];
          if (*v8 < v63)
          {
            v64 = *v8;
          }

          else
          {
            v64 = v8[1];
          }

          if (*v8 < v63)
          {
            v62 = v8[1];
          }

          *v8 = v64;
          v8[1] = v62;
          v65 = v8[3];
          v66 = *(a2 - 1);
          if (v65 < v66)
          {
            v67 = *(v8 + 3);
          }

          else
          {
            v67 = *(a2 - 1);
          }

          if (v65 < v66)
          {
            v65 = *(a2 - 1);
          }

          *(a2 - 1) = v65;
          *(v8 + 3) = v67;
          v68 = *(a2 - 1);
          v69 = v8[2];
          if (v68 < v69)
          {
            v70 = *(a2 - 1);
          }

          else
          {
            v70 = v8[2];
          }

          if (v68 < v69)
          {
            v68 = v8[2];
          }

          *(a2 - 1) = v68;
          v72 = *(v8 + 2);
          v71 = v8[3];
          v73 = v8[1];
          if (v70 >= v71)
          {
            v72 = *(v8 + 3);
            v71 = v70;
          }

          *(v8 + 2) = v72;
          v8[3] = v71;
          v74 = *(a2 - 1);
          if (v73 < v74)
          {
            v75 = v73;
          }

          else
          {
            v75 = *(a2 - 1);
          }

          if (v73 >= v74)
          {
            v74 = v73;
          }

          *(a2 - 1) = v74;
          v76 = *v8;
          v78 = v8[2];
          v77 = v8[3];
          if (v77 < *v8)
          {
            v79 = v8[3];
          }

          else
          {
            v79 = *v8;
          }

          if (v77 < *v8)
          {
            v77 = *v8;
          }

          if (v79 >= v78)
          {
            v76 = v8[2];
            v78 = v79;
          }

          if (v77 < v75)
          {
            v80 = v77;
          }

          else
          {
            v80 = v75;
          }

          if (v77 < v75)
          {
            v77 = v75;
          }

          if (v80 >= v78)
          {
            v75 = v78;
          }

          *v8 = v76;
          v8[1] = v75;
          if (v80 < v78)
          {
            v81 = v78;
          }

          else
          {
            v81 = v80;
          }

          v8[2] = v81;
          v8[3] = v77;
          return result;
      }
    }

    else
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v82 = *(a2 - 1);
        v83 = *v8;
        if (v82 < *v8)
        {
          *v8 = v82;
          *(a2 - 1) = v83;
        }

        return result;
      }
    }

    if (v11 <= 23)
    {
      break;
    }

    if (v10 == 1)
    {
      if (v8 != a2)
      {
        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,float *,float *>(v8, a2, a2, &v108);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *(a2 - 1);
    if (v11 < 0x81)
    {
      if (*v8 < v13)
      {
        v45 = *v8;
      }

      else
      {
        v45 = *(a2 - 1);
      }

      if (*v8 >= v13)
      {
        v13 = *v8;
      }

      *(a2 - 1) = v13;
      *v8 = v45;
      v46 = *(a2 - 1);
      v47 = v8[v12];
      if (v46 < v47)
      {
        v48 = *(a2 - 1);
      }

      else
      {
        v48 = v8[v12];
      }

      if (v46 < v47)
      {
        v46 = v8[v12];
      }

      *(a2 - 1) = v46;
      v49 = *v8;
      v50 = v8[v12];
      v51 = v48 < *v8;
      if (v48 < *v8)
      {
        v49 = v8[v12];
      }

      v8[v12] = v49;
      *&a5 = *v8;
      if (!v51)
      {
        *&a5 = v48;
      }

      *v8 = *&a5;
      if (a4)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v14 = &v8[v12];
      if (*v14 < v13)
      {
        v15 = *v14;
      }

      else
      {
        v15 = *(a2 - 1);
      }

      if (*v14 >= v13)
      {
        v13 = *v14;
      }

      *(a2 - 1) = v13;
      *v14 = v15;
      v16 = *(a2 - 1);
      if (v16 < *v8)
      {
        v17 = *(a2 - 1);
      }

      else
      {
        v17 = *v8;
      }

      if (v16 < *v8)
      {
        v16 = *v8;
      }

      *(a2 - 1) = v16;
      v18 = *v14;
      v19 = v17 < *v14;
      if (v17 < *v14)
      {
        v18 = *v8;
      }

      *v8 = v18;
      v21 = *(v14 - 1);
      v20 = *v14;
      if (!v19)
      {
        v20 = v17;
      }

      *v14 = v20;
      v22 = *(a2 - 2);
      if (v21 < v22)
      {
        v23 = v21;
      }

      else
      {
        v23 = *(a2 - 2);
      }

      if (v21 >= v22)
      {
        v22 = v21;
      }

      *(a2 - 2) = v22;
      *(v14 - 1) = v23;
      v24 = *(a2 - 2);
      v25 = v8[1];
      if (v24 < v25)
      {
        v26 = *(a2 - 2);
      }

      else
      {
        v26 = v8[1];
      }

      if (v24 < v25)
      {
        v24 = v8[1];
      }

      *(a2 - 2) = v24;
      v27 = *(v14 - 1);
      v28 = v26 < v27;
      if (v26 < v27)
      {
        v27 = v8[1];
      }

      v8[1] = v27;
      v29 = *(v14 - 1);
      if (!v28)
      {
        v29 = v26;
      }

      *(v14 - 1) = v29;
      v30 = v14[1];
      v31 = *(a2 - 3);
      if (v30 < v31)
      {
        v32 = *(v14 + 1);
      }

      else
      {
        v32 = *(a2 - 3);
      }

      if (v30 < v31)
      {
        v30 = *(a2 - 3);
      }

      *(a2 - 3) = v30;
      *(v14 + 1) = v32;
      v33 = *(a2 - 3);
      v34 = v8[2];
      if (v33 < v34)
      {
        v35 = *(a2 - 3);
      }

      else
      {
        v35 = v8[2];
      }

      if (v33 < v34)
      {
        v33 = v8[2];
      }

      *(a2 - 3) = v33;
      v36 = v14[1];
      v37 = v35 < v36;
      if (v35 < v36)
      {
        v36 = v8[2];
      }

      v8[2] = v36;
      v39 = *v14;
      v38 = v14[1];
      if (!v37)
      {
        v38 = v35;
      }

      v40 = *(v14 - 1);
      if (v39 < v38)
      {
        v41 = *v14;
      }

      else
      {
        v41 = v38;
      }

      if (v39 >= v38)
      {
        v38 = *v14;
      }

      if (v38 < v40)
      {
        v42 = v38;
      }

      else
      {
        v42 = *(v14 - 1);
      }

      if (v38 < v40)
      {
        v43 = *(v14 - 1);
      }

      else
      {
        v43 = v38;
      }

      if (v42 < v41)
      {
        v44 = *(v14 - 1);
      }

      else
      {
        v44 = v41;
      }

      if (v42 < v41)
      {
        v42 = v41;
      }

      *(v14 - 1) = v44;
      *v14 = v42;
      v14[1] = v43;
      *&a5 = *v8;
      *v8 = v42;
      *v14 = *&a5;
      if (a4)
      {
        goto LABEL_90;
      }
    }

    *&a5 = *(v8 - 1);
    if (*&a5 >= *v8)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::ranges::less &>(v8, a2);
      v8 = result;
      goto LABEL_95;
    }

LABEL_90:
    v52 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,float *,std::ranges::less>(v8, a2, a5);
    if ((v53 & 1) == 0)
    {
      goto LABEL_93;
    }

    v54 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,float *>(v8, v52);
    v8 = v52 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,float *>(v52 + 1, a2);
    if (result)
    {
      a3 = -v10;
      a2 = v52;
      if (v54)
      {
        return result;
      }

      goto LABEL_2;
    }

    v9 = v10 + 1;
    if (!v54)
    {
LABEL_93:
      result = std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,float *,true>(v7, v52, -v10, a4 & 1);
      v8 = v52 + 1;
LABEL_95:
      a4 = 0;
      a3 = -v10;
      goto LABEL_3;
    }
  }

  v96 = v8 + 1;
  v98 = v8 == a2 || v96 == a2;
  if (a4)
  {
    if (!v98)
    {
      v99 = 0;
      v100 = v8;
      do
      {
        v102 = *v100;
        v101 = v100[1];
        v100 = v96;
        if (v101 < v102)
        {
          v103 = v99;
          while (1)
          {
            *(v8 + v103 + 4) = v102;
            if (!v103)
            {
              break;
            }

            v102 = *(v8 + v103 - 4);
            v103 -= 4;
            if (v101 >= v102)
            {
              v104 = (v8 + v103 + 4);
              goto LABEL_194;
            }
          }

          v104 = v8;
LABEL_194:
          *v104 = v101;
        }

        v96 = v100 + 1;
        v99 += 4;
      }

      while (v100 + 1 != a2);
    }
  }

  else if (!v98)
  {
    do
    {
      v106 = *v7;
      v105 = v7[1];
      v7 = v96;
      if (v105 < v106)
      {
        v107 = v96;
        do
        {
          *v107 = v106;
          v106 = *(v107 - 2);
          --v107;
        }

        while (v105 < v106);
        *v107 = v105;
      }

      ++v96;
    }

    while (v7 + 1 != a2);
  }

  return result;
}

double *std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,double *,true>(double *result, double *a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v7 = v6;
LABEL_3:
  v8 = 1 - a3;
  while (1)
  {
    v6 = v7;
    v9 = v8;
    v10 = a2 - v7;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v56 = v7[1];
          v57 = *(a2 - 1);
          if (v56 < v57)
          {
            v58 = *(v7 + 1);
          }

          else
          {
            v58 = *(a2 - 1);
          }

          if (v56 < v57)
          {
            v56 = *(a2 - 1);
          }

          *(a2 - 1) = v56;
          *(v7 + 1) = v58;
          v59 = *(a2 - 1);
          if (v59 < *v7)
          {
            v60 = *(a2 - 1);
          }

          else
          {
            v60 = *v7;
          }

          if (v59 < *v7)
          {
            v59 = *v7;
          }

          *(a2 - 1) = v59;
          v62 = *v7;
          v61 = v7[1];
          if (v60 >= v61)
          {
            v62 = v7[1];
            v61 = v60;
          }

          *v7 = v62;
          v7[1] = v61;
          return result;
        case 4:
          v86 = v7[1];
          v85 = v7[2];
          if (*v7 < v85)
          {
            v87 = *v7;
          }

          else
          {
            v87 = v7[2];
          }

          if (*v7 >= v85)
          {
            v85 = *v7;
          }

          v7[2] = v85;
          *v7 = v87;
          v88 = *(a2 - 1);
          if (v86 < v88)
          {
            v89 = v86;
          }

          else
          {
            v89 = *(a2 - 1);
          }

          if (v86 >= v88)
          {
            v88 = v86;
          }

          *(a2 - 1) = v88;
          v90 = *v7;
          if (*v7 < v89)
          {
            v91 = *v7;
          }

          else
          {
            v91 = v89;
          }

          if (*v7 < v89)
          {
            v90 = v89;
          }

          *v7 = v91;
          v7[1] = v90;
          v92 = v7[2];
          v93 = *(a2 - 1);
          if (v92 < v93)
          {
            v94 = v7[2];
          }

          else
          {
            v94 = *(a2 - 1);
          }

          if (v92 < v93)
          {
            v92 = *(a2 - 1);
          }

          *(a2 - 1) = v92;
          v95 = v7[1];
          if (v95 < v94)
          {
            v96 = v7[1];
          }

          else
          {
            v96 = v94;
          }

          if (v95 < v94)
          {
            v95 = v94;
          }

          v7[1] = v96;
          v7[2] = v95;
          return result;
        case 5:
          v63 = *v7;
          v64 = v7[1];
          if (*v7 < v64)
          {
            v65 = *v7;
          }

          else
          {
            v65 = v7[1];
          }

          if (*v7 < v64)
          {
            v63 = v7[1];
          }

          *v7 = v65;
          v7[1] = v63;
          v66 = v7[3];
          v67 = *(a2 - 1);
          if (v66 < v67)
          {
            v68 = *(v7 + 3);
          }

          else
          {
            v68 = *(a2 - 1);
          }

          if (v66 < v67)
          {
            v66 = *(a2 - 1);
          }

          *(a2 - 1) = v66;
          *(v7 + 3) = v68;
          v69 = *(a2 - 1);
          v70 = v7[2];
          if (v69 < v70)
          {
            v71 = *(a2 - 1);
          }

          else
          {
            v71 = v7[2];
          }

          if (v69 < v70)
          {
            v69 = v7[2];
          }

          *(a2 - 1) = v69;
          v73 = *(v7 + 2);
          v72 = v7[3];
          v74 = v7[1];
          if (v71 >= v72)
          {
            v73 = *(v7 + 3);
            v72 = v71;
          }

          *(v7 + 2) = v73;
          v7[3] = v72;
          v75 = *(a2 - 1);
          if (v74 < v75)
          {
            v76 = v74;
          }

          else
          {
            v76 = *(a2 - 1);
          }

          if (v74 >= v75)
          {
            v75 = v74;
          }

          *(a2 - 1) = v75;
          v77 = *v7;
          v79 = v7[2];
          v78 = v7[3];
          if (v78 < *v7)
          {
            v80 = v7[3];
          }

          else
          {
            v80 = *v7;
          }

          if (v78 < *v7)
          {
            v78 = *v7;
          }

          if (v80 >= v79)
          {
            v77 = v7[2];
            v79 = v80;
          }

          if (v78 < v76)
          {
            v81 = v78;
          }

          else
          {
            v81 = v76;
          }

          if (v78 < v76)
          {
            v78 = v76;
          }

          if (v81 >= v79)
          {
            v76 = v79;
          }

          *v7 = v77;
          v7[1] = v76;
          if (v81 < v79)
          {
            v82 = v79;
          }

          else
          {
            v82 = v81;
          }

          v7[2] = v82;
          v7[3] = v78;
          return result;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v83 = *(a2 - 1);
        v84 = *v7;
        if (v83 < *v7)
        {
          *v7 = v83;
          *(a2 - 1) = v84;
        }

        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (v9 == 1)
    {
      if (v7 != a2)
      {
        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less &,double *,double *>(v7, a2, a2, &v109);
      }

      return result;
    }

    v11 = v10 >> 1;
    v12 = *(a2 - 1);
    if (v10 < 0x81)
    {
      if (*v7 < v12)
      {
        v45 = *v7;
      }

      else
      {
        v45 = *(a2 - 1);
      }

      if (*v7 >= v12)
      {
        v12 = *v7;
      }

      *(a2 - 1) = v12;
      *v7 = v45;
      v46 = *(a2 - 1);
      v47 = v7[v11];
      if (v46 < v47)
      {
        v48 = *(a2 - 1);
      }

      else
      {
        v48 = v7[v11];
      }

      if (v46 < v47)
      {
        v46 = v7[v11];
      }

      *(a2 - 1) = v46;
      v49 = *v7;
      v50 = v7[v11];
      v51 = v48 < *v7;
      if (v48 < *v7)
      {
        v49 = v7[v11];
      }

      v7[v11] = v49;
      v52 = *v7;
      if (!v51)
      {
        v52 = v48;
      }

      *v7 = v52;
      if (a4)
      {
        goto LABEL_90;
      }
    }

    else
    {
      v13 = &v7[v11];
      if (*v13 < v12)
      {
        v14 = *v13;
      }

      else
      {
        v14 = *(a2 - 1);
      }

      if (*v13 >= v12)
      {
        v12 = *v13;
      }

      *(a2 - 1) = v12;
      *v13 = v14;
      v15 = *(a2 - 1);
      if (v15 < *v7)
      {
        v16 = *(a2 - 1);
      }

      else
      {
        v16 = *v7;
      }

      if (v15 < *v7)
      {
        v15 = *v7;
      }

      *(a2 - 1) = v15;
      v17 = *v13;
      v18 = v16 < *v13;
      if (v16 < *v13)
      {
        v17 = *v7;
      }

      *v7 = v17;
      v20 = *(v13 - 1);
      v19 = *v13;
      if (!v18)
      {
        v19 = v16;
      }

      *v13 = v19;
      v21 = *(a2 - 2);
      if (v20 < v21)
      {
        v22 = v20;
      }

      else
      {
        v22 = *(a2 - 2);
      }

      if (v20 >= v21)
      {
        v21 = v20;
      }

      *(a2 - 2) = v21;
      *(v13 - 1) = v22;
      v23 = *(a2 - 2);
      v24 = v7[1];
      if (v23 < v24)
      {
        v25 = *(a2 - 2);
      }

      else
      {
        v25 = v7[1];
      }

      if (v23 < v24)
      {
        v23 = v7[1];
      }

      *(a2 - 2) = v23;
      v26 = *(v13 - 1);
      v27 = v25 < v26;
      if (v25 < v26)
      {
        v26 = v7[1];
      }

      v7[1] = v26;
      v28 = *(v13 - 1);
      if (!v27)
      {
        v28 = v25;
      }

      *(v13 - 1) = v28;
      v29 = v13[1];
      v30 = *(a2 - 3);
      if (v29 < v30)
      {
        v31 = *(v13 + 1);
      }

      else
      {
        v31 = *(a2 - 3);
      }

      if (v29 < v30)
      {
        v29 = *(a2 - 3);
      }

      *(a2 - 3) = v29;
      *(v13 + 1) = v31;
      v32 = *(a2 - 3);
      v33 = v7[2];
      if (v32 < v33)
      {
        v34 = *(a2 - 3);
      }

      else
      {
        v34 = v7[2];
      }

      if (v32 < v33)
      {
        v32 = v7[2];
      }

      *(a2 - 3) = v32;
      v35 = v13[1];
      v36 = v34 < v35;
      if (v34 < v35)
      {
        v35 = v7[2];
      }

      v7[2] = v35;
      v38 = *v13;
      v37 = v13[1];
      if (!v36)
      {
        v37 = v34;
      }

      v39 = *(v13 - 1);
      if (v38 < v37)
      {
        v40 = *v13;
      }

      else
      {
        v40 = v37;
      }

      if (v38 >= v37)
      {
        v37 = *v13;
      }

      if (v37 < v39)
      {
        v41 = v37;
      }

      else
      {
        v41 = *(v13 - 1);
      }

      if (v37 < v39)
      {
        v42 = *(v13 - 1);
      }

      else
      {
        v42 = v37;
      }

      if (v41 < v40)
      {
        v43 = *(v13 - 1);
      }

      else
      {
        v43 = v40;
      }

      if (v41 < v40)
      {
        v41 = v40;
      }

      *(v13 - 1) = v43;
      *v13 = v41;
      v13[1] = v42;
      v44 = *v7;
      *v7 = v41;
      *v13 = v44;
      if (a4)
      {
        goto LABEL_90;
      }
    }

    if (*(v7 - 1) >= *v7)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,double *,std::ranges::less &>(v7, a2);
      v7 = result;
      goto LABEL_95;
    }

LABEL_90:
    v53 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,double *,std::ranges::less>(v7, a2);
    if ((v54 & 1) == 0)
    {
      goto LABEL_93;
    }

    v55 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,double *>(v7, v53);
    v7 = v53 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,double *>(v53 + 1, a2);
    if (result)
    {
      a3 = -v9;
      a2 = v53;
      if (v55)
      {
        return result;
      }

      goto LABEL_2;
    }

    v8 = v9 + 1;
    if (!v55)
    {
LABEL_93:
      result = std::__introsort<std::_ClassicAlgPolicy,std::ranges::less,double *,true>(v6, v53, -v9, a4 & 1);
      v7 = v53 + 1;
LABEL_95:
      a4 = 0;
      a3 = -v9;
      goto LABEL_3;
    }
  }

  v97 = v7 + 1;
  v99 = v7 == a2 || v97 == a2;
  if (a4)
  {
    if (!v99)
    {
      v100 = 0;
      v101 = v7;
      do
      {
        v103 = *v101;
        v102 = v101[1];
        v101 = v97;
        if (v102 < v103)
        {
          v104 = v100;
          while (1)
          {
            *(v7 + v104 + 8) = v103;
            if (!v104)
            {
              break;
            }

            v103 = *(v7 + v104 - 8);
            v104 -= 8;
            if (v102 >= v103)
            {
              v105 = (v7 + v104 + 8);
              goto LABEL_194;
            }
          }

          v105 = v7;
LABEL_194:
          *v105 = v102;
        }

        v97 = v101 + 1;
        v100 += 8;
      }

      while (v101 + 1 != a2);
    }
  }

  else if (!v99)
  {
    do
    {
      v107 = *v6;
      v106 = v6[1];
      v6 = v97;
      if (v106 < v107)
      {
        v108 = v97;
        do
        {
          *v108 = v107;
          v107 = *(v108 - 2);
          --v108;
        }

        while (v106 < v107);
        *v108 = v106;
      }

      ++v97;
    }

    while (v6 + 1 != a2);
  }

  return result;
}

char *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,char *,std::ranges::less &>(char *a1, char *a2)
{
  v2 = *a1;
  if (v2 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = *++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = *++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

char *std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,char *,std::ranges::less>(char *a1, char *a2)
{
  v2 = *a1;
  if (v2 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = *++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  v7 = v3;
  if (v3 < a2)
  {
    v8 = *v3;
    *v3 = *a2;
    v7 = v3 + 1;
    *a2 = v8;
  }

  v9 = a2 - 1;
  v10 = a2 - 1 - v7;
  if (v10 < 127)
  {
    v11 = 0;
    v87 = 1;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = vdupq_n_s8(v2);
  v14 = vdupq_n_s64(1uLL);
  v15 = vdupq_n_s64(0x10uLL);
  do
  {
    if (v12)
    {
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0uLL;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = xmmword_1922FB310;
      v20 = xmmword_1922FB300;
      v21 = 0uLL;
      v22 = xmmword_1922FB2F0;
      v23 = 0uLL;
      v24 = xmmword_1922FB2E0;
      v25 = 0uLL;
      v27 = xmmword_1922FB2D0;
      v26 = xmmword_1922FB2C0;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = xmmword_1922FB2B0;
      v31 = xmmword_1922FB2A0;
      do
      {
        v32 = vcgeq_s8(*&v7[v12], v13);
        v33 = vmovl_high_u8(v32);
        v34 = vmovl_high_u16(v33);
        v35.i64[0] = v34.u32[2];
        v35.i64[1] = v34.u32[3];
        v36 = vandq_s8(v35, v14);
        v35.i64[0] = v34.u32[0];
        v35.i64[1] = v34.u32[1];
        v37 = vandq_s8(v35, v14);
        v38 = vmovl_u16(*v33.i8);
        v35.i64[0] = v38.u32[2];
        v35.i64[1] = v38.u32[3];
        v39 = vandq_s8(v35, v14);
        v40 = vmovl_u8(*v32.i8);
        v41 = vmovl_high_u16(v40);
        v35.i64[0] = v41.u32[2];
        v35.i64[1] = v41.u32[3];
        v42 = vandq_s8(v35, v14);
        v35.i64[0] = v38.u32[0];
        v35.i64[1] = v38.u32[1];
        v43 = vandq_s8(v35, v14);
        v35.i64[0] = v41.u32[0];
        v35.i64[1] = v41.u32[1];
        v44 = vandq_s8(v35, v14);
        v45 = vmovl_u16(*v40.i8);
        v35.i64[0] = v45.u32[2];
        v35.i64[1] = v45.u32[3];
        v46 = vandq_s8(v35, v14);
        v35.i64[0] = v45.u32[0];
        v35.i64[1] = v45.u32[1];
        v29 = vorrq_s8(vshlq_u64(v36, v31), v29);
        v28 = vorrq_s8(vshlq_u64(v37, v30), v28);
        v25 = vorrq_s8(vshlq_u64(v39, v26), v25);
        v21 = vorrq_s8(vshlq_u64(v42, v24), v21);
        v23 = vorrq_s8(vshlq_u64(v43, v27), v23);
        v18 = vorrq_s8(vshlq_u64(v44, v22), v18);
        v17 = vorrq_s8(vshlq_u64(v46, v20), v17);
        v16 = vorrq_s8(vshlq_u64(vandq_s8(v35, v14), v19), v16);
        v12 += 16;
        v22 = vaddq_s64(v22, v15);
        v20 = vaddq_s64(v20, v15);
        v19 = vaddq_s64(v19, v15);
        v24 = vaddq_s64(v24, v15);
        v27 = vaddq_s64(v27, v15);
        v26 = vaddq_s64(v26, v15);
        v30 = vaddq_s64(v30, v15);
        v31 = vaddq_s64(v31, v15);
      }

      while (v12 != 64);
      v47 = vorrq_s8(vorrq_s8(vorrq_s8(v16, v23), vorrq_s8(v18, v28)), vorrq_s8(vorrq_s8(v17, v25), vorrq_s8(v21, v29)));
      v12 = vorr_s8(*v47.i8, *&vextq_s8(v47, v47, 8uLL));
      if (v11)
      {
LABEL_16:
        if (!v12)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }
    }

    v48 = xmmword_1922FB2A0;
    v49 = xmmword_1922FB2B0;
    v50 = xmmword_1922FB2C0;
    v51 = 0uLL;
    v52 = -15;
    v53 = xmmword_1922FB2D0;
    v54 = 0uLL;
    v55 = 0uLL;
    v56 = xmmword_1922FB2E0;
    v57 = 0uLL;
    v58 = xmmword_1922FB2F0;
    v59 = 0uLL;
    v60 = 0uLL;
    v61 = xmmword_1922FB300;
    v62 = 0uLL;
    v63 = 0uLL;
    v64 = xmmword_1922FB310;
    do
    {
      v65 = vrev64q_s8(*&v9[v52]);
      v66 = vcgtq_s8(v13, vextq_s8(v65, v65, 8uLL));
      v67 = vmovl_high_u8(v66);
      v68 = vmovl_high_u16(v67);
      v69 = vdupq_n_s64(1uLL);
      v70.i64[0] = v68.u32[2];
      v70.i64[1] = v68.u32[3];
      v71 = vandq_s8(v70, v69);
      v70.i64[0] = v68.u32[0];
      v70.i64[1] = v68.u32[1];
      v72 = vandq_s8(v70, v69);
      v73 = vmovl_u16(*v67.i8);
      v70.i64[0] = v73.u32[2];
      v70.i64[1] = v73.u32[3];
      v74 = vandq_s8(v70, v69);
      v75 = vmovl_u8(*v66.i8);
      v76 = vmovl_high_u16(v75);
      v70.i64[0] = v76.u32[2];
      v70.i64[1] = v76.u32[3];
      v77 = vandq_s8(v70, v69);
      v70.i64[0] = v73.u32[0];
      v70.i64[1] = v73.u32[1];
      v78 = vandq_s8(v70, v69);
      v70.i64[0] = v76.u32[0];
      v70.i64[1] = v76.u32[1];
      v79 = vandq_s8(v70, v69);
      v80 = vmovl_u16(*v75.i8);
      v70.i64[0] = v80.u32[2];
      v70.i64[1] = v80.u32[3];
      v81 = vandq_s8(v70, v69);
      v70.i64[0] = v80.u32[0];
      v70.i64[1] = v80.u32[1];
      v63 = vorrq_s8(vshlq_u64(v71, v48), v63);
      v62 = vorrq_s8(vshlq_u64(v72, v49), v62);
      v60 = vorrq_s8(vshlq_u64(v74, v50), v60);
      v57 = vorrq_s8(vshlq_u64(v77, v56), v57);
      v59 = vorrq_s8(vshlq_u64(v78, v53), v59);
      v55 = vorrq_s8(vshlq_u64(v79, v58), v55);
      v54 = vorrq_s8(vshlq_u64(v81, v61), v54);
      v51 = vorrq_s8(vshlq_u64(vandq_s8(v70, v69), v64), v51);
      v82 = vdupq_n_s64(0x10uLL);
      v58 = vaddq_s64(v58, v82);
      v61 = vaddq_s64(v61, v82);
      v64 = vaddq_s64(v64, v82);
      v56 = vaddq_s64(v56, v82);
      v53 = vaddq_s64(v53, v82);
      v50 = vaddq_s64(v50, v82);
      v49 = vaddq_s64(v49, v82);
      v48 = vaddq_s64(v48, v82);
      v52 -= 16;
    }

    while (v52 != -79);
    v83 = vorrq_s8(vorrq_s8(vorrq_s8(v51, v59), vorrq_s8(v55, v62)), vorrq_s8(vorrq_s8(v54, v60), vorrq_s8(v57, v63)));
    v11 = vorr_s8(*v83.i8, *&vextq_s8(v83, v83, 8uLL));
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_24:
    if (v11)
    {
      do
      {
        v84 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v85 = &v9[-__clz(__rbit64(v11))];
        v86 = v7[v84];
        v7[v84] = *v85;
        *v85 = v86;
        v11 &= v11 - 1;
      }

      while (v11 && v12);
    }

LABEL_27:
    v7 += 64 * (v12 == 0);
    v87 = v11 == 0;
    if (v11)
    {
      v88 = 0;
    }

    else
    {
      v88 = -64;
    }

    v9 += v88;
    v10 = v9 - v7;
  }

  while (v9 - v7 > 126);
  if (!(v12 | v11))
  {
LABEL_36:
    v89 = (v10 + 1) / 2;
    v90 = v10 + 1 - v89;
LABEL_37:
    if (v89 < 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      for (i = 0; i != v89; ++i)
      {
        v12 |= (v7[i] >= v2) << i;
      }
    }

    v91 = v89;
    v89 = v90;
    if (v87)
    {
      goto LABEL_43;
    }

    goto LABEL_46;
  }

  v89 = v10 - 63;
  v90 = 64;
  v91 = 64;
  if (!v12)
  {
    goto LABEL_37;
  }

  if (v11)
  {
    goto LABEL_46;
  }

LABEL_43:
  if (v89 >= 1)
  {
    v11 = 0;
    v93 = 0;
    v94 = v9;
    do
    {
      v95 = *v94--;
      v11 |= (v95 < v2) << v93++;
    }

    while (v89 != v93);
  }

LABEL_46:
  if (v12 && v11)
  {
    do
    {
      v96 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v97 = &v9[-__clz(__rbit64(v11))];
      v98 = v7[v96];
      v7[v96] = *v97;
      *v97 = v98;
      v11 &= v11 - 1;
    }

    while (v11 && v12);
  }

  if (v12)
  {
    v91 = 0;
  }

  v99 = &v7[v91];
  if (v11)
  {
    v89 = 0;
  }

  v100 = &v9[-v89];
  if (v12)
  {
    do
    {
      v101 = __clz(v12) ^ 0x3F;
      v102 = &v99[v101];
      if (v100 != &v99[v101])
      {
        v103 = *v102;
        *v102 = *v100;
        *v100 = v103;
      }

      v12 &= ~(-1 << v101);
      --v100;
    }

    while (v12);
    v99 = v100 + 1;
  }

  else
  {
    for (; v11; ++v99)
    {
      v104 = __clz(v11) ^ 0x3F;
      v105 = &v100[-v104];
      if (v99 != &v100[-v104])
      {
        v106 = *v105;
        *v105 = *v99;
        *v99 = v106;
      }

      v11 &= ~(-1 << v104);
    }
  }

  v107 = v99 - 1;
  if (v107 != a1)
  {
    *a1 = *v107;
  }

  *v107 = v2;
  return v107;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::ranges::less,char *>(char *a1, char *a2)
{
  v2 = a2 - a1;
  if (a2 - a1 > 2)
  {
    switch(v2)
    {
      case 3:
        v27 = a1[1];
        v28 = *(a2 - 1);
        if (v27 >= v28)
        {
          v29 = *(a2 - 1);
        }

        else
        {
          v29 = a1[1];
        }

        if (v27 <= v28)
        {
          LOBYTE(v27) = *(a2 - 1);
        }

        *(a2 - 1) = v27;
        a1[1] = v29;
        v30 = *(a2 - 1);
        v31 = *a1;
        if (v30 >= v31)
        {
          v32 = *a1;
        }

        else
        {
          v32 = *(a2 - 1);
        }

        if (v30 <= v31)
        {
          LOBYTE(v30) = *a1;
        }

        *(a2 - 1) = v30;
        v33 = a1[1];
        v34 = *a1;
        if (v32 >= v33)
        {
          v34 = a1[1];
        }

        *a1 = v34;
        if (v32 > v33)
        {
          LOBYTE(v33) = v32;
        }

        a1[1] = v33;
        return 1;
      case 4:
        v50 = *a1;
        v51 = a1[2];
        if (v50 >= v51)
        {
          v52 = a1[2];
        }

        else
        {
          v52 = *a1;
        }

        if (v50 <= v51)
        {
          LOBYTE(v50) = a1[2];
        }

        a1[2] = v50;
        *a1 = v52;
        v53 = a1[1];
        v54 = *(a2 - 1);
        if (v53 >= v54)
        {
          v55 = *(a2 - 1);
        }

        else
        {
          v55 = a1[1];
        }

        if (v53 <= v54)
        {
          LOBYTE(v53) = *(a2 - 1);
        }

        *(a2 - 1) = v53;
        v56 = *a1;
        if (v56 >= v55)
        {
          v57 = v55;
        }

        else
        {
          v57 = *a1;
        }

        if (v56 <= v55)
        {
          LOBYTE(v56) = v55;
        }

        a1[1] = v56;
        *a1 = v57;
        v58 = a1[2];
        v59 = *(a2 - 1);
        if (v58 >= v59)
        {
          v60 = *(a2 - 1);
        }

        else
        {
          v60 = a1[2];
        }

        if (v58 <= v59)
        {
          LOBYTE(v58) = *(a2 - 1);
        }

        *(a2 - 1) = v58;
        v61 = a1[1];
        if (v61 >= v60)
        {
          v62 = v60;
        }

        else
        {
          v62 = a1[1];
        }

        if (v61 <= v60)
        {
          LOBYTE(v61) = v60;
        }

        a1[2] = v61;
        a1[1] = v62;
        return 1;
      case 5:
        v5 = *a1;
        v6 = a1[1];
        if (v5 >= v6)
        {
          v7 = a1[1];
        }

        else
        {
          v7 = *a1;
        }

        if (v5 <= v6)
        {
          LOBYTE(v5) = a1[1];
        }

        a1[1] = v5;
        *a1 = v7;
        v8 = a1[3];
        v9 = *(a2 - 1);
        if (v8 >= v9)
        {
          v10 = *(a2 - 1);
        }

        else
        {
          v10 = a1[3];
        }

        if (v8 <= v9)
        {
          LOBYTE(v8) = *(a2 - 1);
        }

        *(a2 - 1) = v8;
        a1[3] = v10;
        v11 = *(a2 - 1);
        v12 = a1[2];
        if (v11 >= v12)
        {
          v13 = a1[2];
        }

        else
        {
          v13 = *(a2 - 1);
        }

        if (v11 <= v12)
        {
          LOBYTE(v11) = a1[2];
        }

        *(a2 - 1) = v11;
        v14 = a1[3];
        v15 = a1[2];
        if (v13 >= v14)
        {
          v15 = a1[3];
        }

        a1[2] = v15;
        if (v13 > v14)
        {
          LOBYTE(v14) = v13;
        }

        a1[3] = v14;
        v16 = a1[1];
        v17 = *(a2 - 1);
        if (v16 >= v17)
        {
          v18 = *(a2 - 1);
        }

        else
        {
          v18 = a1[1];
        }

        if (v16 <= v17)
        {
          LOBYTE(v16) = *(a2 - 1);
        }

        *(a2 - 1) = v16;
        v19 = a1[3];
        v20 = *a1;
        if (v19 >= v20)
        {
          v21 = *a1;
        }

        else
        {
          v21 = a1[3];
        }

        if (v19 <= v20)
        {
          v19 = *a1;
        }

        v22 = a1[2];
        if (v21 >= v22)
        {
          LOBYTE(v20) = a1[2];
        }

        *a1 = v20;
        if (v21 <= v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = v21;
        }

        if (v19 >= v18)
        {
          v24 = v18;
        }

        else
        {
          v24 = v19;
        }

        if (v19 <= v18)
        {
          LOBYTE(v19) = v18;
        }

        a1[3] = v19;
        if (v24 >= v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = v18;
        }

        a1[1] = v25;
        if (v24 <= v23)
        {
          v26 = v23;
        }

        else
        {
          v26 = v24;
        }

        a1[2] = v26;
        return 1;
    }
  }

  else
  {
    if ((a2 - a1) < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *(a2 - 1);
      v4 = *a1;
      if (v3 < v4)
      {
        *a1 = v3;
        *(a2 - 1) = v4;
      }

      return 1;
    }
  }

  v36 = a1 + 2;
  v35 = a1[2];
  v37 = a1[1];
  if (v37 >= v35)
  {
    v38 = a1[2];
  }

  else
  {
    v38 = a1[1];
  }

  if (v37 > v35)
  {
    v35 = a1[1];
  }

  v39 = *a1;
  if (v35 >= v39)
  {
    v40 = *a1;
  }

  else
  {
    v40 = v35;
  }

  if (v35 <= v39)
  {
    LOBYTE(v35) = *a1;
  }

  *v36 = v35;
  if (v39 >= v38)
  {
    v41 = v38;
  }

  else
  {
    v41 = v39;
  }

  *a1 = v41;
  if (v39 >= v38)
  {
    v42 = v40;
  }

  else
  {
    v42 = v38;
  }

  a1[1] = v42;
  v43 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    v46 = *v43;
    v47 = *v36;
    if (v46 < v47)
    {
      v48 = v44;
      while (1)
      {
        a1[v48 + 3] = v47;
        if (v48 == -2)
        {
          break;
        }

        v47 = a1[v48-- + 1];
        if (v46 >= v47)
        {
          v49 = &a1[v48 + 3];
          goto LABEL_94;
        }
      }

      v49 = a1;
LABEL_94:
      *v49 = v46;
      if (++v45 == 8)
      {
        return v43 + 1 == a2;
      }
    }

    v36 = v43;
    ++v44;
    if (++v43 == a2)
    {
      return 1;
    }
  }
}