void CRDetectorPolygonExtractor::generatePivotsPolygon(uint64_t a1@<X0>, int8x16_t **a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = 126 - 2 * __clz((v7 - v6) >> 3);
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  std::__introsort<std::_ClassicAlgPolicy,CRDetectorPolygonExtractor::generatePivotsPolygon(std::vector<PixelPosition> &)::$_0 &,PixelPosition*,false>(v6, v7, v9, 1);
  PivotCenters = CRDetectorPolygonExtractor::generatePivotCenters(a1, a2, __p);
  if (*(a1 + 24) == 1)
  {
    CRDetectorPolygonExtractor::smoothPivotCenters(PivotCenters, __p);
    CRDetectorPolygonExtractor::generatePivotBars(a1, __p);
    CRDetectorPolygonExtractor::generateEdgePoints(a1, a2, __p);
    CRDetectorPolygonExtractor::smoothPivotAngles(a1);
    CRDetectorPolygonExtractor::composePivots(a1);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<PixelPosition>::__init_with_size[abi:ne200100]<PixelPosition*,PixelPosition*>(a3, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1B41E65A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
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
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (v18 && (v18[3] & 1) == 0)
      {
LABEL_58:
        v17 = v7;
      }

      else
      {
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_71;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_67;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v23 && (v23[3] & 1) == 0)
  {
LABEL_67:
    v24 = v7;
    goto LABEL_68;
  }

  *(v24 + 24) = 1;
  *(v7 + 24) = 0;
  v32 = *v24;
  v7[1] = *v24;
  if (v32)
  {
    *(v32 + 16) = v7;
  }

  v33 = v7[2];
  v24[2] = v33;
  v33[*v33 != v7] = v24;
  *v24 = v7;
  v7[2] = v24;
  v23 = v7;
LABEL_68:
  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_71:
  *(v28 + 16) = v29;
  return result;
}

void std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(*a1);
    std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

int8x16_t *std::__introsort<std::_ClassicAlgPolicy,CRDetectorPolygonExtractor::generatePivotsPolygon(std::vector<PixelPosition> &)::$_0 &,PixelPosition*,false>(int8x16_t *result, int8x16_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        if (a2[-1].i32[2] >= v8->i32[0])
        {
          return result;
        }

        v63 = v8->i64[0];
LABEL_110:
        v8->i64[0] = a2[-1].i64[1];
LABEL_111:
        a2[-1].i64[1] = v63;
        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v66 = v8->i32[2];
      v67 = v8->i32[0];
      LODWORD(v68) = v8[1].i32[0];
      if (v66 >= v8->i32[0])
      {
        if (v68 < v66)
        {
          v68 = v8->i64[1];
          v109 = v8[1].i64[0];
          v8->i64[1] = v109;
          v8[1].i64[0] = v68;
          if (v67 > v109)
          {
            v110 = v8->i64[0];
            v8->i64[0] = v109;
            v8->i64[1] = v110;
          }
        }
      }

      else
      {
        v69 = v8->i64[0];
        if (v68 < v66)
        {
          v8->i64[0] = v8[1].i64[0];
          goto LABEL_191;
        }

        v8->i64[0] = v8->i64[1];
        v8->i64[1] = v69;
        if (v68 < v69)
        {
          v8->i64[1] = v8[1].i64[0];
LABEL_191:
          v8[1].i64[0] = v69;
          LODWORD(v68) = v69;
        }
      }

      if (a2[-1].i32[2] < v68)
      {
        v116 = v8[1].i64[0];
        v8[1].i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v116;
        if (v8[1].i32[0] < v8->i32[2])
        {
          v118 = v8->i64[1];
          v117 = v8[1].i64[0];
          v8->i64[1] = v117;
          v8[1].i64[0] = v118;
          if (v8->i32[0] > v117)
          {
            v119 = v8->i64[0];
            v8->i64[0] = v117;
            v8->i64[1] = v119;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CRDetectorPolygonExtractor::generatePivotsPolygon(std::vector<PixelPosition> &)::$_0 &,PixelPosition*,0>(v8->i64, &v8->i32[2], v8[1].i32, &v8[1].i64[1], &a2[-1].i64[1]);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v70 = &v8->u64[1];
      v72 = v8 == a2 || v70 == a2;
      if (a4)
      {
        if (!v72)
        {
          v73 = 0;
          v74 = v8;
          do
          {
            v75 = v74->i32[2];
            v76 = v74->i32[0];
            v74 = v70;
            if (v75 < v76)
            {
              v77 = v70->i64[0];
              v78 = v73;
              while (1)
              {
                *(&v8->i64[1] + v78) = *(v8->i64 + v78);
                if (!v78)
                {
                  break;
                }

                v79 = *(&v8->i32[-2] + v78);
                v78 -= 8;
                if (v79 <= v77)
                {
                  v80 = (&v8->i64[1] + v78);
                  goto LABEL_130;
                }
              }

              v80 = v8;
LABEL_130:
              *v80 = v77;
            }

            v70 = &v74->u64[1];
            v73 += 8;
          }

          while (&v74->u64[1] != a2);
        }
      }

      else if (!v72)
      {
        do
        {
          v111 = v7->i32[2];
          v112 = v7->i32[0];
          v7 = v70;
          if (v111 < v112)
          {
            v113 = v70->i64[0];
            do
            {
              v114 = v70;
              v115 = v70[-1].i64[1];
              v70 = (v70 - 8);
              *v114 = v115;
            }

            while (*(v114 - 4) > v113);
            v70->i64[0] = v113;
          }

          v70 = &v7->u64[1];
        }

        while (&v7->u64[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v81 = (v9 - 2) >> 1;
        v82 = v81;
        do
        {
          v83 = v82;
          if (v81 >= v82)
          {
            v84 = (2 * v82) | 1;
            v85 = &v8->i32[2 * v84];
            if (2 * v83 + 2 >= v9)
            {
              v86 = *v85;
            }

            else
            {
              v86 = *v85;
              v87 = v85[2];
              if (*v85 <= v87)
              {
                v86 = v85[2];
              }

              if (*v85 < v87)
              {
                v85 += 2;
                v84 = 2 * v83 + 2;
              }
            }

            v88 = &v8->i64[v83];
            if (v86 >= *v88)
            {
              v89 = *v88;
              do
              {
                v90 = v88;
                v88 = v85;
                *v90 = *v85;
                if (v81 < v84)
                {
                  break;
                }

                v91 = (2 * v84) | 1;
                v85 = &v8->i32[2 * v91];
                v84 = 2 * v84 + 2;
                if (v84 >= v9)
                {
                  v92 = *v85;
                  v84 = v91;
                }

                else
                {
                  v92 = *v85;
                  result = v85[2];
                  if (*v85 <= result)
                  {
                    v92 = v85[2];
                  }

                  if (*v85 >= result)
                  {
                    v84 = v91;
                  }

                  else
                  {
                    v85 += 2;
                  }
                }
              }

              while (v92 >= v89);
              *v88 = v89;
            }
          }

          v82 = v83 - 1;
        }

        while (v83);
        do
        {
          v93 = 0;
          v94 = v8->i64[0];
          v95 = v8;
          do
          {
            v96 = &v95[v93];
            v97 = (v96 + 1);
            v98 = (2 * v93) | 1;
            v93 = 2 * v93 + 2;
            if (v93 >= v9)
            {
              v93 = v98;
            }

            else
            {
              v100 = *(v96 + 4);
              v99 = (v96 + 2);
              if (v99[-1].i32[2] >= v100)
              {
                v93 = v98;
              }

              else
              {
                v97 = v99;
              }
            }

            *v95 = v97->i64[0];
            v95 = v97;
          }

          while (v93 <= ((v9 - 2) >> 1));
          a2 = (a2 - 8);
          if (v97 == a2)
          {
            v97->i64[0] = v94;
          }

          else
          {
            v97->i64[0] = a2->i64[0];
            a2->i64[0] = v94;
            v101 = (v97 - v8 + 8) >> 3;
            v102 = v101 < 2;
            v103 = v101 - 2;
            if (!v102)
            {
              v104 = v103 >> 1;
              v105 = &v8->i64[v104];
              if (*v105 < v97->i32[0])
              {
                v106 = v97->i64[0];
                do
                {
                  v107 = v97;
                  v97 = v105;
                  *v107 = *v105;
                  if (!v104)
                  {
                    break;
                  }

                  v104 = (v104 - 1) >> 1;
                  v105 = &v8->i64[v104];
                }

                while (*v105 < v106);
                v97->i64[0] = v106;
              }
            }
          }

          v102 = v9-- <= 2;
        }

        while (!v102);
      }

      return result;
    }

    v10 = &v8->i32[2 * (v9 >> 1)];
    v11 = v10;
    v12 = a2[-1].i32[2];
    if (v9 >= 0x81)
    {
      v13 = *v10;
      if (*v10 >= v8->i32[0])
      {
        if (v12 < v13)
        {
          v17 = *v10;
          *v10 = a2[-1].i64[1];
          a2[-1].i64[1] = v17;
          if (*v10 < v8->i32[0])
          {
            v18 = v8->i64[0];
            v8->i64[0] = *v10;
            *v10 = v18;
          }
        }
      }

      else
      {
        v14 = v8->i64[0];
        if (v12 < v13)
        {
          v8->i64[0] = a2[-1].i64[1];
          goto LABEL_27;
        }

        v8->i64[0] = *v10;
        *v10 = v14;
        if (a2[-1].i32[2] < v14)
        {
          *v10 = a2[-1].i64[1];
LABEL_27:
          a2[-1].i64[1] = v14;
        }
      }

      v21 = (v10 - 2);
      v22 = *(v10 - 2);
      v23 = a2[-1].i32[0];
      if (v22 >= v8->i32[2])
      {
        if (v23 < v22)
        {
          v25 = *v21;
          *v21 = a2[-1].i64[0];
          a2[-1].i64[0] = v25;
          if (*v21 < v8->i32[2])
          {
            v26 = v8->i64[1];
            v8->i64[1] = *v21;
            *v21 = v26;
          }
        }
      }

      else
      {
        v24 = v8->i64[1];
        if (v23 < v22)
        {
          v8->i64[1] = a2[-1].i64[0];
          goto LABEL_39;
        }

        v8->i64[1] = *v21;
        *v21 = v24;
        if (a2[-1].i32[0] < v24)
        {
          *v21 = a2[-1].i64[0];
LABEL_39:
          a2[-1].i64[0] = v24;
        }
      }

      v29 = v10[2];
      v27 = (v10 + 2);
      v28 = v29;
      v30 = a2[-2].i32[2];
      if (v29 >= v8[1].i32[0])
      {
        if (v30 < v28)
        {
          v32 = *v27;
          *v27 = a2[-2].i64[1];
          a2[-2].i64[1] = v32;
          if (*v27 < v8[1].i32[0])
          {
            v33 = v8[1].i64[0];
            v8[1].i64[0] = *v27;
            *v27 = v33;
          }
        }
      }

      else
      {
        v31 = v8[1].i64[0];
        if (v30 < v28)
        {
          v8[1].i64[0] = a2[-2].i64[1];
          goto LABEL_48;
        }

        v8[1].i64[0] = *v27;
        *v27 = v31;
        if (a2[-2].i32[2] < v31)
        {
          *v27 = a2[-2].i64[1];
LABEL_48:
          a2[-2].i64[1] = v31;
        }
      }

      v34 = *v11;
      v35 = *v21;
      v36 = *v27;
      if (*v11 >= *v21)
      {
        v37 = *v11;
        if (v36 < v34)
        {
          v38 = *v27;
          *v11 = *v27;
          *v27 = v37;
          if (v35 <= v38)
          {
            v37 = v38;
          }

          else
          {
            v37 = *v21;
            *v21 = v38;
            *v11 = v37;
          }
        }
      }

      else
      {
        v37 = *v21;
        if (v36 >= v34)
        {
          *v21 = *v11;
          *v11 = v37;
          if (v36 < v37)
          {
            v39 = *v27;
            *v11 = *v27;
            *v27 = v37;
            v37 = v39;
          }
        }

        else
        {
          *v21 = *v27;
          *v27 = v37;
          v37 = *v11;
        }
      }

      v40 = v8->i64[0];
      v8->i64[0] = v37;
      *v11 = v40;
      goto LABEL_59;
    }

    v15 = v8->i32[0];
    if (v8->i32[0] >= *v11)
    {
      if (v12 < v15)
      {
        v19 = v8->i64[0];
        v8->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v19;
        if (v8->i32[0] < *v11)
        {
          v20 = *v11;
          *v11 = v8->i64[0];
          v8->i64[0] = v20;
        }
      }

      goto LABEL_59;
    }

    v16 = *v11;
    if (v12 < v15)
    {
      *v11 = a2[-1].i64[1];
LABEL_36:
      a2[-1].i64[1] = v16;
      goto LABEL_59;
    }

    *v11 = v8->i64[0];
    v8->i64[0] = v16;
    if (a2[-1].i32[2] < v16)
    {
      v8->i64[0] = a2[-1].i64[1];
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v41 = v8->i64[0];
LABEL_62:
      v42 = 0;
      do
      {
        v43 = v8->i32[v42 + 2];
        v42 += 2;
      }

      while (v43 < v41);
      v44 = &v8->i8[v42 * 4];
      v45 = a2;
      if (v42 == 2)
      {
        v45 = a2;
        do
        {
          if (v44 >= v45)
          {
            break;
          }

          v47 = v45[-1].i32[2];
          v45 = (v45 - 8);
        }

        while (v47 >= v41);
      }

      else
      {
        do
        {
          v46 = v45[-1].i32[2];
          v45 = (v45 - 8);
        }

        while (v46 >= v41);
      }

      if (v44 >= v45)
      {
        v53 = v44 - 8;
      }

      else
      {
        v48 = &v8->i8[v42 * 4];
        v49 = v45;
        do
        {
          v50 = *v48;
          *v48 = *v49;
          *v49 = v50;
          do
          {
            v51 = *(v48 + 2);
            v48 += 8;
          }

          while (v51 < v41);
          do
          {
            v52 = *(v49 - 2);
            v49 -= 8;
          }

          while (v52 >= v41);
        }

        while (v48 < v49);
        v53 = v48 - 8;
      }

      if (v53 != v8)
      {
        v8->i64[0] = *v53;
      }

      *v53 = v41;
      if (v44 < v45)
      {
        goto LABEL_83;
      }

      v54 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CRDetectorPolygonExtractor::generatePivotsPolygon(std::vector<PixelPosition> &)::$_0 &,PixelPosition*>(v8, v53);
      v8 = (v53 + 8);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CRDetectorPolygonExtractor::generatePivotsPolygon(std::vector<PixelPosition> &)::$_0 &,PixelPosition*>((v53 + 8), a2);
      if (result)
      {
        a2 = v53;
        if (!v54)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v54)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,CRDetectorPolygonExtractor::generatePivotsPolygon(std::vector<PixelPosition> &)::$_0 &,PixelPosition*,false>(v7, v53, a3, a4 & 1);
        a4 = 0;
        v8 = (v53 + 8);
      }
    }

    else
    {
      v41 = v8->i64[0];
      if (v8[-1].i32[2] < v8->i32[0])
      {
        goto LABEL_62;
      }

      if (a2[-1].i32[2] <= v41)
      {
        v56 = &v8->u64[1];
        do
        {
          v8 = v56;
          if (v56 >= a2)
          {
            break;
          }

          v56 = (v56 + 8);
        }

        while (v8->i32[0] <= v41);
      }

      else
      {
        do
        {
          v55 = v8->i32[2];
          v8 = (v8 + 8);
        }

        while (v55 <= v41);
      }

      v57 = a2;
      if (v8 < a2)
      {
        v57 = a2;
        do
        {
          v58 = v57[-1].i32[2];
          v57 = (v57 - 8);
        }

        while (v58 > v41);
      }

      while (v8 < v57)
      {
        v59 = v8->i64[0];
        v8->i64[0] = v57->i64[0];
        v57->i64[0] = v59;
        do
        {
          v60 = v8->i32[2];
          v8 = (v8 + 8);
        }

        while (v60 <= v41);
        do
        {
          v61 = v57[-1].i32[2];
          v57 = (v57 - 8);
        }

        while (v61 > v41);
      }

      v62 = &v8[-1].i64[1];
      if (&v8[-1].u64[1] != v7)
      {
        v7->i64[0] = *v62;
      }

      a4 = 0;
      *v62 = v41;
    }
  }

  v64 = v8->i32[2];
  v65 = a2[-1].i32[2];
  if (v64 >= v8->i32[0])
  {
    if (v65 < v64)
    {
      v108 = v8->i64[1];
      v8->i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v108;
      if (v8->i32[2] < v8->i32[0])
      {
        *v8 = vextq_s8(*v8, *v8, 8uLL);
      }
    }
  }

  else
  {
    v63 = v8->i64[0];
    if (v65 < v64)
    {
      goto LABEL_110;
    }

    v8->i64[0] = v8->i64[1];
    v8->i64[1] = v63;
    if (a2[-1].i32[2] < v63)
    {
      v8->i64[1] = a2[-1].i64[1];
      goto LABEL_111;
    }
  }

  return result;
}

uint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CRDetectorPolygonExtractor::generatePivotsPolygon(std::vector<PixelPosition> &)::$_0 &,PixelPosition*,0>(uint64_t *result, int *a2, int *a3, void *a4, void *a5)
{
  v5 = *a2;
  LODWORD(v6) = *a3;
  if (*a2 >= *result)
  {
    if (v6 < v5)
    {
      v6 = *a2;
      *a2 = *a3;
      *a3 = v6;
      if (*a2 < *result)
      {
        v6 = *result;
        *result = *a2;
        *a2 = v6;
        LODWORD(v6) = *a3;
      }
    }
  }

  else
  {
    v7 = *result;
    if (v6 < v5)
    {
      *result = *a3;
LABEL_9:
      *a3 = v7;
      LODWORD(v6) = v7;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v7;
    LODWORD(v6) = *a3;
    if (*a3 < v7)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < v6)
  {
    v8 = *a3;
    *a3 = *a4;
    *a4 = v8;
    if (*a3 < *a2)
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      if (*a2 < *result)
      {
        v10 = *result;
        *result = *a2;
        *a2 = v10;
      }
    }
  }

  if (*a5 < *a4)
  {
    v11 = *a4;
    *a4 = *a5;
    *a5 = v11;
    if (*a4 < *a3)
    {
      v12 = *a3;
      *a3 = *a4;
      *a4 = v12;
      if (*a3 < *a2)
      {
        v13 = *a2;
        *a2 = *a3;
        *a3 = v13;
        if (*a2 < *result)
        {
          v14 = *result;
          *result = *a2;
          *a2 = v14;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CRDetectorPolygonExtractor::generatePivotsPolygon(std::vector<PixelPosition> &)::$_0 &,PixelPosition*>(int8x16_t *a1, int8x16_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = a1->i32[2];
      v5 = a2[-1].i32[2];
      if (v4 >= a1->i32[0])
      {
        if (v5 < v4)
        {
          v15 = a1->i64[1];
          a1->i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v15;
          if (a1->i32[2] < a1->i32[0])
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        return 1;
      }

      v3 = a1->i64[0];
      if (v5 >= v4)
      {
        a1->i64[0] = a1->i64[1];
        a1->i64[1] = v3;
        if (a2[-1].i32[2] >= v3)
        {
          return 1;
        }

        a1->i64[1] = a2[-1].i64[1];
        goto LABEL_13;
      }

LABEL_12:
      a1->i64[0] = a2[-1].i64[1];
LABEL_13:
      a2[-1].i64[1] = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CRDetectorPolygonExtractor::generatePivotsPolygon(std::vector<PixelPosition> &)::$_0 &,PixelPosition*,0>(a1->i64, &a1->i32[2], a1[1].i32, &a1[1].i64[1], &a2[-1].i64[1]);
        return 1;
      }

      goto LABEL_14;
    }

    v11 = a1->i32[2];
    v12 = a1->i32[0];
    LODWORD(v13) = a1[1].i32[0];
    if (v11 >= a1->i32[0])
    {
      if (v13 < v11)
      {
        v13 = a1->i64[1];
        v19 = a1[1].i64[0];
        a1->i64[1] = v19;
        a1[1].i64[0] = v13;
        if (v12 > v19)
        {
          v20 = a1->i64[0];
          a1->i64[0] = v19;
          a1->i64[1] = v20;
        }
      }

      goto LABEL_48;
    }

    v14 = a1->i64[0];
    if (v13 >= v11)
    {
      a1->i64[0] = a1->i64[1];
      a1->i64[1] = v14;
      if (v13 >= v14)
      {
LABEL_48:
        if (a2[-1].i32[2] < v13)
        {
          v28 = a1[1].i64[0];
          a1[1].i64[0] = a2[-1].i64[1];
          a2[-1].i64[1] = v28;
          if (a1[1].i32[0] < a1->i32[2])
          {
            v30 = a1->i64[1];
            v29 = a1[1].i64[0];
            a1->i64[1] = v29;
            a1[1].i64[0] = v30;
            if (a1->i32[0] > v29)
            {
              v31 = a1->i64[0];
              a1->i64[0] = v29;
              a1->i64[1] = v31;
            }
          }
        }

        return 1;
      }

      a1->i64[1] = a1[1].i64[0];
    }

    else
    {
      a1->i64[0] = a1[1].i64[0];
    }

    a1[1].i64[0] = v14;
    LODWORD(v13) = v14;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (a2[-1].i32[2] < a1->i32[0])
    {
      v3 = a1->i64[0];
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v6 = a1 + 1;
  v7 = a1[1].i32[0];
  v8 = a1->i32[2];
  v9 = a1->i32[0];
  if (v8 >= a1->i32[0])
  {
    if (v7 < v8)
    {
      v17 = a1->i64[1];
      v16 = a1[1].i64[0];
      a1->i64[1] = v16;
      a1[1].i64[0] = v17;
      if (v9 > v16)
      {
        v18 = a1->i64[0];
        a1->i64[0] = v16;
        a1->i64[1] = v18;
      }
    }
  }

  else
  {
    v10 = a1->i64[0];
    if (v7 >= v8)
    {
      a1->i64[0] = a1->i64[1];
      a1->i64[1] = v10;
      if (v7 >= v10)
      {
        goto LABEL_34;
      }

      a1->i64[1] = a1[1].i64[0];
    }

    else
    {
      a1->i64[0] = a1[1].i64[0];
    }

    a1[1].i64[0] = v10;
  }

LABEL_34:
  v21 = &a1[1].i64[1];
  if (&a1[1].u64[1] == a2)
  {
    return 1;
  }

  v22 = 0;
  v23 = 0;
  while (1)
  {
    if (*v21 < v6->i32[0])
    {
      v24 = *v21;
      v25 = v22;
      while (1)
      {
        *(&a1[1].i64[1] + v25) = *(a1[1].i64 + v25);
        if (v25 == -16)
        {
          break;
        }

        v26 = *(&a1->i32[2] + v25);
        v25 -= 8;
        if (v26 <= v24)
        {
          v27 = (&a1[1].i64[1] + v25);
          goto LABEL_42;
        }
      }

      v27 = a1;
LABEL_42:
      *v27 = v24;
      if (++v23 == 8)
      {
        return v21 + 1 == a2;
      }
    }

    v6 = v21;
    v22 += 8;
    if (++v21 == a2)
    {
      return 1;
    }
  }
}

uint64_t p2s@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v25[6] = 0;
  v4 = MEMORY[0x1E69E5560] + 104;
  v25[0] = MEMORY[0x1E69E5560] + 104;
  v5 = MEMORY[0x1E69E5560] + 64;
  v16 = MEMORY[0x1E69E5560] + 64;
  v6 = MEMORY[0x1E69E54D8];
  v7 = *(MEMORY[0x1E69E54D8] + 24);
  v15[0] = *(MEMORY[0x1E69E54D8] + 16);
  *(v15 + *(v15[0] - 24)) = v7;
  v15[1] = 0;
  v8 = (v15 + *(v15[0] - 24));
  std::ios_base::init(v8, &v17);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v6[5];
  v16 = v6[4];
  *(&v16 + *(v16 - 24)) = v10;
  v15[0] = v6[1];
  *(v15 + *(v15[0] - 24)) = v6[6];
  v25[0] = v4;
  v15[0] = v9;
  v11 = MEMORY[0x1E69E5538] + 16;
  v16 = v5;
  v17 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1B8C73E50](&v18);
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v12 = MEMORY[0x1E69E5548] + 16;
  v17 = MEMORY[0x1E69E5548] + 16;
  *__p = 0u;
  v23 = 0u;
  v24 = 24;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](&v17);
  MEMORY[0x1B8C73DF0](&v16, a1);
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, a2);
  v15[0] = *v6;
  v13 = v6[9];
  *(v15 + *(v15[0] - 24)) = v6[8];
  v16 = v13;
  v17 = v12;
  if (SBYTE7(v23) < 0)
  {
    operator delete(__p[0]);
  }

  v17 = v11;
  std::locale::~locale(&v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C73EA0](v25);
}

void sub_1B41E810C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v27 + 4);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C73EA0](a10);
  _Unwind_Resume(a1);
}

uint64_t *std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x1B8C73DC0](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x1E69E5318]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_1B41E83C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1B41E8384);
  }

  __cxa_rethrow();
}

double ul2s@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a2, &str);
  do
  {
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 % 0xA) | 0x30, a2, &v6);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *&v6;
    *a2 = v6;
    *(a2 + 16) = v7;
    v5 = a1 >= 0xA;
    a1 /= 0xAuLL;
  }

  while (v5);
  return result;
}

void sub_1B41E8518(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(char a1@<W0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v5 + 1);
  if (*(result + 23) >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  *v7 = a1;
  v8 = v7 + 1;
  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(v8, v9, v5);
  }

  *(v8 + v5) = 0;
  return result;
}

double i2s@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a2, &str);
  if (a1 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = -a1;
  }

  do
  {
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v4 % 0xA) | 0x30, a2, &v7);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *&v7;
    *a2 = v7;
    *(a2 + 16) = v8;
    v6 = v4 > 9;
    v4 /= 0xAu;
  }

  while (v6);
  if (a1 < 0)
  {
    std::operator+<char>();
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *&v7;
    *a2 = v7;
    *(a2 + 16) = v8;
  }

  return result;
}

void sub_1B41E86A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void d2s(double a1@<D0>, _BYTE *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x40uLL, "%.10g", a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, __str);
  std::string::basic_string[abi:ne200100]<0>(a2, __str);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1B41E875C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t s2i(unsigned __int8 *a1)
{
  v1 = a1[23];
  v2 = v1 < 0;
  if (v1 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2)
  {
    v4 = *(a1 + 1);
  }

  else
  {
    v4 = a1[23];
  }

  if (v4)
  {
    v5 = *v3 == 45;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v4 <= v5)
  {
    v8 = 0;
    v11 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = v4 - v6;
    v10 = &v3[v6];
    while (1)
    {
      v11 = v8;
      v13 = *v10++;
      v12 = v13;
      if ((v13 - 58) < 0xF6u || v11 < v7)
      {
        break;
      }

      v8 = 10 * v11 + (v12 - 48);
      v7 = v11;
      if (!--v9)
      {
        goto LABEL_20;
      }
    }

    v8 = v11;
    v11 = v7;
  }

LABEL_20:
  v15 = !v6;
  if (v6)
  {
    v16 = 0x80000000;
  }

  else
  {
    v16 = 0x7FFFFFFF;
  }

  if (v15)
  {
    v17 = v8;
  }

  else
  {
    v17 = -v8;
  }

  if (v8 >= v11)
  {
    return v17;
  }

  else
  {
    return v16;
  }
}

uint64_t sh2i(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) == 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (v1)
  {
    v3 = *v2 == 45;
    if (*v2 == 45)
    {
      if (v1 == 1)
      {
        v4 = 1;
        LODWORD(v3) = 1;
        goto LABEL_19;
      }

      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    if (v2[v3] == 48 && (v2[v5] | 0x20) == 0x78)
    {
      v4 = 2;
      if (*v2 == 45)
      {
        v4 = 3;
      }
    }

    else
    {
      v4 = *v2 == 45;
    }
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = 0;
  }

LABEL_19:
  if (v4 >= v1)
  {
    v6 = 0;
LABEL_39:
    if (v3)
    {
      return -v6;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = v2[v4];
      if ((v7 - 48) > 9)
      {
        if ((v7 - 97) > 5)
        {
          if ((v7 - 65) > 5)
          {
            goto LABEL_39;
          }

          v8 = v7 + 16 * v6 - 55;
        }

        else
        {
          v8 = v7 + 16 * v6 - 87;
        }
      }

      else
      {
        v8 = (v7 - 48) | (16 * v6);
      }

      ++v4;
      v9 = v8 < v6;
      if (v4 >= v1)
      {
        break;
      }

      v6 = v8;
    }

    while (!v9);
    if (v3)
    {
      v10 = 0x80000000;
    }

    else
    {
      v10 = 0x7FFFFFFF;
    }

    if (v3)
    {
      v11 = -v8;
    }

    else
    {
      v11 = v8;
    }

    if (v9)
    {
      return v10;
    }

    else
    {
      return v11;
    }
  }
}

void w2i(std::string *__str@<X0>, const void **a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v6 = __str->__r_.__value_.__r.__words[0];
  size = __str->__r_.__value_.__l.__size_;
  do
  {
    if ((v5 & 0x80u) == 0)
    {
      v8 = __str;
    }

    else
    {
      v8 = v6;
    }

    if ((v5 & 0x80u) == 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = size;
    }

    v10 = v9 - v4;
    if (v9 <= v4)
    {
      v14 = -1;
    }

    else
    {
      v11 = v8 + v9;
      v12 = v8 + v4;
      while (*v12 != 95)
      {
        ++v12;
        if (!--v10)
        {
          v12 = v11;
          break;
        }
      }

      v13 = v12 - v8;
      if (v12 == v11)
      {
        v14 = -1;
      }

      else
      {
        v14 = v13;
      }
    }

    if (v14 != v4)
    {
      std::string::basic_string(&__p, __str, v4, v14 - v4, &v29);
      v15 = sh2i(&__p);
      v17 = a2[1];
      v16 = a2[2];
      if (v17 >= v16)
      {
        v19 = *a2;
        v20 = v17 - *a2;
        v21 = v20 >> 1;
        if (v20 >> 1 <= -2)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v22 = v16 - v19;
        if (v22 <= v21 + 1)
        {
          v23 = v21 + 1;
        }

        else
        {
          v23 = v22;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v24 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v23;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a2, v24);
        }

        *(2 * v21) = v15;
        v18 = 2 * v21 + 2;
        memcpy(0, v19, v20);
        v25 = *a2;
        *a2 = 0;
        a2[1] = v18;
        a2[2] = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v17 = v15;
        v18 = (v17 + 2);
      }

      a2[1] = v18;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v5 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      v6 = __str->__r_.__value_.__r.__words[0];
      size = __str->__r_.__value_.__l.__size_;
    }

    if ((v5 & 0x80u) == 0)
    {
      v26 = __str;
    }

    else
    {
      v26 = v6;
    }

    if ((v5 & 0x80u) == 0)
    {
      v27 = v5;
    }

    else
    {
      v27 = size;
    }

    if (v27 <= v14)
    {
      break;
    }

    v4 = v14;
    while (v26->__r_.__value_.__s.__data_[v4] == 95)
    {
      if (v27 == ++v4)
      {
        return;
      }
    }
  }

  while (v4 != -1);
}

void sub_1B41E8B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void w2i(std::string *__str@<X0>, __int16 a2@<W1>, const void **a3@<X8>)
{
  v6 = 0;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v7 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v8 = __str->__r_.__value_.__r.__words[0];
  size = __str->__r_.__value_.__l.__size_;
  do
  {
    if ((v7 & 0x80u) == 0)
    {
      v10 = __str;
    }

    else
    {
      v10 = v8;
    }

    if ((v7 & 0x80u) == 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = size;
    }

    v12 = v11 - v6;
    if (v11 <= v6)
    {
      v16 = -1;
    }

    else
    {
      v13 = v10 + v11;
      v14 = v10 + v6;
      while (*v14 != 95)
      {
        ++v14;
        if (!--v12)
        {
          v14 = v13;
          break;
        }
      }

      v15 = v14 - v10;
      if (v14 == v13)
      {
        v16 = -1;
      }

      else
      {
        v16 = v15;
      }
    }

    if (v16 != v6)
    {
      std::string::basic_string(&__p, __str, v6, v16 - v6, &v32);
      v17 = sh2i(&__p);
      if (v17 < 0x10000)
      {
        v18 = v17;
      }

      else
      {
        v18 = a2;
      }

      v20 = a3[1];
      v19 = a3[2];
      if (v20 >= v19)
      {
        v22 = *a3;
        v23 = v20 - *a3;
        v24 = v23 >> 1;
        if (v23 >> 1 <= -2)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v25 = v19 - v22;
        if (v25 <= v24 + 1)
        {
          v26 = v24 + 1;
        }

        else
        {
          v26 = v25;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v27 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a3, v27);
        }

        *(2 * v24) = v18;
        v21 = 2 * v24 + 2;
        memcpy(0, v22, v23);
        v28 = *a3;
        *a3 = 0;
        a3[1] = v21;
        a3[2] = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v20 = v18;
        v21 = (v20 + 2);
      }

      a3[1] = v21;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v7 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      v8 = __str->__r_.__value_.__r.__words[0];
      size = __str->__r_.__value_.__l.__size_;
    }

    if ((v7 & 0x80u) == 0)
    {
      v29 = __str;
    }

    else
    {
      v29 = v8;
    }

    if ((v7 & 0x80u) == 0)
    {
      v30 = v7;
    }

    else
    {
      v30 = size;
    }

    if (v30 <= v16)
    {
      break;
    }

    v6 = v16;
    while (v29->__r_.__value_.__s.__data_[v6] == 95)
    {
      if (v30 == ++v6)
      {
        return;
      }
    }
  }

  while (v6 != -1);
}

void sub_1B41E8D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void w2int(uint64_t *a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 23);
  v4 = a1[1];
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a1 + 23);
  }

  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = v3 >> 63;
    do
    {
      if (v8)
      {
        v9 = *a1;
      }

      else
      {
        v9 = a1;
      }

      v10 = *(v9 + v7);
      v11 = a2[2];
      if (v6 >= v11)
      {
        v12 = *a2;
        v13 = v6 - *a2;
        v14 = v13 >> 2;
        v15 = (v13 >> 2) + 1;
        if (v15 >> 62)
        {
          std::vector<PixelPosition>::__throw_length_error[abi:ne200100]();
        }

        v16 = v11 - v12;
        if (v16 >> 1 > v15)
        {
          v15 = v16 >> 1;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v17 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a2, v17);
        }

        *(4 * v14) = v10;
        v6 = (4 * v14 + 4);
        memcpy(0, v12, v13);
        v18 = *a2;
        *a2 = 0;
        a2[1] = v6;
        a2[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v6 = v10;
        v6 += 4;
      }

      a2[1] = v6;
      ++v7;
      v19 = *(a1 + 23);
      v8 = v19 >> 63;
      if ((v19 & 0x80000000) != 0)
      {
        v19 = a1[1];
      }
    }

    while (v19 > v7);
  }
}

void sub_1B41E8ED8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void w2i32(std::string *__str@<X0>, const void **a2@<X8>)
{
  v4 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v6 = __str->__r_.__value_.__r.__words[0];
  size = __str->__r_.__value_.__l.__size_;
  do
  {
    if ((v5 & 0x80u) == 0)
    {
      v8 = __str;
    }

    else
    {
      v8 = v6;
    }

    if ((v5 & 0x80u) == 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = size;
    }

    v10 = v9 - v4;
    if (v9 <= v4)
    {
      v14 = -1;
    }

    else
    {
      v11 = v8 + v9;
      v12 = v8 + v4;
      while (*v12 != 95)
      {
        ++v12;
        if (!--v10)
        {
          v12 = v11;
          break;
        }
      }

      v13 = v12 - v8;
      if (v12 == v11)
      {
        v14 = -1;
      }

      else
      {
        v14 = v13;
      }
    }

    if (v14 != v4)
    {
      std::string::basic_string(&__p, __str, v4, v14 - v4, &v29);
      v15 = sh2i(&__p);
      v17 = a2[1];
      v16 = a2[2];
      if (v17 >= v16)
      {
        v19 = *a2;
        v20 = v17 - *a2;
        v21 = v20 >> 2;
        v22 = (v20 >> 2) + 1;
        if (v22 >> 62)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v23 = v16 - v19;
        if (v23 >> 1 > v22)
        {
          v22 = v23 >> 1;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v24 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a2, v24);
        }

        *(4 * v21) = v15;
        v18 = 4 * v21 + 4;
        memcpy(0, v19, v20);
        v25 = *a2;
        *a2 = 0;
        a2[1] = v18;
        a2[2] = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v17 = v15;
        v18 = (v17 + 4);
      }

      a2[1] = v18;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v5 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      v6 = __str->__r_.__value_.__r.__words[0];
      size = __str->__r_.__value_.__l.__size_;
    }

    if ((v5 & 0x80u) == 0)
    {
      v26 = __str;
    }

    else
    {
      v26 = v6;
    }

    if ((v5 & 0x80u) == 0)
    {
      v27 = v5;
    }

    else
    {
      v27 = size;
    }

    if (v27 <= v14)
    {
      break;
    }

    v4 = v14;
    while (v26->__r_.__value_.__s.__data_[v4] == 95)
    {
      if (v27 == ++v4)
      {
        return;
      }
    }
  }

  while (v4 != -1);
}

void sub_1B41E90D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void iv2s(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v21[2] = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(a1 + 8) - *a1;
  if (a2 - 1 >= (v6 >> 2))
  {
    if (v6 < 4)
    {
      return;
    }

    v3 = v6 >> 2;
  }

  v7 = 0;
  do
  {
    if (v7)
    {
      v8 = *(a3 + 23);
      if (v8 >= 0)
      {
        v9 = *(a3 + 23);
      }

      else
      {
        v9 = *(a3 + 8);
      }

      std::string::basic_string[abi:ne200100](&v20, v9 + 1);
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v20;
      }

      else
      {
        v10 = v20.__r_.__value_.__r.__words[0];
      }

      if (v9)
      {
        if (v8 >= 0)
        {
          v11 = a3;
        }

        else
        {
          v11 = *a3;
        }

        memmove(v10, v11, v9);
      }

      *(&v10->__r_.__value_.__l.__data_ + v9) = 95;
      i2sh(*(*a1 + 4 * v7), __p);
      if ((v19 & 0x80u) == 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      if ((v19 & 0x80u) == 0)
      {
        v13 = v19;
      }

      else
      {
        v13 = __p[1];
      }

      v14 = std::string::append(&v20, v12, v13);
      v15 = v14->__r_.__value_.__r.__words[0];
      v21[0] = v14->__r_.__value_.__l.__size_;
      *(v21 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
      v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if (v8 < 0)
      {
        operator delete(*a3);
      }

      v17 = v21[0];
      *a3 = v15;
      *(a3 + 8) = v17;
      *(a3 + 15) = *(v21 + 7);
      *(a3 + 23) = v16;
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      i2sh(**a1, &v20);
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      *a3 = v20;
    }

    ++v7;
  }

  while (v3 != v7);
}

{
  v3 = a2;
  v21[2] = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(a1 + 8) - *a1;
  if (a2 - 1 >= (v6 >> 2))
  {
    if (v6 < 4)
    {
      return;
    }

    v3 = v6 >> 2;
  }

  v7 = 0;
  do
  {
    if (v7)
    {
      v8 = *(a3 + 23);
      if (v8 >= 0)
      {
        v9 = *(a3 + 23);
      }

      else
      {
        v9 = *(a3 + 8);
      }

      std::string::basic_string[abi:ne200100](&v20, v9 + 1);
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v20;
      }

      else
      {
        v10 = v20.__r_.__value_.__r.__words[0];
      }

      if (v9)
      {
        if (v8 >= 0)
        {
          v11 = a3;
        }

        else
        {
          v11 = *a3;
        }

        memmove(v10, v11, v9);
      }

      *(&v10->__r_.__value_.__l.__data_ + v9) = 95;
      i2sh(*(*a1 + 4 * v7), __p);
      if ((v19 & 0x80u) == 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      if ((v19 & 0x80u) == 0)
      {
        v13 = v19;
      }

      else
      {
        v13 = __p[1];
      }

      v14 = std::string::append(&v20, v12, v13);
      v15 = v14->__r_.__value_.__r.__words[0];
      v21[0] = v14->__r_.__value_.__l.__size_;
      *(v21 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
      v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if (v8 < 0)
      {
        operator delete(*a3);
      }

      v17 = v21[0];
      *a3 = v15;
      *(a3 + 8) = v17;
      *(a3 + 15) = *(v21 + 7);
      *(a3 + 23) = v16;
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      i2sh(**a1, &v20);
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      *a3 = v20;
    }

    ++v7;
  }

  while (v3 != v7);
}

{
  v3 = a2;
  v21[2] = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(a1 + 8) - *a1;
  if (a2 - 1 >= (v6 >> 3))
  {
    if (v6 < 8)
    {
      return;
    }

    v3 = v6 >> 3;
  }

  v7 = 0;
  do
  {
    if (v7)
    {
      v8 = *(a3 + 23);
      if (v8 >= 0)
      {
        v9 = *(a3 + 23);
      }

      else
      {
        v9 = *(a3 + 8);
      }

      std::string::basic_string[abi:ne200100](&v20, v9 + 1);
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v20;
      }

      else
      {
        v10 = v20.__r_.__value_.__r.__words[0];
      }

      if (v9)
      {
        if (v8 >= 0)
        {
          v11 = a3;
        }

        else
        {
          v11 = *a3;
        }

        memmove(v10, v11, v9);
      }

      *(&v10->__r_.__value_.__l.__data_ + v9) = 95;
      ul2sh(*(*a1 + 8 * v7), __p);
      if ((v19 & 0x80u) == 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      if ((v19 & 0x80u) == 0)
      {
        v13 = v19;
      }

      else
      {
        v13 = __p[1];
      }

      v14 = std::string::append(&v20, v12, v13);
      v15 = v14->__r_.__value_.__r.__words[0];
      v21[0] = v14->__r_.__value_.__l.__size_;
      *(v21 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
      v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if (v8 < 0)
      {
        operator delete(*a3);
      }

      v17 = v21[0];
      *a3 = v15;
      *(a3 + 8) = v17;
      *(a3 + 15) = *(v21 + 7);
      *(a3 + 23) = v16;
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      ul2sh(**a1, &v20);
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      *a3 = v20;
    }

    ++v7;
  }

  while (v3 != v7);
}

{
  v3 = a2;
  v21[2] = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(a1 + 8) - *a1;
  if (a2 - 1 >= (v6 >> 3))
  {
    if (v6 < 8)
    {
      return;
    }

    v3 = v6 >> 3;
  }

  v7 = 0;
  do
  {
    if (v7)
    {
      v8 = *(a3 + 23);
      if (v8 >= 0)
      {
        v9 = *(a3 + 23);
      }

      else
      {
        v9 = *(a3 + 8);
      }

      std::string::basic_string[abi:ne200100](&v20, v9 + 1);
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v20;
      }

      else
      {
        v10 = v20.__r_.__value_.__r.__words[0];
      }

      if (v9)
      {
        if (v8 >= 0)
        {
          v11 = a3;
        }

        else
        {
          v11 = *a3;
        }

        memmove(v10, v11, v9);
      }

      *(&v10->__r_.__value_.__l.__data_ + v9) = 95;
      ul2sh(*(*a1 + 8 * v7), __p);
      if ((v19 & 0x80u) == 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      if ((v19 & 0x80u) == 0)
      {
        v13 = v19;
      }

      else
      {
        v13 = __p[1];
      }

      v14 = std::string::append(&v20, v12, v13);
      v15 = v14->__r_.__value_.__r.__words[0];
      v21[0] = v14->__r_.__value_.__l.__size_;
      *(v21 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
      v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if (v8 < 0)
      {
        operator delete(*a3);
      }

      v17 = v21[0];
      *a3 = v15;
      *(a3 + 8) = v17;
      *(a3 + 15) = *(v21 + 7);
      *(a3 + 23) = v16;
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      ul2sh(**a1, &v20);
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      *a3 = v20;
    }

    ++v7;
  }

  while (v3 != v7);
}

void sub_1B41E92E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((*(v21 + 23) & 0x80) != 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

double i2sh@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a2, &str);
  if (a1 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = -a1;
  }

  do
  {
    if ((v4 & 0xF) >= 0xA)
    {
      v5 = (v4 & 0xF) + 87;
    }

    else
    {
      v5 = v4 & 0xF | 0x30;
    }

    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, a2, &v8);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v8;
    *(a2 + 16) = v9;
    v6 = v4 > 0xF;
    v4 >>= 4;
  }

  while (v6);
  std::operator+<char>();
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v9;
  if (a1 < 0)
  {
    std::operator+<char>();
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *&v8;
    *a2 = v8;
    *(a2 + 16) = v9;
  }

  return result;
}

void sub_1B41E9444(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B41E9640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((*(v21 + 23) & 0x80) != 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B41E986C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((*(v21 + 23) & 0x80) != 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

double ul2sh@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a2, &str);
  do
  {
    if ((a1 & 0xF) >= 0xA)
    {
      v4 = (a1 & 0xF) + 87;
    }

    else
    {
      v4 = a1 & 0xF | 0x30;
    }

    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v4, a2, &v7);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v7;
    *(a2 + 16) = v8;
    v5 = a1 > 0xF;
    a1 >>= 4;
  }

  while (v5);
  std::operator+<char>();
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

void sub_1B41E9984(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B41E9B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((*(v21 + 23) & 0x80) != 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void iv2s(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[2] = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      if (i)
      {
        v7 = *(a3 + 23);
        if (v7 >= 0)
        {
          v8 = *(a3 + 23);
        }

        else
        {
          v8 = *(a3 + 8);
        }

        std::string::basic_string[abi:ne200100](&v19, v8 + 1);
        if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = &v19;
        }

        else
        {
          v9 = v19.__r_.__value_.__r.__words[0];
        }

        if (v8)
        {
          if (v7 >= 0)
          {
            v10 = a3;
          }

          else
          {
            v10 = *a3;
          }

          memmove(v9, v10, v8);
        }

        *(&v9->__r_.__value_.__l.__data_ + v8) = 95;
        short2sh(a1[i], __p);
        if ((v18 & 0x80u) == 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        if ((v18 & 0x80u) == 0)
        {
          v12 = v18;
        }

        else
        {
          v12 = __p[1];
        }

        v13 = std::string::append(&v19, v11, v12);
        v14 = v13->__r_.__value_.__r.__words[0];
        v20[0] = v13->__r_.__value_.__l.__size_;
        *(v20 + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
        v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        if (v7 < 0)
        {
          operator delete(*a3);
        }

        v16 = v20[0];
        *a3 = v14;
        *(a3 + 8) = v16;
        *(a3 + 15) = *(v20 + 7);
        *(a3 + 23) = v15;
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        short2sh(*a1, &v19);
        if (*(a3 + 23) < 0)
        {
          operator delete(*a3);
        }

        *a3 = v19;
      }
    }
  }
}

void sub_1B41E9D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((*(v21 + 23) & 0x80) != 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

double short2sh@<D0>(unsigned __int16 a1@<W0>, uint64_t a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a2, &str);
  do
  {
    if ((a1 & 0xFu) >= 0xA)
    {
      v4 = (a1 & 0xF) + 87;
    }

    else
    {
      v4 = a1 & 0xF | 0x30;
    }

    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v4, a2, &v7);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v7;
    *(a2 + 16) = v8;
    v5 = a1;
    a1 >>= 4;
  }

  while (v5 > 0xF);
  std::operator+<char>();
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

void sub_1B41E9E9C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

CVPixelBufferRef CRCreateIOSurfacePixelBufferFromPixelBuffer(__CVBuffer *a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (CVPixelBufferGetIOSurface(a1))
  {
    v2 = CROSLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      LOWORD(pixelBuffer) = 0;
      _os_log_impl(&dword_1B40D2000, v2, OS_LOG_TYPE_ERROR, "Avoid calling CRCreateIOSurfacePixelBufferFromPixelBuffer with a pixel buffer that is already backed by an IOSurface!", &pixelBuffer, 2u);
    }
  }

  v13 = *MEMORY[0x1E69660D8];
  v14[0] = MEMORY[0x1E695E0F8];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  CVPixelBufferLockBaseAddress(a1, 0);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  pixelBuffer = 0;
  CVPixelBufferCreate(*MEMORY[0x1E695E480], Width, Height, PixelFormatType, v3, &pixelBuffer);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  v9 = CVPixelBufferGetBaseAddress(pixelBuffer);
  memcpy(v9, BaseAddress, Height * BytesPerRow);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  v10 = pixelBuffer;

  return v10;
}

id CRConvertFloat16BufferToFloat32Buffer(void *a1, void *a2, vImagePixelCount a3, void *a4)
{
  src.data = a1;
  src.height = 1;
  src.width = a3;
  src.rowBytes = 2 * a3;
  v6.data = a2;
  v6.height = 1;
  v6.width = a3;
  v6.rowBytes = 4 * a3;
  result = vImageConvert_Planar16FtoPlanarF(&src, &v6, 0);
  if (a4)
  {
    if (result)
    {
      result = [CRImageReader errorWithErrorCode:-8];
      *a4 = result;
    }
  }

  return result;
}

id CRConvertFloat32BufferToUInt8Buffer(void *a1, void *a2, vImagePixelCount a3, void *a4)
{
  src.data = a1;
  src.height = 1;
  src.width = a3;
  src.rowBytes = 4 * a3;
  v6.data = a2;
  v6.height = 1;
  v6.width = a3;
  v6.rowBytes = a3;
  result = vImageConvert_PlanarFtoPlanar8(&src, &v6, 1.0, 0.0, 0);
  if (a4)
  {
    if (result)
    {
      result = [CRImageReader errorWithErrorCode:-8];
      *a4 = result;
    }
  }

  return result;
}

void CRCropRectangleFromPixelBuffer(__CVBuffer *a1, __CVBuffer *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  pixelTransferSessionOut = 0;
  VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &pixelTransferSessionOut);
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v14);
  VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983E40], DictionaryRepresentation);
  VTPixelTransferSessionTransferImage(pixelTransferSessionOut, a1, a2);
  VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
  CFRelease(pixelTransferSessionOut);
  CFRelease(DictionaryRepresentation);
}

uint64_t CRCopyRectangleCropMemoryFromPixelBuffer(__CVBuffer *a1, char *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v29.size.width = Width;
  v29.size.height = Height;
  v29.origin.x = 0.0;
  v29.origin.y = 0.0;
  v31.origin.x = a4;
  v31.origin.y = a5;
  v31.size.width = a6;
  v31.size.height = a7;
  v30 = CGRectIntersection(v29, v31);
  x = v30.origin.x;
  y = v30.origin.y;
  v18 = v30.size.width;
  v19 = v30.size.height;
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  CVPixelBufferLockBaseAddress(a1, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  if (v19 > 0.0)
  {
    v22 = v18 * a3;
    v23 = &BaseAddress[x * a3 + BytesPerRow * y];
    v24 = a6 * a3;
    v25 = 1;
    do
    {
      memcpy(a2, v23, v22);
      v26 = v25++;
      v23 += BytesPerRow;
      a2 += v24;
    }

    while (v19 > v26);
  }

  return CVPixelBufferUnlockBaseAddress(a1, 0);
}

uint64_t CRImagePaddingValueForMode(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 3)
  {
    LOBYTE(v11) = -1;
  }

  else if (a1 == 2)
  {
    LOBYTE(v11) = 0x80;
  }

  else
  {
    if (a1)
    {
      goto LABEL_12;
    }

    v5 = a4 - 1;
    v6 = 0;
    if (a3)
    {
      v7 = a2;
      v8 = a3;
      do
      {
        v6 += *v7 + v7[v5 * a5];
        ++v7;
        --v8;
      }

      while (v8);
    }

    if (v5 >= 2)
    {
      v9 = a4 - 2;
      v10 = &a2[a5];
      do
      {
        v6 += *v10 + v10[a3 - 1];
        v10 += a5;
        --v9;
      }

      while (v9);
    }

    if (2 * (a4 + a3) == 4)
    {
LABEL_12:
      LOBYTE(v11) = 0;
    }

    else
    {
      return (v6 / (2 * (a4 + a3) - 4));
    }
  }

  return v11;
}

void sub_1B41EB668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char *a37, uint64_t a38, uint64_t a39, char a40)
{
  *(v43 - 160) = &a23;
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100]((v43 - 160));
  a23 = &a37;
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&a23);
  a37 = &a40;
  std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&a37);

  _Unwind_Resume(a1);
}

CGImageRef createImageFromContour(uint64_t *a1, uint64_t a2)
{
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v5 = CGBitmapContextCreate(*a2, *(a2 + 16), *(a2 + 8), 8uLL, *(a2 + 24), DeviceGray, 0);
  CGColorSpaceRelease(DeviceGray);
  Image = CGBitmapContextCreateImage(v5);
  CGContextRelease(v5);
  Width = CGImageGetWidth(Image);
  Height = CGImageGetHeight(Image);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v10 = malloc_type_malloc(4 * Width * Height, 0x100004077774924uLL);
  v11 = CGBitmapContextCreate(v10, Width, Height, 8uLL, 4 * Width, DeviceRGB, 5u);
  CGColorSpaceRelease(DeviceRGB);
  v31.size.width = Width;
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.height = Height;
  CGContextDrawImage(v11, v31, Image);
  CGImageRelease(Image);
  CGContextTranslateCTM(v11, 0.0, Height);
  CGContextScaleCTM(v11, 1.0, -1.0);
  v12 = *a1;
  v13 = a1[1] - *a1;
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
    if (v15 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    do
    {
      if (*(v12 + 24 * v14 + 8) - *(v12 + 24 * v14) >= 9uLL)
      {
        v17 = rand() / 2147483650.0;
        v18 = rand() / 2147483650.0;
        v19 = rand() / 2147483650.0;
        v20 = v17;
        v21 = v18;
        v22 = v19;
        CGContextSetRGBStrokeColor(v11, v20, v21, v19, 0.0);
        CGContextSetRGBFillColor(v11, v20, v21, v22, 0.0);
        CGContextSetLineWidth(v11, 1.0);
        CGContextBeginPath(v11);
        CGContextMoveToPoint(v11, **(*a1 + 24 * v14), *(*(*a1 + 24 * v14) + 4));
        CGContextSetRGBStrokeColor(v11, v20, v21, v22, 1.0);
        CGContextSetRGBFillColor(v11, v20, v21, v22, 1.0);
        CGContextSetLineWidth(v11, 1.0);
        v23 = *(*a1 + 24 * v14);
        if ((*(*a1 + 24 * v14 + 8) - v23) >= 9)
        {
          v24 = 0;
          v25 = 1;
          do
          {
            CGContextAddLineToPoint(v11, *(v23 + v24 + 8), *(v23 + v24 + 12));
            ++v25;
            v23 = *(*a1 + 24 * v14);
            v24 += 8;
          }

          while (v25 < (*(*a1 + 24 * v14 + 8) - v23) >> 3);
        }

        CGContextStrokePath(v11);
        v12 = *a1;
        v26 = *(*a1 + 24 * v14);
        if (*(*a1 + 24 * v14 + 8) != v26)
        {
          v27 = 0;
          v28 = 0;
          do
          {
            v32.origin.x = *(v26 + v27);
            v32.origin.y = *(v26 + v27 + 4);
            v32.size.width = 3.0;
            v32.size.height = 3.0;
            CGContextFillRect(v11, v32);
            ++v28;
            v12 = *a1;
            v26 = *(*a1 + 24 * v14);
            v27 += 8;
          }

          while (v28 < (*(*a1 + 24 * v14 + 8) - v26) >> 3);
        }
      }

      ++v14;
    }

    while (v14 != v16);
  }

  v29 = CGBitmapContextCreateImage(v11);
  CGContextRelease(v11);
  free(v10);
  return v29;
}

float64x2_t boxForContour(int32x2_t *a1, int32x2_t *a2)
{
  if (a2 == a1)
  {
    return *MEMORY[0x1E695F050];
  }

  else
  {
    v2 = a2 - a1;
    v3 = *a1;
    if (v2 < 2)
    {
      v6 = *a1;
    }

    else
    {
      v4 = v2 - 1;
      v5 = a1 + 1;
      v6 = *a1;
      do
      {
        v7.i64[0] = v6.i32[0];
        v7.i64[1] = v6.i32[1];
        v8 = vcvtq_f64_s64(v7);
        v7.i64[0] = v3.i32[0];
        v7.i64[1] = v3.i32[1];
        v9 = vcvtq_f64_s64(v7);
        v10 = *v5++;
        v7.i64[0] = v10;
        v7.i64[1] = SHIDWORD(v10);
        v11 = vcvtq_f64_s64(v7);
        v12 = vmaxnmq_f64(v9, v11);
        v6 = vmovn_s64(vcvtq_s64_f64(vminnmq_f64(v8, v11)));
        v3 = vmovn_s64(vcvtq_s64_f64(v12));
        --v4;
      }

      while (v4);
    }

    v14.i64[0] = v6.i32[0];
    v14.i64[1] = v6.i32[1];
    return vcvtq_f64_s64(v14);
  }
}

void sub_1B41EFFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id a47)
{
  _Block_object_dispose(&a36, 8);

  _Block_object_dispose(&a42, 8);
  _Block_object_dispose((v49 - 232), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__10(uint64_t a1)
{
}

{
}

void sub_1B41F29C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B41F2C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B41F31BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B41F35C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v30)
  {
    operator delete(v30);
  }

  _Block_object_dispose(&a22, 8);
  if (a28)
  {
    a29 = a28;
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__110(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__111(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void std::vector<unsigned int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t __copy_helper_block_ea8_40c39_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + 40;
  *(v2 + 16) = 0;
  return std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v2, *(a2 + 40), *(a2 + 48), *(a2 + 48) - *(a2 + 40));
}

void __destroy_helper_block_ea8_40c39_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_1B41F3B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B41F3EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a18, 8);
  v22 = *(v20 - 88);
  if (v22)
  {
    *(v20 - 80) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_1B41F4034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_48c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v2 = a1 + 48;
  *(v2 + 16) = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v2, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 2);
}

void __destroy_helper_block_ea8_48c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1B41F4108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B41F4590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a31, 8);
  if (__p)
  {
    a38 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a40, 8);

  _Block_object_dispose((v48 - 248), 8);
  v50 = *(v48 - 200);
  if (v50)
  {
    *(v48 - 192) = v50;
    operator delete(v50);
  }

  _Block_object_dispose((v48 - 176), 8);
  _Block_object_dispose((v48 - 144), 8);

  _Unwind_Resume(a1);
}

void sub_1B41F5318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  a9.super_class = CRLineWrappingContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t consolidateWrapScores(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return a2;
  }

  if (!a2)
  {
    return a1;
  }

  result = -10;
  if (a1 != -10 && a2 != -10)
  {
    v5 = __OFSUB__(a1, 1);
    if (a1 >= 1)
    {
      v5 = __OFSUB__(a2, 1);
      if (a2 >= 1)
      {
        if (a1 <= a2)
        {
          v6 = a2;
        }

        else
        {
          v6 = a1;
        }

        v7 = v6 == 2;
        v8 = 10;
        v9 = 6;
LABEL_20:
        if (v7)
        {
          return v9;
        }

        else
        {
          return v8;
        }
      }
    }

    if ((a2 & a1) < 0 != v5)
    {
      if (a1 >= a2)
      {
        v11 = a2;
      }

      else
      {
        v11 = a1;
      }

      v7 = v11 == -2;
      v8 = -10;
      v9 = -6;
      goto LABEL_20;
    }

    v10 = a2 + a1;
    if (!(a2 + a1))
    {
      return 0;
    }

    if (v10 > 5)
    {
      return 6;
    }

    if (v10 > 1)
    {
      return 2;
    }

    if (v10 < -5)
    {
      return -6;
    }

    if (v10 < -1)
    {
      return -2;
    }

    v12 = CROSLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 134218240;
      v14 = a1;
      v15 = 2048;
      v16 = a2;
      _os_log_impl(&dword_1B40D2000, v12, OS_LOG_TYPE_ERROR, "Error consolidating wrap scores %ld and %ld", &v13, 0x16u);
    }

    return a1;
  }

  return result;
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B41F56F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B41F57C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B41F5AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B41F5BF8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t anonymous namespace::unicodeCategory(_anonymous_namespace_ *this, int a2)
{
  v3 = this;
  Code = ublock_getCode(this);
  if (Code == UBLOCK_BASIC_LATIN)
  {
    if (u_ispunct(v3))
    {
      return 0;
    }

    else if (u_isdigit(v3))
    {
      return 1;
    }

    else if (u_isupper(v3))
    {
      return 2;
    }

    else if (u_islower(v3))
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    if (!a2)
    {
      return 5;
    }

    if (Code > UBLOCK_HIRAGANA)
    {
      if (Code == UBLOCK_HANGUL_SYLLABLES)
      {
        return 9;
      }

      if (Code == UBLOCK_KATAKANA)
      {
        return 7;
      }
    }

    else
    {
      if (Code == UBLOCK_CJK_SYMBOLS_AND_PUNCTUATION)
      {
        return 8;
      }

      if (Code == UBLOCK_HIRAGANA)
      {
        return 6;
      }
    }

    if ((Code & 0xFFFFFFF7) == 0x47)
    {
      return 10;
    }

    if (Code == UBLOCK_HALFWIDTH_AND_FULLWIDTH_FORMS)
    {
      return 11;
    }

    else
    {
      return 5;
    }
  }
}

void sub_1B41F7860(_Unwind_Exception *a1)
{
  v10 = *v5;
  if (*v5)
  {
    *(v5 + 8) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

void *std::vector<double>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(result, a2);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B41F7DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B41F7F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B41F8130(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1B41FBDD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_atomic_property__0(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
}

char **__assign_helper_atomic_property__0(char **result, char **a2)
{
  if (result != a2)
  {
    return std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(result, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  return result;
}

void CRTableStructureRecognizerInputFeatures::freeImageBuffer(CRTableStructureRecognizerInputFeatures *this)
{
  data = this->var2.data;
  if (data)
  {
    free(data);
    this->var2.data = 0;
  }
}

void CRTableStructureRecognizerInputFeatures::~CRTableStructureRecognizerInputFeatures(CRTableStructureRecognizerInputFeatures *this)
{
  data = this->var2.data;
  if (data)
  {
    free(data);
    this->var2.data = 0;
  }

  var0 = this->var1.var0;
  if (var0)
  {
    this->var1.var1 = var0;
    operator delete(var0);
  }

  v4 = this->var0.var0;
  if (this->var0.var0)
  {
    this->var0.var1 = v4;
    operator delete(v4);
  }
}

void sub_1B41FC9D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B41FCB98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B41FD160(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<unsigned long> *,std::vector<unsigned long> *,std::vector<unsigned long> *>(char **a1, char **a2, char **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a3, *v5, v5[1], (v5[1] - *v5) >> 3);
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

void *std::vector<_NSRange>::__assign_with_size[abi:ne200100]<_NSRange*,_NSRange*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<_NSRange>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t utf16CheckIsWordSeparator(int a1)
{
  v1 = (a1 - 8208) < 6;
  if (a1 == 0x2000)
  {
    v1 = 1;
  }

  if (a1 == 45)
  {
    v1 = 1;
  }

  return a1 == 32 || v1;
}

uint64_t utf16CheckIsLatin(int a1)
{
  v1 = (a1 & 0xFFFFFFDF) - 65 < 0x1A || (a1 - 248) < 0x158;
  if ((a1 - 192) < 0x17)
  {
    v1 = 1;
  }

  return (a1 - 216) < 0x1F || v1;
}

uint64_t utf16CheckIsCyrillicUkrainianOnly(int a1)
{
  result = 1;
  if ((a1 - 1108) > 0x3D || ((1 << (a1 - 84)) & 0x300000000000000DLL) == 0)
  {
    v3 = a1 - 1028;
    if (v3 > 3 || v3 == 1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t utf16CheckIsArabic(__int16 a1)
{
  v1 = (a1 - 1872) < 0x30u || (a1 + 400) < 0x90u;
  v2 = (a1 & 0xFF00) == 0x600 || v1;
  if ((a1 - 2160) < 0x90u)
  {
    v2 = 1;
  }

  if ((a1 + 1200) >= 0x2B0u)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

Class __getFTBipartiteMatcherClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1ED9601B0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __FusionTrackerLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7BC2F10;
    v6 = 0;
    qword_1ED9601B0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1ED9601B0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FTBipartiteMatcher");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  _MergedGlobals_26 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FusionTrackerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED9601B0 = result;
  return result;
}

void sub_1B41FF268(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B4200AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CRLanguageResources;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_1B420138C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v14 == 2)
  {
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::ContentTypeRefinementContext::shiftOneField(_anonymous_namespace_::ContentTypeRefinementContext *this)
{
  v7 = *(*(*(this + 1) + 8) + 16);
  [*this addObject:?];
  v2 = *(this + 1);
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  v6 = *v4;
  v5 = v4[1];
  *(v6 + 8) = v5;
  *v5 = v6;
  *(v2 + 16) = v3 - 1;

  operator delete(v4);
}

void anonymous namespace::ContentTypeRefinementContext::shiftAndGroupFields(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (![v3 count])
  {

LABEL_26:
    v20 = 0;
    goto LABEL_27;
  }

  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 boundingQuad];

  for (i = 0; i < [v3 count]; ++i)
  {
    v7 = [v3 objectAtIndexedSubscript:i];
    if ([v7 fieldSource] != 1)
    {
      v20 = 0;
      goto LABEL_16;
    }

    v8 = [v3 objectAtIndexedSubscript:i];
    v9 = [v8 fieldType];

    if (v9 != 1)
    {
      v20 = 0;
      goto LABEL_17;
    }

    if (i)
    {
      v10 = [v3 objectAtIndexedSubscript:i];
      v11 = [v10 boundingQuad];
      v12 = [v3 objectAtIndexedSubscript:i];
      v13 = [v12 boundingQuad];
      [v13 baselineAngle];
      *&v14 = v14;
      v15 = [v5 unionWithNormalizedQuad:v11 baselineAngle:v14];

      v5 = v15;
    }
  }

  v16 = [v3 objectAtIndexedSubscript:0];
  v17 = [v16 fieldSource];

  v18 = [v3 objectAtIndexedSubscript:0];
  if ([v18 fieldSource] == 1)
  {
    v19 = [v3 objectAtIndexedSubscript:0];
    v7 = [v19 labelRegion];
  }

  else
  {
    v7 = 0;
  }

  v20 = [[CRFormFieldOutputRegion alloc] initWithQuad:v5 labelRegion:v7 subFields:v3 source:v17];
LABEL_16:

LABEL_17:
  if (!v20)
  {
    goto LABEL_26;
  }

  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = v3;
  v22 = [v21 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v22)
  {
    v23 = *v26;
    do
    {
      v24 = 0;
      do
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v29 = *(*(&v25 + 1) + 8 * v24);
        std::list<objc_object  {objcproto20CRFormFieldProviding}* {__strong}>::remove(*(a1 + 8), &v29);
        ++v24;
      }

      while (v22 != v24);
      v22 = [v21 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v22);
  }

  [*a1 addObject:{v20, v25}];
LABEL_27:
}

void anonymous namespace::ContentTypeRefinementContext::shiftFields(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v12 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v7 + 1) + 8 * v6);
        std::list<objc_object  {objcproto20CRFormFieldProviding}* {__strong}>::remove(*(a1 + 8), &v11);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v12 count:16];
    }

    while (v4);
  }

  [*a1 addObjectsFromArray:{v3, v7}];
}

void sub_1B4202E88(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  std::__list_imp<objc_object  {objcproto20CRFormFieldProviding}* {__strong}>::clear(va);
  _Unwind_Resume(a1);
}

void sub_1B4202F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void std::list<objc_object  {objcproto20CRFormFieldProviding}* {__strong}>::remove(uint64_t *a1, void *a2)
{
  v13[0] = v13;
  v13[1] = v13;
  v14 = 0;
  v2 = a1[1];
  if (v2 != a1)
  {
    v3 = 0;
    do
    {
      v4 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v4 == a1)
        {
          v6 = 1;
        }

        else
        {
          do
          {
            v6 = v4[2] == v5;
            if (v4[2] != v5)
            {
              break;
            }

            v4 = v4[1];
          }

          while (v4 != a1);
        }

        if (v2 != v4)
        {
          v7 = *v4;
          if (v13 != a1)
          {
            v8 = 1;
            if (v7 != v2)
            {
              v9 = v2;
              do
              {
                v9 = v9[1];
                ++v8;
              }

              while (v9 != v7);
            }

            a1[2] -= v8;
            v3 += v8;
            v14 = v3;
          }

          v10 = *(v7 + 8);
          v11 = *v2;
          *(v11 + 8) = v10;
          *v10 = v11;
          v12 = v13[0];
          *(v13[0] + 8) = v2;
          *v2 = v12;
          v13[0] = v7;
          *(v7 + 8) = v13;
        }

        if (!v6)
        {
          v4 = v4[1];
        }
      }

      v2 = v4;
    }

    while (v4 != a1);
  }

  std::__list_imp<objc_object  {objcproto20CRFormFieldProviding}* {__strong}>::clear(v13);
}

void std::__list_imp<objc_object  {objcproto20CRFormFieldProviding}* {__strong}>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_1B42031A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void NetworkEdge::serialize(NetworkEdge *this@<X0>, const CRCHNetwork *a2@<X1>, std::string *a3@<X8>)
{
  ul2s(*this, &v46);
  v6 = std::string::insert(&v46, 0, "Edge (startNode,endNode)= (");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v47, ", ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  ul2s(*(this + 1), v44);
  if ((v45 & 0x80u) == 0)
  {
    v10 = v44;
  }

  else
  {
    v10 = v44[0];
  }

  if ((v45 & 0x80u) == 0)
  {
    v11 = v45;
  }

  else
  {
    v11 = v44[1];
  }

  v12 = std::string::append(&v48, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v49, ") inSym=");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  ul2s(*(this + 2), v42);
  if ((v43 & 0x80u) == 0)
  {
    v16 = v42;
  }

  else
  {
    v16 = v42[0];
  }

  if ((v43 & 0x80u) == 0)
  {
    v17 = v43;
  }

  else
  {
    v17 = v42[1];
  }

  v18 = std::string::append(&v50, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v51, " outSym= ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v52.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v52.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  ul2s(*(this + 3), v40);
  if ((v41 & 0x80u) == 0)
  {
    v22 = v40;
  }

  else
  {
    v22 = v40[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v23 = v41;
  }

  else
  {
    v23 = v40[1];
  }

  v24 = std::string::append(&v52, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v53.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v53.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v53, " ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v54.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v54.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  CRCHNetwork::getSymbol(&v39, a2, *(this + 3));
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v39;
  }

  else
  {
    v28 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v39.__r_.__value_.__l.__size_;
  }

  v30 = std::string::append(&v54, v28, size);
  v31 = *&v30->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v55, " weight = ");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  d2s(*(this + 4), __p);
  if ((v38 & 0x80u) == 0)
  {
    v34 = __p;
  }

  else
  {
    v34 = __p[0];
  }

  if ((v38 & 0x80u) == 0)
  {
    v35 = v38;
  }

  else
  {
    v35 = __p[1];
  }

  v36 = std::string::append(&v56, v34, v35);
  *a3 = *v36;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  if (v38 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }
}

void sub_1B42064DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v71 - 57) < 0)
  {
    operator delete(*(v71 - 80));
  }

  if (*(v71 - 89) < 0)
  {
    operator delete(*(v71 - 112));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v71 - 121) < 0)
  {
    operator delete(*(v71 - 144));
  }

  if (*(v71 - 153) < 0)
  {
    operator delete(*(v71 - 176));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v71 - 185) < 0)
  {
    operator delete(*(v71 - 208));
  }

  if (*(v71 - 217) < 0)
  {
    operator delete(*(v71 - 240));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  _Unwind_Resume(a1);
}

void CRCHNetwork::getSymbol(std::string *this, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 192) == 1)
  {
    if (a3)
    {
      ul2sh(a3, this);
      return;
    }

    v3 = *(a2 + 144);
  }

  else
  {
    v3 = *(a2 + 144) + 24 * a3;
  }

  if (*(v3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v3, *(v3 + 8));
  }

  else
  {
    v4 = *v3;
    this->__r_.__value_.__r.__words[2] = *(v3 + 16);
    *&this->__r_.__value_.__l.__data_ = v4;
  }
}

uint64_t CRCHNetwork::readOneEdge(CRCHNetwork *this, char *a2, NetworkEdge *a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__str, a2);
  v38[6] = 0;
  v5 = MEMORY[0x1E69E5560] + 104;
  v38[0] = MEMORY[0x1E69E5560] + 104;
  v6 = MEMORY[0x1E69E5560] + 64;
  v31 = MEMORY[0x1E69E5560] + 64;
  v7 = MEMORY[0x1E69E54D8];
  v8 = *(MEMORY[0x1E69E54D8] + 24);
  v30[0] = *(MEMORY[0x1E69E54D8] + 16);
  *(v30 + *(v30[0] - 24)) = v8;
  v30[1] = 0;
  v9 = (v30 + *(v30[0] - 24));
  std::ios_base::init(v9, &v32);
  v10 = MEMORY[0x1E69E5560] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v7[5];
  v31 = v7[4];
  *(&v31 + *(v31 - 24)) = v11;
  v30[0] = v7[1];
  *(v30 + *(v30[0] - 24)) = v7[6];
  v38[0] = v5;
  v30[0] = v10;
  v12 = MEMORY[0x1E69E5538] + 16;
  v31 = v6;
  v32 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1B8C73E50](&v33);
  memset(v34, 0, sizeof(v34));
  v13 = MEMORY[0x1E69E5548] + 16;
  v32 = MEMORY[0x1E69E5548] + 16;
  __p = 0u;
  v36 = 0u;
  v37 = 24;
  std::string::operator=(&__p, &__str);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](&v32);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  MEMORY[0x1B8C73DC0](&__str, v30, 0);
  if (__str.__r_.__value_.__s.__data_[0] != 1)
  {
    v16 = 0;
    goto LABEL_10;
  }

  v14 = *(v34 + *(v30[0] - 24));
  v15 = v14[3];
  if (v15 == v14[4])
  {
    v17 = (*(*v14 + 80))(v14);
    v16 = v17;
    if (v17 == -1)
    {
      v16 = 0;
      v18 = 6;
      goto LABEL_9;
    }
  }

  else
  {
    v14[3] = v15 + 1;
    v16 = *v15;
  }

  v18 = 0;
LABEL_9:
  std::ios_base::clear((v30 + *(v30[0] - 24)), *(&v33.__locale_ + *(v30[0] - 24)) | v18);
LABEL_10:
  if ((*(&v33.__locale_ + *(v30[0] - 24)) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Invalid empty FST line entry");
    __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
  }

  if (v16 == 70)
  {
    __str.__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x1B8C73DE0](v30, &__str);
    std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(this + 64, &__str);
    goto LABEL_15;
  }

  if (v16 == 73)
  {
    MEMORY[0x1B8C73DE0](v30, this + 32);
LABEL_15:
    v19 = 0;
    goto LABEL_35;
  }

  v28 = 0.0;
  MEMORY[0x1B8C73DE0](v30, a3);
  MEMORY[0x1B8C73DE0](v30, a3 + 8);
  memset(&__str, 0, sizeof(__str));
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v30, &__str);
  std::ios_base::clear((v30 + *(v30[0] - 24)), 0);
  *(a3 + 2) = sh2i(&__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    *__str.__r_.__value_.__l.__data_ = 0;
    __str.__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    __str.__r_.__value_.__s.__data_[0] = 0;
    *(&__str.__r_.__value_.__s + 23) = 0;
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v30, &__str);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if ((*(this + 192) & 1) == 0)
  {
    if (size)
    {
      v21 = CRCHSymbolMap::store(this + 136, &__str.__r_.__value_.__l.__data_);
      goto LABEL_27;
    }

LABEL_26:
    v21 = 0;
    goto LABEL_27;
  }

  if (!size)
  {
    goto LABEL_26;
  }

  v21 = sh2i(&__str);
LABEL_27:
  *(a3 + 3) = v21;
  MEMORY[0x1B8C73DD0](v30, &v28);
  v22 = v28;
  if ((*(&v33.__locale_ + *(v30[0] - 24)) & 5) != 0)
  {
    v22 = 0.0;
  }

  *(a3 + 4) = v22;
  v27 = 0;
  MEMORY[0x1B8C73DE0](v30, &v27);
  if ((*(&v33.__locale_ + *(v30[0] - 24)) & 5) != 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = v27;
  }

  *(a3 + 5) = v23;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v19 = 1;
LABEL_35:
  v30[0] = *v7;
  v24 = v7[9];
  *(v30 + *(v30[0] - 24)) = v7[8];
  v31 = v24;
  v32 = v13;
  if (SBYTE7(v36) < 0)
  {
    operator delete(__p);
  }

  v32 = v12;
  std::locale::~locale(&v33);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C73EA0](v38);
  return v19;
}

void sub_1B4206E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  __cxa_end_catch();
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C73EA0](a9);
  _Unwind_Resume(a1);
}

void CRCHNetwork::readDataFile(CRCHNetwork *this)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = (this + 8);
  v3 = *(this + 31);
  v4 = this + 8;
  if (v3 < 0)
  {
    v4 = *v2;
  }

  v5 = fopen(v4, "rt");
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v55 = std::string::append(&v67, ")");
    v56 = *&v55->__r_.__value_.__l.__data_;
    v63 = v55->__r_.__value_.__r.__words[2];
    v62 = v56;
    v55->__r_.__value_.__l.__size_ = 0;
    v55->__r_.__value_.__r.__words[2] = 0;
    v55->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x1B8C73D10](exception, &v62);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = v5;
  fgets(v68, 2048, v5);
  __p = 0;
  v65 = 0;
  v66 = 0;
  while (!feof(v6))
  {
    v68[0] = 0;
    if (!fgets(v68, 2048, v6))
    {
      break;
    }

    if (CRCHNetwork::readOneEdge(this, v68, &v62))
    {
      std::vector<NetworkEdge>::push_back[abi:ne200100](this + 88, &v62);
    }
  }

  v7 = *(this + 11);
  v8 = *(this + 12);
  v9 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v8 - v7) >> 4));
  v67.__r_.__value_.__r.__words[0] = compareEdge;
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const&,NetworkEdge const&),NetworkEdge*,false>(v7, v8, &v67, v10, 1);
  v11 = *(this + 11);
  v12 = *(this + 12);
  while (v11 != v12)
  {
    CRCHNetwork::storeIncomingEdgeEntry(this, v11);
    v11 += 80;
  }

  v13 = *(this + 14);
  v14 = *(this + 15);
  v15 = 126 - 2 * __clz((v14->i64 - v13) >> 3);
  v67.__r_.__value_.__r.__words[0] = compareIncomingEdge;
  if (v14 == v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const*,NetworkEdge const*),NetworkEdge const**,false>(v13, v14, &v67, v16, 1);
  v67.__r_.__value_.__r.__words[2] = 0;
  *&v67.__r_.__value_.__l.__data_ = &v67.__r_.__value_.__l.__size_;
  v17 = *(this + 11);
  v18 = *(this + 12);
  if (v17 == v18)
  {
    v20 = 0;
  }

  else
  {
    do
    {
      std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v67, v17);
      v19 = v17 + 1;
      std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v67, v19);
      v17 = v19 + 9;
    }

    while (v17 != v18);
    v20 = v67.__r_.__value_.__r.__words[2];
  }

  std::vector<CRCHNetworkNode>::resize(this + 5, v20);
  v21 = *(this + 11);
  v22 = *(this + 12);
  v23 = *(this + 5);
  if (v21 != v22)
  {
    v24 = *(this + 11);
    do
    {
      ++*(v23 + 56 * *v24);
      ++*(v23 + 56 * v24[1] + 8);
      v24 += 10;
    }

    while (v24 != v22);
  }

  v25 = *(this + 8);
  if (v25 != (this + 72))
  {
    do
    {
      *(v23 + 56 * *(v25 + 4) + 48) = 1;
      v26 = *(v25 + 1);
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = *(v25 + 2);
          v28 = *v27 == v25;
          v25 = v27;
        }

        while (!v28);
      }

      v25 = v27;
    }

    while (v27 != (this + 72));
  }

  v29 = *v21;
  *(v23 + 56 * *v21 + 16) = 0;
  v30 = *(this + 6) - v23;
  if (v30)
  {
    v31 = 0;
    v32 = 0x6DB6DB6DB6DB6DB7 * (v30 >> 3);
    if (v32 <= 1)
    {
      v32 = 1;
    }

    v33 = v23;
    do
    {
      *(v33 + 16) = v29;
      if (!*v33 && (*(v33 + 48) & 1) == 0)
      {
        v38 = v31;
        v39 = __cxa_allocate_exception(0x10uLL);
        ul2s(v38, &v57);
        v40 = std::string::insert(&v57, 0, "Node[");
        v41 = *&v40->__r_.__value_.__l.__data_;
        v58.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
        *&v58.__r_.__value_.__l.__data_ = v41;
        v40->__r_.__value_.__l.__size_ = 0;
        v40->__r_.__value_.__r.__words[2] = 0;
        v40->__r_.__value_.__r.__words[0] = 0;
        v42 = std::string::append(&v58, "]");
        v43 = *&v42->__r_.__value_.__l.__data_;
        v59.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
        *&v59.__r_.__value_.__l.__data_ = v43;
        v42->__r_.__value_.__l.__size_ = 0;
        v42->__r_.__value_.__r.__words[2] = 0;
        v42->__r_.__value_.__r.__words[0] = 0;
        v44 = std::string::append(&v59, "has out degree zero but is not marked as a final node");
        v45 = *&v44->__r_.__value_.__l.__data_;
        v61 = v44->__r_.__value_.__r.__words[2];
        v60 = v45;
        v44->__r_.__value_.__l.__size_ = 0;
        v44->__r_.__value_.__r.__words[2] = 0;
        v44->__r_.__value_.__r.__words[0] = 0;
        MEMORY[0x1B8C73CE0](v39, &v60);
        __cxa_throw(v39, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
      }

      v29 += *v33;
      ++v31;
      v33 += 56;
    }

    while (v32 != v31);
    v34 = 0;
    v35 = 0;
    *(v23 + 24) = 0;
    v36 = (v23 + 24);
    do
    {
      *v36 = v35;
      v37 = *(v36 - 2);
      if (!v37 && v34 != *(this + 4))
      {
        v46 = v34;
        v47 = __cxa_allocate_exception(0x10uLL);
        ul2s(v46, &v57);
        v48 = std::string::insert(&v57, 0, "Node[");
        v49 = *&v48->__r_.__value_.__l.__data_;
        v58.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
        *&v58.__r_.__value_.__l.__data_ = v49;
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        v50 = std::string::append(&v58, "]");
        v51 = *&v50->__r_.__value_.__l.__data_;
        v59.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
        *&v59.__r_.__value_.__l.__data_ = v51;
        v50->__r_.__value_.__l.__size_ = 0;
        v50->__r_.__value_.__r.__words[2] = 0;
        v50->__r_.__value_.__r.__words[0] = 0;
        v52 = std::string::append(&v59, "has in degree zero but is not marked as an initial node");
        v53 = *&v52->__r_.__value_.__l.__data_;
        v61 = v52->__r_.__value_.__r.__words[2];
        v60 = v53;
        v52->__r_.__value_.__l.__size_ = 0;
        v52->__r_.__value_.__r.__words[2] = 0;
        v52->__r_.__value_.__r.__words[0] = 0;
        MEMORY[0x1B8C73CE0](v47, &v60);
        __cxa_throw(v47, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
      }

      v36 += 7;
      v35 += v37;
      ++v34;
    }

    while (v32 != v34);
  }

  else
  {
    *(v23 + 24) = 0;
  }

  fclose(v6);
  std::__tree<CRCHuint128>::destroy(&v67, v67.__r_.__value_.__l.__size_);
  if (__p)
  {
    v65 = __p;
    operator delete(__p);
  }
}

void sub_1B4207474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a55 < 0)
  {
    operator delete(a50);
    if ((v56 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v56)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v55);
  goto LABEL_8;
}

BOOL compareEdge(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v4 = a2[2];
  if (v3 < v4)
  {
    return 1;
  }

  return v3 == v4 && a1[1] < a2[1];
}

void CRCHNetwork::storeIncomingEdgeEntry(void *a1, uint64_t a2)
{
  v5 = a1[15];
  v4 = a1[16];
  if (v5 >= v4)
  {
    v7 = a1[14];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<NetworkEdge const*>>((a1 + 14), v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = a1[14];
    v14 = a1[15] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[14];
    a1[14] = v15;
    a1[15] = v6;
    a1[16] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  a1[15] = v6;
}

void std::vector<CRCHNetworkNode>::resize(void *a1, unint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<CRCHNetworkNode>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 56 * a2;
  }
}

uint64_t CRCHNetwork::prepareNetwork(CRCHNetwork *this)
{
  v2 = *(this + 11);
  v3 = *(this + 12);
  v4 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v3 - v2) >> 4));
  *&v43 = compareEdge;
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const&,NetworkEdge const&),NetworkEdge*,false>(v2, v3, &v43, v5, 1);
  v6 = *(this + 14);
  *(this + 15) = v6;
  v7 = *(this + 11);
  if (*(this + 12) == v7)
  {
    v10 = v6;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      CRCHNetwork::storeIncomingEdgeEntry(this, v7 + v8);
      ++v9;
      v7 = *(this + 11);
      v8 += 80;
    }

    while (v9 < 0xCCCCCCCCCCCCCCCDLL * ((*(this + 12) - v7) >> 4));
    v10 = *(this + 14);
    v6 = *(this + 15);
  }

  v11 = 126 - 2 * __clz((v6->i64 - v10) >> 3);
  *&v43 = compareIncomingEdge;
  if (v6 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const*,NetworkEdge const*),NetworkEdge const**,false>(v10, v6, &v43, v12, 1);
  v13 = *(this + 14);
  v14 = *(this + 15);
  v15 = 126 - 2 * __clz((v14->i64 - v13) >> 3);
  *&v43 = compareIncomingEdge;
  if (v14 == v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(NetworkEdge const*,NetworkEdge const*),NetworkEdge const**,false>(v13, v14, &v43, v16, 1);
  v18 = *(this + 5);
  v19 = *(this + 6);
  if (v18 != v19)
  {
    do
    {
      *v18 = 0;
      *(v18 + 1) = 0;
      v18 += 56;
    }

    while (v18 != v19);
    v18 = *(this + 5);
  }

  v21 = *(this + 11);
  v20 = *(this + 12);
  if (v21 == v20)
  {
    v23 = *(this + 6);
  }

  else
  {
    v22 = *(this + 11);
    do
    {
      ++*&v18[56 * *v22];
      ++*&v18[56 * v22[1] + 8];
      v22 += 10;
    }

    while (v22 != v20);
    v23 = *(this + 6);
    v24 = *v21;
    *&v18[56 * v24 + 16] = 0;
    if (v18 != v23)
    {
      v25 = v18;
      do
      {
        *(v25 + 2) = v24;
        v26 = *v25;
        v25 += 56;
        v24 += v26;
      }

      while (v25 != v23);
    }

    *(v18 + 3) = 0;
  }

  v27 = v23 - v18;
  if (v23 != v18)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0x6DB6DB6DB6DB6DB7 * (v27 >> 3);
    if (v30 <= 1)
    {
      v30 = 1;
    }

    v31 = v18 + 24;
    do
    {
      *v31 = v29;
      v32 = *(v31 - 2);
      if (!v32 && v28 != *(this + 4))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        ul2s(v28, &v40);
        v34 = std::string::insert(&v40, 0, "Node[");
        v35 = *&v34->__r_.__value_.__l.__data_;
        v41.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
        *&v41.__r_.__value_.__l.__data_ = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        v36 = std::string::append(&v41, "]");
        v37 = *&v36->__r_.__value_.__l.__data_;
        v42.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
        *&v42.__r_.__value_.__l.__data_ = v37;
        v36->__r_.__value_.__l.__size_ = 0;
        v36->__r_.__value_.__r.__words[2] = 0;
        v36->__r_.__value_.__r.__words[0] = 0;
        v38 = std::string::append(&v42, "has in degree zero but is not marked as an initial node");
        v39 = *&v38->__r_.__value_.__l.__data_;
        v44 = v38->__r_.__value_.__r.__words[2];
        v43 = v39;
        v38->__r_.__value_.__l.__size_ = 0;
        v38->__r_.__value_.__r.__words[2] = 0;
        v38->__r_.__value_.__r.__words[0] = 0;
        MEMORY[0x1B8C73CE0](exception, &v43);
        __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
      }

      v31 += 7;
      v29 += v32;
      ++v28;
    }

    while (v30 != v28);
  }

  return result;
}

void sub_1B4207A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v28);
  goto LABEL_12;
}

void CRCHNetwork::trimDeadEdges(CRCHNetwork *this, CRCHNetwork *a2)
{
  v4 = (a2 + 72);
  std::__tree<CRCHuint128>::destroy(a2 + 64, *(a2 + 9));
  *v4 = 0;
  v4[1] = 0;
  *(v4 - 1) = v4;
  CRCHSymbolMap::operator=((v4 + 8), this + 17);
  v5 = v4 - 4;
  std::vector<CRCHNetworkNode>::resize(v5, 0);
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v49 = 0;
  v50 = 0;
  v48 = &v49;
  v47 = 0u;
  memset(v46, 0, sizeof(v46));
  std::set<unsigned long>::set[abi:ne200100](&v44, this + 64);
  v6 = v44;
  if (v44 != v45)
  {
    do
    {
      std::deque<unsigned long>::push_back(v46, v6 + 4);
      v7 = v6[1];
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
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
    }

    while (v8 != v45);
  }

  for (i = *(&v47 + 1); *(&v47 + 1); i = *(&v47 + 1))
  {
    v11 = *(*(*(&v46[0] + 1) + ((v47 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v47 & 0x1FF));
    v42 = v11;
    *&v47 = v47 + 1;
    *(&v47 + 1) = i - 1;
    if (v47 >= 0x400)
    {
      operator delete(**(&v46[0] + 1));
      *(&v46[0] + 1) += 8;
      *&v47 = v47 - 512;
      v11 = v42;
    }

    v12 = v49;
    if (v49)
    {
      v13 = &v49;
      do
      {
        v14 = v12[4];
        v15 = v14 >= v11;
        v16 = v14 < v11;
        if (v15)
        {
          v13 = v12;
        }

        v12 = v12[v16];
      }

      while (v12);
      if (v13 != &v49 && v11 >= v13[4])
      {
        continue;
      }
    }

    v17 = *(this + 5);
    if (*(v17 + 56 * v11 + 8))
    {
      v18 = 0;
      do
      {
        v19 = *(*(this + 14) + 8 * *(v17 + 56 * v11 + 24) + 8 * v18);
        v20 = *v19;
        __p = *v19;
        std::vector<NetworkEdge>::push_back[abi:ne200100](&v51, v19);
        v21 = v49;
        if (!v49)
        {
          goto LABEL_29;
        }

        v22 = &v49;
        do
        {
          v23 = v21[4];
          v15 = v23 >= v20;
          v24 = v23 < v20;
          if (v15)
          {
            v22 = v21;
          }

          v21 = v21[v24];
        }

        while (v21);
        if (v22 == &v49 || v20 < v22[4])
        {
LABEL_29:
          std::deque<unsigned long>::push_back(v46, &__p);
        }

        ++v18;
        v11 = v42;
        v17 = *(this + 5);
      }

      while (v18 < *(v17 + 56 * v42 + 8));
    }

    std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v48, &v42);
  }

  v25 = v50;
  std::vector<CRCHNetworkNode>::resize(v5, v50);
  v43[0] = 0;
  v43[1] = 0;
  v42 = v43;
  std::vector<unsigned long>::vector[abi:ne200100](&__p, v25);
  v26 = v48;
  v27 = __p;
  if (v48 != &v49)
  {
    v28 = 0;
    do
    {
      v27[v28] = v26[4];
      v29 = v26[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v26[2];
          v9 = *v30 == v26;
          v26 = v30;
        }

        while (!v9);
      }

      ++v28;
      v26 = v30;
    }

    while (v30 != &v49);
  }

  if (v41 != v27)
  {
    v31 = 0;
    v32 = 0;
    do
    {
      v54 = &v27[v31];
      std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v42, &v27[v31])[5] = v32++;
      v27 = __p;
      ++v31;
    }

    while (v32 < (v41 - __p) >> 3);
  }

  v33 = v51;
  for (j = v52; v33 != j; v33 = v35 + 9)
  {
    v54 = v33;
    *v33 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v42, v33)[5];
    v35 = v33 + 1;
    v54 = v35;
    *v35 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v42, v35)[5];
  }

  v36 = v44;
  if (v44 != v45)
  {
    do
    {
      v54 = v36 + 4;
      v37 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v42, v36 + 4);
      CRCHNetwork::setFinal(a2, v37[5]);
      v38 = v36[1];
      if (v38)
      {
        do
        {
          v39 = v38;
          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        do
        {
          v39 = v36[2];
          v9 = *v39 == v36;
          v36 = v39;
        }

        while (!v9);
      }

      v36 = v39;
    }

    while (v39 != v45);
  }

  CRCHNetwork::insertEdges(a2, &v51);
  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  std::__tree<CRCHuint128>::destroy(&v42, v43[0]);
  std::__tree<CRCHuint128>::destroy(&v44, v45[0]);
  std::deque<std::pair<int,int>>::~deque[abi:ne200100](v46);
  std::__tree<CRCHuint128>::destroy(&v48, v49);
  *&v46[0] = &v51;
  std::vector<NetworkEdge>::__destroy_vector::operator()[abi:ne200100](v46);
}

void sub_1B4207F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15, char a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, void *a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<CRCHuint128>::destroy(&a13, a14);
  std::__tree<CRCHuint128>::destroy(&a16, a17);
  std::deque<std::pair<int,int>>::~deque[abi:ne200100](&a19);
  std::__tree<CRCHuint128>::destroy(&a25, a26);
  a19 = v26 - 120;
  std::vector<NetworkEdge>::__destroy_vector::operator()[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

uint64_t CRCHSymbolMap::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    v4 = (a1 + 8);
    v5 = *(a1 + 8);
    v7 = a2[1];
    v6 = a2[2];
    v8 = v6 - v7;
    v9 = *(a1 + 24);
    if (v9 - v5 < (v6 - v7))
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      if (v5)
      {
        std::vector<std::string>::clear[abi:ne200100]((a1 + 8));
        operator delete(*v4);
        v9 = 0;
        *v4 = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
        v12 = 2 * v11;
        if (2 * v11 <= v10)
        {
          v12 = v10;
        }

        if (v11 >= 0x555555555555555)
        {
          v13 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v13 = v12;
        }

        if (v13 <= 0xAAAAAAAAAAAAAAALL)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1 + 8, v13);
        }
      }

      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v14 = *(a1 + 16);
    v15 = v14 - v5;
    if (v14 - v5 >= v8)
    {
      if (v7 != v6)
      {
        do
        {
          std::string::operator=(v5++, v7++);
        }

        while (v7 != v6);
        v14 = *(a1 + 16);
      }

      while (v14 != v5)
      {
        v18 = SHIBYTE(v14[-1].__r_.__value_.__r.__words[2]);
        --v14;
        if (v18 < 0)
        {
          operator delete(v14->__r_.__value_.__l.__data_);
        }
      }

      *(a1 + 16) = v5;
    }

    else
    {
      if (v14 != v5)
      {
        v16 = v14 - v5;
        v17 = a2[1];
        do
        {
          std::string::operator=(v5++, v17++);
          v16 -= 24;
        }

        while (v16);
        v14 = *(a1 + 16);
      }

      *(a1 + 16) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1 + 8, (v7 + v15), v6, v14);
    }

    v19 = a2[4];
    v20 = a2 + 5;
    if (*(a1 + 48))
    {
      v22 = (a1 + 40);
      v21 = *(a1 + 40);
      v23 = *(a1 + 32);
      *(a1 + 32) = a1 + 40;
      *(v21 + 16) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      if (*(v23 + 8))
      {
        v24 = *(v23 + 8);
      }

      else
      {
        v24 = v23;
      }

      v32 = a1 + 32;
      v33 = v24;
      v34 = v24;
      if (!v24 || (v33 = std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::_DetachedTreeCache::__detach_next(v24), v19 == v20))
      {
        v29 = v19;
      }

      else
      {
        do
        {
          std::string::operator=((v24 + 4), (v19 + 4));
          v24[7] = v19[7];
          v25 = *v22;
          v26 = (a1 + 40);
          v27 = (a1 + 40);
          if (*v22)
          {
            do
            {
              while (1)
              {
                v26 = v25;
                if (!std::less<std::string>::operator()[abi:ne200100](v34 + 4, v25 + 4))
                {
                  break;
                }

                v25 = *v26;
                v27 = v26;
                if (!*v26)
                {
                  goto LABEL_38;
                }
              }

              v25 = v26[1];
            }

            while (v25);
            v27 = v26 + 1;
          }

LABEL_38:
          std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__insert_node_at((a1 + 32), v26, v27, v34);
          v24 = v33;
          v34 = v33;
          if (v33)
          {
            v33 = std::__tree<std::__value_type<unsigned int,int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,int>>>::_DetachedTreeCache::__detach_next(v33);
          }

          v28 = v19[1];
          if (v28)
          {
            do
            {
              v29 = v28;
              v28 = *v28;
            }

            while (v28);
          }

          else
          {
            do
            {
              v29 = v19[2];
              v30 = *v29 == v19;
              v19 = v29;
            }

            while (!v30);
          }

          if (!v24)
          {
            break;
          }

          v19 = v29;
        }

        while (v29 != v20);
      }

      std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v32);
      v19 = v29;
    }

    if (v19 != v20)
    {
      operator new();
    }
  }

  return a1;
}

uint64_t std::vector<NetworkEdge>::push_back[abi:ne200100](uint64_t a1, const NetworkEdge *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<NetworkEdge>::__emplace_back_slow_path<NetworkEdge const&>(a1, a2);
  }

  else
  {
    NetworkEdge::NetworkEdge(*(a1 + 8), a2);
    result = v3 + 80;
    *(a1 + 8) = v3 + 80;
  }

  *(a1 + 8) = result;
  return result;
}

void *CRCHNetwork::setFinal(CRCHNetwork *this, unint64_t a2)
{
  v5 = a2;
  result = std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(this + 64, &v5);
  v4 = *(this + 5);
  if (0x6DB6DB6DB6DB6DB7 * ((*(this + 6) - v4) >> 3) >= v5)
  {
    *(v4 + 56 * v5 + 48) = 1;
  }

  return result;
}

uint64_t CRCHNetwork::insertEdges(CRCHNetwork *a1, uint64_t *a2)
{
  CRCHNetwork::mergeEquivalentEdges(a1, a2);
  v4 = *a2;
  v5 = a2[1];
  while (v4 != v5)
  {
    std::vector<NetworkEdge>::push_back[abi:ne200100](a1 + 88, v4);
    v4 = (v4 + 80);
  }

  return CRCHNetwork::prepareNetwork(a1);
}

uint64_t CRCHNetwork::findNextNonZeroOutDegree(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = *(a1 + 40);
  v9 = *(a3 + 8);
  v7 = a3 + 8;
  v8 = v9;
  while (1)
  {
    v10 = *(v6 + 56 * a6);
    if (!v10)
    {
      return -1;
    }

    a6 = *(*(a1 + 88) + 80 * *(v6 + 56 * a6 + 16) + 80 * v10 + 8);
    if (!v8)
    {
      goto LABEL_11;
    }

    v11 = v7;
    v12 = v8;
    do
    {
      v13 = *(v12 + 32);
      v14 = v13 >= a6;
      v15 = v13 < a6;
      if (v14)
      {
        v11 = v12;
      }

      v12 = *(v12 + 8 * v15);
    }

    while (v12);
    if (v11 == v7 || a6 < *(v11 + 32))
    {
LABEL_11:
      v11 = v7;
    }

    v16 = *(v11 + 40);
    if (*(*a2 + 8 * v16))
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v6 + 56 * a6 + 48) == 0;
    }

    if (!v17)
    {
      return v16;
    }
  }
}

uint64_t CRCHNetwork::pushWeightsFromEmptyEdges(uint64_t this, int a2)
{
  v2 = *(this + 48) - *(this + 40);
  if (v2)
  {
    v4 = this;
    v23 = 0u;
    memset(v22, 0, sizeof(v22));
    std::vector<BOOL>::vector(&__p, 0x6DB6DB6DB6DB6DB7 * (v2 >> 3));
    v20 = 0;
    std::deque<unsigned long>::push_back(v22, &v20);
    v5 = __p;
    *__p |= 1uLL;
    v6 = *(&v23 + 1);
    if (!*(&v23 + 1))
    {
      goto LABEL_19;
    }

    do
    {
      v7 = v6 - 1;
      v8 = *(*(*(&v22[0] + 1) + (((v23 + v7) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v23 + v7) & 0x1FF));
      *(&v23 + 1) = v7;
      std::deque<unsigned long>::__maybe_remove_back_spare[abi:ne200100](v22, 1);
      v9 = *(v4 + 40);
      if (*(v9 + 56 * v8))
      {
        v10 = 0;
        do
        {
          v11 = *(v4 + 88);
          v12 = v11 + 80 * *(v9 + 56 * v8 + 16) + 80 * v10;
          v13 = *(v12 + 8);
          v20 = v13;
          if (!*(v12 + 24))
          {
            if ((*(v9 + 56 * v13 + 48) & 1) == 0)
            {
              v14 = *(v9 + 56 * v13);
              if (v14)
              {
                v15 = v11 + 80 * *(v9 + 56 * v13 + 16) + 32;
                do
                {
                  *v15 = *(v12 + 32) + *v15;
                  v16 = *(v15 + 8);
                  v17 = *(v12 + 40) + v16;
                  if (a2)
                  {
                    v16 += *(v12 + 40);
                  }

                  *(v15 + 8) = v17;
                  *(v15 + 16) = v16;
                  v15 += 80;
                  --v14;
                }

                while (v14);
              }

              *(v12 + 40) = 0;
              *(v12 + 48) = 0;
            }

            *(v12 + 32) = 0;
          }

          v18 = v13 >> 6;
          v19 = 1 << v13;
          if ((*(__p + (v13 >> 6)) & (1 << v13)) == 0)
          {
            std::deque<unsigned long>::push_back(v22, &v20);
            *(__p + v18) |= v19;
            v9 = *(v4 + 40);
          }

          ++v10;
        }

        while (v10 < *(v9 + 56 * v8));
      }

      v6 = *(&v23 + 1);
    }

    while (*(&v23 + 1));
    v5 = __p;
    if (__p)
    {
LABEL_19:
      operator delete(v5);
    }

    return std::deque<std::pair<int,int>>::~deque[abi:ne200100](v22);
  }

  return this;
}

void sub_1B420878C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<std::pair<int,int>>::~deque[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

BOOL CRCHNetwork::checkSingleEmptyIncomingEdgeForNode(CRCHNetwork *this, uint64_t a2, unint64_t *a3)
{
  v3 = *(this + 5);
  v4 = v3 + 56 * a2;
  v7 = *(v4 + 8);
  v5 = (v4 + 8);
  v6 = v7;
  if (v7 < 2)
  {
    return 1;
  }

  v9 = 0;
  v10 = v3 + 56 * a2;
  v11 = *(this + 14);
  do
  {
    if (!*(*(v11 + 8 * *(v10 + 24) + 8 * v9) + 24))
    {
      ++*a3;
      v6 = *v5;
    }

    ++v9;
  }

  while (v9 < v6);
  return *a3 == 0;
}

uint64_t CRCHNetwork::guaranteeSingleEmptyIncomingEdgePerNode(uint64_t this)
{
  v1 = *(this + 40);
  v2 = *(this + 48) - v1;
  if (v2)
  {
    v3 = this;
    v7 = 0;
    v4 = v2 >> 3;
    if ((0x6DB6DB6DB6DB6DB7 * v4) <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 0x6DB6DB6DB6DB6DB7 * v4;
    }

    for (i = (v1 + 48); ; i += 56)
    {
      if ((*i & 1) == 0)
      {
        v8 = 0;
        this = CRCHNetwork::checkSingleEmptyIncomingEdgeForNode(v3, v7, &v8);
        if (!this)
        {
          break;
        }
      }

      if (v5 == ++v7)
      {
        return this;
      }
    }

    if (v8 != (v8 == *(i - 5)))
    {
      v9[0] = v9;
      v9[1] = v9;
      memset(&v9[2], 0, 32);
      operator new();
    }
  }

  return this;
}

void sub_1B4208EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, void *a31, uint64_t a32, uint64_t a33)
{
  std::__tree<CRCHuint128>::destroy(&a30, a31);
  std::deque<std::pair<int,int>>::~deque[abi:ne200100](&a33);
  std::__tree<CRCHuint128>::destroy(v33 - 208, *(v33 - 200));
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(*(v33 - 176));
  std::__list_imp<unsigned long>::clear((v33 - 160));
  a14 = v33 - 136;
  std::vector<NetworkEdge>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void std::vector<NetworkEdge>::resize(void *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 - *a1;
  v6 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 4);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v12 = v3 + 80 * a2;
      while (v4 != v12)
      {
        v13 = *(v4 - 24);
        if (v13)
        {
          *(v4 - 16) = v13;
          operator delete(v13);
        }

        v4 -= 80;
      }

      a1[1] = v12;
    }
  }

  else
  {
    v8 = a1[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v8 - v4) >> 4) < v7)
    {
      if (a2 <= 0x333333333333333)
      {
        v9 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v3) >> 4);
        v10 = 2 * v9;
        if (2 * v9 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x199999999999999)
        {
          v11 = 0x333333333333333;
        }

        else
        {
          v11 = v10;
        }

        v16 = a1;
        std::__allocate_at_least[abi:ne200100]<std::allocator<NetworkEdge>>(a1, v11);
      }

      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v14 = 80 * a2 - 16 * (v5 >> 4);
    v15 = (v4 + 56);
    do
    {
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
      v15 += 10;
      v14 -= 80;
    }

    while (v14);
    a1[1] = v4 + 80 * v7;
  }
}

void sub_1B42090F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<NetworkEdge>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void CRCHNetwork::removeEpsOutputEdges(CRCHNetwork *this, CRCHNetwork *a2, int a3)
{
  CRCHNetwork::guaranteeSingleEmptyIncomingEdgePerNode(this);
  v72 = a3;
  CRCHNetwork::pushWeightsFromEmptyEdges(this, a3);
  v73 = a2;
  v6 = *(a2 + 9);
  a2 = (a2 + 72);
  std::__tree<CRCHuint128>::destroy(a2 - 8, v6);
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 - 1) = a2;
  v71 = (a2 - 32);
  std::vector<CRCHNetworkNode>::resize(a2 - 4, 0);
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v8 = *(this + 5);
  v7 = *(this + 6);
  v96 = 0;
  v97 = 0;
  v94[1] = 0;
  v95 = &v96;
  v93 = v94;
  v94[0] = 0;
  std::set<unsigned long>::set[abi:ne200100](&v91, this + 64);
  std::vector<unsigned long>::vector[abi:ne200100](&v90, 0x6DB6DB6DB6DB6DB7 * ((v7 - v8) >> 3));
  v89 = 0u;
  memset(v88, 0, sizeof(v88));
  v87[0] = 0;
  v87[1] = 0;
  v86 = v87;
  v75 = 0;
  std::deque<unsigned long>::push_back(v88, &v75);
  v9 = *(&v89 + 1);
  if (*(&v89 + 1))
  {
    v10 = 0;
    do
    {
      v11 = v89;
      v12 = *(*(v88[1] + ((v89 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v89 & 0x1FF));
      v101[0] = v12;
      *&v89 = v89 + 1;
      *(&v89 + 1) = v9 - 1;
      if ((v11 + 1) >= 0x400)
      {
        operator delete(*v88[1]);
        v88[1] += 8;
        *&v89 = v89 - 512;
        v12 = v101[0];
      }

      v13 = v87[0];
      if (!v87[0])
      {
        goto LABEL_13;
      }

      v14 = v87;
      do
      {
        v15 = v13[4];
        v16 = v15 >= v12;
        v17 = v15 < v12;
        if (v16)
        {
          v14 = v13;
        }

        v13 = v13[v17];
      }

      while (v13);
      if (v14 == v87 || v12 < v14[4])
      {
LABEL_13:
        v18 = *(this + 5);
        if (*(v18 + 56 * v12))
        {
          v19 = 0;
          do
          {
            v20 = *(this + 11) + 80 * *(v18 + 56 * v12 + 16) + 80 * v19;
            v21 = *v20;
            v85 = *v20;
            v84 = *(v20 + 8);
            v22 = v96;
            if (*(v20 + 24))
            {
              if (!v96)
              {
                goto LABEL_24;
              }

              v23 = &v96;
              do
              {
                v24 = v22[4];
                v16 = v24 >= v21;
                v25 = v24 < v21;
                if (v16)
                {
                  v23 = v22;
                }

                v22 = v22[v25];
              }

              while (v22);
              if (v23 == &v96 || v21 < v23[4])
              {
LABEL_24:
                std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v95, &v85)[5] = v10++;
              }

              v26 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v95, &v85)[5];
              v27 = v96;
              if (!v96)
              {
                goto LABEL_33;
              }

              v28 = &v96;
              do
              {
                v29 = v27[4];
                v16 = v29 >= v84;
                v30 = v29 < v84;
                if (v16)
                {
                  v28 = v27;
                }

                v27 = v27[v30];
              }

              while (v27);
              if (v28 == &v96 || v84 < v28[4])
              {
LABEL_33:
                std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v95, &v84)[5] = v10++;
              }

              v31 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v95, &v84)[5];
              ++*(v90 + 8 * v26);
              __p = 0;
              v82 = 0;
              v83 = 0;
              v75 = v26;
              v76 = v31;
              v32 = *(this + 18) + 24 * *(v20 + 24);
              v33 = sh2i(v32);
              if (*(v32 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v74, *v32, *(v32 + 8));
              }

              else
              {
                v34 = *v32;
                v74.__r_.__value_.__r.__words[2] = *(v32 + 16);
                *&v74.__r_.__value_.__l.__data_ = v34;
              }

              v43 = CRCHSymbolMap::store(v73 + 136, &v74.__r_.__value_.__l.__data_);
              if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v74.__r_.__value_.__l.__data_);
              }

              v44 = v33;
              if (!v72)
              {
                v44 = v43;
              }

              v77 = v44;
              v78 = v43;
              v79 = *(v20 + 32);
              v80 = *(v20 + 40);
              std::vector<NetworkEdge>::push_back[abi:ne200100](&v98, &v75);
              if (__p)
              {
                v82 = __p;
                operator delete(__p);
              }
            }

            else
            {
              if (!v96)
              {
                goto LABEL_44;
              }

              v35 = &v96;
              do
              {
                v36 = v22[4];
                v16 = v36 >= v21;
                v37 = v36 < v21;
                if (v16)
                {
                  v35 = v22;
                }

                v22 = v22[v37];
              }

              while (v22);
              if (v35 == &v96 || v21 < v35[4])
              {
LABEL_44:
                std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v95, &v85)[5] = v10++;
              }

              v38 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v95, &v85)[5];
              v39 = v96;
              if (!v96)
              {
                goto LABEL_53;
              }

              v40 = &v96;
              do
              {
                v41 = v39[4];
                v16 = v41 >= v84;
                v42 = v41 < v84;
                if (v16)
                {
                  v40 = v39;
                }

                v39 = v39[v42];
              }

              while (v39);
              if (v40 == &v96 || v84 < v40[4])
              {
LABEL_53:
                std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v95, &v84)[5] = v38;
              }
            }

            v45 = v87[0];
            if (!v87[0])
            {
              goto LABEL_69;
            }

            v46 = v87;
            do
            {
              v47 = v45[4];
              v16 = v47 >= v84;
              v48 = v47 < v84;
              if (v16)
              {
                v46 = v45;
              }

              v45 = v45[v48];
            }

            while (v45);
            if (v46 == v87 || v84 < v46[4])
            {
LABEL_69:
              std::deque<unsigned long>::push_back(v88, &v84);
            }

            ++v19;
            v12 = v101[0];
            v18 = *(this + 5);
          }

          while (v19 < *(v18 + 56 * v101[0]));
        }

        std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v86, v101);
      }

      v9 = *(&v89 + 1);
    }

    while (*(&v89 + 1));
  }

  else
  {
    v10 = 0;
  }

  if (v97)
  {
    v75 = 0;
    if (*(this + 6) != *(this + 5))
    {
      do
      {
        v101[0] = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v95, &v75)[5];
        v49 = v75;
        std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v93, v101)[5] = v49;
        ++v75;
      }

      while (v75 < 0x6DB6DB6DB6DB6DB7 * ((*(this + 6) - *(this + 5)) >> 3));
    }
  }

  std::vector<CRCHNetworkNode>::resize(v71, v10);
  v50 = v91;
  if (v91 == v92)
  {
    v56 = -1;
  }

  else
  {
    do
    {
      v51 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v95, v50 + 4);
      CRCHNetwork::setFinal(v73, v51[5]);
      v52 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v95, v50 + 4);
      v53 = v50[1];
      if (v53)
      {
        do
        {
          v54 = v53;
          v53 = *v53;
        }

        while (v53);
      }

      else
      {
        do
        {
          v54 = v50[2];
          v55 = *v54 == v50;
          v50 = v54;
        }

        while (!v55);
      }

      v50 = v54;
    }

    while (v54 != v92);
    v56 = v52[5];
  }

  v76 = 0;
  v77 = 0;
  v75 = &v76;
  v101[0] = 0;
  if (v10)
  {
    for (i = 0; i < v10; v101[0] = i)
    {
      if (!*(v90 + 8 * i))
      {
        if (i == v56)
        {
          std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v75, v101)[5] = v56;
        }

        else
        {
          v58 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v93, v101);
          NextNonZeroOutDegree = CRCHNetwork::findNextNonZeroOutDegree(this, &v90, &v95, v59, v60, v58[5]);
          std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v75, v101)[5] = NextNonZeroOutDegree;
        }
      }

      i = v101[0] + 1;
    }
  }

  v62 = v98;
  v63 = v99;
  if (v99 != v98)
  {
    v64 = 0;
    do
    {
      v65 = v76;
      if (v76)
      {
        v66 = *(v62 + 80 * v64 + 8);
        v67 = &v76;
        do
        {
          v68 = v65[4];
          v16 = v68 >= v66;
          v69 = v68 < v66;
          if (v16)
          {
            v67 = v65;
          }

          v65 = v65[v69];
        }

        while (v65);
        if (v67 != &v76 && v66 >= v67[4])
        {
          v101[0] = *(v62 + 80 * v64 + 8);
          v70 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v75, v101);
          v62 = v98;
          *(v98 + 80 * v64 + 8) = v70[5];
          v63 = v99;
        }
      }

      ++v64;
    }

    while (v64 < 0xCCCCCCCCCCCCCCCDLL * ((v63 - v62) >> 4));
  }

  operator new();
}

void sub_1B4209CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, void *a36, uint64_t a37, uint64_t a38)
{
  std::__tree<CRCHuint128>::destroy(&a14, a15);
  std::__tree<CRCHuint128>::destroy(&a23, a24);
  std::__tree<CRCHuint128>::destroy(&a35, a36);
  std::deque<std::pair<int,int>>::~deque[abi:ne200100](&a38);
  v40 = *(v38 - 232);
  if (v40)
  {
    *(v38 - 224) = v40;
    operator delete(v40);
  }

  std::__tree<CRCHuint128>::destroy(v38 - 208, *(v38 - 200));
  std::__tree<CRCHuint128>::destroy(v38 - 184, *(v38 - 176));
  std::__tree<CRCHuint128>::destroy(v38 - 160, *(v38 - 152));
  a23 = v38 - 136;
  std::vector<NetworkEdge>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

void CRCHNetwork::mergeEquivalentEdges(int a1, uint64_t *a2)
{
  v35[0] = 0;
  v35[1] = 0;
  v33 = 0;
  v34 = v35;
  v31 = 0;
  v32 = 0;
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v4 = 0;
    do
    {
      v5 = (v3 + 80 * v4);
      i32 = v5[1].i32;
      v7 = vld1_dup_f32(i32);
      *&v8 = vmovn_s64(*v5);
      *(&v8 + 1) = v7;
      v30 = v8;
      v9 = v35[0];
      if (!v35[0])
      {
        goto LABEL_16;
      }

      v10 = v35;
      do
      {
        v11 = v10;
        v12 = v9 + 7;
        v13 = CRCHuint128::operator<(v9 + 7, &v30);
        v14 = v13;
        if (!v13)
        {
          v10 = v9;
        }

        v9 = v9[v14];
      }

      while (v9);
      if (v10 == v35 || (!v13 ? (v15 = v12) : (v15 = v11 + 7), CRCHuint128::operator<(&v30, v15)))
      {
LABEL_16:
        v36 = &v30;
        *(std::__tree<std::__value_type<CRCHuint128,int>,std::__map_value_compare<CRCHuint128,std::__value_type<CRCHuint128,int>,std::less<CRCHuint128>,true>,std::allocator<std::__value_type<CRCHuint128,int>>>::__emplace_unique_key_args<CRCHuint128,std::piecewise_construct_t const&,std::tuple<CRCHuint128 const&>,std::tuple<>>(&v34, &v30) + 11) = v4;
        std::vector<NetworkEdge>::push_back[abi:ne200100](&v31, (*a2 + 80 * v4));
      }

      else
      {
        v16 = v3 + 80 * *(v10 + 11);
        __p = 0;
        v28 = 0;
        v29 = 0;
        std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(&__p, *(v16 + 56), *(v16 + 64), (*(v16 + 64) - *(v16 + 56)) >> 3);
        v17 = __p;
        v18 = v28 - __p;
        v19 = (v28 - __p) >> 3;
        if (v28 != __p)
        {
          v20 = *(*a2 + 80 * v4 + 56);
          v21 = *(*a2 + 80 * v4 + 64) - v20;
          if (v21)
          {
            v22 = v18 == v21;
          }

          else
          {
            v22 = 0;
          }

          if (v22)
          {
            v23 = 0;
            v18 = 0;
            if (v19 <= 1)
            {
              v24 = 1;
            }

            else
            {
              v24 = (v28 - __p) >> 3;
            }

            do
            {
              v25 = __p;
              while (*v25 != *(v20 + 8 * v23))
              {
                v25 += 8;
                if (v25 == v28)
                {
                  v25 = v28;
                  break;
                }
              }

              if (v25 != v28)
              {
                ++v18;
              }

              ++v23;
            }

            while (v23 != v24);
          }

          else
          {
            v18 = 0;
          }
        }

        if (v18 == v19)
        {
          v26 = *(*a2 + 80 * v4 + 32);
          if (v26 < *(v16 + 32))
          {
            *(v16 + 32) = v26;
          }
        }

        else
        {
          v36 = &v30;
          *(std::__tree<std::__value_type<CRCHuint128,int>,std::__map_value_compare<CRCHuint128,std::__value_type<CRCHuint128,int>,std::less<CRCHuint128>,true>,std::allocator<std::__value_type<CRCHuint128,int>>>::__emplace_unique_key_args<CRCHuint128,std::piecewise_construct_t const&,std::tuple<CRCHuint128 const&>,std::tuple<>>(&v34, &v30) + 11) = v4;
          std::vector<NetworkEdge>::push_back[abi:ne200100](&v31, (*a2 + 80 * v4));
          v17 = __p;
        }

        if (v17)
        {
          v28 = v17;
          operator delete(v17);
        }
      }

      ++v4;
      v3 = *a2;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 4) > v4);
  }

  if (&v31 != a2)
  {
    std::vector<NetworkEdge>::__assign_with_size[abi:ne200100]<NetworkEdge*,NetworkEdge*>(a2, v31, v32, 0xCCCCCCCCCCCCCCCDLL * ((v32 - v31) >> 4));
  }

  __p = &v31;
  std::vector<NetworkEdge>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(v35[0]);
}

void sub_1B420A028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  __p = &a16;
  std::vector<NetworkEdge>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(a20);
  _Unwind_Resume(a1);
}

void CRCHNetwork::compose(CRCHNetwork *this, const CRCHNetwork *a2, CRCHNetwork *a3, char a4)
{
  std::vector<CRCHNetworkNode>::resize(this + 5, 0);
  std::__tree<CRCHuint128>::destroy(this + 64, *(this + 9));
  *(this + 8) = this + 72;
  *(this + 10) = 0;
  *(this + 9) = 0;
  memset(v19, 0, sizeof(v19));
  v17 = 0;
  v18 = 0;
  v16 = &v17;
  std::__tree<CRCHuint128>::destroy(this + 224, *(this + 29));
  *(this + 28) = this + 232;
  *(this + 30) = 0;
  *(this + 29) = 0;
  v15[0] = 0;
  v15[1] = 0;
  v13[1] = 0;
  v14 = v15;
  v12 = v13;
  v13[0] = 0;
  CRCHNetwork::compose6(this, a2, a3, *(a2 + 4), *(a3 + 4), &v16, v19, &v14, &v12, a4);
  std::vector<CRCHNetworkNode>::resize(this + 5, v18);
  CRCHNetwork::insertEdges(this, v19);
  v8 = v12;
  if (v12 != v13)
  {
    do
    {
      CRCHNetwork::setFinal(this, v8[4]);
      v9 = v8[1];
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
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
    }

    while (v10 != v13);
  }

  std::__tree<CRCHuint128>::destroy(&v12, v13[0]);
  std::__tree<CRCHuint128>::destroy(&v14, v15[0]);
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(v17);
  v16 = v19;
  std::vector<NetworkEdge>::__destroy_vector::operator()[abi:ne200100](&v16);
}

void sub_1B420A1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, char a14, void *a15, uint64_t a16, void **a17, void *a18)
{
  std::__tree<CRCHuint128>::destroy(&a11, a12);
  std::__tree<CRCHuint128>::destroy(&a14, a15);
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(a18);
  a17 = (v18 - 72);
  std::vector<NetworkEdge>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

uint64_t CRCHNetwork::compose6(uint64_t a1, uint64_t a2, CRCHNetwork *a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v12 = a4;
  v45[0] = a4;
  v45[1] = a5;
  result = std::__tree<std::__value_type<CRCHNodeTuple<unsigned long,unsigned long>,unsigned long>,std::__map_value_compare<CRCHNodeTuple<unsigned long,unsigned long>,std::__value_type<CRCHNodeTuple<unsigned long,unsigned long>,unsigned long>,std::less<CRCHNodeTuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<CRCHNodeTuple<unsigned long,unsigned long>,unsigned long>>>::find<CRCHNodeTuple<unsigned long,unsigned long>>(a6, a4, a5);
  v43 = a6;
  if (a6 + 8 == result)
  {
    goto LABEL_11;
  }

  v16 = *(result + 48);
  if (v16 == -1)
  {
    goto LABEL_11;
  }

  v17 = *(a8 + 8);
  if (!v17)
  {
    goto LABEL_11;
  }

  v18 = a8 + 8;
  do
  {
    v19 = *(v17 + 32);
    v20 = v19 >= v16;
    v21 = v19 < v16;
    if (v20)
    {
      v18 = v17;
    }

    v17 = *(v17 + 8 * v21);
  }

  while (v17);
  if (v18 == a8 + 8 || v16 < *(v18 + 32))
  {
LABEL_11:
    v37 = a6 + 8;
    v44 = *(a6 + 16);
    v40 = CRCHNodeTupleMap<unsigned long>::add(a6, v45, &v44);
    v22 = *(a2 + 40);
    if (*(v22 + 56 * v12))
    {
      v23 = 0;
      v38 = v12;
      do
      {
        v24 = *(a2 + 88) + 80 * *(v22 + 56 * v12 + 16) + 80 * v23;
        v26 = *(v24 + 8);
        v25 = *(v24 + 16);
        FirstEdgeGivenSymbol = CRCHNetwork::findFirstEdgeGivenSymbol(a3, a5, v25);
        v28 = FirstEdgeGivenSymbol;
        if (!a5 && a10 && FirstEdgeGivenSymbol == -1)
        {
          if ((CRCHNetwork::addCWComposedCharacterEdge(a1, a2, a3, v43, v40, v26, 0, v24, 0, a9, a7, 1) & 1) == 0)
          {
            LOBYTE(v35) = 1;
            CRCHNetwork::compose6(a1, a2, a3, v26, 0, v43, a7, a8, a9, v35);
          }
        }

        else if (FirstEdgeGivenSymbol != -1)
        {
          v29 = *(a3 + 5);
          if (FirstEdgeGivenSymbol < *(v29 + 56 * a5))
          {
            v30 = 80 * FirstEdgeGivenSymbol;
            do
            {
              v31 = *(a3 + 11) + 80 * *(v29 + 56 * a5 + 16) + v30;
              if (*(v31 + 16) != v25)
              {
                break;
              }

              v32 = *(v31 + 8);
              if ((CRCHNetwork::addCWComposedCharacterEdge(a1, a2, a3, v43, v40, v26, v32, v24, v31, a9, a7, 0) & 1) == 0)
              {
                LOBYTE(v36) = a10;
                CRCHNetwork::compose6(a1, a2, a3, v26, v32, v43, a7, a8, a9, v36);
              }

              ++v28;
              v29 = *(a3 + 5);
              v30 += 80;
            }

            while (v28 < *(v29 + 56 * a5));
          }
        }

        ++v23;
        v22 = *(a2 + 40);
        v12 = v38;
      }

      while (*(v22 + 56 * v38) > v23);
    }

    v33 = std::__tree<std::__value_type<CRCHNodeTuple<unsigned long,unsigned long>,unsigned long>,std::__map_value_compare<CRCHNodeTuple<unsigned long,unsigned long>,std::__value_type<CRCHNodeTuple<unsigned long,unsigned long>,unsigned long>,std::less<CRCHNodeTuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<CRCHNodeTuple<unsigned long,unsigned long>,unsigned long>>>::find<CRCHNodeTuple<unsigned long,unsigned long>>(v43, v12, a5);
    if (v37 == v33)
    {
      v34 = -1;
    }

    else
    {
      v34 = *(v33 + 48);
    }

    return std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(a8, v34);
  }

  return result;
}

void CRCHNetwork::compose(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  std::vector<CRCHNetworkNode>::resize((a1 + 40), 0);
  std::__tree<CRCHuint128>::destroy(a1 + 64, *(a1 + 72));
  *(a1 + 64) = a1 + 72;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  memset(v27, 0, 24);
  v25 = 0;
  v26 = 0;
  v9 = *(a1 + 232);
  v24 = &v25;
  std::__tree<CRCHuint128>::destroy(a1 + 224, v9);
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = a1 + 232;
  v22 = 0;
  v23 = 0;
  v20[1] = 0;
  v21 = &v22;
  v19 = v20;
  v20[0] = 0;
  RootCursor = LMLexiconGetRootCursor();
  v11 = LMLexiconGetRootCursor();
  v12 = LMLexiconCursorHash();
  v13 = LMLexiconCursorHash();
  CRCHNetwork::compose8(a1, a2, a3, a4, v12, v12, v13, a5, *(a2 + 32), RootCursor, v12, 0, &v24, v27, &v21, &v19);
  if (a4)
  {
    CRCHNetwork::compose8(a1, a2, a4, a4, v13, v12, v13, a5, *(a2 + 32), v11, v13, 1, &v24, v27, &v21, &v19);
  }

  std::__tree<CRCHuint128>::destroy(&v21, v22);
  v22 = 0;
  v23 = 0;
  v21 = &v22;
  std::__tree<CRCHuint128>::destroy(a1 + 224, *(a1 + 232));
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = a1 + 232;
  LMLexiconResetCursors();
  LMLexiconResetCursors();
  std::vector<CRCHNetworkNode>::resize((a1 + 40), v26);
  v14 = v19;
  if (v19 != v20)
  {
    do
    {
      CRCHNetwork::setFinal(a1, v14[4]);
      v15 = v14[1];
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
          v16 = v14[2];
          v17 = *v16 == v14;
          v14 = v16;
        }

        while (!v17);
      }

      v14 = v16;
    }

    while (v16 != v20);
  }

  CRCHNetwork::insertEdges(a1, v27);
  std::__tree<CRCHuint128>::destroy(&v19, v20[0]);
  std::__tree<CRCHuint128>::destroy(&v21, v22);
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(v25);
  v24 = v27;
  std::vector<NetworkEdge>::__destroy_vector::operator()[abi:ne200100](&v24);
}

void sub_1B420A790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *a21, uint64_t a22, char a23, void *a24, uint64_t a25, void **a26, void *a27)
{
  std::__tree<CRCHuint128>::destroy(&a20, a21);
  std::__tree<CRCHuint128>::destroy(&a23, a24);
  std::__tree<std::__value_type<int,unsigned long>,std::__map_value_compare<int,std::__value_type<int,unsigned long>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned long>>>::destroy(a27);
  a26 = (v27 - 112);
  std::vector<NetworkEdge>::__destroy_vector::operator()[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

uint64_t CRCHNetwork::compose8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v19 = a13;
  v20 = a11;
  v21 = a9;
  v23 = a7 == a11 || a6 == a11;
  v64 = v23;
  v84 = a9;
  v85 = a11;
  result = std::__tree<std::__value_type<CRCHNodeTuple<unsigned long,unsigned long>,unsigned long>,std::__map_value_compare<CRCHNodeTuple<unsigned long,unsigned long>,std::__value_type<CRCHNodeTuple<unsigned long,unsigned long>,unsigned long>,std::less<CRCHNodeTuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<CRCHNodeTuple<unsigned long,unsigned long>,unsigned long>>>::find<CRCHNodeTuple<unsigned long,unsigned long>>(a13, a9, a11);
  if (a13 + 8 == result)
  {
    goto LABEL_17;
  }

  v25 = *(result + 48);
  if (v25 == -1)
  {
    goto LABEL_17;
  }

  v26 = *(a15 + 8);
  if (!v26)
  {
    goto LABEL_17;
  }

  v27 = a15 + 8;
  do
  {
    v28 = *(v26 + 32);
    v29 = v28 >= v25;
    v30 = v28 < v25;
    if (v29)
    {
      v27 = v26;
    }

    v26 = *(v26 + 8 * v30);
  }

  while (v26);
  if (v27 == a15 + 8 || v25 < *(v27 + 32))
  {
LABEL_17:
    if (a12)
    {
      v85 = a6;
      v20 = a6;
    }

    v57 = v20;
    v83 = *(a13 + 16);
    v71 = CRCHNodeTupleMap<unsigned long>::add(a13, &v84, &v83);
    v31 = *(a2 + 40);
    if (*(v31 + 56 * a9))
    {
      v32 = 0;
      v33 = 0;
      v61 = a8 + 8;
      if (a4)
      {
        v34 = a4 == a3;
      }

      else
      {
        v34 = 1;
      }

      v35 = v34;
      v58 = v35;
      v69 = a2;
      while (1)
      {
        v72 = v32;
        v36 = *(a2 + 88) + 80 * *(v31 + 56 * v21 + 16) + v32;
        v38 = *(v36 + 8);
        v37 = *(v36 + 16);
        v82 = v37;
        CursorByAdvancingWithCharacters = LMLexiconGetCursorByAdvancingWithCharacters();
        v40 = CursorByAdvancingWithCharacters;
        v70 = v37;
        if (v64)
        {
          break;
        }

        LODWORD(v73) = 0;
        v42 = 0;
        v67 = 0;
        v66 = 0;
        if (CursorByAdvancingWithCharacters)
        {
          goto LABEL_41;
        }

LABEL_65:
        ++v33;
        v31 = *(a2 + 40);
        v32 = v72 + 80;
        v19 = a13;
        if (v33 >= *(v31 + 56 * v21))
        {
          goto LABEL_66;
        }
      }

      ul2sh(v37, v80);
      v73 = CRCHSymbolMap::store(a1 + 136, v80);
      if (v40)
      {
        TokenID = LMLexiconCursorFirstTokenID();
      }

      else
      {
        TokenID = 0;
      }

      if (v61 == std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(a8, v80))
      {
        v76[0] = v80;
        *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a8, v80) + 14) = TokenID;
      }

      v76[0] = v38;
      v76[1] = a6;
      v79[0] = *(v19 + 16);
      v67 = CRCHNodeTupleMap<unsigned long>::add(v19, v76, v79);
      if ((CRCHNetwork::addCWComposedCharacterEdge(a1, a2, v19, v71, v38, a6, 1, v73, v36, a16, a14) & 1) == 0)
      {
        RootCursor = LMLexiconGetRootCursor();
        LOBYTE(v56) = 0;
        CRCHNetwork::compose8(a1, a2, a3, a4, a5, a6, a7, a8, v38, RootCursor, a6, v56, v19, a14, a15, a16);
        if ((v58 & 1) == 0)
        {
          v44 = LMLexiconGetRootCursor();
          LOBYTE(v56) = 1;
          CRCHNetwork::compose8(a1, a2, a4, a4, a7, a6, a7, a8, v38, v44, a7, v56, v19, a14, a15, a16);
        }
      }

      if (v81 < 0)
      {
        operator delete(v80[0]);
      }

      v42 = v70;
      v66 = v71;
      if (!v40)
      {
        goto LABEL_65;
      }

LABEL_41:
      v65 = v33;
      v45 = *(*(a2 + 40) + 56 * v38 + 48);
      HasChildren = LMLexiconCursorHasChildren();
      HasEntries = LMLexiconCursorHasEntries();
      if (HasChildren)
      {
        v47 = LMLexiconCursorHash();
        v80[0] = v38;
        v80[1] = v47;
        v76[0] = *(a13 + 16);
        CRCHNodeTupleMap<unsigned long>::add(a13, v80, v76);
        if ((CRCHNetwork::addCWComposedCharacterEdge(a1, v69, a13, v71, v38, v47, 0, 0, v36, a16, a14) & 1) == 0)
        {
          LOBYTE(v56) = 0;
          CRCHNetwork::compose8(a1, v69, a3, a4, a5, a6, a7, a8, v38, v40, v47, v56, a13, a14, a15, a16);
        }
      }

      v48 = HasEntries | v45;
      a2 = v69;
      v21 = a9;
      v33 = v65;
      if (v48)
      {
        v59 = LMLexiconGetRootCursor();
        getStringFromCursor(v80, a3);
        v49 = CRCHSymbolMap::store(a1 + 136, v80);
        v79[0] = v38;
        v79[1] = a6;
        v78 = *(a13 + 16);
        v50 = CRCHNodeTupleMap<unsigned long>::add(a13, v79, &v78);
        if (!(v66 | v67 | v42 | v73) || v66 != v71 || v67 != v50 || (v42 == v70 ? (v51 = v73 == v49) : (v51 = 0), !v51))
        {
          if (HasEntries)
          {
            v52 = LMLexiconCursorFirstTokenID();
          }

          else
          {
            v52 = 0;
          }

          getStringFromCursor(v76, a3);
          if (v61 == std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(a8, v76))
          {
            v86 = v76;
            *(std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a8, v76) + 14) = v52;
          }

          if ((CRCHNetwork::addCWComposedCharacterEdge(a1, v69, a13, v71, v38, a6, 1, v49, v36, a16, a14) & 1) == 0)
          {
            LOBYTE(v56) = 0;
            CRCHNetwork::compose8(a1, v69, a3, a4, a5, a6, a7, a8, v38, v59, a6, v56, a13, a14, a15, a16);
            if ((v58 & 1) == 0)
            {
              v53 = LMLexiconGetRootCursor();
              LOBYTE(v56) = 1;
              CRCHNetwork::compose8(a1, v69, a4, a4, a7, a6, a7, a8, v38, v53, a7, v56, a13, a14, a15, a16);
            }
          }

          if (v77 < 0)
          {
            operator delete(v76[0]);
          }
        }

        if (v81 < 0)
        {
          operator delete(v80[0]);
        }

        a2 = v69;
        v21 = a9;
      }

      goto LABEL_65;
    }

LABEL_66:
    v54 = std::__tree<std::__value_type<CRCHNodeTuple<unsigned long,unsigned long>,unsigned long>,std::__map_value_compare<CRCHNodeTuple<unsigned long,unsigned long>,std::__value_type<CRCHNodeTuple<unsigned long,unsigned long>,unsigned long>,std::less<CRCHNodeTuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<CRCHNodeTuple<unsigned long,unsigned long>,unsigned long>>>::find<CRCHNodeTuple<unsigned long,unsigned long>>(v19, v21, v57);
    if (a13 + 8 == v54)
    {
      v55 = -1;
    }

    else
    {
      v55 = *(v54 + 48);
    }

    v80[0] = v55;
    return std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(a15, v55);
  }

  return result;
}

void sub_1B420AE98(_Unwind_Exception *exception_object)
{
  if (*(v1 - 177) < 0)
  {
    operator delete(*(v1 - 200));
  }

  if (*(v1 - 129) < 0)
  {
    operator delete(*(v1 - 152));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CRCHNetwork::findFirstEdgeGivenSymbol(CRCHNetwork *this, unint64_t a2, unint64_t a3)
{
  v36 = a3;
  v37 = a2;
  v5 = *(this + 5);
  v6 = *(v5 + 56 * a2);
  if (v6 > 0xA)
  {
    v8 = this + 208;
    v7 = *(this + 26);
    v9 = this + 200;
    if (!v7)
    {
      goto LABEL_10;
    }

    v10 = this + 208;
    do
    {
      v11 = *(v7 + 4);
      v12 = v11 >= a2;
      v13 = v11 < a2;
      if (v12)
      {
        v10 = v7;
      }

      v7 = *&v7[8 * v13];
    }

    while (v7);
    if (v10 == v8 || *(v10 + 4) > a2)
    {
LABEL_10:
      v35[0] = 0;
      v35[1] = 0;
      v34 = v35;
      v32 = a2;
      std::map<unsigned long,unsigned long>::map[abi:ne200100](v33, &v34);
      v14 = *v8;
      if (!*v8)
      {
LABEL_16:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v15 = v14;
          v16 = v14[4];
          if (v16 <= v32)
          {
            break;
          }

          v14 = *v15;
          if (!*v15)
          {
            goto LABEL_16;
          }
        }

        if (v16 >= v32)
        {
          break;
        }

        v14 = v15[1];
        if (!v14)
        {
          goto LABEL_16;
        }
      }

      std::__tree<CRCHuint128>::destroy(v33, v33[1]);
      v20 = *(this + 5);
      if (*(v20 + 56 * v37))
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = v22;
          v22 = *(*(this + 11) + 80 * *(v20 + 56 * v37 + 16) + 80 * v21 + 16);
          if (v23 != v22)
          {
            std::__tree<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(this + 200, v37);
            operator new();
          }

          ++v21;
        }

        while (*(v20 + 56 * v37) > v21);
      }

      std::__tree<CRCHuint128>::destroy(&v34, v35[0]);
      a2 = v37;
    }

    v24 = std::__tree<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(this + 200, a2);
    v27 = v24[6];
    v25 = v24 + 6;
    v26 = v27;
    if (!v27)
    {
      goto LABEL_36;
    }

    v28 = v25;
    do
    {
      v29 = v26[4];
      v12 = v29 >= a3;
      v30 = v29 < a3;
      if (v12)
      {
        v28 = v26;
      }

      v26 = v26[v30];
    }

    while (v26);
    if (v28 == v25 || v28[4] > a3)
    {
LABEL_36:
      v28 = v25;
    }

    if (v28 != std::__tree<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v9, v37) + 6)
    {
      v31 = std::__tree<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::map<unsigned long,unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v9, v37);
      return std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((v31 + 5), &v36)[5];
    }

    return -1;
  }

  if (!v6)
  {
    return -1;
  }

  result = 0;
  v18 = (*(this + 11) + 80 * *(v5 + 56 * a2 + 16) + 16);
  while (1)
  {
    v19 = *v18;
    v18 += 10;
    if (v19 == a3)
    {
      break;
    }

    if (v6 == ++result)
    {
      return -1;
    }
  }

  return result;
}

void sub_1B420B284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, char a14, void *a15)
{
  std::__tree<CRCHuint128>::destroy(v15 + 8, a12);
  std::__tree<CRCHuint128>::destroy(&a14, a15);
  _Unwind_Resume(a1);
}

uint64_t CRCHNetwork::addCWComposedCharacterEdge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v44[0] = a6;
  v44[1] = a7;
  v43 = *(a4 + 16);
  v19 = CRCHNodeTupleMap<unsigned long>::add(a4, v44, &v43);
  v42 = v19;
  if (*(*(a2 + 40) + 56 * a6 + 48) == 1 && *(*(a3 + 40) + 56 * a7 + 48) == 1)
  {
    v20 = *(a10 + 8);
    if (!v20)
    {
      goto LABEL_11;
    }

    v21 = a10 + 8;
    do
    {
      v22 = *(v20 + 32);
      v23 = v22 >= v19;
      v24 = v22 < v19;
      if (v23)
      {
        v21 = v20;
      }

      v20 = *(v20 + 8 * v24);
    }

    while (v20);
    if (v21 == a10 + 8 || v19 < *(v21 + 32))
    {
LABEL_11:
      std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(a10, &v42);
      v19 = v42;
    }
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  v35[0] = a5;
  v35[1] = v19;
  v25 = *(a8 + 16);
  v35[2] = v25;
  v38 = *(a8 + 40);
  if (a12)
  {
    CRCHNetwork::getSymbol(&__p, a2, *(a8 + 24));
    v26 = CRCHSymbolMap::store(a1 + 136, &__p.__r_.__value_.__l.__data_);
    v27 = v26;
    v36 = v26;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v28 = *(a8 + 32);
  }

  else
  {
    CRCHNetwork::getSymbol(&v33, a3, *(a9 + 24));
    v29 = CRCHSymbolMap::store(a1 + 136, &v33.__r_.__value_.__l.__data_);
    v27 = v29;
    v36 = v29;
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    v28 = *(a9 + 32) + *(a8 + 32);
  }

  v37 = v28;
  v32[0] = a5;
  v32[1] = v19;
  v32[2] = v25;
  v32[3] = v27;
  if (a1 + 232 == std::__tree<CRCHuint128>::find<CRCHuint128>(a1 + 224, v32))
  {
    std::vector<NetworkEdge>::push_back[abi:ne200100](a11, v35);
    std::__tree<CRCHuint128>::__emplace_unique_key_args<CRCHuint128,CRCHuint128 const&>(a1 + 224, v32);
    v30 = *(*(a2 + 40) + 56 * a6 + 48);
    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }
  }

  else
  {
    v30 = *(*(a2 + 40) + 56 * a6 + 48);
  }

  return v30 & 1;
}

void sub_1B420B4DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CRCHNodeTupleMap<unsigned long>::add(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a1 + 8);
  if (!v5)
  {
LABEL_29:
    operator new();
  }

  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  do
  {
    v8 = v7[4];
    v10 = v8 == v3;
    v9 = v8 < v3;
    if (v10)
    {
      v9 = v7[5] < v4;
    }

    v10 = !v9;
    v11 = v9;
    if (v10)
    {
      v6 = v7;
    }

    v7 = v7[v11];
  }

  while (v7);
  if (v6 == (a1 + 8))
  {
    goto LABEL_16;
  }

  v12 = v6[4];
  v10 = v12 == v3;
  v13 = v12 > v3;
  if (v10)
  {
    v13 = v6[5] > v4;
  }

  if (!v13)
  {
    return v6[6];
  }

LABEL_16:
  v14 = *a3;
  while (1)
  {
    while (1)
    {
      v15 = v5;
      v16 = v5[4];
      v17 = v15[5];
      v18 = v17 > v4;
      if (v16 != v3)
      {
        v18 = v16 > v3;
      }

      if (!v18)
      {
        break;
      }

      v5 = *v15;
      if (!*v15)
      {
        goto LABEL_29;
      }
    }

    v19 = v17 < v4;
    v10 = v16 == v3;
    v20 = v16 < v3;
    if (v10)
    {
      v20 = v19;
    }

    if (!v20)
    {
      break;
    }

    v5 = v15[1];
    if (!v5)
    {
      goto LABEL_29;
    }
  }

  *a3 = v14 + 1;
  return v14;
}

uint64_t CRCHNetwork::addCWComposedCharacterEdge(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, int a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  v35[0] = a5;
  v35[1] = a6;
  v34 = *(a3 + 16);
  v17 = CRCHNodeTupleMap<unsigned long>::add(a3, v35, &v34);
  v33 = v17;
  if (*(*(a2 + 40) + 56 * a5 + 48) == 1 && a7 != 0)
  {
    if (a10[2])
    {
      v17 = *(*a10 + 32);
      v33 = v17;
    }

    else
    {
      v19 = a10[1];
      if (!v19)
      {
        goto LABEL_15;
      }

      v20 = a10 + 1;
      do
      {
        v21 = v19[4];
        v22 = v21 >= v17;
        v23 = v21 < v17;
        if (v22)
        {
          v20 = v19;
        }

        v19 = v19[v23];
      }

      while (v19);
      if (v20 == a10 + 1 || v17 < v20[4])
      {
LABEL_15:
        std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(a10, &v33);
        v17 = v33;
      }
    }
  }

  __p = 0;
  v31 = 0;
  v32 = 0;
  v28[0] = a4;
  v28[1] = v17;
  v24 = *(a9 + 16);
  v29 = *(a9 + 40);
  v28[2] = v24;
  v28[3] = a8;
  v28[4] = *(a9 + 32);
  v27[0] = a4 | (v17 << 32);
  v27[1] = v24 | (a8 << 32);
  if (a1 + 232 == std::__tree<CRCHuint128>::find<CRCHuint128>(a1 + 224, v27))
  {
    std::vector<NetworkEdge>::push_back[abi:ne200100](a11, v28);
    std::__tree<CRCHuint128>::__emplace_unique_key_args<CRCHuint128,CRCHuint128 const&>(a1 + 224, v27);
    v25 = *(*(a2 + 40) + 56 * a5 + 48);
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v25 = *(*(a2 + 40) + 56 * a5 + 48);
  }

  return v25 & 1;
}

void sub_1B420B850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void getStringFromCursor(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = LMLexiconCursorTraversedLength();
  v4[0] = 0;
  LMLexiconCursorGetTraversedCharacters();
  iv2s(v4, v3, a1);
}

void CRCHNetwork::expandForLM(void **a1, void *a2, int a3, uint64_t *a4)
{
  v8 = a1 + 9;
  std::__tree<CRCHuint128>::destroy((a1 + 8), a1[9]);
  *v8 = 0;
  v8[1] = 0;
  v9 = v8 - 4;
  *(v8 - 1) = v8;
  std::vector<CRCHNetworkNode>::resize(v8 - 4, 0);
  if (a3 < 2)
  {
    return;
  }

  std::vector<CRCHNetworkNode>::resize(v8 - 4, 0x6DB6DB6DB6DB6DB7 * ((a2[6] - a2[5]) >> 3));
  CRCHSymbolMap::operator=((a1 + 17), a2 + 17);
  v52 = a3;
  v53 = 0uLL;
  v10 = a3 - 1;
  do
  {
    CRCHLMHistory::push(&v52, 0);
    --v10;
  }

  while (v10);
  v12 = a2[5];
  v11 = a2[6];
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v46 = &v49;
  LOBYTE(v47) = 0;
  v13 = v11 - v12;
  if (v13)
  {
    v14 = 0x6DB6DB6DB6DB6DB7 * (v13 >> 3);
    if (v14 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::map<unsigned long long,unsigned long>>>(v14);
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v48 = 0;
  v15 = a2[4];
  if (v52 == 2)
  {
    v16 = (v15 & 0xFFFFF | ((DWORD1(v53) & 0xFFFFFLL) << 20));
  }

  else
  {
    v16 = 0;
    if (v52 == 3)
    {
      v17 = vand_s8(*(&v53 + 4), 0xF0000000FLL);
      v18.i64[0] = v17.u32[0];
      v18.i64[1] = v17.u32[1];
      v19 = vshlq_u64(v18, xmmword_1B42AF6B0);
      v16 = (v19.i64[0] | v15 & 0xFFFFF | v19.i64[1]);
    }
  }

  v20 = &v49[3 * v15];
  v21 = *(v20 + 8);
  if (!v21)
  {
    goto LABEL_19;
  }

  v22 = v20 + 8;
  do
  {
    v23 = *(v21 + 32);
    v24 = v23 >= v16;
    v25 = v23 < v16;
    if (v24)
    {
      v22 = v21;
    }

    v21 = *(v21 + 8 * v25);
  }

  while (v21);
  if (v22 == v20 + 8 || v16 < *(v22 + 32))
  {
LABEL_19:
    v46 = v16;
    LODWORD(v47) = 0;
    std::__tree<std::__value_type<unsigned long long,unsigned long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>(v20, v16);
    v48 = 1;
  }

  std::vector<int>::vector[abi:ne200100](&v46, 0x6DB6DB6DB6DB6DB7 * ((a2[6] - a2[5]) >> 3));
  std::vector<int>::vector[abi:ne200100](v45, 0x6DB6DB6DB6DB6DB7 * ((a2[6] - a2[5]) >> 3));
  std::vector<int>::vector[abi:ne200100](__p, 0x6DB6DB6DB6DB6DB7 * ((a2[6] - a2[5]) >> 3));
  CRCHNetwork::storeAllLMContextDFS2(a1, a2, a2[4], &v49, &v48, __p, &v46, v45, a3);
  v26 = v49;
  if (v49 == v50)
  {
    v27 = 0;
    v29 = a4 + 1;
    v30 = *a4;
    v31 = (a4[1] - *a4) >> 3;
  }

  else
  {
    v27 = 0;
    do
    {
      v27 += *(v26 + 16);
      v26 += 24;
    }

    while (v26 != v50);
    v29 = a4 + 1;
    v28 = a4[1];
    v30 = *a4;
    v31 = (v28 - *a4) >> 3;
    if (v27 > v31)
    {
      v32 = v27 - v31;
      v33 = a4[2];
      if (v32 > (v33 - v28) >> 3)
      {
        if (!(v27 >> 61))
        {
          v34 = v33 - v30;
          if (v34 >> 2 > v27)
          {
            v27 = v34 >> 2;
          }

          if (v34 >= 0x7FFFFFFFFFFFFFF8)
          {
            v35 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v35 = v27;
          }

          if (!(v35 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
      }

      bzero(a4[1], 8 * v32);
      v36 = v28 + 8 * v32;
      goto LABEL_37;
    }
  }

  if (v31 > v27)
  {
    v36 = v30 + 8 * v27;
LABEL_37:
    *v29 = v36;
  }

  v37 = v49;
  v38 = v50;
  if (v49 != v50)
  {
    v39 = *a4;
    do
    {
      v40 = *v37;
      if (*v37 != v37 + 1)
      {
        do
        {
          *(v39 + 8 * v40[5]) = (v40[4] >> 20) & 0xFFFFFFFFFFLL;
          v41 = v40[1];
          if (v41)
          {
            do
            {
              v42 = v41;
              v41 = *v41;
            }

            while (v41);
          }

          else
          {
            do
            {
              v42 = v40[2];
              v43 = *v42 == v40;
              v40 = v42;
            }

            while (!v43);
          }

          v40 = v42;
        }

        while (v42 != v37 + 1);
      }

      v37 += 3;
    }

    while (v37 != v38);
  }

  std::vector<CRCHNetworkNode>::resize(v9, v48);
  CRCHNetwork::buildNewGraphFromLMContexts(a1, a2, &v49, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v45[0])
  {
    v45[1] = v45[0];
    operator delete(v45[0]);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  v46 = &v49;
  std::vector<std::map<unsigned long long,unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v46);
}

void sub_1B420BD98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  a17 = &a21;
  std::vector<std::map<unsigned long long,unsigned long>>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

int *CRCHLMHistory::push(int *this, int a2)
{
  v2 = *this;
  v3 = this[1];
  if (v3 < *this - 1)
  {
    this[v3 + 2] = a2;
    v4 = v3 + 1;
LABEL_8:
    this[1] = v4;
    return this;
  }

  if (!v3)
  {
    v4 = 1;
    this[2] = a2;
    goto LABEL_8;
  }

  v5 = v3 - 1;
  v6 = this[(v3 - 1) + 2];
  this[v5 + 2] = a2;
  if (v2 == 4)
  {
    this[2] = this[3];
    this[3] = v6;
  }

  else if (v2 == 3)
  {
    this[2] = v6;
  }

  return this;
}

uint64_t CRCHNetwork::storeAllLMContextDFS2(uint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, int a9)
{
  if (*(*a6 + 4 * a3) <= 0)
  {
    v49 = 0u;
    memset(v48, 0, sizeof(v48));
    v10 = (*a4 + 24 * a3);
    v11 = *v10;
    v35 = v10 + 1;
    v36 = result;
    if (*v10 == v10 + 1)
    {
      return std::deque<std::pair<int,int>>::~deque[abi:ne200100](v48);
    }

    v34 = 56 * a3;
    for (i = 1; ; i = 0)
    {
      v16 = *(a2 + 40);
      if (!*(v16 + v34))
      {
        *(*a6 + 4 * a3) = 1;
        goto LABEL_43;
      }

      v17 = 0;
      v18 = 0;
      v37 = (v11[4] >> 40) & 0xFFFFFLL;
      do
      {
        NetworkEdge::NetworkEdge(v43, (*(a2 + 88) + 80 * *(v16 + 56 * a3 + 16) + v17));
        v41 = a9;
        v42 = 0uLL;
        if (a9 == 3)
        {
          CRCHLMHistory::push(&v41, v37);
        }

        CRCHLMHistory::push(&v41, v45);
        if (*(*(a2 + 40) + 56 * v44[0] + 48))
        {
          if (v41 == 2 || v41 == 3)
          {
            v19 = v44[0] & 0xFFFFF;
            goto LABEL_17;
          }

LABEL_15:
          v19 = 0;
          goto LABEL_17;
        }

        if (v41 != 2)
        {
          if (v41 == 3)
          {
            v20 = vand_s8(*(&v42 + 4), 0xF0000000FLL);
            v21.i64[0] = v20.u32[0];
            v21.i64[1] = v20.u32[1];
            v22 = vshlq_u64(v21, xmmword_1B42AF6B0);
            v19 = v22.i64[0] | v44[0] & 0xFFFFF | v22.i64[1];
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        v19 = v44[0] & 0xFFFFF | ((DWORD1(v42) & 0xFFFFFLL) << 20);
LABEL_17:
        if (std::__tree<std::__value_type<unsigned long long,unsigned long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>(*a4 + 24 * v44[0], v19))
        {
          ++*a5;
        }

        v23 = v44[0];
        v24 = *(*a8 + 4 * v44[0]);
        if (i)
        {
          *(*a8 + 4 * v44[0]) = ++v24;
        }

        if (*(*(a2 + 40) + 56 * v23 + 8) == v24)
        {
          *(*a7 + 4 * v23) = 1;
          std::deque<unsigned long>::push_back(v48, v44);
        }

        if (__p)
        {
          v47 = __p;
          operator delete(__p);
        }

        ++v18;
        v16 = *(a2 + 40);
        v17 += 80;
      }

      while (v18 < *(v16 + 56 * a3));
      v25 = *(&v49 + 1);
      *(*a6 + 4 * a3) = 1;
      if (v25)
      {
        do
        {
          v26 = v25 - 1;
          v27 = *(*(v48[1] + (((v49 + v26) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v49 + v26) & 0x1FF));
          *(&v49 + 1) = v26;
          std::deque<unsigned long>::__maybe_remove_back_spare[abi:ne200100](v48, 1);
          v28 = *(a2 + 40);
          if ((*(v28 + 56 * v27 + 48) & 1) == 0 && !*(*a6 + 4 * v27))
          {
            CRCHNetwork::storeAllLMContextDFS2(v36, a2, v27, a4, a5, a6, a7, a8, a9);
            v28 = *(a2 + 40);
          }

          if (*(v28 + 56 * a3))
          {
            v29 = 0;
            v30 = 0;
            while (1)
            {
              NetworkEdge::NetworkEdge(v43, (*(a2 + 88) + 80 * *(v28 + 56 * a3 + 16) + v29));
              v28 = *(a2 + 40);
              if ((*(v28 + 56 * v44[0] + 48) & 1) == 0 && !*(*a6 + 4 * v44[0]) && *(*a7 + 4 * v44[0]) >= 1)
              {
                break;
              }

              if (__p)
              {
                v47 = __p;
                operator delete(__p);
                v28 = *(a2 + 40);
              }

              ++v30;
              v29 += 80;
              if (*(v28 + 56 * a3) <= v30)
              {
                goto LABEL_38;
              }
            }

            std::deque<unsigned long>::push_back(v48, v44);
            if (__p)
            {
              v47 = __p;
              operator delete(__p);
            }
          }

LABEL_38:
          v25 = *(&v49 + 1);
        }

        while (*(&v49 + 1));
      }

LABEL_43:
      v31 = v11[1];
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = v11[2];
          v33 = *v32 == v11;
          v11 = v32;
        }

        while (!v33);
      }

      v11 = v32;
      if (v32 == v35)
      {
        return std::deque<std::pair<int,int>>::~deque[abi:ne200100](v48);
      }
    }
  }

  return result;
}

void sub_1B420C288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<std::pair<int,int>>::~deque[abi:ne200100]((v33 - 160));
  _Unwind_Resume(a1);
}

void CRCHNetwork::buildNewGraphFromLMContexts(CRCHNetwork *a1, void *a2, uint64_t *a3, int a4)
{
  memset(v50, 0, 24);
  v4 = a2[5];
  v5 = a2[6];
  if (v5 != v4)
  {
    v8 = 0;
    do
    {
      v9 = (*a3 + 24 * v8);
      v10 = *v9;
      v40 = v9 + 1;
      if (*v9 != v9 + 1)
      {
        do
        {
          if (*(v4 + 56 * v8))
          {
            v11 = 0;
            v12 = v10[4];
            do
            {
              NetworkEdge::NetworkEdge(&v45, (a2[11] + 80 * *(v4 + 56 * v8 + 16) + 80 * v11));
              v43 = a4;
              v44 = 0uLL;
              if (a4 == 3)
              {
                CRCHLMHistory::push(&v43, (v12 >> 40) & 0xFFFFF);
              }

              CRCHLMHistory::push(&v43, v47);
              v13 = v46;
              if (*(a2[5] + 56 * v46 + 48))
              {
                if (v43 == 3)
                {
                  v14 = v46 & 0xFFFFF;
                }

                else
                {
                  v14 = 0;
                }

                if (v43 == 2)
                {
                  v15 = v46 & 0xFFFFF;
                }

                else
                {
                  v15 = v14;
                }
              }

              else if (v43 == 2)
              {
                v15 = v46 & 0xFFFFF | ((DWORD1(v44) & 0xFFFFFLL) << 20);
              }

              else if (v43 == 3)
              {
                v16 = vand_s8(*(&v44 + 4), 0xF0000000FLL);
                v17.i64[0] = v16.u32[0];
                v17.i64[1] = v16.u32[1];
                v18 = vshlq_u64(v17, xmmword_1B42AF6B0);
                v15 = v18.i64[0] | v46 & 0xFFFFF | v18.i64[1];
              }

              else
              {
                v15 = 0;
              }

              v19 = *a3;
              v20 = *a3 + 24 * v45;
              v23 = *(v20 + 8);
              v21 = v20 + 8;
              v22 = v23;
              if (!v23)
              {
                goto LABEL_28;
              }

              v24 = v21;
              do
              {
                v25 = *(v22 + 32);
                v26 = v25 >= v12;
                v27 = v25 < v12;
                if (v26)
                {
                  v24 = v22;
                }

                v22 = *(v22 + 8 * v27);
              }

              while (v22);
              if (v24 != v21 && *(v24 + 32) <= v12)
              {
                v28 = *(v24 + 40);
              }

              else
              {
LABEL_28:
                v28 = -1;
              }

              v45 = v28;
              v29 = v19 + 24 * v46;
              v32 = *(v29 + 8);
              v30 = v29 + 8;
              v31 = v32;
              if (!v32)
              {
                goto LABEL_37;
              }

              v33 = v30;
              do
              {
                v34 = *(v31 + 32);
                v26 = v34 >= v15;
                v35 = v34 < v15;
                if (v26)
                {
                  v33 = v31;
                }

                v31 = *(v31 + 8 * v35);
              }

              while (v31);
              if (v33 != v30 && *(v33 + 32) <= v15)
              {
                v36 = *(v33 + 40);
              }

              else
              {
LABEL_37:
                v36 = -1;
              }

              v46 = v36;
              std::vector<NetworkEdge>::push_back[abi:ne200100](v50, &v45);
              if (*(a2[5] + 56 * v13 + 48) == 1)
              {
                CRCHNetwork::setFinal(a1, v46);
              }

              if (__p)
              {
                v49 = __p;
                operator delete(__p);
              }

              ++v11;
              v4 = a2[5];
            }

            while (*(v4 + 56 * v8) > v11);
          }

          v37 = v10[1];
          if (v37)
          {
            do
            {
              v38 = v37;
              v37 = *v37;
            }

            while (v37);
          }

          else
          {
            do
            {
              v38 = v10[2];
              v39 = *v38 == v10;
              v10 = v38;
            }

            while (!v39);
          }

          v10 = v38;
        }

        while (v38 != v40);
        v5 = a2[6];
      }

      ++v8;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((v5 - v4) >> 3) > v8);
  }

  CRCHNetwork::insertEdges(a1, v50);
  v45 = v50;
  std::vector<NetworkEdge>::__destroy_vector::operator()[abi:ne200100](&v45);
}