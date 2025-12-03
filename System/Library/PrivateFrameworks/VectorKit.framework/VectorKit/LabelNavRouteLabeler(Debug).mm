@interface LabelNavRouteLabeler(Debug)
- (__n128)drawNavOverlayDebugView:()Debug navContext:;
@end

@implementation LabelNavRouteLabeler(Debug)

- (__n128)drawNavOverlayDebugView:()Debug navContext:
{
LABEL_1:
  n128_u64 = a2[-1].n128_u64;
  n128_f64 = a2[-2].n128_f64;
  v11 = a2[-3].n128_f64;
  selfCopy = self;
  while (1)
  {
    self = selfCopy;
    v13 = (a2 - selfCopy) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result.n128_u64[0] = *n128_u64;
        if (*n128_u64 >= *selfCopy)
        {
          return result;
        }

LABEL_107:
        v119 = *selfCopy;
        *selfCopy = *n128_u64;
        result = v119;
LABEL_108:
        *n128_u64 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v56 = (selfCopy + 16);
      v58 = *(selfCopy + 16);
      v59 = (selfCopy + 32);
      v60 = *(selfCopy + 32);
      if (v58 >= *selfCopy)
      {
        if (v60 < v58)
        {
          result = *v56;
          *v56 = *v59;
          *v59 = result;
          if (*(selfCopy + 16) < *selfCopy)
          {
            v122 = *selfCopy;
            *selfCopy = *v56;
            result.n128_u64[1] = v122.n128_u64[1];
            *v56 = v122;
          }
        }
      }

      else
      {
        if (v60 < v58)
        {
          v120 = *selfCopy;
          *selfCopy = *v59;
          result = v120;
          goto LABEL_177;
        }

        v124 = *selfCopy;
        *selfCopy = *v56;
        *v56 = v124;
        if (v60 < *(selfCopy + 16))
        {
          result = *v56;
          *v56 = *v59;
LABEL_177:
          *v59 = result;
        }
      }

      result.n128_u64[0] = *n128_u64;
      if (*n128_u64 >= v59->n128_f64[0])
      {
        return result;
      }

      result = *v59;
      *v59 = *n128_u64;
      *n128_u64 = result;
      result.n128_u64[0] = v59->n128_u64[0];
      if (v59->n128_f64[0] >= v56->n128_f64[0])
      {
        return result;
      }

      result = *v56;
      *v56 = *v59;
      *v59 = result;
LABEL_181:
      result.n128_u64[0] = *(selfCopy + 16);
      if (result.n128_f64[0] < *selfCopy)
      {
        v125 = *selfCopy;
        *selfCopy = *v56;
        result = v125;
        *v56 = v125;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,-[LabelNavRouteLabeler(Debug) drawNavOverlayDebugView:navContext:]::$_0 &,gm::Range<double> *,0>(selfCopy, (selfCopy + 16), (selfCopy + 32), (selfCopy + 48), a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v61 = (selfCopy + 16);
      v63 = selfCopy == a2 || v61 == a2;
      if (a4)
      {
        if (!v63)
        {
          v64 = 0;
          v65 = selfCopy;
          do
          {
            v66 = v61;
            result.n128_u64[0] = *(v65 + 16);
            if (result.n128_f64[0] < *v65)
            {
              v67 = *(v65 + 24);
              v68 = v64;
              while (1)
              {
                *(selfCopy + v68 + 16) = *(selfCopy + v68);
                if (!v68)
                {
                  break;
                }

                v69 = *(selfCopy + v68 - 16);
                v68 -= 16;
                if (result.n128_f64[0] >= v69)
                {
                  v70 = (selfCopy + v68 + 16);
                  goto LABEL_127;
                }
              }

              v70 = selfCopy;
LABEL_127:
              *v70 = result.n128_u64[0];
              v70[1] = v67;
            }

            v61 = v66 + 1;
            v64 += 16;
            v65 = v66;
          }

          while (&v66[1] != a2);
        }
      }

      else if (!v63)
      {
        do
        {
          v97 = v61;
          result.n128_u64[0] = *(self + 16);
          if (result.n128_f64[0] < *self)
          {
            v98 = *(self + 24);
            v99 = v61;
            do
            {
              *v99 = v99[-1];
              v100 = v99[-2].n128_f64[0];
              --v99;
            }

            while (result.n128_f64[0] < v100);
            v99->n128_u64[0] = result.n128_u64[0];
            v99->n128_u64[1] = v98;
          }

          ++v61;
          self = v97;
        }

        while (&v97[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (selfCopy != a2)
      {
        v71 = (v13 - 2) >> 1;
        v72 = v71;
        do
        {
          v73 = v72;
          if (v71 >= v72)
          {
            v74 = (2 * v72) | 1;
            v75 = (selfCopy + 16 * v74);
            if (2 * v73 + 2 < v13 && *v75 < v75[2])
            {
              v75 += 2;
              v74 = 2 * v73 + 2;
            }

            v76 = (selfCopy + 16 * v73);
            v77 = *v76;
            if (*v75 >= *v76)
            {
              v78 = *(v76 + 1);
              do
              {
                v79 = v76;
                v76 = v75;
                *v79 = *v75;
                if (v71 < v74)
                {
                  break;
                }

                v80 = 2 * v74;
                v74 = (2 * v74) | 1;
                v75 = (selfCopy + 16 * v74);
                v81 = v80 + 2;
                if (v81 < v13 && *v75 < v75[2])
                {
                  v75 += 2;
                  v74 = v81;
                }
              }

              while (*v75 >= v77);
              *v76 = v77;
              *(v76 + 1) = v78;
            }
          }

          v72 = v73 - 1;
        }

        while (v73);
        do
        {
          v82 = 0;
          v121 = *selfCopy;
          v83 = selfCopy;
          do
          {
            v84 = v83;
            v85 = &v83[v82];
            v83 = v85 + 1;
            v86 = 2 * v82;
            v82 = (2 * v82) | 1;
            v87 = v86 + 2;
            if (v87 < v13)
            {
              v89 = v85[2].n128_f64[0];
              v88 = v85 + 2;
              if (v88[-1].n128_f64[0] < v89)
              {
                v83 = v88;
                v82 = v87;
              }
            }

            *v84 = *v83;
          }

          while (v82 <= ((v13 - 2) >> 1));
          if (v83 == --a2)
          {
            result = v121;
            *v83 = v121;
          }

          else
          {
            *v83 = *a2;
            result = v121;
            *a2 = v121;
            v90 = (&v83[1] - selfCopy) >> 4;
            v91 = v90 < 2;
            v92 = v90 - 2;
            if (!v91)
            {
              v93 = v92 >> 1;
              v94 = (selfCopy + 16 * v93);
              result.n128_u64[0] = v83->n128_u64[0];
              if (v94->n128_f64[0] < v83->n128_f64[0])
              {
                v95 = v83->n128_i64[1];
                do
                {
                  v96 = v83;
                  v83 = v94;
                  *v96 = *v94;
                  if (!v93)
                  {
                    break;
                  }

                  v93 = (v93 - 1) >> 1;
                  v94 = (selfCopy + 16 * v93);
                }

                while (v94->n128_f64[0] < result.n128_f64[0]);
                v83->n128_u64[0] = result.n128_u64[0];
                v83->n128_u64[1] = v95;
              }
            }
          }

          v91 = v13-- <= 2;
        }

        while (!v91);
      }

      return result;
    }

    v14 = (selfCopy + 16 * (v13 >> 1));
    v15 = v14;
    v16 = *n128_u64;
    if (v13 >= 0x81)
    {
      v17 = *v14;
      if (*v14 >= *selfCopy)
      {
        if (v16 < v17)
        {
          v103 = *v14;
          *v14 = *n128_u64;
          *n128_u64 = v103;
          if (*v14 < *selfCopy)
          {
            v104 = *selfCopy;
            *selfCopy = *v14;
            *v14 = v104;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v101 = *selfCopy;
          *selfCopy = *n128_u64;
          goto LABEL_26;
        }

        v107 = *selfCopy;
        *selfCopy = *v14;
        *v14 = v107;
        if (*n128_u64 < *v14)
        {
          v101 = *v14;
          *v14 = *n128_u64;
LABEL_26:
          *n128_u64 = v101;
        }
      }

      v19 = (selfCopy + 16);
      v20 = v14 - 2;
      v21 = *(v14 - 2);
      v22 = *n128_f64;
      if (v21 >= *(selfCopy + 16))
      {
        if (v22 < v21)
        {
          v108 = *v20;
          *v20 = *n128_f64;
          *n128_f64 = v108;
          if (*v20 < *v19)
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = *v19;
          *v19 = *n128_f64;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (*n128_f64 < *v20)
        {
          v110 = *v20;
          *v20 = *n128_f64;
          v23 = v110;
LABEL_38:
          *n128_f64 = v23;
        }
      }

      v26 = (selfCopy + 32);
      v28 = v14[2];
      v27 = (v14 + 2);
      v29 = v28;
      v30 = *v11;
      if (v28 >= *(selfCopy + 32))
      {
        if (v30 < v29)
        {
          v111 = *v27;
          *v27 = *v11;
          *v11 = v111;
          if (*v27 < *v26)
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (*v11 < *v27)
        {
          v112 = *v27;
          *v27 = *v11;
          v31 = v112;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = *v15;
      v35 = *v27;
      if (*v15 >= *v20)
      {
        if (v35 < v34)
        {
          v114 = *v15;
          *v15 = *v27;
          *v27 = v114;
          if (*v15 < *v20)
          {
            v115 = *v20;
            *v20 = *v15;
            *v15 = v115;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v113 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v116 = *v20;
        *v20 = *v15;
        *v15 = v116;
        if (*v27 < *v15)
        {
          v113 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v113;
        }
      }

      v117 = *selfCopy;
      *selfCopy = *v15;
      result.n128_u64[1] = v117.n128_u64[1];
      *v15 = v117;
      goto LABEL_58;
    }

    v18 = *selfCopy;
    if (*selfCopy >= *v14)
    {
      if (v16 < v18)
      {
        v105 = *selfCopy;
        *selfCopy = *n128_u64;
        result.n128_u64[1] = v105.n128_u64[1];
        *n128_u64 = v105;
        if (*selfCopy < *v14)
        {
          v106 = *v14;
          *v14 = *selfCopy;
          result.n128_u64[1] = v106.n128_u64[1];
          *selfCopy = v106;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v18)
    {
      v109 = *v14;
      *v14 = *selfCopy;
      result.n128_u64[1] = v109.n128_u64[1];
      *selfCopy = v109;
      if (*n128_u64 >= *selfCopy)
      {
        goto LABEL_58;
      }

      v102 = *selfCopy;
      *selfCopy = *n128_u64;
    }

    else
    {
      v102 = *v14;
      *v14 = *n128_u64;
    }

    result.n128_u64[1] = v102.n128_u64[1];
    *n128_u64 = v102;
LABEL_58:
    --a3;
    result.n128_u64[0] = *selfCopy;
    if ((a4 & 1) != 0 || *(selfCopy - 16) < result.n128_f64[0])
    {
      v36 = *(selfCopy + 8);
      v37 = selfCopy;
      do
      {
        v38 = v37;
        v39 = *(v37 + 16);
        v37 += 16;
      }

      while (v39 < result.n128_f64[0]);
      v40 = a2;
      if (v38 == selfCopy)
      {
        v40 = a2;
        do
        {
          if (v37 >= v40)
          {
            break;
          }

          v42 = v40[-1].n128_f64[0];
          --v40;
        }

        while (v42 >= result.n128_f64[0]);
      }

      else
      {
        do
        {
          v41 = v40[-1].n128_f64[0];
          --v40;
        }

        while (v41 >= result.n128_f64[0]);
      }

      selfCopy = v37;
      if (v37 < v40)
      {
        v43 = v40;
        do
        {
          v44 = *selfCopy;
          *selfCopy = *v43;
          *v43 = v44;
          do
          {
            v45 = *(selfCopy + 16);
            selfCopy += 16;
          }

          while (v45 < result.n128_f64[0]);
          do
          {
            v46 = v43[-1].n128_f64[0];
            --v43;
          }

          while (v46 >= result.n128_f64[0]);
        }

        while (selfCopy < v43);
      }

      if (selfCopy - 16 != self)
      {
        *self = *(selfCopy - 16);
      }

      *(selfCopy - 16) = result.n128_u64[0];
      *(selfCopy - 8) = v36;
      if (v37 < v40)
      {
        goto LABEL_79;
      }

      v47 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,-[LabelNavRouteLabeler(Debug) drawNavOverlayDebugView:navContext:]::$_0 &,gm::Range<double> *>(self, (selfCopy - 16), result);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,-[LabelNavRouteLabeler(Debug) drawNavOverlayDebugView:navContext:]::$_0 &,gm::Range<double> *>(selfCopy, a2, v48))
      {
        a2 = (selfCopy - 16);
        if (!v47)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v47)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,[LabelNavRouteLabeler(Debug) drawNavOverlayDebugView:navContext:]::$_0 &,gm::Range<double> *,false>(self, selfCopy - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      if (result.n128_f64[0] >= *n128_u64)
      {
        v50 = selfCopy + 16;
        do
        {
          selfCopy = v50;
          if (v50 >= a2)
          {
            break;
          }

          v50 += 16;
        }

        while (result.n128_f64[0] >= *selfCopy);
      }

      else
      {
        do
        {
          v49 = *(selfCopy + 16);
          selfCopy += 16;
        }

        while (result.n128_f64[0] >= v49);
      }

      v51 = a2;
      if (selfCopy < a2)
      {
        v51 = a2;
        do
        {
          v52 = v51[-1].n128_f64[0];
          --v51;
        }

        while (result.n128_f64[0] < v52);
      }

      v53 = *(self + 8);
      while (selfCopy < v51)
      {
        v118 = *selfCopy;
        *selfCopy = *v51;
        *v51 = v118;
        do
        {
          v54 = *(selfCopy + 16);
          selfCopy += 16;
        }

        while (result.n128_f64[0] >= v54);
        do
        {
          v55 = v51[-1].n128_f64[0];
          --v51;
        }

        while (result.n128_f64[0] < v55);
      }

      if (selfCopy - 16 != self)
      {
        *self = *(selfCopy - 16);
      }

      a4 = 0;
      *(selfCopy - 16) = result.n128_u64[0];
      *(selfCopy - 8) = v53;
    }
  }

  v56 = (selfCopy + 16);
  result.n128_u64[0] = *(selfCopy + 16);
  v57 = *n128_u64;
  if (result.n128_f64[0] >= *selfCopy)
  {
    if (v57 >= result.n128_f64[0])
    {
      return result;
    }

    result = *v56;
    *v56 = *n128_u64;
    *n128_u64 = result;
    goto LABEL_181;
  }

  if (v57 < result.n128_f64[0])
  {
    goto LABEL_107;
  }

  v123 = *selfCopy;
  *selfCopy = *v56;
  result.n128_u64[1] = v123.n128_u64[1];
  *v56 = v123;
  result.n128_u64[0] = *n128_u64;
  if (*n128_u64 < *(selfCopy + 16))
  {
    result = *v56;
    *v56 = *n128_u64;
    goto LABEL_108;
  }

  return result;
}

@end