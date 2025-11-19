void sub_40ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a12 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a12 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a12 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_int<long long>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, unint64_t *a8)
{
  v60 = a2;
  v61 = a3;
  v59[0] = a4;
  v59[1] = a5;
  v10 = std::__use_cache<std::__numpunct_cache<wchar_t>>::operator()(&v58, (a6 + 208));
  v11 = *(a6 + 24) & 0x4A;
  if (v11 == 8)
  {
    v12 = 16;
  }

  else
  {
    v12 = 10;
  }

  if (v11 == 64)
  {
    v13 = 8;
  }

  else
  {
    v13 = v12;
  }

  v14 = std::istreambuf_iterator<wchar_t>::_M_get(&v60);
  v15 = std::istreambuf_iterator<wchar_t>::_M_get(v59);
  v16 = 0;
  v18 = v14 == -1 || v15 == -1;
  v52 = a8;
  if ((v14 & v15) == 0xFFFFFFFF)
  {
    v54 = 0;
    goto LABEL_63;
  }

  v54 = 0;
  if (!v18)
  {
    goto LABEL_63;
  }

  v19 = std::istreambuf_iterator<wchar_t>::_M_get(&v60);
  v16 = v19;
  v54 = v19 == *(v10 + 224);
  if (v19 != *(v10 + 224) && v19 != *(v10 + 228) || *(v10 + 32) == 1 && v19 == *(v10 + 76) || v19 == *(v10 + 72))
  {
    goto LABEL_26;
  }

  if (v60)
  {
    v20 = v60[2];
    if (v20 >= v60[3])
    {
      std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v60);
    }

    else
    {
      v60[2] = v20 + 4;
    }

    LODWORD(v61) = -1;
  }

  v21 = std::istreambuf_iterator<wchar_t>::_M_get(&v60) == -1;
  if (v21 == (std::istreambuf_iterator<wchar_t>::_M_get(v59) == -1))
  {
LABEL_63:
    v23 = 0;
    v22 = 0;
    v55 = (v10 + 76);
    v31 = 1;
    goto LABEL_68;
  }

  v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v60);
LABEL_26:
  v22 = 0;
  v23 = 0;
  v55 = (v10 + 76);
  while (1)
  {
    if (*(v10 + 32) == 1 && v16 == *v55 || v16 == *(v10 + 72))
    {
LABEL_64:
      v31 = 0;
      goto LABEL_68;
    }

    if (v16 == *(v10 + 240))
    {
      v24 = v22 & (v13 != 10);
    }

    else
    {
      v24 = 1;
    }

    if ((v24 & 1) == 0)
    {
      if (v11)
      {
        v25 = v13;
      }

      else
      {
        v25 = 8;
      }

      if (v25 == 8)
      {
        v26 = 0;
      }

      else
      {
        v26 = v23 + 1;
      }

      goto LABEL_54;
    }

    if ((v22 & 1) == 0)
    {
      break;
    }

    if (v16 == *(v10 + 232))
    {
      v25 = 16;
      v26 = 0;
      if (v11 && v13 != 16)
      {
        v31 = 0;
        v22 = 1;
        goto LABEL_68;
      }
    }

    else
    {
      if (v11)
      {
        v27 = v13 == 16;
      }

      else
      {
        v27 = 1;
      }

      v28 = v27;
      v22 = 1;
      if (v16 != *(v10 + 236) || (v28 & 1) == 0)
      {
        goto LABEL_64;
      }

      v26 = 0;
      v25 = 16;
    }

LABEL_54:
    if (v60)
    {
      v29 = v60[2];
      if (v29 >= v60[3])
      {
        std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v60);
      }

      else
      {
        v60[2] = v29 + 4;
      }

      LODWORD(v61) = -1;
    }

    v30 = std::istreambuf_iterator<wchar_t>::_M_get(&v60) == -1;
    if (((v30 ^ (std::istreambuf_iterator<wchar_t>::_M_get(v59) == -1)) & 1) == 0)
    {
      v22 = v24 ^ 1;
      v31 = 1;
      goto LABEL_66;
    }

    v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v60);
    v22 = 1;
    v13 = v25;
    v23 = v26;
    if (v24)
    {
      v31 = 0;
      v22 = 0;
LABEL_66:
      v23 = v26;
      v13 = v25;
      goto LABEL_68;
    }
  }

  v31 = 0;
  v22 = 0;
LABEL_68:
  if (v13 == 16)
  {
    v32 = 22;
  }

  else
  {
    v32 = v13;
  }

  v57 = &unk_60620;
  if (*(v10 + 32) == 1)
  {
    std::string::reserve(&v57, 0x20uLL);
  }

  if (v54)
  {
    v33 = 0x8000000000000000;
  }

  else
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v34 = v13;
  v56 = v33;
  v35 = v33 / v13;
  if (*(v10 + 328))
  {
    if ((v31 & 1) == 0)
    {
      v36 = 0;
      v37 = 0;
      v38 = v10 + 240;
      while (1)
      {
        if (*(v10 + 32) == 1 && v16 == *v55)
        {
          if (!v23)
          {
            v44 = 0;
            v37 = 1;
            goto LABEL_121;
          }

          std::string::push_back(&v57, v23);
          v23 = 0;
        }

        else
        {
          if (v16 == *(v10 + 72))
          {
            goto LABEL_120;
          }

          v39 = wmemchr((v10 + 240), v16, v32);
          if (!v39)
          {
            goto LABEL_120;
          }

          if (v36 <= v35)
          {
            v40 = v36 * v34;
            v41 = ((v39 - v38) << 30) - 0x600000000;
            if (((v39 - v38) >> 2) <= 15)
            {
              v41 = (v39 - v38) << 30;
            }

            v37 |= v40 > v56 - (v41 >> 32);
            v36 = v40 + (v41 >> 32);
            ++v23;
          }

          else
          {
            v37 = 1;
          }
        }

        if (v60)
        {
          v42 = v60[2];
          if (v42 >= v60[3])
          {
            (*(*v60 + 80))();
          }

          else
          {
            v60[2] = v42 + 4;
          }

          LODWORD(v61) = -1;
        }

        v43 = std::istreambuf_iterator<wchar_t>::_M_get(&v60);
        if ((v43 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v59) == -1))
        {
          goto LABEL_99;
        }

        v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v60);
      }
    }
  }

  else if ((v31 & 1) == 0)
  {
    v36 = 0;
    v37 = 0;
    while (1)
    {
      if (v32 > 0xA)
      {
        v45 = v16 - 48;
        if ((v16 - 48) >= 0xA)
        {
          if ((v16 - 97) > 5)
          {
            if ((v16 - 71) < 0xFFFFFFFA)
            {
              goto LABEL_120;
            }

            v45 = v16 - 55;
          }

          else
          {
            v45 = v16 - 87;
          }
        }
      }

      else
      {
        v45 = v16 - 48;
        if (v16 < 48 || (v32 | 0x30) <= v16)
        {
LABEL_120:
          v44 = 0;
          goto LABEL_121;
        }
      }

      if (v36 <= v35)
      {
        v37 |= v36 * v34 > v56 - v45;
        v36 = v36 * v34 + v45;
        ++v23;
      }

      else
      {
        v37 = 1;
      }

      if (v60)
      {
        v46 = v60[2];
        if (v46 >= v60[3])
        {
          (*(*v60 + 80))();
        }

        else
        {
          v60[2] = v46 + 4;
        }

        LODWORD(v61) = -1;
      }

      v47 = std::istreambuf_iterator<wchar_t>::_M_get(&v60);
      if ((v47 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v59) == -1))
      {
        goto LABEL_99;
      }

      v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v60);
    }
  }

  v37 = 0;
  v36 = 0;
LABEL_99:
  v44 = 1;
LABEL_121:
  if (*(v57 - 3))
  {
    std::string::push_back(&v57, v23);
    if ((std::__verify_grouping(*(v10 + 16), *(v10 + 24), &v57) & 1) == 0)
    {
      *a7 |= 4u;
    }
  }

  if ((v37 & 1) == 0 && (v22 & 1 | (v23 != 0) || *(v57 - 3)))
  {
    if (v54)
    {
      v48 = -v36;
    }

    else
    {
      v48 = v36;
    }

    *v52 = v48;
  }

  else
  {
    *a7 |= 4u;
  }

  if (v44)
  {
    *a7 |= 2u;
  }

  v49 = v60;
  v50 = v57 - 24;
  if (v57 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v57 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v50);
  }

  return v49;
}

void sub_415E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((a14 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a14 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a14 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_int<unsigned long long>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, unint64_t *a8)
{
  v57 = a2;
  v58 = a3;
  v56[0] = a4;
  v56[1] = a5;
  v10 = std::__use_cache<std::__numpunct_cache<wchar_t>>::operator()(&v55, (a6 + 208));
  v11 = *(a6 + 24) & 0x4A;
  if (v11 == 8)
  {
    v12 = 16;
  }

  else
  {
    v12 = 10;
  }

  if (v11 == 64)
  {
    v13 = 8;
  }

  else
  {
    v13 = v12;
  }

  v14 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
  v15 = std::istreambuf_iterator<wchar_t>::_M_get(v56);
  v16 = 0;
  v18 = v14 == -1 || v15 == -1;
  v51 = a8;
  if ((v14 & v15) == 0xFFFFFFFF || !v18)
  {
    goto LABEL_61;
  }

  v19 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
  v16 = v19;
  if (v19 != *(v10 + 228) || *(v10 + 32) == 1 && v19 == *(v10 + 76) || v19 == *(v10 + 72))
  {
    goto LABEL_25;
  }

  if (v57)
  {
    v20 = v57[2];
    if (v20 >= v57[3])
    {
      std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v57);
    }

    else
    {
      v57[2] = v20 + 4;
    }

    LODWORD(v58) = -1;
  }

  v21 = std::istreambuf_iterator<wchar_t>::_M_get(&v57) == -1;
  if (v21 == (std::istreambuf_iterator<wchar_t>::_M_get(v56) == -1))
  {
LABEL_61:
    v23 = 0;
    v22 = 0;
    v53 = (v10 + 76);
    v31 = 1;
    goto LABEL_66;
  }

  v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
LABEL_25:
  v22 = 0;
  v23 = 0;
  v53 = (v10 + 76);
  while (1)
  {
    if (*(v10 + 32) == 1 && v16 == *v53 || v16 == *(v10 + 72))
    {
LABEL_62:
      v31 = 0;
      goto LABEL_66;
    }

    if (v16 == *(v10 + 240))
    {
      v24 = v22 & (v13 != 10);
    }

    else
    {
      v24 = 1;
    }

    if ((v24 & 1) == 0)
    {
      if (v11)
      {
        v25 = v13;
      }

      else
      {
        v25 = 8;
      }

      if (v25 == 8)
      {
        v26 = 0;
      }

      else
      {
        v26 = v23 + 1;
      }

      goto LABEL_53;
    }

    if ((v22 & 1) == 0)
    {
      break;
    }

    if (v16 == *(v10 + 232))
    {
      v25 = 16;
      v26 = 0;
      if (v11 && v13 != 16)
      {
        v31 = 0;
        v22 = 1;
        goto LABEL_66;
      }
    }

    else
    {
      if (v11)
      {
        v27 = v13 == 16;
      }

      else
      {
        v27 = 1;
      }

      v28 = v27;
      v22 = 1;
      if (v16 != *(v10 + 236) || (v28 & 1) == 0)
      {
        goto LABEL_62;
      }

      v26 = 0;
      v25 = 16;
    }

LABEL_53:
    if (v57)
    {
      v29 = v57[2];
      if (v29 >= v57[3])
      {
        std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v57);
      }

      else
      {
        v57[2] = v29 + 4;
      }

      LODWORD(v58) = -1;
    }

    v30 = std::istreambuf_iterator<wchar_t>::_M_get(&v57) == -1;
    if (((v30 ^ (std::istreambuf_iterator<wchar_t>::_M_get(v56) == -1)) & 1) == 0)
    {
      v22 = v24 ^ 1;
      v31 = 1;
      goto LABEL_64;
    }

    v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
    v22 = 1;
    v13 = v25;
    v23 = v26;
    if (v24)
    {
      v31 = 0;
      v22 = 0;
LABEL_64:
      v23 = v26;
      v13 = v25;
      goto LABEL_66;
    }
  }

  v31 = 0;
  v22 = 0;
LABEL_66:
  if (v13 == 16)
  {
    v32 = 22;
  }

  else
  {
    v32 = v13;
  }

  v54 = &unk_60620;
  if (*(v10 + 32) == 1)
  {
    std::string::reserve(&v54, 0x20uLL);
  }

  v33 = 0xFFFFFFFFFFFFFFFFLL / v13;
  if (*(v10 + 328))
  {
    if ((v31 & 1) == 0)
    {
      v34 = 0;
      v35 = 0;
      v36 = v10 + 240;
      while (1)
      {
        if (*(v10 + 32) == 1 && v16 == *v53)
        {
          if (!v23)
          {
            v43 = 0;
            v35 = 1;
            goto LABEL_122;
          }

          std::string::push_back(&v54, v23);
          v23 = 0;
        }

        else
        {
          if (v16 == *(v10 + 72))
          {
            goto LABEL_121;
          }

          v37 = wmemchr((v10 + 240), v16, v32);
          if (!v37)
          {
            goto LABEL_121;
          }

          if (v34 <= v33)
          {
            v38 = v34 * v13;
            v39 = ((v37 - v36) << 30) - 0x600000000;
            if (((v37 - v36) >> 2) <= 15)
            {
              v39 = (v37 - v36) << 30;
            }

            v40 = __CFADD__(v38, v39 >> 32);
            v35 |= v40;
            v34 = v38 + (v39 >> 32);
            ++v23;
          }

          else
          {
            v35 = 1;
          }
        }

        if (v57)
        {
          v41 = v57[2];
          if (v41 >= v57[3])
          {
            (*(*v57 + 80))();
          }

          else
          {
            v57[2] = v41 + 4;
          }

          LODWORD(v58) = -1;
        }

        v42 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
        if ((v42 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v56) == -1))
        {
          goto LABEL_97;
        }

        v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
      }
    }
  }

  else if ((v31 & 1) == 0)
  {
    v34 = 0;
    v35 = 0;
    while (1)
    {
      if (v32 > 0xA)
      {
        v44 = v16 - 48;
        if ((v16 - 48) >= 0xA)
        {
          if ((v16 - 97) > 5)
          {
            if ((v16 - 71) < 0xFFFFFFFA)
            {
              goto LABEL_121;
            }

            v44 = v16 - 55;
          }

          else
          {
            v44 = v16 - 87;
          }
        }
      }

      else
      {
        v44 = v16 - 48;
        if (v16 < 48 || (v32 | 0x30) <= v16)
        {
LABEL_121:
          v43 = 0;
          goto LABEL_122;
        }
      }

      if (v34 <= v33)
      {
        v45 = __CFADD__(v34 * v13, v44);
        v35 |= v45;
        v34 = v34 * v13 + v44;
        ++v23;
      }

      else
      {
        v35 = 1;
      }

      if (v57)
      {
        v46 = v57[2];
        if (v46 >= v57[3])
        {
          (*(*v57 + 80))();
        }

        else
        {
          v57[2] = v46 + 4;
        }

        LODWORD(v58) = -1;
      }

      v47 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
      if ((v47 == -1) == (std::istreambuf_iterator<wchar_t>::_M_get(v56) == -1))
      {
        goto LABEL_97;
      }

      v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v57);
    }
  }

  v35 = 0;
  v34 = 0;
LABEL_97:
  v43 = 1;
LABEL_122:
  if (*(v54 - 3))
  {
    std::string::push_back(&v54, v23);
    if ((std::__verify_grouping(*(v10 + 16), *(v10 + 24), &v54) & 1) == 0)
    {
      *a7 |= 4u;
    }
  }

  if ((v35 & 1) == 0 && (v22 & 1 | (v23 != 0) || *(v54 - 3)))
  {
    *v51 = v34;
    if (!v43)
    {
      goto LABEL_128;
    }

LABEL_127:
    *a7 |= 2u;
  }

  else
  {
    *a7 |= 4u;
    if (v43)
    {
      goto LABEL_127;
    }
  }

LABEL_128:
  v48 = v57;
  v49 = v54 - 24;
  if (v54 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v54 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v49);
  }

  return v48;
}

void sub_41CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a12 - 24) != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((a12 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a12 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, float *a8)
{
  v23 = &unk_60620;
  std::string::reserve(&v23, 0x20uLL);
  v16 = std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(a1, a2, a3, a4, a5, a6, a7, &v23);
  v17 = v23;
  std::locale::facet::_S_get_c_locale(v16, v18, v19, v20);
  std::__convert_to_v<float>(v17, a8, a7);
  v21 = (v23 - 24);
  if (v23 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v23 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v21);
  }

  return v16;
}

void sub_41E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10 - 24 != v10 && atomic_fetch_add((a10 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a10 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, double *a8)
{
  v23 = &unk_60620;
  std::string::reserve(&v23, 0x20uLL);
  v16 = std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(a1, a2, a3, a4, a5, a6, a7, &v23);
  v17 = v23;
  std::locale::facet::_S_get_c_locale(v16, v18, v19, v20);
  std::__convert_to_v<double>(v17, a8, a7);
  v21 = (v23 - 24);
  if (v23 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v23 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v21);
  }

  return v16;
}

{
  v23 = &unk_60620;
  std::string::reserve(&v23, 0x20uLL);
  v16 = std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(a1, a2, a3, a4, a5, a6, a7, &v23);
  v17 = v23;
  std::locale::facet::_S_get_c_locale(v16, v18, v19, v20);
  std::__convert_to_v<long double>(v17, a8, a7);
  v21 = (v23 - 24);
  if (v23 - 24 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add(v23 - 2, 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v21);
  }

  return v16;
}

void sub_41F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10 - 24 != v10 && atomic_fetch_add((a10 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a10 - 24));
  }

  _Unwind_Resume(exception_object);
}

void sub_4209C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10 - 24 != v10 && atomic_fetch_add((a10 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy((a10 - 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, void *a8)
{
  v11 = *(a6 + 24);
  *(a6 + 24) = v11 & 0xFFFFFFB5 | 8;
  result = std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_int<unsigned long>(a1, a2, a3, a4, a5, a6, a7, &v13);
  *(a6 + 24) = v11;
  if ((*a7 & 4) == 0)
  {
    *a8 = v13;
  }

  return result;
}

uint64_t std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::num_put(uint64_t result, uint64_t a2)
{
  *(result + 8) = a2 != 0;
  *result = off_5F310;
  return result;
}

{
  *(result + 8) = a2 != 0;
  *result = off_5F310;
  return result;
}

uint64_t std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::put(uint64_t a1)
{
  return (*(*a1 + 16))(a1);
}

{
  return (*(*a1 + 24))(a1);
}

{
  return (*(*a1 + 32))(a1);
}

{
  return (*(*a1 + 40))(a1);
}

{
  return (*(*a1 + 48))(a1);
}

{
  return (*(*a1 + 56))(a1);
}

{
  return (*(*a1 + 64))(a1);
}

{
  return (*(*a1 + 72))(a1);
}

__int32 *std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_group_float(uint64_t a1, char *a2, uint64_t a3, int a4, const __int32 *a5, char *a6, int *a7, int *a8)
{
  v11 = (a5 - a7) >> 2;
  v12 = *a8;
  if (a5)
  {
    v12 = (a5 - a7) >> 2;
  }

  result = std::__add_grouping<wchar_t>(a6, a4, a2, a3, a7, &a7[v12]);
  v14 = (result - a6) >> 2;
  if (a5)
  {
    result = wmemcpy(result, a5, *a8 - v11);
    LODWORD(v14) = v14 - v11 + *a8;
  }

  *a8 = v14;
  return result;
}

char *std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_group_int(uint64_t a1, char *a2, uint64_t a3, int a4, uint64_t a5, char *a6, int *a7, int *a8)
{
  result = std::__add_grouping<wchar_t>(a6, a4, a2, a3, a7, &a7[*a8]);
  *a8 = (result - a6) >> 2;
  return result;
}

__int32 *std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_pad(int a1, __int32 a2, uint64_t a3, uint64_t a4, __int32 *a5, __int32 *a6, int *a7)
{
  v8 = a3;
  result = std::__pad<wchar_t,std::char_traits<wchar_t>>::_S_pad(a4, a2, a5, a6, a3, *a7, 1);
  *a7 = v8;
  return result;
}

__int32 *std::__pad<wchar_t,std::char_traits<wchar_t>>::_S_pad(uint64_t a1, __int32 a2, __int32 *a3, __int32 *a4, uint64_t a5, int64_t a6, int a7)
{
  v9 = a3;
  v11 = a5 - a6;
  v12 = *(a1 + 24) & 0xB0;
  if (v12 != 16)
  {
    if (v12 == 32)
    {
      wmemcpy(a3, a4, a6);

      return wmemset(&v9[a6], a2, v11);
    }

    goto LABEL_17;
  }

  if (!a7)
  {
    goto LABEL_17;
  }

  v14 = std::use_facet<std::ctype<wchar_t>>(a1 + 208);
  v15 = (*(*v14 + 80))(v14, 45) == *a4 || (*(*v14 + 80))(v14, 43) == *a4;
  v16 = (*(*v14 + 80))(v14, 48);
  if (a6 < 2 || v16 != *a4 || (*(*v14 + 80))(v14, 120) != a4[1] && (*(*v14 + 80))(v14, 88) != a4[1])
  {
    if (v15)
    {
      *v9++ = *a4;
      v17 = 1;
      goto LABEL_18;
    }

LABEL_17:
    v17 = 0;
    goto LABEL_18;
  }

  *v9 = *a4;
  v9[1] = a4[1];
  v9 += 2;
  v17 = 2;
LABEL_18:
  wmemset(v9, a2, v11);

  return wmemcpy(&v9[v11], &a4[v17], a6 - v17);
}

void std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::~num_put(std::locale::facet *a1)
{
  std::locale::facet::~facet(a1);

  operator delete(v1);
}

uint64_t std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __int32 a5, int a6)
{
  if (*(a4 + 24))
  {
    v11 = std::__use_cache<std::__numpunct_cache<wchar_t>>::operator()(&v22 + 7, (a4 + 208));
    v12 = a6 == 0;
    v13 = 56;
    if (a6)
    {
      v13 = 40;
    }

    v14 = *(v11 + v13);
    v15 = 64;
    if (!v12)
    {
      v15 = 48;
    }

    v16 = *(v11 + v15);
    v17 = *(a4 + 16);
    if (v17 > v16)
    {
      off_5C300(v11);
      v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v19, v18);
      std::__pad<wchar_t,std::char_traits<wchar_t>>::_S_pad(a4, a5, v19, v14, v17, v16, 1);
      LODWORD(v16) = v17;
      v14 = v19;
    }

    *(a4 + 16) = 0;
    if ((a3 & 1) == 0)
    {
      (*(*a2 + 96))(a2, v14, v16);
    }
  }

  else
  {
    std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_insert_int<long>();
    return v21;
  }

  return a2;
}

void std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put()
{
  std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_insert_int<unsigned long>();
}

{
  std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_insert_int<long long>();
}

{
  std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_insert_int<unsigned long long>();
}

{
  std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_insert_int<long>();
}

uint64_t std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  return std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_insert_float<double>(a1, a2, a3, a4, a5);
}

{
  return std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_insert_float<long double>(a1, a2, a3, a4, a5);
}

unint64_t std::__int_to_char<wchar_t,unsigned long>(uint64_t a1, unint64_t a2, uint64_t a3, __int16 a4, int a5)
{
  if (a5)
  {
    v5 = a1;
    do
    {
      *(v5 - 4) = *(a3 + 16 + 4 * (a2 % 0xA));
      v5 -= 4;
      v6 = a2 >= 0xA;
      a2 /= 0xAuLL;
    }

    while (v6);
  }

  else if ((a4 & 0x4A) == 0x40)
  {
    v5 = a1;
    do
    {
      *(v5 - 4) = *(a3 + 16 + 4 * (a2 & 7));
      v5 -= 4;
      v6 = a2 >= 8;
      a2 >>= 3;
    }

    while (v6);
  }

  else
  {
    v8 = 80;
    if ((a4 & 0x4000) == 0)
    {
      v8 = 16;
    }

    v9 = a3 + v8;
    v5 = a1;
    do
    {
      *(v5 - 4) = *(v9 + 4 * (a2 & 0xF));
      v5 -= 4;
      v10 = a2 > 0xF;
      a2 >>= 4;
    }

    while (v10);
  }

  return (a1 - v5) >> 2;
}

uint64_t std::__timepunct<wchar_t>::__timepunct(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5F370;
  *(a1 + 16) = 0;
  *(a1 + 32) = std::locale::facet::_S_get_c_name(a1);
  std::__timepunct<wchar_t>::_M_initialize_timepunct(a1);
  return a1;
}

uint64_t std::__timepunct<wchar_t>::__timepunct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a3 != 0;
  *a1 = off_5F370;
  *(a1 + 16) = a2;
  *(a1 + 32) = std::locale::facet::_S_get_c_name(a1);
  std::__timepunct<wchar_t>::_M_initialize_timepunct(a1);
  return a1;
}

uint64_t std::__timepunct<wchar_t>::__timepunct(uint64_t a1, int a2, char *__s, uint64_t a4)
{
  *(a1 + 8) = a4 != 0;
  *a1 = off_5F370;
  *(a1 + 16) = 0;
  v6 = strlen(__s);
  v7 = operator new[](v6 + 1);
  memcpy(v7, __s, v6 + 1);
  *(a1 + 32) = v7;
  std::__timepunct<wchar_t>::_M_initialize_timepunct(a1);
  return a1;
}

void sub_42BAC(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 + 32);
  if (v2)
  {
    operator delete[](v2);
  }

  __cxa_rethrow();
}

void sub_42BC4(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  std::locale::facet::~facet(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__timepunct<wchar_t>::_M_date_formats(uint64_t result, void *a2)
{
  *a2 = *(*(result + 16) + 16);
  a2[1] = *(*(result + 16) + 24);
  return result;
}

uint64_t std::__timepunct<wchar_t>::_M_time_formats(uint64_t result, void *a2)
{
  *a2 = *(*(result + 16) + 32);
  a2[1] = *(*(result + 16) + 40);
  return result;
}

uint64_t std::__timepunct<wchar_t>::_M_date_time_formats(uint64_t result, void *a2)
{
  *a2 = *(*(result + 16) + 48);
  a2[1] = *(*(result + 16) + 56);
  return result;
}

uint64_t std::__timepunct<wchar_t>::_M_am_pm(uint64_t result, void *a2)
{
  *a2 = *(*(result + 16) + 64);
  a2[1] = *(*(result + 16) + 72);
  return result;
}

uint64_t std::__timepunct<wchar_t>::_M_days(uint64_t result, void *a2)
{
  *a2 = *(*(result + 16) + 88);
  a2[1] = *(*(result + 16) + 96);
  a2[2] = *(*(result + 16) + 104);
  a2[3] = *(*(result + 16) + 112);
  a2[4] = *(*(result + 16) + 120);
  a2[5] = *(*(result + 16) + 128);
  a2[6] = *(*(result + 16) + 136);
  return result;
}

uint64_t std::__timepunct<wchar_t>::_M_days_abbreviated(uint64_t result, void *a2)
{
  *a2 = *(*(result + 16) + 144);
  a2[1] = *(*(result + 16) + 152);
  a2[2] = *(*(result + 16) + 160);
  a2[3] = *(*(result + 16) + 168);
  a2[4] = *(*(result + 16) + 176);
  a2[5] = *(*(result + 16) + 184);
  a2[6] = *(*(result + 16) + 192);
  return result;
}

uint64_t std::__timepunct<wchar_t>::_M_months(uint64_t result, void *a2)
{
  *a2 = *(*(result + 16) + 200);
  a2[1] = *(*(result + 16) + 208);
  a2[2] = *(*(result + 16) + 216);
  a2[3] = *(*(result + 16) + 224);
  a2[4] = *(*(result + 16) + 232);
  a2[5] = *(*(result + 16) + 240);
  a2[6] = *(*(result + 16) + 248);
  a2[7] = *(*(result + 16) + 256);
  a2[8] = *(*(result + 16) + 264);
  a2[9] = *(*(result + 16) + 272);
  a2[10] = *(*(result + 16) + 280);
  a2[11] = *(*(result + 16) + 288);
  return result;
}

uint64_t std::__timepunct<wchar_t>::_M_months_abbreviated(uint64_t result, void *a2)
{
  *a2 = *(*(result + 16) + 296);
  a2[1] = *(*(result + 16) + 304);
  a2[2] = *(*(result + 16) + 312);
  a2[3] = *(*(result + 16) + 320);
  a2[4] = *(*(result + 16) + 328);
  a2[5] = *(*(result + 16) + 336);
  a2[6] = *(*(result + 16) + 344);
  a2[7] = *(*(result + 16) + 352);
  a2[8] = *(*(result + 16) + 360);
  a2[9] = *(*(result + 16) + 368);
  a2[10] = *(*(result + 16) + 376);
  a2[11] = *(*(result + 16) + 384);
  return result;
}

void std::__timepunct<wchar_t>::~__timepunct(std::locale::facet *a1)
{
  *a1 = off_5F370;
  v2 = *(a1 + 4);
  if (v2 != std::locale::facet::_S_get_c_name(a1))
  {
    v4 = *(a1 + 4);
    if (v4)
    {
      operator delete[](v4);
    }
  }

  v5 = *(a1 + 2);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::locale::facet::_S_destroy_c_locale(a1 + 3, v3);

  std::locale::facet::~facet(a1);
}

{
  std::__timepunct<wchar_t>::~__timepunct(a1);

  operator delete(v1);
}

double std::__timepunct_cache<wchar_t>::__timepunct_cache(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5F390;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 377) = 0u;
  return result;
}

{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5F390;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 377) = 0u;
  return result;
}

void std::__timepunct_cache<wchar_t>::~__timepunct_cache(std::locale::facet *a1)
{
  *a1 = off_5F390;
  std::locale::facet::~facet(a1);
}

{
  *a1 = off_5F390;
  std::locale::facet::~facet(a1);
}

{
  *a1 = off_5F390;
  std::locale::facet::~facet(a1);

  operator delete(v1);
}

uint64_t std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::time_put(uint64_t result, uint64_t a2)
{
  *(result + 8) = a2 != 0;
  *result = off_5F3B0;
  return result;
}

{
  *(result + 8) = a2 != 0;
  *result = off_5F3B0;
  return result;
}

void *std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::put(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int *a7, unsigned int *a8)
{
  v14 = std::use_facet<std::ctype<wchar_t>>(a4 + 208);
  if (a7 != a8)
  {
    v15 = v14;
    v16 = a3 & 0xFFFFFFFFFFFFFF00;
    v17 = a3;
    do
    {
      if ((*(*v15 + 96))(v15, *a7, 0) == 37)
      {
        v18 = a7 + 1;
        if (a7 + 1 == a8)
        {
          return a2;
        }

        v19 = (*(*v15 + 96))(v15, *v18, 0);
        v20 = v19;
        if (v19 == 79 || v19 == 69)
        {
          v18 = a7 + 2;
          if (a7 + 2 == a8)
          {
            return a2;
          }

          v21 = (*(*v15 + 96))(v15, *v18, 0);
          v22 = v20;
          v20 = v21;
        }

        else
        {
          v22 = 0;
        }

        a2 = (*(*a1 + 16))(a1, a2, v16 | v17, a4, a5, a6, v20, v22);
        v17 = v25;
        a7 = v18;
      }

      else if ((v17 & 1) == 0)
      {
        v23 = *a7;
        v24 = a2[5];
        if (v24 >= a2[6])
        {
          LODWORD(v23) = (*(*a2 + 104))(a2, v23);
        }

        else
        {
          *v24 = v23;
          a2[5] = v24 + 1;
        }

        if (v23 == -1)
        {
          v17 = 1;
        }
      }

      ++a7;
    }

    while (a7 != a8);
  }

  return a2;
}

void std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::~time_put(std::locale::facet *a1)
{
  std::locale::facet::~facet(a1);

  operator delete(v1);
}

uint64_t std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, const tm *a6, __int32 a7, __int32 a8)
{
  v14 = std::use_facet<std::ctype<wchar_t>>(a4 + 208);
  v15 = std::locale::id::_M_id(&std::__timepunct<wchar_t>::id);
  v16 = *(a4 + 208);
  if (v15 >= *(v16 + 16) || (v17 = *(*(v16 + 8) + 8 * v15)) == 0)
  {
    std::__throw_bad_cast();
  }

  off_5C300(v15);
  memset(v21, 0, 512);
  v22[0] = (*(*v14 + 80))(v14, 37);
  if (a8)
  {
    v18 = a7;
    v22[3] = 0;
    a7 = a8;
  }

  else
  {
    v18 = 0;
  }

  v22[1] = a7;
  v22[2] = v18;
  std::__timepunct<wchar_t>::_M_put(v17, v21, 0x80uLL, v22, a6);
  if ((a3 & 1) == 0)
  {
    v19 = wcslen(v21);
    (*(*a2 + 96))(a2, v21, v19);
  }

  return a2;
}

uint64_t std::use_facet<std::__timepunct<wchar_t>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::__timepunct<wchar_t>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::time_put_byname<wchar_t,std::ostreambuf_iterator<wchar_t>>::time_put_byname(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 8) = a3 != 0;
  *result = off_5F3D8;
  return result;
}

{
  *(result + 8) = a3 != 0;
  *result = off_5F3D8;
  return result;
}

void std::time_put_byname<wchar_t,std::ostreambuf_iterator<wchar_t>>::~time_put_byname(std::locale::facet *a1)
{
  std::locale::facet::~facet(a1);

  operator delete(v1);
}

uint64_t std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::time_get(uint64_t result, uint64_t a2)
{
  *(result + 8) = a2 != 0;
  *result = off_5F400;
  return result;
}

{
  *(result + 8) = a2 != 0;
  *result = off_5F400;
  return result;
}

void std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::~time_get(std::locale::facet *a1)
{
  std::locale::facet::~facet(a1);

  operator delete(v1);
}

uint64_t *std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get_time(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, int *a8)
{
  v27 = a3;
  v25[0] = a4;
  v25[1] = a5;
  v16 = std::locale::id::_M_id(&std::__timepunct<wchar_t>::id);
  v17 = *(a6 + 208);
  if (v16 >= *(v17 + 16) || (v18 = *(*(v17 + 8) + 8 * v16)) == 0)
  {
    std::__throw_bad_cast();
  }

  v26 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_via_format(a1, a2, a3, a4, a5, a6, a7, a8, *(*(v18 + 16) + 32));
  LODWORD(v27) = v19;
  v20 = std::istreambuf_iterator<wchar_t>::_M_get(&v26);
  v21 = std::istreambuf_iterator<wchar_t>::_M_get(v25);
  v23 = v20 == -1 || v21 == -1;
  if ((v20 & v21) == 0xFFFFFFFF || !v23)
  {
    *a7 |= 2u;
  }

  return v26;
}

uint64_t *std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_via_format(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, int *a8, const __int32 *a9)
{
  v80 = a2;
  v81 = a3;
  v78 = a4;
  v79 = a5;
  v13 = std::locale::id::_M_id(&std::__timepunct<wchar_t>::id);
  v14 = *(a6 + 208);
  if (v13 >= *(v14 + 16) || (v15 = *(*(v14 + 8) + 8 * v13)) == 0)
  {
    std::__throw_bad_cast();
  }

  v16 = std::use_facet<std::ctype<wchar_t>>(a6 + 208);
  v17 = wcslen(a9);
  v77 = 0;
  v18 = std::istreambuf_iterator<wchar_t>::_M_get(&v80) == -1;
  v19 = std::istreambuf_iterator<wchar_t>::_M_get(&v78) == -1;
  v20 = 1;
  v74 = a7;
  if (v18 != v19 && v17)
  {
    v21 = 0;
    do
    {
      if ((*(*v16 + 96))(v16, a9[v21], 0) == 37)
      {
        v22 = (*(*v16 + 96))(v16, a9[v21 + 1], 0);
        v76 = 0;
        if (v22 == 79 || v22 == 69)
        {
          v21 += 2;
          LOBYTE(v22) = (*(*v16 + 96))(v16, a9[v21], 0);
        }

        else
        {
          ++v21;
        }

        switch(v22)
        {
          case 'A':
            v57 = *(v15 + 16);
            v104 = *(v57 + 88);
            v105 = *(v57 + 104);
            v106 = *(*(v15 + 16) + 112);
            v107 = *(*(v15 + 16) + 120);
            v108 = *(*(v15 + 16) + 128);
            v109 = *(*(v15 + 16) + 136);
            v29 = v80;
            v30 = v81;
            v31 = v78;
            v32 = v79;
            v72 = a6;
            v33 = a8 + 6;
            v34 = &v104;
            goto LABEL_55;
          case 'B':
            v58 = *(v15 + 16);
            v82 = *(v58 + 200);
            v83 = *(v58 + 216);
            v84 = *(*(v15 + 16) + 224);
            v85 = *(*(v15 + 16) + 232);
            v86 = *(*(v15 + 16) + 240);
            v87 = *(*(v15 + 16) + 248);
            v88 = *(*(v15 + 16) + 256);
            v89 = *(*(v15 + 16) + 264);
            v90 = *(*(v15 + 16) + 272);
            v91 = *(*(v15 + 16) + 280);
            v92 = *(*(v15 + 16) + 288);
            v29 = v80;
            v30 = v81;
            v31 = v78;
            v32 = v79;
            v72 = a6;
            v33 = a8 + 4;
            v34 = &v82;
            goto LABEL_51;
          case 'C':
          case 'y':
            v26 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_num(a1, v80, v81, v78, v79, a8 + 5, 0, 99, 2uLL, a6, &v77);
            goto LABEL_70;
          case 'D':
            v50 = *(*v16 + 88);
            v51 = "%m/%d/%y";
            goto LABEL_58;
          case 'H':
            v26 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_num(a1, v80, v81, v78, v79, a8 + 2, 0, 23, 2uLL, a6, &v77);
            goto LABEL_70;
          case 'I':
            v26 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_num(a1, v80, v81, v78, v79, a8 + 2, 1, 12, 2uLL, a6, &v77);
            goto LABEL_70;
          case 'M':
            v35 = v80;
            v36 = v81;
            v37 = v78;
            v38 = v79;
            v73 = a6;
            v39 = a8 + 1;
            v40 = a1;
            goto LABEL_53;
          case 'R':
            v50 = *(*v16 + 88);
            v51 = "%H:%M";
            v63 = "%H:%M:%S";
            goto LABEL_63;
          case 'S':
            v26 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_num(a1, v80, v81, v78, v79, a8, 0, 60, 2uLL, a6, &v77);
            goto LABEL_70;
          case 'T':
            v50 = *(*v16 + 88);
            v51 = "%H:%M:%S";
LABEL_58:
            v63 = v51 + 9;
LABEL_63:
            v50(v16, v51, v63, v116);
            v64 = v80;
            v65 = v81;
            v66 = v78;
            v67 = v79;
            v49 = v116;
            goto LABEL_64;
          case 'X':
            v49 = *(*(v15 + 16) + 32);
            goto LABEL_61;
          case 'Y':
            v80 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_num(a1, v80, v81, v78, v79, &v76, 0, 9999, 4uLL, a6, &v77);
            LODWORD(v81) = v56;
            if (!v77)
            {
              a8[5] = v76 - 1900;
            }

            break;
          case 'Z':
            v43 = std::istreambuf_iterator<wchar_t>::_M_get(&v80);
            if (!(*(*v16 + 16))(v16, 0x8000, v43))
            {
              goto LABEL_37;
            }

            v80 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_name(a1, v80, v81, v78, v79, &v75, &std::__timepunct_cache<wchar_t>::_S_timezones, 14, a6, &v77);
            LODWORD(v81) = v44;
            v45 = std::istreambuf_iterator<wchar_t>::_M_get(&v80) == -1;
            if (v45 == (std::istreambuf_iterator<wchar_t>::_M_get(&v78) == -1))
            {
              break;
            }

            if (v77)
            {
              break;
            }

            if (v75)
            {
              break;
            }

            v46 = std::istreambuf_iterator<wchar_t>::_M_get(&v80);
            if (v46 != (*(*v16 + 80))(v16, 45))
            {
              v47 = std::istreambuf_iterator<wchar_t>::_M_get(&v80);
              if (v47 != (*(*v16 + 80))(v16, 43))
              {
                break;
              }
            }

            v80 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_num(a1, v80, v81, v78, v79, &v75, 0, 23, 2uLL, a6, &v77);
            LODWORD(v81) = v48;
            v36 = v81;
            v37 = v78;
            v38 = v79;
            v73 = a6;
            v39 = &v75;
            v40 = a1;
            v35 = v80;
LABEL_53:
            v41 = 0;
            v61 = 59;
            goto LABEL_69;
          case 'a':
            v62 = *(v15 + 16);
            v110 = *(v62 + 144);
            v111 = *(v62 + 160);
            v112 = *(*(v15 + 16) + 168);
            v113 = *(*(v15 + 16) + 176);
            v114 = *(*(v15 + 16) + 184);
            v115 = *(*(v15 + 16) + 192);
            v29 = v80;
            v30 = v81;
            v31 = v78;
            v32 = v79;
            v72 = a6;
            v33 = a8 + 6;
            v34 = &v110;
LABEL_55:
            v59 = a1;
            v60 = 7;
            goto LABEL_56;
          case 'b':
          case 'h':
            v28 = *(v15 + 16);
            v93 = *(v28 + 296);
            v94 = *(v28 + 312);
            v95 = *(*(v15 + 16) + 320);
            v96 = *(*(v15 + 16) + 328);
            v97 = *(*(v15 + 16) + 336);
            v98 = *(*(v15 + 16) + 344);
            v99 = *(*(v15 + 16) + 352);
            v100 = *(*(v15 + 16) + 360);
            v101 = *(*(v15 + 16) + 368);
            v102 = *(*(v15 + 16) + 376);
            v103 = *(*(v15 + 16) + 384);
            v29 = v80;
            v30 = v81;
            v31 = v78;
            v32 = v79;
            v72 = a6;
            v33 = a8 + 4;
            v34 = &v93;
LABEL_51:
            v59 = a1;
            v60 = 12;
LABEL_56:
            v26 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_name(v59, v29, v30, v31, v32, v33, v34, v60, v72, &v77);
            goto LABEL_70;
          case 'c':
            v49 = *(*(v15 + 16) + 48);
            goto LABEL_61;
          case 'd':
            v35 = v80;
            v36 = v81;
            v37 = v78;
            v38 = v79;
            v73 = a6;
            v39 = a8 + 3;
            v40 = a1;
            v41 = 1;
            goto LABEL_68;
          case 'e':
            v53 = std::istreambuf_iterator<wchar_t>::_M_get(&v80);
            if ((*(*v16 + 16))(v16, 0x4000, v53))
            {
              v54 = v80;
              if (v80)
              {
                v55 = v80[2];
                if (v55 >= v80[3])
                {
                  (*(*v80 + 80))(v80);
                  v54 = v80;
                }

                else
                {
                  v80[2] = v55 + 4;
                }

                LODWORD(v81) = -1;
              }

              v26 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_num(a1, v54, v81, v78, v79, a8 + 3, 1, 9, 1uLL, a6, &v77);
            }

            else
            {
              v35 = v80;
              v36 = v81;
              v37 = v78;
              v38 = v79;
              v73 = a6;
              v39 = a8 + 3;
              v40 = a1;
              v41 = 10;
LABEL_68:
              v61 = 31;
LABEL_69:
              v26 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_num(v40, v35, v36, v37, v38, v39, v41, v61, 2uLL, v73, &v77);
            }

            goto LABEL_70;
          case 'm':
            v80 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_num(a1, v80, v81, v78, v79, &v76, 1, 12, 2uLL, a6, &v77);
            LODWORD(v81) = v68;
            if (!v77)
            {
              a8[4] = v76 - 1;
            }

            break;
          case 'n':
            v42 = std::istreambuf_iterator<wchar_t>::_M_get(&v80);
            if ((*(*v16 + 96))(v16, v42, 0) != 10)
            {
              goto LABEL_37;
            }

            v24 = v80;
            if (!v80)
            {
              break;
            }

            v25 = v80[2];
            if (v25 >= v80[3])
            {
              goto LABEL_23;
            }

            goto LABEL_13;
          case 't':
            v52 = std::istreambuf_iterator<wchar_t>::_M_get(&v80);
            if ((*(*v16 + 96))(v16, v52, 0) != 9)
            {
              goto LABEL_37;
            }

            v24 = v80;
            if (!v80)
            {
              break;
            }

            v25 = v80[2];
            if (v25 >= v80[3])
            {
              goto LABEL_23;
            }

            goto LABEL_13;
          case 'x':
            v49 = *(*(v15 + 16) + 16);
LABEL_61:
            v64 = v80;
            v65 = v81;
            v66 = v78;
            v67 = v79;
LABEL_64:
            v26 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_via_format(a1, v64, v65, v66, v67, a6, &v77, a8, v49);
LABEL_70:
            v80 = v26;
            LODWORD(v81) = v27;
            break;
          default:
            goto LABEL_37;
        }
      }

      else
      {
        v23 = a9[v21];
        if (v23 == std::istreambuf_iterator<wchar_t>::_M_get(&v80))
        {
          v24 = v80;
          if (v80)
          {
            v25 = v80[2];
            if (v25 >= v80[3])
            {
LABEL_23:
              std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v24);
            }

            else
            {
LABEL_13:
              v24[2] = v25 + 4;
            }

            LODWORD(v81) = -1;
          }
        }

        else
        {
LABEL_37:
          v77 |= 4u;
        }
      }

      v69 = std::istreambuf_iterator<wchar_t>::_M_get(&v80) == -1;
      v70 = std::istreambuf_iterator<wchar_t>::_M_get(&v78) == -1;
      v20 = v77 == 0;
      if (v69 == v70)
      {
        break;
      }

      if (++v21 >= v17)
      {
        break;
      }
    }

    while (!v77);
  }

  if (!v20)
  {
    *v74 |= 4u;
  }

  return v80;
}

uint64_t *std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get_date(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, int *a8)
{
  v27 = a3;
  v25[0] = a4;
  v25[1] = a5;
  v16 = std::locale::id::_M_id(&std::__timepunct<wchar_t>::id);
  v17 = *(a6 + 208);
  if (v16 >= *(v17 + 16) || (v18 = *(*(v17 + 8) + 8 * v16)) == 0)
  {
    std::__throw_bad_cast();
  }

  v26 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_via_format(a1, a2, a3, a4, a5, a6, a7, a8, *(*(v18 + 16) + 16));
  LODWORD(v27) = v19;
  v20 = std::istreambuf_iterator<wchar_t>::_M_get(&v26);
  v21 = std::istreambuf_iterator<wchar_t>::_M_get(v25);
  v23 = v20 == -1 || v21 == -1;
  if ((v20 & v21) == 0xFFFFFFFF || !v23)
  {
    *a7 |= 2u;
  }

  return v26;
}

uint64_t *std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get_weekday(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  v41 = a3;
  v39[0] = a4;
  v39[1] = a5;
  v16 = std::locale::id::_M_id(&std::__timepunct<wchar_t>::id);
  v17 = *(a6 + 208);
  if (v16 >= *(v17 + 16) || (v18 = *(*(v17 + 8) + 8 * v16)) == 0)
  {
    std::__throw_bad_cast();
  }

  std::use_facet<std::ctype<wchar_t>>(a6 + 208);
  v19 = *(v18 + 16);
  v20 = *(v19 + 160);
  v42 = *(v19 + 144);
  v43 = v20;
  v44 = *(v19 + 176);
  v45 = *(v19 + 192);
  v37 = 0;
  v40 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_name(a1, a2, a3, a4, a5, &v38, &v42, 7, a6, &v37);
  LODWORD(v41) = v21;
  if (v37)
  {
    goto LABEL_18;
  }

  v22 = std::istreambuf_iterator<wchar_t>::_M_get(&v40) == -1;
  if (v22 != (std::istreambuf_iterator<wchar_t>::_M_get(v39) == -1))
  {
    v23 = wcslen(*(&v42 + v38));
    v24 = *(v18 + 16);
    v25 = *(v24 + 104);
    v42 = *(v24 + 88);
    v43 = v25;
    v44 = *(v24 + 120);
    v45 = *(v24 + 136);
    v26 = *(&v42 + v38);
    v27 = v26[v23];
    if (v27 == std::istreambuf_iterator<wchar_t>::_M_get(&v40))
    {
      v28 = wcslen(v26);
      if (v23 < v28)
      {
        while (1)
        {
          v29 = std::istreambuf_iterator<wchar_t>::_M_get(&v40) == -1;
          if (v29 == (std::istreambuf_iterator<wchar_t>::_M_get(v39) == -1))
          {
            break;
          }

          v30 = v26[v23];
          if (v30 != std::istreambuf_iterator<wchar_t>::_M_get(&v40))
          {
            break;
          }

          if (v40)
          {
            v31 = v40[2];
            if (v31 >= v40[3])
            {
              std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v40);
            }

            else
            {
              v40[2] = v31 + 4;
            }

            LODWORD(v41) = -1;
          }

          if (v28 == ++v23)
          {
            goto LABEL_17;
          }
        }
      }

      if (v28 != v23)
      {
        v37 |= 4u;
        goto LABEL_18;
      }
    }
  }

LABEL_17:
  if (v37)
  {
LABEL_18:
    *a7 |= 4u;
    goto LABEL_19;
  }

  *(a8 + 24) = v38;
LABEL_19:
  v32 = std::istreambuf_iterator<wchar_t>::_M_get(&v40);
  v33 = std::istreambuf_iterator<wchar_t>::_M_get(v39);
  v35 = v32 == -1 || v33 == -1;
  if ((v32 & v33) == 0xFFFFFFFF || !v35)
  {
    *a7 |= 2u;
  }

  return v40;
}

uint64_t *std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_name(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10)
{
  v40 = a2;
  v41 = a3;
  v39[0] = a4;
  v39[1] = a5;
  v13 = std::use_facet<std::ctype<wchar_t>>(a9 + 208);
  off_5C300(v13);
  v14 = (&v39[-1] - ((4 * a8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = std::istreambuf_iterator<wchar_t>::_M_get(&v40) == -1;
  if (v15 == (std::istreambuf_iterator<wchar_t>::_M_get(v39) == -1))
  {
    goto LABEL_47;
  }

  v16 = std::istreambuf_iterator<wchar_t>::_M_get(&v40);
  if (!a8)
  {
    goto LABEL_47;
  }

  v17 = v16;
  bzero(&v39[-1] - ((4 * a8 + 15) & 0xFFFFFFFFFFFFFFF0), 4 * a8);
  v18 = 0;
  v19 = 0;
  do
  {
    if (v17 == **(a7 + 8 * v19) || v17 == (*(*v13 + 48))(v13))
    {
      v14[v18++] = v19;
    }

    ++v19;
  }

  while (a8 != v19);
  if (v18 < 2)
  {
    v29 = 1;
  }

  else
  {
    v20 = 0;
    do
    {
      v21 = v20;
      v22 = wcslen(*(a7 + 8 * *v14));
      for (i = 1; i != v18; ++i)
      {
        v24 = wcslen(*(a7 + 8 * v14[i]));
        if (v24 < v22)
        {
          v22 = v24;
        }
      }

      if (v40)
      {
        v25 = v40[2];
        if (v25 >= v40[3])
        {
          std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v40);
        }

        else
        {
          v40[2] = v25 + 4;
        }

        LODWORD(v41) = -1;
      }

      v20 = v21 + 1;
      if (v21 + 1 >= v22)
      {
        break;
      }

      v26 = std::istreambuf_iterator<wchar_t>::_M_get(&v40) == -1;
      if (v26 == (std::istreambuf_iterator<wchar_t>::_M_get(v39) == -1))
      {
        break;
      }

      v27 = 0;
      do
      {
        v28 = *(*(a7 + 8 * v14[v27]) + 4 * v20);
        if (v28 == std::istreambuf_iterator<wchar_t>::_M_get(&v40))
        {
          ++v27;
        }

        else
        {
          v14[v27] = v14[--v18];
        }
      }

      while (v27 < v18);
    }

    while (v18 >= 2);
    v29 = v21 + 2;
  }

  if (v18 != 1)
  {
    goto LABEL_47;
  }

  if (v40)
  {
    v30 = v40[2];
    if (v30 >= v40[3])
    {
      std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v40);
    }

    else
    {
      v40[2] = v30 + 4;
    }

    LODWORD(v41) = -1;
  }

  v31 = *v14;
  v32 = *(a7 + 8 * v31);
  v33 = wcslen(v32);
  if (v29 < v33)
  {
    while (1)
    {
      v34 = std::istreambuf_iterator<wchar_t>::_M_get(&v40) == -1;
      if (v34 == (std::istreambuf_iterator<wchar_t>::_M_get(v39) == -1))
      {
        break;
      }

      v35 = v32[v29];
      if (v35 != std::istreambuf_iterator<wchar_t>::_M_get(&v40))
      {
        break;
      }

      if (v40)
      {
        v36 = v40[2];
        if (v36 >= v40[3])
        {
          std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v40);
        }

        else
        {
          v40[2] = v36 + 4;
        }

        LODWORD(v41) = -1;
      }

      if (v33 == ++v29)
      {
        goto LABEL_46;
      }
    }
  }

  if (v33 == v29)
  {
LABEL_46:
    *a6 = v31;
  }

  else
  {
LABEL_47:
    *a10 |= 4u;
  }

  return v40;
}

uint64_t *std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get_monthname(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  v41 = a3;
  v39[0] = a4;
  v39[1] = a5;
  v16 = std::locale::id::_M_id(&std::__timepunct<wchar_t>::id);
  v17 = *(a6 + 208);
  if (v16 >= *(v17 + 16) || (v18 = *(*(v17 + 8) + 8 * v16)) == 0)
  {
    std::__throw_bad_cast();
  }

  std::use_facet<std::ctype<wchar_t>>(a6 + 208);
  v19 = (*(v18 + 16) + 296);
  v42 = *v19;
  v43 = v19[1];
  v44 = v19[2];
  v45 = v19[3];
  v46 = v19[4];
  v47 = v19[5];
  v37 = 0;
  v40 = std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_name(a1, a2, a3, a4, a5, &v38, &v42, 12, a6, &v37);
  LODWORD(v41) = v20;
  if (v37)
  {
    goto LABEL_18;
  }

  v21 = std::istreambuf_iterator<wchar_t>::_M_get(&v40) == -1;
  if (v21 != (std::istreambuf_iterator<wchar_t>::_M_get(v39) == -1))
  {
    v22 = wcslen(*(&v42 + v38));
    v23 = *(v18 + 16);
    v24 = *(v23 + 216);
    v42 = *(v23 + 200);
    v43 = v24;
    v25 = *(v23 + 248);
    v44 = *(v23 + 232);
    v45 = v25;
    v46 = *(v23 + 264);
    v47 = *(v23 + 280);
    v26 = *(&v42 + v38);
    v27 = v26[v22];
    if (v27 == std::istreambuf_iterator<wchar_t>::_M_get(&v40))
    {
      v28 = wcslen(v26);
      if (v22 < v28)
      {
        while (1)
        {
          v29 = std::istreambuf_iterator<wchar_t>::_M_get(&v40) == -1;
          if (v29 == (std::istreambuf_iterator<wchar_t>::_M_get(v39) == -1))
          {
            break;
          }

          v30 = v26[v22];
          if (v30 != std::istreambuf_iterator<wchar_t>::_M_get(&v40))
          {
            break;
          }

          if (v40)
          {
            v31 = v40[2];
            if (v31 >= v40[3])
            {
              std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v40);
            }

            else
            {
              v40[2] = v31 + 4;
            }

            LODWORD(v41) = -1;
          }

          if (v28 == ++v22)
          {
            goto LABEL_17;
          }
        }
      }

      if (v28 != v22)
      {
        v37 |= 4u;
        goto LABEL_18;
      }
    }
  }

LABEL_17:
  if (v37)
  {
LABEL_18:
    *a7 |= 4u;
    goto LABEL_19;
  }

  *(a8 + 16) = v38;
LABEL_19:
  v32 = std::istreambuf_iterator<wchar_t>::_M_get(&v40);
  v33 = std::istreambuf_iterator<wchar_t>::_M_get(v39);
  v35 = v32 == -1 || v33 == -1;
  if ((v32 & v33) == 0xFFFFFFFF || !v35)
  {
    *a7 |= 2u;
  }

  return v40;
}

uint64_t *std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::do_get_year(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  v27 = a2;
  v28 = a3;
  v26[0] = a4;
  v26[1] = a5;
  v10 = std::use_facet<std::ctype<wchar_t>>(a6 + 208);
  v11 = std::istreambuf_iterator<wchar_t>::_M_get(&v27) == -1;
  if (v11 == (std::istreambuf_iterator<wchar_t>::_M_get(v26) == -1))
  {
    goto LABEL_19;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = std::istreambuf_iterator<wchar_t>::_M_get(&v27);
    v15 = (*(*v10 + 96))(v10, v14, 42) - 48;
    if (v15 > 9)
    {
      break;
    }

    if (v27)
    {
      v16 = v27[2];
      if (v16 >= v27[3])
      {
        std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v27);
      }

      else
      {
        v27[2] = v16 + 4;
      }

      LODWORD(v28) = -1;
    }

    v13 = v15 + 10 * v13;
    v17 = v12 + 1;
    v18 = std::istreambuf_iterator<wchar_t>::_M_get(&v27) == -1;
    if (v18 != (std::istreambuf_iterator<wchar_t>::_M_get(v26) == -1) && v12++ < 3)
    {
      continue;
    }

    goto LABEL_14;
  }

  v17 = v12;
LABEL_14:
  if (v17 == 4 || v17 == 2)
  {
    v20 = v13 - 1900;
    if (v17 == 2)
    {
      v20 = v13;
    }

    *(a8 + 20) = v20;
  }

  else
  {
LABEL_19:
    *a7 |= 4u;
  }

  v21 = std::istreambuf_iterator<wchar_t>::_M_get(&v27);
  v22 = std::istreambuf_iterator<wchar_t>::_M_get(v26);
  v24 = v21 == -1 || v22 == -1;
  if ((v21 & v22) == 0xFFFFFFFF || !v24)
  {
    *a7 |= 2u;
  }

  return v27;
}

uint64_t *std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_num(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, int a7, int a8, unint64_t a9, uint64_t a10, _DWORD *a11)
{
  v28 = a2;
  v29 = a3;
  v27[0] = a4;
  v27[1] = a5;
  v13 = std::use_facet<std::ctype<wchar_t>>(a10 + 208);
  v14 = std::istreambuf_iterator<wchar_t>::_M_get(&v28) == -1;
  if (v14 == (std::istreambuf_iterator<wchar_t>::_M_get(v27) == -1) || a9 == 0)
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    if (a9 == 4)
    {
      v18 = 1000;
    }

    else
    {
      v18 = 1;
    }

    if (a9 == 2)
    {
      v19 = 10;
    }

    else
    {
      v19 = v18;
    }

    do
    {
      v20 = std::istreambuf_iterator<wchar_t>::_M_get(&v28);
      v21 = (*(*v13 + 96))(v13, v20, 42);
      if ((v21 - 48) > 9)
      {
        break;
      }

      v17 = v21 + 10 * v17 - 48;
      if ((v17 * v19) > a8 || (v17 * v19 + v19) <= a7)
      {
        break;
      }

      if (v28)
      {
        v23 = v28[2];
        if (v23 >= v28[3])
        {
          std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::_M_extract_float(v28);
        }

        else
        {
          v28[2] = v23 + 4;
        }

        LODWORD(v29) = -1;
      }

      ++v16;
      v24 = std::istreambuf_iterator<wchar_t>::_M_get(&v28) == -1;
      if (v24 == (std::istreambuf_iterator<wchar_t>::_M_get(v27) == -1))
      {
        break;
      }

      v19 /= 0xAu;
    }

    while (v16 < a9);
  }

  if (v16 == a9)
  {
    *a6 = v17;
  }

  else
  {
    *a11 |= 4u;
  }

  return v28;
}

uint64_t std::time_get_byname<wchar_t,std::istreambuf_iterator<wchar_t>>::time_get_byname(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 8) = a3 != 0;
  *result = off_5F450;
  return result;
}

{
  *(result + 8) = a3 != 0;
  *result = off_5F450;
  return result;
}

void std::time_get_byname<wchar_t,std::istreambuf_iterator<wchar_t>>::~time_get_byname(std::locale::facet *a1)
{
  std::locale::facet::~facet(a1);

  operator delete(v1);
}

uint64_t std::messages<wchar_t>::messages(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5F4A0;
  *(a1 + 16) = std::locale::facet::_S_get_c_locale(a1, a2, a3, a4);
  return a1;
}

{
  *(a1 + 8) = a4 != 0;
  *a1 = off_5F4A0;
  *(a1 + 16) = std::locale::facet::_S_get_c_locale(a1, a2, a3, a4);
  return a1;
}

uint64_t std::messages<wchar_t>::open(uint64_t a1)
{
  return (*(*a1 + 16))();
}

{
  return (*(*a1 + 16))();
}

void std::messages<wchar_t>::~messages(std::locale::facet *a1, int **a2)
{
  *a1 = off_5F4A0;
  std::locale::facet::_S_destroy_c_locale(a1 + 2, a2);

  std::locale::facet::~facet(a1);
}

{
  std::messages<wchar_t>::~messages(a1, a2);

  operator delete(v2);
}

uint64_t std::messages_byname<wchar_t>::messages_byname(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *std::messages<wchar_t>::messages(a1, a3, a3, a4) = off_5F4D8;
  if (*a2 != 67 || *(a2 + 1))
  {
    if (strcmp(a2, "POSIX"))
    {
      std::locale::facet::_S_destroy_c_locale((a1 + 16), v6);
      std::locale::facet::_S_create_c_locale((a1 + 16), a2, 0, v7);
    }
  }

  return a1;
}

void std::messages_byname<wchar_t>::~messages_byname(std::locale::facet *a1, int **a2)
{
  std::messages<wchar_t>::~messages(a1, a2);

  operator delete(v2);
}

void std::ctype_byname<wchar_t>::~ctype_byname(std::locale::facet *a1, int **a2)
{
  std::ctype<wchar_t>::~ctype(a1, a2);

  operator delete(v2);
}

uint64_t std::codecvt_byname<wchar_t,char,__mbstate_t>::codecvt_byname(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *std::codecvt<wchar_t,char,__mbstate_t>::codecvt(a1, a3, a3, a4) = off_5F5E8;
  if (*a2 != 67 || *(a2 + 1))
  {
    if (strcmp(a2, "POSIX"))
    {
      std::locale::facet::_S_destroy_c_locale((a1 + 16), v6);
      std::locale::facet::_S_create_c_locale((a1 + 16), a2, 0, v7);
    }
  }

  return a1;
}

void std::codecvt_byname<wchar_t,char,__mbstate_t>::~codecvt_byname(std::locale::facet *a1, int **a2)
{
  std::codecvt<wchar_t,char,__mbstate_t>::~codecvt(a1, a2);

  operator delete(v2);
}

uint64_t std::collate<wchar_t>::collate(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(a1 + 8) = a2 != 0;
  *a1 = off_5F640;
  *(a1 + 16) = std::locale::facet::_S_get_c_locale(a1, a2, a3, a4);
  return a1;
}

uint64_t std::collate<wchar_t>::collate(uint64_t a1, int **a2, uint64_t a3)
{
  v5 = a2;
  *(a1 + 8) = a3 != 0;
  *a1 = off_5F640;
  *(a1 + 16) = std::locale::facet::_S_clone_c_locale(&v5, a2);
  return a1;
}

void std::collate<wchar_t>::~collate(std::locale::facet *a1, int **a2)
{
  *a1 = off_5F640;
  std::locale::facet::_S_destroy_c_locale(a1 + 2, a2);

  std::locale::facet::~facet(a1);
}

{
  std::collate<wchar_t>::~collate(a1, a2);

  operator delete(v2);
}

uint64_t std::collate<wchar_t>::do_compare(int a1, const __int32 *a2, const __int32 *a3, const __int32 *a4, const __int32 *a5)
{
  v8 = std::wstring::_S_construct<wchar_t const*>(a2, a3);
  v9 = std::wstring::_S_construct<wchar_t const*>(a4, a5);
  v10 = &v8[*(v8 - 3)];
  v11 = v9 - 6;
  v12 = &v9[*(v9 - 3)];
  v13 = v8;
  for (i = v9; ; i = v17 + 1)
  {
    v15 = std::collate<wchar_t>::_M_compare(a1, v13, i);
    if (v15)
    {
      break;
    }

    v16 = &v13[wcslen(v13)];
    v17 = &i[wcslen(i)];
    if (v16 == v10 || v17 == v12)
    {
      v18 = v17 == v12 && v16 == v10;
      v19 = v18 - 1;
      if (v16 == v10)
      {
        v15 = v19;
      }

      else
      {
        v15 = 1;
      }

      break;
    }

    v13 = v16 + 1;
  }

  if (v11 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v9 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v11);
  }

  if (v8 - 6 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v8 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v8 - 6);
  }

  return v15;
}

void sub_45830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if ((v13 - 24) != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add((v13 - 8), 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy((v13 - 24));
  }

  _Unwind_Resume(exception_object);
}

void std::collate<wchar_t>::do_transform(int a1@<W0>, const __int32 *a2@<X1>, const __int32 *a3@<X2>, int **a4@<X8>)
{
  *a4 = &unk_606A0;
  v8 = std::wstring::_S_construct<wchar_t const*>(a2, a3);
  v9 = v8 - 6;
  v10 = *(v8 - 3);
  v11 = a3 - a2;
  v12 = (a3 - a2) >> 1;
  v13 = 2 * v11;
  if (v12 >> 62)
  {
    v14 = -1;
  }

  else
  {
    v14 = v13;
  }

  v15 = operator new[](v14);
  v16 = &v8[v10];
  for (i = v8; ; i = v20 + 1)
  {
    v18 = std::collate<wchar_t>::_M_transform(a1, v15, i, v12);
    if (v18 >= v12)
    {
      if (v15)
      {
        operator delete[](v15);
      }

      v12 = v18 + 1;
      if ((v18 + 1) >> 62)
      {
        v19 = -1;
      }

      else
      {
        v19 = 4 * (v18 + 1);
      }

      v15 = operator new[](v19);
      v18 = std::collate<wchar_t>::_M_transform(a1, v15, i, v18 + 1);
    }

    std::wstring::append(a4, v15, v18);
    v20 = &i[wcslen(i)];
    if (v20 == v16)
    {
      break;
    }

    std::wstring::push_back(a4, 0);
  }

  if (v15)
  {
    operator delete[](v15);
  }

  if (v9 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v8 - 2, 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v9);
  }
}

void sub_45A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (v13 != v16 && atomic_fetch_add((v15 - 8), 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v13);
  }

  v18 = (*v14 - 24);
  if (v18 != v16 && atomic_fetch_add((*v14 - 8), 0xFFFFFFFF) <= 0)
  {
    std::wstring::_Rep::_M_destroy(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::collate<wchar_t>::do_hash(uint64_t a1, int *a2, unint64_t a3)
{
  if (a2 >= a3)
  {
    return 0;
  }

  result = 0;
  do
  {
    v4 = *a2++;
    result = __ROR8__(result, 57) + v4;
  }

  while (a2 < a3);
  return result;
}

uint64_t std::collate_byname<wchar_t>::collate_byname(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *std::collate<wchar_t>::collate(a1, a3, a3, a4) = off_5F678;
  if (*a2 != 67 || *(a2 + 1))
  {
    if (strcmp(a2, "POSIX"))
    {
      std::locale::facet::_S_destroy_c_locale((a1 + 16), v6);
      std::locale::facet::_S_create_c_locale((a1 + 16), a2, 0, v7);
    }
  }

  return a1;
}

void std::collate_byname<wchar_t>::~collate_byname(std::locale::facet *a1, int **a2)
{
  std::collate<wchar_t>::~collate(a1, a2);

  operator delete(v2);
}

uint64_t std::use_facet<std::codecvt<wchar_t,char,__mbstate_t>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::codecvt<wchar_t,char,__mbstate_t>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::use_facet<std::collate<wchar_t>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::collate<wchar_t>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::use_facet<std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::use_facet<std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::use_facet<std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::money_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::use_facet<std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::money_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::use_facet<std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::time_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::use_facet<std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::time_get<wchar_t,std::istreambuf_iterator<wchar_t>>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::use_facet<std::messages<wchar_t>>(uint64_t a1)
{
  v2 = std::locale::id::_M_id(&std::messages<wchar_t>::id);
  if (v2 >= *(*a1 + 16) || (result = *(*(*a1 + 8) + 8 * v2)) == 0)
  {
    std::__throw_bad_cast();
  }

  return result;
}

uint64_t std::istreambuf_iterator<wchar_t>::equal(uint64_t a1, uint64_t a2)
{
  v3 = std::istreambuf_iterator<wchar_t>::_M_get(a1);
  v4 = std::istreambuf_iterator<wchar_t>::_M_get(a2);
  v6 = v3 == -1 || v4 == -1;
  return (v3 & v4) == 0xFFFFFFFF || !v6;
}

uint64_t std::istreambuf_iterator<wchar_t>::_M_get(uint64_t a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v3 = v1[2];
    if (v3 >= v1[3])
    {
      v5 = a1;
      v2 = (*(*v1 + 72))(v1);
      a1 = v5;
    }

    else
    {
      v2 = *v3;
    }

    if (v2 == -1)
    {
      *a1 = 0;
    }

    else
    {
      *(a1 + 8) = v2;
    }
  }

  return v2;
}

void OUTLINED_FUNCTION_0_1(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9 - ((a2 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
}

uint64_t OUTLINED_FUNCTION_2_1()
{
  result = v0;
  v3 = *(v1 - 276);
  return result;
}

__int32 *OUTLINED_FUNCTION_12_0()
{
  v7 = *(v5 - 208);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 76);

  return std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_group_float(v7, v8, v9, v10, v1, (v3 + 4 * v0), (v4 + 4 * v0), (v5 - 184));
}

uint64_t OUTLINED_FUNCTION_13_0@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(v2 - 96) = a2;

  return std::__use_cache<std::__numpunct_cache<wchar_t>>::operator()(v2 - 257, (a1 + 208));
}

void OUTLINED_FUNCTION_14_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9 - ((v9 + 15) & 0x1FFFFFFF0), v9);
}

_DWORD *OUTLINED_FUNCTION_15_0()
{
  v5 = &v1[v0];
  v6 = *(v4 - 288);
  return std::__add_grouping<wchar_t>((v3 + 8), *(v2 + 76), *(v2 + 16), *(v2 + 24), v1, v5);
}

void OUTLINED_FUNCTION_17_0()
{

  bzero((v0 - 256), 0xA0uLL);
}

__int32 *OUTLINED_FUNCTION_18_0()
{
  v7 = *(v5 - 196);

  return std::__pad<wchar_t,std::char_traits<wchar_t>>::_S_pad(v0, v7, v2, v3, v1, v4, 1);
}

void OUTLINED_FUNCTION_20_0(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9 - ((a2 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
}

void *OUTLINED_FUNCTION_26_0()
{
  v3 = *(v1 - 184);

  return memchr(v0, 46, v3);
}

uint64_t OUTLINED_FUNCTION_27_0()
{

  return std::__convert_from_v((v0 - 192), (v0 - 176), 45, (v0 - 120));
}

void OUTLINED_FUNCTION_28_0(uint64_t a1@<X8>, uint64_t a2)
{

  bzero(&a2 - v2, a1 + 8);
}

void OUTLINED_FUNCTION_29_0(uint64_t a1@<X8>, uint64_t a2)
{

  bzero(&a2 - v2, a1 + 8);
}

uint64_t OUTLINED_FUNCTION_41_0()
{

  return std::__convert_from_v((v2 - 192), v1, v0, (v2 - 120));
}

void OUTLINED_FUNCTION_42(size_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3)
{

  bzero(&a3 - a2, a1);
}

__int32 *OUTLINED_FUNCTION_44(uint64_t a1, __int32 a2, __int32 *a3, __int32 *a4, uint64_t a5)
{

  return std::__pad<wchar_t,std::char_traits<wchar_t>>::_S_pad(a1, a2, a3, a4, a5, v5, 1);
}

void __cxx_global_var_init_1_1()
{
  {
  }
}

void __cxx_global_var_init_3_1()
{
  {
  }
}

void __cxx_global_var_init_4_1()
{
  {
  }
}

void __cxx_global_var_init_6_0()
{
  {
  }
}

void __cxx_global_var_init_7_0()
{
  {
  }
}

void __cxx_global_var_init_8_0()
{
  {
  }
}

void __cxx_global_var_init_9_0()
{
  {
  }
}

void __cxx_global_var_init_10_0()
{
  {
  }
}

void __cxx_global_var_init_11_0()
{
  {
  }
}

void __cxx_global_var_init_15_0()
{
  {
  }
}

void __cxx_global_var_init_16_0()
{
  {
  }
}

uint64_t std::wstring::_Rep::_M_set_length_and_sharable(uint64_t result, uint64_t a2)
{
  *(result + 16) = 0;
  *result = a2;
  *(result + 4 * a2 + 24) = 0;
  return result;
}

void *std::wstring::_Rep::_M_grab(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 0x80000000) != 0)
  {
    return std::wstring::_Rep::_M_clone(a1, a2, 0);
  }

  if (a1 != &std::wstring::_Rep::_S_empty_rep_storage)
  {
    atomic_fetch_add((a1 + 16), 1u);
  }

  return (a1 + 24);
}

uint64_t std::wstring::_Rep::_M_refcopy(uint64_t a1)
{
  if (a1 != &std::wstring::_Rep::_S_empty_rep_storage)
  {
    atomic_fetch_add((a1 + 16), 1u);
  }

  return a1 + 24;
}

void *std::wstring::_Rep::_M_clone(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = std::wstring::_Rep::_S_create(*a1 + a3, *(a1 + 8));
  v5 = v4;
  v6 = *a1;
  if (*a1)
  {
    if (v6 == 1)
    {
      *(v4 + 6) = *(a1 + 24);
      v7 = 1;
    }

    else
    {
      wmemcpy(v4 + 6, (a1 + 24), v6);
      v7 = *a1;
    }
  }

  else
  {
    v7 = 0;
  }

  *(v5 + 4) = 0;
  *v5 = v7;
  result = v5 + 3;
  *(v5 + v7 + 6) = 0;
  return result;
}

void *std::wstring::_Rep::_S_create(unint64_t a1, unint64_t a2)
{
  if (a1 >= 0xFFFFFFFFFFFFFFFLL)
  {
    std::__throw_length_error("basic_string::_S_create");
  }

  v2 = 2 * a2;
  if (2 * a2 <= a1)
  {
    v2 = a1;
  }

  if (a1 <= a2)
  {
    v3 = a1;
  }

  else
  {
    v3 = v2;
  }

  v4 = 4 * v3;
  if (a1 > a2 && (v4 + 60) > 0x1000)
  {
    if (v3 + ((4096 - ((v4 + 60) & 0xFFC)) >> 2) >= 0xFFFFFFFFFFFFFFELL)
    {
      v3 = 0xFFFFFFFFFFFFFFELL;
    }

    else
    {
      v3 += (4096 - ((v4 + 60) & 0xFFC)) >> 2;
    }

    v4 = 4 * v3;
  }

  result = operator new(v4 + 28);
  result[1] = v3;
  *(result + 4) = 0;
  return result;
}

void std::wstring::_Rep::_M_dispose(void *__p)
{
  if (__p != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(__p + 4, 0xFFFFFFFF) <= 0)
  {
    operator delete(__p);
  }
}

__int32 *std::wstring::_M_copy(__int32 *result, const __int32 *a2, size_t a3)
{
  if (a3 != 1)
  {
    return wmemcpy(result, a2, a3);
  }

  *result = *a2;
  return result;
}

void *std::wstring::_Alloc_hider::_Alloc_hider(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  *result = a2;
  return result;
}

void std::wstring::_M_leak(const __int32 **a1)
{
  if ((*(*a1 - 2) & 0x80000000) == 0)
  {
    std::wstring::_M_leak_hard(a1);
  }
}

void std::wstring::_M_leak_hard(const __int32 **a1)
{
  v1 = *a1;
  if (*a1 - 6 != &std::wstring::_Rep::_S_empty_rep_storage)
  {
    if (*(v1 - 2) >= 1)
    {
      std::wstring::_M_mutate(a1, 0, 0, 0);
      v1 = *a1;
    }

    *(v1 - 2) = -1;
  }
}

unint64_t std::wstring::_M_check(void *a1, unint64_t a2, char *a3)
{
  if (*(*a1 - 24) < a2)
  {
    std::__throw_out_of_range(a3);
  }

  return a2;
}

void *std::wstring::_M_check_length(void *result, uint64_t a2, unint64_t a3, char *a4)
{
  if (a2 - *(*result - 24) + 0xFFFFFFFFFFFFFFELL < a3)
  {
    std::__throw_length_error(a4);
  }

  return result;
}

unint64_t std::wstring::_M_limit(void *a1, uint64_t a2, unint64_t a3)
{
  if (*(*a1 - 24) - a2 >= a3)
  {
    return a3;
  }

  else
  {
    return *(*a1 - 24) - a2;
  }
}

__int32 *std::wstring::_M_move(__int32 *result, const __int32 *a2, size_t a3)
{
  if (a3 != 1)
  {
    return wmemmove(result, a2, a3);
  }

  *result = *a2;
  return result;
}

__int32 *std::wstring::_M_assign(__int32 *result, size_t a2, __int32 a3)
{
  if (a2 != 1)
  {
    return wmemset(result, a3, a2);
  }

  *result = a3;
  return result;
}

__int32 *std::wstring::_S_copy_chars(__int32 *result, const __int32 *a2, uint64_t a3)
{
  if (a3 - a2 != 4)
  {
    return wmemcpy(result, a2, (a3 - a2) >> 2);
  }

  *result = *a2;
  return result;
}

{
  if (a3 - a2 != 4)
  {
    return wmemcpy(result, a2, (a3 - a2) >> 2);
  }

  *result = *a2;
  return result;
}

{
  if (a3 - a2 != 4)
  {
    return wmemcpy(result, a2, (a3 - a2) >> 2);
  }

  *result = *a2;
  return result;
}

{
  if (a3 - a2 != 4)
  {
    return wmemcpy(result, a2, (a3 - a2) >> 2);
  }

  *result = *a2;
  return result;
}

uint64_t std::wstring::_S_compare(unint64_t a1, unint64_t a2)
{
  if (a1 >= a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (a1 > a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

void std::wstring::_M_mutate(const __int32 **a1, size_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v10 = *(*a1 - 3);
  v9 = *(*a1 - 2);
  v11 = a4 - a3 + v10;
  v12 = a3 + a2;
  v13 = v10 - (a3 + a2);
  if (v11 <= v9 && *(v8 - 2) < 1)
  {
    if (a4 != a3 && v10 != v12)
    {
      v18 = &v8[a2];
      v19 = &v18[a4];
      v20 = &v18[a3];
      if (v13 == 1)
      {
        *v19 = *v20;
      }

      else
      {
        wmemmove(v19, v20, v10 - (a3 + a2));
        v8 = *a1;
      }
    }
  }

  else
  {
    v14 = std::wstring::_Rep::_S_create(v11, v9);
    v15 = v14;
    v16 = *a1;
    if (a2)
    {
      if (a2 == 1)
      {
        *(v14 + 6) = *v16;
      }

      else
      {
        wmemcpy(v14 + 6, v16, a2);
        v16 = *a1;
      }
    }

    if (v10 != v12)
    {
      v17 = v15 + 4 * a2 + 4 * a4;
      if (v13 == 1)
      {
        *(v17 + 24) = v16[a2 + a3];
      }

      else
      {
        wmemcpy((v17 + 24), &v16[a2 + a3], v13);
        v16 = *a1;
      }
    }

    if (v16 - 6 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v16 - 2, 0xFFFFFFFF) <= 0)
    {
      operator delete((v16 - 6));
    }

    v8 = (v15 + 3);
    *a1 = (v15 + 3);
  }

  *(v8 - 2) = 0;
  *(v8 - 3) = v11;
  v8[v11] = 0;
}

void *std::wstring::basic_string(void *result)
{
  *result = &unk_606A0;
  return result;
}

{
  *result = &unk_606A0;
  return result;
}

{
  *result = &unk_606A0;
  return result;
}

{
  *result = &unk_606A0;
  return result;
}

__int32 *std::wstring::_S_construct(unint64_t a1, __int32 a2)
{
  if (!a1)
  {
    return &unk_606A0;
  }

  v4 = std::wstring::_Rep::_S_create(a1, 0);
  v5 = v4;
  v6 = v4 + 6;
  if (a1 == 1)
  {
    *v6 = a2;
  }

  else
  {
    wmemset(v4 + 6, a2, a1);
  }

  v5[4] = 0;
  *v5 = a1;
  v6[a1] = 0;
  return v6;
}

atomic_uint **std::wstring::basic_string(atomic_uint **a1, atomic_uint **a2)
{
  v3 = *a2;
  v4 = *a2 - 6;
  if (*(*a2 - 2) < 0)
  {
    v3 = std::wstring::_Rep::_M_clone(v4, &v6, 0);
  }

  else if (v4 != &std::wstring::_Rep::_S_empty_rep_storage)
  {
    atomic_fetch_add(v3 - 2, 1u);
  }

  *a1 = v3;
  return a1;
}

__int32 **std::wstring::basic_string(__int32 **a1, void *a2, unint64_t a3, unint64_t a4)
{
  v4 = *(*a2 - 24);
  v5 = v4 >= a3;
  v6 = v4 - a3;
  if (!v5)
  {
    std::__throw_out_of_range("basic_string::basic_string");
  }

  if (v6 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = v6;
  }

  *a1 = std::wstring::_S_construct<wchar_t *>((*a2 + 4 * a3), (*a2 + 4 * a3 + 4 * v8));
  return a1;
}

{
  v4 = *(*a2 - 24);
  v5 = v4 >= a3;
  v6 = v4 - a3;
  if (!v5)
  {
    std::__throw_out_of_range("basic_string::basic_string");
  }

  if (v6 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = v6;
  }

  *a1 = std::wstring::_S_construct<wchar_t *>((*a2 + 4 * a3), (*a2 + 4 * a3 + 4 * v8));
  return a1;
}

__int32 **std::wstring::basic_string(__int32 **a1, const __int32 *a2, uint64_t a3)
{
  *a1 = std::wstring::_S_construct<wchar_t const*>(a2, &a2[a3]);
  return a1;
}

{
  *a1 = std::wstring::_S_construct<wchar_t const*>(a2, &a2[a3]);
  return a1;
}

__int32 **std::wstring::basic_string(__int32 **a1, __int32 *a2)
{
  if (a2)
  {
    v4 = &a2[wcslen(a2)];
  }

  else
  {
    v4 = -4;
  }

  *a1 = std::wstring::_S_construct<wchar_t const*>(a2, v4);
  return a1;
}

__int32 **std::wstring::basic_string(__int32 **a1, unint64_t a2, __int32 a3)
{
  *a1 = std::wstring::_S_construct(a2, a3);
  return a1;
}

{
  *a1 = std::wstring::_S_construct(a2, a3);
  return a1;
}

uint64_t *std::wstring::~wstring(uint64_t *a1)
{
  v2 = *a1;
  v3 = (*a1 - 24);
  if (v3 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add((v2 - 8), 0xFFFFFFFF) <= 0)
  {
    operator delete(v3);
  }

  return a1;
}

{
  v2 = *a1;
  v3 = (*a1 - 24);
  if (v3 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add((v2 - 8), 0xFFFFFFFF) <= 0)
  {
    operator delete(v3);
  }

  return a1;
}

atomic_uint **std::wstring::assign(atomic_uint **a1, atomic_uint **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != *a2)
  {
    if (*(v4 - 2) < 0)
    {
      v4 = std::wstring::_Rep::_M_clone((v4 - 6), &v8, 0);
    }

    else if (v4 - 6 != &std::wstring::_Rep::_S_empty_rep_storage)
    {
      atomic_fetch_add(v4 - 2, 1u);
    }

    v5 = *a1 - 6;
    if (v5 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(*a1 - 2, 0xFFFFFFFF) <= 0)
    {
      v7 = v4;
      operator delete(v5);
      v4 = v7;
    }

    *a1 = v4;
  }

  return a1;
}

const __int32 **std::wstring::operator=(const __int32 **a1, __int32 *a2)
{
  v4 = wcslen(a2);

  return std::wstring::assign(a1, a2, v4);
}

const __int32 **std::wstring::assign(const __int32 **a1, __int32 *a2)
{
  v4 = wcslen(a2);

  return std::wstring::assign(a1, a2, v4);
}

const __int32 *std::wstring::begin(const __int32 **a1)
{
  result = *a1;
  if ((*(result - 2) & 0x80000000) == 0)
  {
    std::wstring::_M_leak_hard(a1);
    return *a1;
  }

  return result;
}

const __int32 *std::wstring::end(const __int32 **a1)
{
  v1 = *a1;
  if ((*(*a1 - 2) & 0x80000000) == 0)
  {
    std::wstring::_M_leak_hard(a1);
    v1 = *a1;
  }

  return &v1[*(v1 - 3)];
}

void std::wstring::rbegin(const __int32 **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if ((*(*a1 - 2) & 0x80000000) == 0)
  {
    std::wstring::_M_leak_hard(a1);
    v3 = *a1;
  }

  *a2 = &v3[*(v3 - 3)];
}

void std::wstring::rend(const __int32 **a1@<X0>, const __int32 **a2@<X8>)
{
  v3 = *a1;
  if ((*(*a1 - 2) & 0x80000000) == 0)
  {
    std::wstring::_M_leak_hard(a1);
    v3 = *a1;
  }

  *a2 = v3;
}

int **std::wstring::resize(int **result, size_t a2, __int32 a3)
{
  if (a2 >= 0xFFFFFFFFFFFFFFFLL)
  {
    std::__throw_length_error("basic_string::resize");
  }

  v4 = *(*result - 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::wstring::append(result, v6, a3);
  }

  else if (!v5)
  {

    return std::wstring::erase(result, a2, 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

int **std::wstring::append(int **a1, size_t a2, __int32 a3)
{
  if (a2)
  {
    v5 = *a1;
    v6 = *(*a1 - 3);
    if (0xFFFFFFFFFFFFFFELL - v6 < a2)
    {
      std::__throw_length_error("basic_string::append");
    }

    v8 = v6 + a2;
    if (v6 + a2 > *(v5 - 2) || *(v5 - 2) >= 1)
    {
      std::wstring::reserve(a1, v6 + a2);
      v5 = *a1;
      v6 = *(*a1 - 3);
    }

    v9 = &v5[v6];
    if (a2 == 1)
    {
      *v9 = a3;
    }

    else
    {
      wmemset(v9, a3, a2);
      v5 = *a1;
    }

    *(v5 - 2) = 0;
    *(v5 - 3) = v8;
    v5[v8] = 0;
  }

  return a1;
}

const __int32 **std::wstring::erase(const __int32 **a1, size_t a2, unint64_t a3)
{
  v3 = *(*a1 - 3);
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    std::__throw_out_of_range("basic_string::erase");
  }

  if (v5 < a3)
  {
    a3 = v5;
  }

  std::wstring::_M_mutate(a1, a2, a3, 0);
  return a1;
}

int *std::wstring::reserve(int **a1, unint64_t a2)
{
  result = *a1;
  if (*(result - 2) != a2 || *(result - 2) >= 1)
  {
    v5 = *(result - 3);
    v4 = (result - 6);
    v6 = a2 - v5;
    if (a2 >= v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    result = std::wstring::_Rep::_M_clone(v4, &v10, v7);
    v8 = *a1 - 6;
    if (v8 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(*a1 - 2, 0xFFFFFFFF) <= 0)
    {
      v9 = result;
      operator delete(v8);
      result = v9;
    }

    *a1 = result;
  }

  return result;
}

const __int32 *std::wstring::operator[](const __int32 **a1, uint64_t a2)
{
  v3 = *a1;
  if ((*(*a1 - 2) & 0x80000000) == 0)
  {
    std::wstring::_M_leak_hard(a1);
    v3 = *a1;
  }

  return &v3[a2];
}

uint64_t std::wstring::at(void *a1, unint64_t a2)
{
  if (*(*a1 - 24) <= a2)
  {
    std::__throw_out_of_range("basic_string::at");
  }

  return *a1 + 4 * a2;
}

const __int32 *std::wstring::at(const __int32 **a1, unint64_t a2)
{
  v2 = *a1;
  if (*(*a1 - 3) <= a2)
  {
    std::__throw_out_of_range("basic_string::at");
  }

  if ((*(v2 - 2) & 0x80000000) == 0)
  {
    std::wstring::_M_leak_hard(a1);
    v2 = *a1;
  }

  return &v2[a2];
}

int **std::wstring::append(int **a1, const __int32 **a2)
{
  v4 = *a2;
  v5 = *(v4 - 3);
  if (v5)
  {
    v6 = *a1;
    v7 = *(*a1 - 3);
    v8 = v7 + v5;
    if (v7 + v5 > *(*a1 - 2) || *(v6 - 2) >= 1)
    {
      std::wstring::reserve(a1, v7 + v5);
      v6 = *a1;
      v7 = *(*a1 - 3);
      v4 = *a2;
    }

    v9 = &v6[v7];
    if (v5 == 1)
    {
      *v9 = *v4;
    }

    else
    {
      wmemcpy(v9, v4, v5);
      v6 = *a1;
    }

    *(v6 - 2) = 0;
    *(v6 - 3) = v8;
    v6[v8] = 0;
  }

  return a1;
}

int **std::wstring::operator+=(int **a1, __int32 *a2)
{
  v4 = wcslen(a2);

  return std::wstring::append(a1, a2, v4);
}

int **std::wstring::append(int **a1, __int32 *a2)
{
  v4 = wcslen(a2);

  return std::wstring::append(a1, a2, v4);
}

int **std::wstring::push_back(int **result, int a2)
{
  v3 = result;
  v4 = *result;
  v5 = *(*result - 3);
  v6 = v5 + 1;
  if ((v5 + 1) > *(*result - 2) || *(v4 - 2) >= 1)
  {
    result = std::wstring::reserve(result, v5 + 1);
    v4 = *v3;
    v5 = *(*v3 - 3);
  }

  v4[v5] = a2;
  *(v4 - 2) = 0;
  *(v4 - 3) = v6;
  v4[v6] = 0;
  return result;
}

int **std::wstring::append(int **a1, uint64_t *a2, unint64_t a3, size_t a4)
{
  v4 = *a2;
  v5 = *(*a2 - 24);
  v6 = v5 >= a3;
  v7 = v5 - a3;
  if (!v6)
  {
    std::__throw_out_of_range("basic_string::append");
  }

  if (v7 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    v12 = *a1;
    v13 = *(*a1 - 3);
    v14 = v13 + v9;
    if (v13 + v9 > *(*a1 - 2) || *(v12 - 2) >= 1)
    {
      std::wstring::reserve(a1, v13 + v9);
      v12 = *a1;
      v13 = *(*a1 - 3);
      v4 = *a2;
    }

    v15 = &v12[v13];
    v16 = (v4 + 4 * a3);
    if (v9 == 1)
    {
      *v15 = *v16;
    }

    else
    {
      wmemcpy(v15, v16, v9);
      v12 = *a1;
    }

    *(v12 - 2) = 0;
    *(v12 - 3) = v14;
    v12[v14] = 0;
  }

  return a1;
}

int **std::wstring::append(int **a1, __int32 *a2, size_t a3)
{
  if (a3)
  {
    v5 = *a1;
    v6 = *(*a1 - 3);
    if (0xFFFFFFFFFFFFFFELL - v6 < a3)
    {
      std::__throw_length_error("basic_string::append");
    }

    v7 = a2;
    v8 = v6 + a3;
    if (v6 + a3 > *(v5 - 2) || *(v5 - 2) >= 1)
    {
      v9 = &v5[v6];
      if (v5 <= a2 && v9 >= a2)
      {
        v11 = (a2 - v5);
        std::wstring::reserve(a1, v8);
        v5 = *a1;
        v7 = &v11[*a1];
      }

      else
      {
        std::wstring::reserve(a1, v8);
        v5 = *a1;
      }
    }

    v12 = &v5[*(v5 - 3)];
    if (a3 == 1)
    {
      *v12 = *v7;
    }

    else
    {
      wmemcpy(v12, v7, a3);
      v5 = *a1;
    }

    *(v5 - 2) = 0;
    *(v5 - 3) = v8;
    v5[v8] = 0;
  }

  return a1;
}

const __int32 **std::wstring::assign(const __int32 **a1, void *a2, unint64_t a3, size_t a4)
{
  v5 = *(*a2 - 24);
  v6 = v5 >= a3;
  v7 = v5 - a3;
  if (!v6)
  {
    std::__throw_out_of_range("basic_string::assign");
  }

  v8 = (*a2 + 4 * a3);
  if (v7 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = v7;
  }

  return std::wstring::assign(a1, v8, v9);
}

const __int32 **std::wstring::assign(const __int32 **a1, __int32 *a2, size_t a3)
{
  if (a3 >= 0xFFFFFFFFFFFFFFFLL)
  {
    std::__throw_length_error("basic_string::assign");
  }

  v5 = *a1;
  v6 = *(v5 - 3);
  v7 = v5 <= a2 && &v5[v6] >= a2;
  if (v7 && *(v5 - 2) < 1)
  {
    if (a3 <= a2 - v5)
    {
      if (a3 != 1)
      {
        wmemcpy(v5, a2, a3);
        goto LABEL_18;
      }
    }

    else
    {
      if (v5 == a2)
      {
LABEL_18:
        v9 = *a1;
        *(v9 - 2) = 0;
        *(v9 - 3) = a3;
        v9[a3] = 0;
        return a1;
      }

      if (a3 != 1)
      {
        wmemmove(v5, a2, a3);
        goto LABEL_18;
      }
    }

    *v5 = *a2;
    goto LABEL_18;
  }

  return std::wstring::_M_replace_safe(a1, 0, v6, a2, a3);
}

const __int32 **std::wstring::_M_replace_safe(const __int32 **a1, size_t a2, uint64_t a3, const __int32 *a4, size_t a5)
{
  std::wstring::_M_mutate(a1, a2, a3, a5);
  if (a5)
  {
    v9 = &(*a1)[a2];
    if (a5 == 1)
    {
      *v9 = *a4;
    }

    else
    {
      wmemcpy(v9, a4, a5);
    }
  }

  return a1;
}

const __int32 **std::wstring::_M_replace_aux(const __int32 **a1, size_t a2, uint64_t a3, unint64_t a4, __int32 a5)
{
  if (a3 - *(*a1 - 3) + 0xFFFFFFFFFFFFFFELL < a4)
  {
    std::__throw_length_error("basic_string::_M_replace_aux");
  }

  std::wstring::_M_mutate(a1, a2, a3, a4);
  if (a4)
  {
    v9 = &(*a1)[a2];
    if (a4 == 1)
    {
      *v9 = a5;
    }

    else
    {
      wmemset(v9, a5, a4);
    }
  }

  return a1;
}

const __int32 **std::wstring::insert(const __int32 **a1, size_t a2, void *a3, unint64_t a4, unint64_t a5)
{
  v6 = *(*a3 - 24);
  v7 = v6 >= a4;
  v8 = v6 - a4;
  if (!v7)
  {
    std::__throw_out_of_range("basic_string::insert");
  }

  v9 = (*a3 + 4 * a4);
  if (v8 >= a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = v8;
  }

  return std::wstring::insert(a1, a2, v9, v10);
}

const __int32 **std::wstring::insert(const __int32 **a1, size_t a2, const __int32 *a3, unint64_t a4)
{
  v4 = *a1;
  v5 = *(*a1 - 3);
  if (v5 < a2)
  {
    std::__throw_out_of_range("basic_string::insert");
  }

  if (0xFFFFFFFFFFFFFFELL - v5 < a4)
  {
    std::__throw_length_error("basic_string::insert");
  }

  v9 = &v4[v5];
  v10 = v4 <= a3 && v9 >= a3;
  if (v10 && *(v4 - 2) < 1)
  {
    v12 = a3 - v4;
    std::wstring::_M_mutate(a1, a2, 0, a4);
    v13 = (*a1 + v12);
    v14 = &(*a1)[a2];
    v15 = &v13[a4];
    if (v15 <= v14)
    {
      if (a4 == 1)
      {
        v19 = *v13;
LABEL_20:
        *v14 = v19;
        return a1;
      }

      v20 = &(*a1)[a2];
    }

    else
    {
      v16 = __OFSUB__(4 * a2, v12);
      v17 = 4 * a2 - v12;
      if (!((v17 < 0) ^ v16 | (v17 == 0)))
      {
        v18 = v17 >> 2;
        if (v17 == 4)
        {
          *v14 = *v13;
        }

        else
        {
          wmemcpy(v14, v13, v17 >> 2);
        }

        v13 = &v14[a4];
        v21 = a4 - v18;
        if (a4 - v18 == 1)
        {
          *(v14 + v17) = *v13;
          return a1;
        }

        v20 = (v14 + v17);
LABEL_28:
        wmemcpy(v20, v13, v21);
        return a1;
      }

      if (a4 == 1)
      {
        v19 = *v15;
        goto LABEL_20;
      }

      v20 = &(*a1)[a2];
      v13 += a4;
    }

    v21 = a4;
    goto LABEL_28;
  }

  return std::wstring::_M_replace_safe(a1, a2, 0, a3, a4);
}

const __int32 **std::wstring::insert(const __int32 **a1, size_t a2, __int32 *a3)
{
  v6 = wcslen(a3);

  return std::wstring::insert(a1, a2, a3, v6);
}

const __int32 **std::wstring::insert(const __int32 **a1, size_t a2, unint64_t a3, __int32 a4)
{
  if (*(*a1 - 3) < a2)
  {
    std::__throw_out_of_range("basic_string::insert");
  }

  return std::wstring::_M_replace_aux(a1, a2, 0, a3, a4);
}

char *std::wstring::insert(const __int32 **a1, uint64_t a2, __int32 a3)
{
  v4 = a2 - *a1;
  std::wstring::_M_replace_aux(a1, v4 >> 2, 0, 1uLL, a3);
  v5 = *a1;
  *(v5 - 2) = -1;
  return v5 + v4;
}

char *std::wstring::erase(const __int32 **a1, uint64_t a2)
{
  v3 = a2 - *a1;
  std::wstring::_M_mutate(a1, v3 >> 2, 1, 0);
  v4 = *a1;
  *(v4 - 2) = -1;
  return v4 + v3;
}

char *std::wstring::erase(const __int32 **a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 - *a1;
  std::wstring::_M_mutate(a1, v4 >> 2, (a3 - a2) >> 2, 0);
  v5 = *a1;
  *(v5 - 2) = -1;
  return v5 + v4;
}

const __int32 **std::wstring::replace(const __int32 **a1, size_t a2, unint64_t a3, const __int32 *a4, unint64_t a5)
{
  v5 = *a1;
  v6 = *(*a1 - 3);
  if (v6 < a2)
  {
    std::__throw_out_of_range("basic_string::replace");
  }

  if (v6 - a2 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v6 - a2;
  }

  if (v8 - v6 + 0xFFFFFFFFFFFFFFELL < a5)
  {
    std::__throw_length_error("basic_string::replace");
  }

  v10 = a1;
  v11 = &v5[v6];
  v12 = v5 <= a4 && v11 >= a4;
  if (v12 && *(v5 - 2) < 1)
  {
    v14 = &a4[a5];
    v15 = &v5[a2];
    if (v14 <= v15 || &v15[v8] <= a4)
    {
      v17 = a4 - v5;
      if (v14 <= v15)
      {
        v18 = 0;
      }

      else
      {
        v18 = a5 - v8;
      }

      std::wstring::_M_mutate(a1, a2, v8, a5);
      v19 = &(*v10)[a2];
      v20 = (&(*v10)[v18] + v17);
      if (a5 == 1)
      {
        *v19 = *v20;
      }

      else
      {
        wmemcpy(v19, v20, a5);
      }
    }

    else
    {
      v16 = std::wstring::_S_construct<wchar_t const*>(a4, v14);
      v10 = std::wstring::_M_replace_safe(v10, a2, v8, v16, a5);
      if (v16 - 6 != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add(v16 - 2, 0xFFFFFFFF) <= 0)
      {
        operator delete(v16 - 6);
      }
    }

    return v10;
  }

  else
  {

    return std::wstring::_M_replace_safe(a1, a2, v8, a4, a5);
  }
}

void sub_48450(_Unwind_Exception *exception_object)
{
  if ((v1 - 24) != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add((v1 - 8), 0xFFFFFFFF) <= 0)
  {
    operator delete((v1 - 24));
  }

  _Unwind_Resume(exception_object);
}

const __int32 **std::wstring::replace(const __int32 **a1, size_t a2, unint64_t a3, void *a4, unint64_t a5, unint64_t a6)
{
  v7 = *(*a4 - 24);
  v8 = v7 >= a5;
  v9 = v7 - a5;
  if (!v8)
  {
    std::__throw_out_of_range("basic_string::replace");
  }

  v10 = (*a4 + 4 * a5);
  if (v9 >= a6)
  {
    v11 = a6;
  }

  else
  {
    v11 = v9;
  }

  return std::wstring::replace(a1, a2, a3, v10, v11);
}

const __int32 **std::wstring::replace(const __int32 **a1, size_t a2, unint64_t a3, __int32 *a4)
{
  v8 = wcslen(a4);

  return std::wstring::replace(a1, a2, a3, a4, v8);
}

const __int32 **std::wstring::replace(const __int32 **a1, size_t a2, unint64_t a3, unint64_t a4, __int32 a5)
{
  v6 = *(*a1 - 3);
  v7 = v6 >= a2;
  v8 = v6 - a2;
  if (!v7)
  {
    std::__throw_out_of_range("basic_string::replace");
  }

  if (v8 < a3)
  {
    a3 = v8;
  }

  return std::wstring::_M_replace_aux(a1, a2, a3, a4, a5);
}

const __int32 **std::wstring::replace(const __int32 **a1, uint64_t a2, uint64_t a3, __int32 *a4)
{
  v8 = wcslen(a4);
  v9 = (a2 - *a1) >> 2;

  return std::wstring::replace(a1, v9, (a3 - a2) >> 2, a4, v8);
}

const __int32 **std::wstring::replace(const __int32 **a1, uint64_t a2, uint64_t a3, const __int32 *a4, uint64_t a5)
{
  return std::wstring::replace(a1, (a2 - *a1) >> 2, (a3 - a2) >> 2, a4, (a5 - a4) >> 2);
}

{
  return std::wstring::replace(a1, (a2 - *a1) >> 2, (a3 - a2) >> 2, a4, (a5 - a4) >> 2);
}

{
  return std::wstring::replace(a1, (a2 - *a1) >> 2, (a3 - a2) >> 2, a4, (a5 - a4) >> 2);
}

{
  return std::wstring::replace(a1, (a2 - *a1) >> 2, (a3 - a2) >> 2, a4, (a5 - a4) >> 2);
}

size_t std::wstring::copy(void *a1, __int32 *a2, size_t a3, unint64_t a4)
{
  v4 = *(*a1 - 24);
  v5 = v4 >= a4;
  v6 = v4 - a4;
  if (!v5)
  {
    std::__throw_out_of_range("basic_string::copy");
  }

  if (v6 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    v8 = (*a1 + 4 * a4);
    if (v7 == 1)
    {
      *a2 = *v8;
    }

    else
    {
      wmemcpy(a2, v8, v7);
    }
  }

  return v7;
}

uint64_t *std::wstring::swap(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  if ((*(*result - 8) & 0x80000000) != 0)
  {
    *(v2 - 8) = 0;
  }

  v3 = *a2;
  if ((*(*a2 - 8) & 0x80000000) != 0)
  {
    *(v3 - 8) = 0;
  }

  *result = v3;
  *a2 = v2;
  return result;
}

__int32 **std::wstring::basic_string<__gnu_cxx::__normal_iterator<wchar_t *,std::wstring>>(__int32 **a1, const __int32 *a2, const __int32 *a3)
{
  *a1 = std::wstring::_S_construct<__gnu_cxx::__normal_iterator<wchar_t *,std::wstring>>(a2, a3);
  return a1;
}

{
  *a1 = std::wstring::_S_construct<__gnu_cxx::__normal_iterator<wchar_t *,std::wstring>>(a2, a3);
  return a1;
}

uint64_t std::wstring::find(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a3;
  v5 = *a1;
  v6 = *(*a1 - 24);
  if (a4)
  {
    v7 = v6 - a4;
    if (v6 < a4 || v7 < a3)
    {
      return -1;
    }

    else
    {
      v9 = a4 - 1;
      for (i = 4 * a3 + 4; *(v5 + 4 * v4) != *a2 || wmemcmp((v5 + i), (a2 + 4), v9); i += 4)
      {
        if (++v4 > v7)
        {
          return -1;
        }
      }
    }
  }

  else if (v6 < a3)
  {
    return -1;
  }

  return v4;
}

uint64_t std::wstring::find(uint64_t *a1, __int32 *a2, unint64_t a3)
{
  v6 = wcslen(a2);

  return std::wstring::find(a1, a2, a3, v6);
}

uint64_t std::wstring::find(uint64_t *a1, __int32 a2, unint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 - 24);
  v5 = v4 > a3;
  v6 = v4 - a3;
  if (!v5)
  {
    return -1;
  }

  v7 = wmemchr((v3 + 4 * a3), a2, v6);
  if (v7)
  {
    return (v7 - v3) >> 2;
  }

  else
  {
    return -1;
  }
}

size_t std::wstring::rfind(void *a1, __int32 *a2, size_t a3, size_t a4)
{
  v4 = *(*a1 - 24);
  v5 = v4 >= a4;
  v6 = v4 - a4;
  if (!v5)
  {
    return -1;
  }

  if (v6 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v6;
  }

  v10 = (*a1 + 4 * v7);
  do
  {
    if (!wmemcmp(v10, a2, a4))
    {
      break;
    }

    --v7;
    --v10;
  }

  while (v7 != -1);
  return v7;
}

size_t std::wstring::rfind(void *a1, __int32 *a2, size_t a3)
{
  v6 = wcslen(a2);

  return std::wstring::rfind(a1, a2, a3, v6);
}

uint64_t std::wstring::rfind(uint64_t *a1, int a2, unint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 - 24);
  if (v4)
  {
    if (v4 - 1 > a3)
    {
      result = a3 + 1;
    }

    else
    {
      result = *(*a1 - 24);
    }

    if (a3 >= v4 - 1)
    {
      v6 = v4 - 1;
    }

    else
    {
      v6 = a3;
    }

    v7 = (v3 + 4 * v6);
    while (result)
    {
      --result;
      v8 = *v7--;
      if (v8 == a2)
      {
        return result;
      }
    }
  }

  return -1;
}

uint64_t std::wstring::find_first_of(uint64_t *a1, __int32 **a2, unint64_t a3)
{
  v3 = *a2;
  v4 = *(*a2 - 3);
  if (!v4)
  {
    return -1;
  }

  v5 = a3;
  v7 = *a1;
  if (*(*a1 - 24) <= a3)
  {
    return -1;
  }

  while (!wmemchr(v3, *(v7 + 4 * v5), v4))
  {
    ++v5;
    v7 = *a1;
    if (v5 >= *(*a1 - 24))
    {
      return -1;
    }
  }

  return v5;
}

unint64_t std::wstring::find_first_of(uint64_t *a1, __int32 *__s, unint64_t a3, size_t __n)
{
  if (!__n)
  {
    return -1;
  }

  v4 = a3;
  v6 = *a1;
  if (*(*a1 - 24) <= a3)
  {
    return -1;
  }

  while (!wmemchr(__s, *(v6 + 4 * v4), __n))
  {
    ++v4;
    v6 = *a1;
    if (v4 >= *(*a1 - 24))
    {
      return -1;
    }
  }

  return v4;
}

unint64_t std::wstring::find_first_of(uint64_t *a1, __int32 *a2, unint64_t a3)
{
  v6 = wcslen(a2);
  if (!v6)
  {
    return -1;
  }

  v7 = *a1;
  if (*(*a1 - 24) <= a3)
  {
    return -1;
  }

  v8 = v6;
  while (!wmemchr(a2, *(v7 + 4 * a3), v8))
  {
    ++a3;
    v7 = *a1;
    if (a3 >= *(*a1 - 24))
    {
      return -1;
    }
  }

  return a3;
}

uint64_t std::wstring::find_first_of(uint64_t *a1, __int32 a2, unint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 - 24);
  v5 = v4 > a3;
  v6 = v4 - a3;
  if (!v5)
  {
    return -1;
  }

  v7 = wmemchr((v3 + 4 * a3), a2, v6);
  if (v7)
  {
    return (v7 - v3) >> 2;
  }

  else
  {
    return -1;
  }
}

uint64_t std::wstring::find_last_of(void *a1, __int32 *__s, unint64_t a3, size_t __n)
{
  v4 = -1;
  if (__n)
  {
    v6 = *(*a1 - 24);
    if (v6)
    {
      v9 = v6 - 1;
      if (v9 >= a3)
      {
        v4 = a3;
      }

      else
      {
        v4 = v9;
      }

      do
      {
        if (wmemchr(__s, *(*a1 + 4 * v4), __n))
        {
          break;
        }

        --v4;
      }

      while (v4 != -1);
    }
  }

  return v4;
}

uint64_t std::wstring::find_last_of(void *a1, __int32 *a2, unint64_t a3)
{
  v6 = wcslen(a2);

  return std::wstring::find_last_of(a1, a2, a3, v6);
}

uint64_t std::wstring::find_last_of(uint64_t *a1, int a2, unint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 - 24);
  if (v4)
  {
    if (v4 - 1 > a3)
    {
      result = a3 + 1;
    }

    else
    {
      result = *(*a1 - 24);
    }

    if (a3 >= v4 - 1)
    {
      v6 = v4 - 1;
    }

    else
    {
      v6 = a3;
    }

    v7 = (v3 + 4 * v6);
    while (result)
    {
      --result;
      v8 = *v7--;
      if (v8 == a2)
      {
        return result;
      }
    }
  }

  return -1;
}

unint64_t std::wstring::find_first_not_of(uint64_t *a1, __int32 *__s, unint64_t a3, size_t __n)
{
  v4 = *a1;
  if (*(*a1 - 24) <= a3)
  {
    return -1;
  }

  v6 = a3;
  while (wmemchr(__s, *(v4 + 4 * v6), __n))
  {
    ++v6;
    v4 = *a1;
    if (v6 >= *(*a1 - 24))
    {
      return -1;
    }
  }

  return v6;
}

unint64_t std::wstring::find_first_not_of(uint64_t *a1, __int32 *a2, unint64_t a3)
{
  v6 = wcslen(a2);

  return std::wstring::find_first_not_of(a1, a2, a3, v6);
}

uint64_t std::wstring::find_first_not_of(void *a1, int a2, unint64_t a3)
{
  v3 = *(*a1 - 24);
  if (v3 <= a3)
  {
    return -1;
  }

  while (*(*a1 + 4 * a3) == a2)
  {
    if (v3 == ++a3)
    {
      return -1;
    }
  }

  return a3;
}

unint64_t std::wstring::find_last_not_of(void *a1, __int32 *__s, unint64_t a3, size_t __n)
{
  v4 = *(*a1 - 24);
  if (!v4)
  {
    return -1;
  }

  v8 = v4 - 1;
  if (v8 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v8;
  }

  do
  {
    if (!wmemchr(__s, *(*a1 + 4 * v9), __n))
    {
      break;
    }

    --v9;
  }

  while (v9 != -1);
  return v9;
}

unint64_t std::wstring::find_last_not_of(void *a1, __int32 *a2, unint64_t a3)
{
  v6 = wcslen(a2);

  return std::wstring::find_last_not_of(a1, a2, a3, v6);
}

uint64_t std::wstring::find_last_not_of(uint64_t *a1, int a2, unint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 - 24);
  if (!v4)
  {
    return -1;
  }

  v5 = v4 - 1;
  if (v5 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v5;
  }

  do
  {
    if (*(v3 + 4 * result) != a2)
    {
      break;
    }

    --result;
  }

  while (result != -1);
  return result;
}

__int32 **std::wstring::substr@<X0>(void *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __int32 **a4@<X8>)
{
  if (*(*a1 - 24) < a2)
  {
    std::__throw_out_of_range("basic_string::substr");
  }

  return std::wstring::basic_string(a4, a1, a2, a3);
}

uint64_t std::wstring::compare(const __int32 **a1, const __int32 **a2)
{
  v2 = *a1;
  v3 = *(v2 - 3);
  v4 = *a2;
  v5 = *(v4 - 3);
  if (v3 >= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5 >= v3)
  {
    v7 = *(v2 - 3);
  }

  else
  {
    v7 = *(v4 - 3);
  }

  if (v5 < v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  LODWORD(result) = wmemcmp(v2, v4, v7);
  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

uint64_t std::wstring::compare(void *a1, unint64_t a2, size_t a3, const __int32 **a4)
{
  v4 = *(*a1 - 24);
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (!v5)
  {
    std::__throw_out_of_range("basic_string::compare");
  }

  if (v6 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*a4 - 3);
  if (v7 >= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v8 >= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(*a4 - 3);
  }

  v11 = (*a1 + 4 * a2);
  if (v8 < v7)
  {
    v12 = 1;
  }

  else
  {
    v12 = v9;
  }

  LODWORD(result) = wmemcmp(v11, *a4, v10);
  if (result)
  {
    return result;
  }

  else
  {
    return v12;
  }
}

uint64_t std::wstring::compare(void *a1, unint64_t a2, size_t a3, void *a4, unint64_t a5, size_t a6)
{
  v6 = *(*a1 - 24);
  v7 = v6 - a2;
  if (v6 < a2 || (v8 = *(*a4 - 24), v9 = v8 >= a5, v10 = v8 - a5, !v9))
  {
    std::__throw_out_of_range("basic_string::compare");
  }

  if (v7 >= a3)
  {
    v7 = a3;
  }

  if (v10 >= a6)
  {
    v10 = a6;
  }

  if (v7 >= v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  if (v10 >= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v10;
  }

  v13 = (*a1 + 4 * a2);
  if (v10 < v7)
  {
    v14 = 1;
  }

  else
  {
    v14 = v11;
  }

  LODWORD(result) = wmemcmp(v13, (*a4 + 4 * a5), v12);
  if (result)
  {
    return result;
  }

  else
  {
    return v14;
  }
}

uint64_t std::wstring::compare(const __int32 **a1, __int32 *a2)
{
  v3 = *a1;
  v4 = *(*a1 - 3);
  v5 = wcslen(a2);
  if (v4 >= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v5 < v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  LODWORD(result) = wmemcmp(v3, a2, v7);
  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

uint64_t std::wstring::compare(uint64_t *a1, unint64_t a2, size_t a3, __int32 *a4)
{
  v4 = *a1;
  v5 = *(*a1 - 24);
  v12 = v5 >= a2;
  v6 = v5 - a2;
  if (!v12)
  {
    std::__throw_out_of_range("basic_string::compare");
  }

  if (v6 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v6;
  }

  v10 = wcslen(a4);
  if (v9 >= v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  v12 = v10 >= v9;
  if (v10 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v10;
  }

  v14 = (v4 + 4 * a2);
  if (v12)
  {
    v15 = v11;
  }

  else
  {
    v15 = 1;
  }

  LODWORD(result) = wmemcmp(v14, a4, v13);
  if (result)
  {
    return result;
  }

  else
  {
    return v15;
  }
}

uint64_t std::wstring::compare(void *a1, unint64_t a2, size_t a3, __int32 *a4, size_t a5)
{
  v5 = *(*a1 - 24);
  v6 = v5 >= a2;
  v7 = v5 - a2;
  if (!v6)
  {
    std::__throw_out_of_range("basic_string::compare");
  }

  if (v7 >= a3)
  {
    v7 = a3;
  }

  if (v7 >= a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = v7;
  }

  v9 = (*a1 + 4 * a2);
  if (v7 >= a5)
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

  if (v7 > a5)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  LODWORD(result) = wmemcmp(v9, a4, v8);
  if (result)
  {
    return result;
  }

  else
  {
    return v11;
  }
}

int **std::operator+<wchar_t>@<X0>(__int32 *a1@<X0>, const __int32 **a2@<X1>, int **a3@<X8>)
{
  v6 = wcslen(a1);
  *a3 = &unk_606A0;
  std::wstring::reserve(a3, *(*a2 - 3) + v6);
  std::wstring::append(a3, a1, v6);
  return std::wstring::append(a3, a2);
}

void sub_49254(_Unwind_Exception *exception_object)
{
  v4 = (*v1 - 24);
  if (v4 != v2 && atomic_fetch_add((*v1 - 8), 0xFFFFFFFF) <= 0)
  {
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

int **std::operator+<wchar_t>@<X0>(__int32 a1@<W0>, const __int32 **a2@<X1>, int **a3@<X8>)
{
  *a3 = &unk_606A0;
  std::wstring::reserve(a3, *(*a2 - 3) + 1);
  std::wstring::append(a3, 1uLL, a1);
  return std::wstring::append(a3, a2);
}

void sub_492FC(_Unwind_Exception *exception_object)
{
  v4 = (*v1 - 24);
  if (v4 != v2 && atomic_fetch_add((*v1 - 8), 0xFFFFFFFF) <= 0)
  {
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_49370(_Unwind_Exception *exception_object)
{
  v2 = v1;
  v4 = *v2;
  if ((v4 - 24) != &std::wstring::_Rep::_S_empty_rep_storage && atomic_fetch_add((v4 - 8), 0xFFFFFFFF) <= 0)
  {
    operator delete((v4 - 24));
  }

  _Unwind_Resume(exception_object);
}

__int32 **std::wstring::basic_string<wchar_t *>(__int32 **a1, const __int32 *a2, const __int32 *a3)
{
  *a1 = std::wstring::_S_construct<wchar_t *>(a2, a3);
  return a1;
}

{
  *a1 = std::wstring::_S_construct<wchar_t *>(a2, a3);
  return a1;
}

__int32 **std::wstring::basic_string<wchar_t const*>(__int32 **a1, const __int32 *a2, const __int32 *a3)
{
  *a1 = std::wstring::_S_construct<wchar_t const*>(a2, a3);
  return a1;
}

{
  *a1 = std::wstring::_S_construct<wchar_t const*>(a2, a3);
  return a1;
}

__int32 *std::wstring::_S_construct<__gnu_cxx::__normal_iterator<wchar_t *,std::wstring>>(const __int32 *a1, const __int32 *a2)
{
  v2 = a2 - a1;
  if (a2 == a1)
  {
    return &unk_606A0;
  }

  v5 = std::wstring::_Rep::_S_create(v2 >> 2, 0);
  v6 = v5;
  v3 = v5 + 6;
  if (v2 == 4)
  {
    *v3 = *a1;
  }

  else
  {
    wmemcpy(v5 + 6, a1, v2 >> 2);
  }

  v6[4] = 0;
  *v6 = v2 >> 2;
  *(v3 + v2) = 0;
  return v3;
}

__int32 *std::wstring::_S_construct<wchar_t *>(const __int32 *a1, const __int32 *a2)
{
  if (a1 == a2)
  {
    return &unk_606A0;
  }

  if (!a1)
  {
    std::string::_S_construct<char *>();
  }

  v3 = a2 - a1;
  v4 = a2 - a1;
  v5 = std::wstring::_Rep::_S_create(v4, 0);
  v6 = v5;
  v7 = v5 + 6;
  if (v3 == 4)
  {
    *v7 = *a1;
  }

  else
  {
    wmemcpy(v5 + 6, a1, v4);
  }

  v6[4] = 0;
  *v6 = v4;
  *(v7 + v3) = 0;
  return v7;
}

__int32 *std::wstring::_S_construct<wchar_t const*>(const __int32 *a1, const __int32 *a2)
{
  if (a1 == a2)
  {
    return &unk_606A0;
  }

  if (!a1)
  {
    std::string::_S_construct<char *>();
  }

  v3 = a2 - a1;
  v4 = a2 - a1;
  v5 = std::wstring::_Rep::_S_create(v4, 0);
  v6 = v5;
  v7 = v5 + 6;
  if (v3 == 4)
  {
    *v7 = *a1;
  }

  else
  {
    wmemcpy(v5 + 6, a1, v4);
  }

  v6[4] = 0;
  *v6 = v4;
  *(v7 + v3) = 0;
  return v7;
}

uint64_t std::search<wchar_t const*,wchar_t const*,BOOL (*)(wchar_t const&,wchar_t const&)>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = a1;
  if (a1 != a2 && a3 != a4)
  {
    if (a3 + 4 != a4)
    {
      while (1)
      {
        if (a5(v5, a3))
        {
          v10 = v5;
LABEL_7:
          if (v10 == a2)
          {
            return a2;
          }

          while (1)
          {
            v5 = v10 + 4;
            if (a5(v10, a3))
            {
              break;
            }

            v10 += 4;
            if (v5 == a2)
            {
              return a2;
            }
          }

          if (v5 == a2)
          {
            return a2;
          }

          v11 = a3 + 8;
          v12 = v10 + 4;
          while (a5(v12, v11 - 4))
          {
            if (v11 == a4)
            {
              return v10;
            }

            v12 += 4;
            v11 += 4;
            if (v12 == a2)
            {
              return a2;
            }
          }
        }

        else
        {
          v5 += 4;
          v10 = v5;
          if (v5 == a2)
          {
            goto LABEL_7;
          }
        }
      }
    }

    do
    {
      if (a5(v5, a3))
      {
        break;
      }

      v5 += 4;
    }

    while (v5 != a2);
  }

  return v5;
}

uint64_t std::codecvt<wchar_t,char,__mbstate_t>::do_out(int a1, _OWORD *a2, __int32 *a3, unint64_t a4, __int32 **a5, char *a6, unint64_t a7, char **a8)
{
  v9 = a6;
  v12 = a3;
  v14 = a2[5];
  *(&v32._mbstateL + 4) = a2[4];
  *(&v32._mbstateL + 5) = v14;
  v15 = a2[7];
  *(&v32._mbstateL + 6) = a2[6];
  *(&v32._mbstateL + 7) = v15;
  v16 = a2[1];
  *v32.__mbstate8 = *a2;
  *(&v32._mbstateL + 1) = v16;
  v17 = a2[3];
  *(&v32._mbstateL + 2) = a2[2];
  *(&v32._mbstateL + 3) = v17;
  if (&a6[((a4 - a3) >> 2) * __mb_cur_max - a7] <= 0)
  {
    while (1)
    {
      if (v12 >= a4)
      {
        result = 0;
        goto LABEL_14;
      }

      v26 = wcrtomb(v9, *v12, &v32);
      if (v26 == -1)
      {
        break;
      }

      v27 = *(&v32._mbstateL + 5);
      a2[4] = *(&v32._mbstateL + 4);
      a2[5] = v27;
      v28 = *(&v32._mbstateL + 7);
      a2[6] = *(&v32._mbstateL + 6);
      a2[7] = v28;
      v29 = *(&v32._mbstateL + 1);
      *a2 = *v32.__mbstate8;
      a2[1] = v29;
      v30 = *(&v32._mbstateL + 3);
      v9 += v26;
      ++v12;
      a2[2] = *(&v32._mbstateL + 2);
      a2[3] = v30;
    }

LABEL_12:
    result = 2;
  }

  else
  {
    if (a3 < a4)
    {
      while (v9 < a7)
      {
        v19 = wcrtomb(__src, *v12, &v32);
        if (v19 == -1)
        {
          goto LABEL_12;
        }

        v20 = v19;
        if (v19 > a7 - v9)
        {
          result = 1;
          goto LABEL_14;
        }

        memcpy(v9, __src, v19);
        v21 = *(&v32._mbstateL + 5);
        a2[4] = *(&v32._mbstateL + 4);
        a2[5] = v21;
        v22 = *(&v32._mbstateL + 7);
        a2[6] = *(&v32._mbstateL + 6);
        a2[7] = v22;
        v23 = *(&v32._mbstateL + 1);
        *a2 = *v32.__mbstate8;
        a2[1] = v23;
        v24 = *(&v32._mbstateL + 3);
        v9 += v20;
        ++v12;
        a2[2] = *(&v32._mbstateL + 2);
        a2[3] = v24;
        if (v12 >= a4)
        {
          break;
        }
      }
    }

    result = v12 < a4;
  }

LABEL_14:
  *a5 = v12;
  *a8 = v9;
  return result;
}

uint64_t std::codecvt<wchar_t,char,__mbstate_t>::do_in(int a1, _OWORD *a2, char *a3, unint64_t a4, const char **a5, __int32 *a6, unint64_t a7, __int32 **a8)
{
  v9 = a6;
  v12 = a3;
  v13 = a2[5];
  *(&v25._mbstateL + 4) = a2[4];
  *(&v25._mbstateL + 5) = v13;
  v14 = a2[7];
  *(&v25._mbstateL + 6) = a2[6];
  *(&v25._mbstateL + 7) = v14;
  v15 = a2[1];
  *v25.__mbstate8 = *a2;
  *(&v25._mbstateL + 1) = v15;
  v16 = a2[3];
  *(&v25._mbstateL + 2) = a2[2];
  for (*(&v25._mbstateL + 3) = v16; v12 < a4 && v9 < a7; a2[3] = v23)
  {
    v19 = mbrtowc(v9, v12, a4 - v12, &v25);
    if (v19)
    {
      if (v19 == -2)
      {
        result = 1;
        goto LABEL_11;
      }

      if (v19 == -1)
      {
        result = 2;
        goto LABEL_11;
      }
    }

    else
    {
      *v9 = 0;
      v19 = 1;
    }

    v20 = *(&v25._mbstateL + 5);
    a2[4] = *(&v25._mbstateL + 4);
    a2[5] = v20;
    v21 = *(&v25._mbstateL + 7);
    a2[6] = *(&v25._mbstateL + 6);
    a2[7] = v21;
    v22 = *(&v25._mbstateL + 1);
    *a2 = *v25.__mbstate8;
    a2[1] = v22;
    v23 = *(&v25._mbstateL + 3);
    ++v9;
    v12 += v19;
    a2[2] = *(&v25._mbstateL + 2);
  }

  result = v12 < a4;
LABEL_11:
  *a5 = v12;
  *a8 = v9;
  return result;
}

uint64_t std::codecvt<wchar_t,char,__mbstate_t>::do_length(int a1, _OWORD *a2, char *a3, unint64_t a4, uint64_t a5)
{
  v5 = 0;
  v6 = a2[5];
  *(&v23._mbstateL + 4) = a2[4];
  *(&v23._mbstateL + 5) = v6;
  v7 = a2[7];
  *(&v23._mbstateL + 6) = a2[6];
  *(&v23._mbstateL + 7) = v7;
  v8 = a2[1];
  *v23.__mbstate8 = *a2;
  *(&v23._mbstateL + 1) = v8;
  v9 = a2[3];
  *(&v23._mbstateL + 2) = a2[2];
  *(&v23._mbstateL + 3) = v9;
  if (a3 < a4 && a5)
  {
    v11 = a3;
    v5 = 0;
    v13 = a5 - 1;
    do
    {
      v14 = mbrtowc(0, v11, a4 - v11, &v23);
      if (v14 > 0xFFFFFFFFFFFFFFFDLL)
      {
        break;
      }

      v15 = v14 <= 1 ? 1 : v14;
      v16 = *(&v23._mbstateL + 5);
      a2[4] = *(&v23._mbstateL + 4);
      a2[5] = v16;
      v17 = *(&v23._mbstateL + 7);
      a2[6] = *(&v23._mbstateL + 6);
      a2[7] = v17;
      v18 = *(&v23._mbstateL + 1);
      *a2 = *v23.__mbstate8;
      a2[1] = v18;
      v19 = *(&v23._mbstateL + 3);
      v11 += v15;
      v5 = (v5 + v15);
      v20 = v13-- != 0;
      v21 = v20;
      a2[2] = *(&v23._mbstateL + 2);
      a2[3] = v19;
      if (v11 >= a4)
      {
        break;
      }
    }

    while (v21);
  }

  return v5;
}

uint64_t std::ctype_byname<char>::ctype_byname(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *std::ctype<char>::ctype(a1, 0, 0, a3) = off_5E2D0;
  if (*a2 != 67 || *(a2 + 1))
  {
    if (strcmp(a2, "POSIX"))
    {
      std::locale::facet::_S_destroy_c_locale((a1 + 16), v5);
      std::locale::facet::_S_create_c_locale((a1 + 16), a2, 0, v6);
    }
  }

  return a1;
}

unint64_t std::ctype<wchar_t>::do_toupper(uint64_t a1, __darwin_ct_rune_t *a2, unint64_t a3)
{
  if (a2 < a3)
  {
    v4 = a2;
    do
    {
      *v4 = __toupper(*v4);
      ++v4;
    }

    while (v4 < a3);
  }

  return a3;
}

unint64_t std::ctype<wchar_t>::do_tolower(uint64_t a1, __darwin_ct_rune_t *a2, unint64_t a3)
{
  if (a2 < a3)
  {
    v4 = a2;
    do
    {
      *v4 = __tolower(*v4);
      ++v4;
    }

    while (v4 < a3);
  }

  return a3;
}

unsigned __int8 *std::ctype<wchar_t>::do_widen(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, _DWORD *a4)
{
  if (a2 < a3)
  {
    do
    {
      v4 = *a2++;
      *a4++ = *(a1 + 156 + 4 * v4);
    }

    while (a2 != a3);
  }

  return a3;
}

uint64_t std::ctype<wchar_t>::do_narrow(uint64_t a1, unsigned int a2, char a3)
{
  if (a2 <= 0x7F && *(a1 + 24) == 1)
  {
    return *(a1 + a2 + 25);
  }

  else
  {
    v5 = wctob(a2);
    if (v5 == -1)
    {
      return a3;
    }

    else
    {
      return v5;
    }
  }
}

unint64_t std::ctype<wchar_t>::do_narrow(uint64_t a1, wint_t *a2, unint64_t a3, char a4, _BYTE *a5)
{
  v8 = a2;
  if (*(a1 + 24))
  {
    if (a2 < a3)
    {
      v9 = a1 + 25;
      do
      {
        v10 = *v8;
        if (v10 > 0x7F)
        {
          v12 = wctob(v10);
          if (v12 == -1)
          {
            v11 = a4;
          }

          else
          {
            v11 = v12;
          }
        }

        else
        {
          v11 = *(v9 + v10);
        }

        *a5++ = v11;
        ++v8;
      }

      while (v8 < a3);
    }
  }

  else
  {
    while (v8 < a3)
    {
      v14 = *v8++;
      v15 = wctob(v14);
      if (v15 == -1)
      {
        v16 = a4;
      }

      else
      {
        v16 = v15;
      }

      *a5++ = v16;
    }
  }

  return a3;
}

uint64_t std::ctype<wchar_t>::_M_initialize_ctype(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 25;
  while (1)
  {
    v4 = wctob(v2);
    if (v4 == -1)
    {
      break;
    }

    *(v3 + v2++) = v4;
    if (v2 == 128)
    {
      v5 = 1;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = 0;
  *(a1 + 24) = v5;
  v7 = a1 + 156;
  do
  {
    result = btowc(v6);
    *(v7 + 4 * v6++) = result;
  }

  while (v6 != 256);
  return result;
}

char *std::moneypunct<char,true>::_M_initialize_moneypunct(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    result = operator new(0x70uLL);
    *(result + 2) = 0;
    *result = off_5D9D8;
    result[111] = 0;
    *(result + 2) = 0;
    *(result + 3) = 0;
    *(result + 31) = 0;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 84) = 0u;
    *(a1 + 16) = result;
  }

  v3 = 0;
  *(result + 33) = 11310;
  *(result + 2) = &unk_54A3D;
  *(result + 3) = 0;
  *(result + 5) = &unk_54A3D;
  *(result + 6) = 0;
  *(result + 7) = &unk_54A3D;
  *(result + 8) = 0;
  *(result + 9) = &unk_54A3D;
  *(result + 10) = 0;
  *(result + 22) = 0;
  *(result + 23) = 67109634;
  *(*(a1 + 16) + 96) = 67109634;
  do
  {
    *(*(a1 + 16) + v3 + 100) = std::money_base::_S_atoms[0][v3];
    ++v3;
  }

  while (v3 != 11);
  return result;
}

char *std::moneypunct<char,false>::_M_initialize_moneypunct(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    result = operator new(0x70uLL);
    *(result + 2) = 0;
    *result = off_5D9B8;
    result[111] = 0;
    *(result + 2) = 0;
    *(result + 3) = 0;
    *(result + 31) = 0;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 84) = 0u;
    *(a1 + 16) = result;
  }

  v3 = 0;
  *(result + 33) = 11310;
  *(result + 2) = &unk_54A3D;
  *(result + 3) = 0;
  *(result + 5) = &unk_54A3D;
  *(result + 6) = 0;
  *(result + 7) = &unk_54A3D;
  *(result + 8) = 0;
  *(result + 9) = &unk_54A3D;
  *(result + 10) = 0;
  *(result + 22) = 0;
  *(result + 23) = 67109634;
  *(*(a1 + 16) + 96) = 67109634;
  do
  {
    *(*(a1 + 16) + v3 + 100) = std::money_base::_S_atoms[0][v3];
    ++v3;
  }

  while (v3 != 11);
  return result;
}

void std::moneypunct<char,true>::~moneypunct(std::locale::facet *this)
{
  *this = off_5D950;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::locale::facet::~facet(this);
}

void std::moneypunct<char,true>::~moneypunct(std::locale::facet *a1)
{
  std::moneypunct<char,true>::~moneypunct(a1);

  operator delete(v1);
}

void std::moneypunct<char,false>::~moneypunct(std::locale::facet *this)
{
  *this = off_5D8E8;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::locale::facet::~facet(this);
}

void std::moneypunct<char,false>::~moneypunct(std::locale::facet *a1)
{
  std::moneypunct<char,false>::~moneypunct(a1);

  operator delete(v1);
}

char *std::moneypunct<wchar_t,true>::_M_initialize_moneypunct(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    result = operator new(0xA0uLL);
    *(result + 2) = 0;
    *result = off_5F098;
    *(result + 9) = 0;
    *(result + 10) = 0;
    result[152] = 0;
    *(result + 2) = 0;
    *(result + 3) = 0;
    result[32] = 0;
    *(result + 3) = 0u;
    *(result + 4) = 0u;
    *(result + 5) = 0u;
    *(result + 92) = 0u;
    *(a1 + 16) = result;
  }

  v3 = 0;
  *(result + 36) = 0x2C0000002ELL;
  *(result + 2) = &unk_54A3D;
  *(result + 3) = 0;
  *(result + 6) = &unk_53380;
  *(result + 7) = 0;
  *(result + 8) = &unk_53380;
  *(result + 9) = 0;
  *(result + 10) = &unk_53380;
  *(result + 11) = 0;
  *(result + 24) = 0;
  *(result + 25) = 67109634;
  *(*(a1 + 16) + 104) = 67109634;
  v4 = std::money_base::_S_atoms[0];
  v5 = *(a1 + 16) + 108;
  do
  {
    *(v5 + 4 * v3) = v4[v3];
    ++v3;
  }

  while (v3 != 11);
  return result;
}

char *std::moneypunct<wchar_t,false>::_M_initialize_moneypunct(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    result = operator new(0xA0uLL);
    *(result + 2) = 0;
    *result = off_5F078;
    *(result + 9) = 0;
    *(result + 10) = 0;
    result[152] = 0;
    *(result + 2) = 0;
    *(result + 3) = 0;
    result[32] = 0;
    *(result + 3) = 0u;
    *(result + 4) = 0u;
    *(result + 5) = 0u;
    *(result + 92) = 0u;
    *(a1 + 16) = result;
  }

  v3 = 0;
  *(result + 36) = 0x2C0000002ELL;
  *(result + 2) = &unk_54A3D;
  *(result + 3) = 0;
  *(result + 6) = &unk_53380;
  *(result + 7) = 0;
  *(result + 8) = &unk_53380;
  *(result + 9) = 0;
  *(result + 10) = &unk_53380;
  *(result + 11) = 0;
  *(result + 24) = 0;
  *(result + 25) = 67109634;
  *(*(a1 + 16) + 104) = 67109634;
  v4 = std::money_base::_S_atoms[0];
  v5 = *(a1 + 16) + 108;
  do
  {
    *(v5 + 4 * v3) = v4[v3];
    ++v3;
  }

  while (v3 != 11);
  return result;
}

void std::moneypunct<wchar_t,true>::~moneypunct(std::locale::facet *this)
{
  *this = off_5F010;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::locale::facet::~facet(this);
}

void std::moneypunct<wchar_t,true>::~moneypunct(std::locale::facet *a1)
{
  std::moneypunct<wchar_t,true>::~moneypunct(a1);

  operator delete(v1);
}

void std::moneypunct<wchar_t,false>::~moneypunct(std::locale::facet *this)
{
  *this = off_5EFA8;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::locale::facet::~facet(this);
}

void std::moneypunct<wchar_t,false>::~moneypunct(std::locale::facet *a1)
{
  std::moneypunct<wchar_t,false>::~moneypunct(a1);

  operator delete(v1);
}

char *std::numpunct<char>::_M_initialize_numpunct(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    result = operator new(0x90uLL);
    *(result + 2) = 0;
    *result = off_5DB70;
    result[136] = 0;
    *(result + 2) = 0;
    *(result + 3) = 0;
    result[32] = 0;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 36) = 0;
    *(a1 + 16) = result;
  }

  v3 = 0;
  *(result + 2) = &unk_54A3D;
  *(result + 3) = 0;
  result[32] = 0;
  *(result + 36) = 11310;
  do
  {
    *(*(a1 + 16) + v3 + 74) = std::__num_base::_S_atoms_out[v3];
    ++v3;
  }

  while (v3 != 36);
  for (i = 0; i != 26; ++i)
  {
    *(*(a1 + 16) + i + 110) = std::__num_base::_S_atoms_in[0][i];
  }

  v5 = *(a1 + 16);
  v5[5] = "true";
  v5[6] = 4;
  v5[7] = "false";
  v5[8] = 5;
  return result;
}

void std::numpunct<char>::~numpunct(std::locale::facet *this)
{
  *this = off_5DB28;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::locale::facet::~facet(this);
}

void std::numpunct<char>::~numpunct(std::locale::facet *a1)
{
  std::numpunct<char>::~numpunct(a1);

  operator delete(v1);
}

char *std::numpunct<wchar_t>::_M_initialize_numpunct(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    result = operator new(0x150uLL);
    *(result + 2) = 0;
    *result = off_5F230;
    result[328] = 0;
    *(result + 2) = 0;
    *(result + 3) = 0;
    result[32] = 0;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 9) = 0;
    *(a1 + 16) = result;
  }

  v3 = 0;
  *(result + 2) = &unk_54A3D;
  *(result + 3) = 0;
  result[32] = 0;
  *(result + 9) = 0x2C0000002ELL;
  v4 = std::__num_base::_S_atoms_out;
  do
  {
    *&result[4 * v3 + 80] = v4[v3];
    ++v3;
  }

  while (v3 != 36);
  v5 = 0;
  v6 = std::__num_base::_S_atoms_in[0];
  do
  {
    *&result[4 * v5 + 224] = v6[v5];
    ++v5;
  }

  while (v5 != 26);
  *(result + 5) = &unk_53384;
  *(result + 6) = 4;
  *(result + 7) = &unk_53398;
  *(result + 8) = 5;
  return result;
}

void std::numpunct<wchar_t>::~numpunct(std::locale::facet *this)
{
  *this = off_5F1E8;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::locale::facet::~facet(this);
}

void std::numpunct<wchar_t>::~numpunct(std::locale::facet *a1)
{
  std::numpunct<wchar_t>::~numpunct(a1);

  operator delete(v1);
}

void std::__timepunct<char>::_M_put(uint64_t a1, char *a2, size_t a3, const char *a4, const tm *a5)
{
  v10 = setlocale(0, 0);
  v11 = strdup(v10);
  setlocale(0, *(a1 + 32));
  v12 = strftime(a2, a3, a4, a5);
  setlocale(0, v11);
  free(v11);
  if (!v12)
  {
    *a2 = 0;
  }
}

char *std::__timepunct<char>::_M_initialize_timepunct(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    result = operator new(0x190uLL);
    *(result + 2) = 0;
    *result = off_5DCD0;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    *(result + 3) = 0u;
    *(result + 4) = 0u;
    *(result + 5) = 0u;
    *(result + 6) = 0u;
    *(result + 7) = 0u;
    *(result + 8) = 0u;
    *(result + 9) = 0u;
    *(result + 10) = 0u;
    *(result + 11) = 0u;
    *(result + 12) = 0u;
    *(result + 13) = 0u;
    *(result + 14) = 0u;
    *(result + 15) = 0u;
    *(result + 16) = 0u;
    *(result + 17) = 0u;
    *(result + 18) = 0u;
    *(result + 19) = 0u;
    *(result + 20) = 0u;
    *(result + 21) = 0u;
    *(result + 22) = 0u;
    *(result + 23) = 0u;
    *(result + 377) = 0u;
    *(a1 + 16) = result;
  }

  *(result + 2) = "%m/%d/%y";
  *(result + 3) = "%m/%d/%y";
  *(result + 4) = "%H:%M:%S";
  *(result + 5) = "%H:%M:%S";
  *(result + 6) = &unk_54A3D;
  *(result + 7) = &unk_54A3D;
  *(result + 8) = "AM";
  *(result + 9) = "PM";
  *(result + 10) = &unk_54A3D;
  *(result + 11) = "Sunday";
  *(result + 12) = "Monday";
  *(result + 13) = "Tuesday";
  *(result + 14) = "Wednesday";
  *(result + 15) = "Thursday";
  *(result + 16) = "Friday";
  *(result + 17) = "Saturday";
  *(result + 18) = "Sun";
  *(result + 19) = "Mon";
  *(result + 20) = "Tue";
  *(result + 21) = "Wed";
  *(result + 22) = "Thu";
  *(result + 23) = "Fri";
  *(result + 24) = "Sat";
  *(result + 25) = "January";
  *(result + 26) = "February";
  *(result + 27) = "March";
  *(result + 28) = "April";
  *(result + 29) = "May";
  *(result + 30) = "June";
  *(result + 31) = "July";
  *(result + 32) = "August";
  *(result + 33) = "September";
  *(result + 34) = "October";
  *(result + 35) = "November";
  *(result + 36) = "December";
  *(result + 37) = "Jan";
  *(result + 38) = "Feb";
  *(result + 39) = "Mar";
  *(result + 40) = "Apr";
  *(result + 41) = "May";
  *(result + 42) = "Jun";
  *(result + 43) = "Jul";
  *(result + 44) = "Aug";
  *(result + 45) = "Sep";
  *(result + 46) = "Oct";
  *(result + 47) = "Nov";
  *(result + 48) = "Dec";
  return result;
}

void std::__timepunct<wchar_t>::_M_put(uint64_t a1, __int32 *a2, size_t a3, const __int32 *a4, const tm *a5)
{
  v10 = setlocale(0, 0);
  v11 = strdup(v10);
  setlocale(0, *(a1 + 32));
  v12 = wcsftime(a2, a3, a4, a5);
  setlocale(0, v11);
  free(v11);
  if (!v12)
  {
    *a2 = 0;
  }
}

char *std::__timepunct<wchar_t>::_M_initialize_timepunct(uint64_t a1)
{
  result = *(a1 + 16);
  if (!result)
  {
    result = operator new(0x190uLL);
    *(result + 2) = 0;
    *result = off_5F390;
    *(result + 1) = 0u;
    *(result + 2) = 0u;
    *(result + 3) = 0u;
    *(result + 4) = 0u;
    *(result + 5) = 0u;
    *(result + 6) = 0u;
    *(result + 7) = 0u;
    *(result + 8) = 0u;
    *(result + 9) = 0u;
    *(result + 10) = 0u;
    *(result + 11) = 0u;
    *(result + 12) = 0u;
    *(result + 13) = 0u;
    *(result + 14) = 0u;
    *(result + 15) = 0u;
    *(result + 16) = 0u;
    *(result + 17) = 0u;
    *(result + 18) = 0u;
    *(result + 19) = 0u;
    *(result + 20) = 0u;
    *(result + 21) = 0u;
    *(result + 22) = 0u;
    *(result + 23) = 0u;
    *(result + 377) = 0u;
    *(a1 + 16) = result;
  }

  *(result + 2) = &unk_533B0;
  *(result + 3) = &unk_533B0;
  *(result + 4) = &unk_533D4;
  *(result + 5) = &unk_533D4;
  *(result + 6) = &unk_533F8;
  *(result + 7) = &unk_533F8;
  *(result + 8) = &unk_533FC;
  *(result + 9) = &unk_53408;
  *(result + 10) = &unk_533F8;
  *(result + 11) = &unk_53414;
  *(result + 12) = &unk_53430;
  *(result + 13) = &unk_5344C;
  *(result + 14) = &unk_5346C;
  *(result + 15) = &unk_53494;
  *(result + 16) = &unk_534B8;
  *(result + 17) = &unk_534D4;
  *(result + 18) = &unk_534F8;
  *(result + 19) = &unk_53508;
  *(result + 20) = &unk_53518;
  *(result + 21) = &unk_53528;
  *(result + 22) = &unk_53538;
  *(result + 23) = &unk_53548;
  *(result + 24) = &unk_53558;
  *(result + 25) = &unk_53568;
  *(result + 26) = &unk_53588;
  *(result + 27) = &unk_535AC;
  *(result + 28) = &unk_535C4;
  *(result + 29) = &unk_535DC;
  *(result + 30) = &unk_535EC;
  *(result + 31) = &unk_53600;
  *(result + 32) = &unk_53614;
  *(result + 33) = &unk_53630;
  *(result + 34) = &unk_53658;
  *(result + 35) = &unk_53678;
  *(result + 36) = &unk_5369C;
  *(result + 37) = &unk_536C0;
  *(result + 38) = &unk_536D0;
  *(result + 39) = &unk_536E0;
  *(result + 40) = &unk_536F0;
  *(result + 41) = &unk_535DC;
  *(result + 42) = &unk_53700;
  *(result + 43) = &unk_53710;
  *(result + 44) = &unk_53720;
  *(result + 45) = &unk_53730;
  *(result + 46) = &unk_53740;
  *(result + 47) = &unk_53750;
  *(result + 48) = &unk_53760;
  return result;
}

uint64_t std::__basic_file<char>::__basic_file(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

FILE **std::__basic_file<char>::~__basic_file(FILE **a1)
{
  std::__basic_file<char>::close(a1);
  return a1;
}

{
  std::__basic_file<char>::close(a1);
  return a1;
}

FILE **std::__basic_file<char>::close(FILE **result)
{
  if (!*result)
  {
    return 0;
  }

  v1 = result;
  if (*(result + 8) == 1)
  {
    *__error() = 0;
    while (fclose(*v1))
    {
      if (*__error() != 4)
      {
        result = 0;
        goto LABEL_9;
      }
    }

    result = v1;
  }

LABEL_9:
  *v1 = 0;
  return result;
}

uint64_t std::__basic_file<char>::sys_open(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a2 && !*a1)
  {
    *__error() = 0;
    while (fflush(*a1))
    {
      if (*__error() != 4)
      {
        return 0;
      }
    }

    *a1 = a2;
    *(a1 + 8) = 0;
    return a1;
  }

  return result;
}

uint64_t std::__basic_file<char>::sys_open(uint64_t a1, int a2, char a3)
{
  if (!v5)
  {
    return 0;
  }

  if (*a1)
  {
    return 0;
  }

  v7 = fdopen(a2, v5);
  *a1 = v7;
  if (!v7)
  {
    return 0;
  }

  *(a1 + 8) = 1;
  if (!a2)
  {
    setvbuf(v7, 0, 2, 0);
  }

  return a1;
}

const char *anonymous namespace::fopen_mode(char a1)
{
  v1 = a1 & 0x3D;
  result = "w";
  if (v1 > 24)
  {
    if (v1 <= 47)
    {
      switch(v1)
      {
        case 25:
          return "a+";
        case 28:
          return "r+b";
        case 29:
          return "a+b";
      }

      return 0;
    }

    if (v1 > 55)
    {
      if (v1 == 56)
      {
        return "w+";
      }

      if (v1 == 60)
      {
        return "w+b";
      }

      return 0;
    }

    if (v1 != 48)
    {
      if (v1 != 52)
      {
        return 0;
      }

      return "wb";
    }
  }

  else
  {
    if (v1 > 16)
    {
      if (v1 > 20)
      {
        if (v1 == 21)
        {
          return "ab";
        }

        if (v1 == 24)
        {
          return "r+";
        }

        return 0;
      }

      if (v1 == 17)
      {
        return "a";
      }

      if (v1 != 20)
      {
        return 0;
      }

      return "wb";
    }

    if (v1 == 8)
    {
      return "r";
    }

    if (v1 == 12)
    {
      return "rb";
    }

    if (v1 != 16)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__basic_file<char>::open(uint64_t a1, const char *a2, char a3)
{
  if (!v5)
  {
    return 0;
  }

  if (*a1)
  {
    return 0;
  }

  v7 = fopen(a2, v5);
  *a1 = v7;
  if (!v7)
  {
    return 0;
  }

  *(a1 + 8) = 1;
  return a1;
}

ssize_t std::__basic_file<char>::xsgetn(FILE **a1, void *a2, size_t a3)
{
  do
  {
    v6 = fileno(*a1);
    v7 = read(v6, a2, a3);
  }

  while (v7 == -1 && *__error() == 4);
  return v7;
}

uint64_t std::__basic_file<char>::xsputn(FILE **a1, char *a2, size_t a3)
{
  v5 = fileno(*a1);
}

uint64_t anonymous namespace::xwrite(_anonymous_namespace_ *this, char *__buf, size_t __nbyte)
{
  v5 = this;
  v6 = __nbyte;
  while (1)
  {
    while (1)
    {
      v7 = write(v5, __buf, v6);
      if (v7 != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        return __nbyte - v6;
      }
    }

    v6 -= v7;
    if (!v6)
    {
      break;
    }

    __buf += v7;
  }

  return __nbyte - v6;
}

size_t std::__basic_file<char>::xsputn_2(FILE **a1, char *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  v9 = fileno(*a1);
  v10 = a5 + a3;
  v15 = a4;
  v16 = a5;
  v11 = a5 + a3;
  while (1)
  {
    while (1)
    {
      v14.iov_base = a2;
      v14.iov_len = a3;
      v12 = writev(v9, &v14, 2);
      if (v12 != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        return v10 - v11;
      }
    }

    v11 -= v12;
    if (!v11)
    {
      break;
    }

    if ((v12 - a3) >= 0)
    {
      return v10 - v11;
    }

    a2 += v12;
    a3 -= v12;
  }

  return v10 - v11;
}

off_t std::__basic_file<char>::seekoff(FILE **a1, off_t a2, int a3)
{
  v5 = fileno(*a1);

  return lseek(v5, a2, a3);
}

off_t std::__basic_file<char>::showmanyc(FILE **a1)
{
  v8 = 0;
  v2 = fileno(*a1);
  if (ioctl(v2, 0x4004667FuLL, &v8) || (result = v8, (v8 & 0x80000000) != 0))
  {
    v9.fd = fileno(*a1);
    v9.events = 1;
    if (poll(&v9, 1u, 0) < 1)
    {
      return 0;
    }

    v4 = fileno(*a1);
    if (fstat(v4, &v7) || (v7.st_mode & 0xF000) != 0x8000)
    {
      return 0;
    }

    else
    {
      st_size = v7.st_size;
      v6 = fileno(*a1);
      return st_size - lseek(v6, 0, 1);
    }
  }

  return result;
}

void std::__convert_to_v<float>(const char *a1, float *a2, _DWORD *a3)
{
  *__error() = 0;
  v6 = setlocale(0, 0);
  v7 = strdup(v6);
  setlocale(0, "C");
  v8 = strtof(a1, &v10);
  if (v10 == a1 || (v9 = v8, *__error() == 34))
  {
    *a3 |= 4u;
  }

  else
  {
    *a2 = v9;
  }

  setlocale(0, v7);
  free(v7);
}

void std::__convert_to_v<double>(const char *a1, double *a2, _DWORD *a3)
{
  *__error() = 0;
  v6 = setlocale(0, 0);
  v7 = strdup(v6);
  setlocale(0, "C");
  v8 = strtod(a1, &v10);
  if (v10 == a1 || (v9 = v8, *__error() == 34))
  {
    *a3 |= 4u;
  }

  else
  {
    *a2 = v9;
  }

  setlocale(0, v7);
  free(v7);
}

void std::__convert_to_v<long double>(const char *a1, double *a2, _DWORD *a3)
{
  *__error() = 0;
  v6 = setlocale(0, 0);
  v7 = strdup(v6);
  setlocale(0, "C");
  v8 = strtold(a1, &v10);
  if (v10 == a1 || (v9 = v8, *__error() == 34))
  {
    *a3 |= 4u;
  }

  else
  {
    *a2 = v9;
  }

  setlocale(0, v7);

  free(v7);
}

void *std::locale::facet::_S_create_c_locale(void *this, int **a2, const char *a3, int *a4)
{
  *this = 0;
  if (*a2 != 67 || *(a2 + 1))
  {
    std::__throw_runtime_error("locale::facet::_S_create_c_locale name not valid");
  }

  return this;
}

void __gnu_cxx::__verbose_terminate_handler(void)
{
  v0 = __cxa_current_exception_type();
  if (v0)
  {
    v1 = 39;
  }

  else
  {
    v1 = 45;
  }

  if (v0)
  {
    v2 = "terminate called throwing an exception\n";
  }

  else
  {
    v2 = "terminate called without an active exception\n";
  }

  fwrite(v2, v1, 1uLL, __stderrp);
  abort();
}

void __gnu_cxx::free_list::_M_get_mutex()
{
  {
    __gnu_cxx::free_list::_M_get_mutex(void)::_S_mutex = 850045863;
    unk_602A8 = 0u;
    unk_602B8 = 0u;
    unk_602C8 = 0u;
    qword_602D8 = 0;
  }
}

void __gnu_cxx::free_list::_M_get_free_list()
{
  {
    __gnu_cxx::free_list::_M_get_free_list(void)::_S_free_list = 0;
    unk_602F0 = 0;
    qword_602F8 = 0;
  }
}

void __gnu_debug::_Error_formatter::_Parameter::_M_print_field()
{
  __assert_rtn("_M_print_field", "debug.cc", 382, "false");
}

{
  __assert_rtn("_M_print_field", "debug.cc", 378, "_M_variant._M_string._M_name");
}

{
  __assert_rtn("_M_print_field", "debug.cc", 372, "false");
}

{
  __assert_rtn("_M_print_field", "debug.cc", 368, "_M_variant._M_integer._M_name");
}

{
  __assert_rtn("_M_print_field", "debug.cc", 362, "false");
}

{
  __assert_rtn("_M_print_field", "debug.cc", 358, "_M_variant._M_sequence._M_type");
}

{
  __assert_rtn("_M_print_field", "debug.cc", 350, "_M_variant._M_sequence._M_address");
}

{
  __assert_rtn("_M_print_field", "debug.cc", 345, "_M_variant._M_sequence._M_name");
}

{
  __assert_rtn("_M_print_field", "debug.cc", 339, "false");
}

{
  __assert_rtn("_M_print_field", "debug.cc", 335, "_M_variant._M_iterator._M_seq_type");
}

{
  __assert_rtn("_M_print_field", "debug.cc", 327, "_M_variant._M_iterator._M_sequence");
}

{
  __assert_rtn("_M_print_field", "debug.cc", 299, "_M_variant._M_iterator._M_type");
}

{
  __assert_rtn("_M_print_field", "debug.cc", 288, "_M_variant._M_iterator._M_name");
}

{
  __assert_rtn("_M_print_field", "debug.cc", 386, "false");
}

{
  __assert_rtn("_M_print_field", "debug.cc", 280, "this->_M_kind != _Parameter::__unused_param");
}

void __gnu_debug::_Error_formatter::_M_print_string()
{
  __assert_rtn("_M_print_string", "debug.cc", 622, "*__start");
}

{
  __assert_rtn("_M_print_string", "debug.cc", 634, "__param < _M_num_parameters");
}

{
  __assert_rtn("_M_print_string", "debug.cc", 662, "*__start");
}

{
  __assert_rtn("_M_print_string", "debug.cc", 663, "__field_idx < __max_field_len-1");
}

{
  __assert_rtn("_M_print_string", "debug.cc", 641, "*__start == ';'");
}

{
  __assert_rtn("_M_print_string", "debug.cc", 631, "*__start >= '1' && *__start <= '9'");
}

{
  __assert_rtn("_M_print_string", "debug.cc", 608, "__len < __bufsize");
}

void anonymous namespace::get_locale_mutex()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    qword_63438 = 850045863;
    xmmword_63440 = 0u;
    unk_63450 = 0u;
    xmmword_63460 = 0u;
    qword_63470 = 0;

    __cxa_guard_release(&_MergedGlobals);
  }
}

void std::filebuf::imbue(char a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (*(a2 + 553) != 1 && (*(a2 + 554) & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(a2 + 584);
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = OUTLINED_FUNCTION_1(v6);
  if ((*(v8 + 40))(v7) == -1)
  {
LABEL_16:
    a3 = 0;
    goto LABEL_20;
  }

  if ((*(a2 + 553) & 1) == 0)
  {
LABEL_13:
    if (*(a2 + 554) != 1)
    {
      goto LABEL_20;
    }

    if (std::filebuf::_M_terminate_output(a2))
    {
      OUTLINED_FUNCTION_0();
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v9 = *(a2 + 584);
  if (!v9)
  {
LABEL_21:
    std::__throw_bad_cast();
  }

  v10 = OUTLINED_FUNCTION_1(v9);
  if ((*(v11 + 48))(v10))
  {
    if (a3)
    {
      if (((*(*a3 + 48))(a3) & 1) == 0)
      {
        v12 = *(a2 + 144);
        v13 = *(*a2 + 32);
        v14 = OUTLINED_FUNCTION_2();
        v15(v14);
        if (v23 == -1)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_3();
    v17 = OUTLINED_FUNCTION_1(v16);
    v19 = (*(v18 + 56))(v17, a2 + 408, v3);
    OUTLINED_FUNCTION_4(v19);
    if (!v21)
    {
      memmove(*(a2 + 592), v20, v3);
    }

    v22 = *(a2 + 592);
    *(a2 + 608) = v22;
    *(a2 + 616) = v22 + v3;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5((a2 + 280));
    OUTLINED_FUNCTION_5((a2 + 408));
  }

LABEL_20:
  *(a2 + 584) = a3;
}

void std::wfilebuf::imbue(char a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (*(a2 + 553) != 1 && (*(a2 + 554) & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(a2 + 584);
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = OUTLINED_FUNCTION_1(v6);
  if ((*(v8 + 40))(v7) == -1)
  {
LABEL_16:
    a3 = 0;
    goto LABEL_20;
  }

  if ((*(a2 + 553) & 1) == 0)
  {
LABEL_13:
    if (*(a2 + 554) != 1)
    {
      goto LABEL_20;
    }

    if (std::wfilebuf::_M_terminate_output(a2))
    {
      OUTLINED_FUNCTION_0();
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v9 = *(a2 + 584);
  if (!v9)
  {
LABEL_21:
    std::__throw_bad_cast();
  }

  v10 = OUTLINED_FUNCTION_1(v9);
  if ((*(v11 + 48))(v10))
  {
    if (a3)
    {
      if (((*(*a3 + 48))(a3) & 1) == 0)
      {
        v12 = *(a2 + 144);
        v13 = *(*a2 + 32);
        v14 = OUTLINED_FUNCTION_2();
        v15(v14);
        if (v23 == -1)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_3();
    v17 = OUTLINED_FUNCTION_1(v16);
    v19 = (*(v18 + 56))(v17, a2 + 408, v3);
    OUTLINED_FUNCTION_4(v19);
    if (!v21)
    {
      memmove(*(a2 + 592), v20, v3);
    }

    v22 = *(a2 + 592);
    *(a2 + 608) = v22;
    *(a2 + 616) = v22 + v3;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5((a2 + 280));
    OUTLINED_FUNCTION_5((a2 + 408));
  }

LABEL_20:
  *(a2 + 584) = a3;
}

uint64_t std::ios::_M_cache_locale(void *a1, uint64_t a2)
{
  if (std::has_facet<std::ctype<char>>(a2))
  {
    v4 = std::use_facet<std::ctype<char>>(a2);
  }

  else
  {
    v4 = 0;
  }

  a1[30] = v4;
  if (std::has_facet<std::num_put<char,std::ostreambuf_iterator<char>>>(a2))
  {
    v5 = std::use_facet<std::num_put<char,std::ostreambuf_iterator<char>>>(a2);
  }

  else
  {
    v5 = 0;
  }

  a1[31] = v5;
  if (std::has_facet<std::num_get<char,std::istreambuf_iterator<char>>>(a2))
  {
    result = std::use_facet<std::num_get<char,std::istreambuf_iterator<char>>>(a2);
  }

  else
  {
    result = 0;
  }

  a1[32] = result;
  return result;
}

uint64_t std::wios::_M_cache_locale(void *a1, uint64_t a2)
{
  if (std::has_facet<std::ctype<wchar_t>>(a2))
  {
    v4 = std::use_facet<std::ctype<wchar_t>>(a2);
  }

  else
  {
    v4 = 0;
  }

  a1[30] = v4;
  if (std::has_facet<std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>>(a2))
  {
    v5 = std::use_facet<std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>>(a2);
  }

  else
  {
    v5 = 0;
  }

  a1[31] = v5;
  if (std::has_facet<std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>>(a2))
  {
    result = std::use_facet<std::num_get<wchar_t,std::istreambuf_iterator<wchar_t>>>(a2);
  }

  else
  {
    result = 0;
  }

  a1[32] = result;
  return result;
}

uint64_t std::__write<char>(uint64_t a1, char a2, uint64_t a3, int a4)
{
  if ((a2 & 1) == 0)
  {
    (*(*a1 + 96))(a1, a3, a4);
  }

  return a1;
}

void std::num_put<char,std::ostreambuf_iterator<char>>::_M_insert_int<long>()
{
  OUTLINED_FUNCTION_40();
  v5 = v4;
  OUTLINED_FUNCTION_3_0(v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_8(v11, __stack_chk_guard);
  v12 = *(v2 + 24);
  OUTLINED_FUNCTION_5_0();
  v13 = OUTLINED_FUNCTION_7();
  std::__int_to_char<char,unsigned long>(v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_18();
  if (v19)
  {
    OUTLINED_FUNCTION_6();
    (off_5C2F0)();
    OUTLINED_FUNCTION_23(v20, v0);
    v18 = OUTLINED_FUNCTION_20();
  }

  if (v1 == 8 || v1 == 64)
  {
    if (!v5 || (v12 & 0x200) == 0)
    {
      v21 = v34;
      goto LABEL_19;
    }

    if (v1 == 64)
    {
      OUTLINED_FUNCTION_9();
    }

    else
    {
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_26();
    }

    v21 = v34;
  }

  else
  {
    if (v5 < 1)
    {
      v21 = v34;
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v21 = v34;
      if ((v12 & 0x800) == 0)
      {
        goto LABEL_19;
      }
    }

    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_36();
LABEL_19:
  v22 = *(v2 + 16);
  if (v22 > v3)
  {
    v23 = *(v2 + 16);
    off_5C2F0(v18);
    v24 = OUTLINED_FUNCTION_0_0(&v33);
    bzero(v24, v22);
    v25 = OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_41(v25, v26, v27, v28, v22);
  }

  *(v2 + 16) = 0;
  if ((v21 & 1) == 0)
  {
    OUTLINED_FUNCTION_13();
    v30 = *(v29 + 96);
    v31 = OUTLINED_FUNCTION_35();
    v32(v31);
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_37();
}

void std::num_put<char,std::ostreambuf_iterator<char>>::_M_insert_int<unsigned long>()
{
  OUTLINED_FUNCTION_40();
  v5 = v4;
  OUTLINED_FUNCTION_3_0(v6, v7, v8, v9, v10);
  v12 = OUTLINED_FUNCTION_8(v11, __stack_chk_guard) + 74;
  v13 = *(v1 + 24);
  v40 = 0u;
  v41 = 0u;
  v42 = 0;
  OUTLINED_FUNCTION_5_0();
  v14 = OUTLINED_FUNCTION_19();
  std::__int_to_char<char,unsigned long>(v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_16();
  if (v22)
  {
    OUTLINED_FUNCTION_6();
    off_5C2F0(v20);
    OUTLINED_FUNCTION_24(v21, v3);
    v19 = OUTLINED_FUNCTION_21();
  }

  v22 = v0 == 64 || v0 == 8;
  if (v22 && v5 != 0 && (v13 & 0x200) != 0)
  {
    if (v0 == 64)
    {
      OUTLINED_FUNCTION_9();
    }

    else
    {
      OUTLINED_FUNCTION_28();
      if (v22)
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 + 1;
      }

      *(v2 - 1) = *(v12 + v26);
    }

    OUTLINED_FUNCTION_31();
  }

  v27 = *(v1 + 16);
  if (v27 > v3)
  {
    v28 = *(v1 + 16);
    off_5C2F0(v19);
    v29 = OUTLINED_FUNCTION_0_0(&v38);
    bzero(v29, v27);
    v30 = OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_41(v30, v31, v32, v33, v27);
    v3 = v27;
  }

  *(v1 + 16) = 0;
  if ((v39 & 1) == 0)
  {
    OUTLINED_FUNCTION_13();
    v35 = *(v34 + 96);
    v36 = OUTLINED_FUNCTION_35();
    if (v37(v36) != v3)
    {
      v39 = 1;
    }
  }

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_37();
}

void std::num_put<char,std::ostreambuf_iterator<char>>::_M_insert_int<long long>()
{
  OUTLINED_FUNCTION_40();
  v5 = v4;
  OUTLINED_FUNCTION_3_0(v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_8(v11, __stack_chk_guard);
  v12 = *(v2 + 24);
  OUTLINED_FUNCTION_5_0();
  v13 = OUTLINED_FUNCTION_7();
  std::__int_to_char<char,unsigned long>(v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_18();
  if (v19)
  {
    OUTLINED_FUNCTION_6();
    off_5C2F0(v20);
    OUTLINED_FUNCTION_23(v21, v0);
    v18 = OUTLINED_FUNCTION_20();
  }

  if (v1 == 8 || v1 == 64)
  {
    if (!v5 || (v12 & 0x200) == 0)
    {
      v22 = v35;
      goto LABEL_19;
    }

    if (v1 == 64)
    {
      OUTLINED_FUNCTION_9();
    }

    else
    {
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_26();
    }

    v22 = v35;
  }

  else
  {
    if (v5 < 1)
    {
      v22 = v35;
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v22 = v35;
      if ((v12 & 0x800) == 0)
      {
        goto LABEL_19;
      }
    }

    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_36();
LABEL_19:
  v23 = *(v2 + 16);
  if (v23 > v3)
  {
    v24 = *(v2 + 16);
    off_5C2F0(v18);
    v25 = OUTLINED_FUNCTION_0_0(&v34);
    bzero(v25, v23);
    v26 = OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_41(v26, v27, v28, v29, v23);
  }

  *(v2 + 16) = 0;
  if ((v22 & 1) == 0)
  {
    OUTLINED_FUNCTION_13();
    v31 = *(v30 + 96);
    v32 = OUTLINED_FUNCTION_35();
    v33(v32);
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_37();
}

void std::num_put<char,std::ostreambuf_iterator<char>>::_M_insert_int<unsigned long long>()
{
  OUTLINED_FUNCTION_40();
  v5 = v4;
  OUTLINED_FUNCTION_3_0(v6, v7, v8, v9, v10);
  v12 = OUTLINED_FUNCTION_8(v11, __stack_chk_guard) + 74;
  v13 = *(v1 + 24);
  v40 = 0u;
  v41 = 0u;
  v42 = 0;
  OUTLINED_FUNCTION_5_0();
  v14 = OUTLINED_FUNCTION_19();
  std::__int_to_char<char,unsigned long>(v14, v15, v16, v17, v18);
  OUTLINED_FUNCTION_16();
  if (v22)
  {
    OUTLINED_FUNCTION_6();
    off_5C2F0(v20);
    OUTLINED_FUNCTION_24(v21, v3);
    v19 = OUTLINED_FUNCTION_21();
  }

  v22 = v0 == 64 || v0 == 8;
  if (v22 && v5 != 0 && (v13 & 0x200) != 0)
  {
    if (v0 == 64)
    {
      OUTLINED_FUNCTION_9();
    }

    else
    {
      OUTLINED_FUNCTION_28();
      if (v22)
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 + 1;
      }

      *(v2 - 1) = *(v12 + v26);
    }

    OUTLINED_FUNCTION_31();
  }

  v27 = *(v1 + 16);
  if (v27 > v3)
  {
    v28 = *(v1 + 16);
    off_5C2F0(v19);
    v29 = OUTLINED_FUNCTION_0_0(&v38);
    bzero(v29, v27);
    v30 = OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_41(v30, v31, v32, v33, v27);
    v3 = v27;
  }

  *(v1 + 16) = 0;
  if ((v39 & 1) == 0)
  {
    OUTLINED_FUNCTION_13();
    v35 = *(v34 + 96);
    v36 = OUTLINED_FUNCTION_35();
    if (v37(v36) != v3)
    {
      v39 = 1;
    }
  }

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_37();
}

uint64_t std::num_put<char,std::ostreambuf_iterator<char>>::_M_insert_float<double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  OUTLINED_FUNCTION_11(a1, a2, a3, a4, a5);
  std::__use_cache<std::__numpunct_cache<char>>::operator()(&v59, (v14 + 208));
  OUTLINED_FUNCTION_30();
  if (v17 != v18)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  v20 = std::__num_base::_S_format_float(v7, v62, v8);
  v60 = 0u;
  memset(v61, 0, sizeof(v61));
  c_locale = std::locale::facet::_S_get_c_locale(v20, v21, v22, v23);
  OUTLINED_FUNCTION_2_0(c_locale);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_32();
  if (v25 >= 45)
  {
    v8 = (v9 + 1);
    off_5C2F0(v25);
    v26 = OUTLINED_FUNCTION_0_0(v58);
    bzero(v26, v8);
    v31 = std::locale::facet::_S_get_c_locale(v27, v28, v29, v30);
    OUTLINED_FUNCTION_2_0(v31);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_32();
  }

  std::use_facet<std::ctype<char>>(v7 + 208);
  OUTLINED_FUNCTION_17();
  off_5C2F0(v32);
  OUTLINED_FUNCTION_25(v33, v58[0]);
  OUTLINED_FUNCTION_39();
  v34 = memchr(v11, 46, v12);
  if (v34)
  {
    v34 = OUTLINED_FUNCTION_34(v34);
  }

  else
  {
    v8 = 0;
  }

  if (*(v10 + 32) == 1 && (v8 || v9 < 3 || (v35 = v11[1], v35 <= 57) && (v35 >= 48 ? (v36 = v11[2] - 48 > 9) : (v36 = 1), !v36)))
  {
    v37 = off_5C2F0(v34);
    OUTLINED_FUNCTION_15(v37, v38, v39, v40, v41, v42, v43, v44, v58[0]);
    v45 = *v11;
    if (v45 == 45 || v45 == 43)
    {
      OUTLINED_FUNCTION_27();
    }

    else
    {
      LODWORD(v11) = 0;
    }

    v34 = OUTLINED_FUNCTION_14();
    if (v8)
    {
      v46 = v9 - v12;
      v34 = memcpy(v34, v8, v46);
      v10 = (v46 + v10);
    }

    v12 = v10 + v11;
  }

  else
  {
    v19 = v13;
  }

  if (*(v7 + 16) > v12)
  {
    v47 = *(v7 + 16);
    v48 = off_5C2F0(v34);
    OUTLINED_FUNCTION_12(v48, v49, v50, v51, v52, v53, v54, v55, v58[0]);
    OUTLINED_FUNCTION_10();
    v19 = v10;
  }

  *(v7 + 16) = 0;
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_13();
    (*(v56 + 96))(v5, v19);
  }

  return OUTLINED_FUNCTION_33();
}

uint64_t std::num_put<char,std::ostreambuf_iterator<char>>::_M_insert_float<long double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  OUTLINED_FUNCTION_11(a1, a2, a3, a4, a5);
  std::__use_cache<std::__numpunct_cache<char>>::operator()(&v59, (v14 + 208));
  OUTLINED_FUNCTION_30();
  if (v17 != v18)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  v20 = std::__num_base::_S_format_float(v7, v62, v8);
  v60 = 0u;
  memset(v61, 0, sizeof(v61));
  c_locale = std::locale::facet::_S_get_c_locale(v20, v21, v22, v23);
  OUTLINED_FUNCTION_2_0(c_locale);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_32();
  if (v25 >= 45)
  {
    v8 = (v9 + 1);
    off_5C2F0(v25);
    v26 = OUTLINED_FUNCTION_0_0(v58);
    bzero(v26, v8);
    v31 = std::locale::facet::_S_get_c_locale(v27, v28, v29, v30);
    OUTLINED_FUNCTION_2_0(v31);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_32();
  }

  std::use_facet<std::ctype<char>>(v7 + 208);
  OUTLINED_FUNCTION_17();
  off_5C2F0(v32);
  OUTLINED_FUNCTION_25(v33, v58[0]);
  OUTLINED_FUNCTION_39();
  v34 = memchr(v11, 46, v12);
  if (v34)
  {
    v34 = OUTLINED_FUNCTION_34(v34);
  }

  else
  {
    v8 = 0;
  }

  if (*(v10 + 32) == 1 && (v8 || v9 < 3 || (v35 = v11[1], v35 <= 57) && (v35 >= 48 ? (v36 = v11[2] - 48 > 9) : (v36 = 1), !v36)))
  {
    v37 = off_5C2F0(v34);
    OUTLINED_FUNCTION_15(v37, v38, v39, v40, v41, v42, v43, v44, v58[0]);
    v45 = *v11;
    if (v45 == 45 || v45 == 43)
    {
      OUTLINED_FUNCTION_27();
    }

    else
    {
      LODWORD(v11) = 0;
    }

    v34 = OUTLINED_FUNCTION_14();
    if (v8)
    {
      v46 = v9 - v12;
      v34 = memcpy(v34, v8, v46);
      v10 = (v46 + v10);
    }

    v12 = v10 + v11;
  }

  else
  {
    v19 = v13;
  }

  if (*(v7 + 16) > v12)
  {
    v47 = *(v7 + 16);
    v48 = off_5C2F0(v34);
    OUTLINED_FUNCTION_12(v48, v49, v50, v51, v52, v53, v54, v55, v58[0]);
    OUTLINED_FUNCTION_10();
    v19 = v10;
  }

  *(v7 + 16) = 0;
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_13();
    (*(v56 + 96))(v5, v19);
  }

  return OUTLINED_FUNCTION_33();
}

void std::num_put<char,std::ostreambuf_iterator<char>>::do_put(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 24);
  *(a4 + 24) = v5 & 0xFFFFBDA5 | 0x208;
  std::num_put<char,std::ostreambuf_iterator<char>>::_M_insert_int<unsigned long>();
  *(a4 + 24) = v5;
}

uint64_t std::ostreambuf_iterator<char>::operator=(unsigned __int8 a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*a2 + 104))(a2, a1);
  if (result == -1)
  {
    *a3 = 1;
  }

  return result;
}

void std::stringbuf::overflow(uint64_t *a1)
{
  v1 = *a1;
  v2 = (*a1 - 24);
  if (v2 != &std::string::_Rep::_S_empty_rep_storage && atomic_fetch_add((v1 - 8), 0xFFFFFFFF) <= 0)
  {
    std::string::_Rep::_M_destroy(v2);
  }
}

uint64_t std::wstreambuf::snextc(void *a1)
{
  v2 = a1[2];
  if (v2 >= a1[3])
  {
    result = (*(*a1 + 80))(a1);
  }

  else
  {
    result = *v2;
    a1[2] = v2 + 1;
  }

  if (result != -1)
  {
    v4 = a1[2];
    if (v4 >= a1[3])
    {
      v5 = *(*a1 + 72);

      return v5(a1);
    }

    else
    {
      return *v4;
    }
  }

  return result;
}

uint64_t std::__write<wchar_t>(uint64_t a1, char a2, uint64_t a3, int a4)
{
  if ((a2 & 1) == 0)
  {
    (*(*a1 + 96))(a1, a3, a4);
  }

  return a1;
}

void std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_insert_int<long>()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  OUTLINED_FUNCTION_1_0(v4, v5, v6, v7, v8);
  v10 = OUTLINED_FUNCTION_13_0(v9, __stack_chk_guard);
  v11 = *(v1 + 24);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_17_0();
  v12 = OUTLINED_FUNCTION_22_0();
  v17 = std::__int_to_char<wchar_t,unsigned long>(v12, v13, v14, v15, v16);
  OUTLINED_FUNCTION_8_0();
  if (*(v10 + 32) == 1)
  {
    OUTLINED_FUNCTION_6_0();
    (off_5C300)();
    OUTLINED_FUNCTION_29_0(v19, v40);
    v18 = OUTLINED_FUNCTION_11_0();
  }

  if (v0 == 8 || v0 == 64)
  {
    if (!v3 || (v11 & 0x200) == 0)
    {
      v20 = v41;
      goto LABEL_20;
    }

    if (v0 == 64)
    {
      OUTLINED_FUNCTION_19_0();
    }

    else
    {
      OUTLINED_FUNCTION_38_0();
      if (v22)
      {
        v21 = 8;
      }

      OUTLINED_FUNCTION_24_0(v21);
    }

    v20 = v41;
  }

  else
  {
    if (v3 < 1)
    {
      v20 = v41;
      if (!v3)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v20 = v41;
      if ((v11 & 0x800) == 0)
      {
        goto LABEL_20;
      }
    }

    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_35_0();
LABEL_20:
  v23 = *(v1 + 16);
  if (v23 > v17)
  {
    v24 = off_5C300(v18);
    OUTLINED_FUNCTION_0_1(v24, v25, v26, v27, v28, v29, v30, v31, v40);
    v32 = OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_44(v32, v33, v34, v35, v23);
  }

  *(v1 + 16) = 0;
  if ((v20 & 1) == 0)
  {
    OUTLINED_FUNCTION_13();
    v37 = *(v36 + 96);
    v38 = OUTLINED_FUNCTION_35();
    v39(v38);
  }

  OUTLINED_FUNCTION_37();
}

void std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_insert_int<unsigned long>()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  OUTLINED_FUNCTION_1_0(v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_13_0(v9, __stack_chk_guard);
  v10 = *(v1 + 24);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_5_0();
  v11 = OUTLINED_FUNCTION_36_0();
  v16 = std::__int_to_char<wchar_t,unsigned long>(v11, v12, v13, v14, v15);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_37_0();
  if (v20)
  {
    OUTLINED_FUNCTION_9_0();
    off_5C300(v18);
    OUTLINED_FUNCTION_28_0(v19, v39);
    v17 = OUTLINED_FUNCTION_15_0();
  }

  v20 = v0 == 64 || v0 == 8;
  if (v20 && v3 && (v10 & 0x200) != 0)
  {
    if (v0 == 64)
    {
      OUTLINED_FUNCTION_19_0();
    }

    else
    {
      OUTLINED_FUNCTION_38_0();
      if (v20)
      {
        v21 = 8;
      }

      OUTLINED_FUNCTION_32_0(v21);
    }

    OUTLINED_FUNCTION_30_0();
  }

  v22 = *(v1 + 16);
  if (v22 > v16)
  {
    v23 = off_5C300(v17);
    OUTLINED_FUNCTION_0_1(v23, v24, v25, v26, v27, v28, v29, v30, v39);
    v31 = OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_44(v31, v32, v33, v34, v22);
  }

  *(v1 + 16) = 0;
  if ((v40 & 1) == 0)
  {
    OUTLINED_FUNCTION_13();
    v36 = *(v35 + 96);
    v37 = OUTLINED_FUNCTION_35();
    v38(v37);
  }

  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_37();
}

void std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_insert_int<long long>()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  OUTLINED_FUNCTION_1_0(v4, v5, v6, v7, v8);
  v10 = OUTLINED_FUNCTION_13_0(v9, __stack_chk_guard);
  v11 = *(v1 + 24);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_17_0();
  v12 = OUTLINED_FUNCTION_22_0();
  v17 = std::__int_to_char<wchar_t,unsigned long>(v12, v13, v14, v15, v16);
  OUTLINED_FUNCTION_8_0();
  if (*(v10 + 32) == 1)
  {
    OUTLINED_FUNCTION_6_0();
    off_5C300(v19);
    OUTLINED_FUNCTION_29_0(v20, v41);
    v18 = OUTLINED_FUNCTION_11_0();
  }

  if (v0 == 8 || v0 == 64)
  {
    if (!v3 || (v11 & 0x200) == 0)
    {
      v21 = v42;
      goto LABEL_20;
    }

    if (v0 == 64)
    {
      OUTLINED_FUNCTION_19_0();
    }

    else
    {
      OUTLINED_FUNCTION_38_0();
      if (v23)
      {
        v22 = 8;
      }

      OUTLINED_FUNCTION_24_0(v22);
    }

    v21 = v42;
  }

  else
  {
    if (v3 < 1)
    {
      v21 = v42;
      if (!v3)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v21 = v42;
      if ((v11 & 0x800) == 0)
      {
        goto LABEL_20;
      }
    }

    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_35_0();
LABEL_20:
  v24 = *(v1 + 16);
  if (v24 > v17)
  {
    v25 = off_5C300(v18);
    OUTLINED_FUNCTION_0_1(v25, v26, v27, v28, v29, v30, v31, v32, v41);
    v33 = OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_44(v33, v34, v35, v36, v24);
  }

  *(v1 + 16) = 0;
  if ((v21 & 1) == 0)
  {
    OUTLINED_FUNCTION_13();
    v38 = *(v37 + 96);
    v39 = OUTLINED_FUNCTION_35();
    v40(v39);
  }

  OUTLINED_FUNCTION_37();
}

void std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_insert_int<unsigned long long>()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  OUTLINED_FUNCTION_1_0(v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_13_0(v9, __stack_chk_guard);
  v10 = *(v1 + 24);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_5_0();
  v11 = OUTLINED_FUNCTION_36_0();
  v16 = std::__int_to_char<wchar_t,unsigned long>(v11, v12, v13, v14, v15);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_37_0();
  if (v20)
  {
    OUTLINED_FUNCTION_9_0();
    off_5C300(v18);
    OUTLINED_FUNCTION_28_0(v19, v39);
    v17 = OUTLINED_FUNCTION_15_0();
  }

  v20 = v0 == 64 || v0 == 8;
  if (v20 && v3 && (v10 & 0x200) != 0)
  {
    if (v0 == 64)
    {
      OUTLINED_FUNCTION_19_0();
    }

    else
    {
      OUTLINED_FUNCTION_38_0();
      if (v20)
      {
        v21 = 8;
      }

      OUTLINED_FUNCTION_32_0(v21);
    }

    OUTLINED_FUNCTION_30_0();
  }

  v22 = *(v1 + 16);
  if (v22 > v16)
  {
    v23 = off_5C300(v17);
    OUTLINED_FUNCTION_0_1(v23, v24, v25, v26, v27, v28, v29, v30, v39);
    v31 = OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_44(v31, v32, v33, v34, v22);
  }

  *(v1 + 16) = 0;
  if ((v40 & 1) == 0)
  {
    OUTLINED_FUNCTION_13();
    v36 = *(v35 + 96);
    v37 = OUTLINED_FUNCTION_35();
    v38(v37);
  }

  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_37();
}

uint64_t std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_insert_float<double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  OUTLINED_FUNCTION_10_0(a1, a2, a3, a4, a5);
  std::__use_cache<std::__numpunct_cache<wchar_t>>::operator()(&v69, (v13 + 208));
  OUTLINED_FUNCTION_30();
  if (v16 != v17)
  {
    v18 = v15;
  }

  else
  {
    v18 = v14;
  }

  v19 = std::__num_base::_S_format_float(v6, v72, v7);
  v70 = 0u;
  memset(v71, 0, sizeof(v71));
  c_locale = std::locale::facet::_S_get_c_locale(v19, v20, v21, v22);
  OUTLINED_FUNCTION_4_1(c_locale);
  v24 = OUTLINED_FUNCTION_27_0();
  v25 = OUTLINED_FUNCTION_7_0(v24);
  if (v25 >= 45)
  {
    v7 = (v7 + 1);
    v26 = off_5C300(v25);
    OUTLINED_FUNCTION_14_0(v26, v27, v28, v29, v30, v31, v32, v33, v67);
    v38 = std::locale::facet::_S_get_c_locale(v34, v35, v36, v37);
    OUTLINED_FUNCTION_4_1(v38);
    v39 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_7_0(v39);
  }

  std::use_facet<std::ctype<wchar_t>>(v6 + 208);
  OUTLINED_FUNCTION_25_0();
  off_5C300(v40);
  OUTLINED_FUNCTION_42(v41, v42, v67);
  (*(*v10 + 88))(v10, v9, &v9[v7], v11);
  v43 = OUTLINED_FUNCTION_26_0();
  if (v43)
  {
    OUTLINED_FUNCTION_33_0(v43);
  }

  else
  {
    v7 = 0;
  }

  OUTLINED_FUNCTION_37_0();
  if (v45 && (v18 < 3 || v7 || (v46 = v9[1], v46 <= 57) && (v46 >= 48 ? (v47 = v9[2] - 48 > 9) : (v47 = 1), !v47)))
  {
    v48 = off_5C300(v44);
    OUTLINED_FUNCTION_0_1(v48, v49, v50, v51, v52, v53, v54, v55, v68);
    v56 = *v9;
    if (v56 == 45 || v56 == 43)
    {
      OUTLINED_FUNCTION_23_0();
    }

    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_31_0();
  }

  else
  {
    v10 = v11;
    LOBYTE(v9) = v8;
  }

  if (*(v6 + 16) > v12)
  {
    v57 = off_5C300(v44);
    OUTLINED_FUNCTION_20_0(v57, v58, v59, v60, v61, v62, v63, v64, v68);
    OUTLINED_FUNCTION_18_0();
    v10 = v8;
  }

  *(v6 + 16) = 0;
  if ((v9 & 1) == 0)
  {
    OUTLINED_FUNCTION_13();
    (*(v65 + 96))(v5, v10);
  }

  return v5;
}

uint64_t std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_insert_float<long double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  OUTLINED_FUNCTION_10_0(a1, a2, a3, a4, a5);
  std::__use_cache<std::__numpunct_cache<wchar_t>>::operator()(&v69, (v13 + 208));
  OUTLINED_FUNCTION_30();
  if (v16 != v17)
  {
    v18 = v15;
  }

  else
  {
    v18 = v14;
  }

  v19 = std::__num_base::_S_format_float(v6, v72, v7);
  v70 = 0u;
  memset(v71, 0, sizeof(v71));
  c_locale = std::locale::facet::_S_get_c_locale(v19, v20, v21, v22);
  OUTLINED_FUNCTION_4_1(c_locale);
  v24 = OUTLINED_FUNCTION_27_0();
  v25 = OUTLINED_FUNCTION_7_0(v24);
  if (v25 >= 45)
  {
    v7 = (v7 + 1);
    v26 = off_5C300(v25);
    OUTLINED_FUNCTION_14_0(v26, v27, v28, v29, v30, v31, v32, v33, v67);
    v38 = std::locale::facet::_S_get_c_locale(v34, v35, v36, v37);
    OUTLINED_FUNCTION_4_1(v38);
    v39 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_7_0(v39);
  }

  std::use_facet<std::ctype<wchar_t>>(v6 + 208);
  OUTLINED_FUNCTION_25_0();
  off_5C300(v40);
  OUTLINED_FUNCTION_42(v41, v42, v67);
  (*(*v10 + 88))(v10, v9, &v9[v7], v11);
  v43 = OUTLINED_FUNCTION_26_0();
  if (v43)
  {
    OUTLINED_FUNCTION_33_0(v43);
  }

  else
  {
    v7 = 0;
  }

  OUTLINED_FUNCTION_37_0();
  if (v45 && (v18 < 3 || v7 || (v46 = v9[1], v46 <= 57) && (v46 >= 48 ? (v47 = v9[2] - 48 > 9) : (v47 = 1), !v47)))
  {
    v48 = off_5C300(v44);
    OUTLINED_FUNCTION_0_1(v48, v49, v50, v51, v52, v53, v54, v55, v68);
    v56 = *v9;
    if (v56 == 45 || v56 == 43)
    {
      OUTLINED_FUNCTION_23_0();
    }

    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_31_0();
  }

  else
  {
    v10 = v11;
    LOBYTE(v9) = v8;
  }

  if (*(v6 + 16) > v12)
  {
    v57 = off_5C300(v44);
    OUTLINED_FUNCTION_20_0(v57, v58, v59, v60, v61, v62, v63, v64, v68);
    OUTLINED_FUNCTION_18_0();
    v10 = v8;
  }

  *(v6 + 16) = 0;
  if ((v9 & 1) == 0)
  {
    OUTLINED_FUNCTION_13();
    (*(v65 + 96))(v5, v10);
  }

  return v5;
}

void std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::do_put(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 24);
  *(a4 + 24) = v5 & 0xFFFFBDA5 | 0x208;
  std::num_put<wchar_t,std::ostreambuf_iterator<wchar_t>>::_M_insert_int<unsigned long>();
  *(a4 + 24) = v5;
}

void operator delete[](void *__p)
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}