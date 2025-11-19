uint64_t std::__num_put<char>::__widen_and_group_int(unsigned __int8 *a1, char *a2, char *a3, uint64_t a4, void *a5, uint64_t *a6, std::locale *this)
{
  v14 = std::locale::use_facet(this, &std::ctype<char>::id);
  v15 = std::locale::use_facet(this, &std::numpunct<char>::id);
  (v15->__vftable[1].__on_zero_shared)(&v50);
  v16 = HIBYTE(v52);
  if (v52 < 0)
  {
    v16 = v51;
  }

  if (v16)
  {
    *a6 = a4;
    v17 = *a1;
    if (v17 == 45 || (v18 = a1, v17 == 43))
    {
      v19 = (v14->__vftable[2].~facet_0)(v14, v17);
      v18 = (a1 + 1);
      v20 = (*a6)++;
      *v20 = v19;
    }

    if (a3 - v18 >= 2 && *v18 == 48 && (v18[1] | 0x20) == 0x78)
    {
      v21 = (v14->__vftable[2].~facet_0)(v14, 48);
      v22 = (*a6)++;
      *v22 = v21;
      v23 = (v14->__vftable[2].~facet_0)(v14, v18[1]);
      v18 += 2;
      v24 = (*a6)++;
      *v24 = v23;
    }

    v48 = a5;
    v49 = v18;
    v47 = a2;
    if (v18 != a3)
    {
      v25 = a3 - 1;
      if (a3 - 1 > v18)
      {
        v26 = v18 + 1;
        do
        {
          v27 = *(v26 - 1);
          *(v26 - 1) = *v25;
          *v25-- = v27;
          v28 = v26++ >= v25;
        }

        while (!v28);
      }
    }

    result = (v15->__vftable[1].~facet_0)(v15);
    if (v18 < a3)
    {
      v30 = result;
      v31 = 0;
      v32 = 0;
      v33 = a3 - v18;
      do
      {
        if (v52 >= 0)
        {
          v34 = &v50;
        }

        else
        {
          v34 = v50;
        }

        v35 = *(v34 + v31);
        if (v35)
        {
          v36 = v32 == v35;
        }

        else
        {
          v36 = 0;
        }

        if (v36)
        {
          v32 = 0;
          v37 = (*a6)++;
          *v37 = v30;
          v38 = HIBYTE(v52);
          if (v52 < 0)
          {
            v38 = v51;
          }

          if (v38 - 1 > v31)
          {
            ++v31;
          }
        }

        result = (v14->__vftable[2].~facet_0)(v14, *v18);
        v39 = (*a6)++;
        *v39 = result;
        ++v32;
        ++v18;
        --v33;
      }

      while (v33);
    }

    a5 = v48;
    a2 = v47;
    v40 = a4 + v49 - a1;
    v41 = *a6;
    v42 = (*a6 - 1);
    if (v40 != *a6 && v42 > v40)
    {
      v44 = v49 - a1 + a4 + 1;
      do
      {
        v45 = *(v44 - 1);
        *(v44 - 1) = *v42;
        *v42-- = v45;
        v28 = v44++ >= v42;
      }

      while (!v28);
      v41 = *a6;
    }
  }

  else
  {
    result = (v14->__vftable[2].__on_zero_shared)(v14, a1, a3, a4);
    v41 = a4 + a3 - a1;
    *a6 = v41;
  }

  v46 = a4 + a2 - a1;
  if (a2 == a3)
  {
    v46 = v41;
  }

  *a5 = v46;
  if (SHIBYTE(v52) < 0)
  {
    return MEMORY[0x193B0CA40](v50, v52 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_1922D4F0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (SHIBYTE(a16) < 0)
  {
    MEMORY[0x193B0CA40](a14, a16 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__num_put<char>::__widen_and_group_float(unsigned __int8 *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t *a5, unint64_t *a6, std::locale *this)
{
  v14 = std::locale::use_facet(this, &std::ctype<char>::id);
  v63 = std::locale::use_facet(this, &std::numpunct<char>::id);
  (v63->__vftable[1].__on_zero_shared)(&v66);
  *a6 = a4;
  v15 = *a1;
  if (v15 == 45 || (v16 = a1, v15 == 43))
  {
    v17 = (v14->__vftable[2].~facet_0)(v14, v15);
    v16 = a1 + 1;
    v18 = (*a6)++;
    *v18 = v17;
  }

  v19 = a3 - v16;
  v20 = a3 - v16 - 2;
  v64 = a2;
  v65 = a1;
  if ((a3 - v16) >= 2 && *v16 == 48 && (v16[1] | 0x20) == 0x78)
  {
    v21 = (v14->__vftable[2].~facet_0)(v14, 48);
    v22 = (*a6)++;
    *v22 = v21;
    v23 = (v14->__vftable[2].~facet_0)(v14, v16[1]);
    v24 = (v16 + 2);
    v25 = (*a6)++;
    *v25 = v23;
    if ((v16 + 2) >= a3)
    {
      v27 = v16 + 2;
    }

    else
    {
      v26 = MEMORY[0x1E69E9830];
      v27 = v16 + 2;
      do
      {
        v28 = *v27;
        if ((v28 & 0x80000000) != 0)
        {
          if (!__maskrune_l(v28, 0x10000uLL, 0))
          {
            goto LABEL_25;
          }
        }

        else if ((*(v26 + 4 * v28 + 60) & 0x10000) == 0)
        {
          goto LABEL_25;
        }

        ++v27;
        --v20;
      }

      while (v20);
      v27 = a3;
    }
  }

  else
  {
    if (v16 >= a3)
    {
      v27 = v16;
    }

    else
    {
      v29 = MEMORY[0x1E69E9830];
      v27 = v16;
      do
      {
        v30 = *v27;
        if ((v30 & 0x80000000) != 0)
        {
          if (!__maskrune_l(v30, 0x400uLL, 0))
          {
            goto LABEL_24;
          }
        }

        else if ((*(v29 + 4 * v30 + 60) & 0x400) == 0)
        {
          goto LABEL_24;
        }

        ++v27;
        --v19;
      }

      while (v19);
      v27 = a3;
    }

LABEL_24:
    v24 = v16;
  }

LABEL_25:
  v31 = HIBYTE(v68);
  if (v68 < 0)
  {
    v31 = v67;
  }

  if (v31)
  {
    v61 = a4;
    if (v24 != v27)
    {
      v32 = v27 - 1;
      if ((v27 - 1) > v24)
      {
        v33 = v24 + 1;
        do
        {
          v34 = *(v33 - 1);
          *(v33 - 1) = *v32;
          *v32-- = v34;
          v35 = v33++ >= v32;
        }

        while (!v35);
      }
    }

    v62 = a5;
    v36 = (v63->__vftable[1].~facet_0)(v63);
    if (v24 < v27)
    {
      v37 = v36;
      v38 = 0;
      v39 = 0;
      v40 = &v27[-v24];
      v41 = v24;
      do
      {
        if (v68 >= 0)
        {
          v42 = &v66;
        }

        else
        {
          v42 = v66;
        }

        v43 = *(v42 + v38);
        if (v43 >= 1 && v39 == v43)
        {
          v39 = 0;
          v45 = (*a6)++;
          *v45 = v37;
          v46 = HIBYTE(v68);
          if (v68 < 0)
          {
            v46 = v67;
          }

          if (v46 - 1 > v38)
          {
            ++v38;
          }
        }

        v47 = (v14->__vftable[2].~facet_0)(v14, *v41);
        v48 = (*a6)++;
        *v48 = v47;
        ++v39;
        ++v41;
        --v40;
      }

      while (v40);
    }

    a4 = v61;
    v49 = v61 + v24 - v65;
    v50 = (*a6 - 1);
    v51 = v49 != *a6 && v50 > v49;
    a5 = v62;
    if (v51)
    {
      v52 = v24 - v65 + v61 + 1;
      do
      {
        v53 = *(v52 - 1);
        *(v52 - 1) = *v50;
        *v50-- = v53;
        v35 = v52++ >= v50;
      }

      while (!v35);
    }
  }

  else
  {
    (v14->__vftable[2].__on_zero_shared)(v14, v24, v27, *a6);
    *a6 += &v27[-v24];
  }

  if (v27 < a3)
  {
    v54 = a3 - v27;
    while (*v27 != 46)
    {
      v55 = (v14->__vftable[2].~facet_0)(v14);
      v56 = (*a6)++;
      *v56 = v55;
      ++v27;
      if (!--v54)
      {
        goto LABEL_64;
      }
    }

    v57 = (v63->__vftable[1].~facet)(v63);
    v58 = (*a6)++;
    *v58 = v57;
    ++v27;
  }

LABEL_64:
  result = (v14->__vftable[2].__on_zero_shared)(v14, v27, a3, *a6);
  v60 = *a6 + a3 - v27;
  *a6 = v60;
  if (v64 != a3)
  {
    v60 = a4 + v64 - v65;
  }

  *a5 = v60;
  if (SHIBYTE(v68) < 0)
  {
    return MEMORY[0x193B0CA40](v66, v68 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_1922D54A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (SHIBYTE(a18) < 0)
  {
    MEMORY[0x193B0CA40](a16, a18 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__num_put<wchar_t>::__widen_and_group_int(char *a1, char *a2, char *a3, uint64_t a4, void *a5, void *a6, std::locale *this)
{
  v14 = std::locale::use_facet(this, &std::ctype<wchar_t>::id);
  v15 = std::locale::use_facet(this, &std::numpunct<wchar_t>::id);
  (v15->__vftable[1].__on_zero_shared)(&v52);
  v16 = HIBYTE(v54);
  if (v54 < 0)
  {
    v16 = v53;
  }

  if (v16)
  {
    *a6 = a4;
    v17 = *a1;
    if (v17 == 45 || (v18 = a1, v17 == 43))
    {
      v19 = (v14->__vftable[3].__on_zero_shared)(v14, v17);
      v18 = a1 + 1;
      v20 = *a6;
      *v20 = v19;
      *a6 = v20 + 1;
    }

    if (a3 - v18 >= 2 && *v18 == 48 && (v18[1] | 0x20) == 0x78)
    {
      v21 = (v14->__vftable[3].__on_zero_shared)(v14, 48);
      v22 = *a6;
      *v22 = v21;
      *a6 = v22 + 1;
      v23 = (v14->__vftable[3].__on_zero_shared)(v14, v18[1]);
      v24 = v18 + 2;
      v25 = *a6;
      *v25 = v23;
      *a6 = v25 + 1;
      v18 += 2;
    }

    else
    {
      v24 = v18;
    }

    if (v18 != a3)
    {
      v26 = a3 - 1;
      if (a3 - 1 > v18)
      {
        v27 = v18 + 1;
        do
        {
          v28 = *(v27 - 1);
          *(v27 - 1) = *v26;
          *v26-- = v28;
          v29 = v27++ >= v26;
        }

        while (!v29);
      }
    }

    result = (v15->__vftable[1].~facet_0)(v15);
    if (v18 >= a3)
    {
      v42 = *a6;
    }

    else
    {
      v31 = result;
      v50 = a2;
      v51 = a5;
      v32 = 0;
      v33 = 0;
      v49 = v24;
      v34 = a3 - v24;
      do
      {
        if (v54 >= 0)
        {
          v35 = &v52;
        }

        else
        {
          v35 = v52;
        }

        v36 = *(v35 + v32);
        if (v36)
        {
          v37 = v33 == v36;
        }

        else
        {
          v37 = 0;
        }

        if (v37)
        {
          v33 = 0;
          v38 = *a6;
          *v38 = v31;
          *a6 = v38 + 1;
          v39 = HIBYTE(v54);
          if (v54 < 0)
          {
            v39 = v53;
          }

          if (v39 - 1 > v32)
          {
            ++v32;
          }
        }

        result = (v14->__vftable[3].__on_zero_shared)(v14, *v18);
        v40 = *a6;
        v41 = *a6;
        *v41 = result;
        *a6 = v41 + 1;
        ++v33;
        ++v18;
        --v34;
      }

      while (v34);
      v42 = v40 + 1;
      a2 = v50;
      a5 = v51;
      v24 = v49;
    }

    v43 = a4 + 4 * (v24 - a1);
    v44 = v42 - 1;
    if (v43 != v42 && v44 > v43)
    {
      v46 = a4 - 4 * a1 + 4 * v24 + 4;
      do
      {
        v47 = *(v46 - 4);
        *(v46 - 4) = *v44;
        *v44-- = v47;
        v29 = v46 >= v44;
        v46 += 4;
      }

      while (!v29);
    }
  }

  else
  {
    result = (v14->__vftable[4].~facet)(v14, a1, a3, a4);
    *a6 = a4 + 4 * (a3 - a1);
  }

  v48 = (a4 + 4 * (a2 - a1));
  if (a2 == a3)
  {
    v48 = *a6;
  }

  *a5 = v48;
  if (SHIBYTE(v54) < 0)
  {
    return MEMORY[0x193B0CA40](v52, v54 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_1922D589C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (SHIBYTE(a16) < 0)
  {
    MEMORY[0x193B0CA40](a14, a16 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__num_put<wchar_t>::__widen_and_group_float(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, std::locale *this)
{
  v14 = std::locale::use_facet(this, &std::ctype<wchar_t>::id);
  v66 = std::locale::use_facet(this, &std::numpunct<wchar_t>::id);
  (v66->__vftable[1].__on_zero_shared)(&v69);
  *a6 = a4;
  v15 = *a1;
  if (v15 == 45 || (v16 = a1, v15 == 43))
  {
    v17 = (v14->__vftable[3].__on_zero_shared)(v14, v15);
    v16 = a1 + 1;
    v18 = *a6;
    *v18 = v17;
    *a6 = (v18 + 1);
  }

  v19 = a3 - v16;
  v20 = a3 - v16 - 2;
  v67 = a2;
  v68 = a1;
  if ((a3 - v16) >= 2 && *v16 == 48 && (v16[1] | 0x20) == 0x78)
  {
    v21 = (v14->__vftable[3].__on_zero_shared)(v14, 48);
    v22 = *a6;
    *v22 = v21;
    *a6 = (v22 + 1);
    v23 = (v14->__vftable[3].__on_zero_shared)(v14, v16[1]);
    v24 = (v16 + 2);
    v25 = *a6;
    *v25 = v23;
    *a6 = (v25 + 1);
    if ((v16 + 2) >= a3)
    {
      v27 = v16 + 2;
    }

    else
    {
      v26 = MEMORY[0x1E69E9830];
      v27 = v16 + 2;
      do
      {
        v28 = *v27;
        if ((v28 & 0x80000000) != 0)
        {
          if (!__maskrune_l(v28, 0x10000uLL, 0))
          {
            goto LABEL_25;
          }
        }

        else if ((*(v26 + 4 * v28 + 60) & 0x10000) == 0)
        {
          goto LABEL_25;
        }

        ++v27;
        --v20;
      }

      while (v20);
      v27 = a3;
    }
  }

  else
  {
    if (v16 >= a3)
    {
      v27 = v16;
    }

    else
    {
      v29 = MEMORY[0x1E69E9830];
      v27 = v16;
      do
      {
        v30 = *v27;
        if ((v30 & 0x80000000) != 0)
        {
          if (!__maskrune_l(v30, 0x400uLL, 0))
          {
            goto LABEL_24;
          }
        }

        else if ((*(v29 + 4 * v30 + 60) & 0x400) == 0)
        {
          goto LABEL_24;
        }

        ++v27;
        --v19;
      }

      while (v19);
      v27 = a3;
    }

LABEL_24:
    v24 = v16;
  }

LABEL_25:
  v31 = HIBYTE(v71);
  if (v71 < 0)
  {
    v31 = v70;
  }

  if (v31)
  {
    if (v24 != v27)
    {
      v32 = v27 - 1;
      if ((v27 - 1) > v24)
      {
        v33 = v24 + 1;
        do
        {
          v34 = *(v33 - 1);
          *(v33 - 1) = *v32;
          *v32-- = v34;
          v35 = v33++ >= v32;
        }

        while (!v35);
      }
    }

    v36 = (v66->__vftable[1].~facet_0)(v66);
    if (v24 >= v27)
    {
      v50 = *a6;
    }

    else
    {
      v37 = v36;
      v64 = a4;
      v65 = a5;
      v38 = 0;
      v39 = 0;
      v40 = &v27[-v24];
      v41 = v24;
      do
      {
        if (v71 >= 0)
        {
          v42 = &v69;
        }

        else
        {
          v42 = v69;
        }

        v43 = *(v42 + v38);
        if (v43 >= 1 && v39 == v43)
        {
          v39 = 0;
          v45 = *a6;
          *v45 = v37;
          *a6 = (v45 + 1);
          v46 = HIBYTE(v71);
          if (v71 < 0)
          {
            v46 = v70;
          }

          if (v46 - 1 > v38)
          {
            ++v38;
          }
        }

        v47 = (v14->__vftable[3].__on_zero_shared)(v14, *v41);
        v48 = *a6;
        v49 = *a6;
        *v49 = v47;
        *a6 = (v49 + 1);
        ++v39;
        ++v41;
        --v40;
      }

      while (v40);
      v50 = v48 + 4;
      a5 = v65;
      a4 = v64;
    }

    v51 = a4 + 4 * (v24 - v68);
    v52 = (v50 - 4);
    if (v51 != v50 && v52 > v51)
    {
      v54 = a4 - 4 * v68 + 4 * v24 + 4;
      do
      {
        v55 = *(v54 - 4);
        *(v54 - 4) = *v52;
        *v52-- = v55;
        v35 = v54 >= v52;
        v54 += 4;
      }

      while (!v35);
    }
  }

  else
  {
    (v14->__vftable[4].~facet)(v14, v24, v27, *a6);
    v50 = *a6 + 4 * &v27[-v24];
    *a6 = v50;
  }

  if (v27 < a3)
  {
    v56 = a3 - v27;
    while (*v27 != 46)
    {
      v57 = (v14->__vftable[3].__on_zero_shared)(v14);
      v58 = *a6;
      v59 = *a6;
      *v59 = v57;
      *a6 = (v59 + 1);
      ++v27;
      if (!--v56)
      {
        v50 = v58 + 4;
        goto LABEL_65;
      }
    }

    v60 = (v66->__vftable[1].~facet)(v66);
    v61 = *a6;
    *v61 = v60;
    v50 = (v61 + 1);
    *a6 = v50;
    ++v27;
  }

LABEL_65:
  result = (v14->__vftable[4].~facet)(v14, v27, a3, v50);
  v63 = *a6 + 4 * (a3 - v27);
  *a6 = v63;
  if (v67 != a3)
  {
    v63 = a4 + 4 * (v67 - v68);
  }

  *a5 = v63;
  if (SHIBYTE(v71) < 0)
  {
    return MEMORY[0x193B0CA40](v69, v71 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

void sub_1922D5E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (SHIBYTE(a18) < 0)
  {
    MEMORY[0x193B0CA40](a16, a18 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::time_get<char,std::istreambuf_iterator<char>>::get(uint64_t a1, void *a2, void *a3, std::ios_base *this, _DWORD *a5, uint64_t a6, char *a7, char *a8)
{
  std::ios_base::getloc(this);
  v16 = std::locale::use_facet(&v44, &std::ctype<char>::id);
  locale = v44.__locale_;
  if (v44.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v44.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  *a5 = 0;
  if (a7 != a8)
  {
    do
    {
      if (a2)
      {
        if (a2[3] == a2[4])
        {
          v19 = (*(*a2 + 72))(a2);
          v18 = v19 == -1;
          if (v19 == -1)
          {
            a2 = 0;
          }

          if (!a3)
          {
LABEL_16:
            if (v18)
            {
              goto LABEL_74;
            }

            goto LABEL_21;
          }
        }

        else
        {
          v18 = 0;
          if (!a3)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        v18 = 1;
        if (!a3)
        {
          goto LABEL_16;
        }
      }

      if (a3[3] == a3[4])
      {
        v20 = (*(*a3 + 72))(a3);
        if (v20 == -1)
        {
          a3 = 0;
        }

        if (((v18 ^ (v20 == -1)) & 1) == 0)
        {
LABEL_74:
          *a5 = 4;
          break;
        }
      }

      else if (!v18)
      {
        goto LABEL_74;
      }

LABEL_21:
      if ((v16->__vftable[3].~facet)(v16, *a7, 0) == 37)
      {
        if (a7 + 1 == a8)
        {
          goto LABEL_74;
        }

        v21 = (v16->__vftable[3].~facet)(v16, a7[1], 0);
        v22 = v21;
        if (v21 == 69 || v21 == 48)
        {
          if (a7 + 2 == a8)
          {
            goto LABEL_74;
          }

          v23 = (v16->__vftable[3].~facet)(v16, a7[2], 0);
          v24 = v22;
          v22 = v23;
          v25 = 2;
        }

        else
        {
          v24 = 0;
          v25 = 1;
        }

        a7 += v25;
        a2 = (*(*a1 + 72))(a1, a2, a3, this, a5, a6, v22, v24);
        goto LABEL_33;
      }

      v26 = *a7;
      if ((v26 & 0x8000000000000000) == 0)
      {
        v27 = v16[1].__vftable;
        if ((*(&v27->~facet + v26) & 0x4000) != 0)
        {
          v30 = a7 + 1;
          do
          {
            if (v30 == a8)
            {
              a7 = a8;
              goto LABEL_50;
            }

            v31 = *v30;
            if (v31 < 0)
            {
              a7 = v30;
              goto LABEL_50;
            }

            ++a7;
            ++v30;
          }

          while ((*(&v27->~facet + v31) & 0x4000) != 0);
          while (1)
          {
LABEL_50:
            if (a2)
            {
              if (a2[3] == a2[4])
              {
                v35 = (*(*a2 + 72))(a2);
                v34 = v35 == -1;
                if (v35 == -1)
                {
                  a2 = 0;
                }

                if (!a3)
                {
LABEL_61:
                  if (v34)
                  {
                    goto LABEL_44;
                  }

                  goto LABEL_66;
                }
              }

              else
              {
                v34 = 0;
                if (!a3)
                {
                  goto LABEL_61;
                }
              }
            }

            else
            {
              v34 = 1;
              if (!a3)
              {
                goto LABEL_61;
              }
            }

            if (a3[3] == a3[4])
            {
              v36 = (*(*a3 + 72))(a3);
              if (v36 == -1)
              {
                a3 = 0;
              }

              if (v34 == (v36 == -1))
              {
                goto LABEL_44;
              }
            }

            else if (!v34)
            {
              goto LABEL_44;
            }

LABEL_66:
            v37 = a2[3];
            if (v37 == a2[4])
            {
              v39 = (*(*a2 + 72))(a2);
              v38 = v39;
              if ((v39 & 0x80) != 0)
              {
                goto LABEL_44;
              }
            }

            else
            {
              v38 = *v37;
              if ((v38 & 0x80) != 0)
              {
                goto LABEL_44;
              }
            }

            if ((*(&v16[1].~facet + v38) & 0x4000) == 0)
            {
              goto LABEL_44;
            }

            v40 = a2[3];
            if (v40 == a2[4])
            {
              (*(*a2 + 80))(a2);
            }

            else
            {
              a2[3] = v40 + 1;
            }
          }
        }
      }

      v28 = a2[3];
      if (v28 == a2[4])
      {
        v29 = (*(*a2 + 72))(a2);
      }

      else
      {
        v29 = *v28;
      }

      v32 = (v16->__vftable[1].~facet)(v16, v29);
      if (v32 == (v16->__vftable[1].~facet)(v16, *a7))
      {
        v33 = a2[3];
        if (v33 == a2[4])
        {
          (*(*a2 + 80))(a2);
        }

        else
        {
          a2[3] = v33 + 1;
        }

LABEL_33:
        ++a7;
        continue;
      }

      *a5 = 4;
LABEL_44:
      ;
    }

    while (a7 != a8 && !*a5);
  }

  if (a2)
  {
    if (a2[3] == a2[4])
    {
      v43 = (*(*a2 + 72))(a2);
      v41 = v43 == -1;
      if (v43 == -1)
      {
        a2 = 0;
      }

      if (!a3)
      {
LABEL_87:
        if (!v41)
        {
          return a2;
        }

        goto LABEL_82;
      }
    }

    else
    {
      v41 = 0;
      if (!a3)
      {
        goto LABEL_87;
      }
    }
  }

  else
  {
    v41 = 1;
    if (!a3)
    {
      goto LABEL_87;
    }
  }

  if (a3[3] == a3[4])
  {
    if ((v41 ^ ((*(*a3 + 72))(a3) == -1)))
    {
      return a2;
    }

    goto LABEL_82;
  }

  if (!v41)
  {
LABEL_82:
    *a5 |= 2u;
  }

  return a2;
}

void sub_1922D6480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::time_get<char,std::istreambuf_iterator<char>>::do_get_time(uint64_t a1, void *a2, void *a3, std::ios_base *a4, _DWORD *a5, uint64_t a6)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0x53253A4D253A4825;
  result = std::time_get<char,std::istreambuf_iterator<char>>::get(a1, a2, a3, a4, a5, a6, &v8, &v9);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::time_get<char,std::istreambuf_iterator<char>>::do_get_date(uint64_t a1, void *a2, void *a3, std::ios_base *a4, _DWORD *a5, uint64_t a6)
{
  v12 = (*(*(a1 + 16) + 40))();
  v13 = *(v12 + 23);
  if ((v13 & 0x80u) == 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = *v12;
  }

  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v12 + 8);
  }

  return std::time_get<char,std::istreambuf_iterator<char>>::get(a1, a2, a3, a4, a5, a6, v14, &v14[v13]);
}

void *std::time_get<char,std::istreambuf_iterator<char>>::do_get_weekday(uint64_t a1, void *a2, void *a3, std::ios_base *this, _DWORD *a5, uint64_t a6)
{
  v14 = a2;
  std::ios_base::getloc(this);
  v10 = std::locale::use_facet(&v13, &std::ctype<char>::id);
  locale = v13.__locale_;
  if (v13.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v13.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  std::time_get<char,std::istreambuf_iterator<char>>::__get_weekdayname(a1, (a6 + 24), &v14, a3, a5, v10);
  return v14;
}

void sub_1922D6694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9)
{
  if (a9 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::time_get<char,std::istreambuf_iterator<char>>::__get_weekdayname(uint64_t a1, int *a2, void **a3, void *a4, _DWORD *a5, uint64_t a6)
{
  v11 = (**(a1 + 16))();
  result = std::__scan_keyword[abi:ne200100]<std::istreambuf_iterator<char>,std::string const*,std::ctype<char>>(a3, a4, v11, v11 + 42, a6, a5, 0);
  if (result - v11 <= 335)
  {
    *a2 = (-1431655765 * (result - v11)) % 7;
  }

  return result;
}

void *std::time_get<char,std::istreambuf_iterator<char>>::do_get_monthname(uint64_t a1, void *a2, void *a3, std::ios_base *this, _DWORD *a5, uint64_t a6)
{
  v14 = a2;
  std::ios_base::getloc(this);
  v10 = std::locale::use_facet(&v13, &std::ctype<char>::id);
  locale = v13.__locale_;
  if (v13.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v13.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  std::time_get<char,std::istreambuf_iterator<char>>::__get_monthname(a1, (a6 + 16), &v14, a3, a5, v10);
  return v14;
}

void sub_1922D6858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9)
{
  if (a9 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::time_get<char,std::istreambuf_iterator<char>>::__get_monthname(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, uint64_t a6)
{
  v11 = (*(*(a1 + 16) + 8))();
  result = std::__scan_keyword[abi:ne200100]<std::istreambuf_iterator<char>,std::string const*,std::ctype<char>>(a3, a4, v11, v11 + 72, a6, a5, 0);
  if (result - v11 <= 575)
  {
    *a2 = -1431655765 * (result - v11) - 12 * (((((0xAAAAAAAAAAAAAAABLL * (result - v11)) * 0x2AAAAAAAAAAAAAABLL) >> 64) >> 63) + ((((0xAAAAAAAAAAAAAAABLL * (result - v11)) * 0x2AAAAAAAAAAAAAABLL) >> 64) >> 1));
  }

  return result;
}

void *std::time_get<char,std::istreambuf_iterator<char>>::do_get_year(uint64_t a1, void *a2, void *a3, std::ios_base *this, _DWORD *a5, uint64_t a6)
{
  v14 = a2;
  std::ios_base::getloc(this);
  v10 = std::locale::use_facet(&v13, &std::ctype<char>::id);
  locale = v13.__locale_;
  if (v13.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v13.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  std::time_get<char,std::istreambuf_iterator<char>>::__get_year(a1, (a6 + 20), &v14, a3, a5, v10);
  return v14;
}

void sub_1922D6A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9)
{
  if (a9 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::time_get<char,std::istreambuf_iterator<char>>::__get_year(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, void *a6)
{
  result = std::__get_up_to_n_digits[abi:ne200100]<char,std::istreambuf_iterator<char>>(a3, a4, a5, a6, 4);
  if ((*a5 & 4) == 0)
  {
    v9 = result + 2000;
    v10 = result + 1900;
    if (result >= 100)
    {
      v10 = result;
    }

    if (result >= 69)
    {
      v9 = v10;
    }

    *a2 = v9 - 1900;
  }

  return result;
}

uint64_t std::time_get<char,std::istreambuf_iterator<char>>::do_get(void *a1, uint64_t a2, void *a3, std::ios_base *this, int *a5, int *a6, int a7)
{
  v35 = *MEMORY[0x1E69E9840];
  *v32 = a2;
  *a5 = 0;
  std::ios_base::getloc(this);
  v13 = std::locale::use_facet(v33, &std::ctype<char>::id);
  v14 = *v33;
  if (*v33 != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add((*v33 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v14 + 16))(v14);
  }

  switch(a7)
  {
    case 'A':
    case 'a':
      std::time_get<char,std::istreambuf_iterator<char>>::__get_weekdayname(a1, a6 + 6, v32, a3, a5, v13);
      break;
    case 'B':
    case 'b':
    case 'h':
      std::time_get<char,std::istreambuf_iterator<char>>::__get_monthname(a1, a6 + 4, v32, a3, a5, v13);
      break;
    case 'C':
    case 'E':
    case 'G':
    case 'J':
    case 'K':
    case 'L':
    case 'N':
    case 'O':
    case 'P':
    case 'Q':
    case 'U':
    case 'V':
    case 'W':
    case 'Z':
    case '[':
    case '\\':
    case ']':
    case '^':
    case '_':
    case 'f':
    case 'g':
    case 'i':
    case 'k':
    case 'l':
    case 'o':
    case 'q':
    case 's':
    case 'u':
    case 'v':
      goto LABEL_13;
    case 'D':
      *v33 = 0x79252F64252F6D25;
      v20 = std::time_get<char,std::istreambuf_iterator<char>>::get(a1, *v32, a3, this, a5, a6, v33, &v33[8]);
      goto LABEL_51;
    case 'F':
      *v33 = 0x64252D6D252D5925;
      v20 = std::time_get<char,std::istreambuf_iterator<char>>::get(a1, *v32, a3, this, a5, a6, v33, &v33[8]);
      goto LABEL_51;
    case 'H':
      v19 = std::__get_up_to_n_digits[abi:ne200100]<char,std::istreambuf_iterator<char>>(v32, a3, a5, v13, 2);
      v16 = *a5;
      if ((*a5 & 4) != 0 || v19 > 23)
      {
        goto LABEL_14;
      }

      goto LABEL_29;
    case 'I':
      v19 = std::__get_up_to_n_digits[abi:ne200100]<char,std::istreambuf_iterator<char>>(v32, a3, a5, v13, 2);
      v16 = *a5;
      if ((*a5 & 4) != 0 || (v19 - 1) > 0xB)
      {
        goto LABEL_14;
      }

LABEL_29:
      a6[2] = v19;
      break;
    case 'M':
      v23 = std::__get_up_to_n_digits[abi:ne200100]<char,std::istreambuf_iterator<char>>(v32, a3, a5, v13, 2);
      v16 = *a5;
      if ((*a5 & 4) != 0 || v23 > 59)
      {
        goto LABEL_14;
      }

      a6[1] = v23;
      break;
    case 'R':
      qmemcpy(v33, "%H:%M", 5);
      v20 = std::time_get<char,std::istreambuf_iterator<char>>::get(a1, *v32, a3, this, a5, a6, v33, &v33[5]);
      goto LABEL_51;
    case 'S':
      v30 = std::__get_up_to_n_digits[abi:ne200100]<char,std::istreambuf_iterator<char>>(v32, a3, a5, v13, 2);
      v16 = *a5;
      if ((*a5 & 4) != 0 || v30 > 60)
      {
        goto LABEL_14;
      }

      *a6 = v30;
      break;
    case 'T':
      *v33 = 0x53253A4D253A4825;
      v20 = std::time_get<char,std::istreambuf_iterator<char>>::get(a1, *v32, a3, this, a5, a6, v33, &v33[8]);
      goto LABEL_51;
    case 'X':
      v28 = (*(a1[2] + 48))();
      v25 = *v32;
      v26 = *(v28 + 23);
      if ((v26 & 0x80u) == 0)
      {
        v27 = v28;
      }

      else
      {
        v27 = *v28;
      }

      if ((v26 & 0x80u) != 0)
      {
        v26 = *(v28 + 8);
      }

      goto LABEL_50;
    case 'Y':
      v21 = std::__get_up_to_n_digits[abi:ne200100]<char,std::istreambuf_iterator<char>>(v32, a3, a5, v13, 4);
      if ((*a5 & 4) == 0)
      {
        a6[5] = v21 - 1900;
      }

      break;
    case 'c':
      v24 = (*(a1[2] + 24))();
      v25 = *v32;
      v26 = *(v24 + 23);
      if ((v26 & 0x80u) == 0)
      {
        v27 = v24;
      }

      else
      {
        v27 = *v24;
      }

      if ((v26 & 0x80u) != 0)
      {
        v26 = *(v24 + 8);
      }

LABEL_50:
      v20 = std::time_get<char,std::istreambuf_iterator<char>>::get(a1, v25, a3, this, a5, a6, v27, &v27[v26]);
      goto LABEL_51;
    case 'd':
    case 'e':
      v15 = std::__get_up_to_n_digits[abi:ne200100]<char,std::istreambuf_iterator<char>>(v32, a3, a5, v13, 2);
      v16 = *a5;
      if ((*a5 & 4) != 0 || (v15 - 1) > 0x1E)
      {
        goto LABEL_14;
      }

      a6[3] = v15;
      break;
    case 'j':
      v18 = std::__get_up_to_n_digits[abi:ne200100]<char,std::istreambuf_iterator<char>>(v32, a3, a5, v13, 3);
      v16 = *a5;
      if ((*a5 & 4) != 0 || v18 > 365)
      {
        goto LABEL_14;
      }

      a6[7] = v18;
      break;
    case 'm':
      v22 = std::__get_up_to_n_digits[abi:ne200100]<char,std::istreambuf_iterator<char>>(v32, a3, a5, v13, 2);
      v16 = *a5;
      if ((*a5 & 4) != 0 || (v22 - 1) > 0xB)
      {
        goto LABEL_14;
      }

      a6[4] = v22 - 1;
      break;
    case 'n':
    case 't':
      std::time_get<char,std::istreambuf_iterator<char>>::__get_white_space(a1, v32, a3, a5, v13);
      break;
    case 'p':
      std::time_get<char,std::istreambuf_iterator<char>>::__get_am_pm(a1, a6 + 2, v32, a3, a5, v13);
      break;
    case 'r':
      qmemcpy(v33, "%I:%M:%S %p", sizeof(v33));
      v20 = std::time_get<char,std::istreambuf_iterator<char>>::get(a1, *v32, a3, this, a5, a6, v33, v34);
LABEL_51:
      *v32 = v20;
      break;
    case 'w':
      v31 = std::__get_up_to_n_digits[abi:ne200100]<char,std::istreambuf_iterator<char>>(v32, a3, a5, v13, 1);
      v16 = *a5;
      if ((*a5 & 4) != 0 || v31 > 6)
      {
        goto LABEL_14;
      }

      a6[6] = v31;
      break;
    case 'x':
      result = (*(*a1 + 40))(a1, *v32, a3, this, a5, a6);
      goto LABEL_53;
    case 'y':
      std::time_get<char,std::istreambuf_iterator<char>>::__get_year(a1, a6 + 5, v32, a3, a5, v13);
      break;
    default:
      if (a7 == 37)
      {
        std::time_get<char,std::istreambuf_iterator<char>>::__get_percent(a1, v32, a3, a5, v13);
      }

      else
      {
LABEL_13:
        v16 = *a5;
LABEL_14:
        *a5 = v16 | 4;
      }

      break;
  }

  result = *v32;
LABEL_53:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1922D708C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::time_get<char,std::istreambuf_iterator<char>>::__get_day(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, void *a6)
{
  result = std::__get_up_to_n_digits[abi:ne200100]<char,std::istreambuf_iterator<char>>(a3, a4, a5, a6, 2);
  if ((*a5 & 4) != 0 || (result - 1) > 0x1E)
  {
    *a5 |= 4u;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t std::time_get<char,std::istreambuf_iterator<char>>::__get_hour(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, void *a6)
{
  result = std::__get_up_to_n_digits[abi:ne200100]<char,std::istreambuf_iterator<char>>(a3, a4, a5, a6, 2);
  if ((*a5 & 4) != 0 || result > 23)
  {
    *a5 |= 4u;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t std::time_get<char,std::istreambuf_iterator<char>>::__get_12_hour(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, void *a6)
{
  result = std::__get_up_to_n_digits[abi:ne200100]<char,std::istreambuf_iterator<char>>(a3, a4, a5, a6, 2);
  if ((*a5 & 4) != 0 || (result - 1) > 0xB)
  {
    *a5 |= 4u;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t std::time_get<char,std::istreambuf_iterator<char>>::__get_day_year_num(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, void *a6)
{
  result = std::__get_up_to_n_digits[abi:ne200100]<char,std::istreambuf_iterator<char>>(a3, a4, a5, a6, 3);
  if ((*a5 & 4) != 0 || result > 365)
  {
    *a5 |= 4u;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t std::time_get<char,std::istreambuf_iterator<char>>::__get_month(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, void *a6)
{
  result = std::__get_up_to_n_digits[abi:ne200100]<char,std::istreambuf_iterator<char>>(a3, a4, a5, a6, 2);
  if ((*a5 & 4) != 0 || (result - 1) > 0xB)
  {
    *a5 |= 4u;
  }

  else
  {
    *a2 = result - 1;
  }

  return result;
}

uint64_t std::time_get<char,std::istreambuf_iterator<char>>::__get_minute(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, void *a6)
{
  result = std::__get_up_to_n_digits[abi:ne200100]<char,std::istreambuf_iterator<char>>(a3, a4, a5, a6, 2);
  if ((*a5 & 4) != 0 || result > 59)
  {
    *a5 |= 4u;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t std::time_get<char,std::istreambuf_iterator<char>>::__get_white_space(uint64_t a1, void **a2, void *a3, _DWORD *a4, uint64_t a5)
{
  while (1)
  {
    v9 = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a2);
    v10 = v9;
    if (a3)
    {
      if (a3[3] == a3[4])
      {
        v11 = (*(*a3 + 72))(a3);
        if (v11 == -1)
        {
          a3 = 0;
        }

        if (v10 == (v11 == -1))
        {
          break;
        }
      }

      else if (!v9)
      {
        result = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a2);
        LODWORD(a2) = result;
        goto LABEL_19;
      }
    }

    else
    {
      if (v9)
      {
        result = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a2);
        LOBYTE(a2) = result;
        goto LABEL_25;
      }

      a3 = 0;
    }

    v12 = (*a2)[3];
    if (v12 == (*a2)[4])
    {
      v14 = (*(**a2 + 72))(*a2);
      v13 = v14;
      if ((v14 & 0x80) != 0)
      {
        break;
      }
    }

    else
    {
      v13 = *v12;
      if ((v13 & 0x80) != 0)
      {
        break;
      }
    }

    if ((*(*(a5 + 16) + 4 * v13) & 0x4000) == 0)
    {
      break;
    }

    v15 = *a2;
    v16 = (*a2)[3];
    if (v16 == (*a2)[4])
    {
      (*(*v15 + 80))(v15);
    }

    else
    {
      v15[3] = v16 + 1;
    }
  }

  result = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a2);
  LODWORD(a2) = result;
  if (a3)
  {
LABEL_19:
    if (a3[3] == a3[4])
    {
      result = (*(*a3 + 72))(a3);
      if ((a2 ^ (result == -1)))
      {
        return result;
      }
    }

    else if (a2)
    {
      return result;
    }

    goto LABEL_26;
  }

LABEL_25:
  if ((a2 & 1) == 0)
  {
    return result;
  }

LABEL_26:
  *a4 |= 2u;
  return result;
}

uint64_t *std::time_get<char,std::istreambuf_iterator<char>>::__get_am_pm(uint64_t a1, int *a2, void **a3, void *a4, _DWORD *a5, uint64_t a6)
{
  result = (*(*(a1 + 16) + 16))();
  v12 = result;
  v13 = *(result + 23);
  if (v13 < 0)
  {
    v13 = result[1];
  }

  v14 = *(result + 47);
  if (v14 < 0)
  {
    v14 = result[4];
  }

  if (v13 + v14)
  {
    result = std::__scan_keyword[abi:ne200100]<std::istreambuf_iterator<char>,std::string const*,std::ctype<char>>(a3, a4, result, result + 6, a6, a5, 0);
    v15 = *a2;
    if (result == v12 && v15 == 12)
    {
      *a2 = 0;
    }

    else if (result - v12 == 24 && v15 <= 11)
    {
      *a2 = v15 + 12;
    }
  }

  else
  {
    *a5 |= 4u;
  }

  return result;
}

uint64_t std::time_get<char,std::istreambuf_iterator<char>>::__get_second(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, void *a6)
{
  result = std::__get_up_to_n_digits[abi:ne200100]<char,std::istreambuf_iterator<char>>(a3, a4, a5, a6, 2);
  if ((*a5 & 4) != 0 || result > 60)
  {
    *a5 |= 4u;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t std::time_get<char,std::istreambuf_iterator<char>>::__get_weekday(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, void *a6)
{
  result = std::__get_up_to_n_digits[abi:ne200100]<char,std::istreambuf_iterator<char>>(a3, a4, a5, a6, 1);
  if ((*a5 & 4) != 0 || result > 6)
  {
    *a5 |= 4u;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t std::time_get<char,std::istreambuf_iterator<char>>::__get_year4(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, void *a6)
{
  result = std::__get_up_to_n_digits[abi:ne200100]<char,std::istreambuf_iterator<char>>(a3, a4, a5, a6, 4);
  if ((*a5 & 4) == 0)
  {
    *a2 = result - 1900;
  }

  return result;
}

uint64_t std::time_get<char,std::istreambuf_iterator<char>>::__get_percent(uint64_t a1, void **a2, void *a3, _DWORD *a4, uint64_t a5)
{
  result = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a2);
  v10 = result;
  if (a3)
  {
    if (a3[3] == a3[4])
    {
      result = (*(*a3 + 72))(a3);
      if (result == -1)
      {
        a3 = 0;
      }

      if (v10 == (result == -1))
      {
        goto LABEL_12;
      }
    }

    else if ((result & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (result)
    {
LABEL_12:
      v13 = 6;
LABEL_27:
      *a4 |= v13;
      return result;
    }

    a3 = 0;
  }

  v11 = (*a2)[3];
  if (v11 == (*a2)[4])
  {
    v12 = (*(**a2 + 72))(*a2);
  }

  else
  {
    v12 = *v11;
  }

  result = (*(*a5 + 72))(a5, v12, 0);
  if (result != 37)
  {
    v13 = 4;
    goto LABEL_27;
  }

  v14 = *a2;
  v15 = (*a2)[3];
  if (v15 == (*a2)[4])
  {
    (*(*v14 + 80))(v14);
  }

  else
  {
    v14[3] = v15 + 1;
  }

  result = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a2);
  v16 = result;
  if (a3)
  {
    if (a3[3] == a3[4])
    {
      result = (*(*a3 + 72))(a3);
      if ((v16 ^ (result == -1)))
      {
        return result;
      }
    }

    else if (result)
    {
      return result;
    }

LABEL_26:
    v13 = 2;
    goto LABEL_27;
  }

  if (result)
  {
    goto LABEL_26;
  }

  return result;
}

uint64_t std::__get_up_to_n_digits[abi:ne200100]<char,std::istreambuf_iterator<char>>(void **a1, void *a2, _DWORD *a3, void *a4, int a5)
{
  v10 = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a1);
  v11 = v10;
  if (a2)
  {
    if (a2[3] == a2[4])
    {
      v12 = (*(*a2 + 72))(a2);
      if (v12 == -1)
      {
        a2 = 0;
      }

      if (v11 == (v12 == -1))
      {
        goto LABEL_13;
      }
    }

    else if (!v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v10)
    {
LABEL_13:
      v15 = 0;
      v16 = 6;
      goto LABEL_17;
    }

    a2 = 0;
  }

  v13 = (*a1)[3];
  if (v13 == (*a1)[4])
  {
    v14 = (*(**a1 + 72))(*a1);
    if ((v14 & 0x80) != 0)
    {
LABEL_16:
      v15 = 0;
      v16 = 4;
      goto LABEL_17;
    }
  }

  else
  {
    v14 = *v13;
    if ((*v13 & 0x80) != 0)
    {
      goto LABEL_16;
    }
  }

  if ((*(a4[2] + 4 * v14) & 0x400) == 0)
  {
    goto LABEL_16;
  }

  v18 = (*(*a4 + 72))(a4, v14, 0);
  v19 = *a1;
  v20 = (*a1)[3];
  if (v20 == (*a1)[4])
  {
    (*(*v19 + 80))(v19);
  }

  else
  {
    v19[3] = v20 + 1;
  }

  while (1)
  {
    v21 = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a1);
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v23 = (*(*a2 + 72))(a2);
        v22 = v23 == -1;
        if (v23 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 1;
    }

    v15 = (v18 - 48);
    if (v21 == v22 || a5 < 2)
    {
      break;
    }

    v24 = (*a1)[3];
    if (v24 == (*a1)[4])
    {
      v25 = (*(**a1 + 72))(*a1);
      if ((v25 & 0x80) != 0)
      {
        return v15;
      }
    }

    else
    {
      v25 = *v24;
      if ((*v24 & 0x80) != 0)
      {
        return v15;
      }
    }

    if ((*(a4[2] + 4 * v25) & 0x400) == 0)
    {
      return v15;
    }

    v26 = (*(*a4 + 72))(a4, v25, 0);
    v27 = *a1;
    v28 = (*a1)[3];
    if (v28 == (*a1)[4])
    {
      (*(*v27 + 80))(v27);
    }

    else
    {
      v27[3] = v28 + 1;
    }

    v18 = v26 + 10 * v15;
    --a5;
  }

  v29 = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a1);
  if (a2)
  {
    if (a2[3] == a2[4])
    {
      if ((v29 ^ ((*(*a2 + 72))(a2) == -1)))
      {
        return v15;
      }
    }

    else if (v29)
    {
      return v15;
    }
  }

  else if (!v29)
  {
    return v15;
  }

  v16 = 2;
LABEL_17:
  *a3 |= v16;
  return v15;
}

void *std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::get(uint64_t a1, void *a2, void *a3, std::ios_base *this, _DWORD *a5, uint64_t a6, unsigned int *a7, unsigned int *a8)
{
  v34 = a3;
  v35 = a2;
  std::ios_base::getloc(this);
  v14 = std::locale::use_facet(&v33, &std::ctype<wchar_t>::id);
  locale = v33.__locale_;
  if (v33.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v33.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  *a5 = 0;
  if (a7 != a8)
  {
    while (1)
    {
      v16 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v35);
      if (v16 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v34))
      {
LABEL_40:
        *a5 = 4;
        goto LABEL_41;
      }

      if ((v14->__vftable[4].~facet_0)(v14, *a7, 0) == 37)
      {
        break;
      }

      if ((v14->__vftable[1].~facet)(v14, 0x4000, *a7))
      {
        v22 = a7 + 1;
        do
        {
          a7 = v22;
          if (v22 == a8)
          {
            break;
          }

          ++v22;
        }

        while (((v14->__vftable[1].~facet)(v14, 0x4000, *a7) & 1) != 0);
        while (1)
        {
          v24 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v35);
          if (v24 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v34))
          {
            break;
          }

          v25 = v35[3];
          v26 = v25 == v35[4] ? (*(*v35 + 72))(v35) : *v25;
          if (!(v14->__vftable[1].~facet)(v14, 0x4000, v26))
          {
            break;
          }

          v23 = v35[3];
          if (v23 == v35[4])
          {
            (*(*v35 + 80))(v35);
          }

          else
          {
            v35[3] = v23 + 4;
          }
        }

        goto LABEL_31;
      }

      v27 = v35[3];
      if (v27 == v35[4])
      {
        v28 = (*(*v35 + 72))(v35);
      }

      else
      {
        v28 = *v27;
      }

      v29 = (v14->__vftable[2].~facet_0)(v14, v28);
      if (v29 == (v14->__vftable[2].~facet_0)(v14, *a7))
      {
        v30 = v35[3];
        if (v30 == v35[4])
        {
          (*(*v35 + 80))(v35);
        }

        else
        {
          v35[3] = v30 + 4;
        }

LABEL_30:
        ++a7;
        goto LABEL_31;
      }

      *a5 = 4;
LABEL_31:
      if (a7 == a8 || *a5)
      {
        goto LABEL_41;
      }
    }

    if (a7 + 1 == a8)
    {
      goto LABEL_40;
    }

    v17 = (v14->__vftable[4].~facet_0)(v14, a7[1], 0);
    v18 = v17;
    if (v17 == 69 || v17 == 48)
    {
      if (a7 + 2 == a8)
      {
        goto LABEL_40;
      }

      v19 = (v14->__vftable[4].~facet_0)(v14, a7[2], 0);
      v20 = v18;
      v18 = v19;
      v21 = 8;
    }

    else
    {
      v20 = 0;
      v21 = 4;
    }

    a7 = (a7 + v21);
    v35 = (*(*a1 + 72))(a1, v35, v34, this, a5, a6, v18, v20);
    goto LABEL_30;
  }

LABEL_41:
  v31 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v35);
  if (v31 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v34))
  {
    *a5 |= 2u;
  }

  return v35;
}

void sub_1922D8158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get_time(uint64_t a1, void *a2, void *a3, std::ios_base *a4, _DWORD *a5, uint64_t a6)
{
  v10 = *MEMORY[0x1E69E9840];
  v8[0] = xmmword_19231C404;
  v8[1] = unk_19231C414;
  result = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::get(a1, a2, a3, a4, a5, a6, v8, &v9);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get_date(uint64_t a1, void *a2, void *a3, std::ios_base *a4, _DWORD *a5, uint64_t a6)
{
  v12 = (*(*(a1 + 16) + 40))();
  v13 = *(v12 + 23);
  if ((v13 & 0x80u) == 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = *v12;
  }

  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v12 + 8);
  }

  return std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::get(a1, a2, a3, a4, a5, a6, v14, &v14[v13]);
}

void *std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get_weekday(uint64_t a1, void *a2, void *a3, std::ios_base *this, _DWORD *a5, uint64_t a6)
{
  v14 = a2;
  std::ios_base::getloc(this);
  v10 = std::locale::use_facet(&v13, &std::ctype<wchar_t>::id);
  locale = v13.__locale_;
  if (v13.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v13.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_weekdayname(a1, (a6 + 24), &v14, a3, a5, v10);
  return v14;
}

void sub_1922D8368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9)
{
  if (a9 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_weekdayname(uint64_t a1, int *a2, void **a3, void *a4, _DWORD *a5, uint64_t a6)
{
  v11 = (**(a1 + 16))();
  result = std::__scan_keyword[abi:ne200100]<std::istreambuf_iterator<wchar_t>,std::wstring const*,std::ctype<wchar_t>>(a3, a4, v11, v11 + 42, a6, a5, 0);
  if (result - v11 <= 335)
  {
    *a2 = (-1431655765 * (result - v11)) % 7;
  }

  return result;
}

void *std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get_monthname(uint64_t a1, void *a2, void *a3, std::ios_base *this, _DWORD *a5, uint64_t a6)
{
  v14 = a2;
  std::ios_base::getloc(this);
  v10 = std::locale::use_facet(&v13, &std::ctype<wchar_t>::id);
  locale = v13.__locale_;
  if (v13.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v13.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_monthname(a1, (a6 + 16), &v14, a3, a5, v10);
  return v14;
}

void sub_1922D852C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9)
{
  if (a9 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_monthname(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, uint64_t a6)
{
  v11 = (*(*(a1 + 16) + 8))();
  result = std::__scan_keyword[abi:ne200100]<std::istreambuf_iterator<wchar_t>,std::wstring const*,std::ctype<wchar_t>>(a3, a4, v11, v11 + 72, a6, a5, 0);
  if (result - v11 <= 575)
  {
    *a2 = -1431655765 * (result - v11) - 12 * (((((0xAAAAAAAAAAAAAAABLL * (result - v11)) * 0x2AAAAAAAAAAAAAABLL) >> 64) >> 63) + ((((0xAAAAAAAAAAAAAAABLL * (result - v11)) * 0x2AAAAAAAAAAAAAABLL) >> 64) >> 1));
  }

  return result;
}

void *std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get_year(uint64_t a1, void *a2, void *a3, std::ios_base *this, _DWORD *a5, uint64_t a6)
{
  v14 = a2;
  std::ios_base::getloc(this);
  v10 = std::locale::use_facet(&v13, &std::ctype<wchar_t>::id);
  locale = v13.__locale_;
  if (v13.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v13.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_year(a1, (a6 + 20), &v14, a3, a5, v10);
  return v14;
}

void sub_1922D86E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9)
{
  if (a9 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_year(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, uint64_t a6)
{
  result = std::__get_up_to_n_digits[abi:ne200100]<wchar_t,std::istreambuf_iterator<wchar_t>>(a3, a4, a5, a6, 4);
  if ((*a5 & 4) == 0)
  {
    v9 = result + 2000;
    v10 = result + 1900;
    if (result >= 100)
    {
      v10 = result;
    }

    if (result >= 69)
    {
      v9 = v10;
    }

    *a2 = v9 - 1900;
  }

  return result;
}

uint64_t std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(void *a1, uint64_t a2, void *a3, std::ios_base *this, int *a5, int *a6, int a7)
{
  v36 = *MEMORY[0x1E69E9840];
  *v32 = a2;
  *a5 = 0;
  std::ios_base::getloc(this);
  v13 = std::locale::use_facet(v33, &std::ctype<wchar_t>::id);
  locale = v33[0].__locale_;
  if (v33[0].__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v33[0].__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  switch(a7)
  {
    case 'A':
    case 'a':
      std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_weekdayname(a1, a6 + 6, v32, a3, a5, v13);
      break;
    case 'B':
    case 'b':
    case 'h':
      std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_monthname(a1, a6 + 4, v32, a3, a5, v13);
      break;
    case 'C':
    case 'E':
    case 'G':
    case 'J':
    case 'K':
    case 'L':
    case 'N':
    case 'O':
    case 'P':
    case 'Q':
    case 'U':
    case 'V':
    case 'W':
    case 'Z':
    case '[':
    case '\\':
    case ']':
    case '^':
    case '_':
    case 'f':
    case 'g':
    case 'i':
    case 'k':
    case 'l':
    case 'o':
    case 'q':
    case 's':
    case 'u':
    case 'v':
      goto LABEL_13;
    case 'D':
      *&v33[0].__locale_ = *"%";
      *v34 = *"d";
      v20 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::get(a1, *v32, a3, this, a5, a6, v33, &v34[16]);
      goto LABEL_51;
    case 'F':
      *&v33[0].__locale_ = xmmword_19231C3A4;
      *v34 = unk_19231C3B4;
      v20 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::get(a1, *v32, a3, this, a5, a6, v33, &v34[16]);
      goto LABEL_51;
    case 'H':
      v19 = std::__get_up_to_n_digits[abi:ne200100]<wchar_t,std::istreambuf_iterator<wchar_t>>(v32, a3, a5, v13, 2);
      v16 = *a5;
      if ((*a5 & 4) != 0 || v19 > 23)
      {
        goto LABEL_14;
      }

      goto LABEL_29;
    case 'I':
      v19 = std::__get_up_to_n_digits[abi:ne200100]<wchar_t,std::istreambuf_iterator<wchar_t>>(v32, a3, a5, v13, 2);
      v16 = *a5;
      if ((*a5 & 4) != 0 || (v19 - 1) > 0xB)
      {
        goto LABEL_14;
      }

LABEL_29:
      a6[2] = v19;
      break;
    case 'M':
      v23 = std::__get_up_to_n_digits[abi:ne200100]<wchar_t,std::istreambuf_iterator<wchar_t>>(v32, a3, a5, v13, 2);
      v16 = *a5;
      if ((*a5 & 4) != 0 || v23 > 59)
      {
        goto LABEL_14;
      }

      a6[1] = v23;
      break;
    case 'R':
      *v34 = 77;
      *&v33[0].__locale_ = xmmword_19231C3F0;
      v20 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::get(a1, *v32, a3, this, a5, a6, v33, &v34[4]);
      goto LABEL_51;
    case 'S':
      v30 = std::__get_up_to_n_digits[abi:ne200100]<wchar_t,std::istreambuf_iterator<wchar_t>>(v32, a3, a5, v13, 2);
      v16 = *a5;
      if ((*a5 & 4) != 0 || v30 > 60)
      {
        goto LABEL_14;
      }

      *a6 = v30;
      break;
    case 'T':
      *&v33[0].__locale_ = xmmword_19231C404;
      *v34 = unk_19231C414;
      v20 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::get(a1, *v32, a3, this, a5, a6, v33, &v34[16]);
      goto LABEL_51;
    case 'X':
      v28 = (*(a1[2] + 48))();
      v25 = *v32;
      v26 = *(v28 + 23);
      if ((v26 & 0x80u) == 0)
      {
        v27 = v28;
      }

      else
      {
        v27 = *v28;
      }

      if ((v26 & 0x80u) != 0)
      {
        v26 = *(v28 + 8);
      }

      goto LABEL_50;
    case 'Y':
      v21 = std::__get_up_to_n_digits[abi:ne200100]<wchar_t,std::istreambuf_iterator<wchar_t>>(v32, a3, a5, v13, 4);
      if ((*a5 & 4) == 0)
      {
        a6[5] = v21 - 1900;
      }

      break;
    case 'c':
      v24 = (*(a1[2] + 24))();
      v25 = *v32;
      v26 = *(v24 + 23);
      if ((v26 & 0x80u) == 0)
      {
        v27 = v24;
      }

      else
      {
        v27 = *v24;
      }

      if ((v26 & 0x80u) != 0)
      {
        v26 = *(v24 + 8);
      }

LABEL_50:
      v20 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::get(a1, v25, a3, this, a5, a6, v27, &v27[v26]);
      goto LABEL_51;
    case 'd':
    case 'e':
      v15 = std::__get_up_to_n_digits[abi:ne200100]<wchar_t,std::istreambuf_iterator<wchar_t>>(v32, a3, a5, v13, 2);
      v16 = *a5;
      if ((*a5 & 4) != 0 || (v15 - 1) > 0x1E)
      {
        goto LABEL_14;
      }

      a6[3] = v15;
      break;
    case 'j':
      v18 = std::__get_up_to_n_digits[abi:ne200100]<wchar_t,std::istreambuf_iterator<wchar_t>>(v32, a3, a5, v13, 3);
      v16 = *a5;
      if ((*a5 & 4) != 0 || v18 > 365)
      {
        goto LABEL_14;
      }

      a6[7] = v18;
      break;
    case 'm':
      v22 = std::__get_up_to_n_digits[abi:ne200100]<wchar_t,std::istreambuf_iterator<wchar_t>>(v32, a3, a5, v13, 2);
      v16 = *a5;
      if ((*a5 & 4) != 0 || (v22 - 1) > 0xB)
      {
        goto LABEL_14;
      }

      a6[4] = v22 - 1;
      break;
    case 'n':
    case 't':
      std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_white_space(a1, v32, a3, a5, v13);
      break;
    case 'p':
      std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_am_pm(a1, a6 + 2, v32, a3, a5, v13);
      break;
    case 'r':
      *&v33[0].__locale_ = xmmword_19231C3C4;
      *v34 = unk_19231C3D4;
      *&v34[12] = unk_19231C3E0;
      v20 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::get(a1, *v32, a3, this, a5, a6, v33, v35);
LABEL_51:
      *v32 = v20;
      break;
    case 'w':
      v31 = std::__get_up_to_n_digits[abi:ne200100]<wchar_t,std::istreambuf_iterator<wchar_t>>(v32, a3, a5, v13, 1);
      v16 = *a5;
      if ((*a5 & 4) != 0 || v31 > 6)
      {
        goto LABEL_14;
      }

      a6[6] = v31;
      break;
    case 'x':
      result = (*(*a1 + 40))(a1, *v32, a3, this, a5, a6);
      goto LABEL_53;
    case 'y':
      std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_year(a1, a6 + 5, v32, a3, a5, v13);
      break;
    default:
      if (a7 == 37)
      {
        std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_percent(a1, v32, a3, a5, v13);
      }

      else
      {
LABEL_13:
        v16 = *a5;
LABEL_14:
        *a5 = v16 | 4;
      }

      break;
  }

  result = *v32;
LABEL_53:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1922D8D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  if (a11 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_day(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, uint64_t a6)
{
  result = std::__get_up_to_n_digits[abi:ne200100]<wchar_t,std::istreambuf_iterator<wchar_t>>(a3, a4, a5, a6, 2);
  if ((*a5 & 4) != 0 || (result - 1) > 0x1E)
  {
    *a5 |= 4u;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_hour(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, uint64_t a6)
{
  result = std::__get_up_to_n_digits[abi:ne200100]<wchar_t,std::istreambuf_iterator<wchar_t>>(a3, a4, a5, a6, 2);
  if ((*a5 & 4) != 0 || result > 23)
  {
    *a5 |= 4u;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_12_hour(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, uint64_t a6)
{
  result = std::__get_up_to_n_digits[abi:ne200100]<wchar_t,std::istreambuf_iterator<wchar_t>>(a3, a4, a5, a6, 2);
  if ((*a5 & 4) != 0 || (result - 1) > 0xB)
  {
    *a5 |= 4u;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_day_year_num(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, uint64_t a6)
{
  result = std::__get_up_to_n_digits[abi:ne200100]<wchar_t,std::istreambuf_iterator<wchar_t>>(a3, a4, a5, a6, 3);
  if ((*a5 & 4) != 0 || result > 365)
  {
    *a5 |= 4u;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_month(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, uint64_t a6)
{
  result = std::__get_up_to_n_digits[abi:ne200100]<wchar_t,std::istreambuf_iterator<wchar_t>>(a3, a4, a5, a6, 2);
  if ((*a5 & 4) != 0 || (result - 1) > 0xB)
  {
    *a5 |= 4u;
  }

  else
  {
    *a2 = result - 1;
  }

  return result;
}

uint64_t std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_minute(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, uint64_t a6)
{
  result = std::__get_up_to_n_digits[abi:ne200100]<wchar_t,std::istreambuf_iterator<wchar_t>>(a3, a4, a5, a6, 2);
  if ((*a5 & 4) != 0 || result > 59)
  {
    *a5 |= 4u;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

BOOL std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_white_space(uint64_t a1, void **a2, void *a3, _DWORD *a4, uint64_t a5)
{
  v16 = a3;
  for (i = a2; ; i = a2)
  {
    v9 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](i);
    if (v9 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v16))
    {
      break;
    }

    v10 = (*a2)[3];
    v11 = v10 == (*a2)[4] ? (*(**a2 + 72))(*a2) : *v10;
    if (!(*(*a5 + 24))(a5, 0x4000, v11))
    {
      break;
    }

    v12 = *a2;
    v13 = (*a2)[3];
    if (v13 == (*a2)[4])
    {
      (*(*v12 + 80))(v12);
    }

    else
    {
      v12[3] = v13 + 4;
    }
  }

  v14 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](a2);
  result = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v16);
  if (v14 == result)
  {
    *a4 |= 2u;
  }

  return result;
}

uint64_t *std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_am_pm(uint64_t a1, int *a2, void **a3, void *a4, _DWORD *a5, uint64_t a6)
{
  result = (*(*(a1 + 16) + 16))();
  v12 = result;
  v13 = *(result + 23);
  if (v13 < 0)
  {
    v13 = result[1];
  }

  v14 = *(result + 47);
  if (v14 < 0)
  {
    v14 = result[4];
  }

  if (v13 + v14)
  {
    result = std::__scan_keyword[abi:ne200100]<std::istreambuf_iterator<wchar_t>,std::wstring const*,std::ctype<wchar_t>>(a3, a4, result, result + 6, a6, a5, 0);
    v15 = *a2;
    if (result == v12 && v15 == 12)
    {
      *a2 = 0;
    }

    else if (result - v12 == 24 && v15 <= 11)
    {
      *a2 = v15 + 12;
    }
  }

  else
  {
    *a5 |= 4u;
  }

  return result;
}

uint64_t std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_second(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, uint64_t a6)
{
  result = std::__get_up_to_n_digits[abi:ne200100]<wchar_t,std::istreambuf_iterator<wchar_t>>(a3, a4, a5, a6, 2);
  if ((*a5 & 4) != 0 || result > 60)
  {
    *a5 |= 4u;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_weekday(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, uint64_t a6)
{
  result = std::__get_up_to_n_digits[abi:ne200100]<wchar_t,std::istreambuf_iterator<wchar_t>>(a3, a4, a5, a6, 1);
  if ((*a5 & 4) != 0 || result > 6)
  {
    *a5 |= 4u;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_year4(uint64_t a1, _DWORD *a2, void **a3, void *a4, _DWORD *a5, uint64_t a6)
{
  result = std::__get_up_to_n_digits[abi:ne200100]<wchar_t,std::istreambuf_iterator<wchar_t>>(a3, a4, a5, a6, 4);
  if ((*a5 & 4) == 0)
  {
    *a2 = result - 1900;
  }

  return result;
}

uint64_t std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__get_percent(uint64_t a1, void **a2, void *a3, _DWORD *a4, uint64_t a5)
{
  v16 = a3;
  v8 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](a2);
  result = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v16);
  if (v8 == result)
  {
    v12 = 6;
LABEL_13:
    *a4 |= v12;
    return result;
  }

  v10 = (*a2)[3];
  if (v10 == (*a2)[4])
  {
    v11 = (*(**a2 + 72))(*a2);
  }

  else
  {
    v11 = *v10;
  }

  result = (*(*a5 + 104))(a5, v11, 0);
  if (result != 37)
  {
    v12 = 4;
    goto LABEL_13;
  }

  v13 = *a2;
  v14 = (*a2)[3];
  if (v14 == (*a2)[4])
  {
    (*(*v13 + 80))(v13);
  }

  else
  {
    v13[3] = v14 + 4;
  }

  v15 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](a2);
  result = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v16);
  if (v15 == result)
  {
    v12 = 2;
    goto LABEL_13;
  }

  return result;
}

uint64_t std::__get_up_to_n_digits[abi:ne200100]<wchar_t,std::istreambuf_iterator<wchar_t>>(void **a1, void *a2, _DWORD *a3, uint64_t a4, int a5)
{
  v27 = a2;
  v9 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](a1);
  if (v9 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v27))
  {
    v12 = 0;
    v13 = 6;
    goto LABEL_24;
  }

  v10 = (*a1)[3];
  if (v10 == (*a1)[4])
  {
    v11 = (*(**a1 + 72))(*a1);
  }

  else
  {
    v11 = *v10;
  }

  if (!(*(*a4 + 24))(a4, 1024, v11))
  {
    v12 = 0;
    v13 = 4;
    goto LABEL_24;
  }

  v14 = (*(*a4 + 104))(a4, v11, 0);
  v15 = *a1;
  v16 = (*a1)[3];
  if (v16 == (*a1)[4])
  {
    (*(*v15 + 80))(v15);
  }

  else
  {
    v15[3] = v16 + 4;
  }

  v12 = (v14 - 48);
  v17 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](a1);
  if (v17 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v27) || a5 < 2)
  {
LABEL_22:
    v25 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](a1);
    if (v25 != std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v27))
    {
      return v12;
    }

    v13 = 2;
LABEL_24:
    *a3 |= v13;
    return v12;
  }

  while (1)
  {
    v18 = (*a1)[3];
    v19 = v18 == (*a1)[4] ? (*(**a1 + 72))(*a1) : *v18;
    if (!(*(*a4 + 24))(a4, 1024, v19))
    {
      return v12;
    }

    v20 = (*(*a4 + 104))(a4, v19, 0);
    v21 = *a1;
    v22 = (*a1)[3];
    if (v22 == (*a1)[4])
    {
      (*(*v21 + 80))(v21);
    }

    else
    {
      v21[3] = v22 + 4;
    }

    v12 = (v20 + 10 * v12 - 48);
    v23 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](a1);
    if (v23 != std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v27) && a5-- > 2)
    {
      continue;
    }

    goto LABEL_22;
  }
}

void *std::time_put<char,std::ostreambuf_iterator<char>>::put(uint64_t a1, void *a2, std::ios_base *this, uint64_t a4, uint64_t a5, unsigned __int8 *a6, char *a7)
{
  v21 = a2;
  std::ios_base::getloc(this);
  v13 = std::locale::use_facet(&v20, &std::ctype<char>::id);
  locale = v20.__locale_;
  if (v20.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v20.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  while (a6 != a7)
  {
    if ((v13->__vftable[3].~facet)(v13, *a6, 0) == 37)
    {
      v15 = a6 + 1;
      if (a6 + 1 == a7)
      {
        v15 = a6;
LABEL_18:
        std::ostreambuf_iterator<char>::operator=[abi:ne200100](&v21, *v15);
        return v21;
      }

      v16 = (v13->__vftable[3].~facet)(v13, *v15, 0);
      v17 = v16;
      if (v16 == 79 || v16 == 69)
      {
        if (a6 + 2 == a7)
        {
          std::ostreambuf_iterator<char>::operator=[abi:ne200100](&v21, *a6);
          goto LABEL_18;
        }

        v18 = (v13->__vftable[3].~facet)(v13, a6[2], 0);
        v15 = a6 + 2;
      }

      else
      {
        v18 = v16;
        v17 = 0;
      }

      v21 = (*(*a1 + 24))(a1, v21, this, a4, a5, v18, v17);
      a6 = v15;
    }

    else
    {
      std::ostreambuf_iterator<char>::operator=[abi:ne200100](&v21, *a6);
    }

    ++a6;
  }

  return v21;
}

void sub_1922D9A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9)
{
  if (a9 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a9);
  }

  _Unwind_Resume(exception_object);
}

void *std::time_put<char,std::ostreambuf_iterator<char>>::do_put(const std::__time_put *a1, void *a2, int a3, int a4, tm *__tm, char __fmt, char __mod)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = &v15;
  std::__time_put::__do_put(a1 + 2, __nb, &v12, __tm, __fmt, __mod);
  v8 = v12;
  v13 = a2;
  if (__nb != v12)
  {
    v9 = __nb;
    do
    {
      std::ostreambuf_iterator<char>::operator=[abi:ne200100](&v13, *v9++);
    }

    while (v9 != v8);
    a2 = v13;
  }

  v10 = *MEMORY[0x1E69E9840];
  return a2;
}

void std::__time_put::__do_put(const std::__time_put *this, char *__nb, char **__ne, const tm *__tm, char __fmt, char __mod)
{
  v6 = 37;
  v7 = __fmt;
  v8 = __mod;
  v9 = 0;
  if (__mod)
  {
    v7 = __mod;
    v8 = __fmt;
  }

  *__ne = &__nb[strftime_l(__nb, *__ne - __nb, &v6, __tm, this->__loc_)];
}

void *std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::put(uint64_t a1, void *a2, std::ios_base *this, uint64_t a4, uint64_t a5, int *a6, unsigned int *a7)
{
  v21 = a2;
  std::ios_base::getloc(this);
  v13 = std::locale::use_facet(&v20, &std::ctype<wchar_t>::id);
  locale = v20.__locale_;
  if (v20.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v20.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  while (a6 != a7)
  {
    if ((v13->__vftable[4].~facet_0)(v13, *a6, 0) == 37)
    {
      v15 = a6 + 1;
      if (a6 + 1 == a7)
      {
        v15 = a6;
LABEL_18:
        std::ostreambuf_iterator<wchar_t>::operator=[abi:ne200100](&v21, *v15);
        return v21;
      }

      v16 = (v13->__vftable[4].~facet_0)(v13, *v15, 0);
      v17 = v16;
      if (v16 == 79 || v16 == 69)
      {
        if (a6 + 2 == a7)
        {
          std::ostreambuf_iterator<wchar_t>::operator=[abi:ne200100](&v21, *a6);
          goto LABEL_18;
        }

        v18 = (v13->__vftable[4].~facet_0)(v13, a6[2], 0);
        v15 = a6 + 2;
      }

      else
      {
        v18 = v16;
        v17 = 0;
      }

      v21 = (*(*a1 + 24))(a1, v21, this, a4, a5, v18, v17);
      a6 = v15;
    }

    else
    {
      std::ostreambuf_iterator<wchar_t>::operator=[abi:ne200100](&v21, *a6);
    }

    ++a6;
  }

  return v21;
}

void sub_1922D9D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9)
{
  if (a9 != &std::locale::__imp::classic_locale_imp_)
  {
    std::num_get<char,std::istreambuf_iterator<char>>::do_get(a9);
  }

  _Unwind_Resume(exception_object);
}

void *std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(const std::__time_put *a1, void *a2, int a3, int a4, tm *__tm, char __fmt, char __mod)
{
  v15 = *MEMORY[0x1E69E9840];
  __we = &v15;
  std::__time_put::__do_put(a1 + 2, __wb, &__we, __tm, __fmt, __mod);
  v8 = __we;
  v13 = a2;
  if (__wb != __we)
  {
    v9 = __wb;
    do
    {
      std::ostreambuf_iterator<wchar_t>::operator=[abi:ne200100](&v13, *v9++);
    }

    while (v9 != v8);
    a2 = v13;
  }

  v10 = *MEMORY[0x1E69E9840];
  return a2;
}

void std::__time_put::__do_put(const std::__time_put *this, __int32 *__wb, __int32 **__we, const tm *__tm, char __fmt, char __mod)
{
  v15 = *MEMORY[0x1E69E9840];
  __ne = &v15;
  std::__time_put::__do_put(this, __nb, &__ne, __tm, __fmt, __mod);
  memset(&v13, 0, sizeof(v13));
  v11 = __nb;
  v9 = mbsrtowcs_l(__wb, &v11, *__we - __wb, &v13, this->__loc_);
  if (v9 == -1)
  {
    std::__throw_runtime_error("locale not supported");
  }

  *__we = &__wb[v9];
  v10 = *MEMORY[0x1E69E9840];
}

void std::moneypunct<char,false>::do_grouping(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void std::moneypunct<char,false>::do_curr_symbol(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void std::moneypunct<char,false>::do_positive_sign(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

void std::moneypunct<char,true>::do_grouping(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void std::moneypunct<char,true>::do_curr_symbol(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void std::moneypunct<char,true>::do_positive_sign(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void std::moneypunct<wchar_t,false>::do_grouping(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void std::moneypunct<wchar_t,false>::do_curr_symbol(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void std::moneypunct<wchar_t,false>::do_positive_sign(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

double std::moneypunct<wchar_t,false>::do_negative_sign@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 23) = 1;
  *&result = 45;
  *a1 = 45;
  return result;
}

uint64_t std::wstring::basic_string[abi:ne200100](uint64_t result, unint64_t a2, int a3)
{
  if (a2 >= 0x3FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 >= 5)
  {
    if ((a2 | 1) == 5)
    {
      v3 = 7;
    }

    else
    {
      v3 = (a2 | 1) + 1;
    }

    std::allocator<wchar_t>::allocate_at_least[abi:ne200100](result, v3);
  }

  *(result + 23) = a2;
  if (a2)
  {
    v4 = 0;
    v5 = vdupq_n_s64(a2 - 1);
    v6 = (result + 8);
    do
    {
      v7 = vdupq_n_s64(v4);
      v8 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1922FB310)));
      if (vuzp1_s16(v8, *v5.i8).u8[0])
      {
        *(v6 - 2) = a3;
      }

      if (vuzp1_s16(v8, *&v5).i8[2])
      {
        *(v6 - 1) = a3;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1922FB300)))).i32[1])
      {
        *v6 = a3;
        v6[1] = a3;
      }

      v4 += 4;
      v6 += 4;
    }

    while (((a2 + 3) & 0x7FFFFFFFFFFFFFFCLL) != v4);
  }

  *(result + 4 * a2) = 0;
  return result;
}

void std::moneypunct<wchar_t,true>::do_grouping(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void std::moneypunct<wchar_t,true>::do_curr_symbol(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void std::moneypunct<wchar_t,true>::do_positive_sign(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

double std::moneypunct<wchar_t,true>::do_negative_sign@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 23) = 1;
  *&result = 45;
  *a1 = 45;
  return result;
}

void std::moneypunct_byname<char,false>::do_grouping(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 24);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 40);
  }
}

void std::moneypunct_byname<char,false>::do_curr_symbol(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 48);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 64);
  }
}

void std::moneypunct_byname<char,false>::do_positive_sign(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 72);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 88);
  }
}

void std::moneypunct_byname<char,false>::do_negative_sign(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 96);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 112);
  }
}

void std::moneypunct_byname<char,true>::do_grouping(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 24);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 40);
  }
}

void std::moneypunct_byname<char,true>::do_curr_symbol(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 48);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 64);
  }
}

void std::moneypunct_byname<char,true>::do_positive_sign(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 72);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 88);
  }
}

void std::moneypunct_byname<char,true>::do_negative_sign(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 96);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 112);
  }
}

void std::moneypunct_byname<wchar_t,false>::do_grouping(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 24);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 40);
  }
}

void std::moneypunct_byname<wchar_t,false>::do_curr_symbol(uint64_t a1@<X0>, std::wstring *a2@<X8>)
{
  if (*(a1 + 71) < 0)
  {
    std::wstring::__init_copy_ctor_external(a2, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 48);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 64);
  }
}

void std::moneypunct_byname<wchar_t,false>::do_positive_sign(uint64_t a1@<X0>, std::wstring *a2@<X8>)
{
  if (*(a1 + 95) < 0)
  {
    std::wstring::__init_copy_ctor_external(a2, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 72);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 88);
  }
}

void std::moneypunct_byname<wchar_t,false>::do_negative_sign(uint64_t a1@<X0>, std::wstring *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::wstring::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 96);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 112);
  }
}

void std::moneypunct_byname<wchar_t,true>::do_grouping(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 24);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 40);
  }
}

void std::moneypunct_byname<wchar_t,true>::do_curr_symbol(uint64_t a1@<X0>, std::wstring *a2@<X8>)
{
  if (*(a1 + 71) < 0)
  {
    std::wstring::__init_copy_ctor_external(a2, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 48);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 64);
  }
}

void std::moneypunct_byname<wchar_t,true>::do_positive_sign(uint64_t a1@<X0>, std::wstring *a2@<X8>)
{
  if (*(a1 + 95) < 0)
  {
    std::wstring::__init_copy_ctor_external(a2, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 72);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 88);
  }
}

void std::moneypunct_byname<wchar_t,true>::do_negative_sign(uint64_t a1@<X0>, std::wstring *a2@<X8>)
{
  if (*(a1 + 119) < 0)
  {
    std::wstring::__init_copy_ctor_external(a2, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(a1 + 96);
    a2->__r_.__value_.__r.__words[2] = *(a1 + 112);
  }
}

void *std::money_get<char,std::istreambuf_iterator<char>>::do_get(int a1, void *a2, void *a3, int a4, std::ios_base *this, _DWORD *a6, uint64_t a7)
{
  v34 = *MEMORY[0x1E69E9840];
  v28 = &v33[12];
  v29 = std::__do_nothing;
  v30 = a2;
  std::ios_base::getloc(this);
  v12 = std::locale::use_facet(&v26, &std::ctype<char>::id);
  v25 = 0;
  if (std::money_get<char,std::istreambuf_iterator<char>>::__do_get(&v30, a3, a4, &v26, this->__fmtflags_, a6, &v25, v12, &v28, &v27, &v34))
  {
    strcpy(v33, "0123456789");
    (v12->__vftable[2].__on_zero_shared)(v12, v33, &v33[10], __s);
    if ((v27 - v28) < 99)
    {
      v13 = 0;
      v14 = v31;
    }

    else
    {
      v13 = malloc_type_malloc(v27 - v28 + 2, 0x100004077774924uLL);
      v14 = v13;
      if (!v13)
      {
        std::__throw_bad_alloc();
      }
    }

    if (v25)
    {
      *v14++ = 45;
    }

    for (i = v28; i < v27; ++v14)
    {
      v16 = *i++;
      v17 = memchr(__s, v16, 0xAuLL);
      if (v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = v33;
      }

      *v14 = v33[v18 - __s];
    }

    *v14 = 0;
    if (sscanf(v31, "%Lf", a7) != 1)
    {
      std::__throw_runtime_error("money_get error");
    }

    if (v13)
    {
      free(v13);
    }
  }

  if (v30)
  {
    if (v30[3] != v30[4])
    {
      if (a3)
      {
        if (a3[3] == a3[4])
        {
          v19 = 0;
          goto LABEL_36;
        }

        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if ((*(*v30 + 72))() != -1)
    {
      v19 = v30 == 0;
      if (!a3)
      {
        goto LABEL_23;
      }

      goto LABEL_27;
    }

    v30 = 0;
  }

  v19 = 1;
  if (!a3)
  {
LABEL_23:
    if (!v19)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_27:
  if (a3[3] == a3[4])
  {
LABEL_36:
    if ((v19 ^ ((*(*a3 + 72))(a3) == -1)))
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (!v19)
  {
LABEL_29:
    *a6 |= 2u;
  }

LABEL_30:
  v20 = v30;
  locale = v26.__locale_;
  if (v26.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v26.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  v22 = v28;
  v28 = 0;
  if (v22)
  {
    v29();
  }

  v23 = *MEMORY[0x1E69E9840];
  return v20;
}

{
  v30 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v28 = a2;
  v25 = &v29;
  v26 = std::__do_nothing;
  std::ios_base::getloc(this);
  v12 = std::locale::use_facet(&v23, &std::ctype<char>::id);
  v22 = 0;
  if (std::money_get<char,std::istreambuf_iterator<char>>::__do_get(&v28, a3, a4, &v23, this->__fmtflags_, a6, &v22, v12, &v25, &v24, &v30))
  {
    if (*(a7 + 23) < 0)
    {
      **a7 = 0;
      *(a7 + 8) = 0;
    }

    else
    {
      *a7 = 0;
      *(a7 + 23) = 0;
    }

    if (v22)
    {
      v13 = (v12->__vftable[2].~facet_0)(v12, 45);
      std::string::push_back(a7, v13);
    }

    v14 = (v12->__vftable[2].~facet_0)(v12, 48);
    v15 = v25;
    if (v25 < (&v24[-1].__r_.__value_.__r.__words[2] + 7))
    {
      while (v15->__r_.__value_.__s.__data_[0] == v14)
      {
        v15 = (v15 + 1);
        if (v15 == (&v24[-1].__r_.__value_.__r.__words[2] + 7))
        {
          v15 = (v24 - 1);
          break;
        }
      }
    }

    std::string::append[abi:ne200100]<char *,0>(a7, v15, v24);
  }

  if (v28)
  {
    if (v28[3] != v28[4])
    {
      v16 = 0;
      goto LABEL_19;
    }

    if ((*(*v28 + 72))() != -1)
    {
      v16 = v28 == 0;
      goto LABEL_19;
    }

    v28 = 0;
  }

  v16 = 1;
LABEL_19:
  if (v16 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v27))
  {
    *a6 |= 2u;
  }

  v17 = v28;
  locale = v23.__locale_;
  if (v23.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v23.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  v19 = v25;
  v25 = 0;
  if (v19)
  {
    v26();
  }

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

void sub_1922DA93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void (*a16)(void))
{
  if (v16)
  {
    free(v16);
  }

  if (a13 != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add((a13 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*a13 + 16))(a13);
  }

  if (a15)
  {
    a16();
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::money_get<char,std::istreambuf_iterator<char>>::__do_get(void **a1, void *a2, int a3, std::locale *a4, __int16 a5, _DWORD *a6, BOOL *a7, uint64_t a8, void **a9, uint64_t *a10, uint64_t a11)
{
  v144 = *MEMORY[0x1E69E9840];
  v142 = a2;
  v17 = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a1);
  if (a2)
  {
    if (a2[3] != a2[4] || (*(*a2 + 72))(a2) != -1)
    {
      if (v17)
      {
        goto LABEL_5;
      }

LABEL_238:
      v115 = 0;
      *a6 |= 4u;
      goto LABEL_239;
    }

    v142 = 0;
  }

  if (v17)
  {
    goto LABEL_238;
  }

LABEL_5:
  v140 = v143;
  v141 = std::__do_nothing;
  v139 = v143;
  v138 = &v144;
  memset(&__grouping, 0, sizeof(__grouping));
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v128 = 0;
  v129 = 0;
  v130 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  memset(&v124, 0, sizeof(v124));
  std::__money_get<char>::__gather_info(a3, a4, &v137, &v136, &v135, &__grouping, &v131, &v128, &v125, &v123);
  v18 = 0;
  v19 = 0;
  *a10 = *a9;
  while (1)
  {
    v20 = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a1);
    if (v20 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v142))
    {
      goto LABEL_204;
    }

    v21 = *(&v137 + v18);
    if (v21 <= 1)
    {
      break;
    }

    if (v21 == 2)
    {
      if (v18 < 2 || v19)
      {
        v119 = a6;
        v47 = HIBYTE(v133);
        v48 = v133 < 0;
        if (v133 >= 0)
        {
          v49 = &v131;
        }

        else
        {
          v49 = v131;
        }

        if (v18)
        {
          goto LABEL_96;
        }

        v50 = v132;
        goto LABEL_172;
      }

      if (HIBYTE(v137))
      {
        v36 = v18 == 2;
      }

      else
      {
        v36 = 0;
      }

      v37 = !v36;
      if (a5 & 0x200) == 0 && (v37)
      {
        v19 = 0;
        goto LABEL_203;
      }

      v119 = a6;
      v47 = HIBYTE(v133);
      v48 = v133 < 0;
      if (v133 >= 0)
      {
        v49 = &v131;
      }

      else
      {
        v49 = v131;
      }

LABEL_96:
      v50 = v132;
      if (*(&v137 + v18 - 1) > 1u)
      {
        goto LABEL_172;
      }

      if (v48)
      {
        v60 = v132;
      }

      else
      {
        v60 = v47;
      }

      if (v60)
      {
        v61 = &v49[v60];
        v62 = v49;
        do
        {
          v63 = *v62;
          if (v63 < 0 || (*(*(a8 + 16) + 4 * v63) & 0x4000) == 0)
          {
            goto LABEL_166;
          }

          ++v62;
          --v60;
        }

        while (v60);
        v62 = v61;
      }

      else
      {
        v62 = v49;
      }

LABEL_166:
      v92 = v62 - v49;
      size = SHIBYTE(v124.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v124.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (v92 <= SHIBYTE(v124.__r_.__value_.__r.__words[2]))
        {
          v94 = &v124;
          goto LABEL_171;
        }

        goto LABEL_172;
      }

      size = v124.__r_.__value_.__l.__size_;
      if (v92 > v124.__r_.__value_.__l.__size_)
      {
        goto LABEL_172;
      }

      v94 = v124.__r_.__value_.__r.__words[0];
LABEL_171:
      if (memcmp(v94 + size - v92, v49, v92))
      {
LABEL_172:
        v62 = v49;
      }

      if (v48)
      {
        v95 = v50;
      }

      else
      {
        v95 = v47;
      }

      if (v62 == &v49[v95])
      {
        a6 = v119;
      }

      else
      {
        a6 = v119;
        do
        {
          v96 = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a1);
          if (v96 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v142))
          {
            break;
          }

          v97 = (*a1)[3];
          v98 = v97 == (*a1)[4] ? (*(**a1 + 72))(*a1) : *v97;
          if (v98 != *v62)
          {
            break;
          }

          v99 = *a1;
          v100 = (*a1)[3];
          if (v100 == (*a1)[4])
          {
            (*(*v99 + 80))(v99);
          }

          else
          {
            v99[3] = v100 + 1;
          }

          ++v62;
          v101 = HIBYTE(v133);
          v102 = &v131;
          if (v133 < 0)
          {
            v102 = v131;
            v101 = v132;
          }
        }

        while (v62 != (v102 + v101));
      }

      if ((a5 & 0x200) != 0)
      {
        v103 = HIBYTE(v133);
        v104 = &v131;
        if (v133 < 0)
        {
          v104 = v131;
          v103 = v132;
        }

        if (v62 != (v104 + v103))
        {
          goto LABEL_222;
        }
      }

      goto LABEL_203;
    }

    if (v21 != 3)
    {
      if (v21 != 4)
      {
        goto LABEL_203;
      }

      v22 = 0;
      while (2)
      {
        v23 = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a1);
        if (v23 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v142))
        {
LABEL_62:
          v42 = v139;
          if (v140 != v139 && v22 != 0)
          {
            if (v139 == v138)
            {
              std::__double_or_nothing[abi:ne200100]<unsigned int>(&v140, &v139, &v138);
              v42 = v139;
            }

            *v42 = v22;
            v139 = v42 + 1;
          }

          if (v123 >= 1)
          {
            v44 = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a1);
            if (v44 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v142))
            {
              goto LABEL_222;
            }

            v45 = (*a1)[3];
            v46 = v45 == (*a1)[4] ? (*(**a1 + 72))(*a1) : *v45;
            if (v46 != v136)
            {
              goto LABEL_222;
            }

            v72 = *a1;
            v73 = (*a1)[3];
            if (v73 == (*a1)[4])
            {
              (*(*v72 + 80))(v72);
            }

            else
            {
              v72[3] = v73 + 1;
            }

            if (v123 >= 1)
            {
              while (1)
              {
                v74 = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a1);
                if (v74 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v142))
                {
                  break;
                }

                v75 = (*a1)[3];
                if (v75 == (*a1)[4])
                {
                  v77 = (*(**a1 + 72))(*a1);
                  v76 = v77;
                  if ((v77 & 0x80) != 0)
                  {
                    break;
                  }
                }

                else
                {
                  v76 = *v75;
                  if ((v76 & 0x80) != 0)
                  {
                    break;
                  }
                }

                if ((*(*(a8 + 16) + 4 * v76) & 0x400) == 0)
                {
                  break;
                }

                if (*a10 == a11)
                {
                  std::__double_or_nothing[abi:ne200100]<char>(a9, a10, &a11);
                }

                v78 = (*a1)[3];
                if (v78 == (*a1)[4])
                {
                  v79 = (*(**a1 + 72))(*a1);
                }

                else
                {
                  v79 = *v78;
                }

                v80 = (*a10)++;
                *v80 = v79;
                v81 = --v123;
                v82 = *a1;
                v83 = (*a1)[3];
                if (v83 == (*a1)[4])
                {
                  (*(*v82 + 80))(v82);
                  v81 = v123;
                }

                else
                {
                  v82[3] = v83 + 1;
                }

                if (v81 <= 0)
                {
                  goto LABEL_139;
                }
              }

LABEL_222:
              v115 = 0;
              *a6 |= 4u;
              goto LABEL_223;
            }
          }

LABEL_139:
          if (*a10 == *a9)
          {
            goto LABEL_222;
          }

          goto LABEL_203;
        }

        v24 = (*a1)[3];
        if (v24 == (*a1)[4])
        {
          v26 = (*(**a1 + 72))(*a1);
          v25 = v26;
          if ((v26 & 0x80) != 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v25 = *v24;
          if ((v25 & 0x80) != 0)
          {
LABEL_18:
            v27 = HIBYTE(__grouping.__r_.__value_.__r.__words[2]);
            if ((__grouping.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v27 = __grouping.__r_.__value_.__l.__size_;
            }

            if (v27)
            {
              v28 = v22 == 0;
            }

            else
            {
              v28 = 1;
            }

            if (v28 || v25 != v135)
            {
              goto LABEL_62;
            }

            v30 = v139;
            if (v139 == v138)
            {
              std::__double_or_nothing[abi:ne200100]<unsigned int>(&v140, &v139, &v138);
              v30 = v139;
            }

            *v30 = v22;
            v22 = 0;
            v139 = v30 + 1;
            goto LABEL_34;
          }
        }

        if ((*(*(a8 + 16) + 4 * v25) & 0x400) == 0)
        {
          goto LABEL_18;
        }

        v31 = *a10;
        if (*a10 == a11)
        {
          std::__double_or_nothing[abi:ne200100]<char>(a9, a10, &a11);
          v31 = *a10;
        }

        *a10 = (v31 + 1);
        *v31 = v25;
        ++v22;
LABEL_34:
        v32 = *a1;
        v33 = (*a1)[3];
        if (v33 == (*a1)[4])
        {
          (*(*v32 + 80))(v32);
        }

        else
        {
          v32[3] = v33 + 1;
        }

        continue;
      }
    }

    v38 = HIBYTE(v130);
    if (v130 >= 0)
    {
      v39 = HIBYTE(v130);
    }

    else
    {
      v39 = v129;
    }

    if (v39)
    {
      v40 = (*a1)[3];
      if (v40 == (*a1)[4])
      {
        v41 = (*(**a1 + 72))(*a1);
        v38 = HIBYTE(v130);
      }

      else
      {
        v41 = *v40;
      }

      v64 = &v128;
      if ((v38 & 0x80u) != 0)
      {
        v64 = v128;
      }

      if (v41 == *v64)
      {
        v65 = *a1;
        v66 = (*a1)[3];
        if (v66 == (*a1)[4])
        {
          (*(*v65 + 80))(v65);
          v38 = HIBYTE(v130);
        }

        else
        {
          v65[3] = v66 + 1;
        }

        *a7 = 0;
        if ((v38 & 0x80u) != 0)
        {
          v38 = v129;
        }

        v90 = v38 > 1;
        v91 = &v128;
        goto LABEL_201;
      }
    }

    v67 = HIBYTE(v127);
    v68 = v126;
    if (v127 >= 0)
    {
      v69 = HIBYTE(v127);
    }

    else
    {
      v69 = v126;
    }

    if (v69)
    {
      v70 = (*a1)[3];
      if (v70 == (*a1)[4])
      {
        v71 = (*(**a1 + 72))(*a1);
        v67 = HIBYTE(v127);
      }

      else
      {
        v71 = *v70;
      }

      v84 = &v125;
      if ((v67 & 0x80u) != 0)
      {
        v84 = v125;
      }

      if (v71 == *v84)
      {
        v85 = *a1;
        v86 = (*a1)[3];
        if (v86 == (*a1)[4])
        {
          (*(*v85 + 80))(v85);
          v67 = HIBYTE(v127);
        }

        else
        {
          v85[3] = v86 + 1;
        }

        *a7 = 1;
        if ((v67 & 0x80u) == 0)
        {
          v105 = v67;
        }

        else
        {
          v105 = v126;
        }

        v90 = v105 > 1;
        v91 = &v125;
LABEL_201:
        if (v90)
        {
          v19 = v91;
        }

        goto LABEL_203;
      }

      v38 = HIBYTE(v130);
      v68 = v126;
    }

    v87 = v129;
    if ((v38 & 0x80u) == 0)
    {
      v87 = v38;
    }

    if ((v67 & 0x80u) == 0)
    {
      v88 = v67;
    }

    else
    {
      v88 = v68;
    }

    if (v87)
    {
      if (v88)
      {
        goto LABEL_222;
      }
    }

    else if (!v88)
    {
      goto LABEL_203;
    }

    if ((v67 & 0x80u) == 0)
    {
      v89 = v67;
    }

    else
    {
      v89 = v68;
    }

    *a7 = v89 == 0;
LABEL_203:
    if (++v18 == 4)
    {
      goto LABEL_204;
    }
  }

  if (*(&v137 + v18))
  {
    if (v21 != 1)
    {
      goto LABEL_203;
    }

    if (v18 != 3)
    {
      v34 = (*a1)[3];
      if (v34 == (*a1)[4])
      {
        v51 = (*(**a1 + 72))(*a1);
        v35 = v51;
        if ((v51 & 0x80) != 0)
        {
          goto LABEL_222;
        }
      }

      else
      {
        v35 = *v34;
        if ((v35 & 0x80) != 0)
        {
          goto LABEL_222;
        }
      }

      if ((*(*(a8 + 16) + 4 * v35) & 0x4000) == 0)
      {
        goto LABEL_222;
      }

      v52 = *a1;
      v53 = (*a1)[3];
      if (v53 == (*a1)[4])
      {
        goto LABEL_82;
      }

      v52[3] = v53 + 1;
      for (i = *v53; ; i = (*(*v52 + 80))(v52))
      {
        while (1)
        {
          std::string::push_back(&v124, i);
LABEL_84:
          v55 = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a1);
          if (v55 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v142))
          {
            goto LABEL_203;
          }

          v56 = (*a1)[3];
          if (v56 == (*a1)[4])
          {
            v58 = (*(**a1 + 72))(*a1);
            v57 = v58;
            if ((v58 & 0x80) != 0)
            {
              goto LABEL_203;
            }
          }

          else
          {
            v57 = *v56;
            if ((v57 & 0x80) != 0)
            {
              goto LABEL_203;
            }
          }

          if ((*(*(a8 + 16) + 4 * v57) & 0x4000) == 0)
          {
            goto LABEL_203;
          }

          v52 = *a1;
          v59 = (*a1)[3];
          if (v59 == (*a1)[4])
          {
            break;
          }

          v52[3] = v59 + 1;
          i = *v59;
        }

LABEL_82:
        ;
      }
    }
  }

  else if (v18 != 3)
  {
    goto LABEL_84;
  }

LABEL_204:
  if (v19)
  {
    for (j = 1; ; j = v108 + 1)
    {
      v107 = *(v19 + 23);
      if ((v107 & 0x8000000000000000) != 0)
      {
        v107 = v19[1];
      }

      v108 = j;
      if (v107 <= j)
      {
        break;
      }

      v109 = std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](a1);
      if (v109 == std::istreambuf_iterator<char>::__test_for_eof[abi:ne200100](&v142))
      {
        goto LABEL_222;
      }

      v110 = (*a1)[3];
      if (v110 == (*a1)[4])
      {
        v111 = (*(**a1 + 72))(*a1);
      }

      else
      {
        v111 = *v110;
      }

      v112 = v19;
      if (*(v19 + 23) < 0)
      {
        v112 = *v19;
      }

      if (v111 != *(v112 + v108))
      {
        goto LABEL_222;
      }

      v113 = *a1;
      v114 = (*a1)[3];
      if (v114 == (*a1)[4])
      {
        (*(*v113 + 80))(v113);
      }

      else
      {
        v113[3] = v114 + 1;
      }
    }
  }

  if (v140 != v139)
  {
    __err = 0;
    std::__check_grouping(&__grouping, v140, v139, &__err);
    if (__err)
    {
      goto LABEL_222;
    }
  }

  v115 = 1;
LABEL_223:
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v124.__r_.__value_.__r.__words[0], v124.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(v127) < 0)
  {
    MEMORY[0x193B0CA40](v125, v127 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(v130) < 0)
  {
    MEMORY[0x193B0CA40](v128, v130 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(v133) < 0)
  {
    MEMORY[0x193B0CA40](v131, v133 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(__grouping.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](__grouping.__r_.__value_.__r.__words[0], __grouping.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  v116 = v140;
  v140 = 0;
  if (v116)
  {
    v141();
  }

LABEL_239:
  v117 = *MEMORY[0x1E69E9840];
  return v115;
}

void sub_1922DB6E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1922DBA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void (*a16)(void))
{
  if (a13 != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add((a13 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*a13 + 16))(a13);
  }

  if (a15)
  {
    a16();
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char *,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__dst, __src, a3, v7);
    if (v19 >= 0)
    {
      v12 = __dst;
    }

    else
    {
      v12 = __dst[0];
    }

    if (v19 >= 0)
    {
      v13 = HIBYTE(v19);
    }

    else
    {
      v13 = __dst[1];
    }

    std::string::append(this, v12, v13);
    if (SHIBYTE(v19) < 0)
    {
      MEMORY[0x193B0CA40](__dst[0], v19 & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  return this;
}

void sub_1922DBC50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    std::stoi(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__money_get<char>::__gather_info(int a1, std::locale *this, _DWORD *a3, _BYTE *a4, _BYTE *a5, void *a6, void *a7, void *a8, void *a9, _DWORD *a10)
{
  if (a1)
  {
    v16 = std::locale::use_facet(this, &std::moneypunct<char,true>::id);
    *a3 = (v16->__vftable[3].__on_zero_shared)(v16);
    (v16->__vftable[2].__on_zero_shared)(&v18, v16);
    if (*(a9 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a9, a9[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    *a9 = v18;
    a9[2] = v19;
    (v16->__vftable[2].~facet_0)(&v18, v16);
    if (*(a8 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a8, a8[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    *a8 = v18;
    a8[2] = v19;
    *a4 = (v16->__vftable[1].~facet)(v16);
    *a5 = (v16->__vftable[1].~facet_0)(v16);
    (v16->__vftable[1].__on_zero_shared)(&v18, v16);
    if (*(a6 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a6, a6[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    *a6 = v18;
    a6[2] = v19;
    (v16->__vftable[2].~facet)(&v18, v16);
    if (*(a7 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a7, a7[2] & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    v16 = std::locale::use_facet(this, &std::moneypunct<char,false>::id);
    *a3 = (v16->__vftable[3].__on_zero_shared)(v16);
    (v16->__vftable[2].__on_zero_shared)(&v18, v16);
    if (*(a9 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a9, a9[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    *a9 = v18;
    a9[2] = v19;
    (v16->__vftable[2].~facet_0)(&v18, v16);
    if (*(a8 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a8, a8[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    *a8 = v18;
    a8[2] = v19;
    *a4 = (v16->__vftable[1].~facet)(v16);
    *a5 = (v16->__vftable[1].~facet_0)(v16);
    (v16->__vftable[1].__on_zero_shared)(&v18, v16);
    if (*(a6 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a6, a6[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    *a6 = v18;
    a6[2] = v19;
    (v16->__vftable[2].~facet)(&v18, v16);
    if (*(a7 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a7, a7[2] & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  *a7 = v18;
  a7[2] = v19;
  result = (v16->__vftable[3].~facet)(v16);
  *a10 = result;
  return result;
}

char *std::__double_or_nothing[abi:ne200100]<char>(void **a1, uint64_t *a2, void *a3)
{
  v6 = *a1;
  v7 = *a3 - *a1;
  v8 = 2 * v7;
  if (2 * v7 <= 1)
  {
    v8 = 1;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *a2;
  if (a1[1] != std::__do_nothing)
  {
    result = malloc_type_realloc(*a1, v9, 0x100004077774924uLL);
    if (result)
    {
      *a1 = result;
      goto LABEL_12;
    }

LABEL_13:
    std::__throw_bad_alloc();
  }

  result = malloc_type_realloc(0, v9, 0x100004077774924uLL);
  if (!result)
  {
    goto LABEL_13;
  }

  v12 = *a1;
  *a1 = result;
  if (v12)
  {
    (a1[1])(v12);
    result = *a1;
  }

LABEL_12:
  a1[1] = MEMORY[0x1E69E9B38];
  *a2 = &result[v10 - v6];
  *a3 = *a1 + v9;
  return result;
}

char *std::__double_or_nothing[abi:ne200100]<unsigned int>(void **a1, uint64_t *a2, char **a3)
{
  v6 = *a1;
  v7 = *a3 - *a1;
  v8 = 2 * v7;
  if (*a3 == *a1)
  {
    v8 = 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *a2;
  if (a1[1] != std::__do_nothing)
  {
    result = malloc_type_realloc(*a1, v9, 0x100004052888210uLL);
    if (result)
    {
      *a1 = result;
      goto LABEL_12;
    }

LABEL_13:
    std::__throw_bad_alloc();
  }

  result = malloc_type_realloc(0, v9, 0x100004052888210uLL);
  if (!result)
  {
    goto LABEL_13;
  }

  v12 = *a1;
  *a1 = result;
  if (v12)
  {
    (a1[1])(v12);
    result = *a1;
  }

LABEL_12:
  a1[1] = MEMORY[0x1E69E9B38];
  *a2 = &result[v10 - v6];
  *a3 = *a1 + (v9 & 0xFFFFFFFFFFFFFFFCLL);
  return result;
}

void std::__check_grouping(const std::string *__grouping, unsigned int *__g, unsigned int *__g_end, std::ios_base::iostate *__err)
{
  size = HIBYTE(__grouping->__r_.__value_.__r.__words[2]);
  LOBYTE(v5) = size;
  if ((size & 0x80u) != 0)
  {
    size = __grouping->__r_.__value_.__l.__size_;
  }

  if (__g_end - __g >= 5 && size)
  {
    v6 = __g_end - 1;
    if (__g != __g_end && v6 > __g)
    {
      v7 = __g + 1;
      v8 = __g_end - 1;
      do
      {
        v9 = *(v7 - 1);
        *(v7 - 1) = *v8;
        *v8-- = v9;
      }

      while (v7++ < v8);
      LOBYTE(v5) = *(&__grouping->__r_.__value_.__s + 23);
    }

    v11 = __grouping->__r_.__value_.__r.__words[0];
    if ((v5 & 0x80u) == 0)
    {
      v11 = __grouping;
    }

    if (v6 > __g)
    {
      v5 = v5;
      if ((v5 & 0x80u) != 0)
      {
        v5 = __grouping->__r_.__value_.__l.__size_;
      }

      v12 = v11 + v5;
      do
      {
        v13 = v11->__r_.__value_.__s.__data_[0];
        if ((v13 - 1) <= 0x7D && *__g != v13)
        {
          goto LABEL_24;
        }

        if (v12 - v11 > 1)
        {
          v11 = (v11 + 1);
        }

        ++__g;
      }

      while (__g < v6);
    }

    v14 = v11->__r_.__value_.__s.__data_[0];
    if (v14 - 1 <= 0x7D && *v6 - 1 >= v14)
    {
LABEL_24:
      *__err = 4;
    }
  }
}

void *std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(int a1, void *a2, void *a3, int a4, std::ios_base *this, _DWORD *a6, uint64_t a7)
{
  v35 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v30 = a2;
  v27 = &v34;
  v28 = std::__do_nothing;
  std::ios_base::getloc(this);
  v12 = std::locale::use_facet(&v25, &std::ctype<wchar_t>::id);
  v24 = 0;
  if (std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__do_get(&v30, a3, a4, &v25, this->__fmtflags_, a6, &v24, v12, &v27, &v26, &v35))
  {
    strcpy(v33, "0123456789");
    (v12->__vftable[4].~facet)(v12, v33, &v33[10], v32);
    if ((v26 - v27) < 393)
    {
      v13 = 0;
      v14 = v31;
    }

    else
    {
      v13 = malloc_type_malloc(((v26 - v27) >> 2) + 2, 0x100004077774924uLL);
      v14 = v13;
      if (!v13)
      {
        std::__throw_bad_alloc();
      }
    }

    if (v24)
    {
      *v14++ = 45;
    }

    for (i = v27; i < v26; i += 4)
    {
      v16 = v32;
      v17 = 40;
      while (*v16 != *i)
      {
        v16 += 4;
        v17 -= 4;
        if (!v17)
        {
          v16 = v33;
          break;
        }
      }

      *v14++ = v33[(v16 - v32) >> 2];
    }

    *v14 = 0;
    if (sscanf(v31, "%Lf", a7) != 1)
    {
      std::__throw_runtime_error("money_get error");
    }

    if (v13)
    {
      free(v13);
    }
  }

  v18 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v30);
  if (v18 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v29))
  {
    *a6 |= 2u;
  }

  v19 = v30;
  locale = v25.__locale_;
  if (v25.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v25.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  v21 = v27;
  v27 = 0;
  if (v21)
  {
    v28();
  }

  v22 = *MEMORY[0x1E69E9840];
  return v19;
}

{
  v30 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v28 = a2;
  v25 = &v29;
  v26 = std::__do_nothing;
  std::ios_base::getloc(this);
  v12 = std::locale::use_facet(&v23, &std::ctype<wchar_t>::id);
  v22 = 0;
  if (std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__do_get(&v28, a3, a4, &v23, this->__fmtflags_, a6, &v22, v12, &v25, &v24, &v30))
  {
    if (*(a7 + 23) < 0)
    {
      **a7 = 0;
      *(a7 + 8) = 0;
    }

    else
    {
      *a7 = 0;
      *(a7 + 23) = 0;
    }

    if (v22)
    {
      v13 = (v12->__vftable[3].__on_zero_shared)(v12, 45);
      std::wstring::push_back(a7, v13);
    }

    v14 = (v12->__vftable[3].__on_zero_shared)(v12, 48);
      ;
    }

    std::wstring::append[abi:ne200100]<wchar_t *,0>(a7, i, v24);
  }

  v16 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v28);
  if (v16 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v27))
  {
    *a6 |= 2u;
  }

  v17 = v28;
  locale = v23.__locale_;
  if (v23.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v23.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  v19 = v25;
  v25 = 0;
  if (v19)
  {
    v26();
  }

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

void sub_1922DC6A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void (*a17)(void))
{
  if (v17)
  {
    free(v17);
  }

  if (a14 != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add((a14 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*a14 + 16))(a14);
  }

  if (a16)
  {
    a17();
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::__do_get(void **a1, void *a2, int a3, std::locale *a4, __int16 a5, _DWORD *a6, BOOL *a7, uint64_t a8, void **a9, uint64_t *a10, char *a11)
{
  v139 = *MEMORY[0x1E69E9840];
  v137 = a2;
  v16 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](a1);
  if (v16 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v137))
  {
    v110 = 0;
    *a6 |= 4u;
    goto LABEL_235;
  }

  v114 = a6;
  v135 = v138;
  v136 = std::__do_nothing;
  v134 = v138;
  v133 = &v139;
  memset(&__grouping, 0, sizeof(__grouping));
  v126 = 0;
  v127 = 0;
  v128 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  memset(&v119, 0, sizeof(v119));
  std::__money_get<wchar_t>::__gather_info(a3, a4, &v132, &v131, &v130, &__grouping, &v126, &v123, &v120, &v118);
  v17 = 0;
  v18 = 0;
  *a10 = *a9;
  while (1)
  {
    v19 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](a1);
    if (v19 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v137))
    {
      goto LABEL_201;
    }

    v20 = *(&v132 + v17);
    if (v20 <= 1)
    {
      break;
    }

    if (v20 == 2)
    {
      if (v17 < 2 || v18)
      {
        v43 = HIBYTE(v128);
        v44 = v128 < 0;
        v45 = v126;
        if (v128 >= 0)
        {
          v46 = &v126;
        }

        else
        {
          v46 = v126;
        }

        if (v17)
        {
          goto LABEL_85;
        }
      }

      else
      {
        if (HIBYTE(v132))
        {
          v32 = v17 == 2;
        }

        else
        {
          v32 = 0;
        }

        v33 = !v32;
        if (a5 & 0x200) == 0 && (v33)
        {
          v18 = 0;
          goto LABEL_200;
        }

        v43 = HIBYTE(v128);
        v44 = v128 < 0;
        v45 = v126;
        if (v128 >= 0)
        {
          v46 = &v126;
        }

        else
        {
          v46 = v126;
        }

LABEL_85:
        if (*(&v132 + v17 - 1) <= 1u)
        {
          if (v44)
          {
            v54 = v127;
          }

          else
          {
            v54 = v43;
          }

          if (v54)
          {
            do
            {
              v55 = (*(*a8 + 24))(a8, 0x4000, *v46);
              v43 = HIBYTE(v128);
              v45 = v126;
              if (!v55)
              {
                break;
              }

              v46 += 4;
              v56 = v127;
              if (v128 >= 0)
              {
                v57 = &v126;
              }

              else
              {
                v57 = v126;
              }

              if (v128 >= 0)
              {
                v56 = HIBYTE(v128);
              }
            }

            while (v46 != v57 + 4 * v56);
          }

          if ((v43 & 0x80u) == 0)
          {
            v58 = &v126;
          }

          else
          {
            v58 = v45;
          }

          v59 = (v46 - v58) >> 2;
          size = SHIBYTE(v119.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(v119.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
          {
            if (v59 <= SHIBYTE(v119.__r_.__value_.__r.__words[2]))
            {
              v61 = &v119;
              goto LABEL_164;
            }

            goto LABEL_165;
          }

          size = v119.__r_.__value_.__l.__size_;
          if (v59 > v119.__r_.__value_.__l.__size_)
          {
            goto LABEL_165;
          }

          v61 = v119.__r_.__value_.__r.__words[0];
LABEL_164:
          if (memcmp(v61 + 4 * size - (v46 - v58), v58, 4 * size - (4 * size - (v46 - v58))))
          {
LABEL_165:
            v46 = v58;
          }

LABEL_166:
          if ((v43 & 0x80u) == 0)
          {
            v89 = v43;
          }

          else
          {
            v89 = v127;
          }

          for (i = &v58[4 * v89]; v46 != i; i = v97 + 4 * v96)
          {
            v91 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](a1);
            if (v91 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v137))
            {
              break;
            }

            v92 = (*a1)[3];
            v93 = v92 == (*a1)[4] ? (*(**a1 + 72))(*a1) : *v92;
            if (v93 != *v46)
            {
              break;
            }

            v94 = *a1;
            v95 = (*a1)[3];
            if (v95 == (*a1)[4])
            {
              (*(*v94 + 80))(v94);
            }

            else
            {
              v94[3] = v95 + 4;
            }

            v46 += 4;
            v96 = HIBYTE(v128);
            if (v128 >= 0)
            {
              v97 = &v126;
            }

            else
            {
              v97 = v126;
            }

            if (v128 < 0)
            {
              v96 = v127;
            }
          }

          if ((a5 & 0x200) != 0)
          {
            v98 = HIBYTE(v128);
            if (v128 >= 0)
            {
              v99 = &v126;
            }

            else
            {
              v99 = v126;
            }

            if (v128 < 0)
            {
              v98 = v127;
            }

            if (v46 != v99 + 4 * v98)
            {
              goto LABEL_218;
            }
          }

          goto LABEL_200;
        }
      }

      v58 = v46;
      goto LABEL_166;
    }

    if (v20 != 3)
    {
      if (v20 == 4)
      {
        v21 = 0;
        while (1)
        {
          v22 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](a1);
          if (v22 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v137))
          {
            break;
          }

          v23 = (*a1)[3];
          if (v23 == (*a1)[4])
          {
            v24 = (*(**a1 + 72))(*a1);
          }

          else
          {
            v24 = *v23;
          }

          if ((*(*a8 + 24))(a8, 1024, v24))
          {
            v25 = *a10;
            if (*a10 == a11)
            {
              std::__double_or_nothing[abi:ne200100]<wchar_t>(a9, a10, &a11);
              v25 = *a10;
            }

            *v25 = v24;
            *a10 = (v25 + 1);
            ++v21;
          }

          else
          {
            v26 = HIBYTE(__grouping.__r_.__value_.__r.__words[2]);
            if ((__grouping.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v26 = __grouping.__r_.__value_.__l.__size_;
            }

            if (!v26 || !v21 || v24 != v130)
            {
              break;
            }

            v27 = v134;
            if (v134 == v133)
            {
              std::__double_or_nothing[abi:ne200100]<unsigned int>(&v135, &v134, &v133);
              v27 = v134;
            }

            *v27 = v21;
            v21 = 0;
            v134 = v27 + 1;
          }

          v28 = *a1;
          v29 = (*a1)[3];
          if (v29 == (*a1)[4])
          {
            (*(*v28 + 80))(v28);
          }

          else
          {
            v28[3] = v29 + 4;
          }
        }

        v38 = v134;
        if (v135 != v134 && v21 != 0)
        {
          if (v134 == v133)
          {
            std::__double_or_nothing[abi:ne200100]<unsigned int>(&v135, &v134, &v133);
            v38 = v134;
          }

          *v38 = v21;
          v134 = v38 + 1;
        }

        if (v118 >= 1)
        {
          v40 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](a1);
          if (v40 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v137))
          {
            goto LABEL_218;
          }

          v41 = (*a1)[3];
          v42 = v41 == (*a1)[4] ? (*(**a1 + 72))(*a1) : *v41;
          if (v42 != v131)
          {
            goto LABEL_218;
          }

          v70 = *a1;
          v71 = (*a1)[3];
          if (v71 == (*a1)[4])
          {
            (*(*v70 + 80))(v70);
          }

          else
          {
            v70[3] = v71 + 4;
          }

          if (v118 >= 1)
          {
            while (1)
            {
              v72 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](a1);
              if (v72 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v137))
              {
                break;
              }

              v73 = (*a1)[3];
              v74 = v73 == (*a1)[4] ? (*(**a1 + 72))(*a1) : *v73;
              if (((*(*a8 + 24))(a8, 1024, v74) & 1) == 0)
              {
                break;
              }

              if (*a10 == a11)
              {
                std::__double_or_nothing[abi:ne200100]<wchar_t>(a9, a10, &a11);
              }

              v75 = (*a1)[3];
              if (v75 == (*a1)[4])
              {
                v76 = (*(**a1 + 72))(*a1);
              }

              else
              {
                v76 = *v75;
              }

              v77 = *a10;
              *v77 = v76;
              *a10 = (v77 + 1);
              v78 = --v118;
              v79 = *a1;
              v80 = (*a1)[3];
              if (v80 == (*a1)[4])
              {
                (*(*v79 + 80))(v79);
                v78 = v118;
              }

              else
              {
                v79[3] = v80 + 4;
              }

              if (v78 <= 0)
              {
                goto LABEL_136;
              }
            }

LABEL_218:
            v110 = 0;
            *v114 |= 4u;
            goto LABEL_223;
          }
        }

LABEL_136:
        if (*a10 == *a9)
        {
          goto LABEL_218;
        }
      }

      goto LABEL_200;
    }

    v34 = HIBYTE(v125);
    if (v125 >= 0)
    {
      v35 = HIBYTE(v125);
    }

    else
    {
      v35 = v124;
    }

    if (v35)
    {
      v36 = (*a1)[3];
      if (v36 == (*a1)[4])
      {
        v37 = (*(**a1 + 72))(*a1);
        v34 = HIBYTE(v125);
      }

      else
      {
        v37 = *v36;
      }

      v62 = &v123;
      if ((v34 & 0x80u) != 0)
      {
        v62 = v123;
      }

      if (v37 == *v62)
      {
        v63 = *a1;
        v64 = (*a1)[3];
        if (v64 == (*a1)[4])
        {
          (*(*v63 + 80))(v63);
          v34 = HIBYTE(v125);
        }

        else
        {
          v63[3] = v64 + 4;
        }

        *a7 = 0;
        if ((v34 & 0x80u) != 0)
        {
          v34 = v124;
        }

        v87 = v34 > 1;
        v88 = &v123;
        goto LABEL_198;
      }
    }

    v65 = HIBYTE(v122);
    v66 = v121;
    if (v122 >= 0)
    {
      v67 = HIBYTE(v122);
    }

    else
    {
      v67 = v121;
    }

    if (v67)
    {
      v68 = (*a1)[3];
      if (v68 == (*a1)[4])
      {
        v69 = (*(**a1 + 72))(*a1);
        v65 = HIBYTE(v122);
      }

      else
      {
        v69 = *v68;
      }

      v81 = &v120;
      if ((v65 & 0x80u) != 0)
      {
        v81 = v120;
      }

      if (v69 == *v81)
      {
        v82 = *a1;
        v83 = (*a1)[3];
        if (v83 == (*a1)[4])
        {
          (*(*v82 + 80))(v82);
          v65 = HIBYTE(v122);
        }

        else
        {
          v82[3] = v83 + 4;
        }

        *a7 = 1;
        if ((v65 & 0x80u) == 0)
        {
          v100 = v65;
        }

        else
        {
          v100 = v121;
        }

        v87 = v100 > 1;
        v88 = &v120;
LABEL_198:
        if (v87)
        {
          v18 = v88;
        }

        goto LABEL_200;
      }

      v34 = HIBYTE(v125);
      v66 = v121;
    }

    v84 = v124;
    if ((v34 & 0x80u) == 0)
    {
      v84 = v34;
    }

    if ((v65 & 0x80u) == 0)
    {
      v85 = v65;
    }

    else
    {
      v85 = v66;
    }

    if (v84)
    {
      if (v85)
      {
        goto LABEL_218;
      }

LABEL_154:
      if ((v65 & 0x80u) == 0)
      {
        v86 = v65;
      }

      else
      {
        v86 = v66;
      }

      *a7 = v86 == 0;
      goto LABEL_200;
    }

    if (v85)
    {
      goto LABEL_154;
    }

LABEL_200:
    if (++v17 == 4)
    {
      goto LABEL_201;
    }
  }

  if (!*(&v132 + v17))
  {
    if (v17 == 3)
    {
      goto LABEL_201;
    }

    while (1)
    {
      v50 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](a1);
      if (v50 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v137))
      {
        goto LABEL_200;
      }

      v51 = (*a1)[3];
      v52 = v51 == (*a1)[4] ? (*(**a1 + 72))(*a1) : *v51;
      if (!(*(*a8 + 24))(a8, 0x4000, v52))
      {
        goto LABEL_200;
      }

      v47 = *a1;
      v53 = (*a1)[3];
      if (v53 == (*a1)[4])
      {
        goto LABEL_72;
      }

      v49 = *v53;
      v47[3] = v53 + 1;
LABEL_73:
      std::wstring::push_back(&v119, v49);
    }
  }

  if (v20 != 1)
  {
    goto LABEL_200;
  }

  if (v17 != 3)
  {
    v30 = (*a1)[3];
    if (v30 == (*a1)[4])
    {
      v31 = (*(**a1 + 72))(*a1);
    }

    else
    {
      v31 = *v30;
    }

    if ((*(*a8 + 24))(a8, 0x4000, v31))
    {
      v47 = *a1;
      v48 = (*a1)[3];
      if (v48 != (*a1)[4])
      {
        v49 = *v48;
        v47[3] = v48 + 1;
        goto LABEL_73;
      }

LABEL_72:
      v49 = (*(*v47 + 80))(v47);
      goto LABEL_73;
    }

    goto LABEL_218;
  }

LABEL_201:
  if (v18)
  {
    for (j = 1; ; j = v103 + 1)
    {
      v102 = *(v18 + 23);
      if ((v102 & 0x8000000000000000) != 0)
      {
        v102 = v18[1];
      }

      v103 = j;
      if (v102 <= j)
      {
        break;
      }

      v104 = std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](a1);
      if (v104 == std::istreambuf_iterator<wchar_t>::__test_for_eof[abi:ne200100](&v137))
      {
        goto LABEL_221;
      }

      v105 = (*a1)[3];
      if (v105 == (*a1)[4])
      {
        v106 = (*(**a1 + 72))(*a1);
      }

      else
      {
        v106 = *v105;
      }

      v107 = v18;
      if (*(v18 + 23) < 0)
      {
        v107 = *v18;
      }

      if (v106 != *(v107 + v103))
      {
        goto LABEL_221;
      }

      v108 = *a1;
      v109 = (*a1)[3];
      if (v109 == (*a1)[4])
      {
        (*(*v108 + 80))(v108);
      }

      else
      {
        v108[3] = v109 + 4;
      }
    }
  }

  if (v135 == v134 || (__err = 0, std::__check_grouping(&__grouping, v135, v134, &__err), !__err))
  {
    v110 = 1;
  }

  else
  {
LABEL_221:
    v110 = 0;
    *v114 |= 4u;
  }

LABEL_223:
  if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v119.__r_.__value_.__r.__words[0], 4 * v119.__r_.__value_.__r.__words[2]);
  }

  if (SHIBYTE(v122) < 0)
  {
    MEMORY[0x193B0CA40](v120, 4 * v122);
  }

  if (SHIBYTE(v125) < 0)
  {
    MEMORY[0x193B0CA40](v123, 4 * v125);
  }

  if (SHIBYTE(v128) < 0)
  {
    MEMORY[0x193B0CA40](v126, 4 * v128);
  }

  if (SHIBYTE(__grouping.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](__grouping.__r_.__value_.__r.__words[0], __grouping.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  v111 = v135;
  v135 = 0;
  if (v111)
  {
    v136();
  }

LABEL_235:
  v112 = *MEMORY[0x1E69E9840];
  return v110;
}

void sub_1922DD4A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1922DD7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void (*a17)(void))
{
  if (a14 != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add((a14 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*a14 + 16))(a14);
  }

  if (a16)
  {
    a17();
  }

  _Unwind_Resume(exception_object);
}

std::wstring *std::wstring::append[abi:ne200100]<wchar_t *,0>(std::wstring *this, std::wstring *__src, std::wstring *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 4;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  v12 = v7 >> 2;
  if (v10 > __src || (v10->__r_.__value_.__r.__words + 4 * size + 4) <= __src)
  {
    if (v8 - size < v12)
    {
      std::wstring::__grow_by(this, v8, size - v8 + v12, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v15 = this;
    if ((v9 & 0x80) != 0)
    {
      v15 = this->__r_.__value_.__r.__words[0];
    }

    v16 = v15 + 4 * size;
    if (a3 != __src)
    {
      memmove(v15 + 4 * size, __src, v7);
    }

    *&v16[v7] = 0;
    v17 = v12 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v17;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v17 & 0x7F;
    }
  }

  else
  {
    std::wstring::__init_with_size[abi:ne200100]<wchar_t const*,wchar_t const*>(__dst, __src, a3, v12);
    if (v20 >= 0)
    {
      v13 = __dst;
    }

    else
    {
      v13 = __dst[0];
    }

    if (v20 >= 0)
    {
      v14 = HIBYTE(v20);
    }

    else
    {
      v14 = __dst[1];
    }

    std::wstring::append(this, v13, v14);
    if (SHIBYTE(v20) < 0)
    {
      MEMORY[0x193B0CA40](__dst[0], 4 * v20);
    }
  }

  return this;
}

void sub_1922DD9C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__money_get<wchar_t>::__gather_info(int a1, std::locale *this, _DWORD *a3, _DWORD *a4, _DWORD *a5, void *a6, void *a7, void *a8, void *a9, _DWORD *a10)
{
  if (a1)
  {
    v16 = std::locale::use_facet(this, &std::moneypunct<wchar_t,true>::id);
    *a3 = (v16->__vftable[3].__on_zero_shared)(v16);
    (v16->__vftable[2].__on_zero_shared)(&v18, v16);
    if (*(a9 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a9, 4 * a9[2]);
    }

    *a9 = v18;
    a9[2] = v19;
    (v16->__vftable[2].~facet_0)(&v18, v16);
    if (*(a8 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a8, 4 * a8[2]);
    }

    *a8 = v18;
    a8[2] = v19;
    *a4 = (v16->__vftable[1].~facet)(v16);
    *a5 = (v16->__vftable[1].~facet_0)(v16);
    (v16->__vftable[1].__on_zero_shared)(&v18, v16);
    if (*(a6 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a6, a6[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    *a6 = v18;
    a6[2] = v19;
    (v16->__vftable[2].~facet)(&v18, v16);
    if (*(a7 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a7, 4 * a7[2]);
    }
  }

  else
  {
    v16 = std::locale::use_facet(this, &std::moneypunct<wchar_t,false>::id);
    *a3 = (v16->__vftable[3].__on_zero_shared)(v16);
    (v16->__vftable[2].__on_zero_shared)(&v18, v16);
    if (*(a9 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a9, 4 * a9[2]);
    }

    *a9 = v18;
    a9[2] = v19;
    (v16->__vftable[2].~facet_0)(&v18, v16);
    if (*(a8 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a8, 4 * a8[2]);
    }

    *a8 = v18;
    a8[2] = v19;
    *a4 = (v16->__vftable[1].~facet)(v16);
    *a5 = (v16->__vftable[1].~facet_0)(v16);
    (v16->__vftable[1].__on_zero_shared)(&v18, v16);
    if (*(a6 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a6, a6[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    *a6 = v18;
    a6[2] = v19;
    (v16->__vftable[2].~facet)(&v18, v16);
    if (*(a7 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a7, 4 * a7[2]);
    }
  }

  *a7 = v18;
  a7[2] = v19;
  result = (v16->__vftable[3].~facet)(v16);
  *a10 = result;
  return result;
}

char *std::__double_or_nothing[abi:ne200100]<wchar_t>(void **a1, uint64_t *a2, char **a3)
{
  v6 = *a1;
  v7 = *a3 - *a1;
  v8 = 2 * v7;
  if (*a3 == *a1)
  {
    v8 = 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *a2;
  if (a1[1] != std::__do_nothing)
  {
    result = malloc_type_realloc(*a1, v9, 0x100004052888210uLL);
    if (result)
    {
      *a1 = result;
      goto LABEL_12;
    }

LABEL_13:
    std::__throw_bad_alloc();
  }

  result = malloc_type_realloc(0, v9, 0x100004052888210uLL);
  if (!result)
  {
    goto LABEL_13;
  }

  v12 = *a1;
  *a1 = result;
  if (v12)
  {
    (a1[1])(v12);
    result = *a1;
  }

LABEL_12:
  a1[1] = MEMORY[0x1E69E9B38];
  *a2 = &result[v10 - v6];
  *a3 = *a1 + (v9 & 0xFFFFFFFFFFFFFFFCLL);
  return result;
}

uint64_t std::money_put<char,std::ostreambuf_iterator<char>>::do_put(double a1, uint64_t a2, uint64_t a3, int a4, const std::ios_base *a5, int a6)
{
  v54 = *MEMORY[0x1E69E9840];
  v50 = __str;
  v11 = snprintf(__str, 0x64uLL, "%.0Lf", a1);
  if (v11 < 0x64)
  {
    v13 = v11;
    v16 = 0;
    v14 = 0;
    v17 = &v52;
  }

  else
  {
    v12 = asprintf_l(&v50, 0, "%.0Lf", a1);
    v13 = v12;
    if (v12 == -1)
    {
      std::__throw_bad_alloc();
    }

    v14 = v50;
    v15 = malloc_type_malloc(v12, 0x100004077774924uLL);
    v16 = v15;
    if (!v15)
    {
      std::__throw_bad_alloc();
    }

    v17 = v15;
  }

  v34 = v14;
  std::ios_base::getloc(a5);
  v18 = std::locale::use_facet(&v49, &std::ctype<char>::id);
  (v18->__vftable[2].__on_zero_shared)(v18, v50, &v50[v13], v17);
  v19 = v13 >= 1 && *v50 == 45;
  v44[0] = 0;
  v44[1] = 0;
  v45 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  std::__money_put<char>::__gather_info(a4, v19, &v49, &v48, &v47, &v46, v44, &v41, &v38, &v37);
  v20 = v13;
  v21 = v37;
  if (v13 <= v37)
  {
    v25 = HIBYTE(v40);
    if (v40 < 0)
    {
      v25 = v39;
    }

    v26 = HIBYTE(v43);
    if (v43 < 0)
    {
      v26 = v42;
    }

    v24 = v37 + v25 + v26 + 2;
  }

  else
  {
    v22 = HIBYTE(v40);
    if (v40 < 0)
    {
      v22 = v39;
    }

    v23 = HIBYTE(v43);
    if (v43 < 0)
    {
      v23 = v42;
    }

    v24 = v37 + 2 * (v13 - v37) + v22 + v23 + 1;
  }

  if (v24 < 0x65)
  {
    v28 = 0;
    v29 = &v51;
  }

  else
  {
    v27 = malloc_type_malloc(v24, 0x100004077774924uLL);
    v28 = v27;
    if (!v27)
    {
      std::__throw_bad_alloc();
    }

    v21 = v37;
    v29 = v27;
  }

  std::__money_put<char>::__format(v29, &v36, &v35, a5->__fmtflags_, v17, &v17[v20], v18, v19, &v48, v47, v46, v44, &v41, &v38, v21);
  v30 = std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(a3, v29, v36, v35, a5, a6);
  if (v28)
  {
    free(v28);
  }

  if (SHIBYTE(v40) < 0)
  {
    MEMORY[0x193B0CA40](v38, v40 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(v43) < 0)
  {
    MEMORY[0x193B0CA40](v41, v43 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(v45) < 0)
  {
    MEMORY[0x193B0CA40](v44[0], v45 & 0x7FFFFFFFFFFFFFFFLL);
  }

  locale = v49.__locale_;
  if (v49.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v49.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  if (v16)
  {
    free(v16);
  }

  if (v34)
  {
    free(v34);
  }

  v32 = *MEMORY[0x1E69E9840];
  return v30;
}

void sub_1922DE344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (SHIBYTE(a21) < 0)
  {
    MEMORY[0x193B0CA40](a19, a21 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a24) < 0)
  {
    MEMORY[0x193B0CA40](a22, a24 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(a27) < 0)
  {
    MEMORY[0x193B0CA40](a25, a27 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (a29 != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add((a29 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*a29 + 16))(a29);
  }

  if (v29)
  {
    free(v29);
  }

  if (a15)
  {
    free(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__money_put<char>::__gather_info(int a1, int a2, std::locale *this, _DWORD *a4, _BYTE *a5, _BYTE *a6, void *a7, void *a8, void *a9, _DWORD *a10)
{
  if (a1)
  {
    v16 = std::locale::use_facet(this, &std::moneypunct<char,true>::id);
    v17 = v16;
    v18 = v16->__vftable;
    if (a2)
    {
      *a4 = (v18[3].__on_zero_shared)(v16);
      (v17->__vftable[2].__on_zero_shared)(&v22, v17);
    }

    else
    {
      *a4 = (v18[3].~facet_0)(v16);
      (v17->__vftable[2].~facet_0)(&v22, v17);
    }

    if (*(a9 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a9, a9[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    *a9 = v22;
    a9[2] = v23;
    *a5 = (v17->__vftable[1].~facet)(v17);
    *a6 = (v17->__vftable[1].~facet_0)(v17);
    (v17->__vftable[1].__on_zero_shared)(&v22, v17);
    if (*(a7 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a7, a7[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    *a7 = v22;
    a7[2] = v23;
    (v17->__vftable[2].~facet)(&v22, v17);
    if (*(a8 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a8, a8[2] & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    v19 = std::locale::use_facet(this, &std::moneypunct<char,false>::id);
    v17 = v19;
    v20 = v19->__vftable;
    if (a2)
    {
      *a4 = (v20[3].__on_zero_shared)(v19);
      (v17->__vftable[2].__on_zero_shared)(&v22, v17);
    }

    else
    {
      *a4 = (v20[3].~facet_0)(v19);
      (v17->__vftable[2].~facet_0)(&v22, v17);
    }

    if (*(a9 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a9, a9[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    *a9 = v22;
    a9[2] = v23;
    *a5 = (v17->__vftable[1].~facet)(v17);
    *a6 = (v17->__vftable[1].~facet_0)(v17);
    (v17->__vftable[1].__on_zero_shared)(&v22, v17);
    if (*(a7 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a7, a7[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    *a7 = v22;
    a7[2] = v23;
    (v17->__vftable[2].~facet)(&v22, v17);
    if (*(a8 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a8, a8[2] & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  *a8 = v22;
  a8[2] = v23;
  result = (v17->__vftable[3].~facet)(v17);
  *a10 = result;
  return result;
}

void *std::__money_put<char>::__format(void *result, void **a2, void **a3, __int16 a4, char *a5, char *a6, void *a7, unsigned int a8, uint64_t a9, char a10, char a11, char *a12, _BYTE *a13, char *a14, int a15)
{
  v19 = 0;
  v20 = a13;
  v21 = a14;
  v63 = a2;
  v64 = a8;
  v62 = result;
  *a3 = result;
  do
  {
    v22 = *(a9 + v19);
    if (v22 <= 1)
    {
      if (*(a9 + v19))
      {
        if (v22 == 1)
        {
          *a2 = *a3;
          result = (*(*a7 + 56))(a7, 32);
          v20 = a13;
          v31 = *a3;
          *a3 = *a3 + 1;
          *v31 = result;
        }
      }

      else
      {
        *a2 = *a3;
      }
    }

    else
    {
      switch(v22)
      {
        case 2u:
          v32 = v20[23];
          if ((v32 & 0x8000000000000000) != 0)
          {
            if ((a4 & 0x200) != 0)
            {
              v32 = *(v20 + 1);
              if (v32)
              {
                v20 = *v20;
LABEL_34:
                v34 = *a3;
                result = memmove(*a3, v20, v32);
                *a3 = &v34[v32];
                v21 = a14;
                v20 = a13;
              }
            }
          }

          else if ((a4 & 0x200) != 0 && v20[23])
          {
            goto LABEL_34;
          }

          break;
        case 3u:
          if (v21[23] < 0)
          {
            if (!*(v21 + 1))
            {
              break;
            }

            v33 = *v21;
LABEL_37:
            v35 = *v33;
            v36 = *a3;
            *a3 = *a3 + 1;
            *v36 = v35;
            break;
          }

          v33 = v21;
          if (v21[23])
          {
            goto LABEL_37;
          }

          break;
        case 4u:
          a5 += v64;
          v23 = a5;
          if (a5 < a6)
          {
            v23 = a5;
            while (1)
            {
              v24 = *v23;
              if (v24 < 0 || (*(a7[2] + 4 * v24) & 0x400) == 0)
              {
                break;
              }

              if (++v23 >= a6)
              {
                v23 = a6;
                break;
              }
            }
          }

          v25 = *a3;
          if (a15 < 1)
          {
LABEL_44:
            if (v23 == a5)
            {
              result = (*(*a7 + 56))(a7, 48);
              v20 = a13;
              v41 = *a3;
              *a3 = *a3 + 1;
              *v41 = result;
LABEL_65:
              v51 = *a3 - 1;
              v52 = v25 != *a3 && v51 > v25;
              if (v52)
              {
                v53 = v25 + 1;
                v21 = a14;
                do
                {
                  v54 = *(v53 - 1);
                  *(v53 - 1) = *v51;
                  *v51-- = v54;
                }

                while (v53++ < v51);
              }

              else
              {
                v21 = a14;
              }

              break;
            }

            if (a12[23] < 0)
            {
              if (!*(a12 + 1))
              {
LABEL_52:
                v42 = -1;
LABEL_53:
                LODWORD(v43) = 0;
                v44 = 0;
                do
                {
                  if (v44 == v42)
                  {
                    v45 = *a3;
                    *a3 = *a3 + 1;
                    *v45 = a11;
                    v43 = (v43 + 1);
                    v46 = a12[23];
                    v47 = v46;
                    if ((v46 & 0x80u) != 0)
                    {
                      v46 = *(a12 + 1);
                    }

                    if (v46 <= v43)
                    {
                      v44 = 0;
                    }

                    else
                    {
                      v44 = 0;
                      v48 = *a12;
                      if (v47 >= 0)
                      {
                        v48 = a12;
                      }

                      v42 = v48[v43];
                      if (v42 == 127)
                      {
                        LOBYTE(v42) = -1;
                      }

                      v42 = v42;
                    }
                  }

                  v49 = *--v23;
                  v50 = *a3;
                  *a3 = *a3 + 1;
                  *v50 = v49;
                  ++v44;
                }

                while (v23 != a5);
                goto LABEL_65;
              }

              v40 = *a12;
            }

            else
            {
              v40 = a12;
              if (!a12[23])
              {
                goto LABEL_52;
              }
            }

            v42 = *v40;
            goto LABEL_53;
          }

          if (v23 <= a5)
          {
            v27 = a15;
          }

          else
          {
            v26 = v23 - 1;
            v27 = a15;
            do
            {
              v28 = v27--;
              v52 = v26 > a5;
              v29 = *v26--;
              v30 = *a3;
              *a3 = *a3 + 1;
              *v30 = v29;
            }

            while (v52 && v28 != 1);
            v23 = v26 + 1;
            if (v28 == 1)
            {
              v27 = 0;
              result = 0;
LABEL_40:
              if (v27 >= 1)
              {
                v37 = v27 + 1;
                do
                {
                  v38 = *a3;
                  *a3 = *a3 + 1;
                  *v38 = result;
                  --v37;
                }

                while (v37 > 1);
              }

              v39 = *a3;
              *a3 = *a3 + 1;
              *v39 = a10;
              a2 = v63;
              goto LABEL_44;
            }
          }

          result = (*(*a7 + 56))(a7, 48);
          v20 = a13;
          goto LABEL_40;
        default:
          break;
      }
    }

    ++v19;
  }

  while (v19 != 4);
  v56 = v21[23];
  if ((v56 & 0x8000000000000000) != 0)
  {
    v56 = *(v21 + 1);
    if (v56 > 1)
    {
      v21 = *v21;
      v57 = v21 + 1;
LABEL_79:
      v58 = &v21[v56];
      v59 = *a3;
      v60 = v58 - v57;
      if (v58 != v57)
      {
        result = memmove(*a3, v57, v58 - v57);
      }

      *a3 = &v59[v60];
      a2 = v63;
    }
  }

  else if (v56 > 1)
  {
    v57 = (v21 | 1);
    goto LABEL_79;
  }

  if ((a4 & 0xB0) != 0x10)
  {
    v61 = v62;
    if ((a4 & 0xB0) == 0x20)
    {
      v61 = *a3;
    }

    *a2 = v61;
  }

  return result;
}

uint64_t std::money_put<char,std::ostreambuf_iterator<char>>::do_put(int a1, uint64_t a2, int a3, std::ios_base *this, int a5, unsigned __int8 *a6)
{
  v49 = *MEMORY[0x1E69E9840];
  std::ios_base::getloc(this);
  v11 = std::locale::use_facet(&v47, &std::ctype<char>::id);
  v12 = &v11->__vftable;
  if ((a6[23] & 0x80000000) == 0)
  {
    v13 = a6;
    if (!a6[23])
    {
      goto LABEL_7;
    }

LABEL_6:
    v14 = *v13;
    v15 = v14 == (v11->__vftable[2].~facet_0)(v11, 45);
    goto LABEL_8;
  }

  if (*(a6 + 1))
  {
    v13 = *a6;
    goto LABEL_6;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  v42[0] = 0;
  v42[1] = 0;
  v43 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  std::__money_put<char>::__gather_info(a3, v15, &v47, &v46, &v45, &v44, v42, &v39, &v36, &v35);
  LODWORD(v16) = a6[23];
  if ((v16 & 0x80000000) != 0)
  {
    v18 = *(a6 + 1);
    v17 = v35;
    if (v35 < v18)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v17 = v35;
    if (v35 < v16)
    {
      v18 = a6[23];
LABEL_12:
      v19 = 2 * (v18 - v17);
      v20 = HIBYTE(v38);
      if (v38 < 0)
      {
        v20 = v37;
      }

      v21 = HIBYTE(v41);
      if (v41 < 0)
      {
        v21 = v40;
      }

      v22 = v19 + v17 + v20 + v21 + 1;
      goto LABEL_22;
    }
  }

  v23 = HIBYTE(v38);
  if (v38 < 0)
  {
    v23 = v37;
  }

  v24 = HIBYTE(v41);
  if (v41 < 0)
  {
    v24 = v40;
  }

  v22 = v23 + v17 + v24 + 2;
LABEL_22:
  if (v22 < 0x65)
  {
    v26 = 0;
    v27 = &v48;
  }

  else
  {
    v25 = malloc_type_malloc(v22, 0x100004077774924uLL);
    v26 = v25;
    if (!v25)
    {
      std::__throw_bad_alloc();
    }

    LOBYTE(v16) = a6[23];
    v17 = v35;
    v27 = v25;
  }

  v16 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v28 = a6;
  }

  else
  {
    v28 = *a6;
  }

  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a6 + 1);
  }

  std::__money_put<char>::__format(v27, &v34, &v33, this->__fmtflags_, v28, &v28[v16], v12, v15, &v46, v45, v44, v42, &v39, &v36, v17);
  v29 = std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(a2, v27, v34, v33, this, a5);
  if (v26)
  {
    free(v26);
  }

  if (SHIBYTE(v38) < 0)
  {
    MEMORY[0x193B0CA40](v36, v38 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(v41) < 0)
  {
    MEMORY[0x193B0CA40](v39, v41 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (SHIBYTE(v43) < 0)
  {
    MEMORY[0x193B0CA40](v42[0], v43 & 0x7FFFFFFFFFFFFFFFLL);
  }

  locale = v47.__locale_;
  if (v47.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v47.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  v31 = *MEMORY[0x1E69E9840];
  return v29;
}

void sub_1922DF0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (a37 != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add((a37 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*a37 + 16))(a37);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(double a1, uint64_t a2, uint64_t a3, int a4, const std::ios_base *a5, int a6)
{
  v54 = *MEMORY[0x1E69E9840];
  v50 = __str;
  v11 = snprintf(__str, 0x64uLL, "%.0Lf", a1);
  if (v11 < 0x64)
  {
    v13 = v11;
    v16 = 0;
    v14 = 0;
    v17 = &v52;
  }

  else
  {
    v12 = asprintf_l(&v50, 0, "%.0Lf", a1);
    v13 = v12;
    if (v12 == -1)
    {
      std::__throw_bad_alloc();
    }

    v14 = v50;
    v15 = malloc_type_malloc(4 * v12, 0x100004052888210uLL);
    v16 = v15;
    if (!v15)
    {
      std::__throw_bad_alloc();
    }

    v17 = v15;
  }

  v34 = v14;
  std::ios_base::getloc(a5);
  v18 = std::locale::use_facet(&v49, &std::ctype<wchar_t>::id);
  (v18->__vftable[4].~facet)(v18, v50, &v50[v13], v17);
  v19 = v13 >= 1 && *v50 == 45;
  v44[0] = 0;
  v44[1] = 0;
  v45 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  std::__money_put<wchar_t>::__gather_info(a4, v19, &v49, &v48, &v47, &v46, v44, &v41, &v38, &v37);
  v20 = v13;
  v21 = v37;
  if (v13 <= v37)
  {
    v25 = HIBYTE(v40);
    if (v40 < 0)
    {
      v25 = v39;
    }

    v26 = HIBYTE(v43);
    if (v43 < 0)
    {
      v26 = v42;
    }

    v24 = v37 + v25 + v26 + 2;
  }

  else
  {
    v22 = HIBYTE(v40);
    if (v40 < 0)
    {
      v22 = v39;
    }

    v23 = HIBYTE(v43);
    if (v43 < 0)
    {
      v23 = v42;
    }

    v24 = v37 + 2 * (v13 - v37) + v22 + v23 + 1;
  }

  if (v24 < 0x65)
  {
    v28 = 0;
    v29 = &v51;
  }

  else
  {
    v27 = malloc_type_malloc(4 * v24, 0x100004052888210uLL);
    v28 = v27;
    if (!v27)
    {
      std::__throw_bad_alloc();
    }

    v21 = v37;
    v29 = v27;
  }

  std::__money_put<wchar_t>::__format(v29, &v36, &v35, a5->__fmtflags_, v17, &v17[v20], v18, v19, &v48, v47, v46, v44, &v41, &v38, v21);
  v30 = std::__pad_and_output[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a3, v29, v36, v35, a5, a6);
  if (v28)
  {
    free(v28);
  }

  if (SHIBYTE(v40) < 0)
  {
    MEMORY[0x193B0CA40](v38, 4 * v40);
  }

  if (SHIBYTE(v43) < 0)
  {
    MEMORY[0x193B0CA40](v41, 4 * v43);
  }

  if (SHIBYTE(v45) < 0)
  {
    MEMORY[0x193B0CA40](v44[0], v45 & 0x7FFFFFFFFFFFFFFFLL);
  }

  locale = v49.__locale_;
  if (v49.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v49.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  if (v16)
  {
    free(v16);
  }

  if (v34)
  {
    free(v34);
  }

  v32 = *MEMORY[0x1E69E9840];
  return v30;
}

void sub_1922DF55C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (SHIBYTE(a21) < 0)
  {
    MEMORY[0x193B0CA40](a19, 4 * a21);
  }

  if (SHIBYTE(a24) < 0)
  {
    MEMORY[0x193B0CA40](a22, 4 * a24);
  }

  if (SHIBYTE(a27) < 0)
  {
    MEMORY[0x193B0CA40](a25, a27 & 0x7FFFFFFFFFFFFFFFLL);
  }

  if (a30 != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add((a30 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*a30 + 16))(a30);
  }

  if (v30)
  {
    free(v30);
  }

  if (a15)
  {
    free(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__money_put<wchar_t>::__gather_info(int a1, int a2, std::locale *this, _DWORD *a4, _DWORD *a5, _DWORD *a6, void *a7, void *a8, void *a9, _DWORD *a10)
{
  if (a1)
  {
    v16 = std::locale::use_facet(this, &std::moneypunct<wchar_t,true>::id);
    v17 = v16;
    v18 = v16->__vftable;
    if (a2)
    {
      *a4 = (v18[3].__on_zero_shared)(v16);
      (v17->__vftable[2].__on_zero_shared)(&v22, v17);
    }

    else
    {
      *a4 = (v18[3].~facet_0)(v16);
      (v17->__vftable[2].~facet_0)(&v22, v17);
    }

    if (*(a9 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a9, 4 * a9[2]);
    }

    *a9 = v22;
    a9[2] = v23;
    *a5 = (v17->__vftable[1].~facet)(v17);
    *a6 = (v17->__vftable[1].~facet_0)(v17);
    (v17->__vftable[1].__on_zero_shared)(&v22, v17);
    if (*(a7 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a7, a7[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    *a7 = v22;
    a7[2] = v23;
    (v17->__vftable[2].~facet)(&v22, v17);
    if (*(a8 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a8, 4 * a8[2]);
    }
  }

  else
  {
    v19 = std::locale::use_facet(this, &std::moneypunct<wchar_t,false>::id);
    v17 = v19;
    v20 = v19->__vftable;
    if (a2)
    {
      *a4 = (v20[3].__on_zero_shared)(v19);
      (v17->__vftable[2].__on_zero_shared)(&v22, v17);
    }

    else
    {
      *a4 = (v20[3].~facet_0)(v19);
      (v17->__vftable[2].~facet_0)(&v22, v17);
    }

    if (*(a9 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a9, 4 * a9[2]);
    }

    *a9 = v22;
    a9[2] = v23;
    *a5 = (v17->__vftable[1].~facet)(v17);
    *a6 = (v17->__vftable[1].~facet_0)(v17);
    (v17->__vftable[1].__on_zero_shared)(&v22, v17);
    if (*(a7 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a7, a7[2] & 0x7FFFFFFFFFFFFFFFLL);
    }

    *a7 = v22;
    a7[2] = v23;
    (v17->__vftable[2].~facet)(&v22, v17);
    if (*(a8 + 23) < 0)
    {
      MEMORY[0x193B0CA40](*a8, 4 * a8[2]);
    }
  }

  *a8 = v22;
  a8[2] = v23;
  result = (v17->__vftable[3].~facet)(v17);
  *a10 = result;
  return result;
}

char *std::__money_put<wchar_t>::__format(char *__dst, char **a2, char **a3, __int16 a4, unsigned int *a5, unint64_t a6, uint64_t a7, int a8, uint64_t a9, int a10, int a11, char *a12, void *a13, uint64_t a14, int a15)
{
  v19 = 0;
  v20 = 4;
  v21 = a9;
  if (!a8)
  {
    v20 = 0;
  }

  v57 = v20;
  v22 = __dst;
  v23 = __dst;
  v56 = __dst;
  *a3 = __dst;
  do
  {
    v24 = *(v21 + v19);
    if (v24 <= 1)
    {
      if (*(v21 + v19))
      {
        if (v24 != 1)
        {
          goto LABEL_75;
        }

        *a2 = v22;
        __dst = (*(*a7 + 88))(a7, 32);
        v31 = *a3;
        *v31 = __dst;
        v22 = v31 + 4;
        goto LABEL_38;
      }

      *a2 = v22;
LABEL_74:
      v23 = v22;
      goto LABEL_75;
    }

    if (v24 == 2)
    {
      v32 = *(a13 + 23);
      if (v32 < 0)
      {
        if ((a4 & 0x200) == 0)
        {
          goto LABEL_70;
        }

        v32 = a13[1];
        if (!v32)
        {
          goto LABEL_70;
        }

        v33 = *a13;
      }

      else
      {
        if ((a4 & 0x200) == 0 || !*(a13 + 23))
        {
          goto LABEL_70;
        }

        v33 = a13;
      }

      __dst = memmove(v22, v33, 4 * v32);
      v22 += 4 * v32;
      *a3 = v22;
LABEL_69:
      v23 = v22;
LABEL_70:
      v21 = a9;
      goto LABEL_75;
    }

    if (v24 != 3)
    {
      if (v24 != 4)
      {
        goto LABEL_75;
      }

      a5 = (a5 + v57);
      v25 = a5;
      if (a5 < a6)
      {
        v25 = a5;
        do
        {
          __dst = (*(*a7 + 24))(a7, 1024, *v25);
          if (!__dst)
          {
            break;
          }

          ++v25;
        }

        while (v25 < a6);
      }

      if (a15 < 1)
      {
LABEL_44:
        if (v25 == a5)
        {
          __dst = (*(*a7 + 88))(a7, 48);
          v37 = *a3;
          *v37 = __dst;
          v22 = v37 + 4;
          *a3 = v22;
LABEL_65:
          v45 = v22 - 4;
          v46 = v23 != v22 && v45 > v23;
          if (!v46)
          {
            goto LABEL_69;
          }

          v47 = v23 + 4;
          v21 = a9;
          do
          {
            v48 = *(v47 - 1);
            *(v47 - 1) = *v45;
            *v45 = v48;
            v45 -= 4;
            v49 = v47 >= v45;
            v47 += 4;
          }

          while (!v49);
          goto LABEL_74;
        }

        if (a12[23] < 0)
        {
          if (!*(a12 + 1))
          {
LABEL_52:
            v38 = -1;
LABEL_53:
            LODWORD(v39) = 0;
            v40 = 0;
            v22 = *a3;
            do
            {
              if (v40 == v38)
              {
                *v22 = a11;
                v22 += 4;
                *a3 = v22;
                v39 = (v39 + 1);
                v41 = a12[23];
                v42 = v41;
                if ((v41 & 0x80u) != 0)
                {
                  v41 = *(a12 + 1);
                }

                if (v41 <= v39)
                {
                  v40 = 0;
                }

                else
                {
                  v40 = 0;
                  v43 = *a12;
                  if (v42 >= 0)
                  {
                    v43 = a12;
                  }

                  v38 = *(v43 + v39);
                  if (v38 == 127)
                  {
                    LOBYTE(v38) = -1;
                  }

                  v38 = v38;
                }
              }

              v44 = *--v25;
              *v22 = v44;
              v22 += 4;
              *a3 = v22;
              ++v40;
            }

            while (v25 != a5);
            goto LABEL_65;
          }

          v36 = *a12;
        }

        else
        {
          v36 = a12;
          if (!a12[23])
          {
            goto LABEL_52;
          }
        }

        v38 = *v36;
        goto LABEL_53;
      }

      if (v25 <= a5)
      {
        v28 = a15;
      }

      else
      {
        v26 = *a3;
        v27 = v25 - 1;
        v28 = a15;
        do
        {
          v29 = v28--;
          v46 = v27 > a5;
          v30 = *v27--;
          *v26 = v30;
          v26 += 4;
        }

        while (v46 && v29 != 1);
        *a3 = v26;
        v25 = v27 + 1;
        if (v29 == 1)
        {
LABEL_43:
          *v26 = a10;
          *a3 = v26 + 4;
          goto LABEL_44;
        }
      }

      __dst = (*(*a7 + 88))(a7, 48);
      v26 = *a3;
      if (v28 >= 1)
      {
        v35 = v28 + 1;
        do
        {
          *v26 = __dst;
          v26 += 4;
          --v35;
        }

        while (v35 > 1);
      }

      goto LABEL_43;
    }

    v34 = a14;
    if (*(a14 + 23) < 0)
    {
      if (!*(a14 + 8))
      {
        goto LABEL_75;
      }

      v34 = *a14;
LABEL_37:
      *v22 = *v34;
      v22 += 4;
LABEL_38:
      *a3 = v22;
      goto LABEL_74;
    }

    if (*(a14 + 23))
    {
      goto LABEL_37;
    }

LABEL_75:
    ++v19;
  }

  while (v19 != 4);
  v50 = *(a14 + 23);
  if ((v50 & 0x8000000000000000) != 0)
  {
    v50 = *(a14 + 8);
    if (v50 > 1)
    {
      v51 = *a14;
      v52 = (*a14 + 4);
LABEL_81:
      v53 = (v51 + 4 * v50);
      v54 = v53 - v52;
      if (v53 != v52)
      {
        __dst = memmove(v22, v52, v53 - v52);
      }

      v22 += v54;
      *a3 = v22;
    }
  }

  else if (v50 > 1)
  {
    v51 = a14;
    v52 = (a14 | 4);
    goto LABEL_81;
  }

  if ((a4 & 0xB0) != 0x10)
  {
    v55 = v56;
    if ((a4 & 0xB0) == 0x20)
    {
      v55 = v22;
    }

    *a2 = v55;
  }

  return __dst;
}

uint64_t std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(int a1, uint64_t a2, int a3, std::ios_base *this, int a5, uint64_t a6)
{
  v49 = *MEMORY[0x1E69E9840];
  std::ios_base::getloc(this);
  v11 = std::locale::use_facet(&v47, &std::ctype<wchar_t>::id);
  v12 = v11;
  if ((*(a6 + 23) & 0x80000000) == 0)
  {
    v13 = a6;
    if (!*(a6 + 23))
    {
      goto LABEL_7;
    }

LABEL_6:
    v14 = *v13;
    v15 = v14 == (v11->__vftable[3].__on_zero_shared)(v11, 45);
    goto LABEL_8;
  }

  if (*(a6 + 8))
  {
    v13 = *a6;
    goto LABEL_6;
  }

LABEL_7:
  v15 = 0;
LABEL_8:
  v42[0] = 0;
  v42[1] = 0;
  v43 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  std::__money_put<wchar_t>::__gather_info(a3, v15, &v47, &v46, &v45, &v44, v42, &v39, &v36, &v35);
  LODWORD(v16) = *(a6 + 23);
  if ((v16 & 0x80000000) != 0)
  {
    v18 = *(a6 + 8);
    v17 = v35;
    if (v35 < v18)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v17 = v35;
    if (v35 < v16)
    {
      v18 = *(a6 + 23);
LABEL_12:
      v19 = 2 * (v18 - v17);
      v20 = HIBYTE(v38);
      if (v38 < 0)
      {
        v20 = v37;
      }

      v21 = HIBYTE(v41);
      if (v41 < 0)
      {
        v21 = v40;
      }

      v22 = v19 + v17 + v20 + v21 + 1;
      goto LABEL_22;
    }
  }

  v23 = HIBYTE(v38);
  if (v38 < 0)
  {
    v23 = v37;
  }

  v24 = HIBYTE(v41);
  if (v41 < 0)
  {
    v24 = v40;
  }

  v22 = v23 + v17 + v24 + 2;
LABEL_22:
  if (v22 < 0x65)
  {
    v26 = 0;
    v27 = &v48;
  }

  else
  {
    v25 = malloc_type_malloc(4 * v22, 0x100004052888210uLL);
    v26 = v25;
    if (!v25)
    {
      std::__throw_bad_alloc();
    }

    LOBYTE(v16) = *(a6 + 23);
    v17 = v35;
    v27 = v25;
  }

  v16 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v28 = a6;
  }

  else
  {
    v28 = *a6;
  }

  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a6 + 8);
  }

  std::__money_put<wchar_t>::__format(v27, &v34, &v33, this->__fmtflags_, v28, &v28[v16], v12, v15, &v46, v45, v44, v42, &v39, &v36, v17);
  v29 = std::__pad_and_output[abi:ne200100]<wchar_t,std::char_traits<wchar_t>>(a2, v27, v34, v33, this, a5);
  if (v26)
  {
    free(v26);
  }

  if (SHIBYTE(v38) < 0)
  {
    MEMORY[0x193B0CA40](v36, 4 * v38);
  }

  if (SHIBYTE(v41) < 0)
  {
    MEMORY[0x193B0CA40](v39, 4 * v41);
  }

  if (SHIBYTE(v43) < 0)
  {
    MEMORY[0x193B0CA40](v42[0], v43 & 0x7FFFFFFFFFFFFFFFLL);
  }

  locale = v47.__locale_;
  if (v47.__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(v47.__locale_ + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  v31 = *MEMORY[0x1E69E9840];
  return v29;
}

void sub_1922E02B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (a38 != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add((a38 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*a38 + 16))(a38);
  }

  _Unwind_Resume(exception_object);
}

nl_catd std::messages<char>::do_open(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  return catopen(v2, 1);
}

void std::messages<char>::do_get(__nl_cat_d *a1@<X1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X4>, std::string *a5@<X8>)
{
  memset(&v16, 0, sizeof(v16));
  v9 = *(a4 + 23);
  if (v9 >= 0)
  {
    v10 = a4;
  }

  else
  {
    v10 = *a4;
  }

  if (v9 >= 0)
  {
    v11 = *(a4 + 23);
  }

  else
  {
    v11 = *(a4 + 8);
  }

  if (v11 < 1)
  {
    v12 = &v16;
  }

  else
  {
    do
    {
      std::string::push_back(&v16, *v10++);
      --v11;
    }

    while (v11);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v16;
    }

    else
    {
      v12 = v16.__r_.__value_.__r.__words[0];
    }
  }

  v13 = catgets(a1, a2, a3, v12);
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  v14 = strlen(v13);
  if (v14 >= 1)
  {
    v15 = v14;
    do
    {
      std::string::push_back(a5, *v13++);
      --v15;
    }

    while (v15);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v16.__r_.__value_.__r.__words[0], v16.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }
}

void sub_1922E048C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (SHIBYTE(a12) < 0)
  {
    MEMORY[0x193B0CA40](a10, a12 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(exception_object);
}

nl_catd std::messages<wchar_t>::do_open(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  return catopen(v2, 1);
}

void std::messages<wchar_t>::do_get(__nl_cat_d *a1@<X1>, int a2@<W2>, int a3@<W3>, unint64_t a4@<X4>, std::wstring *a5@<X8>)
{
  memset(&v15, 0, sizeof(v15));
  v14.__shared_owners_ = 0;
  v9 = *(a4 + 23);
  if ((v9 & 0x80u) == 0)
  {
    v10 = a4;
  }

  else
  {
    v10 = *a4;
  }

  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a4 + 8);
  }

  std::__narrow_to_utf8<32ul>::operator()[abi:ne200100]<std::back_insert_iterator<std::string>,wchar_t>(&v14, &v15, v10, v10 + 4 * v9);
  std::__shared_count::~__shared_count(&v14);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v15;
  }

  else
  {
    v11 = v15.__r_.__value_.__r.__words[0];
  }

  v12 = catgets(a1, a2, a3, v11);
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  v14.__shared_owners_ = 0;
  v13 = strlen(v12);
  std::__widen_from_utf8<32ul>::operator()[abi:ne200100]<std::back_insert_iterator<std::wstring>>(&v14, a5, v12, &v12[v13]);
  std::__shared_count::~__shared_count(&v14);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    MEMORY[0x193B0CA40](v15.__r_.__value_.__r.__words[0], v15.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }
}

void sub_1922E0614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_count a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  std::__shared_count::~__shared_count(&a10);
  if (*(v13 + 23) < 0)
  {
    std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(v13);
  }

  if (SHIBYTE(a13) < 0)
  {
    MEMORY[0x193B0CA40](a11, a13 & 0x7FFFFFFFFFFFFFFFLL);
  }

  _Unwind_Resume(a1);
}

std::string *std::__narrow_to_utf8<32ul>::operator()[abi:ne200100]<std::back_insert_iterator<std::string>,wchar_t>(uint64_t a1, std::string *a2, unint64_t a3, unint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3 < a4)
  {
    v6 = a3;
    do
    {
      v13 = v6;
      if ((*(*a1 + 24))(a1, v16, v6, a4, &v13, v15, v16, &v14) == 2 || v13 == v6)
      {
        std::__throw_runtime_error("locale not supported");
      }

      v6 = v13;
      if (v15 < v14)
      {
        v9 = v15;
        do
        {
          v10 = *v9++;
          std::string::push_back(a2, v10);
        }

        while (v9 < v14);
        v6 = v13;
      }
    }

    while (v6 < a4);
  }

  v11 = *MEMORY[0x1E69E9840];
  return a2;
}

std::wstring *std::__widen_from_utf8<32ul>::operator()[abi:ne200100]<std::back_insert_iterator<std::wstring>>(uint64_t a1, std::wstring *a2, unint64_t a3, unint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3 < a4)
  {
    v6 = a3;
    do
    {
      v14 = v6;
      if ((a4 - v6) <= 32)
      {
        v8 = a4;
      }

      else
      {
        v8 = v6 + 32;
      }

      if ((*(*a1 + 32))(a1, v17, v6, v8, &v14, v16, v17, &v15) == 2 || v14 == v6)
      {
        std::__throw_runtime_error("locale not supported");
      }

      v6 = v14;
      if (v16 < v15)
      {
        v10 = v16;
        do
        {
          v11 = *v10++;
          std::wstring::push_back(a2, v11);
        }

        while (v10 < v15);
        v6 = v14;
      }
    }

    while (v6 < a4);
  }

  v12 = *MEMORY[0x1E69E9840];
  return a2;
}

void std::codecvt_byname<char,char,__mbstate_t>::~codecvt_byname(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::codecvt<wchar_t,char,__mbstate_t>::~codecvt(std::codecvt<wchar_t, char, mbstate_t> *this)
{
  l = this->__l_;
  if (l)
  {
    freelocale(l);
  }

  std::__shared_count::~__shared_count(this);
}

{
  std::codecvt<wchar_t,char,__mbstate_t>::~codecvt(this);

  JUMPOUT(0x193B0CA40);
}

void std::codecvt_byname<wchar_t,char,__mbstate_t>::~codecvt_byname(std::codecvt<wchar_t, char, mbstate_t> *a1)
{
  std::codecvt<wchar_t,char,__mbstate_t>::~codecvt(a1);

  JUMPOUT(0x193B0CA40);
}

void std::codecvt_byname<char16_t,char,__mbstate_t>::~codecvt_byname(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::codecvt_byname<char32_t,char,__mbstate_t>::~codecvt_byname(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::codecvt_byname<char16_t,char8_t,__mbstate_t>::~codecvt_byname(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

void std::codecvt_byname<char32_t,char8_t,__mbstate_t>::~codecvt_byname(std::__shared_count *a1)
{
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x193B0CA40);
}

std::locale::__imp *std::locale::__imp::__imp(std::locale::__imp *this, uint64_t a2)
{
  *this = &unk_1F06C1528;
  *(this + 1) = a2 - 1;
  std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::vector[abi:ne200100](this + 2, 0x1EuLL);
  std::string::basic_string[abi:ne200100]<0>(this + 288, "C");
  *(this + 3) = *(this + 2);
  *algn_1ED4085A8 = 0;
  v3 = std::locale::id::__get(&std::collate<char>::id);
  *algn_1ED4085B8 = 0;
  v4 = std::locale::id::__get(&std::collate<wchar_t>::id);
  *algn_1ED4085C8 = 0;
  byte_1ED4085D8 = 0;
  qword_1ED4085D0 = MEMORY[0x1E69E9830] + 60;
  v5 = std::locale::id::__get(&std::ctype<char>::id);
  *algn_1ED4085E8 = 0;
  v6 = std::locale::id::__get(&std::ctype<wchar_t>::id);
  *algn_1ED4085F8 = 0;
  v7 = std::locale::id::__get(&std::codecvt<char,char,__mbstate_t>::id);
  qword_1ED408608 = 0;
  unk_1ED408610 = 0;
  v8 = std::locale::id::__get(&std::codecvt<wchar_t,char,__mbstate_t>::id);
  v9 = std::locale::id::__get(&std::codecvt<char16_t,char,__mbstate_t>::id);
  v10 = std::locale::id::__get(&std::codecvt<char32_t,char,__mbstate_t>::id);
  v11 = std::locale::id::__get(&std::codecvt<char16_t,char8_t,__mbstate_t>::id);
  v12 = std::locale::id::__get(&std::codecvt<char32_t,char8_t,__mbstate_t>::id);
  word_1ED408668 = 11310;
  qword_1ED408678 = 0;
  unk_1ED408680 = 0;
  qword_1ED408670 = 0;
  v13 = std::locale::id::__get(&std::numpunct<char>::id);
  qword_1ED408698 = 0x2C0000002ELL;
  qword_1ED4086A8 = 0;
  unk_1ED4086B0 = 0;
  qword_1ED4086A0 = 0;
  v14 = std::locale::id::__get(&std::numpunct<wchar_t>::id);
  v15 = std::locale::id::__get(&std::num_get<char,std::istreambuf_iterator<char>>::id);
  v16 = std::locale::id::__get(&std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
  v17 = std::locale::id::__get(&std::num_put<char,std::ostreambuf_iterator<char>>::id);
  v18 = std::locale::id::__get(&std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
  v19 = std::locale::id::__get(&std::moneypunct<char,false>::id);
  v20 = std::locale::id::__get(&std::moneypunct<char,true>::id);
  v21 = std::locale::id::__get(&std::moneypunct<wchar_t,false>::id);
  v22 = std::locale::id::__get(&std::moneypunct<wchar_t,true>::id);
  v23 = std::locale::id::__get(&std::money_get<char,std::istreambuf_iterator<char>>::id);
  v24 = std::locale::id::__get(&std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
  v25 = std::locale::id::__get(&std::money_put<char,std::ostreambuf_iterator<char>>::id);
  v26 = std::locale::id::__get(&std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
  v27 = std::locale::id::__get(&std::time_get<char,std::istreambuf_iterator<char>>::id);
  *algn_1ED408798 = 0;
  v28 = std::locale::id::__get(&std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
  qword_1ED4087B0 = 0;
  unk_1ED4087B8 = 0;
  v29 = std::locale::id::__get(&std::time_put<char,std::ostreambuf_iterator<char>>::id);
  qword_1ED4087C8 = 0;
  unk_1ED4087D0 = 0;
  v30 = std::locale::id::__get(&std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
  v31 = std::locale::id::__get(&std::messages<char>::id);
  v32 = std::locale::id::__get(&std::messages<wchar_t>::id);
  return this;
}

void sub_1922E1360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__shared_count::~__shared_count(v2);
  _Unwind_Resume(a1);
}

void std::locale::__imp::__imp(std::string *a1, __int128 *a2, uint64_t a3)
{
  a1->__r_.__value_.__r.__words[0] = &unk_1F06C1528;
  a1->__r_.__value_.__l.__size_ = a3 - 1;
  v5 = &a1->__r_.__value_.__r.__words[2];
  std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::vector[abi:ne200100](&a1->__r_.__value_.__r.__words[2], 0x1EuLL);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 12, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    a1[12].__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&a1[12].__r_.__value_.__l.__data_ = v6;
  }

  locale = std::locale::classic()->__locale_;
  if (locale != a1)
  {
    std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::__assign_with_size[abi:ne200100]<std::locale::facet **,std::locale::facet **>(v5, *(locale + 2), *(locale + 3), (*(locale + 3) - *(locale + 2)) >> 3);
  }

  v9 = a1->__r_.__value_.__r.__words[2];
  data = a1[1].__r_.__value_.__l.__data_;
  if (data != v9)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = *&v9[8 * v10];
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
        v9 = a1->__r_.__value_.__r.__words[2];
        data = a1[1].__r_.__value_.__l.__data_;
      }

      v10 = v11++;
    }

    while (v10 < (data - v9) >> 3);
  }

  operator new();
}

void sub_1922E1B68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__shared_count::~__shared_count(v2);
  _Unwind_Resume(a1);
}

const std::locale *std::locale::classic(void)
{
  {
    std::locale::classic(void)::classic_locale = std::locale::__imp::__imp(&std::locale::__imp::classic_locale_imp_, 1);
  }

  return &std::locale::classic(void)::classic_locale;
}

std::string *std::locale::__imp::__imp(std::string *this, std::string *a2)
{
  this->__r_.__value_.__r.__words[0] = &unk_1F06C1528;
  this->__r_.__value_.__l.__size_ = -1;
  v4 = &this->__r_.__value_.__r.__words[2];
  if (((a2[1].__r_.__value_.__r.__words[0] - a2->__r_.__value_.__r.__words[2]) >> 3) <= 0x1E)
  {
    v5 = 30;
  }

  else
  {
    v5 = (a2[1].__r_.__value_.__r.__words[0] - a2->__r_.__value_.__r.__words[2]) >> 3;
  }

  std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::vector[abi:ne200100](&this->__r_.__value_.__r.__words[2], v5);
  if (SHIBYTE(a2[12].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 12, a2[12].__r_.__value_.__l.__data_, a2[12].__r_.__value_.__l.__size_);
  }

  else
  {
    v6 = *&a2[12].__r_.__value_.__l.__data_;
    this[12].__r_.__value_.__r.__words[2] = a2[12].__r_.__value_.__r.__words[2];
    *&this[12].__r_.__value_.__l.__data_ = v6;
  }

  if (this != a2)
  {
    std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::__assign_with_size[abi:ne200100]<std::locale::facet **,std::locale::facet **>(v4, a2->__r_.__value_.__r.__words[2], a2[1].__r_.__value_.__l.__data_, (a2[1].__r_.__value_.__r.__words[0] - a2->__r_.__value_.__r.__words[2]) >> 3);
  }

  v8 = this->__r_.__value_.__r.__words[2];
  data = this[1].__r_.__value_.__l.__data_;
  if (data != v8)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = *&v8[8 * v9];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
        v8 = this->__r_.__value_.__r.__words[2];
        data = this[1].__r_.__value_.__l.__data_;
      }

      v9 = v10++;
    }

    while (v9 < (data - v8) >> 3);
  }

  return this;
}

void sub_1922E1E50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__shared_count::~__shared_count(v2);
  _Unwind_Resume(a1);
}

std::string *std::locale::__imp::__imp(std::string *a1, uint64_t a2, _BYTE *a3, int a4)
{
  a1->__r_.__value_.__r.__words[0] = &unk_1F06C1528;
  a1->__r_.__value_.__l.__size_ = -1;
  v8 = &a1->__r_.__value_.__r.__words[2];
  std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::vector[abi:ne200100](&a1->__r_.__value_.__r.__words[2], 0x1EuLL);
  if (a1 != a2)
  {
    std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::__assign_with_size[abi:ne200100]<std::locale::facet **,std::locale::facet **>(v8, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
  }

  v10 = a1->__r_.__value_.__r.__words[2];
  data = a1[1].__r_.__value_.__l.__data_;
  if (data != v10)
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = *&v10[8 * v11];
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        v10 = a1->__r_.__value_.__r.__words[2];
        data = a1[1].__r_.__value_.__l.__data_;
      }

      v11 = v12++;
    }

    while (v11 < (data - v10) >> 3);
  }

  if (a4)
  {
    operator new();
  }

  if ((a4 & 2) != 0)
  {
    operator new();
  }

  if ((a4 & 8) != 0)
  {
    operator new();
  }

  if ((a4 & 0x10) != 0)
  {
    operator new();
  }

  if ((a4 & 0x20) != 0)
  {
    operator new();
  }

  if ((a4 & 4) != 0)
  {
    operator new();
  }

  return a1;
}

void sub_1922E2660(void *a1)
{
  MEMORY[0x193B0CA40](v2, 24);
  __cxa_begin_catch(a1);
  v4 = *(v1 + 16);
  if (*(v1 + 24) != v4)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = *(v4 + 8 * v5);
      if (v7)
      {
        if (!atomic_fetch_add(v7 + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(*v7 + 16))(v7);
        }
      }

      v5 = v6;
      v4 = *(v1 + 16);
      ++v6;
    }

    while (v5 < (*(v1 + 24) - v4) >> 3);
  }

  __cxa_rethrow();
}

void std::anonymous namespace::build_name(std::string::value_type *a1@<X0>, _BYTE *a2@<X1>, int a3@<W2>, std::string *a4@<X8>)
{
  v4 = a1;
  v6 = a1[23];
  if (v6 < 0)
  {
    if (*(a1 + 1) != 1)
    {
      goto LABEL_7;
    }

    v7 = *a1;
  }

  else
  {
    v7 = a1;
    if (v6 != 1)
    {
      goto LABEL_7;
    }
  }

  if (*v7 == 42)
  {
    goto LABEL_25;
  }

LABEL_7:
  v8 = a2[23];
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    if (v8 != 1)
    {
      goto LABEL_13;
    }

LABEL_12:
    if (*v9 != 42)
    {
      goto LABEL_13;
    }

LABEL_25:

    std::string::basic_string[abi:ne200100]<0>(a4, "*");
    return;
  }

  if (*(a2 + 1) == 1)
  {
    v9 = *a2;
    goto LABEL_12;
  }

LABEL_13:
  if (a3)
  {
    if (v6 >= 0)
    {
      v10 = a1[23];
    }

    else
    {
      v10 = *(a1 + 1);
    }

    v11 = *(a2 + 1);
    if (v8 >= 0)
    {
      v11 = a2[23];
    }

    if (v10 != v11)
    {
      goto LABEL_25;
    }

    if (v6 < 0)
    {
      a1 = *a1;
    }

    if (v8 < 0)
    {
      a2 = *a2;
    }

    if (memcmp(a1, a2, v10))
    {
      goto LABEL_25;
    }
  }

  if ((v6 & 0x80000000) != 0)
  {
    v12 = *v4;
    v13 = v4[1];

    std::string::__init_copy_ctor_external(a4, v12, v13);
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *v4;
    a4->__r_.__value_.__r.__words[2] = v4[2];
  }
}

std::string *std::locale::__imp::__imp(std::string *this, std::string *a2, const std::locale::__imp *a3, int a4)
{
  this->__r_.__value_.__r.__words[0] = &unk_1F06C1528;
  this->__r_.__value_.__l.__size_ = -1;
  v8 = &this->__r_.__value_.__r.__words[2];
  std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::vector[abi:ne200100](&this->__r_.__value_.__r.__words[2], 0x1EuLL);
  if (this != a2)
  {
    std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::__assign_with_size[abi:ne200100]<std::locale::facet **,std::locale::facet **>(v8, a2->__r_.__value_.__r.__words[2], a2[1].__r_.__value_.__l.__data_, (a2[1].__r_.__value_.__r.__words[0] - a2->__r_.__value_.__r.__words[2]) >> 3);
  }

  data = this[1].__r_.__value_.__l.__data_;
  v10 = this->__r_.__value_.__r.__words[2];
  if (data != v10)
  {
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = *(v10 + 8 * v11);
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        data = this[1].__r_.__value_.__l.__data_;
        v10 = *v8;
      }

      v11 = v12++;
    }

    while (v11 < &data[-v10] >> 3);
  }

  if (a4)
  {
    v14 = std::locale::id::__get(&std::collate<char>::id);
    v15 = *(a3 + 2);
    if (v14 >= (*(a3 + 3) - v15) >> 3)
    {
      goto LABEL_81;
    }

    v16 = *(v15 + 8 * v14);
    if (!v16)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v16, v14);
    v17 = std::locale::id::__get(&std::collate<wchar_t>::id);
    v18 = *(a3 + 2);
    if (v17 >= (*(a3 + 3) - v18) >> 3)
    {
      goto LABEL_81;
    }

    v19 = *(v18 + 8 * v17);
    if (!v19)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v19, v17);
  }

  if ((a4 & 2) != 0)
  {
    v20 = std::locale::id::__get(&std::ctype<char>::id);
    v21 = *(a3 + 2);
    if (v20 >= (*(a3 + 3) - v21) >> 3)
    {
      goto LABEL_81;
    }

    v22 = *(v21 + 8 * v20);
    if (!v22)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v22, v20);
    v23 = std::locale::id::__get(&std::ctype<wchar_t>::id);
    v24 = *(a3 + 2);
    if (v23 >= (*(a3 + 3) - v24) >> 3)
    {
      goto LABEL_81;
    }

    v25 = *(v24 + 8 * v23);
    if (!v25)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v25, v23);
    v26 = std::locale::id::__get(&std::codecvt<char,char,__mbstate_t>::id);
    v27 = *(a3 + 2);
    if (v26 >= (*(a3 + 3) - v27) >> 3)
    {
      goto LABEL_81;
    }

    v28 = *(v27 + 8 * v26);
    if (!v28)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v28, v26);
    v29 = std::locale::id::__get(&std::codecvt<char16_t,char,__mbstate_t>::id);
    v30 = *(a3 + 2);
    if (v29 >= (*(a3 + 3) - v30) >> 3)
    {
      goto LABEL_81;
    }

    v31 = *(v30 + 8 * v29);
    if (!v31)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v31, v29);
    v32 = std::locale::id::__get(&std::codecvt<char32_t,char,__mbstate_t>::id);
    v33 = *(a3 + 2);
    if (v32 >= (*(a3 + 3) - v33) >> 3)
    {
      goto LABEL_81;
    }

    v34 = *(v33 + 8 * v32);
    if (!v34)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v34, v32);
    v35 = std::locale::id::__get(&std::codecvt<char16_t,char8_t,__mbstate_t>::id);
    v36 = *(a3 + 2);
    if (v35 >= (*(a3 + 3) - v36) >> 3)
    {
      goto LABEL_81;
    }

    v37 = *(v36 + 8 * v35);
    if (!v37)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v37, v35);
    v38 = std::locale::id::__get(&std::codecvt<char32_t,char8_t,__mbstate_t>::id);
    v39 = *(a3 + 2);
    if (v38 >= (*(a3 + 3) - v39) >> 3)
    {
      goto LABEL_81;
    }

    v40 = *(v39 + 8 * v38);
    if (!v40)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v40, v38);
    v41 = std::locale::id::__get(&std::codecvt<wchar_t,char,__mbstate_t>::id);
    v42 = *(a3 + 2);
    if (v41 >= (*(a3 + 3) - v42) >> 3)
    {
      goto LABEL_81;
    }

    v43 = *(v42 + 8 * v41);
    if (!v43)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v43, v41);
  }

  if ((a4 & 8) != 0)
  {
    v44 = std::locale::id::__get(&std::moneypunct<char,false>::id);
    v45 = *(a3 + 2);
    if (v44 >= (*(a3 + 3) - v45) >> 3)
    {
      goto LABEL_81;
    }

    v46 = *(v45 + 8 * v44);
    if (!v46)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v46, v44);
    v47 = std::locale::id::__get(&std::moneypunct<char,true>::id);
    v48 = *(a3 + 2);
    if (v47 >= (*(a3 + 3) - v48) >> 3)
    {
      goto LABEL_81;
    }

    v49 = *(v48 + 8 * v47);
    if (!v49)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v49, v47);
    v50 = std::locale::id::__get(&std::moneypunct<wchar_t,false>::id);
    v51 = *(a3 + 2);
    if (v50 >= (*(a3 + 3) - v51) >> 3)
    {
      goto LABEL_81;
    }

    v52 = *(v51 + 8 * v50);
    if (!v52)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v52, v50);
    v53 = std::locale::id::__get(&std::moneypunct<wchar_t,true>::id);
    v54 = *(a3 + 2);
    if (v53 >= (*(a3 + 3) - v54) >> 3)
    {
      goto LABEL_81;
    }

    v55 = *(v54 + 8 * v53);
    if (!v55)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v55, v53);
    v56 = std::locale::id::__get(&std::money_get<char,std::istreambuf_iterator<char>>::id);
    v57 = *(a3 + 2);
    if (v56 >= (*(a3 + 3) - v57) >> 3)
    {
      goto LABEL_81;
    }

    v58 = *(v57 + 8 * v56);
    if (!v58)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v58, v56);
    v59 = std::locale::id::__get(&std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
    v60 = *(a3 + 2);
    if (v59 >= (*(a3 + 3) - v60) >> 3)
    {
      goto LABEL_81;
    }

    v61 = *(v60 + 8 * v59);
    if (!v61)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v61, v59);
    v62 = std::locale::id::__get(&std::money_put<char,std::ostreambuf_iterator<char>>::id);
    v63 = *(a3 + 2);
    if (v62 >= (*(a3 + 3) - v63) >> 3)
    {
      goto LABEL_81;
    }

    v64 = *(v63 + 8 * v62);
    if (!v64)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v64, v62);
    v65 = std::locale::id::__get(&std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
    v66 = *(a3 + 2);
    if (v65 >= (*(a3 + 3) - v66) >> 3)
    {
      goto LABEL_81;
    }

    v67 = *(v66 + 8 * v65);
    if (!v67)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v67, v65);
  }

  if ((a4 & 0x10) != 0)
  {
    v68 = std::locale::id::__get(&std::numpunct<char>::id);
    v69 = *(a3 + 2);
    if (v68 >= (*(a3 + 3) - v69) >> 3)
    {
      goto LABEL_81;
    }

    v70 = *(v69 + 8 * v68);
    if (!v70)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v70, v68);
    v71 = std::locale::id::__get(&std::numpunct<wchar_t>::id);
    v72 = *(a3 + 2);
    if (v71 >= (*(a3 + 3) - v72) >> 3)
    {
      goto LABEL_81;
    }

    v73 = *(v72 + 8 * v71);
    if (!v73)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v73, v71);
    v74 = std::locale::id::__get(&std::num_get<char,std::istreambuf_iterator<char>>::id);
    v75 = *(a3 + 2);
    if (v74 >= (*(a3 + 3) - v75) >> 3)
    {
      goto LABEL_81;
    }

    v76 = *(v75 + 8 * v74);
    if (!v76)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v76, v74);
    v77 = std::locale::id::__get(&std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
    v78 = *(a3 + 2);
    if (v77 >= (*(a3 + 3) - v78) >> 3)
    {
      goto LABEL_81;
    }

    v79 = *(v78 + 8 * v77);
    if (!v79)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v79, v77);
    v80 = std::locale::id::__get(&std::num_put<char,std::ostreambuf_iterator<char>>::id);
    v81 = *(a3 + 2);
    if (v80 >= (*(a3 + 3) - v81) >> 3)
    {
      goto LABEL_81;
    }

    v82 = *(v81 + 8 * v80);
    if (!v82)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v82, v80);
    v83 = std::locale::id::__get(&std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
    v84 = *(a3 + 2);
    if (v83 >= (*(a3 + 3) - v84) >> 3)
    {
      goto LABEL_81;
    }

    v85 = *(v84 + 8 * v83);
    if (!v85)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v85, v83);
  }

  if ((a4 & 0x20) != 0)
  {
    v86 = std::locale::id::__get(&std::time_get<char,std::istreambuf_iterator<char>>::id);
    v87 = *(a3 + 2);
    if (v86 >= (*(a3 + 3) - v87) >> 3)
    {
      goto LABEL_81;
    }

    v88 = *(v87 + 8 * v86);
    if (!v88)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v88, v86);
    v89 = std::locale::id::__get(&std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
    v90 = *(a3 + 2);
    if (v89 >= (*(a3 + 3) - v90) >> 3)
    {
      goto LABEL_81;
    }

    v91 = *(v90 + 8 * v89);
    if (!v91)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v91, v89);
    v92 = std::locale::id::__get(&std::time_put<char,std::ostreambuf_iterator<char>>::id);
    v93 = *(a3 + 2);
    if (v92 >= (*(a3 + 3) - v93) >> 3)
    {
      goto LABEL_81;
    }

    v94 = *(v93 + 8 * v92);
    if (!v94)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v94, v92);
    v95 = std::locale::id::__get(&std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
    v96 = *(a3 + 2);
    if (v95 >= (*(a3 + 3) - v96) >> 3)
    {
      goto LABEL_81;
    }

    v97 = *(v96 + 8 * v95);
    if (!v97)
    {
      goto LABEL_81;
    }

    std::locale::__imp::install(this, v97, v95);
  }

  if ((a4 & 4) != 0)
  {
    v98 = std::locale::id::__get(&std::messages<char>::id);
    v99 = *(a3 + 2);
    if (v98 < (*(a3 + 3) - v99) >> 3)
    {
      v100 = *(v99 + 8 * v98);
      if (v100)
      {
        std::locale::__imp::install(this, v100, v98);
        v101 = std::locale::id::__get(&std::messages<wchar_t>::id);
        v102 = *(a3 + 2);
        if (v101 < (*(a3 + 3) - v102) >> 3)
        {
          v103 = *(v102 + 8 * v101);
          if (v103)
          {
            std::locale::__imp::install(this, v103, v101);
            return this;
          }
        }
      }
    }

LABEL_81:
    std::__throw_bad_cast[abi:ne200100]();
  }

  return this;
}

std::locale::__imp *std::locale::__imp::__imp(std::locale::__imp *this, const std::locale::__imp *a2, std::locale::facet *a3, unint64_t a4)
{
  *this = &unk_1F06C1528;
  *(this + 1) = -1;
  v8 = (this + 16);
  v9 = (*(a2 + 3) - *(a2 + 2)) >> 3;
  if ((v9 + 1) > 0x1E)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 30;
  }

  std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::vector[abi:ne200100](this + 2, v10);
  std::string::basic_string[abi:ne200100]<0>(this + 288, "*");
  atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  if (this != a2)
  {
    std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::__assign_with_size[abi:ne200100]<std::locale::facet **,std::locale::facet **>(v8, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 3);
  }

  v12 = *(a2 + 2);
  v11 = *(a2 + 3);
  if (v11 != v12)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = *(*v8 + 8 * v13);
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        v12 = *(a2 + 2);
        v11 = *(a2 + 3);
      }

      v13 = v14++;
    }

    while (v13 < (v11 - v12) >> 3);
  }

  std::locale::__imp::install(this, a3, a4);
  if (a3 && !atomic_fetch_add(&a3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a3->__on_zero_shared)(a3);
  }

  return this;
}

void sub_1922E3180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__shared_count::~__shared_count(v2);
  _Unwind_Resume(a1);
}

atomic_ullong *std::locale::__imp::install(std::locale::__imp *this, std::locale::facet *a2, unint64_t a3)
{
  atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  v5 = *(this + 2);
  v6 = (this + 16);
  if (a3 >= (*(this + 3) - v5) >> 3)
  {
    std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::resize(this + 2, a3 + 1);
    v5 = *v6;
  }

  result = *(v5 + 8 * a3);
  if (result && !atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    result = (*(*result + 16))(result);
  }

  *(*v6 + 8 * a3) = a2;
  return result;
}

void sub_1922E3278(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::locale::__imp::__imp(v2, v1);
  }

  _Unwind_Resume(exception_object);
}

void std::locale::__imp::~__imp(std::__shared_count *this)
{
  this->__vftable = &unk_1F06C1528;
  v3 = this + 1;
  v2 = this[1].__vftable;
  if (this[1].__shared_owners_ != v2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(&v2->~__shared_count + v4);
      if (v6 && !atomic_fetch_add(v6 + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        (*(*v6 + 16))(v6);
      }

      v4 = v5;
      v2 = this[1].__vftable;
      ++v5;
    }

    while (v4 < (this[1].__shared_owners_ - v2) >> 3);
  }

  if (SHIBYTE(this[19].__vftable) < 0)
  {
    MEMORY[0x193B0CA40](this[18].__vftable, this[19].__vftable & 0x7FFFFFFFFFFFFFFFLL);
  }

  v7 = v3;
  std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::__destroy_vector::operator()[abi:ne200100](&v7);
  std::__shared_count::~__shared_count(this);
}

{
  std::locale::__imp::~__imp(this);

  JUMPOUT(0x193B0CA40);
}

void std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<std::locale::facet *,std::__sso_allocator<std::locale::facet *,30ul>>::__append(a1, a2 - v2);
  }
}

uint64_t std::locale::__imp::use_facet(std::locale::__imp *this, unint64_t a2)
{
  v2 = *(this + 2);
  if (a2 >= (*(this + 3) - v2) >> 3 || (result = *(v2 + 8 * a2)) == 0)
  {
    std::__throw_bad_cast[abi:ne200100]();
  }

  return result;
}

std::locale *std::locale::__global(void)
{
  {
    locale = std::locale::classic()->__locale_;
    std::locale::__global(void)::g = locale;
    if (locale != &std::locale::__imp::classic_locale_imp_)
    {
      atomic_fetch_add_explicit(locale + 1, 1uLL, memory_order_relaxed);
    }
  }

  return &std::locale::__global(void)::g;
}

uint64_t std::locale::__imp::acquire(uint64_t this)
{
  if (this != &std::locale::__imp::classic_locale_imp_)
  {
    atomic_fetch_add_explicit((this + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t std::locale::__imp::release(uint64_t this)
{
  if (this != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add((this + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    return (*(*this + 16))();
  }

  return this;
}

std::locale *__cdecl std::locale::locale(std::locale *this)
{
  v2 = std::locale::__global();
  locale = v2->__locale_;
  this->__locale_ = v2->__locale_;
  if (locale != &std::locale::__imp::classic_locale_imp_)
  {
    atomic_fetch_add_explicit(locale + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

std::locale *__cdecl std::locale::locale(std::locale *this, const std::locale *a2)
{
  locale = a2->__locale_;
  this->__locale_ = a2->__locale_;
  if (locale != &std::locale::__imp::classic_locale_imp_)
  {
    atomic_fetch_add_explicit(locale + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

{
  locale = a2->__locale_;
  this->__locale_ = a2->__locale_;
  if (locale != &std::locale::__imp::classic_locale_imp_)
  {
    atomic_fetch_add_explicit(locale + 1, 1uLL, memory_order_relaxed);
  }

  return this;
}

const std::locale *__cdecl std::locale::operator=(std::locale *this, const std::locale *a2)
{
  if (a2->__locale_ != &std::locale::__imp::classic_locale_imp_)
  {
    atomic_fetch_add_explicit(a2->__locale_ + 1, 1uLL, memory_order_relaxed);
  }

  locale = this->__locale_;
  if (this->__locale_ != &std::locale::__imp::classic_locale_imp_ && !atomic_fetch_add(locale + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*locale + 16))(locale);
  }

  this->__locale_ = a2->__locale_;
  return this;
}

std::locale *__cdecl std::locale::locale(std::locale *this, const char *a2)
{
  if (a2)
  {
    operator new();
  }

  std::__throw_runtime_error("locale constructed with null");
  return result;
}

void sub_1922E3754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    std::stoi(&a10);
  }

  MEMORY[0x193B0CA40](v15, 312);
  _Unwind_Resume(a1);
}

std::locale *__cdecl std::locale::locale(std::locale *this, const std::locale *a2, const char *a3, std::locale::category a4)
{
  if (a3)
  {
    operator new();
  }

  std::__throw_runtime_error("locale constructed with null");
  return result;
}

void sub_1922E38CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    std::stoi(&a10);
  }

  MEMORY[0x193B0CA40](v15, 312);
  _Unwind_Resume(a1);
}

std::string *__cdecl std::locale::name(std::string *__return_ptr retstr, std::string *this)
{
  v2 = this->__r_.__value_.__r.__words[0];
  if (*(this->__r_.__value_.__r.__words[0] + 311) < 0)
  {
    std::string::__init_copy_ctor_external(retstr, *(v2 + 288), *(v2 + 296));
  }

  else
  {
    v3 = *(v2 + 288);
    retstr->__r_.__value_.__r.__words[2] = *(v2 + 304);
    *&retstr->__r_.__value_.__l.__data_ = v3;
  }

  return this;
}

void std::locale::__install_ctor(std::locale *this, const std::locale *a2, std::locale::facet *a3, uint64_t a4)
{
  if (a3)
  {
    operator new();
  }

  locale = a2->__locale_;
  this->__locale_ = a2->__locale_;
  if (locale != &std::locale::__imp::classic_locale_imp_)
  {
    atomic_fetch_add_explicit(locale + 1, 1uLL, memory_order_relaxed);
  }
}

std::locale std::locale::global(const std::locale *a1)
{
  v3 = v1;
  v4 = std::locale::__global();
  v5 = v4;
  v6.__locale_ = v4->__locale_;
  *v3 = v4->__locale_;
  if (v6.__locale_ != &std::locale::__imp::classic_locale_imp_)
  {
    atomic_fetch_add_explicit(v6.__locale_ + 1, 1uLL, memory_order_relaxed);
  }

  v7 = std::locale::operator=(v4, a1);
  locale = v5->__locale_;
  if (*(v5->__locale_ + 311) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *(locale + 36), *(locale + 37));
  }

  else
  {
    v12 = *(locale + 12);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v12.__r_.__value_.__l.__size_ == 1)
    {
      v9 = *v12.__r_.__value_.__l.__data_;
      v7 = MEMORY[0x193B0CA40]();
      if (v9 == 42)
      {
        return v7;
      }
    }

    else
    {
      MEMORY[0x193B0CA40](v12.__r_.__value_.__r.__words[0], v12.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  else if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) == 1 && v12.__r_.__value_.__s.__data_[0] == 42)
  {
    return v7;
  }

  v10 = v5->__locale_;
  if (*(v5->__locale_ + 311) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *(v10 + 36), *(v10 + 37));
  }

  else
  {
    v12 = *(v10 + 12);
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v12;
  }

  else
  {
    v11 = v12.__r_.__value_.__r.__words[0];
  }

  v7 = setlocale(0, v11);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    return MEMORY[0x193B0CA40](v12.__r_.__value_.__r.__words[0], v12.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL);
  }

  return v7;
}

void sub_1922E3C58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v14 != v15 && !atomic_fetch_add(v14 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v14 + 16))(v14);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::locale::has_facet(const std::locale *this, std::locale::id *a2)
{
  locale = this->__locale_;
  v3 = std::locale::id::__get(a2);
  v4 = *(locale + 2);
  return v3 < (*(locale + 3) - v4) >> 3 && *(v4 + 8 * v3) != 0;
}

uint64_t std::locale::id::__get(std::locale::id *this)
{
  v3 = this;
  if (atomic_load_explicit(this, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&this->__flag_.__state_, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<std::locale::id::__get(void)::$_0 &&>>);
  }

  return this->__id_ - 1;
}

const std::locale::facet *__cdecl std::locale::use_facet(const std::locale *this, std::locale::id *a2)
{
  locale = this->__locale_;
  v3 = std::locale::id::__get(a2);
  v4 = *(locale + 2);
  if (v3 >= (*(locale + 3) - v4) >> 3 || (result = *(v4 + 8 * v3)) == 0)
  {
    std::__throw_bad_cast[abi:ne200100]();
  }

  return result;
}

BOOL std::locale::operator==(const std::locale *this, const std::locale *a2)
{
  locale = this->__locale_;
  v3 = a2->__locale_;
  if (this->__locale_ == a2->__locale_)
  {
    return 1;
  }

  v4 = (locale + 288);
  v5 = *(locale + 311);
  if ((v5 & 0x8000000000000000) != 0)
  {
    if (*(locale + 37) != 1)
    {
      goto LABEL_9;
    }

    v6 = *v4;
  }

  else
  {
    v6 = locale + 288;
    if (v5 != 1)
    {
      goto LABEL_9;
    }
  }

  if (*v6 == 42)
  {
    return 0;
  }

LABEL_9:
  v8 = *(locale + 37);
  if ((v5 & 0x80000000) == 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v3 + 311);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v3 + 37);
  }

  if (v9 != v10)
  {
    return 0;
  }

  v12 = v3 + 288;
  if ((v5 & 0x80000000) == 0)
  {
    v13 = v4;
  }

  else
  {
    v13 = *v4;
  }

  v14 = *(v3 + 36);
  if (v11 >= 0)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  return memcmp(v13, v15, v9) == 0;
}

void std::locale::facet::~facet(std::locale::facet *this)
{
  std::__shared_count::~__shared_count(this);

  JUMPOUT(0x193B0CA40);
}